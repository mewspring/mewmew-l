package ast

import (
	"fmt"
	"log"

	"github.com/mewmew/l/ir/types"
	"github.com/pkg/errors"
)

// --- [ Floating-point Constants ] --------------------------------------------

// A FloatConst is an LLVM IR floating-point constant.
type FloatConst struct {
	X string
}

// String returns the string representation of the floating-point constant as a
// type-value pair.
func (c *FloatConst) String() string {
	return fmt.Sprintf("%v %v", c.Type(), c.Ident())
}

// Type returns the type of the floating-point constant.
func (c *FloatConst) Type() types.Type {
	err := errors.Errorf("ast.FloatConst.Type: unintended use of Type for constant %v; type resolution not complete", c.Ident())
	log.Fatalf("%+v", err)
	panic(fmt.Errorf("ast.FloatConst.Type: unintended use of Type for constant %v; type resolution not complete", c.Ident()))
}

// Ident returns the identifier associated with the floating-point constant.
func (c *FloatConst) Ident() string {
	// float_lit
	return c.X
}
