package ast

// === [ Instructions ] ========================================================

type Instruction interface {
	isInstruction()
}

type ValueInstruction struct {
	Name *LocalIdent
	Inst Instruction
}

// --- [ Binary instructions ] -------------------------------------------------

type AddInst struct {
	OverflowFlags []OverflowFlag
	X, Y          *TypeValue
	Metadata      []*MetadataAttachment
}

type FAddInst struct {
	FastMathFlags []FastMathFlag
	X, Y          *TypeValue
	Metadata      []*MetadataAttachment
}

type SubInst struct {
	OverflowFlags []OverflowFlag
	X, Y          *TypeValue
	Metadata      []*MetadataAttachment
}

type FSubInst struct {
	FastMathFlags []FastMathFlag
	X, Y          *TypeValue
	Metadata      []*MetadataAttachment
}

type MulInst struct {
	OverflowFlags []OverflowFlag
	X, Y          *TypeValue
	Metadata      []*MetadataAttachment
}

type FMulInst struct {
	FastMathFlags []FastMathFlag
	X, Y          *TypeValue
	Metadata      []*MetadataAttachment
}

type UDivInst struct {
	Exact    bool
	X, Y     *TypeValue
	Metadata []*MetadataAttachment
}

type SDivInst struct {
	Exact    bool
	X, Y     *TypeValue
	Metadata []*MetadataAttachment
}

type FDivInst struct {
	FastMathFlags []FastMathFlag
	X, Y          *TypeValue
	Metadata      []*MetadataAttachment
}

type URemInst struct {
	X, Y     *TypeValue
	Metadata []*MetadataAttachment
}

type SRemInst struct {
	X, Y     *TypeValue
	Metadata []*MetadataAttachment
}

type FRemInst struct {
	FastMathFlags []FastMathFlag
	X, Y          *TypeValue
	Metadata      []*MetadataAttachment
}

// --- [ Bitwise instructions ] ------------------------------------------------

type ShlInst struct {
	OverflowFlags []OverflowFlag
	X, Y          *TypeValue
	Metadata      []*MetadataAttachment
}

type LShrInst struct {
	Exact    bool
	X, Y     *TypeValue
	Metadata []*MetadataAttachment
}

type AShrInst struct {
	Exact    bool
	X, Y     *TypeValue
	Metadata []*MetadataAttachment
}

type AndInst struct {
	X, Y     *TypeValue
	Metadata []*MetadataAttachment
}

type OrInst struct {
	X, Y     *TypeValue
	Metadata []*MetadataAttachment
}

type XorInst struct {
	X, Y     *TypeValue
	Metadata []*MetadataAttachment
}

// --- [ Vector instructions ] -------------------------------------------------

type ExtractElementInst struct {
	X        *TypeValue
	Index    *TypeValue
	Metadata []*MetadataAttachment
}

type InsertElementInst struct {
	X        *TypeValue
	Elem     *TypeValue
	Index    *TypeValue
	Metadata []*MetadataAttachment
}

type ShuffleVectorInst struct {
	X, Y     *TypeValue
	Mask     *TypeValue
	Metadata []*MetadataAttachment
}

// --- [ Aggregate instructions ] ----------------------------------------------

type ExtractValueInst struct {
	X        *TypeValue
	Indices  []int64
	Metadata []*MetadataAttachment
}

type InsertValueInst struct {
	X        *TypeValue
	Elem     *TypeValue
	Indices  []int64
	Metadata []*MetadataAttachment
}

// --- [ Memory instructions ] -------------------------------------------------

type AllocaInst struct {
	InAlloca   bool
	SwiftError bool
	ElemType   Type
	NElems     *TypeValue // nil if not present
	Alignment  *Alignment // nil if not present
	AddrSpace  AddrSpace  // zero if not present
	Metadata   []*MetadataAttachment
}

type LoadInst struct {
	Atomic         bool
	Volatile       bool
	ElemType       Type
	Src            *TypeValue
	SyncScope      *SyncScope     // nil if not present
	AtomicOrdering AtomicOrdering // zero value if not present
	Alignment      *Alignment     // nil if not present
	Metadata       []*MetadataAttachment
}

type StoreInst struct {
	Atomic         bool
	Volatile       bool
	Src            *TypeValue
	Dst            *TypeValue
	SyncScope      *SyncScope     // nil if not present
	AtomicOrdering AtomicOrdering // zero value if not present
	Alignment      *Alignment     // nil if not present
	Metadata       []*MetadataAttachment
}

type FenceInst struct {
	SyncScope      *SyncScope // nil if not present
	AtomicOrdering AtomicOrdering
	Metadata       []*MetadataAttachment
}

type CmpXchgInst struct {
	Weak      bool
	Volatile  bool
	Ptr       *TypeValue
	Cmp       *TypeValue
	New       *TypeValue
	SyncScope *SyncScope // nil if not present
	Success   AtomicOrdering
	Failure   AtomicOrdering
	Metadata  []*MetadataAttachment
}

type AtomicRMWInst struct {
	Volatile       bool
	Op             BinOp
	Ptr            *TypeValue
	X              *TypeValue
	SyncScope      *SyncScope // nil if not present
	AtomicOrdering AtomicOrdering
	Metadata       []*MetadataAttachment
}

//go:generate stringer -linecomment -type BinOp

type BinOp uint8

const (
	BinOpAdd  BinOp = iota // add
	BinOpAnd               // and
	BinOpMax               // max
	BinOpMin               // min
	BinOpNAnd              // nand
	BinOpOr                // or
	BinOpSub               // sub
	BinOpUMax              // umax
	BinOpUMin              // umin
	BinOpXChg              // xchg
	BinOpXor               // xor
)

type GetElementPtrInst struct {
	InBounds bool
	ElemType Type
	Src      *TypeValue
	Indices  []*TypeValue
	Metadata []*MetadataAttachment
}

// --- [ Conversion instructions ] ---------------------------------------------

type TruncInst struct {
	From     *TypeValue
	To       Type
	Metadata []*MetadataAttachment
}

type ZExtInst struct {
	From     *TypeValue
	To       Type
	Metadata []*MetadataAttachment
}

type SExtInst struct {
	From     *TypeValue
	To       Type
	Metadata []*MetadataAttachment
}

type FPTruncInst struct {
	From     *TypeValue
	To       Type
	Metadata []*MetadataAttachment
}

type FPExtInst struct {
	From     *TypeValue
	To       Type
	Metadata []*MetadataAttachment
}

type FPToUIInst struct {
	From     *TypeValue
	To       Type
	Metadata []*MetadataAttachment
}

type FPToSIInst struct {
	From     *TypeValue
	To       Type
	Metadata []*MetadataAttachment
}

type UIToFPInst struct {
	From     *TypeValue
	To       Type
	Metadata []*MetadataAttachment
}

type SIToFPInst struct {
	From     *TypeValue
	To       Type
	Metadata []*MetadataAttachment
}

type PtrToIntInst struct {
	From     *TypeValue
	To       Type
	Metadata []*MetadataAttachment
}

type IntToPtrInst struct {
	From     *TypeValue
	To       Type
	Metadata []*MetadataAttachment
}

type BitCastInst struct {
	From     *TypeValue
	To       Type
	Metadata []*MetadataAttachment
}

type AddrSpaceCastInst struct {
	From     *TypeValue
	To       Type
	Metadata []*MetadataAttachment
}

// --- [ Other instructions ] --------------------------------------------------

type ICmpInst struct {
	Pred     IPred
	X, Y     *TypeValue
	Metadata []*MetadataAttachment
}

type FCmpInst struct {
	FastMathFlags []FastMathFlag
	Pred          FPred
	X, Y          *TypeValue
	Metadata      []*MetadataAttachment
}

type PhiInst struct {
	Type     Type
	Incs     []*Incoming
	Metadata []*MetadataAttachment
}

type Incoming struct {
	X    Value
	Pred *LocalIdent
}

type SelectInst struct {
	Cond     *TypeValue
	X, Y     *TypeValue
	Metadata []*MetadataAttachment
}

type CallInst struct {
	Tail           Tail
	FastMathFlags  []FastMathFlag
	CallingConv    CallingConv
	ReturnAttrs    []ReturnAttribute
	RetType        Type
	Callee         Value
	Args           []Argument
	FuncAttrs      []FuncAttribute
	OperandBundles []*OperandBundle
	Metadata       []*MetadataAttachment
}

//go:generate stringer -linecomment -type Tail

type Tail uint8

const (
	TailNone     Tail = iota // none
	TailMustTail             // musttail
	TailNoTail               // notail
	TailTail                 // tail
)

type VAArgInst struct {
	ArgList  *TypeValue
	ArgType  Type
	Metadata []*MetadataAttachment
}

type LandingPadInst struct {
	Type     Type
	Cleanup  bool
	Clauses  []*Clause
	Metadata []*MetadataAttachment
}

type Clause struct {
	Catch bool // catch if true, filter otherwise
	X     *TypeValue
}

// --- [ catchpad ] ------------------------------------------------------------

type CatchPadInst struct {
	Scope    *LocalIdent
	Args     []Argument
	Metadata []*MetadataAttachment
}

// --- [ cleanuppad ] ----------------------------------------------------------

type CleanupPadInst struct {
	Scope    ExceptionScope
	Args     []Argument
	Metadata []*MetadataAttachment
}

func (*ValueInstruction) isInstruction()   {}
func (*AddInst) isInstruction()            {}
func (*FAddInst) isInstruction()           {}
func (*SubInst) isInstruction()            {}
func (*FSubInst) isInstruction()           {}
func (*MulInst) isInstruction()            {}
func (*FMulInst) isInstruction()           {}
func (*UDivInst) isInstruction()           {}
func (*SDivInst) isInstruction()           {}
func (*FDivInst) isInstruction()           {}
func (*URemInst) isInstruction()           {}
func (*SRemInst) isInstruction()           {}
func (*FRemInst) isInstruction()           {}
func (*ShlInst) isInstruction()            {}
func (*LShrInst) isInstruction()           {}
func (*AShrInst) isInstruction()           {}
func (*AndInst) isInstruction()            {}
func (*OrInst) isInstruction()             {}
func (*XorInst) isInstruction()            {}
func (*ExtractElementInst) isInstruction() {}
func (*InsertElementInst) isInstruction()  {}
func (*ShuffleVectorInst) isInstruction()  {}
func (*ExtractValueInst) isInstruction()   {}
func (*InsertValueInst) isInstruction()    {}
func (*AllocaInst) isInstruction()         {}
func (*LoadInst) isInstruction()           {}
func (*StoreInst) isInstruction()          {}
func (*FenceInst) isInstruction()          {}
func (*CmpXchgInst) isInstruction()        {}
func (*AtomicRMWInst) isInstruction()      {}
func (*GetElementPtrInst) isInstruction()  {}
func (*TruncInst) isInstruction()          {}
func (*ZExtInst) isInstruction()           {}
func (*SExtInst) isInstruction()           {}
func (*FPTruncInst) isInstruction()        {}
func (*FPExtInst) isInstruction()          {}
func (*FPToUIInst) isInstruction()         {}
func (*FPToSIInst) isInstruction()         {}
func (*UIToFPInst) isInstruction()         {}
func (*SIToFPInst) isInstruction()         {}
func (*PtrToIntInst) isInstruction()       {}
func (*IntToPtrInst) isInstruction()       {}
func (*BitCastInst) isInstruction()        {}
func (*AddrSpaceCastInst) isInstruction()  {}
func (*ICmpInst) isInstruction()           {}
func (*FCmpInst) isInstruction()           {}
func (*PhiInst) isInstruction()            {}
func (*SelectInst) isInstruction()         {}
func (*CallInst) isInstruction()           {}
func (*VAArgInst) isInstruction()          {}
func (*LandingPadInst) isInstruction()     {}
func (*CatchPadInst) isInstruction()       {}
func (*CleanupPadInst) isInstruction()     {}
