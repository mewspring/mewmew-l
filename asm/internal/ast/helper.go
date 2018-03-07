package ast

import (
	"fmt"
	"strings"

	"github.com/mewmew/l/internal/enc"
	"github.com/mewmew/l/ir/metadata"
	"github.com/mewmew/l/ll"
	"github.com/mewmew/l/ll/types"
)

// TypeConst is a type-constant pair.
type TypeConst struct {
	Type  types.Type
	Const Constant
}

// String returns the string representation of the type-constant pair.
func (c *TypeConst) String() string {
	return fmt.Sprintf("%v %v", c.Type, c.Const)
}

// TypeValue is a type-value pair.
type TypeValue struct {
	Type  types.Type
	Value Value
}

// String returns a string representation of the type-value pair.
func (v *TypeValue) String() string {
	return fmt.Sprintf("%v %v", v.Type, v.Value)
}

// ExceptionScope is an exception scope.
type ExceptionScope interface {
	fmt.Stringer
	// isExceptionScope ensures that only exception scopes can be assigned to the
	// ast.ExceptionScope interface.
	isExceptionScope()
}

// isExceptionScope ensures that only exception scopes can be assigned to the
// ast.ExceptionScope interface.
func (*NoneConst) isExceptionScope()  {}
func (*LocalIdent) isExceptionScope() {}

// Argument is a function call argument.
type Argument interface {
	fmt.Stringer
	// isArgument ensures that only function call arguments can be assigned to
	// the ast.Argument interface.
	isArgument()
}

// Arg is a function call argument.
type Arg struct {
	X          *TypeValue
	ParamAttrs []ll.ParamAttribute
}

// String returns a string representation of the function call argument.
func (a *Arg) String() string {
	// ConcreteType ParamAttrs Value
	buf := &strings.Builder{}
	buf.WriteString(a.X.Type.String())
	for _, attr := range a.ParamAttrs {
		fmt.Fprintf(buf, " %v", attr)
	}
	fmt.Fprintf(buf, " %v", a.X.Value)
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

// isArgument ensures that only function call arguments can be assigned to the
// ast.Argument interface.
func (*Arg) isArgument()           {} // used as function argument
func (*TypeValue) isArgument()     {} // used as exception argument
func (*MetadataValue) isArgument() {}

// OperandBundle is a tagged set of SSA values.
type OperandBundle struct {
	Tag    string
	Inputs []*TypeValue
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
