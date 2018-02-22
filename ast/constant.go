package ast

// === [ Constants ] ===========================================================

type Constant interface {
	isConstant()
}

// --- [ Boolean Constants ] ---------------------------------------------------

type BoolConst bool

// --- [ Integer Constants ] ---------------------------------------------------

type IntConst int64

// --- [ Floating-point Constants ] --------------------------------------------

type FloatConst float64

// --- [ Null Pointer Constants ] ----------------------------------------------

type NullConst struct{}

// --- [ Token Constants ] -----------------------------------------------------

type NoneConst struct{}

// --- [ Structure Constants ] -------------------------------------------------

type StructConst struct {
	Packed bool
	Fields []TypeConstant
}

// --- [ Array Constants ] -----------------------------------------------------

type ArrayConst struct {
	Elems []TypeConstant
}

type CharArrayConst struct {
	Value string
}

// --- [ Vector Constants ] ----------------------------------------------------

type VectorConst struct {
	Elems []TypeConstant
}

// --- [ Zero Initialization Constants ] ---------------------------------------

type ZeroInitializerConst struct{}

// --- [ Undefined Values ] ----------------------------------------------------

type UndefConst struct{}

// --- [ Addresses of Basic Blocks ] -------------------------------------------

type BlockAddressConst struct {
	Func  GlobalIdent
	Block LocalIdent
}

func (BoolConst) isConstant()            {}
func (IntConst) isConstant()             {}
func (FloatConst) isConstant()           {}
func (NullConst) isConstant()            {}
func (NoneConst) isConstant()            {}
func (StructConst) isConstant()          {}
func (ArrayConst) isConstant()           {}
func (CharArrayConst) isConstant()       {}
func (VectorConst) isConstant()          {}
func (ZeroInitializerConst) isConstant() {}
func (GlobalIdent) isConstant()          {}
func (UndefConst) isConstant()           {}
func (BlockAddressConst) isConstant()    {}

// ConstantExpr
func (AddExpr) isConstant()            {}
func (FAddExpr) isConstant()           {}
func (SubExpr) isConstant()            {}
func (FSubExpr) isConstant()           {}
func (MulExpr) isConstant()            {}
func (FMulExpr) isConstant()           {}
func (UDivExpr) isConstant()           {}
func (SDivExpr) isConstant()           {}
func (FDivExpr) isConstant()           {}
func (URemExpr) isConstant()           {}
func (SRemExpr) isConstant()           {}
func (FRemExpr) isConstant()           {}
func (ShlExpr) isConstant()            {}
func (LShrExpr) isConstant()           {}
func (AShrExpr) isConstant()           {}
func (AndExpr) isConstant()            {}
func (OrExpr) isConstant()             {}
func (XorExpr) isConstant()            {}
func (ExtractElementExpr) isConstant() {}
func (InsertElementExpr) isConstant()  {}
func (ShuffleVectorExpr) isConstant()  {}
func (ExtractValueExpr) isConstant()   {}
func (InsertValueExpr) isConstant()    {}
func (GetElementPtrExpr) isConstant()  {}
func (TruncExpr) isConstant()          {}
func (ZExtExpr) isConstant()           {}
func (SExtExpr) isConstant()           {}
func (FPTruncExpr) isConstant()        {}
func (FPExtExpr) isConstant()          {}
func (FPToUIExpr) isConstant()         {}
func (FPToSIExpr) isConstant()         {}
func (UIToFPExpr) isConstant()         {}
func (SIToFPExpr) isConstant()         {}
func (PtrToIntExpr) isConstant()       {}
func (IntToPtrExpr) isConstant()       {}
func (BitCastExpr) isConstant()        {}
func (AddrSpaceCastExpr) isConstant()  {}
func (ICmpExpr) isConstant()           {}
func (FCmpExpr) isConstant()           {}
func (SelectExpr) isConstant()         {}
