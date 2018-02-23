package ast

type Terminator interface {
	isTerminator()
}

type RetTerm struct {
	X        *TypeValue // nil if void return
	Metadata []*MetadataAttachment
}

// BrTerm is an unconditional branch.
type BrTerm struct {
	Target   *Label
	Metadata []*MetadataAttachment
}

// CondBrTerm is a conditional branch.
type CondBrTerm struct {
	Cond        *TypeValue
	TargetTrue  *Label
	TargetFalse *Label
	Metadata    []*MetadataAttachment
}

type SwitchTerm struct {
	X        *TypeValue
	Default  *Label
	Cases    []*Case
	Metadata []*MetadataAttachment
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

func (UnwindToCaller) isUnwindTarget() {}
func (Label) isUnwindTarget()          {}

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
