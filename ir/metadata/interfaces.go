package metadata

import "fmt"

// MetadataNode is a metadata node.
type MetadataNode interface {
	fmt.Stringer
	// isMetadataNode ensures that only metadata nodes can be assigned to the
	// metadata.MDNode interface.
	isMetadataNode()
}

// isMetadataNode ensures that only metadata nodes can be assigned to the
// metadata.MDNode interface.
func (*MetadataDef) isMetadataNode()  {}
func (*DIExpression) isMetadataNode() {}

// MDField is a metadata field.
type MDField interface {
	fmt.Stringer
	// IsMDField ensures that only metadata fields can be assigned to the
	// metadata.MDField interface.
	IsMDField()
}

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

// --- [ Specialized Metadata Nodes ] ------------------------------------------

// SpecializedMDNode is a specialized metadata node.
type SpecializedMDNode interface {
	fmt.Stringer
	// isSpecializedMDNode ensures that only specialized metadata nodes can be
	// assigned to the metadata.SpecializedMDNode interface.
	isSpecializedMDNode()
}

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

// DIExpressionField is a DIExpression field.
type DIExpressionField interface {
	fmt.Stringer
	// IsDIExpressionField ensures that only DIExpression fields can be assigned
	// to the metadata.DIExpressionField interface.
	IsDIExpressionField()
}

// IntOrMDField is an integer or metadata field.
type IntOrMDField interface {
	fmt.Stringer
	// IsIntOrMDField ensures that only intergers and metadata fields can be
	// assigned to the metadata.IntOrMDField interface.
	IsIntOrMDField()
}

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
