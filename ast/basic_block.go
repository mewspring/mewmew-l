package ast

import (
	"fmt"
	"strings"
)

// A BasicBlock is a sequence of non-branching instructions terminated by a
// branching instruction.
type BasicBlock struct {
	Name  *LabelIdent // nil if unnamed
	Insts []Instruction
	Term  Terminator
}

// String returns the string representation of the basic block.
func (block *BasicBlock) String() string {
	// OptLabelIdent Instructions Terminator
	buf := &strings.Builder{}
	if block.Name != nil {
		fmt.Fprintf(buf, "%v\n", block.Name)
	}
	for _, inst := range block.Insts {
		fmt.Fprintf(buf, "\t%v\n", inst)
	}
	fmt.Fprintf(buf, "\t%v", block.Term)
	return buf.String()
}
