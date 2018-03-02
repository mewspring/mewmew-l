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
	// isConstant ensures that only constants can be assigned to the ast.Constant
	// interface.
	isConstant()
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
		fmt.Fprintf(buf, "%v %v", elem.Type, elem.Const)
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
		fmt.Fprintf(buf, "%v %v", elem.Type, elem.Const)
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

// isConstant ensures that only constants can be assigned to the ast.Constant
// interface.
func (*BoolConst) isConstant()            {}
func (*IntConst) isConstant()             {}
func (*FloatConst) isConstant()           {}
func (*NullConst) isConstant()            {}
func (*NoneConst) isConstant()            {}
func (*StructConst) isConstant()          {}
func (*ArrayConst) isConstant()           {}
func (*CharArrayConst) isConstant()       {}
func (*VectorConst) isConstant()          {}
func (*ZeroInitializerConst) isConstant() {}
func (*GlobalIdent) isConstant()          {}
func (*UndefConst) isConstant()           {}
func (*BlockAddressConst) isConstant()    {}

// ConstantExpr
func (*AddExpr) isConstant()            {}
func (*FAddExpr) isConstant()           {}
func (*SubExpr) isConstant()            {}
func (*FSubExpr) isConstant()           {}
func (*MulExpr) isConstant()            {}
func (*FMulExpr) isConstant()           {}
func (*UDivExpr) isConstant()           {}
func (*SDivExpr) isConstant()           {}
func (*FDivExpr) isConstant()           {}
func (*URemExpr) isConstant()           {}
func (*SRemExpr) isConstant()           {}
func (*FRemExpr) isConstant()           {}
func (*ShlExpr) isConstant()            {}
func (*LShrExpr) isConstant()           {}
func (*AShrExpr) isConstant()           {}
func (*AndExpr) isConstant()            {}
func (*OrExpr) isConstant()             {}
func (*XorExpr) isConstant()            {}
func (*ExtractElementExpr) isConstant() {}
func (*InsertElementExpr) isConstant()  {}
func (*ShuffleVectorExpr) isConstant()  {}
func (*ExtractValueExpr) isConstant()   {}
func (*InsertValueExpr) isConstant()    {}
func (*GetElementPtrExpr) isConstant()  {}
func (*TruncExpr) isConstant()          {}
func (*ZExtExpr) isConstant()           {}
func (*SExtExpr) isConstant()           {}
func (*FPTruncExpr) isConstant()        {}
func (*FPExtExpr) isConstant()          {}
func (*FPToUIExpr) isConstant()         {}
func (*FPToSIExpr) isConstant()         {}
func (*UIToFPExpr) isConstant()         {}
func (*SIToFPExpr) isConstant()         {}
func (*PtrToIntExpr) isConstant()       {}
func (*IntToPtrExpr) isConstant()       {}
func (*BitCastExpr) isConstant()        {}
func (*AddrSpaceCastExpr) isConstant()  {}
func (*ICmpExpr) isConstant()           {}
func (*FCmpExpr) isConstant()           {}
func (*SelectExpr) isConstant()         {}

// Ensure that each constant implements the ast.Constant interface.
var (
	_ Constant = (*BoolConst)(nil)
	_ Constant = (*IntConst)(nil)
	_ Constant = (*FloatConst)(nil)
	_ Constant = (*NullConst)(nil)
	_ Constant = (*NoneConst)(nil)
	_ Constant = (*StructConst)(nil)
	_ Constant = (*ArrayConst)(nil)
	_ Constant = (*CharArrayConst)(nil)
	_ Constant = (*VectorConst)(nil)
	_ Constant = (*ZeroInitializerConst)(nil)
	_ Constant = (*GlobalIdent)(nil)
	_ Constant = (*UndefConst)(nil)
	_ Constant = (*BlockAddressConst)(nil)

	// ConstantExpr
	_ Constant = (*AddExpr)(nil)
	_ Constant = (*FAddExpr)(nil)
	_ Constant = (*SubExpr)(nil)
	_ Constant = (*FSubExpr)(nil)
	_ Constant = (*MulExpr)(nil)
	_ Constant = (*FMulExpr)(nil)
	_ Constant = (*UDivExpr)(nil)
	_ Constant = (*SDivExpr)(nil)
	_ Constant = (*FDivExpr)(nil)
	_ Constant = (*URemExpr)(nil)
	_ Constant = (*SRemExpr)(nil)
	_ Constant = (*FRemExpr)(nil)
	_ Constant = (*ShlExpr)(nil)
	_ Constant = (*LShrExpr)(nil)
	_ Constant = (*AShrExpr)(nil)
	_ Constant = (*AndExpr)(nil)
	_ Constant = (*OrExpr)(nil)
	_ Constant = (*XorExpr)(nil)
	_ Constant = (*ExtractElementExpr)(nil)
	_ Constant = (*InsertElementExpr)(nil)
	_ Constant = (*ShuffleVectorExpr)(nil)
	_ Constant = (*ExtractValueExpr)(nil)
	_ Constant = (*InsertValueExpr)(nil)
	_ Constant = (*GetElementPtrExpr)(nil)
	_ Constant = (*TruncExpr)(nil)
	_ Constant = (*ZExtExpr)(nil)
	_ Constant = (*SExtExpr)(nil)
	_ Constant = (*FPTruncExpr)(nil)
	_ Constant = (*FPExtExpr)(nil)
	_ Constant = (*FPToUIExpr)(nil)
	_ Constant = (*FPToSIExpr)(nil)
	_ Constant = (*UIToFPExpr)(nil)
	_ Constant = (*SIToFPExpr)(nil)
	_ Constant = (*PtrToIntExpr)(nil)
	_ Constant = (*IntToPtrExpr)(nil)
	_ Constant = (*BitCastExpr)(nil)
	_ Constant = (*AddrSpaceCastExpr)(nil)
	_ Constant = (*ICmpExpr)(nil)
	_ Constant = (*FCmpExpr)(nil)
	_ Constant = (*SelectExpr)(nil)
)
