package astx

import (
	"github.com/mewmew/l/asm/ast"
	"github.com/mewmew/l/ir/types"
	"github.com/mewmew/l/ir/value"
)

// TypeValue returns a type-value pair based on the given type and value.
func TypeValue(typ, val interface{}) *ast.TypeValue {
	return &ast.TypeValue{
		Typ:   typ.(types.Type),
		Value: val.(value.Value),
	}
}
