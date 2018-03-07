package astx

import (
	"fmt"

	"github.com/mewmew/l/ir/metadata"
	"github.com/mewmew/l/ll"
)

// NewDICompileUnit returns a new DICompileUnit specialized metadata node.
func NewDICompileUnit(fields []*SpecializedMDField) (*metadata.DICompileUnit, error) {
	m := getMDFieldMap(fields)
	node := &metadata.DICompileUnit{}
	if v, ok := m["language:"]; ok {
		node.Language = v.(ll.DwarfLang)
	}
	if v, ok := m["file:"]; ok {
		node.File = v.(metadata.MDField)
	}
	if v, ok := m["producer:"]; ok {
		node.Producer = v.(string)
	}
	if v, ok := m["isOptimized:"]; ok {
		node.IsOptimized = v.(bool)
	}
	if v, ok := m["flags:"]; ok {
		node.Flags = v.(string)
	}
	if v, ok := m["runtimeVersion:"]; ok {
		node.RuntimeVersion = v.(int64)
	}
	if v, ok := m["splitDebugFilename:"]; ok {
		node.SplitDebugFilename = v.(string)
	}
	if v, ok := m["emissionKind:"]; ok {
		node.EmissionKind = v.(ll.EmissionKind)
	}
	if v, ok := m["enums:"]; ok {
		node.Enums = v.(metadata.MDField)
	}
	if v, ok := m["retainedTypes:"]; ok {
		node.RetainedTypes = v.(metadata.MDField)
	}
	if v, ok := m["globals:"]; ok {
		node.Globals = v.(metadata.MDField)
	}
	if v, ok := m["imports:"]; ok {
		node.Imports = v.(metadata.MDField)
	}
	if v, ok := m["macros:"]; ok {
		node.Macros = v.(metadata.MDField)
	}
	if v, ok := m["dwoId:"]; ok {
		node.DwoID = v.(int64)
	}
	if v, ok := m["splitDebugInlining:"]; ok {
		node.SplitDebugInlining = v.(bool)
	}
	if v, ok := m["debugInfoForProfiling:"]; ok {
		node.DebugInfoForProfiling = v.(bool)
	}
	if v, ok := m["gnuPubnames:"]; ok {
		node.GnuPubnames = v.(bool)
	}
	return node, nil
}

// NewDIFile returns a new DIFile specialized metadata node.
func NewDIFile(fields []*SpecializedMDField) (*metadata.DIFile, error) {
	m := getMDFieldMap(fields)
	node := &metadata.DIFile{}
	if v, ok := m["filename:"]; ok {
		node.Filename = v.(string)
	}
	if v, ok := m["directory:"]; ok {
		node.Directory = v.(string)
	}
	if v, ok := m["checksumkind:"]; ok {
		node.Checksumkind = v.(ll.ChecksumKind)
	}
	if v, ok := m["checksum:"]; ok {
		node.Checksum = v.(string)
	}
	return node, nil
}

// NewDIBasicType returns a new DIBasicType specialized metadata node.
func NewDIBasicType(fields []*SpecializedMDField) (*metadata.DIBasicType, error) {
	m := getMDFieldMap(fields)
	node := &metadata.DIBasicType{}
	if v, ok := m["tag:"]; ok {
		node.Tag = v.(ll.DwarfTag)
	}
	if v, ok := m["name:"]; ok {
		node.Name = v.(string)
	}
	if v, ok := m["size:"]; ok {
		node.Size = v.(int64)
	}
	if v, ok := m["align:"]; ok {
		node.Align = v.(int64)
	}
	if v, ok := m["encoding:"]; ok {
		node.Encoding = v.(ll.DwarfAttEncoding)
	}
	return node, nil
}

// NewDISubroutineType returns a new DISubroutineType specialized metadata node.
func NewDISubroutineType(fields []*SpecializedMDField) (*metadata.DISubroutineType, error) {
	m := getMDFieldMap(fields)
	node := &metadata.DISubroutineType{}
	if v, ok := m["flags:"]; ok {
		node.Flags = v.([]ll.DIFlag)
	}
	if v, ok := m["cc:"]; ok {
		node.CC = v.(ll.DwarfCC)
	}
	if v, ok := m["types:"]; ok {
		node.Types = v.(metadata.MDField)
	}
	return node, nil
}

// NewDIDerivedType returns a new DIDerivedType specialized metadata node.
func NewDIDerivedType(fields []*SpecializedMDField) (*metadata.DIDerivedType, error) {
	m := getMDFieldMap(fields)
	node := &metadata.DIDerivedType{}
	if v, ok := m["tag:"]; ok {
		node.Tag = v.(ll.DwarfTag)
	}
	if v, ok := m["name:"]; ok {
		node.Name = v.(string)
	}
	if v, ok := m["scope:"]; ok {
		node.Scope = v.(metadata.MDField)
	}
	if v, ok := m["file:"]; ok {
		node.File = v.(metadata.MDField)
	}
	if v, ok := m["line:"]; ok {
		node.Line = v.(int64)
	}
	if v, ok := m["baseType:"]; ok {
		node.BaseType = v.(metadata.MDField)
	}
	if v, ok := m["size:"]; ok {
		node.Size = v.(int64)
	}
	if v, ok := m["align:"]; ok {
		node.Align = v.(int64)
	}
	if v, ok := m["offset:"]; ok {
		node.Offset = v.(int64)
	}
	if v, ok := m["flags:"]; ok {
		node.Flags = v.([]ll.DIFlag)
	}
	if v, ok := m["extraData:"]; ok {
		node.ExtraData = v.(metadata.MDField)
	}
	if v, ok := m["dwarfAddressSpace:"]; ok {
		node.DwarfAddressSpace = v.(int64)
	}
	return node, nil
}

// NewDICompositeType returns a new DICompositeType specialized metadata node.
func NewDICompositeType(fields []*SpecializedMDField) (*metadata.DICompositeType, error) {
	m := getMDFieldMap(fields)
	node := &metadata.DICompositeType{}
	if v, ok := m["tag:"]; ok {
		node.Tag = v.(ll.DwarfTag)
	}
	if v, ok := m["name:"]; ok {
		node.Name = v.(string)
	}
	if v, ok := m["scope:"]; ok {
		node.Scope = v.(metadata.MDField)
	}
	if v, ok := m["file:"]; ok {
		node.File = v.(metadata.MDField)
	}
	if v, ok := m["line:"]; ok {
		node.Line = v.(int64)
	}
	if v, ok := m["baseType:"]; ok {
		node.BaseType = v.(metadata.MDField)
	}
	if v, ok := m["size:"]; ok {
		node.Size = v.(int64)
	}
	if v, ok := m["align:"]; ok {
		node.Align = v.(int64)
	}
	if v, ok := m["offset:"]; ok {
		node.Offset = v.(int64)
	}
	if v, ok := m["flags:"]; ok {
		node.Flags = v.([]ll.DIFlag)
	}
	if v, ok := m["elements:"]; ok {
		node.Elements = v.(metadata.MDField)
	}
	if v, ok := m["runtimeLang:"]; ok {
		node.RuntimeLang = v.(ll.DwarfLang)
	}
	if v, ok := m["vtableHolder:"]; ok {
		node.VtableHolder = v.(metadata.MDField)
	}
	if v, ok := m["templateParams:"]; ok {
		node.TemplateParams = v.(metadata.MDField)
	}
	if v, ok := m["identifier:"]; ok {
		node.Identifier = v.(string)
	}
	if v, ok := m["discriminator:"]; ok {
		node.Discriminator = v.(metadata.MDField)
	}
	return node, nil
}

// NewDISubrange returns a new DISubrange specialized metadata node.
func NewDISubrange(fields []*SpecializedMDField) (*metadata.DISubrange, error) {
	m := getMDFieldMap(fields)
	node := &metadata.DISubrange{}
	if v, ok := m["count:"]; ok {
		node.Count = v.(metadata.IntOrMDField)
	}
	if v, ok := m["lowerBound:"]; ok {
		node.LowerBound = v.(int64)
	}
	return node, nil
}

// NewDIEnumerator returns a new DIEnumerator specialized metadata node.
func NewDIEnumerator(fields []*SpecializedMDField) (*metadata.DIEnumerator, error) {
	m := getMDFieldMap(fields)
	node := &metadata.DIEnumerator{}
	if v, ok := m["name:"]; ok {
		node.Name = v.(string)
	}
	if v, ok := m["value:"]; ok {
		node.Value = v.(int64)
	}
	if v, ok := m["isUnsigned:"]; ok {
		node.IsUnsigned = v.(bool)
	}
	return node, nil
}

// NewDITemplateTypeParameter returns a new DITemplateTypeParameter specialized
// metadata node.
func NewDITemplateTypeParameter(fields []*SpecializedMDField) (*metadata.DITemplateTypeParameter, error) {
	m := getMDFieldMap(fields)
	node := &metadata.DITemplateTypeParameter{}
	if v, ok := m["name:"]; ok {
		node.Name = v.(string)
	}
	if v, ok := m["type:"]; ok {
		node.Type = v.(metadata.MDField)
	}
	return node, nil
}

// NewDITemplateValueParameter returns a new DITemplateValueParameter
// specialized metadata node.
func NewDITemplateValueParameter(fields []*SpecializedMDField) (*metadata.DITemplateValueParameter, error) {
	m := getMDFieldMap(fields)
	node := &metadata.DITemplateValueParameter{}
	if v, ok := m["tag:"]; ok {
		node.Tag = v.(ll.DwarfTag)
	}
	if v, ok := m["name:"]; ok {
		node.Name = v.(string)
	}
	if v, ok := m["type:"]; ok {
		node.Type = v.(metadata.MDField)
	}
	if v, ok := m["value:"]; ok {
		node.Value = v.(metadata.MDField)
	}
	return node, nil
}

// NewDIModule returns a new DIModule specialized metadata node.
func NewDIModule(fields []*SpecializedMDField) (*metadata.DIModule, error) {
	m := getMDFieldMap(fields)
	node := &metadata.DIModule{}
	if v, ok := m["scope:"]; ok {
		node.Scope = v.(metadata.MDField)
	}
	if v, ok := m["name:"]; ok {
		node.Name = v.(string)
	}
	if v, ok := m["configMacros:"]; ok {
		node.ConfigMacros = v.(string)
	}
	if v, ok := m["includePath:"]; ok {
		node.IncludePath = v.(string)
	}
	if v, ok := m["isysroot:"]; ok {
		node.Isysroot = v.(string)
	}
	return node, nil
}

// NewDINamespace returns a new DINamespace specialized metadata node.
func NewDINamespace(fields []*SpecializedMDField) (*metadata.DINamespace, error) {
	m := getMDFieldMap(fields)
	node := &metadata.DINamespace{}
	if v, ok := m["scope:"]; ok {
		node.Scope = v.(metadata.MDField)
	}
	if v, ok := m["name:"]; ok {
		node.Name = v.(string)
	}
	if v, ok := m["exportSymbols:"]; ok {
		node.ExportSymbols = v.(bool)
	}
	return node, nil
}

// NewDIGlobalVariable returns a new DIGlobalVariable specialized metadata node.
func NewDIGlobalVariable(fields []*SpecializedMDField) (*metadata.DIGlobalVariable, error) {
	m := getMDFieldMap(fields)
	node := &metadata.DIGlobalVariable{}
	if v, ok := m["name:"]; ok {
		node.Name = v.(string)
	}
	if v, ok := m["scope:"]; ok {
		node.Scope = v.(metadata.MDField)
	}
	if v, ok := m["linkageName:"]; ok {
		node.LinkageName = v.(string)
	}
	if v, ok := m["file:"]; ok {
		node.File = v.(metadata.MDField)
	}
	if v, ok := m["line:"]; ok {
		node.Line = v.(int64)
	}
	if v, ok := m["type:"]; ok {
		node.Type = v.(metadata.MDField)
	}
	if v, ok := m["isLocal:"]; ok {
		node.IsLocal = v.(bool)
	}
	if v, ok := m["isDefinition:"]; ok {
		node.IsDefinition = v.(bool)
	}
	if v, ok := m["declaration:"]; ok {
		node.Declaration = v.(metadata.MDField)
	}
	if v, ok := m["align:"]; ok {
		node.Align = v.(int64)
	}
	return node, nil
}

// NewDISubprogram returns a new DISubprogram specialized metadata node.
func NewDISubprogram(fields []*SpecializedMDField) (*metadata.DISubprogram, error) {
	m := getMDFieldMap(fields)
	node := &metadata.DISubprogram{}
	if v, ok := m["name:"]; ok {
		node.Name = v.(string)
	}
	if v, ok := m["scope:"]; ok {
		node.Scope = v.(metadata.MDField)
	}
	if v, ok := m["linkageName:"]; ok {
		node.LinkageName = v.(string)
	}
	if v, ok := m["file:"]; ok {
		node.File = v.(metadata.MDField)
	}
	if v, ok := m["line:"]; ok {
		node.Line = v.(int64)
	}
	if v, ok := m["type:"]; ok {
		node.Type = v.(metadata.MDField)
	}
	if v, ok := m["isLocal:"]; ok {
		node.IsLocal = v.(bool)
	}
	if v, ok := m["isDefinition:"]; ok {
		node.IsDefinition = v.(bool)
	}
	if v, ok := m["scopeLine:"]; ok {
		node.ScopeLine = v.(int64)
	}
	if v, ok := m["containingType:"]; ok {
		node.ContainingType = v.(metadata.MDField)
	}
	if v, ok := m["virtuality:"]; ok {
		node.Virtuality = v.(ll.DwarfVirtuality)
	}
	if v, ok := m["virtualIndex:"]; ok {
		node.VirtualIndex = v.(int64)
	}
	if v, ok := m["thisAdjustment:"]; ok {
		node.ThisAdjustment = v.(int64)
	}
	if v, ok := m["flags:"]; ok {
		node.Flags = v.([]ll.DIFlag)
	}
	if v, ok := m["isOptimized:"]; ok {
		node.IsOptimized = v.(bool)
	}
	if v, ok := m["unit:"]; ok {
		node.Unit = v.(metadata.MDField)
	}
	if v, ok := m["templateParams:"]; ok {
		node.TemplateParams = v.(metadata.MDField)
	}
	if v, ok := m["declaration:"]; ok {
		node.Declaration = v.(metadata.MDField)
	}
	if v, ok := m["variables:"]; ok {
		node.Variables = v.(metadata.MDField)
	}
	if v, ok := m["thrownTypes:"]; ok {
		node.ThrownTypes = v.(metadata.MDField)
	}
	return node, nil
}

// NewDILexicalBlock returns a new DILexicalBlock specialized metadata node.
func NewDILexicalBlock(fields []*SpecializedMDField) (*metadata.DILexicalBlock, error) {
	m := getMDFieldMap(fields)
	node := &metadata.DILexicalBlock{}
	if v, ok := m["scope:"]; ok {
		node.Scope = v.(metadata.MDField)
	}
	if v, ok := m["file:"]; ok {
		node.File = v.(metadata.MDField)
	}
	if v, ok := m["line:"]; ok {
		node.Line = v.(int64)
	}
	if v, ok := m["column:"]; ok {
		node.Column = v.(int64)
	}
	return node, nil
}

// NewDILexicalBlockFile returns a new DILexicalBlockFile specialized metadata
// node.
func NewDILexicalBlockFile(fields []*SpecializedMDField) (*metadata.DILexicalBlockFile, error) {
	m := getMDFieldMap(fields)
	node := &metadata.DILexicalBlockFile{}
	if v, ok := m["scope:"]; ok {
		node.Scope = v.(metadata.MDField)
	}
	if v, ok := m["file:"]; ok {
		node.File = v.(metadata.MDField)
	}
	if v, ok := m["discriminator:"]; ok {
		node.Discriminator = v.(int64)
	}
	return node, nil
}

// NewDILocation returns a new DILocation specialized metadata node.
func NewDILocation(fields []*SpecializedMDField) (*metadata.DILocation, error) {
	m := getMDFieldMap(fields)
	node := &metadata.DILocation{}
	if v, ok := m["line:"]; ok {
		node.Line = v.(int64)
	}
	if v, ok := m["column:"]; ok {
		node.Column = v.(int64)
	}
	if v, ok := m["scope:"]; ok {
		node.Scope = v.(metadata.MDField)
	}
	if v, ok := m["inlinedAt:"]; ok {
		node.InlinedAt = v.(metadata.MDField)
	}
	return node, nil
}

// NewDILocalVariable returns a new DILocalVariable specialized metadata node.
func NewDILocalVariable(fields []*SpecializedMDField) (*metadata.DILocalVariable, error) {
	m := getMDFieldMap(fields)
	node := &metadata.DILocalVariable{}
	if v, ok := m["name:"]; ok {
		node.Name = v.(string)
	}
	if v, ok := m["arg:"]; ok {
		node.Arg = v.(int64)
	}
	if v, ok := m["scope:"]; ok {
		node.Scope = v.(metadata.MDField)
	}
	if v, ok := m["file:"]; ok {
		node.File = v.(metadata.MDField)
	}
	if v, ok := m["line:"]; ok {
		node.Line = v.(int64)
	}
	if v, ok := m["type:"]; ok {
		node.Type = v.(metadata.MDField)
	}
	if v, ok := m["flags:"]; ok {
		node.Flags = v.([]ll.DIFlag)
	}
	if v, ok := m["align:"]; ok {
		node.Align = v.(int64)
	}
	return node, nil
}

// NewDIGlobalVariableExpression returns a new DIGlobalVariableExpression
// specialized metadata node.
func NewDIGlobalVariableExpression(fields []*SpecializedMDField) (*metadata.DIGlobalVariableExpression, error) {
	m := getMDFieldMap(fields)
	node := &metadata.DIGlobalVariableExpression{}
	if v, ok := m["var:"]; ok {
		node.Var = v.(metadata.MDField)
	}
	if v, ok := m["expr:"]; ok {
		node.Expr = v.(metadata.MDField)
	}
	return node, nil
}

// NewDIObjCProperty returns a new DIObjCProperty specialized metadata node.
func NewDIObjCProperty(fields []*SpecializedMDField) (*metadata.DIObjCProperty, error) {
	m := getMDFieldMap(fields)
	node := &metadata.DIObjCProperty{}
	if v, ok := m["name:"]; ok {
		node.Name = v.(string)
	}
	if v, ok := m["file:"]; ok {
		node.File = v.(metadata.MDField)
	}
	if v, ok := m["line:"]; ok {
		node.Line = v.(int64)
	}
	if v, ok := m["setter:"]; ok {
		node.Setter = v.(string)
	}
	if v, ok := m["getter:"]; ok {
		node.Getter = v.(string)
	}
	if v, ok := m["attributes:"]; ok {
		node.Attributes = v.(int64)
	}
	if v, ok := m["type:"]; ok {
		node.Type = v.(metadata.MDField)
	}
	return node, nil
}

// NewDIImportedEntity returns a new DIImportedEntity specialized metadata node.
func NewDIImportedEntity(fields []*SpecializedMDField) (*metadata.DIImportedEntity, error) {
	m := getMDFieldMap(fields)
	node := &metadata.DIImportedEntity{}
	if v, ok := m["tag:"]; ok {
		node.Tag = v.(ll.DwarfTag)
	}
	if v, ok := m["scope:"]; ok {
		node.Scope = v.(metadata.MDField)
	}
	if v, ok := m["entity:"]; ok {
		node.Entity = v.(metadata.MDField)
	}
	if v, ok := m["file:"]; ok {
		node.File = v.(metadata.MDField)
	}
	if v, ok := m["line:"]; ok {
		node.Line = v.(int64)
	}
	if v, ok := m["name:"]; ok {
		node.Name = v.(string)
	}
	return node, nil
}

// NewDIMacro returns a new DIMacro specialized metadata node.
func NewDIMacro(fields []*SpecializedMDField) (*metadata.DIMacro, error) {
	m := getMDFieldMap(fields)
	node := &metadata.DIMacro{}
	if v, ok := m["type:"]; ok {
		node.Type = v.(ll.DwarfMacinfo)
	}
	if v, ok := m["line:"]; ok {
		node.Line = v.(int64)
	}
	if v, ok := m["name:"]; ok {
		node.Name = v.(string)
	}
	if v, ok := m["value:"]; ok {
		node.Value = v.(string)
	}
	return node, nil
}

// NewDIMacroFile returns a new DIMacroFile specialized metadata node.
func NewDIMacroFile(fields []*SpecializedMDField) (*metadata.DIMacroFile, error) {
	m := getMDFieldMap(fields)
	node := &metadata.DIMacroFile{}
	if v, ok := m["type:"]; ok {
		node.Type = v.(ll.DwarfMacinfo)
	}
	if v, ok := m["line:"]; ok {
		node.Line = v.(int64)
	}
	if v, ok := m["file:"]; ok {
		node.File = v.(metadata.MDField)
	}
	if v, ok := m["nodes:"]; ok {
		node.Nodes = v.(metadata.MDField)
	}
	return node, nil
}

// NewGenericDINode returns a new GenericDINode specialized metadata node.
func NewGenericDINode(fields []*SpecializedMDField) (*metadata.GenericDINode, error) {
	m := getMDFieldMap(fields)
	node := &metadata.GenericDINode{}
	if v, ok := m["tag:"]; ok {
		node.Tag = v.(ll.DwarfTag)
	}
	if v, ok := m["header:"]; ok {
		node.Header = v.(string)
	}
	if v, ok := m["operands:"]; ok {
		node.Operands = v.([]metadata.MDField)
	}
	return node, nil
}

// ### [ Helper functions ] ####################################################

// getMDFieldMap returns a map from specialized metadata field key to value.
func getMDFieldMap(fields []*SpecializedMDField) map[string]interface{} {
	m := make(map[string]interface{})
	for _, field := range fields {
		if prev, ok := m[field.Key]; ok {
			panic(fmt.Errorf("duplicate specialized metadata node field %q; prev %v, new %v", field.Key, prev, field))
		}
		m[field.Key] = field.Value
	}
	return m
}
