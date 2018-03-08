package ir

import (
	"fmt"

	"github.com/mewmew/l/ir/value"
)

// IsTopLevelEntity ensures that only top-level entities can be assigned to the
// ast.TopLevelEntity interface.
func (*SourceFilename) IsTopLevelEntity() {}
func (*TargetTriple) IsTopLevelEntity()   {}
func (*DataLayout) IsTopLevelEntity()     {}
func (*Global) IsTopLevelEntity()         {}
func (*IndirectSymbol) IsTopLevelEntity() {}
func (*Function) IsTopLevelEntity()       {}
func (*AttrGroupDef) IsTopLevelEntity()   {}
func (*UseListOrder) IsTopLevelEntity()   {}
func (*UseListOrderBB) IsTopLevelEntity() {}

// A Constant is an LLVM IR constant.
type Constant interface {
	value.Value
	// IsConstant ensures that only constants can be assigned to the
	// constant.Constant interface.
	IsConstant()
}

// IsConstant ensures that only constants can be assigned to the
// ir.Constant interface.
func (*Global) IsConstant()   {}
func (*Function) IsConstant() {}

// IsFuncAttribute ensures that only function attributes can be assigned to the
// ast.FuncAttribute interface.
func (*AttrGroupDef) IsFuncAttribute() {}

// An Instruction is an LLVM IR instruction.
type Instruction interface {
	fmt.Stringer
	// IsInstruction ensures that only instructions can be assigned to the
	// ast.Instruction interface.
	IsInstruction()
}

// IsInstruction ensures that only instructions can be assigned to the
// ast.Instruction interface.
func (*StoreInst) IsInstruction()     {}
func (*FenceInst) IsInstruction()     {}
func (*CmpXchgInst) IsInstruction()   {}
func (*AtomicRMWInst) IsInstruction() {}
func (*LocalDef) IsInstruction()      {}

// A ValueInstruction is an instruction which produces a value.
type ValueInstruction interface {
	// String returns the string representation of the instruction.
	fmt.Stringer
	// IsValueInstruction ensures that only value instructions can be assigned to
	// the ir.ValueInstruction interface.
	IsValueInstruction()
}

// IsValueInstruction ensures that only value instructions can be assigned to
// the ir.ValueInstruction interface.
func (*AddInst) IsValueInstruction()            {}
func (*FAddInst) IsValueInstruction()           {}
func (*SubInst) IsValueInstruction()            {}
func (*FSubInst) IsValueInstruction()           {}
func (*MulInst) IsValueInstruction()            {}
func (*FMulInst) IsValueInstruction()           {}
func (*UDivInst) IsValueInstruction()           {}
func (*SDivInst) IsValueInstruction()           {}
func (*FDivInst) IsValueInstruction()           {}
func (*URemInst) IsValueInstruction()           {}
func (*SRemInst) IsValueInstruction()           {}
func (*FRemInst) IsValueInstruction()           {}
func (*ShlInst) IsValueInstruction()            {}
func (*LShrInst) IsValueInstruction()           {}
func (*AShrInst) IsValueInstruction()           {}
func (*AndInst) IsValueInstruction()            {}
func (*OrInst) IsValueInstruction()             {}
func (*XorInst) IsValueInstruction()            {}
func (*ExtractElementInst) IsValueInstruction() {}
func (*InsertElementInst) IsValueInstruction()  {}
func (*ShuffleVectorInst) IsValueInstruction()  {}
func (*ExtractValueInst) IsValueInstruction()   {}
func (*InsertValueInst) IsValueInstruction()    {}
func (*AllocaInst) IsValueInstruction()         {}
func (*LoadInst) IsValueInstruction()           {}
func (*GetElementPtrInst) IsValueInstruction()  {}
func (*TruncInst) IsValueInstruction()          {}
func (*ZExtInst) IsValueInstruction()           {}
func (*SExtInst) IsValueInstruction()           {}
func (*FPTruncInst) IsValueInstruction()        {}
func (*FPExtInst) IsValueInstruction()          {}
func (*FPToUIInst) IsValueInstruction()         {}
func (*FPToSIInst) IsValueInstruction()         {}
func (*UIToFPInst) IsValueInstruction()         {}
func (*SIToFPInst) IsValueInstruction()         {}
func (*PtrToIntInst) IsValueInstruction()       {}
func (*IntToPtrInst) IsValueInstruction()       {}
func (*BitCastInst) IsValueInstruction()        {}
func (*AddrSpaceCastInst) IsValueInstruction()  {}
func (*ICmpInst) IsValueInstruction()           {}
func (*FCmpInst) IsValueInstruction()           {}
func (*PhiInst) IsValueInstruction()            {}
func (*SelectInst) IsValueInstruction()         {}
func (*CallInst) IsValueInstruction()           {}
func (*VAArgInst) IsValueInstruction()          {}
func (*LandingPadInst) IsValueInstruction()     {}
func (*CatchPadInst) IsValueInstruction()       {}
func (*CleanupPadInst) IsValueInstruction()     {}

// A Terminator is an LLVM IR terminator.
type Terminator interface {
	fmt.Stringer
	// IsTerminator ensures that only terminators can be assigned to the
	// ast.Terminator interface.
	IsTerminator()
}

// IsTerminator ensures that only terminators can be assigned to the
// ast.Terminator interface.
func (*RetTerm) IsTerminator()         {}
func (*BrTerm) IsTerminator()          {}
func (*CondBrTerm) IsTerminator()      {}
func (*SwitchTerm) IsTerminator()      {}
func (*IndirectBrTerm) IsTerminator()  {}
func (*InvokeTerm) IsTerminator()      {}
func (*ResumeTerm) IsTerminator()      {}
func (*CatchSwitchTerm) IsTerminator() {}
func (*CatchRetTerm) IsTerminator()    {}
func (*CleanupRetTerm) IsTerminator()  {}
func (*UnreachableTerm) IsTerminator() {}

// IsUnwindTarget ensures that only unwind targets can be assigned to the
// ast.UnwindTarget interface.
func (*BasicBlock) IsUnwindTarget() {}
