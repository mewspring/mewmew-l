package irx

import (
	"github.com/mewmew/l/ir/constant"
)

func (m *Module) irBitCastExpr(old *constant.BitCastExpr) *constant.BitCastExpr {
	return &constant.BitCastExpr{
		From: m.irConstant(old.From),
		To:   m.irType(old.To),
	}
}
