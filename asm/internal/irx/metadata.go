package irx

import (
	"fmt"

	"github.com/mewmew/l/asm/internal/ast"
	"github.com/mewmew/l/ir/constant"
	"github.com/mewmew/l/ir/metadata"
	"github.com/mewmew/l/ll"
	"github.com/rickypai/natsort"
)

// indexMetadataDefs indexes metadata definitions.
func (m *Module) indexMetadataDefs() {
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
}

// resolveMetadataDefs resolves metadata definitions.
func (m *Module) resolveMetadataDefs() {
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
	natsort.Strings(names)
	for _, name := range names {
		m.NamedMetadataDefs = append(m.NamedMetadataDefs, m.namedMetadataDefs[name])
	}
	// Add metadata defintions to module.
	var ids []string
	for id := range m.metadataDefs {
		ids = append(ids, id)
	}
	natsort.Strings(ids)
	for _, id := range ids {
		m.MetadataDefs = append(m.MetadataDefs, m.metadataDefs[id])
	}
}

// irMetadataNode returns the LLVM IR metadata node corresponding to the given
// AST metadata node.
func (m *Module) irMetadataNode(old metadata.MetadataNode) metadata.MetadataNode {
	switch old := old.(type) {
	case *ast.MetadataID:
		return m.metadataDefs[old.ID]
	case *metadata.DIExpression:
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

// irDIExpressionFields returns the LLVM IR DIExpression fields corresponding to
// the given AST DIExpression fields.
func (m *Module) irDIExpressionFields(old []metadata.DIExpressionField) []metadata.DIExpressionField {
	var fields []metadata.DIExpressionField
	for i := range old {
		field := m.irDIExpressionField(old[i])
		fields = append(fields, field)
	}
	return fields
}

// irDIExpressionField returns the LLVM IR DIExpression field corresponding to
// the given AST DIExpression field.
func (m *Module) irDIExpressionField(old metadata.DIExpressionField) metadata.DIExpressionField {
	switch old := old.(type) {
	case *ast.IntConst:
		return m.irIntConst(old)
	case ll.DwarfOp:
		return old
	default:
		panic(fmt.Errorf("support for DIExpression field type %T not yet implemented", old))
	}
}

// irMDNode returns the LLVM IR metadata node corresponding to the given AST
// metadata node.
func (m *Module) irMDNode(old metadata.MDNode) metadata.MDNode {
	switch old := old.(type) {
	case *metadata.MDTuple:
		return m.irMDTuple(old)
	case *ast.MetadataID:
		return m.metadataDefs[old.ID]
	case metadata.SpecializedMDNode:
		return m.irSpecializedMDNode(old).(metadata.MDNode)
	default:
		panic(fmt.Errorf("support for metadata node type %T not yet implemented", old))
	}
}

// irMDTuple returns the LLVM IR metadata node tuple corresponding to the given
// AST metadata node tuple.
func (m *Module) irMDTuple(old *metadata.MDTuple) *metadata.MDTuple {
	md := &metadata.MDTuple{}
	for i := range old.Fields {
		field := m.irMDField(old.Fields[i])
		md.Fields = append(md.Fields, field)
	}
	return md
}

// irMDFields returns the LLVM IR metadata fields corresponding to the given AST
// metadata fields.
func (m *Module) irMDFields(old []metadata.MDField) []metadata.MDField {
	var fields []metadata.MDField
	for i := range old {
		field := m.irMDField(old[i])
		fields = append(fields, field)
	}
	return fields
}

// irMDField returns the LLVM IR metadata field corresponding to the given AST
// metadata field.
func (m *Module) irMDField(old metadata.MDField) metadata.MDField {
	switch old := old.(type) {
	case *constant.NullConst:
		return &constant.NullConst{}
	case metadata.Metadata:
		return m.irMetadata(old).(metadata.MDField)
	case metadata.SpecializedMDNode:
		return m.irSpecializedMDNode(old).(metadata.MDField)
	case nil:
		return nil
	default:
		panic(fmt.Errorf("support for metadata field type %T not yet implemented", old))
	}
}

// irIntOrMDField returns the LLVM IR integer or metadata field corresponding to
// the given AST integer or metadata field.
func (m *Module) irIntOrMDField(old ast.IntOrMDField) metadata.IntOrMDField {
	switch old := old.(type) {
	case *ast.IntConst:
		return m.irIntConst(old)
	case metadata.MDField:
		return m.irMDField(old).(metadata.IntOrMDField)
	default:
		panic(fmt.Errorf("support for integer or metadata field type %T not yet implemented", old))
	}
}

// irMetadata returns the LLVM IR metadata corresponding to the given AST
// metadata.
func (m *Module) irMetadata(old metadata.Metadata) metadata.Metadata {
	switch old := old.(type) {
	case *ast.TypeValue:
		return &metadata.Value{
			Type:  m.irType(old.Typ),
			Value: m.irValue(old.Value),
		}
	case *metadata.MDString:
		return m.irMDString(old)
	case *metadata.MDTuple:
		return m.irMDTuple(old)
	case *ast.MetadataID:
		return m.metadataDefs[old.ID]
	default:
		panic(fmt.Errorf("support for metadata field type %T not yet implemented", old))
	}
}

// irMDString returns the LLVM IR metadata string corresponding to the given AST
// metadata string.
func (m *Module) irMDString(old *metadata.MDString) *metadata.MDString {
	return &metadata.MDString{
		Value: old.Value,
	}
}

// irSpecializedMDNode returns the LLVM IR specialized metadata node
// corresponding to the given AST specialized metadata node.
func (m *Module) irSpecializedMDNode(old metadata.SpecializedMDNode) metadata.SpecializedMDNode {
	switch old := old.(type) {
	case *metadata.DICompileUnit:
		return &metadata.DICompileUnit{
			Language:              old.Language,
			File:                  m.irMDField(old.File),
			Producer:              old.Producer,
			IsOptimized:           old.IsOptimized,
			Flags:                 old.Flags,
			RuntimeVersion:        old.RuntimeVersion,
			SplitDebugFilename:    old.SplitDebugFilename,
			EmissionKind:          old.EmissionKind,
			Enums:                 m.irMDField(old.Enums),
			RetainedTypes:         m.irMDField(old.RetainedTypes),
			Globals:               m.irMDField(old.Globals),
			Imports:               m.irMDField(old.Imports),
			Macros:                m.irMDField(old.Macros),
			DwoID:                 old.DwoID,
			SplitDebugInlining:    old.SplitDebugInlining,
			DebugInfoForProfiling: old.DebugInfoForProfiling,
			GnuPubnames:           old.GnuPubnames,
		}
	case *metadata.DIFile:
		return &metadata.DIFile{
			Filename:     old.Filename,
			Directory:    old.Directory,
			Checksumkind: old.Checksumkind,
			Checksum:     old.Checksum,
		}
	case *metadata.DIBasicType:
		return &metadata.DIBasicType{
			Tag:      old.Tag,
			Name:     old.Name,
			Size:     old.Size,
			Align:    old.Align,
			Encoding: old.Encoding,
		}
	case *metadata.DISubroutineType:
		return &metadata.DISubroutineType{
			Flags: old.Flags,
			CC:    old.CC,
			Types: m.irMDField(old.Types),
		}
	case *metadata.DIDerivedType:
		return &metadata.DIDerivedType{
			Tag:               old.Tag,
			Name:              old.Name,
			Scope:             m.irMDField(old.Scope),
			File:              m.irMDField(old.File),
			Line:              old.Line,
			BaseType:          m.irMDField(old.BaseType),
			Size:              old.Size,
			Align:             old.Align,
			Offset:            old.Offset,
			Flags:             old.Flags,
			ExtraData:         m.irMDField(old.ExtraData),
			DwarfAddressSpace: old.DwarfAddressSpace,
		}
	case *metadata.DICompositeType:
		return &metadata.DICompositeType{
			Tag:            old.Tag,
			Name:           old.Name,
			Scope:          m.irMDField(old.Scope),
			File:           m.irMDField(old.File),
			Line:           old.Line,
			BaseType:       m.irMDField(old.BaseType),
			Size:           old.Size,
			Align:          old.Align,
			Offset:         old.Offset,
			Flags:          old.Flags,
			Elements:       m.irMDField(old.Elements),
			RuntimeLang:    old.RuntimeLang,
			VtableHolder:   m.irMDField(old.VtableHolder),
			TemplateParams: m.irMDField(old.TemplateParams),
			Identifier:     old.Identifier,
			Discriminator:  m.irMDField(old.Discriminator),
		}
	case *metadata.DISubrange:
		return &metadata.DISubrange{
			Count:      m.irIntOrMDField(old.Count),
			LowerBound: old.LowerBound,
		}
	case *metadata.DIEnumerator:
		return &metadata.DIEnumerator{
			Name:       old.Name,
			Value:      old.Value,
			IsUnsigned: old.IsUnsigned,
		}
	case *metadata.DITemplateTypeParameter:
		return &metadata.DITemplateTypeParameter{
			Name: old.Name,
			Type: m.irMDField(old.Type),
		}
	case *metadata.DITemplateValueParameter:
		return &metadata.DITemplateValueParameter{
			Tag:   old.Tag,
			Name:  old.Name,
			Type:  m.irMDField(old.Type),
			Value: m.irMDField(old.Value),
		}
	case *metadata.DIModule:
		return &metadata.DIModule{
			Scope:        m.irMDField(old.Scope),
			Name:         old.Name,
			ConfigMacros: old.ConfigMacros,
			IncludePath:  old.IncludePath,
			Isysroot:     old.Isysroot,
		}
	case *metadata.DINamespace:
		return &metadata.DINamespace{
			Scope:         m.irMDField(old.Scope),
			Name:          old.Name,
			ExportSymbols: old.ExportSymbols,
		}
	case *metadata.DIGlobalVariable:
		return &metadata.DIGlobalVariable{
			Name:         old.Name,
			Scope:        m.irMDField(old.Scope),
			LinkageName:  old.LinkageName,
			File:         m.irMDField(old.File),
			Line:         old.Line,
			Type:         m.irMDField(old.Type),
			IsLocal:      old.IsLocal,
			IsDefinition: old.IsDefinition,
			Declaration:  m.irMDField(old.Declaration),
			Align:        old.Align,
		}
	case *metadata.DISubprogram:
		return &metadata.DISubprogram{
			Name:           old.Name,
			Scope:          m.irMDField(old.Scope),
			LinkageName:    old.LinkageName,
			File:           m.irMDField(old.File),
			Line:           old.Line,
			Type:           m.irMDField(old.Type),
			IsLocal:        old.IsLocal,
			IsDefinition:   old.IsDefinition,
			ScopeLine:      old.ScopeLine,
			ContainingType: m.irMDField(old.ContainingType),
			Virtuality:     old.Virtuality,
			VirtualIndex:   old.VirtualIndex,
			ThisAdjustment: old.ThisAdjustment,
			Flags:          old.Flags,
			IsOptimized:    old.IsOptimized,
			Unit:           m.irMDField(old.Unit),
			TemplateParams: m.irMDField(old.TemplateParams),
			Declaration:    m.irMDField(old.Declaration),
			Variables:      m.irMDField(old.Variables),
			ThrownTypes:    m.irMDField(old.ThrownTypes),
		}
	case *metadata.DILexicalBlock:
		return &metadata.DILexicalBlock{
			Scope:  m.irMDField(old.Scope),
			File:   m.irMDField(old.File),
			Line:   old.Line,
			Column: old.Column,
		}
	case *metadata.DILexicalBlockFile:
		return &metadata.DILexicalBlockFile{
			Scope:         m.irMDField(old.Scope),
			File:          m.irMDField(old.File),
			Discriminator: old.Discriminator,
		}
	case *metadata.DILocation:
		return &metadata.DILocation{
			Line:      old.Line,
			Column:    old.Column,
			Scope:     m.irMDField(old.Scope),
			InlinedAt: m.irMDField(old.InlinedAt),
		}
	case *metadata.DILocalVariable:
		return &metadata.DILocalVariable{
			Name:  old.Name,
			Arg:   old.Arg,
			Scope: m.irMDField(old.Scope),
			File:  m.irMDField(old.File),
			Line:  old.Line,
			Type:  m.irMDField(old.Type),
			Flags: old.Flags,
			Align: old.Align,
		}
	case *metadata.DIExpression:
		return &metadata.DIExpression{
			Fields: m.irDIExpressionFields(old.Fields),
		}
	case *metadata.DIGlobalVariableExpression:
		return &metadata.DIGlobalVariableExpression{
			Var:  m.irMDField(old.Var),
			Expr: m.irMDField(old.Expr),
		}
	case *metadata.DIObjCProperty:
		return &metadata.DIObjCProperty{
			Name:       old.Name,
			File:       m.irMDField(old.File),
			Line:       old.Line,
			Setter:     old.Setter,
			Getter:     old.Getter,
			Attributes: old.Attributes,
			Type:       m.irMDField(old.Type),
		}
	case *metadata.DIImportedEntity:
		return &metadata.DIImportedEntity{
			Tag:    old.Tag,
			Scope:  m.irMDField(old.Scope),
			Entity: m.irMDField(old.Entity),
			File:   m.irMDField(old.File),
			Line:   old.Line,
			Name:   old.Name,
		}
	case *metadata.DIMacro:
		return &metadata.DIMacro{
			Type:  old.Type,
			Line:  old.Line,
			Name:  old.Name,
			Value: old.Value,
		}
	case *metadata.DIMacroFile:
		return &metadata.DIMacroFile{
			Type:  old.Type,
			Line:  old.Line,
			File:  m.irMDField(old.File),
			Nodes: m.irMDField(old.Nodes),
		}
	case *metadata.GenericDINode:
		return &metadata.GenericDINode{
			Tag:      old.Tag,
			Header:   old.Header,
			Operands: m.irMDFields(old.Operands),
		}
	default:
		panic(fmt.Errorf("support for specialized metadata node type %T not yet implemented", old))
	}
}

// irMetadataAttachment returns the LLVM IR metadata attachment corresponding to
// the given AST metadata attachment.
func (m *Module) irMetadataAttachment(old *metadata.MetadataAttachment) *metadata.MetadataAttachment {
	return &metadata.MetadataAttachment{
		Name: old.Name,
		Node: m.irMDNode(old.Node),
	}
}
