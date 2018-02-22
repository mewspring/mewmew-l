package ast

import "fmt"

// === [ Types ] ===============================================================

type Type interface {
	fmt.Stringer
	isType()
}

// --- [ Void Types ] ----------------------------------------------------------

type VoidType struct{}

// --- [ Function Types ] ------------------------------------------------------

type FuncType struct {
	RetType  Type
	Params   []Param
	Variadic bool
}

// --- [ Integer Types ] -------------------------------------------------------

type IntType struct {
	BitSize int64
}

// --- [ Floating-point Types ] ------------------------------------------------

//go:generate stringer -linecomment -type FloatType

type FloatType uint8

const (
	FloatTypeHalf      FloatType = iota // half
	FloatTypeFloat                      // float
	FloatTypeDouble                     // double
	FloatTypeX86_FP80                   // x86_fp80
	FloatTypeFP128                      // fp128
	FloatTypePPC_FP128                  // ppc_fp128

)

// --- [ MMX Types ] -----------------------------------------------------------

type MMXType struct{}

// --- [ Pointer Types ] -------------------------------------------------------

type PointerType struct {
	ElemType  Type
	AddrSpace AddrSpace // zero value if not present
}

type AddrSpace int64

func (a AddrSpace) String() string {
	return fmt.Sprintf("addrspace(%d)", int64(a))
}

// --- [ Vector Types ] --------------------------------------------------------

type VectorType struct {
	Len      int64
	ElemType Type
}

// --- [ Label Types ] ---------------------------------------------------------

type LabelType struct{}

// --- [ Token Types ] ---------------------------------------------------------

type TokenType struct{}

// --- [ Metadata Types ] ------------------------------------------------------

type MetadataType struct{}

// --- [ Array Types ] ---------------------------------------------------------

type ArrayType struct {
	Len      int64
	ElemType Type
}

// --- [ Structure Types ] -----------------------------------------------------

type StructType struct {
	Packed bool
	Fields []Type
}

type OpaqueType struct{}

func (OpaqueType) String() string {
	return "opaque"
}

// --- [ Named Types ] ---------------------------------------------------------

type NamedType struct {
	Name LocalIdent
}

func (VoidType) isType()     {}
func (FuncType) isType()     {}
func (IntType) isType()      {}
func (FloatType) isType()    {}
func (MMXType) isType()      {}
func (PointerType) isType()  {}
func (VectorType) isType()   {}
func (LabelType) isType()    {}
func (TokenType) isType()    {}
func (MetadataType) isType() {}
func (ArrayType) isType()    {}
func (StructType) isType()   {}
func (OpaqueType) isType()   {}
func (NamedType) isType()    {}
