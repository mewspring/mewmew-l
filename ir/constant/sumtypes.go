package constant

// IsConstant ensures that only constants can be assigned to the ir.Constant
// interface.
func (*BoolConst) IsConstant()            {}
func (*IntConst) IsConstant()             {}
func (*FloatConst) IsConstant()           {}
func (*NullConst) IsConstant()            {}
func (*NoneConst) IsConstant()            {}
func (*StructConst) IsConstant()          {}
func (*ArrayConst) IsConstant()           {}
func (*CharArrayConst) IsConstant()       {}
func (*VectorConst) IsConstant()          {}
func (*ZeroInitializerConst) IsConstant() {}
func (*UndefConst) IsConstant()           {}
func (*BlockAddressConst) IsConstant()    {}

// ConstantExpr
func (*AddExpr) IsConstant()            {}
func (*FAddExpr) IsConstant()           {}
func (*SubExpr) IsConstant()            {}
func (*FSubExpr) IsConstant()           {}
func (*MulExpr) IsConstant()            {}
func (*FMulExpr) IsConstant()           {}
func (*UDivExpr) IsConstant()           {}
func (*SDivExpr) IsConstant()           {}
func (*FDivExpr) IsConstant()           {}
func (*URemExpr) IsConstant()           {}
func (*SRemExpr) IsConstant()           {}
func (*FRemExpr) IsConstant()           {}
func (*ShlExpr) IsConstant()            {}
func (*LShrExpr) IsConstant()           {}
func (*AShrExpr) IsConstant()           {}
func (*AndExpr) IsConstant()            {}
func (*OrExpr) IsConstant()             {}
func (*XorExpr) IsConstant()            {}
func (*ExtractElementExpr) IsConstant() {}
func (*InsertElementExpr) IsConstant()  {}
func (*ShuffleVectorExpr) IsConstant()  {}
func (*ExtractValueExpr) IsConstant()   {}
func (*InsertValueExpr) IsConstant()    {}
func (*GetElementPtrExpr) IsConstant()  {}
func (*TruncExpr) IsConstant()          {}
func (*ZExtExpr) IsConstant()           {}
func (*SExtExpr) IsConstant()           {}
func (*FPTruncExpr) IsConstant()        {}
func (*FPExtExpr) IsConstant()          {}
func (*FPToUIExpr) IsConstant()         {}
func (*FPToSIExpr) IsConstant()         {}
func (*UIToFPExpr) IsConstant()         {}
func (*SIToFPExpr) IsConstant()         {}
func (*PtrToIntExpr) IsConstant()       {}
func (*IntToPtrExpr) IsConstant()       {}
func (*BitCastExpr) IsConstant()        {}
func (*AddrSpaceCastExpr) IsConstant()  {}
func (*ICmpExpr) IsConstant()           {}
func (*FCmpExpr) IsConstant()           {}
func (*SelectExpr) IsConstant()         {}

// IsDIExpressionField ensures that only DIExpression fields can be assigned to
// the metadata.DIExpressionField interface.
func (*IntConst) IsDIExpressionField() {}

// IsIntOrMDField ensures that only intergers and metadata fields can be
// assigned to the metadata.IntOrMDField interface.
func (*IntConst) IsIntOrMDField() {}

// MDField
func (*NullConst) IsIntOrMDField() {}

// IsMDField ensures that only metadata fields can be assigned to the
// metadata.MDField interface.
func (*NullConst) IsMDField() {}

// IsExceptionScope ensures that only exception scopes can be assigned to the
// ast.ExceptionScope interface.
func (*NoneConst) IsExceptionScope() {}

// Constant
func (*BoolConst) IsValue()            {}
func (*IntConst) IsValue()             {}
func (*FloatConst) IsValue()           {}
func (*NullConst) IsValue()            {}
func (*NoneConst) IsValue()            {}
func (*StructConst) IsValue()          {}
func (*ArrayConst) IsValue()           {}
func (*CharArrayConst) IsValue()       {}
func (*VectorConst) IsValue()          {}
func (*ZeroInitializerConst) IsValue() {}
func (*UndefConst) IsValue()           {}
func (*BlockAddressConst) IsValue()    {}

// ConstantExpr
func (*AddExpr) IsValue()            {}
func (*FAddExpr) IsValue()           {}
func (*SubExpr) IsValue()            {}
func (*FSubExpr) IsValue()           {}
func (*MulExpr) IsValue()            {}
func (*FMulExpr) IsValue()           {}
func (*UDivExpr) IsValue()           {}
func (*SDivExpr) IsValue()           {}
func (*FDivExpr) IsValue()           {}
func (*URemExpr) IsValue()           {}
func (*SRemExpr) IsValue()           {}
func (*FRemExpr) IsValue()           {}
func (*ShlExpr) IsValue()            {}
func (*LShrExpr) IsValue()           {}
func (*AShrExpr) IsValue()           {}
func (*AndExpr) IsValue()            {}
func (*OrExpr) IsValue()             {}
func (*XorExpr) IsValue()            {}
func (*ExtractElementExpr) IsValue() {}
func (*InsertElementExpr) IsValue()  {}
func (*ShuffleVectorExpr) IsValue()  {}
func (*ExtractValueExpr) IsValue()   {}
func (*InsertValueExpr) IsValue()    {}
func (*GetElementPtrExpr) IsValue()  {}
func (*TruncExpr) IsValue()          {}
func (*ZExtExpr) IsValue()           {}
func (*SExtExpr) IsValue()           {}
func (*FPTruncExpr) IsValue()        {}
func (*FPExtExpr) IsValue()          {}
func (*FPToUIExpr) IsValue()         {}
func (*FPToSIExpr) IsValue()         {}
func (*UIToFPExpr) IsValue()         {}
func (*SIToFPExpr) IsValue()         {}
func (*PtrToIntExpr) IsValue()       {}
func (*IntToPtrExpr) IsValue()       {}
func (*BitCastExpr) IsValue()        {}
func (*AddrSpaceCastExpr) IsValue()  {}
func (*ICmpExpr) IsValue()           {}
func (*FCmpExpr) IsValue()           {}
func (*SelectExpr) IsValue()         {}
