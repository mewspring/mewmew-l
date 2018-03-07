package ast

import (
	"fmt"

	"github.com/mewmew/l/ll/types"
)

// === [ Values ] ==============================================================

// A Value is an LLVM IR value.
type Value interface {
	fmt.Stringer
	// IsValue ensures that only values can be assigned to the ast.Value
	// interface.
	IsValue()
}

// --- [ Inline Assembler Expressions ] ----------------------------------------

// ### [ Helper functions ] ####################################################

// IsValue ensures that only values can be assigned to the ast.Value interface.
func (*LocalIdent) IsValue() {}

// Type returns the type of the local value.
func (i *LocalIdent) Type() types.Type {
	panic("ast.LocalIdent.Type: unintended use of Type; type resolution not complete")
}

// Ident returns the identifier associated with the local value.
func (i *LocalIdent) Ident() string {
	return i.String()
}

// Constant
func (*BoolConst) IsValue()            {}
func (*IntConst) IsValue()             {}
func (*FloatConst) IsValue()           {}
func (*NullConst) IsValue()            {}
func (*NoneConst) IsValue()            {}
func (*StructConst) IsValue()          {}
func (*ArrayConst) IsValue()           {}
func (*CharArrayConst) IsValue()       {}
func (*VectorConst) IsValue()          {}
func (*ZeroInitializerConst) IsValue() {}
func (*GlobalIdent) IsValue()          {}
func (*UndefConst) IsValue()           {}
func (*BlockAddressConst) IsValue()    {}

// Type returns the type of the constant.
func (i *BoolConst) Type() types.Type {
	panic("ast.BoolConst.Type: unintended use of Type; type resolution not complete")
}

// Ident returns the identifier associated with the constant.
func (i *BoolConst) Ident() string {
	return i.String()
}

// Type returns the type of the constant.
func (i *IntConst) Type() types.Type {
	panic("ast.IntConst.Type: unintended use of Type; type resolution not complete")
}

// Ident returns the identifier associated with the constant.
func (i *IntConst) Ident() string {
	return i.String()
}

// Type returns the type of the constant.
func (i *FloatConst) Type() types.Type {
	panic("ast.FloatConst.Type: unintended use of Type; type resolution not complete")
}

// Ident returns the identifier associated with the constant.
func (i *FloatConst) Ident() string {
	return i.String()
}

// Type returns the type of the constant.
func (i *NullConst) Type() types.Type {
	panic("ast.NullConst.Type: unintended use of Type; type resolution not complete")
}

// Ident returns the identifier associated with the constant.
func (i *NullConst) Ident() string {
	return i.String()
}

// Type returns the type of the constant.
func (i *NoneConst) Type() types.Type {
	panic("ast.NoneConst.Type: unintended use of Type; type resolution not complete")
}

// Ident returns the identifier associated with the constant.
func (i *NoneConst) Ident() string {
	return i.String()
}

// Type returns the type of the constant.
func (i *StructConst) Type() types.Type {
	panic("ast.StructConst.Type: unintended use of Type; type resolution not complete")
}

// Ident returns the identifier associated with the constant.
func (i *StructConst) Ident() string {
	return i.String()
}

// Type returns the type of the constant.
func (i *ArrayConst) Type() types.Type {
	panic("ast.ArrayConst.Type: unintended use of Type; type resolution not complete")
}

// Ident returns the identifier associated with the constant.
func (i *ArrayConst) Ident() string {
	return i.String()
}

// Type returns the type of the constant.
func (i *CharArrayConst) Type() types.Type {
	panic("ast.CharArrayConst.Type: unintended use of Type; type resolution not complete")
}

// Ident returns the identifier associated with the constant.
func (i *CharArrayConst) Ident() string {
	return i.String()
}

// Type returns the type of the constant.
func (i *VectorConst) Type() types.Type {
	panic("ast.VectorConst.Type: unintended use of Type; type resolution not complete")
}

// Ident returns the identifier associated with the constant.
func (i *VectorConst) Ident() string {
	return i.String()
}

// Type returns the type of the constant.
func (i *ZeroInitializerConst) Type() types.Type {
	panic("ast.ZeroInitializerConst.Type: unintended use of Type; type resolution not complete")
}

// Ident returns the identifier associated with the constant.
func (i *ZeroInitializerConst) Ident() string {
	return i.String()
}

// Type returns the type of the constant.
func (i *GlobalIdent) Type() types.Type {
	panic("ast.GlobalIdent.Type: unintended use of Type; type resolution not complete")
}

// Ident returns the identifier associated with the constant.
func (i *GlobalIdent) Ident() string {
	return i.String()
}

// Type returns the type of the constant.
func (i *UndefConst) Type() types.Type {
	panic("ast.UndefConst.Type: unintended use of Type; type resolution not complete")
}

// Ident returns the identifier associated with the constant.
func (i *UndefConst) Ident() string {
	return i.String()
}

// Type returns the type of the constant.
func (i *BlockAddressConst) Type() types.Type {
	panic("ast.BlockAddressConst.Type: unintended use of Type; type resolution not complete")
}

// Ident returns the identifier associated with the constant.
func (i *BlockAddressConst) Ident() string {
	return i.String()
}

// ConstantExpr
func (*AddExpr) IsValue()            {}
func (*FAddExpr) IsValue()           {}
func (*SubExpr) IsValue()            {}
func (*FSubExpr) IsValue()           {}
func (*MulExpr) IsValue()            {}
func (*FMulExpr) IsValue()           {}
func (*UDivExpr) IsValue()           {}
func (*SDivExpr) IsValue()           {}
func (*FDivExpr) IsValue()           {}
func (*URemExpr) IsValue()           {}
func (*SRemExpr) IsValue()           {}
func (*FRemExpr) IsValue()           {}
func (*ShlExpr) IsValue()            {}
func (*LShrExpr) IsValue()           {}
func (*AShrExpr) IsValue()           {}
func (*AndExpr) IsValue()            {}
func (*OrExpr) IsValue()             {}
func (*XorExpr) IsValue()            {}
func (*ExtractElementExpr) IsValue() {}
func (*InsertElementExpr) IsValue()  {}
func (*ShuffleVectorExpr) IsValue()  {}
func (*ExtractValueExpr) IsValue()   {}
func (*InsertValueExpr) IsValue()    {}
func (*GetElementPtrExpr) IsValue()  {}
func (*TruncExpr) IsValue()          {}
func (*ZExtExpr) IsValue()           {}
func (*SExtExpr) IsValue()           {}
func (*FPTruncExpr) IsValue()        {}
func (*FPExtExpr) IsValue()          {}
func (*FPToUIExpr) IsValue()         {}
func (*FPToSIExpr) IsValue()         {}
func (*UIToFPExpr) IsValue()         {}
func (*SIToFPExpr) IsValue()         {}
func (*PtrToIntExpr) IsValue()       {}
func (*IntToPtrExpr) IsValue()       {}
func (*BitCastExpr) IsValue()        {}
func (*AddrSpaceCastExpr) IsValue()  {}
func (*ICmpExpr) IsValue()           {}
func (*FCmpExpr) IsValue()           {}
func (*SelectExpr) IsValue()         {}

// Type returns the type of the constant expression.
func (i *AddExpr) Type() types.Type {
	panic("ast.AddExpr.Type: unintended use of Type; type resolution not complete")
}

// Ident returns the identifier associated with the constant expression.
func (i *AddExpr) Ident() string {
	return i.String()
}

// Type returns the type of the constant expression.
func (i *FAddExpr) Type() types.Type {
	panic("ast.FAddExpr.Type: unintended use of Type; type resolution not complete")
}

// Ident returns the identifier associated with the constant expression.
func (i *FAddExpr) Ident() string {
	return i.String()
}

// Type returns the type of the constant expression.
func (i *SubExpr) Type() types.Type {
	panic("ast.SubExpr.Type: unintended use of Type; type resolution not complete")
}

// Ident returns the identifier associated with the constant expression.
func (i *SubExpr) Ident() string {
	return i.String()
}

// Type returns the type of the constant expression.
func (i *FSubExpr) Type() types.Type {
	panic("ast.FSubExpr.Type: unintended use of Type; type resolution not complete")
}

// Ident returns the identifier associated with the constant expression.
func (i *FSubExpr) Ident() string {
	return i.String()
}

// Type returns the type of the constant expression.
func (i *MulExpr) Type() types.Type {
	panic("ast.MulExpr.Type: unintended use of Type; type resolution not complete")
}

// Ident returns the identifier associated with the constant expression.
func (i *MulExpr) Ident() string {
	return i.String()
}

// Type returns the type of the constant expression.
func (i *FMulExpr) Type() types.Type {
	panic("ast.FMulExpr.Type: unintended use of Type; type resolution not complete")
}

// Ident returns the identifier associated with the constant expression.
func (i *FMulExpr) Ident() string {
	return i.String()
}

// Type returns the type of the constant expression.
func (i *UDivExpr) Type() types.Type {
	panic("ast.UDivExpr.Type: unintended use of Type; type resolution not complete")
}

// Ident returns the identifier associated with the constant expression.
func (i *UDivExpr) Ident() string {
	return i.String()
}

// Type returns the type of the constant expression.
func (i *SDivExpr) Type() types.Type {
	panic("ast.SDivExpr.Type: unintended use of Type; type resolution not complete")
}

// Ident returns the identifier associated with the constant expression.
func (i *SDivExpr) Ident() string {
	return i.String()
}

// Type returns the type of the constant expression.
func (i *FDivExpr) Type() types.Type {
	panic("ast.FDivExpr.Type: unintended use of Type; type resolution not complete")
}

// Ident returns the identifier associated with the constant expression.
func (i *FDivExpr) Ident() string {
	return i.String()
}

// Type returns the type of the constant expression.
func (i *URemExpr) Type() types.Type {
	panic("ast.URemExpr.Type: unintended use of Type; type resolution not complete")
}

// Ident returns the identifier associated with the constant expression.
func (i *URemExpr) Ident() string {
	return i.String()
}

// Type returns the type of the constant expression.
func (i *SRemExpr) Type() types.Type {
	panic("ast.SRemExpr.Type: unintended use of Type; type resolution not complete")
}

// Ident returns the identifier associated with the constant expression.
func (i *SRemExpr) Ident() string {
	return i.String()
}

// Type returns the type of the constant expression.
func (i *FRemExpr) Type() types.Type {
	panic("ast.FRemExpr.Type: unintended use of Type; type resolution not complete")
}

// Ident returns the identifier associated with the constant expression.
func (i *FRemExpr) Ident() string {
	return i.String()
}

// Type returns the type of the constant expression.
func (i *ShlExpr) Type() types.Type {
	panic("ast.ShlExpr.Type: unintended use of Type; type resolution not complete")
}

// Ident returns the identifier associated with the constant expression.
func (i *ShlExpr) Ident() string {
	return i.String()
}

// Type returns the type of the constant expression.
func (i *LShrExpr) Type() types.Type {
	panic("ast.LShrExpr.Type: unintended use of Type; type resolution not complete")
}

// Ident returns the identifier associated with the constant expression.
func (i *LShrExpr) Ident() string {
	return i.String()
}

// Type returns the type of the constant expression.
func (i *AShrExpr) Type() types.Type {
	panic("ast.AShrExpr.Type: unintended use of Type; type resolution not complete")
}

// Ident returns the identifier associated with the constant expression.
func (i *AShrExpr) Ident() string {
	return i.String()
}

// Type returns the type of the constant expression.
func (i *AndExpr) Type() types.Type {
	panic("ast.AndExpr.Type: unintended use of Type; type resolution not complete")
}

// Ident returns the identifier associated with the constant expression.
func (i *AndExpr) Ident() string {
	return i.String()
}

// Type returns the type of the constant expression.
func (i *OrExpr) Type() types.Type {
	panic("ast.OrExpr.Type: unintended use of Type; type resolution not complete")
}

// Ident returns the identifier associated with the constant expression.
func (i *OrExpr) Ident() string {
	return i.String()
}

// Type returns the type of the constant expression.
func (i *XorExpr) Type() types.Type {
	panic("ast.XorExpr.Type: unintended use of Type; type resolution not complete")
}

// Ident returns the identifier associated with the constant expression.
func (i *XorExpr) Ident() string {
	return i.String()
}

// Type returns the type of the constant expression.
func (i *ExtractElementExpr) Type() types.Type {
	panic("ast.ExtractElementExpr.Type: unintended use of Type; type resolution not complete")
}

// Ident returns the identifier associated with the constant expression.
func (i *ExtractElementExpr) Ident() string {
	return i.String()
}

// Type returns the type of the constant expression.
func (i *InsertElementExpr) Type() types.Type {
	panic("ast.InsertElementExpr.Type: unintended use of Type; type resolution not complete")
}

// Ident returns the identifier associated with the constant expression.
func (i *InsertElementExpr) Ident() string {
	return i.String()
}

// Type returns the type of the constant expression.
func (i *ShuffleVectorExpr) Type() types.Type {
	panic("ast.ShuffleVectorExpr.Type: unintended use of Type; type resolution not complete")
}

// Ident returns the identifier associated with the constant expression.
func (i *ShuffleVectorExpr) Ident() string {
	return i.String()
}

// Type returns the type of the constant expression.
func (i *ExtractValueExpr) Type() types.Type {
	panic("ast.ExtractValueExpr.Type: unintended use of Type; type resolution not complete")
}

// Ident returns the identifier associated with the constant expression.
func (i *ExtractValueExpr) Ident() string {
	return i.String()
}

// Type returns the type of the constant expression.
func (i *InsertValueExpr) Type() types.Type {
	panic("ast.InsertValueExpr.Type: unintended use of Type; type resolution not complete")
}

// Ident returns the identifier associated with the constant expression.
func (i *InsertValueExpr) Ident() string {
	return i.String()
}

// Type returns the type of the constant expression.
func (i *GetElementPtrExpr) Type() types.Type {
	panic("ast.GetElementPtrExpr.Type: unintended use of Type; type resolution not complete")
}

// Ident returns the identifier associated with the constant expression.
func (i *GetElementPtrExpr) Ident() string {
	return i.String()
}

// Type returns the type of the constant expression.
func (i *TruncExpr) Type() types.Type {
	panic("ast.TruncExpr.Type: unintended use of Type; type resolution not complete")
}

// Ident returns the identifier associated with the constant expression.
func (i *TruncExpr) Ident() string {
	return i.String()
}

// Type returns the type of the constant expression.
func (i *ZExtExpr) Type() types.Type {
	panic("ast.ZExtExpr.Type: unintended use of Type; type resolution not complete")
}

// Ident returns the identifier associated with the constant expression.
func (i *ZExtExpr) Ident() string {
	return i.String()
}

// Type returns the type of the constant expression.
func (i *SExtExpr) Type() types.Type {
	panic("ast.SExtExpr.Type: unintended use of Type; type resolution not complete")
}

// Ident returns the identifier associated with the constant expression.
func (i *SExtExpr) Ident() string {
	return i.String()
}

// Type returns the type of the constant expression.
func (i *FPTruncExpr) Type() types.Type {
	panic("ast.FPTruncExpr.Type: unintended use of Type; type resolution not complete")
}

// Ident returns the identifier associated with the constant expression.
func (i *FPTruncExpr) Ident() string {
	return i.String()
}

// Type returns the type of the constant expression.
func (i *FPExtExpr) Type() types.Type {
	panic("ast.FPExtExpr.Type: unintended use of Type; type resolution not complete")
}

// Ident returns the identifier associated with the constant expression.
func (i *FPExtExpr) Ident() string {
	return i.String()
}

// Type returns the type of the constant expression.
func (i *FPToUIExpr) Type() types.Type {
	panic("ast.FPToUIExpr.Type: unintended use of Type; type resolution not complete")
}

// Ident returns the identifier associated with the constant expression.
func (i *FPToUIExpr) Ident() string {
	return i.String()
}

// Type returns the type of the constant expression.
func (i *FPToSIExpr) Type() types.Type {
	panic("ast.FPToSIExpr.Type: unintended use of Type; type resolution not complete")
}

// Ident returns the identifier associated with the constant expression.
func (i *FPToSIExpr) Ident() string {
	return i.String()
}

// Type returns the type of the constant expression.
func (i *UIToFPExpr) Type() types.Type {
	panic("ast.UIToFPExpr.Type: unintended use of Type; type resolution not complete")
}

// Ident returns the identifier associated with the constant expression.
func (i *UIToFPExpr) Ident() string {
	return i.String()
}

// Type returns the type of the constant expression.
func (i *SIToFPExpr) Type() types.Type {
	panic("ast.SIToFPExpr.Type: unintended use of Type; type resolution not complete")
}

// Ident returns the identifier associated with the constant expression.
func (i *SIToFPExpr) Ident() string {
	return i.String()
}

// Type returns the type of the constant expression.
func (i *PtrToIntExpr) Type() types.Type {
	panic("ast.PtrToIntExpr.Type: unintended use of Type; type resolution not complete")
}

// Ident returns the identifier associated with the constant expression.
func (i *PtrToIntExpr) Ident() string {
	return i.String()
}

// Type returns the type of the constant expression.
func (i *IntToPtrExpr) Type() types.Type {
	panic("ast.IntToPtrExpr.Type: unintended use of Type; type resolution not complete")
}

// Ident returns the identifier associated with the constant expression.
func (i *IntToPtrExpr) Ident() string {
	return i.String()
}

// Type returns the type of the constant expression.
func (i *BitCastExpr) Type() types.Type {
	panic("ast.BitCastExpr.Type: unintended use of Type; type resolution not complete")
}

// Ident returns the identifier associated with the constant expression.
func (i *BitCastExpr) Ident() string {
	return i.String()
}

// Type returns the type of the constant expression.
func (i *AddrSpaceCastExpr) Type() types.Type {
	panic("ast.AddrSpaceCastExpr.Type: unintended use of Type; type resolution not complete")
}

// Ident returns the identifier associated with the constant expression.
func (i *AddrSpaceCastExpr) Ident() string {
	return i.String()
}

// Type returns the type of the constant expression.
func (i *ICmpExpr) Type() types.Type {
	panic("ast.ICmpExpr.Type: unintended use of Type; type resolution not complete")
}

// Ident returns the identifier associated with the constant expression.
func (i *ICmpExpr) Ident() string {
	return i.String()
}

// Type returns the type of the constant expression.
func (i *FCmpExpr) Type() types.Type {
	panic("ast.FCmpExpr.Type: unintended use of Type; type resolution not complete")
}

// Ident returns the identifier associated with the constant expression.
func (i *FCmpExpr) Ident() string {
	return i.String()
}

// Type returns the type of the constant expression.
func (i *SelectExpr) Type() types.Type {
	panic("ast.SelectExpr.Type: unintended use of Type; type resolution not complete")
}

// Ident returns the identifier associated with the constant expression.
func (i *SelectExpr) Ident() string {
	return i.String()
}
