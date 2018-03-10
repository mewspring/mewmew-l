package ast

// --- [ metadata.MDField ] ----------------------------------------------------

// IsMDField ensures that only metadata fields can be assigned to the
// metadata.MDField interface.
func (*TypeValue) IsMDField()  {}
func (*MetadataID) IsMDField() {}

// --- [ metadata.Metadata ] ---------------------------------------------------

// IsMetadata ensures that only metadata can be assigned to the ast.Metadata
// interface.
func (*TypeValue) IsMetadata()  {}
func (*MetadataID) IsMetadata() {}

// --- [ metadata.MDNode ] -----------------------------------------------------

// IsMDNode ensures that only metadata nodes can be assigned to the ast.MDNode
// interface.
func (*MetadataID) IsMDNode() {}

// --- [ metadata.IntOrMDField ] -----------------------------------------------

// IsIntOrMDField ensures that only intergers and metadata fields can be
// assigned to the ast.IntOrMDField interface.
func (*TypeValue) IsIntOrMDField()  {}
func (*MetadataID) IsIntOrMDField() {}

// --- [ metadata.MetadataNode ] -----------------------------------------------

// IsMetadataNode ensures that only netadata nodes can be assigned to the
// ast.MetadataNode interface.
func (*MetadataID) IsMetadataNode() {}

// --- [ ll.FuncAttribute ] ----------------------------------------------------

// IsFuncAttribute ensures that only function attributes can be assigned to the
// ast.FuncAttribute interface.
func (*AttrGroupID) IsFuncAttribute() {}

// --- [ ll.Argument ] ---------------------------------------------------------

// IsArgument ensures that only function call arguments can be assigned to the
// ast.Argument interface.
func (*TypeValue) IsArgument()     {} // used as exception argument
func (*MetadataValue) IsArgument() {}

// --- [ constant.Constant ] ---------------------------------------------------

// IsConstant ensures that only constants can be assigned to the ast.Constant
// interface.
func (*TypeConst) IsConstant()   {}
func (*FloatConst) IsConstant()  {}
func (*GlobalIdent) IsConstant() {}

// --- [ ll.ExceptionScope ] ---------------------------------------------------

// IsExceptionScope ensures that only exception scopes can be assigned to the
// ast.ExceptionScope interface.
func (*LocalIdent) IsExceptionScope() {}

// --- [ ast.TopLevelEntity ] --------------------------------------------------

// A TopLevelEntity is a top-level entity of a module.
type TopLevelEntity interface {
	// Def returns the LLVM syntax representation of the top-level entity
	// definition.
	Def() string
	// IsTopLevelEntity ensures that only top-level entities can be assigned to
	// the ast.TopLevelEntity interface.
	IsTopLevelEntity()
}

// IsTopLevelEntity ensures that only top-level entities can be assigned to the
// ast.TopLevelEntity interface.
//func (*SourceFilename) IsTopLevelEntity() {}
//func (*DataLayout) IsTopLevelEntity()     {}
//func (*TargetTriple) IsTopLevelEntity()   {}

//func (*ModuleAsm) IsTopLevelEntity()    {}
func (*NamedType) IsTopLevelEntity() {}

//func (*ComdatDef) IsTopLevelEntity()    {}
//func (*Global) IsTopLevelEntity()       {}
//func (*IndirectSymbol) IsTopLevelEntity() {}

//func (*Function) IsTopLevelEntity()       {}
//func (*UseListOrder) IsTopLevelEntity()   {}
//func (*UseListOrderBB) IsTopLevelEntity() {}
