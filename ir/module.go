package ir

import (
	"fmt"
	"strings"

	"github.com/mewmew/l/ir/metadata"
	"github.com/mewmew/l/ir/types"
)

// A Module is an LLVM IR module.
type Module struct {
	// Type definitions.
	TypeDefs []*types.NamedType
	// Named metadata definitions.
	NamedMetadataDefs []*metadata.NamedMetadataDef
	// Metadata definitions.
	MetadataDefs []*metadata.MetadataDef
}

// String returns the string representation of the module.
func (m *Module) String() string {
	buf := &strings.Builder{}

	// Type definitions.
	for _, t := range m.TypeDefs {
		// LocalIdent "=" "type" OpaqueType
		// LocalIdent "=" "type" Type
		fmt.Fprintf(buf, "%v = type %v\n", t.Name, t.Def)
	}

	// Named metadata definitions.
	for _, def := range m.NamedMetadataDefs {
		// MetadataName "=" "!" "{" MetadataNodes "}"
		fmt.Fprintf(buf, "%v = !{", def.Name)
		for i, node := range def.Nodes {
			if i != 0 {
				buf.WriteString(", ")
			}
			buf.WriteString(node.String())
		}
		fmt.Fprintln(buf, "}")
	}

	// Metadata definitions.
	for _, def := range m.MetadataDefs {
		// MetadataID "=" OptDistinct MDTuple
		// MetadataID "=" OptDistinct SpecializedMDNode
		fmt.Fprintf(buf, "%v = ", def.ID)
		if def.Distinct {
			buf.WriteString("distinct ")
		}
		fmt.Fprintln(buf, def.Node)
	}

	return buf.String()
}
