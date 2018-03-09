package irx

import (
	"fmt"

	"github.com/kr/pretty"
	"github.com/mewmew/l/asm/internal/ast"
	"github.com/mewmew/l/ir"
	"github.com/mewmew/l/ir/constant"
	"github.com/mewmew/l/ir/types"
)

// irConstant returns the LLVM IR constant corresponding to the given AST constant.
func (m *Module) irConstant(old ir.Constant) ir.Constant {
	switch old := old.(type) {
	// TODO: Add remaning ir.Constant's.
	case *ast.TypeConst:
		return m.irTypeConst(old)
	case *constant.Int:
		return m.irIntConst(old)
	case *ast.GlobalIdent:
		return m.irGlobal(old)
	case *constant.ExprBitCast:
		return m.irBitCastExpr(old)
	case *constant.CharArray:
		c := &constant.CharArray{
			Value: old.Value,
		}
		if old.Typ != nil {
			c.Typ = m.irType(old.Typ).(*types.ArrayType)
		}
		return c
	default:
		panic(fmt.Errorf("support for constant %T not yet implemented", old))
	}
}

// irIntConst returns the LLVM IR integer constant corresponding to the given
// AST integer constant.
func (m *Module) irIntConst(old *constant.Int) *constant.Int {
	if old.Typ != nil {
		old.Typ = m.irType(old.Typ).(*types.IntType)
	}
	return old
}

// irConstant returns the LLVM IR constant corresponding to the given AST type-
// constant pair.
func (m *Module) irTypeConst(old *ast.TypeConst) ir.Constant {
	// TODO: Figure out how to set type of constant in a clean way.
	c := m.irConstant(old.Const)
	switch c := c.(type) {
	case *ir.Global:
		// Already translated from *ast.GlobalIdent
		return c
	// Constants.
	case *constant.Bool:
		if typ := m.irType(old.Typ); !typ.Equal(types.I1) {
			panic(fmt.Errorf("invalid boolean constant type; expected %q, got %q", types.I1, typ))
		}
		// nothing to do.
	case *constant.Int:
		c.Typ = m.irType(old.Typ).(*types.IntType)
	case *constant.Float:
		c.Typ = m.irType(old.Typ).(*types.FloatType)
	case *constant.Null:
		if typ := m.irType(old.Typ); !types.IsPointer(typ) {
			panic(fmt.Errorf("invalid NULL-pointer constant type %q", typ))
		}
		// nothing to do.
	case *constant.None:
		if typ := m.irType(old.Typ); !typ.Equal(types.Token) {
			panic(fmt.Errorf("invalid none constant type; expected %q, got %q", types.Token, typ))
		}
		// nothing to do.
	case *constant.Struct:
		c.Typ = m.irType(old.Typ).(*types.StructType)
	case *constant.Array:
		c.Typ = m.irType(old.Typ).(*types.ArrayType)
	case *constant.CharArray:
		pretty.Println("c:", c)
		c.Typ = m.irType(old.Typ).(*types.ArrayType)
	case *constant.Vector:
		c.Typ = m.irType(old.Typ).(*types.VectorType)
	case *constant.ZeroInitializer:
		c.Typ = m.irType(old.Typ)
	case *constant.Undef:
		c.Typ = m.irType(old.Typ)
	case *constant.BlockAddress:
		if typ := m.irType(old.Typ); !typ.Equal(types.I8Ptr) {
			panic(fmt.Errorf("invalid block address constant type; expected %q, got %q", types.I8Ptr, typ))
		}
		// nothing to do.
	// Constant expressions.
	case *constant.ExprAdd:
		// TODO: Validate against X.Type().
	case *constant.ExprFAdd:
		// TODO: Validate against X.Type().
	case *constant.ExprSub:
		// TODO: Validate against X.Type().
	case *constant.ExprFSub:
		// TODO: Validate against X.Type().
	case *constant.ExprMul:
		// TODO: Validate against X.Type().
	case *constant.ExprFMul:
		// TODO: Validate against X.Type().
	case *constant.ExprUDiv:
		// TODO: Validate against X.Type().
	case *constant.ExprSDiv:
		// TODO: Validate against X.Type().
	case *constant.ExprFDiv:
		// TODO: Validate against X.Type().
	case *constant.ExprURem:
		// TODO: Validate against X.Type().
	case *constant.ExprSRem:
		// TODO: Validate against X.Type().
	case *constant.ExprFRem:
		// TODO: Validate against X.Type().
	case *constant.ExprShl:
		// TODO: Validate against X.Type().
	case *constant.ExprLShr:
		// TODO: Validate against X.Type().
	case *constant.ExprAShr:
		// TODO: Validate against X.Type().
	case *constant.ExprAnd:
		// TODO: Validate against X.Type().
	case *constant.ExprOr:
		// TODO: Validate against X.Type().
	case *constant.ExprXor:
		// TODO: Validate against X.Type().
	case *constant.ExprExtractElement:
		// TODO: Figure out how to validate type.
	case *constant.ExprInsertElement:
		// TODO: Validate against X.Type().
	case *constant.ExprShuffleVector:
		// TODO: Validate against X.Type().
	case *constant.ExprExtractValue:
		// TODO: Figure out how to validate type.
	case *constant.ExprInsertValue:
		// TODO: Validate against X.Type().
	case *constant.ExprGetElementPtr:
		// TODO: Figure out how to validate type.
	case *constant.ExprTrunc:
		// TODO: Validate against To.
	case *constant.ExprZExt:
		// TODO: Validate against To.
	case *constant.ExprSExt:
		// TODO: Validate against To.
	case *constant.ExprFPTrunc:
		// TODO: Validate against To.
	case *constant.ExprFPExt:
		// TODO: Validate against To.
	case *constant.ExprFPToUI:
		// TODO: Validate against To.
	case *constant.ExprFPToSI:
		// TODO: Validate against To.
	case *constant.ExprUIToFP:
		// TODO: Validate against To.
	case *constant.ExprSIToFP:
		// TODO: Validate against To.
	case *constant.ExprPtrToInt:
		// TODO: Validate against To.
	case *constant.ExprIntToPtr:
		// TODO: Validate against To.
	case *constant.ExprBitCast:
		// TODO: Validate against To.
	case *constant.ExprAddrSpaceCast:
		// TODO: Validate against To.
	case *constant.ExprICmp:
		// TODO: Figure out how to validate type.
	case *constant.ExprFCmp:
		// TODO: Figure out how to validate type.
	case *constant.ExprSelect:
		// TODO: Validate against X.Type().
	default:
		panic(fmt.Errorf("support for constant type %T not yet implemented", c))
	}
	return c
}
