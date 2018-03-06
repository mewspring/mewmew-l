package ast

import (
	"fmt"
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
