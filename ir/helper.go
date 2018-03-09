package ir

import (
	"fmt"
	"strings"

	"github.com/mewmew/l/internal/enc"
	"github.com/mewmew/l/ir/types"
	"github.com/mewmew/l/ir/value"
)

// Alignment specifies an alignment attribute,
type Alignment struct {
	Align int64
}

// String returns the string representation of the alignment attribute.
func (a *Alignment) String() string {
	// Note, alignment is printed as `align = 8` in attribute groups.
	return fmt.Sprintf("align %d", a.Align)
}

// AllocSize specifies an allocation size attribute.
type AllocSize struct {
	BaseSize int64
	N        int64
}

// String returns the string representation of the allocation size attribute.
func (a *AllocSize) String() string {
	switch a.N {
	case 0, 1:
		return fmt.Sprintf("allocsize(%d)", a.BaseSize)
	default:
		return fmt.Sprintf("allocsize(%d, %d)", a.BaseSize, a.N)
	}
}

// Arg is a function call argument.
type Arg struct {
	X          value.Value
	ParamAttrs []ParamAttribute
}

// String returns a string representation of the function call argument.
func (a *Arg) String() string {
	// ConcreteType ParamAttrs Value
	buf := &strings.Builder{}
	buf.WriteString(a.X.Type().String())
	for _, attr := range a.ParamAttrs {
		fmt.Fprintf(buf, " %v", attr)
	}
	fmt.Fprintf(buf, " %v", a.X.Ident())
	return buf.String()
}

//go:generate stringer -linecomment -type AtomicOrdering

// AtomicOrdering is an atomic ordering attribute.
type AtomicOrdering uint8

// Atomic ordering attributes.
const (
	AtomicOrderingNone      AtomicOrdering = iota // none
	AtomicOrderingAcqRel                          // acq_rel
	AtomicOrderingAcquire                         // acquire
	AtomicOrderingMonotonic                       // monotonic
	AtomicOrderingRelease                         // release
	AtomicOrderingSeqCst                          // seq_cst
	AtomicOrderingUnordered                       // unordered
)

//go:generate stringer -linecomment -type CallingConv

// CallingConv is a calling convention.
type CallingConv uint8

// Calling conventions.
const (
	CallingConvNone          CallingConv = iota // none
	CallingConvAmdGPUCS                         // amdgpu_cs
	CallingConvAmdGPUES                         // amdgpu_es
	CallingConvAmdGPUGS                         // amdgpu_gs
	CallingConvAmdGPUHS                         // amdgpu_hs
	CallingConvAmdGPUKernel                     // amdgpu_kernel
	CallingConvAmdGPULS                         // amdgpu_ls
	CallingConvAmdGPUPS                         // amdgpu_ps
	CallingConvAmdGPUVS                         // amdgpu_vs
	CallingConvAnyReg                           // anyregcc
	CallingConvARMAAPCSVFP                      // arm_aapcs_vfpcc
	CallingConvARMAAPCS                         // arm_aapcscc
	CallingConvARMAPCS                          // arm_apcscc
	CallingConvAVRIntr                          // avr_intrcc
	CallingConvAVRSignal                        // avr_signalcc
	CallingConvC                                // ccc
	CallingConvCold                             // coldcc
	CallingConvCXXFastTLS                       // cxx_fast_tlscc
	CallingConvFast                             // fastcc
	CallingConvGHC                              // ghccc
	CallingConvHHVMC                            // hhvm_ccc
	CallingConvHHVM                             // hhvmcc
	CallingConvIntelOCLBI                       // intel_ocl_bicc
	CallingConvMSP430Intr                       // msp430_intrcc
	CallingConvPreserveAll                      // preserve_allcc
	CallingConvPreserveMost                     // preserve_mostcc
	CallingConvPTXDevice                        // ptx_device
	CallingConvPTXKernel                        // ptx_kernel
	CallingConvSPIRFunc                         // spir_func
	CallingConvSPIRKernel                       // spir_kernel
	CallingConvSwift                            // swiftcc
	CallingConvWebKitJS                         // webkit_jscc
	CallingConvWin64                            // win64cc
	CallingConvX86_64SysV                       // x86_64_sysvcc
	CallingConvX86FastCall                      // x86_fastcallcc
	CallingConvX86Intr                          // x86_intrcc
	CallingConvX86RegCall                       // x86_regcallcc
	CallingConvX86StdCall                       // x86_stdcallcc
	CallingConvX86ThisCall                      // x86_thiscallcc
	CallingConvX86VectorCall                    // x86_vectorcallcc
	// Calling conventions defined through cc NNN.
	CallingConvHiPE          // cc 11
	CallingConvAVRBuiltin    // cc 86
	CallingConvAMDGPUVS      // cc 87
	CallingConvAMDGPUGS      // cc 88
	CallingConvAMDGPUPS      // cc 89
	CallingConvAMDGPUCS      // cc 90
	CallingConvAMDGPUKernel  // cc 91
	CallingConvAMDGPUHS      // cc 93
	CallingConvMSP430Builtin // cc 94
	CallingConvAMDGPULS      // cc 95
	CallingConvAMDGPUES      // cc 96
)

// Comdat specifies a comdat attribute.
type Comdat struct {
	Name string // ComdatName; empty if not present
}

// String returns the string representation of the comdat.
func (c *Comdat) String() string {
	if len(c.Name) == 0 {
		return "comdat"
	}
	return fmt.Sprintf("comdat(%s)", c.Name)
}

// Dereferenceable specifies a dereferenceable attribute.
type Dereferenceable struct {
	N    int64
	Null bool
}

// String returns the string representation of the dereferenceable attribute.
func (d *Dereferenceable) String() string {
	if d.Null {
		return fmt.Sprintf("dereferenceable_or_null(%d)", d.N)
	}
	return fmt.Sprintf("dereferenceable(%d)", d.N)
}

//go:generate stringer -linecomment -type DLLStorageClass

// DLLStorageClass specifies the DLL storage class of a global identifier.
type DLLStorageClass uint8

// DLL storage classes.
const (
	DLLStorageClassNone      DLLStorageClass = iota // none
	DLLStorageClassDLLExport                        // dllexport
	DLLStorageClassDLLImport                        // dllimport
)

//go:generate stringer -linecomment -type FastMathFlag

// FastMathFlag is a fast-math flag.
type FastMathFlag uint8

// Fast-math flags.
const (
	FastMathFlagAFn      FastMathFlag = iota // afn
	FastMathFlagARcp                         // arcp
	FastMathFlagContract                     // contract
	FastMathFlagFast                         // fast
	FastMathFlagNInf                         // ninf
	FastMathFlagNNaN                         // nnan
	FastMathFlagNSZ                          // nsz
	FastMathFlagReassoc                      // reassoc
)

//go:generate stringer -linecomment -type FuncAttr

// FuncAttr is a function attribute.
type FuncAttr uint8

// Function attributes.
const (
	FuncAttrAlwaysInline                FuncAttr = iota // alwaysinline
	FuncAttrArgMemOnly                                  // argmemonly
	FuncAttrBuiltin                                     // builtin
	FuncAttrCold                                        // cold
	FuncAttrConvergent                                  // convergent
	FuncAttrInaccessibleMemOrArgMemOnly                 // inaccessiblemem_or_argmemonly
	FuncAttrInaccessibleMemOnly                         // inaccessiblememonly
	FuncAttrInlineHint                                  // inlinehint
	FuncAttrJumpTable                                   // jumptable
	FuncAttrMinSize                                     // minsize
	FuncAttrNaked                                       // naked
	FuncAttrNoBuiltin                                   // nobuiltin
	FuncAttrNoDuplicate                                 // noduplicate
	FuncAttrNoImplicitFloat                             // noimplicitfloat
	FuncAttrNoInline                                    // noinline
	FuncAttrNonLazyBind                                 // nonlazybind
	FuncAttrNoRecurse                                   // norecurse
	FuncAttrNoRedZone                                   // noredzone
	FuncAttrNoReturn                                    // noreturn
	FuncAttrNoUnwind                                    // nounwind
	FuncAttrOptNone                                     // optnone
	FuncAttrOptSize                                     // optsize
	FuncAttrReadNone                                    // readnone
	FuncAttrReadOnly                                    // readonly
	FuncAttrReturnsTwice                                // returns_twice
	FuncAttrSafeStack                                   // safestack
	FuncAttrSanitizeAddress                             // sanitize_address
	FuncAttrSanitizeHWAddress                           // sanitize_hwaddress
	FuncAttrSanitizeMemory                              // sanitize_memory
	FuncAttrSanitizeThread                              // sanitize_thread
	FuncAttrSpeculatable                                // speculatable
	FuncAttrSSP                                         // ssp
	FuncAttrSSPReq                                      // sspreq
	FuncAttrSSPStrong                                   // sspstrong
	FuncAttrStrictFP                                    // strictfp
	FuncAttrUwtable                                     // uwtable
	FuncAttrWriteOnly                                   // writeonly
)

// FuncAttrPair is a function attribute key-value pair.
type FuncAttrPair struct {
	Key   string
	Value string
}

// String returns the string representation of the function attribute key-value
// pair.
func (a *FuncAttrPair) String() string {
	return fmt.Sprintf("%v=%v", enc.Quote(a.Key), enc.Quote(a.Value))
}

// FuncAttrString is a function attribute string.
type FuncAttrString struct {
	Value string
}

// String returns the string representation of the function attribute string.
func (a *FuncAttrString) String() string {
	return enc.Quote(a.Value)
}

//go:generate stringer -linecomment -type FPred

// FPred is a floating-point comparison predicate.
type FPred uint8

// Floating-point predicates.
const (
	FPredFalse FPred = iota // false
	FPredOEQ                // oeq
	FPredOGE                // oge
	FPredOGT                // ogt
	FPredOLE                // ole
	FPredOLT                // olt
	FPredONE                // one
	FPredORD                // ord
	FPredTrue               // true
	FPredUEQ                // ueq
	FPredUGE                // uge
	FPredUGT                // ugt
	FPredULE                // ule
	FPredULT                // ult
	FPredUNE                // une
	FPredUNO                // uno
)

//go:generate stringer -linecomment -type IPred

// IPred is an integer comparison predicate.
type IPred uint8

// Integer predicates.
const (
	IPredEQ  IPred = iota // eq
	IPredNE               // ne
	IPredSGE              // sge
	IPredSGT              // sgt
	IPredSLE              // sle
	IPredSLT              // slt
	IPredUGE              // uge
	IPredUGT              // ugt
	IPredULE              // ule
	IPredULT              // ult
)

//go:generate stringer -linecomment -type Linkage

// Linkage specifies the linkage of a global identifier.
type Linkage uint8

// Linkage kinds.
const (
	LinkageNone                Linkage = iota // none
	LinkageAppending                          // appending
	LinkageAvailableExternally                // available_externally
	LinkageCommon                             // common
	LinkageInternal                           // internal
	LinkageLinkOnce                           // linkonce
	LinkageLinkOnceODR                        // linkonce_odr
	LinkagePrivate                            // private
	LinkageWeak                               // weak
	LinkageWeakODR                            // weak_odr
	// External linkage.
	LinkageExternal   // external
	LinkageExternWeak // extern_weak
)

// OperandBundle is a tagged set of SSA values.
type OperandBundle struct {
	Tag    string
	Inputs []value.Value
}

// String returns a string representation of the operand bundle.
func (o *OperandBundle) String() string {
	// string_lit "(" TypeValues ")"
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "%v(", enc.Quote(o.Tag))
	for i, input := range o.Inputs {
		if i != 0 {
			buf.WriteString(" ")
		}
		buf.WriteString(input.String())
	}
	buf.WriteString(")")
	return buf.String()
}

//go:generate stringer -linecomment -type OverflowFlag

// OverflowFlag is an integer overflow flag.
type OverflowFlag uint8

// Overflow flags.
const (
	OverflowFlagNSW OverflowFlag = iota // nsw
	OverflowFlagNUW                     // nuw
)

// A Param is an LLVM IR function parameter.
type Param struct {
	// Parameter type.
	Typ types.Type
	// Parameter attributes.
	Attrs []ParamAttribute
	// Parameter name (LocalIdent); or empty if unnamed.
	Name string
}

// Type returns the type of the function parameter.
func (p *Param) Type() types.Type {
	return p.Typ
}

// Ident returns the identifier associated with the function parameter.
func (p *Param) Ident() string {
	return p.Name
}

// String returns the string representation of the function parameter.
func (param *Param) String() string {
	// Type ParamAttrs OptLocalIdent
	buf := &strings.Builder{}
	buf.WriteString(param.Typ.String())
	for _, attr := range param.Attrs {
		fmt.Fprintf(buf, " %v", attr)
	}
	if len(param.Name) > 0 {
		fmt.Fprintf(buf, " %v", param.Name)
	}
	return buf.String()
}

//go:generate stringer -linecomment -type ParamAttr

// ParamAttr is a parameter attribute.
type ParamAttr uint8

// Parameter attributes.
const (
	ParamAttrByval      ParamAttr = iota // byval
	ParamAttrInAlloca                    // inalloca
	ParamAttrInReg                       // inreg
	ParamAttrNest                        // nest
	ParamAttrNoAlias                     // noalias
	ParamAttrNoCapture                   // nocapture
	ParamAttrNonNull                     // nonnull
	ParamAttrReadNone                    // readnone
	ParamAttrReadOnly                    // readonly
	ParamAttrReturned                    // returned
	ParamAttrSignExt                     // signext
	ParamAttrSRet                        // sret
	ParamAttrSwiftError                  // swifterror
	ParamAttrSwiftSelf                   // swiftself
	ParamAttrWriteOnly                   // writeonly
	ParamAttrZeroExt                     // zeroext
)

// ParamAttrString is a parameter attribute string.
type ParamAttrString struct {
	Value string
}

// String returns the string representation of the parameter attribute string.
func (a *ParamAttrString) String() string {
	return enc.Quote(a.Value)
}

//go:generate stringer -linecomment -type Preemption

// Preemption specifies the preemtion of a global identifier.
type Preemption uint8

// Preemption kinds.
const (
	PreemptionNone           Preemption = iota // none
	PreemptionDSOLocal                         // dso_local
	PreemptionDSOPreemptable                   // dso_preemptable
)

//go:generate stringer -linecomment -type ReturnAttr

// ReturnAttr is a return argument attribute.
type ReturnAttr uint8

// Return argument attributes.
const (
	ReturnAttrInReg   ReturnAttr = iota // inreg
	ReturnAttrNoAlias                   // noalias
	ReturnAttrNonNull                   // nonnull
	ReturnAttrSignExt                   // signext
	ReturnAttrZeroExt                   // zeroext
)

// ReturnAttrString is a return argument attribute string.
type ReturnAttrString struct {
	Value string
}

// String returns the string representation of the return argument attribute
// string.
func (a *ReturnAttrString) String() string {
	return enc.Quote(a.Value)
}

// Section specifies a section attribute.
type Section struct {
	Name string
}

// String returns the string representation of the section name.
func (s *Section) String() string {
	return fmt.Sprintf("section %v", enc.Quote(s.Name))
}

// StackAlignment specifies an stack alignment attribute.
type StackAlignment struct {
	Align int64
}

// String returns the string representation of the stack alignment attribute.
func (a *StackAlignment) String() string {
	return fmt.Sprintf("alignstack(%d)", a.Align)
}

// SyncScope is a synchronization scope attribute.
type SyncScope struct {
	Scope string
}

// String returns a string representation of the synchronization scope
// attribute.
func (s *SyncScope) String() string {
	return fmt.Sprintf("syncscope(%v)", enc.Quote(s.Scope))
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

//go:generate stringer -linecomment -type UnnamedAddr

// UnnamedAddr specifies whether the address is significant.
type UnnamedAddr uint8

// Unnamed address specifiers.
const (
	UnnamedAddrNone             UnnamedAddr = iota // none
	UnnamedAddrLocalUnnamedAddr                    // local_unnamed_addr
	UnnamedAddrUnnamedAddr                         // unnamed_addr
)

//go:generate stringer -linecomment -type Visibility

// Visibility specifies the visibility of a global identifier.
type Visibility uint8

// Visibility kinds.
const (
	VisibilityNone      Visibility = iota // none
	VisibilityDefault                     // default
	VisibilityHidden                      // hidden
	VisibilityProtected                   // protected
)
