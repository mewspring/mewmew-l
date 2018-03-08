package irx

import (
	"github.com/mewmew/l/ir"
	"github.com/mewmew/l/ir/metadata"
	"github.com/mewmew/l/ir/value"
	"github.com/mewmew/l/ll"
	"github.com/mewmew/l/ll/types"
)

// A Module represents an LLVM IR module generator.
type Module struct {
	// Module being generated.
	*ir.Module

	// Per module.

	// maps from identifier to AST definition.

	// maps from local identifier to type definition.
	localIdent map[string]*types.NamedType
	// maps from comdat name to comdat definition.
	comdatName map[string]*ll.ComdatDef
	// maps from global identifier to global variable, indirect symbol, or
	// function.
	//
	//    *ir.Global
	//    *ast.IndirectSymbol
	//    *ir.Function
	globalIdent map[string]interface{}
	// maps from attribute group ID to attribute group definition.
	attrGroupID map[string]*ir.AttrGroupDef
	// maps from metadata name to named metadata definition.
	metadataName map[string]*metadata.NamedMetadataDef
	// maps from metadata ID to metadata definition.
	metadataID map[string]*metadata.MetadataDef

	// maps from identifier to IR definition.

	// maps from local identifier to type definition.
	typeDefs map[string]*types.NamedType
	// maps from global identifier to global declaration or definition.
	globals map[string]*ir.Global
	//aliases  map[string]*ir.Alias
	//ifuncs  map[string]*ir.IFunc
	// maps from attribute group ID to attribute group definition.
	attrGroupDefs map[string]*ir.AttrGroupDef
	// maps from global identifier to function declaration or definition.
	funcs map[string]*ir.Function
	// maps from metadata name to named metadata definition.
	namedMetadataDefs map[string]*metadata.NamedMetadataDef
	// maps from metadata ID to metadata definition.
	metadataDefs map[string]*metadata.MetadataDef

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

		localIdent:   make(map[string]*types.NamedType),
		comdatName:   make(map[string]*ll.ComdatDef),
		globalIdent:  make(map[string]interface{}),
		attrGroupID:  make(map[string]*ir.AttrGroupDef),
		metadataName: make(map[string]*metadata.NamedMetadataDef),
		metadataID:   make(map[string]*metadata.MetadataDef),

		typeDefs:          make(map[string]*types.NamedType),
		globals:           make(map[string]*ir.Global),
		funcs:             make(map[string]*ir.Function),
		attrGroupDefs:     make(map[string]*ir.AttrGroupDef),
		namedMetadataDefs: make(map[string]*metadata.NamedMetadataDef),
		metadataDefs:      make(map[string]*metadata.MetadataDef),
	}
}
