package metadata

import (
	"fmt"
	"math/big"
	"strings"

	"github.com/mewmew/l/internal/enc"
	"github.com/mewmew/l/ir/value"
	"github.com/mewmew/l/ll/types"
)

// ~~~ [ Named Metadata ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// NamedMetadataDef is a named metadata definition.
type NamedMetadataDef struct {
	Name  string // MetadataName
	Nodes []MetadataNode
}

// String returns the string representation of the named metadata definition.
func (def *NamedMetadataDef) String() string {
	return def.Name
}

// ~~~ [ Standalone Metadata ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// MetadataDef is a metadata definition.
type MetadataDef struct {
	ID       string // MetadataID
	Distinct bool
	Node     MDNode // MDTuple or SpecializedMDNode
}

// String returns the string representation of the metadata definition.
func (def *MetadataDef) String() string {
	return def.ID
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

// --- [ Metadata NULL-literal ] -----------------------------------------------

// MDNull is a metadata null literal.
type MDNull struct{}

// String returns the string representation of the metadata null literal.
func (md *MDNull) String() string {
	// "null"
	return "null"
}

// --- [ Metadata Integer Literal ] --------------------------------------------

// MDInt is a metadata integer literal.
type MDInt struct {
	X *big.Int
}

// NewMDIntFromString returns a new metadata integer literal based on the given string.
func NewMDIntFromString(s string) *MDInt {
	x := &big.Int{}
	if _, ok := x.SetString(s, 10); !ok {
		panic(fmt.Errorf("unable to set metadata integer literal %q", s))
	}
	return &MDInt{
		X: x,
	}
}

// String returns the string representation of the metadata integer literal.
func (md *MDInt) String() string {
	// int_lit
	return md.X.String()
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
	return fmt.Sprintf("%s %s", m.Name, m.Node)
}
