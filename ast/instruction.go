package ast

import (
	"fmt"
	"strings"
)

// === [ Instructions ] ========================================================

type Instruction interface {
	fmt.Stringer
	isInstruction()
}

type ValueInstruction struct {
	Name *LocalIdent
	Inst Instruction
}

func (v *ValueInstruction) String() string {
	// LocalIdent "=" ValueInstruction
	return fmt.Sprintf("%v = %v", v.Name, v.Inst)
}

// --- [ Binary instructions ] -------------------------------------------------

type AddInst struct {
	OverflowFlags []OverflowFlag
	X, Y          *TypeValue
	Metadata      []*MetadataAttachment
}

func (inst *AddInst) String() string {
	// "add" OverflowFlags Type Value "," Value OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
	buf.WriteString("add")
	for _, flag := range inst.OverflowFlags {
		fmt.Fprintf(buf, " %v", flag)
	}
	fmt.Fprintf(buf, " %v, %v", inst.X, inst.Y.Value)
	for _, md := range inst.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

type FAddInst struct {
	FastMathFlags []FastMathFlag
	X, Y          *TypeValue
	Metadata      []*MetadataAttachment
}

func (inst *FAddInst) String() string {
	// "fadd" FastMathFlags Type Value "," Value OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
	buf.WriteString("fadd")
	for _, flag := range inst.FastMathFlags {
		fmt.Fprintf(buf, " %v", flag)
	}
	fmt.Fprintf(buf, " %v, %v", inst.X, inst.Y.Value)
	for _, md := range inst.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

type SubInst struct {
	OverflowFlags []OverflowFlag
	X, Y          *TypeValue
	Metadata      []*MetadataAttachment
}

func (inst *SubInst) String() string {
	// "sub" OverflowFlags Type Value "," Value OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
	buf.WriteString("sub")
	for _, flag := range inst.OverflowFlags {
		fmt.Fprintf(buf, " %v", flag)
	}
	fmt.Fprintf(buf, " %v, %v", inst.X, inst.Y.Value)
	for _, md := range inst.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

type FSubInst struct {
	FastMathFlags []FastMathFlag
	X, Y          *TypeValue
	Metadata      []*MetadataAttachment
}

func (inst *FSubInst) String() string {
	// "fsub" FastMathFlags Type Value "," Value OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
	buf.WriteString("fsub")
	for _, flag := range inst.FastMathFlags {
		fmt.Fprintf(buf, " %v", flag)
	}
	fmt.Fprintf(buf, " %v, %v", inst.X, inst.Y.Value)
	for _, md := range inst.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

type MulInst struct {
	OverflowFlags []OverflowFlag
	X, Y          *TypeValue
	Metadata      []*MetadataAttachment
}

func (inst *MulInst) String() string {
	// "mul" OverflowFlags Type Value "," Value OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
	buf.WriteString("mul")
	for _, flag := range inst.OverflowFlags {
		fmt.Fprintf(buf, " %v", flag)
	}
	fmt.Fprintf(buf, " %v, %v", inst.X, inst.Y.Value)
	for _, md := range inst.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

type FMulInst struct {
	FastMathFlags []FastMathFlag
	X, Y          *TypeValue
	Metadata      []*MetadataAttachment
}

func (inst *FMulInst) String() string {
	// "fmul" FastMathFlags Type Value "," Value OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
	buf.WriteString("fmul")
	for _, flag := range inst.FastMathFlags {
		fmt.Fprintf(buf, " %v", flag)
	}
	fmt.Fprintf(buf, " %v, %v", inst.X, inst.Y.Value)
	for _, md := range inst.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

type UDivInst struct {
	Exact    bool
	X, Y     *TypeValue
	Metadata []*MetadataAttachment
}

func (inst *UDivInst) String() string {
	// "udiv" OptExact Type Value "," Value OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
	buf.WriteString("udiv")
	if inst.Exact {
		buf.WriteString(" exact")
	}
	fmt.Fprintf(buf, " %v, %v", inst.X, inst.Y.Value)
	for _, md := range inst.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

type SDivInst struct {
	Exact    bool
	X, Y     *TypeValue
	Metadata []*MetadataAttachment
}

func (inst *SDivInst) String() string {
	// "sdiv" OptExact Type Value "," Value OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
	buf.WriteString("sdiv")
	if inst.Exact {
		buf.WriteString(" exact")
	}
	fmt.Fprintf(buf, " %v, %v", inst.X, inst.Y.Value)
	for _, md := range inst.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

type FDivInst struct {
	FastMathFlags []FastMathFlag
	X, Y          *TypeValue
	Metadata      []*MetadataAttachment
}

func (inst *FDivInst) String() string {
	// "fdiv" FastMathFlags Type Value "," Value OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
	buf.WriteString("fdiv")
	for _, flag := range inst.FastMathFlags {
		fmt.Fprintf(buf, " %v", flag)
	}
	fmt.Fprintf(buf, " %v, %v", inst.X, inst.Y.Value)
	for _, md := range inst.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

type URemInst struct {
	X, Y     *TypeValue
	Metadata []*MetadataAttachment
}

func (inst *URemInst) String() string {
	// "urem" Type Value "," Value OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "urem %v, %v", inst.X, inst.Y.Value)
	for _, md := range inst.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

type SRemInst struct {
	X, Y     *TypeValue
	Metadata []*MetadataAttachment
}

func (inst *SRemInst) String() string {
	// "srem" Type Value "," Value OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "srem %v, %v", inst.X, inst.Y.Value)
	for _, md := range inst.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

type FRemInst struct {
	FastMathFlags []FastMathFlag
	X, Y          *TypeValue
	Metadata      []*MetadataAttachment
}

func (inst *FRemInst) String() string {
	// "frem" FastMathFlags Type Value "," Value OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
	buf.WriteString("frem")
	for _, flag := range inst.FastMathFlags {
		fmt.Fprintf(buf, " %v", flag)
	}
	fmt.Fprintf(buf, " %v, %v", inst.X, inst.Y.Value)
	for _, md := range inst.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

// --- [ Bitwise instructions ] ------------------------------------------------

type ShlInst struct {
	OverflowFlags []OverflowFlag
	X, Y          *TypeValue
	Metadata      []*MetadataAttachment
}

func (inst *ShlInst) String() string {
	// "shl" OverflowFlags Type Value "," Value OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
	buf.WriteString("shl")
	for _, flag := range inst.OverflowFlags {
		fmt.Fprintf(buf, " %v", flag)
	}
	fmt.Fprintf(buf, " %v, %v", inst.X, inst.Y.Value)
	for _, md := range inst.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

type LShrInst struct {
	Exact    bool
	X, Y     *TypeValue
	Metadata []*MetadataAttachment
}

func (inst *LShrInst) String() string {
	// "lshr" OptExact Type Value "," Value OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
	buf.WriteString("lshr")
	if inst.Exact {
		buf.WriteString(" exact")
	}
	fmt.Fprintf(buf, " %v, %v", inst.X, inst.Y.Value)
	for _, md := range inst.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

type AShrInst struct {
	Exact    bool
	X, Y     *TypeValue
	Metadata []*MetadataAttachment
}

func (inst *AShrInst) String() string {
	// "ashr" OptExact Type Value "," Value OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
	buf.WriteString("ashr")
	if inst.Exact {
		buf.WriteString(" exact")
	}
	fmt.Fprintf(buf, " %v, %v", inst.X, inst.Y.Value)
	for _, md := range inst.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

type AndInst struct {
	X, Y     *TypeValue
	Metadata []*MetadataAttachment
}

func (inst *AndInst) String() string {
	// "and" Type Value "," Value OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "and %v, %v", inst.X, inst.Y.Value)
	for _, md := range inst.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

type OrInst struct {
	X, Y     *TypeValue
	Metadata []*MetadataAttachment
}

func (inst *OrInst) String() string {
	// "or" Type Value "," Value OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "or %v, %v", inst.X, inst.Y.Value)
	for _, md := range inst.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

type XorInst struct {
	X, Y     *TypeValue
	Metadata []*MetadataAttachment
}

func (inst *XorInst) String() string {
	// "xor" Type Value "," Value OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "xor %v, %v", inst.X, inst.Y.Value)
	for _, md := range inst.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

// --- [ Vector instructions ] -------------------------------------------------

type ExtractElementInst struct {
	X        *TypeValue
	Index    *TypeValue
	Metadata []*MetadataAttachment
}

func (inst *ExtractElementInst) String() string {
	buf := &strings.Builder{}
	// "extractelement" Type Value "," Type Value OptCommaSepMetadataAttachmentList
	fmt.Fprintf(buf, "extractelement %v, %v", inst.X, inst.Index)
	for _, md := range inst.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

type InsertElementInst struct {
	X        *TypeValue
	Elem     *TypeValue
	Index    *TypeValue
	Metadata []*MetadataAttachment
}

func (inst *InsertElementInst) String() string {
	buf := &strings.Builder{}
	// "insertelement" Type Value "," Type Value "," Type Value OptCommaSepMetadataAttachmentList
	fmt.Fprintf(buf, "insertelement %v, %v, %v", inst.X, inst.Elem, inst.Index)
	for _, md := range inst.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

type ShuffleVectorInst struct {
	X, Y     *TypeValue
	Mask     *TypeValue
	Metadata []*MetadataAttachment
}

func (inst *ShuffleVectorInst) String() string {
	buf := &strings.Builder{}
	// "shufflevector" Type Value "," Type Value "," Type Value OptCommaSepMetadataAttachmentList
	fmt.Fprintf(buf, "shufflevector %v, %v, %v", inst.X, inst.Y, inst.Mask)
	for _, md := range inst.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

// --- [ Aggregate instructions ] ----------------------------------------------

type ExtractValueInst struct {
	X        *TypeValue
	Indices  []int64
	Metadata []*MetadataAttachment
}

func (inst *ExtractValueInst) String() string {
	buf := &strings.Builder{}
	// "extractvalue" Type Value "," IndexList OptCommaSepMetadataAttachmentList
	fmt.Fprintf(buf, "extractvalue %v", inst.X)
	for _, index := range inst.Indices {
		fmt.Fprintf(buf, ", %v", index)
	}
	for _, md := range inst.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

type InsertValueInst struct {
	X        *TypeValue
	Elem     *TypeValue
	Indices  []int64
	Metadata []*MetadataAttachment
}

func (inst *InsertValueInst) String() string {
	buf := &strings.Builder{}
	// "insertvalue" Type Value "," Type Value "," IndexList OptCommaSepMetadataAttachmentList
	fmt.Fprintf(buf, "insertvalue %v, %v", inst.X, inst.Elem)
	for _, index := range inst.Indices {
		fmt.Fprintf(buf, ", %v", index)
	}
	for _, md := range inst.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
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

func (inst *AllocaInst) String() string {
	buf := &strings.Builder{}
	// "alloca" OptInAlloca OptSwiftError Type OptCommaTypeValue OptCommaAlignment OptCommaAddrSpace OptCommaSepMetadataAttachmentList
	buf.WriteString("alloca")
	if inst.InAlloca {
		buf.WriteString(" inalloca")
	}
	if inst.SwiftError {
		buf.WriteString(" swifterror")
	}
	fmt.Fprintf(buf, " %v", inst.ElemType)
	if inst.NElems != nil {
		fmt.Fprintf(buf, ", %v", inst.NElems)
	}
	if inst.Alignment != nil {
		fmt.Fprintf(buf, ", %v", inst.Alignment)
	}
	if inst.AddrSpace != 0 {
		fmt.Fprintf(buf, ", %v", inst.AddrSpace)
	}
	for _, md := range inst.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
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

func (inst *LoadInst) String() string {
	buf := &strings.Builder{}
	// "load" "atomic" OptVolatile Type "," Type Value OptSyncScope AtomicOrdering OptCommaAlignment OptCommaSepMetadataAttachmentList
	// "load" OptVolatile Type "," Type Value OptCommaAlignment OptCommaSepMetadataAttachmentList
	buf.WriteString("load")
	if inst.Atomic {
		buf.WriteString(" atomic")
	}
	if inst.Volatile {
		buf.WriteString(" volatile")
	}
	fmt.Fprintf(buf, " %v, %v", inst.ElemType, inst.Src)
	if inst.SyncScope != nil {
		fmt.Fprintf(buf, " %v", inst.SyncScope)
	}
	if inst.AtomicOrdering != AtomicOrderingNone {
		fmt.Fprintf(buf, " %v", inst.AtomicOrdering)
	}
	if inst.Alignment != nil {
		fmt.Fprintf(buf, ", %v", inst.Alignment)
	}
	for _, md := range inst.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
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

func (inst *StoreInst) String() string {
	buf := &strings.Builder{}
	// "store" "atomic" OptVolatile Type Value "," Type Value OptSyncScope AtomicOrdering OptCommaAlignment OptCommaSepMetadataAttachmentList
	// "store" OptVolatile Type Value "," Type Value OptCommaAlignment OptCommaSepMetadataAttachmentList
	buf.WriteString("store")
	if inst.Atomic {
		buf.WriteString(" atomic")
	}
	if inst.Volatile {
		buf.WriteString(" volatile")
	}
	fmt.Fprintf(buf, " %v, %v", inst.Src, inst.Dst)
	if inst.SyncScope != nil {
		fmt.Fprintf(buf, " %v", inst.SyncScope)
	}
	if inst.AtomicOrdering != AtomicOrderingNone {
		fmt.Fprintf(buf, " %v", inst.AtomicOrdering)
	}
	if inst.Alignment != nil {
		fmt.Fprintf(buf, ", %v", inst.Alignment)
	}
	for _, md := range inst.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
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

func (inst *GetElementPtrInst) String() string {
	buf := &strings.Builder{}
	// "getelementptr" OptInBounds Type "," Type Value GEPIndices OptCommaSepMetadataAttachmentList
	buf.WriteString("getelementptr")
	if inst.InBounds {
		buf.WriteString(" inbounds")
	}
	fmt.Fprintf(buf, " %v, %v", inst.ElemType, inst.Src)
	for _, index := range inst.Indices {
		fmt.Fprintf(buf, ", %v", index)
	}
	for _, md := range inst.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

// --- [ Conversion instructions ] ---------------------------------------------

type TruncInst struct {
	From     *TypeValue
	To       Type
	Metadata []*MetadataAttachment
}

func (inst *TruncInst) String() string {
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "trunc %v to %v", inst.From, inst.To)
	for _, md := range inst.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

type ZExtInst struct {
	From     *TypeValue
	To       Type
	Metadata []*MetadataAttachment
}

func (inst *ZExtInst) String() string {
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "zext %v to %v", inst.From, inst.To)
	for _, md := range inst.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

type SExtInst struct {
	From     *TypeValue
	To       Type
	Metadata []*MetadataAttachment
}

func (inst *SExtInst) String() string {
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "sext %v to %v", inst.From, inst.To)
	for _, md := range inst.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

type FPTruncInst struct {
	From     *TypeValue
	To       Type
	Metadata []*MetadataAttachment
}

func (inst *FPTruncInst) String() string {
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "fptrunc %v to %v", inst.From, inst.To)
	for _, md := range inst.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

type FPExtInst struct {
	From     *TypeValue
	To       Type
	Metadata []*MetadataAttachment
}

func (inst *FPExtInst) String() string {
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "fpext %v to %v", inst.From, inst.To)
	for _, md := range inst.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

type FPToUIInst struct {
	From     *TypeValue
	To       Type
	Metadata []*MetadataAttachment
}

func (inst *FPToUIInst) String() string {
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "fptoui %v to %v", inst.From, inst.To)
	for _, md := range inst.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

type FPToSIInst struct {
	From     *TypeValue
	To       Type
	Metadata []*MetadataAttachment
}

func (inst *FPToSIInst) String() string {
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "fptosi %v to %v", inst.From, inst.To)
	for _, md := range inst.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

type UIToFPInst struct {
	From     *TypeValue
	To       Type
	Metadata []*MetadataAttachment
}

func (inst *UIToFPInst) String() string {
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "uitofp %v to %v", inst.From, inst.To)
	for _, md := range inst.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

type SIToFPInst struct {
	From     *TypeValue
	To       Type
	Metadata []*MetadataAttachment
}

func (inst *SIToFPInst) String() string {
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "sitofp %v to %v", inst.From, inst.To)
	for _, md := range inst.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

type PtrToIntInst struct {
	From     *TypeValue
	To       Type
	Metadata []*MetadataAttachment
}

func (inst *PtrToIntInst) String() string {
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "ptrtoint %v to %v", inst.From, inst.To)
	for _, md := range inst.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

type IntToPtrInst struct {
	From     *TypeValue
	To       Type
	Metadata []*MetadataAttachment
}

func (inst *IntToPtrInst) String() string {
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "inttoptr %v to %v", inst.From, inst.To)
	for _, md := range inst.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

type BitCastInst struct {
	From     *TypeValue
	To       Type
	Metadata []*MetadataAttachment
}

func (inst *BitCastInst) String() string {
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "bitcast %v to %v", inst.From, inst.To)
	for _, md := range inst.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

type AddrSpaceCastInst struct {
	From     *TypeValue
	To       Type
	Metadata []*MetadataAttachment
}

func (inst *AddrSpaceCastInst) String() string {
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "addrspacecast %v to %v", inst.From, inst.To)
	for _, md := range inst.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

// --- [ Other instructions ] --------------------------------------------------

type ICmpInst struct {
	Pred     IPred
	X, Y     *TypeValue
	Metadata []*MetadataAttachment
}

func (inst *ICmpInst) String() string {
	buf := &strings.Builder{}
	// "icmp" IPred Type Value "," Value OptCommaSepMetadataAttachmentList
	fmt.Fprintf(buf, "icmp %v %v, %v", inst.Pred, inst.X, inst.Y.Value)
	for _, md := range inst.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

type FCmpInst struct {
	FastMathFlags []FastMathFlag
	Pred          FPred
	X, Y          *TypeValue
	Metadata      []*MetadataAttachment
}

func (inst *FCmpInst) String() string {
	buf := &strings.Builder{}
	// "fcmp" FastMathFlags FPred Type Value "," Value OptCommaSepMetadataAttachmentList
	buf.WriteString("fcmp")
	for _, flag := range inst.FastMathFlags {
		fmt.Fprintf(buf, " %v", flag)
	}
	fmt.Fprintf(buf, " %v %v, %v", inst.Pred, inst.X, inst.Y.Value)
	for _, md := range inst.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

type PhiInst struct {
	Type     Type
	Incs     []*Incoming
	Metadata []*MetadataAttachment
}

func (inst *PhiInst) String() string {
	buf := &strings.Builder{}
	// "phi" Type IncList OptCommaSepMetadataAttachmentList
	fmt.Fprintf(buf, "phi %v ", inst.Type)
	for i, inc := range inst.Incs {
		if i != 0 {
			buf.WriteString(", ")
		}
		buf.WriteString(inc.String())
	}
	for _, md := range inst.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

type Incoming struct {
	X    Value
	Pred *LocalIdent
}

func (inc *Incoming) String() string {
	// "[" Value "," LocalIdent "]"
	return fmt.Sprintf("[ %v, %v ]", inc.X, inc.Pred)
}

type SelectInst struct {
	Cond     *TypeValue
	X, Y     *TypeValue
	Metadata []*MetadataAttachment
}

func (inst *SelectInst) String() string {
	buf := &strings.Builder{}
	// "select" Type Value "," Type Value "," Type Value OptCommaSepMetadataAttachmentList
	fmt.Fprintf(buf, "select %v, %v, %v", inst.Cond, inst.X, inst.Y)
	for _, md := range inst.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
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

func (inst *CallInst) String() string {
	buf := &strings.Builder{}
	// OptTail "call" FastMathFlags OptCallingConv ReturnAttrs Type Value "(" Args ")" FuncAttrs OperandBundles OptCommaSepMetadataAttachmentList
	if inst.Tail != TailNone {
		fmt.Fprintf(buf, "%v ", inst.Tail)
	}
	buf.WriteString("call")
	for _, flag := range inst.FastMathFlags {
		fmt.Fprintf(buf, " %v", flag)
	}
	if inst.CallingConv != CallingConvNone {
		fmt.Fprintf(buf, " %v", inst.CallingConv)
	}
	for _, attr := range inst.ReturnAttrs {
		fmt.Fprintf(buf, " %v", attr)
	}
	fmt.Fprintf(buf, " %v %v(", inst.RetType, inst.Callee)
	for i, arg := range inst.Args {
		if i != 0 {
			buf.WriteString(", ")
		}
		buf.WriteString(arg.String())
	}
	buf.WriteString(")")
	for _, attr := range inst.FuncAttrs {
		fmt.Fprintf(buf, " %v", attr)
	}
	if len(inst.OperandBundles) > 0 {
		buf.WriteString("[")
		for _, operandBundle := range inst.OperandBundles {
			fmt.Fprintf(buf, " %v", operandBundle)
		}
		buf.WriteString("]")
	}
	for _, md := range inst.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
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
