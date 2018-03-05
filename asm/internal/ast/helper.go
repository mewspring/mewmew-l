package ast

import (
	"fmt"
	"strings"

	"github.com/mewmew/l/internal/enc"
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

//go:generate stringer -linecomment -type Preemption

// Preemption specifies the preemtion of a global identifier.
type Preemption uint8

// Preemption kinds.
const (
	PreemptionNone           Preemption = iota // none
	PreemptionDSOLocal                         // dso_local
	PreemptionDSOPreemptable                   // dso_preemptable
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

//go:generate stringer -linecomment -type DLLStorageClass

// DLLStorageClass specifies the DLL storage class of a global identifier.
type DLLStorageClass uint8

// DLL storage classes.
const (
	DLLStorageClassNone      DLLStorageClass = iota // none
	DLLStorageClassDLLExport                        // dllexport
	DLLStorageClassDLLImport                        // dllimport
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

// Section specifies a section attribute.
type Section struct {
	Name string
}

// String returns the string representation of the section name.
func (s *Section) String() string {
	return fmt.Sprintf("section %v", enc.Quote(s.Name))
}

// Comdat specifies a comdat attribute.
type Comdat struct {
	Name *ComdatName // nil if not present
}

// String returns the string representation of the comdat.
func (c *Comdat) String() string {
	if c.Name == nil {
		return "comdat"
	}
	return fmt.Sprintf("comdat(%s)", c.Name)
}

// Alignment specifies an alignment attribute,
type Alignment struct {
	Align int64
}

// String returns the string representation of the alignment attribute.
func (a *Alignment) String() string {
	// Note, alignment is printed as `align = 8` in attribute groups.
	return fmt.Sprintf("align %d", a.Align)
}

// ___ [ Function Attribute ] __________________________________________________

// FuncAttribute is a function attribute.
type FuncAttribute interface {
	fmt.Stringer
	// isFuncAttribute ensures that only function attributes can be assigned to
	// the ast.FuncAttribute interface.
	isFuncAttribute()
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

// StackAlignment specifies an stack alignment attribute.
type StackAlignment struct {
	Align int64
}

// String returns the string representation of the stack alignment attribute.
func (a *StackAlignment) String() string {
	return fmt.Sprintf("alignstack(%d)", a.Align)
}

// FuncAttrString is a function attribute string.
type FuncAttrString struct {
	Value string
}

// String returns the string representation of the function attribute string.
func (a *FuncAttrString) String() string {
	return enc.Quote(a.Value)
}

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

// isFuncAttribute ensures that only function attributes can be assigned to the
// ast.FuncAttribute interface.
func (*AttrGroupID) isFuncAttribute()    {}
func (*Alignment) isFuncAttribute()      {}
func (*AllocSize) isFuncAttribute()      {}
func (*StackAlignment) isFuncAttribute() {}
func (*FuncAttrString) isFuncAttribute() {}
func (*FuncAttrPair) isFuncAttribute()   {}
func (FuncAttr) isFuncAttribute()        {}

// ___ [ Return Attribute ] ____________________________________________________

// ReturnAttribute is a return argument attribute.
type ReturnAttribute interface {
	fmt.Stringer
	// isReturnAttribute ensures that only return argument attributes can be
	// assigned to the ast.ReturnAttribute interface.
	isReturnAttribute()
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

// ReturnAttrString is a return argument attribute string.
type ReturnAttrString struct {
	Value string
}

// String returns the string representation of the return argument attribute
// string.
func (a *ReturnAttrString) String() string {
	return enc.Quote(a.Value)
}

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

// isReturnAttribute ensures that only return argument attributes can be
// assigned to the ast.ReturnAttribute interface.
func (*Alignment) isReturnAttribute()        {}
func (*Dereferenceable) isReturnAttribute()  {}
func (*ReturnAttrString) isReturnAttribute() {}
func (ReturnAttr) isReturnAttribute()        {}

// TypeConst is a type-constant pair.
type TypeConst struct {
	Type  Type
	Const Constant
}

// String returns the string representation of the type-constant pair.
func (c *TypeConst) String() string {
	return fmt.Sprintf("%v %v", c.Type, c.Const)
}

// Param is a function parameter.
type Param struct {
	Type  Type
	Attrs []ParamAttribute
	Name  *LocalIdent // nil if unnamed.
}

// String returns the string representation of the function parameter.
func (param *Param) String() string {
	// Type ParamAttrs OptLocalIdent
	buf := &strings.Builder{}
	buf.WriteString(param.Type.String())
	for _, attr := range param.Attrs {
		fmt.Fprintf(buf, " %v", attr)
	}
	if param.Name != nil {
		fmt.Fprintf(buf, " %v", param.Name)
	}
	return buf.String()
}

// ParamAttribute is a parameter attribute.
type ParamAttribute interface {
	fmt.Stringer
	// isParamAttribute ensures that only parameter attributes can be assigned to
	// the ast.ParamAttribute interface.
	isParamAttribute()
}

// ParamAttrString is a parameter attribute string.
type ParamAttrString struct {
	Value string
}

// String returns the string representation of the parameter attribute string.
func (a *ParamAttrString) String() string {
	return enc.Quote(a.Value)
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

// isParamAttribute ensures that only parameter attributes can be assigned to
// the ast.ParamAttribute interface.
func (*Alignment) isParamAttribute()       {}
func (*Dereferenceable) isParamAttribute() {}
func (*ParamAttrString) isParamAttribute() {}
func (ParamAttr) isParamAttribute()        {}

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

//go:generate stringer -linecomment -type OverflowFlag

// OverflowFlag is an integer overflow flag.
type OverflowFlag uint8

// Overflow flags.
const (
	OverflowFlagNSW OverflowFlag = iota // nsw
	OverflowFlagNUW                     // nuw
)

// TypeValue is a type-value pair.
type TypeValue struct {
	Type  Type
	Value Value
}

// String returns a string representation of the type-value pair.
func (v *TypeValue) String() string {
	return fmt.Sprintf("%v %v", v.Type, v.Value)
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

// ExceptionScope is an exception scope.
type ExceptionScope interface {
	fmt.Stringer
	// isExceptionScope ensures that only exception scopes can be assigned to the
	// ast.ExceptionScope interface.
	isExceptionScope()
}

// isExceptionScope ensures that only exception scopes can be assigned to the
// ast.ExceptionScope interface.
func (*NoneConst) isExceptionScope()  {}
func (*LocalIdent) isExceptionScope() {}

// Argument is a function call argument.
type Argument interface {
	fmt.Stringer
	// isArgument ensures that only function call arguments can be assigned to
	// the ast.Argument interface.
	isArgument()
}

// Arg is a function call argument.
type Arg struct {
	X          *TypeValue
	ParamAttrs []ParamAttribute
}

// String returns a string representation of the function call argument.
func (a *Arg) String() string {
	// ConcreteType ParamAttrs Value
	buf := &strings.Builder{}
	buf.WriteString(a.X.Type.String())
	for _, attr := range a.ParamAttrs {
		fmt.Fprintf(buf, " %v", attr)
	}
	fmt.Fprintf(buf, " %v", a.X.Value)
	return buf.String()
}

// MetadataValue is a metadata value function call argument.
type MetadataValue struct {
	// metadata type is implicit.
	Metadata Metadata
}

// String returns a string representation of the metadata value function call
// argument.
func (a *MetadataValue) String() string {
	// MetadataType Metadata
	return fmt.Sprintf("metadata %v", a.Metadata)
}

// isArgument ensures that only function call arguments can be assigned to the
// ast.Argument interface.
func (*Arg) isArgument()           {} // used as function argument
func (*TypeValue) isArgument()     {} // used as exception argument
func (*MetadataValue) isArgument() {}

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

// OperandBundle is a tagged set of SSA values.
type OperandBundle struct {
	Tag    string
	Inputs []*TypeValue
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

// Label is a basic block label.
type Label struct {
	// label type is implicit.
	Name *LocalIdent
}

// String returns a string representation of the basic block label.
func (l *Label) String() string {
	return fmt.Sprintf("label %v", l.Name)
}
