package ir

import (
	"fmt"
	"strings"

	"github.com/mewmew/l/ir/metadata"
	"github.com/mewmew/l/ir/types"
)

// ~~~ [ Global Variable Declaration or Definition ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~

// Note, Typ is nil when Global is in AST form; irx.Translate instantiates Typ
// to a pointer to ContentType.

// Global is a global variable declaration or a global variable definition.
type Global struct {
	// Global variable name (*GlobalIdent).
	Name                  string
	Linkage               Linkage         // zero value if not present
	Preemption            Preemption      // zero value if not present
	Visibility            Visibility      // zero value if not present
	DLLStorageClass       DLLStorageClass // zero value if not present
	ThreadLocal           *ThreadLocal    // nil if not present
	UnnamedAddr           UnnamedAddr     // zero value if not present
	AddrSpace             types.AddrSpace // zero value if not present
	ExternallyInitialized bool
	Immutable             bool
	Typ                   *types.PointerType // pointer to ContentType.
	ContentType           types.Type
	Init                  Constant   // nil if declaration
	Section               *Section   // nil if not present
	Comdat                *Comdat    // nil if not present
	Align                 *Alignment // nil if not present
	Metadata              []*metadata.MetadataAttachment
	FuncAttrs             []FuncAttribute
}

// String returns the string representation of the global variable as a type-
// value pair.
func (g *Global) String() string {
	return fmt.Sprintf("%v %v", g.Type(), g.Ident())
}

// Type returns the type of the global variable.
func (g *Global) Type() types.Type {
	return g.Typ
}

// Ident returns the identifier associated with the global variable.
func (g *Global) Ident() string {
	return g.Name
}

// Def returns the LLVM syntax representation of the global variable definition.
func (g *Global) Def() string {
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
	fmt.Fprintf(buf, " %v", g.ContentType)
	if g.Init != nil {
		fmt.Fprintf(buf, " %v", g.Init.Ident())
	}
	if g.Section != nil {
		fmt.Fprintf(buf, ", %v", g.Section)
	}
	if g.Comdat != nil {
		fmt.Fprintf(buf, ", %v", g.Comdat)
	}
	if g.Align != nil {
		fmt.Fprintf(buf, ", %v", g.Align)
	}
	for _, md := range g.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	for _, attr := range g.FuncAttrs {
		fmt.Fprintf(buf, " %v", attr)
	}
	return buf.String()
}
