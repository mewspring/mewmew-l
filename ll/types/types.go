package types

import (
	"fmt"
	"strings"

	"github.com/mewmew/l/ll"
)

// === [ Types ] ===============================================================

// Type is an LLVM IR type.
type Type interface {
	fmt.Stringer
	// Equal reports whether t and u are of equal type.
	Equal(u Type)
}

// --- [ Void Types ] ----------------------------------------------------------

// VoidType is an LLVM IR void type.
type VoidType struct{}

// String returns the string representation of the void type.
func (*VoidType) String() string {
	// "void"
	return "void"
}

// --- [ Function Types ] ------------------------------------------------------

// FuncType is an LLVM IR function type.
type FuncType struct {
	RetType  Type
	Params   []*Param
	Variadic bool
}

// String returns the string representation of the function type.
func (t *FuncType) String() string {
	// Type "(" Params ")"
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

// Param is a function parameter.
type Param struct {
	Type  Type
	Attrs []ll.ParamAttribute
	Name  string // LocalIdent; or empty if unnamed.
}

// String returns the string representation of the function parameter.
func (param *Param) String() string {
	// Type ParamAttrs OptLocalIdent
	buf := &strings.Builder{}
	buf.WriteString(param.Type.String())
	for _, attr := range param.Attrs {
		fmt.Fprintf(buf, " %v", attr)
	}
	if len(param.Name) > 0 {
		fmt.Fprintf(buf, " %v", param.Name)
	}
	return buf.String()
}

// --- [ Integer Types ] -------------------------------------------------------

// IntType is an LLVM IR integer type.
type IntType struct {
	BitSize int64
}

// String returns the string representation of the integer type.
func (t *IntType) String() string {
	// int_type
	return fmt.Sprintf("i%d", t.BitSize)
}

// --- [ Floating-point Types ] ------------------------------------------------

// FloatType is an LLVM IR floating-point type.
type FloatType struct {
	Kind ll.FloatKind
}

// String returns the string representation of the floating-point type.
func (t *FloatType) String() string {
	return t.Kind.String()
}

// --- [ MMX Types ] -----------------------------------------------------------

// MMXType is an LLVM IR MMX type.
type MMXType struct{}

// String returns the string representation of the MMX type.
func (t *MMXType) String() string {
	// "x86_mmx"
	return "x86_mmx"
}

// --- [ Pointer Types ] -------------------------------------------------------

// PointerType is an LLVM IR pointer type.
type PointerType struct {
	ElemType  Type
	AddrSpace ll.AddrSpace // zero value if not present
}

// String returns the string representation of the pointer type.
func (t *PointerType) String() string {
	// Type OptAddrSpace "*"
	buf := &strings.Builder{}
	buf.WriteString(t.ElemType.String())
	if t.AddrSpace != 0 {
		fmt.Fprintf(buf, " %v", t.AddrSpace)
	}
	buf.WriteString("*")
	return buf.String()
}

// --- [ Vector Types ] --------------------------------------------------------

// VectorType is an LLVM IR vector type.
type VectorType struct {
	Len      int64
	ElemType Type
}

// String returns the string representation of the vector type.
func (t *VectorType) String() string {
	// "<" int_lit "x" Type ">"
	return fmt.Sprintf("<%d x %v>", t.Len, t.ElemType)
}

// --- [ Label Types ] ---------------------------------------------------------

// LabelType is an LLVM IR label type.
type LabelType struct{}

// String returns the string representation of the label type.
func (t *LabelType) String() string {
	// "label"
	return "label"
}

// --- [ Token Types ] ---------------------------------------------------------

// TokenType is an LLVM IR token type.
type TokenType struct{}

// String returns the string representation of the token type.
func (t *TokenType) String() string {
	// "token"
	return "token"
}

// --- [ Metadata Types ] ------------------------------------------------------

// MetadataType is an LLVM IR metadata type.
type MetadataType struct{}

// String returns the string representation of the metadata type.
func (t *MetadataType) String() string {
	// "metadata"
	return "metadata"
}

// --- [ Array Types ] ---------------------------------------------------------

// ArrayType is an LLVM IR array type.
type ArrayType struct {
	Len      int64
	ElemType Type
}

// String returns the string representation of the array type.
func (t *ArrayType) String() string {
	// "[" int_lit "x" Type "]"
	return fmt.Sprintf("[%d x %v]", t.Len, t.ElemType)
}

// --- [ Structure Types ] -----------------------------------------------------

// StructType is an LLVM IR structure type.
type StructType struct {
	Packed bool
	Fields []Type
}

// String returns the string representation of the structure type.
func (t *StructType) String() string {
	// "{" Types "}"
	// "<" "{" Types "}" ">"
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

// OpaqueType is an LLVM IR opaque structure type.
type OpaqueType struct{}

// String returns the string representation of the opaque structure type.
func (*OpaqueType) String() string {
	// "opaque"
	return "opaque"
}

// --- [ Named Types ] ---------------------------------------------------------

// NamedType is an LLVM IR named type.
type NamedType struct {
	Name string // LocalIdent
	Def  Type
}

// String returns the string representation of the named type.
func (t *NamedType) String() string {
	// LocalIdent
	return t.Name
}
