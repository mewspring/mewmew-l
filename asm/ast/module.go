// Package ast declares the types used to represent abstract syntax trees of
// LLVM IR modules.
package ast

import (
	"fmt"
	"strings"
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
		fmt.Fprintln(buf, entity.Def())
	}
	return buf.String()
}
