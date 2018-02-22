package ast

type Instruction interface {
	isInstruction()
}

// --- [ Binary instructions ] -------------------------------------------------

type AddInst struct {
	OverflowFlags []OverflowFlag
	X, Y          TypeValue
	Metadata      []MetadataAttachment
}

type FAddInst struct {
	FastMathFlags []FastMathFlag
	X, Y          TypeValue
	Metadata      []MetadataAttachment
}

type SubInst struct {
	OverflowFlags []OverflowFlag
	X, Y          TypeValue
	Metadata      []MetadataAttachment
}

type FSubInst struct {
	FastMathFlags []FastMathFlag
	X, Y          TypeValue
	Metadata      []MetadataAttachment
}

type MulInst struct {
	OverflowFlags []OverflowFlag
	X, Y          TypeValue
	Metadata      []MetadataAttachment
}

type FMulInst struct {
	FastMathFlags []FastMathFlag
	X, Y          TypeValue
	Metadata      []MetadataAttachment
}

type UDivInst struct {
	Exact    bool
	X, Y     TypeValue
	Metadata []MetadataAttachment
}

type SDivInst struct {
	Exact    bool
	X, Y     TypeValue
	Metadata []MetadataAttachment
}

type FDivInst struct {
	FastMathFlags []FastMathFlag
	X, Y          TypeValue
	Metadata      []MetadataAttachment
}

type URemInst struct {
	X, Y     TypeValue
	Metadata []MetadataAttachment
}

type SRemInst struct {
	X, Y     TypeValue
	Metadata []MetadataAttachment
}

type FRemInst struct {
	FastMathFlags []FastMathFlag
	X, Y          TypeValue
	Metadata      []MetadataAttachment
}

// --- [ Bitwise instructions ] ------------------------------------------------

type ShlInst struct {
	OverflowFlags []OverflowFlag
	X, Y          TypeValue
	Metadata      []MetadataAttachment
}

type LShrInst struct {
	Exact    bool
	X, Y     TypeValue
	Metadata []MetadataAttachment
}

type AShrInst struct {
	Exact    bool
	X, Y     TypeValue
	Metadata []MetadataAttachment
}

type AndInst struct {
	X, Y     TypeValue
	Metadata []MetadataAttachment
}

type OrInst struct {
	X, Y     TypeValue
	Metadata []MetadataAttachment
}

type XorInst struct {
	X, Y     TypeValue
	Metadata []MetadataAttachment
}

// --- [ Vector instructions ] -------------------------------------------------

type ExtractElementInst struct {
	X        TypeValue
	Index    TypeValue
	Metadata []MetadataAttachment
}

type InsertElementInst struct {
	X        TypeValue
	Elem     TypeValue
	Index    TypeValue
	Metadata []MetadataAttachment
}

type ShuffleVectorInst struct {
	X, Y     TypeValue
	Mask     TypeValue
	Metadata []MetadataAttachment
}

// --- [ Aggregate instructions ] ----------------------------------------------

type ExtractValueInst struct {
	X        TypeValue
	Indices  []int64
	Metadata []MetadataAttachment
}

type InsertValueInst struct {
	X        TypeValue
	Elem     TypeValue
	Indices  []int64
	Metadata []MetadataAttachment
}

// --- [ Memory instructions ] -------------------------------------------------

type AllocaInst struct {
	Inalloca   bool
	SwiftError bool
	ElemType   Type
	NElems     TypeValue // nil if not present
	Alignment  Alignment
	AddrSpace  AddrSpace
	Metadata   []MetadataAttachment
}

type LoadInst struct {
	Atomic         bool
	Volatile       bool
	ElemType       Type
	Src            TypeValue
	SyncScope      SyncScope      // empty if not present
	AtomicOrdering AtomicOrdering // zero value if not present
	Alignment      Alignment
	Metadata       []MetadataAttachment
}

type StoreInst struct {
	Atomic         bool
	Volatile       bool
	Src            TypeValue
	Dst            TypeValue
	SyncScope      SyncScope      // empty if not present
	AtomicOrdering AtomicOrdering // zero value if not present
	Alignment      Alignment
	Metadata       []MetadataAttachment
}

type FenceInst struct {
	SyncScope      SyncScope // empty if not present
	AtomicOrdering AtomicOrdering
	Metadata       []MetadataAttachment
}

type CmpXchgInst struct {
	Weak      bool
	Volatile  bool
	Ptr       TypeValue
	Cmp       TypeValue
	New       TypeValue
	SyncScope SyncScope // empty if not present
	Success   AtomicOrdering
	Failure   AtomicOrdering
	Metadata  []MetadataAttachment
}

type AtomicRMWInst struct {
	Volatile       bool
	Op             BinOp
	Ptr            TypeValue
	X              TypeValue
	SyncScope      SyncScope // empty if not present
	AtomicOrdering AtomicOrdering
	Metadata       []MetadataAttachment
}

//go:generate stringer -linecomment -type BinOp

type BinOp uint8

const (
	BinOpXChg BinOp = iota // xchg
	BinOpAdd               // add
	BinOpSub               // sub
	BinOpAnd               // and
	BinOpNAnd              // nand
	BinOpOr                // or
	BinOpXor               // xor
	BinOpMax               // max
	BinOpMin               // min
	BinOpUMax              // umax
	BinOpUMin              // umin
)

type GetElementPtrInst struct {
	InBounds bool
	ElemType Type
	Src      TypeValue
	Indices  []TypeValue
	Metadata []MetadataAttachment
}

// --- [ Conversion instructions ] ---------------------------------------------

type TruncInst struct {
	From     TypeValue
	To       Type
	Metadata []MetadataAttachment
}

type ZExtInst struct {
	From     TypeValue
	To       Type
	Metadata []MetadataAttachment
}

type SExtInst struct {
	From     TypeValue
	To       Type
	Metadata []MetadataAttachment
}

type FPTruncInst struct {
	From     TypeValue
	To       Type
	Metadata []MetadataAttachment
}

type FPExtInst struct {
	From     TypeValue
	To       Type
	Metadata []MetadataAttachment
}

type FPToUIInst struct {
	From     TypeValue
	To       Type
	Metadata []MetadataAttachment
}

type FPToSIInst struct {
	From     TypeValue
	To       Type
	Metadata []MetadataAttachment
}

type UIToFPInst struct {
	From     TypeValue
	To       Type
	Metadata []MetadataAttachment
}

type SIToFPInst struct {
	From     TypeValue
	To       Type
	Metadata []MetadataAttachment
}

type PtrToIntInst struct {
	From     TypeValue
	To       Type
	Metadata []MetadataAttachment
}

type IntToPtrInst struct {
	From     TypeValue
	To       Type
	Metadata []MetadataAttachment
}

type BitCastInst struct {
	From     TypeValue
	To       Type
	Metadata []MetadataAttachment
}

type AddrSpaceCastInst struct {
	From     TypeValue
	To       Type
	Metadata []MetadataAttachment
}

// --- [ Other instructions ] --------------------------------------------------

type ICmpInst struct {
	Pred     IPred
	X, Y     TypeValue
	Metadata []MetadataAttachment
}

type FCmpInst struct {
	FastMathFlags []FastMathFlag
	Pred          FPred
	X, Y          TypeValue
	Metadata      []MetadataAttachment
}

type PhiInst struct {
	Type     Type
	Incs     []Incoming
	Metadata []MetadataAttachment
}

type Incoming struct {
	X    Value
	Pred LocalIdent
}

type SelectInst struct {
	Cond     TypeValue
	X, Y     TypeValue
	Metadata []MetadataAttachment
}

type CallInst struct {
	Tail           Tail
	FastMathFlags  []FastMathFlag
	CallingConv    CallingConv
	ReturnAttrs    []ReturnAttribute
	Callee         TypeValue
	Args           []Argument
	FuncAttrs      []FuncAttribute
	OperandBundles []*OperandBundle
	Metadata       []MetadataAttachment
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
	ArgList  TypeValue
	ArgType  Type
	Metadata []MetadataAttachment
}

type LandingPadInst struct {
	Type     Type
	Cleanup  bool
	Clauses  []Clause
	Metadata []MetadataAttachment
}

type Clause struct {
	Catch bool // catch if true, filter otherwise
	X     TypeValue
}

// --- [ catchpad ] ------------------------------------------------------------

type CatchPadInst struct {
	Scope    LocalIdent
	Args     []Argument
	Metadata []MetadataAttachment
}

// --- [ cleanuppad ] ----------------------------------------------------------

type CleanupPadInst struct {
	Scope    ExceptionScope
	Args     []Argument
	Metadata []MetadataAttachment
}
