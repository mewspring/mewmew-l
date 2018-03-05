package irx

import (
	"github.com/mewmew/l/asm/internal/ast"
	"github.com/mewmew/l/ir/constant"
)

// irIntConst returns the LLVM IR integer constant corresponding to the given
// AST integer constant.
func (m *Module) irIntConst(old *ast.IntConst) *constant.IntConst {
	return constant.NewFromString(old.X)
}
