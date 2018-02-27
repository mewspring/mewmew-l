package ast

import (
	"fmt"
	"strings"
)

// A Terminator is an LLVM IR terminator.
type Terminator interface {
	fmt.Stringer
	// isTerminator ensures that only terminators can be assigned to the
	// ast.Terminator interface.
	isTerminator()
}

// RetTerm is an LLVM IR ret terminator.
type RetTerm struct {
	X        *TypeValue // nil if void return
	Metadata []*MetadataAttachment
}

// String returns a string representation of the terminator.
func (term *RetTerm) String() string {
	buf := &strings.Builder{}
	// "ret" VoidType OptCommaSepMetadataAttachmentList
	// "ret" ConcreteType Value OptCommaSepMetadataAttachmentList
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

// BrTerm is an unconditional LLVM IR br terminator.
type BrTerm struct {
	Target   *Label
	Metadata []*MetadataAttachment
}

// String returns a string representation of the terminator.
func (term *BrTerm) String() string {
	buf := &strings.Builder{}
	// "br" LabelType LocalIdent OptCommaSepMetadataAttachmentList
	fmt.Fprintf(buf, "br %v", term.Target)
	for _, md := range term.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

// CondBrTerm is a conditional LLVM IR br terminator.
type CondBrTerm struct {
	Cond        *TypeValue
	TargetTrue  *Label
	TargetFalse *Label
	Metadata    []*MetadataAttachment
}

// String returns a string representation of the terminator.
func (term *CondBrTerm) String() string {
	buf := &strings.Builder{}
	// "br" IntType Value "," LabelType LocalIdent "," LabelType LocalIdent OptCommaSepMetadataAttachmentList
	fmt.Fprintf(buf, "br %v, %v, %v", term.Cond, term.TargetTrue, term.TargetFalse)
	for _, md := range term.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

// SwitchTerm is an LLVM IR switch terminator.
type SwitchTerm struct {
	X        *TypeValue
	Default  *Label
	Cases    []*Case
	Metadata []*MetadataAttachment
}

// String returns a string representation of the terminator.
func (term *SwitchTerm) String() string {
	buf := &strings.Builder{}
	// "switch" Type Value "," LabelType LocalIdent "[" Cases "]" OptCommaSepMetadataAttachmentList
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
	X      *TypeConst
	Target *Label
}

// String returns a string representation of the case.
func (c *Case) String() string {
	// Type IntConst "," LabelType LocalIdent
	return fmt.Sprintf("%v, %v", c.X, c.Target)
}

// IndirectBrTerm is an LLVM IR indirectbr terminator.
type IndirectBrTerm struct {
	Addr     *TypeValue
	Targets  []*Label
	Metadata []*MetadataAttachment
}

// String returns a string representation of the terminator.
func (term *IndirectBrTerm) String() string {
	buf := &strings.Builder{}
	// "indirectbr" Type Value "," "[" LabelList "]" OptCommaSepMetadataAttachmentList
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

// InvokeTerm is an LLVM IR invoke terminator.
type InvokeTerm struct {
	CallingConv    CallingConv
	ReturnAttrs    []ReturnAttribute
	RetType        Type
	Callee         Value
	Args           []Argument
	FuncAttrs      []FuncAttribute
	OperandBundles []*OperandBundle
	Normal         *Label
	Exception      *Label
	Metadata       []*MetadataAttachment
}

// String returns a string representation of the terminator.
func (term *InvokeTerm) String() string {
	buf := &strings.Builder{}
	// "invoke" OptCallingConv ReturnAttrs Type Value "(" Args ")" FuncAttrs OperandBundles "to" LabelType LocalIdent "unwind" LabelType LocalIdent OptCommaSepMetadataAttachmentList
	buf.WriteString("invoke")
	if term.CallingConv != CallingConvNone {
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

// ResumeTerm is an LLVM IR resume terminator.
type ResumeTerm struct {
	X        *TypeValue
	Metadata []*MetadataAttachment
}

// String returns a string representation of the terminator.
func (term *ResumeTerm) String() string {
	buf := &strings.Builder{}
	// "resume" Type Value OptCommaSepMetadataAttachmentList
	fmt.Fprintf(buf, "resume %v", term.X)
	for _, md := range term.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

// CatchSwitchTerm is an LLVM IR catchswitch terminator.
type CatchSwitchTerm struct {
	Scope        ExceptionScope
	Handlers     []*Label
	UnwindTarget UnwindTarget
	Metadata     []*MetadataAttachment
}

// String returns a string representation of the terminator.
func (term *CatchSwitchTerm) String() string {
	buf := &strings.Builder{}
	// "catchswitch" "within" ExceptionScope "[" LabelList "]" "unwind" UnwindTarget OptCommaSepMetadataAttachmentList
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

// UnwindTarget is an unwind target of a catchswitch or cleanupret terminator.
type UnwindTarget interface {
	fmt.Stringer
	// isUnwindTarget ensures that only unwind targets can be assigned to the
	// ast.UnwindTarget interface.
	isUnwindTarget()
}

// UnwindToCaller specifies the caller as an unwind target.
type UnwindToCaller struct{}

// String returns a string representation of the unwind target.
func (*UnwindToCaller) String() string {
	return "to caller"
}

// isUnwindTarget ensures that only unwind targets can be assigned to the
// ast.UnwindTarget interface.
func (*UnwindToCaller) isUnwindTarget() {}
func (*Label) isUnwindTarget()          {}

// CatchRetTerm is an LLVM IR catchret terminator.
type CatchRetTerm struct {
	From     Value // catchpad
	To       *Label
	Metadata []*MetadataAttachment
}

// String returns a string representation of the terminator.
func (term *CatchRetTerm) String() string {
	buf := &strings.Builder{}
	// "catchret" "from" Value "to" LabelType LocalIdent OptCommaSepMetadataAttachmentList
	fmt.Fprintf(buf, "catchret from %v to %v", term.From, term.To)
	for _, md := range term.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

// CleanupRetTerm is an LLVM IR cleanupret terminator.
type CleanupRetTerm struct {
	From         Value // cleanuppad
	UnwindTarget UnwindTarget
	Metadata     []*MetadataAttachment
}

// String returns a string representation of the terminator.
func (term *CleanupRetTerm) String() string {
	buf := &strings.Builder{}
	// "cleanupret" "from" Value "unwind" UnwindTarget OptCommaSepMetadataAttachmentList
	fmt.Fprintf(buf, "cleanupret from %v unwind %v", term.From, term.UnwindTarget)
	for _, md := range term.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

// UnreachableTerm is an LLVM IR unreachable terminator.
type UnreachableTerm struct {
	Metadata []*MetadataAttachment
}

// String returns a string representation of the terminator.
func (term *UnreachableTerm) String() string {
	buf := &strings.Builder{}
	// "unreachable" OptCommaSepMetadataAttachmentList
	buf.WriteString("unreachable")
	for _, md := range term.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

// isTerminator ensures that only terminators can be assigned to the
// ast.Terminator interface.
func (*RetTerm) isTerminator()         {}
func (*BrTerm) isTerminator()          {}
func (*CondBrTerm) isTerminator()      {}
func (*SwitchTerm) isTerminator()      {}
func (*IndirectBrTerm) isTerminator()  {}
func (*InvokeTerm) isTerminator()      {}
func (*ResumeTerm) isTerminator()      {}
func (*CatchSwitchTerm) isTerminator() {}
func (*CatchRetTerm) isTerminator()    {}
func (*CleanupRetTerm) isTerminator()  {}
func (*UnreachableTerm) isTerminator() {}

// Ensure that each terminator implements the ast.Terminator interface.
var (
	_ Terminator = (*RetTerm)(nil)
	_ Terminator = (*BrTerm)(nil)
	_ Terminator = (*CondBrTerm)(nil)
	_ Terminator = (*SwitchTerm)(nil)
	_ Terminator = (*IndirectBrTerm)(nil)
	_ Terminator = (*InvokeTerm)(nil)
	_ Terminator = (*ResumeTerm)(nil)
	_ Terminator = (*CatchSwitchTerm)(nil)
	_ Terminator = (*CatchRetTerm)(nil)
	_ Terminator = (*CleanupRetTerm)(nil)
	_ Terminator = (*UnreachableTerm)(nil)
)
