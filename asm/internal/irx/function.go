package irx

import (
	"github.com/mewmew/l/ir"
	"github.com/mewmew/l/ir/metadata"
	"github.com/mewmew/l/ir/types"
)

// FunctionHeader is the header of an LLVM IR function.
type FunctionHeader struct {
	Preemption      ir.Preemption      // zero value if not present
	Visibility      ir.Visibility      // zero value if not present
	DLLStorageClass ir.DLLStorageClass // zero value if not present
	CallingConv     ir.CallingConv     // zero value if not present
	ReturnAttrs     []ir.ReturnAttribute
	RetType         types.Type
	Name            string // *GlobalIdent
	Params          []*ir.Param
	Variadic        bool
	UnnamedAddr     ir.UnnamedAddr
	FuncAttrs       []ir.FuncAttribute
	Section         *ir.Section // nil if not present
	Comdat          *ir.Comdat  // nil if not present
	GC              string      // empty if not present
	Prefix          ir.Constant // *TypeConst; nil if not present
	Prologue        ir.Constant // *TypeConst; nil if not present
	Personality     ir.Constant // *TypeConst; nil if not present
}

// FunctionBody is the body of an LLVM IR function.
type FunctionBody struct {
	Blocks        []*ir.BasicBlock
	UseListOrders []*ir.UseListOrder
}

// NewFunctionDecl returns a new function declaration based on the given
// metadata attachment, linkage and function header.
func NewFunctionDecl(md, linkage, hdr interface{}) (*ir.Function, error) {
	f := &ir.Function{
		Linkage:  linkage.(ir.Linkage),
		Metadata: md.([]*metadata.MetadataAttachment),
	}
	setFuncHeader(f, hdr.(*FunctionHeader))
	return f, nil
}

// NewFunctionDef returns a new function definition based on the given linkage,
// function header, metadata attachment and function body.
func NewFunctionDef(linkage, hdr, md, body interface{}) (*ir.Function, error) {
	f := &ir.Function{
		Linkage:  linkage.(ir.Linkage),
		Metadata: md.([]*metadata.MetadataAttachment),
	}
	setFuncHeader(f, hdr.(*FunctionHeader))
	setFuncBody(f, body.(*FunctionBody))
	return f, nil
}

// setFuncHeader sets the function header attributes of the function.
func setFuncHeader(f *ir.Function, hdr *FunctionHeader) {
	f.Preemption = hdr.Preemption
	f.Visibility = hdr.Visibility
	f.DLLStorageClass = hdr.DLLStorageClass
	f.CallingConv = hdr.CallingConv
	f.ReturnAttrs = hdr.ReturnAttrs
	f.RetType = hdr.RetType
	f.Name = hdr.Name
	f.Params = hdr.Params
	f.Variadic = hdr.Variadic
	f.UnnamedAddr = hdr.UnnamedAddr
	f.FuncAttrs = hdr.FuncAttrs
	f.Section = hdr.Section
	f.Comdat = hdr.Comdat
	f.GC = hdr.GC
	f.Prefix = hdr.Prefix
	f.Prologue = hdr.Prologue
	f.Personality = hdr.Personality
}

// setFuncBody sets the function body attributes of the function.
func setFuncBody(f *ir.Function, body *FunctionBody) {
	f.Blocks = body.Blocks
	f.UseListOrders = body.UseListOrders
}
