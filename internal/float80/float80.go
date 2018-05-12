// Package float80 implements the 80-bit IEEE 754 extended precision floating-
// point format.
package float80

import (
	"fmt"
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
	panic("not yet implemented")
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
	panic("not yet implemented")
}
