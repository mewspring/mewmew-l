package ast

import (
	"fmt"
	"strings"

	"github.com/mewmew/l/internal/enc"
	"github.com/mewmew/l/ir/metadata"
	"github.com/mewmew/l/ir/value"
	"github.com/mewmew/l/ll"
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

// ExceptionScope is an exception scope.
type ExceptionScope interface {
	fmt.Stringer
	// IsExceptionScope ensures that only exception scopes can be assigned to the
	// ast.ExceptionScope interface.
	IsExceptionScope()
}

// IsExceptionScope ensures that only exception scopes can be assigned to the
// ast.ExceptionScope interface.
func (*NoneConst) IsExceptionScope()  {}
func (*LocalIdent) IsExceptionScope() {}

// Argument is a function call argument.
type Argument interface {
	fmt.Stringer
	// IsArgument ensures that only function call arguments can be assigned to
	// the ast.Argument interface.
	IsArgument()
}

// Arg is a function call argument.
type Arg struct {
	X          value.Value
	ParamAttrs []ll.ParamAttribute
}

// String returns a string representation of the function call argument.
func (a *Arg) String() string {
	// ConcreteType ParamAttrs Value
	buf := &strings.Builder{}
	buf.WriteString(a.X.Type().String())
	for _, attr := range a.ParamAttrs {
		fmt.Fprintf(buf, " %v", attr)
	}
	fmt.Fprintf(buf, " %v", a.X.Ident())
	return buf.String()
}

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
func (*Arg) IsArgument()           {} // used as function argument
func (*TypeValue) IsArgument()     {} // used as exception argument
func (*MetadataValue) IsArgument() {}

// OperandBundle is a tagged set of SSA values.
type OperandBundle struct {
	Tag    string
	Inputs []value.Value
}

// String returns a string representation of the operand bundle.
func (o *OperandBundle) String() string {
	// string_lit "(" TypeValues ")"
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "%v(", enc.Quote(o.Tag))
	for i, input := range o.Inputs {
		if i != 0 {
			buf.WriteString(" ")
		}
		buf.WriteString(input.String())
	}
	buf.WriteString(")")
	return buf.String()
}

// Label is a basic block label.
type Label struct {
	// label type is implicit.
	Name *LocalIdent
}

// String returns a string representation of the basic block label.
func (l *Label) String() string {
	return fmt.Sprintf("label %v", l.Name)
}
