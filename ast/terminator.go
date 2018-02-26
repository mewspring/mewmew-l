package ast

import (
	"fmt"
	"strings"
)

type Terminator interface {
	fmt.Stringer
	isTerminator()
}

type RetTerm struct {
	X        *TypeValue // nil if void return
	Metadata []*MetadataAttachment
}

func (term *RetTerm) String() string {
	buf := &strings.Builder{}
	if term.X == nil {
		// Void return.
		//
		//    "ret" VoidType OptCommaSepMetadataAttachmentList
		buf.WriteString("ret void")
		for _, md := range term.Metadata {
			fmt.Fprintf(buf, ", %v", md)
		}
		return buf.String()
	}
	// Value return.
	//
	//    "ret" ConcreteType Value OptCommaSepMetadataAttachmentList
	fmt.Fprintf(buf, "ret %v", term.X)
	for _, md := range term.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

// BrTerm is an unconditional branch.
type BrTerm struct {
	Target   *Label
	Metadata []*MetadataAttachment
}

func (term *BrTerm) String() string {
	buf := &strings.Builder{}
	// "br" LabelType LocalIdent OptCommaSepMetadataAttachmentList
	fmt.Fprintf(buf, "br %v", term.Target)
	for _, md := range term.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

// CondBrTerm is a conditional branch.
type CondBrTerm struct {
	Cond        *TypeValue
	TargetTrue  *Label
	TargetFalse *Label
	Metadata    []*MetadataAttachment
}

func (term *CondBrTerm) String() string {
	buf := &strings.Builder{}
	// "br" IntType Value "," LabelType LocalIdent "," LabelType LocalIdent OptCommaSepMetadataAttachmentList
	fmt.Fprintf(buf, "br %v, %v, %v", term.Cond, term.TargetTrue, term.TargetFalse)
	for _, md := range term.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

type SwitchTerm struct {
	X        *TypeValue
	Default  *Label
	Cases    []*Case
	Metadata []*MetadataAttachment
}

func (term *SwitchTerm) String() string {
	buf := &strings.Builder{}
	// "switch" Type Value "," LabelType LocalIdent "[" Cases "]" OptCommaSepMetadataAttachmentList
	fmt.Fprintf(buf, "switch %v, %v [\n", term.X, term.Default)
	for _, c := range term.Cases {
		fmt.Fprintf(buf, "\t%v\n", c)
	}
	buf.WriteString("]")
	for _, md := range term.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

type Case struct {
	X      *TypeConst
	Target *Label
}

func (c *Case) String() string {
	// Type IntConst "," LabelType LocalIdent
	return fmt.Sprintf("%v, %v", c.X, c.Target)
}

type IndirectBrTerm struct {
	Addr     *TypeValue
	Targets  []*Label
	Metadata []*MetadataAttachment
}

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

type ResumeTerm struct {
	X        *TypeValue
	Metadata []*MetadataAttachment
}

func (term *ResumeTerm) String() string {
	// "resume" Type Value OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "resume %v", term.X, term.X)
	for _, md := range term.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

type CatchSwitchTerm struct {
	Scope        ExceptionScope
	Handlers     []*Label
	UnwindTarget UnwindTarget
	Metadata     []*MetadataAttachment
}

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

type UnwindTarget interface {
	fmt.Stringer
	isUnwindTarget()
}

// UnwindToCaller specifies the caller as an unwind target.
type UnwindToCaller struct{}

func (*UnwindToCaller) String() string {
	return "to caller"
}

func (*UnwindToCaller) isUnwindTarget() {}
func (*Label) isUnwindTarget()          {}

type CatchRetTerm struct {
	From     Value // catchpad
	To       *Label
	Metadata []*MetadataAttachment
}

func (term *CatchRetTerm) String() string {
	buf := &strings.Builder{}
	// "catchret" "from" Value "to" LabelType LocalIdent OptCommaSepMetadataAttachmentList
	fmt.Fprintf(buf, "catchret from %v to %v", term.From, term.To)
	for _, md := range term.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

type CleanupRetTerm struct {
	From         Value // cleanuppad
	UnwindTarget UnwindTarget
	Metadata     []*MetadataAttachment
}

func (term *CleanupRetTerm) String() string {
	// "cleanupret" "from" Value "unwind" UnwindTarget OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "cleanupret from %v unwind %v", term.From, term.UnwindTarget)
	for _, md := range term.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

type UnreachableTerm struct {
	Metadata []*MetadataAttachment
}

func (term *UnreachableTerm) String() string {
	buf := &strings.Builder{}
	// "unreachable" OptCommaSepMetadataAttachmentList
	buf.WriteString("unreachable")
	for _, md := range term.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

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
