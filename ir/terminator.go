package ir

import (
	"fmt"
	"strings"

	"github.com/mewmew/l/ir/metadata"
	"github.com/mewmew/l/ir/value"
	"github.com/mewmew/l/ll"
	"github.com/mewmew/l/ll/types"
)

// === [ Terminator ] ==========================================================

// --- [ ret ] -----------------------------------------------------------------

// RetTerm is an LLVM IR ret terminator.
type RetTerm struct {
	X        value.Value // nil if void return
	Metadata []*metadata.MetadataAttachment
}

// String returns a string representation of the terminator.
func (term *RetTerm) String() string {
	// "ret" VoidType OptCommaSepMetadataAttachmentList
	// "ret" ConcreteType Value OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
	if term.X == nil {
		buf.WriteString("ret void")
	} else {
		fmt.Fprintf(buf, "ret %v", term.X)
	}
	for _, md := range term.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

// --- [ br ] ------------------------------------------------------------------

// BrTerm is an unconditional LLVM IR br terminator.
type BrTerm struct {
	// Note, Target is reduced from `LabelType LocalIdent`, and stored during
	// translation as &ir.BasicBlock{Name: name.(*ast.LocalIdent).Name}; a nil
	// Terminator is used to identify AST basic blocks.

	Target   *BasicBlock
	Metadata []*metadata.MetadataAttachment
}

// String returns a string representation of the terminator.
func (term *BrTerm) String() string {
	// "br" LabelType LocalIdent OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "br %v", term.Target)
	for _, md := range term.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

// --- [ condbr ] --------------------------------------------------------------

// CondBrTerm is a conditional LLVM IR br terminator.
type CondBrTerm struct {
	Cond value.Value

	// Note, TargetTrue is reduced from `LabelType LocalIdent`, and stored during
	// translation as &ir.BasicBlock{Name: name.(*ast.LocalIdent).Name}; a nil
	// Terminator is used to identify AST basic blocks.

	TargetTrue *BasicBlock

	// Note, TargetFalse is reduced from `LabelType LocalIdent`, and stored
	// during translation as &ir.BasicBlock{Name: name.(*ast.LocalIdent).Name}; a
	// nil Terminator is used to identify AST basic blocks.

	TargetFalse *BasicBlock
	Metadata    []*metadata.MetadataAttachment
}

// String returns a string representation of the terminator.
func (term *CondBrTerm) String() string {
	// "br" IntType Value "," LabelType LocalIdent "," LabelType LocalIdent OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "br %v, %v, %v", term.Cond, term.TargetTrue, term.TargetFalse)
	for _, md := range term.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

// --- [ switch ] --------------------------------------------------------------

// SwitchTerm is an LLVM IR switch terminator.
type SwitchTerm struct {
	X value.Value

	// Note, Default is reduced from `LabelType LocalIdent`, and stored during
	// translation as &ir.BasicBlock{Name: name.(*ast.LocalIdent).Name}; a nil
	// Terminator is used to identify AST basic blocks.

	Default  *BasicBlock
	Cases    []*Case
	Metadata []*metadata.MetadataAttachment
}

// String returns a string representation of the terminator.
func (term *SwitchTerm) String() string {
	// "switch" Type Value "," LabelType LocalIdent "[" Cases "]" OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "switch %v, %v [\n", term.X, term.Default)
	for _, c := range term.Cases {
		fmt.Fprintf(buf, "\t\t%v\n", c)
	}
	buf.WriteString("\t]")
	for _, md := range term.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

// Case is a case of a switch terminator.
type Case struct {
	X Constant

	// Note, Target is reduced from `LabelType LocalIdent`, and stored during
	// translation as &ir.BasicBlock{Name: name.(*ast.LocalIdent).Name}; a nil
	// Terminator is used to identify AST basic blocks.

	Target *BasicBlock
}

// String returns a string representation of the case.
func (c *Case) String() string {
	// Type IntConst "," LabelType LocalIdent
	return fmt.Sprintf("%v, %v", c.X, c.Target)
}

// --- [ indirectbr ] ----------------------------------------------------------

// IndirectBrTerm is an LLVM IR indirectbr terminator.
type IndirectBrTerm struct {
	Addr value.Value

	// Note, Targets is reduced from `LabelList`, and stored during translation
	// as &ir.BasicBlock{Name: name.(*ast.LocalIdent).Name}; a nil Terminator is
	// used to identify AST basic blocks.

	Targets  []*BasicBlock
	Metadata []*metadata.MetadataAttachment
}

// String returns a string representation of the terminator.
func (term *IndirectBrTerm) String() string {
	// "indirectbr" Type Value "," "[" LabelList "]" OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "indirectbr %v, [", term.Addr)
	for i, target := range term.Targets {
		if i != 0 {
			buf.WriteString(", ")
		}
		buf.WriteString(target.String())
	}
	buf.WriteString("]")
	for _, md := range term.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

// --- [ invoke ] --------------------------------------------------------------

// InvokeTerm is an LLVM IR invoke terminator.
type InvokeTerm struct {
	CallingConv ll.CallingConv
	ReturnAttrs []ll.ReturnAttribute
	RetType     types.Type

	// Note, the type of Callee is not present in the AST of the invoke
	// terminator, but rather it has to be inferred by looking up the global or
	// local symbol if possible, and otherwise resort to the result type of the
	// invoke terminator. A nil Type() is used to identify AST callee values.

	Callee         value.Value
	Args           []ll.Argument
	FuncAttrs      []ll.FuncAttribute
	OperandBundles []*ll.OperandBundle

	// Note, Normal is reduced from `LabelType LocalIdent`, and stored during
	// translation as &ir.BasicBlock{Name: name.(*ast.LocalIdent).Name}; a nil
	// Terminator is used to identify AST basic blocks.

	Normal *BasicBlock

	// Note, Exception is reduced from `LabelType LocalIdent`, and stored during
	// translation as &ir.BasicBlock{Name: name.(*ast.LocalIdent).Name}; a nil
	// Terminator is used to identify AST basic blocks.

	Exception *BasicBlock
	Metadata  []*metadata.MetadataAttachment
}

// String returns a string representation of the terminator.
func (term *InvokeTerm) String() string {
	// "invoke" OptCallingConv ReturnAttrs Type Value "(" Args ")" FuncAttrs OperandBundles "to" LabelType LocalIdent "unwind" LabelType LocalIdent OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
	buf.WriteString("invoke")
	if term.CallingConv != ll.CallingConvNone {
		fmt.Fprintf(buf, " %v", term.CallingConv)
	}
	for _, attr := range term.ReturnAttrs {
		fmt.Fprintf(buf, " %v", attr)
	}
	fmt.Fprintf(buf, "%v %v(", term.RetType, term.Callee)
	for i, arg := range term.Args {
		if i != 0 {
			buf.WriteString(", ")
		}
		buf.WriteString(arg.String())
	}
	buf.WriteString(")")
	for _, attr := range term.FuncAttrs {
		fmt.Fprintf(buf, " %v", attr)
	}
	if len(term.OperandBundles) > 0 {
		buf.WriteString("[")
		for _, operandBundle := range term.OperandBundles {
			fmt.Fprintf(buf, " %v", operandBundle)
		}
		buf.WriteString("]")
	}
	fmt.Fprintf(buf, " to %v unwind %v", term.Normal, term.Exception)
	for _, md := range term.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

// --- [ resume ] --------------------------------------------------------------

// ResumeTerm is an LLVM IR resume terminator.
type ResumeTerm struct {
	X        value.Value
	Metadata []*metadata.MetadataAttachment
}

// String returns a string representation of the terminator.
func (term *ResumeTerm) String() string {
	// "resume" Type Value OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "resume %v", term.X)
	for _, md := range term.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

// --- [ catchswitch ] ---------------------------------------------------------

// CatchSwitchTerm is an LLVM IR catchswitch terminator.
type CatchSwitchTerm struct {
	Scope ll.ExceptionScope

	// Note, Handlers is reduced from `LabelList`, and stored during translation
	// as &ir.BasicBlock{Name: name.(*ast.LocalIdent).Name}; a nil Terminator is
	// used to identify AST basic blocks.

	Handlers     []*BasicBlock
	UnwindTarget ll.UnwindTarget
	Metadata     []*metadata.MetadataAttachment
}

// String returns a string representation of the terminator.
func (term *CatchSwitchTerm) String() string {
	// "catchswitch" "within" ExceptionScope "[" LabelList "]" "unwind" UnwindTarget OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "catchswitch within %v [", term.Scope)
	for i, handler := range term.Handlers {
		if i != 0 {
			buf.WriteString(", ")
		}
		buf.WriteString(handler.String())
	}
	fmt.Fprintf(buf, "] unwind %v", term.UnwindTarget)
	for _, md := range term.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

// --- [ catchret ] ------------------------------------------------------------

// CatchRetTerm is an LLVM IR catchret terminator.
type CatchRetTerm struct {
	// Note, the type of From is not present in the AST of the catchret
	// instruction, but has to be resolved by local identifier lookup. A nil
	// Type() is used to identify AST From values.

	From value.Value // catchpad

	// Note, To is reduced from `LabelType LocalIdent`, and stored during
	// translation as &ir.BasicBlock{Name: name.(*ast.LocalIdent).Name}; a nil
	// Terminator is used to identify AST basic blocks.

	To       *BasicBlock
	Metadata []*metadata.MetadataAttachment
}

// String returns a string representation of the terminator.
func (term *CatchRetTerm) String() string {
	// "catchret" "from" Value "to" LabelType LocalIdent OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "catchret from %v to %v", term.From, term.To)
	for _, md := range term.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

// --- [ cleanupret ] ----------------------------------------------------------

// CleanupRetTerm is an LLVM IR cleanupret terminator.
type CleanupRetTerm struct {
	// Note, the type of From is not present in the AST of the cleanupret
	// instruction, but has to be resolved by local identifier lookup. A nil
	// Type() is used to identify AST From values.

	From         value.Value // cleanuppad
	UnwindTarget ll.UnwindTarget
	Metadata     []*metadata.MetadataAttachment
}

// String returns a string representation of the terminator.
func (term *CleanupRetTerm) String() string {
	// "cleanupret" "from" Value "unwind" UnwindTarget OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "cleanupret from %v unwind %v", term.From, term.UnwindTarget)
	for _, md := range term.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

// --- [ unreachable ] ---------------------------------------------------------

// UnreachableTerm is an LLVM IR unreachable terminator.
type UnreachableTerm struct {
	Metadata []*metadata.MetadataAttachment
}

// String returns a string representation of the terminator.
func (term *UnreachableTerm) String() string {
	// "unreachable" OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
	buf.WriteString("unreachable")
	for _, md := range term.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}
