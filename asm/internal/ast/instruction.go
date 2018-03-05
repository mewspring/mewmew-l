package ast

import (
	"fmt"
	"strings"
)

// === [ Instructions ] ========================================================

// An Instruction is an LLVM IR instruction.
type Instruction interface {
	fmt.Stringer
	// isInstruction ensures that only instructions can be assigned to the
	// ast.Instruction interface.
	isInstruction()
}

// A ValueInstruction assigns the result of an LLVM IR instruction to a name.
type ValueInstruction struct {
	Name *LocalIdent
	Inst Instruction
}

// String returns a string representation of the instruction.
func (v *ValueInstruction) String() string {
	// LocalIdent "=" ValueInstruction
	return fmt.Sprintf("%v = %v", v.Name, v.Inst)
}

// --- [ Binary instructions ] -------------------------------------------------

// ~~~[ add ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// AddInst is an LLVM IR add instruction.
type AddInst struct {
	OverflowFlags []OverflowFlag
	X, Y          *TypeValue
	Metadata      []*MetadataAttachment
}

// String returns a string representation of the instruction.
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

// ~~~[ fadd ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// FAddInst is an LLVM IR fadd instruction.
type FAddInst struct {
	FastMathFlags []FastMathFlag
	X, Y          *TypeValue
	Metadata      []*MetadataAttachment
}

// String returns a string representation of the instruction.
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

// ~~~[ sub ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// SubInst is an LLVM IR sub instruction.
type SubInst struct {
	OverflowFlags []OverflowFlag
	X, Y          *TypeValue
	Metadata      []*MetadataAttachment
}

// String returns a string representation of the instruction.
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

// ~~~[ fsub ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// FSubInst is an LLVM IR fsub instruction.
type FSubInst struct {
	FastMathFlags []FastMathFlag
	X, Y          *TypeValue
	Metadata      []*MetadataAttachment
}

// String returns a string representation of the instruction.
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

// ~~~[ mul ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// MulInst is an LLVM IR mul instruction.
type MulInst struct {
	OverflowFlags []OverflowFlag
	X, Y          *TypeValue
	Metadata      []*MetadataAttachment
}

// String returns a string representation of the instruction.
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

// ~~~[ fmul ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// FMulInst is an LLVM IR fmul instruction.
type FMulInst struct {
	FastMathFlags []FastMathFlag
	X, Y          *TypeValue
	Metadata      []*MetadataAttachment
}

// String returns a string representation of the instruction.
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

// ~~~[ udiv ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// UDivInst is an LLVM IR udiv instruction.
type UDivInst struct {
	Exact    bool
	X, Y     *TypeValue
	Metadata []*MetadataAttachment
}

// String returns a string representation of the instruction.
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

// ~~~[ sdiv ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// SDivInst is an LLVM IR sdiv instruction.
type SDivInst struct {
	Exact    bool
	X, Y     *TypeValue
	Metadata []*MetadataAttachment
}

// String returns a string representation of the instruction.
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

// ~~~[ fdiv ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// FDivInst is an LLVM IR fdiv instruction.
type FDivInst struct {
	FastMathFlags []FastMathFlag
	X, Y          *TypeValue
	Metadata      []*MetadataAttachment
}

// String returns a string representation of the instruction.
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

// ~~~[ urem ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// URemInst is an LLVM IR urem instruction.
type URemInst struct {
	X, Y     *TypeValue
	Metadata []*MetadataAttachment
}

// String returns a string representation of the instruction.
func (inst *URemInst) String() string {
	// "urem" Type Value "," Value OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "urem %v, %v", inst.X, inst.Y.Value)
	for _, md := range inst.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

// ~~~[ srem ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// SRemInst is an LLVM IR srem instruction.
type SRemInst struct {
	X, Y     *TypeValue
	Metadata []*MetadataAttachment
}

// String returns a string representation of the instruction.
func (inst *SRemInst) String() string {
	// "srem" Type Value "," Value OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "srem %v, %v", inst.X, inst.Y.Value)
	for _, md := range inst.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

// ~~~[ frem ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// FRemInst is an LLVM IR frem instruction.
type FRemInst struct {
	FastMathFlags []FastMathFlag
	X, Y          *TypeValue
	Metadata      []*MetadataAttachment
}

// String returns a string representation of the instruction.
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

// ~~~[ shl ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// ShlInst is an LLVM IR shl instruction.
type ShlInst struct {
	OverflowFlags []OverflowFlag
	X, Y          *TypeValue
	Metadata      []*MetadataAttachment
}

// String returns a string representation of the instruction.
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

// ~~~[ lshr ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// LShrInst is an LLVM IR lshr instruction.
type LShrInst struct {
	Exact    bool
	X, Y     *TypeValue
	Metadata []*MetadataAttachment
}

// String returns a string representation of the instruction.
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

// ~~~[ ashr ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// AShrInst is an LLVM IR ashr instruction.
type AShrInst struct {
	Exact    bool
	X, Y     *TypeValue
	Metadata []*MetadataAttachment
}

// String returns a string representation of the instruction.
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

// ~~~[ and ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// AndInst is an LLVM IR and instruction.
type AndInst struct {
	X, Y     *TypeValue
	Metadata []*MetadataAttachment
}

// String returns a string representation of the instruction.
func (inst *AndInst) String() string {
	// "and" Type Value "," Value OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "and %v, %v", inst.X, inst.Y.Value)
	for _, md := range inst.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

// ~~~[ or ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// OrInst is an LLVM IR or instruction.
type OrInst struct {
	X, Y     *TypeValue
	Metadata []*MetadataAttachment
}

// String returns a string representation of the instruction.
func (inst *OrInst) String() string {
	// "or" Type Value "," Value OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "or %v, %v", inst.X, inst.Y.Value)
	for _, md := range inst.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

// ~~~[ xor ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// XorInst is an LLVM IR xor instruction.
type XorInst struct {
	X, Y     *TypeValue
	Metadata []*MetadataAttachment
}

// String returns a string representation of the instruction.
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

// ~~~[ extractelement ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// ExtractElementInst is an LLVM IR extractelement instruction.
type ExtractElementInst struct {
	X        *TypeValue
	Index    *TypeValue
	Metadata []*MetadataAttachment
}

// String returns a string representation of the instruction.
func (inst *ExtractElementInst) String() string {
	// "extractelement" Type Value "," Type Value OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "extractelement %v, %v", inst.X, inst.Index)
	for _, md := range inst.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

// ~~~[ insertelement ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// InsertElementInst is an LLVM IR insertelement instruction.
type InsertElementInst struct {
	X        *TypeValue
	Elem     *TypeValue
	Index    *TypeValue
	Metadata []*MetadataAttachment
}

// String returns a string representation of the instruction.
func (inst *InsertElementInst) String() string {
	// "insertelement" Type Value "," Type Value "," Type Value OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "insertelement %v, %v, %v", inst.X, inst.Elem, inst.Index)
	for _, md := range inst.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

// ~~~[ shufflevector ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// ShuffleVectorInst is an LLVM IR shufflevector instruction.
type ShuffleVectorInst struct {
	X, Y     *TypeValue
	Mask     *TypeValue
	Metadata []*MetadataAttachment
}

// String returns a string representation of the instruction.
func (inst *ShuffleVectorInst) String() string {
	// "shufflevector" Type Value "," Type Value "," Type Value OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "shufflevector %v, %v, %v", inst.X, inst.Y, inst.Mask)
	for _, md := range inst.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

// --- [ Aggregate instructions ] ----------------------------------------------

// ~~~[ extractvalue ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// ExtractValueInst is an LLVM IR extractvalue instruction.
type ExtractValueInst struct {
	X        *TypeValue
	Indices  []int64
	Metadata []*MetadataAttachment
}

// String returns a string representation of the instruction.
func (inst *ExtractValueInst) String() string {
	// "extractvalue" Type Value "," IndexList OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "extractvalue %v", inst.X)
	for _, index := range inst.Indices {
		fmt.Fprintf(buf, ", %v", index)
	}
	for _, md := range inst.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

// ~~~[ insertvalue ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// InsertValueInst is an LLVM IR insertvalue instruction.
type InsertValueInst struct {
	X        *TypeValue
	Elem     *TypeValue
	Indices  []int64
	Metadata []*MetadataAttachment
}

// String returns a string representation of the instruction.
func (inst *InsertValueInst) String() string {
	// "insertvalue" Type Value "," Type Value "," IndexList OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
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

// ~~~[ alloca ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// AllocaInst is an LLVM IR alloca instruction.
type AllocaInst struct {
	InAlloca   bool
	SwiftError bool
	ElemType   Type
	NElems     *TypeValue // nil if not present
	Alignment  *Alignment // nil if not present
	AddrSpace  AddrSpace  // zero if not present
	Metadata   []*MetadataAttachment
}

// String returns a string representation of the instruction.
func (inst *AllocaInst) String() string {
	// "alloca" OptInAlloca OptSwiftError Type OptCommaTypeValue OptCommaAlignment OptCommaAddrSpace OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
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

// ~~~[ load ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// LoadInst is an LLVM IR load instruction.
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

// String returns a string representation of the instruction.
func (inst *LoadInst) String() string {
	// "load" "atomic" OptVolatile Type "," Type Value OptSyncScope AtomicOrdering OptCommaAlignment OptCommaSepMetadataAttachmentList
	// "load" OptVolatile Type "," Type Value OptCommaAlignment OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
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

// ~~~[ store ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// StoreInst is an LLVM IR store instruction.
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

// String returns a string representation of the instruction.
func (inst *StoreInst) String() string {
	// "store" "atomic" OptVolatile Type Value "," Type Value OptSyncScope AtomicOrdering OptCommaAlignment OptCommaSepMetadataAttachmentList
	// "store" OptVolatile Type Value "," Type Value OptCommaAlignment OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
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

// ~~~[ fence ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// FenceInst is an LLVM IR fence instruction.
type FenceInst struct {
	SyncScope      *SyncScope // nil if not present
	AtomicOrdering AtomicOrdering
	Metadata       []*MetadataAttachment
}

// String returns a string representation of the instruction.
func (inst *FenceInst) String() string {
	// "fence" OptSyncScope AtomicOrdering OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
	buf.WriteString("fence")
	if inst.SyncScope != nil {
		fmt.Fprintf(buf, " %v", inst.SyncScope)
	}
	fmt.Fprintf(buf, " %v", inst.AtomicOrdering)
	for _, md := range inst.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

// ~~~[ cmpxchg ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// CmpXchgInst is an LLVM IR cmpxchg instruction.
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

// String returns a string representation of the instruction.
func (inst *CmpXchgInst) String() string {
	// "cmpxchg" OptWeak OptVolatile Type Value "," Type Value "," Type Value OptSyncScope AtomicOrdering AtomicOrdering OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
	buf.WriteString("cmpxchg")
	if inst.Weak {
		buf.WriteString(" weak")
	}
	if inst.Volatile {
		buf.WriteString(" volatile")
	}
	fmt.Fprintf(buf, " %v, %v, %v", inst.Ptr, inst.Cmp, inst.New)
	if inst.SyncScope != nil {
		fmt.Fprintf(buf, " %v", inst.SyncScope)
	}
	fmt.Fprintf(buf, " %v", inst.Success)
	fmt.Fprintf(buf, " %v", inst.Failure)
	for _, md := range inst.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

// ~~~[ atomicrmw ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// AtomicRMWInst is an LLVM IR atomicrmw instruction.
type AtomicRMWInst struct {
	Volatile       bool
	Op             BinOp
	Ptr            *TypeValue
	X              *TypeValue
	SyncScope      *SyncScope // nil if not present
	AtomicOrdering AtomicOrdering
	Metadata       []*MetadataAttachment
}

// String returns a string representation of the instruction.
func (inst *AtomicRMWInst) String() string {
	// "atomicrmw" OptVolatile BinOp Type Value "," Type Value OptSyncScope AtomicOrdering OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
	buf.WriteString("atomicrmw")
	if inst.Volatile {
		buf.WriteString(" volatile")
	}
	fmt.Fprintf(buf, " %v %v, %v", inst.Op, inst.Ptr, inst.X)
	if inst.SyncScope != nil {
		fmt.Fprintf(buf, " %v", inst.SyncScope)
	}
	fmt.Fprintf(buf, " %v", inst.AtomicOrdering)
	for _, md := range inst.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

//go:generate stringer -linecomment -type BinOp

// BinOp is an AtomicRMW binary operation.
type BinOp uint8

// AtomicRMW binary operations.
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

// ~~~[ getelementptr ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// GetElementPtrInst is an LLVM IR getelementptr instruction.
type GetElementPtrInst struct {
	InBounds bool
	ElemType Type
	Src      *TypeValue
	Indices  []*TypeValue
	Metadata []*MetadataAttachment
}

// String returns a string representation of the instruction.
func (inst *GetElementPtrInst) String() string {
	// "getelementptr" OptInBounds Type "," Type Value GEPIndices OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
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

// ~~~[ trunc ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// TruncInst is an LLVM IR trunc instruction.
type TruncInst struct {
	From     *TypeValue
	To       Type
	Metadata []*MetadataAttachment
}

// String returns a string representation of the instruction.
func (inst *TruncInst) String() string {
	// "trunc" Type Value "to" Type OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "trunc %v to %v", inst.From, inst.To)
	for _, md := range inst.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

// ~~~[ zext ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// ZExtInst is an LLVM IR zext instruction.
type ZExtInst struct {
	From     *TypeValue
	To       Type
	Metadata []*MetadataAttachment
}

// String returns a string representation of the instruction.
func (inst *ZExtInst) String() string {
	// "zext" Type Value "to" Type OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "zext %v to %v", inst.From, inst.To)
	for _, md := range inst.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

// ~~~[ sext ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// SExtInst is an LLVM IR sext instruction.
type SExtInst struct {
	From     *TypeValue
	To       Type
	Metadata []*MetadataAttachment
}

// String returns a string representation of the instruction.
func (inst *SExtInst) String() string {
	// "sext" Type Value "to" Type OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "sext %v to %v", inst.From, inst.To)
	for _, md := range inst.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

// ~~~[ fptrunc ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// FPTruncInst is an LLVM IR fptrunc instruction.
type FPTruncInst struct {
	From     *TypeValue
	To       Type
	Metadata []*MetadataAttachment
}

// String returns a string representation of the instruction.
func (inst *FPTruncInst) String() string {
	// "fptrunc" Type Value "to" Type OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "fptrunc %v to %v", inst.From, inst.To)
	for _, md := range inst.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

// ~~~[ fpext ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// FPExtInst is an LLVM IR fpext instruction.
type FPExtInst struct {
	From     *TypeValue
	To       Type
	Metadata []*MetadataAttachment
}

// String returns a string representation of the instruction.
func (inst *FPExtInst) String() string {
	// "fpext" Type Value "to" Type OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "fpext %v to %v", inst.From, inst.To)
	for _, md := range inst.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

// ~~~[ fptoui ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// FPToUIInst is an LLVM IR fptoui instruction.
type FPToUIInst struct {
	From     *TypeValue
	To       Type
	Metadata []*MetadataAttachment
}

// String returns a string representation of the instruction.
func (inst *FPToUIInst) String() string {
	// "fptoui" Type Value "to" Type OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "fptoui %v to %v", inst.From, inst.To)
	for _, md := range inst.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

// ~~~[ fptosi ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// FPToSIInst is an LLVM IR fptosi instruction.
type FPToSIInst struct {
	From     *TypeValue
	To       Type
	Metadata []*MetadataAttachment
}

// String returns a string representation of the instruction.
func (inst *FPToSIInst) String() string {
	// "fptosi" Type Value "to" Type OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "fptosi %v to %v", inst.From, inst.To)
	for _, md := range inst.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

// ~~~[ uitofp ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// UIToFPInst is an LLVM IR uitofp instruction.
type UIToFPInst struct {
	From     *TypeValue
	To       Type
	Metadata []*MetadataAttachment
}

// String returns a string representation of the instruction.
func (inst *UIToFPInst) String() string {
	// "uitofp" Type Value "to" Type OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "uitofp %v to %v", inst.From, inst.To)
	for _, md := range inst.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

// ~~~[ sitofp ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// SIToFPInst is an LLVM IR sitofp instruction.
type SIToFPInst struct {
	From     *TypeValue
	To       Type
	Metadata []*MetadataAttachment
}

// String returns a string representation of the instruction.
func (inst *SIToFPInst) String() string {
	// "sitofp" Type Value "to" Type OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "sitofp %v to %v", inst.From, inst.To)
	for _, md := range inst.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

// ~~~[ ptrtoint ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// PtrToIntInst is an LLVM IR ptrtoint instruction.
type PtrToIntInst struct {
	From     *TypeValue
	To       Type
	Metadata []*MetadataAttachment
}

// String returns a string representation of the instruction.
func (inst *PtrToIntInst) String() string {
	// "ptrtoint" Type Value "to" Type OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "ptrtoint %v to %v", inst.From, inst.To)
	for _, md := range inst.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

// ~~~[ inttoptr ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// IntToPtrInst is an LLVM IR inttoptr instruction.
type IntToPtrInst struct {
	From     *TypeValue
	To       Type
	Metadata []*MetadataAttachment
}

// String returns a string representation of the instruction.
func (inst *IntToPtrInst) String() string {
	// "inttoptr" Type Value "to" Type OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "inttoptr %v to %v", inst.From, inst.To)
	for _, md := range inst.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

// ~~~[ bitcast ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// BitCastInst is an LLVM IR bitcast instruction.
type BitCastInst struct {
	From     *TypeValue
	To       Type
	Metadata []*MetadataAttachment
}

// String returns a string representation of the instruction.
func (inst *BitCastInst) String() string {
	// "bitcast" Type Value "to" Type OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "bitcast %v to %v", inst.From, inst.To)
	for _, md := range inst.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

// ~~~[ addrspacecast ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// AddrSpaceCastInst is an LLVM IR addrspacecast instruction.
type AddrSpaceCastInst struct {
	From     *TypeValue
	To       Type
	Metadata []*MetadataAttachment
}

// String returns a string representation of the instruction.
func (inst *AddrSpaceCastInst) String() string {
	// "addrspacecast" Type Value "to" Type OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "addrspacecast %v to %v", inst.From, inst.To)
	for _, md := range inst.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

// --- [ Other instructions ] --------------------------------------------------

// ~~~[ icmp ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// ICmpInst is an LLVM IR icmp instruction.
type ICmpInst struct {
	Pred     IPred
	X, Y     *TypeValue
	Metadata []*MetadataAttachment
}

// String returns a string representation of the instruction.
func (inst *ICmpInst) String() string {
	// "icmp" IPred Type Value "," Value OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "icmp %v %v, %v", inst.Pred, inst.X, inst.Y.Value)
	for _, md := range inst.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

// ~~~[ fcmp ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// FCmpInst is an LLVM IR fcmp instruction.
type FCmpInst struct {
	FastMathFlags []FastMathFlag
	Pred          FPred
	X, Y          *TypeValue
	Metadata      []*MetadataAttachment
}

// String returns a string representation of the instruction.
func (inst *FCmpInst) String() string {
	// "fcmp" FastMathFlags FPred Type Value "," Value OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
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

// ~~~[ phi ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// PhiInst is an LLVM IR phi instruction.
type PhiInst struct {
	Type     Type
	Incs     []*Incoming
	Metadata []*MetadataAttachment
}

// String returns a string representation of the instruction.
func (inst *PhiInst) String() string {
	// "phi" Type IncList OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
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

// Incoming is an incoming value of a phi instruction.
type Incoming struct {
	X    Value
	Pred *LocalIdent
}

// String returns the string representation of the incoming value.
func (inc *Incoming) String() string {
	// "[" Value "," LocalIdent "]"
	return fmt.Sprintf("[ %v, %v ]", inc.X, inc.Pred)
}

// ~~~[ select ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// SelectInst is an LLVM IR select instruction.
type SelectInst struct {
	Cond     *TypeValue
	X, Y     *TypeValue
	Metadata []*MetadataAttachment
}

// String returns a string representation of the instruction.
func (inst *SelectInst) String() string {
	// "select" Type Value "," Type Value "," Type Value OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "select %v, %v, %v", inst.Cond, inst.X, inst.Y)
	for _, md := range inst.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

// ~~~[ call ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// CallInst is an LLVM IR call instruction.
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

// String returns a string representation of the instruction.
func (inst *CallInst) String() string {
	// OptTail "call" FastMathFlags OptCallingConv ReturnAttrs Type Value "(" Args ")" FuncAttrs OperandBundles OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
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

// Tail is a tail call attribute.
type Tail uint8

// Tail call attributes.
const (
	TailNone     Tail = iota // none
	TailMustTail             // musttail
	TailNoTail               // notail
	TailTail                 // tail
)

// ~~~[ vaarg ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// VAArgInst is an LLVM IR vaarg instruction.
type VAArgInst struct {
	ArgList  *TypeValue
	ArgType  Type
	Metadata []*MetadataAttachment
}

// String returns a string representation of the instruction.
func (inst *VAArgInst) String() string {
	// "va_arg" Type Value "," Type OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "va_arg %v, %v", inst.ArgList, inst.ArgType)
	for _, md := range inst.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

// ~~~[ landingpad ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// LandingPadInst is an LLVM IR landingpad instruction.
type LandingPadInst struct {
	Type     Type
	Cleanup  bool
	Clauses  []*Clause
	Metadata []*MetadataAttachment
}

// String returns a string representation of the instruction.
func (inst *LandingPadInst) String() string {
	// "landingpad" Type OptCleanup Clauses OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "landingpad %v", inst.Type)
	if inst.Cleanup {
		buf.WriteString(" cleanup")
	}
	for _, clause := range inst.Clauses {
		fmt.Fprintf(buf, " %v", clause)
	}
	for _, md := range inst.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

// Clause is an exception clause.
type Clause struct {
	Catch bool // catch if true, filter otherwise
	X     *TypeValue
}

func (clause *Clause) String() string {
	// "catch" Type Value
	// "filter" Type ArrayConst
	buf := &strings.Builder{}
	if clause.Catch {
		buf.WriteString("catch")
	} else {
		buf.WriteString("filter")
	}
	fmt.Fprintf(buf, " %v", clause.X)
	return buf.String()
}

// ~~~[ catchpad ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// CatchPadInst is an LLVM IR catchpad instruction.
type CatchPadInst struct {
	Scope    *LocalIdent
	Args     []Argument
	Metadata []*MetadataAttachment
}

// String returns a string representation of the instruction.
func (inst *CatchPadInst) String() string {
	// "catchpad" "within" LocalIdent "[" ExceptionArgs "]" OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "catchpad within %v [", inst.Scope)
	for i, arg := range inst.Args {
		if i != 0 {
			buf.WriteString(", ")
		}
		buf.WriteString(arg.String())
	}
	buf.WriteString("]")
	for _, md := range inst.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

// ~~~[ cleanuppad ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// CleanupPadInst is an LLVM IR cleanuppad instruction.
type CleanupPadInst struct {
	Scope    ExceptionScope
	Args     []Argument
	Metadata []*MetadataAttachment
}

// String returns a string representation of the instruction.
func (inst *CleanupPadInst) String() string {
	// "cleanuppad" "within" ExceptionScope "[" ExceptionArgs "]" OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "cleanuppad within %v [", inst.Scope)
	for i, arg := range inst.Args {
		if i != 0 {
			buf.WriteString(", ")
		}
		buf.WriteString(arg.String())
	}
	buf.WriteString("]")
	for _, md := range inst.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

// ### [ Helper functions ] ####################################################

// isInstruction ensures that only instructions can be assigned to the
// ast.Instruction interface.
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

// Ensure that each instruction implements the ast.Instruction interface.
var (
	_ Instruction = (*AddInst)(nil)
	_ Instruction = (*FAddInst)(nil)
	_ Instruction = (*SubInst)(nil)
	_ Instruction = (*FSubInst)(nil)
	_ Instruction = (*MulInst)(nil)
	_ Instruction = (*FMulInst)(nil)
	_ Instruction = (*UDivInst)(nil)
	_ Instruction = (*SDivInst)(nil)
	_ Instruction = (*FDivInst)(nil)
	_ Instruction = (*URemInst)(nil)
	_ Instruction = (*SRemInst)(nil)
	_ Instruction = (*FRemInst)(nil)
	_ Instruction = (*ShlInst)(nil)
	_ Instruction = (*LShrInst)(nil)
	_ Instruction = (*AShrInst)(nil)
	_ Instruction = (*AndInst)(nil)
	_ Instruction = (*OrInst)(nil)
	_ Instruction = (*XorInst)(nil)
	_ Instruction = (*ExtractElementInst)(nil)
	_ Instruction = (*InsertElementInst)(nil)
	_ Instruction = (*ShuffleVectorInst)(nil)
	_ Instruction = (*ExtractValueInst)(nil)
	_ Instruction = (*InsertValueInst)(nil)
	_ Instruction = (*AllocaInst)(nil)
	_ Instruction = (*LoadInst)(nil)
	_ Instruction = (*StoreInst)(nil)
	_ Instruction = (*FenceInst)(nil)
	_ Instruction = (*CmpXchgInst)(nil)
	_ Instruction = (*AtomicRMWInst)(nil)
	_ Instruction = (*GetElementPtrInst)(nil)
	_ Instruction = (*TruncInst)(nil)
	_ Instruction = (*ZExtInst)(nil)
	_ Instruction = (*SExtInst)(nil)
	_ Instruction = (*FPTruncInst)(nil)
	_ Instruction = (*FPExtInst)(nil)
	_ Instruction = (*FPToUIInst)(nil)
	_ Instruction = (*FPToSIInst)(nil)
	_ Instruction = (*UIToFPInst)(nil)
	_ Instruction = (*SIToFPInst)(nil)
	_ Instruction = (*PtrToIntInst)(nil)
	_ Instruction = (*IntToPtrInst)(nil)
	_ Instruction = (*BitCastInst)(nil)
	_ Instruction = (*AddrSpaceCastInst)(nil)
	_ Instruction = (*ICmpInst)(nil)
	_ Instruction = (*FCmpInst)(nil)
	_ Instruction = (*PhiInst)(nil)
	_ Instruction = (*SelectInst)(nil)
	_ Instruction = (*CallInst)(nil)
	_ Instruction = (*VAArgInst)(nil)
	_ Instruction = (*LandingPadInst)(nil)
	_ Instruction = (*CatchPadInst)(nil)
	_ Instruction = (*CleanupPadInst)(nil)
)
