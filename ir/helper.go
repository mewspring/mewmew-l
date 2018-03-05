package ir

import (
	"fmt"
)

// FuncAttribute is a function attribute.
type FuncAttribute interface {
	fmt.Stringer
	// isFuncAttribute ensures that only function attributes can be assigned to
	// the ast.FuncAttribute interface.
	isFuncAttribute()
}

func (*ast.Alignment) isFuncAttribute()      {}
func (*AttrGroupDef) isFuncAttribute()       {}
func (*ast.AllocSize) isFuncAttribute()      {}
func (*ast.StackAlignment) isFuncAttribute() {}
func (*ast.FuncAttrString) isFuncAttribute() {}
func (*ast.FuncAttrPair) isFuncAttribute()   {}
func (ast.FuncAttr) isFuncAttribute()        {}
