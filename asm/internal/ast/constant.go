package ast

import "github.com/mewmew/l/ll/types"

// === [ Constants ] ===========================================================

// --- [ Integer Constants ] ---------------------------------------------------

// An IntConst is an LLVM IR integer constant.
type IntConst struct {
	X string
}

// String returns the string representation of the integer constant.
func (c *IntConst) String() string {
	// int_lit
	return c.X
}

// Type returns the type of the integer constant.
func (c *IntConst) Type() types.Type {
	panic("ast.IntConst.Type: unintended use of Type; type resolution not complete")
}

// Ident returns the identifier associated with the integer constant.
func (c *IntConst) Ident() string {
	return c.String()
}

// --- [ Floating-point Constants ] --------------------------------------------

// A FloatConst is an LLVM IR floating-point constant.
type FloatConst struct {
	X string
}

// String returns the string representation of the floating-point constant.
func (c *FloatConst) String() string {
	// float_lit
	return c.X
}

// Type returns the type of the floating-point constant.
func (c *FloatConst) Type() types.Type {
	panic("ast.FloatConst.Type: unintended use of Type; type resolution not complete")
}

// Ident returns the identifier associated with the floating-point constant.
func (c *FloatConst) Ident() string {
	return c.String()
}

// ### [ Helper functions ] ####################################################

// IsConstant ensures that only constants can be assigned to the ir.Constant
// interface.
func (*IntConst) IsConstant()    {}
func (*FloatConst) IsConstant()  {}
func (*GlobalIdent) IsConstant() {}
