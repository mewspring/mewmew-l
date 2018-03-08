package ir

import (
	"fmt"
	"strings"

	"github.com/mewmew/l/ir/metadata"
	"github.com/mewmew/l/ir/value"
	"github.com/mewmew/l/ll"
	"github.com/mewmew/l/ll/types"
)

// A Module is an LLVM IR module.
type Module struct {
	// Type definitions.
	TypeDefs []*types.NamedType
	// Global declarations and definitions.
	Globals []*Global
	// Function declarations and definitions.
	Funcs []*Function
	// TODO: Add UseListOrders.
	// Named metadata definitions.
	NamedMetadataDefs []*metadata.NamedMetadataDef
	// Metadata definitions.
	MetadataDefs []*metadata.MetadataDef
}

// String returns the string representation of the module.
func (m *Module) String() string {
	buf := &strings.Builder{}

	// Type definitions.
	for _, t := range m.TypeDefs {
		// LocalIdent "=" "type" OpaqueType
		// LocalIdent "=" "type" Type
		fmt.Fprintf(buf, "%v = type %v\n", t.Name, t.Def)
	}

	// Global declarations and definitions.
	for _, g := range m.Globals {
		fmt.Fprintln(buf, g.Def())
	}

	// Function declarations and definitions.
	for _, f := range m.Funcs {
		fmt.Fprintln(buf, f.Def())
	}

	// Named metadata definitions.
	for _, def := range m.NamedMetadataDefs {
		// MetadataName "=" "!" "{" MetadataNodes "}"
		fmt.Fprintf(buf, "%v = !{", def.Name)
		for i, node := range def.Nodes {
			if i != 0 {
				buf.WriteString(", ")
			}
			buf.WriteString(node.String())
		}
		fmt.Fprintln(buf, "}")
	}

	// Metadata definitions.
	for _, def := range m.MetadataDefs {
		// MetadataID "=" OptDistinct MDTuple
		// MetadataID "=" OptDistinct SpecializedMDNode
		fmt.Fprintf(buf, "%v = ", def.ID)
		if def.Distinct {
			buf.WriteString("distinct ")
		}
		fmt.Fprintln(buf, def.Node)
	}

	return buf.String()
}

// ~~~ [ Attribute Group Definition ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// AttrGroupDef is a attribute group definition.
type AttrGroupDef struct {
	ID        string // AttrGroupID
	FuncAttrs []ll.FuncAttribute
}

// String returns the string representation of the attribute group definition.
func (def *AttrGroupDef) String() string {
	// "attributes" AttrGroupID "=" "{" FuncAttrs "}"
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "attributes %v = { ", def.ID)
	for i, attr := range def.FuncAttrs {
		if i != 0 {
			buf.WriteString(" ")
		}
		// Note, alignment is printed as `align = 8` in attribute groups.
		if attr, ok := attr.(*ll.Alignment); ok {
			fmt.Fprintf(buf, "align = %d", attr.Align)
			continue
		}
		buf.WriteString(attr.String())
	}
	buf.WriteString(" }")
	return buf.String()
}

// ~~~ [ Use-list Order Directives ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// UseListOrder is a use-list order directive.
type UseListOrder struct {
	Value   value.Value
	Indices []int64
}

// String returns the string representation of the use-list order directive.
func (u *UseListOrder) String() string {
	//  "uselistorder" Type Value "," "{" IndexList "}"
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "uselistorder %v, {", u.Value)
	for i, index := range u.Indices {
		if i != 0 {
			buf.WriteString(", ")
		}
		fmt.Fprintf(buf, "%v", index)
	}
	buf.WriteString("}")
	return buf.String()
}

// UseListOrderBB is a basic block specific use-list order directive.
type UseListOrderBB struct {
	// Note, Func is of type *ast.GlobalIdent in the AST. Stored during
	// translation as &ir.Function{Name: name.(*ast.GlobalIdent).Name}; a nil
	// RetType is used to identify AST functions.

	Func *Function

	// Note, Block is of type *ast.LocalIdent in the AST. Stored during
	// translation as &ir.BasicBlock{Name: name.(*ast.LocalIdent).Name}; a nil
	// Terminator is used to identify AST basic blocks.

	Block   *BasicBlock
	Indices []int64
}

// String returns the string representation of the basic block specific use-list
// order directive.
func (u *UseListOrderBB) String() string {
	//  "uselistorder_bb" GlobalIdent "," LocalIdent "," "{" IndexList "}"
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "uselistorder_bb %v, %v, {", u.Func.Ident(), u.Block.Ident())
	for i, index := range u.Indices {
		if i != 0 {
			buf.WriteString(", ")
		}
		fmt.Fprintf(buf, "%v", index)
	}
	buf.WriteString("}")
	return buf.String()
}
