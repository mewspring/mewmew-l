package ast

import "fmt"

// === [ Module ] ==============================================================

type Module struct {
	Entities []TopLevelEntity
}

// --- [ Top-level Entities ] --------------------------------------------------

type TopLevelEntity interface {
	isTopLevelEntity()
}

// ~~~ [ Source Filename ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

type SourceFilename struct {
	Name string
}

func (s SourceFilename) String() string {
	return fmt.Sprintf("source_filename = %q", s.Name)
}

// ~~~ [ Target Definition ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

type TargetDefinition interface {
	isTargetDefinition()
}

type TargetTriple struct {
	TargetTriple string
}

func (t TargetTriple) String() string {
	return fmt.Sprintf("target triple = %q", t.TargetTriple)
}

type DataLayout struct {
	DataLayout string
}

func (t DataLayout) String() string {
	return fmt.Sprintf("target datalayout = %q", t.DataLayout)
}

func (TargetTriple) isTargetDefinition() {}
func (DataLayout) isTargetDefinition()   {}

// ~~~ [ Module-level Inline Assembly ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

type ModuleAsm struct {
	Asm string
}

func (m ModuleAsm) String() string {
	return fmt.Sprintf("module asm %q", m.Asm)
}

// ~~~ [ Type Defintion ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

type TypeDef struct {
	Name LocalIdent
	Type Type
}

func (t TypeDef) String() string {
	return fmt.Sprintf("%s = type %s", t.Name, t.Type)
}

// ~~~ [ Comdat Definition ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

type ComdatDef struct {
	Name ComdatName
	Kind SelectionKind
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
	Name                  GlobalIdent
	Linkage               Linkage             // zero value if not present
	Preemption            PreemptionSpecifier // zero value if not present
	Visibility            Visibility          // zero value if not present
	DLLStorageClass       DLLStorageClass     // zero value if not present
	ThreadLocal           *ThreadLocal        // nil if not present
	UnnamedAddr           UnnamedAddr         // zero value if not present
	AddrSpace             AddrSpace           // zero value if not present
	ExternallyInitialized bool
	Immutable             bool
	Type                  Type
	Init                  Constant // nil if declaration
	GlobalAttrs           []GlobalAttribute
	FuncAttrs             []FuncAttribute
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
	isGlobalAttribute()
}

func (Section) isGlobalAttribute()            {}
func (Comdat) isGlobalAttribute()             {}
func (Alignment) isGlobalAttribute()          {}
func (MetadataAttachment) isGlobalAttribute() {}

// An IndirectSymbol is an alias or an ifunc.
type IndirectSymbol struct {
	Name            GlobalIdent
	Linkage         Linkage
	Preemption      PreemptionSpecifier
	Visibility      Visibility
	DLLStorageClass DLLStorageClass
	ThreadLocal     *ThreadLocal
	UnnamedAddr     UnnamedAddr
	Alias           bool // alias if true, ifunc otherwise.
	Type            Type
	PtrType         Type
	Value           Constant // aliasee or resolver
}

// ~~~ [ Function Declaration or Definition ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

type Function struct {
	Linkage  Linkage
	Header   *FunctionHeader
	Body     *FunctionBody // nil if declaration
	Metadata []MetadataAttachment
}

type FunctionHeader struct {
	Preemption      PreemptionSpecifier
	Visibility      Visibility
	DLLStorageClass DLLStorageClass
	CallingConv     CallingConv
	ReturnAttrs     []ReturnAttribute
	RetType         Type
	Name            GlobalIdent
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
)

type FunctionBody struct {
	Blocks        []BasicBlock
	UseListOrders []UseListOrder
}

// ~~~ [ Attribute Group Definition ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

type AttrGroupDef struct {
	Name      AttrGroupID
	FuncAttrs []FuncAttribute
}

// ~~~ [ Named Metadata ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

type NamedMetadataDef struct {
	Name  MetadataName
	Nodes []MetadataNode
}

type MetadataNode interface {
	isMetadataNode()
}

func (MetadataID) isMetadataNode()   {}
func (DIExpression) isMetadataNode() {}

// ~~~ [ Standalone Metadata ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

type MetadataDef struct {
	Name     MetadataID
	Distinct bool
	Node     MDNode // MDTuple or SpecializedMDNode
}

// ~~~ [ Use-list Order Directives ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

type UseListOrder struct {
	Type    Type
	Value   Value
	Indices []int64
}

type UseListOrderBB struct {
	Func    GlobalIdent
	Block   LocalIdent
	Indices []int64
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
