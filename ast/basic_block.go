package ast

type BasicBlock struct {
	Name  LabelIdent // empty if unnamed
	Insts []Instruction
	Term  Terminator
}
