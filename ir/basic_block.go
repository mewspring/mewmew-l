package ir

import (
	"fmt"
	"strings"

	"github.com/mewmew/l/ll/types"
)

// TODO: Handle block.Name when stored as LabelIdent, should print as LocalIdent
// when used as value.

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

// String returns the string representation of the basic block when used as a
// value.
func (block *BasicBlock) String() string {
	// LabelType LocalIdent
	return fmt.Sprintf("%v %v", block.Type(), block.Ident())
}

// Type returns the type of the basic block.
func (block *BasicBlock) Type() types.Type {
	// LabelType
	return types.Label
}

// Ident returns the identifier associated with the basic block.
func (block *BasicBlock) Ident() string {
	// LocalIdent
	return block.Name
}

// Def returns the LLVM syntax representation of the basic block definition.
func (block *BasicBlock) Def() string {
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
