package ir

import (
	"fmt"
	"strings"

	"github.com/mewmew/l/ir/metadata"
	"github.com/mewmew/l/ir/value"
	"github.com/mewmew/l/ll"
	"github.com/mewmew/l/ll/types"
)

// === [ Instructions ] ========================================================

// A ValueInstruction assigns the result of an LLVM IR instruction to a name.
type ValueInstruction struct {
	// Result name (LocalIdent); or empty if unnamed.
	Name string
	Inst Instruction
}

// String returns a string representation of the instruction.
func (v *ValueInstruction) String() string {
	// ValueInstruction
	// LocalIdent "=" ValueInstruction
	if len(v.Name) == 0 {
		return v.Inst.String()
	}
	return fmt.Sprintf("%v = %v", v.Name, v.Inst)
}

// --- [ Binary instructions ] -------------------------------------------------

// ~~~[ add ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// AddInst is an LLVM IR add instruction.
type AddInst struct {
	OverflowFlags []ll.OverflowFlag
	X, Y          value.Value
	Metadata      []*metadata.MetadataAttachment
}

// String returns a string representation of the instruction.
func (inst *AddInst) String() string {
	// "add" OverflowFlags Type Value "," Value OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
	buf.WriteString("add")
	for _, flag := range inst.OverflowFlags {
		fmt.Fprintf(buf, " %v", flag)
	}
	fmt.Fprintf(buf, " %v, %v", inst.X, inst.Y.Ident())
	for _, md := range inst.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

// ~~~[ fadd ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// FAddInst is an LLVM IR fadd instruction.
type FAddInst struct {
	FastMathFlags []ll.FastMathFlag
	X, Y          value.Value
	Metadata      []*metadata.MetadataAttachment
}

// String returns a string representation of the instruction.
func (inst *FAddInst) String() string {
	// "fadd" FastMathFlags Type Value "," Value OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
	buf.WriteString("fadd")
	for _, flag := range inst.FastMathFlags {
		fmt.Fprintf(buf, " %v", flag)
	}
	fmt.Fprintf(buf, " %v, %v", inst.X, inst.Y.Ident())
	for _, md := range inst.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

// ~~~[ sub ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// SubInst is an LLVM IR sub instruction.
type SubInst struct {
	OverflowFlags []ll.OverflowFlag
	X, Y          value.Value
	Metadata      []*metadata.MetadataAttachment
}

// String returns a string representation of the instruction.
func (inst *SubInst) String() string {
	// "sub" OverflowFlags Type Value "," Value OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
	buf.WriteString("sub")
	for _, flag := range inst.OverflowFlags {
		fmt.Fprintf(buf, " %v", flag)
	}
	fmt.Fprintf(buf, " %v, %v", inst.X, inst.Y.Ident())
	for _, md := range inst.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

// ~~~[ fsub ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// FSubInst is an LLVM IR fsub instruction.
type FSubInst struct {
	FastMathFlags []ll.FastMathFlag
	X, Y          value.Value
	Metadata      []*metadata.MetadataAttachment
}

// String returns a string representation of the instruction.
func (inst *FSubInst) String() string {
	// "fsub" FastMathFlags Type Value "," Value OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
	buf.WriteString("fsub")
	for _, flag := range inst.FastMathFlags {
		fmt.Fprintf(buf, " %v", flag)
	}
	fmt.Fprintf(buf, " %v, %v", inst.X, inst.Y.Ident())
	for _, md := range inst.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

// ~~~[ mul ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// MulInst is an LLVM IR mul instruction.
type MulInst struct {
	OverflowFlags []ll.OverflowFlag
	X, Y          value.Value
	Metadata      []*metadata.MetadataAttachment
}

// String returns a string representation of the instruction.
func (inst *MulInst) String() string {
	// "mul" OverflowFlags Type Value "," Value OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
	buf.WriteString("mul")
	for _, flag := range inst.OverflowFlags {
		fmt.Fprintf(buf, " %v", flag)
	}
	fmt.Fprintf(buf, " %v, %v", inst.X, inst.Y.Ident())
	for _, md := range inst.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

// ~~~[ fmul ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// FMulInst is an LLVM IR fmul instruction.
type FMulInst struct {
	FastMathFlags []ll.FastMathFlag
	X, Y          value.Value
	Metadata      []*metadata.MetadataAttachment
}

// String returns a string representation of the instruction.
func (inst *FMulInst) String() string {
	// "fmul" FastMathFlags Type Value "," Value OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
	buf.WriteString("fmul")
	for _, flag := range inst.FastMathFlags {
		fmt.Fprintf(buf, " %v", flag)
	}
	fmt.Fprintf(buf, " %v, %v", inst.X, inst.Y.Ident())
	for _, md := range inst.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

// ~~~[ udiv ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// UDivInst is an LLVM IR udiv instruction.
type UDivInst struct {
	Exact    bool
	X, Y     value.Value
	Metadata []*metadata.MetadataAttachment
}

// String returns a string representation of the instruction.
func (inst *UDivInst) String() string {
	// "udiv" OptExact Type Value "," Value OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
	buf.WriteString("udiv")
	if inst.Exact {
		buf.WriteString(" exact")
	}
	fmt.Fprintf(buf, " %v, %v", inst.X, inst.Y.Ident())
	for _, md := range inst.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

// ~~~[ sdiv ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// SDivInst is an LLVM IR sdiv instruction.
type SDivInst struct {
	Exact    bool
	X, Y     value.Value
	Metadata []*metadata.MetadataAttachment
}

// String returns a string representation of the instruction.
func (inst *SDivInst) String() string {
	// "sdiv" OptExact Type Value "," Value OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
	buf.WriteString("sdiv")
	if inst.Exact {
		buf.WriteString(" exact")
	}
	fmt.Fprintf(buf, " %v, %v", inst.X, inst.Y.Ident())
	for _, md := range inst.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

// ~~~[ fdiv ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// FDivInst is an LLVM IR fdiv instruction.
type FDivInst struct {
	FastMathFlags []ll.FastMathFlag
	X, Y          value.Value
	Metadata      []*metadata.MetadataAttachment
}

// String returns a string representation of the instruction.
func (inst *FDivInst) String() string {
	// "fdiv" FastMathFlags Type Value "," Value OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
	buf.WriteString("fdiv")
	for _, flag := range inst.FastMathFlags {
		fmt.Fprintf(buf, " %v", flag)
	}
	fmt.Fprintf(buf, " %v, %v", inst.X, inst.Y.Ident())
	for _, md := range inst.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

// ~~~[ urem ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// URemInst is an LLVM IR urem instruction.
type URemInst struct {
	X, Y     value.Value
	Metadata []*metadata.MetadataAttachment
}

// String returns a string representation of the instruction.
func (inst *URemInst) String() string {
	// "urem" Type Value "," Value OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "urem %v, %v", inst.X, inst.Y.Ident())
	for _, md := range inst.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

// ~~~[ srem ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// SRemInst is an LLVM IR srem instruction.
type SRemInst struct {
	X, Y     value.Value
	Metadata []*metadata.MetadataAttachment
}

// String returns a string representation of the instruction.
func (inst *SRemInst) String() string {
	// "srem" Type Value "," Value OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "srem %v, %v", inst.X, inst.Y.Ident())
	for _, md := range inst.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

// ~~~[ frem ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// FRemInst is an LLVM IR frem instruction.
type FRemInst struct {
	FastMathFlags []ll.FastMathFlag
	X, Y          value.Value
	Metadata      []*metadata.MetadataAttachment
}

// String returns a string representation of the instruction.
func (inst *FRemInst) String() string {
	// "frem" FastMathFlags Type Value "," Value OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
	buf.WriteString("frem")
	for _, flag := range inst.FastMathFlags {
		fmt.Fprintf(buf, " %v", flag)
	}
	fmt.Fprintf(buf, " %v, %v", inst.X, inst.Y.Ident())
	for _, md := range inst.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

// --- [ Bitwise instructions ] ------------------------------------------------

// ~~~[ shl ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// ShlInst is an LLVM IR shl instruction.
type ShlInst struct {
	OverflowFlags []ll.OverflowFlag
	X, Y          value.Value
	Metadata      []*metadata.MetadataAttachment
}

// String returns a string representation of the instruction.
func (inst *ShlInst) String() string {
	// "shl" OverflowFlags Type Value "," Value OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
	buf.WriteString("shl")
	for _, flag := range inst.OverflowFlags {
		fmt.Fprintf(buf, " %v", flag)
	}
	fmt.Fprintf(buf, " %v, %v", inst.X, inst.Y.Ident())
	for _, md := range inst.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

// ~~~[ lshr ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// LShrInst is an LLVM IR lshr instruction.
type LShrInst struct {
	Exact    bool
	X, Y     value.Value
	Metadata []*metadata.MetadataAttachment
}

// String returns a string representation of the instruction.
func (inst *LShrInst) String() string {
	// "lshr" OptExact Type Value "," Value OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
	buf.WriteString("lshr")
	if inst.Exact {
		buf.WriteString(" exact")
	}
	fmt.Fprintf(buf, " %v, %v", inst.X, inst.Y.Ident())
	for _, md := range inst.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

// ~~~[ ashr ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// AShrInst is an LLVM IR ashr instruction.
type AShrInst struct {
	Exact    bool
	X, Y     value.Value
	Metadata []*metadata.MetadataAttachment
}

// String returns a string representation of the instruction.
func (inst *AShrInst) String() string {
	// "ashr" OptExact Type Value "," Value OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
	buf.WriteString("ashr")
	if inst.Exact {
		buf.WriteString(" exact")
	}
	fmt.Fprintf(buf, " %v, %v", inst.X, inst.Y.Ident())
	for _, md := range inst.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

// ~~~[ and ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// AndInst is an LLVM IR and instruction.
type AndInst struct {
	X, Y     value.Value
	Metadata []*metadata.MetadataAttachment
}

// String returns a string representation of the instruction.
func (inst *AndInst) String() string {
	// "and" Type Value "," Value OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "and %v, %v", inst.X, inst.Y.Ident())
	for _, md := range inst.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

// ~~~[ or ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// OrInst is an LLVM IR or instruction.
type OrInst struct {
	X, Y     value.Value
	Metadata []*metadata.MetadataAttachment
}

// String returns a string representation of the instruction.
func (inst *OrInst) String() string {
	// "or" Type Value "," Value OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "or %v, %v", inst.X, inst.Y.Ident())
	for _, md := range inst.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

// ~~~[ xor ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// XorInst is an LLVM IR xor instruction.
type XorInst struct {
	X, Y     value.Value
	Metadata []*metadata.MetadataAttachment
}

// String returns a string representation of the instruction.
func (inst *XorInst) String() string {
	// "xor" Type Value "," Value OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "xor %v, %v", inst.X, inst.Y.Ident())
	for _, md := range inst.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

// --- [ Vector instructions ] -------------------------------------------------

// ~~~[ extractelement ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// ExtractElementInst is an LLVM IR extractelement instruction.
type ExtractElementInst struct {
	X        value.Value
	Index    value.Value
	Metadata []*metadata.MetadataAttachment
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
	X        value.Value
	Elem     value.Value
	Index    value.Value
	Metadata []*metadata.MetadataAttachment
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
	X, Y     value.Value
	Mask     value.Value
	Metadata []*metadata.MetadataAttachment
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
	X        value.Value
	Indices  []int64
	Metadata []*metadata.MetadataAttachment
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
	X        value.Value
	Elem     value.Value
	Indices  []int64
	Metadata []*metadata.MetadataAttachment
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
	ElemType   types.Type
	NElems     value.Value     // nil if not present
	Alignment  *ll.Alignment   // nil if not present
	AddrSpace  types.AddrSpace // zero if not present
	Metadata   []*metadata.MetadataAttachment
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
	ElemType       types.Type
	Src            value.Value
	SyncScope      *ll.SyncScope     // nil if not present
	AtomicOrdering ll.AtomicOrdering // zero value if not present
	Alignment      *ll.Alignment     // nil if not present
	Metadata       []*metadata.MetadataAttachment
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
	if inst.AtomicOrdering != ll.AtomicOrderingNone {
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
	Src            value.Value
	Dst            value.Value
	SyncScope      *ll.SyncScope     // nil if not present
	AtomicOrdering ll.AtomicOrdering // zero value if not present
	Alignment      *ll.Alignment     // nil if not present
	Metadata       []*metadata.MetadataAttachment
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
	if inst.AtomicOrdering != ll.AtomicOrderingNone {
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
	SyncScope      *ll.SyncScope // nil if not present
	AtomicOrdering ll.AtomicOrdering
	Metadata       []*metadata.MetadataAttachment
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
	Ptr       value.Value
	Cmp       value.Value
	New       value.Value
	SyncScope *ll.SyncScope // nil if not present
	Success   ll.AtomicOrdering
	Failure   ll.AtomicOrdering
	Metadata  []*metadata.MetadataAttachment
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
	Op             ll.BinOp
	Ptr            value.Value
	X              value.Value
	SyncScope      *ll.SyncScope // nil if not present
	AtomicOrdering ll.AtomicOrdering
	Metadata       []*metadata.MetadataAttachment
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

// ~~~[ getelementptr ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// GetElementPtrInst is an LLVM IR getelementptr instruction.
type GetElementPtrInst struct {
	InBounds bool
	ElemType types.Type
	Src      value.Value
	Indices  []value.Value
	Metadata []*metadata.MetadataAttachment
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
	From     value.Value
	To       types.Type
	Metadata []*metadata.MetadataAttachment
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
	From     value.Value
	To       types.Type
	Metadata []*metadata.MetadataAttachment
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
	From     value.Value
	To       types.Type
	Metadata []*metadata.MetadataAttachment
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
	From     value.Value
	To       types.Type
	Metadata []*metadata.MetadataAttachment
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
	From     value.Value
	To       types.Type
	Metadata []*metadata.MetadataAttachment
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
	From     value.Value
	To       types.Type
	Metadata []*metadata.MetadataAttachment
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
	From     value.Value
	To       types.Type
	Metadata []*metadata.MetadataAttachment
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
	From     value.Value
	To       types.Type
	Metadata []*metadata.MetadataAttachment
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
	From     value.Value
	To       types.Type
	Metadata []*metadata.MetadataAttachment
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
	From     value.Value
	To       types.Type
	Metadata []*metadata.MetadataAttachment
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
	From     value.Value
	To       types.Type
	Metadata []*metadata.MetadataAttachment
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
	From     value.Value
	To       types.Type
	Metadata []*metadata.MetadataAttachment
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
	From     value.Value
	To       types.Type
	Metadata []*metadata.MetadataAttachment
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
	Pred     ll.IPred
	X, Y     value.Value
	Metadata []*metadata.MetadataAttachment
}

// String returns a string representation of the instruction.
func (inst *ICmpInst) String() string {
	// "icmp" IPred Type Value "," Value OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "icmp %v %v, %v", inst.Pred, inst.X, inst.Y.Ident())
	for _, md := range inst.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

// ~~~[ fcmp ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// FCmpInst is an LLVM IR fcmp instruction.
type FCmpInst struct {
	FastMathFlags []ll.FastMathFlag
	Pred          ll.FPred
	X, Y          value.Value
	Metadata      []*metadata.MetadataAttachment
}

// String returns a string representation of the instruction.
func (inst *FCmpInst) String() string {
	// "fcmp" FastMathFlags FPred Type Value "," Value OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
	buf.WriteString("fcmp")
	for _, flag := range inst.FastMathFlags {
		fmt.Fprintf(buf, " %v", flag)
	}
	fmt.Fprintf(buf, " %v %v, %v", inst.Pred, inst.X, inst.Y.Ident())
	for _, md := range inst.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

// ~~~[ phi ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// PhiInst is an LLVM IR phi instruction.
type PhiInst struct {
	Type     types.Type
	Incs     []*Incoming
	Metadata []*metadata.MetadataAttachment
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
	// Note, the type of X is not present in the AST of the incoming value but
	// rather in the result type of the phi instruction. A nil Type() is used to
	// identify AST incoming values.

	// Incoming value.
	X value.Value

	// Note, Pred is of type *ast.LocalIdent in the AST. Stored during
	// translation as &ir.BasicBlock{Name: name.(*ast.LocalIdent).Name}; a nil
	// Terminator is used to identify AST basic blocks.

	// Predecessor basic block.
	Pred *BasicBlock
}

// String returns the string representation of the incoming value.
func (inc *Incoming) String() string {
	// "[" Value "," LocalIdent "]"
	return fmt.Sprintf("[ %v, %v ]", inc.X.Ident(), inc.Pred.Name)
}

// ~~~[ select ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// SelectInst is an LLVM IR select instruction.
type SelectInst struct {
	Cond     value.Value
	X, Y     value.Value
	Metadata []*metadata.MetadataAttachment
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
	Tail          ll.Tail
	FastMathFlags []ll.FastMathFlag
	CallingConv   ll.CallingConv
	ReturnAttrs   []ll.ReturnAttribute
	RetType       types.Type

	// Note, the type of Callee is not present in the AST of the call
	// instruction, but rather it has to be inferred by looking up the global or
	// local symbol if possible, and otherwise resort to the result type of the
	// call instruction. A nil Type() is used to identify AST callee values.

	Callee         value.Value
	Args           []ll.Argument
	FuncAttrs      []ll.FuncAttribute
	OperandBundles []*ll.OperandBundle
	Metadata       []*metadata.MetadataAttachment
}

// String returns a string representation of the instruction.
func (inst *CallInst) String() string {
	// OptTail "call" FastMathFlags OptCallingConv ReturnAttrs Type Value "(" Args ")" FuncAttrs OperandBundles OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
	if inst.Tail != ll.TailNone {
		fmt.Fprintf(buf, "%v ", inst.Tail)
	}
	buf.WriteString("call")
	for _, flag := range inst.FastMathFlags {
		fmt.Fprintf(buf, " %v", flag)
	}
	if inst.CallingConv != ll.CallingConvNone {
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

// ~~~[ vaarg ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// VAArgInst is an LLVM IR vaarg instruction.
type VAArgInst struct {
	ArgList  value.Value
	ArgType  types.Type
	Metadata []*metadata.MetadataAttachment
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
	Type     types.Type
	Cleanup  bool
	Clauses  []*Clause
	Metadata []*metadata.MetadataAttachment
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
	X     value.Value
}

// String returns the string representation of the exception clause.
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
	// Note, Scope is of type *ast.LocalIdent in the AST.

	// Exception scope.
	Scope value.Value
	// Exception arguments.
	Args []ll.Argument
	// Metadata attachments.
	Metadata []*metadata.MetadataAttachment
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
	Scope    ll.ExceptionScope
	Args     []ll.Argument
	Metadata []*metadata.MetadataAttachment
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
