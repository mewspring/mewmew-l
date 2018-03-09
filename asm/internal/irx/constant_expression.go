package irx

import (
	"github.com/mewmew/l/ir/constant"
)

func (m *Module) irBitCastExpr(old *constant.ExprBitCast) *constant.ExprBitCast {
	return &constant.ExprBitCast{
		From: m.irConstant(old.From),
		To:   m.irType(old.To),
	}
}
