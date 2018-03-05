package irx

import (
	"fmt"

	"github.com/mewmew/l/asm/internal/ast"
	"github.com/mewmew/l/ir/constant"
)

// irConstant returns the LLVM IR constant corresponding to the given AST constant.
func (m *Module) irConstant(old ast.Constant) constant.Constant {
	switch old := old.(type) {
	case *ast.IntConst:
		return m.irIntConst(old)
	default:
		panic(fmt.Errorf("support for constant %T not yet implemented", old))
	}
}

// irIntConst returns the LLVM IR integer constant corresponding to the given
// AST integer constant.
func (m *Module) irIntConst(old *ast.IntConst) *constant.IntConst {
	return constant.NewIntConstFromString(old.X)
}
