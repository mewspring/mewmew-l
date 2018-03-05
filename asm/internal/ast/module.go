// Package ast declares the types used to represent abstract syntax trees of
// LLVM IR modules.
package ast

import (
	"fmt"
	"strings"

	"github.com/mewmew/l/internal/enc"
)

// === [ Module ] ==============================================================

// A Module is an LLVM IR module.
type Module struct {
	Entities []TopLevelEntity
}

func (m *Module) String() string {
	// TopLevelEntities
	buf := &strings.Builder{}
	for _, entity := range m.Entities {
		fmt.Fprintln(buf, entity.String())
	}
	return buf.String()
}

// --- [ Top-level Entities ] --------------------------------------------------

// A TopLevelEntity is a top-level entity of a module.
type TopLevelEntity interface {
	fmt.Stringer
	isTopLevelEntity()
}

// ~~~ [ Source Filename ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// SourceFilename is a source filename top-level entity.
type SourceFilename struct {
	Name string
}

func (s *SourceFilename) String() string {
	// "source_filename" "=" StringLit
	return fmt.Sprintf("source_filename = %v", enc.Quote(s.Name))
}

// ~~~ [ Target Definition ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// TargetDefinition is a target definition top-level entity.
type TargetDefinition interface {
	isTargetDefinition()
}

// TargetTriple is a target triple top-level entity.
type TargetTriple struct {
	TargetTriple string
}

func (t *TargetTriple) String() string {
	// "target" "triple" "=" StringLit
	return fmt.Sprintf("target triple = %v", enc.Quote(t.TargetTriple))
}

// DataLayout is a data layout top-level entity.
type DataLayout struct {
	DataLayout string
}

func (t *DataLayout) String() string {
	// "target" "datalayout" "=" StringLit
	return fmt.Sprintf("target datalayout = %v", enc.Quote(t.DataLayout))
}

func (*TargetTriple) isTargetDefinition() {}
func (*DataLayout) isTargetDefinition()   {}

// ~~~ [ Module-level Inline Assembly ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// ModuleAsm is a module-level inline assembly top-level entity.
type ModuleAsm struct {
	Asm string
}

func (a *ModuleAsm) String() string {
	// "module" "asm" StringLit
	return fmt.Sprintf("module asm %v", enc.Quote(a.Asm))
}

// ~~~ [ Type Definition ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// TypeDef is a type definition top-level entity.
type TypeDef struct {
	Name *LocalIdent
	Def  Type
}

func (t *TypeDef) String() string {
	// LocalIdent "=" "type" OpaqueType
	// LocalIdent "=" "type" Type
	return fmt.Sprintf("%s = type %s", t.Name, t.Def)
}

// ~~~ [ Comdat Definition ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// ComdatDef is a comdat definition top-level entity.
type ComdatDef struct {
	Name *ComdatName
	Kind SelectionKind
}

func (c *ComdatDef) String() string {
	// ComdatName "=" "comdat" SelectionKind
	return fmt.Sprintf("%v = comdat %v", c.Name, c.Kind)
}

//go:generate stringer -linecomment -type SelectionKind

// SelectionKind is a comdat selection kind.
type SelectionKind uint8

// Comdat selection kinds.
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

// String returns a string representation of the global variable.
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

// ThreadLocal is a thread local storage specifier.
type ThreadLocal struct {
	Model TLSModel // zero value if not present
}

// String returns a string representation of the thread local storage.
func (t ThreadLocal) String() string {
	// "thread_local"
	// "thread_local" "(" TLSModel ")"
	switch t.Model {
	case TLSModelNone:
		return "thread_local"
	default:
		return fmt.Sprintf("thread_local(%s)", t.Model)
	}
}

//go:generate stringer -linecomment -type TLSModel

// TLSModel is a thread local storage model.
type TLSModel uint8

// Thread local storage models.
const (
	TLSModelNone         TLSModel = iota // none
	TLSModelInitialExec                  // initialexec
	TLSModelLocalDynamic                 // localdynamic
	TLSModelLocalExec                    // localexec
)

// GlobalAttribute is a global attribute.
type GlobalAttribute interface {
	fmt.Stringer
	// isGlobalAttribute ensures that only global attributes can be assigned to
	// the ast.GlobalAttribute interface.
	isGlobalAttribute()
}

// isGlobalAttribute ensures that only global attributes can be assigned to the
// ast.GlobalAttribute interface.
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
	Const           *TypeConst // aliasee or resolver
}

func (s *IndirectSymbol) String() string {
	// GlobalIdent "=" OptLinkage OptPreemptionSpecifier OptVisibility OptDLLStorageClass OptThreadLocal OptUnnamedAddr Alias Type "," Type Constant
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "%v =", s.Name)
	if s.Linkage != LinkageNone {
		fmt.Fprintf(buf, " %v", s.Linkage)
	}
	if s.Preemption != PreemptionNone {
		fmt.Fprintf(buf, " %v", s.Preemption)
	}
	if s.Visibility != VisibilityNone {
		fmt.Fprintf(buf, " %v", s.Visibility)
	}
	if s.DLLStorageClass != DLLStorageClassNone {
		fmt.Fprintf(buf, " %v", s.DLLStorageClass)
	}
	if s.ThreadLocal != nil {
		fmt.Fprintf(buf, " %v", s.ThreadLocal)
	}
	if s.UnnamedAddr != UnnamedAddrNone {
		fmt.Fprintf(buf, " %v", s.UnnamedAddr)
	}
	if s.Alias {
		buf.WriteString(" alias")
	} else {
		buf.WriteString(" ifunc")
	}
	fmt.Fprintf(buf, " %v, %v", s.Type, s.Const)
	return buf.String()
}

// ~~~ [ Function Declaration or Definition ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// Function is an LLVM IR function.
type Function struct {
	Linkage  Linkage
	Header   *FunctionHeader
	Body     *FunctionBody // nil if declaration
	Metadata []*MetadataAttachment
}

func (f *Function) String() string {
	// "declare" MetadataAttachments OptExternLinkage FunctionHeader
	// "define" OptLinkage FunctionHeader MetadataAttachments FunctionBody
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
		buf.WriteString(f.Header.String())
		return buf.String()
	}
	// Function definition.
	//
	//    "define" OptLinkage FunctionHeader MetadataAttachments FunctionBody
	buf.WriteString("define")
	if f.Linkage != LinkageNone {
		fmt.Fprintf(buf, " %v", f.Linkage)
	}
	buf.WriteString(f.Header.String())
	for _, md := range f.Metadata {
		fmt.Fprintf(buf, " %v", md)
	}
	fmt.Fprintf(buf, " %v", f.Body)
	return buf.String()
}

// FunctionHeader is an LLVM IR function header.
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
		fmt.Fprintf(buf, " gc %v", enc.Quote(hdr.GC))
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

// CallingConv is a calling convention.
type CallingConv uint8

// Calling conventions.
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

// FunctionBody is an LLVM IR function body.
type FunctionBody struct {
	Blocks        []*BasicBlock
	UseListOrders []*UseListOrder
}

func (body *FunctionBody) String() string {
	// "{" BasicBlockList UseListOrders "}"
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

// AttrGroupDef is a attribute group definition.
type AttrGroupDef struct {
	ID        *AttrGroupID
	FuncAttrs []FuncAttribute
}

func (def *AttrGroupDef) String() string {
	// "attributes" AttrGroupID "=" "{" FuncAttrs "}"
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "attributes %v = { ", def.ID)
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
	buf.WriteString(" }")
	return buf.String()
}

// ~~~ [ Named Metadata ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// NamedMetadataDef is a named metadata definition.
type NamedMetadataDef struct {
	Name  *MetadataName
	Nodes []MetadataNode
}

func (def *NamedMetadataDef) String() string {
	// MetadataName "=" "!" "{" MetadataNodes "}"
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "%v = !{", def.Name)
	for i, node := range def.Nodes {
		if i != 0 {
			buf.WriteString(", ")
		}
		buf.WriteString(node.String())
	}
	buf.WriteString("}")
	return buf.String()
}

// MetadataNode is a metadata node.
type MetadataNode interface {
	fmt.Stringer
	isMetadataNode()
}

func (*MetadataID) isMetadataNode()   {}
func (*DIExpression) isMetadataNode() {}

// ~~~ [ Standalone Metadata ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// MetadataDef is a metadata definition.
type MetadataDef struct {
	ID       *MetadataID
	Distinct bool
	Node     MDNode // MDTuple or SpecializedMDNode
}

func (def *MetadataDef) String() string {
	// MetadataID "=" OptDistinct MDTuple
	// MetadataID "=" OptDistinct SpecializedMDNode
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "%v = ", def.ID)
	if def.Distinct {
		buf.WriteString("distinct ")
	}
	buf.WriteString(def.Node.String())
	return buf.String()
}

// ~~~ [ Use-list Order Directives ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// UseListOrder is a use-list order directive.
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

// UseListOrderBB is a basic block specific use-list order directive.
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

// ### [ Helper functions ] ####################################################

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
