// Package astx defines the Gocc semantic actions to parse LLVM IR into an
// abstract syntax tree.
package astx

import (
	"fmt"
	"strconv"
	"strings"

	"github.com/mewmew/l/asm/internal/ast"
	"github.com/mewmew/l/asm/internal/token"
	"github.com/mewmew/l/internal/enc"
	"github.com/mewmew/l/ir"
	"github.com/mewmew/l/ir/constant"
	"github.com/mewmew/l/ir/value"
	"github.com/mewmew/l/ll"
	"github.com/mewmew/l/ll/types"
	"github.com/pkg/errors"
)

// Params is a list of optionally variadic function parameters.
type Params struct {
	Params   []*ll.Param
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

// String returns the string corresponding to the given token.
func String(tok interface{}) string {
	s := tok.(*token.Token)
	return string(s.Lit)
}

// LocalIdent returns the string corresponding to the given local identifier
// token. A nil local identifier corresponds to the empty string.
func LocalIdent(tok interface{}) string {
	ident := tok.(*ast.LocalIdent)
	if ident == nil {
		return ""
	}
	return ident.Name
}

// LabelIdent returns the string corresponding to the given label identifier
// token. A nil label identifier corresponds to the empty string.
func LabelIdent(tok interface{}) string {
	ident := tok.(*ast.LabelIdent)
	if ident == nil {
		return ""
	}
	return ident.Name
}

// UnquoteString returns the unquoted string corresponding to the given string
// literal.
func UnquoteString(tok interface{}) string {
	return enc.Unquote(String(tok))
}

// Int returns the integer literal corresponding to the given token.
func Int(tok interface{}) int64 {
	s := String(tok)
	x, err := strconv.ParseInt(s, 10, 64)
	if err != nil {
		panic(err)
	}
	return x
}

// TypeValue returns a type-value pair based on the given type and value.
func TypeValue(typ, val interface{}) *ast.TypeValue {
	return &ast.TypeValue{
		Typ:   typ.(types.Type),
		Value: val.(value.Value),
	}
}

// TypeConst returns a type-constant pair based on the given type and constant.
func TypeConst(typ, val interface{}) *ast.TypeConst {
	return &ast.TypeConst{
		Typ:   typ.(types.Type),
		Const: val.(ir.Constant),
	}
}

// OptConstant returns a constant based on the given optional constant.
func OptConstant(c interface{}) ir.Constant {
	switch c := c.(type) {
	case *ast.TypeConst:
		return c
	case nil:
		return nil
	default:
		panic(fmt.Errorf("support for constant type %d not yet implemented", c))
	}
}

// Label returns a label based on the given label type and name.
func Label(typ, name interface{}) *ir.BasicBlock {
	if _, ok := typ.(*types.LabelType); !ok {
		panic(errors.Errorf(`invalid label type, expected *ast.LabelType, got %T`, typ))
	}
	return &ir.BasicBlock{
		Name: name.(*ast.LocalIdent).Name,
	}
}

// NewIntType returns a new integer type corresponding to the given token.
func NewIntType(tok interface{}) (*types.IntType, error) {
	s := String(tok)
	if !strings.HasPrefix(s, "i") {
		return nil, errors.Errorf("invalid integer type %q", s)
	}
	s = s[len("i"):]
	bits, err := strconv.ParseInt(s, 10, 64)
	if err != nil {
		return nil, errors.WithStack(err)
	}
	return &types.IntType{
		BitSize: bits,
	}, nil
}

// NewIntConst returns a new integer constant corresponding to the given token.
func NewIntConst(tok interface{}) (*constant.IntConst, error) {
	return constant.NewIntFromString(String(tok)), nil
}

// NewFloatConst returns a new floating-point constant corresponding to the
// given token.
func NewFloatConst(tok interface{}) (*constant.FloatConst, error) {
	return constant.NewFloatFromString(String(tok)), nil
}

// NewCallingConv returns a new calling convention corresponding to the given
// token.
func NewCallingConv(tok interface{}) (ll.CallingConv, error) {
	// ref: include/llvm/IR/CallingConv.h
	// (rev db070bbdacd303ae7da129f59beaf35024d94c53)
	cc := Int(tok)
	switch cc {
	case 0:
		return ll.CallingConvC, nil
	case 8:
		return ll.CallingConvFast, nil
	case 9:
		return ll.CallingConvCold, nil
	case 10:
		return ll.CallingConvGHC, nil
	case 11:
		return ll.CallingConvHiPE, nil
	case 12:
		return ll.CallingConvWebKitJS, nil
	case 13:
		return ll.CallingConvAnyReg, nil
	case 14:
		return ll.CallingConvPreserveMost, nil
	case 15:
		return ll.CallingConvPreserveAll, nil
	case 16:
		return ll.CallingConvSwift, nil
	case 17:
		return ll.CallingConvCXXFastTLS, nil
	case 64:
		return ll.CallingConvX86StdCall, nil
	case 65:
		return ll.CallingConvX86FastCall, nil
	case 66:
		return ll.CallingConvARMAPCS, nil
	case 67:
		return ll.CallingConvARMAAPCS, nil
	case 68:
		return ll.CallingConvARMAAPCSVFP, nil
	case 69:
		return ll.CallingConvMSP430Intr, nil
	case 70:
		return ll.CallingConvX86ThisCall, nil
	case 71:
		return ll.CallingConvPTXKernel, nil
	case 72:
		return ll.CallingConvPTXDevice, nil
	case 75:
		return ll.CallingConvSPIRFunc, nil
	case 76:
		return ll.CallingConvSPIRKernel, nil
	case 77:
		return ll.CallingConvIntelOCLBI, nil
	case 78:
		return ll.CallingConvX86_64SysV, nil
	case 79:
		return ll.CallingConvWin64, nil
	case 80:
		return ll.CallingConvX86VectorCall, nil
	case 81:
		return ll.CallingConvHHVM, nil
	case 82:
		return ll.CallingConvHHVMC, nil
	case 83:
		return ll.CallingConvX86Intr, nil
	case 84:
		return ll.CallingConvAVRIntr, nil
	case 85:
		return ll.CallingConvAVRSignal, nil
	case 86:
		return ll.CallingConvAVRBuiltin, nil
	case 87:
		return ll.CallingConvAMDGPUVS, nil
	case 88:
		return ll.CallingConvAMDGPUGS, nil
	case 89:
		return ll.CallingConvAMDGPUPS, nil
	case 90:
		return ll.CallingConvAMDGPUCS, nil
	case 91:
		return ll.CallingConvAMDGPUKernel, nil
	case 92:
		return ll.CallingConvX86RegCall, nil
	case 93:
		return ll.CallingConvAMDGPUHS, nil
	case 94:
		return ll.CallingConvMSP430Builtin, nil
	case 95:
		return ll.CallingConvAMDGPULS, nil
	case 96:
		return ll.CallingConvAMDGPUES, nil
	default:
		panic(fmt.Errorf("support for calling convention ID %d not yet implemented", cc))
	}
}

// SpecializedMDField is a specialized metadata field.
type SpecializedMDField struct {
	// Key of field (e.g. "name:").
	Key string
	// Value of field (e.g. !42).
	Value interface{}
}

// NewDIFlag returns a new debug info flag based on the given di_flag token.
func NewDIFlag(tok interface{}) (ll.DIFlag, error) {
	m := map[string]ll.DIFlag{
		"DIFlagZero":                ll.DIFlagZero,
		"DIFlagPrivate":             ll.DIFlagPrivate,
		"DIFlagProtected":           ll.DIFlagProtected,
		"DIFlagPublic":              ll.DIFlagPublic,
		"DIFlagFwdDecl":             ll.DIFlagFwdDecl,
		"DIFlagAppleBlock":          ll.DIFlagAppleBlock,
		"DIFlagBlockByrefStruct":    ll.DIFlagBlockByrefStruct,
		"DIFlagVirtual":             ll.DIFlagVirtual,
		"DIFlagArtificial":          ll.DIFlagArtificial,
		"DIFlagExplicit":            ll.DIFlagExplicit,
		"DIFlagPrototyped":          ll.DIFlagPrototyped,
		"DIFlagObjcClassComplete":   ll.DIFlagObjcClassComplete,
		"DIFlagObjectPointer":       ll.DIFlagObjectPointer,
		"DIFlagVector":              ll.DIFlagVector,
		"DIFlagStaticMember":        ll.DIFlagStaticMember,
		"DIFlagLValueReference":     ll.DIFlagLValueReference,
		"DIFlagRValueReference":     ll.DIFlagRValueReference,
		"DIFlagReserved":            ll.DIFlagReserved,
		"DIFlagSingleInheritance":   ll.DIFlagSingleInheritance,
		"DIFlagMultipleInheritance": ll.DIFlagMultipleInheritance,
		"DIFlagVirtualInheritance":  ll.DIFlagVirtualInheritance,
		"DIFlagIntroducedVirtual":   ll.DIFlagIntroducedVirtual,
		"DIFlagBitField":            ll.DIFlagBitField,
		"DIFlagNoReturn":            ll.DIFlagNoReturn,
		"DIFlagMainSubprogram":      ll.DIFlagMainSubprogram,
		"DIFlagTypePassByValue":     ll.DIFlagTypePassByValue,
		"DIFlagTypePassByReference": ll.DIFlagTypePassByReference,
		"DIFlagIndirectVirtualBase": ll.DIFlagIndirectVirtualBase,
	}
	s := String(tok)
	if v, ok := m[s]; ok {
		return v, nil
	}
	return 0, errors.Errorf("debug flag %q not yet supported", s)
}

// NewDwarfLang returns a new DWARF language based on the given dwarf_lang
// token.
func NewDwarfLang(tok interface{}) (ll.DwarfLang, error) {
	m := map[string]ll.DwarfLang{
		"DW_LANG_C89":                 ll.DwarfLangC89,
		"DW_LANG_C":                   ll.DwarfLangC,
		"DW_LANG_Ada83":               ll.DwarfLangAda83,
		"DW_LANG_C_plus_plus":         ll.DwarfLangCPlusPlus,
		"DW_LANG_Cobol74":             ll.DwarfLangCobol74,
		"DW_LANG_Cobol85":             ll.DwarfLangCobol85,
		"DW_LANG_Fortran77":           ll.DwarfLangFortran77,
		"DW_LANG_Fortran90":           ll.DwarfLangFortran90,
		"DW_LANG_Pascal83":            ll.DwarfLangPascal83,
		"DW_LANG_Modula2":             ll.DwarfLangModula2,
		"DW_LANG_Java":                ll.DwarfLangJava,
		"DW_LANG_C99":                 ll.DwarfLangC99,
		"DW_LANG_Ada95":               ll.DwarfLangAda95,
		"DW_LANG_Fortran95":           ll.DwarfLangFortran95,
		"DW_LANG_PLI":                 ll.DwarfLangPLI,
		"DW_LANG_ObjC":                ll.DwarfLangObjC,
		"DW_LANG_ObjC_plus_plus":      ll.DwarfLangObjCPlusPlus,
		"DW_LANG_UPC":                 ll.DwarfLangUPC,
		"DW_LANG_D":                   ll.DwarfLangD,
		"DW_LANG_Python":              ll.DwarfLangPython,
		"DW_LANG_OpenCL":              ll.DwarfLangOpenCL,
		"DW_LANG_Go":                  ll.DwarfLangGo,
		"DW_LANG_Modula3":             ll.DwarfLangModula3,
		"DW_LANG_Haskell":             ll.DwarfLangHaskell,
		"DW_LANG_C_plus_plus_03":      ll.DwarfLangCPlusPlus03,
		"DW_LANG_C_plus_plus_11":      ll.DwarfLangCPlusPlus11,
		"DW_LANG_OCaml":               ll.DwarfLangOCaml,
		"DW_LANG_Rust":                ll.DwarfLangRust,
		"DW_LANG_C11":                 ll.DwarfLangC11,
		"DW_LANG_Swift":               ll.DwarfLangSwift,
		"DW_LANG_Julia":               ll.DwarfLangJulia,
		"DW_LANG_Dylan":               ll.DwarfLangDylan,
		"DW_LANG_C_plus_plus_14":      ll.DwarfLangCPlusPlus14,
		"DW_LANG_Fortran03":           ll.DwarfLangFortran03,
		"DW_LANG_Fortran08":           ll.DwarfLangFortran08,
		"DW_LANG_RenderScript":        ll.DwarfLangRenderScript,
		"DW_LANG_BLISS":               ll.DwarfLangBLISS,
		"DW_LANG_Mips_Assembler":      ll.DwarfLangMipsAssembler,
		"DW_LANG_GOOGLE_RenderScript": ll.DwarfLangGoogleRenderScript,
		"DW_LANG_BORLAND_Delphi":      ll.DwarfLangBorlandDelphi,
	}
	s := String(tok)
	if v, ok := m[s]; ok {
		return v, nil
	}
	return 0, errors.Errorf("DWARF language %q not yet supported", s)
}

// NewChecksumKind returns a new checksum algorithm based on the given
// checksum_kind token.
func NewChecksumKind(tok interface{}) (ll.ChecksumKind, error) {
	m := map[string]ll.ChecksumKind{
		"CSK_MD5":  ll.ChecksumKindMD5,
		"CSK_SHA1": ll.ChecksumKindSHA1,
	}
	s := String(tok)
	if v, ok := m[s]; ok {
		return v, nil
	}
	return 0, errors.Errorf("checksum algorithm %q not yet supported", s)
}

// NewDwarfTag returns a new DWARF tag based on the given dwarf_tag token.
func NewDwarfTag(tok interface{}) (ll.DwarfTag, error) {
	m := map[string]ll.DwarfTag{
		"DW_TAG_null":                         ll.DwarfTagNull,
		"DW_TAG_array_type":                   ll.DwarfTagArrayType,
		"DW_TAG_class_type":                   ll.DwarfTagClassType,
		"DW_TAG_entry_point":                  ll.DwarfTagEntryPoint,
		"DW_TAG_enumeration_type":             ll.DwarfTagEnumerationType,
		"DW_TAG_formal_parameter":             ll.DwarfTagFormalParameter,
		"DW_TAG_imported_declaration":         ll.DwarfTagImportedDeclaration,
		"DW_TAG_label":                        ll.DwarfTagLabel,
		"DW_TAG_lexical_block":                ll.DwarfTagLexicalBlock,
		"DW_TAG_member":                       ll.DwarfTagMember,
		"DW_TAG_pointer_type":                 ll.DwarfTagPointerType,
		"DW_TAG_reference_type":               ll.DwarfTagReferenceType,
		"DW_TAG_compile_unit":                 ll.DwarfTagCompileUnit,
		"DW_TAG_string_type":                  ll.DwarfTagStringType,
		"DW_TAG_structure_type":               ll.DwarfTagStructureType,
		"DW_TAG_subroutine_type":              ll.DwarfTagSubroutineType,
		"DW_TAG_typedef":                      ll.DwarfTagTypedef,
		"DW_TAG_union_type":                   ll.DwarfTagUnionType,
		"DW_TAG_unspecified_parameters":       ll.DwarfTagUnspecifiedParameters,
		"DW_TAG_variant":                      ll.DwarfTagVariant,
		"DW_TAG_common_block":                 ll.DwarfTagCommonBlock,
		"DW_TAG_common_inclusion":             ll.DwarfTagCommonInclusion,
		"DW_TAG_inheritance":                  ll.DwarfTagInheritance,
		"DW_TAG_inlined_subroutine":           ll.DwarfTagInlinedSubroutine,
		"DW_TAG_module":                       ll.DwarfTagModule,
		"DW_TAG_ptr_to_member_type":           ll.DwarfTagPtrToMemberType,
		"DW_TAG_set_type":                     ll.DwarfTagSetType,
		"DW_TAG_subrange_type":                ll.DwarfTagSubrangeType,
		"DW_TAG_with_stmt":                    ll.DwarfTagWithStmt,
		"DW_TAG_access_declaration":           ll.DwarfTagAccessDeclaration,
		"DW_TAG_base_type":                    ll.DwarfTagBaseType,
		"DW_TAG_catch_block":                  ll.DwarfTagCatchBlock,
		"DW_TAG_const_type":                   ll.DwarfTagConstType,
		"DW_TAG_constant":                     ll.DwarfTagConstant,
		"DW_TAG_enumerator":                   ll.DwarfTagEnumerator,
		"DW_TAG_file_type":                    ll.DwarfTagFileType,
		"DW_TAG_friend":                       ll.DwarfTagFriend,
		"DW_TAG_namelist":                     ll.DwarfTagNamelist,
		"DW_TAG_namelist_item":                ll.DwarfTagNamelistItem,
		"DW_TAG_packed_type":                  ll.DwarfTagPackedType,
		"DW_TAG_subprogram":                   ll.DwarfTagSubprogram,
		"DW_TAG_template_type_parameter":      ll.DwarfTagTemplateTypeParameter,
		"DW_TAG_template_value_parameter":     ll.DwarfTagTemplateValueParameter,
		"DW_TAG_thrown_type":                  ll.DwarfTagThrownType,
		"DW_TAG_try_block":                    ll.DwarfTagTryBlock,
		"DW_TAG_variant_part":                 ll.DwarfTagVariantPart,
		"DW_TAG_variable":                     ll.DwarfTagVariable,
		"DW_TAG_volatile_type":                ll.DwarfTagVolatileType,
		"DW_TAG_dwarf_procedure":              ll.DwarfTagDwarfProcedure,
		"DW_TAG_restrict_type":                ll.DwarfTagRestrictType,
		"DW_TAG_interface_type":               ll.DwarfTagInterfaceType,
		"DW_TAG_namespace":                    ll.DwarfTagNamespace,
		"DW_TAG_imported_module":              ll.DwarfTagImportedModule,
		"DW_TAG_unspecified_type":             ll.DwarfTagUnspecifiedType,
		"DW_TAG_partial_unit":                 ll.DwarfTagPartialUnit,
		"DW_TAG_imported_unit":                ll.DwarfTagImportedUnit,
		"DW_TAG_condition":                    ll.DwarfTagCondition,
		"DW_TAG_shared_type":                  ll.DwarfTagSharedType,
		"DW_TAG_type_unit":                    ll.DwarfTagTypeUnit,
		"DW_TAG_rvalue_reference_type":        ll.DwarfTagRvalueReferenceType,
		"DW_TAG_template_alias":               ll.DwarfTagTemplateAlias,
		"DW_TAG_coarray_type":                 ll.DwarfTagCoarrayType,
		"DW_TAG_generic_subrange":             ll.DwarfTagGenericSubrange,
		"DW_TAG_dynamic_type":                 ll.DwarfTagDynamicType,
		"DW_TAG_atomic_type":                  ll.DwarfTagAtomicType,
		"DW_TAG_call_site":                    ll.DwarfTagCallSite,
		"DW_TAG_call_site_parameter":          ll.DwarfTagCallSiteParameter,
		"DW_TAG_skeleton_unit":                ll.DwarfTagSkeletonUnit,
		"DW_TAG_immutable_type":               ll.DwarfTagImmutableType,
		"DW_TAG_MIPS_loop":                    ll.DwarfTagMIPSLoop,
		"DW_TAG_format_label":                 ll.DwarfTagFormatLabel,
		"DW_TAG_function_template":            ll.DwarfTagFunctionTemplate,
		"DW_TAG_class_template":               ll.DwarfTagClassTemplate,
		"DW_TAG_GNU_template_template_param":  ll.DwarfTagGNUTemplateTemplateParam,
		"DW_TAG_GNU_template_parameter_pack":  ll.DwarfTagGNUTemplateParameterPack,
		"DW_TAG_GNU_formal_parameter_pack":    ll.DwarfTagGNUFormalParameterPack,
		"DW_TAG_GNU_call_site":                ll.DwarfTagGNUCallSite,
		"DW_TAG_GNU_call_site_parameter":      ll.DwarfTagGNUCallSiteParameter,
		"DW_TAG_APPLE_property":               ll.DwarfTagAPPLEProperty,
		"DW_TAG_BORLAND_property":             ll.DwarfTagBORLANDProperty,
		"DW_TAG_BORLAND_Delphi_string":        ll.DwarfTagBORLANDDelphiString,
		"DW_TAG_BORLAND_Delphi_dynamic_array": ll.DwarfTagBORLANDDelphiDynamicArray,
		"DW_TAG_BORLAND_Delphi_set":           ll.DwarfTagBORLANDDelphiSet,
		"DW_TAG_BORLAND_Delphi_variant":       ll.DwarfTagBORLANDDelphiVariant,
	}
	s := String(tok)
	if v, ok := m[s]; ok {
		return v, nil
	}
	return 0, errors.Errorf("DWARF tag %q not yet supported", s)
}

// NewDwarfAttEncoding returns a new DWARF attribute type encoding based on the
// given dwarf_att_encoding token.
func NewDwarfAttEncoding(tok interface{}) (ll.DwarfAttEncoding, error) {
	m := map[string]ll.DwarfAttEncoding{
		"DW_ATE_address":         ll.DwarfAttEncodingAddress,
		"DW_ATE_boolean":         ll.DwarfAttEncodingBoolean,
		"DW_ATE_complex_float":   ll.DwarfAttEncodingComplexFloat,
		"DW_ATE_float":           ll.DwarfAttEncodingFloat,
		"DW_ATE_signed":          ll.DwarfAttEncodingSigned,
		"DW_ATE_signed_char":     ll.DwarfAttEncodingSignedChar,
		"DW_ATE_unsigned":        ll.DwarfAttEncodingUnsigned,
		"DW_ATE_unsigned_char":   ll.DwarfAttEncodingUnsignedChar,
		"DW_ATE_imaginary_float": ll.DwarfAttEncodingImaginaryFloat,
		"DW_ATE_packed_decimal":  ll.DwarfAttEncodingPackedDecimal,
		"DW_ATE_numeric_string":  ll.DwarfAttEncodingNumericString,
		"DW_ATE_edited":          ll.DwarfAttEncodingEdited,
		"DW_ATE_signed_fixed":    ll.DwarfAttEncodingSignedFixed,
		"DW_ATE_unsigned_fixed":  ll.DwarfAttEncodingUnsignedFixed,
		"DW_ATE_decimal_float":   ll.DwarfAttEncodingDecimalFloat,
		"DW_ATE_UTF":             ll.DwarfAttEncodingUTF,
		"DW_ATE_UCS":             ll.DwarfAttEncodingUCS,
		"DW_ATE_ASCII":           ll.DwarfAttEncodingASCII,
	}
	s := String(tok)
	if v, ok := m[s]; ok {
		return v, nil
	}
	return 0, errors.Errorf("DWARF attribute type encoding %q not yet supported", s)
}

// NewDwarfCC returns a new DWARF calling convention based on the given dwarf_cc
// token.
func NewDwarfCC(tok interface{}) (ll.DwarfCC, error) {
	m := map[string]ll.DwarfCC{
		"DW_CC_normal":                    ll.DwarfCCNormal,
		"DW_CC_program":                   ll.DwarfCCProgram,
		"DW_CC_nocall":                    ll.DwarfCCNoCall,
		"DW_CC_pass_by_reference":         ll.DwarfCCPassByReference,
		"DW_CC_pass_by_value":             ll.DwarfCCPassByValue,
		"DW_CC_GNU_borland_fastcall_i386": ll.DwarfCCGNUBorlandFastcallI386,
		"DW_CC_BORLAND_safecall":          ll.DwarfCCBORLANDSafecall,
		"DW_CC_BORLAND_stdcall":           ll.DwarfCCBORLANDStdcall,
		"DW_CC_BORLAND_pascal":            ll.DwarfCCBORLANDPascal,
		"DW_CC_BORLAND_msfastcall":        ll.DwarfCCBORLANDMSFastcall,
		"DW_CC_BORLAND_msreturn":          ll.DwarfCCBORLANDMSReturn,
		"DW_CC_BORLAND_thiscall":          ll.DwarfCCBORLANDThiscall,
		"DW_CC_BORLAND_fastcall":          ll.DwarfCCBORLANDFastcall,
		"DW_CC_LLVM_vectorcall":           ll.DwarfCCLLVMVectorcall,
	}
	s := String(tok)
	if v, ok := m[s]; ok {
		return v, nil
	}
	return 0, errors.Errorf("DWARF calling convention %q not yet supported", s)
}

// NewDwarfVirtuality returns a new DWARF virtuality code based on the given
// dwarf_virtuality token.
func NewDwarfVirtuality(tok interface{}) (ll.DwarfVirtuality, error) {
	m := map[string]ll.DwarfVirtuality{
		"DW_VIRTUALITY_none":         ll.DwarfVirtualityNone,
		"DW_VIRTUALITY_virtual":      ll.DwarfVirtualityVirtual,
		"DW_VIRTUALITY_pure_virtual": ll.DwarfVirtualityPureVirtual,
	}
	s := String(tok)
	if v, ok := m[s]; ok {
		return v, nil
	}
	return 0, errors.Errorf("DWARF virtuality code %q not yet supported", s)
}

// NewDwarfOp returns a new DWARF expression operator based on the given
// dwarf_op token.
func NewDwarfOp(tok interface{}) (ll.DwarfOp, error) {
	m := map[string]ll.DwarfOp{
		"DW_OP_addr":                 ll.DwarfOpAddr,
		"DW_OP_deref":                ll.DwarfOpDeref,
		"DW_OP_const1u":              ll.DwarfOpConst1u,
		"DW_OP_const1s":              ll.DwarfOpConst1s,
		"DW_OP_const2u":              ll.DwarfOpConst2u,
		"DW_OP_const2s":              ll.DwarfOpConst2s,
		"DW_OP_const4u":              ll.DwarfOpConst4u,
		"DW_OP_const4s":              ll.DwarfOpConst4s,
		"DW_OP_const8u":              ll.DwarfOpConst8u,
		"DW_OP_const8s":              ll.DwarfOpConst8s,
		"DW_OP_constu":               ll.DwarfOpConstu,
		"DW_OP_consts":               ll.DwarfOpConsts,
		"DW_OP_dup":                  ll.DwarfOpDup,
		"DW_OP_drop":                 ll.DwarfOpDrop,
		"DW_OP_over":                 ll.DwarfOpOver,
		"DW_OP_pick":                 ll.DwarfOpPick,
		"DW_OP_swap":                 ll.DwarfOpSwap,
		"DW_OP_rot":                  ll.DwarfOpRot,
		"DW_OP_xderef":               ll.DwarfOpXderef,
		"DW_OP_abs":                  ll.DwarfOpAbs,
		"DW_OP_and":                  ll.DwarfOpAnd,
		"DW_OP_div":                  ll.DwarfOpDiv,
		"DW_OP_minus":                ll.DwarfOpMinus,
		"DW_OP_mod":                  ll.DwarfOpMod,
		"DW_OP_mul":                  ll.DwarfOpMul,
		"DW_OP_neg":                  ll.DwarfOpNeg,
		"DW_OP_not":                  ll.DwarfOpNot,
		"DW_OP_or":                   ll.DwarfOpOr,
		"DW_OP_plus":                 ll.DwarfOpPlus,
		"DW_OP_plus_uconst":          ll.DwarfOpPlusUconst,
		"DW_OP_shl":                  ll.DwarfOpShl,
		"DW_OP_shr":                  ll.DwarfOpShr,
		"DW_OP_shra":                 ll.DwarfOpShra,
		"DW_OP_xor":                  ll.DwarfOpXor,
		"DW_OP_bra":                  ll.DwarfOpBra,
		"DW_OP_eq":                   ll.DwarfOpEq,
		"DW_OP_ge":                   ll.DwarfOpGe,
		"DW_OP_gt":                   ll.DwarfOpGt,
		"DW_OP_le":                   ll.DwarfOpLe,
		"DW_OP_lt":                   ll.DwarfOpLt,
		"DW_OP_ne":                   ll.DwarfOpNe,
		"DW_OP_skip":                 ll.DwarfOpSkip,
		"DW_OP_lit0":                 ll.DwarfOpLit0,
		"DW_OP_lit1":                 ll.DwarfOpLit1,
		"DW_OP_lit2":                 ll.DwarfOpLit2,
		"DW_OP_lit3":                 ll.DwarfOpLit3,
		"DW_OP_lit4":                 ll.DwarfOpLit4,
		"DW_OP_lit5":                 ll.DwarfOpLit5,
		"DW_OP_lit6":                 ll.DwarfOpLit6,
		"DW_OP_lit7":                 ll.DwarfOpLit7,
		"DW_OP_lit8":                 ll.DwarfOpLit8,
		"DW_OP_lit9":                 ll.DwarfOpLit9,
		"DW_OP_lit10":                ll.DwarfOpLit10,
		"DW_OP_lit11":                ll.DwarfOpLit11,
		"DW_OP_lit12":                ll.DwarfOpLit12,
		"DW_OP_lit13":                ll.DwarfOpLit13,
		"DW_OP_lit14":                ll.DwarfOpLit14,
		"DW_OP_lit15":                ll.DwarfOpLit15,
		"DW_OP_lit16":                ll.DwarfOpLit16,
		"DW_OP_lit17":                ll.DwarfOpLit17,
		"DW_OP_lit18":                ll.DwarfOpLit18,
		"DW_OP_lit19":                ll.DwarfOpLit19,
		"DW_OP_lit20":                ll.DwarfOpLit20,
		"DW_OP_lit21":                ll.DwarfOpLit21,
		"DW_OP_lit22":                ll.DwarfOpLit22,
		"DW_OP_lit23":                ll.DwarfOpLit23,
		"DW_OP_lit24":                ll.DwarfOpLit24,
		"DW_OP_lit25":                ll.DwarfOpLit25,
		"DW_OP_lit26":                ll.DwarfOpLit26,
		"DW_OP_lit27":                ll.DwarfOpLit27,
		"DW_OP_lit28":                ll.DwarfOpLit28,
		"DW_OP_lit29":                ll.DwarfOpLit29,
		"DW_OP_lit30":                ll.DwarfOpLit30,
		"DW_OP_lit31":                ll.DwarfOpLit31,
		"DW_OP_reg0":                 ll.DwarfOpReg0,
		"DW_OP_reg1":                 ll.DwarfOpReg1,
		"DW_OP_reg2":                 ll.DwarfOpReg2,
		"DW_OP_reg3":                 ll.DwarfOpReg3,
		"DW_OP_reg4":                 ll.DwarfOpReg4,
		"DW_OP_reg5":                 ll.DwarfOpReg5,
		"DW_OP_reg6":                 ll.DwarfOpReg6,
		"DW_OP_reg7":                 ll.DwarfOpReg7,
		"DW_OP_reg8":                 ll.DwarfOpReg8,
		"DW_OP_reg9":                 ll.DwarfOpReg9,
		"DW_OP_reg10":                ll.DwarfOpReg10,
		"DW_OP_reg11":                ll.DwarfOpReg11,
		"DW_OP_reg12":                ll.DwarfOpReg12,
		"DW_OP_reg13":                ll.DwarfOpReg13,
		"DW_OP_reg14":                ll.DwarfOpReg14,
		"DW_OP_reg15":                ll.DwarfOpReg15,
		"DW_OP_reg16":                ll.DwarfOpReg16,
		"DW_OP_reg17":                ll.DwarfOpReg17,
		"DW_OP_reg18":                ll.DwarfOpReg18,
		"DW_OP_reg19":                ll.DwarfOpReg19,
		"DW_OP_reg20":                ll.DwarfOpReg20,
		"DW_OP_reg21":                ll.DwarfOpReg21,
		"DW_OP_reg22":                ll.DwarfOpReg22,
		"DW_OP_reg23":                ll.DwarfOpReg23,
		"DW_OP_reg24":                ll.DwarfOpReg24,
		"DW_OP_reg25":                ll.DwarfOpReg25,
		"DW_OP_reg26":                ll.DwarfOpReg26,
		"DW_OP_reg27":                ll.DwarfOpReg27,
		"DW_OP_reg28":                ll.DwarfOpReg28,
		"DW_OP_reg29":                ll.DwarfOpReg29,
		"DW_OP_reg30":                ll.DwarfOpReg30,
		"DW_OP_reg31":                ll.DwarfOpReg31,
		"DW_OP_breg0":                ll.DwarfOpBreg0,
		"DW_OP_breg1":                ll.DwarfOpBreg1,
		"DW_OP_breg2":                ll.DwarfOpBreg2,
		"DW_OP_breg3":                ll.DwarfOpBreg3,
		"DW_OP_breg4":                ll.DwarfOpBreg4,
		"DW_OP_breg5":                ll.DwarfOpBreg5,
		"DW_OP_breg6":                ll.DwarfOpBreg6,
		"DW_OP_breg7":                ll.DwarfOpBreg7,
		"DW_OP_breg8":                ll.DwarfOpBreg8,
		"DW_OP_breg9":                ll.DwarfOpBreg9,
		"DW_OP_breg10":               ll.DwarfOpBreg10,
		"DW_OP_breg11":               ll.DwarfOpBreg11,
		"DW_OP_breg12":               ll.DwarfOpBreg12,
		"DW_OP_breg13":               ll.DwarfOpBreg13,
		"DW_OP_breg14":               ll.DwarfOpBreg14,
		"DW_OP_breg15":               ll.DwarfOpBreg15,
		"DW_OP_breg16":               ll.DwarfOpBreg16,
		"DW_OP_breg17":               ll.DwarfOpBreg17,
		"DW_OP_breg18":               ll.DwarfOpBreg18,
		"DW_OP_breg19":               ll.DwarfOpBreg19,
		"DW_OP_breg20":               ll.DwarfOpBreg20,
		"DW_OP_breg21":               ll.DwarfOpBreg21,
		"DW_OP_breg22":               ll.DwarfOpBreg22,
		"DW_OP_breg23":               ll.DwarfOpBreg23,
		"DW_OP_breg24":               ll.DwarfOpBreg24,
		"DW_OP_breg25":               ll.DwarfOpBreg25,
		"DW_OP_breg26":               ll.DwarfOpBreg26,
		"DW_OP_breg27":               ll.DwarfOpBreg27,
		"DW_OP_breg28":               ll.DwarfOpBreg28,
		"DW_OP_breg29":               ll.DwarfOpBreg29,
		"DW_OP_breg30":               ll.DwarfOpBreg30,
		"DW_OP_breg31":               ll.DwarfOpBreg31,
		"DW_OP_regx":                 ll.DwarfOpRegx,
		"DW_OP_fbreg":                ll.DwarfOpFbreg,
		"DW_OP_bregx":                ll.DwarfOpBregx,
		"DW_OP_piece":                ll.DwarfOpPiece,
		"DW_OP_deref_size":           ll.DwarfOpDerefSize,
		"DW_OP_xderef_size":          ll.DwarfOpXderefSize,
		"DW_OP_nop":                  ll.DwarfOpNop,
		"DW_OP_push_object_address":  ll.DwarfOpPushObjectAddress,
		"DW_OP_call2":                ll.DwarfOpCall2,
		"DW_OP_call4":                ll.DwarfOpCall4,
		"DW_OP_call_ref":             ll.DwarfOpCallRef,
		"DW_OP_form_tls_address":     ll.DwarfOpFormTLSAddress,
		"DW_OP_call_frame_cfa":       ll.DwarfOpCallFrameCFA,
		"DW_OP_bit_piece":            ll.DwarfOpBitPiece,
		"DW_OP_implicit_value":       ll.DwarfOpImplicitValue,
		"DW_OP_stack_value":          ll.DwarfOpStackValue,
		"DW_OP_implicit_pointer":     ll.DwarfOpImplicitPointer,
		"DW_OP_addrx":                ll.DwarfOpAddrx,
		"DW_OP_constx":               ll.DwarfOpConstx,
		"DW_OP_entry_value":          ll.DwarfOpEntryValue,
		"DW_OP_const_type":           ll.DwarfOpConstType,
		"DW_OP_regval_type":          ll.DwarfOpRegvalType,
		"DW_OP_deref_type":           ll.DwarfOpDerefType,
		"DW_OP_xderef_type":          ll.DwarfOpXderefType,
		"DW_OP_convert":              ll.DwarfOpConvert,
		"DW_OP_reinterpret":          ll.DwarfOpReinterpret,
		"DW_OP_GNU_push_tls_address": ll.DwarfOpGNUPushTLSAddress,
		"DW_OP_GNU_addr_index":       ll.DwarfOpGNUAddrIndex,
		"DW_OP_GNU_const_index":      ll.DwarfOpGNUConstIndex,
		"DW_OP_LLVM_fragment":        ll.DwarfOpLLVMFragment,
	}
	s := String(tok)
	if v, ok := m[s]; ok {
		return v, nil
	}
	return 0, errors.Errorf("DWARF expression operator %q not yet supported", s)
}

// NewDwarfMacinfo returns a new macinfo type encoding based on the given
// dwarf_macinfo token.
func NewDwarfMacinfo(tok interface{}) (ll.DwarfMacinfo, error) {
	m := map[string]ll.DwarfMacinfo{
		"DW_MACINFO_define":     ll.DwarfMacinfoDefine,
		"DW_MACINFO_undef":      ll.DwarfMacinfoUndef,
		"DW_MACINFO_start_file": ll.DwarfMacinfoStartFile,
		"DW_MACINFO_end_file":   ll.DwarfMacinfoEndFile,
		"DW_MACINFO_vendor_ext": ll.DwarfMacinfoVendorExt,
	}
	s := String(tok)
	if v, ok := m[s]; ok {
		return v, nil
	}
	return 0, errors.Errorf("macinfo type encoding %q not yet supported", s)
}
