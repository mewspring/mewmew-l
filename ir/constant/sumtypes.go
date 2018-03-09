package constant

// --- [ ir.Constant ] ---------------------------------------------------------

// IsConstant ensures that only constants can be assigned to the ir.Constant
// interface.
func (*Bool) IsConstant()            {}
func (*Int) IsConstant()             {}
func (*Float) IsConstant()           {}
func (*Null) IsConstant()            {}
func (*None) IsConstant()            {}
func (*Struct) IsConstant()          {}
func (*Array) IsConstant()           {}
func (*CharArray) IsConstant()       {}
func (*Vector) IsConstant()          {}
func (*ZeroInitializer) IsConstant() {}
func (*Undef) IsConstant()           {}
func (*BlockAddress) IsConstant()    {}

// ConstantExpr
func (*ExprAdd) IsConstant()            {}
func (*ExprFAdd) IsConstant()           {}
func (*ExprSub) IsConstant()            {}
func (*ExprFSub) IsConstant()           {}
func (*ExprMul) IsConstant()            {}
func (*ExprFMul) IsConstant()           {}
func (*ExprUDiv) IsConstant()           {}
func (*ExprSDiv) IsConstant()           {}
func (*ExprFDiv) IsConstant()           {}
func (*ExprURem) IsConstant()           {}
func (*ExprSRem) IsConstant()           {}
func (*ExprFRem) IsConstant()           {}
func (*ExprShl) IsConstant()            {}
func (*ExprLShr) IsConstant()           {}
func (*ExprAShr) IsConstant()           {}
func (*ExprAnd) IsConstant()            {}
func (*ExprOr) IsConstant()             {}
func (*ExprXor) IsConstant()            {}
func (*ExprExtractElement) IsConstant() {}
func (*ExprInsertElement) IsConstant()  {}
func (*ExprShuffleVector) IsConstant()  {}
func (*ExprExtractValue) IsConstant()   {}
func (*ExprInsertValue) IsConstant()    {}
func (*ExprGetElementPtr) IsConstant()  {}
func (*ExprTrunc) IsConstant()          {}
func (*ExprZExt) IsConstant()           {}
func (*ExprSExt) IsConstant()           {}
func (*ExprFPTrunc) IsConstant()        {}
func (*ExprFPExt) IsConstant()          {}
func (*ExprFPToUI) IsConstant()         {}
func (*ExprFPToSI) IsConstant()         {}
func (*ExprUIToFP) IsConstant()         {}
func (*ExprSIToFP) IsConstant()         {}
func (*ExprPtrToInt) IsConstant()       {}
func (*ExprIntToPtr) IsConstant()       {}
func (*ExprBitCast) IsConstant()        {}
func (*ExprAddrSpaceCast) IsConstant()  {}
func (*ExprICmp) IsConstant()           {}
func (*ExprFCmp) IsConstant()           {}
func (*ExprSelect) IsConstant()         {}

// --- [ ll.ExceptionScope ] ---------------------------------------------------

// IsExceptionScope ensures that only exception scopes can be assigned to the
// ast.ExceptionScope interface.
func (*None) IsExceptionScope() {}
