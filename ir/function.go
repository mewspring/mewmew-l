package ir

import (
	"fmt"
	"strings"

	"github.com/mewmew/l/internal/enc"
	"github.com/mewmew/l/ir/metadata"
	"github.com/mewmew/l/ir/types"
)

// ~~~ [ Function Declaration or Definition ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

// A Function is an LLVM IR function.
type Function struct {
	Linkage Linkage
	*FunctionHeader
	*FunctionBody // nil if declaration
	Metadata      []*metadata.MetadataAttachment
	// Function signature.
	Sig *types.FuncType
	Typ *types.PointerType // pointer to Sig.
}

// String returns the string representation of the function as a type-value
// pair.
func (f *Function) String() string {
	return fmt.Sprintf("%v %v", f.Type(), f.Ident())
}

// Type returns the type of the function.
func (f *Function) Type() types.Type {
	return f.Typ
}

// Ident returns the identifier associated with the function.
func (f *Function) Ident() string {
	return f.Name
}

// Def returns the LLVM syntax representation of the global variable definition.
func (f *Function) Def() string {
	// "declare" MetadataAttachments OptExternLinkage FunctionHeader
	// "define" OptLinkage FunctionHeader MetadataAttachments FunctionBody
	buf := &strings.Builder{}
	if f.FunctionBody == nil {
		// Function declaration.
		//
		//    "declare" MetadataAttachments OptExternLinkage FunctionHeader
		buf.WriteString("declare")
		for _, md := range f.Metadata {
			fmt.Fprintf(buf, " %v", md)
		}
		if f.Linkage != LinkageNone {
			fmt.Fprintf(buf, " %v", f.Linkage)
		}
		buf.WriteString(f.FunctionHeader.String())
		return buf.String()
	}
	// Function definition.
	//
	//    "define" OptLinkage FunctionHeader MetadataAttachments FunctionBody
	buf.WriteString("define")
	if f.Linkage != LinkageNone {
		fmt.Fprintf(buf, " %v", f.Linkage)
	}
	buf.WriteString(f.FunctionHeader.String())
	for _, md := range f.Metadata {
		fmt.Fprintf(buf, " %v", md)
	}
	fmt.Fprintf(buf, " %v", f.FunctionBody)
	return buf.String()
}

// FunctionHeader is the header of an LLVM IR function.
type FunctionHeader struct {
	Preemption      Preemption      // zero value if not present
	Visibility      Visibility      // zero value if not present
	DLLStorageClass DLLStorageClass // zero value if not present
	CallingConv     CallingConv     // zero value if not present
	ReturnAttrs     []ReturnAttribute
	RetType         types.Type
	Name            string // *GlobalIdent
	Params          []*Param
	Variadic        bool
	UnnamedAddr     UnnamedAddr
	FuncAttrs       []FuncAttribute
	Section         *Section // nil if not present
	Comdat          *Comdat  // nil if not present
	GC              string   // empty if not present
	Prefix          Constant // *TypeConst; nil if not present
	Prologue        Constant // *TypeConst; nil if not present
	Personality     Constant // *TypeConst; nil if not present
}

// String returns the string representation of the function header.
func (hdr *FunctionHeader) String() string {
	// OptPreemptionSpecifier OptVisibility OptDLLStorageClass OptCallingConv
	// ReturnAttrs Type GlobalIdent "(" Params ")" OptUnnamedAddr FuncAttrs
	// OptSection OptComdat OptGC OptPrefix OptPrologue OptPersonality
	buf := &strings.Builder{}
	if hdr.Preemption != PreemptionNone {
		fmt.Fprintf(buf, " %v", hdr.Preemption)
	}
	if hdr.Visibility != VisibilityNone {
		fmt.Fprintf(buf, " %v", hdr.Visibility)
	}
	if hdr.DLLStorageClass != DLLStorageClassNone {
		fmt.Fprintf(buf, " %v", hdr.DLLStorageClass)
	}
	if hdr.CallingConv != CallingConvNone {
		fmt.Fprintf(buf, " %v", hdr.CallingConv)
	}
	for _, attr := range hdr.ReturnAttrs {
		fmt.Fprintf(buf, " %v", attr)
	}
	fmt.Fprintf(buf, " %v", hdr.RetType)
	fmt.Fprintf(buf, " %v(", hdr.Name)
	for i, param := range hdr.Params {
		if i != 0 {
			buf.WriteString(", ")
		}
		buf.WriteString(param.String())
	}
	if hdr.Variadic {
		if len(hdr.Params) > 0 {
			buf.WriteString(", ")
		}
		buf.WriteString("...")
	}
	buf.WriteString(")")
	if hdr.UnnamedAddr != UnnamedAddrNone {
		fmt.Fprintf(buf, " %v", hdr.UnnamedAddr)
	}
	for _, attr := range hdr.FuncAttrs {
		fmt.Fprintf(buf, " %v", attr)
	}
	if hdr.Section != nil {
		fmt.Fprintf(buf, " %v", hdr.Section)
	}
	if hdr.Comdat != nil {
		fmt.Fprintf(buf, " %v", hdr.Comdat)
	}
	if len(hdr.GC) > 0 {
		fmt.Fprintf(buf, " gc %v", enc.Quote(hdr.GC))
	}
	if hdr.Prefix != nil {
		fmt.Fprintf(buf, " prefix %v", hdr.Prefix)
	}
	if hdr.Prologue != nil {
		fmt.Fprintf(buf, " prologue %v", hdr.Prologue)
	}
	if hdr.Personality != nil {
		fmt.Fprintf(buf, " personality %v", hdr.Personality)
	}
	return buf.String()
}

// FunctionBody is the body of an LLVM IR function.
type FunctionBody struct {
	Blocks        []*BasicBlock
	UseListOrders []*UseListOrder
}

// String returns the string representation of the function body.
func (body *FunctionBody) String() string {
	// "{" BasicBlockList UseListOrders "}"
	buf := &strings.Builder{}
	buf.WriteString("{\n")
	for _, block := range body.Blocks {
		fmt.Fprintf(buf, "%v\n", block.Def())
	}
	for _, useList := range body.UseListOrders {
		fmt.Fprintf(buf, "%v\n", useList)
	}
	buf.WriteString("}")
	return buf.String()
}
