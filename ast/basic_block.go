package ast

type BasicBlock struct {
	Name  *LabelIdent // nil if unnamed
	Insts []Instruction
	Term  Terminator
}
