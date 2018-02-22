package astx

import (
	"strconv"

	"github.com/mewmew/l/ast"
	"github.com/mewmew/l/token"
)

func NewString(stringLit interface{}) (string, error) {
	return String(stringLit), nil
}

func String(stringLit interface{}) string {
	s := stringLit.(*token.Token)
	return string(s.Lit)
}

func NewInt(intLit interface{}) (int64, error) {
	return Int(intLit), nil
}

func Int(intLit interface{}) int64 {
	s := String(intLit)
	x, err := strconv.ParseInt(s, 10, 64)
	if err != nil {
		panic(err)
	}
	return x
}

func ComdatName(comdatName interface{}) ast.ComdatName {
	return comdatName.(ast.ComdatName)
}

func TypeValues(typeVals interface{}) []*ast.TypeValue {
	return typeVals.([]*ast.TypeValue)
}

func NewFuncAttrList(funcAttr interface{}) ([]ast.FuncAttribute, error) {
	elem := funcAttr.(ast.FuncAttribute)
	return []ast.FuncAttribute{elem}, nil
}

func ApppendFuncAttr(funcAttrs, funcAttr interface{}) ([]ast.FuncAttribute, error) {
	list := funcAttrs.([]ast.FuncAttribute)
	elem := funcAttr.(ast.FuncAttribute)
	return append(list, elem), nil
}

func NewReturnAttrList(returnAttr interface{}) ([]ast.ReturnAttribute, error) {
	elem := returnAttr.(ast.ReturnAttribute)
	return []ast.ReturnAttribute{elem}, nil
}

func ApppendReturnAttr(returnAttrs, returnAttr interface{}) ([]ast.ReturnAttribute, error) {
	list := returnAttrs.([]ast.ReturnAttribute)
	elem := returnAttr.(ast.ReturnAttribute)
	return append(list, elem), nil
}

func NewParamAttrList(paramAttr interface{}) ([]ast.ParamAttribute, error) {
	elem := paramAttr.(ast.ParamAttribute)
	return []ast.ParamAttribute{elem}, nil
}

func ApppendParamAttr(paramAttrs, paramAttr interface{}) ([]ast.ParamAttribute, error) {
	list := paramAttrs.([]ast.ParamAttribute)
	elem := paramAttr.(ast.ParamAttribute)
	return append(list, elem), nil
}

func NewComdat(comdatName interface{}) (*ast.Comdat, error) {
	name := comdatName.(ast.ComdatName)
	return &ast.Comdat{
		Name: name,
	}, nil
}

func NewSection(name interface{}) (*ast.Section, error) {
	n := String(name)
	return &ast.Section{
		Name: n,
	}, nil
}

type Params struct {
	Params   []*ast.Param
	Variadic bool
}

func NewParams(params, variadic interface{}) (*Params, error) {
	ps := params.([]*ast.Param)
	v := variadic.(bool)
	return &Params{
		Params:   ps,
		Variadic: v,
	}, nil
}
