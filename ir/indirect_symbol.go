package ir

import (
	"fmt"
	"strings"

	"github.com/mewmew/l/ir/types"
)

// ~~~ [ Indirect Symbol Definition ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// An IndirectSymbol is an alias or an ifunc.
type IndirectSymbol struct {
	// Alias or IFunc name (*GlobalIdent).
	Name            string
	Linkage         Linkage
	Preemption      Preemption
	Visibility      Visibility
	DLLStorageClass DLLStorageClass
	ThreadLocal     *ThreadLocal
	UnnamedAddr     UnnamedAddr
	Alias           bool // alias if true, ifunc otherwise.
	Typ             types.Type
	Const           Constant // aliasee or resolver
}

// String returns the string representation of the indirect symbol as a type-
// value pair.
func (s *IndirectSymbol) String() string {
	return fmt.Sprintf("%v %v", s.Type(), s.Ident())
}

// Type returns the type of the indirect symbol variable.
func (s *IndirectSymbol) Type() types.Type {
	return s.Typ
}

// Ident returns the identifier associated with the indirect symbol.
func (s *IndirectSymbol) Ident() string {
	return s.Name
}

// Def returns the LLVM syntax representation of the indirect symbol definition.
func (s *IndirectSymbol) Def() string {
	// GlobalIdent "=" OptLinkage OptPreemptionSpecifier OptVisibility OptDLLStorageClass OptThreadLocal OptUnnamedAddr Alias Type "," Type Constant
	buf := &strings.Builder{}
	fmt.Fprintf(buf, "%v =", s.Name)
	if s.Linkage != LinkageNone {
		fmt.Fprintf(buf, " %v", s.Linkage)
	}
	if s.Preemption != PreemptionNone {
		fmt.Fprintf(buf, " %v", s.Preemption)
	}
	if s.Visibility != VisibilityNone {
		fmt.Fprintf(buf, " %v", s.Visibility)
	}
	if s.DLLStorageClass != DLLStorageClassNone {
		fmt.Fprintf(buf, " %v", s.DLLStorageClass)
	}
	if s.ThreadLocal != nil {
		fmt.Fprintf(buf, " %v", s.ThreadLocal)
	}
	if s.UnnamedAddr != UnnamedAddrNone {
		fmt.Fprintf(buf, " %v", s.UnnamedAddr)
	}
	if s.Alias {
		buf.WriteString(" alias")
	} else {
		buf.WriteString(" ifunc")
	}
	fmt.Fprintf(buf, " %v, %v", s.Typ, s.Const)
	return buf.String()
}
