// Package types declares the data types of LLVM IR.
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
	Equal(u Type) bool
}

// --- [ Void Types ] ----------------------------------------------------------

// VoidType is an LLVM IR void type.
type VoidType struct{}

// Equal reports whether t and u are of equal type.
func (t *VoidType) Equal(u Type) bool {
	switch u := u.(type) {
	case *VoidType:
		return true
	case *NamedType:
		return t.Equal(u.Def)
	}
	return false
}

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

// Equal reports whether t and u are of equal type.
func (t *FuncType) Equal(u Type) bool {
	switch u := u.(type) {
	case *FuncType:
		if !t.RetType.Equal(u.RetType) {
			return false
		}
		if len(t.Params) != len(u.Params) {
			return false
		}
		for i := range t.Params {
			if !t.Params[i].Typ.Equal(u.Params[i].Typ) {
				return false
			}
		}
		return t.Variadic == u.Variadic
	case *NamedType:
		return t.Equal(u.Def)
	}
	return false
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
		buf.WriteString(param.Typ.String())
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
	Typ   Type
	Attrs []ll.ParamAttribute
	Name  string // LocalIdent; or empty if unnamed.
}

// Type returns the type of the function parameter.
func (p *Param) Type() Type {
	return p.Typ
}

// Ident returns the identifier associated with the function parameter.
func (p *Param) Ident() string {
	return p.Name
}

// String returns the string representation of the function parameter.
func (param *Param) String() string {
	// Type ParamAttrs OptLocalIdent
	buf := &strings.Builder{}
	buf.WriteString(param.Typ.String())
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

// Equal reports whether t and u are of equal type.
func (t *IntType) Equal(u Type) bool {
	switch u := u.(type) {
	case *IntType:
		return t.BitSize == u.BitSize
	case *NamedType:
		return t.Equal(u.Def)
	}
	return false
}

// String returns the string representation of the integer type.
func (t *IntType) String() string {
	// int_type
	return fmt.Sprintf("i%d", t.BitSize)
}

// --- [ Floating-point Types ] ------------------------------------------------

// FloatType is an LLVM IR floating-point type.
type FloatType struct {
	Kind FloatKind
}

// Equal reports whether t and u are of equal type.
func (t *FloatType) Equal(u Type) bool {
	switch u := u.(type) {
	case *FloatType:
		return t.Kind == u.Kind
	case *NamedType:
		return t.Equal(u.Def)
	}
	return false
}

// String returns the string representation of the floating-point type.
func (t *FloatType) String() string {
	return t.Kind.String()
}

//go:generate stringer -linecomment -type FloatKind

// FloatKind represents the set of floating-point kinds.
type FloatKind uint8

// Floating-point kinds.
const (
	FloatKindHalf     FloatKind = iota // half
	FloatKindFloat                     // float
	FloatKindDouble                    // double
	FloatKindX86FP80                   // x86_fp80
	FloatKindFP128                     // fp128
	FloatKindPPCFP128                  // ppc_fp128
)

// --- [ MMX Types ] -----------------------------------------------------------

// MMXType is an LLVM IR MMX type.
type MMXType struct{}

// Equal reports whether t and u are of equal type.
func (t *MMXType) Equal(u Type) bool {
	switch u := u.(type) {
	case *MMXType:
		return true
	case *NamedType:
		return t.Equal(u.Def)
	}
	return false
}

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

// Equal reports whether t and u are of equal type.
func (t *PointerType) Equal(u Type) bool {
	switch u := u.(type) {
	case *PointerType:
		if !t.ElemType.Equal(u.ElemType) {
			return false
		}
		return t.AddrSpace == u.AddrSpace
	case *NamedType:
		return t.Equal(u.Def)
	}
	return false
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

// Equal reports whether t and u are of equal type.
func (t *VectorType) Equal(u Type) bool {
	switch u := u.(type) {
	case *VectorType:
		if t.Len != u.Len {
			return false
		}
		return t.ElemType.Equal(u.ElemType)
	case *NamedType:
		return t.Equal(u.Def)
	}
	return false
}

// String returns the string representation of the vector type.
func (t *VectorType) String() string {
	// "<" int_lit "x" Type ">"
	return fmt.Sprintf("<%d x %v>", t.Len, t.ElemType)
}

// --- [ Label Types ] ---------------------------------------------------------

// LabelType is an LLVM IR label type.
type LabelType struct{}

// Equal reports whether t and u are of equal type.
func (t *LabelType) Equal(u Type) bool {
	switch u := u.(type) {
	case *LabelType:
		return true
	case *NamedType:
		return t.Equal(u.Def)
	}
	return false
}

// String returns the string representation of the label type.
func (t *LabelType) String() string {
	// "label"
	return "label"
}

// --- [ Token Types ] ---------------------------------------------------------

// TokenType is an LLVM IR token type.
type TokenType struct{}

// Equal reports whether t and u are of equal type.
func (t *TokenType) Equal(u Type) bool {
	switch u := u.(type) {
	case *TokenType:
		return true
	case *NamedType:
		return t.Equal(u.Def)
	}
	return false
}

// String returns the string representation of the token type.
func (t *TokenType) String() string {
	// "token"
	return "token"
}

// --- [ Metadata Types ] ------------------------------------------------------

// MetadataType is an LLVM IR metadata type.
type MetadataType struct{}

// Equal reports whether t and u are of equal type.
func (t *MetadataType) Equal(u Type) bool {
	switch u := u.(type) {
	case *MetadataType:
		return true
	case *NamedType:
		return t.Equal(u.Def)
	}
	return false
}

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

// Equal reports whether t and u are of equal type.
func (t *ArrayType) Equal(u Type) bool {
	switch u := u.(type) {
	case *ArrayType:
		if t.Len != u.Len {
			return false
		}
		return t.ElemType.Equal(u.ElemType)
	case *NamedType:
		return t.Equal(u.Def)
	}
	return false
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

// Equal reports whether t and u are of equal type.
func (t *StructType) Equal(u Type) bool {
	switch u := u.(type) {
	case *StructType:
		// Literal struct types are uniqued by structural identity.
		if t.Packed != u.Packed {
			return false
		}
		if len(t.Fields) != len(u.Fields) {
			return false
		}
		for i := range t.Fields {
			if !t.Fields[i].Equal(u.Fields[i]) {
				return false
			}
		}
		return true
	case *NamedType:
		// Identified struct types are uniqued by type names, not by structural
		// identity.
		//
		// t is literal struct type, u is identified struct type.
		return false
	}
	return false
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

// Equal reports whether t and u are of equal type.
func (*OpaqueType) Equal(u Type) bool {
	panic(fmt.Errorf("invalid call to Equal; cannot compare opaque struct type against any type; compared against %v", u))
}

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

// Equal reports whether t and u are of equal type.
func (t *NamedType) Equal(u Type) bool {
	tname := make(map[string]bool)
	for {
		switch tdef := t.Def.(type) {
		case *StructType:
			uname := make(map[string]bool)
			if u, ok := u.(*NamedType); ok {
				for {
					switch udef := u.Def.(type) {
					case *StructType:
						// Identified struct types are uniqued by type names, not by
						// structural identity.
						//
						// t and u are both identified struct types.
						return t.Name == u.Name
					case *NamedType:
						if uname[u.Name] {
							panic(fmt.Errorf("cycle detected in named type %q", u.Name))
						}
						uname[u.Name] = true
						u = udef
					default:
						// t is identified struct type, u is not.
						return false
					}
				}
			}
			// Identified struct types are uniqued by type names, not by structural
			// identity.
			//
			// t is identified struct type, u is not.
			return false
		case *NamedType:
			if tname[t.Name] {
				panic(fmt.Errorf("cycle detected in named type %q", t.Name))
			}
			tname[t.Name] = true
			t = tdef
		default:
			// t is alias for non-struct type.
			return t.Def.Equal(u)
		}
	}
}

// String returns the string representation of the named type.
func (t *NamedType) String() string {
	// LocalIdent
	return t.Name
}
