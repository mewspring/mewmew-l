package irx

import (
	"github.com/mewmew/l/asm/internal/ast"
	"github.com/mewmew/l/ir"
	"github.com/mewmew/l/ir/metadata"
	"github.com/mewmew/l/ir/types"
	"github.com/mewmew/l/ir/value"
)

// A Module represents an LLVM IR module generator.
type Module struct {
	// Module being generated.
	*ir.Module

	// Per module.

	// maps from identifier to AST definition.
	typeIdent    map[string]*ast.TypeDef
	comdatName   map[string]*ast.ComdatDef
	globalIdent  map[string]interface{} // *ast.Global, *ast.IndirectSymbol or *ast.Function.
	attrGroupID  map[string]*ast.AttrGroupDef
	metadataName map[string]*ast.NamedMetadataDef
	metadataID   map[string]*ast.MetadataDef

	// maps from identifier to IR definition.
	typeDefs          map[string]*types.NamedType
	globals           map[string]value.Named
	namedMetadataDefs map[string]*metadata.NamedMetadataDef
	metadataDefs      map[string]*metadata.MetadataDef

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

		typeDefs:          make(map[string]*types.NamedType),
		globals:           make(map[string]value.Named),
		namedMetadataDefs: make(map[string]*metadata.NamedMetadataDef),
		metadataDefs:      make(map[string]*metadata.MetadataDef),
	}
}
