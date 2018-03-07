package ir

import (
	"fmt"
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
