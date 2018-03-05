package metadata

import (
	"fmt"
	"strings"

	"github.com/mewmew/l/internal/enc"
	"github.com/mewmew/l/ir/types"
	"github.com/mewmew/l/ir/value"
)

// ~~~ [ Named Metadata ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// NamedMetadataDef is a named metadata definition.
type NamedMetadataDef struct {
	Name  string // MetadataName
	Nodes []MetadataNode
}

func (def *NamedMetadataDef) String() string {
	return def.Name
}

// MetadataNode is a metadata node.
type MetadataNode interface {
	fmt.Stringer
	isMetadataNode()
}

func (*MetadataDef) isMetadataNode()  {}
func (*DIExpression) isMetadataNode() {}

// ~~~ [ Standalone Metadata ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// MetadataDef is a metadata definition.
type MetadataDef struct {
	ID       string // MetadataID
	Distinct bool
	Node     MDNode // MDTuple or SpecializedMDNode
}

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

// MDField is a metadata field.
type MDField interface {
	fmt.Stringer
	// IsMDField ensures that only metadata fields can be assigned to the
	// metadata.MDField interface.
	IsMDField()
}

// A Value is a metadata value.
type Value struct {
	Type  types.Type
	Value value.Value
}

// String returns the string representation of the metadata value.
func (md *Value) String() string {
	return fmt.Sprintf("%v %v", md.Type, md.Value)
}

// ### [ Helper functions ] ####################################################

// IsMDField ensures that only metadata fields can be assigned to the
// metadata.MDField interface.
//
// *constant.NullConst

// Metadata
func (*Value) IsMDField()       {}
func (*MDString) IsMDField()    {}
func (*MDTuple) IsMDField()     {}
func (*MetadataDef) IsMDField() {}

// SpecializedMDNode
func (*DICompileUnit) IsMDField()              {}
func (*DIFile) IsMDField()                     {}
func (*DIBasicType) IsMDField()                {}
func (*DISubroutineType) IsMDField()           {}
func (*DIDerivedType) IsMDField()              {}
func (*DICompositeType) IsMDField()            {}
func (*DISubrange) IsMDField()                 {}
func (*DIEnumerator) IsMDField()               {}
func (*DITemplateTypeParameter) IsMDField()    {}
func (*DITemplateValueParameter) IsMDField()   {}
func (*DIModule) IsMDField()                   {}
func (*DINamespace) IsMDField()                {}
func (*DIGlobalVariable) IsMDField()           {}
func (*DISubprogram) IsMDField()               {}
func (*DILexicalBlock) IsMDField()             {}
func (*DILexicalBlockFile) IsMDField()         {}
func (*DILocation) IsMDField()                 {}
func (*DILocalVariable) IsMDField()            {}
func (*DIExpression) IsMDField()               {}
func (*DIGlobalVariableExpression) IsMDField() {}
func (*DIObjCProperty) IsMDField()             {}
func (*DIImportedEntity) IsMDField()           {}
func (*DIMacro) IsMDField()                    {}
func (*DIMacroFile) IsMDField()                {}
func (*GenericDINode) IsMDField()              {}

// --- [ Metadata ] ------------------------------------------------------------

// Metadata is a metadata value, string, node tuple, ID or specialized metadata
// node.
type Metadata interface {
	fmt.Stringer
	// isMetadata ensures that only metadata can be assigned to the
	// metadata.Metadata interface.
	isMetadata()
}

// ### [ Helper functions ] ####################################################

// isMetadata ensures that only metadata can be assigned to the
// metadata.Metadata interface.
func (*Value) isMetadata()       {}
func (*MDString) isMetadata()    {}
func (*MDTuple) isMetadata()     {}
func (*MetadataDef) isMetadata() {}

// SpecializedMDNode
func (*DICompileUnit) isMetadata()              {}
func (*DIFile) isMetadata()                     {}
func (*DIBasicType) isMetadata()                {}
func (*DISubroutineType) isMetadata()           {}
func (*DIDerivedType) isMetadata()              {}
func (*DICompositeType) isMetadata()            {}
func (*DISubrange) isMetadata()                 {}
func (*DIEnumerator) isMetadata()               {}
func (*DITemplateTypeParameter) isMetadata()    {}
func (*DITemplateValueParameter) isMetadata()   {}
func (*DIModule) isMetadata()                   {}
func (*DINamespace) isMetadata()                {}
func (*DIGlobalVariable) isMetadata()           {}
func (*DISubprogram) isMetadata()               {}
func (*DILexicalBlock) isMetadata()             {}
func (*DILexicalBlockFile) isMetadata()         {}
func (*DILocation) isMetadata()                 {}
func (*DILocalVariable) isMetadata()            {}
func (*DIExpression) isMetadata()               {}
func (*DIGlobalVariableExpression) isMetadata() {}
func (*DIObjCProperty) isMetadata()             {}
func (*DIImportedEntity) isMetadata()           {}
func (*DIMacro) isMetadata()                    {}
func (*DIMacroFile) isMetadata()                {}
func (*GenericDINode) isMetadata()              {}

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
	Name string
	Node MDNode
}

// String returns the string representation of the metadata attachment.
func (m *MetadataAttachment) String() string {
	// !dbg !42
	return fmt.Sprintf("%s %s", m.Name, m.Node)
}

// IsGlobalAttribute ensures that only global attributes can be assigned to the
// ast.GlobalAttribute interface.
func (*MetadataAttachment) IsGlobalAttribute() {}

// --- [ Metadata Node ] -------------------------------------------------------

// MDNode is a metadata node.
type MDNode interface {
	fmt.Stringer
	// isMDNode ensures that only metadata nodes can be assigned to the
	// metadata.MDNode interface.
	isMDNode()
}

// isMDNode ensures that only metadata nodes can be assigned to the
// metadata.MDNode interface.
func (*MDTuple) isMDNode()     {}
func (*MetadataDef) isMDNode() {}

// SpecializedMDNode
func (*DICompileUnit) isMDNode()              {}
func (*DIFile) isMDNode()                     {}
func (*DIBasicType) isMDNode()                {}
func (*DISubroutineType) isMDNode()           {}
func (*DIDerivedType) isMDNode()              {}
func (*DICompositeType) isMDNode()            {}
func (*DISubrange) isMDNode()                 {}
func (*DIEnumerator) isMDNode()               {}
func (*DITemplateTypeParameter) isMDNode()    {}
func (*DITemplateValueParameter) isMDNode()   {}
func (*DIModule) isMDNode()                   {}
func (*DINamespace) isMDNode()                {}
func (*DIGlobalVariable) isMDNode()           {}
func (*DISubprogram) isMDNode()               {}
func (*DILexicalBlock) isMDNode()             {}
func (*DILexicalBlockFile) isMDNode()         {}
func (*DILocation) isMDNode()                 {}
func (*DILocalVariable) isMDNode()            {}
func (*DIExpression) isMDNode()               {}
func (*DIGlobalVariableExpression) isMDNode() {}
func (*DIObjCProperty) isMDNode()             {}
func (*DIImportedEntity) isMDNode()           {}
func (*DIMacro) isMDNode()                    {}
func (*DIMacroFile) isMDNode()                {}
func (*GenericDINode) isMDNode()              {}
