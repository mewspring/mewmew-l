// Package ir declares the types used to represent LLVM IR modules.
package ir

import (
	"fmt"
	"strings"

	"github.com/mewmew/l/internal/enc"
	"github.com/mewmew/l/ir/metadata"
	"github.com/mewmew/l/ir/types"
	"github.com/mewmew/l/ir/value"
)

// === [ Module ] ==============================================================

// A Module is an LLVM IR module.
type Module struct {
	// Source filename; or nil if not present.
	SourceFilename *SourceFilename
	// Data layout; or nil if not present.
	DataLayout *DataLayout
	// Target triple; or nil if not present.
	TargetTriple *TargetTriple
	// Module-level inline assembly.
	ModuleAsms []*ModuleAsm
	// Type definitions.
	TypeDefs []types.Type
	// Comdat definitions.
	ComdatDefs []*ComdatDef
	// Global declarations and definitions.
	Globals []*Global
	// Indirect symbol definitions (aliases and IFuncs).
	IndirectSymbols []*IndirectSymbol
	// Function declarations and definitions.
	Funcs []*Function
	// Attribute group definitions.
	AttrGroupDefs []*AttrGroupDef
	// Named metadata definitions.
	NamedMetadataDefs []*metadata.NamedMetadataDef
	// Metadata definitions.
	MetadataDefs []*metadata.MetadataDef
	// Use-list order directives.
	UseListOrders []*UseListOrder
	// Basic block specific use-list order directives.
	UseListOrderBBs []*UseListOrderBB
}

// String returns the string representation of the module.
func (m *Module) String() string {
	buf := &strings.Builder{}
	// Source filename.
	if m.SourceFilename != nil {
		fmt.Fprintln(buf, m.SourceFilename.Def())
	}
	// Data layout.
	if m.DataLayout != nil {
		fmt.Fprintln(buf, m.DataLayout.Def())
	}
	// Target triple.
	if m.TargetTriple != nil {
		fmt.Fprintln(buf, m.TargetTriple.Def())
	}
	// Module-level inline assembly.
	for _, asm := range m.ModuleAsms {
		fmt.Fprintln(buf, asm.Def())
	}
	// Type definitions.
	for _, t := range m.TypeDefs {
		// LocalIdent "=" "type" OpaqueType
		// LocalIdent "=" "type" Type
		fmt.Fprintf(buf, "%v = type %v\n", t.String(), t.Def())
	}
	// Global declarations and definitions.
	for _, c := range m.ComdatDefs {
		fmt.Fprintln(buf, c.Def())
	}
	// Global declarations and definitions.
	for _, g := range m.Globals {
		fmt.Fprintln(buf, g.Def())
	}
	// Indirect symbol definitions (aliases and IFuncs).
	for _, s := range m.IndirectSymbols {
		fmt.Fprintln(buf, s.Def())
	}
	// Function declarations and definitions.
	for _, f := range m.Funcs {
		fmt.Fprintln(buf, f.Def())
	}
	// Attribute group definitions.
	for _, a := range m.AttrGroupDefs {
		fmt.Fprintln(buf, a.Def())
	}
	// Named metadata definitions.
	for _, md := range m.NamedMetadataDefs {
		fmt.Fprintln(buf, md.Def())
	}
	// Metadata definitions.
	for _, md := range m.MetadataDefs {
		fmt.Fprintln(buf, md.Def())
	}
	// Use-list orders.
	for _, u := range m.UseListOrders {
		fmt.Fprintln(buf, u.Def())
	}
	// Basic block specific use-list orders.
	for _, u := range m.UseListOrderBBs {
		fmt.Fprintln(buf, u.Def())
	}
	return buf.String()
}

// ~~~ [ Source Filename ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// SourceFilename is a source filename top-level entity.
type SourceFilename struct {
	Name string
}

// Def returns the LLVM syntax representation of the source filename top-level
// entity definition.
func (s *SourceFilename) Def() string {
	// "source_filename" "=" StringLit
	return fmt.Sprintf("source_filename = %v", enc.Quote(s.Name))
}

// ~~~ [ Target Definition ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// TargetTriple is a target triple top-level entity.
type TargetTriple struct {
	TargetTriple string
}

// Def returns the LLVM syntax representation of the target triple top-level
// entity definition.
func (t *TargetTriple) Def() string {
	// "target" "triple" "=" StringLit
	return fmt.Sprintf("target triple = %v", enc.Quote(t.TargetTriple))
}

// DataLayout is a data layout top-level entity.
type DataLayout struct {
	DataLayout string
}

// Def returns the LLVM syntax representation of the data layout top-level
// entity definition.
func (t *DataLayout) Def() string {
	// "target" "datalayout" "=" StringLit
	return fmt.Sprintf("target datalayout = %v", enc.Quote(t.DataLayout))
}

// ~~~ [ Module-level Inline Assembly ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// ModuleAsm is a module-level inline assembly top-level entity.
type ModuleAsm struct {
	Asm string
}

// Def returns the LLVM syntax representation of the module-level inline
// assembly definition.
func (a *ModuleAsm) Def() string {
	// "module" "asm" StringLit
	return fmt.Sprintf("module asm %v", enc.Quote(a.Asm))
}

// ~~~ [ Comdat Definition ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// ComdatDef is a comdat definition top-level entity.
type ComdatDef struct {
	Name string // ComdatName
	Kind SelectionKind
}

// String returns the string representation of the comdat definition.
func (c *ComdatDef) String() string {
	return c.Name
}

// Def returns the LLVM syntax representation of the attribute group definition.
func (c *ComdatDef) Def() string {
	// ComdatName "=" "comdat" SelectionKind
	return fmt.Sprintf("%v = comdat %v", c.Name, c.Kind)
}

//go:generate stringer -linecomment -type SelectionKind

// SelectionKind is a comdat selection kind.
type SelectionKind uint8

// Comdat selection kinds.
const (
	SelectionKindAny          SelectionKind = iota // any
	SelectionKindExactMatch                        // exactmatch
	SelectionKindLargest                           // largest
	SelectionKindNoDuplicates                      // noduplicates
	SelectionKindSameSize                          // samesize
)

// ~~~ [ Attribute Group Definition ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// AttrGroupDef is a attribute group definition.
type AttrGroupDef struct {
	ID        string // AttrGroupID
	FuncAttrs []FuncAttribute
}

// String returns the string representation of the attribute group definition.
func (a *AttrGroupDef) String() string {
	return a.ID
}

// Def returns the LLVM syntax representation of the attribute group definition.
func (a *AttrGroupDef) Def() string {
	// "attributes" AttrGroupID "=" "{" FuncAttrs "}"
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "attributes %v = { ", a.ID)
	for i, attr := range a.FuncAttrs {
		if i != 0 {
			buf.WriteString(" ")
		}
		// Note, alignment is printed as `align = 8` in attribute groups.
		if attr, ok := attr.(*Alignment); ok {
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

// Def returns the LLVM syntax representation of the use-list order directive
// definition.
func (u *UseListOrder) Def() string {
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

// Def returns the LLVM syntax representation of the basic block specific use-
// list order directive definition.
func (u *UseListOrderBB) Def() string {
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
