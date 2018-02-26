package ast

import (
	"fmt"
	"strings"
)

// === [ Module ] ==============================================================

type Module struct {
	Entities []TopLevelEntity
}

func (m *Module) String() string {
	buf := &strings.Builder{}
	for _, entity := range m.Entities {
		fmt.Println(buf, entity.String())
	}
	return buf.String()
}

// --- [ Top-level Entities ] --------------------------------------------------

type TopLevelEntity interface {
	fmt.Stringer
	isTopLevelEntity()
}

// ~~~ [ Source Filename ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

type SourceFilename struct {
	Name string
}

func (s *SourceFilename) String() string {
	return fmt.Sprintf("source_filename = %q", s.Name)
}

// ~~~ [ Target Definition ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

type TargetDefinition interface {
	isTargetDefinition()
}

type TargetTriple struct {
	TargetTriple string
}

func (t *TargetTriple) String() string {
	return fmt.Sprintf("target triple = %q", t.TargetTriple)
}

type DataLayout struct {
	DataLayout string
}

func (t *DataLayout) String() string {
	return fmt.Sprintf("target datalayout = %q", t.DataLayout)
}

func (*TargetTriple) isTargetDefinition() {}
func (*DataLayout) isTargetDefinition()   {}

// ~~~ [ Module-level Inline Assembly ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

type ModuleAsm struct {
	Asm string
}

func (a *ModuleAsm) String() string {
	return fmt.Sprintf("module asm %q", a.Asm)
}

// ~~~ [ Type Defintion ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

type TypeDef struct {
	Name *LocalIdent
	Type Type
}

func (t *TypeDef) String() string {
	return fmt.Sprintf("%s = type %s", t.Name, t.Type)
}

// ~~~ [ Comdat Definition ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

type ComdatDef struct {
	Name *ComdatName
	Kind SelectionKind
}

func (c *ComdatDef) String() string {
	return fmt.Sprintf("%v = comdat %v", c.Name, c.Kind)
}

//go:generate stringer -linecomment -type SelectionKind

type SelectionKind uint8

const (
	SelectionKindAny          SelectionKind = iota // any
	SelectionKindExactMatch                        // exactmatch
	SelectionKindLargest                           // largest
	SelectionKindNoDuplicates                      // noduplicates
	SelectionKindSameSize                          // samesize
)

// ~~~ [ Global Variable Declaration or Definition ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~

// Global is a global variable declaration or a global variable definition.
type Global struct {
	Name                  *GlobalIdent
	Linkage               Linkage         // zero value if not present
	Preemption            Preemption      // zero value if not present
	Visibility            Visibility      // zero value if not present
	DLLStorageClass       DLLStorageClass // zero value if not present
	ThreadLocal           *ThreadLocal    // nil if not present
	UnnamedAddr           UnnamedAddr     // zero value if not present
	AddrSpace             AddrSpace       // zero value if not present
	ExternallyInitialized bool
	Immutable             bool
	Type                  Type
	Init                  Constant // nil if declaration
	GlobalAttrs           []GlobalAttribute
	FuncAttrs             []FuncAttribute
}

func (g *Global) String() string {
	// GlobalIdent "=" OptLinkage OptPreemptionSpecifier OptVisibility
	// OptDLLStorageClass OptThreadLocal OptUnnamedAddr OptAddrSpace
	// OptExternallyInitialized Immutable Type Constant GlobalAttrs FuncAttrs
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "%v =", g.Name)
	if g.Linkage != LinkageNone {
		fmt.Fprintf(buf, " %v", g.Linkage)
	}
	if g.Preemption != PreemptionNone {
		fmt.Fprintf(buf, " %v", g.Preemption)
	}
	if g.Visibility != VisibilityNone {
		fmt.Fprintf(buf, " %v", g.Visibility)
	}
	if g.DLLStorageClass != DLLStorageClassNone {
		fmt.Fprintf(buf, " %v", g.DLLStorageClass)
	}
	if g.ThreadLocal != nil {
		fmt.Fprintf(buf, " %v", g.ThreadLocal)
	}
	if g.UnnamedAddr != UnnamedAddrNone {
		fmt.Fprintf(buf, " %v", g.UnnamedAddr)
	}
	if g.AddrSpace != 0 {
		fmt.Fprintf(buf, " %v", g.AddrSpace)
	}
	if g.ExternallyInitialized {
		buf.WriteString(" externallyinitialized")
	}
	if g.Immutable {
		buf.WriteString(" constant")
	} else {
		buf.WriteString(" global")
	}
	fmt.Fprintf(buf, " %v", g.Type)
	if g.Init != nil {
		fmt.Fprintf(buf, " %v", g.Init)
	}
	for _, attr := range g.GlobalAttrs {
		fmt.Fprintf(buf, ", %v", attr)
	}
	for _, attr := range g.FuncAttrs {
		fmt.Fprintf(buf, " %v", attr)
	}
	return buf.String()
}

type ThreadLocal struct {
	Model TLSModel // zero value if not present
}

func (t ThreadLocal) String() string {
	switch t.Model {
	case TLSModelNone:
		return "thread_local"
	default:
		return fmt.Sprintf("thread_local(%s)", t.Model)
	}
}

//go:generate stringer -linecomment -type TLSModel

type TLSModel uint8

const (
	TLSModelNone         TLSModel = iota // none
	TLSModelInitialExec                  // initialexec
	TLSModelLocalDynamic                 // localdynamic
	TLSModelLocalExec                    // localexec
)

type GlobalAttribute interface {
	fmt.Stringer
	isGlobalAttribute()
}

func (*Section) isGlobalAttribute()            {}
func (*Comdat) isGlobalAttribute()             {}
func (*Alignment) isGlobalAttribute()          {}
func (*MetadataAttachment) isGlobalAttribute() {}

// ~~~ [ Indirect Symbol Definition ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// An IndirectSymbol is an alias or an ifunc.
type IndirectSymbol struct {
	Name            *GlobalIdent
	Linkage         Linkage
	Preemption      Preemption
	Visibility      Visibility
	DLLStorageClass DLLStorageClass
	ThreadLocal     *ThreadLocal
	UnnamedAddr     UnnamedAddr
	Alias           bool // alias if true, ifunc otherwise.
	Type            Type
	Value           *TypeConst // aliasee or resolver
}

// ~~~ [ Function Declaration or Definition ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

type Function struct {
	Linkage  Linkage
	Header   *FunctionHeader
	Body     *FunctionBody // nil if declaration
	Metadata []*MetadataAttachment
}

func (f *Function) String() string {
	buf := &strings.Builder{}
	if f.Body == nil {
		// Function declaration.
		//
		//    "declare" MetadataAttachments OptExternLinkage FunctionHeader
		buf.WriteString("declare")
		for _, md := range f.Metadata {
			fmt.Fprintf(buf, " %v", md)
		}
		if f.Linkage != LinkageNone {
			fmt.Fprintf(buf, " %v", f.Linkage)
		}
		fmt.Fprintf(buf, " %v", f.Header)
		return buf.String()
	}
	// Function definition.
	//
	//    "define" OptLinkage FunctionHeader MetadataAttachments FunctionBody
	buf.WriteString("define")
	if f.Linkage != LinkageNone {
		fmt.Fprintf(buf, " %v", f.Linkage)
	}
	fmt.Fprintf(buf, " %v", f.Header)
	for _, md := range f.Metadata {
		fmt.Fprintf(buf, " %v", md)
	}
	fmt.Fprintf(buf, " %v", f.Body)
	return buf.String()
}

type FunctionHeader struct {
	Preemption      Preemption      // zero value if not present
	Visibility      Visibility      // zero value if not present
	DLLStorageClass DLLStorageClass // zero value if not present
	CallingConv     CallingConv     // zero value if not present
	ReturnAttrs     []ReturnAttribute
	RetType         Type
	Name            *GlobalIdent
	Params          []*Param
	Variadic        bool
	UnnamedAddr     UnnamedAddr
	FuncAttrs       []FuncAttribute
	Section         *Section   // nil if not present
	Comdat          *Comdat    // nil if not present
	GC              string     // empty if not present
	Prefix          *TypeConst // nil if not present
	Prologue        *TypeConst // nil if not present
	Personality     *TypeConst // nil if not present
}

func (hdr *FunctionHeader) String() string {
	// OptPreemptionSpecifier OptVisibility OptDLLStorageClass OptCallingConv
	// ReturnAttrs Type GlobalIdent "(" Params ")" OptUnnamedAddr FuncAttrs
	// OptSection OptComdat OptGC OptPrefix OptPrologue OptPersonality
	buf := &strings.Builder{}
	if hdr.Preemption != PreemptionNone {
		fmt.Fprintf(buf, " %v", hdr.Preemption)
	}
	if hdr.Visibility != VisibilityNone {
		fmt.Fprintf(buf, " %v", hdr.Visibility)
	}
	if hdr.DLLStorageClass != DLLStorageClassNone {
		fmt.Fprintf(buf, " %v", hdr.DLLStorageClass)
	}
	if hdr.CallingConv != CallingConvNone {
		fmt.Fprintf(buf, " %v", hdr.CallingConv)
	}
	for _, attr := range hdr.ReturnAttrs {
		fmt.Fprintf(buf, " %v", attr)
	}
	fmt.Fprintf(buf, " %v", hdr.RetType)
	fmt.Fprintf(buf, " %v(", hdr.Name)
	for i, param := range hdr.Params {
		if i != 0 {
			buf.WriteString(", ")
		}
		buf.WriteString(param.String())
	}
	if hdr.Variadic {
		if len(hdr.Params) > 0 {
			buf.WriteString(", ")
		}
		buf.WriteString("...")
	}
	buf.WriteString(")")
	if hdr.UnnamedAddr != UnnamedAddrNone {
		fmt.Fprintf(buf, " %v", hdr.UnnamedAddr)
	}
	for _, attr := range hdr.FuncAttrs {
		fmt.Fprintf(buf, " %v", attr)
	}
	if hdr.Section != nil {
		fmt.Fprintf(buf, " %v", hdr.Section)
	}
	if hdr.Comdat != nil {
		fmt.Fprintf(buf, " %v", hdr.Comdat)
	}
	if len(hdr.GC) > 0 {
		fmt.Fprintf(buf, " gc %q", hdr.GC)
	}
	if hdr.Prefix != nil {
		fmt.Fprintf(buf, " prefix %v %v", hdr.Prefix.Type, hdr.Prefix.Const)
	}
	if hdr.Prologue != nil {
		fmt.Fprintf(buf, " prologue %v %v", hdr.Prologue.Type, hdr.Prologue.Const)
	}
	if hdr.Personality != nil {
		fmt.Fprintf(buf, " personality %v %v", hdr.Personality.Type, hdr.Personality.Const)
	}
	return buf.String()
}

//go:generate stringer -linecomment -type CallingConv

type CallingConv uint8

const (
	CallingConvNone           CallingConv = iota // none
	CallingConvAmdGPU_CS                         // amdgpu_cs
	CallingConvAmdGPU_ES                         // amdgpu_es
	CallingConvAmdGPU_GS                         // amdgpu_gs
	CallingConvAmdGPU_HS                         // amdgpu_hs
	CallingConvAmdGPU_Kernel                     // amdgpu_kernel
	CallingConvAmdGPU_LS                         // amdgpu_ls
	CallingConvAmdGPU_PS                         // amdgpu_ps
	CallingConvAmdGPU_VS                         // amdgpu_vs
	CallingConvAnyReg                            // anyregcc
	CallingConvARM_AAPCS_VFP                     // arm_aapcs_vfpcc
	CallingConvARM_AAPCS                         // arm_aapcscc
	CallingConvARM_APCS                          // arm_apcscc
	CallingConvAVR_Intr                          // avr_intrcc
	CallingConvAVR_Signal                        // avr_signalcc
	CallingConvC                                 // ccc
	CallingConvCold                              // coldcc
	CallingConvCXX_Fast_TLS                      // cxx_fast_tlscc
	CallingConvFast                              // fastcc
	CallingConvGHC                               // ghccc
	CallingConvHHVM_C                            // hhvm_ccc
	CallingConvHHVM                              // hhvmcc
	CallingConvIntel_OCL_BI                      // intel_ocl_bicc
	CallingConvMSP430_Intr                       // msp430_intrcc
	CallingConvPreserveAll                       // preserve_allcc
	CallingConvPreserveMost                      // preserve_mostcc
	CallingConvPTX_Device                        // ptx_device
	CallingConvPTX_Kernel                        // ptx_kernel
	CallingConvSPIR_Func                         // spir_func
	CallingConvSPIR_Kernel                       // spir_kernel
	CallingConvSwift                             // swiftcc
	CallingConvWebKitJS                          // webkit_jscc
	CallingConvWin64                             // win64cc
	CallingConvX86_64_SysV                       // x86_64_sysvcc
	CallingConvX86_FastCall                      // x86_fastcallcc
	CallingConvX86_Intr                          // x86_intrcc
	CallingConvX86_RegCall                       // x86_regcallcc
	CallingConvX86_StdCall                       // x86_stdcallcc
	CallingConvX86_ThisCall                      // x86_thiscallcc
	CallingConvX86_VectorCall                    // x86_vectorcallcc
	// Calling conventions defined through cc NNN.
	CallingConvHiPE           // cc 11
	CallingConvWebKit_JS      // cc 12
	CallingConvAVR_Builtin    // cc 86
	CallingConvAMDGPU_VS      // cc 87
	CallingConvAMDGPU_GS      // cc 88
	CallingConvAMDGPU_PS      // cc 89
	CallingConvAMDGPU_CS      // cc 90
	CallingConvAMDGPU_Kernel  // cc 91
	CallingConvAMDGPU_HS      // cc 93
	CallingConvMSP430_Builtin // cc 94
	CallingConvAMDGPU_LS      // cc 95
	CallingConvAMDGPU_ES      // cc 96
)

type FunctionBody struct {
	Blocks        []*BasicBlock
	UseListOrders []*UseListOrder
}

func (body *FunctionBody) String() string {
	buf := &strings.Builder{}
	buf.WriteString("{\n")
	for _, block := range body.Blocks {
		fmt.Fprintf(buf, "%v\n", block)
	}
	for _, useList := range body.UseListOrders {
		fmt.Fprintf(buf, "%v\n", useList)
	}
	buf.WriteString("}")
	return buf.String()
}

// ~~~ [ Attribute Group Definition ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

type AttrGroupDef struct {
	Name      *AttrGroupID
	FuncAttrs []FuncAttribute
}

func (def *AttrGroupDef) String() string {
	// "attributes" AttrGroupID "=" "{" FuncAttrs "}"
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "attributes %v = {", def.Name)
	for i, attr := range def.FuncAttrs {
		if i != 0 {
			buf.WriteString(" ")
		}
		// Note, alignment is printed as `align = 8` in attribute groups.
		if attr, ok := attr.(*Alignment); ok {
			fmt.Fprintf(buf, "align = %d", attr.Align)
			continue
		}
		buf.WriteString(attr.String())
	}
	buf.WriteString("}")
	return buf.String()
}

// ~~~ [ Named Metadata ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

type NamedMetadataDef struct {
	Name  *MetadataName
	Nodes []MetadataNode
}

type MetadataNode interface {
	isMetadataNode()
}

func (*MetadataID) isMetadataNode()   {}
func (*DIExpression) isMetadataNode() {}

// ~~~ [ Standalone Metadata ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

type MetadataDef struct {
	Name     *MetadataID
	Distinct bool
	Node     MDNode // MDTuple or SpecializedMDNode
}

// ~~~ [ Use-list Order Directives ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

type UseListOrder struct {
	Type    Type
	Value   Value
	Indices []int64
}

func (u *UseListOrder) String() string {
	//  "uselistorder" Type Value "," "{" IndexList "}"
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "uselistorder %v %v, {", u.Type, u.Value)
	for i, index := range u.Indices {
		if i != 0 {
			buf.WriteString(", ")
		}
		fmt.Fprintf(buf, "%v", index)
	}
	buf.WriteString("}")
	return buf.String()
}

type UseListOrderBB struct {
	Func    *GlobalIdent
	Block   *LocalIdent
	Indices []int64
}

func (u *UseListOrderBB) String() string {
	//  "uselistorder_bb" GlobalIdent "," LocalIdent "," "{" IndexList "}"
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "uselistorder_bb %v, %v, {", u.Func, u.Block)
	for i, index := range u.Indices {
		if i != 0 {
			buf.WriteString(", ")
		}
		fmt.Fprintf(buf, "%v", index)
	}
	buf.WriteString("}")
	return buf.String()
}

func (*SourceFilename) isTopLevelEntity() {}

// TargetDefinition
func (*TargetTriple) isTopLevelEntity() {}
func (*DataLayout) isTopLevelEntity()   {}

func (*ModuleAsm) isTopLevelEntity()        {}
func (*TypeDef) isTopLevelEntity()          {}
func (*ComdatDef) isTopLevelEntity()        {}
func (*Global) isTopLevelEntity()           {}
func (*IndirectSymbol) isTopLevelEntity()   {}
func (*Function) isTopLevelEntity()         {}
func (*AttrGroupDef) isTopLevelEntity()     {}
func (*NamedMetadataDef) isTopLevelEntity() {}
func (*MetadataDef) isTopLevelEntity()      {}
func (*UseListOrder) isTopLevelEntity()     {}
func (*UseListOrderBB) isTopLevelEntity()   {}
