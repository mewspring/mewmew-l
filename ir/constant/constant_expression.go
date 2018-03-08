package constant

import (
	"fmt"
	"strings"

	"github.com/mewmew/l/ir"
	"github.com/mewmew/l/ll"
	"github.com/mewmew/l/ll/types"
)

// === [ Constant expressions ] ================================================

// --- [ Binary expressions ] --------------------------------------------------

// ~~~ [ add ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// AddExpr is an LLVM IR add expression.
type AddExpr struct {
	OverflowFlags []ll.OverflowFlag
	X, Y          ir.Constant
}

// String returns the string representation of the constant expression as a
// type-value pair.
func (c *AddExpr) String() string {
	return fmt.Sprintf("%v %v", c.Type(), c.Ident())
}

// Type returns the type of the bitcast expression.
func (c *AddExpr) Type() types.Type {
	return c.X.Type()
}

// Ident returns the identifier associated with the bitcast expression.
func (c *AddExpr) Ident() string {
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
	X, Y ir.Constant
}

// String returns the string representation of the constant expression as a
// type-value pair.
func (c *FAddExpr) String() string {
	return fmt.Sprintf("%v %v", c.Type(), c.Ident())
}

// Type returns the type of the bitcast expression.
func (c *FAddExpr) Type() types.Type {
	return c.X.Type()
}

// Ident returns the identifier associated with the bitcast expression.
func (c *FAddExpr) Ident() string {
	// "fadd" "(" Type Constant "," Type Constant ")"
	return fmt.Sprintf("fadd (%v, %v)", c.X, c.Y)
}

// ~~~ [ sub ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// SubExpr is an LLVM IR sub expression.
type SubExpr struct {
	OverflowFlags []ll.OverflowFlag
	X, Y          ir.Constant
}

// String returns the string representation of the constant expression as a
// type-value pair.
func (c *SubExpr) String() string {
	return fmt.Sprintf("%v %v", c.Type(), c.Ident())
}

// Type returns the type of the bitcast expression.
func (c *SubExpr) Type() types.Type {
	return c.X.Type()
}

// Ident returns the identifier associated with the bitcast expression.
func (c *SubExpr) Ident() string {
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
	X, Y ir.Constant
}

// String returns the string representation of the constant expression as a
// type-value pair.
func (c *FSubExpr) String() string {
	return fmt.Sprintf("%v %v", c.Type(), c.Ident())
}

// Type returns the type of the bitcast expression.
func (c *FSubExpr) Type() types.Type {
	return c.X.Type()
}

// Ident returns the identifier associated with the bitcast expression.
func (c *FSubExpr) Ident() string {
	// "fsub" "(" Type Constant "," Type Constant ")"
	return fmt.Sprintf("fsub (%v, %v)", c.X, c.Y)
}

// ~~~ [ mul ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// MulExpr is an LLVM IR mul expression.
type MulExpr struct {
	OverflowFlags []ll.OverflowFlag
	X, Y          ir.Constant
}

// String returns the string representation of the constant expression as a
// type-value pair.
func (c *MulExpr) String() string {
	return fmt.Sprintf("%v %v", c.Type(), c.Ident())
}

// Type returns the type of the bitcast expression.
func (c *MulExpr) Type() types.Type {
	return c.X.Type()
}

// Ident returns the identifier associated with the bitcast expression.
func (c *MulExpr) Ident() string {
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
	X, Y ir.Constant
}

// String returns the string representation of the constant expression as a
// type-value pair.
func (c *FMulExpr) String() string {
	return fmt.Sprintf("%v %v", c.Type(), c.Ident())
}

// Type returns the type of the bitcast expression.
func (c *FMulExpr) Type() types.Type {
	return c.X.Type()
}

// Ident returns the identifier associated with the bitcast expression.
func (c *FMulExpr) Ident() string {
	// "fmul" "(" Type Constant "," Type Constant ")"
	return fmt.Sprintf("fmul (%v, %v)", c.X, c.Y)
}

// ~~~ [ udiv ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// UDivExpr is an LLVM IR udiv expression.
type UDivExpr struct {
	Exact bool
	X, Y  ir.Constant
}

// String returns the string representation of the constant expression as a
// type-value pair.
func (c *UDivExpr) String() string {
	return fmt.Sprintf("%v %v", c.Type(), c.Ident())
}

// Type returns the type of the bitcast expression.
func (c *UDivExpr) Type() types.Type {
	return c.X.Type()
}

// Ident returns the identifier associated with the bitcast expression.
func (c *UDivExpr) Ident() string {
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
	X, Y  ir.Constant
}

// String returns the string representation of the constant expression as a
// type-value pair.
func (c *SDivExpr) String() string {
	return fmt.Sprintf("%v %v", c.Type(), c.Ident())
}

// Type returns the type of the bitcast expression.
func (c *SDivExpr) Type() types.Type {
	return c.X.Type()
}

// Ident returns the identifier associated with the bitcast expression.
func (c *SDivExpr) Ident() string {
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
	X, Y ir.Constant
}

// String returns the string representation of the constant expression as a
// type-value pair.
func (c *FDivExpr) String() string {
	return fmt.Sprintf("%v %v", c.Type(), c.Ident())
}

// Type returns the type of the bitcast expression.
func (c *FDivExpr) Type() types.Type {
	return c.X.Type()
}

// Ident returns the identifier associated with the bitcast expression.
func (c *FDivExpr) Ident() string {
	// "fdiv" "(" Type Constant "," Type Constant ")"
	return fmt.Sprintf("fdiv (%v, %v)", c.X, c.Y)
}

// ~~~ [ urem ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// URemExpr is an LLVM IR urem expression.
type URemExpr struct {
	X, Y ir.Constant
}

// String returns the string representation of the constant expression as a
// type-value pair.
func (c *URemExpr) String() string {
	return fmt.Sprintf("%v %v", c.Type(), c.Ident())
}

// Type returns the type of the bitcast expression.
func (c *URemExpr) Type() types.Type {
	return c.X.Type()
}

// Ident returns the identifier associated with the bitcast expression.
func (c *URemExpr) Ident() string {
	// "urem" "(" Type Constant "," Type Constant ")"
	return fmt.Sprintf("urem (%v, %v)", c.X, c.Y)
}

// ~~~ [ srem ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// SRemExpr is an LLVM IR srem expression.
type SRemExpr struct {
	X, Y ir.Constant
}

// String returns the string representation of the constant expression as a
// type-value pair.
func (c *SRemExpr) String() string {
	return fmt.Sprintf("%v %v", c.Type(), c.Ident())
}

// Type returns the type of the bitcast expression.
func (c *SRemExpr) Type() types.Type {
	return c.X.Type()
}

// Ident returns the identifier associated with the bitcast expression.
func (c *SRemExpr) Ident() string {
	// "srem" "(" Type Constant "," Type Constant ")"
	return fmt.Sprintf("srem (%v, %v)", c.X, c.Y)
}

// ~~~ [ frem ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// FRemExpr is an LLVM IR frem expression.
type FRemExpr struct {
	X, Y ir.Constant
}

// String returns the string representation of the constant expression as a
// type-value pair.
func (c *FRemExpr) String() string {
	return fmt.Sprintf("%v %v", c.Type(), c.Ident())
}

// Type returns the type of the bitcast expression.
func (c *FRemExpr) Type() types.Type {
	return c.X.Type()
}

// Ident returns the identifier associated with the bitcast expression.
func (c *FRemExpr) Ident() string {
	// "frem" "(" Type Constant "," Type Constant ")"
	return fmt.Sprintf("frem (%v, %v)", c.X, c.Y)
}

// --- [ Bitwise expressions ] -------------------------------------------------

// ~~~ [ shl ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// ShlExpr is an LLVM IR shl expression.
type ShlExpr struct {
	OverflowFlags []ll.OverflowFlag
	X, Y          ir.Constant
}

// String returns the string representation of the constant expression as a
// type-value pair.
func (c *ShlExpr) String() string {
	return fmt.Sprintf("%v %v", c.Type(), c.Ident())
}

// Type returns the type of the bitcast expression.
func (c *ShlExpr) Type() types.Type {
	return c.X.Type()
}

// Ident returns the identifier associated with the bitcast expression.
func (c *ShlExpr) Ident() string {
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
	X, Y  ir.Constant
}

// String returns the string representation of the constant expression as a
// type-value pair.
func (c *LShrExpr) String() string {
	return fmt.Sprintf("%v %v", c.Type(), c.Ident())
}

// Type returns the type of the bitcast expression.
func (c *LShrExpr) Type() types.Type {
	return c.X.Type()
}

// Ident returns the identifier associated with the bitcast expression.
func (c *LShrExpr) Ident() string {
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
	X, Y  ir.Constant
}

// String returns the string representation of the constant expression as a
// type-value pair.
func (c *AShrExpr) String() string {
	return fmt.Sprintf("%v %v", c.Type(), c.Ident())
}

// Type returns the type of the bitcast expression.
func (c *AShrExpr) Type() types.Type {
	return c.X.Type()
}

// Ident returns the identifier associated with the bitcast expression.
func (c *AShrExpr) Ident() string {
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
	X, Y ir.Constant
}

// String returns the string representation of the constant expression as a
// type-value pair.
func (c *AndExpr) String() string {
	return fmt.Sprintf("%v %v", c.Type(), c.Ident())
}

// Type returns the type of the bitcast expression.
func (c *AndExpr) Type() types.Type {
	return c.X.Type()
}

// Ident returns the identifier associated with the bitcast expression.
func (c *AndExpr) Ident() string {
	// "and" "(" Type Constant "," Type Constant ")"
	return fmt.Sprintf("and (%v, %v)", c.X, c.Y)
}

// ~~~ [ or ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// OrExpr is an LLVM IR or expression.
type OrExpr struct {
	X, Y ir.Constant
}

// String returns the string representation of the constant expression as a
// type-value pair.
func (c *OrExpr) String() string {
	return fmt.Sprintf("%v %v", c.Type(), c.Ident())
}

// Type returns the type of the bitcast expression.
func (c *OrExpr) Type() types.Type {
	return c.X.Type()
}

// Ident returns the identifier associated with the bitcast expression.
func (c *OrExpr) Ident() string {
	// "or" "(" Type Constant "," Type Constant ")"
	return fmt.Sprintf("or (%v, %v)", c.X, c.Y)
}

// ~~~ [ xor ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// XorExpr is an LLVM IR xor expression.
type XorExpr struct {
	X, Y ir.Constant
}

// String returns the string representation of the constant expression as a
// type-value pair.
func (c *XorExpr) String() string {
	return fmt.Sprintf("%v %v", c.Type(), c.Ident())
}

// Type returns the type of the bitcast expression.
func (c *XorExpr) Type() types.Type {
	return c.X.Type()
}

// Ident returns the identifier associated with the bitcast expression.
func (c *XorExpr) Ident() string {
	// "xor" "(" Type Constant "," Type Constant ")"
	return fmt.Sprintf("xor (%v, %v)", c.X, c.Y)
}

// --- [ Vector expressions ] --------------------------------------------------

// ~~~ [ extractelement ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// ExtractElementExpr is an LLVM IR extractelement expression.
type ExtractElementExpr struct {
	X     ir.Constant
	Index ir.Constant
}

// String returns the string representation of the constant expression as a
// type-value pair.
func (c *ExtractElementExpr) String() string {
	return fmt.Sprintf("%v %v", c.Type(), c.Ident())
}

// Type returns the type of the bitcast expression.
func (c *ExtractElementExpr) Type() types.Type {
	panic("constant.ExtractElementExpr.Type: not yet implemented")
}

// Ident returns the identifier associated with the bitcast expression.
func (c *ExtractElementExpr) Ident() string {
	// "extractelement" "(" Type Constant "," Type Constant ")"
	return fmt.Sprintf("extractelement (%v, %v)", c.X, c.Index)
}

// ~~~ [ insertelement ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// InsertElementExpr is an LLVM IR insertelement expression.
type InsertElementExpr struct {
	X     ir.Constant
	Elem  ir.Constant
	Index ir.Constant
}

// String returns the string representation of the constant expression as a
// type-value pair.
func (c *InsertElementExpr) String() string {
	return fmt.Sprintf("%v %v", c.Type(), c.Ident())
}

// Type returns the type of the bitcast expression.
func (c *InsertElementExpr) Type() types.Type {
	return c.X.Type()
}

// Ident returns the identifier associated with the bitcast expression.
func (c *InsertElementExpr) Ident() string {
	// "insertelement" "(" Type Constant "," Type Constant "," Type Constant ")"
	return fmt.Sprintf("insertelement (%v, %v, %v)", c.X, c.Elem, c.Index)
}

// ~~~ [ shufflevector ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// ShuffleVectorExpr is an LLVM IR shufflevector expression.
type ShuffleVectorExpr struct {
	X, Y ir.Constant
	Mask ir.Constant
}

// String returns the string representation of the constant expression as a
// type-value pair.
func (c *ShuffleVectorExpr) String() string {
	return fmt.Sprintf("%v %v", c.Type(), c.Ident())
}

// Type returns the type of the bitcast expression.
func (c *ShuffleVectorExpr) Type() types.Type {
	return c.X.Type()
}

// Ident returns the identifier associated with the bitcast expression.
func (c *ShuffleVectorExpr) Ident() string {
	// "shufflevector" "(" Type Constant "," Type Constant "," Type Constant ")"
	return fmt.Sprintf("shufflevector (%v, %v, %v)", c.X, c.Y, c.Mask)
}

// --- [ Aggregate expressions ] -----------------------------------------------

// ~~~ [ extractvalue ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// ExtractValueExpr is an LLVM IR extractvalue expression.
type ExtractValueExpr struct {
	X       ir.Constant
	Indices []int64
}

// String returns the string representation of the constant expression as a
// type-value pair.
func (c *ExtractValueExpr) String() string {
	return fmt.Sprintf("%v %v", c.Type(), c.Ident())
}

// Type returns the type of the bitcast expression.
func (c *ExtractValueExpr) Type() types.Type {
	panic("constant.ExtractValueExpr.Type: not yet implemented")
}

// Ident returns the identifier associated with the bitcast expression.
func (c *ExtractValueExpr) Ident() string {
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
	X       ir.Constant
	Elem    ir.Constant
	Indices []int64
}

// String returns the string representation of the constant expression as a
// type-value pair.
func (c *InsertValueExpr) String() string {
	return fmt.Sprintf("%v %v", c.Type(), c.Ident())
}

// Type returns the type of the bitcast expression.
func (c *InsertValueExpr) Type() types.Type {
	return c.X.Type()
}

// Ident returns the identifier associated with the bitcast expression.
func (c *InsertValueExpr) Ident() string {
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
	Typ      *types.PointerType
	InBounds bool
	ElemType types.Type
	Src      ir.Constant
	Indices  []*Index
}

// String returns the string representation of the constant expression as a
// type-value pair.
func (c *GetElementPtrExpr) String() string {
	return fmt.Sprintf("%v %v", c.Type(), c.Ident())
}

// Type returns the type of the bitcast expression.
func (c *GetElementPtrExpr) Type() types.Type {
	return c.Typ
}

// Ident returns the identifier associated with the bitcast expression.
func (c *GetElementPtrExpr) Ident() string {
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

// Index is the index of a getelementptr expression.
type Index struct {
	InRange bool
	Index   ir.Constant
}

// String returns a string representation of the getelementptr index.
func (index *Index) String() string {
	// OptInrange Type Constant
	if index.InRange {
		return fmt.Sprintf("inrange %v", index.Index)
	}
	return index.Index.String()
}

// --- [ Conversion expressions ] ----------------------------------------------

// ~~~ [ trunc ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// TruncExpr is an LLVM IR trunc expression.
type TruncExpr struct {
	From ir.Constant
	To   types.Type
}

// String returns the string representation of the constant expression as a
// type-value pair.
func (c *TruncExpr) String() string {
	return fmt.Sprintf("%v %v", c.Type(), c.Ident())
}

// Type returns the type of the bitcast expression.
func (c *TruncExpr) Type() types.Type {
	return c.To
}

// Ident returns the identifier associated with the bitcast expression.
func (c *TruncExpr) Ident() string {
	// "trunc" "(" Type Constant "to" Type ")"
	return fmt.Sprintf("trunc (%v to %v)", c.From, c.To)
}

// ~~~ [ zext ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// ZExtExpr is an LLVM IR zext expression.
type ZExtExpr struct {
	From ir.Constant
	To   types.Type
}

// String returns the string representation of the constant expression as a
// type-value pair.
func (c *ZExtExpr) String() string {
	return fmt.Sprintf("%v %v", c.Type(), c.Ident())
}

// Type returns the type of the bitcast expression.
func (c *ZExtExpr) Type() types.Type {
	return c.To
}

// Ident returns the identifier associated with the bitcast expression.
func (c *ZExtExpr) Ident() string {
	// "zext" "(" Type Constant "to" Type ")"
	return fmt.Sprintf("zext (%v to %v)", c.From, c.To)
}

// ~~~ [ sext ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// SExtExpr is an LLVM IR sext expression.
type SExtExpr struct {
	From ir.Constant
	To   types.Type
}

// String returns the string representation of the constant expression as a
// type-value pair.
func (c *SExtExpr) String() string {
	return fmt.Sprintf("%v %v", c.Type(), c.Ident())
}

// Type returns the type of the bitcast expression.
func (c *SExtExpr) Type() types.Type {
	return c.To
}

// Ident returns the identifier associated with the bitcast expression.
func (c *SExtExpr) Ident() string {
	// "sext" "(" Type Constant "to" Type ")"
	return fmt.Sprintf("sext (%v to %v)", c.From, c.To)
}

// ~~~ [ fptrunc ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// FPTruncExpr is an LLVM IR fptrunc expression.
type FPTruncExpr struct {
	From ir.Constant
	To   types.Type
}

// String returns the string representation of the constant expression as a
// type-value pair.
func (c *FPTruncExpr) String() string {
	return fmt.Sprintf("%v %v", c.Type(), c.Ident())
}

// Type returns the type of the bitcast expression.
func (c *FPTruncExpr) Type() types.Type {
	return c.To
}

// Ident returns the identifier associated with the bitcast expression.
func (c *FPTruncExpr) Ident() string {
	// "fptrunc" "(" Type Constant "to" Type ")"
	return fmt.Sprintf("fptrunc (%v to %v)", c.From, c.To)
}

// ~~~ [ fpext ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// FPExtExpr is an LLVM IR fpext expression.
type FPExtExpr struct {
	From ir.Constant
	To   types.Type
}

// String returns the string representation of the constant expression as a
// type-value pair.
func (c *FPExtExpr) String() string {
	return fmt.Sprintf("%v %v", c.Type(), c.Ident())
}

// Type returns the type of the bitcast expression.
func (c *FPExtExpr) Type() types.Type {
	return c.To
}

// Ident returns the identifier associated with the bitcast expression.
func (c *FPExtExpr) Ident() string {
	// "fpext" "(" Type Constant "to" Type ")"
	return fmt.Sprintf("fpext (%v to %v)", c.From, c.To)
}

// ~~~ [ fptoui ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// FPToUIExpr is an LLVM IR fptoui expression.
type FPToUIExpr struct {
	From ir.Constant
	To   types.Type
}

// String returns the string representation of the constant expression as a
// type-value pair.
func (c *FPToUIExpr) String() string {
	return fmt.Sprintf("%v %v", c.Type(), c.Ident())
}

// Type returns the type of the bitcast expression.
func (c *FPToUIExpr) Type() types.Type {
	return c.To
}

// Ident returns the identifier associated with the bitcast expression.
func (c *FPToUIExpr) Ident() string {
	// "fptoui" "(" Type Constant "to" Type ")"
	return fmt.Sprintf("fptoui (%v to %v)", c.From, c.To)
}

// ~~~ [ fptosi ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// FPToSIExpr is an LLVM IR fptosi expression.
type FPToSIExpr struct {
	From ir.Constant
	To   types.Type
}

// String returns the string representation of the constant expression as a
// type-value pair.
func (c *FPToSIExpr) String() string {
	return fmt.Sprintf("%v %v", c.Type(), c.Ident())
}

// Type returns the type of the bitcast expression.
func (c *FPToSIExpr) Type() types.Type {
	return c.To
}

// Ident returns the identifier associated with the bitcast expression.
func (c *FPToSIExpr) Ident() string {
	// "fptosi" "(" Type Constant "to" Type ")"
	return fmt.Sprintf("fptosi (%v to %v)", c.From, c.To)
}

// ~~~ [ uitofp ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// UIToFPExpr is an LLVM IR uitofp expression.
type UIToFPExpr struct {
	From ir.Constant
	To   types.Type
}

// String returns the string representation of the constant expression as a
// type-value pair.
func (c *UIToFPExpr) String() string {
	return fmt.Sprintf("%v %v", c.Type(), c.Ident())
}

// Type returns the type of the bitcast expression.
func (c *UIToFPExpr) Type() types.Type {
	return c.To
}

// Ident returns the identifier associated with the bitcast expression.
func (c *UIToFPExpr) Ident() string {
	// "uitofp" "(" Type Constant "to" Type ")"
	return fmt.Sprintf("uitofp (%v to %v)", c.From, c.To)
}

// ~~~ [ sitofp ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// SIToFPExpr is an LLVM IR sitofp expression.
type SIToFPExpr struct {
	From ir.Constant
	To   types.Type
}

// String returns the string representation of the constant expression as a
// type-value pair.
func (c *SIToFPExpr) String() string {
	return fmt.Sprintf("%v %v", c.Type(), c.Ident())
}

// Type returns the type of the bitcast expression.
func (c *SIToFPExpr) Type() types.Type {
	return c.To
}

// Ident returns the identifier associated with the bitcast expression.
func (c *SIToFPExpr) Ident() string {
	// "sitofp" "(" Type Constant "to" Type ")"
	return fmt.Sprintf("sitofp (%v to %v)", c.From, c.To)
}

// ~~~ [ ptrtoint ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// PtrToIntExpr is an LLVM IR ptrtoint expression.
type PtrToIntExpr struct {
	From ir.Constant
	To   types.Type
}

// String returns the string representation of the constant expression as a
// type-value pair.
func (c *PtrToIntExpr) String() string {
	return fmt.Sprintf("%v %v", c.Type(), c.Ident())
}

// Type returns the type of the bitcast expression.
func (c *PtrToIntExpr) Type() types.Type {
	return c.To
}

// Ident returns the identifier associated with the bitcast expression.
func (c *PtrToIntExpr) Ident() string {
	// "ptrtoint" "(" Type Constant "to" Type ")"
	return fmt.Sprintf("ptrtoint (%v to %v)", c.From, c.To)
}

// ~~~ [ inttoptr ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// IntToPtrExpr is an LLVM IR inttoptr expression.
type IntToPtrExpr struct {
	From ir.Constant
	To   types.Type
}

// String returns the string representation of the constant expression as a
// type-value pair.
func (c *IntToPtrExpr) String() string {
	return fmt.Sprintf("%v %v", c.Type(), c.Ident())
}

// Type returns the type of the bitcast expression.
func (c *IntToPtrExpr) Type() types.Type {
	return c.To
}

// Ident returns the identifier associated with the bitcast expression.
func (c *IntToPtrExpr) Ident() string {
	// "inttoptr" "(" Type Constant "to" Type ")"
	return fmt.Sprintf("inttoptr (%v to %v)", c.From, c.To)
}

// ~~~ [ bitcast ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// BitCastExpr is an LLVM IR bitcast expression.
type BitCastExpr struct {
	From ir.Constant
	To   types.Type
}

// String returns the string representation of the constant expression as a
// type-value pair.
func (c *BitCastExpr) String() string {
	return fmt.Sprintf("%v %v", c.Type(), c.Ident())
}

// Type returns the type of the bitcast expression.
func (c *BitCastExpr) Type() types.Type {
	return c.To
}

// Ident returns the identifier associated with the bitcast expression.
func (c *BitCastExpr) Ident() string {
	// "bitcast" "(" Type Constant "to" Type ")"
	return fmt.Sprintf("bitcast (%v to %v)", c.From, c.To)
}

// ~~~ [ addrspacecast ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// AddrSpaceCastExpr is an LLVM IR addrspacecast expression.
type AddrSpaceCastExpr struct {
	From ir.Constant
	To   types.Type
}

// String returns the string representation of the constant expression as a
// type-value pair.
func (c *AddrSpaceCastExpr) String() string {
	return fmt.Sprintf("%v %v", c.Type(), c.Ident())
}

// Type returns the type of the bitcast expression.
func (c *AddrSpaceCastExpr) Type() types.Type {
	return c.To
}

// Ident returns the identifier associated with the bitcast expression.
func (c *AddrSpaceCastExpr) Ident() string {
	// "addrspacecast" "(" Type Constant "to" Type ")"
	return fmt.Sprintf("addrspacecast (%v to %v)", c.From, c.To)
}

// --- [ Other expressions ] ---------------------------------------------------

// ~~~ [ icmp ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// ICmpExpr is an LLVM IR icmp expression.
type ICmpExpr struct {
	Pred ll.IPred
	X, Y ir.Constant
}

// String returns the string representation of the constant expression as a
// type-value pair.
func (c *ICmpExpr) String() string {
	return fmt.Sprintf("%v %v", c.Type(), c.Ident())
}

// Type returns the type of the bitcast expression.
func (c *ICmpExpr) Type() types.Type {
	panic("constant.ICmpExpr.Type: not yet implemented")
}

// Ident returns the identifier associated with the bitcast expression.
func (c *ICmpExpr) Ident() string {
	// "icmp" IPred "(" Type Constant "," Type Constant ")"
	return fmt.Sprintf("icmp %v (%v, %v)", c.Pred, c.X, c.Y)
}

// ~~~ [ fcmp ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// FCmpExpr is an LLVM IR fcmp expression.
type FCmpExpr struct {
	Pred ll.FPred
	X, Y ir.Constant
}

// String returns the string representation of the constant expression as a
// type-value pair.
func (c *FCmpExpr) String() string {
	return fmt.Sprintf("%v %v", c.Type(), c.Ident())
}

// Type returns the type of the bitcast expression.
func (c *FCmpExpr) Type() types.Type {
	panic("constant.FCmpExpr.Type: not yet implemented")
}

// Ident returns the identifier associated with the bitcast expression.
func (c *FCmpExpr) Ident() string {
	// "fcmp" FPred "(" Type Constant "," Type Constant ")"
	return fmt.Sprintf("fcmp %v (%v, %v)", c.Pred, c.X, c.Y)
}

// ~~~ [ select ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// SelectExpr is an LLVM IR select expression.
type SelectExpr struct {
	Cond ir.Constant
	X, Y ir.Constant
}

// String returns the string representation of the constant expression as a
// type-value pair.
func (c *SelectExpr) String() string {
	return fmt.Sprintf("%v %v", c.Type(), c.Ident())
}

// Type returns the type of the bitcast expression.
func (c *SelectExpr) Type() types.Type {
	return c.X.Type()
}

// Ident returns the identifier associated with the bitcast expression.
func (c *SelectExpr) Ident() string {
	// "select" "(" Type Constant "," Type Constant "," Type Constant ")"
	return fmt.Sprintf("select (%v, %v, %v)", c.Cond, c.X, c.Y)
}
