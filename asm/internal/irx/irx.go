package irx

import (
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

	// tracks the order of type definitions.
	typeDefNames []string
	// maps from local identifier to type definition.
	typeDefs map[string]types.Type
	// maps from comdat name to comdat definition.
	comdatDefs map[string]*ir.ComdatDef
	// maps from global identifier to global declaration or definition.
	globals map[string]*ir.Global
	// maps from global identifier to indirect symbol definitions (aliases and
	// IFuncs).
	indirectSymbols map[string]*ir.IndirectSymbol
	// maps from global identifier to function declaration or definition.
	funcs map[string]*ir.Function
	// maps from attribute group ID to attribute group definition.
	attrGroupDefs map[string]*ir.AttrGroupDef
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
		Module:            &ir.Module{},
		typeDefs:          make(map[string]types.Type),
		comdatDefs:        make(map[string]*ir.ComdatDef),
		globals:           make(map[string]*ir.Global),
		indirectSymbols:   make(map[string]*ir.IndirectSymbol),
		funcs:             make(map[string]*ir.Function),
		attrGroupDefs:     make(map[string]*ir.AttrGroupDef),
		namedMetadataDefs: make(map[string]*metadata.NamedMetadataDef),
		metadataDefs:      make(map[string]*metadata.MetadataDef),
	}
}
