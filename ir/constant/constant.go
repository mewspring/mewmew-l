package constant

import (
	"fmt"
	"math/big"

	"github.com/mewmew/l/ir/value"
	"github.com/mewmew/l/ll/types"
)

// A Constant is an LLVM IR constant.
type Constant interface {
	value.Value
	// IsConstant ensures that only constants can be assigned to the
	// constant.Constant interface.
	IsConstant()
}

// A NullConst is an LLVM IR null constant.
type NullConst struct {
	Typ *types.PointerType
}

// String returns the string representation of the null constant.
func (*NullConst) String() string {
	return "null"
}

// Type returns the type of the null constant.
func (c *NullConst) Type() types.Type {
	return c.Typ
}

// Ident returns the identifier associated with the null constant.
func (c *NullConst) Ident() string {
	return c.String()
}

// IsConstant ensures that only constants can be assigned to the
// constant.Constant interface.
func (*NullConst) IsConstant() {}

// IsMDField ensures that only metadata fields can be assigned to the
// metadata.MDField interface.
func (*NullConst) IsMDField() {}

// IsIntOrMDField ensures that only intergers and metadata fields can be
// assigned to the ast.IntOrMDField interface.
func (*NullConst) IsIntOrMDField() {}

// An IntConst is an LLVM IR integer constant.
type IntConst struct {
	Typ *types.IntType
	X   *big.Int
}

// NewIntConstFromString returns a new integer constant based on the given
// string.
func NewIntConstFromString(s string) *IntConst {
	x := &big.Int{}
	if _, ok := x.SetString(s, 10); !ok {
		panic(fmt.Errorf("unable to set integer constant %q", s))
	}
	return &IntConst{
		X: x,
	}
}

// Type returns the type of the integer constant.
func (c *IntConst) Type() types.Type {
	return c.Typ
}

// Ident returns the identifier associated with the integer constant.
func (c *IntConst) Ident() string {
	return c.String()
}

func (c *IntConst) String() string {
	return c.X.String()
}

// IsConstant ensures that only constants can be assigned to the
// constant.Constant interface.
func (*IntConst) IsConstant() {}

// IsDIExpressionField ensures that only DIExpression fields can be assigned to
// the metadata.DIExpressionField interface.
func (*IntConst) IsDIExpressionField() {}

// IsIntOrMDField ensures that only intergers and metadata fields can be
// assigned to the metadata.IntOrMDField interface.
func (*IntConst) IsIntOrMDField() {}
