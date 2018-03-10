package ast

import (
	"fmt"

	"github.com/mewmew/l/ir"
	"github.com/mewmew/l/ir/metadata"
	"github.com/mewmew/l/ir/types"
	"github.com/mewmew/l/ir/value"
)

// TypeValue is a type-value pair.
type TypeValue struct {
	Typ   types.Type
	Value value.Value
}

// String returns the string representation of the value as a type-value pair.
func (v *TypeValue) String() string {
	return fmt.Sprintf("%v %v", v.Type(), v.Ident())
}

// Type returns the type of the value.
func (v *TypeValue) Type() types.Type {
	return v.Typ
}

// Ident returns the identifier associated with the value.
func (v *TypeValue) Ident() string {
	return v.Value.Ident()
}

// TypeConst is a type-constant pair.
type TypeConst struct {
	Typ   types.Type
	Const ir.Constant
}

// String returns the string representation of the constant as a type-value
// pair.
func (c *TypeConst) String() string {
	return fmt.Sprintf("%v %v", c.Type(), c.Ident())
}

// Type returns the type of the constant.
func (c *TypeConst) Type() types.Type {
	return c.Typ
}

// Ident returns the identifier associated with the constant.
func (c *TypeConst) Ident() string {
	return c.Const.Ident()
}

// MetadataValue is a metadata value function call argument.
type MetadataValue struct {
	// The metadata type is implicit.
	Metadata metadata.Metadata
}

// String returns a string representation of the metadata value function call
// argument.
func (a *MetadataValue) String() string {
	// MetadataType Metadata
	return fmt.Sprintf("metadata %v", a.Metadata)
}
