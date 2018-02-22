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
	Producer              string
	IsOptimized           bool
	Flags                 string
	RuntimeVersion        int64
	SplitDebugFilename    string
	EmissionKind          EmissionKind
	Enums                 MDField
	RetainedTypes         MDField
	Globals               MDField
	Imports               MDField
	Macros                MDField
	DwoId                 int64
	SplitDebugInlining    bool
	DebugInfoForProfiling bool
	GnuPubnames           bool
}

// ~~~ [ DIFile ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

type DIFile struct {
	Filename     string
	Directory    string
	Checksumkind ChecksumKind
	Checksum     string
}

// ~~~ [ DIBasicType ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

type DIBasicType struct {
	Tag      DwarfTag
	Name     string
	Size     int64
	Align    int64
	Encoding DwarfAttEncoding
}

// ~~~ [ DISubroutineType ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

type DISubroutineType struct {
	Flags []DIFlag
	CC    DwarfCC
	Types MDField
}

// ~~~ [ DIDerivedType ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

type DIDerivedType struct {
	Tag               DwarfTag
	Name              string
	File              MDField
	Line              int64
	Scope             MDField
	BaseType          MDField
	Size              int64
	Align             int64
	Offset            int64
	Flags             []DIFlag
	ExtraData         MDField
	DwarfAddressSpace int64
}

// ~~~ [ DICompositeType ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

type DICompositeType struct {
	Tag            DwarfTag
	Name           string
	File           MDField
	Line           int64
	Scope          MDField
	BaseType       MDField
	Size           int64
	Align          int64
	Offset         int64
	Flags          []DIFlag
	Elements       MDField
	RuntimeLang    DwarfLang
	VtableHolder   MDField
	TemplateParams MDField
	Identifier     string
	Discriminator  MDField
}

// ~~~ [ DISubrange ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

type DISubrange struct {
	Count      IntOrMDField
	LowerBound int64
}

// ~~~ [ DIEnumerator ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

type DIEnumerator struct {
	Name       string
	Value      int64
	IsUnsigned bool
}

// ~~~ [ DITemplateTypeParameter ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

type DITemplateTypeParameter struct {
	Name string
	Type MDField
}

// ~~~ [ DITemplateValueParameter ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

type DITemplateValueParameter struct {
	Tag   DwarfTag
	Name  string
	Type  MDField
	Value MDField
}

// ~~~ [ DIModule ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

type DIModule struct {
	Scope        MDField
	Name         string
	ConfigMacros string
	IncludePath  string
	Isysroot     string
}

// ~~~ [ DINamespace ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

type DINamespace struct {
	Scope         MDField
	Name          string
	ExportSymbols bool
}

// ~~~ [ DIGlobalVariable ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

type DIGlobalVariable struct {
	Name         string
	Scope        MDField
	LinkageName  string
	File         MDField
	Line         int64
	Type         MDField
	IsLocal      bool
	IsDefinition bool
	Declaration  MDField
	Align        int64
}

// ~~~ [ DISubprogram ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

type DISubprogram struct {
	Scope          MDField
	Name           string
	LinkageName    string
	File           MDField
	Line           int64
	Type           MDField
	IsLocal        bool
	IsDefinition   bool
	ScopeLine      int64
	ContainingType MDField
	Virtuality     DwarfVirtuality
	VirtualIndex   int64
	ThisAdjustment int64
	Flags          []DIFlag
	IsOptimized    bool
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
	Line   int64
	Column int64
}

// ~~~ [ DILexicalBlockFile ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

type DILexicalBlockFile struct {
	Scope         MDField
	File          MDField
	Discriminator int64
}

// ~~~ [ DILocation ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

type DILocation struct {
	Line      int64
	Column    int64
	Scope     MDField
	InlinedAt MDField
}

// ~~~ [ DILocalVariable ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

type DILocalVariable struct {
	Scope MDField
	Name  string
	Arg   int64
	File  MDField
	Line  int64
	Type  MDField
	Flags []DIFlag
	Align int64
}

// ~~~ [ DIExpression ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

type DIExpression struct {
	Fields []DIExpressionField
}

type DIExpressionField interface {
	isDIExpressionField()
}

func (IntConst) isDIExpressionField() {}
func (DwarfOp) isDIExpressionField()  {}

// ~~~ [ DIGlobalVariableExpression ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

type DIGlobalVariableExpression struct {
	Var  MDField
	Expr MDField
}

// ~~~ [ DIObjCProperty ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

type DIObjCProperty struct {
	Name       string
	File       MDField
	Line       int64
	Setter     string
	Getter     string
	Attributes int64
	Type       MDField
}

// ~~~ [ DIImportedEntity ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

type DIImportedEntity struct {
	Tag    DwarfTag
	Scope  MDField
	Entity MDField
	File   MDField
	Line   int64
	Name   string
}

// ~~~ [ DIMacro ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

type DIMacro struct {
	Type  DwarfMacinfo
	Line  int64
	Name  string
	Value string
}

// ~~~ [ DIMacroFile ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

type DIMacroFile struct {
	Type  DwarfMacinfo
	Line  int64
	File  MDField
	Nodes MDField
}

// ~~~ [ GenericDINode ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

type GenericDINode struct {
	Tag      DwarfTag
	Header   string
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

type IntOrMDField interface {
	isIntOrMDField()
}

func (IntConst) isIntOrMDField() {}

// MDField
func (MDNull) isIntOrMDField() {}

// Metadata
func (MDTypeValue) isIntOrMDField() {}
func (MDString) isIntOrMDField()    {}
func (MDTuple) isIntOrMDField()     {}
func (MetadataID) isIntOrMDField()  {}

// SpecializedMDNode
func (DICompileUnit) isIntOrMDField()              {}
func (DIFile) isIntOrMDField()                     {}
func (DIBasicType) isIntOrMDField()                {}
func (DISubroutineType) isIntOrMDField()           {}
func (DIDerivedType) isIntOrMDField()              {}
func (DICompositeType) isIntOrMDField()            {}
func (DISubrange) isIntOrMDField()                 {}
func (DIEnumerator) isIntOrMDField()               {}
func (DITemplateTypeParameter) isIntOrMDField()    {}
func (DITemplateValueParameter) isIntOrMDField()   {}
func (DIModule) isIntOrMDField()                   {}
func (DINamespace) isIntOrMDField()                {}
func (DIGlobalVariable) isIntOrMDField()           {}
func (DISubprogram) isIntOrMDField()               {}
func (DILexicalBlock) isIntOrMDField()             {}
func (DILexicalBlockFile) isIntOrMDField()         {}
func (DILocation) isIntOrMDField()                 {}
func (DILocalVariable) isIntOrMDField()            {}
func (DIExpression) isIntOrMDField()               {}
func (DIGlobalVariableExpression) isIntOrMDField() {}
func (DIObjCProperty) isIntOrMDField()             {}
func (DIImportedEntity) isIntOrMDField()           {}
func (DIMacro) isIntOrMDField()                    {}
func (DIMacroFile) isIntOrMDField()                {}
func (GenericDINode) isIntOrMDField()              {}

type DwarfVirtuality int64

// TODO: Define DwarfVirtuality enum.

type DwarfOp int64

// TODO: Define DwarfOp enum.

type DwarfMacinfo int64

// TODO: Define DwarfMacinfo enum.
