package constant

import (
	"fmt"
	"math/big"
)

// A NullConst is an LLVM IR null constant.
type NullConst struct{}

func (*NullConst) String() string {
	return "null"
}

// IsMDField ensures that only metadata fields can be assigned to the
// metadata.MDField interface.
func (*NullConst) IsMDField() {}

// IsIntOrMDField ensures that only intergers and metadata fields can be
// assigned to the ast.IntOrMDField interface.
func (*NullConst) IsIntOrMDField() {}

// An IntConst is an LLVM IR integer constant.
type IntConst struct {
	X *big.Int
}

// NewFromString returns a new integer constant based on the given string.
func NewFromString(s string) *IntConst {
	x := &big.Int{}
	if _, ok := x.SetString(s, 10); !ok {
		panic(fmt.Errorf("unable to set integer constant %q", s))
	}
	return &IntConst{
		X: x,
	}
}

func (c *IntConst) String() string {
	return c.X.String()
}

// IsDIExpressionField ensures that only DIExpression fields can be assigned to
// the metadata.DIExpressionField interface.
func (*IntConst) IsDIExpressionField() {}

// IsIntOrMDField ensures that only intergers and metadata fields can be
// assigned to the metadata.IntOrMDField interface.
func (*IntConst) IsIntOrMDField() {}
