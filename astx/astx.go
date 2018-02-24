// Package astx defines the Gocc semantic actions to parse LLVM IR into an
// abstract syntax tree.
package astx

import (
	"fmt"
	"strconv"
	"strings"

	"github.com/mewmew/l/ast"
	"github.com/mewmew/l/token"
	"github.com/pkg/errors"
)

type Params struct {
	Params   []*ast.Param
	Variadic bool
}

func String(stringLit interface{}) string {
	s := stringLit.(*token.Token)
	return string(s.Lit)
}

func Int(intLit interface{}) int64 {
	s := String(intLit)
	x, err := strconv.ParseInt(s, 10, 64)
	if err != nil {
		panic(err)
	}
	return x
}

func TypeValue(typ, value interface{}) *ast.TypeValue {
	return &ast.TypeValue{
		Type:  typ.(ast.Type),
		Value: value.(ast.Value),
	}
}

func TypeConst(typ, val interface{}) *ast.TypeConst {
	return &ast.TypeConst{
		Type:  typ.(ast.Type),
		Const: val.(ast.Constant),
	}
}

func Label(typ, name interface{}) *ast.Label {
	s := String(typ)
	if s != "label" {
		panic(errors.Errorf(`invalid label type, expected "label", got %q`, s))
	}
	return &ast.Label{
		Name: name.(ast.LocalIdent),
	}
}

func NewIntType(tok interface{}) (*ast.IntType, error) {
	s := String(tok)
	if !strings.HasPrefix(s, "i") {
		return nil, errors.Errorf("invalid integer type %q", s)
	}
	s = s[len("i"):]
	bits, err := strconv.ParseInt(s, 10, 64)
	if err != nil {
		return nil, errors.WithStack(err)
	}
	return &ast.IntType{
		BitSize: bits,
	}, nil
}

func NewIntConst(tok interface{}) (ast.IntConst, error) {
	s := String(tok)
	x, err := strconv.ParseInt(s, 10, 64)
	if err != nil {
		return 0, errors.WithStack(err)
	}
	return ast.IntConst(x), nil
}

func NewFloatConst(tok interface{}) (ast.FloatConst, error) {
	s := String(tok)
	x, err := strconv.ParseFloat(s, 64)
	if err != nil {
		return 0, errors.WithStack(err)
	}
	return ast.FloatConst(x), nil
}

func NewCallingConv(cc interface{}) (ast.CallingConv, error) {
	// ref: include/llvm/IR/CallingConv.h
	// (rev db070bbdacd303ae7da129f59beaf35024d94c53)
	c := Int(cc)
	switch c {
	case 0:
		return ast.CallingConvC, nil
	case 8:
		return ast.CallingConvFast, nil
	case 9:
		return ast.CallingConvCold, nil
	case 10:
		return ast.CallingConvGHC, nil
	case 11:
		return ast.CallingConvHiPE, nil
	case 12:
		return ast.CallingConvWebKit_JS, nil
	case 13:
		return ast.CallingConvAnyReg, nil
	case 14:
		return ast.CallingConvPreserveMost, nil
	case 15:
		return ast.CallingConvPreserveAll, nil
	case 16:
		return ast.CallingConvSwift, nil
	case 17:
		return ast.CallingConvCXX_Fast_TLS, nil
	case 64:
		return ast.CallingConvX86_StdCall, nil
	case 65:
		return ast.CallingConvX86_FastCall, nil
	case 66:
		return ast.CallingConvARM_APCS, nil
	case 67:
		return ast.CallingConvARM_AAPCS, nil
	case 68:
		return ast.CallingConvARM_AAPCS_VFP, nil
	case 69:
		return ast.CallingConvMSP430_Intr, nil
	case 70:
		return ast.CallingConvX86_ThisCall, nil
	case 71:
		return ast.CallingConvPTX_Kernel, nil
	case 72:
		return ast.CallingConvPTX_Device, nil
	case 75:
		return ast.CallingConvSPIR_Func, nil
	case 76:
		return ast.CallingConvSPIR_Kernel, nil
	case 77:
		return ast.CallingConvIntel_OCL_BI, nil
	case 78:
		return ast.CallingConvX86_64_SysV, nil
	case 79:
		return ast.CallingConvWin64, nil
	case 80:
		return ast.CallingConvX86_VectorCall, nil
	case 81:
		return ast.CallingConvHHVM, nil
	case 82:
		return ast.CallingConvHHVM_C, nil
	case 83:
		return ast.CallingConvX86_Intr, nil
	case 84:
		return ast.CallingConvAVR_Intr, nil
	case 85:
		return ast.CallingConvAVR_Signal, nil
	case 86:
		return ast.CallingConvAVR_Builtin, nil
	case 87:
		return ast.CallingConvAMDGPU_VS, nil
	case 88:
		return ast.CallingConvAMDGPU_GS, nil
	case 89:
		return ast.CallingConvAMDGPU_PS, nil
	case 90:
		return ast.CallingConvAMDGPU_CS, nil
	case 91:
		return ast.CallingConvAMDGPU_Kernel, nil
	case 92:
		return ast.CallingConvX86_RegCall, nil
	case 93:
		return ast.CallingConvAMDGPU_HS, nil
	case 94:
		return ast.CallingConvMSP430_Builtin, nil
	case 95:
		return ast.CallingConvAMDGPU_LS, nil
	case 96:
		return ast.CallingConvAMDGPU_ES, nil
	default:
		panic(fmt.Errorf("support for calling convention ID %d not yet implemented", c))
	}
}
