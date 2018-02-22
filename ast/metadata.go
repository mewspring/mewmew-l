package ast

import "fmt"

// === [ Metadata Nodes and Metadata Strings ] =================================

// --- [ Metadata Tuple ] ------------------------------------------------------

type MDTuple struct {
	Elems []MDElement
}

type MDElement interface {
	isMDElement()
}

type MDNull struct{}

func (MDNull) isMDElement() {}

// Metadata
func (MDTypeValue) isMDElement() {}
func (MDString) isMDElement()    {}
func (MDTuple) isMDElement()     {}
func (MetadataID) isMDElement()  {}

// SpecializedMDNode
func (DICompileUnit) isMDElement()              {}
func (DIFile) isMDElement()                     {}
func (DIBasicType) isMDElement()                {}
func (DISubroutineType) isMDElement()           {}
func (DIDerivedType) isMDElement()              {}
func (DICompositeType) isMDElement()            {}
func (DISubrange) isMDElement()                 {}
func (DIEnumerator) isMDElement()               {}
func (DITemplateTypeParameter) isMDElement()    {}
func (DITemplateValueParameter) isMDElement()   {}
func (DIModule) isMDElement()                   {}
func (DINamespace) isMDElement()                {}
func (DIGlobalVariable) isMDElement()           {}
func (DISubprogram) isMDElement()               {}
func (DILexicalBlock) isMDElement()             {}
func (DILexicalBlockFile) isMDElement()         {}
func (DILocation) isMDElement()                 {}
func (DILocalVariable) isMDElement()            {}
func (DIExpression) isMDElement()               {}
func (DIGlobalVariableExpression) isMDElement() {}
func (DIObjCProperty) isMDElement()             {}
func (DIImportedEntity) isMDElement()           {}
func (DIMacro) isMDElement()                    {}
func (DIMacroFile) isMDElement()                {}
func (GenericDINode) isMDElement()              {}

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

type DICompileUnit struct{}

// ~~~ [ DIFile ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

type DIFile struct{}

// ~~~ [ DIBasicType ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

type DIBasicType struct{}

// ~~~ [ DISubroutineType ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

type DISubroutineType struct{}

// ~~~ [ DIDerivedType ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

type DIDerivedType struct{}

// ~~~ [ DICompositeType ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

type DICompositeType struct{}

// ~~~ [ DISubrange ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

type DISubrange struct{}

// ~~~ [ DIEnumerator ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

type DIEnumerator struct{}

// ~~~ [ DITemplateTypeParameter ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

type DITemplateTypeParameter struct{}

// ~~~ [ DITemplateValueParameter ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

type DITemplateValueParameter struct{}

// ~~~ [ DIModule ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

type DIModule struct{}

// ~~~ [ DINamespace ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

type DINamespace struct{}

// ~~~ [ DIGlobalVariable ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

type DIGlobalVariable struct{}

// ~~~ [ DISubprogram ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

type DISubprogram struct{}

// ~~~ [ DILexicalBlock ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

type DILexicalBlock struct{}

// ~~~ [ DILexicalBlockFile ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

type DILexicalBlockFile struct{}

// ~~~ [ DILocation ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

type DILocation struct{}

// ~~~ [ DILocalVariable ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

type DILocalVariable struct{}

// ~~~ [ DIExpression ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

type DIExpression struct{}

// ~~~ [ DIGlobalVariableExpression ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

type DIGlobalVariableExpression struct{}

// ~~~ [ DIObjCProperty ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

type DIObjCProperty struct{}

// ~~~ [ DIImportedEntity ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

type DIImportedEntity struct{}

// ~~~ [ DIMacro ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

type DIMacro struct{}

// ~~~ [ DIMacroFile ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

type DIMacroFile struct{}

// ~~~ [ GenericDINode ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

type GenericDINode struct{}

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
