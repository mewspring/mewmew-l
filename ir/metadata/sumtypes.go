package metadata

import "fmt"

// MetadataNode is a metadata node.
type MetadataNode interface {
	fmt.Stringer
	// IsMetadataNode ensures that only metadata nodes can be assigned to the
	// metadata.MDNode interface.
	IsMetadataNode()
}

// IsMetadataNode ensures that only metadata nodes can be assigned to the
// metadata.MDNode interface.
func (*MetadataDef) IsMetadataNode()  {}
func (*DIExpression) IsMetadataNode() {}

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
	// IsMetadata ensures that only metadata can be assigned to the
	// metadata.Metadata interface.
	IsMetadata()
}

// ### [ Helper functions ] ####################################################

// IsMetadata ensures that only metadata can be assigned to the
// metadata.Metadata interface.
func (*Value) IsMetadata()       {}
func (*MDString) IsMetadata()    {}
func (*MDTuple) IsMetadata()     {}
func (*MetadataDef) IsMetadata() {}

// SpecializedMDNode
func (*DICompileUnit) IsMetadata()              {}
func (*DIFile) IsMetadata()                     {}
func (*DIBasicType) IsMetadata()                {}
func (*DISubroutineType) IsMetadata()           {}
func (*DIDerivedType) IsMetadata()              {}
func (*DICompositeType) IsMetadata()            {}
func (*DISubrange) IsMetadata()                 {}
func (*DIEnumerator) IsMetadata()               {}
func (*DITemplateTypeParameter) IsMetadata()    {}
func (*DITemplateValueParameter) IsMetadata()   {}
func (*DIModule) IsMetadata()                   {}
func (*DINamespace) IsMetadata()                {}
func (*DIGlobalVariable) IsMetadata()           {}
func (*DISubprogram) IsMetadata()               {}
func (*DILexicalBlock) IsMetadata()             {}
func (*DILexicalBlockFile) IsMetadata()         {}
func (*DILocation) IsMetadata()                 {}
func (*DILocalVariable) IsMetadata()            {}
func (*DIExpression) IsMetadata()               {}
func (*DIGlobalVariableExpression) IsMetadata() {}
func (*DIObjCProperty) IsMetadata()             {}
func (*DIImportedEntity) IsMetadata()           {}
func (*DIMacro) IsMetadata()                    {}
func (*DIMacroFile) IsMetadata()                {}
func (*GenericDINode) IsMetadata()              {}

// MDNode is a metadata node.
type MDNode interface {
	fmt.Stringer
	// IsMDNode ensures that only metadata nodes can be assigned to the
	// metadata.MDNode interface.
	IsMDNode()
}

// IsMDNode ensures that only metadata nodes can be assigned to the
// metadata.MDNode interface.
func (*MDTuple) IsMDNode()     {}
func (*MetadataDef) IsMDNode() {}

// SpecializedMDNode
func (*DICompileUnit) IsMDNode()              {}
func (*DIFile) IsMDNode()                     {}
func (*DIBasicType) IsMDNode()                {}
func (*DISubroutineType) IsMDNode()           {}
func (*DIDerivedType) IsMDNode()              {}
func (*DICompositeType) IsMDNode()            {}
func (*DISubrange) IsMDNode()                 {}
func (*DIEnumerator) IsMDNode()               {}
func (*DITemplateTypeParameter) IsMDNode()    {}
func (*DITemplateValueParameter) IsMDNode()   {}
func (*DIModule) IsMDNode()                   {}
func (*DINamespace) IsMDNode()                {}
func (*DIGlobalVariable) IsMDNode()           {}
func (*DISubprogram) IsMDNode()               {}
func (*DILexicalBlock) IsMDNode()             {}
func (*DILexicalBlockFile) IsMDNode()         {}
func (*DILocation) IsMDNode()                 {}
func (*DILocalVariable) IsMDNode()            {}
func (*DIExpression) IsMDNode()               {}
func (*DIGlobalVariableExpression) IsMDNode() {}
func (*DIObjCProperty) IsMDNode()             {}
func (*DIImportedEntity) IsMDNode()           {}
func (*DIMacro) IsMDNode()                    {}
func (*DIMacroFile) IsMDNode()                {}
func (*GenericDINode) IsMDNode()              {}

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

// IsDIExpressionField ensures that only DIExpression fields can be assigned to
// the metadata.DIExpressionField interface.
//
// *IntConst

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

// IsGlobalAttribute ensures that only global attributes can be assigned to the
// ll.GlobalAttribute interface.
func (*MetadataAttachment) IsGlobalAttribute() {}

// IsTopLevelEntity ensures that only top-level entities can be assigned to the
// ast.TopLevelEntity interface.
func (*NamedMetadataDef) IsTopLevelEntity() {}
func (*MetadataDef) IsTopLevelEntity()      {}
