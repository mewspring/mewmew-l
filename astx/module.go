package astx

import (
	"github.com/mewmew/l/ast"
)

// === [ Module ] ==============================================================

func NewModule(topLevelEntities interface{}) (*ast.Module, error) {
	entities := topLevelEntities.([]ast.TopLevelEntity)
	return &ast.Module{
		Entities: entities,
	}, nil
}

func NewTopLevelEntityList(topLevelEntity interface{}) ([]ast.TopLevelEntity, error) {
	elem := topLevelEntity.(ast.TopLevelEntity)
	return []ast.TopLevelEntity{elem}, nil
}

func ApppendTopLevelEntity(topLevelEntities, topLevelEntity interface{}) ([]ast.TopLevelEntity, error) {
	list := topLevelEntities.([]ast.TopLevelEntity)
	elem := topLevelEntity.(ast.TopLevelEntity)
	return append(list, elem), nil
}

// ~~~ [ Source Filename ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

func NewSourceFilename(sourceFilename interface{}) (*ast.SourceFilename, error) {
	name := String(sourceFilename)
	return &ast.SourceFilename{
		Name: name,
	}, nil
}

// ~~~ [ Target Definition ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

func NewTargetTriple(targetTriple interface{}) (*ast.TargetTriple, error) {
	triple := String(targetTriple)
	return &ast.TargetTriple{
		TargetTriple: triple,
	}, nil
}

func NewDataLayout(dataLayout interface{}) (*ast.DataLayout, error) {
	layout := String(dataLayout)
	return &ast.DataLayout{
		DataLayout: layout,
	}, nil
}

// ~~~ [ Module-level Inline Assembly ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

func NewModuleAsm(moduleAsm interface{}) (*ast.ModuleAsm, error) {
	asm := String(moduleAsm)
	return &ast.ModuleAsm{
		Asm: asm,
	}, nil
}

// ~~~ [ Type Defintion ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

func NewTypeDef(localIdent, typ interface{}) (*ast.TypeDef, error) {
	name := localIdent.(ast.LocalIdent)
	t := typ.(ast.Type)
	return &ast.TypeDef{
		Name: name,
		Type: t,
	}, nil
}

// ~~~ [ Comdat Definition ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

func NewComdatDef(comdatName, selectionKind interface{}) (*ast.ComdatDef, error) {
	name := comdatName.(ast.ComdatName)
	kind := selectionKind.(ast.SelectionKind)
	return &ast.ComdatDef{
		Name: name,
		Kind: kind,
	}, nil
}

// ~~~ [ Global Variable Declaration or Definition ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~

func NewGlobal(globalIdent, linkage, preemptionSpecifier, visibility, dllStorageClass, threadLocal, unnamedAddr, addrSpace, externallyInitialized, immutable, typ, init, globalAttrs, funcAttrs interface{}) (*ast.Global, error) {
	name := globalIdent.(ast.GlobalIdent)
	link := linkage.(ast.Linkage)
	preemption := preemptionSpecifier.(ast.PreemptionSpecifier)
	v := visibility.(ast.Visibility)
	dllStorage := dllStorageClass.(ast.DLLStorageClass)
	tls := threadLocal.(*ast.ThreadLocal)
	uaddr := unnamedAddr.(ast.UnnamedAddr)
	aspace := addrSpace.(ast.AddrSpace)
	externInit := externallyInitialized.(bool)
	imm := immutable.(bool)
	t := typ.(ast.Type)
	i := init.(ast.Constant)
	gattrs := globalAttrs.([]ast.GlobalAttribute)
	fattrs := funcAttrs.([]ast.FuncAttribute)
	return &ast.Global{
		Name:                  name,
		Linkage:               link,
		Preemption:            preemption,
		Visibility:            v,
		DLLStorageClass:       dllStorage,
		ThreadLocal:           tls,
		UnnamedAddr:           uaddr,
		AddrSpace:             aspace,
		ExternallyInitialized: externInit,
		Immutable:             imm,
		Type:                  t,
		Init:                  i,
		GlobalAttrs:           gattrs,
		FuncAttrs:             fattrs,
	}, nil
}

func NewThreadLocal(model interface{}) (*ast.ThreadLocal, error) {
	m := model.(ast.TLSModel)
	return &ast.ThreadLocal{
		Model: m,
	}, nil
}

func NewGlobalAttrList(globalAttr interface{}) ([]ast.GlobalAttribute, error) {
	elem := globalAttr.(ast.GlobalAttribute)
	return []ast.GlobalAttribute{elem}, nil
}

func ApppendGlobalAttr(globalAttrs, globalAttr interface{}) ([]ast.GlobalAttribute, error) {
	list := globalAttrs.([]ast.GlobalAttribute)
	elem := globalAttr.(ast.GlobalAttribute)
	return append(list, elem), nil
}

// ~~~ [ Indirect Symbol ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

func NewIndirectSymbol(globalIdent, linkage, preemptionSpecifier, visibility, dllStorageClass, threadLocal, unnamedAddr, alias, indirectSymbolBody interface{}) (*ast.IndirectSymbol, error) {
	name := globalIdent.(ast.GlobalIdent)
	link := linkage.(ast.Linkage)
	preemption := preemptionSpecifier.(ast.PreemptionSpecifier)
	v := visibility.(ast.Visibility)
	dllStorage := dllStorageClass.(ast.DLLStorageClass)
	tls := threadLocal.(*ast.ThreadLocal)
	uaddr := unnamedAddr.(ast.UnnamedAddr)
	a := alias.(bool)
	body := indirectSymbolBody.(*IndirectSymbolBody)
	return &ast.IndirectSymbol{
		Name:            name,
		Linkage:         link,
		Preemption:      preemption,
		Visibility:      v,
		DLLStorageClass: dllStorage,
		ThreadLocal:     tls,
		UnnamedAddr:     uaddr,
		Alias:           a,
		Type:            body.Type,
		PtrType:         body.PtrType,
		Value:           body.Value,
	}, nil
}

type IndirectSymbolBody struct {
	Type    ast.Type
	PtrType ast.Type
	Value   ast.Constant // aliasee or resolver
}

func NewIndirectSymbolBody(typ, ptrType, value interface{}) (*IndirectSymbolBody, error) {
	t := typ.(ast.Type)
	ptrTyp := ptrType.(ast.Type)
	val := value.(ast.Constant)
	return &IndirectSymbolBody{
		Type:    t,
		PtrType: ptrTyp,
		Value:   val,
	}, nil
}

// ~~~ [ Function Declaration or Definition ] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

func NewFunction(linkage, funcHeader, funcBody, metadataAttachments interface{}) (*ast.Function, error) {
	link := linkage.(ast.Linkage)
	hdr := funcHeader.(*ast.FunctionHeader)
	body := funcBody.(*ast.FunctionBody)
	mds := metadataAttachments.([]ast.MetadataAttachment)
	return &ast.Function{
		Linkage:  link,
		Header:   hdr,
		Body:     body,
		Metadata: mds,
	}, nil
}

func NewFunctionHeader(preemptionSpecifier, visibility, dllStorageClass, callingConv, returnAttrs, retType, globalIdent, params, unnamedAddr, funcAttrs, section, comdat, gc, prefix, prologue, personality interface{}) (*ast.FunctionHeader, error) {
	preemption := preemptionSpecifier.(ast.PreemptionSpecifier)
	v := visibility.(ast.Visibility)
	dllStorage := dllStorageClass.(ast.DLLStorageClass)
	cc := callingConv.(ast.CallingConv)
	retAttrs := returnAttrs.([]ast.ReturnAttribute)
	retTyp := retType.(ast.Type)
	name := globalIdent.(ast.GlobalIdent)
	ps := params.(*Params)
	uaddr := unnamedAddr.(ast.UnnamedAddr)
	fattrs := funcAttrs.([]ast.FuncAttribute)
	s := section.(*ast.Section)
	c := comdat.(*ast.Comdat)
	garbage := gc.(string)
	pre := prefix.(*ast.TypeConst)
	pro := prologue.(*ast.TypeConst)
	person := personality.(*ast.TypeConst)
	return &ast.FunctionHeader{
		Preemption:      preemption,
		Visibility:      v,
		DLLStorageClass: dllStorage,
		CallingConv:     cc,
		ReturnAttrs:     retAttrs,
		RetType:         retTyp,
		Name:            name,
		Params:          ps.Params,
		Variadic:        ps.Variadic,
		UnnamedAddr:     uaddr,
		FuncAttrs:       fattrs,
		Section:         s,
		Comdat:          c,
		GC:              garbage,
		Prefix:          pre,
		Prologue:        pro,
		Personality:     person,
	}, nil
}
