package astx

import (
	"fmt"

	"github.com/mewmew/l/ir"
	"github.com/mewmew/l/ir/metadata"
	"github.com/mewmew/l/ir/types"
)

// OptSectionFromGlobalAttrs returns the last optional section present in the
// given global attributes.
func OptSectionFromGlobalAttrs(attrs []GlobalAttribute) *ir.Section {
	for i := len(attrs) - 1; i >= 0; i-- {
		if attr, ok := attrs[i].(*ir.Section); ok {
			return attr
		}
	}
	return nil
}

// OptComdatFromGlobalAttrs returns the last optional comdat present in the
// given global attributes.
func OptComdatFromGlobalAttrs(attrs []GlobalAttribute) *ir.Comdat {
	for i := len(attrs) - 1; i >= 0; i-- {
		if attr, ok := attrs[i].(*ir.Comdat); ok {
			return attr
		}
	}
	return nil
}

// OptAlignFromGlobalAttrs returns the last optional alignment present in the
// given global attributes.
func OptAlignFromGlobalAttrs(attrs []GlobalAttribute) *ir.Alignment {
	for i := len(attrs) - 1; i >= 0; i-- {
		if attr, ok := attrs[i].(*ir.Alignment); ok {
			return attr
		}
	}
	return nil
}

// MetadataFromGlobalAttrs returns the metadata attachments present in the given
// global attributes.
func MetadataFromGlobalAttrs(attrs []GlobalAttribute) []*metadata.MetadataAttachment {
	var mds []*metadata.MetadataAttachment
	for _, attr := range attrs {
		if md, ok := attr.(*metadata.MetadataAttachment); ok {
			mds = append(mds, md)
		}
	}
	return mds
}

// NewCallingConv returns a new calling convention corresponding to the given
// token.
func NewCallingConv(tok interface{}) (ir.CallingConv, error) {
	// ref: include/llvm/IR/CallingConv.h
	// (rev db070bbdacd303ae7da129f59beaf35024d94c53)
	cc := Int(tok)
	switch cc {
	case 0:
		return ir.CallingConvC, nil
	case 8:
		return ir.CallingConvFast, nil
	case 9:
		return ir.CallingConvCold, nil
	case 10:
		return ir.CallingConvGHC, nil
	case 11:
		return ir.CallingConvHiPE, nil
	case 12:
		return ir.CallingConvWebKitJS, nil
	case 13:
		return ir.CallingConvAnyReg, nil
	case 14:
		return ir.CallingConvPreserveMost, nil
	case 15:
		return ir.CallingConvPreserveAll, nil
	case 16:
		return ir.CallingConvSwift, nil
	case 17:
		return ir.CallingConvCXXFastTLS, nil
	case 64:
		return ir.CallingConvX86StdCall, nil
	case 65:
		return ir.CallingConvX86FastCall, nil
	case 66:
		return ir.CallingConvARMAPCS, nil
	case 67:
		return ir.CallingConvARMAAPCS, nil
	case 68:
		return ir.CallingConvARMAAPCSVFP, nil
	case 69:
		return ir.CallingConvMSP430Intr, nil
	case 70:
		return ir.CallingConvX86ThisCall, nil
	case 71:
		return ir.CallingConvPTXKernel, nil
	case 72:
		return ir.CallingConvPTXDevice, nil
	case 75:
		return ir.CallingConvSPIRFunc, nil
	case 76:
		return ir.CallingConvSPIRKernel, nil
	case 77:
		return ir.CallingConvIntelOCLBI, nil
	case 78:
		return ir.CallingConvX86_64SysV, nil
	case 79:
		return ir.CallingConvWin64, nil
	case 80:
		return ir.CallingConvX86VectorCall, nil
	case 81:
		return ir.CallingConvHHVM, nil
	case 82:
		return ir.CallingConvHHVMC, nil
	case 83:
		return ir.CallingConvX86Intr, nil
	case 84:
		return ir.CallingConvAVRIntr, nil
	case 85:
		return ir.CallingConvAVRSignal, nil
	case 86:
		return ir.CallingConvAVRBuiltin, nil
	case 87:
		return ir.CallingConvAMDGPUVS, nil
	case 88:
		return ir.CallingConvAMDGPUGS, nil
	case 89:
		return ir.CallingConvAMDGPUPS, nil
	case 90:
		return ir.CallingConvAMDGPUCS, nil
	case 91:
		return ir.CallingConvAMDGPUKernel, nil
	case 92:
		return ir.CallingConvX86RegCall, nil
	case 93:
		return ir.CallingConvAMDGPUHS, nil
	case 94:
		return ir.CallingConvMSP430Builtin, nil
	case 95:
		return ir.CallingConvAMDGPULS, nil
	case 96:
		return ir.CallingConvAMDGPUES, nil
	default:
		panic(fmt.Errorf("support for calling convention ID %d not yet implemented", cc))
	}
}

// Params is a list of optionally variadic function parameters.
type Params struct {
	Params   []*ir.Param
	Variadic bool
}

// ParamTypes returns the slice of types corresponding to the types of the given
// function parameters.
func ParamTypes(params interface{}) []types.Type {
	var ts []types.Type
	for _, param := range params.(*Params).Params {
		t := param.Typ
		ts = append(ts, t)
	}
	return ts
}
