package astx

import (
	"fmt"

	"github.com/mewmew/l/ast"
)

// NewDICompileUnit returns a new DICompileUnit specialized metadata node.
func NewDICompileUnit(fields []*SpecializedMDField) (*ast.DICompileUnit, error) {
	m := getMDFieldMap(fields)
	node := &ast.DICompileUnit{}
	if v, ok := m["language:"]; ok {
		node.Language = v.(ast.DwarfLang)
	}
	if v, ok := m["file:"]; ok {
		node.File = v.(ast.MDField)
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
		node.EmissionKind = v.(ast.EmissionKind)
	}
	if v, ok := m["enums:"]; ok {
		node.Enums = v.(ast.MDField)
	}
	if v, ok := m["retainedTypes:"]; ok {
		node.RetainedTypes = v.(ast.MDField)
	}
	if v, ok := m["globals:"]; ok {
		node.Globals = v.(ast.MDField)
	}
	if v, ok := m["imports:"]; ok {
		node.Imports = v.(ast.MDField)
	}
	if v, ok := m["macros:"]; ok {
		node.Macros = v.(ast.MDField)
	}
	if v, ok := m["dwoId:"]; ok {
		node.DwoId = v.(int64)
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
func NewDIFile(fields []*SpecializedMDField) (*ast.DIFile, error) {
	m := getMDFieldMap(fields)
	node := &ast.DIFile{}
	if v, ok := m["filename:"]; ok {
		node.Filename = v.(string)
	}
	if v, ok := m["directory:"]; ok {
		node.Directory = v.(string)
	}
	if v, ok := m["checksumkind:"]; ok {
		node.Checksumkind = v.(ast.ChecksumKind)
	}
	if v, ok := m["checksum:"]; ok {
		node.Checksum = v.(string)
	}
	return node, nil
}

// NewDIBasicType returns a new DIBasicType specialized metadata node.
func NewDIBasicType(fields []*SpecializedMDField) (*ast.DIBasicType, error) {
	m := getMDFieldMap(fields)
	node := &ast.DIBasicType{}
	if v, ok := m["tag:"]; ok {
		node.Tag = v.(ast.DwarfTag)
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
		node.Encoding = v.(ast.DwarfAttEncoding)
	}
	return node, nil
}

// NewDISubroutineType returns a new DISubroutineType specialized metadata node.
func NewDISubroutineType(fields []*SpecializedMDField) (*ast.DISubroutineType, error) {
	m := getMDFieldMap(fields)
	node := &ast.DISubroutineType{}
	if v, ok := m["flags:"]; ok {
		node.Flags = v.([]ast.DIFlag)
	}
	if v, ok := m["cc:"]; ok {
		node.CC = v.(ast.DwarfCC)
	}
	if v, ok := m["types:"]; ok {
		node.Types = v.(ast.MDField)
	}
	return node, nil
}

// NewDIDerivedType returns a new DIDerivedType specialized metadata node.
func NewDIDerivedType(fields []*SpecializedMDField) (*ast.DIDerivedType, error) {
	m := getMDFieldMap(fields)
	node := &ast.DIDerivedType{}
	if v, ok := m["tag:"]; ok {
		node.Tag = v.(ast.DwarfTag)
	}
	if v, ok := m["name:"]; ok {
		node.Name = v.(string)
	}
	if v, ok := m["scope:"]; ok {
		node.Scope = v.(ast.MDField)
	}
	if v, ok := m["file:"]; ok {
		node.File = v.(ast.MDField)
	}
	if v, ok := m["line:"]; ok {
		node.Line = v.(int64)
	}
	if v, ok := m["baseType:"]; ok {
		node.BaseType = v.(ast.MDField)
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
		node.Flags = v.([]ast.DIFlag)
	}
	if v, ok := m["extraData:"]; ok {
		node.ExtraData = v.(ast.MDField)
	}
	if v, ok := m["dwarfAddressSpace:"]; ok {
		node.DwarfAddressSpace = v.(int64)
	}
	return node, nil
}

// NewDICompositeType returns a new DICompositeType specialized metadata node.
func NewDICompositeType(fields []*SpecializedMDField) (*ast.DICompositeType, error) {
	m := getMDFieldMap(fields)
	node := &ast.DICompositeType{}
	if v, ok := m["tag:"]; ok {
		node.Tag = v.(ast.DwarfTag)
	}
	if v, ok := m["name:"]; ok {
		node.Name = v.(string)
	}
	if v, ok := m["scope:"]; ok {
		node.Scope = v.(ast.MDField)
	}
	if v, ok := m["file:"]; ok {
		node.File = v.(ast.MDField)
	}
	if v, ok := m["line:"]; ok {
		node.Line = v.(int64)
	}
	if v, ok := m["baseType:"]; ok {
		node.BaseType = v.(ast.MDField)
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
		node.Flags = v.([]ast.DIFlag)
	}
	if v, ok := m["elements:"]; ok {
		node.Elements = v.(ast.MDField)
	}
	if v, ok := m["runtimeLang:"]; ok {
		node.RuntimeLang = v.(ast.DwarfLang)
	}
	if v, ok := m["vtableHolder:"]; ok {
		node.VtableHolder = v.(ast.MDField)
	}
	if v, ok := m["templateParams:"]; ok {
		node.TemplateParams = v.(ast.MDField)
	}
	if v, ok := m["identifier:"]; ok {
		node.Identifier = v.(string)
	}
	if v, ok := m["discriminator:"]; ok {
		node.Discriminator = v.(ast.MDField)
	}
	return node, nil
}

// NewDISubrange returns a new DISubrange specialized metadata node.
func NewDISubrange(fields []*SpecializedMDField) (*ast.DISubrange, error) {
	m := getMDFieldMap(fields)
	node := &ast.DISubrange{}
	if v, ok := m["count:"]; ok {
		node.Count = v.(ast.IntOrMDField)
	}
	if v, ok := m["lowerBound:"]; ok {
		node.LowerBound = v.(int64)
	}
	return node, nil
}

// NewDIEnumerator returns a new DIEnumerator specialized metadata node.
func NewDIEnumerator(fields []*SpecializedMDField) (*ast.DIEnumerator, error) {
	m := getMDFieldMap(fields)
	node := &ast.DIEnumerator{}
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
func NewDITemplateTypeParameter(fields []*SpecializedMDField) (*ast.DITemplateTypeParameter, error) {
	m := getMDFieldMap(fields)
	node := &ast.DITemplateTypeParameter{}
	if v, ok := m["name:"]; ok {
		node.Name = v.(string)
	}
	if v, ok := m["type:"]; ok {
		node.Type = v.(ast.MDField)
	}
	return node, nil
}

// NewDITemplateValueParameter returns a new DITemplateValueParameter
// specialized metadata node.
func NewDITemplateValueParameter(fields []*SpecializedMDField) (*ast.DITemplateValueParameter, error) {
	m := getMDFieldMap(fields)
	node := &ast.DITemplateValueParameter{}
	if v, ok := m["tag:"]; ok {
		node.Tag = v.(ast.DwarfTag)
	}
	if v, ok := m["name:"]; ok {
		node.Name = v.(string)
	}
	if v, ok := m["type:"]; ok {
		node.Type = v.(ast.MDField)
	}
	if v, ok := m["value:"]; ok {
		node.Value = v.(ast.MDField)
	}
	return node, nil
}

// NewDIModule returns a new DIModule specialized metadata node.
func NewDIModule(fields []*SpecializedMDField) (*ast.DIModule, error) {
	m := getMDFieldMap(fields)
	node := &ast.DIModule{}
	if v, ok := m["scope:"]; ok {
		node.Scope = v.(ast.MDField)
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
func NewDINamespace(fields []*SpecializedMDField) (*ast.DINamespace, error) {
	m := getMDFieldMap(fields)
	node := &ast.DINamespace{}
	if v, ok := m["scope:"]; ok {
		node.Scope = v.(ast.MDField)
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
func NewDIGlobalVariable(fields []*SpecializedMDField) (*ast.DIGlobalVariable, error) {
	m := getMDFieldMap(fields)
	node := &ast.DIGlobalVariable{}
	if v, ok := m["name:"]; ok {
		node.Name = v.(string)
	}
	if v, ok := m["scope:"]; ok {
		node.Scope = v.(ast.MDField)
	}
	if v, ok := m["linkageName:"]; ok {
		node.LinkageName = v.(string)
	}
	if v, ok := m["file:"]; ok {
		node.File = v.(ast.MDField)
	}
	if v, ok := m["line:"]; ok {
		node.Line = v.(int64)
	}
	if v, ok := m["type:"]; ok {
		node.Type = v.(ast.MDField)
	}
	if v, ok := m["isLocal:"]; ok {
		node.IsLocal = v.(bool)
	}
	if v, ok := m["isDefinition:"]; ok {
		node.IsDefinition = v.(bool)
	}
	if v, ok := m["declaration:"]; ok {
		node.Declaration = v.(ast.MDField)
	}
	if v, ok := m["align:"]; ok {
		node.Align = v.(int64)
	}
	return node, nil
}

// NewDISubprogram returns a new DISubprogram specialized metadata node.
func NewDISubprogram(fields []*SpecializedMDField) (*ast.DISubprogram, error) {
	m := getMDFieldMap(fields)
	node := &ast.DISubprogram{}
	if v, ok := m["name:"]; ok {
		node.Name = v.(string)
	}
	if v, ok := m["scope:"]; ok {
		node.Scope = v.(ast.MDField)
	}
	if v, ok := m["linkageName:"]; ok {
		node.LinkageName = v.(string)
	}
	if v, ok := m["file:"]; ok {
		node.File = v.(ast.MDField)
	}
	if v, ok := m["line:"]; ok {
		node.Line = v.(int64)
	}
	if v, ok := m["type:"]; ok {
		node.Type = v.(ast.MDField)
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
		node.ContainingType = v.(ast.MDField)
	}
	if v, ok := m["virtuality:"]; ok {
		node.Virtuality = v.(ast.DwarfVirtuality)
	}
	if v, ok := m["virtualIndex:"]; ok {
		node.VirtualIndex = v.(int64)
	}
	if v, ok := m["thisAdjustment:"]; ok {
		node.ThisAdjustment = v.(int64)
	}
	if v, ok := m["flags:"]; ok {
		node.Flags = v.([]ast.DIFlag)
	}
	if v, ok := m["isOptimized:"]; ok {
		node.IsOptimized = v.(bool)
	}
	if v, ok := m["unit:"]; ok {
		node.Unit = v.(ast.MDField)
	}
	if v, ok := m["templateParams:"]; ok {
		node.TemplateParams = v.(ast.MDField)
	}
	if v, ok := m["declaration:"]; ok {
		node.Declaration = v.(ast.MDField)
	}
	if v, ok := m["variables:"]; ok {
		node.Variables = v.(ast.MDField)
	}
	if v, ok := m["thrownTypes:"]; ok {
		node.ThrownTypes = v.(ast.MDField)
	}
	return node, nil
}

// NewDILexicalBlock returns a new DILexicalBlock specialized metadata node.
func NewDILexicalBlock(fields []*SpecializedMDField) (*ast.DILexicalBlock, error) {
	m := getMDFieldMap(fields)
	node := &ast.DILexicalBlock{}
	if v, ok := m["scope:"]; ok {
		node.Scope = v.(ast.MDField)
	}
	if v, ok := m["file:"]; ok {
		node.File = v.(ast.MDField)
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
func NewDILexicalBlockFile(fields []*SpecializedMDField) (*ast.DILexicalBlockFile, error) {
	m := getMDFieldMap(fields)
	node := &ast.DILexicalBlockFile{}
	if v, ok := m["scope:"]; ok {
		node.Scope = v.(ast.MDField)
	}
	if v, ok := m["file:"]; ok {
		node.File = v.(ast.MDField)
	}
	if v, ok := m["discriminator:"]; ok {
		node.Discriminator = v.(int64)
	}
	return node, nil
}

// NewDILocation returns a new DILocation specialized metadata node.
func NewDILocation(fields []*SpecializedMDField) (*ast.DILocation, error) {
	m := getMDFieldMap(fields)
	node := &ast.DILocation{}
	if v, ok := m["line:"]; ok {
		node.Line = v.(int64)
	}
	if v, ok := m["column:"]; ok {
		node.Column = v.(int64)
	}
	if v, ok := m["scope:"]; ok {
		node.Scope = v.(ast.MDField)
	}
	if v, ok := m["inlinedAt:"]; ok {
		node.InlinedAt = v.(ast.MDField)
	}
	return node, nil
}

// NewDILocalVariable returns a new DILocalVariable specialized metadata node.
func NewDILocalVariable(fields []*SpecializedMDField) (*ast.DILocalVariable, error) {
	m := getMDFieldMap(fields)
	node := &ast.DILocalVariable{}
	if v, ok := m["name:"]; ok {
		node.Name = v.(string)
	}
	if v, ok := m["arg:"]; ok {
		node.Arg = v.(int64)
	}
	if v, ok := m["scope:"]; ok {
		node.Scope = v.(ast.MDField)
	}
	if v, ok := m["file:"]; ok {
		node.File = v.(ast.MDField)
	}
	if v, ok := m["line:"]; ok {
		node.Line = v.(int64)
	}
	if v, ok := m["type:"]; ok {
		node.Type = v.(ast.MDField)
	}
	if v, ok := m["flags:"]; ok {
		node.Flags = v.([]ast.DIFlag)
	}
	if v, ok := m["align:"]; ok {
		node.Align = v.(int64)
	}
	return node, nil
}

// NewDIGlobalVariableExpression returns a new DIGlobalVariableExpression
// specialized metadata node.
func NewDIGlobalVariableExpression(fields []*SpecializedMDField) (*ast.DIGlobalVariableExpression, error) {
	m := getMDFieldMap(fields)
	node := &ast.DIGlobalVariableExpression{}
	if v, ok := m["var:"]; ok {
		node.Var = v.(ast.MDField)
	}
	if v, ok := m["expr:"]; ok {
		node.Expr = v.(ast.MDField)
	}
	return node, nil
}

// NewDIObjCProperty returns a new DIObjCProperty specialized metadata node.
func NewDIObjCProperty(fields []*SpecializedMDField) (*ast.DIObjCProperty, error) {
	m := getMDFieldMap(fields)
	node := &ast.DIObjCProperty{}
	if v, ok := m["name:"]; ok {
		node.Name = v.(string)
	}
	if v, ok := m["file:"]; ok {
		node.File = v.(ast.MDField)
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
		node.Type = v.(ast.MDField)
	}
	return node, nil
}

// NewDIImportedEntity returns a new DIImportedEntity specialized metadata node.
func NewDIImportedEntity(fields []*SpecializedMDField) (*ast.DIImportedEntity, error) {
	m := getMDFieldMap(fields)
	node := &ast.DIImportedEntity{}
	if v, ok := m["tag:"]; ok {
		node.Tag = v.(ast.DwarfTag)
	}
	if v, ok := m["scope:"]; ok {
		node.Scope = v.(ast.MDField)
	}
	if v, ok := m["entity:"]; ok {
		node.Entity = v.(ast.MDField)
	}
	if v, ok := m["file:"]; ok {
		node.File = v.(ast.MDField)
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
func NewDIMacro(fields []*SpecializedMDField) (*ast.DIMacro, error) {
	m := getMDFieldMap(fields)
	node := &ast.DIMacro{}
	if v, ok := m["type:"]; ok {
		node.Type = v.(ast.DwarfMacinfo)
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
func NewDIMacroFile(fields []*SpecializedMDField) (*ast.DIMacroFile, error) {
	m := getMDFieldMap(fields)
	node := &ast.DIMacroFile{}
	if v, ok := m["type:"]; ok {
		node.Type = v.(ast.DwarfMacinfo)
	}
	if v, ok := m["line:"]; ok {
		node.Line = v.(int64)
	}
	if v, ok := m["file:"]; ok {
		node.File = v.(ast.MDField)
	}
	if v, ok := m["nodes:"]; ok {
		node.Nodes = v.(ast.MDField)
	}
	return node, nil
}

// NewGenericDINode returns a new GenericDINode specialized metadata node.
func NewGenericDINode(fields []*SpecializedMDField) (*ast.GenericDINode, error) {
	m := getMDFieldMap(fields)
	node := &ast.GenericDINode{}
	if v, ok := m["tag:"]; ok {
		node.Tag = v.(ast.DwarfTag)
	}
	if v, ok := m["header:"]; ok {
		node.Header = v.(string)
	}
	if v, ok := m["operands:"]; ok {
		node.Operands = v.([]ast.MDField)
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
