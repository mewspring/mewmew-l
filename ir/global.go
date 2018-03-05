package ir

import (
	"fmt"
	"strings"

	"github.com/mewmew/l/ast"
	"github.com/mewmew/l/ir/constant"
	"github.com/mewmew/l/ir/types"
)

// Global is a global variable declaration or a global variable definition.
type Global struct {
	Name                  string
	Linkage               ast.Linkage         // zero value if not present
	Preemption            ast.Preemption      // zero value if not present
	Visibility            ast.Visibility      // zero value if not present
	DLLStorageClass       ast.DLLStorageClass // zero value if not present
	ThreadLocal           *ast.ThreadLocal    // nil if not present
	UnnamedAddr           ast.UnnamedAddr     // zero value if not present
	AddrSpace             types.AddrSpace     // zero value if not present
	ExternallyInitialized bool
	Immutable             bool
	Typ                   *types.PointerType
	ContentType           types.Type
	Init                  constant.Constant // nil if declaration
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

// Type returns the type of the global variable.
func (g *Global) Type() types.Type {
	return g.Typ
}

// Ident returns the identifier associated with the global variable.
func (g *Global) Ident() string {
	return g.Name
}

// IsConstant ensures that only constants can be assigned to the
// constant.Constant interface.
func (*Global) IsConstant() {}

// GlobalAttribute is a global attribute.
type GlobalAttribute interface {
	fmt.Stringer
	// IsGlobalAttribute ensures that only global attributes can be assigned to
	// the ast.GlobalAttribute interface.
	IsGlobalAttribute()
}

// IsGlobalAttribute ensures that only global attributes can be assigned to the
// ast.GlobalAttribute interface.
func (*Section) IsGlobalAttribute()   {}
func (*Comdat) IsGlobalAttribute()    {}
func (*Alignment) IsGlobalAttribute() {}
