package irx

import (
	"fmt"

	"github.com/kr/pretty"
	"github.com/mewmew/l/asm/internal/ast"
	"github.com/mewmew/l/ir"
	"github.com/mewmew/l/ir/constant"
	"github.com/mewmew/l/ll/types"
)

// irConstant returns the LLVM IR constant corresponding to the given AST constant.
func (m *Module) irConstant(old ir.Constant) ir.Constant {
	switch old := old.(type) {
	// TODO: Add remaning ir.Constant's.
	case *ast.TypeConst:
		return m.irTypeConst(old)
	case *constant.IntConst:
		return m.irIntConst(old)
	case *ast.GlobalIdent:
		return m.irGlobal(old)
	case *constant.BitCastExpr:
		return m.irBitCastExpr(old)
	case *constant.CharArrayConst:
		c := &constant.CharArrayConst{
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
func (m *Module) irIntConst(old *constant.IntConst) *constant.IntConst {
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
	case *constant.BoolConst:
		if typ := m.irType(old.Typ); !typ.Equal(types.I1) {
			panic(fmt.Errorf("invalid boolean constant type; expected %q, got %q", types.I1, typ))
		}
		// nothing to do.
	case *constant.IntConst:
		c.Typ = m.irType(old.Typ).(*types.IntType)
	case *constant.FloatConst:
		c.Typ = m.irType(old.Typ).(*types.FloatType)
	case *constant.NullConst:
		if typ := m.irType(old.Typ); !types.IsPointer(typ) {
			panic(fmt.Errorf("invalid NULL-pointer constant type %q", typ))
		}
		// nothing to do.
	case *constant.NoneConst:
		if typ := m.irType(old.Typ); !typ.Equal(types.Token) {
			panic(fmt.Errorf("invalid none constant type; expected %q, got %q", types.Token, typ))
		}
		// nothing to do.
	case *constant.StructConst:
		c.Typ = m.irType(old.Typ).(*types.StructType)
	case *constant.ArrayConst:
		c.Typ = m.irType(old.Typ).(*types.ArrayType)
	case *constant.CharArrayConst:
		pretty.Println("c:", c)
		c.Typ = m.irType(old.Typ).(*types.ArrayType)
	case *constant.VectorConst:
		c.Typ = m.irType(old.Typ).(*types.VectorType)
	case *constant.ZeroInitializerConst:
		c.Typ = m.irType(old.Typ)
	case *constant.UndefConst:
		c.Typ = m.irType(old.Typ)
	case *constant.BlockAddressConst:
		if typ := m.irType(old.Typ); !typ.Equal(types.I8Ptr) {
			panic(fmt.Errorf("invalid block address constant type; expected %q, got %q", types.I8Ptr, typ))
		}
		// nothing to do.
	// Constant expressions.
	case *constant.AddExpr:
		// TODO: Validate against X.Type().
	case *constant.FAddExpr:
		// TODO: Validate against X.Type().
	case *constant.SubExpr:
		// TODO: Validate against X.Type().
	case *constant.FSubExpr:
		// TODO: Validate against X.Type().
	case *constant.MulExpr:
		// TODO: Validate against X.Type().
	case *constant.FMulExpr:
		// TODO: Validate against X.Type().
	case *constant.UDivExpr:
		// TODO: Validate against X.Type().
	case *constant.SDivExpr:
		// TODO: Validate against X.Type().
	case *constant.FDivExpr:
		// TODO: Validate against X.Type().
	case *constant.URemExpr:
		// TODO: Validate against X.Type().
	case *constant.SRemExpr:
		// TODO: Validate against X.Type().
	case *constant.FRemExpr:
		// TODO: Validate against X.Type().
	case *constant.ShlExpr:
		// TODO: Validate against X.Type().
	case *constant.LShrExpr:
		// TODO: Validate against X.Type().
	case *constant.AShrExpr:
		// TODO: Validate against X.Type().
	case *constant.AndExpr:
		// TODO: Validate against X.Type().
	case *constant.OrExpr:
		// TODO: Validate against X.Type().
	case *constant.XorExpr:
		// TODO: Validate against X.Type().
	case *constant.ExtractElementExpr:
		// TODO: Figure out how to validate type.
	case *constant.InsertElementExpr:
		// TODO: Validate against X.Type().
	case *constant.ShuffleVectorExpr:
		// TODO: Validate against X.Type().
	case *constant.ExtractValueExpr:
		// TODO: Figure out how to validate type.
	case *constant.InsertValueExpr:
		// TODO: Validate against X.Type().
	case *constant.GetElementPtrExpr:
		// TODO: Figure out how to validate type.
	case *constant.TruncExpr:
		// TODO: Validate against To.
	case *constant.ZExtExpr:
		// TODO: Validate against To.
	case *constant.SExtExpr:
		// TODO: Validate against To.
	case *constant.FPTruncExpr:
		// TODO: Validate against To.
	case *constant.FPExtExpr:
		// TODO: Validate against To.
	case *constant.FPToUIExpr:
		// TODO: Validate against To.
	case *constant.FPToSIExpr:
		// TODO: Validate against To.
	case *constant.UIToFPExpr:
		// TODO: Validate against To.
	case *constant.SIToFPExpr:
		// TODO: Validate against To.
	case *constant.PtrToIntExpr:
		// TODO: Validate against To.
	case *constant.IntToPtrExpr:
		// TODO: Validate against To.
	case *constant.BitCastExpr:
		// TODO: Validate against To.
	case *constant.AddrSpaceCastExpr:
		// TODO: Validate against To.
	case *constant.ICmpExpr:
		// TODO: Figure out how to validate type.
	case *constant.FCmpExpr:
		// TODO: Figure out how to validate type.
	case *constant.SelectExpr:
		// TODO: Validate against X.Type().
	default:
		panic(fmt.Errorf("support for constant type %T not yet implemented", c))
	}
	return c
}
