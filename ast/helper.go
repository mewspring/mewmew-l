package ast

import (
	"fmt"
	"strconv"
)

//go:generate stringer -linecomment -type Linkage

type Linkage uint8

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

//go:generate stringer -linecomment -type PreemptionSpecifier

type PreemptionSpecifier uint8

const (
	PreemptionSpecifierNone           PreemptionSpecifier = iota // none
	PreemptionSpecifierDSOLocal                                  // dso_local
	PreemptionSpecifierDSOPreemptable                            // dso_preemptable
)

//go:generate stringer -linecomment -type Visibility

type Visibility uint8

const (
	VisibilityNone      Visibility = iota // none
	VisibilityDefault                     // default
	VisibilityHidden                      // hidden
	VisibilityProtected                   // protected
)

//go:generate stringer -linecomment -type DLLStorageClass

type DLLStorageClass uint8

const (
	DLLStorageClassNone      DLLStorageClass = iota // none
	DLLStorageClassDLLExport                        // dllexport
	DLLStorageClassDLLImport                        // dllimport
)

//go:generate stringer -linecomment -type UnnamedAddr

type UnnamedAddr uint8

const (
	UnnamedAddrNone             UnnamedAddr = iota // none
	UnnamedAddrLocalUnnamedAddr                    // local_unnamed_addr
	UnnamedAddrUnnamedAddr                         // unnamed_addr
)

type Section struct {
	Name string
}

func (s Section) String() string {
	return fmt.Sprintf("section %q", s.Name)
}

type Comdat struct {
	Name ComdatName
}

func (c Comdat) String() string {
	if len(c.Name) == 0 {
		return "comdat"
	}
	return fmt.Sprintf("comdat(%s)", c.Name)
}

type Alignment int64

func (a Alignment) String() string {
	// Note, printed as `align = 8` in attribute groups.
	return fmt.Sprintf("align %d", int64(a))
}

// ___ [ Function Attribute ] __________________________________________________

type FuncAttribute interface {
	isFuncAttribute()
}

type AllocSize struct {
	BaseSize int64
	N        int64
}

func (a AllocSize) String() string {
	switch a.N {
	case 0, 1:
		return fmt.Sprintf("allocsize(%d)", a.BaseSize)
	default:
		return fmt.Sprintf("allocsize(%d, %d)", a.BaseSize, a.N)
	}
}

type StackAlignment int64

func (a StackAlignment) String() string {
	return fmt.Sprintf("alignstack(%d)", int64(a))
}

type FuncAttrString string

func (a FuncAttrString) String() string {
	return strconv.Quote(string(a))
}

type FuncAttrPair struct {
	Key   string
	Value string
}

func (a FuncAttrPair) String() string {
	return fmt.Sprintf("%q = %q", a.Key, a.Value)
}

//go:generate stringer -linecomment -type FuncAttr

type FuncAttr uint8

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

func (AttrGroupID) isFuncAttribute()    {}
func (Alignment) isFuncAttribute()      {}
func (AllocSize) isFuncAttribute()      {}
func (StackAlignment) isFuncAttribute() {}
func (FuncAttrString) isFuncAttribute() {}
func (FuncAttrPair) isFuncAttribute()   {}
func (FuncAttr) isFuncAttribute()       {}

// ___ [ Return Attribute ] ____________________________________________________

type ReturnAttribute interface {
	isReturnAttribute()
}

type Dereferenceable struct {
	N    int64
	Null bool
}

func (d Dereferenceable) String() string {
	if d.Null {
		return fmt.Sprintf("dereferenceable_or_null(%d)", d.N)
	}
	return fmt.Sprintf("dereferenceable(%d)", d.N)
}

type ReturnAttrString string

func (a ReturnAttrString) String() string {
	return strconv.Quote(string(a))
}

//go:generate stringer -linecomment -type ReturnAttr

type ReturnAttr uint8

const (
	ReturnAttrInReg ReturnAttr = iota // inreg
	ReturnAttrNoAlias
	ReturnAttrNonNull
	ReturnAttrSignExt
	ReturnAttrZeroExt
)

func (Alignment) isReturnAttribute()        {}
func (Dereferenceable) isReturnAttribute()  {}
func (ReturnAttrString) isReturnAttribute() {}
func (ReturnAttr) isReturnAttribute()       {}

type TypeConstant struct {
	Type  Type
	Const Constant
}

type Param struct {
	Type       Type
	Name       LocalIdent // empty if unnamed.
	ParamAttrs []ParamAttribute
}

type ParamAttribute interface {
	isParamAttribute()
}

type ParamAttrString string

func (a ParamAttrString) String() string {
	return strconv.Quote(string(a))
}

//go:generate stringer -linecomment -type ParamAttr

type ParamAttr uint8

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

func (Alignment) isParamAttribute()       {}
func (Dereferenceable) isParamAttribute() {}
func (ParamAttrString) isParamAttribute() {}
func (ParamAttr) isParamAttribute()       {}

//go:generate stringer -linecomment -type IPred

type IPred uint8

// Integer predicates.
const (
	IPredEQ  IPred = iota // eq
	IPredNE               // ne
	IPredUGT              // ugt
	IPredUGE              // uge
	IPredULT              // ult
	IPredULE              // ule
	IPredSGT              // sgt
	IPredSGE              // sge
	IPredSLT              // slt
	IPredSLE              // sle
)

//go:generate stringer -linecomment -type FPred

type FPred uint8

// Floating-point predicates.
const (
	FPredFalse FPred = iota // false
	FPredOEQ                // oeq
	FPredOGT                // ogt
	FPredOGE                // oge
	FPredOLT                // olt
	FPredOLE                // ole
	FPredONE                // one
	FPredORD                // ord
	FPredUEQ                // ueq
	FPredUGT                // ugt
	FPredUGE                // uge
	FPredULT                // ult
	FPredULE                // ule
	FPredUNE                // une
	FPredUNO                // uno
	FPredTrue               // true
)

//go:generate stringer -linecomment -type OverflowFlag

type OverflowFlag uint8

const (
	OverflowFlagNUW OverflowFlag = iota // nuw
	OverflowFlagNSW                     // nsw
)

type TypeValue struct {
	Type  Type
	Value Value
}

type SyncScope string

func (s SyncScope) String() string {
	return fmt.Sprintf("syncscope(%q)", string(s))
}

//go:generate stringer -linecomment -type AtomicOrdering

type AtomicOrdering uint8

const (
	AtomicOrderingNone      AtomicOrdering = iota // none
	AtomicOrderingUnordered                       // unordered
	AtomicOrderingMonotonic                       // monotonic
	AtomicOrderingAcquire                         // acquire
	AtomicOrderingRelease                         // release
	AtomicOrderingAcqRel                          // acq_rel
	AtomicOrderingSeqCst                          // seq_cst
)

type ExceptionScope interface {
	isExceptionScope()
}

func (NoneConst) isExceptionScope()  {}
func (LocalIdent) isExceptionScope() {}

type Argument interface {
	isArgument()
}

type Arg struct {
	X          TypeValue
	ParamAttrs []ParamAttribute
}

type MetadataValue struct {
	Metadata Metadata
}

func (Arg) isArgument()           {} // used as function argument
func (TypeValue) isArgument()     {} // used as exception argument
func (MetadataValue) isArgument() {}

//go:generate stringer -linecomment -type FastMathFlag

type FastMathFlag uint8

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

type OperandBundle struct {
	Tag    string
	Inputs []TypeValue
}