package irx

import (
	"fmt"
	"sort"

	"github.com/mewmew/l/asm/internal/ast"
	"github.com/mewmew/l/ir/types"
)

// resolveTypeDefs resolves type definitions.
func (m *Module) resolveTypeDefs() {
	// Index type definitions.
	for name := range m.typeIdent {
		m.types[name] = &types.NamedType{
			Name: name,
		}
	}
	// Resolve type definitions.
	for name, old := range m.typeIdent {
		t := m.types[name]
		t.Def = m.irType(old.Def)
	}
	// Add type defintions to module.
	var keys []string
	for name := range m.types {
		keys = append(keys, name)
	}
	sort.Strings(keys)
	for _, key := range keys {
		m.TypeDefs = append(m.TypeDefs, m.types[key])
	}
}

// irType returns the LLVM IR type corresponding to the given AST type.
func (m *Module) irType(old ast.Type) types.Type {
	switch old := old.(type) {
	case *ast.VoidType:
		return &types.VoidType{}
	case *ast.FuncType:
		typ := &types.FuncType{
			RetType:  m.irType(old.RetType),
			Variadic: old.Variadic,
		}
		for _, p := range old.Params {
			param := &types.Param{
				Typ: m.irType(p.Type),
			}
			if p.Name != nil {
				param.Name = p.Name.Ident
			}
			typ.Params = append(typ.Params, param)
		}
		return typ
	case *ast.IntType:
		return &types.IntType{
			BitSize: old.BitSize,
		}
	case *ast.FloatType:
		return &types.FloatType{
			Kind: floatKind(old.Kind),
		}
	case *ast.MMXType:
		return &types.MMXType{}
	case *ast.PointerType:
		return &types.PointerType{
			ElemType:  m.irType(old.ElemType),
			AddrSpace: types.AddrSpace(old.AddrSpace),
		}
	case *ast.VectorType:
		return &types.VectorType{
			Len:      old.Len,
			ElemType: m.irType(old.ElemType),
		}
	case *ast.LabelType:
		return &types.LabelType{}
	case *ast.TokenType:
		return &types.TokenType{}
	case *ast.MetadataType:
		return &types.MetadataType{}
	case *ast.ArrayType:
		return &types.ArrayType{
			Len:      old.Len,
			ElemType: m.irType(old.ElemType),
		}
	case *ast.StructType:
		typ := &types.StructType{
			Packed: old.Packed,
		}
		for _, field := range old.Fields {
			typ.Fields = append(typ.Fields, m.irType(field))
		}
		return typ
	case *ast.OpaqueType:
		return &types.StructType{
			Opaque: true,
		}
	case *ast.NamedType:
		return m.types[old.Name.Ident]
	default:
		panic(fmt.Errorf("support for type %T not yet supported", old))
	}
}

// floatKind returns the LLVM IR floating-point kind corresponding to the given
// AST floating-point kind.
func floatKind(kind ast.FloatKind) types.FloatKind {
	switch kind {
	case ast.FloatKindHalf:
		return types.FloatKindHalf
	case ast.FloatKindFloat:
		return types.FloatKindFloat
	case ast.FloatKindDouble:
		return types.FloatKindDouble
	case ast.FloatKindFP128:
		return types.FloatKindFP128
	case ast.FloatKindX86_FP80:
		return types.FloatKindX86_FP80
	case ast.FloatKindPPC_FP128:
		return types.FloatKindPPC_FP128
	default:
		panic(fmt.Errorf("support for floating-point kind %v not yet implemented", kind))
	}
}
