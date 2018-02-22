package ast

import "fmt"

// === [ Metadata Nodes and Metadata Strings ] =================================

// --- [ Metadata Tuple ] ------------------------------------------------------

type MDTuple struct {
	Fields []MDField
}

type MDField interface {
	isMDField()
}

type MDNull struct{}

func (MDNull) isMDField() {}

// Metadata
func (MDTypeValue) isMDField() {}
func (MDString) isMDField()    {}
func (MDTuple) isMDField()     {}
func (MetadataID) isMDField()  {}

// SpecializedMDNode
func (DICompileUnit) isMDField()              {}
func (DIFile) isMDField()                     {}
func (DIBasicType) isMDField()                {}
func (DISubroutineType) isMDField()           {}
func (DIDerivedType) isMDField()              {}
func (DICompositeType) isMDField()            {}
func (DISubrange) isMDField()                 {}
func (DIEnumerator) isMDField()               {}
func (DITemplateTypeParameter) isMDField()    {}
func (DITemplateValueParameter) isMDField()   {}
func (DIModule) isMDField()                   {}
func (DINamespace) isMDField()                {}
func (DIGlobalVariable) isMDField()           {}
func (DISubprogram) isMDField()               {}
func (DILexicalBlock) isMDField()             {}
func (DILexicalBlockFile) isMDField()         {}
func (DILocation) isMDField()                 {}
func (DILocalVariable) isMDField()            {}
func (DIExpression) isMDField()               {}
func (DIGlobalVariableExpression) isMDField() {}
func (DIObjCProperty) isMDField()             {}
func (DIImportedEntity) isMDField()           {}
func (DIMacro) isMDField()                    {}
func (DIMacroFile) isMDField()                {}
func (GenericDINode) isMDField()              {}

// --- [ Metadata ] ------------------------------------------------------------

type Metadata interface {
	isMetadata()
}

type MDTypeValue struct {
	Type  Type
	Value Value
}

func (MDTypeValue) isMetadata() {}
func (MDString) isMetadata()    {}
func (MDTuple) isMetadata()     {}
func (MetadataID) isMetadata()  {}

// SpecializedMDNode
func (DICompileUnit) isMetadata()              {}
func (DIFile) isMetadata()                     {}
func (DIBasicType) isMetadata()                {}
func (DISubroutineType) isMetadata()           {}
func (DIDerivedType) isMetadata()              {}
func (DICompositeType) isMetadata()            {}
func (DISubrange) isMetadata()                 {}
func (DIEnumerator) isMetadata()               {}
func (DITemplateTypeParameter) isMetadata()    {}
func (DITemplateValueParameter) isMetadata()   {}
func (DIModule) isMetadata()                   {}
func (DINamespace) isMetadata()                {}
func (DIGlobalVariable) isMetadata()           {}
func (DISubprogram) isMetadata()               {}
func (DILexicalBlock) isMetadata()             {}
func (DILexicalBlockFile) isMetadata()         {}
func (DILocation) isMetadata()                 {}
func (DILocalVariable) isMetadata()            {}
func (DIExpression) isMetadata()               {}
func (DIGlobalVariableExpression) isMetadata() {}
func (DIObjCProperty) isMetadata()             {}
func (DIImportedEntity) isMetadata()           {}
func (DIMacro) isMetadata()                    {}
func (DIMacroFile) isMetadata()                {}
func (GenericDINode) isMetadata()              {}

// --- [ Metadata String ] -----------------------------------------------------

type MDString string

// --- [ Metadata Attachment ] -------------------------------------------------

type MetadataAttachment struct {
	Name   MetadataName
	MDNode MDNode
}

func (m MetadataAttachment) String() string {
	// !dbg !42
	return fmt.Sprintf("%s %s", m.Name, m.MDNode)
}

// --- [ Metadata Node ] -------------------------------------------------------

type MDNode interface {
	fmt.Stringer
	isMDNode()
}

func (MDTuple) isMDNode()    {}
func (MetadataID) isMDNode() {}

// SpecializedMDNode
func (DICompileUnit) isMDNode()              {}
func (DIFile) isMDNode()                     {}
func (DIBasicType) isMDNode()                {}
func (DISubroutineType) isMDNode()           {}
func (DIDerivedType) isMDNode()              {}
func (DICompositeType) isMDNode()            {}
func (DISubrange) isMDNode()                 {}
func (DIEnumerator) isMDNode()               {}
func (DITemplateTypeParameter) isMDNode()    {}
func (DITemplateValueParameter) isMDNode()   {}
func (DIModule) isMDNode()                   {}
func (DINamespace) isMDNode()                {}
func (DIGlobalVariable) isMDNode()           {}
func (DISubprogram) isMDNode()               {}
func (DILexicalBlock) isMDNode()             {}
func (DILexicalBlockFile) isMDNode()         {}
func (DILocation) isMDNode()                 {}
func (DILocalVariable) isMDNode()            {}
func (DIExpression) isMDNode()               {}
func (DIGlobalVariableExpression) isMDNode() {}
func (DIObjCProperty) isMDNode()             {}
func (DIImportedEntity) isMDNode()           {}
func (DIMacro) isMDNode()                    {}
func (DIMacroFile) isMDNode()                {}
func (GenericDINode) isMDNode()              {}

// --- [ Specialized Metadata Nodes ] ------------------------------------------

type SpecializedMDNode interface {
	isSpecializedMDNode()
}

// ~~~ [ DICompileUnit ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

type DICompileUnit struct {
	Language              DwarfLang
	File                  MDField
	Producer              MDStringField
	IsOptimized           MDBoolField
	Flags                 MDStringField
	RuntimeVersion        MDUnsignedField
	SplitDebugFilename    MDStringField
	EmissionKind          EmissionKindField
	Enums                 MDField
	RetainedTypes         MDField
	Globals               MDField
	Imports               MDField
	Macros                MDField
	DwoId                 MDUnsignedField
	SplitDebugInlining    MDBoolField
	DebugInfoForProfiling MDBoolField
	GnuPubnames           MDBoolField
}

// ~~~ [ DIFile ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

type DIFile struct {
	Filename     MDStringField
	Directory    MDStringField
	Checksumkind ChecksumKindField
	Checksum     MDStringField
}

// ~~~ [ DIBasicType ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

type DIBasicType struct {
	Tag      DwarfTagField
	Name     MDStringField
	Size     MDUnsignedField
	Align    MDUnsignedField
	Encoding DwarfAttEncodingField
}

// ~~~ [ DISubroutineType ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

type DISubroutineType struct {
	Flags DIFlagField
	CC    DwarfCCField
	Types MDField
}

// ~~~ [ DIDerivedType ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

type DIDerivedType struct {
	Tag               DwarfTagField
	Name              MDStringField
	File              MDField
	Line              LineField
	Scope             MDField
	BaseType          MDField
	Size              MDUnsignedField
	Align             MDUnsignedField
	Offset            MDUnsignedField
	Flags             DIFlagField
	ExtraData         MDField
	DwarfAddressSpace MDUnsignedField
}

// ~~~ [ DICompositeType ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

type DICompositeType struct {
	Tag            DwarfTagField
	Name           MDStringField
	File           MDField
	Line           LineField
	Scope          MDField
	BaseType       MDField
	Size           MDUnsignedField
	Align          MDUnsignedField
	Offset         MDUnsignedField
	Flags          DIFlagField
	Elements       MDField
	RuntimeLang    DwarfLang
	VtableHolder   MDField
	TemplateParams MDField
	Identifier     MDStringField
	Discriminator  MDField
}

// ~~~ [ DISubrange ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

type DISubrange struct {
	Count      MDSignedOrMDField
	LowerBound MDSignedField
}

// ~~~ [ DIEnumerator ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

type DIEnumerator struct {
	Name       MDStringField
	Value      MDSignedOrUnsignedField
	IsUnsigned MDBoolField
}

// ~~~ [ DITemplateTypeParameter ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

type DITemplateTypeParameter struct {
	Name MDStringField
	Type MDField
}

// ~~~ [ DITemplateValueParameter ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

type DITemplateValueParameter struct {
	Tag   DwarfTagField
	Name  MDStringField
	Type  MDField
	Value MDField
}

// ~~~ [ DIModule ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

type DIModule struct {
	Scope        MDField
	Name         MDStringField
	ConfigMacros MDStringField
	IncludePath  MDStringField
	Isysroot     MDStringField
}

// ~~~ [ DINamespace ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

type DINamespace struct {
	Scope         MDField
	Name          MDStringField
	ExportSymbols MDBoolField
}

// ~~~ [ DIGlobalVariable ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

type DIGlobalVariable struct {
	Name         MDStringField
	Scope        MDField
	LinkageName  MDStringField
	File         MDField
	Line         LineField
	Type         MDField
	IsLocal      MDBoolField
	IsDefinition MDBoolField
	Declaration  MDField
	Align        MDUnsignedField
}

// ~~~ [ DISubprogram ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

type DISubprogram struct {
	Scope          MDField
	Name           MDStringField
	LinkageName    MDStringField
	File           MDField
	Line           LineField
	Type           MDField
	IsLocal        MDBoolField
	IsDefinition   MDBoolField
	ScopeLine      LineField
	ContainingType MDField
	Virtuality     DwarfVirtualityField
	VirtualIndex   MDUnsignedField
	ThisAdjustment MDSignedField
	Flags          DIFlagField
	IsOptimized    MDBoolField
	Unit           MDField
	TemplateParams MDField
	Declaration    MDField
	Variables      MDField
	ThrownTypes    MDField
}

// ~~~ [ DILexicalBlock ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

type DILexicalBlock struct {
	Scope  MDField
	File   MDField
	Line   LineField
	Column ColumnField
}

// ~~~ [ DILexicalBlockFile ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

type DILexicalBlockFile struct {
	Scope         MDField
	File          MDField
	Discriminator MDUnsignedField
}

// ~~~ [ DILocation ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

type DILocation struct {
	Line      LineField
	Column    ColumnField
	Scope     MDField
	InlinedAt MDField
}

// ~~~ [ DILocalVariable ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

type DILocalVariable struct {
	Scope MDField
	Name  MDStringField
	Arg   MDUnsignedField
	File  MDField
	Line  LineField
	Type  MDField
	Flags DIFlagField
	Align MDUnsignedField
}

// ~~~ [ DIExpression ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

type DIExpression struct {
	Fields []DIExpressionField
}

type DIExpressionField interface {
	isDIExpressionField()
}

func (IntLit) isDIExpressionField()  {}
func (DwarfOp) isDIExpressionField() {}

// ~~~ [ DIGlobalVariableExpression ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

type DIGlobalVariableExpression struct {
	Var  MDField
	Expr MDField
}

// ~~~ [ DIObjCProperty ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

type DIObjCProperty struct {
	Name       MDStringField
	File       MDField
	Line       LineField
	Setter     MDStringField
	Getter     MDStringField
	Attributes MDUnsignedField
	Type       MDField
}

// ~~~ [ DIImportedEntity ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

type DIImportedEntity struct {
	Tag    DwarfTagField
	Scope  MDField
	Entity MDField
	File   MDField
	Line   LineField
	Name   MDStringField
}

// ~~~ [ DIMacro ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

type DIMacro struct {
	Type  DwarfMacinfoTypeField
	Line  LineField
	Name  MDStringField
	Value MDStringField
}

// ~~~ [ DIMacroFile ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

type DIMacroFile struct {
	Type  DwarfMacinfoTypeField
	Line  LineField
	File  MDField
	Nodes MDField
}

// ~~~ [ GenericDINode ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

type GenericDINode struct {
	Tag      DwarfTagField
	Header   MDStringField
	Operands []MDField
}

func (DICompileUnit) isSpecializedMDNode()              {}
func (DIFile) isSpecializedMDNode()                     {}
func (DIBasicType) isSpecializedMDNode()                {}
func (DISubroutineType) isSpecializedMDNode()           {}
func (DIDerivedType) isSpecializedMDNode()              {}
func (DICompositeType) isSpecializedMDNode()            {}
func (DISubrange) isSpecializedMDNode()                 {}
func (DIEnumerator) isSpecializedMDNode()               {}
func (DITemplateTypeParameter) isSpecializedMDNode()    {}
func (DITemplateValueParameter) isSpecializedMDNode()   {}
func (DIModule) isSpecializedMDNode()                   {}
func (DINamespace) isSpecializedMDNode()                {}
func (DIGlobalVariable) isSpecializedMDNode()           {}
func (DISubprogram) isSpecializedMDNode()               {}
func (DILexicalBlock) isSpecializedMDNode()             {}
func (DILexicalBlockFile) isSpecializedMDNode()         {}
func (DILocation) isSpecializedMDNode()                 {}
func (DILocalVariable) isSpecializedMDNode()            {}
func (DIExpression) isSpecializedMDNode()               {}
func (DIGlobalVariableExpression) isSpecializedMDNode() {}
func (DIObjCProperty) isSpecializedMDNode()             {}
func (DIImportedEntity) isSpecializedMDNode()           {}
func (DIMacro) isSpecializedMDNode()                    {}
func (DIMacroFile) isSpecializedMDNode()                {}
func (GenericDINode) isSpecializedMDNode()              {}

// ___ [ Helpers ] _____________________________________________________________

type DwarfLang int64

// TODO: Define DwarfLang enum.

//go:generate stringer -linecomment -type EmissionKind

type EmissionKind int64

// TODO: Set proper value for emission kind (not iota).

const (
	EmissionKindNoDebug        EmissionKind = iota // NoDebug
	EmissionKindFullDebug                          // FullDebug
	EmissionKindLineTablesOnly                     // LineTablesOnly
)

type ChecksumKind int64

// TODO: Define ChecksumKind enum.

type DwarfTag int64

// TODO: Define DwarfTag enum.

type DwarfAttEncoding int64

// TODO: Define DwarfAttEncoding enum.

type DIFlag int64

// TODO: Define DIFlag enum.

type DwarfCC int64

// TODO: Define DwarfCC enum.

type IntLitOrMDField interface {
	isIntLitOrMDField()
}

func (IntLit) isIntLitOrMDField() {}

// MDField
func (MDNull) isIntLitOrMDField() {}

// Metadata
func (MDTypeValue) isIntLitOrMDField() {}
func (MDString) isIntLitOrMDField()    {}
func (MDTuple) isIntLitOrMDField()     {}
func (MetadataID) isIntLitOrMDField()  {}

// SpecializedMDNode
func (DICompileUnit) isIntLitOrMDField()              {}
func (DIFile) isIntLitOrMDField()                     {}
func (DIBasicType) isIntLitOrMDField()                {}
func (DISubroutineType) isIntLitOrMDField()           {}
func (DIDerivedType) isIntLitOrMDField()              {}
func (DICompositeType) isIntLitOrMDField()            {}
func (DISubrange) isIntLitOrMDField()                 {}
func (DIEnumerator) isIntLitOrMDField()               {}
func (DITemplateTypeParameter) isIntLitOrMDField()    {}
func (DITemplateValueParameter) isIntLitOrMDField()   {}
func (DIModule) isIntLitOrMDField()                   {}
func (DINamespace) isIntLitOrMDField()                {}
func (DIGlobalVariable) isIntLitOrMDField()           {}
func (DISubprogram) isIntLitOrMDField()               {}
func (DILexicalBlock) isIntLitOrMDField()             {}
func (DILexicalBlockFile) isIntLitOrMDField()         {}
func (DILocation) isIntLitOrMDField()                 {}
func (DILocalVariable) isIntLitOrMDField()            {}
func (DIExpression) isIntLitOrMDField()               {}
func (DIGlobalVariableExpression) isIntLitOrMDField() {}
func (DIObjCProperty) isIntLitOrMDField()             {}
func (DIImportedEntity) isIntLitOrMDField()           {}
func (DIMacro) isIntLitOrMDField()                    {}
func (DIMacroFile) isIntLitOrMDField()                {}
func (GenericDINode) isIntLitOrMDField()              {}

type DwarfVirtuality int64

// TODO: Define DwarfVirtuality enum.

type DwarfOp int64

// TODO: Define DwarfOp enum.

type DwarfMacinfo int64

// TODO: Define DwarfMacinfo enum.
