package irx

import (
	"fmt"
	"sort"

	"github.com/mewmew/l/asm/internal/ast"
	"github.com/mewmew/l/ir/constant"
	"github.com/mewmew/l/ir/metadata"
)

// resolveMetadataDefs resolves metadata definitions.
func (m *Module) resolveMetadataDefs() {
	// Index named metadata definitions.
	for name := range m.metadataName {
		m.namedMetadataDefs[name] = &metadata.NamedMetadataDef{
			Name: name,
		}
	}
	// Index metadata definitions.
	for id := range m.metadataID {
		m.metadataDefs[id] = &metadata.MetadataDef{
			ID: id,
		}
	}

	// Resolve named metadata definitions.
	for name, old := range m.metadataName {
		md := m.namedMetadataDefs[name]
		for i := range old.Nodes {
			node := m.irMetadataNode(old.Nodes[i])
			md.Nodes = append(md.Nodes, node)
		}
	}
	// Resolve named metadata definitions.
	for id, old := range m.metadataID {
		md := m.metadataDefs[id]
		md.Distinct = old.Distinct
		md.Node = m.irMDNode(old.Node)
	}

	// Add named metadata defintions to module.
	var names []string
	for name := range m.namedMetadataDefs {
		names = append(names, name)
	}
	sort.Strings(names)
	for _, name := range names {
		m.NamedMetadataDefs = append(m.NamedMetadataDefs, m.namedMetadataDefs[name])
	}
	// Add metadata defintions to module.
	var ids []string
	for id := range m.metadataDefs {
		ids = append(ids, id)
	}
	sort.Strings(ids)
	for _, id := range ids {
		m.MetadataDefs = append(m.MetadataDefs, m.metadataDefs[id])
	}
}

// irMetadataNode returns the LLVM IR metadata node corresponding to the given
// AST metadata node.
func (m *Module) irMetadataNode(old ast.MetadataNode) metadata.MetadataNode {
	switch old := old.(type) {
	case *ast.MetadataID:
		return m.metadataDefs[old.ID]
	case *ast.DIExpression:
		node := &metadata.DIExpression{}
		for i := range old.Fields {
			field := m.irDIExpressionField(old.Fields[i])
			node.Fields = append(node.Fields, field)
		}
		return node
	default:
		panic(fmt.Errorf("support for metadata node type %T not yet implemented", old))
	}
}

// irDIExpressionField returns the LLVM IR DIExpression field corresponding to
// the given AST DIExpression field.
func (m *Module) irDIExpressionField(old ast.DIExpressionField) metadata.DIExpressionField {
	switch old := old.(type) {
	case *ast.IntConst:
		return m.irIntConst(old)
	case ast.DwarfOp:
		return metadata.DwarfOp(old)
	default:
		panic(fmt.Errorf("support for DIExpression field type %T not yet implemented", old))
	}
}

// irMDNode returns the LLVM IR metadata node corresponding to the given AST
// metadata node.
func (m *Module) irMDNode(old ast.MDNode) metadata.MDNode {
	switch old := old.(type) {
	case *ast.MDTuple:
		return m.irMDTuple(old)
	case *ast.MetadataID:
		return m.metadataDefs[old.ID]
	case ast.SpecializedMDNode:
		return m.irSpecializedMDNode(old).(metadata.MDNode)
	default:
		panic(fmt.Errorf("support for metadata node type %T not yet implemented", old))
	}
}

// irMDTuple returns the LLVM IR metadata node tuple corresponding to the given
// AST metadata node tuple.
func (m *Module) irMDTuple(old *ast.MDTuple) *metadata.MDTuple {
	md := &metadata.MDTuple{}
	for i := range old.Fields {
		field := m.irMDField(old.Fields[i])
		md.Fields = append(md.Fields, field)
	}
	return md
}

// irMDField returns the LLVM IR metadata field corresponding to the given AST
// metadata field.
func (m *Module) irMDField(old ast.MDField) metadata.MDField {
	switch old := old.(type) {
	case *ast.NullConst:
		return &constant.NullConst{}
	case ast.Metadata:
		return m.irMetadata(old).(metadata.MDField)
	case ast.SpecializedMDNode:
		return m.irSpecializedMDNode(old).(metadata.MDField)
	default:
		panic(fmt.Errorf("support for metadata field type %T not yet implemented", old))
	}
}

// irMetadata returns the LLVM IR metadata corresponding to the given AST
// metadata.
func (m *Module) irMetadata(old ast.Metadata) metadata.Metadata {
	switch old := old.(type) {
	case *ast.TypeValue:
		return &metadata.Value{
			Type:  m.irType(old.Type),
			Value: m.irValue(old.Value),
		}
	case *ast.MDString:
		return m.irMDString(old)
	case *ast.MDTuple:
		return m.irMDTuple(old)
	case *ast.MetadataID:
		return m.metadataDefs[old.ID]
	default:
		panic(fmt.Errorf("support for metadata field type %T not yet implemented", old))
	}
}

// irMDString returns the LLVM IR metadata string corresponding to the given AST
// metadata string.
func (m *Module) irMDString(old *ast.MDString) *metadata.MDString {
	return &metadata.MDString{
		Value: old.Value,
	}
}

// irSpecializedMDNode returns the LLVM IR specialized metadata node
// corresponding to the given AST specialized metadata node.
func (m *Module) irSpecializedMDNode(old ast.SpecializedMDNode) metadata.SpecializedMDNode {
	switch old := old.(type) {
	case *ast.DICompileUnit:
		panic("support for specialized metadata node type *ast.DICompileUnit not yet implemented")
	case *ast.DIFile:
		panic("support for specialized metadata node type *ast.DIFile not yet implemented")
	case *ast.DIBasicType:
		panic("support for specialized metadata node type *ast.DIBasicType not yet implemented")
	case *ast.DISubroutineType:
		panic("support for specialized metadata node type *ast.DISubroutineType not yet implemented")
	case *ast.DIDerivedType:
		panic("support for specialized metadata node type *ast.DIDerivedType not yet implemented")
	case *ast.DICompositeType:
		panic("support for specialized metadata node type *ast.DICompositeType not yet implemented")
	case *ast.DISubrange:
		panic("support for specialized metadata node type *ast.DISubrange not yet implemented")
	case *ast.DIEnumerator:
		panic("support for specialized metadata node type *ast.DIEnumerator not yet implemented")
	case *ast.DITemplateTypeParameter:
		panic("support for specialized metadata node type *ast.DITemplateTypeParameter not yet implemented")
	case *ast.DITemplateValueParameter:
		panic("support for specialized metadata node type *ast.DITemplateValueParameter not yet implemented")
	case *ast.DIModule:
		panic("support for specialized metadata node type *ast.DIModule not yet implemented")
	case *ast.DINamespace:
		panic("support for specialized metadata node type *ast.DINamespace not yet implemented")
	case *ast.DIGlobalVariable:
		panic("support for specialized metadata node type *ast.DIGlobalVariable not yet implemented")
	case *ast.DISubprogram:
		panic("support for specialized metadata node type *ast.DISubprogram not yet implemented")
	case *ast.DILexicalBlock:
		panic("support for specialized metadata node type *ast.DILexicalBlock not yet implemented")
	case *ast.DILexicalBlockFile:
		panic("support for specialized metadata node type *ast.DILexicalBlockFile not yet implemented")
	case *ast.DILocation:
		panic("support for specialized metadata node type *ast.DILocation not yet implemented")
	case *ast.DILocalVariable:
		panic("support for specialized metadata node type *ast.DILocalVariable not yet implemented")
	case *ast.DIExpression:
		panic("support for specialized metadata node type *ast.DIExpression not yet implemented")
	case *ast.DIGlobalVariableExpression:
		panic("support for specialized metadata node type *ast.DIGlobalVariableExpression not yet implemented")
	case *ast.DIObjCProperty:
		panic("support for specialized metadata node type *ast.DIObjCProperty not yet implemented")
	case *ast.DIImportedEntity:
		panic("support for specialized metadata node type *ast.DIImportedEntity not yet implemented")
	case *ast.DIMacro:
		panic("support for specialized metadata node type *ast.DIMacro not yet implemented")
	case *ast.DIMacroFile:
		panic("support for specialized metadata node type *ast.DIMacroFile not yet implemented")
	case *ast.GenericDINode:
		panic("support for specialized metadata node type *ast.GenericDINode not yet implemented")
	default:
		panic(fmt.Errorf("support for specialized metadata node type %T not yet implemented", old))
	}
}
