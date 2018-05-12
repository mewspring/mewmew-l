package float80_test

import (
	"testing"

	"github.com/mewmew/l/internal/float80"
)

func TestFloat80(t *testing.T) {
	golden := []struct {
		in   float80.Float80
		want float64
	}{
		{
			in:   float80.NewFromString("00000000000000000000"),
			want: 0.0,
		},
		{
			in:   float80.NewFromString("80000000000000000000"),
			want: -0.0,
		},
	}
	for i, g := range golden {
		got := g.in.Float64()
		if g.want != got {
			t.Errorf("i=%d: float80 round-trip mismatch; expected %v, got %v", i, g.want, got)
		}
	}
}
