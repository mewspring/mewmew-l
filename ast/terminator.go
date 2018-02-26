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
	fmt.Fprintf(buf, "ret %v %v", term.X.Type, term.X.Value)
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
	fmt.Fprintf(buf, "br label %v", term.Target.Name)
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
	fmt.Fprintf(buf, "br %v %v, label %v, label %v", term.Cond.Type, term.Cond.Value, term.TargetTrue.Name, term.TargetFalse.Name)
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
	//
	fmt.Fprintf(buf, "switch %v %v, label %v [\n", term.X.Type, term.X.Value, term.Default.Name)
	for _, c := range term.Cases {
		// Case : Type IntConst "," LabelType LocalIdent
		fmt.Fprintf(buf, "\t%v %v, label %v\n", c.X.Type, c.X.Const, c.Target.Name)
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

type IndirectBrTerm struct {
	Addr     *TypeValue
	Targets  []*Label
	Metadata []*MetadataAttachment
}

type InvokeTerm struct {
	CallingConv    CallingConv
	ReturnAttrs    []ReturnAttribute
	Callee         *TypeValue
	Args           []Argument
	FuncAttrs      []FuncAttribute
	OperandBundles []*OperandBundle
	Normal         *Label
	Exception      *Label
	Metadata       []*MetadataAttachment
}

type ResumeTerm struct {
	X        *TypeValue
	Metadata []*MetadataAttachment
}

type CatchSwitchTerm struct {
	Scope        ExceptionScope
	Handlers     []*Label
	UnwindTarget UnwindTarget
	Metadata     []*MetadataAttachment
}

type UnwindTarget interface {
	isUnwindTarget()
}

// UnwindToCaller specifies the caller as an unwind target.
type UnwindToCaller struct{}

func (*UnwindToCaller) isUnwindTarget() {}
func (*Label) isUnwindTarget()          {}

type CatchRetTerm struct {
	From     Value // catchpad
	To       *Label
	Metadata []*MetadataAttachment
}

type CleanupRetTerm struct {
	From         Value // cleanuppad
	UnwindTarget UnwindTarget
	Metadata     []*MetadataAttachment
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
