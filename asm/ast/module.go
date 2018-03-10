// Package ast declares the types used to represent abstract syntax trees of
// LLVM IR modules.
package ast

import (
	"fmt"
	"strings"

	"github.com/mewmew/l/ir/types"
)

// === [ Module ] ==============================================================

// A Module is an LLVM IR module.
type Module struct {
	Entities []TopLevelEntity
}

// String returns the string representation of the module.
func (m *Module) String() string {
	// TopLevelEntities
	buf := &strings.Builder{}
	for _, entity := range m.Entities {
		switch entity := entity.(type) {
		case *NamedType:
			// LocalIdent "=" "type" OpaqueType
			// LocalIdent "=" "type" Type
			fmt.Fprintf(buf, "%v = type %v\n", entity.Name, entity.Type)
		default:
			fmt.Fprintln(buf, entity.Def())

		}
	}
	return buf.String()
}

// NamedType is a named type.
type NamedType struct {
	Name string
	Type types.Type
}

// Equal reports whether t and u are of equal type.
func (t *NamedType) Equal(u types.Type) bool {
	panic("ast.NamedType.Equal: unintended use of Equal; type resolution not complete")
}

// String returns the string representation of the named type.
func (t *NamedType) String() string {
	return t.Name
}

// Def returns the LLVM syntax representation of the definition of the type.
func (t *NamedType) Def() string {
	panic("ast.NamedType.Def: unintended use of Def; type resolution not complete")
}

// SetName sets the name of the type.
func (t *NamedType) SetName(name string) {
	panic("ast.NamedType.SetName: unintended use of SetName; type resolution not complete")
}
