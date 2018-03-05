package ast

import (
	"fmt"
	"strings"

	"github.com/mewmew/l/ll"
	"github.com/mewmew/l/ll/types"
)

// === [ Constant expressions ] ================================================

// --- [ Binary expressions ] --------------------------------------------------

// ~~~ [ add ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// AddExpr is an LLVM IR add expression.
type AddExpr struct {
	OverflowFlags []ll.OverflowFlag
	X, Y          *TypeConst
}

// String returns a string representation of the constant expression.
func (c *AddExpr) String() string {
	// "add" OverflowFlags "(" Type Constant "," Type Constant ")"
	buf := &strings.Builder{}
	buf.WriteString("add")
	for _, flag := range c.OverflowFlags {
		fmt.Fprintf(buf, " %v", flag)
	}
	fmt.Fprintf(buf, " (%v, %v)", c.X, c.Y)
	return buf.String()
}

// ~~~ [ fadd ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// FAddExpr is an LLVM IR fadd expression.
type FAddExpr struct {
	X, Y *TypeConst
}

// String returns a string representation of the constant expression.
func (c *FAddExpr) String() string {
	// "fadd" "(" Type Constant "," Type Constant ")"
	return fmt.Sprintf("fadd (%v, %v)", c.X, c.Y)
}

// ~~~ [ sub ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// SubExpr is an LLVM IR sub expression.
type SubExpr struct {
	OverflowFlags []ll.OverflowFlag
	X, Y          *TypeConst
}

// String returns a string representation of the constant expression.
func (c *SubExpr) String() string {
	// "sub" OverflowFlags "(" Type Constant "," Type Constant ")"
	buf := &strings.Builder{}
	buf.WriteString("sub")
	for _, flag := range c.OverflowFlags {
		fmt.Fprintf(buf, " %v", flag)
	}
	fmt.Fprintf(buf, " (%v, %v)", c.X, c.Y)
	return buf.String()
}

// ~~~ [ fsub ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// FSubExpr is an LLVM IR fsub expression.
type FSubExpr struct {
	X, Y *TypeConst
}

// String returns a string representation of the constant expression.
func (c *FSubExpr) String() string {
	// "fsub" "(" Type Constant "," Type Constant ")"
	return fmt.Sprintf("fsub (%v, %v)", c.X, c.Y)
}

// ~~~ [ mul ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// MulExpr is an LLVM IR mul expression.
type MulExpr struct {
	OverflowFlags []ll.OverflowFlag
	X, Y          *TypeConst
}

// String returns a string representation of the constant expression.
func (c *MulExpr) String() string {
	// "mul" OverflowFlags "(" Type Constant "," Type Constant ")"
	buf := &strings.Builder{}
	buf.WriteString("mul")
	for _, flag := range c.OverflowFlags {
		fmt.Fprintf(buf, " %v", flag)
	}
	fmt.Fprintf(buf, " (%v, %v)", c.X, c.Y)
	return buf.String()
}

// ~~~ [ fmul ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// FMulExpr is an LLVM IR fmul expression.
type FMulExpr struct {
	X, Y *TypeConst
}

// String returns a string representation of the constant expression.
func (c *FMulExpr) String() string {
	// "fmul" "(" Type Constant "," Type Constant ")"
	return fmt.Sprintf("fmul (%v, %v)", c.X, c.Y)
}

// ~~~ [ udiv ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// UDivExpr is an LLVM IR udiv expression.
type UDivExpr struct {
	Exact bool
	X, Y  *TypeConst
}

// String returns a string representation of the constant expression.
func (c *UDivExpr) String() string {
	// "udiv" OptExact "(" Type Constant "," Type Constant ")"
	buf := &strings.Builder{}
	buf.WriteString("udiv")
	if c.Exact {
		buf.WriteString(" exact")
	}
	fmt.Fprintf(buf, " (%v, %v)", c.X, c.Y)
	return buf.String()
}

// ~~~ [ sdiv ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// SDivExpr is an LLVM IR sdiv expression.
type SDivExpr struct {
	Exact bool
	X, Y  *TypeConst
}

// String returns a string representation of the constant expression.
func (c *SDivExpr) String() string {
	// "sdiv" OptExact "(" Type Constant "," Type Constant ")"
	buf := &strings.Builder{}
	buf.WriteString("sdiv")
	if c.Exact {
		buf.WriteString(" exact")
	}
	fmt.Fprintf(buf, " (%v, %v)", c.X, c.Y)
	return buf.String()
}

// ~~~ [ fdiv ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// FDivExpr is an LLVM IR fdiv expression.
type FDivExpr struct {
	X, Y *TypeConst
}

// String returns a string representation of the constant expression.
func (c *FDivExpr) String() string {
	// "fdiv" "(" Type Constant "," Type Constant ")"
	return fmt.Sprintf("fdiv (%v, %v)", c.X, c.Y)
}

// ~~~ [ urem ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// URemExpr is an LLVM IR urem expression.
type URemExpr struct {
	X, Y *TypeConst
}

// String returns a string representation of the constant expression.
func (c *URemExpr) String() string {
	// "urem" "(" Type Constant "," Type Constant ")"
	return fmt.Sprintf("urem (%v, %v)", c.X, c.Y)
}

// ~~~ [ srem ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// SRemExpr is an LLVM IR srem expression.
type SRemExpr struct {
	X, Y *TypeConst
}

// String returns a string representation of the constant expression.
func (c *SRemExpr) String() string {
	// "srem" "(" Type Constant "," Type Constant ")"
	return fmt.Sprintf("srem (%v, %v)", c.X, c.Y)
}

// ~~~ [ frem ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// FRemExpr is an LLVM IR frem expression.
type FRemExpr struct {
	X, Y *TypeConst
}

// String returns a string representation of the constant expression.
func (c *FRemExpr) String() string {
	// "frem" "(" Type Constant "," Type Constant ")"
	return fmt.Sprintf("frem (%v, %v)", c.X, c.Y)
}

// --- [ Bitwise expressions ] -------------------------------------------------

// ~~~ [ shl ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// ShlExpr is an LLVM IR shl expression.
type ShlExpr struct {
	OverflowFlags []ll.OverflowFlag
	X, Y          *TypeConst
}

// String returns a string representation of the constant expression.
func (c *ShlExpr) String() string {
	// "shl" OverflowFlags "(" Type Constant "," Type Constant ")"
	buf := &strings.Builder{}
	buf.WriteString("shl")
	for _, flag := range c.OverflowFlags {
		fmt.Fprintf(buf, " %v", flag)
	}
	fmt.Fprintf(buf, " (%v, %v)", c.X, c.Y)
	return buf.String()
}

// ~~~ [ lshr ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// LShrExpr is an LLVM IR lshr expression.
type LShrExpr struct {
	Exact bool
	X, Y  *TypeConst
}

// String returns a string representation of the constant expression.
func (c *LShrExpr) String() string {
	// "lshr" OptExact "(" Type Constant "," Type Constant ")"
	buf := &strings.Builder{}
	buf.WriteString("lshr")
	if c.Exact {
		buf.WriteString(" exact")
	}
	fmt.Fprintf(buf, " (%v, %v)", c.X, c.Y)
	return buf.String()
}

// ~~~ [ ashr ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// AShrExpr is an LLVM IR ashr expression.
type AShrExpr struct {
	Exact bool
	X, Y  *TypeConst
}

// String returns a string representation of the constant expression.
func (c *AShrExpr) String() string {
	// "ashr" OptExact "(" Type Constant "," Type Constant ")"
	buf := &strings.Builder{}
	buf.WriteString("ashr")
	if c.Exact {
		buf.WriteString(" exact")
	}
	fmt.Fprintf(buf, " (%v, %v)", c.X, c.Y)
	return buf.String()
}

// ~~~ [ and ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// AndExpr is an LLVM IR and expression.
type AndExpr struct {
	X, Y *TypeConst
}

// String returns a string representation of the constant expression.
func (c *AndExpr) String() string {
	// "and" "(" Type Constant "," Type Constant ")"
	return fmt.Sprintf("and (%v, %v)", c.X, c.Y)
}

// ~~~ [ or ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// OrExpr is an LLVM IR or expression.
type OrExpr struct {
	X, Y *TypeConst
}

// String returns a string representation of the constant expression.
func (c *OrExpr) String() string {
	// "or" "(" Type Constant "," Type Constant ")"
	return fmt.Sprintf("or (%v, %v)", c.X, c.Y)
}

// ~~~ [ xor ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// XorExpr is an LLVM IR xor expression.
type XorExpr struct {
	X, Y *TypeConst
}

// String returns a string representation of the constant expression.
func (c *XorExpr) String() string {
	// "xor" "(" Type Constant "," Type Constant ")"
	return fmt.Sprintf("xor (%v, %v)", c.X, c.Y)
}

// --- [ Vector expressions ] --------------------------------------------------

// ~~~ [ extractelement ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// ExtractElementExpr is an LLVM IR extractelement expression.
type ExtractElementExpr struct {
	X     *TypeConst
	Index *TypeConst
}

// String returns a string representation of the constant expression.
func (c *ExtractElementExpr) String() string {
	// "extractelement" "(" Type Constant "," Type Constant ")"
	return fmt.Sprintf("extractelement (%v, %v)", c.X, c.Index)
}

// ~~~ [ insertelement ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// InsertElementExpr is an LLVM IR insertelement expression.
type InsertElementExpr struct {
	X     *TypeConst
	Elem  *TypeConst
	Index *TypeConst
}

// String returns a string representation of the constant expression.
func (c *InsertElementExpr) String() string {
	// "insertelement" "(" Type Constant "," Type Constant "," Type Constant ")"
	return fmt.Sprintf("insertelement (%v, %v, %v)", c.X, c.Elem, c.Index)
}

// ~~~ [ shufflevector ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// ShuffleVectorExpr is an LLVM IR shufflevector expression.
type ShuffleVectorExpr struct {
	X, Y *TypeConst
	Mask *TypeConst
}

// String returns a string representation of the constant expression.
func (c *ShuffleVectorExpr) String() string {
	// "shufflevector" "(" Type Constant "," Type Constant "," Type Constant ")"
	return fmt.Sprintf("shufflevector (%v, %v, %v)", c.X, c.Y, c.Mask)
}

// --- [ Aggregate expressions ] -----------------------------------------------

// ~~~ [ extractvalue ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// ExtractValueExpr is an LLVM IR extractvalue expression.
type ExtractValueExpr struct {
	X       *TypeConst
	Indices []int64
}

// String returns a string representation of the constant expression.
func (c *ExtractValueExpr) String() string {
	// "extractvalue" "(" Type Constant Indices ")"
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "extractvalue (%v", c.X)
	for _, index := range c.Indices {
		fmt.Fprintf(buf, ", %v", index)
	}
	buf.WriteString(")")
	return buf.String()
}

// ~~~ [ insertvalue ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// InsertValueExpr is an LLVM IR insertvalue expression.
type InsertValueExpr struct {
	X       *TypeConst
	Elem    *TypeConst
	Indices []int64
}

// String returns a string representation of the constant expression.
func (c *InsertValueExpr) String() string {
	// "insertvalue" "(" Type Constant "," Type Constant Indices ")"
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "insertvalue (%v, %v", c.X, c.Elem)
	for _, index := range c.Indices {
		fmt.Fprintf(buf, ", %v", index)
	}
	buf.WriteString(")")
	return buf.String()
}

// --- [ Memory expressions ] --------------------------------------------------

// ~~~ [ getelementptr ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// GetElementPtrExpr is an LLVM IR getelementptr expression.
type GetElementPtrExpr struct {
	InBounds bool
	ElemType types.Type
	Src      *TypeConst
	Indices  []*GEPConstIndex
}

// String returns a string representation of the constant expression.
func (c *GetElementPtrExpr) String() string {
	// "getelementptr" OptInBounds "(" Type "," Type Constant "," GEPConstIndices ")"
	buf := &strings.Builder{}
	buf.WriteString("getelementptr")
	if c.InBounds {
		buf.WriteString(" inbounds")
	}
	fmt.Fprintf(buf, " (%v, %v", c.ElemType, c.Src)
	for _, index := range c.Indices {
		fmt.Fprintf(buf, ", %v", index)
	}
	buf.WriteString(")")
	return buf.String()
}

// GEPConstIndex is the index of a getelementptr expression.
type GEPConstIndex struct {
	InRange bool
	Index   *TypeConst
}

// String returns a string representation of the getelementptr index.
func (index *GEPConstIndex) String() string {
	// OptInrange Type Constant
	buf := &strings.Builder{}
	if index.InRange {
		buf.WriteString("inrange ")
	}
	buf.WriteString(index.Index.String())
	return buf.String()
}

// --- [ Conversion expressions ] ----------------------------------------------

// ~~~ [ trunc ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// TruncExpr is an LLVM IR trunc expression.
type TruncExpr struct {
	From *TypeConst
	To   types.Type
}

// String returns a string representation of the constant expression.
func (c *TruncExpr) String() string {
	// "trunc" "(" Type Constant "to" Type ")"
	return fmt.Sprintf("trunc (%v to %v)", c.From, c.To)
}

// ~~~ [ zext ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// ZExtExpr is an LLVM IR zext expression.
type ZExtExpr struct {
	From *TypeConst
	To   types.Type
}

// String returns a string representation of the constant expression.
func (c *ZExtExpr) String() string {
	// "zext" "(" Type Constant "to" Type ")"
	return fmt.Sprintf("zext (%v to %v)", c.From, c.To)
}

// ~~~ [ sext ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// SExtExpr is an LLVM IR sext expression.
type SExtExpr struct {
	From *TypeConst
	To   types.Type
}

// String returns a string representation of the constant expression.
func (c *SExtExpr) String() string {
	// "sext" "(" Type Constant "to" Type ")"
	return fmt.Sprintf("sext (%v to %v)", c.From, c.To)
}

// ~~~ [ fptrunc ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// FPTruncExpr is an LLVM IR fptrunc expression.
type FPTruncExpr struct {
	From *TypeConst
	To   types.Type
}

// String returns a string representation of the constant expression.
func (c *FPTruncExpr) String() string {
	// "fptrunc" "(" Type Constant "to" Type ")"
	return fmt.Sprintf("fptrunc (%v to %v)", c.From, c.To)
}

// ~~~ [ fpext ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// FPExtExpr is an LLVM IR fpext expression.
type FPExtExpr struct {
	From *TypeConst
	To   types.Type
}

// String returns a string representation of the constant expression.
func (c *FPExtExpr) String() string {
	// "fpext" "(" Type Constant "to" Type ")"
	return fmt.Sprintf("fpext (%v to %v)", c.From, c.To)
}

// ~~~ [ fptoui ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// FPToUIExpr is an LLVM IR fptoui expression.
type FPToUIExpr struct {
	From *TypeConst
	To   types.Type
}

// String returns a string representation of the constant expression.
func (c *FPToUIExpr) String() string {
	// "fptoui" "(" Type Constant "to" Type ")"
	return fmt.Sprintf("fptoui (%v to %v)", c.From, c.To)
}

// ~~~ [ fptosi ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// FPToSIExpr is an LLVM IR fptosi expression.
type FPToSIExpr struct {
	From *TypeConst
	To   types.Type
}

// String returns a string representation of the constant expression.
func (c *FPToSIExpr) String() string {
	// "fptosi" "(" Type Constant "to" Type ")"
	return fmt.Sprintf("fptosi (%v to %v)", c.From, c.To)
}

// ~~~ [ uitofp ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// UIToFPExpr is an LLVM IR uitofp expression.
type UIToFPExpr struct {
	From *TypeConst
	To   types.Type
}

// String returns a string representation of the constant expression.
func (c *UIToFPExpr) String() string {
	// "uitofp" "(" Type Constant "to" Type ")"
	return fmt.Sprintf("uitofp (%v to %v)", c.From, c.To)
}

// ~~~ [ sitofp ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// SIToFPExpr is an LLVM IR sitofp expression.
type SIToFPExpr struct {
	From *TypeConst
	To   types.Type
}

// String returns a string representation of the constant expression.
func (c *SIToFPExpr) String() string {
	// "sitofp" "(" Type Constant "to" Type ")"
	return fmt.Sprintf("sitofp (%v to %v)", c.From, c.To)
}

// ~~~ [ ptrtoint ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// PtrToIntExpr is an LLVM IR ptrtoint expression.
type PtrToIntExpr struct {
	From *TypeConst
	To   types.Type
}

// String returns a string representation of the constant expression.
func (c *PtrToIntExpr) String() string {
	// "ptrtoint" "(" Type Constant "to" Type ")"
	return fmt.Sprintf("ptrtoint (%v to %v)", c.From, c.To)
}

// ~~~ [ inttoptr ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// IntToPtrExpr is an LLVM IR inttoptr expression.
type IntToPtrExpr struct {
	From *TypeConst
	To   types.Type
}

// String returns a string representation of the constant expression.
func (c *IntToPtrExpr) String() string {
	// "inttoptr" "(" Type Constant "to" Type ")"
	return fmt.Sprintf("inttoptr (%v to %v)", c.From, c.To)
}

// ~~~ [ bitcast ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// BitCastExpr is an LLVM IR bitcast expression.
type BitCastExpr struct {
	From *TypeConst
	To   types.Type
}

// String returns a string representation of the constant expression.
func (c *BitCastExpr) String() string {
	// "bitcast" "(" Type Constant "to" Type ")"
	return fmt.Sprintf("bitcast (%v to %v)", c.From, c.To)
}

// ~~~ [ addrspacecast ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// AddrSpaceCastExpr is an LLVM IR addrspacecast expression.
type AddrSpaceCastExpr struct {
	From *TypeConst
	To   types.Type
}

// String returns a string representation of the constant expression.
func (c *AddrSpaceCastExpr) String() string {
	// "addrspacecast" "(" Type Constant "to" Type ")"
	return fmt.Sprintf("addrspacecast (%v to %v)", c.From, c.To)
}

// --- [ Other expressions ] ---------------------------------------------------

// ~~~ [ icmp ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// ICmpExpr is an LLVM IR icmp expression.
type ICmpExpr struct {
	Pred ll.IPred
	X, Y *TypeConst
}

// String returns a string representation of the constant expression.
func (c *ICmpExpr) String() string {
	// "icmp" IPred "(" Type Constant "," Type Constant ")"
	return fmt.Sprintf("icmp %v (%v, %v)", c.Pred, c.X, c.Y)
}

// ~~~ [ fcmp ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// FCmpExpr is an LLVM IR fcmp expression.
type FCmpExpr struct {
	Pred ll.FPred
	X, Y *TypeConst
}

// String returns a string representation of the constant expression.
func (c *FCmpExpr) String() string {
	// "fcmp" FPred "(" Type Constant "," Type Constant ")"
	return fmt.Sprintf("fcmp %v (%v, %v)", c.Pred, c.X, c.Y)
}

// ~~~ [ select ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// SelectExpr is an LLVM IR select expression.
type SelectExpr struct {
	Cond *TypeConst
	X, Y *TypeConst
}

// String returns a string representation of the constant expression.
func (c *SelectExpr) String() string {
	// "select" "(" Type Constant "," Type Constant "," Type Constant ")"
	return fmt.Sprintf("select (%v, %v, %v)", c.Cond, c.X, c.Y)
}
