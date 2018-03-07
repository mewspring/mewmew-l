package ast

import (
	"fmt"

	"github.com/mewmew/l/ir/metadata"
	"github.com/mewmew/l/ll/types"
)

// TypeConst is a type-constant pair.
type TypeConst struct {
	Typ   types.Type
	Const Constant
}

// String returns the string representation of the type-constant pair.
func (c *TypeConst) String() string {
	return fmt.Sprintf("%v %v", c.Typ, c.Const)
}

// Type returns the type of the value.
func (v *TypeConst) Type() types.Type {
	return v.Typ
}

// Ident returns the identifier associated with the value.
func (v *TypeConst) Ident() string {
	return v.Const.String()
}

// IsConstant ensures that only constants can be assigned to the ast.Constant
// interface.
func (v *TypeConst) IsConstant() {}

// TypeValue is a type-value pair.
type TypeValue struct {
	Typ   types.Type
	Value Value
}

// String returns a string representation of the type-value pair.
func (v *TypeValue) String() string {
	return fmt.Sprintf("%v %v", v.Typ, v.Value)
}

// Type returns the type of the value.
func (v *TypeValue) Type() types.Type {
	return v.Typ
}

// Ident returns the identifier associated with the value.
func (v *TypeValue) Ident() string {
	return v.Value.String()
}

// IsExceptionScope ensures that only exception scopes can be assigned to the
// ast.ExceptionScope interface.
func (*NoneConst) IsExceptionScope()  {}
func (*LocalIdent) IsExceptionScope() {}

// MetadataValue is a metadata value function call argument.
type MetadataValue struct {
	// metadata type is implicit.
	Metadata metadata.Metadata
}

// String returns a string representation of the metadata value function call
// argument.
func (a *MetadataValue) String() string {
	// MetadataType Metadata
	return fmt.Sprintf("metadata %v", a.Metadata)
}

// IsArgument ensures that only function call arguments can be assigned to the
// ast.Argument interface.
//func (*Arg) IsArgument()           {} // used as function argument
func (*TypeValue) IsArgument()     {} // used as exception argument
func (*MetadataValue) IsArgument() {}
