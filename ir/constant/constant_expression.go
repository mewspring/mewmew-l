package constant

import (
	"fmt"
	"strings"

	"github.com/mewmew/l/ir"
	"github.com/mewmew/l/ir/types"
)

// === [ Constant expressions ] ================================================

// --- [ Binary expressions ] --------------------------------------------------

// ~~~ [ add ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// ExprAdd is an LLVM IR add expression.
type ExprAdd struct {
	OverflowFlags []ir.OverflowFlag
	X, Y          ir.Constant
}

// String returns the string representation of the constant expression as a
// type-value pair.
func (c *ExprAdd) String() string {
	return fmt.Sprintf("%v %v", c.Type(), c.Ident())
}

// Type returns the type of the bitcast expression.
func (c *ExprAdd) Type() types.Type {
	return c.X.Type()
}

// Ident returns the identifier associated with the bitcast expression.
func (c *ExprAdd) Ident() string {
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

// ExprFAdd is an LLVM IR fadd expression.
type ExprFAdd struct {
	X, Y ir.Constant
}

// String returns the string representation of the constant expression as a
// type-value pair.
func (c *ExprFAdd) String() string {
	return fmt.Sprintf("%v %v", c.Type(), c.Ident())
}

// Type returns the type of the bitcast expression.
func (c *ExprFAdd) Type() types.Type {
	return c.X.Type()
}

// Ident returns the identifier associated with the bitcast expression.
func (c *ExprFAdd) Ident() string {
	// "fadd" "(" Type Constant "," Type Constant ")"
	return fmt.Sprintf("fadd (%v, %v)", c.X, c.Y)
}

// ~~~ [ sub ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// ExprSub is an LLVM IR sub expression.
type ExprSub struct {
	OverflowFlags []ir.OverflowFlag
	X, Y          ir.Constant
}

// String returns the string representation of the constant expression as a
// type-value pair.
func (c *ExprSub) String() string {
	return fmt.Sprintf("%v %v", c.Type(), c.Ident())
}

// Type returns the type of the bitcast expression.
func (c *ExprSub) Type() types.Type {
	return c.X.Type()
}

// Ident returns the identifier associated with the bitcast expression.
func (c *ExprSub) Ident() string {
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

// ExprFSub is an LLVM IR fsub expression.
type ExprFSub struct {
	X, Y ir.Constant
}

// String returns the string representation of the constant expression as a
// type-value pair.
func (c *ExprFSub) String() string {
	return fmt.Sprintf("%v %v", c.Type(), c.Ident())
}

// Type returns the type of the bitcast expression.
func (c *ExprFSub) Type() types.Type {
	return c.X.Type()
}

// Ident returns the identifier associated with the bitcast expression.
func (c *ExprFSub) Ident() string {
	// "fsub" "(" Type Constant "," Type Constant ")"
	return fmt.Sprintf("fsub (%v, %v)", c.X, c.Y)
}

// ~~~ [ mul ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// ExprMul is an LLVM IR mul expression.
type ExprMul struct {
	OverflowFlags []ir.OverflowFlag
	X, Y          ir.Constant
}

// String returns the string representation of the constant expression as a
// type-value pair.
func (c *ExprMul) String() string {
	return fmt.Sprintf("%v %v", c.Type(), c.Ident())
}

// Type returns the type of the bitcast expression.
func (c *ExprMul) Type() types.Type {
	return c.X.Type()
}

// Ident returns the identifier associated with the bitcast expression.
func (c *ExprMul) Ident() string {
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

// ExprFMul is an LLVM IR fmul expression.
type ExprFMul struct {
	X, Y ir.Constant
}

// String returns the string representation of the constant expression as a
// type-value pair.
func (c *ExprFMul) String() string {
	return fmt.Sprintf("%v %v", c.Type(), c.Ident())
}

// Type returns the type of the bitcast expression.
func (c *ExprFMul) Type() types.Type {
	return c.X.Type()
}

// Ident returns the identifier associated with the bitcast expression.
func (c *ExprFMul) Ident() string {
	// "fmul" "(" Type Constant "," Type Constant ")"
	return fmt.Sprintf("fmul (%v, %v)", c.X, c.Y)
}

// ~~~ [ udiv ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// ExprUDiv is an LLVM IR udiv expression.
type ExprUDiv struct {
	Exact bool
	X, Y  ir.Constant
}

// String returns the string representation of the constant expression as a
// type-value pair.
func (c *ExprUDiv) String() string {
	return fmt.Sprintf("%v %v", c.Type(), c.Ident())
}

// Type returns the type of the bitcast expression.
func (c *ExprUDiv) Type() types.Type {
	return c.X.Type()
}

// Ident returns the identifier associated with the bitcast expression.
func (c *ExprUDiv) Ident() string {
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

// ExprSDiv is an LLVM IR sdiv expression.
type ExprSDiv struct {
	Exact bool
	X, Y  ir.Constant
}

// String returns the string representation of the constant expression as a
// type-value pair.
func (c *ExprSDiv) String() string {
	return fmt.Sprintf("%v %v", c.Type(), c.Ident())
}

// Type returns the type of the bitcast expression.
func (c *ExprSDiv) Type() types.Type {
	return c.X.Type()
}

// Ident returns the identifier associated with the bitcast expression.
func (c *ExprSDiv) Ident() string {
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

// ExprFDiv is an LLVM IR fdiv expression.
type ExprFDiv struct {
	X, Y ir.Constant
}

// String returns the string representation of the constant expression as a
// type-value pair.
func (c *ExprFDiv) String() string {
	return fmt.Sprintf("%v %v", c.Type(), c.Ident())
}

// Type returns the type of the bitcast expression.
func (c *ExprFDiv) Type() types.Type {
	return c.X.Type()
}

// Ident returns the identifier associated with the bitcast expression.
func (c *ExprFDiv) Ident() string {
	// "fdiv" "(" Type Constant "," Type Constant ")"
	return fmt.Sprintf("fdiv (%v, %v)", c.X, c.Y)
}

// ~~~ [ urem ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// ExprURem is an LLVM IR urem expression.
type ExprURem struct {
	X, Y ir.Constant
}

// String returns the string representation of the constant expression as a
// type-value pair.
func (c *ExprURem) String() string {
	return fmt.Sprintf("%v %v", c.Type(), c.Ident())
}

// Type returns the type of the bitcast expression.
func (c *ExprURem) Type() types.Type {
	return c.X.Type()
}

// Ident returns the identifier associated with the bitcast expression.
func (c *ExprURem) Ident() string {
	// "urem" "(" Type Constant "," Type Constant ")"
	return fmt.Sprintf("urem (%v, %v)", c.X, c.Y)
}

// ~~~ [ srem ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// ExprSRem is an LLVM IR srem expression.
type ExprSRem struct {
	X, Y ir.Constant
}

// String returns the string representation of the constant expression as a
// type-value pair.
func (c *ExprSRem) String() string {
	return fmt.Sprintf("%v %v", c.Type(), c.Ident())
}

// Type returns the type of the bitcast expression.
func (c *ExprSRem) Type() types.Type {
	return c.X.Type()
}

// Ident returns the identifier associated with the bitcast expression.
func (c *ExprSRem) Ident() string {
	// "srem" "(" Type Constant "," Type Constant ")"
	return fmt.Sprintf("srem (%v, %v)", c.X, c.Y)
}

// ~~~ [ frem ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// ExprFRem is an LLVM IR frem expression.
type ExprFRem struct {
	X, Y ir.Constant
}

// String returns the string representation of the constant expression as a
// type-value pair.
func (c *ExprFRem) String() string {
	return fmt.Sprintf("%v %v", c.Type(), c.Ident())
}

// Type returns the type of the bitcast expression.
func (c *ExprFRem) Type() types.Type {
	return c.X.Type()
}

// Ident returns the identifier associated with the bitcast expression.
func (c *ExprFRem) Ident() string {
	// "frem" "(" Type Constant "," Type Constant ")"
	return fmt.Sprintf("frem (%v, %v)", c.X, c.Y)
}

// --- [ Bitwise expressions ] -------------------------------------------------

// ~~~ [ shl ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// ExprShl is an LLVM IR shl expression.
type ExprShl struct {
	OverflowFlags []ir.OverflowFlag
	X, Y          ir.Constant
}

// String returns the string representation of the constant expression as a
// type-value pair.
func (c *ExprShl) String() string {
	return fmt.Sprintf("%v %v", c.Type(), c.Ident())
}

// Type returns the type of the bitcast expression.
func (c *ExprShl) Type() types.Type {
	return c.X.Type()
}

// Ident returns the identifier associated with the bitcast expression.
func (c *ExprShl) Ident() string {
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

// ExprLShr is an LLVM IR lshr expression.
type ExprLShr struct {
	Exact bool
	X, Y  ir.Constant
}

// String returns the string representation of the constant expression as a
// type-value pair.
func (c *ExprLShr) String() string {
	return fmt.Sprintf("%v %v", c.Type(), c.Ident())
}

// Type returns the type of the bitcast expression.
func (c *ExprLShr) Type() types.Type {
	return c.X.Type()
}

// Ident returns the identifier associated with the bitcast expression.
func (c *ExprLShr) Ident() string {
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

// ExprAShr is an LLVM IR ashr expression.
type ExprAShr struct {
	Exact bool
	X, Y  ir.Constant
}

// String returns the string representation of the constant expression as a
// type-value pair.
func (c *ExprAShr) String() string {
	return fmt.Sprintf("%v %v", c.Type(), c.Ident())
}

// Type returns the type of the bitcast expression.
func (c *ExprAShr) Type() types.Type {
	return c.X.Type()
}

// Ident returns the identifier associated with the bitcast expression.
func (c *ExprAShr) Ident() string {
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

// ExprAnd is an LLVM IR and expression.
type ExprAnd struct {
	X, Y ir.Constant
}

// String returns the string representation of the constant expression as a
// type-value pair.
func (c *ExprAnd) String() string {
	return fmt.Sprintf("%v %v", c.Type(), c.Ident())
}

// Type returns the type of the bitcast expression.
func (c *ExprAnd) Type() types.Type {
	return c.X.Type()
}

// Ident returns the identifier associated with the bitcast expression.
func (c *ExprAnd) Ident() string {
	// "and" "(" Type Constant "," Type Constant ")"
	return fmt.Sprintf("and (%v, %v)", c.X, c.Y)
}

// ~~~ [ or ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// ExprOr is an LLVM IR or expression.
type ExprOr struct {
	X, Y ir.Constant
}

// String returns the string representation of the constant expression as a
// type-value pair.
func (c *ExprOr) String() string {
	return fmt.Sprintf("%v %v", c.Type(), c.Ident())
}

// Type returns the type of the bitcast expression.
func (c *ExprOr) Type() types.Type {
	return c.X.Type()
}

// Ident returns the identifier associated with the bitcast expression.
func (c *ExprOr) Ident() string {
	// "or" "(" Type Constant "," Type Constant ")"
	return fmt.Sprintf("or (%v, %v)", c.X, c.Y)
}

// ~~~ [ xor ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// ExprXor is an LLVM IR xor expression.
type ExprXor struct {
	X, Y ir.Constant
}

// String returns the string representation of the constant expression as a
// type-value pair.
func (c *ExprXor) String() string {
	return fmt.Sprintf("%v %v", c.Type(), c.Ident())
}

// Type returns the type of the bitcast expression.
func (c *ExprXor) Type() types.Type {
	return c.X.Type()
}

// Ident returns the identifier associated with the bitcast expression.
func (c *ExprXor) Ident() string {
	// "xor" "(" Type Constant "," Type Constant ")"
	return fmt.Sprintf("xor (%v, %v)", c.X, c.Y)
}

// --- [ Vector expressions ] --------------------------------------------------

// ~~~ [ extractelement ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// ExprExtractElement is an LLVM IR extractelement expression.
type ExprExtractElement struct {
	X     ir.Constant
	Index ir.Constant
}

// String returns the string representation of the constant expression as a
// type-value pair.
func (c *ExprExtractElement) String() string {
	return fmt.Sprintf("%v %v", c.Type(), c.Ident())
}

// Type returns the type of the bitcast expression.
func (c *ExprExtractElement) Type() types.Type {
	panic("constant.ExtractElementExpr.Type: not yet implemented")
}

// Ident returns the identifier associated with the bitcast expression.
func (c *ExprExtractElement) Ident() string {
	// "extractelement" "(" Type Constant "," Type Constant ")"
	return fmt.Sprintf("extractelement (%v, %v)", c.X, c.Index)
}

// ~~~ [ insertelement ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// ExprInsertElement is an LLVM IR insertelement expression.
type ExprInsertElement struct {
	X     ir.Constant
	Elem  ir.Constant
	Index ir.Constant
}

// String returns the string representation of the constant expression as a
// type-value pair.
func (c *ExprInsertElement) String() string {
	return fmt.Sprintf("%v %v", c.Type(), c.Ident())
}

// Type returns the type of the bitcast expression.
func (c *ExprInsertElement) Type() types.Type {
	return c.X.Type()
}

// Ident returns the identifier associated with the bitcast expression.
func (c *ExprInsertElement) Ident() string {
	// "insertelement" "(" Type Constant "," Type Constant "," Type Constant ")"
	return fmt.Sprintf("insertelement (%v, %v, %v)", c.X, c.Elem, c.Index)
}

// ~~~ [ shufflevector ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// ExprShuffleVector is an LLVM IR shufflevector expression.
type ExprShuffleVector struct {
	X, Y ir.Constant
	Mask ir.Constant
}

// String returns the string representation of the constant expression as a
// type-value pair.
func (c *ExprShuffleVector) String() string {
	return fmt.Sprintf("%v %v", c.Type(), c.Ident())
}

// Type returns the type of the bitcast expression.
func (c *ExprShuffleVector) Type() types.Type {
	return c.X.Type()
}

// Ident returns the identifier associated with the bitcast expression.
func (c *ExprShuffleVector) Ident() string {
	// "shufflevector" "(" Type Constant "," Type Constant "," Type Constant ")"
	return fmt.Sprintf("shufflevector (%v, %v, %v)", c.X, c.Y, c.Mask)
}

// --- [ Aggregate expressions ] -----------------------------------------------

// ~~~ [ extractvalue ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// ExprExtractValue is an LLVM IR extractvalue expression.
type ExprExtractValue struct {
	X       ir.Constant
	Indices []int64
}

// String returns the string representation of the constant expression as a
// type-value pair.
func (c *ExprExtractValue) String() string {
	return fmt.Sprintf("%v %v", c.Type(), c.Ident())
}

// Type returns the type of the bitcast expression.
func (c *ExprExtractValue) Type() types.Type {
	panic("constant.ExtractValueExpr.Type: not yet implemented")
}

// Ident returns the identifier associated with the bitcast expression.
func (c *ExprExtractValue) Ident() string {
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

// ExprInsertValue is an LLVM IR insertvalue expression.
type ExprInsertValue struct {
	X       ir.Constant
	Elem    ir.Constant
	Indices []int64
}

// String returns the string representation of the constant expression as a
// type-value pair.
func (c *ExprInsertValue) String() string {
	return fmt.Sprintf("%v %v", c.Type(), c.Ident())
}

// Type returns the type of the bitcast expression.
func (c *ExprInsertValue) Type() types.Type {
	return c.X.Type()
}

// Ident returns the identifier associated with the bitcast expression.
func (c *ExprInsertValue) Ident() string {
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

// Note, Typ is nil when ExprGetElementPtr is in AST form; irx.Translate
// propagates the type from tc.Typ to tc.Const.Typ, where tc is a
// *ast.TypeConst.

// ExprGetElementPtr is an LLVM IR getelementptr expression.
type ExprGetElementPtr struct {
	Typ      *types.PointerType
	InBounds bool
	ElemType types.Type
	Src      ir.Constant
	Indices  []*Index
}

// String returns the string representation of the constant expression as a
// type-value pair.
func (c *ExprGetElementPtr) String() string {
	return fmt.Sprintf("%v %v", c.Type(), c.Ident())
}

// Type returns the type of the bitcast expression.
func (c *ExprGetElementPtr) Type() types.Type {
	return c.Typ
}

// Ident returns the identifier associated with the bitcast expression.
func (c *ExprGetElementPtr) Ident() string {
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

// SetType sets the type of the constant to t.
func (c *ExprGetElementPtr) SetType(t types.Type) {
	c.Typ = t.(*types.PointerType)
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

// ExprTrunc is an LLVM IR trunc expression.
type ExprTrunc struct {
	From ir.Constant
	To   types.Type
}

// String returns the string representation of the constant expression as a
// type-value pair.
func (c *ExprTrunc) String() string {
	return fmt.Sprintf("%v %v", c.Type(), c.Ident())
}

// Type returns the type of the bitcast expression.
func (c *ExprTrunc) Type() types.Type {
	return c.To
}

// Ident returns the identifier associated with the bitcast expression.
func (c *ExprTrunc) Ident() string {
	// "trunc" "(" Type Constant "to" Type ")"
	return fmt.Sprintf("trunc (%v to %v)", c.From, c.To)
}

// ~~~ [ zext ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// ExprZExt is an LLVM IR zext expression.
type ExprZExt struct {
	From ir.Constant
	To   types.Type
}

// String returns the string representation of the constant expression as a
// type-value pair.
func (c *ExprZExt) String() string {
	return fmt.Sprintf("%v %v", c.Type(), c.Ident())
}

// Type returns the type of the bitcast expression.
func (c *ExprZExt) Type() types.Type {
	return c.To
}

// Ident returns the identifier associated with the bitcast expression.
func (c *ExprZExt) Ident() string {
	// "zext" "(" Type Constant "to" Type ")"
	return fmt.Sprintf("zext (%v to %v)", c.From, c.To)
}

// ~~~ [ sext ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// ExprSExt is an LLVM IR sext expression.
type ExprSExt struct {
	From ir.Constant
	To   types.Type
}

// String returns the string representation of the constant expression as a
// type-value pair.
func (c *ExprSExt) String() string {
	return fmt.Sprintf("%v %v", c.Type(), c.Ident())
}

// Type returns the type of the bitcast expression.
func (c *ExprSExt) Type() types.Type {
	return c.To
}

// Ident returns the identifier associated with the bitcast expression.
func (c *ExprSExt) Ident() string {
	// "sext" "(" Type Constant "to" Type ")"
	return fmt.Sprintf("sext (%v to %v)", c.From, c.To)
}

// ~~~ [ fptrunc ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// ExprFPTrunc is an LLVM IR fptrunc expression.
type ExprFPTrunc struct {
	From ir.Constant
	To   types.Type
}

// String returns the string representation of the constant expression as a
// type-value pair.
func (c *ExprFPTrunc) String() string {
	return fmt.Sprintf("%v %v", c.Type(), c.Ident())
}

// Type returns the type of the bitcast expression.
func (c *ExprFPTrunc) Type() types.Type {
	return c.To
}

// Ident returns the identifier associated with the bitcast expression.
func (c *ExprFPTrunc) Ident() string {
	// "fptrunc" "(" Type Constant "to" Type ")"
	return fmt.Sprintf("fptrunc (%v to %v)", c.From, c.To)
}

// ~~~ [ fpext ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// ExprFPExt is an LLVM IR fpext expression.
type ExprFPExt struct {
	From ir.Constant
	To   types.Type
}

// String returns the string representation of the constant expression as a
// type-value pair.
func (c *ExprFPExt) String() string {
	return fmt.Sprintf("%v %v", c.Type(), c.Ident())
}

// Type returns the type of the bitcast expression.
func (c *ExprFPExt) Type() types.Type {
	return c.To
}

// Ident returns the identifier associated with the bitcast expression.
func (c *ExprFPExt) Ident() string {
	// "fpext" "(" Type Constant "to" Type ")"
	return fmt.Sprintf("fpext (%v to %v)", c.From, c.To)
}

// ~~~ [ fptoui ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// ExprFPToUI is an LLVM IR fptoui expression.
type ExprFPToUI struct {
	From ir.Constant
	To   types.Type
}

// String returns the string representation of the constant expression as a
// type-value pair.
func (c *ExprFPToUI) String() string {
	return fmt.Sprintf("%v %v", c.Type(), c.Ident())
}

// Type returns the type of the bitcast expression.
func (c *ExprFPToUI) Type() types.Type {
	return c.To
}

// Ident returns the identifier associated with the bitcast expression.
func (c *ExprFPToUI) Ident() string {
	// "fptoui" "(" Type Constant "to" Type ")"
	return fmt.Sprintf("fptoui (%v to %v)", c.From, c.To)
}

// ~~~ [ fptosi ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// ExprFPToSI is an LLVM IR fptosi expression.
type ExprFPToSI struct {
	From ir.Constant
	To   types.Type
}

// String returns the string representation of the constant expression as a
// type-value pair.
func (c *ExprFPToSI) String() string {
	return fmt.Sprintf("%v %v", c.Type(), c.Ident())
}

// Type returns the type of the bitcast expression.
func (c *ExprFPToSI) Type() types.Type {
	return c.To
}

// Ident returns the identifier associated with the bitcast expression.
func (c *ExprFPToSI) Ident() string {
	// "fptosi" "(" Type Constant "to" Type ")"
	return fmt.Sprintf("fptosi (%v to %v)", c.From, c.To)
}

// ~~~ [ uitofp ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// ExprUIToFP is an LLVM IR uitofp expression.
type ExprUIToFP struct {
	From ir.Constant
	To   types.Type
}

// String returns the string representation of the constant expression as a
// type-value pair.
func (c *ExprUIToFP) String() string {
	return fmt.Sprintf("%v %v", c.Type(), c.Ident())
}

// Type returns the type of the bitcast expression.
func (c *ExprUIToFP) Type() types.Type {
	return c.To
}

// Ident returns the identifier associated with the bitcast expression.
func (c *ExprUIToFP) Ident() string {
	// "uitofp" "(" Type Constant "to" Type ")"
	return fmt.Sprintf("uitofp (%v to %v)", c.From, c.To)
}

// ~~~ [ sitofp ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// ExprSIToFP is an LLVM IR sitofp expression.
type ExprSIToFP struct {
	From ir.Constant
	To   types.Type
}

// String returns the string representation of the constant expression as a
// type-value pair.
func (c *ExprSIToFP) String() string {
	return fmt.Sprintf("%v %v", c.Type(), c.Ident())
}

// Type returns the type of the bitcast expression.
func (c *ExprSIToFP) Type() types.Type {
	return c.To
}

// Ident returns the identifier associated with the bitcast expression.
func (c *ExprSIToFP) Ident() string {
	// "sitofp" "(" Type Constant "to" Type ")"
	return fmt.Sprintf("sitofp (%v to %v)", c.From, c.To)
}

// ~~~ [ ptrtoint ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// ExprPtrToInt is an LLVM IR ptrtoint expression.
type ExprPtrToInt struct {
	From ir.Constant
	To   types.Type
}

// String returns the string representation of the constant expression as a
// type-value pair.
func (c *ExprPtrToInt) String() string {
	return fmt.Sprintf("%v %v", c.Type(), c.Ident())
}

// Type returns the type of the bitcast expression.
func (c *ExprPtrToInt) Type() types.Type {
	return c.To
}

// Ident returns the identifier associated with the bitcast expression.
func (c *ExprPtrToInt) Ident() string {
	// "ptrtoint" "(" Type Constant "to" Type ")"
	return fmt.Sprintf("ptrtoint (%v to %v)", c.From, c.To)
}

// ~~~ [ inttoptr ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// ExprIntToPtr is an LLVM IR inttoptr expression.
type ExprIntToPtr struct {
	From ir.Constant
	To   types.Type
}

// String returns the string representation of the constant expression as a
// type-value pair.
func (c *ExprIntToPtr) String() string {
	return fmt.Sprintf("%v %v", c.Type(), c.Ident())
}

// Type returns the type of the bitcast expression.
func (c *ExprIntToPtr) Type() types.Type {
	return c.To
}

// Ident returns the identifier associated with the bitcast expression.
func (c *ExprIntToPtr) Ident() string {
	// "inttoptr" "(" Type Constant "to" Type ")"
	return fmt.Sprintf("inttoptr (%v to %v)", c.From, c.To)
}

// ~~~ [ bitcast ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// ExprBitCast is an LLVM IR bitcast expression.
type ExprBitCast struct {
	From ir.Constant
	To   types.Type
}

// String returns the string representation of the constant expression as a
// type-value pair.
func (c *ExprBitCast) String() string {
	return fmt.Sprintf("%v %v", c.Type(), c.Ident())
}

// Type returns the type of the bitcast expression.
func (c *ExprBitCast) Type() types.Type {
	return c.To
}

// Ident returns the identifier associated with the bitcast expression.
func (c *ExprBitCast) Ident() string {
	// "bitcast" "(" Type Constant "to" Type ")"
	return fmt.Sprintf("bitcast (%v to %v)", c.From, c.To)
}

// ~~~ [ addrspacecast ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// ExprAddrSpaceCast is an LLVM IR addrspacecast expression.
type ExprAddrSpaceCast struct {
	From ir.Constant
	To   types.Type
}

// String returns the string representation of the constant expression as a
// type-value pair.
func (c *ExprAddrSpaceCast) String() string {
	return fmt.Sprintf("%v %v", c.Type(), c.Ident())
}

// Type returns the type of the bitcast expression.
func (c *ExprAddrSpaceCast) Type() types.Type {
	return c.To
}

// Ident returns the identifier associated with the bitcast expression.
func (c *ExprAddrSpaceCast) Ident() string {
	// "addrspacecast" "(" Type Constant "to" Type ")"
	return fmt.Sprintf("addrspacecast (%v to %v)", c.From, c.To)
}

// --- [ Other expressions ] ---------------------------------------------------

// ~~~ [ icmp ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// ExprICmp is an LLVM IR icmp expression.
type ExprICmp struct {
	Pred ir.IPred
	X, Y ir.Constant
}

// String returns the string representation of the constant expression as a
// type-value pair.
func (c *ExprICmp) String() string {
	return fmt.Sprintf("%v %v", c.Type(), c.Ident())
}

// Type returns the type of the bitcast expression.
func (c *ExprICmp) Type() types.Type {
	panic("constant.ICmpExpr.Type: not yet implemented")
}

// Ident returns the identifier associated with the bitcast expression.
func (c *ExprICmp) Ident() string {
	// "icmp" IPred "(" Type Constant "," Type Constant ")"
	return fmt.Sprintf("icmp %v (%v, %v)", c.Pred, c.X, c.Y)
}

// ~~~ [ fcmp ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// ExprFCmp is an LLVM IR fcmp expression.
type ExprFCmp struct {
	Pred ir.FPred
	X, Y ir.Constant
}

// String returns the string representation of the constant expression as a
// type-value pair.
func (c *ExprFCmp) String() string {
	return fmt.Sprintf("%v %v", c.Type(), c.Ident())
}

// Type returns the type of the bitcast expression.
func (c *ExprFCmp) Type() types.Type {
	panic("constant.FCmpExpr.Type: not yet implemented")
}

// Ident returns the identifier associated with the bitcast expression.
func (c *ExprFCmp) Ident() string {
	// "fcmp" FPred "(" Type Constant "," Type Constant ")"
	return fmt.Sprintf("fcmp %v (%v, %v)", c.Pred, c.X, c.Y)
}

// ~~~ [ select ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// ExprSelect is an LLVM IR select expression.
type ExprSelect struct {
	Cond ir.Constant
	X, Y ir.Constant
}

// String returns the string representation of the constant expression as a
// type-value pair.
func (c *ExprSelect) String() string {
	return fmt.Sprintf("%v %v", c.Type(), c.Ident())
}

// Type returns the type of the bitcast expression.
func (c *ExprSelect) Type() types.Type {
	return c.X.Type()
}

// Ident returns the identifier associated with the bitcast expression.
func (c *ExprSelect) Ident() string {
	// "select" "(" Type Constant "," Type Constant "," Type Constant ")"
	return fmt.Sprintf("select (%v, %v, %v)", c.Cond, c.X, c.Y)
}
