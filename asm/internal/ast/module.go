// Package ast declares the types used to represent abstract syntax trees of
// LLVM IR modules.
package ast

import (
	"fmt"
	"strings"

	"github.com/mewmew/l/internal/enc"
	"github.com/mewmew/l/ir"
	"github.com/mewmew/l/ir/metadata"
	"github.com/mewmew/l/ir/value"
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

// A TopLevelEntity is a top-level entity of a module.
type TopLevelEntity interface {
	fmt.Stringer
	// IsTopLevelEntity ensures that only top-level entities can be assigned to
	// the ast.TopLevelEntity interface.
	IsTopLevelEntity()
}

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

// TargetDefinition is a target definition top-level entity.
type TargetDefinition interface {
	// isTargetDefinition ensures that only target definitions can be assigned to
	// the ast.TargetDefinition interface.
	isTargetDefinition()
}

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

// isTargetDefinition ensures that only target definitions can be assigned to
// the ast.TargetDefinition interface.
func (*TargetTriple) isTargetDefinition() {}
func (*DataLayout) isTargetDefinition()   {}

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

// ~~~ [ Function Declaration or Definition ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// Function is an LLVM IR function.
type Function struct {
	Linkage  ll.Linkage
	Header   *FunctionHeader
	Body     *FunctionBody // nil if declaration
	Metadata []*metadata.MetadataAttachment
}

// String returns the string representation of the function.
func (f *Function) String() string {
	// "declare" MetadataAttachments OptExternLinkage FunctionHeader
	// "define" OptLinkage FunctionHeader MetadataAttachments FunctionBody
	buf := &strings.Builder{}
	if f.Body == nil {
		// Function declaration.
		//
		//    "declare" MetadataAttachments OptExternLinkage FunctionHeader
		buf.WriteString("declare")
		for _, md := range f.Metadata {
			fmt.Fprintf(buf, " %v", md)
		}
		if f.Linkage != ll.LinkageNone {
			fmt.Fprintf(buf, " %v", f.Linkage)
		}
		buf.WriteString(f.Header.String())
		return buf.String()
	}
	// Function definition.
	//
	//    "define" OptLinkage FunctionHeader MetadataAttachments FunctionBody
	buf.WriteString("define")
	if f.Linkage != ll.LinkageNone {
		fmt.Fprintf(buf, " %v", f.Linkage)
	}
	buf.WriteString(f.Header.String())
	for _, md := range f.Metadata {
		fmt.Fprintf(buf, " %v", md)
	}
	fmt.Fprintf(buf, " %v", f.Body)
	return buf.String()
}

// FunctionHeader is an LLVM IR function header.
type FunctionHeader struct {
	Preemption      ll.Preemption      // zero value if not present
	Visibility      ll.Visibility      // zero value if not present
	DLLStorageClass ll.DLLStorageClass // zero value if not present
	CallingConv     ll.CallingConv     // zero value if not present
	ReturnAttrs     []ll.ReturnAttribute
	RetType         types.Type
	Name            string // *GlobalIdent
	Params          []*ll.Param
	Variadic        bool
	UnnamedAddr     ll.UnnamedAddr
	FuncAttrs       []ll.FuncAttribute
	Section         *ll.Section // nil if not present
	Comdat          *ll.Comdat  // nil if not present
	GC              string      // empty if not present
	Prefix          ir.Constant // *TypeConst; nil if not present
	Prologue        ir.Constant // *TypeConst; nil if not present
	Personality     ir.Constant // *TypeConst; nil if not present
}

// String returns the string representation of the function header.
func (hdr *FunctionHeader) String() string {
	// OptPreemptionSpecifier OptVisibility OptDLLStorageClass OptCallingConv
	// ReturnAttrs Type GlobalIdent "(" Params ")" OptUnnamedAddr FuncAttrs
	// OptSection OptComdat OptGC OptPrefix OptPrologue OptPersonality
	buf := &strings.Builder{}
	if hdr.Preemption != ll.PreemptionNone {
		fmt.Fprintf(buf, " %v", hdr.Preemption)
	}
	if hdr.Visibility != ll.VisibilityNone {
		fmt.Fprintf(buf, " %v", hdr.Visibility)
	}
	if hdr.DLLStorageClass != ll.DLLStorageClassNone {
		fmt.Fprintf(buf, " %v", hdr.DLLStorageClass)
	}
	if hdr.CallingConv != ll.CallingConvNone {
		fmt.Fprintf(buf, " %v", hdr.CallingConv)
	}
	for _, attr := range hdr.ReturnAttrs {
		fmt.Fprintf(buf, " %v", attr)
	}
	fmt.Fprintf(buf, " %v", hdr.RetType)
	fmt.Fprintf(buf, " %v(", hdr.Name)
	for i, param := range hdr.Params {
		if i != 0 {
			buf.WriteString(", ")
		}
		buf.WriteString(param.String())
	}
	if hdr.Variadic {
		if len(hdr.Params) > 0 {
			buf.WriteString(", ")
		}
		buf.WriteString("...")
	}
	buf.WriteString(")")
	if hdr.UnnamedAddr != ll.UnnamedAddrNone {
		fmt.Fprintf(buf, " %v", hdr.UnnamedAddr)
	}
	for _, attr := range hdr.FuncAttrs {
		fmt.Fprintf(buf, " %v", attr)
	}
	if hdr.Section != nil {
		fmt.Fprintf(buf, " %v", hdr.Section)
	}
	if hdr.Comdat != nil {
		fmt.Fprintf(buf, " %v", hdr.Comdat)
	}
	if len(hdr.GC) > 0 {
		fmt.Fprintf(buf, " gc %v", enc.Quote(hdr.GC))
	}
	if hdr.Prefix != nil {
		fmt.Fprintf(buf, " prefix %v", hdr.Prefix)
	}
	if hdr.Prologue != nil {
		fmt.Fprintf(buf, " prologue %v", hdr.Prologue)
	}
	if hdr.Personality != nil {
		fmt.Fprintf(buf, " personality %v", hdr.Personality)
	}
	return buf.String()
}

// FunctionBody is an LLVM IR function body.
type FunctionBody struct {
	Blocks        []*ir.BasicBlock
	UseListOrders []*UseListOrder
}

// String returns the string representation of the functino body.
func (body *FunctionBody) String() string {
	// "{" BasicBlockList UseListOrders "}"
	buf := &strings.Builder{}
	buf.WriteString("{\n")
	for _, block := range body.Blocks {
		fmt.Fprintf(buf, "%v\n", block.Def())
	}
	for _, useList := range body.UseListOrders {
		fmt.Fprintf(buf, "%v\n", useList)
	}
	buf.WriteString("}")
	return buf.String()
}

// ~~~ [ Use-list Order Directives ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// UseListOrder is a use-list order directive.
type UseListOrder struct {
	Type    types.Type // TODO: Consider getting rid of type and let value.Value store the type.
	Value   value.Value
	Indices []int64
}

// String returns the string representation of the use-list order directive.
func (u *UseListOrder) String() string {
	//  "uselistorder" Type Value "," "{" IndexList "}"
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "uselistorder %v %v, {", u.Type, u.Value)
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
	Func    *GlobalIdent
	Block   *LocalIdent
	Indices []int64
}

// String returns the string representation of the basic block specific use-list
// order directive.
func (u *UseListOrderBB) String() string {
	//  "uselistorder_bb" GlobalIdent "," LocalIdent "," "{" IndexList "}"
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "uselistorder_bb %v, %v, {", u.Func, u.Block)
	for i, index := range u.Indices {
		if i != 0 {
			buf.WriteString(", ")
		}
		fmt.Fprintf(buf, "%v", index)
	}
	buf.WriteString("}")
	return buf.String()
}

// ### [ Helper functions ] ####################################################

// IsTopLevelEntity ensures that only top-level entities can be assigned to the
// ast.TopLevelEntity interface.
func (*SourceFilename) IsTopLevelEntity() {}

// TargetDefinition
func (*TargetTriple) IsTopLevelEntity() {}
func (*DataLayout) IsTopLevelEntity()   {}

// TODO: Figure out how to handle TopLevelEntity interface.
//func (*ModuleAsm) IsTopLevelEntity()        {}
//func (*TypeDef) IsTopLevelEntity() {}

//func (*ComdatDef) IsTopLevelEntity()        {}
//func (*Global) IsTopLevelEntity()         {}
func (*IndirectSymbol) IsTopLevelEntity() {}
func (*Function) IsTopLevelEntity()       {}
func (*UseListOrder) IsTopLevelEntity()   {}
func (*UseListOrderBB) IsTopLevelEntity() {}
