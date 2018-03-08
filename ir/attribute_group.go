package ir

import (
	"fmt"
	"strings"

	"github.com/mewmew/l/ll"
)

// ~~~ [ Attribute Group Definition ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// AttrGroupDef is a attribute group definition.
type AttrGroupDef struct {
	ID        string // AttrGroupID
	FuncAttrs []ll.FuncAttribute
}

// String returns the string representation of the attribute group definition.
func (a *AttrGroupDef) String() string {
	return a.ID
}

// Def returns the LLVM syntax representation of the attribute group definition.
func (a *AttrGroupDef) Def() string {
	// "attributes" AttrGroupID "=" "{" FuncAttrs "}"
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "attributes %v = { ", a.ID)
	for i, attr := range a.FuncAttrs {
		if i != 0 {
			buf.WriteString(" ")
		}
		// Note, alignment is printed as `align = 8` in attribute groups.
		if attr, ok := attr.(*ll.Alignment); ok {
			fmt.Fprintf(buf, "align = %d", attr.Align)
			continue
		}
		buf.WriteString(attr.String())
	}
	buf.WriteString(" }")
	return buf.String()
}
