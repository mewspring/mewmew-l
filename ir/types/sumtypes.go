package types

// IsTopLevelEntity ensures that only top-level entities can be assigned to the
// ast.TopLevelEntity interface.
func (*NamedType) IsTopLevelEntity() {}
