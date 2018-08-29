package ir

import (
	"fmt"

	"github.com/mewmew/l/ir/types"
	"github.com/mewmew/l/ir/value"
)

// --- [ ast.TopLevelEntity ] --------------------------------------------------

// IsTopLevelEntity ensures that only top-level entities can be assigned to the
// ast.TopLevelEntity interface.
func (*SourceFilename) IsTopLevelEntity() {}
func (*DataLayout) IsTopLevelEntity()     {}
func (*TargetTriple) IsTopLevelEntity()   {}
func (*ModuleAsm) IsTopLevelEntity()      {}

//func (*ast.TypeDef) IsTopLevelEntity() {}
func (*ComdatDef) IsTopLevelEntity()      {}
func (*Global) IsTopLevelEntity()         {}
func (*IndirectSymbol) IsTopLevelEntity() {}
func (*Function) IsTopLevelEntity()       {}
func (*AttrGroupDef) IsTopLevelEntity()   {}

//func (*metadata.NamedMetadataDef) IsTopLevelEntity() {}
//func (*metadata.MetadataDef) IsTopLevelEntity()      {}
func (*UseListOrder) IsTopLevelEntity()   {}
func (*UseListOrderBB) IsTopLevelEntity() {}

// --- [ ir.Constant ] ---------------------------------------------------------

// A Constant is an LLVM IR constant.
type Constant interface {
	value.Value
	// IsConstant ensures that only constants can be assigned to the
	// constant.Constant interface.
	IsConstant()
}

// IsConstant ensures that only constants can be assigned to the
// ir.Constant interface.
func (*Global) IsConstant()         {}
func (*IndirectSymbol) IsConstant() {}
func (*Function) IsConstant()       {}

// --- [ ir.ReturnAttribute ] --------------------------------------------------

// ReturnAttribute is a return argument attribute.
type ReturnAttribute interface {
	fmt.Stringer
	// isReturnAttribute ensures that only return argument attributes can be
	// assigned to the ast.ReturnAttribute interface.
	isReturnAttribute()
}

// isReturnAttribute ensures that only return argument attributes can be
// assigned to the ast.ReturnAttribute interface.
func (*Alignment) isReturnAttribute()       {}
func (*Dereferenceable) isReturnAttribute() {}
func (*AttrString) isReturnAttribute()      {}
func (*AttrPair) isReturnAttribute()        {}
func (ReturnAttr) isReturnAttribute()       {}

// --- [ ir.FuncAttribute ] ----------------------------------------------------

// FuncAttribute is a function attribute.
type FuncAttribute interface {
	fmt.Stringer
	// IsFuncAttribute ensures that only function attributes can be assigned to
	// the ast.FuncAttribute interface.
	IsFuncAttribute()
}

// IsFuncAttribute ensures that only function attributes can be assigned to the
// ast.FuncAttribute interface.
func (*AttrGroupDef) IsFuncAttribute() {}

//func (*AttrGroupID) IsFuncAttribute() {}
func (*Alignment) IsFuncAttribute()      {}
func (*AllocSize) IsFuncAttribute()      {}
func (*StackAlignment) IsFuncAttribute() {}
func (*AttrString) IsFuncAttribute()     {}
func (*AttrPair) IsFuncAttribute()       {}
func (FuncAttr) IsFuncAttribute()        {}

// --- [ ir.ParamAttribute ] ---------------------------------------------------

// ParamAttribute is a parameter attribute.
type ParamAttribute interface {
	fmt.Stringer
	// isParamAttribute ensures that only parameter attributes can be assigned to
	// the ast.ParamAttribute interface.
	isParamAttribute()
}

// isParamAttribute ensures that only parameter attributes can be assigned to
// the ast.ParamAttribute interface.
func (*Alignment) isParamAttribute()       {}
func (*Dereferenceable) isParamAttribute() {}
func (*AttrString) isParamAttribute()      {}
func (*AttrPair) isParamAttribute()        {}
func (ParamAttr) isParamAttribute()        {}

// --- [ ir.Instruction ] ------------------------------------------------------

// An Instruction is an LLVM IR instruction.
type Instruction interface {
	// Def returns the LLVM syntax representation of the instruction.
	Def() string
	// IsInstruction ensures that only instructions can be assigned to the
	// ast.Instruction interface.
	IsInstruction()
}

// IsInstruction ensures that only instructions can be assigned to the
// ast.Instruction interface.
func (*InstStore) IsInstruction()     {}
func (*InstFence) IsInstruction()     {}
func (*InstCmpXchg) IsInstruction()   {}
func (*InstAtomicRMW) IsInstruction() {}
func (*LocalDef) IsInstruction()      {}

// --- [ ir.ValueInstruction ] -------------------------------------------------

// A ValueInstruction is an instruction which produces a value.
type ValueInstruction interface {
	// Def returns the LLVM syntax representation of the instruction.
	Def() string
	// Type returns the type of the results computed by the instruction.
	Type() types.Type
	// IsValueInstruction ensures that only value instructions can be assigned to
	// the ir.ValueInstruction interface.
	IsValueInstruction()
}

// IsValueInstruction ensures that only value instructions can be assigned to
// the ir.ValueInstruction interface.
func (*InstAdd) IsValueInstruction()            {}
func (*InstFAdd) IsValueInstruction()           {}
func (*InstSub) IsValueInstruction()            {}
func (*InstFSub) IsValueInstruction()           {}
func (*InstMul) IsValueInstruction()            {}
func (*InstFMul) IsValueInstruction()           {}
func (*InstUDiv) IsValueInstruction()           {}
func (*InstSDiv) IsValueInstruction()           {}
func (*InstFDiv) IsValueInstruction()           {}
func (*InstURem) IsValueInstruction()           {}
func (*InstSRem) IsValueInstruction()           {}
func (*InstFRem) IsValueInstruction()           {}
func (*InstShl) IsValueInstruction()            {}
func (*InstLShr) IsValueInstruction()           {}
func (*InstAShr) IsValueInstruction()           {}
func (*InstAnd) IsValueInstruction()            {}
func (*InstOr) IsValueInstruction()             {}
func (*InstXor) IsValueInstruction()            {}
func (*InstExtractElement) IsValueInstruction() {}
func (*InstInsertElement) IsValueInstruction()  {}
func (*InstShuffleVector) IsValueInstruction()  {}
func (*InstExtractValue) IsValueInstruction()   {}
func (*InstInsertValue) IsValueInstruction()    {}
func (*InstAlloca) IsValueInstruction()         {}
func (*InstLoad) IsValueInstruction()           {}
func (*InstGetElementPtr) IsValueInstruction()  {}
func (*InstTrunc) IsValueInstruction()          {}
func (*InstZExt) IsValueInstruction()           {}
func (*InstSExt) IsValueInstruction()           {}
func (*InstFPTrunc) IsValueInstruction()        {}
func (*InstFPExt) IsValueInstruction()          {}
func (*InstFPToUI) IsValueInstruction()         {}
func (*InstFPToSI) IsValueInstruction()         {}
func (*InstUIToFP) IsValueInstruction()         {}
func (*InstSIToFP) IsValueInstruction()         {}
func (*InstPtrToInt) IsValueInstruction()       {}
func (*InstIntToPtr) IsValueInstruction()       {}
func (*InstBitCast) IsValueInstruction()        {}
func (*InstAddrSpaceCast) IsValueInstruction()  {}
func (*InstICmp) IsValueInstruction()           {}
func (*InstFCmp) IsValueInstruction()           {}
func (*InstPhi) IsValueInstruction()            {}
func (*InstSelect) IsValueInstruction()         {}
func (*InstCall) IsValueInstruction()           {}
func (*InstVAArg) IsValueInstruction()          {}
func (*InstLandingPad) IsValueInstruction()     {}
func (*InstCatchPad) IsValueInstruction()       {}
func (*InstCleanupPad) IsValueInstruction()     {}

// --- [ ir.Argument ] ---------------------------------------------------------

// Argument is a function call argument.
type Argument interface {
	fmt.Stringer
	// IsArgument ensures that only function call arguments can be assigned to
	// the ast.Argument interface.
	IsArgument()
}

// IsArgument ensures that only function call arguments can be assigned to the
// ast.Argument interface.
func (*Arg) IsArgument() {} // used as function argument

// TODO: Figure out how to handle *ast.TypeValue as an argument after conversion
// to IR.

// TODO: Figure out how to handle *ast.MetadataValue as an argument after
// conversion.

// --- [ ir.Terminator ] -------------------------------------------------------

// A Terminator is an LLVM IR terminator.
type Terminator interface {
	// Def returns the LLVM syntax representation of the terminator.
	Def() string
	// IsTerminator ensures that only terminators can be assigned to the
	// ast.Terminator interface.
	IsTerminator()
}

// IsTerminator ensures that only terminators can be assigned to the
// ast.Terminator interface.
func (*TermRet) IsTerminator()         {}
func (*TermBr) IsTerminator()          {}
func (*TermCondBr) IsTerminator()      {}
func (*TermSwitch) IsTerminator()      {}
func (*TermIndirectBr) IsTerminator()  {}
func (*TermInvoke) IsTerminator()      {}
func (*TermResume) IsTerminator()      {}
func (*TermCatchSwitch) IsTerminator() {}
func (*TermCatchRet) IsTerminator()    {}
func (*TermCleanupRet) IsTerminator()  {}
func (*TermUnreachable) IsTerminator() {}

// --- [ ir.UnwindTarget ] -----------------------------------------------------

// UnwindTarget is an unwind target of a catchswitch or cleanupret terminator.
type UnwindTarget interface {
	fmt.Stringer
	// IsUnwindTarget ensures that only unwind targets can be assigned to the
	// ast.UnwindTarget interface.
	IsUnwindTarget()
}

// IsUnwindTarget ensures that only unwind targets can be assigned to the
// ir.UnwindTarget interface.
func (*UnwindToCaller) IsUnwindTarget() {}
func (*BasicBlock) IsUnwindTarget()     {}

// --- [ ir.ExceptionScope ] ---------------------------------------------------

// ExceptionScope is an exception scope.
type ExceptionScope interface {
	fmt.Stringer
	// IsExceptionScope ensures that only exception scopes can be assigned to the
	// ast.ExceptionScope interface.
	IsExceptionScope()
}

// IsExceptionScope ensures that only exception scopes can be assigned to the
// ast.ExceptionScope interface.
func (*BasicBlock) IsExceptionScope() {}

// --- [ astx.GlobalAttribute ] ------------------------------------------------

// Note, GlobalAttribute is only used at the AST level and the distinction is
// removed when translating the global variable into IR.

// IsGlobalAttribute ensures that only global attributes can be assigned to the
// astx.GlobalAttribute interface.
func (*Section) IsGlobalAttribute()   {}
func (*Comdat) IsGlobalAttribute()    {}
func (*Alignment) IsGlobalAttribute() {}

//func (*metadata.MetadataAttachment) IsGlobalAttribute() {}
