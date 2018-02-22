package ast

// === [ Identifiers ] =========================================================

// --- [ Global Identifiers ] --------------------------------------------------

type GlobalIdent string

func (l GlobalIdent) String() string {
	return string(l)
}

// --- [ Local Identifiers ] ---------------------------------------------------

type LocalIdent string

func (l LocalIdent) String() string {
	return string(l)
}

// --- [ Label Identifiers ] ---------------------------------------------------

type LabelIdent string

// --- [ Attribute Group Identifiers ] -----------------------------------------

type AttrGroupID string

// --- [ Comdat Identifiers ] --------------------------------------------------

type ComdatName string

// --- [ Metadata Identifiers ] ------------------------------------------------

type MetadataName string

type MetadataID string
