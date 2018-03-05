package irx

import (
	"fmt"

	"github.com/mewmew/l/asm/internal/ast"
	"github.com/mewmew/l/ir"
	"github.com/mewmew/l/ir/constant"
	"github.com/mewmew/l/ir/types"
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
	g.Linkage = ir.Linkage(old.Linkage)
	g.Preemption = ir.Preemption(old.Preemption)
	g.Visibility = ir.Visibility(old.Visibility)
	g.DLLStorageClass = ir.DLLStorageClass(old.DLLStorageClass)
	if old.ThreadLocal != nil {
		g.ThreadLocal = m.irThreadLocal(old.ThreadLocal)
	}
	g.UnnamedAddr = ir.UnnamedAddr(old.UnnamedAddr)
	g.AddrSpace = types.AddrSpace(old.AddrSpace)
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

// irThreadLocal returns the LLVM IR thread local storage corresponding to the
// given AST thread local storage.
func (m *Module) irThreadLocal(old *ast.ThreadLocal) *ir.ThreadLocal {
	return &ir.ThreadLocal{
		Model: ir.TLSModel(old.Model),
	}
}

// irGlobalAttrs returns the LLVM IR global attributes corresponding to the
// given AST global attributes.
func (m *Module) irGlobalAttrs(old []ast.GlobalAttribute) []ir.GlobalAttribute {
	var attrs []ir.GlobalAttribute
	for i := range old {
		attr := m.irGlobalAttr(old[i])
		attrs = append(attrs, attr)
	}
	return attrs
}

// irGlobalAttr returns the LLVM IR global attribute corresponding to the given
// AST global attribute.
func (m *Module) irGlobalAttr(old ast.GlobalAttribute) ir.GlobalAttribute {
	switch old := old.(type) {
	case *ast.Section:
		return m.irSection(old)
	case *ast.Comdat:
		return m.irComdat(old)
	case *ast.Alignment:
		return m.irAlignment(old)
	case *ast.MetadataAttachment:
		return m.irMetadataAttachment(old)
	default:
		panic(fmt.Errorf("support for global attribute type %T not yet implemented", old))
	}
}

// irSection returns the LLVM IR section attribute corresponding to the given
// AST section attribute.
func (m *Module) irSection(old *ast.Section) *ir.Section {
	return &ir.Section{
		Name: old.Name,
	}
}

// irComdat returns the LLVM IR comdat attribute corresponding to the given AST
// comdat attribute.
func (m *Module) irComdat(old *ast.Comdat) *ir.Comdat {
	return &ir.Comdat{
		Name: old.Name.Name,
	}
}

// irAlignment returns the LLVM IR alignment attribute corresponding to the given
// AST alignment attribute.
func (m *Module) irAlignment(old *ast.Alignment) *ir.Alignment {
	return &ir.Alignment{
		Align: old.Align,
	}
}

// irFuncAttrs returns the LLVM IR function attributes corresponding to the
// given AST function attributes.
func (m *Module) irFuncAttrs(old []ast.FuncAttribute) []ir.FuncAttribute {
	var attrs []ir.FuncAttribute
	for i := range old {
		attr := m.irFuncAttr(old[i])
		attrs = append(attrs, attr)
	}
	return attrs
}

// irFuncAttr returns the LLVM IR function attribute corresponding to the given
// AST function attribute.
func (m *Module) irFuncAttr(old ast.FuncAttribute) ir.FuncAttribute {
	switch old := old.(type) {
	case *ast.AttrGroupID:
		return m.attrGroupDefs[old.ID]
	case *ast.Alignment:
		return m.irAlignment(old)
	case *ast.AllocSize:
		return m.irAllocSize(old)
	case *ast.StackAlignment:
		return m.irStackAlignment(old)
	case *ast.FuncAttrString:
		return &ir.FuncAttrString{
			Value: old.Value,
		}
	case *ast.FuncAttrPair:
		return &ir.FuncAttrPair{
			Key:   old.Key,
			Value: old.Value,
		}
	case ast.FuncAttr:
		return ir.FuncAttr(old)
	default:
		panic(fmt.Errorf("support for global attribute type %T not yet implemented", old))
	}
}

// irAllocSize returns the LLVM IR allocation size attribute corresponding to
// the given AST allocation size attribute.
func (m *Module) irAllocSize(old *ast.AllocSize) *ir.AllocSize {
	return &ir.AllocSize{
		BaseSize: old.BaseSize,
		N:        old.N,
	}
}

// irStackAlignment returns the LLVM IR stack alignment attribute corresponding
// to the given AST stack alignment attribute.
func (m *Module) irStackAlignment(old *ast.StackAlignment) *ir.StackAlignment {
	return &ir.StackAlignment{
		Align: old.Align,
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
