package irx

import (
	"fmt"

	"github.com/mewmew/l/asm/internal/ast"
	"github.com/mewmew/l/ir"
	"github.com/mewmew/l/ir/constant"
	"github.com/mewmew/l/ir/metadata"
	"github.com/mewmew/l/ll"
	"github.com/mewmew/l/ll/types"
	"github.com/rickypai/natsort"
)

// indexGlobals indexes global variables, indirect symbols and functions.
func (m *Module) indexGlobals() {
	// Index global variables, indirect symbols and functions.
	for name, old := range m.globalIdent {
		switch old.(type) {
		case *ast.Global:
			m.globals[name] = &ir.Global{
				Name: name,
			}
		//case *ast.IndirectSymbol:
		case *ast.Function:
			m.functions[name] = &ir.Function{
				Name: name,
			}
		default:
			panic(fmt.Errorf("support for global %T not yet implemented", old))
		}
	}
}

// resolveGlobals resolves global variables, indirect symbols and functions.
func (m *Module) resolveGlobals() {
	// Index global variables, indirect symbols and functions.
	for name, old := range m.globalIdent {
		switch old := old.(type) {
		case *ast.Global:
			m.resolveGlobal(old, m.globals[name])
		//case *ast.IndirectSymbol:
		//case *ast.Function:
		default:
			panic(fmt.Errorf("support for global %T not yet implemented", old))
		}
	}

	// Add global declarations and defintions to module.
	var names []string
	for name := range m.globals {
		names = append(names, name)
	}
	natsort.Strings(names)
	for _, name := range names {
		m.Globals = append(m.Globals, m.globals[name])
	}
	// Add function declarations and defintions to module.
	//names = names[:0]
	//for name := range m.functions {
	//	names = append(names, name)
	//}
	//natsort.Strings(names)
	//for _, name := range names {
	//	m.Functions = append(m.Functions, m.functions[name])
	//}
}

// resolveGlobal resolves the given global variable.
func (m *Module) resolveGlobal(old *ast.Global, g *ir.Global) {
	g.Name = old.Name.Ident
	g.Linkage = old.Linkage
	g.Preemption = old.Preemption
	g.Visibility = old.Visibility
	g.DLLStorageClass = old.DLLStorageClass
	g.ThreadLocal = old.ThreadLocal
	g.UnnamedAddr = old.UnnamedAddr
	g.AddrSpace = old.AddrSpace
	g.ExternallyInitialized = old.ExternallyInitialized
	g.Immutable = old.Immutable
	g.ContentType = m.irType(old.Type)
	g.Typ = &types.PointerType{
		ElemType: g.ContentType,
	}
	if old.Init != nil {
		g.Init = m.irConstant(old.Init)
	}
	g.GlobalAttrs = m.irGlobalAttrs(old.GlobalAttrs)
	g.FuncAttrs = m.irFuncAttrs(old.FuncAttrs)
}

// irGlobalAttrs returns the LLVM IR global attributes corresponding to the
// given AST global attributes.
func (m *Module) irGlobalAttrs(old []ll.GlobalAttribute) []ll.GlobalAttribute {
	var attrs []ll.GlobalAttribute
	for i := range old {
		attr := m.irGlobalAttr(old[i])
		attrs = append(attrs, attr)
	}
	return attrs
}

// irGlobalAttr returns the LLVM IR global attribute corresponding to the given
// AST global attribute.
func (m *Module) irGlobalAttr(old ll.GlobalAttribute) ll.GlobalAttribute {
	switch old := old.(type) {
	case *ll.Section:
		return old
	case *ll.Comdat:
		return old
	case *ll.Alignment:
		return old
	case *metadata.MetadataAttachment:
		return m.irMetadataAttachment(old)
	default:
		panic(fmt.Errorf("support for global attribute type %T not yet implemented", old))
	}
}

// irFuncAttrs returns the LLVM IR function attributes corresponding to the
// given AST function attributes.
func (m *Module) irFuncAttrs(old []ll.FuncAttribute) []ll.FuncAttribute {
	var attrs []ll.FuncAttribute
	for i := range old {
		attr := m.irFuncAttr(old[i])
		attrs = append(attrs, attr)
	}
	return attrs
}

// irFuncAttr returns the LLVM IR function attribute corresponding to the given
// AST function attribute.
func (m *Module) irFuncAttr(old ll.FuncAttribute) ll.FuncAttribute {
	switch old := old.(type) {
	case *ast.AttrGroupID:
		return m.attrGroupDefs[old.ID]
	case *ll.Alignment:
		return old
	case *ll.AllocSize:
		return old
	case *ll.StackAlignment:
		return old
	case *ll.FuncAttrString:
		return old
	case *ll.FuncAttrPair:
		return old
	case ll.FuncAttr:
		return old
	default:
		panic(fmt.Errorf("support for global attribute type %T not yet implemented", old))
	}
}

// irGlobal returns the LLVM IR global corresponding to the given AST global
// identifier.
func (m *Module) irGlobal(old *ast.GlobalIdent) constant.Constant {
	if g, ok := m.globals[old.Ident]; ok {
		return g
	}
	//if alias, ok := m.aliases[old.Ident]; ok {
	//	return alias
	//}
	//if ifunc, ok := m.ifuncs[old.Ident]; ok {
	//	return ifunc
	//}
	if f, ok := m.functions[old.Ident]; ok {
		return f
	}
	panic(fmt.Errorf("unable to locate global %q", old.Ident))
}
