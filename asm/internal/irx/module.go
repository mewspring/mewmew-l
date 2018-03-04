package irx

import (
	"fmt"
	"sort"

	"github.com/mewmew/l/asm/internal/ast"
	"github.com/mewmew/l/ir"
)

// Translate translates the AST of the given module to an equivalent LLVM IR
// module.
func Translate(module *ast.Module) (*ir.Module, error) {
	m := NewModule()
	// Create maps from identifier to definition.
	m.indexIdents(module.Entities)
	// Resolve type definitions.
	m.resolveTypeDefs()
	var keys []string
	for name := range m.types {
		keys = append(keys, name)
	}
	sort.Strings(keys)
	for _, key := range keys {
		m.TypeDefs = append(m.TypeDefs, m.types[key])
	}
	return m.Module, nil
}

// indexIdents creates maps from identifier to definition.
func (m *Module) indexIdents(entities []ast.TopLevelEntity) {
	for _, entity := range entities {
		switch entity := entity.(type) {
		// Type identifiers.
		case *ast.TypeDef:
			name := entity.Name.Ident
			if prev, ok := m.typeIdent[name]; ok {
				panic(fmt.Errorf("type identifier %q already present; prev `%v`, new `%v`", name, prev, entity))
			}
			m.typeIdent[name] = entity
		// Comdat identifiers.
		case *ast.ComdatDef:
			name := entity.Name.Name
			if prev, ok := m.comdatName[name]; ok {
				panic(fmt.Errorf("comdat name %q already present; prev `%v`, new `%v`", name, prev, entity))
			}
			m.comdatName[name] = entity
		// Global identifiers.
		case *ast.Global:
			name := entity.Name.Ident
			if prev, ok := m.globalIdent[name]; ok {
				panic(fmt.Errorf("global identifier %q already present; prev `%v`, new `%v`", name, prev, entity))
			}
			m.globalIdent[name] = entity
		case *ast.IndirectSymbol:
			name := entity.Name.Ident
			if prev, ok := m.globalIdent[name]; ok {
				panic(fmt.Errorf("global identifier %q already present; prev `%v`, new `%v`", name, prev, entity))
			}
			m.globalIdent[name] = entity
		case *ast.Function:
			name := entity.Header.Name.Ident
			if prev, ok := m.globalIdent[name]; ok {
				panic(fmt.Errorf("global identifier %q already present; prev `%v`, new `%v`", name, prev, entity))
			}
			m.globalIdent[name] = entity
		// Attribute group identifiers.
		case *ast.AttrGroupDef:
			id := entity.ID.ID
			if prev, ok := m.attrGroupID[id]; ok {
				panic(fmt.Errorf("attribute group ID %q already present; prev `%v`, new `%v`", id, prev, entity))
			}
			m.attrGroupID[id] = entity
		// Metadata identifiers.
		case *ast.NamedMetadataDef:
			name := entity.Name.Name
			if prev, ok := m.metadataName[name]; ok {
				panic(fmt.Errorf("metadata name %q already present; prev `%v`, new `%v`", name, prev, entity))
			}
			m.metadataName[name] = entity
		case *ast.MetadataDef:
			id := entity.ID.ID
			if prev, ok := m.metadataID[id]; ok {
				panic(fmt.Errorf("metadata ID %q already present; prev `%v`, new `%v`", id, prev, entity))
			}
			m.metadataID[id] = entity
		default:
			panic(fmt.Errorf("support for top-level entity %T not yet implemented", entity))
		}
	}
}
