package ast

import (
	"fmt"
)

// === [ Values ] ==============================================================

// A Value is an LLVM IR value.
type Value interface {
	fmt.Stringer
	// isValue ensures that only values can be assigned to the ast.Value
	// interface.
	isValue()
}

// --- [ Inline Assembler Expressions ] ----------------------------------------

// ### [ Helper functions ] ####################################################

// isValue ensures that only values can be assigned to the ast.Value interface.
func (*LocalIdent) isValue() {}

// TODO: Figure out how to handle value interface.
//func (*InlineAsm) isValue()  {}

// Constant
func (*BoolConst) isValue()            {}
func (*IntConst) isValue()             {}
func (*FloatConst) isValue()           {}
func (*NullConst) isValue()            {}
func (*NoneConst) isValue()            {}
func (*StructConst) isValue()          {}
func (*ArrayConst) isValue()           {}
func (*CharArrayConst) isValue()       {}
func (*VectorConst) isValue()          {}
func (*ZeroInitializerConst) isValue() {}
func (*GlobalIdent) isValue()          {}
func (*UndefConst) isValue()           {}
func (*BlockAddressConst) isValue()    {}

// ConstantExpr
func (*AddExpr) isValue()            {}
func (*FAddExpr) isValue()           {}
func (*SubExpr) isValue()            {}
func (*FSubExpr) isValue()           {}
func (*MulExpr) isValue()            {}
func (*FMulExpr) isValue()           {}
func (*UDivExpr) isValue()           {}
func (*SDivExpr) isValue()           {}
func (*FDivExpr) isValue()           {}
func (*URemExpr) isValue()           {}
func (*SRemExpr) isValue()           {}
func (*FRemExpr) isValue()           {}
func (*ShlExpr) isValue()            {}
func (*LShrExpr) isValue()           {}
func (*AShrExpr) isValue()           {}
func (*AndExpr) isValue()            {}
func (*OrExpr) isValue()             {}
func (*XorExpr) isValue()            {}
func (*ExtractElementExpr) isValue() {}
func (*InsertElementExpr) isValue()  {}
func (*ShuffleVectorExpr) isValue()  {}
func (*ExtractValueExpr) isValue()   {}
func (*InsertValueExpr) isValue()    {}
func (*GetElementPtrExpr) isValue()  {}
func (*TruncExpr) isValue()          {}
func (*ZExtExpr) isValue()           {}
func (*SExtExpr) isValue()           {}
func (*FPTruncExpr) isValue()        {}
func (*FPExtExpr) isValue()          {}
func (*FPToUIExpr) isValue()         {}
func (*FPToSIExpr) isValue()         {}
func (*UIToFPExpr) isValue()         {}
func (*SIToFPExpr) isValue()         {}
func (*PtrToIntExpr) isValue()       {}
func (*IntToPtrExpr) isValue()       {}
func (*BitCastExpr) isValue()        {}
func (*AddrSpaceCastExpr) isValue()  {}
func (*ICmpExpr) isValue()           {}
func (*FCmpExpr) isValue()           {}
func (*SelectExpr) isValue()         {}
