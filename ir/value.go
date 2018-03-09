package ir

import (
	"fmt"
	"strings"

	"github.com/mewmew/l/internal/enc"
	"github.com/mewmew/l/ir/types"
)

// === [ Values ] ==============================================================

// --- [ Inline Assembler Expressions ] ----------------------------------------

// InlineAsm is an inline assembly expression.
type InlineAsm struct {
	SideEffect   bool
	AlignStack   bool
	IntelDialect bool
	Asm          string
	Constraint   string
}

// String returns the string representation of the inline assembly expression as
// a type-value pair.
func (i *InlineAsm) String() string {
	return fmt.Sprintf("%v %v", i.Type(), i.Ident())
}

// Type returns the type of the inline assembly expression.
func (i *InlineAsm) Type() types.Type {
	// TODO: Figure out how to handle the type of inline assembly expressions.
	panic("ast.InlineAsm.Type: unintended use of Type; type resolution not complete")
}

// Ident returns the identifier associated with the inline assembly expression.
func (i *InlineAsm) Ident() string {
	// "asm" OptSideEffect OptAlignStack OptIntelDialect StringLit "," StringLit
	buf := &strings.Builder{}
	buf.WriteString("asm")
	if i.SideEffect {
		buf.WriteString(" sideeffect")
	}
	if i.AlignStack {
		buf.WriteString(" alignstack")
	}
	if i.IntelDialect {
		buf.WriteString(" inteldialect")
	}
	fmt.Fprintf(buf, " %v, %v", enc.Quote(i.Asm), enc.Quote(i.Constraint))
	return buf.String()
}
