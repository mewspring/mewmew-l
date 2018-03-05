package ll

import "fmt"

// ParamAttribute is a parameter attribute.
type ParamAttribute interface {
	fmt.Stringer
	// isParamAttribute ensures that only parameter attributes can be assigned to
	// the ast.ParamAttribute interface.
	isParamAttribute()
}

// isParamAttribute ensures that only parameter attributes can be assigned to
// the ast.ParamAttribute interface.
func (*Alignment) isParamAttribute()       {}
func (*Dereferenceable) isParamAttribute() {}
func (*ParamAttrString) isParamAttribute() {}
func (ParamAttr) isParamAttribute()        {}

// ReturnAttribute is a return argument attribute.
type ReturnAttribute interface {
	fmt.Stringer
	// isReturnAttribute ensures that only return argument attributes can be
	// assigned to the ast.ReturnAttribute interface.
	isReturnAttribute()
}

// isReturnAttribute ensures that only return argument attributes can be
// assigned to the ast.ReturnAttribute interface.
func (*Alignment) isReturnAttribute()        {}
func (*Dereferenceable) isReturnAttribute()  {}
func (*ReturnAttrString) isReturnAttribute() {}
func (ReturnAttr) isReturnAttribute()        {}

// TODO: Figure out how to handle FuncAttribute interface.
// IsFuncAttribute ensures that only function attributes can be assigned to the
// ast.FuncAttribute interface.
func (*Alignment) IsFuncAttribute()      {}
func (*AllocSize) IsFuncAttribute()      {}
func (*StackAlignment) IsFuncAttribute() {}
func (*FuncAttrString) IsFuncAttribute() {}
func (*FuncAttrPair) IsFuncAttribute()   {}
func (FuncAttr) IsFuncAttribute()        {}
