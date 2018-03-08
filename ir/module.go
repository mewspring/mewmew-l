package ir

import (
	"fmt"
	"strings"

	"github.com/mewmew/l/internal/enc"
	"github.com/mewmew/l/ir/metadata"
	"github.com/mewmew/l/ll"
	"github.com/mewmew/l/ll/types"
)

// A Module is an LLVM IR module.
type Module struct {
	// Source filename; or nil if not present.
	SourceFilename *SourceFilename
	// Target triple; or nil if not present.
	TargetTriple *TargetTriple
	// Data layout; or nil if not present.
	DataLayout *DataLayout
	// Module-level inline assembly.
	ModuleAsms []*ll.ModuleAsm
	// Type definitions.
	TypeDefs []*types.NamedType
	// Comdat definitions.
	ComdatDefs []*ll.ComdatDef
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
	// Target triple.
	if m.TargetTriple != nil {
		fmt.Fprintln(buf, m.TargetTriple.Def())
	}
	// Data layout.
	if m.DataLayout != nil {
		fmt.Fprintln(buf, m.DataLayout.Def())
	}
	// Type definitions.
	for _, asm := range m.ModuleAsms {
		fmt.Fprintln(buf, asm.Def())
	}
	// Type definitions.
	for _, t := range m.TypeDefs {
		fmt.Fprintln(buf, t.Def())
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
