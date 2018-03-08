// Package ast declares the types used to represent abstract syntax trees of
// LLVM IR modules.
package ast

import (
	"fmt"
	"strings"

	"github.com/mewmew/l/internal/enc"
	"github.com/mewmew/l/ir"
	"github.com/mewmew/l/ir/metadata"
	"github.com/mewmew/l/ll"
	"github.com/mewmew/l/ll/types"
)

// === [ Module ] ==============================================================

// A Module is an LLVM IR module.
type Module struct {
	Entities []TopLevelEntity
}

// String returns the string representation of the module.
func (m *Module) String() string {
	// TopLevelEntities
	buf := &strings.Builder{}
	for _, entity := range m.Entities {
		switch entity := entity.(type) {
		// Type definitions.
		case *types.NamedType:
			// LocalIdent "=" "type" OpaqueType
			// LocalIdent "=" "type" Type
			fmt.Fprintf(buf, "%v = type %v\n", entity.Name, entity.Def)

		// Global declarations and definitions.
		case *ir.Global:
			fmt.Fprintln(buf, entity.Def())

		// Function declarations and definitions.
		case *ir.Function:
			fmt.Fprintln(buf, entity.Def())

		// Named metadata definitions.
		case *metadata.NamedMetadataDef:
			// MetadataName "=" "!" "{" MetadataNodes "}"
			fmt.Fprintf(buf, "%v = !{", entity.Name)
			for i, node := range entity.Nodes {
				if i != 0 {
					buf.WriteString(", ")
				}
				buf.WriteString(node.String())
			}
			fmt.Fprintln(buf, "}")

		// Metadata definitions.
		case *metadata.MetadataDef:
			// MetadataID "=" OptDistinct MDTuple
			// MetadataID "=" OptDistinct SpecializedMDNode
			fmt.Fprintf(buf, "%v = ", entity.ID)
			if entity.Distinct {
				buf.WriteString("distinct ")
			}
			fmt.Fprintln(buf, entity.Node)
		default:
			fmt.Fprintln(buf, entity.String())
		}
	}
	return buf.String()
}

// --- [ Top-level Entities ] --------------------------------------------------

// ~~~ [ Source Filename ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// SourceFilename is a source filename top-level entity.
type SourceFilename struct {
	Name string
}

// String returns the string representation of the source filename top-level
// entity.
func (s *SourceFilename) String() string {
	// "source_filename" "=" StringLit
	return fmt.Sprintf("source_filename = %v", enc.Quote(s.Name))
}

// ~~~ [ Target Definition ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// TargetTriple is a target triple top-level entity.
type TargetTriple struct {
	TargetTriple string
}

// String returns the string representation of the target triple top-level
// entity.
func (t *TargetTriple) String() string {
	// "target" "triple" "=" StringLit
	return fmt.Sprintf("target triple = %v", enc.Quote(t.TargetTriple))
}

// DataLayout is a data layout top-level entity.
type DataLayout struct {
	DataLayout string
}

// String returns the string representation of the data layout top-level entity.
func (t *DataLayout) String() string {
	// "target" "datalayout" "=" StringLit
	return fmt.Sprintf("target datalayout = %v", enc.Quote(t.DataLayout))
}

// ~~~ [ Indirect Symbol Definition ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// An IndirectSymbol is an alias or an ifunc.
type IndirectSymbol struct {
	// Alias or IFunc name (*GlobalIdent).
	Name            string
	Linkage         ll.Linkage
	Preemption      ll.Preemption
	Visibility      ll.Visibility
	DLLStorageClass ll.DLLStorageClass
	ThreadLocal     *ll.ThreadLocal
	UnnamedAddr     ll.UnnamedAddr
	Alias           bool // alias if true, ifunc otherwise.
	Type            types.Type
	Const           ir.Constant // aliasee or resolver
}

// String returns the string representation of the indirect symbol.
func (s *IndirectSymbol) String() string {
	// GlobalIdent "=" OptLinkage OptPreemptionSpecifier OptVisibility OptDLLStorageClass OptThreadLocal OptUnnamedAddr Alias Type "," Type Constant
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "%v =", s.Name)
	if s.Linkage != ll.LinkageNone {
		fmt.Fprintf(buf, " %v", s.Linkage)
	}
	if s.Preemption != ll.PreemptionNone {
		fmt.Fprintf(buf, " %v", s.Preemption)
	}
	if s.Visibility != ll.VisibilityNone {
		fmt.Fprintf(buf, " %v", s.Visibility)
	}
	if s.DLLStorageClass != ll.DLLStorageClassNone {
		fmt.Fprintf(buf, " %v", s.DLLStorageClass)
	}
	if s.ThreadLocal != nil {
		fmt.Fprintf(buf, " %v", s.ThreadLocal)
	}
	if s.UnnamedAddr != ll.UnnamedAddrNone {
		fmt.Fprintf(buf, " %v", s.UnnamedAddr)
	}
	if s.Alias {
		buf.WriteString(" alias")
	} else {
		buf.WriteString(" ifunc")
	}
	fmt.Fprintf(buf, " %v, %v", s.Type, s.Const)
	return buf.String()
}
