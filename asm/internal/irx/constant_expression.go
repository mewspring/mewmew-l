package irx

import (
	"github.com/mewmew/l/asm/internal/ast"
	"github.com/mewmew/l/ir/constant"
)

func (m *Module) irBitCastExpr(old *ast.BitCastExpr) *constant.BitCastExpr {
	return &constant.BitCastExpr{
		From: m.irTypeConst(old.From),
		To:   m.irType(old.To),
	}
}
