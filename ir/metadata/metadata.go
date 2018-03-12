package metadata

import (
	"fmt"
	"strings"

	"github.com/mewmew/l/internal/enc"
	"github.com/mewmew/l/ir/types"
	"github.com/mewmew/l/ir/value"
)

// ~~~ [ Named Metadata Definition ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// NamedMetadataDef is a named metadata definition.
type NamedMetadataDef struct {
	Name  string // MetadataName
	Nodes []MetadataNode
}

// String returns the string representation of the named metadata definition.
func (md *NamedMetadataDef) String() string {
	return enc.Metadata(md.Name)
}

// Def returns the LLVM syntax representation of the named metadata definition.
func (md *NamedMetadataDef) Def() string {
	// MetadataName "=" "!" "{" MetadataNodes "}"
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "%v = !{", enc.Metadata(md.Name))
	for i, node := range md.Nodes {
		if i != 0 {
			buf.WriteString(", ")
		}
		buf.WriteString(node.String())
	}
	buf.WriteString("}")
	return buf.String()
}

// ~~~ [ Metadata Definition ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// MetadataDef is a metadata definition.
type MetadataDef struct {
	ID       string // MetadataID
	Distinct bool
	Node     MDNode // MDTuple or SpecializedMDNode
}

// String returns the string representation of the metadata definition.
func (md *MetadataDef) String() string {
	return enc.Metadata(md.ID)
}

// Def returns the LLVM syntax representation of the metadata definition.
func (md *MetadataDef) Def() string {
	// MetadataID "=" OptDistinct MDTuple
	// MetadataID "=" OptDistinct SpecializedMDNode
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "%v = ", enc.Metadata(md.ID))
	if md.Distinct {
		buf.WriteString("distinct ")
	}
	buf.WriteString(md.Node.String())
	return buf.String()
}

// === [ Metadata Nodes and Metadata Strings ] =================================

// --- [ Metadata Tuple ] ------------------------------------------------------

// MDTuple is a metadata node tuple.
type MDTuple struct {
	Fields []MDField
}

// String returns the string representation of the metadata node tuple.
func (md *MDTuple) String() string {
	// "!" MDFields
	buf := &strings.Builder{}
	buf.WriteString("!{")
	for i, field := range md.Fields {
		if i != 0 {
			buf.WriteString(", ")
		}
		buf.WriteString(field.String())
	}
	buf.WriteString("}")
	return buf.String()
}

// --- [ Metadata Value ] ------------------------------------------------------

// A Value is a metadata value.
type Value struct {
	Type  types.Type
	Value value.Value
}

// String returns the string representation of the metadata value.
func (md *Value) String() string {
	return fmt.Sprintf("%v %v", md.Type, md.Value.Ident())
}

// --- [ Metadata String ] -----------------------------------------------------

// MDString is a metadata string.
type MDString struct {
	Value string
}

// String returns the string representation of the metadata string.
func (md *MDString) String() string {
	// "!" StringLit
	return fmt.Sprintf("!%v", enc.Quote(md.Value))
}

// --- [ Metadata Attachment ] -------------------------------------------------

// MetadataAttachment is a metadata attachment.
type MetadataAttachment struct {
	// Metadata attachment name (MetadataName).
	Name string
	Node MDNode
}

// String returns the string representation of the metadata attachment.
func (m *MetadataAttachment) String() string {
	// !dbg !42
	return fmt.Sprintf("%s %s", enc.Metadata(m.Name), m.Node)
}
