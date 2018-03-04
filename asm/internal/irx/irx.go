package irx

import (
	"github.com/llir/llvm/ir/metadata"
	"github.com/mewmew/l/asm/internal/ast"
	"github.com/mewmew/l/ir"
	"github.com/mewmew/l/ir/types"
	"github.com/mewmew/l/ir/value"
)

// A Module represents an LLVM IR module generator.
type Module struct {
	// Module being generated.
	*ir.Module

	// Per module.

	// maps from identifier to definition.
	typeIdent    map[string]*ast.TypeDef
	comdatName   map[string]*ast.ComdatDef
	globalIdent  map[string]interface{} // *ast.Global, *ast.IndirectSymbol or *ast.Function.
	attrGroupID  map[string]*ast.AttrGroupDef
	metadataName map[string]*ast.NamedMetadataDef
	metadataID   map[string]*ast.MetadataDef

	// types maps from type identifiers to their corresponding LLVM IR types.
	types map[string]*types.NamedType
	// globals maps global identifiers to their corresponding LLVM IR values.
	globals map[string]value.Named
	// metadata maps metadata IDs to their corresponding LLVM IR metadata.
	metadata map[string]*metadata.Metadata

	// Per function.

	// locals maps local identifiers to their corresponding LLVM IR values; reset
	// once per function definition.
	locals map[string]value.Named

	// List of errors encountered during translation.
	errs []error
}

// NewModule returns a new module generator.
func NewModule() *Module {
	return &Module{
		Module: &ir.Module{},

		typeIdent:    make(map[string]*ast.TypeDef),
		comdatName:   make(map[string]*ast.ComdatDef),
		globalIdent:  make(map[string]interface{}),
		attrGroupID:  make(map[string]*ast.AttrGroupDef),
		metadataName: make(map[string]*ast.NamedMetadataDef),
		metadataID:   make(map[string]*ast.MetadataDef),

		types:    make(map[string]*types.NamedType),
		globals:  make(map[string]value.Named),
		metadata: make(map[string]*metadata.Metadata),
	}
}
