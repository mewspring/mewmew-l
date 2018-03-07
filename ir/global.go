package ir

import (
	"fmt"
	"strings"

	"github.com/mewmew/l/ll"
	"github.com/mewmew/l/ll/types"
)

// Global is a global variable declaration or a global variable definition.
type Global struct {
	Name                  string
	Linkage               ll.Linkage         // zero value if not present
	Preemption            ll.Preemption      // zero value if not present
	Visibility            ll.Visibility      // zero value if not present
	DLLStorageClass       ll.DLLStorageClass // zero value if not present
	ThreadLocal           *ll.ThreadLocal    // nil if not present
	UnnamedAddr           ll.UnnamedAddr     // zero value if not present
	AddrSpace             types.AddrSpace    // zero value if not present
	ExternallyInitialized bool
	Immutable             bool
	Typ                   *types.PointerType
	ContentType           types.Type
	Init                  Constant // nil if declaration
	GlobalAttrs           []ll.GlobalAttribute
	FuncAttrs             []ll.FuncAttribute
}

// String returns a string representation of the global variable.
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
	if g.Linkage != ll.LinkageNone {
		fmt.Fprintf(buf, " %v", g.Linkage)
	}
	if g.Preemption != ll.PreemptionNone {
		fmt.Fprintf(buf, " %v", g.Preemption)
	}
	if g.Visibility != ll.VisibilityNone {
		fmt.Fprintf(buf, " %v", g.Visibility)
	}
	if g.DLLStorageClass != ll.DLLStorageClassNone {
		fmt.Fprintf(buf, " %v", g.DLLStorageClass)
	}
	if g.ThreadLocal != nil {
		fmt.Fprintf(buf, " %v", g.ThreadLocal)
	}
	if g.UnnamedAddr != ll.UnnamedAddrNone {
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
	for _, attr := range g.GlobalAttrs {
		fmt.Fprintf(buf, ", %v", attr)
	}
	for _, attr := range g.FuncAttrs {
		fmt.Fprintf(buf, " %v", attr)
	}
	return buf.String()
}
