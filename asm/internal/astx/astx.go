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
	"github.com/pkg/errors"
)

// Params is a list of optionally variadic function parameters.
type Params struct {
	Params   []*ast.Param
	Variadic bool
}

// String returns the string corresponding to the given token.
func String(tok interface{}) string {
	s := tok.(*token.Token)
	return string(s.Lit)
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
func TypeValue(typ, value interface{}) *ast.TypeValue {
	return &ast.TypeValue{
		Type:  typ.(ast.Type),
		Value: value.(ast.Value),
	}
}

// TypeConst returns a type-constant pair based on the given type and constant.
func TypeConst(typ, val interface{}) *ast.TypeConst {
	return &ast.TypeConst{
		Type:  typ.(ast.Type),
		Const: val.(ast.Constant),
	}
}

// Label returns a label based on the given label type and name.
func Label(typ, name interface{}) *ast.Label {
	if _, ok := typ.(*ast.LabelType); !ok {
		panic(errors.Errorf(`invalid label type, expected *ast.LabelType, got %T`, typ))
	}
	return &ast.Label{
		Name: name.(*ast.LocalIdent),
	}
}

// NewIntType returns a new integer type corresponding to the given token.
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

// NewIntConst returns a new integer constant corresponding to the given token.
func NewIntConst(tok interface{}) (*ast.IntConst, error) {
	return &ast.IntConst{X: String(tok)}, nil
}

// NewFloatConst returns a new floating-point constant corresponding to the
// given token.
func NewFloatConst(tok interface{}) (*ast.FloatConst, error) {
	return &ast.FloatConst{X: String(tok)}, nil
}

// NewCallingConv returns a new calling convention corresponding to the given
// token.
func NewCallingConv(tok interface{}) (ast.CallingConv, error) {
	// ref: include/llvm/IR/CallingConv.h
	// (rev db070bbdacd303ae7da129f59beaf35024d94c53)
	cc := Int(tok)
	switch cc {
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
		return ast.CallingConvWebKitJS, nil
	case 13:
		return ast.CallingConvAnyReg, nil
	case 14:
		return ast.CallingConvPreserveMost, nil
	case 15:
		return ast.CallingConvPreserveAll, nil
	case 16:
		return ast.CallingConvSwift, nil
	case 17:
		return ast.CallingConvCXXFastTLS, nil
	case 64:
		return ast.CallingConvX86StdCall, nil
	case 65:
		return ast.CallingConvX86FastCall, nil
	case 66:
		return ast.CallingConvARMAPCS, nil
	case 67:
		return ast.CallingConvARMAAPCS, nil
	case 68:
		return ast.CallingConvARMAAPCSVFP, nil
	case 69:
		return ast.CallingConvMSP430Intr, nil
	case 70:
		return ast.CallingConvX86ThisCall, nil
	case 71:
		return ast.CallingConvPTXKernel, nil
	case 72:
		return ast.CallingConvPTXDevice, nil
	case 75:
		return ast.CallingConvSPIRFunc, nil
	case 76:
		return ast.CallingConvSPIRKernel, nil
	case 77:
		return ast.CallingConvIntelOCLBI, nil
	case 78:
		return ast.CallingConvX86_64SysV, nil
	case 79:
		return ast.CallingConvWin64, nil
	case 80:
		return ast.CallingConvX86VectorCall, nil
	case 81:
		return ast.CallingConvHHVM, nil
	case 82:
		return ast.CallingConvHHVMC, nil
	case 83:
		return ast.CallingConvX86Intr, nil
	case 84:
		return ast.CallingConvAVRIntr, nil
	case 85:
		return ast.CallingConvAVRSignal, nil
	case 86:
		return ast.CallingConvAVRBuiltin, nil
	case 87:
		return ast.CallingConvAMDGPUVS, nil
	case 88:
		return ast.CallingConvAMDGPUGS, nil
	case 89:
		return ast.CallingConvAMDGPUPS, nil
	case 90:
		return ast.CallingConvAMDGPUCS, nil
	case 91:
		return ast.CallingConvAMDGPUKernel, nil
	case 92:
		return ast.CallingConvX86RegCall, nil
	case 93:
		return ast.CallingConvAMDGPUHS, nil
	case 94:
		return ast.CallingConvMSP430Builtin, nil
	case 95:
		return ast.CallingConvAMDGPULS, nil
	case 96:
		return ast.CallingConvAMDGPUES, nil
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
func NewDIFlag(tok interface{}) (ast.DIFlag, error) {
	m := map[string]ast.DIFlag{
		"DIFlagZero":                ast.DIFlagZero,
		"DIFlagPrivate":             ast.DIFlagPrivate,
		"DIFlagProtected":           ast.DIFlagProtected,
		"DIFlagPublic":              ast.DIFlagPublic,
		"DIFlagFwdDecl":             ast.DIFlagFwdDecl,
		"DIFlagAppleBlock":          ast.DIFlagAppleBlock,
		"DIFlagBlockByrefStruct":    ast.DIFlagBlockByrefStruct,
		"DIFlagVirtual":             ast.DIFlagVirtual,
		"DIFlagArtificial":          ast.DIFlagArtificial,
		"DIFlagExplicit":            ast.DIFlagExplicit,
		"DIFlagPrototyped":          ast.DIFlagPrototyped,
		"DIFlagObjcClassComplete":   ast.DIFlagObjcClassComplete,
		"DIFlagObjectPointer":       ast.DIFlagObjectPointer,
		"DIFlagVector":              ast.DIFlagVector,
		"DIFlagStaticMember":        ast.DIFlagStaticMember,
		"DIFlagLValueReference":     ast.DIFlagLValueReference,
		"DIFlagRValueReference":     ast.DIFlagRValueReference,
		"DIFlagReserved":            ast.DIFlagReserved,
		"DIFlagSingleInheritance":   ast.DIFlagSingleInheritance,
		"DIFlagMultipleInheritance": ast.DIFlagMultipleInheritance,
		"DIFlagVirtualInheritance":  ast.DIFlagVirtualInheritance,
		"DIFlagIntroducedVirtual":   ast.DIFlagIntroducedVirtual,
		"DIFlagBitField":            ast.DIFlagBitField,
		"DIFlagNoReturn":            ast.DIFlagNoReturn,
		"DIFlagMainSubprogram":      ast.DIFlagMainSubprogram,
		"DIFlagTypePassByValue":     ast.DIFlagTypePassByValue,
		"DIFlagTypePassByReference": ast.DIFlagTypePassByReference,
		"DIFlagIndirectVirtualBase": ast.DIFlagIndirectVirtualBase,
	}
	s := String(tok)
	if v, ok := m[s]; ok {
		return v, nil
	}
	return 0, errors.Errorf("debug flag %q not yet supported", s)
}

// NewDwarfLang returns a new DWARF language based on the given dwarf_lang
// token.
func NewDwarfLang(tok interface{}) (ast.DwarfLang, error) {
	m := map[string]ast.DwarfLang{
		"DW_LANG_C89":                 ast.DwarfLangC89,
		"DW_LANG_C":                   ast.DwarfLangC,
		"DW_LANG_Ada83":               ast.DwarfLangAda83,
		"DW_LANG_C_plus_plus":         ast.DwarfLangCPlusPlus,
		"DW_LANG_Cobol74":             ast.DwarfLangCobol74,
		"DW_LANG_Cobol85":             ast.DwarfLangCobol85,
		"DW_LANG_Fortran77":           ast.DwarfLangFortran77,
		"DW_LANG_Fortran90":           ast.DwarfLangFortran90,
		"DW_LANG_Pascal83":            ast.DwarfLangPascal83,
		"DW_LANG_Modula2":             ast.DwarfLangModula2,
		"DW_LANG_Java":                ast.DwarfLangJava,
		"DW_LANG_C99":                 ast.DwarfLangC99,
		"DW_LANG_Ada95":               ast.DwarfLangAda95,
		"DW_LANG_Fortran95":           ast.DwarfLangFortran95,
		"DW_LANG_PLI":                 ast.DwarfLangPLI,
		"DW_LANG_ObjC":                ast.DwarfLangObjC,
		"DW_LANG_ObjC_plus_plus":      ast.DwarfLangObjCPlusPlus,
		"DW_LANG_UPC":                 ast.DwarfLangUPC,
		"DW_LANG_D":                   ast.DwarfLangD,
		"DW_LANG_Python":              ast.DwarfLangPython,
		"DW_LANG_OpenCL":              ast.DwarfLangOpenCL,
		"DW_LANG_Go":                  ast.DwarfLangGo,
		"DW_LANG_Modula3":             ast.DwarfLangModula3,
		"DW_LANG_Haskell":             ast.DwarfLangHaskell,
		"DW_LANG_C_plus_plus_03":      ast.DwarfLangCPlusPlus03,
		"DW_LANG_C_plus_plus_11":      ast.DwarfLangCPlusPlus11,
		"DW_LANG_OCaml":               ast.DwarfLangOCaml,
		"DW_LANG_Rust":                ast.DwarfLangRust,
		"DW_LANG_C11":                 ast.DwarfLangC11,
		"DW_LANG_Swift":               ast.DwarfLangSwift,
		"DW_LANG_Julia":               ast.DwarfLangJulia,
		"DW_LANG_Dylan":               ast.DwarfLangDylan,
		"DW_LANG_C_plus_plus_14":      ast.DwarfLangCPlusPlus14,
		"DW_LANG_Fortran03":           ast.DwarfLangFortran03,
		"DW_LANG_Fortran08":           ast.DwarfLangFortran08,
		"DW_LANG_RenderScript":        ast.DwarfLangRenderScript,
		"DW_LANG_BLISS":               ast.DwarfLangBLISS,
		"DW_LANG_Mips_Assembler":      ast.DwarfLangMipsAssembler,
		"DW_LANG_GOOGLE_RenderScript": ast.DwarfLangGoogleRenderScript,
		"DW_LANG_BORLAND_Delphi":      ast.DwarfLangBorlandDelphi,
	}
	s := String(tok)
	if v, ok := m[s]; ok {
		return v, nil
	}
	return 0, errors.Errorf("DWARF language %q not yet supported", s)
}

// NewChecksumKind returns a new checksum algorithm based on the given
// checksum_kind token.
func NewChecksumKind(tok interface{}) (ast.ChecksumKind, error) {
	m := map[string]ast.ChecksumKind{
		"CSK_MD5":  ast.ChecksumKindMD5,
		"CSK_SHA1": ast.ChecksumKindSHA1,
	}
	s := String(tok)
	if v, ok := m[s]; ok {
		return v, nil
	}
	return 0, errors.Errorf("checksum algorithm %q not yet supported", s)
}

// NewDwarfTag returns a new DWARF tag based on the given dwarf_tag token.
func NewDwarfTag(tok interface{}) (ast.DwarfTag, error) {
	m := map[string]ast.DwarfTag{
		"DW_TAG_null":                         ast.DwarfTagNull,
		"DW_TAG_array_type":                   ast.DwarfTagArrayType,
		"DW_TAG_class_type":                   ast.DwarfTagClassType,
		"DW_TAG_entry_point":                  ast.DwarfTagEntryPoint,
		"DW_TAG_enumeration_type":             ast.DwarfTagEnumerationType,
		"DW_TAG_formal_parameter":             ast.DwarfTagFormalParameter,
		"DW_TAG_imported_declaration":         ast.DwarfTagImportedDeclaration,
		"DW_TAG_label":                        ast.DwarfTagLabel,
		"DW_TAG_lexical_block":                ast.DwarfTagLexicalBlock,
		"DW_TAG_member":                       ast.DwarfTagMember,
		"DW_TAG_pointer_type":                 ast.DwarfTagPointerType,
		"DW_TAG_reference_type":               ast.DwarfTagReferenceType,
		"DW_TAG_compile_unit":                 ast.DwarfTagCompileUnit,
		"DW_TAG_string_type":                  ast.DwarfTagStringType,
		"DW_TAG_structure_type":               ast.DwarfTagStructureType,
		"DW_TAG_subroutine_type":              ast.DwarfTagSubroutineType,
		"DW_TAG_typedef":                      ast.DwarfTagTypedef,
		"DW_TAG_union_type":                   ast.DwarfTagUnionType,
		"DW_TAG_unspecified_parameters":       ast.DwarfTagUnspecifiedParameters,
		"DW_TAG_variant":                      ast.DwarfTagVariant,
		"DW_TAG_common_block":                 ast.DwarfTagCommonBlock,
		"DW_TAG_common_inclusion":             ast.DwarfTagCommonInclusion,
		"DW_TAG_inheritance":                  ast.DwarfTagInheritance,
		"DW_TAG_inlined_subroutine":           ast.DwarfTagInlinedSubroutine,
		"DW_TAG_module":                       ast.DwarfTagModule,
		"DW_TAG_ptr_to_member_type":           ast.DwarfTagPtrToMemberType,
		"DW_TAG_set_type":                     ast.DwarfTagSetType,
		"DW_TAG_subrange_type":                ast.DwarfTagSubrangeType,
		"DW_TAG_with_stmt":                    ast.DwarfTagWithStmt,
		"DW_TAG_access_declaration":           ast.DwarfTagAccessDeclaration,
		"DW_TAG_base_type":                    ast.DwarfTagBaseType,
		"DW_TAG_catch_block":                  ast.DwarfTagCatchBlock,
		"DW_TAG_const_type":                   ast.DwarfTagConstType,
		"DW_TAG_constant":                     ast.DwarfTagConstant,
		"DW_TAG_enumerator":                   ast.DwarfTagEnumerator,
		"DW_TAG_file_type":                    ast.DwarfTagFileType,
		"DW_TAG_friend":                       ast.DwarfTagFriend,
		"DW_TAG_namelist":                     ast.DwarfTagNamelist,
		"DW_TAG_namelist_item":                ast.DwarfTagNamelistItem,
		"DW_TAG_packed_type":                  ast.DwarfTagPackedType,
		"DW_TAG_subprogram":                   ast.DwarfTagSubprogram,
		"DW_TAG_template_type_parameter":      ast.DwarfTagTemplateTypeParameter,
		"DW_TAG_template_value_parameter":     ast.DwarfTagTemplateValueParameter,
		"DW_TAG_thrown_type":                  ast.DwarfTagThrownType,
		"DW_TAG_try_block":                    ast.DwarfTagTryBlock,
		"DW_TAG_variant_part":                 ast.DwarfTagVariantPart,
		"DW_TAG_variable":                     ast.DwarfTagVariable,
		"DW_TAG_volatile_type":                ast.DwarfTagVolatileType,
		"DW_TAG_dwarf_procedure":              ast.DwarfTagDwarfProcedure,
		"DW_TAG_restrict_type":                ast.DwarfTagRestrictType,
		"DW_TAG_interface_type":               ast.DwarfTagInterfaceType,
		"DW_TAG_namespace":                    ast.DwarfTagNamespace,
		"DW_TAG_imported_module":              ast.DwarfTagImportedModule,
		"DW_TAG_unspecified_type":             ast.DwarfTagUnspecifiedType,
		"DW_TAG_partial_unit":                 ast.DwarfTagPartialUnit,
		"DW_TAG_imported_unit":                ast.DwarfTagImportedUnit,
		"DW_TAG_condition":                    ast.DwarfTagCondition,
		"DW_TAG_shared_type":                  ast.DwarfTagSharedType,
		"DW_TAG_type_unit":                    ast.DwarfTagTypeUnit,
		"DW_TAG_rvalue_reference_type":        ast.DwarfTagRvalueReferenceType,
		"DW_TAG_template_alias":               ast.DwarfTagTemplateAlias,
		"DW_TAG_coarray_type":                 ast.DwarfTagCoarrayType,
		"DW_TAG_generic_subrange":             ast.DwarfTagGenericSubrange,
		"DW_TAG_dynamic_type":                 ast.DwarfTagDynamicType,
		"DW_TAG_atomic_type":                  ast.DwarfTagAtomicType,
		"DW_TAG_call_site":                    ast.DwarfTagCallSite,
		"DW_TAG_call_site_parameter":          ast.DwarfTagCallSiteParameter,
		"DW_TAG_skeleton_unit":                ast.DwarfTagSkeletonUnit,
		"DW_TAG_immutable_type":               ast.DwarfTagImmutableType,
		"DW_TAG_MIPS_loop":                    ast.DwarfTagMIPSLoop,
		"DW_TAG_format_label":                 ast.DwarfTagFormatLabel,
		"DW_TAG_function_template":            ast.DwarfTagFunctionTemplate,
		"DW_TAG_class_template":               ast.DwarfTagClassTemplate,
		"DW_TAG_GNU_template_template_param":  ast.DwarfTagGNUTemplateTemplateParam,
		"DW_TAG_GNU_template_parameter_pack":  ast.DwarfTagGNUTemplateParameterPack,
		"DW_TAG_GNU_formal_parameter_pack":    ast.DwarfTagGNUFormalParameterPack,
		"DW_TAG_GNU_call_site":                ast.DwarfTagGNUCallSite,
		"DW_TAG_GNU_call_site_parameter":      ast.DwarfTagGNUCallSiteParameter,
		"DW_TAG_APPLE_property":               ast.DwarfTagAPPLEProperty,
		"DW_TAG_BORLAND_property":             ast.DwarfTagBORLANDProperty,
		"DW_TAG_BORLAND_Delphi_string":        ast.DwarfTagBORLANDDelphiString,
		"DW_TAG_BORLAND_Delphi_dynamic_array": ast.DwarfTagBORLANDDelphiDynamicArray,
		"DW_TAG_BORLAND_Delphi_set":           ast.DwarfTagBORLANDDelphiSet,
		"DW_TAG_BORLAND_Delphi_variant":       ast.DwarfTagBORLANDDelphiVariant,
	}
	s := String(tok)
	if v, ok := m[s]; ok {
		return v, nil
	}
	return 0, errors.Errorf("DWARF tag %q not yet supported", s)
}

// NewDwarfAttEncoding returns a new DWARF attribute type encoding based on the
// given dwarf_att_encoding token.
func NewDwarfAttEncoding(tok interface{}) (ast.DwarfAttEncoding, error) {
	m := map[string]ast.DwarfAttEncoding{
		"DW_ATE_address":         ast.DwarfAttEncodingAddress,
		"DW_ATE_boolean":         ast.DwarfAttEncodingBoolean,
		"DW_ATE_complex_float":   ast.DwarfAttEncodingComplexFloat,
		"DW_ATE_float":           ast.DwarfAttEncodingFloat,
		"DW_ATE_signed":          ast.DwarfAttEncodingSigned,
		"DW_ATE_signed_char":     ast.DwarfAttEncodingSignedChar,
		"DW_ATE_unsigned":        ast.DwarfAttEncodingUnsigned,
		"DW_ATE_unsigned_char":   ast.DwarfAttEncodingUnsignedChar,
		"DW_ATE_imaginary_float": ast.DwarfAttEncodingImaginaryFloat,
		"DW_ATE_packed_decimal":  ast.DwarfAttEncodingPackedDecimal,
		"DW_ATE_numeric_string":  ast.DwarfAttEncodingNumericString,
		"DW_ATE_edited":          ast.DwarfAttEncodingEdited,
		"DW_ATE_signed_fixed":    ast.DwarfAttEncodingSignedFixed,
		"DW_ATE_unsigned_fixed":  ast.DwarfAttEncodingUnsignedFixed,
		"DW_ATE_decimal_float":   ast.DwarfAttEncodingDecimalFloat,
		"DW_ATE_UTF":             ast.DwarfAttEncodingUTF,
		"DW_ATE_UCS":             ast.DwarfAttEncodingUCS,
		"DW_ATE_ASCII":           ast.DwarfAttEncodingASCII,
	}
	s := String(tok)
	if v, ok := m[s]; ok {
		return v, nil
	}
	return 0, errors.Errorf("DWARF attribute type encoding %q not yet supported", s)
}

// NewDwarfCC returns a new DWARF calling convention based on the given dwarf_cc
// token.
func NewDwarfCC(tok interface{}) (ast.DwarfCC, error) {
	m := map[string]ast.DwarfCC{
		"DW_CC_normal":                    ast.DwarfCCNormal,
		"DW_CC_program":                   ast.DwarfCCProgram,
		"DW_CC_nocall":                    ast.DwarfCCNoCall,
		"DW_CC_pass_by_reference":         ast.DwarfCCPassByReference,
		"DW_CC_pass_by_value":             ast.DwarfCCPassByValue,
		"DW_CC_GNU_borland_fastcall_i386": ast.DwarfCCGNUBorlandFastcallI386,
		"DW_CC_BORLAND_safecall":          ast.DwarfCCBORLANDSafecall,
		"DW_CC_BORLAND_stdcall":           ast.DwarfCCBORLANDStdcall,
		"DW_CC_BORLAND_pascal":            ast.DwarfCCBORLANDPascal,
		"DW_CC_BORLAND_msfastcall":        ast.DwarfCCBORLANDMSFastcall,
		"DW_CC_BORLAND_msreturn":          ast.DwarfCCBORLANDMSReturn,
		"DW_CC_BORLAND_thiscall":          ast.DwarfCCBORLANDThiscall,
		"DW_CC_BORLAND_fastcall":          ast.DwarfCCBORLANDFastcall,
		"DW_CC_LLVM_vectorcall":           ast.DwarfCCLLVMVectorcall,
	}
	s := String(tok)
	if v, ok := m[s]; ok {
		return v, nil
	}
	return 0, errors.Errorf("DWARF calling convention %q not yet supported", s)
}

// NewDwarfVirtuality returns a new DWARF virtuality code based on the given
// dwarf_virtuality token.
func NewDwarfVirtuality(tok interface{}) (ast.DwarfVirtuality, error) {
	m := map[string]ast.DwarfVirtuality{
		"DW_VIRTUALITY_none":         ast.DwarfVirtualityNone,
		"DW_VIRTUALITY_virtual":      ast.DwarfVirtualityVirtual,
		"DW_VIRTUALITY_pure_virtual": ast.DwarfVirtualityPureVirtual,
	}
	s := String(tok)
	if v, ok := m[s]; ok {
		return v, nil
	}
	return 0, errors.Errorf("DWARF virtuality code %q not yet supported", s)
}

// NewDwarfOp returns a new DWARF expression operator based on the given
// dwarf_op token.
func NewDwarfOp(tok interface{}) (ast.DwarfOp, error) {
	m := map[string]ast.DwarfOp{
		"DW_OP_addr":                 ast.DwarfOpAddr,
		"DW_OP_deref":                ast.DwarfOpDeref,
		"DW_OP_const1u":              ast.DwarfOpConst1u,
		"DW_OP_const1s":              ast.DwarfOpConst1s,
		"DW_OP_const2u":              ast.DwarfOpConst2u,
		"DW_OP_const2s":              ast.DwarfOpConst2s,
		"DW_OP_const4u":              ast.DwarfOpConst4u,
		"DW_OP_const4s":              ast.DwarfOpConst4s,
		"DW_OP_const8u":              ast.DwarfOpConst8u,
		"DW_OP_const8s":              ast.DwarfOpConst8s,
		"DW_OP_constu":               ast.DwarfOpConstu,
		"DW_OP_consts":               ast.DwarfOpConsts,
		"DW_OP_dup":                  ast.DwarfOpDup,
		"DW_OP_drop":                 ast.DwarfOpDrop,
		"DW_OP_over":                 ast.DwarfOpOver,
		"DW_OP_pick":                 ast.DwarfOpPick,
		"DW_OP_swap":                 ast.DwarfOpSwap,
		"DW_OP_rot":                  ast.DwarfOpRot,
		"DW_OP_xderef":               ast.DwarfOpXderef,
		"DW_OP_abs":                  ast.DwarfOpAbs,
		"DW_OP_and":                  ast.DwarfOpAnd,
		"DW_OP_div":                  ast.DwarfOpDiv,
		"DW_OP_minus":                ast.DwarfOpMinus,
		"DW_OP_mod":                  ast.DwarfOpMod,
		"DW_OP_mul":                  ast.DwarfOpMul,
		"DW_OP_neg":                  ast.DwarfOpNeg,
		"DW_OP_not":                  ast.DwarfOpNot,
		"DW_OP_or":                   ast.DwarfOpOr,
		"DW_OP_plus":                 ast.DwarfOpPlus,
		"DW_OP_plus_uconst":          ast.DwarfOpPlusUconst,
		"DW_OP_shl":                  ast.DwarfOpShl,
		"DW_OP_shr":                  ast.DwarfOpShr,
		"DW_OP_shra":                 ast.DwarfOpShra,
		"DW_OP_xor":                  ast.DwarfOpXor,
		"DW_OP_bra":                  ast.DwarfOpBra,
		"DW_OP_eq":                   ast.DwarfOpEq,
		"DW_OP_ge":                   ast.DwarfOpGe,
		"DW_OP_gt":                   ast.DwarfOpGt,
		"DW_OP_le":                   ast.DwarfOpLe,
		"DW_OP_lt":                   ast.DwarfOpLt,
		"DW_OP_ne":                   ast.DwarfOpNe,
		"DW_OP_skip":                 ast.DwarfOpSkip,
		"DW_OP_lit0":                 ast.DwarfOpLit0,
		"DW_OP_lit1":                 ast.DwarfOpLit1,
		"DW_OP_lit2":                 ast.DwarfOpLit2,
		"DW_OP_lit3":                 ast.DwarfOpLit3,
		"DW_OP_lit4":                 ast.DwarfOpLit4,
		"DW_OP_lit5":                 ast.DwarfOpLit5,
		"DW_OP_lit6":                 ast.DwarfOpLit6,
		"DW_OP_lit7":                 ast.DwarfOpLit7,
		"DW_OP_lit8":                 ast.DwarfOpLit8,
		"DW_OP_lit9":                 ast.DwarfOpLit9,
		"DW_OP_lit10":                ast.DwarfOpLit10,
		"DW_OP_lit11":                ast.DwarfOpLit11,
		"DW_OP_lit12":                ast.DwarfOpLit12,
		"DW_OP_lit13":                ast.DwarfOpLit13,
		"DW_OP_lit14":                ast.DwarfOpLit14,
		"DW_OP_lit15":                ast.DwarfOpLit15,
		"DW_OP_lit16":                ast.DwarfOpLit16,
		"DW_OP_lit17":                ast.DwarfOpLit17,
		"DW_OP_lit18":                ast.DwarfOpLit18,
		"DW_OP_lit19":                ast.DwarfOpLit19,
		"DW_OP_lit20":                ast.DwarfOpLit20,
		"DW_OP_lit21":                ast.DwarfOpLit21,
		"DW_OP_lit22":                ast.DwarfOpLit22,
		"DW_OP_lit23":                ast.DwarfOpLit23,
		"DW_OP_lit24":                ast.DwarfOpLit24,
		"DW_OP_lit25":                ast.DwarfOpLit25,
		"DW_OP_lit26":                ast.DwarfOpLit26,
		"DW_OP_lit27":                ast.DwarfOpLit27,
		"DW_OP_lit28":                ast.DwarfOpLit28,
		"DW_OP_lit29":                ast.DwarfOpLit29,
		"DW_OP_lit30":                ast.DwarfOpLit30,
		"DW_OP_lit31":                ast.DwarfOpLit31,
		"DW_OP_reg0":                 ast.DwarfOpReg0,
		"DW_OP_reg1":                 ast.DwarfOpReg1,
		"DW_OP_reg2":                 ast.DwarfOpReg2,
		"DW_OP_reg3":                 ast.DwarfOpReg3,
		"DW_OP_reg4":                 ast.DwarfOpReg4,
		"DW_OP_reg5":                 ast.DwarfOpReg5,
		"DW_OP_reg6":                 ast.DwarfOpReg6,
		"DW_OP_reg7":                 ast.DwarfOpReg7,
		"DW_OP_reg8":                 ast.DwarfOpReg8,
		"DW_OP_reg9":                 ast.DwarfOpReg9,
		"DW_OP_reg10":                ast.DwarfOpReg10,
		"DW_OP_reg11":                ast.DwarfOpReg11,
		"DW_OP_reg12":                ast.DwarfOpReg12,
		"DW_OP_reg13":                ast.DwarfOpReg13,
		"DW_OP_reg14":                ast.DwarfOpReg14,
		"DW_OP_reg15":                ast.DwarfOpReg15,
		"DW_OP_reg16":                ast.DwarfOpReg16,
		"DW_OP_reg17":                ast.DwarfOpReg17,
		"DW_OP_reg18":                ast.DwarfOpReg18,
		"DW_OP_reg19":                ast.DwarfOpReg19,
		"DW_OP_reg20":                ast.DwarfOpReg20,
		"DW_OP_reg21":                ast.DwarfOpReg21,
		"DW_OP_reg22":                ast.DwarfOpReg22,
		"DW_OP_reg23":                ast.DwarfOpReg23,
		"DW_OP_reg24":                ast.DwarfOpReg24,
		"DW_OP_reg25":                ast.DwarfOpReg25,
		"DW_OP_reg26":                ast.DwarfOpReg26,
		"DW_OP_reg27":                ast.DwarfOpReg27,
		"DW_OP_reg28":                ast.DwarfOpReg28,
		"DW_OP_reg29":                ast.DwarfOpReg29,
		"DW_OP_reg30":                ast.DwarfOpReg30,
		"DW_OP_reg31":                ast.DwarfOpReg31,
		"DW_OP_breg0":                ast.DwarfOpBreg0,
		"DW_OP_breg1":                ast.DwarfOpBreg1,
		"DW_OP_breg2":                ast.DwarfOpBreg2,
		"DW_OP_breg3":                ast.DwarfOpBreg3,
		"DW_OP_breg4":                ast.DwarfOpBreg4,
		"DW_OP_breg5":                ast.DwarfOpBreg5,
		"DW_OP_breg6":                ast.DwarfOpBreg6,
		"DW_OP_breg7":                ast.DwarfOpBreg7,
		"DW_OP_breg8":                ast.DwarfOpBreg8,
		"DW_OP_breg9":                ast.DwarfOpBreg9,
		"DW_OP_breg10":               ast.DwarfOpBreg10,
		"DW_OP_breg11":               ast.DwarfOpBreg11,
		"DW_OP_breg12":               ast.DwarfOpBreg12,
		"DW_OP_breg13":               ast.DwarfOpBreg13,
		"DW_OP_breg14":               ast.DwarfOpBreg14,
		"DW_OP_breg15":               ast.DwarfOpBreg15,
		"DW_OP_breg16":               ast.DwarfOpBreg16,
		"DW_OP_breg17":               ast.DwarfOpBreg17,
		"DW_OP_breg18":               ast.DwarfOpBreg18,
		"DW_OP_breg19":               ast.DwarfOpBreg19,
		"DW_OP_breg20":               ast.DwarfOpBreg20,
		"DW_OP_breg21":               ast.DwarfOpBreg21,
		"DW_OP_breg22":               ast.DwarfOpBreg22,
		"DW_OP_breg23":               ast.DwarfOpBreg23,
		"DW_OP_breg24":               ast.DwarfOpBreg24,
		"DW_OP_breg25":               ast.DwarfOpBreg25,
		"DW_OP_breg26":               ast.DwarfOpBreg26,
		"DW_OP_breg27":               ast.DwarfOpBreg27,
		"DW_OP_breg28":               ast.DwarfOpBreg28,
		"DW_OP_breg29":               ast.DwarfOpBreg29,
		"DW_OP_breg30":               ast.DwarfOpBreg30,
		"DW_OP_breg31":               ast.DwarfOpBreg31,
		"DW_OP_regx":                 ast.DwarfOpRegx,
		"DW_OP_fbreg":                ast.DwarfOpFbreg,
		"DW_OP_bregx":                ast.DwarfOpBregx,
		"DW_OP_piece":                ast.DwarfOpPiece,
		"DW_OP_deref_size":           ast.DwarfOpDerefSize,
		"DW_OP_xderef_size":          ast.DwarfOpXderefSize,
		"DW_OP_nop":                  ast.DwarfOpNop,
		"DW_OP_push_object_address":  ast.DwarfOpPushObjectAddress,
		"DW_OP_call2":                ast.DwarfOpCall2,
		"DW_OP_call4":                ast.DwarfOpCall4,
		"DW_OP_call_ref":             ast.DwarfOpCallRef,
		"DW_OP_form_tls_address":     ast.DwarfOpFormTLSAddress,
		"DW_OP_call_frame_cfa":       ast.DwarfOpCallFrameCFA,
		"DW_OP_bit_piece":            ast.DwarfOpBitPiece,
		"DW_OP_implicit_value":       ast.DwarfOpImplicitValue,
		"DW_OP_stack_value":          ast.DwarfOpStackValue,
		"DW_OP_implicit_pointer":     ast.DwarfOpImplicitPointer,
		"DW_OP_addrx":                ast.DwarfOpAddrx,
		"DW_OP_constx":               ast.DwarfOpConstx,
		"DW_OP_entry_value":          ast.DwarfOpEntryValue,
		"DW_OP_const_type":           ast.DwarfOpConstType,
		"DW_OP_regval_type":          ast.DwarfOpRegvalType,
		"DW_OP_deref_type":           ast.DwarfOpDerefType,
		"DW_OP_xderef_type":          ast.DwarfOpXderefType,
		"DW_OP_convert":              ast.DwarfOpConvert,
		"DW_OP_reinterpret":          ast.DwarfOpReinterpret,
		"DW_OP_GNU_push_tls_address": ast.DwarfOpGNUPushTLSAddress,
		"DW_OP_GNU_addr_index":       ast.DwarfOpGNUAddrIndex,
		"DW_OP_GNU_const_index":      ast.DwarfOpGNUConstIndex,
		"DW_OP_LLVM_fragment":        ast.DwarfOpLLVMFragment,
	}
	s := String(tok)
	if v, ok := m[s]; ok {
		return v, nil
	}
	return 0, errors.Errorf("DWARF expression operator %q not yet supported", s)
}

// NewDwarfMacinfo returns a new macinfo type encoding based on the given
// dwarf_macinfo token.
func NewDwarfMacinfo(tok interface{}) (ast.DwarfMacinfo, error) {
	m := map[string]ast.DwarfMacinfo{
		"DW_MACINFO_define":     ast.DwarfMacinfoDefine,
		"DW_MACINFO_undef":      ast.DwarfMacinfoUndef,
		"DW_MACINFO_start_file": ast.DwarfMacinfoStartFile,
		"DW_MACINFO_end_file":   ast.DwarfMacinfoEndFile,
		"DW_MACINFO_vendor_ext": ast.DwarfMacinfoVendorExt,
	}
	s := String(tok)
	if v, ok := m[s]; ok {
		return v, nil
	}
	return 0, errors.Errorf("macinfo type encoding %q not yet supported", s)
}
