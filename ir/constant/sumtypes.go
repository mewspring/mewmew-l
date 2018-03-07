package constant

// IsConstant ensures that only constants can be assigned to the
// constant.Constant interface.
func (*IntConst) IsConstant() {}

// IsDIExpressionField ensures that only DIExpression fields can be assigned to
// the metadata.DIExpressionField interface.
func (*IntConst) IsDIExpressionField() {}

// IsIntOrMDField ensures that only intergers and metadata fields can be
// assigned to the metadata.IntOrMDField interface.
func (*IntConst) IsIntOrMDField() {}
