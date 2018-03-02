package ast

import (
	"fmt"
	"strings"

	"github.com/mewmew/l/internal/enc"
)

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
	// isMDField ensures that only metadata fields can be assigned to the
	// ast.MDField interface.
	isMDField()
}

// ### [ Helper functions ] ####################################################

// isMDField ensures that only metadata fields can be assigned to the
// ast.MDField interface.
func (*NullConst) isMDField() {}

// Metadata
func (*TypeValue) isMDField()  {}
func (*MDString) isMDField()   {}
func (*MDTuple) isMDField()    {}
func (*MetadataID) isMDField() {}

// SpecializedMDNode
func (*DICompileUnit) isMDField()              {}
func (*DIFile) isMDField()                     {}
func (*DIBasicType) isMDField()                {}
func (*DISubroutineType) isMDField()           {}
func (*DIDerivedType) isMDField()              {}
func (*DICompositeType) isMDField()            {}
func (*DISubrange) isMDField()                 {}
func (*DIEnumerator) isMDField()               {}
func (*DITemplateTypeParameter) isMDField()    {}
func (*DITemplateValueParameter) isMDField()   {}
func (*DIModule) isMDField()                   {}
func (*DINamespace) isMDField()                {}
func (*DIGlobalVariable) isMDField()           {}
func (*DISubprogram) isMDField()               {}
func (*DILexicalBlock) isMDField()             {}
func (*DILexicalBlockFile) isMDField()         {}
func (*DILocation) isMDField()                 {}
func (*DILocalVariable) isMDField()            {}
func (*DIExpression) isMDField()               {}
func (*DIGlobalVariableExpression) isMDField() {}
func (*DIObjCProperty) isMDField()             {}
func (*DIImportedEntity) isMDField()           {}
func (*DIMacro) isMDField()                    {}
func (*DIMacroFile) isMDField()                {}
func (*GenericDINode) isMDField()              {}

// Ensure that each metadata field implements the ast.MDField interface.
var (
	_ MDField = (*NullConst)(nil)
	_ MDField = (*TypeValue)(nil)
	_ MDField = (*MDString)(nil)
	_ MDField = (*MDTuple)(nil)
	_ MDField = (*MetadataID)(nil)
	_ MDField = (*DICompileUnit)(nil)
	_ MDField = (*DIFile)(nil)
	_ MDField = (*DIBasicType)(nil)
	_ MDField = (*DISubroutineType)(nil)
	_ MDField = (*DIDerivedType)(nil)
	_ MDField = (*DICompositeType)(nil)
	_ MDField = (*DISubrange)(nil)
	_ MDField = (*DIEnumerator)(nil)
	_ MDField = (*DITemplateTypeParameter)(nil)
	_ MDField = (*DITemplateValueParameter)(nil)
	_ MDField = (*DIModule)(nil)
	_ MDField = (*DINamespace)(nil)
	_ MDField = (*DIGlobalVariable)(nil)
	_ MDField = (*DISubprogram)(nil)
	_ MDField = (*DILexicalBlock)(nil)
	_ MDField = (*DILexicalBlockFile)(nil)
	_ MDField = (*DILocation)(nil)
	_ MDField = (*DILocalVariable)(nil)
	_ MDField = (*DIExpression)(nil)
	_ MDField = (*DIGlobalVariableExpression)(nil)
	_ MDField = (*DIObjCProperty)(nil)
	_ MDField = (*DIImportedEntity)(nil)
	_ MDField = (*DIMacro)(nil)
	_ MDField = (*DIMacroFile)(nil)
	_ MDField = (*GenericDINode)(nil)
)

// --- [ Metadata ] ------------------------------------------------------------

// Metadata is a metadata value, string, node tuple, ID or specialized metadata
// node.
type Metadata interface {
	fmt.Stringer
	// isMetadata ensures that only metadata can be assigned to the ast.Metadata
	// interface.
	isMetadata()
}

// ### [ Helper functions ] ####################################################

// isMetadata ensures that only metadata can be assigned to the ast.Metadata
// interface.
func (*TypeValue) isMetadata()  {}
func (*MDString) isMetadata()   {}
func (*MDTuple) isMetadata()    {}
func (*MetadataID) isMetadata() {}

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

// Ensure that each metadata implements the ast.Metadata interface.
var (
	_ Metadata = (*TypeValue)(nil)
	_ Metadata = (*MDString)(nil)
	_ Metadata = (*MDTuple)(nil)
	_ Metadata = (*MetadataID)(nil)
	_ Metadata = (*DICompileUnit)(nil)
	_ Metadata = (*DIFile)(nil)
	_ Metadata = (*DIBasicType)(nil)
	_ Metadata = (*DISubroutineType)(nil)
	_ Metadata = (*DIDerivedType)(nil)
	_ Metadata = (*DICompositeType)(nil)
	_ Metadata = (*DISubrange)(nil)
	_ Metadata = (*DIEnumerator)(nil)
	_ Metadata = (*DITemplateTypeParameter)(nil)
	_ Metadata = (*DITemplateValueParameter)(nil)
	_ Metadata = (*DIModule)(nil)
	_ Metadata = (*DINamespace)(nil)
	_ Metadata = (*DIGlobalVariable)(nil)
	_ Metadata = (*DISubprogram)(nil)
	_ Metadata = (*DILexicalBlock)(nil)
	_ Metadata = (*DILexicalBlockFile)(nil)
	_ Metadata = (*DILocation)(nil)
	_ Metadata = (*DILocalVariable)(nil)
	_ Metadata = (*DIExpression)(nil)
	_ Metadata = (*DIGlobalVariableExpression)(nil)
	_ Metadata = (*DIObjCProperty)(nil)
	_ Metadata = (*DIImportedEntity)(nil)
	_ Metadata = (*DIMacro)(nil)
	_ Metadata = (*DIMacroFile)(nil)
	_ Metadata = (*GenericDINode)(nil)
)

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
	Name *MetadataName
	Node MDNode
}

// String returns the string representation of the metadata attachment.
func (m *MetadataAttachment) String() string {
	// !dbg !42
	return fmt.Sprintf("%s %s", m.Name, m.Node)
}

// --- [ Metadata Node ] -------------------------------------------------------

// MDNode is a metadata node.
type MDNode interface {
	fmt.Stringer
	// isMDNode ensures that only metadata nodes can be assigned to the
	// ast.MDNode interface.
	isMDNode()
}

// isMDNode ensures that only metadata nodes can be assigned to the ast.MDNode
// interface.
func (*MDTuple) isMDNode()    {}
func (*MetadataID) isMDNode() {}

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

// Ensure that each metadata node implements the ast.MDNode interface.
var (
	_ MDNode = (*MDTuple)(nil)
	_ MDNode = (*MetadataID)(nil)
	_ MDNode = (*DICompileUnit)(nil)
	_ MDNode = (*DIFile)(nil)
	_ MDNode = (*DIBasicType)(nil)
	_ MDNode = (*DISubroutineType)(nil)
	_ MDNode = (*DIDerivedType)(nil)
	_ MDNode = (*DICompositeType)(nil)
	_ MDNode = (*DISubrange)(nil)
	_ MDNode = (*DIEnumerator)(nil)
	_ MDNode = (*DITemplateTypeParameter)(nil)
	_ MDNode = (*DITemplateValueParameter)(nil)
	_ MDNode = (*DIModule)(nil)
	_ MDNode = (*DINamespace)(nil)
	_ MDNode = (*DIGlobalVariable)(nil)
	_ MDNode = (*DISubprogram)(nil)
	_ MDNode = (*DILexicalBlock)(nil)
	_ MDNode = (*DILexicalBlockFile)(nil)
	_ MDNode = (*DILocation)(nil)
	_ MDNode = (*DILocalVariable)(nil)
	_ MDNode = (*DIExpression)(nil)
	_ MDNode = (*DIGlobalVariableExpression)(nil)
	_ MDNode = (*DIObjCProperty)(nil)
	_ MDNode = (*DIImportedEntity)(nil)
	_ MDNode = (*DIMacro)(nil)
	_ MDNode = (*DIMacroFile)(nil)
	_ MDNode = (*GenericDINode)(nil)
)

// --- [ Specialized Metadata Nodes ] ------------------------------------------

// SpecializedMDNode is a specialized metadata node.
type SpecializedMDNode interface {
	// isSpecializedMDNode ensures that only specialized metadata nodes can be
	// assigned to the ast.SpecializedMDNode interface.
	isSpecializedMDNode()
}

// ~~~ [ DICompileUnit ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// DICompileUnit is a specialized metadata node.
type DICompileUnit struct {
	Language              DwarfLang    // required
	File                  MDField      // required
	Producer              string       // optional; empty if not present
	IsOptimized           bool         // optional; zero value if not present
	Flags                 string       // optional; empty if not present
	RuntimeVersion        int64        // optional; zero value if not present
	SplitDebugFilename    string       // optional; empty if not present
	EmissionKind          EmissionKind // optional; zero value if not present
	Enums                 MDField      // optional; nil if not present
	RetainedTypes         MDField      // optional; nil if not present
	Globals               MDField      // optional; nil if not present
	Imports               MDField      // optional; nil if not present
	Macros                MDField      // optional; nil if not present
	DwoId                 int64        // optional; zero value if not present
	SplitDebugInlining    bool         // optional; zero value if not present
	DebugInfoForProfiling bool         // optional; zero value if not present
	GnuPubnames           bool         // optional; zero value if not present
}

// String returns a string representation of the specialized metadata node.
func (md *DICompileUnit) String() string {
	// "!DICompileUnit" "(" DICompileUnitFields ")"
	var fields []string
	field := fmt.Sprintf("language: %v", md.Language)
	fields = append(fields, field)
	field = fmt.Sprintf("file: %v", md.File)
	fields = append(fields, field)
	if len(md.Producer) > 0 {
		field = fmt.Sprintf("producer: %v", enc.Quote(md.Producer))
		fields = append(fields, field)
	}
	if md.IsOptimized {
		field = fmt.Sprintf("isOptimized: %v", md.IsOptimized)
		fields = append(fields, field)
	}
	if len(md.Flags) > 0 {
		field = fmt.Sprintf("mdFlags: %v", enc.Quote(md.Flags))
		fields = append(fields, field)
	}
	if md.RuntimeVersion != 0 {
		field = fmt.Sprintf("runtimeVersion: %v", md.RuntimeVersion)
		fields = append(fields, field)
	}
	if len(md.SplitDebugFilename) > 0 {
		field = fmt.Sprintf("mdSplitDebugFilename: %v", enc.Quote(md.SplitDebugFilename))
		fields = append(fields, field)
	}
	if md.EmissionKind != 0 {
		field = fmt.Sprintf("emissionKind: %v", md.EmissionKind)
		fields = append(fields, field)
	}
	if md.Enums != nil {
		field = fmt.Sprintf("enums: %v", md.Enums)
		fields = append(fields, field)
	}
	if md.RetainedTypes != nil {
		field = fmt.Sprintf("retainedTypes: %v", md.RetainedTypes)
		fields = append(fields, field)
	}
	if md.Globals != nil {
		field = fmt.Sprintf("globals: %v", md.Globals)
		fields = append(fields, field)
	}
	if md.Imports != nil {
		field = fmt.Sprintf("imports: %v", md.Imports)
		fields = append(fields, field)
	}
	if md.Macros != nil {
		field = fmt.Sprintf("macros: %v", md.Macros)
		fields = append(fields, field)
	}
	if md.DwoId != 0 {
		field = fmt.Sprintf("dwoId: %v", md.DwoId)
		fields = append(fields, field)
	}
	if md.SplitDebugInlining {
		field = fmt.Sprintf("splitDebugInlining: %v", md.SplitDebugInlining)
		fields = append(fields, field)
	}
	if md.DebugInfoForProfiling {
		field = fmt.Sprintf("debugInfoForProfiling: %v", md.DebugInfoForProfiling)
		fields = append(fields, field)
	}
	if md.GnuPubnames {
		field = fmt.Sprintf("gnuPubnames: %v", md.GnuPubnames)
		fields = append(fields, field)
	}
	return fmt.Sprintf("!DICompileUnit(%v)", strings.Join(fields, ", "))
}

// ~~~ [ DIFile ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// DIFile is a specialized metadata node.
type DIFile struct {
	Filename     string       // required
	Directory    string       // required
	Checksumkind ChecksumKind // optional; zero value if not present
	Checksum     string       // optional; empty if not present
}

// String returns a string representation of the specialized metadata node.
func (md *DIFile) String() string {
	// "!DIFile" "(" DIFileFields ")"
	var fields []string
	field := fmt.Sprintf("filename: %v", enc.Quote(md.Filename))
	fields = append(fields, field)
	field = fmt.Sprintf("directory: %v", enc.Quote(md.Directory))
	fields = append(fields, field)
	if md.Checksumkind != 0 {
		field := fmt.Sprintf("checksumkind: %v", md.Checksumkind)
		fields = append(fields, field)
	}
	if len(md.Checksum) > 0 {
		field := fmt.Sprintf("checksum: %v", enc.Quote(md.Checksum))
		fields = append(fields, field)
	}
	return fmt.Sprintf("!DIFile(%v)", strings.Join(fields, ", "))
}

// ~~~ [ DIBasicType ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// DIBasicType is a specialized metadata node.
type DIBasicType struct {
	Tag      DwarfTag         // optional; zero value if not present
	Name     string           // optional; empty if not present
	Size     int64            // optional; zero value if not present
	Align    int64            // optional; zero value if not present
	Encoding DwarfAttEncoding // optional; zero value if not present
}

// String returns a string representation of the specialized metadata node.
func (md *DIBasicType) String() string {
	// "!DIBasicType" "(" DIBasicTypeFields ")"
	var fields []string

	if md.Tag != 0 {
		field := fmt.Sprintf("tag: %v", md.Tag)
		fields = append(fields, field)
	}
	if len(md.Name) > 0 {
		field := fmt.Sprintf("name: %v", enc.Quote(md.Name))
		fields = append(fields, field)
	}
	if md.Size != 0 {
		field := fmt.Sprintf("size: %v", md.Size)
		fields = append(fields, field)
	}
	if md.Align != 0 {
		field := fmt.Sprintf("align: %v", md.Align)
		fields = append(fields, field)
	}
	if md.Encoding != 0 {
		field := fmt.Sprintf("encoding: %v", md.Encoding)
		fields = append(fields, field)
	}
	return fmt.Sprintf("!DIBasicType(%v)", strings.Join(fields, ", "))
}

// ~~~ [ DISubroutineType ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// DISubroutineType is a specialized metadata node.
type DISubroutineType struct {
	Flags []DIFlag // optional
	CC    DwarfCC  // optional; zero value if not present
	Types MDField  // required
}

// String returns a string representation of the specialized metadata node.
func (md *DISubroutineType) String() string {
	// "!DISubroutineType" "(" DISubroutineTypeFields ")"
	var fields []string
	if len(md.Flags) > 0 {
		field := fmt.Sprintf("flags: %v", flagsString(md.Flags))
		fields = append(fields, field)
	}
	if md.CC != 0 {
		field := fmt.Sprintf("cC: %v", md.CC)
		fields = append(fields, field)
	}
	field := fmt.Sprintf("types: %v", md.Types)
	fields = append(fields, field)
	return fmt.Sprintf("!DISubroutineType(%v)", strings.Join(fields, ", "))
}

// ~~~ [ DIDerivedType ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// DIDerivedType is a specialized metadata node.
type DIDerivedType struct {
	Tag               DwarfTag // required
	Name              string   // optional; empty if not present
	Scope             MDField  // optional; nil if not present
	File              MDField  // optional; nil if not present
	Line              int64    // optional; zero value if not present
	BaseType          MDField  // required
	Size              int64    // optional; zero value if not present
	Align             int64    // optional; zero value if not present
	Offset            int64    // optional; zero value if not present
	Flags             []DIFlag // optional
	ExtraData         MDField  // optional; nil if not present
	DwarfAddressSpace int64    // optional; zero value if not present
}

// String returns a string representation of the specialized metadata node.
func (md *DIDerivedType) String() string {
	// "!DIDerivedType" "(" DIDerivedTypeFields ")"
	var fields []string
	field := fmt.Sprintf("tag: %v", md.Tag)
	fields = append(fields, field)
	if len(md.Name) > 0 {
		field := fmt.Sprintf("name: %v", enc.Quote(md.Name))
		fields = append(fields, field)
	}
	if md.Scope != nil {
		field := fmt.Sprintf("scope: %v", md.Scope)
		fields = append(fields, field)
	}
	if md.File != nil {
		field := fmt.Sprintf("file: %v", md.File)
		fields = append(fields, field)
	}
	if md.Line != 0 {
		field := fmt.Sprintf("line: %v", md.Line)
		fields = append(fields, field)
	}
	field = fmt.Sprintf("baseType: %v", md.BaseType)
	fields = append(fields, field)
	if md.Size != 0 {
		field := fmt.Sprintf("size: %v", md.Size)
		fields = append(fields, field)
	}
	if md.Align != 0 {
		field := fmt.Sprintf("align: %v", md.Align)
		fields = append(fields, field)
	}
	if md.Offset != 0 {
		field := fmt.Sprintf("offset: %v", md.Offset)
		fields = append(fields, field)
	}
	if len(md.Flags) > 0 {
		field = fmt.Sprintf("flags: %v", flagsString(md.Flags))
		fields = append(fields, field)
	}
	if md.ExtraData != nil {
		field := fmt.Sprintf("extraData: %v", md.ExtraData)
		fields = append(fields, field)
	}
	if md.DwarfAddressSpace != 0 {
		field := fmt.Sprintf("dwarfAddressSpace: %v", md.DwarfAddressSpace)
		fields = append(fields, field)
	}
	return fmt.Sprintf("!DIDerivedType(%v)", strings.Join(fields, ", "))
}

// ~~~ [ DICompositeType ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// DICompositeType is a specialized metadata node.
type DICompositeType struct {
	Tag            DwarfTag  // required
	Name           string    // optional; empty if not present
	Scope          MDField   // optional; nil if not present
	File           MDField   // optional; nil if not present
	Line           int64     // optional; zero value if not present
	BaseType       MDField   // optional; nil if not present
	Size           int64     // optional; zero value if not present
	Align          int64     // optional; zero value if not present
	Offset         int64     // optional; zero value if not present
	Flags          []DIFlag  // optional
	Elements       MDField   // optional; nil if not present
	RuntimeLang    DwarfLang // optional; zero value if not present
	VtableHolder   MDField   // optional; nil if not present
	TemplateParams MDField   // optional; nil if not present
	Identifier     string    // optional; empty if not present
	Discriminator  MDField   // optional; nil if not present
}

// String returns a string representation of the specialized metadata node.
func (md *DICompositeType) String() string {
	// "!DICompositeType" "(" DICompositeTypeFields ")"
	var fields []string
	field := fmt.Sprintf("tag: %v", md.Tag)
	fields = append(fields, field)
	if len(md.Name) > 0 {
		field := fmt.Sprintf("name: %v", enc.Quote(md.Name))
		fields = append(fields, field)
	}
	if md.Scope != nil {
		field := fmt.Sprintf("scope: %v", md.Scope)
		fields = append(fields, field)
	}
	if md.File != nil {
		field := fmt.Sprintf("file: %v", md.File)
		fields = append(fields, field)
	}
	if md.Line != 0 {
		field := fmt.Sprintf("line: %v", md.Line)
		fields = append(fields, field)
	}
	if md.BaseType != nil {
		field := fmt.Sprintf("baseType: %v", md.BaseType)
		fields = append(fields, field)
	}
	if md.Size != 0 {
		field := fmt.Sprintf("size: %v", md.Size)
		fields = append(fields, field)
	}
	if md.Align != 0 {
		field := fmt.Sprintf("align: %v", md.Align)
		fields = append(fields, field)
	}
	if md.Offset != 0 {
		field := fmt.Sprintf("offset: %v", md.Offset)
		fields = append(fields, field)
	}
	if len(md.Flags) > 0 {
		field = fmt.Sprintf("flags: %v", flagsString(md.Flags))
		fields = append(fields, field)
	}
	if md.Elements != nil {
		field := fmt.Sprintf("elements: %v", md.Elements)
		fields = append(fields, field)
	}
	if md.RuntimeLang != 0 {
		field := fmt.Sprintf("runtimeLang: %v", md.RuntimeLang)
		fields = append(fields, field)
	}
	if md.VtableHolder != nil {
		field := fmt.Sprintf("vtableHolder: %v", md.VtableHolder)
		fields = append(fields, field)
	}
	if md.TemplateParams != nil {
		field := fmt.Sprintf("templateParams: %v", md.TemplateParams)
		fields = append(fields, field)
	}
	if len(md.Identifier) > 0 {
		field := fmt.Sprintf("identifier: %v", enc.Quote(md.Identifier))
		fields = append(fields, field)
	}
	if md.Discriminator != nil {
		field := fmt.Sprintf("discriminator: %v", md.Discriminator)
		fields = append(fields, field)
	}
	return fmt.Sprintf("!DICompositeType(%v)", strings.Join(fields, ", "))
}

// ~~~ [ DISubrange ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// DISubrange is a specialized metadata node.
type DISubrange struct {
	Count      IntOrMDField // required
	LowerBound int64        // optional; zero value if not present
}

// String returns a string representation of the specialized metadata node.
func (md *DISubrange) String() string {
	// "!DISubrange" "(" DISubrangeFields ")"
	var fields []string
	field := fmt.Sprintf("count: %v", md.Count)
	fields = append(fields, field)
	if md.LowerBound != 0 {
		field := fmt.Sprintf("lowerBound: %v", md.LowerBound)
		fields = append(fields, field)
	}
	return fmt.Sprintf("!DISubrange(%v)", strings.Join(fields, ", "))
}

// ~~~ [ DIEnumerator ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// DIEnumerator is a specialized metadata node.
type DIEnumerator struct {
	Name       string // required
	Value      int64  // required
	IsUnsigned bool   // optional; zero value if not present
}

// String returns a string representation of the specialized metadata node.
func (md *DIEnumerator) String() string {
	// "!DIEnumerator" "(" DIEnumeratorFields ")"
	var fields []string
	field := fmt.Sprintf("name: %v", enc.Quote(md.Name))
	fields = append(fields, field)
	field = fmt.Sprintf("value: %v", md.Value)
	fields = append(fields, field)
	if md.IsUnsigned {
		field := fmt.Sprintf("isUnsigned: %v", md.IsUnsigned)
		fields = append(fields, field)
	}
	return fmt.Sprintf("!DIEnumerator(%v)", strings.Join(fields, ", "))
}

// ~~~ [ DITemplateTypeParameter ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// DITemplateTypeParameter is a specialized metadata node.
type DITemplateTypeParameter struct {
	Name string  // optional; empty if not present
	Type MDField // required
}

// String returns a string representation of the specialized metadata node.
func (md *DITemplateTypeParameter) String() string {
	// "!DITemplateTypeParameter" "(" DITemplateTypeParameterFields ")"
	var fields []string

	if len(md.Name) > 0 {
		field := fmt.Sprintf("name: %v", enc.Quote(md.Name))
		fields = append(fields, field)
	}
	field := fmt.Sprintf("type: %v", md.Type)
	fields = append(fields, field)
	return fmt.Sprintf("!DITemplateTypeParameter(%v)", strings.Join(fields, ", "))
}

// ~~~ [ DITemplateValueParameter ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// DITemplateValueParameter is a specialized metadata node.
type DITemplateValueParameter struct {
	Tag   DwarfTag // optional; zero value if not present
	Name  string   // optional; empty if not present
	Type  MDField  // optional; nil if not present
	Value MDField  // required
}

// String returns a string representation of the specialized metadata node.
func (md *DITemplateValueParameter) String() string {
	// "!DITemplateValueParameter" "(" DITemplateValueParameterFields ")"
	var fields []string

	if md.Tag != 0 {
		field := fmt.Sprintf("tag: %v", md.Tag)
		fields = append(fields, field)
	}
	if len(md.Name) > 0 {
		field := fmt.Sprintf("name: %v", enc.Quote(md.Name))
		fields = append(fields, field)
	}
	if md.Type != nil {
		field := fmt.Sprintf("type: %v", md.Type)
		fields = append(fields, field)
	}
	field := fmt.Sprintf("value: %v", md.Value)
	fields = append(fields, field)
	return fmt.Sprintf("!DITemplateValueParameter(%v)", strings.Join(fields, ", "))
}

// ~~~ [ DIModule ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// DIModule is a specialized metadata node.
type DIModule struct {
	Scope        MDField // required
	Name         string  // required
	ConfigMacros string  // optional; empty if not present
	IncludePath  string  // optional; empty if not present
	Isysroot     string  // optional; empty if not present
}

// String returns a string representation of the specialized metadata node.
func (md *DIModule) String() string {
	// "!DIModule" "(" DIModuleFields ")"
	var fields []string
	field := fmt.Sprintf("scope: %v", md.Scope)
	fields = append(fields, field)
	field = fmt.Sprintf("name: %v", enc.Quote(md.Name))
	fields = append(fields, field)
	if len(md.ConfigMacros) > 0 {
		field := fmt.Sprintf("configMacros: %v", enc.Quote(md.ConfigMacros))
		fields = append(fields, field)
	}
	if len(md.IncludePath) > 0 {
		field := fmt.Sprintf("includePath: %v", enc.Quote(md.IncludePath))
		fields = append(fields, field)
	}
	if len(md.Isysroot) > 0 {
		field := fmt.Sprintf("isysroot: %v", enc.Quote(md.Isysroot))
		fields = append(fields, field)
	}
	return fmt.Sprintf("!DIModule(%v)", strings.Join(fields, ", "))
}

// ~~~ [ DINamespace ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// DINamespace is a specialized metadata node.
type DINamespace struct {
	Scope         MDField // required
	Name          string  // optional; empty if not present
	ExportSymbols bool    // optional; zero value if not present
}

// String returns a string representation of the specialized metadata node.
func (md *DINamespace) String() string {
	// "!DINamespace" "(" DINamespaceFields ")"
	var fields []string
	field := fmt.Sprintf("scope: %v", md.Scope)
	fields = append(fields, field)
	if len(md.Name) > 0 {
		field := fmt.Sprintf("name: %v", enc.Quote(md.Name))
		fields = append(fields, field)
	}
	if md.ExportSymbols {
		field := fmt.Sprintf("exportSymbols: %v", md.ExportSymbols)
		fields = append(fields, field)
	}
	return fmt.Sprintf("!DINamespace(%v)", strings.Join(fields, ", "))
}

// ~~~ [ DIGlobalVariable ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// DIGlobalVariable is a specialized metadata node.
type DIGlobalVariable struct {
	Name         string  // required
	Scope        MDField // optional; nil if not present
	LinkageName  string  // optional; empty if not present
	File         MDField // optional; nil if not present
	Line         int64   // optional; zero value if not present
	Type         MDField // optional; nil if not present
	IsLocal      bool    // optional; zero value if not present
	IsDefinition bool    // optional; zero value if not present
	Declaration  MDField // optional; nil if not present
	Align        int64   // optional; zero value if not present
}

// String returns a string representation of the specialized metadata node.
func (md *DIGlobalVariable) String() string {
	// "!DIGlobalVariable" "(" DIGlobalVariableFields ")"
	var fields []string
	field := fmt.Sprintf("name: %v", enc.Quote(md.Name))
	fields = append(fields, field)
	if md.Scope != nil {
		field := fmt.Sprintf("scope: %v", md.Scope)
		fields = append(fields, field)
	}
	if len(md.LinkageName) > 0 {
		field := fmt.Sprintf("linkageName: %v", enc.Quote(md.LinkageName))
		fields = append(fields, field)
	}
	if md.File != nil {
		field := fmt.Sprintf("file: %v", md.File)
		fields = append(fields, field)
	}
	if md.Line != 0 {
		field := fmt.Sprintf("line: %v", md.Line)
		fields = append(fields, field)
	}
	if md.Type != nil {
		field := fmt.Sprintf("type: %v", md.Type)
		fields = append(fields, field)
	}
	if md.IsLocal {
		field := fmt.Sprintf("isLocal: %v", md.IsLocal)
		fields = append(fields, field)
	}
	if md.IsDefinition {
		field := fmt.Sprintf("isDefinition: %v", md.IsDefinition)
		fields = append(fields, field)
	}
	if md.Declaration != nil {
		field := fmt.Sprintf("declaration: %v", md.Declaration)
		fields = append(fields, field)
	}
	if md.Align != 0 {
		field := fmt.Sprintf("align: %v", md.Align)
		fields = append(fields, field)
	}
	return fmt.Sprintf("!DIGlobalVariable(%v)", strings.Join(fields, ", "))
}

// ~~~ [ DISubprogram ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// DISubprogram is a specialized metadata node.
type DISubprogram struct {
	Name           string          // optional; empty if not present
	Scope          MDField         // optional; nil if not present
	LinkageName    string          // optional; empty if not present
	File           MDField         // optional; nil if not present
	Line           int64           // optional; zero value if not present
	Type           MDField         // optional; nil if not present
	IsLocal        bool            // optional; zero value if not present
	IsDefinition   bool            // optional; zero value if not present
	ScopeLine      int64           // optional; zero value if not present
	ContainingType MDField         // optional; nil if not present
	Virtuality     DwarfVirtuality // optional; zero value if not present
	VirtualIndex   int64           // optional; zero value if not present
	ThisAdjustment int64           // optional; zero value if not present
	Flags          []DIFlag        // optional
	IsOptimized    bool            // optional; zero value if not present
	Unit           MDField         // optional; nil if not present
	TemplateParams MDField         // optional; nil if not present
	Declaration    MDField         // optional; nil if not present
	Variables      MDField         // optional; nil if not present
	ThrownTypes    MDField         // optional; nil if not present
}

// String returns a string representation of the specialized metadata node.
func (md *DISubprogram) String() string {
	// "!DISubprogram" "(" DISubprogramFields ")"
	var fields []string
	if len(md.Name) > 0 {
		field := fmt.Sprintf("name: %v", enc.Quote(md.Name))
		fields = append(fields, field)
	}
	if md.Scope != nil {
		field := fmt.Sprintf("scope: %v", md.Scope)
		fields = append(fields, field)
	}
	if len(md.LinkageName) > 0 {
		field := fmt.Sprintf("linkageName: %v", enc.Quote(md.LinkageName))
		fields = append(fields, field)
	}
	if md.File != nil {
		field := fmt.Sprintf("file: %v", md.File)
		fields = append(fields, field)
	}
	if md.Line != 0 {
		field := fmt.Sprintf("line: %v", md.Line)
		fields = append(fields, field)
	}
	if md.Type != nil {
		field := fmt.Sprintf("type: %v", md.Type)
		fields = append(fields, field)
	}
	if md.IsLocal {
		field := fmt.Sprintf("isLocal: %v", md.IsLocal)
		fields = append(fields, field)
	}
	if md.IsDefinition {
		field := fmt.Sprintf("isDefinition: %v", md.IsDefinition)
		fields = append(fields, field)
	}
	if md.ScopeLine != 0 {
		field := fmt.Sprintf("scopeLine: %v", md.ScopeLine)
		fields = append(fields, field)
	}
	if md.ContainingType != nil {
		field := fmt.Sprintf("containingType: %v", md.ContainingType)
		fields = append(fields, field)
	}
	if md.Virtuality != 0 {
		field := fmt.Sprintf("virtuality: %v", md.Virtuality)
		fields = append(fields, field)
	}
	if md.VirtualIndex != 0 {
		field := fmt.Sprintf("virtualIndex: %v", md.VirtualIndex)
		fields = append(fields, field)
	}
	if md.ThisAdjustment != 0 {
		field := fmt.Sprintf("thisAdjustment: %v", md.ThisAdjustment)
		fields = append(fields, field)
	}
	if len(md.Flags) > 0 {
		field := fmt.Sprintf("flags: %v", flagsString(md.Flags))
		fields = append(fields, field)
	}
	if md.IsOptimized {
		field := fmt.Sprintf("isOptimized: %v", md.IsOptimized)
		fields = append(fields, field)
	}
	if md.Unit != nil {
		field := fmt.Sprintf("unit: %v", md.Unit)
		fields = append(fields, field)
	}
	if md.TemplateParams != nil {
		field := fmt.Sprintf("templateParams: %v", md.TemplateParams)
		fields = append(fields, field)
	}
	if md.Declaration != nil {
		field := fmt.Sprintf("declaration: %v", md.Declaration)
		fields = append(fields, field)
	}
	if md.Variables != nil {
		field := fmt.Sprintf("variables: %v", md.Variables)
		fields = append(fields, field)
	}
	if md.ThrownTypes != nil {
		field := fmt.Sprintf("thrownTypes: %v", md.ThrownTypes)
		fields = append(fields, field)
	}
	return fmt.Sprintf("!DISubprogram(%v)", strings.Join(fields, ", "))
}

// ~~~ [ DILexicalBlock ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// DILexicalBlock is a specialized metadata node.
type DILexicalBlock struct {
	Scope  MDField // required
	File   MDField // optional; nil if not present
	Line   int64   // optional; zero value if not present
	Column int64   // optional; zero value if not present
}

// String returns a string representation of the specialized metadata node.
func (md *DILexicalBlock) String() string {
	// "!DILexicalBlock" "(" DILexicalBlockFields ")"
	var fields []string
	field := fmt.Sprintf("scope: %v", md.Scope)
	fields = append(fields, field)
	if md.File != nil {
		field := fmt.Sprintf("file: %v", md.File)
		fields = append(fields, field)
	}
	if md.Line != 0 {
		field := fmt.Sprintf("line: %v", md.Line)
		fields = append(fields, field)
	}
	if md.Column != 0 {
		field := fmt.Sprintf("column: %v", md.Column)
		fields = append(fields, field)
	}
	return fmt.Sprintf("!DILexicalBlock(%v)", strings.Join(fields, ", "))
}

// ~~~ [ DILexicalBlockFile ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// DILexicalBlockFile is a specialized metadata node.
type DILexicalBlockFile struct {
	Scope         MDField // required
	File          MDField // optional; nil if not present
	Discriminator int64   // required
}

// String returns a string representation of the specialized metadata node.
func (md *DILexicalBlockFile) String() string {
	// "!DILexicalBlockFile" "(" DILexicalBlockFileFields ")"
	var fields []string
	field := fmt.Sprintf("scope: %v", md.Scope)
	fields = append(fields, field)
	if md.File != nil {
		field := fmt.Sprintf("file: %v", md.File)
		fields = append(fields, field)
	}
	field = fmt.Sprintf("discriminator: %v", md.Discriminator)
	fields = append(fields, field)
	return fmt.Sprintf("!DILexicalBlockFile(%v)", strings.Join(fields, ", "))
}

// ~~~ [ DILocation ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// DILocation is a specialized metadata node.
type DILocation struct {
	Line      int64   // optional; zero value if not present
	Column    int64   // optional; zero value if not present
	Scope     MDField // required
	InlinedAt MDField // optional; nil if not present
}

// String returns a string representation of the specialized metadata node.
func (md *DILocation) String() string {
	// "!DILocation" "(" DILocationFields ")"
	var fields []string

	if md.Line != 0 {
		field := fmt.Sprintf("line: %v", md.Line)
		fields = append(fields, field)
	}
	if md.Column != 0 {
		field := fmt.Sprintf("column: %v", md.Column)
		fields = append(fields, field)
	}
	field := fmt.Sprintf("scope: %v", md.Scope)
	fields = append(fields, field)
	if md.InlinedAt != nil {
		field := fmt.Sprintf("inlinedAt: %v", md.InlinedAt)
		fields = append(fields, field)
	}
	return fmt.Sprintf("!DILocation(%v)", strings.Join(fields, ", "))
}

// ~~~ [ DILocalVariable ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// DILocalVariable is a specialized metadata node.
type DILocalVariable struct {
	Name  string   // optional; empty if not present
	Arg   int64    // optional; zero value if not present
	Scope MDField  // required
	File  MDField  // optional; nil if not present
	Line  int64    // optional; zero value if not present
	Type  MDField  // optional; nil if not present
	Flags []DIFlag // optional
	Align int64    // optional; zero value if not present
}

// String returns a string representation of the specialized metadata node.
func (md *DILocalVariable) String() string {
	// "!DILocalVariable" "(" DILocalVariableFields ")"
	var fields []string
	if len(md.Name) > 0 {
		field := fmt.Sprintf("name: %v", enc.Quote(md.Name))
		fields = append(fields, field)
	}
	if md.Arg != 0 {
		field := fmt.Sprintf("arg: %v", md.Arg)
		fields = append(fields, field)
	}
	field := fmt.Sprintf("scope: %v", md.Scope)
	fields = append(fields, field)
	if md.File != nil {
		field := fmt.Sprintf("file: %v", md.File)
		fields = append(fields, field)
	}
	if md.Line != 0 {
		field := fmt.Sprintf("line: %v", md.Line)
		fields = append(fields, field)
	}
	if md.Type != nil {
		field := fmt.Sprintf("type: %v", md.Type)
		fields = append(fields, field)
	}
	if len(md.Flags) > 0 {
		field = fmt.Sprintf("flags: %v", flagsString(md.Flags))
		fields = append(fields, field)
	}
	if md.Align != 0 {
		field := fmt.Sprintf("align: %v", md.Align)
		fields = append(fields, field)
	}
	return fmt.Sprintf("!DILocalVariable(%v)", strings.Join(fields, ", "))
}

// ~~~ [ DIExpression ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// DIExpression is a specialized metadata node.
type DIExpression struct {
	Fields []DIExpressionField
}

// String returns a string representation of the specialized metadata node.
func (md *DIExpression) String() string {
	// "!DIExpression" "(" DIExpressionFields ")"
	buf := &strings.Builder{}
	buf.WriteString("!DIExpression(")
	for i, field := range md.Fields {
		if i != 0 {
			buf.WriteString(", ")
		}
		buf.WriteString(field.String())
	}
	buf.WriteString(")")
	return buf.String()
}

// ### [ Helper functions ] ####################################################

// DIExpressionField is a DIExpression field.
type DIExpressionField interface {
	fmt.Stringer
	// isDIExpressionField ensures that only DIExpression fields can be assigned
	// to the ast.DIExpressionField interface.
	isDIExpressionField()
}

// isDIExpressionField ensures that only DIExpression fields can be assigned to
// the ast.DIExpressionField interface.
func (*IntConst) isDIExpressionField() {}
func (DwarfOp) isDIExpressionField()   {}

// Ensure that each DIExpression field implements the ast.DIExpressionField
// interface.
var (
	_ DIExpressionField = (*IntConst)(nil)
	_ DIExpressionField = DwarfOp(0)
)

// ~~~ [ DIGlobalVariableExpression ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// DIGlobalVariableExpression is a specialized metadata node.
type DIGlobalVariableExpression struct {
	Var  MDField // required
	Expr MDField // required
}

// String returns a string representation of the specialized metadata node.
func (md *DIGlobalVariableExpression) String() string {
	// "!DIGlobalVariableExpression" "(" DIGlobalVariableExpressionFields ")"
	var fields []string
	field := fmt.Sprintf("var: %v", md.Var)
	fields = append(fields, field)
	// NOTE: Should be required. Thus nil check should not be needed. However,
	// Clang outputs `!0 = !DIGlobalVariableExpression(var: !1)` in cat.ll.
	if md.Expr != nil {
		field = fmt.Sprintf("expr: %v", md.Expr)
		fields = append(fields, field)
	}
	return fmt.Sprintf("!DIGlobalVariableExpression(%v)", strings.Join(fields, ", "))
}

// ~~~ [ DIObjCProperty ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// DIObjCProperty is a specialized metadata node.
type DIObjCProperty struct {
	Name       string  // optional; empty if not present
	File       MDField // optional; nil if not present
	Line       int64   // optional; zero value if not present
	Setter     string  // optional; empty if not present
	Getter     string  // optional; empty if not present
	Attributes int64   // optional; zero value if not present
	Type       MDField // optional; nil if not present
}

// String returns a string representation of the specialized metadata node.
func (md *DIObjCProperty) String() string {
	// "!DIObjCProperty" "(" DIObjCPropertyFields ")"
	var fields []string
	if len(md.Name) > 0 {
		field := fmt.Sprintf("name: %v", enc.Quote(md.Name))
		fields = append(fields, field)
	}
	if md.File != nil {
		field := fmt.Sprintf("file: %v", md.File)
		fields = append(fields, field)
	}
	if md.Line != 0 {
		field := fmt.Sprintf("line: %v", md.Line)
		fields = append(fields, field)
	}
	if len(md.Setter) > 0 {
		field := fmt.Sprintf("setter: %v", enc.Quote(md.Setter))
		fields = append(fields, field)
	}
	if len(md.Getter) > 0 {
		field := fmt.Sprintf("getter: %v", enc.Quote(md.Getter))
		fields = append(fields, field)
	}
	if md.Attributes != 0 {
		field := fmt.Sprintf("attributes: %v", md.Attributes)
		fields = append(fields, field)
	}
	if md.Type != nil {
		field := fmt.Sprintf("type: %v", md.Type)
		fields = append(fields, field)
	}
	return fmt.Sprintf("!DIObjCProperty(%v)", strings.Join(fields, ", "))
}

// ~~~ [ DIImportedEntity ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// DIImportedEntity is a specialized metadata node.
type DIImportedEntity struct {
	Tag    DwarfTag // required
	Scope  MDField  // required
	Entity MDField  // optional; nil if not present
	File   MDField  // optional; nil if not present
	Line   int64    // optional; zero value if not present
	Name   string   // optional; empty if not present
}

// String returns a string representation of the specialized metadata node.
func (md *DIImportedEntity) String() string {
	// "!DIImportedEntity" "(" DIImportedEntityFields ")"
	var fields []string
	field := fmt.Sprintf("tag: %v", md.Tag)
	fields = append(fields, field)
	field = fmt.Sprintf("scope: %v", md.Scope)
	fields = append(fields, field)
	if md.Entity != nil {
		field := fmt.Sprintf("entity: %v", md.Entity)
		fields = append(fields, field)
	}
	if md.File != nil {
		field := fmt.Sprintf("file: %v", md.File)
		fields = append(fields, field)
	}
	if md.Line != 0 {
		field := fmt.Sprintf("line: %v", md.Line)
		fields = append(fields, field)
	}
	if len(md.Name) > 0 {
		field := fmt.Sprintf("name: %v", enc.Quote(md.Name))
		fields = append(fields, field)
	}
	return fmt.Sprintf("!DIImportedEntity(%v)", strings.Join(fields, ", "))
}

// ~~~ [ DIMacro ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// DIMacro is a specialized metadata node.
type DIMacro struct {
	Type  DwarfMacinfo // required
	Line  int64        // optional; zero value if not present
	Name  string       // required
	Value string       // optional; empty if not present
}

// String returns a string representation of the specialized metadata node.
func (md *DIMacro) String() string {
	// "!DIMacro" "(" DIMacroFields ")"
	var fields []string
	field := fmt.Sprintf("type: %v", md.Type)
	fields = append(fields, field)
	if md.Line != 0 {
		field := fmt.Sprintf("line: %v", md.Line)
		fields = append(fields, field)
	}
	field = fmt.Sprintf("name: %v", enc.Quote(md.Name))
	fields = append(fields, field)
	if len(md.Value) > 0 {
		field := fmt.Sprintf("value: %v", enc.Quote(md.Value))
		fields = append(fields, field)
	}
	return fmt.Sprintf("!DIMacro(%v)", strings.Join(fields, ", "))
}

// ~~~ [ DIMacroFile ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// DIMacroFile is a specialized metadata node.
type DIMacroFile struct {
	Type  DwarfMacinfo // optional; zero value if not present
	Line  int64        // optional; zero value if not present
	File  MDField      // required
	Nodes MDField      // optional; nil if not present
}

// String returns a string representation of the specialized metadata node.
func (md *DIMacroFile) String() string {
	// "!DIMacroFile" "(" DIMacroFileFields ")"
	var fields []string

	if md.Type != 0 {
		field := fmt.Sprintf("type: %v", md.Type)
		fields = append(fields, field)
	}
	if md.Line != 0 {
		field := fmt.Sprintf("line: %v", md.Line)
		fields = append(fields, field)
	}
	field := fmt.Sprintf("file: %v", md.File)
	fields = append(fields, field)
	if md.Nodes != nil {
		field := fmt.Sprintf("nodes: %v", md.Nodes)
		fields = append(fields, field)
	}
	return fmt.Sprintf("!DIMacroFile(%v)", strings.Join(fields, ", "))
}

// ~~~ [ GenericDINode ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// GenericDINode is a specialized GenericDINode metadata node.
type GenericDINode struct {
	Tag      DwarfTag  // required
	Header   string    // optional; empty if not present
	Operands []MDField // optional
}

// String returns a string representation of the specialized metadata node.
func (md *GenericDINode) String() string {
	// "!GenericDINode" "(" GenericDINodeFields ")"
	var fields []string
	field := fmt.Sprintf("tag: %v", md.Tag)
	fields = append(fields, field)
	if len(md.Header) > 0 {
		field := fmt.Sprintf("header: %v", enc.Quote(md.Header))
		fields = append(fields, field)
	}
	if len(md.Operands) > 0 {
		field = fmt.Sprintf("operands: %v", md.Operands)
		fields = append(fields, field)
	}
	return fmt.Sprintf("!GenericDINode(%v)", strings.Join(fields, ", "))
}

// ### [ Helper functions ] ####################################################

// isSpecializedMDNode ensures that only specialized metadata nodes can be
// assigned to the ast.SpecializedMDNode interface.
func (*DICompileUnit) isSpecializedMDNode()              {}
func (*DIFile) isSpecializedMDNode()                     {}
func (*DIBasicType) isSpecializedMDNode()                {}
func (*DISubroutineType) isSpecializedMDNode()           {}
func (*DIDerivedType) isSpecializedMDNode()              {}
func (*DICompositeType) isSpecializedMDNode()            {}
func (*DISubrange) isSpecializedMDNode()                 {}
func (*DIEnumerator) isSpecializedMDNode()               {}
func (*DITemplateTypeParameter) isSpecializedMDNode()    {}
func (*DITemplateValueParameter) isSpecializedMDNode()   {}
func (*DIModule) isSpecializedMDNode()                   {}
func (*DINamespace) isSpecializedMDNode()                {}
func (*DIGlobalVariable) isSpecializedMDNode()           {}
func (*DISubprogram) isSpecializedMDNode()               {}
func (*DILexicalBlock) isSpecializedMDNode()             {}
func (*DILexicalBlockFile) isSpecializedMDNode()         {}
func (*DILocation) isSpecializedMDNode()                 {}
func (*DILocalVariable) isSpecializedMDNode()            {}
func (*DIExpression) isSpecializedMDNode()               {}
func (*DIGlobalVariableExpression) isSpecializedMDNode() {}
func (*DIObjCProperty) isSpecializedMDNode()             {}
func (*DIImportedEntity) isSpecializedMDNode()           {}
func (*DIMacro) isSpecializedMDNode()                    {}
func (*DIMacroFile) isSpecializedMDNode()                {}
func (*GenericDINode) isSpecializedMDNode()              {}

// Ensure that each specialized metadata node implements the
// ast.SpecializedMDNode interface.
var (
	_ SpecializedMDNode = (*DICompileUnit)(nil)
	_ SpecializedMDNode = (*DIFile)(nil)
	_ SpecializedMDNode = (*DIBasicType)(nil)
	_ SpecializedMDNode = (*DISubroutineType)(nil)
	_ SpecializedMDNode = (*DIDerivedType)(nil)
	_ SpecializedMDNode = (*DICompositeType)(nil)
	_ SpecializedMDNode = (*DISubrange)(nil)
	_ SpecializedMDNode = (*DIEnumerator)(nil)
	_ SpecializedMDNode = (*DITemplateTypeParameter)(nil)
	_ SpecializedMDNode = (*DITemplateValueParameter)(nil)
	_ SpecializedMDNode = (*DIModule)(nil)
	_ SpecializedMDNode = (*DINamespace)(nil)
	_ SpecializedMDNode = (*DIGlobalVariable)(nil)
	_ SpecializedMDNode = (*DISubprogram)(nil)
	_ SpecializedMDNode = (*DILexicalBlock)(nil)
	_ SpecializedMDNode = (*DILexicalBlockFile)(nil)
	_ SpecializedMDNode = (*DILocation)(nil)
	_ SpecializedMDNode = (*DILocalVariable)(nil)
	_ SpecializedMDNode = (*DIExpression)(nil)
	_ SpecializedMDNode = (*DIGlobalVariableExpression)(nil)
	_ SpecializedMDNode = (*DIObjCProperty)(nil)
	_ SpecializedMDNode = (*DIImportedEntity)(nil)
	_ SpecializedMDNode = (*DIMacro)(nil)
	_ SpecializedMDNode = (*DIMacroFile)(nil)
	_ SpecializedMDNode = (*GenericDINode)(nil)
)

// ___ [ Helpers ] _____________________________________________________________

//go:generate stringer -linecomment -type DwarfLang

// DwarfLang is a DWARF language.
type DwarfLang int64

// DWARF languages.
const (
	// DWARF v2.
	DwarfLangC89         DwarfLang = 0x0001 // DW_LANG_C89
	DwarfLangC           DwarfLang = 0x0002 // DW_LANG_C
	DwarfLangAda83       DwarfLang = 0x0003 // DW_LANG_Ada83
	DwarfLangC_plus_plus DwarfLang = 0x0004 // DW_LANG_C_plus_plus
	DwarfLangCobol74     DwarfLang = 0x0005 // DW_LANG_Cobol74
	DwarfLangCobol85     DwarfLang = 0x0006 // DW_LANG_Cobol85
	DwarfLangFortran77   DwarfLang = 0x0007 // DW_LANG_Fortran77
	DwarfLangFortran90   DwarfLang = 0x0008 // DW_LANG_Fortran90
	DwarfLangPascal83    DwarfLang = 0x0009 // DW_LANG_Pascal83
	DwarfLangModula2     DwarfLang = 0x000A // DW_LANG_Modula2
	// DWARF v3.
	DwarfLangJava           DwarfLang = 0x000B // DW_LANG_Java
	DwarfLangC99            DwarfLang = 0x000C // DW_LANG_C99
	DwarfLangAda95          DwarfLang = 0x000D // DW_LANG_Ada95
	DwarfLangFortran95      DwarfLang = 0x000E // DW_LANG_Fortran95
	DwarfLangPLI            DwarfLang = 0x000F // DW_LANG_PLI
	DwarfLangObjC           DwarfLang = 0x0010 // DW_LANG_ObjC
	DwarfLangObjC_plus_plus DwarfLang = 0x0011 // DW_LANG_ObjC_plus_plus
	DwarfLangUPC            DwarfLang = 0x0012 // DW_LANG_UPC
	DwarfLangD              DwarfLang = 0x0013 // DW_LANG_D
	// DWARF v4.
	DwarfLangPython DwarfLang = 0x0014 // DW_LANG_Python
	// DWARF v5.
	DwarfLangOpenCL         DwarfLang = 0x0015 // DW_LANG_OpenCL
	DwarfLangGo             DwarfLang = 0x0016 // DW_LANG_Go
	DwarfLangModula3        DwarfLang = 0x0017 // DW_LANG_Modula3
	DwarfLangHaskell        DwarfLang = 0x0018 // DW_LANG_Haskell
	DwarfLangC_plus_plus_03 DwarfLang = 0x0019 // DW_LANG_C_plus_plus_03
	DwarfLangC_plus_plus_11 DwarfLang = 0x001A // DW_LANG_C_plus_plus_11
	DwarfLangOCaml          DwarfLang = 0x001B // DW_LANG_OCaml
	DwarfLangRust           DwarfLang = 0x001C // DW_LANG_Rust
	DwarfLangC11            DwarfLang = 0x001D // DW_LANG_C11
	DwarfLangSwift          DwarfLang = 0x001E // DW_LANG_Swift
	DwarfLangJulia          DwarfLang = 0x001F // DW_LANG_Julia
	DwarfLangDylan          DwarfLang = 0x0020 // DW_LANG_Dylan
	DwarfLangC_plus_plus_14 DwarfLang = 0x0021 // DW_LANG_C_plus_plus_14
	DwarfLangFortran03      DwarfLang = 0x0022 // DW_LANG_Fortran03
	DwarfLangFortran08      DwarfLang = 0x0023 // DW_LANG_Fortran08
	DwarfLangRenderScript   DwarfLang = 0x0024 // DW_LANG_RenderScript
	DwarfLangBLISS          DwarfLang = 0x0025 // DW_LANG_BLISS
	// Vendor extensions.
	DwarfLangMips_Assembler      DwarfLang = 0x8001 // DW_LANG_Mips_Assembler
	DwarfLangGOOGLE_RenderScript DwarfLang = 0x8E57 // DW_LANG_GOOGLE_RenderScript
	DwarfLangBORLAND_Delphi      DwarfLang = 0xB000 // DW_LANG_BORLAND_Delphi
)

//go:generate stringer -linecomment -type EmissionKind

// EmissionKind specifies the debug emission kind.
type EmissionKind int64

// Debug emission kinds.
const (
	EmissionKindNoDebug        EmissionKind = 0 // NoDebug
	EmissionKindFullDebug      EmissionKind = 1 // FullDebug
	EmissionKindLineTablesOnly EmissionKind = 2 // LineTablesOnly
)

//go:generate stringer -linecomment -type ChecksumKind

// ChecksumKind is a checksum algorithm.
type ChecksumKind int64

// Checksum algorithms.
//
// From include/llvm/IR/DebugInfoMetadata.h
const (
	ChecksumKindMD5  ChecksumKind = 1 // CSK_MD5
	ChecksumKindSHA1 ChecksumKind = 2 // CSK_SHA1
)

//go:generate stringer -linecomment -type DwarfTag

// DwarfTag is a DWARF tag.
type DwarfTag int64

// DWARF tags.
//
// From include/llvm/BinaryFormat/Dwarf.def
const (
	// DWARF v2.
	DwarfTagNull                   DwarfTag = 0x0000 // DW_TAG_null
	DwarfTagArrayType              DwarfTag = 0x0001 // DW_TAG_array_type
	DwarfTagClassType              DwarfTag = 0x0002 // DW_TAG_class_type
	DwarfTagEntryPoint             DwarfTag = 0x0003 // DW_TAG_entry_point
	DwarfTagEnumerationType        DwarfTag = 0x0004 // DW_TAG_enumeration_type
	DwarfTagFormalParameter        DwarfTag = 0x0005 // DW_TAG_formal_parameter
	DwarfTagImportedDeclaration    DwarfTag = 0x0008 // DW_TAG_imported_declaration
	DwarfTagLabel                  DwarfTag = 0x000A // DW_TAG_label
	DwarfTagLexicalBlock           DwarfTag = 0x000B // DW_TAG_lexical_block
	DwarfTagMember                 DwarfTag = 0x000D // DW_TAG_member
	DwarfTagPointerType            DwarfTag = 0x000F // DW_TAG_pointer_type
	DwarfTagReferenceType          DwarfTag = 0x0010 // DW_TAG_reference_type
	DwarfTagCompileUnit            DwarfTag = 0x0011 // DW_TAG_compile_unit
	DwarfTagStringType             DwarfTag = 0x0012 // DW_TAG_string_type
	DwarfTagStructureType          DwarfTag = 0x0013 // DW_TAG_structure_type
	DwarfTagSubroutineType         DwarfTag = 0x0015 // DW_TAG_subroutine_type
	DwarfTagTypedef                DwarfTag = 0x0016 // DW_TAG_typedef
	DwarfTagUnionType              DwarfTag = 0x0017 // DW_TAG_union_type
	DwarfTagUnspecifiedParameters  DwarfTag = 0x0018 // DW_TAG_unspecified_parameters
	DwarfTagVariant                DwarfTag = 0x0019 // DW_TAG_variant
	DwarfTagCommonBlock            DwarfTag = 0x001A // DW_TAG_common_block
	DwarfTagCommonInclusion        DwarfTag = 0x001B // DW_TAG_common_inclusion
	DwarfTagInheritance            DwarfTag = 0x001C // DW_TAG_inheritance
	DwarfTagInlinedSubroutine      DwarfTag = 0x001D // DW_TAG_inlined_subroutine
	DwarfTagModule                 DwarfTag = 0x001E // DW_TAG_module
	DwarfTagPtrToMemberType        DwarfTag = 0x001F // DW_TAG_ptr_to_member_type
	DwarfTagSetType                DwarfTag = 0x0020 // DW_TAG_set_type
	DwarfTagSubrangeType           DwarfTag = 0x0021 // DW_TAG_subrange_type
	DwarfTagWithStmt               DwarfTag = 0x0022 // DW_TAG_with_stmt
	DwarfTagAccessDeclaration      DwarfTag = 0x0023 // DW_TAG_access_declaration
	DwarfTagBaseType               DwarfTag = 0x0024 // DW_TAG_base_type
	DwarfTagCatchBlock             DwarfTag = 0x0025 // DW_TAG_catch_block
	DwarfTagConstType              DwarfTag = 0x0026 // DW_TAG_const_type
	DwarfTagConstant               DwarfTag = 0x0027 // DW_TAG_constant
	DwarfTagEnumerator             DwarfTag = 0x0028 // DW_TAG_enumerator
	DwarfTagFileType               DwarfTag = 0x0029 // DW_TAG_file_type
	DwarfTagFriend                 DwarfTag = 0x002A // DW_TAG_friend
	DwarfTagNamelist               DwarfTag = 0x002B // DW_TAG_namelist
	DwarfTagNamelistItem           DwarfTag = 0x002C // DW_TAG_namelist_item
	DwarfTagPackedType             DwarfTag = 0x002D // DW_TAG_packed_type
	DwarfTagSubprogram             DwarfTag = 0x002E // DW_TAG_subprogram
	DwarfTagTemplateTypeParameter  DwarfTag = 0x002F // DW_TAG_template_type_parameter
	DwarfTagTemplateValueParameter DwarfTag = 0x0030 // DW_TAG_template_value_parameter
	DwarfTagThrownType             DwarfTag = 0x0031 // DW_TAG_thrown_type
	DwarfTagTryBlock               DwarfTag = 0x0032 // DW_TAG_try_block
	DwarfTagVariantPart            DwarfTag = 0x0033 // DW_TAG_variant_part
	DwarfTagVariable               DwarfTag = 0x0034 // DW_TAG_variable
	DwarfTagVolatileType           DwarfTag = 0x0035 // DW_TAG_volatile_type
	// DWARF v3.
	DwarfTagDwarfProcedure  DwarfTag = 0x0036 // DW_TAG_dwarf_procedure
	DwarfTagRestrictType    DwarfTag = 0x0037 // DW_TAG_restrict_type
	DwarfTagInterfaceType   DwarfTag = 0x0038 // DW_TAG_interface_type
	DwarfTagNamespace       DwarfTag = 0x0039 // DW_TAG_namespace
	DwarfTagImportedModule  DwarfTag = 0x003A // DW_TAG_imported_module
	DwarfTagUnspecifiedType DwarfTag = 0x003B // DW_TAG_unspecified_type
	DwarfTagPartialUnit     DwarfTag = 0x003C // DW_TAG_partial_unit
	DwarfTagImportedUnit    DwarfTag = 0x003D // DW_TAG_imported_unit
	DwarfTagCondition       DwarfTag = 0x003F // DW_TAG_condition
	DwarfTagSharedType      DwarfTag = 0x0040 // DW_TAG_shared_type
	// DWARF v4.
	DwarfTagTypeUnit            DwarfTag = 0x0041 // DW_TAG_type_unit
	DwarfTagRvalueReferenceType DwarfTag = 0x0042 // DW_TAG_rvalue_reference_type
	DwarfTagTemplateAlias       DwarfTag = 0x0043 // DW_TAG_template_alias
	// DWARF v5.
	DwarfTagCoarrayType       DwarfTag = 0x0044 // DW_TAG_coarray_type
	DwarfTagGenericSubrange   DwarfTag = 0x0045 // DW_TAG_generic_subrange
	DwarfTagDynamicType       DwarfTag = 0x0046 // DW_TAG_dynamic_type
	DwarfTagAtomicType        DwarfTag = 0x0047 // DW_TAG_atomic_type
	DwarfTagCallSite          DwarfTag = 0x0048 // DW_TAG_call_site
	DwarfTagCallSiteParameter DwarfTag = 0x0049 // DW_TAG_call_site_parameter
	DwarfTagSkeletonUnit      DwarfTag = 0x004A // DW_TAG_skeleton_unit
	DwarfTagImmutableType     DwarfTag = 0x004B // DW_TAG_immutable_type
	// Vendor extensions.
	DwarfTagMIPSLoop                  DwarfTag = 0x4081 // DW_TAG_MIPS_loop
	DwarfTagFormatLabel               DwarfTag = 0x4101 // DW_TAG_format_label
	DwarfTagFunctionTemplate          DwarfTag = 0x4102 // DW_TAG_function_template
	DwarfTagClassTemplate             DwarfTag = 0x4103 // DW_TAG_class_template
	DwarfTagGNUTemplateTemplateParam  DwarfTag = 0x4106 // DW_TAG_GNU_template_template_param
	DwarfTagGNUTemplateParameterPack  DwarfTag = 0x4107 // DW_TAG_GNU_template_parameter_pack
	DwarfTagGNUFormalParameterPack    DwarfTag = 0x4108 // DW_TAG_GNU_formal_parameter_pack
	DwarfTagGNUCallSite               DwarfTag = 0x4109 // DW_TAG_GNU_call_site
	DwarfTagGNUCallSiteParameter      DwarfTag = 0x410A // DW_TAG_GNU_call_site_parameter
	DwarfTagAPPLEProperty             DwarfTag = 0x4200 // DW_TAG_APPLE_property
	DwarfTagBORLANDProperty           DwarfTag = 0xB000 // DW_TAG_BORLAND_property
	DwarfTagBORLANDDelphiString       DwarfTag = 0xB001 // DW_TAG_BORLAND_Delphi_string
	DwarfTagBORLANDDelphiDynamicArray DwarfTag = 0xB002 // DW_TAG_BORLAND_Delphi_dynamic_array
	DwarfTagBORLANDDelphiSet          DwarfTag = 0xB003 // DW_TAG_BORLAND_Delphi_set
	DwarfTagBORLANDDelphiVariant      DwarfTag = 0xB004 // DW_TAG_BORLAND_Delphi_variant
)

//go:generate stringer -linecomment -type DwarfAttEncoding

// DwarfAttEncoding is a DWARF attribute type encoding.
type DwarfAttEncoding int64

// DWARF attribute type encodings.
//
// From include/llvm/BinaryFormat/Dwarf.def
const (
	// DWARF v2.
	DwarfAttEncodingAddress      DwarfAttEncoding = 0x01 // DW_ATE_address
	DwarfAttEncodingBoolean      DwarfAttEncoding = 0x02 // DW_ATE_boolean
	DwarfAttEncodingComplexFloat DwarfAttEncoding = 0x03 // DW_ATE_complex_float
	DwarfAttEncodingFloat        DwarfAttEncoding = 0x04 // DW_ATE_float
	DwarfAttEncodingSigned       DwarfAttEncoding = 0x05 // DW_ATE_signed
	DwarfAttEncodingSignedChar   DwarfAttEncoding = 0x06 // DW_ATE_signed_char
	DwarfAttEncodingUnsigned     DwarfAttEncoding = 0x07 // DW_ATE_unsigned
	DwarfAttEncodingUnsignedChar DwarfAttEncoding = 0x08 // DW_ATE_unsigned_char
	// DWARF v3.
	DwarfAttEncodingImaginaryFloat DwarfAttEncoding = 0x09 // DW_ATE_imaginary_float
	DwarfAttEncodingPackedDecimal  DwarfAttEncoding = 0x0A // DW_ATE_packed_decimal
	DwarfAttEncodingNumericString  DwarfAttEncoding = 0x0B // DW_ATE_numeric_string
	DwarfAttEncodingEdited         DwarfAttEncoding = 0x0C // DW_ATE_edited
	DwarfAttEncodingSignedFixed    DwarfAttEncoding = 0x0D // DW_ATE_signed_fixed
	DwarfAttEncodingUnsignedFixed  DwarfAttEncoding = 0x0E // DW_ATE_unsigned_fixed
	DwarfAttEncodingDecimalFloat   DwarfAttEncoding = 0x0F // DW_ATE_decimal_float
	// DWARF v4.
	DwarfAttEncodingUTF DwarfAttEncoding = 0x10 // DW_ATE_UTF
	// DWARF v5.
	DwarfAttEncodingUCS   DwarfAttEncoding = 0x11 // DW_ATE_UCS
	DwarfAttEncodingASCII DwarfAttEncoding = 0x12 // DW_ATE_ASCII
)

//go:generate stringer -type DIFlag

// DIFlag is a debug info flag.
type DIFlag int64

// Debug info flags.
//
// From include/llvm-c/DebugInfo.h
const (
	DIFlagZero                DIFlag = 0
	DIFlagPrivate             DIFlag = 1
	DIFlagProtected           DIFlag = 2
	DIFlagPublic              DIFlag = 3
	DIFlagFwdDecl             DIFlag = 1 << 2
	DIFlagAppleBlock          DIFlag = 1 << 3
	DIFlagBlockByrefStruct    DIFlag = 1 << 4
	DIFlagVirtual             DIFlag = 1 << 5
	DIFlagArtificial          DIFlag = 1 << 6
	DIFlagExplicit            DIFlag = 1 << 7
	DIFlagPrototyped          DIFlag = 1 << 8
	DIFlagObjcClassComplete   DIFlag = 1 << 9
	DIFlagObjectPointer       DIFlag = 1 << 10
	DIFlagVector              DIFlag = 1 << 11
	DIFlagStaticMember        DIFlag = 1 << 12
	DIFlagLValueReference     DIFlag = 1 << 13
	DIFlagRValueReference     DIFlag = 1 << 14
	DIFlagReserved            DIFlag = 1 << 15
	DIFlagSingleInheritance   DIFlag = 1 << 16
	DIFlagMultipleInheritance DIFlag = 2 << 16
	DIFlagVirtualInheritance  DIFlag = 3 << 16
	DIFlagIntroducedVirtual   DIFlag = 1 << 18
	DIFlagBitField            DIFlag = 1 << 19
	DIFlagNoReturn            DIFlag = 1 << 20
	DIFlagMainSubprogram      DIFlag = 1 << 21
	DIFlagTypePassByValue     DIFlag = 1 << 22
	DIFlagTypePassByReference DIFlag = 1 << 23
	DIFlagIndirectVirtualBase DIFlag = DIFlagFwdDecl | DIFlagVirtual

	// Mask for accessibility.
	//
	//    DIFlagAccessibility DIFlag = DIFlagPrivate | DIFlagProtected | DIFlagPublic

	// Mask for inheritance.
	//
	//   DIFlagPtrToMemberRep      DIFlag = DIFlagSingleInheritance | DIFlagMultipleInheritance | DIFlagVirtualInheritance
)

//go:generate stringer -linecomment -type DwarfCC

// DwarfCC is a DWARF calling convention.
type DwarfCC int64

// DWARF calling conventions.
const (
	DwarfCCNormal  DwarfCC = 0x01 // DW_CC_normal
	DwarfCCProgram DwarfCC = 0x02 // DW_CC_program
	DwarfCCNoCall  DwarfCC = 0x03 // DW_CC_nocall
	// DWARF v5.
	DwarfCCPassByReference DwarfCC = 0x04 // DW_CC_pass_by_reference
	DwarfCCPassByValue     DwarfCC = 0x05 // DW_CC_pass_by_value
	// Vendor extensions.
	DwarfCCGNUBorlandFastcall_i386 DwarfCC = 0x41 // DW_CC_GNU_borland_fastcall_i386
	DwarfCCBORLANDSafecall         DwarfCC = 0xB0 // DW_CC_BORLAND_safecall
	DwarfCCBORLANDStdcall          DwarfCC = 0xB1 // DW_CC_BORLAND_stdcall
	DwarfCCBORLANDPascal           DwarfCC = 0xB2 // DW_CC_BORLAND_pascal
	DwarfCCBORLANDMSFastcall       DwarfCC = 0xB3 // DW_CC_BORLAND_msfastcall
	DwarfCCBORLANDMSReturn         DwarfCC = 0xB4 // DW_CC_BORLAND_msreturn
	DwarfCCBORLANDThiscall         DwarfCC = 0xB5 // DW_CC_BORLAND_thiscall
	DwarfCCBORLANDFastcall         DwarfCC = 0xB6 // DW_CC_BORLAND_fastcall
	DwarfCCLLVMVectorcall          DwarfCC = 0xC0 // DW_CC_LLVM_vectorcall
)

// IntOrMDField is an integer or metadata field.
type IntOrMDField interface {
	fmt.Stringer
	// isIntOrMDField ensures that only intergers and metadata fields can be
	// assigned to the ast.IntOrMDField interface.
	isIntOrMDField()
}

// ### [ Helper functions ] ####################################################

// isIntOrMDField ensures that only intergers and metadata fields can be
// assigned to the ast.IntOrMDField interface.
func (*IntConst) isIntOrMDField() {}

// MDField
func (*NullConst) isIntOrMDField() {}

// Metadata
func (*TypeValue) isIntOrMDField()  {}
func (*MDString) isIntOrMDField()   {}
func (*MDTuple) isIntOrMDField()    {}
func (*MetadataID) isIntOrMDField() {}

// SpecializedMDNode
func (*DICompileUnit) isIntOrMDField()              {}
func (*DIFile) isIntOrMDField()                     {}
func (*DIBasicType) isIntOrMDField()                {}
func (*DISubroutineType) isIntOrMDField()           {}
func (*DIDerivedType) isIntOrMDField()              {}
func (*DICompositeType) isIntOrMDField()            {}
func (*DISubrange) isIntOrMDField()                 {}
func (*DIEnumerator) isIntOrMDField()               {}
func (*DITemplateTypeParameter) isIntOrMDField()    {}
func (*DITemplateValueParameter) isIntOrMDField()   {}
func (*DIModule) isIntOrMDField()                   {}
func (*DINamespace) isIntOrMDField()                {}
func (*DIGlobalVariable) isIntOrMDField()           {}
func (*DISubprogram) isIntOrMDField()               {}
func (*DILexicalBlock) isIntOrMDField()             {}
func (*DILexicalBlockFile) isIntOrMDField()         {}
func (*DILocation) isIntOrMDField()                 {}
func (*DILocalVariable) isIntOrMDField()            {}
func (*DIExpression) isIntOrMDField()               {}
func (*DIGlobalVariableExpression) isIntOrMDField() {}
func (*DIObjCProperty) isIntOrMDField()             {}
func (*DIImportedEntity) isIntOrMDField()           {}
func (*DIMacro) isIntOrMDField()                    {}
func (*DIMacroFile) isIntOrMDField()                {}
func (*GenericDINode) isIntOrMDField()              {}

// Ensure that each integer and metadata field implements the ast.IntOrMDField
// interface.
var (
	_ IntOrMDField = (*IntConst)(nil)
	_ IntOrMDField = (*NullConst)(nil)
	_ IntOrMDField = (*TypeValue)(nil)
	_ IntOrMDField = (*MDString)(nil)
	_ IntOrMDField = (*MDTuple)(nil)
	_ IntOrMDField = (*MetadataID)(nil)
	_ IntOrMDField = (*DICompileUnit)(nil)
	_ IntOrMDField = (*DIFile)(nil)
	_ IntOrMDField = (*DIBasicType)(nil)
	_ IntOrMDField = (*DISubroutineType)(nil)
	_ IntOrMDField = (*DIDerivedType)(nil)
	_ IntOrMDField = (*DICompositeType)(nil)
	_ IntOrMDField = (*DISubrange)(nil)
	_ IntOrMDField = (*DIEnumerator)(nil)
	_ IntOrMDField = (*DITemplateTypeParameter)(nil)
	_ IntOrMDField = (*DITemplateValueParameter)(nil)
	_ IntOrMDField = (*DIModule)(nil)
	_ IntOrMDField = (*DINamespace)(nil)
	_ IntOrMDField = (*DIGlobalVariable)(nil)
	_ IntOrMDField = (*DISubprogram)(nil)
	_ IntOrMDField = (*DILexicalBlock)(nil)
	_ IntOrMDField = (*DILexicalBlockFile)(nil)
	_ IntOrMDField = (*DILocation)(nil)
	_ IntOrMDField = (*DILocalVariable)(nil)
	_ IntOrMDField = (*DIExpression)(nil)
	_ IntOrMDField = (*DIGlobalVariableExpression)(nil)
	_ IntOrMDField = (*DIObjCProperty)(nil)
	_ IntOrMDField = (*DIImportedEntity)(nil)
	_ IntOrMDField = (*DIMacro)(nil)
	_ IntOrMDField = (*DIMacroFile)(nil)
	_ IntOrMDField = (*GenericDINode)(nil)
)

//go:generate stringer -linecomment -type DwarfVirtuality

// DwarfVirtuality is a DWARF virtuality code.
type DwarfVirtuality int64

// DWARF virtuality codes.
const (
	DwarfVirtualityNone        DwarfVirtuality = 0x00 // DW_VIRTUALITY_none
	DwarfVirtualityVirtual     DwarfVirtuality = 0x01 // DW_VIRTUALITY_virtual
	DwarfVirtualityPureVirtual DwarfVirtuality = 0x02 // DW_VIRTUALITY_pure_virtual
)

//go:generate stringer -linecomment -type DwarfOp

// DwarfOp is a DWARF expression operator.
type DwarfOp int64

// DWARF expression operators.
//
// From include/llvm/BinaryFormat/Dwarf.def
const (
	// DWARF v2.
	DwarfOpAddr       DwarfOp = 0x03 // DW_OP_addr
	DwarfOpDeref      DwarfOp = 0x06 // DW_OP_deref
	DwarfOpConst1u    DwarfOp = 0x08 // DW_OP_const1u
	DwarfOpConst1s    DwarfOp = 0x09 // DW_OP_const1s
	DwarfOpConst2u    DwarfOp = 0x0A // DW_OP_const2u
	DwarfOpConst2s    DwarfOp = 0x0B // DW_OP_const2s
	DwarfOpConst4u    DwarfOp = 0x0C // DW_OP_const4u
	DwarfOpConst4s    DwarfOp = 0x0D // DW_OP_const4s
	DwarfOpConst8u    DwarfOp = 0x0E // DW_OP_const8u
	DwarfOpConst8s    DwarfOp = 0x0F // DW_OP_const8s
	DwarfOpConstu     DwarfOp = 0x10 // DW_OP_constu
	DwarfOpConsts     DwarfOp = 0x11 // DW_OP_consts
	DwarfOpDup        DwarfOp = 0x12 // DW_OP_dup
	DwarfOpDrop       DwarfOp = 0x13 // DW_OP_drop
	DwarfOpOver       DwarfOp = 0x14 // DW_OP_over
	DwarfOpPick       DwarfOp = 0x15 // DW_OP_pick
	DwarfOpSwap       DwarfOp = 0x16 // DW_OP_swap
	DwarfOpRot        DwarfOp = 0x17 // DW_OP_rot
	DwarfOpXderef     DwarfOp = 0x18 // DW_OP_xderef
	DwarfOpAbs        DwarfOp = 0x19 // DW_OP_abs
	DwarfOpAnd        DwarfOp = 0x1A // DW_OP_and
	DwarfOpDiv        DwarfOp = 0x1B // DW_OP_div
	DwarfOpMinus      DwarfOp = 0x1C // DW_OP_minus
	DwarfOpMod        DwarfOp = 0x1D // DW_OP_mod
	DwarfOpMul        DwarfOp = 0x1E // DW_OP_mul
	DwarfOpNeg        DwarfOp = 0x1F // DW_OP_neg
	DwarfOpNot        DwarfOp = 0x20 // DW_OP_not
	DwarfOpOr         DwarfOp = 0x21 // DW_OP_or
	DwarfOpPlus       DwarfOp = 0x22 // DW_OP_plus
	DwarfOpPlusUconst DwarfOp = 0x23 // DW_OP_plus_uconst
	DwarfOpShl        DwarfOp = 0x24 // DW_OP_shl
	DwarfOpShr        DwarfOp = 0x25 // DW_OP_shr
	DwarfOpShra       DwarfOp = 0x26 // DW_OP_shra
	DwarfOpXor        DwarfOp = 0x27 // DW_OP_xor
	DwarfOpBra        DwarfOp = 0x28 // DW_OP_bra
	DwarfOpEq         DwarfOp = 0x29 // DW_OP_eq
	DwarfOpGe         DwarfOp = 0x2A // DW_OP_ge
	DwarfOpGt         DwarfOp = 0x2B // DW_OP_gt
	DwarfOpLe         DwarfOp = 0x2C // DW_OP_le
	DwarfOpLt         DwarfOp = 0x2D // DW_OP_lt
	DwarfOpNe         DwarfOp = 0x2E // DW_OP_ne
	DwarfOpSkip       DwarfOp = 0x2F // DW_OP_skip
	DwarfOpLit0       DwarfOp = 0x30 // DW_OP_lit0
	DwarfOpLit1       DwarfOp = 0x31 // DW_OP_lit1
	DwarfOpLit2       DwarfOp = 0x32 // DW_OP_lit2
	DwarfOpLit3       DwarfOp = 0x33 // DW_OP_lit3
	DwarfOpLit4       DwarfOp = 0x34 // DW_OP_lit4
	DwarfOpLit5       DwarfOp = 0x35 // DW_OP_lit5
	DwarfOpLit6       DwarfOp = 0x36 // DW_OP_lit6
	DwarfOpLit7       DwarfOp = 0x37 // DW_OP_lit7
	DwarfOpLit8       DwarfOp = 0x38 // DW_OP_lit8
	DwarfOpLit9       DwarfOp = 0x39 // DW_OP_lit9
	DwarfOpLit10      DwarfOp = 0x3A // DW_OP_lit10
	DwarfOpLit11      DwarfOp = 0x3B // DW_OP_lit11
	DwarfOpLit12      DwarfOp = 0x3C // DW_OP_lit12
	DwarfOpLit13      DwarfOp = 0x3D // DW_OP_lit13
	DwarfOpLit14      DwarfOp = 0x3E // DW_OP_lit14
	DwarfOpLit15      DwarfOp = 0x3F // DW_OP_lit15
	DwarfOpLit16      DwarfOp = 0x40 // DW_OP_lit16
	DwarfOpLit17      DwarfOp = 0x41 // DW_OP_lit17
	DwarfOpLit18      DwarfOp = 0x42 // DW_OP_lit18
	DwarfOpLit19      DwarfOp = 0x43 // DW_OP_lit19
	DwarfOpLit20      DwarfOp = 0x44 // DW_OP_lit20
	DwarfOpLit21      DwarfOp = 0x45 // DW_OP_lit21
	DwarfOpLit22      DwarfOp = 0x46 // DW_OP_lit22
	DwarfOpLit23      DwarfOp = 0x47 // DW_OP_lit23
	DwarfOpLit24      DwarfOp = 0x48 // DW_OP_lit24
	DwarfOpLit25      DwarfOp = 0x49 // DW_OP_lit25
	DwarfOpLit26      DwarfOp = 0x4A // DW_OP_lit26
	DwarfOpLit27      DwarfOp = 0x4B // DW_OP_lit27
	DwarfOpLit28      DwarfOp = 0x4C // DW_OP_lit28
	DwarfOpLit29      DwarfOp = 0x4D // DW_OP_lit29
	DwarfOpLit30      DwarfOp = 0x4E // DW_OP_lit30
	DwarfOpLit31      DwarfOp = 0x4F // DW_OP_lit31
	DwarfOpReg0       DwarfOp = 0x50 // DW_OP_reg0
	DwarfOpReg1       DwarfOp = 0x51 // DW_OP_reg1
	DwarfOpReg2       DwarfOp = 0x52 // DW_OP_reg2
	DwarfOpReg3       DwarfOp = 0x53 // DW_OP_reg3
	DwarfOpReg4       DwarfOp = 0x54 // DW_OP_reg4
	DwarfOpReg5       DwarfOp = 0x55 // DW_OP_reg5
	DwarfOpReg6       DwarfOp = 0x56 // DW_OP_reg6
	DwarfOpReg7       DwarfOp = 0x57 // DW_OP_reg7
	DwarfOpReg8       DwarfOp = 0x58 // DW_OP_reg8
	DwarfOpReg9       DwarfOp = 0x59 // DW_OP_reg9
	DwarfOpReg10      DwarfOp = 0x5A // DW_OP_reg10
	DwarfOpReg11      DwarfOp = 0x5B // DW_OP_reg11
	DwarfOpReg12      DwarfOp = 0x5C // DW_OP_reg12
	DwarfOpReg13      DwarfOp = 0x5D // DW_OP_reg13
	DwarfOpReg14      DwarfOp = 0x5E // DW_OP_reg14
	DwarfOpReg15      DwarfOp = 0x5F // DW_OP_reg15
	DwarfOpReg16      DwarfOp = 0x60 // DW_OP_reg16
	DwarfOpReg17      DwarfOp = 0x61 // DW_OP_reg17
	DwarfOpReg18      DwarfOp = 0x62 // DW_OP_reg18
	DwarfOpReg19      DwarfOp = 0x63 // DW_OP_reg19
	DwarfOpReg20      DwarfOp = 0x64 // DW_OP_reg20
	DwarfOpReg21      DwarfOp = 0x65 // DW_OP_reg21
	DwarfOpReg22      DwarfOp = 0x66 // DW_OP_reg22
	DwarfOpReg23      DwarfOp = 0x67 // DW_OP_reg23
	DwarfOpReg24      DwarfOp = 0x68 // DW_OP_reg24
	DwarfOpReg25      DwarfOp = 0x69 // DW_OP_reg25
	DwarfOpReg26      DwarfOp = 0x6A // DW_OP_reg26
	DwarfOpReg27      DwarfOp = 0x6B // DW_OP_reg27
	DwarfOpReg28      DwarfOp = 0x6C // DW_OP_reg28
	DwarfOpReg29      DwarfOp = 0x6D // DW_OP_reg29
	DwarfOpReg30      DwarfOp = 0x6E // DW_OP_reg30
	DwarfOpReg31      DwarfOp = 0x6F // DW_OP_reg31
	DwarfOpBreg0      DwarfOp = 0x70 // DW_OP_breg0
	DwarfOpBreg1      DwarfOp = 0x71 // DW_OP_breg1
	DwarfOpBreg2      DwarfOp = 0x72 // DW_OP_breg2
	DwarfOpBreg3      DwarfOp = 0x73 // DW_OP_breg3
	DwarfOpBreg4      DwarfOp = 0x74 // DW_OP_breg4
	DwarfOpBreg5      DwarfOp = 0x75 // DW_OP_breg5
	DwarfOpBreg6      DwarfOp = 0x76 // DW_OP_breg6
	DwarfOpBreg7      DwarfOp = 0x77 // DW_OP_breg7
	DwarfOpBreg8      DwarfOp = 0x78 // DW_OP_breg8
	DwarfOpBreg9      DwarfOp = 0x79 // DW_OP_breg9
	DwarfOpBreg10     DwarfOp = 0x7A // DW_OP_breg10
	DwarfOpBreg11     DwarfOp = 0x7B // DW_OP_breg11
	DwarfOpBreg12     DwarfOp = 0x7C // DW_OP_breg12
	DwarfOpBreg13     DwarfOp = 0x7D // DW_OP_breg13
	DwarfOpBreg14     DwarfOp = 0x7E // DW_OP_breg14
	DwarfOpBreg15     DwarfOp = 0x7F // DW_OP_breg15
	DwarfOpBreg16     DwarfOp = 0x80 // DW_OP_breg16
	DwarfOpBreg17     DwarfOp = 0x81 // DW_OP_breg17
	DwarfOpBreg18     DwarfOp = 0x82 // DW_OP_breg18
	DwarfOpBreg19     DwarfOp = 0x83 // DW_OP_breg19
	DwarfOpBreg20     DwarfOp = 0x84 // DW_OP_breg20
	DwarfOpBreg21     DwarfOp = 0x85 // DW_OP_breg21
	DwarfOpBreg22     DwarfOp = 0x86 // DW_OP_breg22
	DwarfOpBreg23     DwarfOp = 0x87 // DW_OP_breg23
	DwarfOpBreg24     DwarfOp = 0x88 // DW_OP_breg24
	DwarfOpBreg25     DwarfOp = 0x89 // DW_OP_breg25
	DwarfOpBreg26     DwarfOp = 0x8A // DW_OP_breg26
	DwarfOpBreg27     DwarfOp = 0x8B // DW_OP_breg27
	DwarfOpBreg28     DwarfOp = 0x8C // DW_OP_breg28
	DwarfOpBreg29     DwarfOp = 0x8D // DW_OP_breg29
	DwarfOpBreg30     DwarfOp = 0x8E // DW_OP_breg30
	DwarfOpBreg31     DwarfOp = 0x8F // DW_OP_breg31
	DwarfOpRegx       DwarfOp = 0x90 // DW_OP_regx
	DwarfOpFbreg      DwarfOp = 0x91 // DW_OP_fbreg
	DwarfOpBregx      DwarfOp = 0x92 // DW_OP_bregx
	DwarfOpPiece      DwarfOp = 0x93 // DW_OP_piece
	DwarfOpDerefSize  DwarfOp = 0x94 // DW_OP_deref_size
	DwarfOpXderefSize DwarfOp = 0x95 // DW_OP_xderef_size
	DwarfOpNop        DwarfOp = 0x96 // DW_OP_nop
	// DWARF v3.
	DwarfOpPushObjectAddress DwarfOp = 0x97 // DW_OP_push_object_address
	DwarfOpCall2             DwarfOp = 0x98 // DW_OP_call2
	DwarfOpCall4             DwarfOp = 0x99 // DW_OP_call4
	DwarfOpCallRef           DwarfOp = 0x9A // DW_OP_call_ref
	DwarfOpFormTLSAddress    DwarfOp = 0x9B // DW_OP_form_tls_address
	DwarfOpCallFrameCFA      DwarfOp = 0x9C // DW_OP_call_frame_cfa
	DwarfOpBitPiece          DwarfOp = 0x9D // DW_OP_bit_piece
	// DWARF v4.
	DwarfOpImplicitValue DwarfOp = 0x9E // DW_OP_implicit_value
	DwarfOpStackValue    DwarfOp = 0x9F // DW_OP_stack_value
	// DWARF v5.
	DwarfOpImplicitPointer DwarfOp = 0xA0 // DW_OP_implicit_pointer
	DwarfOpAddrx           DwarfOp = 0xA1 // DW_OP_addrx
	DwarfOpConstx          DwarfOp = 0xA2 // DW_OP_constx
	DwarfOpEntryValue      DwarfOp = 0xA3 // DW_OP_entry_value
	DwarfOpConstType       DwarfOp = 0xA4 // DW_OP_const_type
	DwarfOpRegvalType      DwarfOp = 0xA5 // DW_OP_regval_type
	DwarfOpDerefType       DwarfOp = 0xA6 // DW_OP_deref_type
	DwarfOpXderefType      DwarfOp = 0xA7 // DW_OP_xderef_type
	DwarfOpConvert         DwarfOp = 0xA8 // DW_OP_convert
	DwarfOpReinterpret     DwarfOp = 0xA9 // DW_OP_reinterpret
	// Vendor extensions.
	DwarfOpGNUPushTLSAddress DwarfOp = 0xE0 // DW_OP_GNU_push_tls_address
	DwarfOpGNUAddrIndex      DwarfOp = 0xFB // DW_OP_GNU_addr_index
	DwarfOpGNUConstIndex     DwarfOp = 0xFC // DW_OP_GNU_const_index
	// Only used in LLVM metadata.
	DwarfOpLLVMFragment DwarfOp = 0x1000 // DW_OP_LLVM_fragment
)

//go:generate stringer -linecomment -type DwarfMacinfo

// DwarfMacinfo is a macinfo type encoding.
type DwarfMacinfo int64

// Macinfo type encodings.
//
// From llvm/BinaryFormat/Dwarf.h
const (
	DwarfMacinfoDefine    DwarfMacinfo = 0x01 // DW_MACINFO_define
	DwarfMacinfoUndef     DwarfMacinfo = 0x02 // DW_MACINFO_undef
	DwarfMacinfoStartFile DwarfMacinfo = 0x03 // DW_MACINFO_start_file
	DwarfMacinfoEndFile   DwarfMacinfo = 0x04 // DW_MACINFO_end_file
	DwarfMacinfoVendorExt DwarfMacinfo = 0xFF // DW_MACINFO_vendor_ext
)

// flagsString returns the string representation of the given debug information
// flags.
func flagsString(flags []DIFlag) string {
	var ss []string
	for _, flag := range flags {
		ss = append(ss, flag.String())
	}
	return strings.Join(ss, " | ")
}
