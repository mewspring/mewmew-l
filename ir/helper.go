package ir

import (
	"fmt"

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
	Name string // ComdatName; empty if not present
}

// String returns the string representation of the comdat.
func (c *Comdat) String() string {
	if len(c.Name) == 0 {
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

func (*Alignment) isFuncAttribute()      {}
func (*AttrGroupDef) isFuncAttribute()   {}
func (*AllocSize) isFuncAttribute()      {}
func (*StackAlignment) isFuncAttribute() {}
func (*FuncAttrString) isFuncAttribute() {}
func (*FuncAttrPair) isFuncAttribute()   {}
func (FuncAttr) isFuncAttribute()        {}
