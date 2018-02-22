package ast

import "fmt"

type Value interface {
	fmt.Stringer
	isValue()
}

func (GlobalIdent) isValue() {}
func (LocalIdent) isValue()  {}
