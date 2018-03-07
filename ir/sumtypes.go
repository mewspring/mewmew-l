package ir

import "fmt"

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

// IsInstruction ensures that only instructions can be assigned to the
// ast.Instruction interface.
func (*ValueInstruction) IsInstruction() {}
