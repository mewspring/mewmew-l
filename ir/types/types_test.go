package types_test

import (
	"github.com/mewmew/l/ir/types"
)

// Ensure that each type implements the ast.Type interface.
var (
	_ types.Type = (*types.VoidType)(nil)
	_ types.Type = (*types.FuncType)(nil)
	_ types.Type = (*types.IntType)(nil)
	_ types.Type = (*types.FloatType)(nil)
	_ types.Type = (*types.MMXType)(nil)
	_ types.Type = (*types.PointerType)(nil)
	_ types.Type = (*types.VectorType)(nil)
	_ types.Type = (*types.LabelType)(nil)
	_ types.Type = (*types.TokenType)(nil)
	_ types.Type = (*types.MetadataType)(nil)
	_ types.Type = (*types.ArrayType)(nil)
	_ types.Type = (*types.StructType)(nil)
	_ types.Type = (*types.NamedType)(nil)
)
