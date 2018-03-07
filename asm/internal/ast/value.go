package ast

import (
	"fmt"

	"github.com/mewmew/l/ll/types"
)

// === [ Values ] ==============================================================

// A Value is an LLVM IR value.
type Value interface {
	fmt.Stringer
	// IsValue ensures that only values can be assigned to the ast.Value
	// interface.
	IsValue()
}

// --- [ Inline Assembler Expressions ] ----------------------------------------

// ### [ Helper functions ] ####################################################

// IsValue ensures that only values can be assigned to the ast.Value interface.
func (*LocalIdent) IsValue() {}

// Type returns the type of the local value.
func (i *LocalIdent) Type() types.Type {
	panic("ast.LocalIdent.Type: unintended use of Type; type resolution not complete")
}

// Ident returns the identifier associated with the local value.
func (i *LocalIdent) Ident() string {
	return i.String()
}

// IsValue ensures that only values can be assigned to the ast.Value interface.
func (*GlobalIdent) IsValue() {}

// Type returns the type of the constant.
func (i *GlobalIdent) Type() types.Type {
	panic("ast.GlobalIdent.Type: unintended use of Type; type resolution not complete")
}

// Ident returns the identifier associated with the constant.
func (i *GlobalIdent) Ident() string {
	return i.String()
}
