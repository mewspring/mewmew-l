package astx

import (
	"fmt"

	"github.com/mewmew/l/asm/ast"
	"github.com/mewmew/l/ir"
	"github.com/mewmew/l/ir/constant"
	"github.com/mewmew/l/ir/types"
)

// TypeConst returns a type-constant pair based on the given type and constant.
func TypeConst(typ, val interface{}) *ast.TypeConst {
	return &ast.TypeConst{
		Typ:   typ.(types.Type),
		Const: val.(ir.Constant),
	}
}

// OptConstant returns a constant based on the given optional constant.
func OptConstant(c interface{}) ir.Constant {
	switch c := c.(type) {
	case *ast.TypeConst:
		return c
	case nil:
		return nil
	default:
		panic(fmt.Errorf("support for constant type %d not yet implemented", c))
	}
}

// NewIntConst returns a new integer constant corresponding to the given token.
func NewIntConst(tok interface{}) (*constant.Int, error) {
	return constant.NewIntFromString(String(tok)), nil
}

// NewFloatConst returns a new floating-point constant corresponding to the
// given token.
func NewFloatConst(tok interface{}) (*ast.FloatConst, error) {
	return &ast.FloatConst{X: String(tok)}, nil
}
