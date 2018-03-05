package irx

import (
	"github.com/mewmew/l/asm/internal/ast"
	"github.com/mewmew/l/ir/constant"
)

func (m *Module) irTypeConst(old *ast.TypeConst) constant.Constant {
	// TODO: Figure out how to set type of constant in a clean way.
	c := m.irConstant(old.Const)
	//pretty.Println("c:", c)
	//c.(*ir.Global).Typ = m.irType(old.Type)
	//pretty.Println("c:", c)
	return c
}
