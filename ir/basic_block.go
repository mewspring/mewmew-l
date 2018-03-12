package ir

import (
	"fmt"
	"strings"

	"github.com/mewmew/l/internal/enc"
	"github.com/mewmew/l/ir/types"
)

// === [ Basic Blocks ] ========================================================

// TODO: Handle block.Name when stored as LabelIdent, should print as LocalIdent
// when used as value.

// Note, Term is nil when BasicBlock is in AST form; irx.Translate looks up the
// defintion of the basic block based on its name to translate the AST form into
// IR form.

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

// String returns the string representation of the basic block as a type-value
// pair.
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
	return enc.Local(block.Name)
}

// Name returns the name of the basic block.
func (block *BasicBlock) GetName() string {
	return block.Name
}

// SetName sets the name of the basic block.
func (block *BasicBlock) SetName(name string) {
	block.Name = name
}

// Def returns the LLVM syntax representation of the basic block definition.
func (block *BasicBlock) Def() string {
	// OptLabelIdent Instructions Terminator
	buf := &strings.Builder{}
	if isLocalID(block.Name) {
		//fmt.Fprintf(buf, "; <label>:%v\n", enc.Label(block.Name))
	} else if len(block.Name) > 0 {
		// TODO: Store block name without ':' suffix or '%' prefix.
		fmt.Fprintf(buf, "%v\n", enc.Label(block.Name))
	}
	for _, inst := range block.Insts {
		fmt.Fprintf(buf, "\t%v\n", inst.Def())
	}
	fmt.Fprintf(buf, "\t%v", block.Term.Def())
	return buf.String()
}
