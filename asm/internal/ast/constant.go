package ast

import (
	"fmt"
	"strings"

	"github.com/mewmew/l/internal/enc"
)

// === [ Constants ] ===========================================================

// A Constant is an LLVM IR constant.
type Constant interface {
	fmt.Stringer
	// IsConstant ensures that only constants can be assigned to the ast.Constant
	// interface.
	IsConstant()
}

// --- [ Boolean Constants ] ---------------------------------------------------

// A BoolConst is an LLVM IR boolean constant.
type BoolConst struct {
	X bool
}

// String returns the string representation of the boolean constant.
func (c *BoolConst) String() string {
	// "true"
	// "false"
	if c.X {
		return "true"
	}
	return "false"
}

// --- [ Integer Constants ] ---------------------------------------------------

// An IntConst is an LLVM IR integer constant.
type IntConst struct {
	X string
}

// String returns the string representation of the integer constant.
func (c *IntConst) String() string {
	// int_lit
	return c.X
}

// --- [ Floating-point Constants ] --------------------------------------------

// A FloatConst is an LLVM IR floating-point constant.
type FloatConst struct {
	X string
}

// String returns the string representation of the floating-point constant.
func (c *FloatConst) String() string {
	// float_lit
	return c.X
}

// --- [ Null Pointer Constants ] ----------------------------------------------

// A NullConst is an LLVM IR NULL-pointer constant.
type NullConst struct{}

// String returns the string representation of the NULL-pointer constant.
func (*NullConst) String() string {
	// "null"
	return "null"
}

// --- [ Token Constants ] -----------------------------------------------------

// A NoneConst is an LLVM IR none token constant.
type NoneConst struct{}

// String returns the string representation of the none token constant.
func (*NoneConst) String() string {
	// "none"
	return "none"
}

// --- [ Structure Constants ] -------------------------------------------------

// A StructConst is an LLVM IR structure constant.
type StructConst struct {
	Packed bool
	Fields []*TypeConst
}

// String returns the string representation of the structure constant.
func (c *StructConst) String() string {
	// "{" Elems "}"
	// "<" "{" Elems "}" ">"
	buf := &strings.Builder{}
	if c.Packed {
		buf.WriteString("<")
	}
	buf.WriteString("{ ")
	for i, field := range c.Fields {
		if i != 0 {
			buf.WriteString(", ")
		}
		buf.WriteString(field.String())
	}
	buf.WriteString(" }")
	if c.Packed {
		buf.WriteString(">")
	}
	return buf.String()
}

// --- [ Array Constants ] -----------------------------------------------------

// An ArrayConst is an LLVM IR array constant.
type ArrayConst struct {
	Elems []*TypeConst
}

// String returns the string representation of the array constant.
func (c *ArrayConst) String() string {
	// "[" TypeConsts "]"
	buf := &strings.Builder{}
	buf.WriteString("[")
	for i, elem := range c.Elems {
		if i != 0 {
			buf.WriteString(", ")
		}
		buf.WriteString(elem.String())
	}
	buf.WriteString("]")
	return buf.String()
}

// A CharArrayConst is an LLVM IR character array constant.
type CharArrayConst struct {
	Value string
}

// String returns the string representation of the character array constant.
func (c *CharArrayConst) String() string {
	// "c" StringLit
	return fmt.Sprintf("c%v", enc.Quote(c.Value))
}

// --- [ Vector Constants ] ----------------------------------------------------

// A VectorConst is an LLVM IR vector constant.
type VectorConst struct {
	Elems []*TypeConst
}

// String returns the string representation of the vector constant.
func (c *VectorConst) String() string {
	// "<" TypeConsts ">"
	buf := &strings.Builder{}
	buf.WriteString("<")
	for i, elem := range c.Elems {
		if i != 0 {
			buf.WriteString(", ")
		}
		buf.WriteString(elem.String())
	}
	buf.WriteString(">")
	return buf.String()
}

// --- [ Zero Initialization Constants ] ---------------------------------------

// A ZeroInitializerConst is an LLVM IR zeroinitializer constant.
type ZeroInitializerConst struct{}

// String returns the string representation of the zeroinitializer constant.
func (*ZeroInitializerConst) String() string {
	// "zeroinitializer"
	return "zeroinitializer"
}

// --- [ Undefined Values ] ----------------------------------------------------

// An UndefConst is an LLVM IR undefined constant.
type UndefConst struct{}

// String returns the string representation of the undefined constant.
func (*UndefConst) String() string {
	// "undef"
	return "undef"
}

// --- [ Addresses of Basic Blocks ] -------------------------------------------

// A BlockAddressConst is an LLVM IR block address constant.
type BlockAddressConst struct {
	Func  *GlobalIdent
	Block *LocalIdent
}

// String returns the string representation of the block address constant.
func (c *BlockAddressConst) String() string {
	// "blockaddress" "(" GlobalIdent "," LocalIdent ")"
	return fmt.Sprintf("blockaddress(%v, %v)", c.Func, c.Block)
}

// ### [ Helper functions ] ####################################################

// IsConstant ensures that only constants can be assigned to the ast.Constant
// interface.
func (*BoolConst) IsConstant()            {}
func (*IntConst) IsConstant()             {}
func (*FloatConst) IsConstant()           {}
func (*NullConst) IsConstant()            {}
func (*NoneConst) IsConstant()            {}
func (*StructConst) IsConstant()          {}
func (*ArrayConst) IsConstant()           {}
func (*CharArrayConst) IsConstant()       {}
func (*VectorConst) IsConstant()          {}
func (*ZeroInitializerConst) IsConstant() {}
func (*GlobalIdent) IsConstant()          {}
func (*UndefConst) IsConstant()           {}
func (*BlockAddressConst) IsConstant()    {}

// ConstantExpr
func (*AddExpr) IsConstant()            {}
func (*FAddExpr) IsConstant()           {}
func (*SubExpr) IsConstant()            {}
func (*FSubExpr) IsConstant()           {}
func (*MulExpr) IsConstant()            {}
func (*FMulExpr) IsConstant()           {}
func (*UDivExpr) IsConstant()           {}
func (*SDivExpr) IsConstant()           {}
func (*FDivExpr) IsConstant()           {}
func (*URemExpr) IsConstant()           {}
func (*SRemExpr) IsConstant()           {}
func (*FRemExpr) IsConstant()           {}
func (*ShlExpr) IsConstant()            {}
func (*LShrExpr) IsConstant()           {}
func (*AShrExpr) IsConstant()           {}
func (*AndExpr) IsConstant()            {}
func (*OrExpr) IsConstant()             {}
func (*XorExpr) IsConstant()            {}
func (*ExtractElementExpr) IsConstant() {}
func (*InsertElementExpr) IsConstant()  {}
func (*ShuffleVectorExpr) IsConstant()  {}
func (*ExtractValueExpr) IsConstant()   {}
func (*InsertValueExpr) IsConstant()    {}
func (*GetElementPtrExpr) IsConstant()  {}
func (*TruncExpr) IsConstant()          {}
func (*ZExtExpr) IsConstant()           {}
func (*SExtExpr) IsConstant()           {}
func (*FPTruncExpr) IsConstant()        {}
func (*FPExtExpr) IsConstant()          {}
func (*FPToUIExpr) IsConstant()         {}
func (*FPToSIExpr) IsConstant()         {}
func (*UIToFPExpr) IsConstant()         {}
func (*SIToFPExpr) IsConstant()         {}
func (*PtrToIntExpr) IsConstant()       {}
func (*IntToPtrExpr) IsConstant()       {}
func (*BitCastExpr) IsConstant()        {}
func (*AddrSpaceCastExpr) IsConstant()  {}
func (*ICmpExpr) IsConstant()           {}
func (*FCmpExpr) IsConstant()           {}
func (*SelectExpr) IsConstant()         {}
