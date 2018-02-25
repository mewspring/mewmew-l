package ast

import (
	"fmt"
	"strconv"
	"strings"
)

// === [ Constants ] ===========================================================

type Constant interface {
	fmt.Stringer
	isConstant()
}

// --- [ Boolean Constants ] ---------------------------------------------------

type BoolConst struct {
	X bool
}

func (c *BoolConst) String() string {
	if c.X {
		return "true"
	}
	return "false"
}

// --- [ Integer Constants ] ---------------------------------------------------

type IntConst struct {
	X int64
}

func (c *IntConst) String() string {
	return strconv.FormatInt(c.X, 10)
}

// --- [ Floating-point Constants ] --------------------------------------------

type FloatConst struct {
	X float64
}

func (c *FloatConst) String() string {
	return strconv.FormatFloat(c.X, 'f', -1, 64)
}

// --- [ Null Pointer Constants ] ----------------------------------------------

type NullConst struct{}

func (*NullConst) String() string {
	return "null"
}

// --- [ Token Constants ] -----------------------------------------------------

type NoneConst struct{}

func (*NoneConst) String() string {
	return "none"
}

// --- [ Structure Constants ] -------------------------------------------------

type StructConst struct {
	Packed bool
	Fields []*TypeConst
}

func (c *StructConst) String() string {
	buf := &strings.Builder{}
	if c.Packed {
		buf.WriteString("<")
	}
	buf.WriteString("{")
	for i, field := range c.Fields {
		if i != 0 {
			buf.WriteString(", ")
		}
		fmt.Fprintf(buf, "%v %v", field.Type, field.Const)
	}
	buf.WriteString("}")
	if c.Packed {
		buf.WriteString(">")
	}
	return buf.String()
}

// --- [ Array Constants ] -----------------------------------------------------

type ArrayConst struct {
	Elems []*TypeConst
}

func (c *ArrayConst) String() string {
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

type CharArrayConst struct {
	Value string
}

func (c *CharArrayConst) String() string {
	return fmt.Sprintf("c%q", c.Value)
}

// --- [ Vector Constants ] ----------------------------------------------------

type VectorConst struct {
	Elems []*TypeConst
}

func (c *VectorConst) String() string {
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

type ZeroInitializerConst struct{}

func (*ZeroInitializerConst) String() string {
	return "zeroinitializer"
}

// --- [ Undefined Values ] ----------------------------------------------------

type UndefConst struct{}

func (*UndefConst) String() string {
	return "undef"
}

// --- [ Addresses of Basic Blocks ] -------------------------------------------

type BlockAddressConst struct {
	Func  *GlobalIdent
	Block *LocalIdent
}

func (c *BlockAddressConst) String() string {
	return fmt.Sprintf("blockaddress(%v, %v)", c.Func, c.Block)
}

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
