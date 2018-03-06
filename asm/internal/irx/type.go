package irx

import (
	"fmt"

	"github.com/mewmew/l/ll/types"
	"github.com/rickypai/natsort"
)

// resolveTypeDefs resolves type definitions.
func (m *Module) resolveTypeDefs() {
	// Index type definitions.
	for name := range m.localIdent {
		m.typeDefs[name] = &types.NamedType{
			Name: name,
		}
	}
	// Resolve type definitions.
	for name, old := range m.localIdent {
		t := m.typeDefs[name]
		t.Def = m.irType(old.Def)
	}
	// Add type defintions to module.
	var names []string
	for name := range m.typeDefs {
		names = append(names, name)
	}
	natsort.Strings(names)
	for _, name := range names {
		m.TypeDefs = append(m.TypeDefs, m.typeDefs[name])
	}
}

// irType returns the LLVM IR type corresponding to the given AST type.
func (m *Module) irType(old types.Type) types.Type {
	switch old := old.(type) {
	case *types.VoidType:
		return &types.VoidType{}
	case *types.FuncType:
		typ := &types.FuncType{
			RetType:  m.irType(old.RetType),
			Variadic: old.Variadic,
		}
		for _, p := range old.Params {
			param := &types.Param{
				Typ:  m.irType(p.Typ),
				Name: p.Name,
			}
			typ.Params = append(typ.Params, param)
		}
		return typ
	case *types.IntType:
		return &types.IntType{
			BitSize: old.BitSize,
		}
	case *types.FloatType:
		return &types.FloatType{
			Kind: old.Kind,
		}
	case *types.MMXType:
		return &types.MMXType{}
	case *types.PointerType:
		return &types.PointerType{
			ElemType:  m.irType(old.ElemType),
			AddrSpace: old.AddrSpace,
		}
	case *types.VectorType:
		return &types.VectorType{
			Len:      old.Len,
			ElemType: m.irType(old.ElemType),
		}
	case *types.LabelType:
		return &types.LabelType{}
	case *types.TokenType:
		return &types.TokenType{}
	case *types.MetadataType:
		return &types.MetadataType{}
	case *types.ArrayType:
		return &types.ArrayType{
			Len:      old.Len,
			ElemType: m.irType(old.ElemType),
		}
	case *types.StructType:
		typ := &types.StructType{
			Packed: old.Packed,
		}
		for _, field := range old.Fields {
			typ.Fields = append(typ.Fields, m.irType(field))
		}
		return typ
	case *types.OpaqueType:
		return &types.OpaqueType{}
	case *types.NamedType:
		return m.typeDefs[old.Name]
	default:
		panic(fmt.Errorf("support for type %T not yet supported", old))
	}
}
