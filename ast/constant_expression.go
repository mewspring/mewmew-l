package ast

// --- [ Binary expressions ] --------------------------------------------------

type AddExpr struct {
	OverflowFlags []OverflowFlag
	X, Y          TypeConstant
}

type FAddExpr struct {
	X, Y TypeConstant
}

type SubExpr struct {
	OverflowFlags []OverflowFlag
	X, Y          TypeConstant
}

type FSubExpr struct {
	X, Y TypeConstant
}

type MulExpr struct {
	OverflowFlags []OverflowFlag
	X, Y          TypeConstant
}

type FMulExpr struct {
	X, Y TypeConstant
}

type UDivExpr struct {
	Exact bool
	X, Y  TypeConstant
}

type SDivExpr struct {
	Exact bool
	X, Y  TypeConstant
}

type FDivExpr struct {
	X, Y TypeConstant
}

type URemExpr struct {
	X, Y TypeConstant
}

type SRemExpr struct {
	X, Y TypeConstant
}

type FRemExpr struct {
	X, Y TypeConstant
}

// --- [ Bitwise expressions ] -------------------------------------------------

type ShlExpr struct {
	OverflowFlags []OverflowFlag
	X, Y          TypeConstant
}

type LShrExpr struct {
	Exact bool
	X, Y  TypeConstant
}

type AShrExpr struct {
	Exact bool
	X, Y  TypeConstant
}

type AndExpr struct {
	X, Y TypeConstant
}

type OrExpr struct {
	X, Y TypeConstant
}

type XorExpr struct {
	X, Y TypeConstant
}

// --- [ Vector expressions ] --------------------------------------------------

type ShuffleVectorExpr struct {
	X, Y TypeConstant
	Mask TypeConstant
}

type InsertElementExpr struct {
	X     TypeConstant
	Elem  TypeConstant
	Index TypeConstant
}

type ExtractElementExpr struct {
	X     TypeConstant
	Index TypeConstant
}

// --- [ Aggregate expressions ] -----------------------------------------------

type ExtractValueExpr struct {
	X       TypeConstant
	Indices []int64
}

type InsertValueExpr struct {
	X       TypeConstant
	Elem    TypeConstant
	Indices []int64
}

// --- [ Memory expressions ] --------------------------------------------------

type GetElementPtrExpr struct {
	InBounds bool
	Elem     Type
	Src      TypeConstant
	Indices  []GEPConstIndex
}

type GEPConstIndex struct {
	InRange bool
	Index   TypeConstant
}

// --- [ Conversion expressions ] ----------------------------------------------

type TruncExpr struct {
	From TypeConstant
	To   Type
}

type ZExtExpr struct {
	From TypeConstant
	To   Type
}

type SExtExpr struct {
	From TypeConstant
	To   Type
}

type FPTruncExpr struct {
	From TypeConstant
	To   Type
}

type FPExtExpr struct {
	From TypeConstant
	To   Type
}

type FPToUIExpr struct {
	From TypeConstant
	To   Type
}

type FPToSIExpr struct {
	From TypeConstant
	To   Type
}

type UIToFPExpr struct {
	From TypeConstant
	To   Type
}

type SIToFPExpr struct {
	From TypeConstant
	To   Type
}

type PtrToIntExpr struct {
	From TypeConstant
	To   Type
}

type IntToPtrExpr struct {
	From TypeConstant
	To   Type
}

type BitCastExpr struct {
	From TypeConstant
	To   Type
}

type AddrSpaceCastExpr struct {
	From TypeConstant
	To   Type
}

// --- [ Other expressions ] ---------------------------------------------------

type ICmpExpr struct {
	Pred IPred
	X, Y TypeConstant
}

type FCmpExpr struct {
	Pred FPred
	X, Y TypeConstant
}

type SelectExpr struct {
	Cond TypeConstant
	X, Y TypeConstant
}
