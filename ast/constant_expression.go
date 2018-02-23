package ast

// --- [ Binary expressions ] --------------------------------------------------

type AddExpr struct {
	OverflowFlags []OverflowFlag
	X, Y          *TypeConst
}

type FAddExpr struct {
	X, Y *TypeConst
}

type SubExpr struct {
	OverflowFlags []OverflowFlag
	X, Y          *TypeConst
}

type FSubExpr struct {
	X, Y *TypeConst
}

type MulExpr struct {
	OverflowFlags []OverflowFlag
	X, Y          *TypeConst
}

type FMulExpr struct {
	X, Y *TypeConst
}

type UDivExpr struct {
	Exact bool
	X, Y  *TypeConst
}

type SDivExpr struct {
	Exact bool
	X, Y  *TypeConst
}

type FDivExpr struct {
	X, Y *TypeConst
}

type URemExpr struct {
	X, Y *TypeConst
}

type SRemExpr struct {
	X, Y *TypeConst
}

type FRemExpr struct {
	X, Y *TypeConst
}

// --- [ Bitwise expressions ] -------------------------------------------------

type ShlExpr struct {
	OverflowFlags []OverflowFlag
	X, Y          *TypeConst
}

type LShrExpr struct {
	Exact bool
	X, Y  *TypeConst
}

type AShrExpr struct {
	Exact bool
	X, Y  *TypeConst
}

type AndExpr struct {
	X, Y *TypeConst
}

type OrExpr struct {
	X, Y *TypeConst
}

type XorExpr struct {
	X, Y *TypeConst
}

// --- [ Vector expressions ] --------------------------------------------------

type ExtractElementExpr struct {
	X     *TypeConst
	Index *TypeConst
}

type InsertElementExpr struct {
	X     *TypeConst
	Elem  *TypeConst
	Index *TypeConst
}

type ShuffleVectorExpr struct {
	X, Y *TypeConst
	Mask *TypeConst
}

// --- [ Aggregate expressions ] -----------------------------------------------

type ExtractValueExpr struct {
	X       *TypeConst
	Indices []int64
}

type InsertValueExpr struct {
	X       *TypeConst
	Elem    *TypeConst
	Indices []int64
}

// --- [ Memory expressions ] --------------------------------------------------

type GetElementPtrExpr struct {
	InBounds bool
	ElemType Type
	Src      *TypeConst
	Indices  []*GEPConstIndex
}

type GEPConstIndex struct {
	InRange bool
	Index   *TypeConst
}

// --- [ Conversion expressions ] ----------------------------------------------

type TruncExpr struct {
	From *TypeConst
	To   Type
}

type ZExtExpr struct {
	From *TypeConst
	To   Type
}

type SExtExpr struct {
	From *TypeConst
	To   Type
}

type FPTruncExpr struct {
	From *TypeConst
	To   Type
}

type FPExtExpr struct {
	From *TypeConst
	To   Type
}

type FPToUIExpr struct {
	From *TypeConst
	To   Type
}

type FPToSIExpr struct {
	From *TypeConst
	To   Type
}

type UIToFPExpr struct {
	From *TypeConst
	To   Type
}

type SIToFPExpr struct {
	From *TypeConst
	To   Type
}

type PtrToIntExpr struct {
	From *TypeConst
	To   Type
}

type IntToPtrExpr struct {
	From *TypeConst
	To   Type
}

type BitCastExpr struct {
	From *TypeConst
	To   Type
}

type AddrSpaceCastExpr struct {
	From *TypeConst
	To   Type
}

// --- [ Other expressions ] ---------------------------------------------------

type ICmpExpr struct {
	Pred IPred
	X, Y *TypeConst
}

type FCmpExpr struct {
	Pred FPred
	X, Y *TypeConst
}

type SelectExpr struct {
	Cond *TypeConst
	X, Y *TypeConst
}
