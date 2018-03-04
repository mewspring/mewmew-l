package ir

import (
	"fmt"
	"strings"

	"github.com/mewmew/l/ir/types"
)

// A Module is an LLVM IR module.
type Module struct {
	// Type definitions.
	TypeDefs []*types.NamedType
}

// String returns the string representation of the module.
func (m *Module) String() string {
	buf := &strings.Builder{}
	for _, t := range m.TypeDefs {
		// LocalIdent "=" "type" OpaqueType
		// LocalIdent "=" "type" Type
		fmt.Fprintf(buf, "%v = type %v\n", t.Name, t.Def)
	}
	return buf.String()
}
