package irx

import (
	"fmt"

	"github.com/mewmew/l/asm/ast"
	"github.com/mewmew/l/ir/constant"
	"github.com/mewmew/l/ir/types"
	"github.com/mewmew/l/ir/value"
)

// getGEPType calculates the type of the getelementptr instruction based on the
// given element type and indices.
func getGEPType(elem types.Type, indices []value.Value) *types.PointerType {
	e := elem
	for i, index := range indices {
		if i == 0 {
			// Ignore checking the 0th index as it simply follows the pointer of
			// src.
			//
			// ref: http://llvm.org/docs/GetElementPtr.html#why-is-the-extra-0-index-required
			continue
		}
		switch t := e.(type) {
		case *types.PointerType:
			// ref: http://llvm.org/docs/GetElementPtr.html#what-is-dereferenced-by-gep
			panic("unable to index into element of pointer type; for more information, see http://llvm.org/docs/GetElementPtr.html#what-is-dereferenced-by-gep")
		case *types.VectorType:
			e = t.ElemType
		case *types.ArrayType:
			e = t.ElemType
		case *types.StructType:
			if i, ok := index.(*ast.TypeValue); ok {
				index = i.Value
			}
			idx, ok := index.(*constant.Int)
			if !ok {
				panic(fmt.Errorf("invalid index type for structure element; expected *constant.Int, got %T", index))
			}
			e = t.Fields[idx.X.Int64()]
		default:
			panic(fmt.Errorf("support for indexing element type %T not yet implemented", e))
		}
	}
	return types.NewPointer(e)
}

// aggregateElemType returns the element type of the given aggregate type, based
// on the specified indices.
func aggregateElemType(t types.Type, indices []int64) types.Type {
	if len(indices) == 0 {
		return t
	}
	index := indices[0]
	switch t := t.(type) {
	case *types.ArrayType:
		if index >= t.Len {
			panic(fmt.Errorf("invalid index (%d); exceeds array length (%d)", index, t.Len))
		}
		return aggregateElemType(t.ElemType, indices[1:])
	case *types.StructType:
		if index >= int64(len(t.Fields)) {
			panic(fmt.Errorf("invalid index (%d); exceeds struct field count (%d)", index, len(t.Fields)))
		}
		return aggregateElemType(t.Fields[index], indices[1:])
	default:
		panic(fmt.Errorf("invalid aggregate value type; expected *types.ArrayType or *types.StructType, got %T", t))
	}
}
