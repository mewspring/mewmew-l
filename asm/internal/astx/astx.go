// Package astx defines the Gocc semantic actions to parse LLVM IR into an
// abstract syntax tree.
package astx

import (
	"fmt"
	"strconv"
	"strings"

	"github.com/mewmew/l/asm/ast"
	"github.com/mewmew/l/asm/internal/token"
	"github.com/mewmew/l/internal/enc"
	"github.com/mewmew/l/ir"
	"github.com/mewmew/l/ir/constant"
	"github.com/mewmew/l/ir/metadata"
	"github.com/mewmew/l/ir/types"
	"github.com/mewmew/l/ir/value"
	"github.com/pkg/errors"
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
func NewIntConst(tok interface{}) (*constant.Int, error) {
	return constant.NewIntFromString(String(tok)), nil
}

// NewFloatConst returns a new floating-point constant corresponding to the
// given token.
func NewFloatConst(tok interface{}) (*ast.FloatConst, error) {
	return &ast.FloatConst{X: String(tok)}, nil
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

// SpecializedMDField is a specialized metadata field.
type SpecializedMDField struct {
	// Key of field (e.g. "name:").
	Key string
	// Value of field (e.g. !42).
	Value interface{}
}

// NewDIFlag returns a new debug info flag based on the given di_flag token.
func NewDIFlag(tok interface{}) (metadata.DIFlag, error) {
	m := map[string]metadata.DIFlag{
		"DIFlagZero":                metadata.DIFlagZero,
		"DIFlagPrivate":             metadata.DIFlagPrivate,
		"DIFlagProtected":           metadata.DIFlagProtected,
		"DIFlagPublic":              metadata.DIFlagPublic,
		"DIFlagFwdDecl":             metadata.DIFlagFwdDecl,
		"DIFlagAppleBlock":          metadata.DIFlagAppleBlock,
		"DIFlagBlockByrefStruct":    metadata.DIFlagBlockByrefStruct,
		"DIFlagVirtual":             metadata.DIFlagVirtual,
		"DIFlagArtificial":          metadata.DIFlagArtificial,
		"DIFlagExplicit":            metadata.DIFlagExplicit,
		"DIFlagPrototyped":          metadata.DIFlagPrototyped,
		"DIFlagObjcClassComplete":   metadata.DIFlagObjcClassComplete,
		"DIFlagObjectPointer":       metadata.DIFlagObjectPointer,
		"DIFlagVector":              metadata.DIFlagVector,
		"DIFlagStaticMember":        metadata.DIFlagStaticMember,
		"DIFlagLValueReference":     metadata.DIFlagLValueReference,
		"DIFlagRValueReference":     metadata.DIFlagRValueReference,
		"DIFlagReserved":            metadata.DIFlagReserved,
		"DIFlagSingleInheritance":   metadata.DIFlagSingleInheritance,
		"DIFlagMultipleInheritance": metadata.DIFlagMultipleInheritance,
		"DIFlagVirtualInheritance":  metadata.DIFlagVirtualInheritance,
		"DIFlagIntroducedVirtual":   metadata.DIFlagIntroducedVirtual,
		"DIFlagBitField":            metadata.DIFlagBitField,
		"DIFlagNoReturn":            metadata.DIFlagNoReturn,
		"DIFlagMainSubprogram":      metadata.DIFlagMainSubprogram,
		"DIFlagTypePassByValue":     metadata.DIFlagTypePassByValue,
		"DIFlagTypePassByReference": metadata.DIFlagTypePassByReference,
		"DIFlagIndirectVirtualBase": metadata.DIFlagIndirectVirtualBase,
	}
	s := String(tok)
	if v, ok := m[s]; ok {
		return v, nil
	}
	return 0, errors.Errorf("debug flag %q not yet supported", s)
}

// NewDwarfLang returns a new DWARF language based on the given dwarf_lang
// token.
func NewDwarfLang(tok interface{}) (metadata.DwarfLang, error) {
	m := map[string]metadata.DwarfLang{
		"DW_LANG_C89":                 metadata.DwarfLangC89,
		"DW_LANG_C":                   metadata.DwarfLangC,
		"DW_LANG_Ada83":               metadata.DwarfLangAda83,
		"DW_LANG_C_plus_plus":         metadata.DwarfLangCPlusPlus,
		"DW_LANG_Cobol74":             metadata.DwarfLangCobol74,
		"DW_LANG_Cobol85":             metadata.DwarfLangCobol85,
		"DW_LANG_Fortran77":           metadata.DwarfLangFortran77,
		"DW_LANG_Fortran90":           metadata.DwarfLangFortran90,
		"DW_LANG_Pascal83":            metadata.DwarfLangPascal83,
		"DW_LANG_Modula2":             metadata.DwarfLangModula2,
		"DW_LANG_Java":                metadata.DwarfLangJava,
		"DW_LANG_C99":                 metadata.DwarfLangC99,
		"DW_LANG_Ada95":               metadata.DwarfLangAda95,
		"DW_LANG_Fortran95":           metadata.DwarfLangFortran95,
		"DW_LANG_PLI":                 metadata.DwarfLangPLI,
		"DW_LANG_ObjC":                metadata.DwarfLangObjC,
		"DW_LANG_ObjC_plus_plus":      metadata.DwarfLangObjCPlusPlus,
		"DW_LANG_UPC":                 metadata.DwarfLangUPC,
		"DW_LANG_D":                   metadata.DwarfLangD,
		"DW_LANG_Python":              metadata.DwarfLangPython,
		"DW_LANG_OpenCL":              metadata.DwarfLangOpenCL,
		"DW_LANG_Go":                  metadata.DwarfLangGo,
		"DW_LANG_Modula3":             metadata.DwarfLangModula3,
		"DW_LANG_Haskell":             metadata.DwarfLangHaskell,
		"DW_LANG_C_plus_plus_03":      metadata.DwarfLangCPlusPlus03,
		"DW_LANG_C_plus_plus_11":      metadata.DwarfLangCPlusPlus11,
		"DW_LANG_OCaml":               metadata.DwarfLangOCaml,
		"DW_LANG_Rust":                metadata.DwarfLangRust,
		"DW_LANG_C11":                 metadata.DwarfLangC11,
		"DW_LANG_Swift":               metadata.DwarfLangSwift,
		"DW_LANG_Julia":               metadata.DwarfLangJulia,
		"DW_LANG_Dylan":               metadata.DwarfLangDylan,
		"DW_LANG_C_plus_plus_14":      metadata.DwarfLangCPlusPlus14,
		"DW_LANG_Fortran03":           metadata.DwarfLangFortran03,
		"DW_LANG_Fortran08":           metadata.DwarfLangFortran08,
		"DW_LANG_RenderScript":        metadata.DwarfLangRenderScript,
		"DW_LANG_BLISS":               metadata.DwarfLangBLISS,
		"DW_LANG_Mips_Assembler":      metadata.DwarfLangMipsAssembler,
		"DW_LANG_GOOGLE_RenderScript": metadata.DwarfLangGoogleRenderScript,
		"DW_LANG_BORLAND_Delphi":      metadata.DwarfLangBorlandDelphi,
	}
	s := String(tok)
	if v, ok := m[s]; ok {
		return v, nil
	}
	return 0, errors.Errorf("DWARF language %q not yet supported", s)
}

// NewChecksumKind returns a new checksum algorithm based on the given
// checksum_kind token.
func NewChecksumKind(tok interface{}) (metadata.ChecksumKind, error) {
	m := map[string]metadata.ChecksumKind{
		"CSK_MD5":  metadata.ChecksumKindMD5,
		"CSK_SHA1": metadata.ChecksumKindSHA1,
	}
	s := String(tok)
	if v, ok := m[s]; ok {
		return v, nil
	}
	return 0, errors.Errorf("checksum algorithm %q not yet supported", s)
}

// NewDwarfTag returns a new DWARF tag based on the given dwarf_tag token.
func NewDwarfTag(tok interface{}) (metadata.DwarfTag, error) {
	m := map[string]metadata.DwarfTag{
		"DW_TAG_null":                         metadata.DwarfTagNull,
		"DW_TAG_array_type":                   metadata.DwarfTagArrayType,
		"DW_TAG_class_type":                   metadata.DwarfTagClassType,
		"DW_TAG_entry_point":                  metadata.DwarfTagEntryPoint,
		"DW_TAG_enumeration_type":             metadata.DwarfTagEnumerationType,
		"DW_TAG_formal_parameter":             metadata.DwarfTagFormalParameter,
		"DW_TAG_imported_declaration":         metadata.DwarfTagImportedDeclaration,
		"DW_TAG_label":                        metadata.DwarfTagLabel,
		"DW_TAG_lexical_block":                metadata.DwarfTagLexicalBlock,
		"DW_TAG_member":                       metadata.DwarfTagMember,
		"DW_TAG_pointer_type":                 metadata.DwarfTagPointerType,
		"DW_TAG_reference_type":               metadata.DwarfTagReferenceType,
		"DW_TAG_compile_unit":                 metadata.DwarfTagCompileUnit,
		"DW_TAG_string_type":                  metadata.DwarfTagStringType,
		"DW_TAG_structure_type":               metadata.DwarfTagStructureType,
		"DW_TAG_subroutine_type":              metadata.DwarfTagSubroutineType,
		"DW_TAG_typedef":                      metadata.DwarfTagTypedef,
		"DW_TAG_union_type":                   metadata.DwarfTagUnionType,
		"DW_TAG_unspecified_parameters":       metadata.DwarfTagUnspecifiedParameters,
		"DW_TAG_variant":                      metadata.DwarfTagVariant,
		"DW_TAG_common_block":                 metadata.DwarfTagCommonBlock,
		"DW_TAG_common_inclusion":             metadata.DwarfTagCommonInclusion,
		"DW_TAG_inheritance":                  metadata.DwarfTagInheritance,
		"DW_TAG_inlined_subroutine":           metadata.DwarfTagInlinedSubroutine,
		"DW_TAG_module":                       metadata.DwarfTagModule,
		"DW_TAG_ptr_to_member_type":           metadata.DwarfTagPtrToMemberType,
		"DW_TAG_set_type":                     metadata.DwarfTagSetType,
		"DW_TAG_subrange_type":                metadata.DwarfTagSubrangeType,
		"DW_TAG_with_stmt":                    metadata.DwarfTagWithStmt,
		"DW_TAG_access_declaration":           metadata.DwarfTagAccessDeclaration,
		"DW_TAG_base_type":                    metadata.DwarfTagBaseType,
		"DW_TAG_catch_block":                  metadata.DwarfTagCatchBlock,
		"DW_TAG_const_type":                   metadata.DwarfTagConstType,
		"DW_TAG_constant":                     metadata.DwarfTagConstant,
		"DW_TAG_enumerator":                   metadata.DwarfTagEnumerator,
		"DW_TAG_file_type":                    metadata.DwarfTagFileType,
		"DW_TAG_friend":                       metadata.DwarfTagFriend,
		"DW_TAG_namelist":                     metadata.DwarfTagNamelist,
		"DW_TAG_namelist_item":                metadata.DwarfTagNamelistItem,
		"DW_TAG_packed_type":                  metadata.DwarfTagPackedType,
		"DW_TAG_subprogram":                   metadata.DwarfTagSubprogram,
		"DW_TAG_template_type_parameter":      metadata.DwarfTagTemplateTypeParameter,
		"DW_TAG_template_value_parameter":     metadata.DwarfTagTemplateValueParameter,
		"DW_TAG_thrown_type":                  metadata.DwarfTagThrownType,
		"DW_TAG_try_block":                    metadata.DwarfTagTryBlock,
		"DW_TAG_variant_part":                 metadata.DwarfTagVariantPart,
		"DW_TAG_variable":                     metadata.DwarfTagVariable,
		"DW_TAG_volatile_type":                metadata.DwarfTagVolatileType,
		"DW_TAG_dwarf_procedure":              metadata.DwarfTagDwarfProcedure,
		"DW_TAG_restrict_type":                metadata.DwarfTagRestrictType,
		"DW_TAG_interface_type":               metadata.DwarfTagInterfaceType,
		"DW_TAG_namespace":                    metadata.DwarfTagNamespace,
		"DW_TAG_imported_module":              metadata.DwarfTagImportedModule,
		"DW_TAG_unspecified_type":             metadata.DwarfTagUnspecifiedType,
		"DW_TAG_partial_unit":                 metadata.DwarfTagPartialUnit,
		"DW_TAG_imported_unit":                metadata.DwarfTagImportedUnit,
		"DW_TAG_condition":                    metadata.DwarfTagCondition,
		"DW_TAG_shared_type":                  metadata.DwarfTagSharedType,
		"DW_TAG_type_unit":                    metadata.DwarfTagTypeUnit,
		"DW_TAG_rvalue_reference_type":        metadata.DwarfTagRvalueReferenceType,
		"DW_TAG_template_alias":               metadata.DwarfTagTemplateAlias,
		"DW_TAG_coarray_type":                 metadata.DwarfTagCoarrayType,
		"DW_TAG_generic_subrange":             metadata.DwarfTagGenericSubrange,
		"DW_TAG_dynamic_type":                 metadata.DwarfTagDynamicType,
		"DW_TAG_atomic_type":                  metadata.DwarfTagAtomicType,
		"DW_TAG_call_site":                    metadata.DwarfTagCallSite,
		"DW_TAG_call_site_parameter":          metadata.DwarfTagCallSiteParameter,
		"DW_TAG_skeleton_unit":                metadata.DwarfTagSkeletonUnit,
		"DW_TAG_immutable_type":               metadata.DwarfTagImmutableType,
		"DW_TAG_MIPS_loop":                    metadata.DwarfTagMIPSLoop,
		"DW_TAG_format_label":                 metadata.DwarfTagFormatLabel,
		"DW_TAG_function_template":            metadata.DwarfTagFunctionTemplate,
		"DW_TAG_class_template":               metadata.DwarfTagClassTemplate,
		"DW_TAG_GNU_template_template_param":  metadata.DwarfTagGNUTemplateTemplateParam,
		"DW_TAG_GNU_template_parameter_pack":  metadata.DwarfTagGNUTemplateParameterPack,
		"DW_TAG_GNU_formal_parameter_pack":    metadata.DwarfTagGNUFormalParameterPack,
		"DW_TAG_GNU_call_site":                metadata.DwarfTagGNUCallSite,
		"DW_TAG_GNU_call_site_parameter":      metadata.DwarfTagGNUCallSiteParameter,
		"DW_TAG_APPLE_property":               metadata.DwarfTagAPPLEProperty,
		"DW_TAG_BORLAND_property":             metadata.DwarfTagBORLANDProperty,
		"DW_TAG_BORLAND_Delphi_string":        metadata.DwarfTagBORLANDDelphiString,
		"DW_TAG_BORLAND_Delphi_dynamic_array": metadata.DwarfTagBORLANDDelphiDynamicArray,
		"DW_TAG_BORLAND_Delphi_set":           metadata.DwarfTagBORLANDDelphiSet,
		"DW_TAG_BORLAND_Delphi_variant":       metadata.DwarfTagBORLANDDelphiVariant,
	}
	s := String(tok)
	if v, ok := m[s]; ok {
		return v, nil
	}
	return 0, errors.Errorf("DWARF tag %q not yet supported", s)
}

// NewDwarfAttEncoding returns a new DWARF attribute type encoding based on the
// given dwarf_att_encoding token.
func NewDwarfAttEncoding(tok interface{}) (metadata.DwarfAttEncoding, error) {
	m := map[string]metadata.DwarfAttEncoding{
		"DW_ATE_address":         metadata.DwarfAttEncodingAddress,
		"DW_ATE_boolean":         metadata.DwarfAttEncodingBoolean,
		"DW_ATE_complex_float":   metadata.DwarfAttEncodingComplexFloat,
		"DW_ATE_float":           metadata.DwarfAttEncodingFloat,
		"DW_ATE_signed":          metadata.DwarfAttEncodingSigned,
		"DW_ATE_signed_char":     metadata.DwarfAttEncodingSignedChar,
		"DW_ATE_unsigned":        metadata.DwarfAttEncodingUnsigned,
		"DW_ATE_unsigned_char":   metadata.DwarfAttEncodingUnsignedChar,
		"DW_ATE_imaginary_float": metadata.DwarfAttEncodingImaginaryFloat,
		"DW_ATE_packed_decimal":  metadata.DwarfAttEncodingPackedDecimal,
		"DW_ATE_numeric_string":  metadata.DwarfAttEncodingNumericString,
		"DW_ATE_edited":          metadata.DwarfAttEncodingEdited,
		"DW_ATE_signed_fixed":    metadata.DwarfAttEncodingSignedFixed,
		"DW_ATE_unsigned_fixed":  metadata.DwarfAttEncodingUnsignedFixed,
		"DW_ATE_decimal_float":   metadata.DwarfAttEncodingDecimalFloat,
		"DW_ATE_UTF":             metadata.DwarfAttEncodingUTF,
		"DW_ATE_UCS":             metadata.DwarfAttEncodingUCS,
		"DW_ATE_ASCII":           metadata.DwarfAttEncodingASCII,
	}
	s := String(tok)
	if v, ok := m[s]; ok {
		return v, nil
	}
	return 0, errors.Errorf("DWARF attribute type encoding %q not yet supported", s)
}

// NewDwarfCC returns a new DWARF calling convention based on the given dwarf_cc
// token.
func NewDwarfCC(tok interface{}) (metadata.DwarfCC, error) {
	m := map[string]metadata.DwarfCC{
		"DW_CC_normal":                    metadata.DwarfCCNormal,
		"DW_CC_program":                   metadata.DwarfCCProgram,
		"DW_CC_nocall":                    metadata.DwarfCCNoCall,
		"DW_CC_pass_by_reference":         metadata.DwarfCCPassByReference,
		"DW_CC_pass_by_value":             metadata.DwarfCCPassByValue,
		"DW_CC_GNU_borland_fastcall_i386": metadata.DwarfCCGNUBorlandFastcallI386,
		"DW_CC_BORLAND_safecall":          metadata.DwarfCCBORLANDSafecall,
		"DW_CC_BORLAND_stdcall":           metadata.DwarfCCBORLANDStdcall,
		"DW_CC_BORLAND_pascal":            metadata.DwarfCCBORLANDPascal,
		"DW_CC_BORLAND_msfastcall":        metadata.DwarfCCBORLANDMSFastcall,
		"DW_CC_BORLAND_msreturn":          metadata.DwarfCCBORLANDMSReturn,
		"DW_CC_BORLAND_thiscall":          metadata.DwarfCCBORLANDThiscall,
		"DW_CC_BORLAND_fastcall":          metadata.DwarfCCBORLANDFastcall,
		"DW_CC_LLVM_vectorcall":           metadata.DwarfCCLLVMVectorcall,
	}
	s := String(tok)
	if v, ok := m[s]; ok {
		return v, nil
	}
	return 0, errors.Errorf("DWARF calling convention %q not yet supported", s)
}

// NewDwarfVirtuality returns a new DWARF virtuality code based on the given
// dwarf_virtuality token.
func NewDwarfVirtuality(tok interface{}) (metadata.DwarfVirtuality, error) {
	m := map[string]metadata.DwarfVirtuality{
		"DW_VIRTUALITY_none":         metadata.DwarfVirtualityNone,
		"DW_VIRTUALITY_virtual":      metadata.DwarfVirtualityVirtual,
		"DW_VIRTUALITY_pure_virtual": metadata.DwarfVirtualityPureVirtual,
	}
	s := String(tok)
	if v, ok := m[s]; ok {
		return v, nil
	}
	return 0, errors.Errorf("DWARF virtuality code %q not yet supported", s)
}

// NewDwarfOp returns a new DWARF expression operator based on the given
// dwarf_op token.
func NewDwarfOp(tok interface{}) (metadata.DwarfOp, error) {
	m := map[string]metadata.DwarfOp{
		"DW_OP_addr":                 metadata.DwarfOpAddr,
		"DW_OP_deref":                metadata.DwarfOpDeref,
		"DW_OP_const1u":              metadata.DwarfOpConst1u,
		"DW_OP_const1s":              metadata.DwarfOpConst1s,
		"DW_OP_const2u":              metadata.DwarfOpConst2u,
		"DW_OP_const2s":              metadata.DwarfOpConst2s,
		"DW_OP_const4u":              metadata.DwarfOpConst4u,
		"DW_OP_const4s":              metadata.DwarfOpConst4s,
		"DW_OP_const8u":              metadata.DwarfOpConst8u,
		"DW_OP_const8s":              metadata.DwarfOpConst8s,
		"DW_OP_constu":               metadata.DwarfOpConstu,
		"DW_OP_consts":               metadata.DwarfOpConsts,
		"DW_OP_dup":                  metadata.DwarfOpDup,
		"DW_OP_drop":                 metadata.DwarfOpDrop,
		"DW_OP_over":                 metadata.DwarfOpOver,
		"DW_OP_pick":                 metadata.DwarfOpPick,
		"DW_OP_swap":                 metadata.DwarfOpSwap,
		"DW_OP_rot":                  metadata.DwarfOpRot,
		"DW_OP_xderef":               metadata.DwarfOpXderef,
		"DW_OP_abs":                  metadata.DwarfOpAbs,
		"DW_OP_and":                  metadata.DwarfOpAnd,
		"DW_OP_div":                  metadata.DwarfOpDiv,
		"DW_OP_minus":                metadata.DwarfOpMinus,
		"DW_OP_mod":                  metadata.DwarfOpMod,
		"DW_OP_mul":                  metadata.DwarfOpMul,
		"DW_OP_neg":                  metadata.DwarfOpNeg,
		"DW_OP_not":                  metadata.DwarfOpNot,
		"DW_OP_or":                   metadata.DwarfOpOr,
		"DW_OP_plus":                 metadata.DwarfOpPlus,
		"DW_OP_plus_uconst":          metadata.DwarfOpPlusUconst,
		"DW_OP_shl":                  metadata.DwarfOpShl,
		"DW_OP_shr":                  metadata.DwarfOpShr,
		"DW_OP_shra":                 metadata.DwarfOpShra,
		"DW_OP_xor":                  metadata.DwarfOpXor,
		"DW_OP_bra":                  metadata.DwarfOpBra,
		"DW_OP_eq":                   metadata.DwarfOpEq,
		"DW_OP_ge":                   metadata.DwarfOpGe,
		"DW_OP_gt":                   metadata.DwarfOpGt,
		"DW_OP_le":                   metadata.DwarfOpLe,
		"DW_OP_lt":                   metadata.DwarfOpLt,
		"DW_OP_ne":                   metadata.DwarfOpNe,
		"DW_OP_skip":                 metadata.DwarfOpSkip,
		"DW_OP_lit0":                 metadata.DwarfOpLit0,
		"DW_OP_lit1":                 metadata.DwarfOpLit1,
		"DW_OP_lit2":                 metadata.DwarfOpLit2,
		"DW_OP_lit3":                 metadata.DwarfOpLit3,
		"DW_OP_lit4":                 metadata.DwarfOpLit4,
		"DW_OP_lit5":                 metadata.DwarfOpLit5,
		"DW_OP_lit6":                 metadata.DwarfOpLit6,
		"DW_OP_lit7":                 metadata.DwarfOpLit7,
		"DW_OP_lit8":                 metadata.DwarfOpLit8,
		"DW_OP_lit9":                 metadata.DwarfOpLit9,
		"DW_OP_lit10":                metadata.DwarfOpLit10,
		"DW_OP_lit11":                metadata.DwarfOpLit11,
		"DW_OP_lit12":                metadata.DwarfOpLit12,
		"DW_OP_lit13":                metadata.DwarfOpLit13,
		"DW_OP_lit14":                metadata.DwarfOpLit14,
		"DW_OP_lit15":                metadata.DwarfOpLit15,
		"DW_OP_lit16":                metadata.DwarfOpLit16,
		"DW_OP_lit17":                metadata.DwarfOpLit17,
		"DW_OP_lit18":                metadata.DwarfOpLit18,
		"DW_OP_lit19":                metadata.DwarfOpLit19,
		"DW_OP_lit20":                metadata.DwarfOpLit20,
		"DW_OP_lit21":                metadata.DwarfOpLit21,
		"DW_OP_lit22":                metadata.DwarfOpLit22,
		"DW_OP_lit23":                metadata.DwarfOpLit23,
		"DW_OP_lit24":                metadata.DwarfOpLit24,
		"DW_OP_lit25":                metadata.DwarfOpLit25,
		"DW_OP_lit26":                metadata.DwarfOpLit26,
		"DW_OP_lit27":                metadata.DwarfOpLit27,
		"DW_OP_lit28":                metadata.DwarfOpLit28,
		"DW_OP_lit29":                metadata.DwarfOpLit29,
		"DW_OP_lit30":                metadata.DwarfOpLit30,
		"DW_OP_lit31":                metadata.DwarfOpLit31,
		"DW_OP_reg0":                 metadata.DwarfOpReg0,
		"DW_OP_reg1":                 metadata.DwarfOpReg1,
		"DW_OP_reg2":                 metadata.DwarfOpReg2,
		"DW_OP_reg3":                 metadata.DwarfOpReg3,
		"DW_OP_reg4":                 metadata.DwarfOpReg4,
		"DW_OP_reg5":                 metadata.DwarfOpReg5,
		"DW_OP_reg6":                 metadata.DwarfOpReg6,
		"DW_OP_reg7":                 metadata.DwarfOpReg7,
		"DW_OP_reg8":                 metadata.DwarfOpReg8,
		"DW_OP_reg9":                 metadata.DwarfOpReg9,
		"DW_OP_reg10":                metadata.DwarfOpReg10,
		"DW_OP_reg11":                metadata.DwarfOpReg11,
		"DW_OP_reg12":                metadata.DwarfOpReg12,
		"DW_OP_reg13":                metadata.DwarfOpReg13,
		"DW_OP_reg14":                metadata.DwarfOpReg14,
		"DW_OP_reg15":                metadata.DwarfOpReg15,
		"DW_OP_reg16":                metadata.DwarfOpReg16,
		"DW_OP_reg17":                metadata.DwarfOpReg17,
		"DW_OP_reg18":                metadata.DwarfOpReg18,
		"DW_OP_reg19":                metadata.DwarfOpReg19,
		"DW_OP_reg20":                metadata.DwarfOpReg20,
		"DW_OP_reg21":                metadata.DwarfOpReg21,
		"DW_OP_reg22":                metadata.DwarfOpReg22,
		"DW_OP_reg23":                metadata.DwarfOpReg23,
		"DW_OP_reg24":                metadata.DwarfOpReg24,
		"DW_OP_reg25":                metadata.DwarfOpReg25,
		"DW_OP_reg26":                metadata.DwarfOpReg26,
		"DW_OP_reg27":                metadata.DwarfOpReg27,
		"DW_OP_reg28":                metadata.DwarfOpReg28,
		"DW_OP_reg29":                metadata.DwarfOpReg29,
		"DW_OP_reg30":                metadata.DwarfOpReg30,
		"DW_OP_reg31":                metadata.DwarfOpReg31,
		"DW_OP_breg0":                metadata.DwarfOpBreg0,
		"DW_OP_breg1":                metadata.DwarfOpBreg1,
		"DW_OP_breg2":                metadata.DwarfOpBreg2,
		"DW_OP_breg3":                metadata.DwarfOpBreg3,
		"DW_OP_breg4":                metadata.DwarfOpBreg4,
		"DW_OP_breg5":                metadata.DwarfOpBreg5,
		"DW_OP_breg6":                metadata.DwarfOpBreg6,
		"DW_OP_breg7":                metadata.DwarfOpBreg7,
		"DW_OP_breg8":                metadata.DwarfOpBreg8,
		"DW_OP_breg9":                metadata.DwarfOpBreg9,
		"DW_OP_breg10":               metadata.DwarfOpBreg10,
		"DW_OP_breg11":               metadata.DwarfOpBreg11,
		"DW_OP_breg12":               metadata.DwarfOpBreg12,
		"DW_OP_breg13":               metadata.DwarfOpBreg13,
		"DW_OP_breg14":               metadata.DwarfOpBreg14,
		"DW_OP_breg15":               metadata.DwarfOpBreg15,
		"DW_OP_breg16":               metadata.DwarfOpBreg16,
		"DW_OP_breg17":               metadata.DwarfOpBreg17,
		"DW_OP_breg18":               metadata.DwarfOpBreg18,
		"DW_OP_breg19":               metadata.DwarfOpBreg19,
		"DW_OP_breg20":               metadata.DwarfOpBreg20,
		"DW_OP_breg21":               metadata.DwarfOpBreg21,
		"DW_OP_breg22":               metadata.DwarfOpBreg22,
		"DW_OP_breg23":               metadata.DwarfOpBreg23,
		"DW_OP_breg24":               metadata.DwarfOpBreg24,
		"DW_OP_breg25":               metadata.DwarfOpBreg25,
		"DW_OP_breg26":               metadata.DwarfOpBreg26,
		"DW_OP_breg27":               metadata.DwarfOpBreg27,
		"DW_OP_breg28":               metadata.DwarfOpBreg28,
		"DW_OP_breg29":               metadata.DwarfOpBreg29,
		"DW_OP_breg30":               metadata.DwarfOpBreg30,
		"DW_OP_breg31":               metadata.DwarfOpBreg31,
		"DW_OP_regx":                 metadata.DwarfOpRegx,
		"DW_OP_fbreg":                metadata.DwarfOpFbreg,
		"DW_OP_bregx":                metadata.DwarfOpBregx,
		"DW_OP_piece":                metadata.DwarfOpPiece,
		"DW_OP_deref_size":           metadata.DwarfOpDerefSize,
		"DW_OP_xderef_size":          metadata.DwarfOpXderefSize,
		"DW_OP_nop":                  metadata.DwarfOpNop,
		"DW_OP_push_object_address":  metadata.DwarfOpPushObjectAddress,
		"DW_OP_call2":                metadata.DwarfOpCall2,
		"DW_OP_call4":                metadata.DwarfOpCall4,
		"DW_OP_call_ref":             metadata.DwarfOpCallRef,
		"DW_OP_form_tls_address":     metadata.DwarfOpFormTLSAddress,
		"DW_OP_call_frame_cfa":       metadata.DwarfOpCallFrameCFA,
		"DW_OP_bit_piece":            metadata.DwarfOpBitPiece,
		"DW_OP_implicit_value":       metadata.DwarfOpImplicitValue,
		"DW_OP_stack_value":          metadata.DwarfOpStackValue,
		"DW_OP_implicit_pointer":     metadata.DwarfOpImplicitPointer,
		"DW_OP_addrx":                metadata.DwarfOpAddrx,
		"DW_OP_constx":               metadata.DwarfOpConstx,
		"DW_OP_entry_value":          metadata.DwarfOpEntryValue,
		"DW_OP_const_type":           metadata.DwarfOpConstType,
		"DW_OP_regval_type":          metadata.DwarfOpRegvalType,
		"DW_OP_deref_type":           metadata.DwarfOpDerefType,
		"DW_OP_xderef_type":          metadata.DwarfOpXderefType,
		"DW_OP_convert":              metadata.DwarfOpConvert,
		"DW_OP_reinterpret":          metadata.DwarfOpReinterpret,
		"DW_OP_GNU_push_tls_address": metadata.DwarfOpGNUPushTLSAddress,
		"DW_OP_GNU_addr_index":       metadata.DwarfOpGNUAddrIndex,
		"DW_OP_GNU_const_index":      metadata.DwarfOpGNUConstIndex,
		"DW_OP_LLVM_fragment":        metadata.DwarfOpLLVMFragment,
	}
	s := String(tok)
	if v, ok := m[s]; ok {
		return v, nil
	}
	return 0, errors.Errorf("DWARF expression operator %q not yet supported", s)
}

// NewDwarfMacinfo returns a new macinfo type encoding based on the given
// dwarf_macinfo token.
func NewDwarfMacinfo(tok interface{}) (metadata.DwarfMacinfo, error) {
	m := map[string]metadata.DwarfMacinfo{
		"DW_MACINFO_define":     metadata.DwarfMacinfoDefine,
		"DW_MACINFO_undef":      metadata.DwarfMacinfoUndef,
		"DW_MACINFO_start_file": metadata.DwarfMacinfoStartFile,
		"DW_MACINFO_end_file":   metadata.DwarfMacinfoEndFile,
		"DW_MACINFO_vendor_ext": metadata.DwarfMacinfoVendorExt,
	}
	s := String(tok)
	if v, ok := m[s]; ok {
		return v, nil
	}
	return 0, errors.Errorf("macinfo type encoding %q not yet supported", s)
}
