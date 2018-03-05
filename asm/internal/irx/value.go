package irx

import (
	"github.com/mewmew/l/asm/internal/ast"
	"github.com/mewmew/l/ir/value"
)

// irValue returns the LLVM IR value corresponding to the given AST value.
func (m *Module) irValue(old ast.Value) value.Value {
	panic("irType: not yet implemented")
}
