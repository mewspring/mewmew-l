package constant

import (
	"fmt"

	"github.com/mewmew/l/ir/types"
)

// ~~~ [ bitcast ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// BitCastExpr is an LLVM IR bitcast expression.
type BitCastExpr struct {
	From Constant
	To   types.Type
}

// String returns a string representation of the constant expression.
func (c *BitCastExpr) String() string {
	// "bitcast" "(" Type Constant "to" Type ")"
	return fmt.Sprintf("bitcast (%v %v to %v)", c.From.Type(), c.From.Ident(), c.To)
}

// Type returns the type of the bitcast expression.
func (c *BitCastExpr) Type() types.Type {
	return c.To
}

// Ident returns the identifier associated with the bitcast expression.
func (c *BitCastExpr) Ident() string {
	return c.String()
}

// IsConstant ensures that only constants can be assigned to the
// constant.Constant interface.
func (*BitCastExpr) IsConstant() {}
