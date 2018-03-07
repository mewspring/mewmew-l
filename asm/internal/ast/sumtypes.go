package ast

import "fmt"

// IsMDField ensures that only metadata fields can be assigned to the
// ast.MDField interface.
func (*NullConst) IsMDField() {}

// Metadata
func (*TypeValue) IsMDField() {}

//func (*MDString) IsMDField()   {}
//func (*MDTuple) IsMDField()    {}
func (*MetadataID) IsMDField() {}

// SpecializedMDNode
//func (*DICompileUnit) IsMDField()              {}
//func (*DIFile) IsMDField()                     {}
//func (*DIBasicType) IsMDField()                {}
//func (*DISubroutineType) IsMDField()           {}
//func (*DIDerivedType) IsMDField()              {}
//func (*DICompositeType) IsMDField()            {}
//func (*DISubrange) IsMDField()                 {}
//func (*DIEnumerator) IsMDField()               {}
//func (*DITemplateTypeParameter) IsMDField()    {}
//func (*DITemplateValueParameter) IsMDField()   {}
//func (*DIModule) IsMDField()                   {}
//func (*DINamespace) IsMDField()                {}
//func (*DIGlobalVariable) IsMDField()           {}
//func (*DISubprogram) IsMDField()               {}
//func (*DILexicalBlock) IsMDField()             {}
//func (*DILexicalBlockFile) IsMDField()         {}
//func (*DILocation) IsMDField()                 {}
//func (*DILocalVariable) IsMDField()            {}
//func (*DIExpression) IsMDField()               {}
//func (*DIGlobalVariableExpression) IsMDField() {}
//func (*DIObjCProperty) IsMDField()             {}
//func (*DIImportedEntity) IsMDField()           {}
//func (*DIMacro) IsMDField()                    {}
//func (*DIMacroFile) IsMDField()                {}
//func (*GenericDINode) IsMDField()              {}

// ### [ Helper functions ] ####################################################

// IsMetadata ensures that only metadata can be assigned to the ast.Metadata
// interface.
func (*TypeValue) IsMetadata() {}

//func (*MDString) IsMetadata()   {}
//func (*MDTuple) IsMetadata()    {}
func (*MetadataID) IsMetadata() {}

// SpecializedMDNode
//func (*DICompileUnit) IsMetadata()              {}
//func (*DIFile) IsMetadata()                     {}
//func (*DIBasicType) IsMetadata()                {}
//func (*DISubroutineType) IsMetadata()           {}
//func (*DIDerivedType) IsMetadata()              {}
//func (*DICompositeType) IsMetadata()            {}
//func (*DISubrange) IsMetadata()                 {}
//func (*DIEnumerator) IsMetadata()               {}
//func (*DITemplateTypeParameter) IsMetadata()    {}
//func (*DITemplateValueParameter) IsMetadata()   {}
//func (*DIModule) IsMetadata()                   {}
//func (*DINamespace) IsMetadata()                {}
//func (*DIGlobalVariable) IsMetadata()           {}
//func (*DISubprogram) IsMetadata()               {}
//func (*DILexicalBlock) IsMetadata()             {}
//func (*DILexicalBlockFile) IsMetadata()         {}
//func (*DILocation) IsMetadata()                 {}
//func (*DILocalVariable) IsMetadata()            {}
//func (*DIExpression) IsMetadata()               {}
//func (*DIGlobalVariableExpression) IsMetadata() {}
//func (*DIObjCProperty) IsMetadata()             {}
//func (*DIImportedEntity) IsMetadata()           {}
//func (*DIMacro) IsMetadata()                    {}
//func (*DIMacroFile) IsMetadata()                {}
//func (*GenericDINode) IsMetadata()              {}

// --- [ Metadata Node ] -------------------------------------------------------

// IsMDNode ensures that only metadata nodes can be assigned to the ast.MDNode
// interface.
//func (*MDTuple) IsMDNode()    {}
func (*MetadataID) IsMDNode() {}

// SpecializedMDNode
//func (*DICompileUnit) IsMDNode()              {}
//func (*DIFile) IsMDNode()                     {}
//func (*DIBasicType) IsMDNode()                {}
//func (*DISubroutineType) IsMDNode()           {}
//func (*DIDerivedType) IsMDNode()              {}
//func (*DICompositeType) IsMDNode()            {}
//func (*DISubrange) IsMDNode()                 {}
//func (*DIEnumerator) IsMDNode()               {}
//func (*DITemplateTypeParameter) IsMDNode()    {}
//func (*DITemplateValueParameter) IsMDNode()   {}
//func (*DIModule) IsMDNode()                   {}
//func (*DINamespace) IsMDNode()                {}
//func (*DIGlobalVariable) IsMDNode()           {}
//func (*DISubprogram) IsMDNode()               {}
//func (*DILexicalBlock) IsMDNode()             {}
//func (*DILexicalBlockFile) IsMDNode()         {}
//func (*DILocation) IsMDNode()                 {}
//func (*DILocalVariable) IsMDNode()            {}
//func (*DIExpression) IsMDNode()               {}
//func (*DIGlobalVariableExpression) IsMDNode() {}
//func (*DIObjCProperty) IsMDNode()             {}
//func (*DIImportedEntity) IsMDNode()           {}
//func (*DIMacro) IsMDNode()                    {}
//func (*DIMacroFile) IsMDNode()                {}
//func (*GenericDINode) IsMDNode()              {}

// IsDIExpressionField ensures that only DIExpression fields can be assigned to
// the ast.DIExpressionField interface.
func (*IntConst) IsDIExpressionField() {}

//func (DwarfOp) IsDIExpressionField()   {}

// ___ [ Helpers ] _____________________________________________________________

// IntOrMDField is an integer or metadata field.
type IntOrMDField interface {
	fmt.Stringer
	// IsIntOrMDField ensures that only intergers and metadata fields can be
	// assigned to the ast.IntOrMDField interface.
	IsIntOrMDField()
}

// ### [ Helper functions ] ####################################################

// IsIntOrMDField ensures that only intergers and metadata fields can be
// assigned to the ast.IntOrMDField interface.
func (*IntConst) IsIntOrMDField() {}

// MDField
func (*NullConst) IsIntOrMDField() {}

// Metadata
func (*TypeValue) IsIntOrMDField() {}

//func (*MDString) IsIntOrMDField()   {}
//func (*MDTuple) IsIntOrMDField()    {}
func (*MetadataID) IsIntOrMDField() {}

// SpecializedMDNode
//func (*DICompileUnit) IsIntOrMDField()              {}
//func (*DIFile) IsIntOrMDField()                     {}
//func (*DIBasicType) IsIntOrMDField()                {}
//func (*DISubroutineType) IsIntOrMDField()           {}
//func (*DIDerivedType) IsIntOrMDField()              {}
//func (*DICompositeType) IsIntOrMDField()            {}
//func (*DISubrange) IsIntOrMDField()                 {}
//func (*DIEnumerator) IsIntOrMDField()               {}
//func (*DITemplateTypeParameter) IsIntOrMDField()    {}
//func (*DITemplateValueParameter) IsIntOrMDField()   {}
//func (*DIModule) IsIntOrMDField()                   {}
//func (*DINamespace) IsIntOrMDField()                {}
//func (*DIGlobalVariable) IsIntOrMDField()           {}
//func (*DISubprogram) IsIntOrMDField()               {}
//func (*DILexicalBlock) IsIntOrMDField()             {}
//func (*DILexicalBlockFile) IsIntOrMDField()         {}
//func (*DILocation) IsIntOrMDField()                 {}
//func (*DILocalVariable) IsIntOrMDField()            {}
//func (*DIExpression) IsIntOrMDField()               {}
//func (*DIGlobalVariableExpression) IsIntOrMDField() {}
//func (*DIObjCProperty) IsIntOrMDField()             {}
//func (*DIImportedEntity) IsIntOrMDField()           {}
//func (*DIMacro) IsIntOrMDField()                    {}
//func (*DIMacroFile) IsIntOrMDField()                {}
//func (*GenericDINode) IsIntOrMDField()              {}

// IsGlobalAttribute ensures that only global attributes can be assigned to the
// ast.GlobalAttribute interface.
//func (*MetadataAttachment) IsGlobalAttribute() {}

// IsMetadataNode ensures that only netadata nodes can be assigned to the
// ast.MetadataNode interface.
func (*MetadataID) IsMetadataNode() {}

//func (*DIExpression) IsMetadataNode() {}

// ___ [ Function Attribute ] __________________________________________________

// IsFuncAttribute ensures that only function attributes can be assigned to the
// ast.FuncAttribute interface.
func (*AttrGroupID) IsFuncAttribute() {}
