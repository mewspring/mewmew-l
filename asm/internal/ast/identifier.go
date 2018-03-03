package ast

// === [ Identifiers ] =========================================================

// --- [ Global Identifiers ] --------------------------------------------------

// A GlobalIdent is a global identifier (e.g. @foo, @42).
type GlobalIdent struct {
	Ident string
}

// String returns the string representation of the global identifier.
func (i *GlobalIdent) String() string {
	// global_ident
	return i.Ident
}

// --- [ Local Identifiers ] ---------------------------------------------------

// A LocalIdent is a local identifier (e.g. %foo, %42).
type LocalIdent struct {
	Ident string
}

// String returns the string representation of the local identifier.
func (i *LocalIdent) String() string {
	// local_ident
	return i.Ident
}

// --- [ Label Identifiers ] ---------------------------------------------------

// A LabelIdent is a label identifier (e.g. foo:, 42:).
type LabelIdent struct {
	Ident string
}

// String returns the string representation of the label identifier.
func (i *LabelIdent) String() string {
	// label_ident
	return i.Ident
}

// --- [ Attribute Group Identifiers ] -----------------------------------------

// An AttrGroupID is an attribute group ID (e.g. #42).
type AttrGroupID struct {
	ID string
}

// String returns the string representation of the  attribute group ID.
func (i *AttrGroupID) String() string {
	// attr_group_id
	return i.ID
}

// --- [ Comdat Identifiers ] --------------------------------------------------

// A ComdatName is a comdat name (e.g. $foo).
type ComdatName struct {
	Name string
}

// String returns the string representation of the comdat name.
func (i *ComdatName) String() string {
	// comdat_name
	return i.Name
}

// --- [ Metadata Identifiers ] ------------------------------------------------

// A MetadataName is a metadata name (e.g. !foo).
type MetadataName struct {
	Name string
}

// String returns the string representation of the metadata name.
func (i *MetadataName) String() string {
	// metadata_name
	return i.Name
}

// A MetadataID is a metadata ID (e.g. !42).
type MetadataID struct {
	ID string
}

// String returns the string representation of the metadata ID.
func (i *MetadataID) String() string {
	// metadata_id
	return i.ID
}
