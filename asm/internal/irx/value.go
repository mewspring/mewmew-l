package irx

import (
	"github.com/kr/pretty"
	"github.com/mewmew/l/asm/internal/ast"
	"github.com/mewmew/l/ir"
	"github.com/mewmew/l/ir/value"
)

// irValue returns the LLVM IR value corresponding to the given AST value.
func (m *Module) irValue(old ast.Value) value.Value {
	switch old := old.(type) {
	case ir.Constant:
		return m.irConstant(old)
	}
	pretty.Println("old:", old)
	panic("irValue: not yet implemented")
}
