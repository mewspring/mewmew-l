package ast

import (
	"fmt"
	"strings"

	"github.com/mewmew/l/internal/enc"
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
		fmt.Fprintln(buf, entity.String())
	}
	return buf.String()
}

// --- [ Top-level Entities ] --------------------------------------------------

// A TopLevelEntity is a top-level entity of a module.
type TopLevelEntity interface {
	fmt.Stringer
	// isTopLevelEntity ensures that only top-level entities can be assigned to
	// the ast.TopLevelEntity interface.
	isTopLevelEntity()
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

// ~~~ [ Type Definition ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// TypeDef is a type definition top-level entity.
type TypeDef struct {
	Name *LocalIdent
	Def  types.Type
}

// String returns the string representation of the type definition.
func (t *TypeDef) String() string {
	// LocalIdent "=" "type" OpaqueType
	// LocalIdent "=" "type" Type
	return fmt.Sprintf("%s = type %s", t.Name, t.Def)
}

// ~~~ [ Global Variable Declaration or Definition ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~

// Global is a global variable declaration or a global variable definition.
type Global struct {
	Name                  *GlobalIdent
	Linkage               ll.Linkage         // zero value if not present
	Preemption            ll.Preemption      // zero value if not present
	Visibility            ll.Visibility      // zero value if not present
	DLLStorageClass       ll.DLLStorageClass // zero value if not present
	ThreadLocal           *ll.ThreadLocal    // nil if not present
	UnnamedAddr           ll.UnnamedAddr     // zero value if not present
	AddrSpace             ll.AddrSpace       // zero value if not present
	ExternallyInitialized bool
	Immutable             bool
	Type                  types.Type
	Init                  Constant // nil if declaration
	GlobalAttrs           []GlobalAttribute
	FuncAttrs             []FuncAttribute
}

// String returns a string representation of the global variable.
func (g *Global) String() string {
	// GlobalIdent "=" OptLinkage OptPreemptionSpecifier OptVisibility
	// OptDLLStorageClass OptThreadLocal OptUnnamedAddr OptAddrSpace
	// OptExternallyInitialized Immutable Type Constant GlobalAttrs FuncAttrs
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "%v =", g.Name)
	if g.Linkage != ll.LinkageNone {
		fmt.Fprintf(buf, " %v", g.Linkage)
	}
	if g.Preemption != ll.PreemptionNone {
		fmt.Fprintf(buf, " %v", g.Preemption)
	}
	if g.Visibility != ll.VisibilityNone {
		fmt.Fprintf(buf, " %v", g.Visibility)
	}
	if g.DLLStorageClass != ll.DLLStorageClassNone {
		fmt.Fprintf(buf, " %v", g.DLLStorageClass)
	}
	if g.ThreadLocal != nil {
		fmt.Fprintf(buf, " %v", g.ThreadLocal)
	}
	if g.UnnamedAddr != ll.UnnamedAddrNone {
		fmt.Fprintf(buf, " %v", g.UnnamedAddr)
	}
	if g.AddrSpace != 0 {
		fmt.Fprintf(buf, " %v", g.AddrSpace)
	}
	if g.ExternallyInitialized {
		buf.WriteString(" externallyinitialized")
	}
	if g.Immutable {
		buf.WriteString(" constant")
	} else {
		buf.WriteString(" global")
	}
	fmt.Fprintf(buf, " %v", g.Type)
	if g.Init != nil {
		fmt.Fprintf(buf, " %v", g.Init)
	}
	for _, attr := range g.GlobalAttrs {
		fmt.Fprintf(buf, ", %v", attr)
	}
	for _, attr := range g.FuncAttrs {
		fmt.Fprintf(buf, " %v", attr)
	}
	return buf.String()
}

// GlobalAttribute is a global attribute.
type GlobalAttribute interface {
	fmt.Stringer
	// IsGlobalAttribute ensures that only global attributes can be assigned to
	// the ast.GlobalAttribute interface.
	IsGlobalAttribute()
}

// IsGlobalAttribute ensures that only global attributes can be assigned to the
// ast.GlobalAttribute interface.
// TODO: Figure out how to handle GlobalAttribute interface.
//func (*Section) IsGlobalAttribute()            {}
//func (*Comdat) IsGlobalAttribute()             {}
//func (*Alignment) IsGlobalAttribute()          {}
func (*MetadataAttachment) IsGlobalAttribute() {}

// ~~~ [ Indirect Symbol Definition ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// An IndirectSymbol is an alias or an ifunc.
type IndirectSymbol struct {
	Name            *GlobalIdent
	Linkage         ll.Linkage
	Preemption      ll.Preemption
	Visibility      ll.Visibility
	DLLStorageClass ll.DLLStorageClass
	ThreadLocal     *ll.ThreadLocal
	UnnamedAddr     ll.UnnamedAddr
	Alias           bool // alias if true, ifunc otherwise.
	Type            types.Type
	Const           *TypeConst // aliasee or resolver
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
	Metadata []*MetadataAttachment
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
	Name            *GlobalIdent
	Params          []*types.Param
	Variadic        bool
	UnnamedAddr     ll.UnnamedAddr
	FuncAttrs       []FuncAttribute
	Section         *ll.Section // nil if not present
	Comdat          *ll.Comdat  // nil if not present
	GC              string      // empty if not present
	Prefix          *TypeConst  // nil if not present
	Prologue        *TypeConst  // nil if not present
	Personality     *TypeConst  // nil if not present
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
		fmt.Fprintf(buf, " prefix %v %v", hdr.Prefix.Type, hdr.Prefix.Const)
	}
	if hdr.Prologue != nil {
		fmt.Fprintf(buf, " prologue %v %v", hdr.Prologue.Type, hdr.Prologue.Const)
	}
	if hdr.Personality != nil {
		fmt.Fprintf(buf, " personality %v %v", hdr.Personality.Type, hdr.Personality.Const)
	}
	return buf.String()
}

// FunctionBody is an LLVM IR function body.
type FunctionBody struct {
	Blocks        []*BasicBlock
	UseListOrders []*UseListOrder
}

// String returns the string representation of the functino body.
func (body *FunctionBody) String() string {
	// "{" BasicBlockList UseListOrders "}"
	buf := &strings.Builder{}
	buf.WriteString("{\n")
	for _, block := range body.Blocks {
		fmt.Fprintf(buf, "%v\n", block)
	}
	for _, useList := range body.UseListOrders {
		fmt.Fprintf(buf, "%v\n", useList)
	}
	buf.WriteString("}")
	return buf.String()
}

// ~~~ [ Attribute Group Definition ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// AttrGroupDef is a attribute group definition.
type AttrGroupDef struct {
	ID        *AttrGroupID
	FuncAttrs []FuncAttribute
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

// ~~~ [ Named Metadata ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// NamedMetadataDef is a named metadata definition.
type NamedMetadataDef struct {
	Name  *MetadataName
	Nodes []MetadataNode
}

// String returns the string representation of the named metadata definition.
func (def *NamedMetadataDef) String() string {
	// MetadataName "=" "!" "{" MetadataNodes "}"
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "%v = !{", def.Name)
	for i, node := range def.Nodes {
		if i != 0 {
			buf.WriteString(", ")
		}
		buf.WriteString(node.String())
	}
	buf.WriteString("}")
	return buf.String()
}

// MetadataNode is a metadata node.
type MetadataNode interface {
	fmt.Stringer
	// isMetadataNode ensures that only netadata nodes can be assigned to the
	// ast.MetadataNode interface.
	isMetadataNode()
}

// isMetadataNode ensures that only netadata nodes can be assigned to the
// ast.MetadataNode interface.
func (*MetadataID) isMetadataNode()   {}
func (*DIExpression) isMetadataNode() {}

// ~~~ [ Standalone Metadata ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// MetadataDef is a metadata definition.
type MetadataDef struct {
	ID       *MetadataID
	Distinct bool
	Node     MDNode // MDTuple or SpecializedMDNode
}

// String returns the string representation of the metadata definition.
func (def *MetadataDef) String() string {
	// MetadataID "=" OptDistinct MDTuple
	// MetadataID "=" OptDistinct SpecializedMDNode
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "%v = ", def.ID)
	if def.Distinct {
		buf.WriteString("distinct ")
	}
	buf.WriteString(def.Node.String())
	return buf.String()
}

// ~~~ [ Use-list Order Directives ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// UseListOrder is a use-list order directive.
type UseListOrder struct {
	Type    types.Type
	Value   Value
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

// isTopLevelEntity ensures that only top-level entities can be assigned to the
// ast.TopLevelEntity interface.
func (*SourceFilename) isTopLevelEntity() {}

// TargetDefinition
func (*TargetTriple) isTopLevelEntity() {}
func (*DataLayout) isTopLevelEntity()   {}

// TODO: Figure out how to handle TopLevelEntity interface.
//func (*ModuleAsm) isTopLevelEntity()        {}
func (*TypeDef) isTopLevelEntity() {}

//func (*ComdatDef) isTopLevelEntity()        {}
func (*Global) isTopLevelEntity()           {}
func (*IndirectSymbol) isTopLevelEntity()   {}
func (*Function) isTopLevelEntity()         {}
func (*AttrGroupDef) isTopLevelEntity()     {}
func (*NamedMetadataDef) isTopLevelEntity() {}
func (*MetadataDef) isTopLevelEntity()      {}
func (*UseListOrder) isTopLevelEntity()     {}
func (*UseListOrderBB) isTopLevelEntity()   {}
