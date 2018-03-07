package ll

import "fmt"

// Argument is a function call argument.
type Argument interface {
	fmt.Stringer
	// IsArgument ensures that only function call arguments can be assigned to
	// the ast.Argument interface.
	IsArgument()
}

// IsArgument ensures that only function call arguments can be assigned to the
// ast.Argument interface.
func (*Arg) IsArgument() {} // used as function argument

// TODO: Figure out how to handle DIExpressionField interface.

// IsDIExpressionField ensures that only DIExpression fields can be assigned to
// the ast.DIExpressionField interface.
func (DwarfOp) IsDIExpressionField() {}

// ExceptionScope is an exception scope.
type ExceptionScope interface {
	fmt.Stringer
	// IsExceptionScope ensures that only exception scopes can be assigned to the
	// ast.ExceptionScope interface.
	IsExceptionScope()
}

// TODO: Figure out how to handle FuncAttribute interface.

// FuncAttribute is a function attribute.
type FuncAttribute interface {
	fmt.Stringer
	// IsFuncAttribute ensures that only function attributes can be assigned to
	// the ast.FuncAttribute interface.
	IsFuncAttribute()
}

// IsFuncAttribute ensures that only function attributes can be assigned to the
// ast.FuncAttribute interface.
func (*Alignment) IsFuncAttribute()      {}
func (*AllocSize) IsFuncAttribute()      {}
func (*StackAlignment) IsFuncAttribute() {}
func (*FuncAttrString) IsFuncAttribute() {}
func (*FuncAttrPair) IsFuncAttribute()   {}
func (FuncAttr) IsFuncAttribute()        {}

//func (*AttrGroupID) IsFuncAttribute() {}

// TODO: Figure out how to handle GlobalAttribute interface.

// GlobalAttribute is a global attribute.
type GlobalAttribute interface {
	fmt.Stringer
	// IsGlobalAttribute ensures that only global attributes can be assigned to
	// the ast.GlobalAttribute interface.
	IsGlobalAttribute()
}

// IsGlobalAttribute ensures that only global attributes can be assigned to the
// ast.GlobalAttribute interface.
func (*Section) IsGlobalAttribute()   {}
func (*Comdat) IsGlobalAttribute()    {}
func (*Alignment) IsGlobalAttribute() {}

//func (*MetadataAttachment) IsGlobalAttribute() {}

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

// IsTopLevelEntity ensures that only top-level entities can be assigned to the
// ast.TopLevelEntity interface.
func (*ComdatDef) IsTopLevelEntity() {}

// TODO: Figure out how to handle value interface.

// IsValue ensures that only values can be assigned to the ast.Value interface.
func (*InlineAsm) IsValue() {}
