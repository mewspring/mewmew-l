// Note, the LLVM IR traversal implementation of this package is heavily
// inspired by go fix, which is governed by a BSD license.

// Package irutil provides LLVM IR utility functions.
package irutil

import (
	"fmt"

	"github.com/mewmew/l/asm/ast"
	"github.com/mewmew/l/ir"
	"github.com/mewmew/l/ir/constant"
	"github.com/mewmew/l/ir/metadata"
	"github.com/mewmew/l/ir/types"
	"github.com/mewmew/l/ir/value"
)

// Walk traverses the AST x, calling visit(y) for each node y in the tree but
// also with a pointer to each types.Type, value.Value, and *ir.BasicBlock, in a
// bottom-up traversal.
func Walk(x interface{}, visit func(interface{})) {
	WalkBeforeAfter(x, nop, visit)
}

// WalkFunc traverses the AST of the given function, calling visit(y) for each
// node y in the tree but also with a pointer to each types.Type, value.Value,
// and *ir.BasicBlock, in a bottom-up traversal.
func WalkFunc(f *ir.Function, visit func(interface{})) {
	WalkFuncBeforeAfter(f, nop, visit)
}

// nop performs no operation on the given AST.
func nop(x interface{}) {
}

// WalkBeforeAfter traverses the AST x, calling before(y) before traversing y's
// children and after(y) afterward for each node y in the tree but also with a
// pointer to each types.Type, value.Value, and *ir.BasicBlock, in a bottom-up
// traversal.
func WalkBeforeAfter(x interface{}, before, after func(interface{})) {
	w := &walker{
		visited: make(map[interface{}]bool),
	}
	w.walkBeforeAfter(x, before, after)
}

// WalkFuncBeforeAfter traverses the AST of the given function, calling
// before(y) before traversing y's children and after(y) afterward for each node
// y in the tree but also with a pointer to each types.Type, value.Value, and
// *ir.BasicBlock, in a bottom-up traversal.
//
// Special precaution is taken during traversal to stay within the scope of the
// function.
func WalkFuncBeforeAfter(f *ir.Function, before, after func(interface{})) {
	w := &walker{
		funcScope: true,
		visited:   make(map[interface{}]bool),
	}
	// Traverse child nodes of function, instead of f directly, as *ir.Function
	// nodes are not traversed when staying within the scope of the function.
	w.walkBeforeAfter(&f.Sig, before, after)
	if f.Blocks != nil {
		w.walkBeforeAfter(&f.Blocks, before, after)
	}
}

// A walker traverses ASTs of LLVM IR while preventing infinite loops.
type walker struct {
	// Specifies whether to stay within the scope of the function during
	// traversal.
	funcScope bool
	// visited keeps track of visited nodes to prevent infinite loops.
	visited map[interface{}]bool
}

// walkBeforeAfter traverses the AST x, calling before(y) before traversing y's
// children and after(y) afterward for each node y in the tree but also with a
// pointer to each types.Type, value.Value, and *ir.BasicBlock, in a bottom-up
// traversal.
func (w *walker) walkBeforeAfter(x interface{}, before, after func(interface{})) {
	switch x.(type) {
	case []*constant.Index, []*ir.AttrGroupDef, []*ir.BasicBlock, []*ir.Case, []*ir.Clause, []*ir.ComdatDef, []*ir.Function, []*ir.Global, []*ir.Incoming, []*ir.IndirectSymbol, []*ir.ModuleAsm, []*ir.OperandBundle, []*ir.Param, []*ir.UseListOrder, []*ir.UseListOrderBB, []*metadata.MetadataAttachment, []*metadata.MetadataDef, []*metadata.NamedMetadataDef, []*types.NamedType, []ir.Argument, []ir.Constant, []ir.FuncAttribute, []ir.Instruction, []metadata.MDField, []metadata.MetadataNode, []types.Type, []value.Value:
		// unhashable type.
	case *ir.Function:
		if w.funcScope {
			// *ir.Function nodes are not traversed when staying within the scope
			// *of the function.
			return
		}
	default:
		// Prevent infinite loops.
		if w.visited[x] {
			return
		}
		w.visited[x] = true
	}

	before(x)

	switch n := x.(type) {
	// pointers to interfaces
	case *ir.Argument:
		w.walkBeforeAfter(*n, before, after)
	case *ir.Constant:
		w.walkBeforeAfter(*n, before, after)
	case *ir.ExceptionScope:
		w.walkBeforeAfter(*n, before, after)
	case *ir.FuncAttribute:
		w.walkBeforeAfter(*n, before, after)
	case *ir.Instruction:
		w.walkBeforeAfter(*n, before, after)
	case *ir.ParamAttribute:
		w.walkBeforeAfter(*n, before, after)
	case *ir.ReturnAttribute:
		w.walkBeforeAfter(*n, before, after)
	case *ir.Terminator:
		w.walkBeforeAfter(*n, before, after)
	case *ir.UnwindTarget:
		w.walkBeforeAfter(*n, before, after)
	case *ir.ValueInstruction:
		w.walkBeforeAfter(*n, before, after)
	case *metadata.IntOrMDField:
		w.walkBeforeAfter(*n, before, after)
	case *metadata.MDField:
		w.walkBeforeAfter(*n, before, after)
	case *metadata.MDNode:
		w.walkBeforeAfter(*n, before, after)
	case *metadata.Metadata:
		w.walkBeforeAfter(*n, before, after)
	case *metadata.MetadataNode:
		w.walkBeforeAfter(*n, before, after)
	case *metadata.SpecializedMDNode:
		w.walkBeforeAfter(*n, before, after)
	case *types.Type:
		w.walkBeforeAfter(*n, before, after)
	case *value.Named:
		w.walkBeforeAfter(*n, before, after)
	case *value.Value:
		w.walkBeforeAfter(*n, before, after)

	// pointers to struct pointers
	// Top-level Entities
	case **ir.ComdatDef:
		w.walkBeforeAfter(*n, before, after)
	case **ir.Global:
		w.walkBeforeAfter(*n, before, after)
	case **ir.IndirectSymbol:
		w.walkBeforeAfter(*n, before, after)
	case **ir.Function:
		w.walkBeforeAfter(*n, before, after)
	case **ir.FunctionHeader:
		w.walkBeforeAfter(*n, before, after)
	case **ir.FunctionBody:
		w.walkBeforeAfter(*n, before, after)
	case **ir.AttrGroupDef:
		w.walkBeforeAfter(*n, before, after)
	case **ir.UseListOrder:
		w.walkBeforeAfter(*n, before, after)
	case **ir.UseListOrderBB:
		w.walkBeforeAfter(*n, before, after)
	// Types
	case **types.VoidType:
		w.walkBeforeAfter(*n, before, after)
	case **types.FuncType:
		w.walkBeforeAfter(*n, before, after)
	case **types.IntType:
		w.walkBeforeAfter(*n, before, after)
	case **types.FloatType:
		w.walkBeforeAfter(*n, before, after)
	case **types.MMXType:
		w.walkBeforeAfter(*n, before, after)
	case **types.PointerType:
		w.walkBeforeAfter(*n, before, after)
	case **types.VectorType:
		w.walkBeforeAfter(*n, before, after)
	case **types.LabelType:
		w.walkBeforeAfter(*n, before, after)
	case **types.TokenType:
		w.walkBeforeAfter(*n, before, after)
	case **types.MetadataType:
		w.walkBeforeAfter(*n, before, after)
	case **types.ArrayType:
		w.walkBeforeAfter(*n, before, after)
	case **types.StructType:
		w.walkBeforeAfter(*n, before, after)
	case **types.NamedType:
		w.walkBeforeAfter(*n, before, after)
	// Values
	case **ir.InlineAsm:
		w.walkBeforeAfter(*n, before, after)
	// Constants
	case **constant.Bool:
		w.walkBeforeAfter(*n, before, after)
	case **constant.Int:
		w.walkBeforeAfter(*n, before, after)
	case **constant.Float:
		w.walkBeforeAfter(*n, before, after)
	case **constant.Null:
		w.walkBeforeAfter(*n, before, after)
	case **constant.None:
		w.walkBeforeAfter(*n, before, after)
	case **constant.Struct:
		w.walkBeforeAfter(*n, before, after)
	case **constant.Array:
		w.walkBeforeAfter(*n, before, after)
	case **constant.CharArray:
		w.walkBeforeAfter(*n, before, after)
	case **constant.Vector:
		w.walkBeforeAfter(*n, before, after)
	case **constant.ZeroInitializer:
		w.walkBeforeAfter(*n, before, after)
	case **constant.Undef:
		w.walkBeforeAfter(*n, before, after)
	case **constant.BlockAddress:
		w.walkBeforeAfter(*n, before, after)
	// Constant expressions
	case **constant.ExprAdd:
		w.walkBeforeAfter(*n, before, after)
	case **constant.ExprFAdd:
		w.walkBeforeAfter(*n, before, after)
	case **constant.ExprSub:
		w.walkBeforeAfter(*n, before, after)
	case **constant.ExprFSub:
		w.walkBeforeAfter(*n, before, after)
	case **constant.ExprMul:
		w.walkBeforeAfter(*n, before, after)
	case **constant.ExprFMul:
		w.walkBeforeAfter(*n, before, after)
	case **constant.ExprUDiv:
		w.walkBeforeAfter(*n, before, after)
	case **constant.ExprSDiv:
		w.walkBeforeAfter(*n, before, after)
	case **constant.ExprFDiv:
		w.walkBeforeAfter(*n, before, after)
	case **constant.ExprURem:
		w.walkBeforeAfter(*n, before, after)
	case **constant.ExprSRem:
		w.walkBeforeAfter(*n, before, after)
	case **constant.ExprFRem:
		w.walkBeforeAfter(*n, before, after)
	case **constant.ExprShl:
		w.walkBeforeAfter(*n, before, after)
	case **constant.ExprLShr:
		w.walkBeforeAfter(*n, before, after)
	case **constant.ExprAShr:
		w.walkBeforeAfter(*n, before, after)
	case **constant.ExprAnd:
		w.walkBeforeAfter(*n, before, after)
	case **constant.ExprOr:
		w.walkBeforeAfter(*n, before, after)
	case **constant.ExprXor:
		w.walkBeforeAfter(*n, before, after)
	case **constant.ExprExtractElement:
		w.walkBeforeAfter(*n, before, after)
	case **constant.ExprInsertElement:
		w.walkBeforeAfter(*n, before, after)
	case **constant.ExprShuffleVector:
		w.walkBeforeAfter(*n, before, after)
	case **constant.ExprExtractValue:
		w.walkBeforeAfter(*n, before, after)
	case **constant.ExprInsertValue:
		w.walkBeforeAfter(*n, before, after)
	case **constant.ExprGetElementPtr:
		w.walkBeforeAfter(*n, before, after)
	case **constant.Index:
		w.walkBeforeAfter(*n, before, after)
	case **constant.ExprTrunc:
		w.walkBeforeAfter(*n, before, after)
	case **constant.ExprZExt:
		w.walkBeforeAfter(*n, before, after)
	case **constant.ExprSExt:
		w.walkBeforeAfter(*n, before, after)
	case **constant.ExprFPTrunc:
		w.walkBeforeAfter(*n, before, after)
	case **constant.ExprFPExt:
		w.walkBeforeAfter(*n, before, after)
	case **constant.ExprFPToUI:
		w.walkBeforeAfter(*n, before, after)
	case **constant.ExprFPToSI:
		w.walkBeforeAfter(*n, before, after)
	case **constant.ExprUIToFP:
		w.walkBeforeAfter(*n, before, after)
	case **constant.ExprSIToFP:
		w.walkBeforeAfter(*n, before, after)
	case **constant.ExprPtrToInt:
		w.walkBeforeAfter(*n, before, after)
	case **constant.ExprIntToPtr:
		w.walkBeforeAfter(*n, before, after)
	case **constant.ExprBitCast:
		w.walkBeforeAfter(*n, before, after)
	case **constant.ExprAddrSpaceCast:
		w.walkBeforeAfter(*n, before, after)
	case **constant.ExprICmp:
		w.walkBeforeAfter(*n, before, after)
	case **constant.ExprFCmp:
		w.walkBeforeAfter(*n, before, after)
	case **constant.ExprSelect:
		w.walkBeforeAfter(*n, before, after)
	// Basic blocks.
	case **ir.BasicBlock:
		w.walkBeforeAfter(*n, before, after)
	// Instructions
	case **ir.LocalDef:
		w.walkBeforeAfter(*n, before, after)
	case **ir.InstAdd:
		w.walkBeforeAfter(*n, before, after)
	case **ir.InstFAdd:
		w.walkBeforeAfter(*n, before, after)
	case **ir.InstSub:
		w.walkBeforeAfter(*n, before, after)
	case **ir.InstFSub:
		w.walkBeforeAfter(*n, before, after)
	case **ir.InstMul:
		w.walkBeforeAfter(*n, before, after)
	case **ir.InstFMul:
		w.walkBeforeAfter(*n, before, after)
	case **ir.InstUDiv:
		w.walkBeforeAfter(*n, before, after)
	case **ir.InstSDiv:
		w.walkBeforeAfter(*n, before, after)
	case **ir.InstFDiv:
		w.walkBeforeAfter(*n, before, after)
	case **ir.InstURem:
		w.walkBeforeAfter(*n, before, after)
	case **ir.InstSRem:
		w.walkBeforeAfter(*n, before, after)
	case **ir.InstFRem:
		w.walkBeforeAfter(*n, before, after)
	case **ir.InstShl:
		w.walkBeforeAfter(*n, before, after)
	case **ir.InstLShr:
		w.walkBeforeAfter(*n, before, after)
	case **ir.InstAShr:
		w.walkBeforeAfter(*n, before, after)
	case **ir.InstAnd:
		w.walkBeforeAfter(*n, before, after)
	case **ir.InstOr:
		w.walkBeforeAfter(*n, before, after)
	case **ir.InstXor:
		w.walkBeforeAfter(*n, before, after)
	case **ir.InstExtractElement:
		w.walkBeforeAfter(*n, before, after)
	case **ir.InstInsertElement:
		w.walkBeforeAfter(*n, before, after)
	case **ir.InstShuffleVector:
		w.walkBeforeAfter(*n, before, after)
	case **ir.InstExtractValue:
		w.walkBeforeAfter(*n, before, after)
	case **ir.InstInsertValue:
		w.walkBeforeAfter(*n, before, after)
	case **ir.InstAlloca:
		w.walkBeforeAfter(*n, before, after)
	case **ir.InstLoad:
		w.walkBeforeAfter(*n, before, after)
	case **ir.InstStore:
		w.walkBeforeAfter(*n, before, after)
	case **ir.InstFence:
		w.walkBeforeAfter(*n, before, after)
	case **ir.InstCmpXchg:
		w.walkBeforeAfter(*n, before, after)
	case **ir.InstAtomicRMW:
		w.walkBeforeAfter(*n, before, after)
	case **ir.InstGetElementPtr:
		w.walkBeforeAfter(*n, before, after)
	case **ir.InstTrunc:
		w.walkBeforeAfter(*n, before, after)
	case **ir.InstZExt:
		w.walkBeforeAfter(*n, before, after)
	case **ir.InstSExt:
		w.walkBeforeAfter(*n, before, after)
	case **ir.InstFPTrunc:
		w.walkBeforeAfter(*n, before, after)
	case **ir.InstFPExt:
		w.walkBeforeAfter(*n, before, after)
	case **ir.InstFPToUI:
		w.walkBeforeAfter(*n, before, after)
	case **ir.InstFPToSI:
		w.walkBeforeAfter(*n, before, after)
	case **ir.InstUIToFP:
		w.walkBeforeAfter(*n, before, after)
	case **ir.InstSIToFP:
		w.walkBeforeAfter(*n, before, after)
	case **ir.InstPtrToInt:
		w.walkBeforeAfter(*n, before, after)
	case **ir.InstIntToPtr:
		w.walkBeforeAfter(*n, before, after)
	case **ir.InstBitCast:
		w.walkBeforeAfter(*n, before, after)
	case **ir.InstAddrSpaceCast:
		w.walkBeforeAfter(*n, before, after)
	case **ir.InstICmp:
		w.walkBeforeAfter(*n, before, after)
	case **ir.InstFCmp:
		w.walkBeforeAfter(*n, before, after)
	case **ir.InstPhi:
		w.walkBeforeAfter(*n, before, after)
	case **ir.Incoming:
		w.walkBeforeAfter(*n, before, after)
	case **ir.InstSelect:
		w.walkBeforeAfter(*n, before, after)
	case **ir.InstCall:
		w.walkBeforeAfter(*n, before, after)
	case **ir.InstVAArg:
		w.walkBeforeAfter(*n, before, after)
	case **ir.InstLandingPad:
		w.walkBeforeAfter(*n, before, after)
	case **ir.Clause:
		w.walkBeforeAfter(*n, before, after)
	case **ir.InstCatchPad:
		w.walkBeforeAfter(*n, before, after)
	case **ir.InstCleanupPad:
		w.walkBeforeAfter(*n, before, after)
	// Terminators
	case **ir.TermRet:
		w.walkBeforeAfter(*n, before, after)
	case **ir.TermBr:
		w.walkBeforeAfter(*n, before, after)
	case **ir.TermCondBr:
		w.walkBeforeAfter(*n, before, after)
	case **ir.TermSwitch:
		w.walkBeforeAfter(*n, before, after)
	case **ir.Case:
		w.walkBeforeAfter(*n, before, after)
	case **ir.TermIndirectBr:
		w.walkBeforeAfter(*n, before, after)
	case **ir.TermInvoke:
		w.walkBeforeAfter(*n, before, after)
	case **ir.TermResume:
		w.walkBeforeAfter(*n, before, after)
	case **ir.TermCatchSwitch:
		w.walkBeforeAfter(*n, before, after)
	case **ir.TermCatchRet:
		w.walkBeforeAfter(*n, before, after)
	case **ir.TermCleanupRet:
		w.walkBeforeAfter(*n, before, after)
	case **ir.TermUnreachable:
		w.walkBeforeAfter(*n, before, after)
	// Metadata
	case **metadata.NamedMetadataDef:
		w.walkBeforeAfter(*n, before, after)
	case **metadata.MetadataDef:
		w.walkBeforeAfter(*n, before, after)
	case **metadata.MDTuple:
		w.walkBeforeAfter(*n, before, after)
	case **metadata.Value:
		w.walkBeforeAfter(*n, before, after)
	case **metadata.MDString:
		w.walkBeforeAfter(*n, before, after)
	case **metadata.MetadataAttachment:
		w.walkBeforeAfter(*n, before, after)
	// Specialized Metadata
	case **metadata.DICompileUnit:
		w.walkBeforeAfter(*n, before, after)
	case **metadata.DIFile:
		w.walkBeforeAfter(*n, before, after)
	case **metadata.DIBasicType:
		w.walkBeforeAfter(*n, before, after)
	case **metadata.DISubroutineType:
		w.walkBeforeAfter(*n, before, after)
	case **metadata.DIDerivedType:
		w.walkBeforeAfter(*n, before, after)
	case **metadata.DICompositeType:
		w.walkBeforeAfter(*n, before, after)
	case **metadata.DISubrange:
		w.walkBeforeAfter(*n, before, after)
	case **metadata.DIEnumerator:
		w.walkBeforeAfter(*n, before, after)
	case **metadata.DITemplateTypeParameter:
		w.walkBeforeAfter(*n, before, after)
	case **metadata.DITemplateValueParameter:
		w.walkBeforeAfter(*n, before, after)
	case **metadata.DIModule:
		w.walkBeforeAfter(*n, before, after)
	case **metadata.DINamespace:
		w.walkBeforeAfter(*n, before, after)
	case **metadata.DIGlobalVariable:
		w.walkBeforeAfter(*n, before, after)
	case **metadata.DISubprogram:
		w.walkBeforeAfter(*n, before, after)
	case **metadata.DILexicalBlock:
		w.walkBeforeAfter(*n, before, after)
	case **metadata.DILexicalBlockFile:
		w.walkBeforeAfter(*n, before, after)
	case **metadata.DILocation:
		w.walkBeforeAfter(*n, before, after)
	case **metadata.DILocalVariable:
		w.walkBeforeAfter(*n, before, after)
	case **metadata.DIExpression:
		w.walkBeforeAfter(*n, before, after)
	case **metadata.DIGlobalVariableExpression:
		w.walkBeforeAfter(*n, before, after)
	case **metadata.DIObjCProperty:
		w.walkBeforeAfter(*n, before, after)
	case **metadata.DIImportedEntity:
		w.walkBeforeAfter(*n, before, after)
	case **metadata.DIMacro:
		w.walkBeforeAfter(*n, before, after)
	case **metadata.DIMacroFile:
		w.walkBeforeAfter(*n, before, after)
	case **metadata.GenericDINode:
		w.walkBeforeAfter(*n, before, after)
	case **metadata.MDNull:
		w.walkBeforeAfter(*n, before, after)
	case **metadata.MDInt:
		w.walkBeforeAfter(*n, before, after)
	// Helper.
	case **ir.Arg:
		w.walkBeforeAfter(*n, before, after)
	case **ir.Param:
		w.walkBeforeAfter(*n, before, after)
	case **ir.OperandBundle:
		w.walkBeforeAfter(*n, before, after)
	// From AST.
	case **ast.GlobalIdent:
		w.walkBeforeAfter(*n, before, after)
	case **ast.LocalIdent:
		w.walkBeforeAfter(*n, before, after)
	case **ast.LabelIdent:
		w.walkBeforeAfter(*n, before, after)
	case **ast.AttrGroupID:
		w.walkBeforeAfter(*n, before, after)
	case **ast.ComdatName:
		w.walkBeforeAfter(*n, before, after)
	case **ast.MetadataName:
		w.walkBeforeAfter(*n, before, after)
	case **ast.MetadataID:
		w.walkBeforeAfter(*n, before, after)
	case **ast.FloatConst:
		w.walkBeforeAfter(*n, before, after)
	case **ast.TypeValue:
		w.walkBeforeAfter(*n, before, after)
	case **ast.TypeConst:
		w.walkBeforeAfter(*n, before, after)
	case **ast.MetadataValue:
		w.walkBeforeAfter(*n, before, after)

	// pointers to slices
	case *[]*constant.Index:
		w.walkBeforeAfter(*n, before, after)
	case *[]*ir.AttrGroupDef:
		w.walkBeforeAfter(*n, before, after)
	case *[]*ir.BasicBlock:
		w.walkBeforeAfter(*n, before, after)
	case *[]*ir.Case:
		w.walkBeforeAfter(*n, before, after)
	case *[]*ir.Clause:
		w.walkBeforeAfter(*n, before, after)
	case *[]*ir.ComdatDef:
		w.walkBeforeAfter(*n, before, after)
	case *[]*ir.Function:
		w.walkBeforeAfter(*n, before, after)
	case *[]*ir.Global:
		w.walkBeforeAfter(*n, before, after)
	case *[]*ir.Incoming:
		w.walkBeforeAfter(*n, before, after)
	case *[]*ir.IndirectSymbol:
		w.walkBeforeAfter(*n, before, after)
	case *[]*ir.ModuleAsm:
		w.walkBeforeAfter(*n, before, after)
	case *[]*ir.OperandBundle:
		w.walkBeforeAfter(*n, before, after)
	case *[]*ir.Param:
		w.walkBeforeAfter(*n, before, after)
	case *[]*ir.UseListOrder:
		w.walkBeforeAfter(*n, before, after)
	case *[]*ir.UseListOrderBB:
		w.walkBeforeAfter(*n, before, after)
	case *[]*metadata.MetadataAttachment:
		w.walkBeforeAfter(*n, before, after)
	case *[]*metadata.MetadataDef:
		w.walkBeforeAfter(*n, before, after)
	case *[]*metadata.NamedMetadataDef:
		w.walkBeforeAfter(*n, before, after)
	case *[]*types.NamedType:
		w.walkBeforeAfter(*n, before, after)
	case *[]ir.Argument:
		w.walkBeforeAfter(*n, before, after)
	case *[]ir.Constant:
		w.walkBeforeAfter(*n, before, after)
	case *[]ir.FuncAttribute:
		w.walkBeforeAfter(*n, before, after)
	case *[]ir.Instruction:
		w.walkBeforeAfter(*n, before, after)
	case *[]metadata.MDField:
		w.walkBeforeAfter(*n, before, after)
	case *[]metadata.MetadataNode:
		w.walkBeforeAfter(*n, before, after)
	case *[]types.Type:
		w.walkBeforeAfter(*n, before, after)
	case *[]value.Value:
		w.walkBeforeAfter(*n, before, after)

	// pointers to structs
	case *ir.Module:
		if n.TypeDefs != nil {
			w.walkBeforeAfter(&n.TypeDefs, before, after)
		}
		if n.ComdatDefs != nil {
			w.walkBeforeAfter(&n.ComdatDefs, before, after)
		}
		if n.Globals != nil {
			w.walkBeforeAfter(&n.Globals, before, after)
		}
		if n.IndirectSymbols != nil {
			w.walkBeforeAfter(&n.IndirectSymbols, before, after)
		}
		if n.Funcs != nil {
			w.walkBeforeAfter(&n.Funcs, before, after)
		}
		if n.AttrGroupDefs != nil {
			w.walkBeforeAfter(&n.AttrGroupDefs, before, after)
		}
		if n.NamedMetadataDefs != nil {
			w.walkBeforeAfter(&n.NamedMetadataDefs, before, after)
		}
		if n.MetadataDefs != nil {
			w.walkBeforeAfter(&n.MetadataDefs, before, after)
		}
		if n.UseListOrders != nil {
			w.walkBeforeAfter(&n.UseListOrders, before, after)
		}
		if n.UseListOrderBBs != nil {
			w.walkBeforeAfter(&n.UseListOrderBBs, before, after)
		}
	// Top-level Entities
	case *ir.ComdatDef:
		// nothing to do.
	case *ir.Global:
		// Note, Typ is nil until global variable type resoltion has completed.
		if n.Typ != nil {
			w.walkBeforeAfter(&n.Typ, before, after)
		}
		w.walkBeforeAfter(&n.ContentType, before, after)
		if n.Init != nil {
			w.walkBeforeAfter(&n.Init, before, after)
		}
		w.walkBeforeAfter(&n.Metadata, before, after)
		w.walkBeforeAfter(&n.FuncAttrs, before, after)
		// TODO: continue here.
	case *ir.IndirectSymbol:
		w.walkBeforeAfter(&n.Typ, before, after)
		w.walkBeforeAfter(&n.Const, before, after)
	case *ir.Function:
		w.walkBeforeAfter(&n.FunctionHeader, before, after)
		w.walkBeforeAfter(&n.FunctionBody, before, after)
		w.walkBeforeAfter(&n.Sig, before, after)
		w.walkBeforeAfter(&n.Typ, before, after)
		w.walkBeforeAfter(&n.Metadata, before, after)
	case *ir.FunctionHeader:
		w.walkBeforeAfter(&n.RetType, before, after)
		w.walkBeforeAfter(&n.Params, before, after)
		w.walkBeforeAfter(&n.FuncAttrs, before, after)
		w.walkBeforeAfter(&n.Prefix, before, after)
		w.walkBeforeAfter(&n.Prologue, before, after)
		w.walkBeforeAfter(&n.Personality, before, after)
	case *ir.FunctionBody:
		w.walkBeforeAfter(&n.Blocks, before, after)
		w.walkBeforeAfter(&n.UseListOrders, before, after)
	case *ir.AttrGroupDef:
		w.walkBeforeAfter(&n.FuncAttrs, before, after)
	case *ir.UseListOrder:
		w.walkBeforeAfter(&n.Value, before, after)
	case *ir.UseListOrderBB:
		w.walkBeforeAfter(&n.Func, before, after)
		w.walkBeforeAfter(&n.Block, before, after)
	// Types
	case *types.VoidType:
		// nothing to do.
	case *types.FuncType:
		w.walkBeforeAfter(&n.RetType, before, after)
		w.walkBeforeAfter(&n.Params, before, after)
	case *types.IntType:
		// nothing to do.
	case *types.FloatType:
		// nothing to do.
	case *types.MMXType:
		// nothing to do.
	case *types.PointerType:
		w.walkBeforeAfter(&n.ElemType, before, after)
	case *types.VectorType:
		w.walkBeforeAfter(&n.ElemType, before, after)
	case *types.LabelType:
		// nothing to do.
	case *types.TokenType:
		// nothing to do.
	case *types.MetadataType:
		// nothing to do.
	case *types.ArrayType:
		w.walkBeforeAfter(&n.ElemType, before, after)
	case *types.StructType:
		w.walkBeforeAfter(&n.Fields, before, after)
	case *types.NamedType:
		// Note, Type is nil before type resolution has completed.
		if n.Type != nil {
			w.walkBeforeAfter(&n.Type, before, after)
		}
	// Values
	case *ir.InlineAsm:
		// nothing to do.
	// Constants
	case *constant.Bool:
		// nothing to do.
	case *constant.Int:
		// Note, Typ is nil until *ast.TypeConst type resoltion has completed.
		if n.Typ != nil {
			w.walkBeforeAfter(&n.Typ, before, after)
		}
	case *constant.Float:
		// Note, Typ is nil until *ast.TypeConst type resoltion has completed.
		if n.Typ != nil {
			w.walkBeforeAfter(&n.Typ, before, after)
		}
	case *constant.Null:
		// Note, Typ is nil until *ast.TypeConst type resoltion has completed.
		if n.Typ != nil {
			w.walkBeforeAfter(&n.Typ, before, after)
		}
	case *constant.None:
		// nothing to do.
	case *constant.Struct:
		// Note, Typ is nil until *ast.TypeConst type resoltion has completed.
		if n.Typ != nil {
			w.walkBeforeAfter(&n.Typ, before, after)
		}
		w.walkBeforeAfter(&n.Fields, before, after)
	case *constant.Array:
		// Note, Typ is nil until *ast.TypeConst type resoltion has completed.
		if n.Typ != nil {
			w.walkBeforeAfter(&n.Typ, before, after)
		}
		w.walkBeforeAfter(&n.Elems, before, after)
	case *constant.CharArray:
		// Note, Typ is nil until *ast.TypeConst type resoltion has completed.
		if n.Typ != nil {
			w.walkBeforeAfter(&n.Typ, before, after)
		}
	case *constant.Vector:
		// Note, Typ is nil until *ast.TypeConst type resoltion has completed.
		if n.Typ != nil {
			w.walkBeforeAfter(&n.Typ, before, after)
		}
		w.walkBeforeAfter(&n.Elems, before, after)
	case *constant.ZeroInitializer:
		// Note, Typ is nil until *ast.TypeConst type resoltion has completed.
		if n.Typ != nil {
			w.walkBeforeAfter(&n.Typ, before, after)
		}
	case *constant.Undef:
		// Note, Typ is nil until *ast.TypeConst type resoltion has completed.
		if n.Typ != nil {
			w.walkBeforeAfter(&n.Typ, before, after)
		}
	case *constant.BlockAddress:
		w.walkBeforeAfter(&n.Func, before, after)
		w.walkBeforeAfter(&n.Block, before, after)
	// Constant expressions
	case *constant.ExprAdd:
		w.walkBeforeAfter(&n.X, before, after)
		w.walkBeforeAfter(&n.Y, before, after)
	case *constant.ExprFAdd:
		w.walkBeforeAfter(&n.X, before, after)
		w.walkBeforeAfter(&n.Y, before, after)
	case *constant.ExprSub:
		w.walkBeforeAfter(&n.X, before, after)
		w.walkBeforeAfter(&n.Y, before, after)
	case *constant.ExprFSub:
		w.walkBeforeAfter(&n.X, before, after)
		w.walkBeforeAfter(&n.Y, before, after)
	case *constant.ExprMul:
		w.walkBeforeAfter(&n.X, before, after)
		w.walkBeforeAfter(&n.Y, before, after)
	case *constant.ExprFMul:
		w.walkBeforeAfter(&n.X, before, after)
		w.walkBeforeAfter(&n.Y, before, after)
	case *constant.ExprUDiv:
		w.walkBeforeAfter(&n.X, before, after)
		w.walkBeforeAfter(&n.Y, before, after)
	case *constant.ExprSDiv:
		w.walkBeforeAfter(&n.X, before, after)
		w.walkBeforeAfter(&n.Y, before, after)
	case *constant.ExprFDiv:
		w.walkBeforeAfter(&n.X, before, after)
		w.walkBeforeAfter(&n.Y, before, after)
	case *constant.ExprURem:
		w.walkBeforeAfter(&n.X, before, after)
		w.walkBeforeAfter(&n.Y, before, after)
	case *constant.ExprSRem:
		w.walkBeforeAfter(&n.X, before, after)
		w.walkBeforeAfter(&n.Y, before, after)
	case *constant.ExprFRem:
		w.walkBeforeAfter(&n.X, before, after)
		w.walkBeforeAfter(&n.Y, before, after)
	case *constant.ExprShl:
		w.walkBeforeAfter(&n.X, before, after)
		w.walkBeforeAfter(&n.Y, before, after)
	case *constant.ExprLShr:
		w.walkBeforeAfter(&n.X, before, after)
		w.walkBeforeAfter(&n.Y, before, after)
	case *constant.ExprAShr:
		w.walkBeforeAfter(&n.X, before, after)
		w.walkBeforeAfter(&n.Y, before, after)
	case *constant.ExprAnd:
		w.walkBeforeAfter(&n.X, before, after)
		w.walkBeforeAfter(&n.Y, before, after)
	case *constant.ExprOr:
		w.walkBeforeAfter(&n.X, before, after)
		w.walkBeforeAfter(&n.Y, before, after)
	case *constant.ExprXor:
		w.walkBeforeAfter(&n.X, before, after)
		w.walkBeforeAfter(&n.Y, before, after)
	case *constant.ExprExtractElement:
		w.walkBeforeAfter(&n.X, before, after)
		w.walkBeforeAfter(&n.Index, before, after)
	case *constant.ExprInsertElement:
		w.walkBeforeAfter(&n.X, before, after)
		w.walkBeforeAfter(&n.Elem, before, after)
		w.walkBeforeAfter(&n.Index, before, after)
	case *constant.ExprShuffleVector:
		w.walkBeforeAfter(&n.X, before, after)
		w.walkBeforeAfter(&n.Y, before, after)
		w.walkBeforeAfter(&n.Mask, before, after)
	case *constant.ExprExtractValue:
		w.walkBeforeAfter(&n.X, before, after)
	case *constant.ExprInsertValue:
		w.walkBeforeAfter(&n.X, before, after)
		w.walkBeforeAfter(&n.Elem, before, after)
	case *constant.ExprGetElementPtr:
		w.walkBeforeAfter(&n.Typ, before, after)
		w.walkBeforeAfter(&n.ElemType, before, after)
		w.walkBeforeAfter(&n.Src, before, after)
		w.walkBeforeAfter(&n.Indices, before, after)
	case *constant.Index:
		w.walkBeforeAfter(&n.Index, before, after)
	case *constant.ExprTrunc:
		w.walkBeforeAfter(&n.From, before, after)
		w.walkBeforeAfter(&n.To, before, after)
	case *constant.ExprZExt:
		w.walkBeforeAfter(&n.From, before, after)
		w.walkBeforeAfter(&n.To, before, after)
	case *constant.ExprSExt:
		w.walkBeforeAfter(&n.From, before, after)
		w.walkBeforeAfter(&n.To, before, after)
	case *constant.ExprFPTrunc:
		w.walkBeforeAfter(&n.From, before, after)
		w.walkBeforeAfter(&n.To, before, after)
	case *constant.ExprFPExt:
		w.walkBeforeAfter(&n.From, before, after)
		w.walkBeforeAfter(&n.To, before, after)
	case *constant.ExprFPToUI:
		w.walkBeforeAfter(&n.From, before, after)
		w.walkBeforeAfter(&n.To, before, after)
	case *constant.ExprFPToSI:
		w.walkBeforeAfter(&n.From, before, after)
		w.walkBeforeAfter(&n.To, before, after)
	case *constant.ExprUIToFP:
		w.walkBeforeAfter(&n.From, before, after)
		w.walkBeforeAfter(&n.To, before, after)
	case *constant.ExprSIToFP:
		w.walkBeforeAfter(&n.From, before, after)
		w.walkBeforeAfter(&n.To, before, after)
	case *constant.ExprPtrToInt:
		w.walkBeforeAfter(&n.From, before, after)
		w.walkBeforeAfter(&n.To, before, after)
	case *constant.ExprIntToPtr:
		w.walkBeforeAfter(&n.From, before, after)
		w.walkBeforeAfter(&n.To, before, after)
	case *constant.ExprBitCast:
		w.walkBeforeAfter(&n.From, before, after)
		w.walkBeforeAfter(&n.To, before, after)
	case *constant.ExprAddrSpaceCast:
		w.walkBeforeAfter(&n.From, before, after)
		w.walkBeforeAfter(&n.To, before, after)
	case *constant.ExprICmp:
		w.walkBeforeAfter(&n.X, before, after)
		w.walkBeforeAfter(&n.Y, before, after)
	case *constant.ExprFCmp:
		w.walkBeforeAfter(&n.X, before, after)
		w.walkBeforeAfter(&n.Y, before, after)
	case *constant.ExprSelect:
		w.walkBeforeAfter(&n.Cond, before, after)
		w.walkBeforeAfter(&n.X, before, after)
		w.walkBeforeAfter(&n.Y, before, after)
	// Basic blocks.
	case *ir.BasicBlock:
		w.walkBeforeAfter(&n.Insts, before, after)
		w.walkBeforeAfter(&n.Term, before, after)
	// Instructions
	case *ir.LocalDef:
		w.walkBeforeAfter(&n.Inst, before, after)
	case *ir.InstAdd:
		w.walkBeforeAfter(&n.X, before, after)
		w.walkBeforeAfter(&n.Y, before, after)
		w.walkBeforeAfter(&n.Metadata, before, after)
	case *ir.InstFAdd:
		w.walkBeforeAfter(&n.X, before, after)
		w.walkBeforeAfter(&n.Y, before, after)
		w.walkBeforeAfter(&n.Metadata, before, after)
	case *ir.InstSub:
		w.walkBeforeAfter(&n.X, before, after)
		w.walkBeforeAfter(&n.Y, before, after)
		w.walkBeforeAfter(&n.Metadata, before, after)
	case *ir.InstFSub:
		w.walkBeforeAfter(&n.X, before, after)
		w.walkBeforeAfter(&n.Y, before, after)
		w.walkBeforeAfter(&n.Metadata, before, after)
	case *ir.InstMul:
		w.walkBeforeAfter(&n.X, before, after)
		w.walkBeforeAfter(&n.Y, before, after)
		w.walkBeforeAfter(&n.Metadata, before, after)
	case *ir.InstFMul:
		w.walkBeforeAfter(&n.X, before, after)
		w.walkBeforeAfter(&n.Y, before, after)
		w.walkBeforeAfter(&n.Metadata, before, after)
	case *ir.InstUDiv:
		w.walkBeforeAfter(&n.X, before, after)
		w.walkBeforeAfter(&n.Y, before, after)
		w.walkBeforeAfter(&n.Metadata, before, after)
	case *ir.InstSDiv:
		w.walkBeforeAfter(&n.X, before, after)
		w.walkBeforeAfter(&n.Y, before, after)
		w.walkBeforeAfter(&n.Metadata, before, after)
	case *ir.InstFDiv:
		w.walkBeforeAfter(&n.X, before, after)
		w.walkBeforeAfter(&n.Y, before, after)
		w.walkBeforeAfter(&n.Metadata, before, after)
	case *ir.InstURem:
		w.walkBeforeAfter(&n.X, before, after)
		w.walkBeforeAfter(&n.Y, before, after)
		w.walkBeforeAfter(&n.Metadata, before, after)
	case *ir.InstSRem:
		w.walkBeforeAfter(&n.X, before, after)
		w.walkBeforeAfter(&n.Y, before, after)
		w.walkBeforeAfter(&n.Metadata, before, after)
	case *ir.InstFRem:
		w.walkBeforeAfter(&n.X, before, after)
		w.walkBeforeAfter(&n.Y, before, after)
		w.walkBeforeAfter(&n.Metadata, before, after)
	case *ir.InstShl:
		w.walkBeforeAfter(&n.X, before, after)
		w.walkBeforeAfter(&n.Y, before, after)
		w.walkBeforeAfter(&n.Metadata, before, after)
	case *ir.InstLShr:
		w.walkBeforeAfter(&n.X, before, after)
		w.walkBeforeAfter(&n.Y, before, after)
		w.walkBeforeAfter(&n.Metadata, before, after)
	case *ir.InstAShr:
		w.walkBeforeAfter(&n.X, before, after)
		w.walkBeforeAfter(&n.Y, before, after)
		w.walkBeforeAfter(&n.Metadata, before, after)
	case *ir.InstAnd:
		w.walkBeforeAfter(&n.X, before, after)
		w.walkBeforeAfter(&n.Y, before, after)
		w.walkBeforeAfter(&n.Metadata, before, after)
	case *ir.InstOr:
		w.walkBeforeAfter(&n.X, before, after)
		w.walkBeforeAfter(&n.Y, before, after)
		w.walkBeforeAfter(&n.Metadata, before, after)
	case *ir.InstXor:
		w.walkBeforeAfter(&n.X, before, after)
		w.walkBeforeAfter(&n.Y, before, after)
		w.walkBeforeAfter(&n.Metadata, before, after)
	case *ir.InstExtractElement:
		w.walkBeforeAfter(&n.X, before, after)
		w.walkBeforeAfter(&n.Index, before, after)
		w.walkBeforeAfter(&n.Metadata, before, after)
	case *ir.InstInsertElement:
		w.walkBeforeAfter(&n.X, before, after)
		w.walkBeforeAfter(&n.Elem, before, after)
		w.walkBeforeAfter(&n.Index, before, after)
		w.walkBeforeAfter(&n.Metadata, before, after)
	case *ir.InstShuffleVector:
		w.walkBeforeAfter(&n.X, before, after)
		w.walkBeforeAfter(&n.Y, before, after)
		w.walkBeforeAfter(&n.Mask, before, after)
		w.walkBeforeAfter(&n.Metadata, before, after)
	case *ir.InstExtractValue:
		w.walkBeforeAfter(&n.X, before, after)
		w.walkBeforeAfter(&n.Metadata, before, after)
	case *ir.InstInsertValue:
		w.walkBeforeAfter(&n.X, before, after)
		w.walkBeforeAfter(&n.Elem, before, after)
		w.walkBeforeAfter(&n.Metadata, before, after)
	case *ir.InstAlloca:
		w.walkBeforeAfter(&n.ElemType, before, after)
		if n.NElems != nil {
			w.walkBeforeAfter(&n.NElems, before, after)
		}
		w.walkBeforeAfter(&n.Metadata, before, after)
	case *ir.InstLoad:
		w.walkBeforeAfter(&n.ElemType, before, after)
		w.walkBeforeAfter(&n.Src, before, after)
		w.walkBeforeAfter(&n.Metadata, before, after)
	case *ir.InstStore:
		w.walkBeforeAfter(&n.Src, before, after)
		w.walkBeforeAfter(&n.Dst, before, after)
		w.walkBeforeAfter(&n.Metadata, before, after)
	case *ir.InstFence:
		w.walkBeforeAfter(&n.Metadata, before, after)
	case *ir.InstCmpXchg:
		w.walkBeforeAfter(&n.Ptr, before, after)
		w.walkBeforeAfter(&n.Cmp, before, after)
		w.walkBeforeAfter(&n.New, before, after)
		w.walkBeforeAfter(&n.Metadata, before, after)
	case *ir.InstAtomicRMW:
		w.walkBeforeAfter(&n.Ptr, before, after)
		w.walkBeforeAfter(&n.X, before, after)
		w.walkBeforeAfter(&n.Metadata, before, after)
	case *ir.InstGetElementPtr:
		w.walkBeforeAfter(&n.ElemType, before, after)
		w.walkBeforeAfter(&n.Src, before, after)
		w.walkBeforeAfter(&n.Indices, before, after)
		w.walkBeforeAfter(&n.Metadata, before, after)
	case *ir.InstTrunc:
		w.walkBeforeAfter(&n.From, before, after)
		w.walkBeforeAfter(&n.To, before, after)
		w.walkBeforeAfter(&n.Metadata, before, after)
	case *ir.InstZExt:
		w.walkBeforeAfter(&n.From, before, after)
		w.walkBeforeAfter(&n.To, before, after)
		w.walkBeforeAfter(&n.Metadata, before, after)
	case *ir.InstSExt:
		w.walkBeforeAfter(&n.From, before, after)
		w.walkBeforeAfter(&n.To, before, after)
		w.walkBeforeAfter(&n.Metadata, before, after)
	case *ir.InstFPTrunc:
		w.walkBeforeAfter(&n.From, before, after)
		w.walkBeforeAfter(&n.To, before, after)
		w.walkBeforeAfter(&n.Metadata, before, after)
	case *ir.InstFPExt:
		w.walkBeforeAfter(&n.From, before, after)
		w.walkBeforeAfter(&n.To, before, after)
		w.walkBeforeAfter(&n.Metadata, before, after)
	case *ir.InstFPToUI:
		w.walkBeforeAfter(&n.From, before, after)
		w.walkBeforeAfter(&n.To, before, after)
		w.walkBeforeAfter(&n.Metadata, before, after)
	case *ir.InstFPToSI:
		w.walkBeforeAfter(&n.From, before, after)
		w.walkBeforeAfter(&n.To, before, after)
		w.walkBeforeAfter(&n.Metadata, before, after)
	case *ir.InstUIToFP:
		w.walkBeforeAfter(&n.From, before, after)
		w.walkBeforeAfter(&n.To, before, after)
		w.walkBeforeAfter(&n.Metadata, before, after)
	case *ir.InstSIToFP:
		w.walkBeforeAfter(&n.From, before, after)
		w.walkBeforeAfter(&n.To, before, after)
		w.walkBeforeAfter(&n.Metadata, before, after)
	case *ir.InstPtrToInt:
		w.walkBeforeAfter(&n.From, before, after)
		w.walkBeforeAfter(&n.To, before, after)
		w.walkBeforeAfter(&n.Metadata, before, after)
	case *ir.InstIntToPtr:
		w.walkBeforeAfter(&n.From, before, after)
		w.walkBeforeAfter(&n.To, before, after)
		w.walkBeforeAfter(&n.Metadata, before, after)
	case *ir.InstBitCast:
		w.walkBeforeAfter(&n.From, before, after)
		w.walkBeforeAfter(&n.To, before, after)
		w.walkBeforeAfter(&n.Metadata, before, after)
	case *ir.InstAddrSpaceCast:
		w.walkBeforeAfter(&n.From, before, after)
		w.walkBeforeAfter(&n.To, before, after)
		w.walkBeforeAfter(&n.Metadata, before, after)
	case *ir.InstICmp:
		w.walkBeforeAfter(&n.X, before, after)
		w.walkBeforeAfter(&n.Y, before, after)
		w.walkBeforeAfter(&n.Metadata, before, after)
	case *ir.InstFCmp:
		w.walkBeforeAfter(&n.X, before, after)
		w.walkBeforeAfter(&n.Y, before, after)
		w.walkBeforeAfter(&n.Metadata, before, after)
	case *ir.InstPhi:
		w.walkBeforeAfter(&n.Type, before, after)
		w.walkBeforeAfter(&n.Incs, before, after)
		w.walkBeforeAfter(&n.Metadata, before, after)
	case *ir.Incoming:
		w.walkBeforeAfter(&n.X, before, after)
		w.walkBeforeAfter(&n.Pred, before, after)
	case *ir.InstSelect:
		w.walkBeforeAfter(&n.Cond, before, after)
		w.walkBeforeAfter(&n.X, before, after)
		w.walkBeforeAfter(&n.Y, before, after)
		w.walkBeforeAfter(&n.Metadata, before, after)
	case *ir.InstCall:
		w.walkBeforeAfter(&n.RetType, before, after)
		w.walkBeforeAfter(&n.Callee, before, after)
		w.walkBeforeAfter(&n.Args, before, after)
		w.walkBeforeAfter(&n.FuncAttrs, before, after)
		w.walkBeforeAfter(&n.OperandBundles, before, after)
		w.walkBeforeAfter(&n.Metadata, before, after)
	case *ir.InstVAArg:
		w.walkBeforeAfter(&n.ArgList, before, after)
		w.walkBeforeAfter(&n.ArgType, before, after)
		w.walkBeforeAfter(&n.Metadata, before, after)
	case *ir.InstLandingPad:
		w.walkBeforeAfter(&n.Type, before, after)
		w.walkBeforeAfter(&n.Clauses, before, after)
		w.walkBeforeAfter(&n.Metadata, before, after)
	case *ir.Clause:
		w.walkBeforeAfter(&n.X, before, after)
	case *ir.InstCatchPad:
		w.walkBeforeAfter(&n.Scope, before, after)
		w.walkBeforeAfter(&n.Args, before, after)
		w.walkBeforeAfter(&n.Metadata, before, after)
	case *ir.InstCleanupPad:
		w.walkBeforeAfter(&n.Scope, before, after)
		w.walkBeforeAfter(&n.Args, before, after)
		w.walkBeforeAfter(&n.Metadata, before, after)
	// Terminators
	case *ir.TermRet:
		if n.X != nil {
			w.walkBeforeAfter(&n.X, before, after)
		}
		w.walkBeforeAfter(&n.Metadata, before, after)
	case *ir.TermBr:
		w.walkBeforeAfter(&n.Target, before, after)
		w.walkBeforeAfter(&n.Metadata, before, after)
	case *ir.TermCondBr:
		w.walkBeforeAfter(&n.Cond, before, after)
		w.walkBeforeAfter(&n.TargetTrue, before, after)
		w.walkBeforeAfter(&n.TargetFalse, before, after)
		w.walkBeforeAfter(&n.Metadata, before, after)
	case *ir.TermSwitch:
		w.walkBeforeAfter(&n.X, before, after)
		w.walkBeforeAfter(&n.Default, before, after)
		w.walkBeforeAfter(&n.Cases, before, after)
		w.walkBeforeAfter(&n.Metadata, before, after)
	case *ir.Case:
		w.walkBeforeAfter(&n.X, before, after)
		w.walkBeforeAfter(&n.Target, before, after)
	case *ir.TermIndirectBr:
		w.walkBeforeAfter(&n.Addr, before, after)
		w.walkBeforeAfter(&n.Targets, before, after)
		w.walkBeforeAfter(&n.Metadata, before, after)
	case *ir.TermInvoke:
		w.walkBeforeAfter(&n.RetType, before, after)
		w.walkBeforeAfter(&n.Callee, before, after)
		w.walkBeforeAfter(&n.Args, before, after)
		w.walkBeforeAfter(&n.FuncAttrs, before, after)
		w.walkBeforeAfter(&n.OperandBundles, before, after)
		w.walkBeforeAfter(&n.Normal, before, after)
		w.walkBeforeAfter(&n.Exception, before, after)
		w.walkBeforeAfter(&n.Metadata, before, after)
	case *ir.TermResume:
		w.walkBeforeAfter(&n.X, before, after)
		w.walkBeforeAfter(&n.Metadata, before, after)
	case *ir.TermCatchSwitch:
		w.walkBeforeAfter(&n.Scope, before, after)
		w.walkBeforeAfter(&n.Handlers, before, after)
		w.walkBeforeAfter(&n.UnwindTarget, before, after)
		w.walkBeforeAfter(&n.Metadata, before, after)
	case *ir.TermCatchRet:
		w.walkBeforeAfter(&n.From, before, after)
		w.walkBeforeAfter(&n.To, before, after)
		w.walkBeforeAfter(&n.Metadata, before, after)
	case *ir.TermCleanupRet:
		w.walkBeforeAfter(&n.From, before, after)
		w.walkBeforeAfter(&n.UnwindTarget, before, after)
		w.walkBeforeAfter(&n.Metadata, before, after)
	case *ir.TermUnreachable:
		w.walkBeforeAfter(&n.Metadata, before, after)
	// Metadata
	case *metadata.NamedMetadataDef:
		w.walkBeforeAfter(&n.Nodes, before, after)
	case *metadata.MetadataDef:
		w.walkBeforeAfter(&n.Node, before, after)
	case *metadata.MDTuple:
		w.walkBeforeAfter(&n.Fields, before, after)
	case *metadata.Value:
		w.walkBeforeAfter(&n.Type, before, after)
		w.walkBeforeAfter(&n.Value, before, after)
	case *metadata.MDString:
		// nothing to do.
	case *metadata.MetadataAttachment:
		w.walkBeforeAfter(&n.Node, before, after)
	// Specialized Metadata
	case *metadata.DICompileUnit:
		w.walkBeforeAfter(&n.File, before, after) // required
		if n.Enums != nil {
			w.walkBeforeAfter(&n.Enums, before, after) // optional
		}
		if n.RetainedTypes != nil {
			w.walkBeforeAfter(&n.RetainedTypes, before, after) // optional
		}
		if n.Globals != nil {
			w.walkBeforeAfter(&n.Globals, before, after) // optional
		}
		if n.Imports != nil {
			w.walkBeforeAfter(&n.Imports, before, after) // optional
		}
		if n.Macros != nil {
			w.walkBeforeAfter(&n.Macros, before, after) // optional
		}
	case *metadata.DIFile:
		// nothing to do.
	case *metadata.DIBasicType:
		// nothing to do.
	case *metadata.DISubroutineType:
		w.walkBeforeAfter(&n.Types, before, after) // required
	case *metadata.DIDerivedType:
		if n.Scope != nil {
			w.walkBeforeAfter(&n.Scope, before, after) // optional
		}
		if n.File != nil {
			w.walkBeforeAfter(&n.File, before, after) // optional
		}
		w.walkBeforeAfter(&n.BaseType, before, after) // required
		if n.ExtraData != nil {
			w.walkBeforeAfter(&n.ExtraData, before, after) // optional
		}
	case *metadata.DICompositeType:
		if n.Scope != nil {
			w.walkBeforeAfter(&n.Scope, before, after) // optional
		}
		if n.File != nil {
			w.walkBeforeAfter(&n.File, before, after) // optional
		}
		if n.BaseType != nil {
			w.walkBeforeAfter(&n.BaseType, before, after) // optional
		}
		if n.Elements != nil {
			w.walkBeforeAfter(&n.Elements, before, after) // optional
		}
		if n.VtableHolder != nil {
			w.walkBeforeAfter(&n.VtableHolder, before, after) // optional
		}
		if n.TemplateParams != nil {
			w.walkBeforeAfter(&n.TemplateParams, before, after) // optional
		}
		if n.Discriminator != nil {
			w.walkBeforeAfter(&n.Discriminator, before, after) // optional
		}
	case *metadata.DISubrange:
		w.walkBeforeAfter(&n.Count, before, after) // required
	case *metadata.DIEnumerator:
		// nothing to do.
	case *metadata.DITemplateTypeParameter:
		w.walkBeforeAfter(&n.Type, before, after) // required
	case *metadata.DITemplateValueParameter:
		if n.Type != nil {
			w.walkBeforeAfter(&n.Type, before, after) // optional
		}
		w.walkBeforeAfter(&n.Value, before, after) // required
	case *metadata.DIModule:
		w.walkBeforeAfter(&n.Scope, before, after) // required
	case *metadata.DINamespace:
		w.walkBeforeAfter(&n.Scope, before, after) // required
	case *metadata.DIGlobalVariable:
		if n.Scope != nil {
			w.walkBeforeAfter(&n.Scope, before, after) // optional
		}
		if n.File != nil {
			w.walkBeforeAfter(&n.File, before, after) // optional
		}
		if n.Type != nil {
			w.walkBeforeAfter(&n.Type, before, after) // optional
		}
		if n.Declaration != nil {
			w.walkBeforeAfter(&n.Declaration, before, after) // optional
		}
	case *metadata.DISubprogram:
		if n.Scope != nil {
			w.walkBeforeAfter(&n.Scope, before, after) // optional
		}
		if n.File != nil {
			w.walkBeforeAfter(&n.File, before, after) // optional
		}
		if n.Type != nil {
			w.walkBeforeAfter(&n.Type, before, after) // optional
		}
		if n.ContainingType != nil {
			w.walkBeforeAfter(&n.ContainingType, before, after) // optional
		}
		if n.Unit != nil {
			w.walkBeforeAfter(&n.Unit, before, after) // optional
		}
		if n.TemplateParams != nil {
			w.walkBeforeAfter(&n.TemplateParams, before, after) // optional
		}
		if n.Declaration != nil {
			w.walkBeforeAfter(&n.Declaration, before, after) // optional
		}
		if n.Variables != nil {
			w.walkBeforeAfter(&n.Variables, before, after) // optional
		}
		if n.ThrownTypes != nil {
			w.walkBeforeAfter(&n.ThrownTypes, before, after) // optional
		}
	case *metadata.DILexicalBlock:
		w.walkBeforeAfter(&n.Scope, before, after) // required
		if n.File != nil {
			w.walkBeforeAfter(&n.File, before, after) // optional
		}
	case *metadata.DILexicalBlockFile:
		w.walkBeforeAfter(&n.Scope, before, after) // required
		if n.File != nil {
			w.walkBeforeAfter(&n.File, before, after) // optional
		}
	case *metadata.DILocation:
		w.walkBeforeAfter(&n.Scope, before, after) // required
		if n.InlinedAt != nil {
			w.walkBeforeAfter(&n.InlinedAt, before, after) // optional
		}
	case *metadata.DILocalVariable:
		w.walkBeforeAfter(&n.Scope, before, after) // required
		if n.File != nil {
			w.walkBeforeAfter(&n.File, before, after) // optional
		}
		if n.Type != nil {
			w.walkBeforeAfter(&n.Type, before, after) // optional
		}
	case *metadata.DIExpression:
		// nothing to do.
	case *metadata.DIGlobalVariableExpression:
		w.walkBeforeAfter(&n.Var, before, after) // required

		// Note, the C++ source code of LLVM states that "expr:" is a required
		// field, however, Clang is known to output DIGlobalVariableExpression
		// specialized metadata nodes only containing "var:"; e.g. from `cat.ll`:
		//
		//    !0 = !DIGlobalVariableExpression(var: !1)

		if n.Expr != nil {
			w.walkBeforeAfter(&n.Expr, before, after) // required
		}
	case *metadata.DIObjCProperty:
		if n.File != nil {
			w.walkBeforeAfter(&n.File, before, after) // optional
		}
		if n.Type != nil {
			w.walkBeforeAfter(&n.Type, before, after) // optional
		}
	case *metadata.DIImportedEntity:
		w.walkBeforeAfter(&n.Scope, before, after) // required
		if n.Entity != nil {
			w.walkBeforeAfter(&n.Entity, before, after) // optional
		}
		if n.File != nil {
			w.walkBeforeAfter(&n.File, before, after) // optional
		}
	case *metadata.DIMacro:
		// nothing to do.
	case *metadata.DIMacroFile:
		w.walkBeforeAfter(&n.File, before, after) // required
		if n.Nodes != nil {
			w.walkBeforeAfter(&n.Nodes, before, after) // optional
		}
	case *metadata.GenericDINode:
		if n.Operands != nil {
			w.walkBeforeAfter(&n.Operands, before, after) // optional
		}
	case *metadata.MDNull:
		// nothing to do.
	case *metadata.MDInt:
		// nothing to do.
	// Helper.
	case *ir.Arg:
		w.walkBeforeAfter(&n.X, before, after)
	case *ir.Param:
		w.walkBeforeAfter(&n.Typ, before, after)
	case *ir.OperandBundle:
		w.walkBeforeAfter(&n.Inputs, before, after)
	// From AST.

	case *ast.GlobalIdent:
		// nothing to do.
	case *ast.LocalIdent:
		// nothing to do.
	case *ast.LabelIdent:
		// nothing to do.
	case *ast.AttrGroupID:
		// nothing to do.
	case *ast.ComdatName:
		// nothing to do.
	case *ast.MetadataName:
		// nothing to do.
	case *ast.MetadataID:
		// nothing to do.
	case *ast.FloatConst:
		// nothing to do.
	case *ast.TypeValue:
		w.walkBeforeAfter(&n.Typ, before, after)
		w.walkBeforeAfter(&n.Value, before, after)
	case *ast.TypeConst:
		w.walkBeforeAfter(&n.Typ, before, after)
		w.walkBeforeAfter(&n.Const, before, after)
	case *ast.MetadataValue:
		w.walkBeforeAfter(&n.Metadata, before, after)

	// slices
	case []*constant.Index:
		for i := range n {
			w.walkBeforeAfter(&n[i], before, after)
		}
	case []*ir.AttrGroupDef:
		for i := range n {
			w.walkBeforeAfter(&n[i], before, after)
		}
	case []*ir.BasicBlock:
		for i := range n {
			w.walkBeforeAfter(&n[i], before, after)
		}
	case []*ir.Case:
		for i := range n {
			w.walkBeforeAfter(&n[i], before, after)
		}
	case []*ir.Clause:
		for i := range n {
			w.walkBeforeAfter(&n[i], before, after)
		}
	case []*ir.ComdatDef:
		for i := range n {
			w.walkBeforeAfter(&n[i], before, after)
		}
	case []*ir.Function:
		for i := range n {
			w.walkBeforeAfter(&n[i], before, after)
		}
	case []*ir.Global:
		for i := range n {
			w.walkBeforeAfter(&n[i], before, after)
		}
	case []*ir.Incoming:
		for i := range n {
			w.walkBeforeAfter(&n[i], before, after)
		}
	case []*ir.IndirectSymbol:
		for i := range n {
			w.walkBeforeAfter(&n[i], before, after)
		}
	case []*ir.ModuleAsm:
		for i := range n {
			w.walkBeforeAfter(&n[i], before, after)
		}
	case []*ir.OperandBundle:
		for i := range n {
			w.walkBeforeAfter(&n[i], before, after)
		}
	case []*ir.Param:
		for i := range n {
			w.walkBeforeAfter(&n[i], before, after)
		}
	case []*ir.UseListOrder:
		for i := range n {
			w.walkBeforeAfter(&n[i], before, after)
		}
	case []*ir.UseListOrderBB:
		for i := range n {
			w.walkBeforeAfter(&n[i], before, after)
		}
	case []*metadata.MetadataAttachment:
		for i := range n {
			w.walkBeforeAfter(&n[i], before, after)
		}
	case []*metadata.MetadataDef:
		for i := range n {
			w.walkBeforeAfter(&n[i], before, after)
		}
	case []*metadata.NamedMetadataDef:
		for i := range n {
			w.walkBeforeAfter(&n[i], before, after)
		}
	case []*types.NamedType:
		for i := range n {
			w.walkBeforeAfter(&n[i], before, after)
		}
	case []ir.Argument:
		for i := range n {
			w.walkBeforeAfter(&n[i], before, after)
		}
	case []ir.Constant:
		for i := range n {
			w.walkBeforeAfter(&n[i], before, after)
		}
	case []ir.FuncAttribute:
		for i := range n {
			w.walkBeforeAfter(&n[i], before, after)
		}
	case []ir.Instruction:
		for i := range n {
			w.walkBeforeAfter(&n[i], before, after)
		}
	case []metadata.MDField:
		for i := range n {
			w.walkBeforeAfter(&n[i], before, after)
		}
	case []metadata.MetadataNode:
		for i := range n {
			w.walkBeforeAfter(&n[i], before, after)
		}
	case []types.Type:
		for i := range n {
			w.walkBeforeAfter(&n[i], before, after)
		}
	case []value.Value:
		for i := range n {
			w.walkBeforeAfter(&n[i], before, after)
		}

	default:
		panic(fmt.Errorf("support for type %T not yet implemented", x))
	}

	after(x)
}
