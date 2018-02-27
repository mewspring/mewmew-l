package ast

import (
	"fmt"
	"strings"
)

// === [ Types ] ===============================================================

type Type interface {
	fmt.Stringer
	isType()
}

// --- [ Void Types ] ----------------------------------------------------------

type VoidType struct{}

func (*VoidType) String() string {
	return "void"
}

// --- [ Function Types ] ------------------------------------------------------

type FuncType struct {
	RetType  Type
	Params   []*Param
	Variadic bool
}

func (t *FuncType) String() string {
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "%v (", t.RetType)
	for i, param := range t.Params {
		if i != 0 {
			buf.WriteString(", ")
		}
		buf.WriteString(param.Type.String())
	}
	if t.Variadic {
		if len(t.Params) > 0 {
			buf.WriteString(", ")
		}
		buf.WriteString("...")
	}
	buf.WriteString(")")
	return buf.String()
}

// --- [ Integer Types ] -------------------------------------------------------

type IntType struct {
	BitSize int64
}

func (t *IntType) String() string {
	return fmt.Sprintf("i%d", t.BitSize)
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

func (t *MMXType) String() string {
	return "x86_mmx"
}

// --- [ Pointer Types ] -------------------------------------------------------

type PointerType struct {
	ElemType  Type
	AddrSpace AddrSpace // zero value if not present
}

func (t *PointerType) String() string {
	buf := &strings.Builder{}
	buf.WriteString(t.ElemType.String())
	if t.AddrSpace != 0 {
		fmt.Fprintf(buf, " %v", t.AddrSpace)
	}
	buf.WriteString("*")
	return buf.String()
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

func (t *VectorType) String() string {
	return fmt.Sprintf("<%d x %v>", t.Len, t.ElemType)
}

// --- [ Label Types ] ---------------------------------------------------------

type LabelType struct{}

func (t *LabelType) String() string {
	return "label"
}

// --- [ Token Types ] ---------------------------------------------------------

type TokenType struct{}

func (t *TokenType) String() string {
	return "token"
}

// --- [ Metadata Types ] ------------------------------------------------------

type MetadataType struct{}

func (t *MetadataType) String() string {
	return "metadata"
}

// --- [ Array Types ] ---------------------------------------------------------

type ArrayType struct {
	Len      int64
	ElemType Type
}

func (t *ArrayType) String() string {
	return fmt.Sprintf("[%d x %v]", t.Len, t.ElemType)
}

// --- [ Structure Types ] -----------------------------------------------------

type StructType struct {
	Packed bool
	Fields []Type
}

func (t *StructType) String() string {
	buf := &strings.Builder{}
	if t.Packed {
		buf.WriteString("<")
	}
	buf.WriteString("{ ")
	for i, field := range t.Fields {
		if i != 0 {
			buf.WriteString(", ")
		}
		buf.WriteString(field.String())
	}
	buf.WriteString(" }")
	if t.Packed {
		buf.WriteString(">")
	}
	return buf.String()
}

type OpaqueType struct{}

func (*OpaqueType) String() string {
	return "opaque"
}

// --- [ Named Types ] ---------------------------------------------------------

type NamedType struct {
	Name *LocalIdent
}

func (t *NamedType) String() string {
	return t.Name.String()
}

func (*VoidType) isType()     {}
func (*FuncType) isType()     {}
func (*IntType) isType()      {}
func (*FloatType) isType()    {}
func (*MMXType) isType()      {}
func (*PointerType) isType()  {}
func (*VectorType) isType()   {}
func (*LabelType) isType()    {}
func (*TokenType) isType()    {}
func (*MetadataType) isType() {}
func (*ArrayType) isType()    {}
func (*StructType) isType()   {}
func (*OpaqueType) isType()   {}
func (*NamedType) isType()    {}
