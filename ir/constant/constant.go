package constant

import (
	"fmt"
	"math/big"
	"strings"

	"github.com/mewmew/l/internal/enc"
	"github.com/mewmew/l/ir"
	"github.com/mewmew/l/ll/types"
)

// === [ Constants ] ===========================================================

// --- [ Boolean Constants ] ---------------------------------------------------

// A BoolConst is an LLVM IR boolean constant.
type BoolConst struct {
	X bool
}

// String returns the string representation of the boolean constant as a type-
// value pair.
func (c *BoolConst) String() string {
	return fmt.Sprintf("%v %v", c.Type(), c.Ident())
}

// Type returns the type of the boolean constant.
func (*BoolConst) Type() types.Type {
	return types.I1
}

// Ident returns the identifier associated with the boolean constant.
func (c *BoolConst) Ident() string {
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
	Typ *types.IntType
	X   *big.Int
}

// NewInt returns a new integer constant based on the given integer value.
func NewInt(x int64) *IntConst {
	return &IntConst{
		X: big.NewInt(x),
	}
}

// NewIntFromString returns a new integer constant based on the given string.
func NewIntFromString(s string) *IntConst {
	x := &big.Int{}
	if _, ok := x.SetString(s, 10); !ok {
		panic(fmt.Errorf("unable to set integer constant %q", s))
	}
	return &IntConst{
		X: x,
	}
}

// String returns the string representation of the integer constant as a type-
// value pair.
func (c *IntConst) String() string {
	return fmt.Sprintf("%v %v", c.Type(), c.Ident())
}

// Type returns the type of the integer constant.
func (c *IntConst) Type() types.Type {
	return c.Typ
}

// Ident returns the identifier associated with the integer constant.
func (c *IntConst) Ident() string {
	// int_lit
	return c.X.String()
}

// --- [ Floating-point Constants ] --------------------------------------------

// A FloatConst is an LLVM IR floating-point constant.
type FloatConst struct {
	Typ *types.FloatType
	X   *big.Float
}

// NewFloat returns a new floating-point constant based on the given floating-
// point value.
func NewFloat(x float64) *FloatConst {
	return &FloatConst{
		X: big.NewFloat(x),
	}
}

// NewFloatFromString returns a new floating-point constant based on the given
// string.
func NewFloatFromString(s string) *FloatConst {
	// TODO: Handle hexadecimal representation of floating-point constants.
	x := &big.Float{}
	if _, ok := x.SetString(s); !ok {
		panic(fmt.Errorf("unable to set floating-point constant %q", s))
	}
	return &FloatConst{
		X: x,
	}
}

// String returns the string representation of the floating-point constant as a
// type-value pair.
func (c *FloatConst) String() string {
	return fmt.Sprintf("%v %v", c.Type(), c.Ident())
}

// Type returns the type of the floating-point constant.
func (c *FloatConst) Type() types.Type {
	return c.Typ
}

// Ident returns the identifier associated with the floating-point constant.
func (c *FloatConst) Ident() string {
	// float_lit
	return c.X.String()
}

// --- [ Null Pointer Constants ] ----------------------------------------------

// A NullConst is an LLVM IR NULL-pointer constant.
type NullConst struct {
	Typ *types.PointerType
}

// String returns the string representation of the NULL-pointer constant as a
// type-value pair.
func (c *NullConst) String() string {
	return fmt.Sprintf("%v %v", c.Type(), c.Ident())
}

// Type returns the type of the NULL-pointer constant.
func (c *NullConst) Type() types.Type {
	return c.Typ
}

// Ident returns the identifier associated with the NULL-pointer constant.
func (*NullConst) Ident() string {
	// "null"
	return "null"
}

// --- [ Token Constants ] -----------------------------------------------------

// A NoneConst is an LLVM IR none token constant.
type NoneConst struct{}

// String returns the string representation of the none token constant as a
// type-value pair.
func (c *NoneConst) String() string {
	return fmt.Sprintf("%v %v", c.Type(), c.Ident())
}

// Type returns the type of the none token constant.
func (*NoneConst) Type() types.Type {
	return types.Token
}

// Ident returns the identifier associated with the none token constant.
func (*NoneConst) Ident() string {
	// "none"
	return "none"
}

// --- [ Structure Constants ] -------------------------------------------------

// A StructConst is an LLVM IR structure constant.
type StructConst struct {
	Typ    *types.StructType
	Packed bool
	Fields []ir.Constant
}

// String returns the string representation of the structure constant as a type-
// value pair.
func (c *StructConst) String() string {
	return fmt.Sprintf("%v %v", c.Type(), c.Ident())
}

// Type returns the type of the structure constant.
func (c *StructConst) Type() types.Type {
	return c.Typ
}

// Ident returns the identifier associated with the structure constant.
func (c *StructConst) Ident() string {
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
	Typ   *types.ArrayType
	Elems []ir.Constant
}

// String returns the string representation of the array constant as a type-
// value pair.
func (c *ArrayConst) String() string {
	return fmt.Sprintf("%v %v", c.Type(), c.Ident())
}

// Type returns the type of the array constant.
func (c *ArrayConst) Type() types.Type {
	return c.Typ
}

// Ident returns the identifier associated with the array constant.
func (c *ArrayConst) Ident() string {
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
	Typ   *types.ArrayType
	Value string
}

// String returns the string representation of the character array constant as a
// type-value pair.
func (c *CharArrayConst) String() string {
	return fmt.Sprintf("%v %v", c.Type(), c.Ident())
}

// Type returns the type of the character array constant.
func (c *CharArrayConst) Type() types.Type {
	return c.Typ
}

// Ident returns the identifier associated with the character array constant.
func (c *CharArrayConst) Ident() string {
	// "c" StringLit
	return fmt.Sprintf("c%v", enc.Quote(c.Value))
}

// --- [ Vector Constants ] ----------------------------------------------------

// A VectorConst is an LLVM IR vector constant.
type VectorConst struct {
	Typ   *types.VectorType
	Elems []ir.Constant
}

// String returns the string representation of the vector constant as a type-
// value pair.
func (c *VectorConst) String() string {
	return fmt.Sprintf("%v %v", c.Type(), c.Ident())
}

// Type returns the type of the vector constant.
func (c *VectorConst) Type() types.Type {
	return c.Typ
}

// Ident returns the identifier associated with the vector constant.
func (c *VectorConst) Ident() string {
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
type ZeroInitializerConst struct {
	Typ types.Type
}

// String returns the string representation of the zeroinitializer constant as a
// type-value pair.
func (c *ZeroInitializerConst) String() string {
	return fmt.Sprintf("%v %v", c.Type(), c.Ident())
}

// Type returns the type of the zeroinitializer constant.
func (c *ZeroInitializerConst) Type() types.Type {
	return c.Typ
}

// Ident returns the identifier associated with the zeroinitializer constant.
func (*ZeroInitializerConst) Ident() string {
	// "zeroinitializer"
	return "zeroinitializer"
}

// --- [ Undefined Values ] ----------------------------------------------------

// An UndefConst is an LLVM IR undefined constant.
type UndefConst struct {
	Typ types.Type
}

// String returns the string representation of the undefined constant as a type-
// value pair.
func (c *UndefConst) String() string {
	return fmt.Sprintf("%v %v", c.Type(), c.Ident())
}

// Type returns the type of the undefined constant.
func (c *UndefConst) Type() types.Type {
	return c.Typ
}

// Ident returns the identifier associated with the undefined constant.
func (*UndefConst) Ident() string {
	// "undef"
	return "undef"
}

// --- [ Addresses of Basic Blocks ] -------------------------------------------

// A BlockAddressConst is an LLVM IR block address constant.
type BlockAddressConst struct {

	// Note, Func is of type *ast.GlobalIdent in the AST. Stored during
	// translation as &ir.Function{Name: name.(*ast.GlobalIdent).Name}; a nil
	// RetType is used to identify AST functions.

	Func *ir.Function

	// Note, Block is of type *ast.LocalIdent in the AST. Stored during
	// translation as &ir.BasicBlock{Name: name.(*ast.LocalIdent).Name}; a nil
	// Terminator is used to identify AST basic blocks.

	Block *ir.BasicBlock
}

// String returns the string representation of the block address constant as a
// type-value pair.
func (c *BlockAddressConst) String() string {
	return fmt.Sprintf("%v %v", c.Type(), c.Ident())
}

// Type returns the type of the block address constant.
func (*BlockAddressConst) Type() types.Type {
	return types.I8Ptr
}

// Ident returns the identifier associated with the block address constant.
func (c *BlockAddressConst) Ident() string {
	// "blockaddress" "(" GlobalIdent "," LocalIdent ")"
	return fmt.Sprintf("blockaddress(%v, %v)", c.Func.Ident(), c.Block.Ident())
}
