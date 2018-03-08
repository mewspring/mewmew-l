package ir

import (
	"fmt"
	"strings"

	"github.com/mewmew/l/ir/value"
)

// ~~~ [ Use-list Order Directives ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// UseListOrder is a use-list order directive.
type UseListOrder struct {
	Value   value.Value
	Indices []int64
}

// Def returns the LLVM syntax representation of the use-list order directive
// definition.
func (u *UseListOrder) Def() string {
	//  "uselistorder" Type Value "," "{" IndexList "}"
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "uselistorder %v, {", u.Value)
	for i, index := range u.Indices {
		if i != 0 {
			buf.WriteString(", ")
		}
		fmt.Fprintf(buf, "%v", index)
	}
	buf.WriteString("}")
	return buf.String()
}

// UseListOrderBB is a basic block specific use-list order directive.
type UseListOrderBB struct {
	// Note, Func is of type *ast.GlobalIdent in the AST. Stored during
	// translation as &ir.Function{Name: name.(*ast.GlobalIdent).Name}; a nil
	// RetType is used to identify AST functions.

	Func *Function

	// Note, Block is of type *ast.LocalIdent in the AST. Stored during
	// translation as &ir.BasicBlock{Name: name.(*ast.LocalIdent).Name}; a nil
	// Terminator is used to identify AST basic blocks.

	Block   *BasicBlock
	Indices []int64
}

// Def returns the LLVM syntax representation of the basic block specific use-
// list order directive definition.
func (u *UseListOrderBB) Def() string {
	//  "uselistorder_bb" GlobalIdent "," LocalIdent "," "{" IndexList "}"
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "uselistorder_bb %v, %v, {", u.Func.Ident(), u.Block.Ident())
	for i, index := range u.Indices {
		if i != 0 {
			buf.WriteString(", ")
		}
		fmt.Fprintf(buf, "%v", index)
	}
	buf.WriteString("}")
	return buf.String()
}
