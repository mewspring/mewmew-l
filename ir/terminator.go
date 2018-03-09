package ir

import (
	"fmt"
	"strings"

	"github.com/mewmew/l/ir/metadata"
	"github.com/mewmew/l/ir/types"
	"github.com/mewmew/l/ir/value"
)

// === [ Terminators ] =========================================================

// --- [ ret ] -----------------------------------------------------------------

// TermRet is an LLVM IR ret terminator.
type TermRet struct {
	X        value.Value // nil if void return
	Metadata []*metadata.MetadataAttachment
}

// String returns a string representation of the terminator.
func (term *TermRet) String() string {
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

// TermBr is an unconditional LLVM IR br terminator.
type TermBr struct {
	// Note, Target is reduced from `LabelType LocalIdent`, and stored during
	// translation as &ir.BasicBlock{Name: name.(*ast.LocalIdent).Name}; a nil
	// Terminator is used to identify AST basic blocks.

	Target   *BasicBlock
	Metadata []*metadata.MetadataAttachment
}

// String returns a string representation of the terminator.
func (term *TermBr) String() string {
	// "br" LabelType LocalIdent OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "br %v", term.Target)
	for _, md := range term.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

// TermCondBr is a conditional LLVM IR br terminator.
type TermCondBr struct {
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
func (term *TermCondBr) String() string {
	// "br" IntType Value "," LabelType LocalIdent "," LabelType LocalIdent OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "br %v, %v, %v", term.Cond, term.TargetTrue, term.TargetFalse)
	for _, md := range term.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

// --- [ switch ] --------------------------------------------------------------

// TermSwitch is an LLVM IR switch terminator.
type TermSwitch struct {
	X value.Value

	// Note, Default is reduced from `LabelType LocalIdent`, and stored during
	// translation as &ir.BasicBlock{Name: name.(*ast.LocalIdent).Name}; a nil
	// Terminator is used to identify AST basic blocks.

	Default  *BasicBlock
	Cases    []*Case
	Metadata []*metadata.MetadataAttachment
}

// String returns a string representation of the terminator.
func (term *TermSwitch) String() string {
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

// TermIndirectBr is an LLVM IR indirectbr terminator.
type TermIndirectBr struct {
	Addr value.Value

	// Note, Targets is reduced from `LabelList`, and stored during translation
	// as &ir.BasicBlock{Name: name.(*ast.LocalIdent).Name}; a nil Terminator is
	// used to identify AST basic blocks.

	Targets  []*BasicBlock
	Metadata []*metadata.MetadataAttachment
}

// String returns a string representation of the terminator.
func (term *TermIndirectBr) String() string {
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

// TermInvoke is an LLVM IR invoke terminator.
type TermInvoke struct {
	CallingConv CallingConv
	ReturnAttrs []ReturnAttribute
	RetType     types.Type

	// Note, the type of Callee is not present in the AST of the invoke
	// terminator, but rather it has to be inferred by looking up the global or
	// local symbol if possible, and otherwise resort to the result type of the
	// invoke terminator. A nil Type() is used to identify AST callee values.

	Callee         value.Value
	Args           []Argument
	FuncAttrs      []FuncAttribute
	OperandBundles []*OperandBundle

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
func (term *TermInvoke) String() string {
	// "invoke" OptCallingConv ReturnAttrs Type Value "(" Args ")" FuncAttrs OperandBundles "to" LabelType LocalIdent "unwind" LabelType LocalIdent OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
	buf.WriteString("invoke")
	if term.CallingConv != CallingConvNone {
		fmt.Fprintf(buf, " %v", term.CallingConv)
	}
	for _, attr := range term.ReturnAttrs {
		fmt.Fprintf(buf, " %v", attr)
	}
	fmt.Fprintf(buf, "%v %v(", term.RetType, term.Callee.Ident())
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

// TermResume is an LLVM IR resume terminator.
type TermResume struct {
	X        value.Value
	Metadata []*metadata.MetadataAttachment
}

// String returns a string representation of the terminator.
func (term *TermResume) String() string {
	// "resume" Type Value OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "resume %v", term.X)
	for _, md := range term.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

// --- [ catchswitch ] ---------------------------------------------------------

// TermCatchSwitch is an LLVM IR catchswitch terminator.
type TermCatchSwitch struct {
	Scope ExceptionScope

	// Note, Handlers is reduced from `LabelList`, and stored during translation
	// as &ir.BasicBlock{Name: name.(*ast.LocalIdent).Name}; a nil Terminator is
	// used to identify AST basic blocks.

	Handlers     []*BasicBlock
	UnwindTarget UnwindTarget
	Metadata     []*metadata.MetadataAttachment
}

// String returns a string representation of the terminator.
func (term *TermCatchSwitch) String() string {
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

// TermCatchRet is an LLVM IR catchret terminator.
type TermCatchRet struct {
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
func (term *TermCatchRet) String() string {
	// "catchret" "from" Value "to" LabelType LocalIdent OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "catchret from %v to %v", term.From, term.To)
	for _, md := range term.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

// --- [ cleanupret ] ----------------------------------------------------------

// TermCleanupRet is an LLVM IR cleanupret terminator.
type TermCleanupRet struct {
	// Note, the type of From is not present in the AST of the cleanupret
	// instruction, but has to be resolved by local identifier lookup. A nil
	// Type() is used to identify AST From values.

	From         value.Value // cleanuppad
	UnwindTarget UnwindTarget
	Metadata     []*metadata.MetadataAttachment
}

// String returns a string representation of the terminator.
func (term *TermCleanupRet) String() string {
	// "cleanupret" "from" Value "unwind" UnwindTarget OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "cleanupret from %v unwind %v", term.From, term.UnwindTarget)
	for _, md := range term.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

// --- [ unreachable ] ---------------------------------------------------------

// TermUnreachable is an LLVM IR unreachable terminator.
type TermUnreachable struct {
	Metadata []*metadata.MetadataAttachment
}

// String returns a string representation of the terminator.
func (term *TermUnreachable) String() string {
	// "unreachable" OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
	buf.WriteString("unreachable")
	for _, md := range term.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

// ___ [ Helpers ] _____________________________________________________________

// UnwindToCaller specifies the caller as an unwind target.
type UnwindToCaller struct{}

// String returns a string representation of the unwind target.
func (*UnwindToCaller) String() string {
	// "to" "caller"
	return "to caller"
}
