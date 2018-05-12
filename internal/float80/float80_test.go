package float80_test

import (
	"math"
	"testing"

	"github.com/mewmew/l/internal/float80"
)

func TestFloat80FromString(t *testing.T) {
	golden := []struct {
		in   float80.Float80
		want float64
	}{
		{
			in:   float80.NewFromString("7FFF8000000000000000"),
			want: math.Inf(1), // inf
		},
		{
			in:   float80.NewFromString("FFFF8000000000000000"),
			want: math.Inf(-1), // -inf
		},
		{
			in:   float80.NewFromString("7FFFC000000000000000"),
			want: math.NaN(), // NaN
		},
		{
			in:   float80.NewFromString("FFFFC000000000000000"),
			want: -math.Copysign(math.NaN(), -1), // -NaN
		},
		{
			in:   float80.NewFromString("4000ADF85458A2BB4800"),
			want: math.E,
		},
		{
			in:   float80.NewFromString("C000ADF85458A2BB4800"),
			want: -math.E,
		},
		{
			in:   float80.NewFromString("4000C90FDAA22168C000"),
			want: math.Pi,
		},
		{
			in:   float80.NewFromString("C000C90FDAA22168C000"),
			want: -math.Pi,
		},
		{
			in:   float80.NewFromString("3FFFB504F333F9DE6800"),
			want: math.Sqrt2,
		},
		{
			in:   float80.NewFromString("BFFFB504F333F9DE6800"),
			want: -math.Sqrt2,
		},
		{
			in:   float80.NewFromString("3FFFB8AA3B295C17F000"),
			want: math.Log2E,
		},
		{
			in:   float80.NewFromString("BFFFB8AA3B295C17F000"),
			want: -math.Log2E,
		},
		{
			in:   float80.NewFromString("3FFEB17217F7D1CF7800"),
			want: math.Ln2,
		},
		{
			in:   float80.NewFromString("BFFEB17217F7D1CF7800"),
			want: -math.Ln2,
		},
		{
			in:   float80.NewFromString("00000000000000000000"),
			want: 0.0,
		},
		{
			in:   float80.NewFromString("80000000000000000000"),
			want: math.Copysign(0.0, -1), // -0.0
		},
		{
			in:   float80.NewFromString("3FFF8000000000000000"),
			want: 1,
		},
		{
			in:   float80.NewFromString("BFFF8000000000000000"),
			want: -1,
		},
		{
			in:   float80.NewFromString("40008000000000000000"),
			want: 2,
		},
		{
			in:   float80.NewFromString("C0008000000000000000"),
			want: -2,
		},
		{
			in:   float80.NewFromString("4000C000000000000000"),
			want: 3,
		},
		{
			in:   float80.NewFromString("C000C000000000000000"),
			want: -3,
		},
		{
			in:   float80.NewFromString("3FFE8000000000000000"),
			want: 0.5,
		},
		{
			in:   float80.NewFromString("BFFE8000000000000000"),
			want: -0.5,
		},
		{
			in:   float80.NewFromString("3FFD8000000000000000"),
			want: 0.25,
		},
		{
			in:   float80.NewFromString("BFFD8000000000000000"),
			want: -0.25,
		},
		{
			in:   float80.NewFromString("3FFC8000000000000000"),
			want: 0.125,
		},
		{
			in:   float80.NewFromString("BFFC8000000000000000"),
			want: -0.125,
		},
		{
			in:   float80.NewFromString("3FFBFBE76C8B43958000"),
			want: 0.123,
		},
		{
			in:   float80.NewFromString("BFFBFBE76C8B43958000"),
			want: -0.123,
		},
		{
			in:   float80.NewFromString("3FFDAAAA3AD18D25F000"),
			want: 0.33333,
		},
		{
			in:   float80.NewFromString("BFFDAAAA3AD18D25F000"),
			want: -0.33333,
		},
	}
	for i, g := range golden {
		got := g.in.Float64()
		wbits, gbits := math.Float64bits(g.want), math.Float64bits(got)
		if wbits != gbits {
			t.Errorf("i=%d: mismatch; expected %v, got %v (bits: expected 0x%016X, got 0x%016X)", i, g.want, got, wbits, gbits)
		}
	}
}

func TestFloat80Float64(t *testing.T) {
	golden := []float64{
		math.Inf(1),                    // inf
		math.Inf(-1),                   // -inf
		math.NaN(),                     // NaN
		-math.Copysign(math.NaN(), -1), // -NaN
		math.E,
		-math.E,
		math.Pi,
		-math.Pi,
		math.Sqrt2,
		-math.Sqrt2,
		math.Log2E,
		-math.Log2E,
		math.Ln2,
		-math.Ln2,
		0.0,
		math.Copysign(0.0, -1), // -0.0
		1,
		-1,
		2,
		-2,
		3,
		-3,
		0.5,
		-0.5,
		0.25,
		-0.25,
		0.125,
		-0.125,
		0.123,
		-0.123,
		0.33333,
		-0.33333,
	}
	for i, g := range golden {
		want := g
		f := float80.NewFromFloat64(g)
		got := f.Float64()
		wbits, gbits := math.Float64bits(want), math.Float64bits(got)
		if wbits != gbits {
			t.Errorf("i=%d: mismatch; expected %v, got %v (bits: expected 0x%016X, got 0x%016X)", i, want, got, wbits, gbits)
		}
	}
}
