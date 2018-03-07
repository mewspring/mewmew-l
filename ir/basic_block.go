package ir

import (
	"fmt"
	"strings"
)

// A BasicBlock is a sequence of non-branching instructions terminated by a
// branching instruction.
type BasicBlock struct {
	// Basic block name (LabelIdent); empty if unnamed.
	Name string
	// Instructions of the basic block.
	Insts []Instruction
	// Terminating instruction of the basic block.
	Term Terminator
}

// String returns the string representation of the basic block.
func (block *BasicBlock) String() string {
	// OptLabelIdent Instructions Terminator
	buf := &strings.Builder{}
	if len(block.Name) > 0 {
		fmt.Fprintf(buf, "%v\n", block.Name)
	}
	for _, inst := range block.Insts {
		fmt.Fprintf(buf, "\t%v\n", inst)
	}
	fmt.Fprintf(buf, "\t%v", block.Term)
	return buf.String()
}
