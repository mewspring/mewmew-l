package ast

import (
	"fmt"
	"strings"

	"github.com/mewmew/l/internal/enc"
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

// InlineAsm is an inline assembly expression.
type InlineAsm struct {
	SideEffect   bool
	AlignStack   bool
	IntelDialect bool
	Asm          string
	Constraint   string
}

// String returns the string representation of the inline assembly expression.
func (v *InlineAsm) String() string {
	// "asm" OptSideEffect OptAlignStack OptIntelDialect StringLit "," StringLit
	buf := &strings.Builder{}
	buf.WriteString("asm")
	if v.SideEffect {
		buf.WriteString(" sideeffect")
	}
	if v.AlignStack {
		buf.WriteString(" alignstack")
	}
	if v.IntelDialect {
		buf.WriteString(" inteldialect")
	}
	fmt.Fprintf(buf, " %v, %v", enc.Quote(v.Asm), enc.Quote(v.Constraint))
	return buf.String()
}

// ### [ Helper functions ] ####################################################

// isValue ensures that only values can be assigned to the ast.Value interface.
func (*LocalIdent) isValue() {}
func (*InlineAsm) isValue()  {}

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

// Ensure that each value implements the ast.Value interface.
var (
	_ Value = (*LocalIdent)(nil)
	_ Value = (*InlineAsm)(nil)
	_ Value = (*BoolConst)(nil)
	_ Value = (*IntConst)(nil)
	_ Value = (*FloatConst)(nil)
	_ Value = (*NullConst)(nil)
	_ Value = (*NoneConst)(nil)
	_ Value = (*StructConst)(nil)
	_ Value = (*ArrayConst)(nil)
	_ Value = (*CharArrayConst)(nil)
	_ Value = (*VectorConst)(nil)
	_ Value = (*ZeroInitializerConst)(nil)
	_ Value = (*GlobalIdent)(nil)
	_ Value = (*UndefConst)(nil)
	_ Value = (*BlockAddressConst)(nil)
	_ Value = (*AddExpr)(nil)
	_ Value = (*FAddExpr)(nil)
	_ Value = (*SubExpr)(nil)
	_ Value = (*FSubExpr)(nil)
	_ Value = (*MulExpr)(nil)
	_ Value = (*FMulExpr)(nil)
	_ Value = (*UDivExpr)(nil)
	_ Value = (*SDivExpr)(nil)
	_ Value = (*FDivExpr)(nil)
	_ Value = (*URemExpr)(nil)
	_ Value = (*SRemExpr)(nil)
	_ Value = (*FRemExpr)(nil)
	_ Value = (*ShlExpr)(nil)
	_ Value = (*LShrExpr)(nil)
	_ Value = (*AShrExpr)(nil)
	_ Value = (*AndExpr)(nil)
	_ Value = (*OrExpr)(nil)
	_ Value = (*XorExpr)(nil)
	_ Value = (*ExtractElementExpr)(nil)
	_ Value = (*InsertElementExpr)(nil)
	_ Value = (*ShuffleVectorExpr)(nil)
	_ Value = (*ExtractValueExpr)(nil)
	_ Value = (*InsertValueExpr)(nil)
	_ Value = (*GetElementPtrExpr)(nil)
	_ Value = (*TruncExpr)(nil)
	_ Value = (*ZExtExpr)(nil)
	_ Value = (*SExtExpr)(nil)
	_ Value = (*FPTruncExpr)(nil)
	_ Value = (*FPExtExpr)(nil)
	_ Value = (*FPToUIExpr)(nil)
	_ Value = (*FPToSIExpr)(nil)
	_ Value = (*UIToFPExpr)(nil)
	_ Value = (*SIToFPExpr)(nil)
	_ Value = (*PtrToIntExpr)(nil)
	_ Value = (*IntToPtrExpr)(nil)
	_ Value = (*BitCastExpr)(nil)
	_ Value = (*AddrSpaceCastExpr)(nil)
	_ Value = (*ICmpExpr)(nil)
	_ Value = (*FCmpExpr)(nil)
	_ Value = (*SelectExpr)(nil)
)
