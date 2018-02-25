package ast

import (
	"fmt"
	"strings"
)

// --- [ Binary expressions ] --------------------------------------------------

type AddExpr struct {
	OverflowFlags []OverflowFlag
	X, Y          *TypeConst
}

func (c *AddExpr) String() string {
	buf := &strings.Builder{}
	buf.WriteString("add")
	for _, flag := range c.OverflowFlags {
		fmt.Fprintf(buf, " %v", flag)
	}
	fmt.Fprintf(buf, " (%v %v, %v %v)", c.X.Type, c.X.Const, c.Y.Type, c.Y.Const)
	return buf.String()
}

type FAddExpr struct {
	X, Y *TypeConst
}

func (c *FAddExpr) String() string {
	return fmt.Sprintf("fadd (%v %v, %v %v)", c.X.Type, c.X.Const, c.Y.Type, c.Y.Const)
}

type SubExpr struct {
	OverflowFlags []OverflowFlag
	X, Y          *TypeConst
}

func (c *SubExpr) String() string {
	buf := &strings.Builder{}
	buf.WriteString("sub")
	for _, flag := range c.OverflowFlags {
		fmt.Fprintf(buf, " %v", flag)
	}
	fmt.Fprintf(buf, " (%v %v, %v %v)", c.X.Type, c.X.Const, c.Y.Type, c.Y.Const)
	return buf.String()
}

type FSubExpr struct {
	X, Y *TypeConst
}

func (c *FSubExpr) String() string {
	return fmt.Sprintf("fsub (%v %v, %v %v)", c.X.Type, c.X.Const, c.Y.Type, c.Y.Const)
}

type MulExpr struct {
	OverflowFlags []OverflowFlag
	X, Y          *TypeConst
}

func (c *MulExpr) String() string {
	buf := &strings.Builder{}
	buf.WriteString("mul")
	for _, flag := range c.OverflowFlags {
		fmt.Fprintf(buf, " %v", flag)
	}
	fmt.Fprintf(buf, " (%v %v, %v %v)", c.X.Type, c.X.Const, c.Y.Type, c.Y.Const)
	return buf.String()
}

type FMulExpr struct {
	X, Y *TypeConst
}

func (c *FMulExpr) String() string {
	return fmt.Sprintf("fmul (%v %v, %v %v)", c.X.Type, c.X.Const, c.Y.Type, c.Y.Const)
}

type UDivExpr struct {
	Exact bool
	X, Y  *TypeConst
}

func (c *UDivExpr) String() string {
	buf := &strings.Builder{}
	buf.WriteString("udiv")
	if c.Exact {
		buf.WriteString(" exact")
	}
	fmt.Fprintf(buf, " (%v %v, %v %v)", c.X.Type, c.X.Const, c.Y.Type, c.Y.Const)
	return buf.String()
}

type SDivExpr struct {
	Exact bool
	X, Y  *TypeConst
}

func (c *SDivExpr) String() string {
	buf := &strings.Builder{}
	buf.WriteString("sdiv")
	if c.Exact {
		buf.WriteString(" exact")
	}
	fmt.Fprintf(buf, " (%v %v, %v %v)", c.X.Type, c.X.Const, c.Y.Type, c.Y.Const)
	return buf.String()
}

type FDivExpr struct {
	X, Y *TypeConst
}

func (c *FDivExpr) String() string {
	return fmt.Sprintf("fdiv (%v %v, %v %v)", c.X.Type, c.X.Const, c.Y.Type, c.Y.Const)
}

type URemExpr struct {
	X, Y *TypeConst
}

func (c *URemExpr) String() string {
	return fmt.Sprintf("urem (%v %v, %v %v)", c.X.Type, c.X.Const, c.Y.Type, c.Y.Const)
}

type SRemExpr struct {
	X, Y *TypeConst
}

func (c *SRemExpr) String() string {
	return fmt.Sprintf("srem (%v %v, %v %v)", c.X.Type, c.X.Const, c.Y.Type, c.Y.Const)
}

type FRemExpr struct {
	X, Y *TypeConst
}

func (c *FRemExpr) String() string {
	return fmt.Sprintf("frem (%v %v, %v %v)", c.X.Type, c.X.Const, c.Y.Type, c.Y.Const)
}

// --- [ Bitwise expressions ] -------------------------------------------------

type ShlExpr struct {
	OverflowFlags []OverflowFlag
	X, Y          *TypeConst
}

func (c *ShlExpr) String() string {
	buf := &strings.Builder{}
	buf.WriteString("shl")
	for _, flag := range c.OverflowFlags {
		fmt.Fprintf(buf, " %v", flag)
	}
	fmt.Fprintf(buf, " (%v %v, %v %v)", c.X.Type, c.X.Const, c.Y.Type, c.Y.Const)
	return buf.String()
}

type LShrExpr struct {
	Exact bool
	X, Y  *TypeConst
}

func (c *LShrExpr) String() string {
	buf := &strings.Builder{}
	buf.WriteString("lshr")
	if c.Exact {
		buf.WriteString(" exact")
	}
	fmt.Fprintf(buf, " (%v %v, %v %v)", c.X.Type, c.X.Const, c.Y.Type, c.Y.Const)
	return buf.String()
}

type AShrExpr struct {
	Exact bool
	X, Y  *TypeConst
}

func (c *AShrExpr) String() string {
	buf := &strings.Builder{}
	buf.WriteString("ashr")
	if c.Exact {
		buf.WriteString(" exact")
	}
	fmt.Fprintf(buf, " (%v %v, %v %v)", c.X.Type, c.X.Const, c.Y.Type, c.Y.Const)
	return buf.String()
}

type AndExpr struct {
	X, Y *TypeConst
}

func (c *AndExpr) String() string {
	return fmt.Sprintf("and (%v %v, %v %v)", c.X.Type, c.X.Const, c.Y.Type, c.Y.Const)
}

type OrExpr struct {
	X, Y *TypeConst
}

func (c *OrExpr) String() string {
	return fmt.Sprintf("or (%v %v, %v %v)", c.X.Type, c.X.Const, c.Y.Type, c.Y.Const)
}

type XorExpr struct {
	X, Y *TypeConst
}

func (c *XorExpr) String() string {
	return fmt.Sprintf("xor (%v %v, %v %v)", c.X.Type, c.X.Const, c.Y.Type, c.Y.Const)
}

// --- [ Vector expressions ] --------------------------------------------------

type ExtractElementExpr struct {
	X     *TypeConst
	Index *TypeConst
}

func (c *ExtractElementExpr) String() string {
	return fmt.Sprintf("extractelement (%v %v, %v %v)", c.X.Type, c.X.Const, c.Index.Type, c.Index.Const)
}

type InsertElementExpr struct {
	X     *TypeConst
	Elem  *TypeConst
	Index *TypeConst
}

func (c *InsertElementExpr) String() string {
	return fmt.Sprintf("insertelement (%v %v, %v %v, %v %v)", c.X.Type, c.X.Const, c.Elem.Type, c.Elem.Const, c.Index.Type, c.Index.Const)
}

type ShuffleVectorExpr struct {
	X, Y *TypeConst
	Mask *TypeConst
}

func (c *ShuffleVectorExpr) String() string {
	return fmt.Sprintf("shufflevector (%v %v, %v %v, %v %v)", c.X.Type, c.X.Const, c.Y.Type, c.Y.Const, c.Mask.Type, c.Mask.Const)
}

// --- [ Aggregate expressions ] -----------------------------------------------

type ExtractValueExpr struct {
	X       *TypeConst
	Indices []int64
}

func (c *ExtractValueExpr) String() string {
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "extractvalue (%v %v", c.X.Type, c.X.Const)
	for _, index := range c.Indices {
		fmt.Fprintf(buf, ", %v", index)
	}
	buf.WriteString(")")
	return buf.String()
}

type InsertValueExpr struct {
	X       *TypeConst
	Elem    *TypeConst
	Indices []int64
}

func (c *InsertValueExpr) String() string {
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "insertvalue (%v %v, %v %v", c.X.Type, c.X.Const, c.Elem.Type, c.Elem.Const)
	for _, index := range c.Indices {
		fmt.Fprintf(buf, ", %v", index)
	}
	buf.WriteString(")")
	return buf.String()
}

// --- [ Memory expressions ] --------------------------------------------------

type GetElementPtrExpr struct {
	InBounds bool
	ElemType Type
	Src      *TypeConst
	Indices  []*GEPConstIndex
}

func (c *GetElementPtrExpr) String() string {
	buf := &strings.Builder{}
	buf.WriteString("getelementptr")
	if c.InBounds {
		buf.WriteString(" inbounds")
	}
	fmt.Fprintf(buf, "(%v, %v %v", c.ElemType, c.Src.Type, c.Src.Const)
	for _, index := range c.Indices {
		buf.WriteString(",")
		if index.InRange {
			buf.WriteString(" inrange")
		}
		fmt.Fprintf(buf, " %v %v", index.Index.Const, index.Index.Const)
	}
	buf.WriteString(")")
	return buf.String()
}

type GEPConstIndex struct {
	InRange bool
	Index   *TypeConst
}

// --- [ Conversion expressions ] ----------------------------------------------

type TruncExpr struct {
	From *TypeConst
	To   Type
}

type ZExtExpr struct {
	From *TypeConst
	To   Type
}

type SExtExpr struct {
	From *TypeConst
	To   Type
}

type FPTruncExpr struct {
	From *TypeConst
	To   Type
}

type FPExtExpr struct {
	From *TypeConst
	To   Type
}

type FPToUIExpr struct {
	From *TypeConst
	To   Type
}

type FPToSIExpr struct {
	From *TypeConst
	To   Type
}

type UIToFPExpr struct {
	From *TypeConst
	To   Type
}

type SIToFPExpr struct {
	From *TypeConst
	To   Type
}

type PtrToIntExpr struct {
	From *TypeConst
	To   Type
}

type IntToPtrExpr struct {
	From *TypeConst
	To   Type
}

type BitCastExpr struct {
	From *TypeConst
	To   Type
}

type AddrSpaceCastExpr struct {
	From *TypeConst
	To   Type
}

// --- [ Other expressions ] ---------------------------------------------------

type ICmpExpr struct {
	Pred IPred
	X, Y *TypeConst
}

func (c *ICmpExpr) String() string {
	return fmt.Sprintf("icmp %v (%v %v, %v %v)", c.Pred, c.X.Type, c.X.Const, c.Y.Type, c.Y.Const)
}

type FCmpExpr struct {
	Pred FPred
	X, Y *TypeConst
}

func (c *FCmpExpr) String() string {
	return fmt.Sprintf("fcmp %v (%v %v, %v %v)", c.Pred, c.X.Type, c.X.Const, c.Y.Type, c.Y.Const)
}

type SelectExpr struct {
	Cond *TypeConst
	X, Y *TypeConst
}

func (c *SelectExpr) String() string {
	return fmt.Sprintf("select (%v %v, %v %v, %v %v)", c.Cond.Type, c.Cond.Const, c.X.Type, c.X.Const, c.Y.Type, c.Y.Const)
}
