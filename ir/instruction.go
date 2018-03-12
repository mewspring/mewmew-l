package ir

import (
	"fmt"
	"strings"

	"github.com/mewmew/l/internal/enc"
	"github.com/mewmew/l/ir/metadata"
	"github.com/mewmew/l/ir/types"
	"github.com/mewmew/l/ir/value"
)

// === [ Instructions ] ========================================================

// A LocalDef is a local definition which assigns the result of an LLVM IR
// instruction to a name.
type LocalDef struct {
	// Result name (LocalIdent); or empty if unnamed.
	Name string
	Inst ValueInstruction
}

// String returns the string representation of the local definition as a type-
// value pair.
func (v *LocalDef) String() string {
	// Type LocalIdent
	return fmt.Sprintf("%v %v", v.Type(), v.Ident())
}

// Type returns the type of the local definition.
func (v *LocalDef) Type() types.Type {
	return v.Inst.Type()
}

// Ident returns the identifier associated with the local definition.
func (v *LocalDef) Ident() string {
	// LocalIdent
	return enc.Local(v.Name)
}

// Name returns the name of the local definition.
func (v *LocalDef) GetName() string {
	return v.Name
}

// SetName sets the name of the local definition.
func (v *LocalDef) SetName(name string) {
	v.Name = name
}

// Def returns the LLVM syntax representation of the local definition.
func (v *LocalDef) Def() string {
	// ValueInstruction
	// LocalIdent "=" ValueInstruction
	if len(v.Name) == 0 {
		return v.Inst.String()
	}
	return fmt.Sprintf("%v = %v", enc.Local(v.Name), v.Inst)
}

// --- [ Binary instructions ] -------------------------------------------------

// ~~~[ add ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// InstAdd is an LLVM IR add instruction.
type InstAdd struct {
	OverflowFlags []OverflowFlag
	X, Y          value.Value
	Metadata      []*metadata.MetadataAttachment
}

// String returns a string representation of the instruction.
func (inst *InstAdd) String() string {
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

// Type returns the type of the add instruction.
func (inst *InstAdd) Type() types.Type {
	return inst.X.Type()
}

// ~~~[ fadd ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// InstFAdd is an LLVM IR fadd instruction.
type InstFAdd struct {
	FastMathFlags []FastMathFlag
	X, Y          value.Value
	Metadata      []*metadata.MetadataAttachment
}

// String returns a string representation of the instruction.
func (inst *InstFAdd) String() string {
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

// Type returns the type of the fadd instruction.
func (inst *InstFAdd) Type() types.Type {
	return inst.X.Type()
}

// ~~~[ sub ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// InstSub is an LLVM IR sub instruction.
type InstSub struct {
	OverflowFlags []OverflowFlag
	X, Y          value.Value
	Metadata      []*metadata.MetadataAttachment
}

// String returns a string representation of the instruction.
func (inst *InstSub) String() string {
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

// Type returns the type of the sub instruction.
func (inst *InstSub) Type() types.Type {
	return inst.X.Type()
}

// ~~~[ fsub ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// InstFSub is an LLVM IR fsub instruction.
type InstFSub struct {
	FastMathFlags []FastMathFlag
	X, Y          value.Value
	Metadata      []*metadata.MetadataAttachment
}

// String returns a string representation of the instruction.
func (inst *InstFSub) String() string {
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

// Type returns the type of the fsub instruction.
func (inst *InstFSub) Type() types.Type {
	return inst.X.Type()
}

// ~~~[ mul ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// InstMul is an LLVM IR mul instruction.
type InstMul struct {
	OverflowFlags []OverflowFlag
	X, Y          value.Value
	Metadata      []*metadata.MetadataAttachment
}

// String returns a string representation of the instruction.
func (inst *InstMul) String() string {
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

// Type returns the type of the mul instruction.
func (inst *InstMul) Type() types.Type {
	return inst.X.Type()
}

// ~~~[ fmul ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// InstFMul is an LLVM IR fmul instruction.
type InstFMul struct {
	FastMathFlags []FastMathFlag
	X, Y          value.Value
	Metadata      []*metadata.MetadataAttachment
}

// String returns a string representation of the instruction.
func (inst *InstFMul) String() string {
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

// Type returns the type of the fmul instruction.
func (inst *InstFMul) Type() types.Type {
	return inst.X.Type()
}

// ~~~[ udiv ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// InstUDiv is an LLVM IR udiv instruction.
type InstUDiv struct {
	Exact    bool
	X, Y     value.Value
	Metadata []*metadata.MetadataAttachment
}

// String returns a string representation of the instruction.
func (inst *InstUDiv) String() string {
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

// Type returns the type of the udiv instruction.
func (inst *InstUDiv) Type() types.Type {
	return inst.X.Type()
}

// ~~~[ sdiv ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// InstSDiv is an LLVM IR sdiv instruction.
type InstSDiv struct {
	Exact    bool
	X, Y     value.Value
	Metadata []*metadata.MetadataAttachment
}

// String returns a string representation of the instruction.
func (inst *InstSDiv) String() string {
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

// Type returns the type of the sdiv instruction.
func (inst *InstSDiv) Type() types.Type {
	return inst.X.Type()
}

// ~~~[ fdiv ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// InstFDiv is an LLVM IR fdiv instruction.
type InstFDiv struct {
	FastMathFlags []FastMathFlag
	X, Y          value.Value
	Metadata      []*metadata.MetadataAttachment
}

// String returns a string representation of the instruction.
func (inst *InstFDiv) String() string {
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

// Type returns the type of the fdiv instruction.
func (inst *InstFDiv) Type() types.Type {
	return inst.X.Type()
}

// ~~~[ urem ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// InstURem is an LLVM IR urem instruction.
type InstURem struct {
	X, Y     value.Value
	Metadata []*metadata.MetadataAttachment
}

// String returns a string representation of the instruction.
func (inst *InstURem) String() string {
	// "urem" Type Value "," Value OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "urem %v, %v", inst.X, inst.Y.Ident())
	for _, md := range inst.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

// Type returns the type of the urem instruction.
func (inst *InstURem) Type() types.Type {
	return inst.X.Type()
}

// ~~~[ srem ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// InstSRem is an LLVM IR srem instruction.
type InstSRem struct {
	X, Y     value.Value
	Metadata []*metadata.MetadataAttachment
}

// String returns a string representation of the instruction.
func (inst *InstSRem) String() string {
	// "srem" Type Value "," Value OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "srem %v, %v", inst.X, inst.Y.Ident())
	for _, md := range inst.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

// Type returns the type of the srem instruction.
func (inst *InstSRem) Type() types.Type {
	return inst.X.Type()
}

// ~~~[ frem ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// InstFRem is an LLVM IR frem instruction.
type InstFRem struct {
	FastMathFlags []FastMathFlag
	X, Y          value.Value
	Metadata      []*metadata.MetadataAttachment
}

// String returns a string representation of the instruction.
func (inst *InstFRem) String() string {
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

// Type returns the type of the frem instruction.
func (inst *InstFRem) Type() types.Type {
	return inst.X.Type()
}

// --- [ Bitwise instructions ] ------------------------------------------------

// ~~~[ shl ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// InstShl is an LLVM IR shl instruction.
type InstShl struct {
	OverflowFlags []OverflowFlag
	X, Y          value.Value
	Metadata      []*metadata.MetadataAttachment
}

// String returns a string representation of the instruction.
func (inst *InstShl) String() string {
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

// Type returns the type of the shl instruction.
func (inst *InstShl) Type() types.Type {
	return inst.X.Type()
}

// ~~~[ lshr ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// InstLShr is an LLVM IR lshr instruction.
type InstLShr struct {
	Exact    bool
	X, Y     value.Value
	Metadata []*metadata.MetadataAttachment
}

// String returns a string representation of the instruction.
func (inst *InstLShr) String() string {
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

// Type returns the type of the lshr instruction.
func (inst *InstLShr) Type() types.Type {
	return inst.X.Type()
}

// ~~~[ ashr ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// InstAShr is an LLVM IR ashr instruction.
type InstAShr struct {
	Exact    bool
	X, Y     value.Value
	Metadata []*metadata.MetadataAttachment
}

// String returns a string representation of the instruction.
func (inst *InstAShr) String() string {
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

// Type returns the type of the ashr instruction.
func (inst *InstAShr) Type() types.Type {
	return inst.X.Type()
}

// ~~~[ and ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// InstAnd is an LLVM IR and instruction.
type InstAnd struct {
	X, Y     value.Value
	Metadata []*metadata.MetadataAttachment
}

// String returns a string representation of the instruction.
func (inst *InstAnd) String() string {
	// "and" Type Value "," Value OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "and %v, %v", inst.X, inst.Y.Ident())
	for _, md := range inst.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

// Type returns the type of the and instruction.
func (inst *InstAnd) Type() types.Type {
	return inst.X.Type()
}

// ~~~[ or ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// InstOr is an LLVM IR or instruction.
type InstOr struct {
	X, Y     value.Value
	Metadata []*metadata.MetadataAttachment
}

// String returns a string representation of the instruction.
func (inst *InstOr) String() string {
	// "or" Type Value "," Value OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "or %v, %v", inst.X, inst.Y.Ident())
	for _, md := range inst.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

// Type returns the type of the or instruction.
func (inst *InstOr) Type() types.Type {
	return inst.X.Type()
}

// ~~~[ xor ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// InstXor is an LLVM IR xor instruction.
type InstXor struct {
	X, Y     value.Value
	Metadata []*metadata.MetadataAttachment
}

// String returns a string representation of the instruction.
func (inst *InstXor) String() string {
	// "xor" Type Value "," Value OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "xor %v, %v", inst.X, inst.Y.Ident())
	for _, md := range inst.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

// Type returns the type of the xor instruction.
func (inst *InstXor) Type() types.Type {
	return inst.X.Type()
}

// --- [ Vector instructions ] -------------------------------------------------

// ~~~[ extractelement ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// InstExtractElement is an LLVM IR extractelement instruction.
type InstExtractElement struct {
	X        value.Value
	Index    value.Value
	Metadata []*metadata.MetadataAttachment
}

// String returns a string representation of the instruction.
func (inst *InstExtractElement) String() string {
	// "extractelement" Type Value "," Type Value OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "extractelement %v, %v", inst.X, inst.Index)
	for _, md := range inst.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

// Type returns the type of the extractelement instruction.
func (inst *InstExtractElement) Type() types.Type {
	panic("ir.InstExtractElement.Type: not yet implemented")
}

// ~~~[ insertelement ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// InstInsertElement is an LLVM IR insertelement instruction.
type InstInsertElement struct {
	X        value.Value
	Elem     value.Value
	Index    value.Value
	Metadata []*metadata.MetadataAttachment
}

// String returns a string representation of the instruction.
func (inst *InstInsertElement) String() string {
	// "insertelement" Type Value "," Type Value "," Type Value OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "insertelement %v, %v, %v", inst.X, inst.Elem, inst.Index)
	for _, md := range inst.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

// Type returns the type of the insertelement instruction.
func (inst *InstInsertElement) Type() types.Type {
	return inst.X.Type()
}

// ~~~[ shufflevector ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// InstShuffleVector is an LLVM IR shufflevector instruction.
type InstShuffleVector struct {
	X, Y     value.Value
	Mask     value.Value
	Metadata []*metadata.MetadataAttachment
}

// String returns a string representation of the instruction.
func (inst *InstShuffleVector) String() string {
	// "shufflevector" Type Value "," Type Value "," Type Value OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "shufflevector %v, %v, %v", inst.X, inst.Y, inst.Mask)
	for _, md := range inst.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

// Type returns the type of the shufflevector instruction.
func (inst *InstShuffleVector) Type() types.Type {
	return inst.X.Type()
}

// --- [ Aggregate instructions ] ----------------------------------------------

// ~~~[ extractvalue ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// InstExtractValue is an LLVM IR extractvalue instruction.
type InstExtractValue struct {
	X        value.Value
	Indices  []int64
	Metadata []*metadata.MetadataAttachment
}

// String returns a string representation of the instruction.
func (inst *InstExtractValue) String() string {
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

// Type returns the type of the extractvalue instruction.
func (inst *InstExtractValue) Type() types.Type {
	panic("ir.ExprExtractValue.Type: not yet implemented")
}

// ~~~[ insertvalue ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// InstInsertValue is an LLVM IR insertvalue instruction.
type InstInsertValue struct {
	X        value.Value
	Elem     value.Value
	Indices  []int64
	Metadata []*metadata.MetadataAttachment
}

// String returns a string representation of the instruction.
func (inst *InstInsertValue) String() string {
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

// Type returns the type of the insertvalue instruction.
func (inst *InstInsertValue) Type() types.Type {
	return inst.X.Type()
}

// --- [ Memory instructions ] -------------------------------------------------

// ~~~[ alloca ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// Note, Typ is nil when InstAlloca is in AST form; irx.Translate instantiates
// Typ to a pointer to ElemType.

// InstAlloca is an LLVM IR alloca instruction.
type InstAlloca struct {
	InAlloca   bool
	SwiftError bool
	Typ        *types.PointerType
	ElemType   types.Type
	NElems     value.Value     // nil if not present
	Alignment  *Alignment      // nil if not present
	AddrSpace  types.AddrSpace // zero if not present
	Metadata   []*metadata.MetadataAttachment
}

// String returns a string representation of the instruction.
func (inst *InstAlloca) String() string {
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

// Type returns the type of the alloca instruction.
func (inst *InstAlloca) Type() types.Type {
	return inst.Typ
}

// ~~~[ load ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// InstLoad is an LLVM IR load instruction.
type InstLoad struct {
	Atomic         bool
	Volatile       bool
	ElemType       types.Type // TODO: Remove ElemType as alreaedy part of Src?
	Src            value.Value
	SyncScope      *SyncScope     // nil if not present
	AtomicOrdering AtomicOrdering // zero value if not present
	Alignment      *Alignment     // nil if not present
	Metadata       []*metadata.MetadataAttachment
}

// String returns a string representation of the instruction.
func (inst *InstLoad) String() string {
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

// Type returns the type of the load instruction.
func (inst *InstLoad) Type() types.Type {
	return inst.ElemType
}

// ~~~[ store ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// InstStore is an LLVM IR store instruction.
type InstStore struct {
	Atomic         bool
	Volatile       bool
	Src            value.Value
	Dst            value.Value
	SyncScope      *SyncScope     // nil if not present
	AtomicOrdering AtomicOrdering // zero value if not present
	Alignment      *Alignment     // nil if not present
	Metadata       []*metadata.MetadataAttachment
}

// String returns a string representation of the instruction.
func (inst *InstStore) String() string {
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

// InstFence is an LLVM IR fence instruction.
type InstFence struct {
	SyncScope      *SyncScope // nil if not present
	AtomicOrdering AtomicOrdering
	Metadata       []*metadata.MetadataAttachment
}

// String returns a string representation of the instruction.
func (inst *InstFence) String() string {
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

// InstCmpXchg is an LLVM IR cmpxchg instruction.
type InstCmpXchg struct {
	Weak      bool
	Volatile  bool
	Ptr       value.Value
	Cmp       value.Value
	New       value.Value
	SyncScope *SyncScope // nil if not present
	Success   AtomicOrdering
	Failure   AtomicOrdering
	Metadata  []*metadata.MetadataAttachment
}

// String returns a string representation of the instruction.
func (inst *InstCmpXchg) String() string {
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

// InstAtomicRMW is an LLVM IR atomicrmw instruction.
type InstAtomicRMW struct {
	Volatile       bool
	Op             BinOp
	Ptr            value.Value
	X              value.Value
	SyncScope      *SyncScope // nil if not present
	AtomicOrdering AtomicOrdering
	Metadata       []*metadata.MetadataAttachment
}

// String returns a string representation of the instruction.
func (inst *InstAtomicRMW) String() string {
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

// Note, Typ is nil when InstGetElementPtr is in AST form; irx.Translate
// instantiates Typ to a pointer to ElemType.

// InstGetElementPtr is an LLVM IR getelementptr instruction.
type InstGetElementPtr struct {
	InBounds bool
	Typ      *types.PointerType
	ElemType types.Type
	Src      value.Value
	Indices  []value.Value
	Metadata []*metadata.MetadataAttachment
}

// String returns a string representation of the instruction.
func (inst *InstGetElementPtr) String() string {
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

// Type returns the type of the getelementptr instruction.
func (inst *InstGetElementPtr) Type() types.Type {
	return inst.Typ
}

// --- [ Conversion instructions ] ---------------------------------------------

// ~~~[ trunc ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// InstTrunc is an LLVM IR trunc instruction.
type InstTrunc struct {
	From     value.Value
	To       types.Type
	Metadata []*metadata.MetadataAttachment
}

// String returns a string representation of the instruction.
func (inst *InstTrunc) String() string {
	// "trunc" Type Value "to" Type OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "trunc %v to %v", inst.From, inst.To)
	for _, md := range inst.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

// Type returns the type of the trunc instruction.
func (inst *InstTrunc) Type() types.Type {
	return inst.To
}

// ~~~[ zext ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// InstZExt is an LLVM IR zext instruction.
type InstZExt struct {
	From     value.Value
	To       types.Type
	Metadata []*metadata.MetadataAttachment
}

// String returns a string representation of the instruction.
func (inst *InstZExt) String() string {
	// "zext" Type Value "to" Type OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "zext %v to %v", inst.From, inst.To)
	for _, md := range inst.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

// Type returns the type of the zext instruction.
func (inst *InstZExt) Type() types.Type {
	return inst.To
}

// ~~~[ sext ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// InstSExt is an LLVM IR sext instruction.
type InstSExt struct {
	From     value.Value
	To       types.Type
	Metadata []*metadata.MetadataAttachment
}

// String returns a string representation of the instruction.
func (inst *InstSExt) String() string {
	// "sext" Type Value "to" Type OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "sext %v to %v", inst.From, inst.To)
	for _, md := range inst.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

// Type returns the type of the sext instruction.
func (inst *InstSExt) Type() types.Type {
	return inst.To
}

// ~~~[ fptrunc ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// InstFPTrunc is an LLVM IR fptrunc instruction.
type InstFPTrunc struct {
	From     value.Value
	To       types.Type
	Metadata []*metadata.MetadataAttachment
}

// String returns a string representation of the instruction.
func (inst *InstFPTrunc) String() string {
	// "fptrunc" Type Value "to" Type OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "fptrunc %v to %v", inst.From, inst.To)
	for _, md := range inst.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

// Type returns the type of the fptrunc instruction.
func (inst *InstFPTrunc) Type() types.Type {
	return inst.To
}

// ~~~[ fpext ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// InstFPExt is an LLVM IR fpext instruction.
type InstFPExt struct {
	From     value.Value
	To       types.Type
	Metadata []*metadata.MetadataAttachment
}

// String returns a string representation of the instruction.
func (inst *InstFPExt) String() string {
	// "fpext" Type Value "to" Type OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "fpext %v to %v", inst.From, inst.To)
	for _, md := range inst.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

// Type returns the type of the fpext instruction.
func (inst *InstFPExt) Type() types.Type {
	return inst.To
}

// ~~~[ fptoui ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// InstFPToUI is an LLVM IR fptoui instruction.
type InstFPToUI struct {
	From     value.Value
	To       types.Type
	Metadata []*metadata.MetadataAttachment
}

// String returns a string representation of the instruction.
func (inst *InstFPToUI) String() string {
	// "fptoui" Type Value "to" Type OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "fptoui %v to %v", inst.From, inst.To)
	for _, md := range inst.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

// Type returns the type of the fptoui instruction.
func (inst *InstFPToUI) Type() types.Type {
	return inst.To
}

// ~~~[ fptosi ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// InstFPToSI is an LLVM IR fptosi instruction.
type InstFPToSI struct {
	From     value.Value
	To       types.Type
	Metadata []*metadata.MetadataAttachment
}

// String returns a string representation of the instruction.
func (inst *InstFPToSI) String() string {
	// "fptosi" Type Value "to" Type OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "fptosi %v to %v", inst.From, inst.To)
	for _, md := range inst.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

// Type returns the type of the fptosi instruction.
func (inst *InstFPToSI) Type() types.Type {
	return inst.To
}

// ~~~[ uitofp ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// InstUIToFP is an LLVM IR uitofp instruction.
type InstUIToFP struct {
	From     value.Value
	To       types.Type
	Metadata []*metadata.MetadataAttachment
}

// String returns a string representation of the instruction.
func (inst *InstUIToFP) String() string {
	// "uitofp" Type Value "to" Type OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "uitofp %v to %v", inst.From, inst.To)
	for _, md := range inst.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

// Type returns the type of the uitofp instruction.
func (inst *InstUIToFP) Type() types.Type {
	return inst.To
}

// ~~~[ sitofp ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// InstSIToFP is an LLVM IR sitofp instruction.
type InstSIToFP struct {
	From     value.Value
	To       types.Type
	Metadata []*metadata.MetadataAttachment
}

// String returns a string representation of the instruction.
func (inst *InstSIToFP) String() string {
	// "sitofp" Type Value "to" Type OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "sitofp %v to %v", inst.From, inst.To)
	for _, md := range inst.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

// Type returns the type of the sitofp instruction.
func (inst *InstSIToFP) Type() types.Type {
	return inst.To
}

// ~~~[ ptrtoint ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// InstPtrToInt is an LLVM IR ptrtoint instruction.
type InstPtrToInt struct {
	From     value.Value
	To       types.Type
	Metadata []*metadata.MetadataAttachment
}

// String returns a string representation of the instruction.
func (inst *InstPtrToInt) String() string {
	// "ptrtoint" Type Value "to" Type OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "ptrtoint %v to %v", inst.From, inst.To)
	for _, md := range inst.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

// Type returns the type of the ptrtoint instruction.
func (inst *InstPtrToInt) Type() types.Type {
	return inst.To
}

// ~~~[ inttoptr ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// InstIntToPtr is an LLVM IR inttoptr instruction.
type InstIntToPtr struct {
	From     value.Value
	To       types.Type
	Metadata []*metadata.MetadataAttachment
}

// String returns a string representation of the instruction.
func (inst *InstIntToPtr) String() string {
	// "inttoptr" Type Value "to" Type OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "inttoptr %v to %v", inst.From, inst.To)
	for _, md := range inst.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

// Type returns the type of the inttoptr instruction.
func (inst *InstIntToPtr) Type() types.Type {
	return inst.To
}

// ~~~[ bitcast ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// InstBitCast is an LLVM IR bitcast instruction.
type InstBitCast struct {
	From     value.Value
	To       types.Type
	Metadata []*metadata.MetadataAttachment
}

// String returns a string representation of the instruction.
func (inst *InstBitCast) String() string {
	// "bitcast" Type Value "to" Type OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "bitcast %v to %v", inst.From, inst.To)
	for _, md := range inst.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

// Type returns the type of the bitcast instruction.
func (inst *InstBitCast) Type() types.Type {
	return inst.To
}

// ~~~[ addrspacecast ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// InstAddrSpaceCast is an LLVM IR addrspacecast instruction.
type InstAddrSpaceCast struct {
	From     value.Value
	To       types.Type
	Metadata []*metadata.MetadataAttachment
}

// String returns a string representation of the instruction.
func (inst *InstAddrSpaceCast) String() string {
	// "addrspacecast" Type Value "to" Type OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "addrspacecast %v to %v", inst.From, inst.To)
	for _, md := range inst.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

// Type returns the type of the addrspacecast instruction.
func (inst *InstAddrSpaceCast) Type() types.Type {
	return inst.To
}

// --- [ Other instructions ] --------------------------------------------------

// ~~~[ icmp ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// Note, Typ is nil when InstICmp is in AST form; irx.Translate instantiates Typ
// to types.I1 or a vector of types.I1, depending on if X is a vactor or a
// scalar.

// InstICmp is an LLVM IR icmp instruction.
type InstICmp struct {
	Pred     IPred
	Typ      types.Type
	X, Y     value.Value
	Metadata []*metadata.MetadataAttachment
}

// String returns a string representation of the instruction.
func (inst *InstICmp) String() string {
	// "icmp" IPred Type Value "," Value OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "icmp %v %v, %v", inst.Pred, inst.X, inst.Y.Ident())
	for _, md := range inst.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

// Type returns the type of the icmp instruction.
func (inst *InstICmp) Type() types.Type {
	return inst.Typ
}

// ~~~[ fcmp ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// Note, Typ is nil when InstICmp is in AST form; irx.Translate instantiates Typ
// to types.I1 or a vector of types.I1, depending on if X is a vactor or a
// scalar.

// InstFCmp is an LLVM IR fcmp instruction.
type InstFCmp struct {
	FastMathFlags []FastMathFlag
	Pred          FPred
	Typ           types.Type
	X, Y          value.Value
	Metadata      []*metadata.MetadataAttachment
}

// String returns a string representation of the instruction.
func (inst *InstFCmp) String() string {
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

// Type returns the type of the fcmp instruction.
func (inst *InstFCmp) Type() types.Type {
	return inst.Typ
}

// ~~~[ phi ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// InstPhi is an LLVM IR phi instruction.
type InstPhi struct {
	Typ      types.Type
	Incs     []*Incoming
	Metadata []*metadata.MetadataAttachment
}

// String returns a string representation of the instruction.
func (inst *InstPhi) String() string {
	// "phi" Type IncList OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "phi %v ", inst.Typ)
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

// Type returns the type of the phi instruction.
func (inst *InstPhi) Type() types.Type {
	return inst.Typ
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
	return fmt.Sprintf("[ %v, %v ]", inc.X.Ident(), inc.Pred.Ident())
}

// ~~~[ select ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// InstSelect is an LLVM IR select instruction.
type InstSelect struct {
	Cond     value.Value
	X, Y     value.Value
	Metadata []*metadata.MetadataAttachment
}

// String returns a string representation of the instruction.
func (inst *InstSelect) String() string {
	// "select" Type Value "," Type Value "," Type Value OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "select %v, %v, %v", inst.Cond, inst.X, inst.Y)
	for _, md := range inst.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

// Type returns the type of the select instruction.
func (inst *InstSelect) Type() types.Type {
	return inst.X.Type()
}

// ~~~[ call ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// InstCall is an LLVM IR call instruction.
type InstCall struct {
	Tail          Tail
	FastMathFlags []FastMathFlag
	CallingConv   CallingConv
	ReturnAttrs   []ReturnAttribute
	RetType       types.Type

	// Note, the type of Callee is not present in the AST of the call
	// instruction, but rather it has to be inferred by looking up the global or
	// local symbol if possible, and otherwise resort to the result type of the
	// call instruction. A nil Type() is used to identify AST callee values.

	Callee         value.Value
	Args           []Argument
	FuncAttrs      []FuncAttribute
	OperandBundles []*OperandBundle
	Metadata       []*metadata.MetadataAttachment
}

// String returns a string representation of the instruction.
func (inst *InstCall) String() string {
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
	fmt.Fprintf(buf, " %v %v(", inst.RetType, inst.Callee.Ident())
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

// Type returns the type of the call instruction.
func (inst *InstCall) Type() types.Type {
	return inst.RetType
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

// InstVAArg is an LLVM IR vaarg instruction.
type InstVAArg struct {
	ArgList  value.Value
	ArgType  types.Type
	Metadata []*metadata.MetadataAttachment
}

// String returns a string representation of the instruction.
func (inst *InstVAArg) String() string {
	// "va_arg" Type Value "," Type OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "va_arg %v, %v", inst.ArgList, inst.ArgType)
	for _, md := range inst.Metadata {
		fmt.Fprintf(buf, ", %v", md)
	}
	return buf.String()
}

// Type returns the type of the vaarg instruction.
func (inst *InstVAArg) Type() types.Type {
	return inst.ArgType
}

// ~~~[ landingpad ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// InstLandingPad is an LLVM IR landingpad instruction.
type InstLandingPad struct {
	Typ      types.Type
	Cleanup  bool
	Clauses  []*Clause
	Metadata []*metadata.MetadataAttachment
}

// String returns a string representation of the instruction.
func (inst *InstLandingPad) String() string {
	// "landingpad" Type OptCleanup Clauses OptCommaSepMetadataAttachmentList
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "landingpad %v", inst.Typ)
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

// Type returns the type of the landingpad instruction.
func (inst *InstLandingPad) Type() types.Type {
	return inst.Typ
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

// InstCatchPad is an LLVM IR catchpad instruction.
type InstCatchPad struct {
	// Note, Scope is of type *ast.LocalIdent in the AST.

	// Exception scope.
	Scope value.Value
	// Exception arguments.
	Args []Argument
	// Metadata attachments.
	Metadata []*metadata.MetadataAttachment
}

// String returns a string representation of the instruction.
func (inst *InstCatchPad) String() string {
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

// Type returns the type of the catchpad instruction.
func (inst *InstCatchPad) Type() types.Type {
	return types.Token
}

// ~~~[ cleanuppad ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// InstCleanupPad is an LLVM IR cleanuppad instruction.
type InstCleanupPad struct {
	Scope    ExceptionScope
	Args     []Argument
	Metadata []*metadata.MetadataAttachment
}

// String returns a string representation of the instruction.
func (inst *InstCleanupPad) String() string {
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

// Type returns the type of the cleanuppad instruction.
func (inst *InstCleanupPad) Type() types.Type {
	return types.Token
}
