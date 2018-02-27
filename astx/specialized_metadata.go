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
		m["language:"] = v.(ast.DwarfLang)
	}
	if v, ok := m["file:"]; ok {
		m["file:"] = v.(ast.MDField)
	}
	if v, ok := m["producer:"]; ok {
		m["producer:"] = v.(string)
	}
	if v, ok := m["isOptimized:"]; ok {
		m["isOptimized:"] = v.(bool)
	}
	if v, ok := m["flags:"]; ok {
		m["flags:"] = v.(string)
	}
	if v, ok := m["runtimeVersion:"]; ok {
		m["runtimeVersion:"] = v.(int64)
	}
	if v, ok := m["splitDebugFilename:"]; ok {
		m["splitDebugFilename:"] = v.(string)
	}
	if v, ok := m["emissionKind:"]; ok {
		m["emissionKind:"] = v.(ast.EmissionKind)
	}
	if v, ok := m["enums:"]; ok {
		m["enums:"] = v.(ast.MDField)
	}
	if v, ok := m["retainedTypes:"]; ok {
		m["retainedTypes:"] = v.(ast.MDField)
	}
	if v, ok := m["globals:"]; ok {
		m["globals:"] = v.(ast.MDField)
	}
	if v, ok := m["imports:"]; ok {
		m["imports:"] = v.(ast.MDField)
	}
	if v, ok := m["macros:"]; ok {
		m["macros:"] = v.(ast.MDField)
	}
	if v, ok := m["dwoId:"]; ok {
		m["dwoId:"] = v.(int64)
	}
	if v, ok := m["splitDebugInlining:"]; ok {
		m["splitDebugInlining:"] = v.(bool)
	}
	if v, ok := m["debugInfoForProfiling:"]; ok {
		m["debugInfoForProfiling:"] = v.(bool)
	}
	if v, ok := m["gnuPubnames:"]; ok {
		m["gnuPubnames:"] = v.(bool)
	}
	return node, nil
}

// NewDIFile returns a new DIFile specialized metadata node.
func NewDIFile(fields []*SpecializedMDField) (*ast.DIFile, error) {
	m := getMDFieldMap(fields)
	node := &ast.DIFile{}
	if v, ok := m["filename:"]; ok {
		m["filename:"] = v.(string)
	}
	if v, ok := m["directory:"]; ok {
		m["directory:"] = v.(string)
	}
	if v, ok := m["checksumkind:"]; ok {
		m["checksumkind:"] = v.(ast.ChecksumKind)
	}
	if v, ok := m["checksum:"]; ok {
		m["checksum:"] = v.(string)
	}
	return node, nil
}

// NewDIBasicType returns a new DIBasicType specialized metadata node.
func NewDIBasicType(fields []*SpecializedMDField) (*ast.DIBasicType, error) {
	m := getMDFieldMap(fields)
	node := &ast.DIBasicType{}
	if v, ok := m["tag:"]; ok {
		m["tag:"] = v.(ast.DwarfTag)
	}
	if v, ok := m["name:"]; ok {
		m["name:"] = v.(string)
	}
	if v, ok := m["size:"]; ok {
		m["size:"] = v.(int64)
	}
	if v, ok := m["align:"]; ok {
		m["align:"] = v.(int64)
	}
	if v, ok := m["encoding:"]; ok {
		m["encoding:"] = v.(ast.DwarfAttEncoding)
	}
	return node, nil
}

// NewDISubroutineType returns a new DISubroutineType specialized metadata node.
func NewDISubroutineType(fields []*SpecializedMDField) (*ast.DISubroutineType, error) {
	m := getMDFieldMap(fields)
	node := &ast.DISubroutineType{}
	if v, ok := m["flags:"]; ok {
		m["flags:"] = v.([]ast.DIFlag)
	}
	if v, ok := m["cc:"]; ok {
		m["cc:"] = v.(ast.DwarfCC)
	}
	if v, ok := m["types:"]; ok {
		m["types:"] = v.(ast.MDField)
	}
	return node, nil
}

// NewDIDerivedType returns a new DIDerivedType specialized metadata node.
func NewDIDerivedType(fields []*SpecializedMDField) (*ast.DIDerivedType, error) {
	m := getMDFieldMap(fields)
	node := &ast.DIDerivedType{}
	if v, ok := m["tag:"]; ok {
		m["tag:"] = v.(ast.DwarfTag)
	}
	if v, ok := m["name:"]; ok {
		m["name:"] = v.(string)
	}
	if v, ok := m["file:"]; ok {
		m["file:"] = v.(ast.MDField)
	}
	if v, ok := m["line:"]; ok {
		m["line:"] = v.(int64)
	}
	if v, ok := m["scope:"]; ok {
		m["scope:"] = v.(ast.MDField)
	}
	if v, ok := m["baseType:"]; ok {
		m["baseType:"] = v.(ast.MDField)
	}
	if v, ok := m["size:"]; ok {
		m["size:"] = v.(int64)
	}
	if v, ok := m["align:"]; ok {
		m["align:"] = v.(int64)
	}
	if v, ok := m["offset:"]; ok {
		m["offset:"] = v.(int64)
	}
	if v, ok := m["flags:"]; ok {
		m["flags:"] = v.([]ast.DIFlag)
	}
	if v, ok := m["extraData:"]; ok {
		m["extraData:"] = v.(ast.MDField)
	}
	if v, ok := m["dwarfAddressSpace:"]; ok {
		m["dwarfAddressSpace:"] = v.(int64)
	}
	return node, nil
}

// NewDICompositeType returns a new DICompositeType specialized metadata node.
func NewDICompositeType(fields []*SpecializedMDField) (*ast.DICompositeType, error) {
	m := getMDFieldMap(fields)
	node := &ast.DICompositeType{}
	if v, ok := m["tag:"]; ok {
		m["tag:"] = v.(ast.DwarfTag)
	}
	if v, ok := m["name:"]; ok {
		m["name:"] = v.(string)
	}
	if v, ok := m["file:"]; ok {
		m["file:"] = v.(ast.MDField)
	}
	if v, ok := m["line:"]; ok {
		m["line:"] = v.(int64)
	}
	if v, ok := m["scope:"]; ok {
		m["scope:"] = v.(ast.MDField)
	}
	if v, ok := m["baseType:"]; ok {
		m["baseType:"] = v.(ast.MDField)
	}
	if v, ok := m["size:"]; ok {
		m["size:"] = v.(int64)
	}
	if v, ok := m["align:"]; ok {
		m["align:"] = v.(int64)
	}
	if v, ok := m["offset:"]; ok {
		m["offset:"] = v.(int64)
	}
	if v, ok := m["flags:"]; ok {
		m["flags:"] = v.([]ast.DIFlag)
	}
	if v, ok := m["elements:"]; ok {
		m["elements:"] = v.(ast.MDField)
	}
	if v, ok := m["runtimeLang:"]; ok {
		m["runtimeLang:"] = v.(ast.DwarfLang)
	}
	if v, ok := m["vtableHolder:"]; ok {
		m["vtableHolder:"] = v.(ast.MDField)
	}
	if v, ok := m["templateParams:"]; ok {
		m["templateParams:"] = v.(ast.MDField)
	}
	if v, ok := m["identifier:"]; ok {
		m["identifier:"] = v.(string)
	}
	if v, ok := m["discriminator:"]; ok {
		m["discriminator:"] = v.(ast.MDField)
	}
	return node, nil
}

// NewDISubrange returns a new DISubrange specialized metadata node.
func NewDISubrange(fields []*SpecializedMDField) (*ast.DISubrange, error) {
	m := getMDFieldMap(fields)
	node := &ast.DISubrange{}
	if v, ok := m["count:"]; ok {
		m["count:"] = v.(ast.IntOrMDField)
	}
	if v, ok := m["lowerBound:"]; ok {
		m["lowerBound:"] = v.(int64)
	}
	return node, nil
}

// NewDIEnumerator returns a new DIEnumerator specialized metadata node.
func NewDIEnumerator(fields []*SpecializedMDField) (*ast.DIEnumerator, error) {
	m := getMDFieldMap(fields)
	node := &ast.DIEnumerator{}
	if v, ok := m["name:"]; ok {
		m["name:"] = v.(string)
	}
	if v, ok := m["value:"]; ok {
		m["value:"] = v.(int64)
	}
	if v, ok := m["isUnsigned:"]; ok {
		m["isUnsigned:"] = v.(bool)
	}
	return node, nil
}

// NewDITemplateTypeParameter returns a new DITemplateTypeParameter specialized
// metadata node.
func NewDITemplateTypeParameter(fields []*SpecializedMDField) (*ast.DITemplateTypeParameter, error) {
	m := getMDFieldMap(fields)
	node := &ast.DITemplateTypeParameter{}
	if v, ok := m["name:"]; ok {
		m["name:"] = v.(string)
	}
	if v, ok := m["type:"]; ok {
		m["type:"] = v.(ast.MDField)
	}
	return node, nil
}

// NewDITemplateValueParameter returns a new DITemplateValueParameter
// specialized metadata node.
func NewDITemplateValueParameter(fields []*SpecializedMDField) (*ast.DITemplateValueParameter, error) {
	m := getMDFieldMap(fields)
	node := &ast.DITemplateValueParameter{}
	if v, ok := m["tag:"]; ok {
		m["tag:"] = v.(ast.DwarfTag)
	}
	if v, ok := m["name:"]; ok {
		m["name:"] = v.(string)
	}
	if v, ok := m["type:"]; ok {
		m["type:"] = v.(ast.MDField)
	}
	if v, ok := m["value:"]; ok {
		m["value:"] = v.(ast.MDField)
	}
	return node, nil
}

// NewDIModule returns a new DIModule specialized metadata node.
func NewDIModule(fields []*SpecializedMDField) (*ast.DIModule, error) {
	m := getMDFieldMap(fields)
	node := &ast.DIModule{}
	if v, ok := m["scope:"]; ok {
		m["scope:"] = v.(ast.MDField)
	}
	if v, ok := m["name:"]; ok {
		m["name:"] = v.(string)
	}
	if v, ok := m["configMacros:"]; ok {
		m["configMacros:"] = v.(string)
	}
	if v, ok := m["includePath:"]; ok {
		m["includePath:"] = v.(string)
	}
	if v, ok := m["isysroot:"]; ok {
		m["isysroot:"] = v.(string)
	}
	return node, nil
}

// NewDINamespace returns a new DINamespace specialized metadata node.
func NewDINamespace(fields []*SpecializedMDField) (*ast.DINamespace, error) {
	m := getMDFieldMap(fields)
	node := &ast.DINamespace{}
	if v, ok := m["scope:"]; ok {
		m["scope:"] = v.(ast.MDField)
	}
	if v, ok := m["name:"]; ok {
		m["name:"] = v.(string)
	}
	if v, ok := m["exportSymbols:"]; ok {
		m["exportSymbols:"] = v.(bool)
	}
	return node, nil
}

// NewDIGlobalVariable returns a new DIGlobalVariable specialized metadata node.
func NewDIGlobalVariable(fields []*SpecializedMDField) (*ast.DIGlobalVariable, error) {
	m := getMDFieldMap(fields)
	node := &ast.DIGlobalVariable{}
	if v, ok := m["name:"]; ok {
		m["name:"] = v.(string)
	}
	if v, ok := m["scope:"]; ok {
		m["scope:"] = v.(ast.MDField)
	}
	if v, ok := m["linkageName:"]; ok {
		m["linkageName:"] = v.(string)
	}
	if v, ok := m["file:"]; ok {
		m["file:"] = v.(ast.MDField)
	}
	if v, ok := m["line:"]; ok {
		m["line:"] = v.(int64)
	}
	if v, ok := m["type:"]; ok {
		m["type:"] = v.(ast.MDField)
	}
	if v, ok := m["isLocal:"]; ok {
		m["isLocal:"] = v.(bool)
	}
	if v, ok := m["isDefinition:"]; ok {
		m["isDefinition:"] = v.(bool)
	}
	if v, ok := m["declaration:"]; ok {
		m["declaration:"] = v.(ast.MDField)
	}
	if v, ok := m["align:"]; ok {
		m["align:"] = v.(int64)
	}
	return node, nil
}

// NewDISubprogram returns a new DISubprogram specialized metadata node.
func NewDISubprogram(fields []*SpecializedMDField) (*ast.DISubprogram, error) {
	m := getMDFieldMap(fields)
	node := &ast.DISubprogram{}
	if v, ok := m["scope:"]; ok {
		m["scope:"] = v.(ast.MDField)
	}
	if v, ok := m["name:"]; ok {
		m["name:"] = v.(string)
	}
	if v, ok := m["linkageName:"]; ok {
		m["linkageName:"] = v.(string)
	}
	if v, ok := m["file:"]; ok {
		m["file:"] = v.(ast.MDField)
	}
	if v, ok := m["line:"]; ok {
		m["line:"] = v.(int64)
	}
	if v, ok := m["type:"]; ok {
		m["type:"] = v.(ast.MDField)
	}
	if v, ok := m["isLocal:"]; ok {
		m["isLocal:"] = v.(bool)
	}
	if v, ok := m["isDefinition:"]; ok {
		m["isDefinition:"] = v.(bool)
	}
	if v, ok := m["scopeLine:"]; ok {
		m["scopeLine:"] = v.(int64)
	}
	if v, ok := m["containingType:"]; ok {
		m["containingType:"] = v.(ast.MDField)
	}
	if v, ok := m["virtuality:"]; ok {
		m["virtuality:"] = v.(ast.DwarfVirtuality)
	}
	if v, ok := m["virtualIndex:"]; ok {
		m["virtualIndex:"] = v.(int64)
	}
	if v, ok := m["thisAdjustment:"]; ok {
		m["thisAdjustment:"] = v.(int64)
	}
	if v, ok := m["flags:"]; ok {
		m["flags:"] = v.([]ast.DIFlag)
	}
	if v, ok := m["isOptimized:"]; ok {
		m["isOptimized:"] = v.(bool)
	}
	if v, ok := m["unit:"]; ok {
		m["unit:"] = v.(ast.MDField)
	}
	if v, ok := m["templateParams:"]; ok {
		m["templateParams:"] = v.(ast.MDField)
	}
	if v, ok := m["declaration:"]; ok {
		m["declaration:"] = v.(ast.MDField)
	}
	if v, ok := m["variables:"]; ok {
		m["variables:"] = v.(ast.MDField)
	}
	if v, ok := m["thrownTypes:"]; ok {
		m["thrownTypes:"] = v.(ast.MDField)
	}
	return node, nil
}

// NewDILexicalBlock returns a new DILexicalBlock specialized metadata node.
func NewDILexicalBlock(fields []*SpecializedMDField) (*ast.DILexicalBlock, error) {
	m := getMDFieldMap(fields)
	node := &ast.DILexicalBlock{}
	if v, ok := m["scope:"]; ok {
		m["scope:"] = v.(ast.MDField)
	}
	if v, ok := m["file:"]; ok {
		m["file:"] = v.(ast.MDField)
	}
	if v, ok := m["line:"]; ok {
		m["line:"] = v.(int64)
	}
	if v, ok := m["column:"]; ok {
		m["column:"] = v.(int64)
	}
	return node, nil
}

// NewDILexicalBlockFile returns a new DILexicalBlockFile specialized metadata
// node.
func NewDILexicalBlockFile(fields []*SpecializedMDField) (*ast.DILexicalBlockFile, error) {
	m := getMDFieldMap(fields)
	node := &ast.DILexicalBlockFile{}
	if v, ok := m["scope:"]; ok {
		m["scope:"] = v.(ast.MDField)
	}
	if v, ok := m["file:"]; ok {
		m["file:"] = v.(ast.MDField)
	}
	if v, ok := m["discriminator:"]; ok {
		m["discriminator:"] = v.(int64)
	}
	return node, nil
}

// NewDILocation returns a new DILocation specialized metadata node.
func NewDILocation(fields []*SpecializedMDField) (*ast.DILocation, error) {
	m := getMDFieldMap(fields)
	node := &ast.DILocation{}
	if v, ok := m["line:"]; ok {
		m["line:"] = v.(int64)
	}
	if v, ok := m["column:"]; ok {
		m["column:"] = v.(int64)
	}
	if v, ok := m["scope:"]; ok {
		m["scope:"] = v.(ast.MDField)
	}
	if v, ok := m["inlinedAt:"]; ok {
		m["inlinedAt:"] = v.(ast.MDField)
	}
	return node, nil
}

// NewDILocalVariable returns a new DILocalVariable specialized metadata node.
func NewDILocalVariable(fields []*SpecializedMDField) (*ast.DILocalVariable, error) {
	m := getMDFieldMap(fields)
	node := &ast.DILocalVariable{}
	if v, ok := m["scope:"]; ok {
		m["scope:"] = v.(ast.MDField)
	}
	if v, ok := m["name:"]; ok {
		m["name:"] = v.(string)
	}
	if v, ok := m["arg:"]; ok {
		m["arg:"] = v.(int64)
	}
	if v, ok := m["file:"]; ok {
		m["file:"] = v.(ast.MDField)
	}
	if v, ok := m["line:"]; ok {
		m["line:"] = v.(int64)
	}
	if v, ok := m["type:"]; ok {
		m["type:"] = v.(ast.MDField)
	}
	if v, ok := m["flags:"]; ok {
		m["flags:"] = v.([]ast.DIFlag)
	}
	if v, ok := m["align:"]; ok {
		m["align:"] = v.(int64)
	}
	return node, nil
}

// NewDIGlobalVariableExpression returns a new DIGlobalVariableExpression
// specialized metadata node.
func NewDIGlobalVariableExpression(fields []*SpecializedMDField) (*ast.DIGlobalVariableExpression, error) {
	m := getMDFieldMap(fields)
	node := &ast.DIGlobalVariableExpression{}
	if v, ok := m["var:"]; ok {
		m["var:"] = v.(ast.MDField)
	}
	if v, ok := m["expr:"]; ok {
		m["expr:"] = v.(ast.MDField)
	}
	return node, nil
}

// NewDIObjCProperty returns a new DIObjCProperty specialized metadata node.
func NewDIObjCProperty(fields []*SpecializedMDField) (*ast.DIObjCProperty, error) {
	m := getMDFieldMap(fields)
	node := &ast.DIObjCProperty{}
	if v, ok := m["name:"]; ok {
		m["name:"] = v.(string)
	}
	if v, ok := m["file:"]; ok {
		m["file:"] = v.(ast.MDField)
	}
	if v, ok := m["line:"]; ok {
		m["line:"] = v.(int64)
	}
	if v, ok := m["setter:"]; ok {
		m["setter:"] = v.(string)
	}
	if v, ok := m["getter:"]; ok {
		m["getter:"] = v.(string)
	}
	if v, ok := m["attributes:"]; ok {
		m["attributes:"] = v.(int64)
	}
	if v, ok := m["type:"]; ok {
		m["type:"] = v.(ast.MDField)
	}
	return node, nil
}

// NewDIImportedEntity returns a new DIImportedEntity specialized metadata node.
func NewDIImportedEntity(fields []*SpecializedMDField) (*ast.DIImportedEntity, error) {
	m := getMDFieldMap(fields)
	node := &ast.DIImportedEntity{}
	if v, ok := m["tag:"]; ok {
		m["tag:"] = v.(ast.DwarfTag)
	}
	if v, ok := m["scope:"]; ok {
		m["scope:"] = v.(ast.MDField)
	}
	if v, ok := m["entity:"]; ok {
		m["entity:"] = v.(ast.MDField)
	}
	if v, ok := m["file:"]; ok {
		m["file:"] = v.(ast.MDField)
	}
	if v, ok := m["line:"]; ok {
		m["line:"] = v.(int64)
	}
	if v, ok := m["name:"]; ok {
		m["name:"] = v.(string)
	}
	return node, nil
}

// NewDIMacro returns a new DIMacro specialized metadata node.
func NewDIMacro(fields []*SpecializedMDField) (*ast.DIMacro, error) {
	m := getMDFieldMap(fields)
	node := &ast.DIMacro{}
	if v, ok := m["type:"]; ok {
		m["type:"] = v.(ast.DwarfMacinfo)
	}
	if v, ok := m["line:"]; ok {
		m["line:"] = v.(int64)
	}
	if v, ok := m["name:"]; ok {
		m["name:"] = v.(string)
	}
	if v, ok := m["value:"]; ok {
		m["value:"] = v.(string)
	}
	return node, nil
}

// NewDIMacroFile returns a new DIMacroFile specialized metadata node.
func NewDIMacroFile(fields []*SpecializedMDField) (*ast.DIMacroFile, error) {
	m := getMDFieldMap(fields)
	node := &ast.DIMacroFile{}
	if v, ok := m["type:"]; ok {
		m["type:"] = v.(ast.DwarfMacinfo)
	}
	if v, ok := m["line:"]; ok {
		m["line:"] = v.(int64)
	}
	if v, ok := m["file:"]; ok {
		m["file:"] = v.(ast.MDField)
	}
	if v, ok := m["nodes:"]; ok {
		m["nodes:"] = v.(ast.MDField)
	}
	return node, nil
}

// NewGenericDINode returns a new GenericDINode specialized metadata node.
func NewGenericDINode(fields []*SpecializedMDField) (*ast.GenericDINode, error) {
	m := getMDFieldMap(fields)
	node := &ast.GenericDINode{}
	if v, ok := m["tag:"]; ok {
		m["tag:"] = v.(ast.DwarfTag)
	}
	if v, ok := m["header:"]; ok {
		m["header:"] = v.(string)
	}
	if v, ok := m["operands:"]; ok {
		m["operands:"] = v.([]ast.MDField)
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
