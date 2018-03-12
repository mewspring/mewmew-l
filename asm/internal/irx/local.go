package irx

import (
	"fmt"

	"github.com/mewmew/l/ir/value"
)

// local returns the LLVM IR local corresponding to the given AST local
// identifier.
func (m *Module) local(name string) value.Named {
	if v, ok := m.locals[name]; ok {
		return v
	}
	panic(fmt.Errorf("unable to locate local %q", name))
}
