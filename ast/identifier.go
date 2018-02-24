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

// --- [ Attribute Group Identifiers ] -----------------------------------------

type AttrGroupID struct {
	ID string
}

// --- [ Comdat Identifiers ] --------------------------------------------------

type ComdatName struct {
	Name string
}

// --- [ Metadata Identifiers ] ------------------------------------------------

type MetadataName struct {
	Name string
}

type MetadataID struct {
	ID string
}
