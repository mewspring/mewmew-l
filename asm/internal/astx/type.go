package astx

import (
	"strconv"
	"strings"

	"github.com/mewmew/l/ir/types"
	"github.com/pkg/errors"
)

// NewIntType returns a new integer type corresponding to the given token.
func NewIntType(tok interface{}) (*types.IntType, error) {
	s := String(tok)
	if !strings.HasPrefix(s, "i") {
		return nil, errors.Errorf("invalid integer type %q", s)
	}
	s = s[len("i"):]
	bits, err := strconv.ParseInt(s, 10, 64)
	if err != nil {
		return nil, errors.WithStack(err)
	}
	return &types.IntType{
		BitSize: bits,
	}, nil
}
