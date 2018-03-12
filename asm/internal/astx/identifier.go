package astx

import (
	"strings"

	"github.com/mewmew/l/asm/ast"
	"github.com/mewmew/l/internal/enc"
	"github.com/pkg/errors"
)

// NewGlobalIdent returns a new global identifier corresponding to the given
// token.
func NewGlobalIdent(tok interface{}) (*ast.GlobalIdent, error) {
	ident := String(tok)
	const prefix = "@"
	if !strings.HasPrefix(ident, prefix) {
		return nil, errors.Errorf("invalid global identifier %q; missing '%v' prefix", ident, prefix)
	}
	ident = ident[len(prefix):]
	if strings.HasPrefix(ident, `"`) && strings.HasSuffix(ident, `"`) {
		ident = enc.Unquote(ident)
	}
	return &ast.GlobalIdent{
		Name: ident,
	}, nil
}

// NewLocalIdent returns a new local identifier corresponding to the given
// token.
func NewLocalIdent(tok interface{}) (*ast.LocalIdent, error) {
	ident := String(tok)
	const prefix = "%"
	if !strings.HasPrefix(ident, prefix) {
		return nil, errors.Errorf("invalid local identifier %q; missing '%v' prefix", ident, prefix)
	}
	ident = ident[len(prefix):]
	if strings.HasPrefix(ident, `"`) && strings.HasSuffix(ident, `"`) {
		ident = enc.Unquote(ident)
	}
	return &ast.LocalIdent{
		Name: ident,
	}, nil
}

// NewLabelIdent returns a new label identifier corresponding to the given
// token.
func NewLabelIdent(tok interface{}) (*ast.LabelIdent, error) {
	ident := String(tok)
	const suffix = ":"
	if !strings.HasSuffix(ident, suffix) {
		return nil, errors.Errorf("invalid label identifier %q; missing '%v' suffix", ident, suffix)
	}
	ident = ident[len(suffix):]
	if strings.HasPrefix(ident, `"`) && strings.HasSuffix(ident, `"`) {
		ident = enc.Unquote(ident)
	}
	return &ast.LabelIdent{
		Name: ident,
	}, nil
}

// NewAttrGroupID returns a new attribute group ID corresponding to the given
// token.
func NewAttrGroupID(tok interface{}) (*ast.AttrGroupID, error) {
	id := String(tok)
	const prefix = "#"
	if !strings.HasPrefix(id, prefix) {
		return nil, errors.Errorf("invalid attribute group ID %q; missing '%v' prefix", id, prefix)
	}
	id = id[len(prefix):]
	return &ast.AttrGroupID{
		ID: id,
	}, nil
}

// NewComdatName returns a new comdat name corresponding to the given token.
func NewComdatName(tok interface{}) (*ast.ComdatName, error) {
	name := String(tok)
	const prefix = "$"
	if !strings.HasPrefix(name, prefix) {
		return nil, errors.Errorf("invalid comdat name %q; missing '%v' prefix", name, prefix)
	}
	name = name[len(prefix):]
	if strings.HasPrefix(name, `"`) && strings.HasSuffix(name, `"`) {
		name = enc.Unquote(name)
	}
	return &ast.ComdatName{
		Name: name,
	}, nil
}

// NewMetadataName returns a new metadata name corresponding to the given token.
func NewMetadataName(tok interface{}) (*ast.MetadataName, error) {
	name := String(tok)
	const prefix = "!"
	if !strings.HasPrefix(name, prefix) {
		return nil, errors.Errorf("invalid metadata name %q; missing '%v' prefix", name, prefix)
	}
	name = name[len(prefix):]
	if strings.Contains(name, `\`) {
		name = enc.Unescape(name)
	}
	return &ast.MetadataName{
		Name: name,
	}, nil
}

// NewMetadataID returns a new metadata ID corresponding to the given token.
func NewMetadataID(tok interface{}) (*ast.MetadataID, error) {
	id := String(tok)
	const prefix = "!"
	if !strings.HasPrefix(id, prefix) {
		return nil, errors.Errorf("invalid metadata ID %q; missing '%v' prefix", id, prefix)
	}
	id = id[len(prefix):]
	return &ast.MetadataID{
		ID: id,
	}, nil
}

// GlobalIdent returns the string corresponding to the given global identifier
// token. A nil global identifier corresponds to the empty string.
func GlobalIdent(ident interface{}) string {
	if ident == nil {
		return ""
	}
	return ident.(*ast.GlobalIdent).Name
}

// LocalIdent returns the string corresponding to the given local identifier
// token. A nil local identifier corresponds to the empty string.
func LocalIdent(ident interface{}) string {
	if ident == nil {
		return ""
	}
	return ident.(*ast.LocalIdent).Name
}

// LabelIdent returns the string corresponding to the given label identifier
// token. A nil label identifier corresponds to the empty string.
func LabelIdent(ident interface{}) string {
	if ident == nil {
		return ""
	}
	return ident.(*ast.LabelIdent).Name
}

// AttrGroupID returns the string corresponding to the given attribute group ID
// token. A nil attribute group ID corresponds to the empty string.
func AttrGroupID(id interface{}) string {
	if id == nil {
		return ""
	}
	return id.(*ast.AttrGroupID).ID
}

// ComdatName returns the string corresponding to the given comdat name token. A
// nil comdat name corresponds to the empty string.
func ComdatName(name interface{}) string {
	if name == nil {
		return ""
	}
	return name.(*ast.ComdatName).Name
}

// MetadataName returns the string corresponding to the given metadata name
// token. A nil metadata name corresponds to the empty string.
func MetadataName(name interface{}) string {
	if name == nil {
		return ""
	}
	return name.(*ast.MetadataName).Name
}

// MetadataID returns the string corresponding to the given metadata ID
// token. A nil metadata ID corresponds to the empty string.
func MetadataID(id interface{}) string {
	if id == nil {
		return ""
	}
	return id.(*ast.MetadataID).ID
}
