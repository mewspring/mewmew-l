package ir

import "github.com/mewmew/l/ll/types"

// A Function is an LLVM IR function.
type Function struct {
	Typ  types.Type
	Name string
}

// Type returns the type of the function.
func (f *Function) Type() types.Type {
	return f.Typ
}

// Ident returns the identifier associated with the function.
func (f *Function) Ident() string {
	return f.Name
}

// IsConstant ensures that only constants can be assigned to the
// constant.Constant interface.
func (*Function) IsConstant() {}

// String returns the string representation of the function.
func (*Function) String() string {
	panic("ir.Function.String: not yet implemented")
}
