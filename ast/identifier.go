package ast

// === [ Identifiers ] =========================================================

// --- [ Global Identifiers ] --------------------------------------------------

type GlobalIdent struct {
	Ident string
}

func (i *GlobalIdent) String() string {
	return i.Ident
}

// --- [ Local Identifiers ] ---------------------------------------------------

type LocalIdent struct {
	Ident string
}

func (i *LocalIdent) String() string {
	return i.Ident
}

// --- [ Label Identifiers ] ---------------------------------------------------

type LabelIdent struct {
	Ident string
}

func (i *LabelIdent) String() string {
	return i.Ident
}

// --- [ Attribute Group Identifiers ] -----------------------------------------

type AttrGroupID struct {
	ID string
}

func (i *AttrGroupID) String() string {
	return i.ID
}

// --- [ Comdat Identifiers ] --------------------------------------------------

type ComdatName struct {
	Name string
}

func (i *ComdatName) String() string {
	return i.Name
}

// --- [ Metadata Identifiers ] ------------------------------------------------

type MetadataName struct {
	Name string
}

func (i *MetadataName) String() string {
	return i.Name
}

type MetadataID struct {
	ID string
}

func (i *MetadataID) String() string {
	return i.ID
}
