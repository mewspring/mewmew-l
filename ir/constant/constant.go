package constant

import (
	"fmt"
	"log"
	"math/big"
	"strings"

	"github.com/mewmew/l/internal/enc"
	"github.com/mewmew/l/ir"
	"github.com/mewmew/l/ir/types"
)

// === [ Constants ] ===========================================================

// --- [ Boolean Constants ] ---------------------------------------------------

// A Bool is an LLVM IR boolean constant.
type Bool struct {
	X bool
}

// String returns the string representation of the boolean constant as a type-
// value pair.
func (c *Bool) String() string {
	return fmt.Sprintf("%v %v", c.Type(), c.Ident())
}

// Type returns the type of the boolean constant.
func (*Bool) Type() types.Type {
	return types.I1
}

// Ident returns the identifier associated with the boolean constant.
func (c *Bool) Ident() string {
	// "true"
	// "false"
	if c.X {
		return "true"
	}
	return "false"
}

// --- [ Integer Constants ] ---------------------------------------------------

// An Int is an LLVM IR integer constant.
type Int struct {
	Typ *types.IntType
	X   *big.Int
}

// NewInt returns a new integer constant based on the given integer value.
func NewInt(x int64) *Int {
	return &Int{
		X: big.NewInt(x),
	}
}

// NewIntFromString returns a new integer constant based on the given string.
func NewIntFromString(s string) *Int {
	x := &big.Int{}
	if _, ok := x.SetString(s, 10); !ok {
		panic(fmt.Errorf("unable to set integer constant %q", s))
	}
	return &Int{
		X: x,
	}
}

// String returns the string representation of the integer constant as a type-
// value pair.
func (c *Int) String() string {
	return fmt.Sprintf("%v %v", c.Type(), c.Ident())
}

// Type returns the type of the integer constant.
func (c *Int) Type() types.Type {
	return c.Typ
}

// Ident returns the identifier associated with the integer constant.
func (c *Int) Ident() string {
	// int_lit
	return c.X.String()
}

// --- [ Floating-point Constants ] --------------------------------------------

// A Float is an LLVM IR floating-point constant.
type Float struct {
	Typ *types.FloatType
	X   *big.Float
}

// NewFloat returns a new floating-point constant based on the given floating-
// point value.
func NewFloat(x float64) *Float {
	return &Float{
		X: big.NewFloat(x),
	}
}

// NewFloatFromString returns a new floating-point constant based on the given
// string.
func NewFloatFromString(s string) *Float {
	x := &big.Float{}
	if _, ok := x.SetString(s); !ok {
		// TODO: Handle hexadecimal representation of floating-point constants.
		//
		// Fallback to 0.0 value for now.
		log.Printf("unable to set floating-point constant %q", s)
		x.SetFloat64(0)
	}
	return &Float{
		X: x,
	}
}

// String returns the string representation of the floating-point constant as a
// type-value pair.
func (c *Float) String() string {
	return fmt.Sprintf("%v %v", c.Type(), c.Ident())
}

// Type returns the type of the floating-point constant.
func (c *Float) Type() types.Type {
	return c.Typ
}

// Ident returns the identifier associated with the floating-point constant.
func (c *Float) Ident() string {
	// float_lit
	return c.X.String()
}

// --- [ Null Pointer Constants ] ----------------------------------------------

// A Null is an LLVM IR NULL-pointer constant.
type Null struct {
	Typ *types.PointerType
}

// String returns the string representation of the NULL-pointer constant as a
// type-value pair.
func (c *Null) String() string {
	return fmt.Sprintf("%v %v", c.Type(), c.Ident())
}

// Type returns the type of the NULL-pointer constant.
func (c *Null) Type() types.Type {
	return c.Typ
}

// Ident returns the identifier associated with the NULL-pointer constant.
func (*Null) Ident() string {
	// "null"
	return "null"
}

// --- [ Token Constants ] -----------------------------------------------------

// A None is an LLVM IR none token constant.
type None struct{}

// String returns the string representation of the none token constant as a
// type-value pair.
func (c *None) String() string {
	return fmt.Sprintf("%v %v", c.Type(), c.Ident())
}

// Type returns the type of the none token constant.
func (*None) Type() types.Type {
	return types.Token
}

// Ident returns the identifier associated with the none token constant.
func (*None) Ident() string {
	// "none"
	return "none"
}

// --- [ Structure Constants ] -------------------------------------------------

// A Struct is an LLVM IR structure constant.
type Struct struct {
	Typ    *types.StructType
	Packed bool
	Fields []ir.Constant
}

// String returns the string representation of the structure constant as a type-
// value pair.
func (c *Struct) String() string {
	return fmt.Sprintf("%v %v", c.Type(), c.Ident())
}

// Type returns the type of the structure constant.
func (c *Struct) Type() types.Type {
	return c.Typ
}

// Ident returns the identifier associated with the structure constant.
func (c *Struct) Ident() string {
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

// An Array is an LLVM IR array constant.
type Array struct {
	Typ   *types.ArrayType
	Elems []ir.Constant
}

// String returns the string representation of the array constant as a type-
// value pair.
func (c *Array) String() string {
	return fmt.Sprintf("%v %v", c.Type(), c.Ident())
}

// Type returns the type of the array constant.
func (c *Array) Type() types.Type {
	return c.Typ
}

// Ident returns the identifier associated with the array constant.
func (c *Array) Ident() string {
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

// A CharArray is an LLVM IR character array constant.
type CharArray struct {
	Typ   *types.ArrayType
	Value string
}

// String returns the string representation of the character array constant as a
// type-value pair.
func (c *CharArray) String() string {
	return fmt.Sprintf("%v %v", c.Type(), c.Ident())
}

// Type returns the type of the character array constant.
func (c *CharArray) Type() types.Type {
	return c.Typ
}

// Ident returns the identifier associated with the character array constant.
func (c *CharArray) Ident() string {
	// "c" StringLit
	return fmt.Sprintf("c%v", enc.Quote(c.Value))
}

// --- [ Vector Constants ] ----------------------------------------------------

// A Vector is an LLVM IR vector constant.
type Vector struct {
	Typ   *types.VectorType
	Elems []ir.Constant
}

// String returns the string representation of the vector constant as a type-
// value pair.
func (c *Vector) String() string {
	return fmt.Sprintf("%v %v", c.Type(), c.Ident())
}

// Type returns the type of the vector constant.
func (c *Vector) Type() types.Type {
	return c.Typ
}

// Ident returns the identifier associated with the vector constant.
func (c *Vector) Ident() string {
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

// A ZeroInitializer is an LLVM IR zeroinitializer constant.
type ZeroInitializer struct {
	Typ types.Type
}

// String returns the string representation of the zeroinitializer constant as a
// type-value pair.
func (c *ZeroInitializer) String() string {
	return fmt.Sprintf("%v %v", c.Type(), c.Ident())
}

// Type returns the type of the zeroinitializer constant.
func (c *ZeroInitializer) Type() types.Type {
	return c.Typ
}

// Ident returns the identifier associated with the zeroinitializer constant.
func (*ZeroInitializer) Ident() string {
	// "zeroinitializer"
	return "zeroinitializer"
}

// --- [ Undefined Values ] ----------------------------------------------------

// An Undef is an LLVM IR undefined constant.
type Undef struct {
	Typ types.Type
}

// String returns the string representation of the undefined constant as a type-
// value pair.
func (c *Undef) String() string {
	return fmt.Sprintf("%v %v", c.Type(), c.Ident())
}

// Type returns the type of the undefined constant.
func (c *Undef) Type() types.Type {
	return c.Typ
}

// Ident returns the identifier associated with the undefined constant.
func (*Undef) Ident() string {
	// "undef"
	return "undef"
}

// --- [ Addresses of Basic Blocks ] -------------------------------------------

// A BlockAddress is an LLVM IR block address constant.
type BlockAddress struct {

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
func (c *BlockAddress) String() string {
	return fmt.Sprintf("%v %v", c.Type(), c.Ident())
}

// Type returns the type of the block address constant.
func (*BlockAddress) Type() types.Type {
	return types.I8Ptr
}

// Ident returns the identifier associated with the block address constant.
func (c *BlockAddress) Ident() string {
	// "blockaddress" "(" GlobalIdent "," LocalIdent ")"
	return fmt.Sprintf("blockaddress(%v, %v)", c.Func.Ident(), c.Block.Ident())
}
