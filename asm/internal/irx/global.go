package irx

import (
	"fmt"

	"github.com/mewmew/l/asm/internal/ast"
	"github.com/mewmew/l/ir"
)

// irGlobal returns the LLVM IR global corresponding to the given AST global
// identifier.
func (m *Module) irGlobal(old *ast.GlobalIdent) ir.Constant {
	if g, ok := m.globals[old.Name]; ok {
		return g
	}
	if i, ok := m.indirectSymbols[old.Name]; ok {
		return i
	}
	if f, ok := m.funcs[old.Name]; ok {
		return f
	}
	panic(fmt.Errorf("unable to locate global %q", old.Name))
}

// global returns the LLVM IR global corresponding to the given AST global
// identifier, and a boolean value indicating success.
func (m *Module) global(name string) (ir.Constant, bool) {
	if g, ok := m.globals[name]; ok {
		return g, true
	}
	if i, ok := m.indirectSymbols[name]; ok {
		return i, true
	}
	if f, ok := m.funcs[name]; ok {
		return f, true
	}
	return nil, false
}
