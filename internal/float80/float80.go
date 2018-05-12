// Package float80 implements the 80-bit IEEE 754 extended precision floating-
// point format.
package float80

import (
	"fmt"
	"math"
	"math/big"
	"strconv"
)

// Float80 represents an 80-bit IEEE 754 extended precision floating-point
// value, in x86 extended precision format.
//
// References:
//    https://en.wikipedia.org/wiki/Extended_precision#x86_extended_precision_format
type Float80 struct {
	// Sign and exponent.
	//
	//    1 bit:   sign
	//    15 bits: exponent
	se uint16
	// Integer part and fraction.
	//
	//    1 bit:   integer part
	//    63 bits: fraction
	m uint64
}

// Bits returns the IEEE 754 binary representation of f, with the sign and
// exponent in se and the mantissa in m.
func (f Float80) Bits() (se uint16, m uint64) {
	return f.se, f.m
}

// Bytes returns the x86 extended precision binary representation of f as a byte
// slice.
func (f Float80) Bytes() []byte {
	return []byte(f.String())
}

// String returns the IEEE 754 binary representation of f as a string,
// containing 10 bytes in hexadecimal format.
func (f Float80) String() string {
	return fmt.Sprintf("%04X%016X", f.se, f.m)
}

// Float64 returns the float64 representation of f.
func (f Float80) Float64() float64 {
	se := uint64(f.se)
	m := f.m
	// 1 bit: sign
	sign := se >> 15
	// 15 bits: exponent
	exp := se & 0x7FFF
	// Adjust for exponent bias.
	//
	// === [ binary64 ] =========================================================
	//
	// Exponent bias 1023.
	//
	//    +===========================+=======================+
	//    | Exponent (in binary)      | Notes                 |
	//    +===========================+=======================+
	//    | 00000000000               | zero/subnormal number |
	//    +---------------------------+-----------------------+
	//    | 00000000001 - 11111111110 | normalized value      |
	//    +---------------------------+-----------------------+
	//    | 11111111111               | infinity/NaN          |
	//    +---------------------------+-----------------------+
	//
	// References:
	//    https://en.wikipedia.org/wiki/Double-precision_floating-point_format#Exponent_encoding
	exp64 := int64(exp) - 16383 + 1023
	switch {
	case exp == 0:
		// exponent is all zeroes.
		exp64 = 0
	case exp == 0x7FFF:
		switch m {
		case 0xC000000000000000:
			// Handle NaN.
			return math.NaN()
		}
		// exponent is all ones.
		exp64 = 0x7FF
	default:
	}
	// 63 bits: fraction
	frac := m & 0x7FFFFFFFFFFFFFFF
	// Sign, exponent and fraction of binary64.
	//
	//    1 bit:   sign
	//    11 bits: exponent
	//    52 bits: fraction
	//
	// References:
	//    https://en.wikipedia.org/wiki/Double-precision_floating-point_format#IEEE_754_double-precision_binary_floating-point_format:_binary64
	bits := sign<<63 | uint64(exp64)<<52 | frac>>11
	return math.Float64frombits(bits)
}

// BigFloat returns the *big.Float representation of f.
func (f Float80) BigFloat() *big.Float {
	panic("not yet implemented")
}

// NewFromBits returns a new 80-bit floating-point value based on the sign,
// exponent and mantissa bits.
func NewFromBits(se uint16, m uint64) Float80 {
	return Float80{
		se: se,
		m:  m,
	}
}

// NewFromBytes returns a new 80-bit floating-point value based on b, which
// contains 20 bytes in hexadecimal format.
func NewFromBytes(b []byte) Float80 {
	return NewFromString(string(b))
}

// NewFromString returns a new 80-bit floating-point value based on s, which
// contains 20 bytes in hexadecimal format.
func NewFromString(s string) Float80 {
	if len(s) != 20 {
		panic(fmt.Errorf("invalid length of float80 hexadecimal representation, expected 20, got %d", len(s)))
	}
	se, err := strconv.ParseUint(s[:4], 16, 16)
	if err != nil {
		panic(err)
	}
	m, err := strconv.ParseUint(s[4:], 16, 64)
	if err != nil {
		panic(err)
	}
	return NewFromBits(uint16(se), m)
}

// NewFromFloat64 returns the nearest 80-bit floating-point value for x.
func NewFromFloat64(x float64) Float80 {
	// Sign, exponent and fraction of binary64.
	//
	//    1 bit:   sign
	//    11 bits: exponent
	//    52 bits: fraction
	bits := math.Float64bits(x)
	// 1 bit: sign
	sign := uint16(bits >> 63)
	// 11 bits: exponent
	exp := bits >> 52 & 0x7FF
	// 52 bits: fraction
	frac := bits & 0xFFFFFFFFFFFFF

	if exp == 0 && frac == 0 {
		// zero value.
		se := sign << 15
		return Float80{se: se}
	}

	// Sign, exponent and fraction of binary80.
	//
	//    1 bit:   sign
	//    15 bits: exponent
	//    1 bit:   integer part
	//    63 bits: fraction

	// 15 bits: exponent.
	//
	// Exponent bias 1023  (binary64)
	// Exponent bias 16383 (binary80)
	exp80 := int64(exp) - 1023 + 16383
	// 63 bits: fraction.
	//
	frac80 := frac << 11
	switch {
	case exp == 0:
		exp80 = 0
	case exp == 0x7FF:
		exp80 = 0x7FFF
	}
	se := sign<<15 | uint16(exp80)
	// Integer part set to specify normalized value.

	// Handle NaN.
	if math.IsNaN(x) {
		return NewFromBits(se, 0xC000000000000000)
	}

	m := 0x8000000000000000 | frac80
	return NewFromBits(se, m)
}
