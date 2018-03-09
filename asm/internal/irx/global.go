package irx

import (
	"fmt"

	"github.com/mewmew/l/asm/internal/ast"
	"github.com/mewmew/l/ir"
	"github.com/mewmew/l/ir/types"
	"github.com/rickypai/natsort"
)

// indexGlobals indexes global variables, indirect symbols and functions.
func (m *Module) indexGlobals() {
	// Index global variables, indirect symbols and functions.
	for name, old := range m.globalIdent {
		switch old.(type) {
		case *ir.Global:
			m.globals[name] = &ir.Global{
				Name: name,
			}
		//case *ast.IndirectSymbol:
		case *ir.Function:
			m.funcs[name] = &ir.Function{
				FunctionHeader: &ir.FunctionHeader{
					Name: name,
				},
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
		case *ir.Global:
			m.resolveGlobal(old, m.globals[name])
		//case *ast.IndirectSymbol:
		//case *ir.Function:
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
	names = names[:0]
	for name := range m.funcs {
		names = append(names, name)
	}
	natsort.Strings(names)
	for _, name := range names {
		m.Funcs = append(m.Funcs, m.funcs[name])
	}
}

// resolveGlobal resolves the given global variable.
func (m *Module) resolveGlobal(old *ir.Global, g *ir.Global) {
	g.Name = old.Name
	g.Linkage = old.Linkage
	g.Preemption = old.Preemption
	g.Visibility = old.Visibility
	g.DLLStorageClass = old.DLLStorageClass
	g.ThreadLocal = old.ThreadLocal
	g.UnnamedAddr = old.UnnamedAddr
	g.AddrSpace = old.AddrSpace
	g.ExternallyInitialized = old.ExternallyInitialized
	g.Immutable = old.Immutable
	g.ContentType = m.irType(old.ContentType)
	g.Typ = &types.PointerType{
		ElemType: g.ContentType,
	}
	if old.Init != nil {
		// TODO: Set type of g.Init from g.ContentType?
		g.Init = m.irConstant(old.Init)
	}
	g.Section = old.Section
	g.Comdat = old.Comdat
	g.Align = old.Align
	g.Metadata = m.irMetadataAttachments(old.Metadata)
	g.FuncAttrs = m.irFuncAttrs(old.FuncAttrs)
}

// irFuncAttrs returns the LLVM IR function attributes corresponding to the
// given AST function attributes.
func (m *Module) irFuncAttrs(old []ir.FuncAttribute) []ir.FuncAttribute {
	var attrs []ir.FuncAttribute
	for i := range old {
		attr := m.irFuncAttr(old[i])
		attrs = append(attrs, attr)
	}
	return attrs
}

// irFuncAttr returns the LLVM IR function attribute corresponding to the given
// AST function attribute.
func (m *Module) irFuncAttr(old ir.FuncAttribute) ir.FuncAttribute {
	switch old := old.(type) {
	case *ast.AttrGroupID:
		return m.attrGroupDefs[old.ID]
	case *ir.Alignment:
		return old
	case *ir.AllocSize:
		return old
	case *ir.StackAlignment:
		return old
	case *ir.FuncAttrString:
		return old
	case *ir.FuncAttrPair:
		return old
	case ir.FuncAttr:
		return old
	default:
		panic(fmt.Errorf("support for global attribute type %T not yet implemented", old))
	}
}

// irGlobal returns the LLVM IR global corresponding to the given AST global
// identifier.
func (m *Module) irGlobal(old *ast.GlobalIdent) ir.Constant {
	if g, ok := m.globals[old.Name]; ok {
		return g
	}
	//if alias, ok := m.aliases[old.Name]; ok {
	//	return alias
	//}
	//if ifunc, ok := m.ifuncs[old.Name]; ok {
	//	return ifunc
	//}
	if f, ok := m.funcs[old.Name]; ok {
		return f
	}
	panic(fmt.Errorf("unable to locate global %q", old.Name))
}
