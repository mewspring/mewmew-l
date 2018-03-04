package value_test

import (
	"github.com/mewmew/l/ir/types"
	"github.com/mewmew/l/ir/value"
)

// Ensure that each named value implements the value.Named interface.
var (
	_ value.Named = (*types.Param)(nil)
)
