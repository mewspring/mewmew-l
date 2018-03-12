package irx

import (
	"fmt"

	"github.com/kr/pretty"
	"github.com/mewmew/l/internal/enc"
	"github.com/mewmew/l/ir/value"
)

// local returns the LLVM IR local corresponding to the given AST local
// identifier.
func (m *Module) local(name string) value.Named {
	if v, ok := m.locals[name]; ok {
		return v
	}
	pretty.Println("locals:", m.locals)
	panic(fmt.Errorf("unable to locate local %q", enc.Local(name)))
}
