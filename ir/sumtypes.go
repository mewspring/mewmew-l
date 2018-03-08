package ir

import (
	"fmt"

	"github.com/mewmew/l/ir/value"
)

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

// A Terminator is an LLVM IR terminator.
type Terminator interface {
	fmt.Stringer
	// IsTerminator ensures that only terminators can be assigned to the
	// ast.Terminator interface.
	IsTerminator()
}

// IsUnwindTarget ensures that only unwind targets can be assigned to the
// ast.UnwindTarget interface.
func (*BasicBlock) IsUnwindTarget() {}

// IsInstruction ensures that only instructions can be assigned to the
// ast.Instruction interface.
func (*ValueInstruction) IsInstruction() {}

// IsInstruction ensures that only instructions can be assigned to the
// ast.Instruction interface.
func (*AddInst) IsInstruction()            {}
func (*FAddInst) IsInstruction()           {}
func (*SubInst) IsInstruction()            {}
func (*FSubInst) IsInstruction()           {}
func (*MulInst) IsInstruction()            {}
func (*FMulInst) IsInstruction()           {}
func (*UDivInst) IsInstruction()           {}
func (*SDivInst) IsInstruction()           {}
func (*FDivInst) IsInstruction()           {}
func (*URemInst) IsInstruction()           {}
func (*SRemInst) IsInstruction()           {}
func (*FRemInst) IsInstruction()           {}
func (*ShlInst) IsInstruction()            {}
func (*LShrInst) IsInstruction()           {}
func (*AShrInst) IsInstruction()           {}
func (*AndInst) IsInstruction()            {}
func (*OrInst) IsInstruction()             {}
func (*XorInst) IsInstruction()            {}
func (*ExtractElementInst) IsInstruction() {}
func (*InsertElementInst) IsInstruction()  {}
func (*ShuffleVectorInst) IsInstruction()  {}
func (*ExtractValueInst) IsInstruction()   {}
func (*InsertValueInst) IsInstruction()    {}
func (*AllocaInst) IsInstruction()         {}
func (*LoadInst) IsInstruction()           {}
func (*StoreInst) IsInstruction()          {}
func (*FenceInst) IsInstruction()          {}
func (*CmpXchgInst) IsInstruction()        {}
func (*AtomicRMWInst) IsInstruction()      {}
func (*GetElementPtrInst) IsInstruction()  {}
func (*TruncInst) IsInstruction()          {}
func (*ZExtInst) IsInstruction()           {}
func (*SExtInst) IsInstruction()           {}
func (*FPTruncInst) IsInstruction()        {}
func (*FPExtInst) IsInstruction()          {}
func (*FPToUIInst) IsInstruction()         {}
func (*FPToSIInst) IsInstruction()         {}
func (*UIToFPInst) IsInstruction()         {}
func (*SIToFPInst) IsInstruction()         {}
func (*PtrToIntInst) IsInstruction()       {}
func (*IntToPtrInst) IsInstruction()       {}
func (*BitCastInst) IsInstruction()        {}
func (*AddrSpaceCastInst) IsInstruction()  {}
func (*ICmpInst) IsInstruction()           {}
func (*FCmpInst) IsInstruction()           {}
func (*PhiInst) IsInstruction()            {}
func (*SelectInst) IsInstruction()         {}
func (*CallInst) IsInstruction()           {}
func (*VAArgInst) IsInstruction()          {}
func (*LandingPadInst) IsInstruction()     {}
func (*CatchPadInst) IsInstruction()       {}
func (*CleanupPadInst) IsInstruction()     {}

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

// A Constant is an LLVM IR constant.
type Constant interface {
	value.Value
	// IsConstant ensures that only constants can be assigned to the
	// constant.Constant interface.
	IsConstant()
}

// IsConstant ensures that only constants can be assigned to the
// ir.Constant interface.
func (*Global) IsConstant() {}

// IsTopLevelEntity ensures that only top-level entities can be assigned to the
// ast.TopLevelEntity interface.
func (*Global) IsTopLevelEntity()       {}
func (*AttrGroupDef) IsTopLevelEntity() {}
