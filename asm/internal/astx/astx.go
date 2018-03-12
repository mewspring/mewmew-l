// Package astx defines the Gocc semantic actions to parse LLVM IR into an
// abstract syntax tree.
package astx

import (
	"strconv"

	"github.com/mewmew/l/asm/internal/token"
	"github.com/mewmew/l/internal/enc"
	"github.com/mewmew/l/ir"
	"github.com/mewmew/l/ir/types"
	"github.com/pkg/errors"
)

// String returns the string corresponding to the given token.
func String(tok interface{}) string {
	s := tok.(*token.Token)
	return string(s.Lit)
}

// UnquoteString returns the unquoted string corresponding to the given string
// literal.
func UnquoteString(tok interface{}) string {
	return enc.Unquote(String(tok))
}

// Int returns the integer literal corresponding to the given token.
func Int(tok interface{}) int64 {
	s := String(tok)
	x, err := strconv.ParseInt(s, 10, 64)
	if err != nil {
		panic(err)
	}
	return x
}

// Label returns a label based on the given label type and name.
func Label(typ, name interface{}) *ir.BasicBlock {
	if _, ok := typ.(*types.LabelType); !ok {
		panic(errors.Errorf(`invalid label type, expected *ast.LabelType, got %T`, typ))
	}
	return &ir.BasicBlock{
		Name: LocalIdent(name),
	}
}
