package metadata

import (
	"fmt"
	"strings"

	"github.com/mewmew/l/internal/enc"
	"github.com/mewmew/l/ll"
)

// --- [ Specialized Metadata Nodes ] ------------------------------------------

// SpecializedMDNode is a specialized metadata node.
type SpecializedMDNode interface {
	fmt.Stringer
	// isSpecializedMDNode ensures that only specialized metadata nodes can be
	// assigned to the metadata.SpecializedMDNode interface.
	isSpecializedMDNode()
}

// ~~~ [ DICompileUnit ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// DICompileUnit is a specialized metadata node.
type DICompileUnit struct {
	Language              ll.DwarfLang    // required
	File                  MDField         // required
	Producer              string          // optional; empty if not present
	IsOptimized           bool            // optional; zero value if not present
	Flags                 string          // optional; empty if not present
	RuntimeVersion        int64           // optional; zero value if not present
	SplitDebugFilename    string          // optional; empty if not present
	EmissionKind          ll.EmissionKind // optional; zero value if not present
	Enums                 MDField         // optional; nil if not present
	RetainedTypes         MDField         // optional; nil if not present
	Globals               MDField         // optional; nil if not present
	Imports               MDField         // optional; nil if not present
	Macros                MDField         // optional; nil if not present
	DwoID                 int64           // optional; zero value if not present
	SplitDebugInlining    bool            // optional; zero value if not present
	DebugInfoForProfiling bool            // optional; zero value if not present
	GnuPubnames           bool            // optional; zero value if not present
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
	if md.DwoID != 0 {
		field = fmt.Sprintf("dwoId: %v", md.DwoID)
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
	Filename     string          // required
	Directory    string          // required
	Checksumkind ll.ChecksumKind // optional; zero value if not present
	Checksum     string          // optional; empty if not present
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
	Tag      ll.DwarfTag         // optional; zero value if not present
	Name     string              // optional; empty if not present
	Size     int64               // optional; zero value if not present
	Align    int64               // optional; zero value if not present
	Encoding ll.DwarfAttEncoding // optional; zero value if not present
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
	Flags []ll.DIFlag // optional
	CC    ll.DwarfCC  // optional; zero value if not present
	Types MDField     // required
}

// String returns a string representation of the specialized metadata node.
func (md *DISubroutineType) String() string {
	// "!DISubroutineType" "(" DISubroutineTypeFields ")"
	var fields []string
	if len(md.Flags) > 0 {
		field := fmt.Sprintf("flags: %v", ll.DIFlagsString(md.Flags))
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
	Tag               ll.DwarfTag // required
	Name              string      // optional; empty if not present
	Scope             MDField     // optional; nil if not present
	File              MDField     // optional; nil if not present
	Line              int64       // optional; zero value if not present
	BaseType          MDField     // required
	Size              int64       // optional; zero value if not present
	Align             int64       // optional; zero value if not present
	Offset            int64       // optional; zero value if not present
	Flags             []ll.DIFlag // optional
	ExtraData         MDField     // optional; nil if not present
	DwarfAddressSpace int64       // optional; zero value if not present
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
		field = fmt.Sprintf("flags: %v", ll.DIFlagsString(md.Flags))
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
	Tag            ll.DwarfTag  // required
	Name           string       // optional; empty if not present
	Scope          MDField      // optional; nil if not present
	File           MDField      // optional; nil if not present
	Line           int64        // optional; zero value if not present
	BaseType       MDField      // optional; nil if not present
	Size           int64        // optional; zero value if not present
	Align          int64        // optional; zero value if not present
	Offset         int64        // optional; zero value if not present
	Flags          []ll.DIFlag  // optional
	Elements       MDField      // optional; nil if not present
	RuntimeLang    ll.DwarfLang // optional; zero value if not present
	VtableHolder   MDField      // optional; nil if not present
	TemplateParams MDField      // optional; nil if not present
	Identifier     string       // optional; empty if not present
	Discriminator  MDField      // optional; nil if not present
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
		field = fmt.Sprintf("flags: %v", ll.DIFlagsString(md.Flags))
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
	Tag   ll.DwarfTag // optional; zero value if not present
	Name  string      // optional; empty if not present
	Type  MDField     // optional; nil if not present
	Value MDField     // required
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
	Name           string             // optional; empty if not present
	Scope          MDField            // optional; nil if not present
	LinkageName    string             // optional; empty if not present
	File           MDField            // optional; nil if not present
	Line           int64              // optional; zero value if not present
	Type           MDField            // optional; nil if not present
	IsLocal        bool               // optional; zero value if not present
	IsDefinition   bool               // optional; zero value if not present
	ScopeLine      int64              // optional; zero value if not present
	ContainingType MDField            // optional; nil if not present
	Virtuality     ll.DwarfVirtuality // optional; zero value if not present
	VirtualIndex   int64              // optional; zero value if not present
	ThisAdjustment int64              // optional; zero value if not present
	Flags          []ll.DIFlag        // optional
	IsOptimized    bool               // optional; zero value if not present
	Unit           MDField            // optional; nil if not present
	TemplateParams MDField            // optional; nil if not present
	Declaration    MDField            // optional; nil if not present
	Variables      MDField            // optional; nil if not present
	ThrownTypes    MDField            // optional; nil if not present
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
		field := fmt.Sprintf("flags: %v", ll.DIFlagsString(md.Flags))
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
	Name  string      // optional; empty if not present
	Arg   int64       // optional; zero value if not present
	Scope MDField     // required
	File  MDField     // optional; nil if not present
	Line  int64       // optional; zero value if not present
	Type  MDField     // optional; nil if not present
	Flags []ll.DIFlag // optional
	Align int64       // optional; zero value if not present
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
		field = fmt.Sprintf("flags: %v", ll.DIFlagsString(md.Flags))
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
	// IsDIExpressionField ensures that only DIExpression fields can be assigned
	// to the metadata.DIExpressionField interface.
	IsDIExpressionField()
}

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
	Tag    ll.DwarfTag // required
	Scope  MDField     // required
	Entity MDField     // optional; nil if not present
	File   MDField     // optional; nil if not present
	Line   int64       // optional; zero value if not present
	Name   string      // optional; empty if not present
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
	Type  ll.DwarfMacinfo // required
	Line  int64           // optional; zero value if not present
	Name  string          // required
	Value string          // optional; empty if not present
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
	Type  ll.DwarfMacinfo // optional; zero value if not present
	Line  int64           // optional; zero value if not present
	File  MDField         // required
	Nodes MDField         // optional; nil if not present
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
	Tag      ll.DwarfTag // required
	Header   string      // optional; empty if not present
	Operands []MDField   // optional
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
// assigned to the metadata.SpecializedMDNode interface.
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

// ___ [ Helpers ] _____________________________________________________________

// IntOrMDField is an integer or metadata field.
type IntOrMDField interface {
	fmt.Stringer
	// IsIntOrMDField ensures that only intergers and metadata fields can be
	// assigned to the metadata.IntOrMDField interface.
	IsIntOrMDField()
}

// ### [ Helper functions ] ####################################################

// IsIntOrMDField ensures that only intergers and metadata fields can be
// assigned to the metadata.IntOrMDField interface.
//
// *constant.IntConst

// MDField
// *constant.NullConst

// Metadata
func (*Value) IsIntOrMDField()       {}
func (*MDString) IsIntOrMDField()    {}
func (*MDTuple) IsIntOrMDField()     {}
func (*MetadataDef) IsIntOrMDField() {}

// SpecializedMDNode
func (*DICompileUnit) IsIntOrMDField()              {}
func (*DIFile) IsIntOrMDField()                     {}
func (*DIBasicType) IsIntOrMDField()                {}
func (*DISubroutineType) IsIntOrMDField()           {}
func (*DIDerivedType) IsIntOrMDField()              {}
func (*DICompositeType) IsIntOrMDField()            {}
func (*DISubrange) IsIntOrMDField()                 {}
func (*DIEnumerator) IsIntOrMDField()               {}
func (*DITemplateTypeParameter) IsIntOrMDField()    {}
func (*DITemplateValueParameter) IsIntOrMDField()   {}
func (*DIModule) IsIntOrMDField()                   {}
func (*DINamespace) IsIntOrMDField()                {}
func (*DIGlobalVariable) IsIntOrMDField()           {}
func (*DISubprogram) IsIntOrMDField()               {}
func (*DILexicalBlock) IsIntOrMDField()             {}
func (*DILexicalBlockFile) IsIntOrMDField()         {}
func (*DILocation) IsIntOrMDField()                 {}
func (*DILocalVariable) IsIntOrMDField()            {}
func (*DIExpression) IsIntOrMDField()               {}
func (*DIGlobalVariableExpression) IsIntOrMDField() {}
func (*DIObjCProperty) IsIntOrMDField()             {}
func (*DIImportedEntity) IsIntOrMDField()           {}
func (*DIMacro) IsIntOrMDField()                    {}
func (*DIMacroFile) IsIntOrMDField()                {}
func (*GenericDINode) IsIntOrMDField()              {}
