source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.Spec_list = type { %struct.List_element*, %struct.List_element*, i64, i64, i64, %struct.List_element*, i8, i8, i8 }
%struct.List_element = type { i32, %struct.List_element*, %union.anon }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { i8, i64 }
%struct.anon = type { i8, i8 }
%struct.E_string = type { i8*, i8*, i64 }
%struct.__mbstate_t = type { i32, %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Usage: %s [OPTION]... SET1 [SET2]\0A\00", align 1
@.str.2 = private unnamed_addr constant [496 x i8] c"Translate, squeeze, and/or delete characters from standard input,\0Awriting to standard output.\0A\0A  -c, -C, --complement    use the complement of SET1\0A  -d, --delete            delete characters in SET1, do not translate\0A  -s, --squeeze-repeats   replace each sequence of a repeated character\0A                            that is listed in the last specified SET,\0A                            with a single occurrence of that character\0A  -t, --truncate-set1     first truncate SET1 to length of SET2\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [373 x i8] c"\0ASETs are specified as strings of characters.  Most represent themselves.\0AInterpreted sequences are:\0A\0A  \5CNNN            character with octal value NNN (1 to 3 octal digits)\0A  \5C\5C              backslash\0A  \5Ca              audible BEL\0A  \5Cb              backspace\0A  \5Cf              form feed\0A  \5Cn              new line\0A  \5Cr              return\0A  \5Ct              horizontal tab\0A\00", align 1
@.str.6 = private unnamed_addr constant [425 x i8] c"  \5Cv              vertical tab\0A  CHAR1-CHAR2     all characters from CHAR1 to CHAR2 in ascending order\0A  [CHAR*]         in SET2, copies of CHAR until length of SET1\0A  [CHAR*REPEAT]   REPEAT copies of CHAR, REPEAT octal if starting with 0\0A  [:alnum:]       all letters and digits\0A  [:alpha:]       all letters\0A  [:blank:]       all horizontal whitespace\0A  [:cntrl:]       all control characters\0A  [:digit:]       all digits\0A\00", align 1
@.str.7 = private unnamed_addr constant [411 x i8] c"  [:graph:]       all printable characters, not including space\0A  [:lower:]       all lower case letters\0A  [:print:]       all printable characters, including space\0A  [:punct:]       all punctuation characters\0A  [:space:]       all horizontal or vertical whitespace\0A  [:upper:]       all upper case letters\0A  [:xdigit:]      all hexadecimal digits\0A  [=CHAR=]        all characters which are equivalent to CHAR\0A\00", align 1
@.str.8 = private unnamed_addr constant [472 x i8] c"\0ATranslation occurs if -d is not given and both SET1 and SET2 appear.\0A-t may be used only when translating.  SET2 is extended to length of\0ASET1 by repeating its last character as necessary.  Excess characters\0Aof SET2 are ignored.  Only [:lower:] and [:upper:] are guaranteed to\0Aexpand in ascending order; used in SET2 while translating, they may\0Aonly be used in pairs to specify case conversion.  -s uses the last\0Aspecified SET, and occurs after translation or deletion.\0A\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"tr\00", align 1
@.str.36 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.37 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.39 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.40 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.41 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.42 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"+cCdst\00", align 1
@long_options = internal constant [7 x %struct.option] [%struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.43, i32 0, i32 0), i32 0, i32* null, i32 99 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i32 0, i32 0), i32 0, i32* null, i32 100 }, %struct.option { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.45, i32 0, i32 0), i32 0, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.46, i32 0, i32 0), i32 0, i32* null, i32 116 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.48, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
@.str.15 = private unnamed_addr constant [13 x i8] c"Jim Meyering\00", align 1
@truncate_set1 = internal unnamed_addr global i8 0, align 1, !dbg !139
@squeeze_repeats = internal unnamed_addr global i8 0, align 1, !dbg !137
@complement = internal unnamed_addr global i8 0, align 1, !dbg !133
@delete = internal unnamed_addr global i8 0, align 1, !dbg !135
@optind = external local_unnamed_addr global i32, align 4
@translating = internal unnamed_addr global i8 0, align 1, !dbg !85
@.str.16 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"missing operand after %s\00", align 1
@.str.19 = private unnamed_addr constant [68 x i8] c"Two strings must be given when both deleting and squeezing repeats.\00", align 1
@.str.20 = private unnamed_addr constant [44 x i8] c"Two strings must be given when translating.\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.22 = private unnamed_addr constant [70 x i8] c"Only one string may be given when deleting without squeezing repeats.\00", align 1
@.str.80 = private unnamed_addr constant [52 x i8] c"the [c*] repeat construct may not appear in string1\00", align 1
@.str.81 = private unnamed_addr constant [53 x i8] c"only one [c*] repeat construct may appear in string2\00", align 1
@.str.82 = private unnamed_addr constant [61 x i8] c"[=c=] expressions may not appear in string2 when translating\00", align 1
@.str.83 = private unnamed_addr constant [96 x i8] c"when translating, the only character classes that may appear in\0Astring2 are 'upper' and 'lower'\00", align 1
@.str.89 = private unnamed_addr constant [48 x i8] c"misaligned [:upper:] and/or [:lower:] construct\00", align 1
@.str.90 = private unnamed_addr constant [53 x i8] c"old_s1_len >= s1->length && old_s2_len >= s2->length\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"src/tr.c\00", align 1
@__PRETTY_FUNCTION__.validate_case_classes = private unnamed_addr constant [67 x i8] c"void validate_case_classes(struct Spec_list *, struct Spec_list *)\00", align 1
@.str.84 = private unnamed_addr constant [52 x i8] c"when not truncating set1, string2 must be non-empty\00", align 1
@.str.91 = private unnamed_addr constant [12 x i8] c"translating\00", align 1
@__PRETTY_FUNCTION__.string2_extend = private unnamed_addr constant [66 x i8] c"void string2_extend(const struct Spec_list *, struct Spec_list *)\00", align 1
@.str.94 = private unnamed_addr constant [105 x i8] c"when translating with string1 longer than string2,\0Athe latter string must not end with a character class\00", align 1
@.str.55 = private unnamed_addr constant [11 x i8] c"list->tail\00", align 1
@__PRETTY_FUNCTION__.append_repeated_char = private unnamed_addr constant [68 x i8] c"void append_repeated_char(struct Spec_list *, unsigned char, count)\00", align 1
@.str.85 = private unnamed_addr constant [107 x i8] c"when translating with complemented character classes,\0Astring2 must map all characters in the domain to one\00", align 1
@.str.86 = private unnamed_addr constant [63 x i8] c"the [c*] construct may appear in string2 only when translating\00", align 1
@stdin = external local_unnamed_addr global %struct._IO_FILE*, align 8
@in_squeeze_set = internal global [256 x i8] zeroinitializer, align 16, !dbg !93
@in_delete_set = internal global [256 x i8] zeroinitializer, align 16, !dbg !98
@io_buf = internal global [8192 x i8] zeroinitializer, align 16, !dbg !88
@.str.23 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@xlate = internal unnamed_addr global [256 x i8] zeroinitializer, align 16, !dbg !100
@.str.24 = private unnamed_addr constant [26 x i8] c"ch != -1 || truncate_set1\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [23 x i8] c"int main(int, char **)\00", align 1
@.str.26 = private unnamed_addr constant [26 x i8] c"c1 == -1 || truncate_set1\00", align 1
@.str.95 = private unnamed_addr constant [11 x i8] c"read error\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"standard input\00", align 1
@switch.table = private unnamed_addr constant [12 x i16] [i16 8, i16 1024, i16 1, i16 2, i16 2048, i16 -32768, i16 512, i16 16384, i16 4, i16 8192, i16 256, i16 4096]
@.str.96 = private unnamed_addr constant [12 x i8] c"i < N_CHARS\00", align 1
@__PRETTY_FUNCTION__.get_next = private unnamed_addr constant [59 x i8] c"int get_next(struct Spec_list *, enum Upper_Lower_class *)\00", align 1
@.str.97 = private unnamed_addr constant [49 x i8] c"is_char_class_member (p->u.char_class, s->state)\00", align 1
@.str.87 = private unnamed_addr constant [46 x i8] c"p->u.range.last_char >= p->u.range.first_char\00", align 1
@__PRETTY_FUNCTION__.get_spec_stats = private unnamed_addr constant [40 x i8] c"void get_spec_stats(struct Spec_list *)\00", align 1
@.str.88 = private unnamed_addr constant [27 x i8] c"too many characters in set\00", align 1
@.str.49 = private unnamed_addr constant [100 x i8] c"warning: the ambiguous octal escape \5C%c%c%c is being\0A\09interpreted as the 2-byte sequence \5C0%c%c, %c\00", align 1
@.str.50 = private unnamed_addr constant [65 x i8] c"warning: an unescaped backslash at end of string is not portable\00", align 1
@.str.51 = private unnamed_addr constant [36 x i8] c"missing character class name '[::]'\00", align 1
@.str.52 = private unnamed_addr constant [43 x i8] c"missing equivalence class character '[==]'\00", align 1
@char_class_name = internal unnamed_addr constant [12 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.67, i32 0, i32 0)], align 16, !dbg !141
@__PRETTY_FUNCTION__.append_char_class = private unnamed_addr constant [66 x i8] c"_Bool append_char_class(struct Spec_list *, const char *, size_t)\00", align 1
@.str.53 = private unnamed_addr constant [27 x i8] c"invalid character class %s\00", align 1
@__PRETTY_FUNCTION__.append_equiv_class = private unnamed_addr constant [67 x i8] c"_Bool append_equiv_class(struct Spec_list *, const char *, size_t)\00", align 1
@.str.54 = private unnamed_addr constant [57 x i8] c"%s: equivalence class operand must be a single character\00", align 1
@.str.77 = private unnamed_addr constant [24 x i8] c"start_idx + 1 < es->len\00", align 1
@__PRETTY_FUNCTION__.find_bracketed_repeat = private unnamed_addr constant [95 x i8] c"int find_bracketed_repeat(const struct E_string *, size_t, unsigned char *, count *, size_t *)\00", align 1
@.str.78 = private unnamed_addr constant [43 x i8] c"invalid repeat count %s in [c*n] construct\00", align 1
@.str.76 = private unnamed_addr constant [6 x i8] c"\5C%03o\00", align 1
@__PRETTY_FUNCTION__.append_range = private unnamed_addr constant [69 x i8] c"_Bool append_range(struct Spec_list *, unsigned char, unsigned char)\00", align 1
@.str.79 = private unnamed_addr constant [67 x i8] c"range-endpoints of '%s-%s' are in reverse collating sequence order\00", align 1
@__PRETTY_FUNCTION__.append_normal_char = private unnamed_addr constant [59 x i8] c"void append_normal_char(struct Spec_list *, unsigned char)\00", align 1
@.str.75 = private unnamed_addr constant [3 x i8] c"\5Cv\00", align 1
@.str.74 = private unnamed_addr constant [3 x i8] c"\5Ct\00", align 1
@.str.73 = private unnamed_addr constant [3 x i8] c"\5Cr\00", align 1
@.str.72 = private unnamed_addr constant [3 x i8] c"\5Cn\00", align 1
@.str.71 = private unnamed_addr constant [3 x i8] c"\5Cf\00", align 1
@.str.70 = private unnamed_addr constant [3 x i8] c"\5Cb\00", align 1
@.str.69 = private unnamed_addr constant [3 x i8] c"\5Ca\00", align 1
@.str.68 = private unnamed_addr constant [2 x i8] c"\5C\00", align 1
@.str.56 = private unnamed_addr constant [6 x i8] c"alnum\00", align 1
@.str.57 = private unnamed_addr constant [6 x i8] c"alpha\00", align 1
@.str.58 = private unnamed_addr constant [6 x i8] c"blank\00", align 1
@.str.59 = private unnamed_addr constant [6 x i8] c"cntrl\00", align 1
@.str.60 = private unnamed_addr constant [6 x i8] c"digit\00", align 1
@.str.61 = private unnamed_addr constant [6 x i8] c"graph\00", align 1
@.str.62 = private unnamed_addr constant [6 x i8] c"lower\00", align 1
@.str.63 = private unnamed_addr constant [6 x i8] c"print\00", align 1
@.str.64 = private unnamed_addr constant [6 x i8] c"punct\00", align 1
@.str.65 = private unnamed_addr constant [6 x i8] c"space\00", align 1
@.str.66 = private unnamed_addr constant [6 x i8] c"upper\00", align 1
@.str.67 = private unnamed_addr constant [7 x i8] c"xdigit\00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"complement\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"delete\00", align 1
@.str.45 = private unnamed_addr constant [16 x i8] c"squeeze-repeats\00", align 1
@.str.46 = private unnamed_addr constant [14 x i8] c"truncate-set1\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.48 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0), align 8, !dbg !157
@.str.28 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !163
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !168
@.str.31 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.32 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.33 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !171
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !178
@.str.92 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.93 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.94 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.98, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.99, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.100, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.101, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.102, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.103, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.104, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.105, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.106, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.107, i32 0, i32 0), i8* null], align 16, !dbg !185
@.str.98 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.99 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.100 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.101 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.102 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.103 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.104 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.105 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.106 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.107 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !211
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !218
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !230
@.str.11.108 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.109 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.110 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.111 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.112 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.113 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.114 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !234
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !241
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !232
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !243
@.str.121 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.122 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.123 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.124 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.125 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.126 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.127 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.128 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.129 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.130 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.131 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.132 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.133 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.134 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.137 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.138 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.139 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.140 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.141 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19.142 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !248
@.str.1.155 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.156 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.159 = private unnamed_addr constant [38 x i8] c"0 <= strtol_base && strtol_base <= 36\00", align 1
@.str.1.160 = private unnamed_addr constant [16 x i8] c"./lib/xstrtol.c\00", align 1
@__PRETTY_FUNCTION__.xstrtoumax = private unnamed_addr constant [79 x i8] c"strtol_error xstrtoumax(const char *, char **, int, uintmax_t *, const char *)\00", align 1
@.str.1.169 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.172 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !257
@.str.3.173 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.174 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.175 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.176 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.177 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.178 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1
define void @usage(i32) local_unnamed_addr #0 !dbg !683 {
	tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !687, metadata !688), !dbg !689
	%2 = icmp eq i32 %0, 0, !dbg !690
	br i1 %2, label %8, label %3, !dbg !692
	%4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !693, !tbaa !696
	%5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #10, !dbg !693
	%6 = load i8*, i8** @program_name, align 8, !dbg !693, !tbaa !696
	%7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #10, !dbg !700
	br label %48, !dbg !702
	%9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 5) #10, !dbg !704
	%10 = load i8*, i8** @program_name, align 8, !dbg !704, !tbaa !696
	%11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10) #10, !dbg !706
	%12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([496 x i8], [496 x i8]* @.str.2, i64 0, i64 0), i32 5) #10, !dbg !708
	%13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !708, !tbaa !696
	%14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #10, !dbg !709
	%15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 5) #10, !dbg !710
	%16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !710, !tbaa !696
	%17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #10, !dbg !711
	%18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 5) #10, !dbg !712
	%19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !712, !tbaa !696
	%20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #10, !dbg !713
	%21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([373 x i8], [373 x i8]* @.str.5, i64 0, i64 0), i32 5) #10, !dbg !714
	%22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !714, !tbaa !696
	%23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22) #10, !dbg !715
	%24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([425 x i8], [425 x i8]* @.str.6, i64 0, i64 0), i32 5) #10, !dbg !716
	%25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !716, !tbaa !696
	%26 = tail call i32 @fputs_unlocked(i8* %24, %struct._IO_FILE* %25) #10, !dbg !717
	%27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([411 x i8], [411 x i8]* @.str.7, i64 0, i64 0), i32 5) #10, !dbg !718
	%28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !718, !tbaa !696
	%29 = tail call i32 @fputs_unlocked(i8* %27, %struct._IO_FILE* %28) #10, !dbg !719
	%30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([472 x i8], [472 x i8]* @.str.8, i64 0, i64 0), i32 5) #10, !dbg !720
	%31 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !720, !tbaa !696
	%32 = tail call i32 @fputs_unlocked(i8* %30, %struct._IO_FILE* %31) #10, !dbg !721
	tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !111, metadata !688) #10, !dbg !722
	tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i64 0, metadata !111, metadata !688) #10, !dbg !722
	%33 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.36, i64 0, i64 0), i32 5) #10, !dbg !724
	%34 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %33, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.37, i64 0, i64 0)) #10, !dbg !725
	%35 = tail call i8* @setlocale(i32 5, i8* null) #10, !dbg !727
	tail call void @llvm.dbg.value(metadata i8* %35, i64 0, metadata !122, metadata !688) #10, !dbg !728
	%36 = icmp eq i8* %35, null, !dbg !729
	br i1 %36, label %43, label %37, !dbg !730
	%38 = tail call i32 @strncmp(i8* nonnull %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38, i64 0, i64 0), i64 3) #13, !dbg !731
	%39 = icmp eq i32 %38, 0, !dbg !731
	br i1 %39, label %43, label %40, !dbg !733
	%41 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.39, i64 0, i64 0), i32 5) #10, !dbg !735
	%42 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0)) #10, !dbg !737
	br label %43, !dbg !739
	%44 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.40, i64 0, i64 0), i32 5) #10, !dbg !740
	%45 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %44, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.37, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0)) #10, !dbg !741
	%46 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.41, i64 0, i64 0), i32 5) #10, !dbg !742
	%47 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %46, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i64 0, i64 0)) #10, !dbg !743
	br label %48
	tail call void @exit(i32 %0) #14, !dbg !744
	unreachable, !dbg !744
}
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1
declare i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2
declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3
declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3
declare i32 @fputs_unlocked(i8*, %struct._IO_FILE*) local_unnamed_addr #3
declare i8* @setlocale(i32, i8*) local_unnamed_addr #2
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4
declare void @exit(i32) local_unnamed_addr #5
define i32 @main(i32, i8**) local_unnamed_addr #6 !dbg !745 {
	%3 = alloca i32, align 4
	%4 = alloca i32, align 4
	%5 = alloca [256 x i8], align 16
	tail call void @llvm.dbg.declare(metadata [256 x i8]* %5, metadata !846, metadata !688), !dbg !854
	%6 = alloca %struct.Spec_list, align 8
	%7 = alloca %struct.Spec_list, align 8
	%8 = alloca i32, align 4
	%9 = alloca i32, align 4
	tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !750, metadata !688), !dbg !870
	tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !751, metadata !688), !dbg !871
	%10 = bitcast %struct.Spec_list* %6 to i8*, !dbg !872
	call void @llvm.lifetime.start(i64 56, i8* nonnull %10) #10, !dbg !872
	%11 = bitcast %struct.Spec_list* %7 to i8*, !dbg !872
	call void @llvm.lifetime.start(i64 56, i8* nonnull %11) #10, !dbg !872
	tail call void @llvm.dbg.value(metadata %struct.Spec_list* %6, i64 0, metadata !794, metadata !688), !dbg !873
	tail call void @llvm.dbg.value(metadata %struct.Spec_list* %7, i64 0, metadata !796, metadata !688), !dbg !874
	%12 = load i8*, i8** %1, align 8, !dbg !875, !tbaa !696
	tail call void @set_program_name(i8* %12) #10, !dbg !876
	%13 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0)) #10, !dbg !877
	%14 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0)) #10, !dbg !878
	%15 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0)) #10, !dbg !879
	%16 = tail call i32 @atexit(void ()* nonnull @close_stdout) #10, !dbg !880
	br label %17, !dbg !881
	%18 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), %struct.option* getelementptr inbounds ([7 x %struct.option], [7 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #10, !dbg !882
	tail call void @llvm.dbg.value(metadata i32 %18, i64 0, metadata !752, metadata !688), !dbg !884
	switch i32 %18, label %26 [
		i32 -1, label %29
		i32 99, label %19
		i32 67, label %19
		i32 100, label %27
		i32 115, label %20
		i32 116, label %21
		i32 -130, label %22
		i32 -131, label %23
	], !dbg !885
	br label %27, !dbg !886
	br label %27, !dbg !889
	br label %27, !dbg !890
	tail call void @usage(i32 0) #15, !dbg !891
	unreachable, !dbg !891
	%24 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !892, !tbaa !696
	%25 = load i8*, i8** @Version, align 8, !dbg !892, !tbaa !696
	tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i8* %25, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0), i8* null) #10, !dbg !892
	tail call void @exit(i32 0) #14, !dbg !893
	unreachable, !dbg !892
	tail call void @usage(i32 1) #15, !dbg !895
	unreachable, !dbg !895
	%28 = phi i8* [ @truncate_set1, %21 ], [ @squeeze_repeats, %20 ], [ @complement, %19 ], [ @delete, %17 ]
	store i8 1, i8* %28, align 1, !tbaa !896
	br label %17, !dbg !898, !llvm.loop !900
	%30 = load i32, i32* @optind, align 4, !dbg !902, !tbaa !903
	%31 = sub nsw i32 %0, %30, !dbg !905
	tail call void @llvm.dbg.value(metadata i32 %31, i64 0, metadata !753, metadata !688), !dbg !906
	%32 = icmp eq i32 %31, 2, !dbg !907
	%33 = load i8, i8* @delete, align 1, !dbg !908
	%34 = and i8 %33, 1, !dbg !909
	%35 = xor i8 %34, 1, !dbg !909
	%36 = select i1 %32, i8 %35, i8 0, !dbg !909
	store i8 %36, i8* @translating, align 1, !dbg !909, !tbaa !896
	%37 = load i8, i8* @squeeze_repeats, align 1, !dbg !910, !tbaa !896, !range !911
	%38 = icmp eq i8 %33, %37, !dbg !912
	%39 = select i1 %38, i32 2, i32 1, !dbg !913
	tail call void @llvm.dbg.value(metadata i32 %39, i64 0, metadata !754, metadata !688), !dbg !914
	%40 = icmp ule i8 %33, %37, !dbg !915
	%41 = select i1 %40, i32 2, i32 1, !dbg !916
	tail call void @llvm.dbg.value(metadata i32 %41, i64 0, metadata !755, metadata !688), !dbg !917
	%42 = icmp slt i32 %31, %39, !dbg !918
	br i1 %42, label %43, label %61, !dbg !920
	%44 = icmp eq i32 %31, 0, !dbg !921
	br i1 %44, label %45, label %47, !dbg !924
	%46 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0), i32 5) #10, !dbg !925
	tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %46) #10, !dbg !926
	br label %60, !dbg !928
	%48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i64 0, i64 0), i32 5) #10, !dbg !929
	%49 = add nsw i32 %0, -1, !dbg !931
	%50 = sext i32 %49 to i64, !dbg !932
	%51 = getelementptr inbounds i8*, i8** %1, i64 %50, !dbg !932
	%52 = load i8*, i8** %51, align 8, !dbg !932, !tbaa !696
	%53 = tail call i8* @quote(i8* %52) #10, !dbg !933
	tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %48, i8* %53) #10, !dbg !935
	%54 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !937, !tbaa !696
	%55 = load i8, i8* @squeeze_repeats, align 1, !dbg !937, !tbaa !896, !range !911
	%56 = icmp ne i8 %55, 0, !dbg !937
	%57 = select i1 %56, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.20, i64 0, i64 0), !dbg !937
	%58 = tail call i8* @dcgettext(i8* null, i8* %57, i32 5) #10, !dbg !937
	%59 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %54, i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i8* %58) #10, !dbg !938
	br label %60
	tail call void @usage(i32 1) #15, !dbg !939
	unreachable, !dbg !939
	%62 = icmp slt i32 %41, %31, !dbg !940
	br i1 %62, label %63, label %76, !dbg !942
	%64 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i64 0, i64 0), i32 5) #10, !dbg !943
	%65 = load i32, i32* @optind, align 4, !dbg !945, !tbaa !903
	%66 = add nsw i32 %65, %41, !dbg !946
	%67 = sext i32 %66 to i64, !dbg !947
	%68 = getelementptr inbounds i8*, i8** %1, i64 %67, !dbg !947
	%69 = load i8*, i8** %68, align 8, !dbg !947, !tbaa !696
	%70 = tail call i8* @quote(i8* %69) #10, !dbg !948
	tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %64, i8* %70) #10, !dbg !950
	br i1 %32, label %71, label %75, !dbg !952
	%72 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !953, !tbaa !696
	%73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.22, i64 0, i64 0), i32 5) #10, !dbg !953
	%74 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %72, i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i8* %73) #10, !dbg !955
	br label %75, !dbg !953
	tail call void @usage(i32 1) #15, !dbg !957
	unreachable, !dbg !957
	tail call void @llvm.dbg.value(metadata %struct.Spec_list* %6, i64 0, metadata !756, metadata !958), !dbg !959
	tail call void @llvm.dbg.value(metadata %struct.Spec_list* %6, i64 0, metadata !960, metadata !688) #10, !dbg !964
	%77 = tail call noalias i8* @xmalloc(i64 32) #10, !dbg !966
	%78 = getelementptr inbounds %struct.Spec_list, %struct.Spec_list* %6, i64 0, i32 1, !dbg !967
	%79 = bitcast %struct.List_element** %78 to i8**, !dbg !968
	store i8* %77, i8** %79, align 8, !dbg !968, !tbaa !969
	%80 = bitcast %struct.Spec_list* %6 to i8**, !dbg !972
	store i8* %77, i8** %80, align 8, !dbg !972, !tbaa !973
	%81 = getelementptr inbounds i8, i8* %77, i64 8, !dbg !974
	%82 = bitcast i8* %81 to %struct.List_element**, !dbg !974
	store %struct.List_element* null, %struct.List_element** %82, align 8, !dbg !975, !tbaa !976
	%83 = load i32, i32* @optind, align 4, !dbg !978, !tbaa !903
	%84 = sext i32 %83 to i64, !dbg !980
	%85 = getelementptr inbounds i8*, i8** %1, i64 %84, !dbg !980
	%86 = load i8*, i8** %85, align 8, !dbg !980, !tbaa !696
	tail call void @llvm.dbg.value(metadata %struct.Spec_list* %6, i64 0, metadata !756, metadata !958), !dbg !959
	%87 = call fastcc zeroext i1 @parse_str(i8* %86, %struct.Spec_list* nonnull %6), !dbg !981
	br i1 %87, label %88, label %775, !dbg !982
	br i1 %32, label %89, label %102, !dbg !983
	tail call void @llvm.dbg.value(metadata %struct.Spec_list* %7, i64 0, metadata !793, metadata !958), !dbg !984
	tail call void @llvm.dbg.value(metadata %struct.Spec_list* %7, i64 0, metadata !960, metadata !688) #10, !dbg !985
	%90 = tail call noalias i8* @xmalloc(i64 32) #10, !dbg !989
	%91 = getelementptr inbounds %struct.Spec_list, %struct.Spec_list* %7, i64 0, i32 1, !dbg !990
	%92 = bitcast %struct.List_element** %91 to i8**, !dbg !991
	store i8* %90, i8** %92, align 8, !dbg !991, !tbaa !969
	%93 = bitcast %struct.Spec_list* %7 to i8**, !dbg !992
	store i8* %90, i8** %93, align 8, !dbg !992, !tbaa !973
	%94 = getelementptr inbounds i8, i8* %90, i64 8, !dbg !993
	%95 = bitcast i8* %94 to %struct.List_element**, !dbg !993
	store %struct.List_element* null, %struct.List_element** %95, align 8, !dbg !994, !tbaa !976
	%96 = load i32, i32* @optind, align 4, !dbg !995, !tbaa !903
	%97 = add nsw i32 %96, 1, !dbg !997
	%98 = sext i32 %97 to i64, !dbg !998
	%99 = getelementptr inbounds i8*, i8** %1, i64 %98, !dbg !998
	%100 = load i8*, i8** %99, align 8, !dbg !998, !tbaa !696
	tail call void @llvm.dbg.value(metadata %struct.Spec_list* %7, i64 0, metadata !793, metadata !958), !dbg !984
	%101 = call fastcc zeroext i1 @parse_str(i8* %100, %struct.Spec_list* nonnull %7), !dbg !999
	br i1 %101, label %102, label %775, !dbg !1000
	%103 = phi %struct.Spec_list* [ %7, %89 ], [ null, %88 ]
	tail call void @llvm.dbg.value(metadata %struct.Spec_list* %103, i64 0, metadata !796, metadata !688), !dbg !874
	tail call void @llvm.dbg.value(metadata %struct.Spec_list* %6, i64 0, metadata !756, metadata !958), !dbg !959
	tail call void @llvm.dbg.value(metadata %struct.Spec_list* %6, i64 0, metadata !867, metadata !688) #10, !dbg !1001
	tail call void @llvm.dbg.value(metadata %struct.Spec_list* %103, i64 0, metadata !868, metadata !688) #10, !dbg !1002
	tail call void @llvm.dbg.value(metadata %struct.Spec_list* %6, i64 0, metadata !861, metadata !688) #10, !dbg !1003
	call fastcc void @get_spec_stats(%struct.Spec_list* nonnull %6) #10, !dbg !1004
	%104 = load i8, i8* @complement, align 1, !dbg !1005, !tbaa !896, !range !911
	%105 = icmp eq i8 %104, 0, !dbg !1005
	br i1 %105, label %128, label %106, !dbg !1006
	tail call void @llvm.dbg.value(metadata %struct.Spec_list* %6, i64 0, metadata !851, metadata !688) #10, !dbg !1007
	tail call void @llvm.dbg.value(metadata i32 256, i64 0, metadata !853, metadata !688) #10, !dbg !1008
	%107 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0, !dbg !1009
	call void @llvm.lifetime.start(i64 256, i8* nonnull %107) #10, !dbg !1009
	call void @llvm.memset.p0i8.i64(i8* nonnull %107, i8 0, i64 256, i32 16, i1 false) #10, !dbg !854
	%108 = getelementptr inbounds %struct.Spec_list, %struct.Spec_list* %6, i64 0, i32 2, !dbg !1010
	store i64 -2, i64* %108, align 8, !dbg !1011, !tbaa !1012
	tail call void @llvm.dbg.value(metadata i32 256, i64 0, metadata !853, metadata !688) #10, !dbg !1008
	%109 = call fastcc i32 @get_next(%struct.Spec_list* nonnull %6, i32* null) #10, !dbg !1013
	tail call void @llvm.dbg.value(metadata i32 %109, i64 0, metadata !852, metadata !688) #10, !dbg !1015
	%110 = icmp eq i32 %109, -1, !dbg !1016
	br i1 %110, label %125, label %111, !dbg !1017
	br label %112, !dbg !1018
	%113 = phi i32 [ %121, %112 ], [ %109, %111 ]
	%114 = phi i32 [ %120, %112 ], [ 256, %111 ]
	%115 = sext i32 %113 to i64, !dbg !1018
	%116 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 %115, !dbg !1018
	%117 = load i8, i8* %116, align 1, !dbg !1018, !tbaa !896, !range !911
	%118 = xor i8 %117, 1, !dbg !1020
	%119 = zext i8 %118 to i32, !dbg !1020
	%120 = sub nsw i32 %114, %119, !dbg !1021
	tail call void @llvm.dbg.value(metadata i32 %120, i64 0, metadata !853, metadata !688) #10, !dbg !1008
	store i8 1, i8* %116, align 1, !dbg !1022, !tbaa !896
	tail call void @llvm.dbg.value(metadata i32 %120, i64 0, metadata !853, metadata !688) #10, !dbg !1008
	%121 = call fastcc i32 @get_next(%struct.Spec_list* nonnull %6, i32* null) #10, !dbg !1013
	tail call void @llvm.dbg.value(metadata i32 %121, i64 0, metadata !852, metadata !688) #10, !dbg !1015
	%122 = icmp eq i32 %121, -1, !dbg !1016
	br i1 %122, label %123, label %112, !dbg !1017, !llvm.loop !1023
	%124 = sext i32 %120 to i64, !dbg !1026
	br label %125, !dbg !1026
	%126 = phi i64 [ 256, %106 ], [ %124, %123 ]
	call void @llvm.lifetime.end(i64 256, i8* nonnull %107) #10, !dbg !1026
	%127 = getelementptr inbounds %struct.Spec_list, %struct.Spec_list* %6, i64 0, i32 3, !dbg !1027
	store i64 %126, i64* %127, align 8, !dbg !1028, !tbaa !1029
	br label %128, !dbg !1030
	%129 = getelementptr inbounds %struct.Spec_list, %struct.Spec_list* %6, i64 0, i32 4, !dbg !1031
	%130 = load i64, i64* %129, align 8, !dbg !1031, !tbaa !1033
	%131 = icmp eq i64 %130, 0, !dbg !1034
	br i1 %131, label %134, label %132, !dbg !1035
	%133 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.80, i64 0, i64 0), i32 5) #10, !dbg !1036
	tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %133) #10, !dbg !1038
	unreachable, !dbg !1036
	%135 = icmp eq %struct.Spec_list* %103, null, !dbg !1040
	br i1 %135, label %368, label %136, !dbg !1042
	%137 = getelementptr inbounds %struct.Spec_list, %struct.Spec_list* %6, i64 0, i32 3, !dbg !1043
	%138 = load i64, i64* %137, align 8, !dbg !1043, !tbaa !1029
	call void @llvm.dbg.value(metadata %struct.Spec_list* %103, i64 0, metadata !1045, metadata !688) #10, !dbg !1051
	call void @llvm.dbg.value(metadata i64 %138, i64 0, metadata !1050, metadata !688) #10, !dbg !1053
	call fastcc void @get_spec_stats(%struct.Spec_list* nonnull %103) #10, !dbg !1054
	%139 = getelementptr inbounds %struct.Spec_list, %struct.Spec_list* %103, i64 0, i32 3, !dbg !1055
	%140 = load i64, i64* %139, align 8, !dbg !1055, !tbaa !1029
	%141 = icmp uge i64 %138, %140, !dbg !1057
	%142 = getelementptr inbounds %struct.Spec_list, %struct.Spec_list* %103, i64 0, i32 4
	%143 = load i64, i64* %142, align 8, !tbaa !1033
	%144 = icmp eq i64 %143, 1, !dbg !1058
	%145 = and i1 %141, %144, !dbg !1060
	br i1 %145, label %146, label %151, !dbg !1060
	%147 = sub i64 %138, %140, !dbg !1061
	%148 = getelementptr inbounds %struct.Spec_list, %struct.Spec_list* %103, i64 0, i32 5, !dbg !1063
	%149 = load %struct.List_element*, %struct.List_element** %148, align 8, !dbg !1063, !tbaa !1064
	%150 = getelementptr inbounds %struct.List_element, %struct.List_element* %149, i64 0, i32 2, i32 0, i32 1, !dbg !1065
	store i64 %147, i64* %150, align 8, !dbg !1066, !tbaa !1067
	store i64 %138, i64* %139, align 8, !dbg !1069, !tbaa !1029
	br label %155, !dbg !1070
	%152 = icmp ugt i64 %143, 1, !dbg !1071
	br i1 %152, label %153, label %155, !dbg !1070
	%154 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.81, i64 0, i64 0), i32 5) #10, !dbg !1073
	call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %154) #10, !dbg !1075
	unreachable, !dbg !1073
	%156 = phi i64 [ 1, %146 ], [ %143, %151 ]
	%157 = phi i64 [ %138, %146 ], [ %140, %151 ]
	%158 = load i8, i8* @translating, align 1, !dbg !1077, !tbaa !896, !range !911
	%159 = icmp eq i8 %158, 0, !dbg !1077
	br i1 %159, label %363, label %160, !dbg !1079
	%161 = getelementptr inbounds %struct.Spec_list, %struct.Spec_list* %103, i64 0, i32 6, !dbg !1080
	%162 = load i8, i8* %161, align 8, !dbg !1080, !tbaa !1083, !range !911
	%163 = icmp eq i8 %162, 0, !dbg !1080
	br i1 %163, label %166, label %164, !dbg !1084
	%165 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.82, i64 0, i64 0), i32 5) #10, !dbg !1085
	call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %165) #10, !dbg !1087
	unreachable, !dbg !1085
	%167 = getelementptr inbounds %struct.Spec_list, %struct.Spec_list* %103, i64 0, i32 8, !dbg !1089
	%168 = load i8, i8* %167, align 2, !dbg !1089, !tbaa !1091, !range !911
	%169 = icmp eq i8 %168, 0, !dbg !1089
	br i1 %169, label %172, label %170, !dbg !1092
	%171 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.83, i64 0, i64 0), i32 5) #10, !dbg !1093
	call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %171) #10, !dbg !1095
	unreachable, !dbg !1093
	call void @llvm.dbg.value(metadata %struct.Spec_list* %6, i64 0, metadata !1097, metadata !688) #10, !dbg !1115
	call void @llvm.dbg.value(metadata %struct.Spec_list* %103, i64 0, metadata !1100, metadata !688) #10, !dbg !1117
	call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1101, metadata !688) #10, !dbg !1118
	call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1102, metadata !688) #10, !dbg !1119
	call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1104, metadata !688) #10, !dbg !1120
	call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1105, metadata !688) #10, !dbg !1121
	%173 = load i64, i64* %137, align 8, !dbg !1122, !tbaa !1029
	call void @llvm.dbg.value(metadata i64 %173, i64 0, metadata !1106, metadata !688) #10, !dbg !1123
	call void @llvm.dbg.value(metadata i64 %140, i64 0, metadata !1107, metadata !688) #10, !dbg !1124
	%174 = bitcast %struct.List_element** %78 to i64*, !dbg !1125
	%175 = load i64, i64* %174, align 8, !dbg !1125, !tbaa !969
	%176 = getelementptr inbounds %struct.Spec_list, %struct.Spec_list* %103, i64 0, i32 1, !dbg !1126
	%177 = bitcast %struct.List_element** %176 to i64*, !dbg !1126
	%178 = load i64, i64* %177, align 8, !dbg !1126, !tbaa !969
	call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1110, metadata !688) #10, !dbg !1127
	call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1111, metadata !688) #10, !dbg !1128
	%179 = getelementptr inbounds %struct.Spec_list, %struct.Spec_list* %103, i64 0, i32 7, !dbg !1129
	%180 = load i8, i8* %179, align 1, !dbg !1129, !tbaa !1131, !range !911
	%181 = icmp eq i8 %180, 0, !dbg !1129
	%182 = inttoptr i64 %178 to %struct.List_element*, !dbg !1132
	br i1 %181, label %290, label %183, !dbg !1132
	call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1101, metadata !688) #10, !dbg !1118
	call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1102, metadata !688) #10, !dbg !1119
	call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1103, metadata !688) #10, !dbg !1133
	%184 = tail call i16** @__ctype_b_loc() #1, !dbg !1134
	%185 = load i16*, i16** %184, align 8, !tbaa !696
	br label %186, !dbg !1139
	%187 = phi i64 [ 0, %183 ], [ %214, %186 ], !dbg !1141
	%188 = phi <2 x i64> [ zeroinitializer, %183 ], [ %204, %186 ]
	%189 = phi <2 x i64> [ zeroinitializer, %183 ], [ %205, %186 ]
	%190 = phi <2 x i64> [ zeroinitializer, %183 ], [ %212, %186 ]
	%191 = phi <2 x i64> [ zeroinitializer, %183 ], [ %213, %186 ]
	%192 = getelementptr inbounds i16, i16* %185, i64 %187, !dbg !1134
	%193 = bitcast i16* %192 to <2 x i16>*, !dbg !1134
	%194 = load <2 x i16>, <2 x i16>* %193, align 2, !dbg !1134, !tbaa !1143
	%195 = getelementptr i16, i16* %192, i64 2, !dbg !1134
	%196 = bitcast i16* %195 to <2 x i16>*, !dbg !1134
	%197 = load <2 x i16>, <2 x i16>* %196, align 2, !dbg !1134, !tbaa !1143
	%198 = lshr <2 x i16> %194, <i16 8, i16 8>, !dbg !1145
	%199 = lshr <2 x i16> %197, <i16 8, i16 8>, !dbg !1145
	%200 = and <2 x i16> %198, <i16 1, i16 1>, !dbg !1145
	%201 = and <2 x i16> %199, <i16 1, i16 1>, !dbg !1145
	%202 = zext <2 x i16> %200 to <2 x i64>, !dbg !1145
	%203 = zext <2 x i16> %201 to <2 x i64>, !dbg !1145
	%204 = add <2 x i64> %202, %188, !dbg !1145
	%205 = add <2 x i64> %203, %189, !dbg !1145
	%206 = lshr <2 x i16> %194, <i16 9, i16 9>, !dbg !1146
	%207 = lshr <2 x i16> %197, <i16 9, i16 9>, !dbg !1146
	%208 = and <2 x i16> %206, <i16 1, i16 1>, !dbg !1146
	%209 = and <2 x i16> %207, <i16 1, i16 1>, !dbg !1146
	%210 = zext <2 x i16> %208 to <2 x i64>, !dbg !1146
	%211 = zext <2 x i16> %209 to <2 x i64>, !dbg !1146
	%212 = add <2 x i64> %210, %190, !dbg !1146
	%213 = add <2 x i64> %211, %191, !dbg !1146
	%214 = add i64 %187, 4, !dbg !1141
	%215 = icmp eq i64 %214, 256, !dbg !1141
	br i1 %215, label %216, label %186, !dbg !1141, !llvm.loop !1147
	%217 = add <2 x i64> %213, %212, !dbg !1146
	%218 = shufflevector <2 x i64> %217, <2 x i64> undef, <2 x i32> <i32 1, i32 undef>, !dbg !1146
	%219 = add <2 x i64> %217, %218, !dbg !1146
	%220 = extractelement <2 x i64> %219, i32 0, !dbg !1146
	%221 = add <2 x i64> %205, %204, !dbg !1145
	%222 = shufflevector <2 x i64> %221, <2 x i64> undef, <2 x i32> <i32 1, i32 undef>, !dbg !1145
	%223 = add <2 x i64> %221, %222, !dbg !1145
	%224 = extractelement <2 x i64> %223, i32 0, !dbg !1145
	%225 = getelementptr inbounds %struct.Spec_list, %struct.Spec_list* %6, i64 0, i32 2, !dbg !1152
	store i64 -2, i64* %225, align 8, !dbg !1153, !tbaa !1012
	%226 = getelementptr inbounds %struct.Spec_list, %struct.Spec_list* %103, i64 0, i32 2, !dbg !1154
	store i64 -2, i64* %226, align 8, !dbg !1155, !tbaa !1012
	call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1111, metadata !688) #10, !dbg !1128
	call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1110, metadata !688) #10, !dbg !1127
	call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1104, metadata !688) #10, !dbg !1120
	call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1105, metadata !688) #10, !dbg !1121
	%227 = bitcast i32* %3 to i8*
	%228 = bitcast i32* %4 to i8*
	br label %229, !dbg !1156
	%230 = phi i8 [ 1, %216 ], [ %278, %272 ]
	%231 = phi i8 [ 1, %216 ], [ %276, %272 ]
	call void @llvm.lifetime.start(i64 4, i8* nonnull %227) #10, !dbg !1158
	call void @llvm.lifetime.start(i64 4, i8* nonnull %228) #10, !dbg !1158
	call void @llvm.dbg.value(metadata i32* %3, i64 0, metadata !1112, metadata !958) #10, !dbg !1159
	%232 = call fastcc i32 @get_next(%struct.Spec_list* nonnull %6, i32* nonnull %3) #10, !dbg !1160
	call void @llvm.dbg.value(metadata i32 %232, i64 0, metadata !1104, metadata !688) #10, !dbg !1120
	call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !1114, metadata !958) #10, !dbg !1161
	%233 = call fastcc i32 @get_next(%struct.Spec_list* nonnull %103, i32* nonnull %4) #10, !dbg !1162
	call void @llvm.dbg.value(metadata i32 %233, i64 0, metadata !1105, metadata !688) #10, !dbg !1121
	%234 = icmp ne i8 %230, 0, !dbg !1163
	%235 = load i32, i32* %4, align 4, !dbg !1165
	call void @llvm.dbg.value(metadata i32 %235, i64 0, metadata !1114, metadata !688) #10, !dbg !1161
	%236 = icmp ne i32 %235, 2, !dbg !1167
	%237 = and i1 %234, %236, !dbg !1168
	br i1 %237, label %238, label %245, !dbg !1168
	%239 = icmp ne i8 %231, 0, !dbg !1169
	%240 = load i32, i32* %3, align 4, !dbg !1170
	call void @llvm.dbg.value(metadata i32 %240, i64 0, metadata !1112, metadata !688) #10, !dbg !1159
	%241 = icmp ne i32 %240, 2, !dbg !1172
	%242 = and i1 %239, %241, !dbg !1173
	br i1 %242, label %252, label %243, !dbg !1173
	%244 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.89, i64 0, i64 0), i32 5) #10, !dbg !1174
	call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %244) #10, !dbg !1175
	unreachable, !dbg !1174
	call void @llvm.dbg.value(metadata i32 %235, i64 0, metadata !1114, metadata !688) #10, !dbg !1161
	%246 = icmp eq i32 %235, 2, !dbg !1176
	br i1 %246, label %249, label %247, !dbg !1178
	%248 = load i32, i32* %3, align 4, !tbaa !1179
	br label %252, !dbg !1178
	%250 = load i64, i64* %226, align 8, !tbaa !1012
	%251 = load i64, i64* %225, align 8, !tbaa !1012
	br label %272, !dbg !1178
	%253 = phi i32 [ %248, %247 ], [ %240, %238 ], !dbg !1180
	call void @llvm.dbg.value(metadata %struct.Spec_list* %6, i64 0, metadata !1182, metadata !688) #10, !dbg !1185
	%254 = load %struct.List_element*, %struct.List_element** %78, align 8, !dbg !1187, !tbaa !969
	%255 = getelementptr inbounds %struct.List_element, %struct.List_element* %254, i64 0, i32 1, !dbg !1188
	%256 = bitcast %struct.List_element** %255 to i64*, !dbg !1188
	%257 = load i64, i64* %256, align 8, !dbg !1188, !tbaa !976
	store i64 %257, i64* %174, align 8, !dbg !1189, !tbaa !969
	store i64 -1, i64* %225, align 8, !dbg !1190, !tbaa !1012
	call void @llvm.dbg.value(metadata %struct.Spec_list* %103, i64 0, metadata !1182, metadata !688) #10, !dbg !1191
	%258 = load %struct.List_element*, %struct.List_element** %176, align 8, !dbg !1193, !tbaa !969
	%259 = getelementptr inbounds %struct.List_element, %struct.List_element* %258, i64 0, i32 1, !dbg !1194
	%260 = bitcast %struct.List_element** %259 to i64*, !dbg !1194
	%261 = load i64, i64* %260, align 8, !dbg !1194, !tbaa !976
	store i64 %261, i64* %177, align 8, !dbg !1195, !tbaa !969
	store i64 -1, i64* %226, align 8, !dbg !1196, !tbaa !1012
	call void @llvm.dbg.value(metadata i32 %253, i64 0, metadata !1112, metadata !688) #10, !dbg !1159
	%262 = icmp eq i32 %253, 1, !dbg !1197
	%263 = select i1 %262, i64 %224, i64 %220, !dbg !1180
	%264 = load i64, i64* %137, align 8, !dbg !1198, !tbaa !1029
	%265 = sub i64 1, %263, !dbg !1200
	%266 = add i64 %265, %264, !dbg !1198
	store i64 %266, i64* %137, align 8, !dbg !1198, !tbaa !1029
	call void @llvm.dbg.value(metadata i32 %235, i64 0, metadata !1114, metadata !688) #10, !dbg !1161
	%267 = icmp eq i32 %235, 1, !dbg !1201
	%268 = select i1 %267, i64 %224, i64 %220, !dbg !1202
	%269 = load i64, i64* %139, align 8, !dbg !1203, !tbaa !1029
	%270 = sub i64 1, %268, !dbg !1204
	%271 = add i64 %270, %269, !dbg !1203
	store i64 %271, i64* %139, align 8, !dbg !1203, !tbaa !1029
	br label %272, !dbg !1205
	%273 = phi i64 [ %251, %249 ], [ -1, %252 ], !dbg !1206
	%274 = phi i64 [ %250, %249 ], [ -1, %252 ], !dbg !1207
	%275 = icmp eq i64 %273, -1, !dbg !1208
	%276 = zext i1 %275 to i8, !dbg !1209
	call void @llvm.dbg.value(metadata i8 %276, i64 0, metadata !1110, metadata !688) #10, !dbg !1127
	%277 = icmp eq i64 %274, -1, !dbg !1210
	%278 = zext i1 %277 to i8, !dbg !1211
	call void @llvm.dbg.value(metadata i8 %278, i64 0, metadata !1111, metadata !688) #10, !dbg !1128
	call void @llvm.lifetime.end(i64 4, i8* nonnull %228) #10, !dbg !1212
	call void @llvm.lifetime.end(i64 4, i8* nonnull %227) #10, !dbg !1212
	call void @llvm.dbg.value(metadata i8 %278, i64 0, metadata !1111, metadata !688) #10, !dbg !1128
	call void @llvm.dbg.value(metadata i8 %276, i64 0, metadata !1110, metadata !688) #10, !dbg !1127
	call void @llvm.dbg.value(metadata i32 %232, i64 0, metadata !1104, metadata !688) #10, !dbg !1120
	call void @llvm.dbg.value(metadata i32 %233, i64 0, metadata !1105, metadata !688) #10, !dbg !1121
	%279 = icmp ne i32 %232, -1, !dbg !1213
	%280 = icmp ne i32 %233, -1, !dbg !1215
	%281 = and i1 %279, %280, !dbg !1217
	br i1 %281, label %229, label %282, !dbg !1156, !llvm.loop !1218
	%283 = load i64, i64* %137, align 8, !dbg !1221, !tbaa !1029
	%284 = icmp ult i64 %173, %283, !dbg !1221
	br i1 %284, label %288, label %285, !dbg !1221
	%286 = load i64, i64* %139, align 8, !dbg !1224, !tbaa !1029
	%287 = icmp ult i64 %157, %286, !dbg !1224
	br i1 %287, label %288, label %289, !dbg !1226
	call void @__assert_fail(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.90, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0), i32 1222, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @__PRETTY_FUNCTION__.validate_case_classes, i64 0, i64 0)) #14, !dbg !1228
	unreachable, !dbg !1228
	store i64 %175, i64* %174, align 8, !dbg !1230, !tbaa !969
	store i64 %178, i64* %177, align 8, !dbg !1231, !tbaa !969
	br label %290, !dbg !1232
	%291 = phi i64 [ %157, %172 ], [ %286, %289 ], !dbg !1233
	%292 = phi i64 [ %173, %172 ], [ %283, %289 ], !dbg !1235
	%293 = icmp ugt i64 %292, %291, !dbg !1236
	%294 = load i8, i8* @truncate_set1, align 1, !dbg !1237
	%295 = icmp eq i8 %294, 0, !dbg !1237
	%296 = and i1 %293, %295, !dbg !1240
	br i1 %296, label %297, label %339, !dbg !1240
	%298 = icmp eq i64 %291, 0, !dbg !1241
	br i1 %298, label %299, label %301, !dbg !1244
	%300 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.84, i64 0, i64 0), i32 5) #10, !dbg !1245
	call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %300) #10, !dbg !1246
	unreachable, !dbg !1245
	call void @llvm.dbg.value(metadata %struct.Spec_list* %6, i64 0, metadata !1248, metadata !688) #10, !dbg !1258
	call void @llvm.dbg.value(metadata %struct.Spec_list* %103, i64 0, metadata !1255, metadata !688) #10, !dbg !1260
	%302 = load i8, i8* @translating, align 1, !dbg !1261, !tbaa !896, !range !911
	%303 = icmp eq i8 %302, 0, !dbg !1261
	br i1 %303, label %304, label %305, !dbg !1264
	call void @__assert_fail(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.91, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0), i32 1375, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @__PRETTY_FUNCTION__.string2_extend, i64 0, i64 0)) #14, !dbg !1265
	unreachable, !dbg !1265
	call void @llvm.dbg.value(metadata %struct.List_element* %182, i64 0, metadata !1256, metadata !688) #10, !dbg !1267
	%306 = getelementptr inbounds %struct.List_element, %struct.List_element* %182, i64 0, i32 0, !dbg !1268
	%307 = load i32, i32* %306, align 8, !dbg !1268, !tbaa !1269
	switch i32 %307, label %319 [
		i32 0, label %308
		i32 1, label %310
		i32 2, label %314
		i32 4, label %316
		i32 3, label %318
	], !dbg !1270
	%309 = getelementptr inbounds %struct.List_element, %struct.List_element* %182, i64 0, i32 2, i32 0, i32 0, !dbg !1271
	br label %320, !dbg !1273
	%311 = getelementptr inbounds %struct.List_element, %struct.List_element* %182, i64 0, i32 2, !dbg !1274
	%312 = bitcast %union.anon* %311 to %struct.anon*, !dbg !1275
	%313 = getelementptr inbounds %struct.anon, %struct.anon* %312, i64 0, i32 1, !dbg !1276
	br label %320, !dbg !1277
	%315 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.94, i64 0, i64 0), i32 5) #10, !dbg !1278
	call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %315) #10, !dbg !1279
	unreachable, !dbg !1278
	%317 = getelementptr inbounds %struct.List_element, %struct.List_element* %182, i64 0, i32 2, i32 0, i32 0, !dbg !1281
	br label %320, !dbg !1282
	call void @abort() #14, !dbg !1283
	unreachable, !dbg !1283
	call void @abort() #14, !dbg !1284
	unreachable, !dbg !1284
	%321 = phi i8* [ %317, %316 ], [ %313, %310 ], [ %309, %308 ]
	%322 = load i8, i8* %321, align 1, !tbaa !1179
	call void @llvm.dbg.value(metadata i8 %322, i64 0, metadata !1257, metadata !688) #10, !dbg !1285
	%323 = sub i64 %292, %291, !dbg !1286
	call void @llvm.dbg.value(metadata %struct.Spec_list* %103, i64 0, metadata !1287, metadata !688) #10, !dbg !1295
	call void @llvm.dbg.value(metadata i8 %322, i64 0, metadata !1292, metadata !688) #10, !dbg !1297
	call void @llvm.dbg.value(metadata i64 %323, i64 0, metadata !1293, metadata !688) #10, !dbg !1298
	%324 = call noalias i8* @xmalloc(i64 32) #10, !dbg !1299
	%325 = getelementptr inbounds i8, i8* %324, i64 8, !dbg !1300
	%326 = bitcast i8* %325 to %struct.List_element**, !dbg !1300
	store %struct.List_element* null, %struct.List_element** %326, align 8, !dbg !1301, !tbaa !976
	%327 = bitcast i8* %324 to i32*, !dbg !1302
	store i32 4, i32* %327, align 8, !dbg !1303, !tbaa !1269
	%328 = getelementptr inbounds i8, i8* %324, i64 16, !dbg !1304
	store i8 %322, i8* %328, align 8, !dbg !1305, !tbaa !1306
	%329 = getelementptr inbounds i8, i8* %324, i64 24, !dbg !1307
	%330 = bitcast i8* %329 to i64*, !dbg !1307
	store i64 %323, i64* %330, align 8, !dbg !1308, !tbaa !1067
	%331 = load %struct.List_element*, %struct.List_element** %176, align 8, !dbg !1309, !tbaa !969
	%332 = icmp eq %struct.List_element* %331, null, !dbg !1309
	br i1 %332, label %333, label %334, !dbg !1312
	call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.55, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0), i32 719, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__PRETTY_FUNCTION__.append_repeated_char, i64 0, i64 0)) #14, !dbg !1313
	unreachable, !dbg !1313
	%335 = getelementptr inbounds %struct.List_element, %struct.List_element* %331, i64 0, i32 1, !dbg !1315
	%336 = bitcast %struct.List_element** %335 to i8**, !dbg !1316
	store i8* %324, i8** %336, align 8, !dbg !1316, !tbaa !976
	%337 = bitcast %struct.List_element** %176 to i8**, !dbg !1317
	store i8* %324, i8** %337, align 8, !dbg !1317, !tbaa !969
	%338 = load i64, i64* %137, align 8, !dbg !1318, !tbaa !1029
	store i64 %338, i64* %139, align 8, !dbg !1319, !tbaa !1029
	br label %339, !dbg !1320
	%340 = phi i64 [ %338, %334 ], [ %292, %290 ], !dbg !1321
	%341 = phi i64 [ %338, %334 ], [ %291, %290 ], !dbg !1324
	%342 = load i8, i8* @complement, align 1, !dbg !1325, !tbaa !896, !range !911
	%343 = icmp eq i8 %342, 0, !dbg !1325
	br i1 %343, label %368, label %344, !dbg !1326
	%345 = getelementptr inbounds %struct.Spec_list, %struct.Spec_list* %6, i64 0, i32 7, !dbg !1327
	%346 = load i8, i8* %345, align 1, !dbg !1327, !tbaa !1131, !range !911
	%347 = icmp eq i8 %346, 0, !dbg !1327
	br i1 %347, label %368, label %348, !dbg !1328
	%349 = icmp eq i64 %341, %340, !dbg !1329
	br i1 %349, label %350, label %361, !dbg !1330
	call void @llvm.dbg.value(metadata %struct.Spec_list* %103, i64 0, metadata !1331, metadata !688) #10, !dbg !1338
	%351 = getelementptr inbounds %struct.Spec_list, %struct.Spec_list* %103, i64 0, i32 2, !dbg !1341
	store i64 -2, i64* %351, align 8, !dbg !1342, !tbaa !1012
	%352 = call fastcc i32 @get_next(%struct.Spec_list* nonnull %103, i32* null) #10, !dbg !1343
	call void @llvm.dbg.value(metadata i32 %352, i64 0, metadata !1336, metadata !688) #10, !dbg !1345
	%353 = icmp eq i32 %352, -1, !dbg !1346
	br i1 %353, label %361, label %354, !dbg !1347
	br label %355, !dbg !1348
	%356 = call fastcc i32 @get_next(%struct.Spec_list* nonnull %103, i32* null) #10, !dbg !1348
	call void @llvm.dbg.value(metadata i32 %356, i64 0, metadata !1337, metadata !688) #10, !dbg !1350
	%357 = icmp eq i32 %356, -1, !dbg !1351
	br i1 %357, label %367, label %358, !dbg !1352
	%359 = icmp eq i32 %356, %352, !dbg !1353
	br i1 %359, label %355, label %360, !dbg !1355, !llvm.loop !1356
	br label %361, !dbg !1359
	%362 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.85, i64 0, i64 0), i32 5) #10, !dbg !1359
	call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %362) #10, !dbg !1361
	unreachable, !dbg !1359
	%364 = icmp eq i64 %156, 0, !dbg !1363
	br i1 %364, label %368, label %365, !dbg !1366
	%366 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.86, i64 0, i64 0), i32 5) #10, !dbg !1367
	call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %366) #10, !dbg !1368
	unreachable, !dbg !1367
	br label %368, !dbg !1370
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1376, metadata !688), !dbg !1370
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1377, metadata !688), !dbg !1379
	tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1376, metadata !688), !dbg !1380
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1377, metadata !688), !dbg !1382
	%369 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1383, !tbaa !696
	call void @fadvise(%struct._IO_FILE* %369, i32 2) #10, !dbg !1384
	%370 = load i8, i8* @squeeze_repeats, align 1, !dbg !1385, !tbaa !896, !range !911
	%371 = icmp ne i8 %370, 0, !dbg !1385
	%372 = icmp eq i32 %31, 1, !dbg !1386
	%373 = and i1 %372, %371, !dbg !1388
	br i1 %373, label %374, label %424, !dbg !1388
	%375 = load i8, i8* @complement, align 1, !dbg !1389, !tbaa !896, !range !911
	%376 = icmp eq i8 %375, 0, !dbg !1389
	call void @llvm.dbg.value(metadata %struct.Spec_list* %6, i64 0, metadata !756, metadata !958), !dbg !959
	call void @llvm.dbg.value(metadata %struct.Spec_list* %6, i64 0, metadata !1391, metadata !688) #10, !dbg !1402
	call void @llvm.dbg.value(metadata i1 %376, i64 0, metadata !1396, metadata !1404) #10, !dbg !1405
	%377 = getelementptr inbounds %struct.Spec_list, %struct.Spec_list* %6, i64 0, i32 2, !dbg !1406
	store i64 -2, i64* %377, align 8, !dbg !1407, !tbaa !1012
	%378 = call fastcc i32 @get_next(%struct.Spec_list* nonnull %6, i32* null) #10, !dbg !1408
	call void @llvm.dbg.value(metadata i32 %378, i64 0, metadata !1398, metadata !688) #10, !dbg !1410
	%379 = icmp eq i32 %378, -1, !dbg !1411
	br i1 %379, label %388, label %380, !dbg !1412
	br label %381, !dbg !1413
	%382 = phi i32 [ %385, %381 ], [ %378, %380 ]
	%383 = sext i32 %382 to i64, !dbg !1413
	%384 = getelementptr inbounds [256 x i8], [256 x i8]* @in_squeeze_set, i64 0, i64 %383, !dbg !1413
	store i8 1, i8* %384, align 1, !dbg !1414, !tbaa !896
	%385 = call fastcc i32 @get_next(%struct.Spec_list* nonnull %6, i32* null) #10, !dbg !1408
	call void @llvm.dbg.value(metadata i32 %385, i64 0, metadata !1398, metadata !688) #10, !dbg !1410
	%386 = icmp eq i32 %385, -1, !dbg !1411
	br i1 %386, label %387, label %381, !dbg !1412, !llvm.loop !1415
	br label %388, !dbg !1418
	br i1 %376, label %423, label %389, !dbg !1418
	br label %390, !dbg !1419
	%391 = load <16 x i8>, <16 x i8>* bitcast ([256 x i8]* @in_squeeze_set to <16 x i8>*), align 16, !dbg !1419, !tbaa !896
	%392 = load <16 x i8>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_squeeze_set, i64 0, i64 16) to <16 x i8>*), align 16, !dbg !1419, !tbaa !896
	%393 = xor <16 x i8> %391, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>, !dbg !1421
	%394 = xor <16 x i8> %392, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>, !dbg !1421
	store <16 x i8> %393, <16 x i8>* bitcast ([256 x i8]* @in_squeeze_set to <16 x i8>*), align 16, !dbg !1421, !tbaa !896
	store <16 x i8> %394, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_squeeze_set, i64 0, i64 16) to <16 x i8>*), align 16, !dbg !1421, !tbaa !896
	%395 = load <16 x i8>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_squeeze_set, i64 0, i64 32) to <16 x i8>*), align 16, !dbg !1419, !tbaa !896
	%396 = load <16 x i8>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_squeeze_set, i64 0, i64 48) to <16 x i8>*), align 16, !dbg !1419, !tbaa !896
	%397 = xor <16 x i8> %395, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>, !dbg !1421
	%398 = xor <16 x i8> %396, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>, !dbg !1421
	store <16 x i8> %397, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_squeeze_set, i64 0, i64 32) to <16 x i8>*), align 16, !dbg !1421, !tbaa !896
	store <16 x i8> %398, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_squeeze_set, i64 0, i64 48) to <16 x i8>*), align 16, !dbg !1421, !tbaa !896
	%399 = load <16 x i8>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_squeeze_set, i64 0, i64 64) to <16 x i8>*), align 16, !dbg !1419, !tbaa !896
	%400 = load <16 x i8>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_squeeze_set, i64 0, i64 80) to <16 x i8>*), align 16, !dbg !1419, !tbaa !896
	%401 = xor <16 x i8> %399, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>, !dbg !1421
	%402 = xor <16 x i8> %400, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>, !dbg !1421
	store <16 x i8> %401, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_squeeze_set, i64 0, i64 64) to <16 x i8>*), align 16, !dbg !1421, !tbaa !896
	store <16 x i8> %402, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_squeeze_set, i64 0, i64 80) to <16 x i8>*), align 16, !dbg !1421, !tbaa !896
	%403 = load <16 x i8>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_squeeze_set, i64 0, i64 96) to <16 x i8>*), align 16, !dbg !1419, !tbaa !896
	%404 = load <16 x i8>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_squeeze_set, i64 0, i64 112) to <16 x i8>*), align 16, !dbg !1419, !tbaa !896
	%405 = xor <16 x i8> %403, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>, !dbg !1421
	%406 = xor <16 x i8> %404, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>, !dbg !1421
	store <16 x i8> %405, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_squeeze_set, i64 0, i64 96) to <16 x i8>*), align 16, !dbg !1421, !tbaa !896
	store <16 x i8> %406, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_squeeze_set, i64 0, i64 112) to <16 x i8>*), align 16, !dbg !1421, !tbaa !896
	%407 = load <16 x i8>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_squeeze_set, i64 0, i64 128) to <16 x i8>*), align 16, !dbg !1419, !tbaa !896
	%408 = load <16 x i8>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_squeeze_set, i64 0, i64 144) to <16 x i8>*), align 16, !dbg !1419, !tbaa !896
	%409 = xor <16 x i8> %407, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>, !dbg !1421
	%410 = xor <16 x i8> %408, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>, !dbg !1421
	store <16 x i8> %409, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_squeeze_set, i64 0, i64 128) to <16 x i8>*), align 16, !dbg !1421, !tbaa !896
	store <16 x i8> %410, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_squeeze_set, i64 0, i64 144) to <16 x i8>*), align 16, !dbg !1421, !tbaa !896
	%411 = load <16 x i8>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_squeeze_set, i64 0, i64 160) to <16 x i8>*), align 16, !dbg !1419, !tbaa !896
	%412 = load <16 x i8>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_squeeze_set, i64 0, i64 176) to <16 x i8>*), align 16, !dbg !1419, !tbaa !896
	%413 = xor <16 x i8> %411, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>, !dbg !1421
	%414 = xor <16 x i8> %412, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>, !dbg !1421
	store <16 x i8> %413, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_squeeze_set, i64 0, i64 160) to <16 x i8>*), align 16, !dbg !1421, !tbaa !896
	store <16 x i8> %414, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_squeeze_set, i64 0, i64 176) to <16 x i8>*), align 16, !dbg !1421, !tbaa !896
	%415 = load <16 x i8>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_squeeze_set, i64 0, i64 192) to <16 x i8>*), align 16, !dbg !1419, !tbaa !896
	%416 = load <16 x i8>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_squeeze_set, i64 0, i64 208) to <16 x i8>*), align 16, !dbg !1419, !tbaa !896
	%417 = xor <16 x i8> %415, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>, !dbg !1421
	%418 = xor <16 x i8> %416, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>, !dbg !1421
	store <16 x i8> %417, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_squeeze_set, i64 0, i64 192) to <16 x i8>*), align 16, !dbg !1421, !tbaa !896
	store <16 x i8> %418, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_squeeze_set, i64 0, i64 208) to <16 x i8>*), align 16, !dbg !1421, !tbaa !896
	%419 = load <16 x i8>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_squeeze_set, i64 0, i64 224) to <16 x i8>*), align 16, !dbg !1419, !tbaa !896
	%420 = load <16 x i8>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_squeeze_set, i64 0, i64 240) to <16 x i8>*), align 16, !dbg !1419, !tbaa !896
	%421 = xor <16 x i8> %419, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>, !dbg !1421
	%422 = xor <16 x i8> %420, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>, !dbg !1421
	store <16 x i8> %421, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_squeeze_set, i64 0, i64 224) to <16 x i8>*), align 16, !dbg !1421, !tbaa !896
	store <16 x i8> %422, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_squeeze_set, i64 0, i64 240) to <16 x i8>*), align 16, !dbg !1421, !tbaa !896
	br label %423, !dbg !1422
	call fastcc void @squeeze_filter(i64 (i8*, i64)* nonnull @plain_read), !dbg !1422
	br label %768, !dbg !1423
	%425 = load i8, i8* @delete, align 1, !dbg !1424, !tbaa !896, !range !911
	%426 = icmp ne i8 %425, 0, !dbg !1424
	%427 = and i1 %372, %426, !dbg !1425
	br i1 %427, label %428, label %489, !dbg !1425
	%429 = load i8, i8* @complement, align 1, !dbg !1426, !tbaa !896, !range !911
	%430 = icmp eq i8 %429, 0, !dbg !1426
	call void @llvm.dbg.value(metadata %struct.Spec_list* %6, i64 0, metadata !756, metadata !958), !dbg !959
	call void @llvm.dbg.value(metadata %struct.Spec_list* %6, i64 0, metadata !1391, metadata !688) #10, !dbg !1427
	call void @llvm.dbg.value(metadata i1 %430, i64 0, metadata !1396, metadata !1404) #10, !dbg !1429
	%431 = getelementptr inbounds %struct.Spec_list, %struct.Spec_list* %6, i64 0, i32 2, !dbg !1430
	store i64 -2, i64* %431, align 8, !dbg !1431, !tbaa !1012
	%432 = call fastcc i32 @get_next(%struct.Spec_list* nonnull %6, i32* null) #10, !dbg !1432
	call void @llvm.dbg.value(metadata i32 %432, i64 0, metadata !1398, metadata !688) #10, !dbg !1433
	%433 = icmp eq i32 %432, -1, !dbg !1434
	br i1 %433, label %442, label %434, !dbg !1435
	br label %435, !dbg !1436
	%436 = phi i32 [ %439, %435 ], [ %432, %434 ]
	%437 = sext i32 %436 to i64, !dbg !1436
	%438 = getelementptr inbounds [256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 %437, !dbg !1436
	store i8 1, i8* %438, align 1, !dbg !1437, !tbaa !896
	%439 = call fastcc i32 @get_next(%struct.Spec_list* nonnull %6, i32* null) #10, !dbg !1432
	call void @llvm.dbg.value(metadata i32 %439, i64 0, metadata !1398, metadata !688) #10, !dbg !1433
	%440 = icmp eq i32 %439, -1, !dbg !1434
	br i1 %440, label %441, label %435, !dbg !1435, !llvm.loop !1415
	br label %442, !dbg !1438
	br i1 %430, label %477, label %443, !dbg !1438
	br label %444, !dbg !1439
	%445 = load <16 x i8>, <16 x i8>* bitcast ([256 x i8]* @in_delete_set to <16 x i8>*), align 16, !dbg !1439, !tbaa !896
	%446 = load <16 x i8>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 16) to <16 x i8>*), align 16, !dbg !1439, !tbaa !896
	%447 = xor <16 x i8> %445, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>, !dbg !1440
	%448 = xor <16 x i8> %446, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>, !dbg !1440
	store <16 x i8> %447, <16 x i8>* bitcast ([256 x i8]* @in_delete_set to <16 x i8>*), align 16, !dbg !1440, !tbaa !896
	store <16 x i8> %448, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 16) to <16 x i8>*), align 16, !dbg !1440, !tbaa !896
	%449 = load <16 x i8>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 32) to <16 x i8>*), align 16, !dbg !1439, !tbaa !896
	%450 = load <16 x i8>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 48) to <16 x i8>*), align 16, !dbg !1439, !tbaa !896
	%451 = xor <16 x i8> %449, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>, !dbg !1440
	%452 = xor <16 x i8> %450, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>, !dbg !1440
	store <16 x i8> %451, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 32) to <16 x i8>*), align 16, !dbg !1440, !tbaa !896
	store <16 x i8> %452, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 48) to <16 x i8>*), align 16, !dbg !1440, !tbaa !896
	%453 = load <16 x i8>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 64) to <16 x i8>*), align 16, !dbg !1439, !tbaa !896
	%454 = load <16 x i8>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 80) to <16 x i8>*), align 16, !dbg !1439, !tbaa !896
	%455 = xor <16 x i8> %453, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>, !dbg !1440
	%456 = xor <16 x i8> %454, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>, !dbg !1440
	store <16 x i8> %455, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 64) to <16 x i8>*), align 16, !dbg !1440, !tbaa !896
	store <16 x i8> %456, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 80) to <16 x i8>*), align 16, !dbg !1440, !tbaa !896
	%457 = load <16 x i8>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 96) to <16 x i8>*), align 16, !dbg !1439, !tbaa !896
	%458 = load <16 x i8>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 112) to <16 x i8>*), align 16, !dbg !1439, !tbaa !896
	%459 = xor <16 x i8> %457, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>, !dbg !1440
	%460 = xor <16 x i8> %458, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>, !dbg !1440
	store <16 x i8> %459, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 96) to <16 x i8>*), align 16, !dbg !1440, !tbaa !896
	store <16 x i8> %460, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 112) to <16 x i8>*), align 16, !dbg !1440, !tbaa !896
	%461 = load <16 x i8>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 128) to <16 x i8>*), align 16, !dbg !1439, !tbaa !896
	%462 = load <16 x i8>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 144) to <16 x i8>*), align 16, !dbg !1439, !tbaa !896
	%463 = xor <16 x i8> %461, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>, !dbg !1440
	%464 = xor <16 x i8> %462, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>, !dbg !1440
	store <16 x i8> %463, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 128) to <16 x i8>*), align 16, !dbg !1440, !tbaa !896
	store <16 x i8> %464, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 144) to <16 x i8>*), align 16, !dbg !1440, !tbaa !896
	%465 = load <16 x i8>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 160) to <16 x i8>*), align 16, !dbg !1439, !tbaa !896
	%466 = load <16 x i8>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 176) to <16 x i8>*), align 16, !dbg !1439, !tbaa !896
	%467 = xor <16 x i8> %465, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>, !dbg !1440
	%468 = xor <16 x i8> %466, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>, !dbg !1440
	store <16 x i8> %467, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 160) to <16 x i8>*), align 16, !dbg !1440, !tbaa !896
	store <16 x i8> %468, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 176) to <16 x i8>*), align 16, !dbg !1440, !tbaa !896
	%469 = load <16 x i8>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 192) to <16 x i8>*), align 16, !dbg !1439, !tbaa !896
	%470 = load <16 x i8>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 208) to <16 x i8>*), align 16, !dbg !1439, !tbaa !896
	%471 = xor <16 x i8> %469, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>, !dbg !1440
	%472 = xor <16 x i8> %470, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>, !dbg !1440
	store <16 x i8> %471, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 192) to <16 x i8>*), align 16, !dbg !1440, !tbaa !896
	store <16 x i8> %472, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 208) to <16 x i8>*), align 16, !dbg !1440, !tbaa !896
	%473 = load <16 x i8>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 224) to <16 x i8>*), align 16, !dbg !1439, !tbaa !896
	%474 = load <16 x i8>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 240) to <16 x i8>*), align 16, !dbg !1439, !tbaa !896
	%475 = xor <16 x i8> %473, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>, !dbg !1440
	%476 = xor <16 x i8> %474, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>, !dbg !1440
	store <16 x i8> %475, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 224) to <16 x i8>*), align 16, !dbg !1440, !tbaa !896
	store <16 x i8> %476, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 240) to <16 x i8>*), align 16, !dbg !1440, !tbaa !896
	br label %477, !dbg !1441
	br label %478, !dbg !1441
	%479 = call i64 @read_and_delete(i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @io_buf, i64 0, i64 0), i64 8192), !dbg !1441
	call void @llvm.dbg.value(metadata i64 %479, i64 0, metadata !797, metadata !688), !dbg !1442
	%480 = icmp eq i64 %479, 0, !dbg !1443
	br i1 %480, label %766, label %481, !dbg !1445
	%482 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1446, !tbaa !696
	%483 = call i64 @fwrite_unlocked(i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @io_buf, i64 0, i64 0), i64 1, i64 %479, %struct._IO_FILE* %482) #10, !dbg !1446
	%484 = icmp eq i64 %483, %479, !dbg !1448
	br i1 %484, label %478, label %485, !dbg !1449
	%486 = tail call i32* @__errno_location() #1, !dbg !1450
	%487 = load i32, i32* %486, align 4, !dbg !1450, !tbaa !903
	%488 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i64 0, i64 0), i32 5) #10, !dbg !1451
	call void (i32, i32, i8*, ...) @error(i32 1, i32 %487, i8* %488) #10, !dbg !1453
	unreachable, !dbg !1450
	%490 = and i1 %32, %426, !dbg !1455
	%491 = and i1 %371, %490, !dbg !1457
	br i1 %491, label %492, label %554, !dbg !1457
	%493 = load i8, i8* @complement, align 1, !dbg !1458, !tbaa !896, !range !911
	%494 = icmp eq i8 %493, 0, !dbg !1458
	call void @llvm.dbg.value(metadata %struct.Spec_list* %6, i64 0, metadata !756, metadata !958), !dbg !959
	call void @llvm.dbg.value(metadata %struct.Spec_list* %6, i64 0, metadata !1391, metadata !688) #10, !dbg !1460
	call void @llvm.dbg.value(metadata i1 %494, i64 0, metadata !1396, metadata !1404) #10, !dbg !1462
	%495 = getelementptr inbounds %struct.Spec_list, %struct.Spec_list* %6, i64 0, i32 2, !dbg !1463
	store i64 -2, i64* %495, align 8, !dbg !1464, !tbaa !1012
	%496 = call fastcc i32 @get_next(%struct.Spec_list* nonnull %6, i32* null) #10, !dbg !1465
	call void @llvm.dbg.value(metadata i32 %496, i64 0, metadata !1398, metadata !688) #10, !dbg !1466
	%497 = icmp eq i32 %496, -1, !dbg !1467
	br i1 %497, label %506, label %498, !dbg !1468
	br label %499, !dbg !1469
	%500 = phi i32 [ %503, %499 ], [ %496, %498 ]
	%501 = sext i32 %500 to i64, !dbg !1469
	%502 = getelementptr inbounds [256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 %501, !dbg !1469
	store i8 1, i8* %502, align 1, !dbg !1470, !tbaa !896
	%503 = call fastcc i32 @get_next(%struct.Spec_list* nonnull %6, i32* null) #10, !dbg !1465
	call void @llvm.dbg.value(metadata i32 %503, i64 0, metadata !1398, metadata !688) #10, !dbg !1466
	%504 = icmp eq i32 %503, -1, !dbg !1467
	br i1 %504, label %505, label %499, !dbg !1468, !llvm.loop !1415
	br label %506, !dbg !1471
	br i1 %494, label %541, label %507, !dbg !1471
	br label %508, !dbg !1472
	%509 = load <16 x i8>, <16 x i8>* bitcast ([256 x i8]* @in_delete_set to <16 x i8>*), align 16, !dbg !1472, !tbaa !896
	%510 = load <16 x i8>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 16) to <16 x i8>*), align 16, !dbg !1472, !tbaa !896
	%511 = xor <16 x i8> %509, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>, !dbg !1473
	%512 = xor <16 x i8> %510, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>, !dbg !1473
	store <16 x i8> %511, <16 x i8>* bitcast ([256 x i8]* @in_delete_set to <16 x i8>*), align 16, !dbg !1473, !tbaa !896
	store <16 x i8> %512, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 16) to <16 x i8>*), align 16, !dbg !1473, !tbaa !896
	%513 = load <16 x i8>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 32) to <16 x i8>*), align 16, !dbg !1472, !tbaa !896
	%514 = load <16 x i8>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 48) to <16 x i8>*), align 16, !dbg !1472, !tbaa !896
	%515 = xor <16 x i8> %513, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>, !dbg !1473
	%516 = xor <16 x i8> %514, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>, !dbg !1473
	store <16 x i8> %515, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 32) to <16 x i8>*), align 16, !dbg !1473, !tbaa !896
	store <16 x i8> %516, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 48) to <16 x i8>*), align 16, !dbg !1473, !tbaa !896
	%517 = load <16 x i8>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 64) to <16 x i8>*), align 16, !dbg !1472, !tbaa !896
	%518 = load <16 x i8>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 80) to <16 x i8>*), align 16, !dbg !1472, !tbaa !896
	%519 = xor <16 x i8> %517, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>, !dbg !1473
	%520 = xor <16 x i8> %518, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>, !dbg !1473
	store <16 x i8> %519, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 64) to <16 x i8>*), align 16, !dbg !1473, !tbaa !896
	store <16 x i8> %520, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 80) to <16 x i8>*), align 16, !dbg !1473, !tbaa !896
	%521 = load <16 x i8>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 96) to <16 x i8>*), align 16, !dbg !1472, !tbaa !896
	%522 = load <16 x i8>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 112) to <16 x i8>*), align 16, !dbg !1472, !tbaa !896
	%523 = xor <16 x i8> %521, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>, !dbg !1473
	%524 = xor <16 x i8> %522, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>, !dbg !1473
	store <16 x i8> %523, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 96) to <16 x i8>*), align 16, !dbg !1473, !tbaa !896
	store <16 x i8> %524, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 112) to <16 x i8>*), align 16, !dbg !1473, !tbaa !896
	%525 = load <16 x i8>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 128) to <16 x i8>*), align 16, !dbg !1472, !tbaa !896
	%526 = load <16 x i8>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 144) to <16 x i8>*), align 16, !dbg !1472, !tbaa !896
	%527 = xor <16 x i8> %525, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>, !dbg !1473
	%528 = xor <16 x i8> %526, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>, !dbg !1473
	store <16 x i8> %527, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 128) to <16 x i8>*), align 16, !dbg !1473, !tbaa !896
	store <16 x i8> %528, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 144) to <16 x i8>*), align 16, !dbg !1473, !tbaa !896
	%529 = load <16 x i8>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 160) to <16 x i8>*), align 16, !dbg !1472, !tbaa !896
	%530 = load <16 x i8>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 176) to <16 x i8>*), align 16, !dbg !1472, !tbaa !896
	%531 = xor <16 x i8> %529, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>, !dbg !1473
	%532 = xor <16 x i8> %530, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>, !dbg !1473
	store <16 x i8> %531, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 160) to <16 x i8>*), align 16, !dbg !1473, !tbaa !896
	store <16 x i8> %532, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 176) to <16 x i8>*), align 16, !dbg !1473, !tbaa !896
	%533 = load <16 x i8>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 192) to <16 x i8>*), align 16, !dbg !1472, !tbaa !896
	%534 = load <16 x i8>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 208) to <16 x i8>*), align 16, !dbg !1472, !tbaa !896
	%535 = xor <16 x i8> %533, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>, !dbg !1473
	%536 = xor <16 x i8> %534, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>, !dbg !1473
	store <16 x i8> %535, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 192) to <16 x i8>*), align 16, !dbg !1473, !tbaa !896
	store <16 x i8> %536, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 208) to <16 x i8>*), align 16, !dbg !1473, !tbaa !896
	%537 = load <16 x i8>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 224) to <16 x i8>*), align 16, !dbg !1472, !tbaa !896
	%538 = load <16 x i8>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 240) to <16 x i8>*), align 16, !dbg !1472, !tbaa !896
	%539 = xor <16 x i8> %537, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>, !dbg !1473
	%540 = xor <16 x i8> %538, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>, !dbg !1473
	store <16 x i8> %539, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 224) to <16 x i8>*), align 16, !dbg !1473, !tbaa !896
	store <16 x i8> %540, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 240) to <16 x i8>*), align 16, !dbg !1473, !tbaa !896
	br label %541, !dbg !1474
	call void @llvm.dbg.value(metadata %struct.Spec_list* %103, i64 0, metadata !1391, metadata !688) #10, !dbg !1474
	call void @llvm.dbg.value(metadata i1 false, i64 0, metadata !1396, metadata !1404) #10, !dbg !1476
	%542 = getelementptr inbounds %struct.Spec_list, %struct.Spec_list* %103, i64 0, i32 2, !dbg !1477
	store i64 -2, i64* %542, align 8, !dbg !1478, !tbaa !1012
	%543 = call fastcc i32 @get_next(%struct.Spec_list* %103, i32* null) #10, !dbg !1479
	call void @llvm.dbg.value(metadata i32 %543, i64 0, metadata !1398, metadata !688) #10, !dbg !1480
	%544 = icmp eq i32 %543, -1, !dbg !1481
	br i1 %544, label %553, label %545, !dbg !1482
	br label %546, !dbg !1483
	%547 = phi i32 [ %550, %546 ], [ %543, %545 ]
	%548 = sext i32 %547 to i64, !dbg !1483
	%549 = getelementptr inbounds [256 x i8], [256 x i8]* @in_squeeze_set, i64 0, i64 %548, !dbg !1483
	store i8 1, i8* %549, align 1, !dbg !1484, !tbaa !896
	%550 = call fastcc i32 @get_next(%struct.Spec_list* %103, i32* null) #10, !dbg !1479
	call void @llvm.dbg.value(metadata i32 %550, i64 0, metadata !1398, metadata !688) #10, !dbg !1480
	%551 = icmp eq i32 %550, -1, !dbg !1481
	br i1 %551, label %552, label %546, !dbg !1482, !llvm.loop !1415
	br label %553, !dbg !1485
	call fastcc void @squeeze_filter(i64 (i8*, i64)* nonnull @read_and_delete), !dbg !1485
	br label %768, !dbg !1486
	%555 = load i8, i8* @translating, align 1, !dbg !1487, !tbaa !896, !range !911
	%556 = icmp eq i8 %555, 0, !dbg !1487
	br i1 %556, label %768, label %557, !dbg !1488
	%558 = load i8, i8* @complement, align 1, !dbg !1489, !tbaa !896, !range !911
	%559 = icmp eq i8 %558, 0, !dbg !1489
	br i1 %559, label %594, label %560, !dbg !1490
	call void @llvm.dbg.value(metadata %struct.Spec_list* %6, i64 0, metadata !756, metadata !958), !dbg !959
	call void @llvm.dbg.value(metadata %struct.Spec_list* %6, i64 0, metadata !1391, metadata !688) #10, !dbg !1491
	call void @llvm.dbg.value(metadata i1 false, i64 0, metadata !1396, metadata !1404) #10, !dbg !1493
	%561 = getelementptr inbounds %struct.Spec_list, %struct.Spec_list* %6, i64 0, i32 2, !dbg !1494
	store i64 -2, i64* %561, align 8, !dbg !1495, !tbaa !1012
	%562 = call fastcc i32 @get_next(%struct.Spec_list* nonnull %6, i32* null) #10, !dbg !1496
	call void @llvm.dbg.value(metadata i32 %562, i64 0, metadata !1398, metadata !688) #10, !dbg !1497
	%563 = icmp eq i32 %562, -1, !dbg !1498
	br i1 %563, label %572, label %564, !dbg !1499
	br label %565, !dbg !1500
	%566 = phi i32 [ %569, %565 ], [ %562, %564 ]
	%567 = sext i32 %566 to i64, !dbg !1500
	%568 = getelementptr inbounds [256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 %567, !dbg !1500
	store i8 1, i8* %568, align 1, !dbg !1501, !tbaa !896
	%569 = call fastcc i32 @get_next(%struct.Spec_list* nonnull %6, i32* null) #10, !dbg !1496
	call void @llvm.dbg.value(metadata i32 %569, i64 0, metadata !1398, metadata !688) #10, !dbg !1497
	%570 = icmp eq i32 %569, -1, !dbg !1498
	br i1 %570, label %571, label %565, !dbg !1499, !llvm.loop !1415
	br label %572, !dbg !1502
	%573 = getelementptr inbounds %struct.Spec_list, %struct.Spec_list* %103, i64 0, i32 2, !dbg !1502
	store i64 -2, i64* %573, align 8, !dbg !1503, !tbaa !1012
	call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !809, metadata !688), !dbg !1504
	call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !809, metadata !688), !dbg !1504
	br label %574, !dbg !1505
	store <16 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, <16 x i8>* bitcast ([256 x i8]* @xlate to <16 x i8>*), align 16, !dbg !1507, !tbaa !1179
	store <16 x i8> <i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @xlate, i64 0, i64 16) to <16 x i8>*), align 16, !dbg !1507, !tbaa !1179
	store <16 x i8> <i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @xlate, i64 0, i64 32) to <16 x i8>*), align 16, !dbg !1507, !tbaa !1179
	store <16 x i8> <i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @xlate, i64 0, i64 48) to <16 x i8>*), align 16, !dbg !1507, !tbaa !1179
	store <16 x i8> <i8 64, i8 65, i8 66, i8 67, i8 68, i8 69, i8 70, i8 71, i8 72, i8 73, i8 74, i8 75, i8 76, i8 77, i8 78, i8 79>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @xlate, i64 0, i64 64) to <16 x i8>*), align 16, !dbg !1507, !tbaa !1179
	store <16 x i8> <i8 80, i8 81, i8 82, i8 83, i8 84, i8 85, i8 86, i8 87, i8 88, i8 89, i8 90, i8 91, i8 92, i8 93, i8 94, i8 95>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @xlate, i64 0, i64 80) to <16 x i8>*), align 16, !dbg !1507, !tbaa !1179
	store <16 x i8> <i8 96, i8 97, i8 98, i8 99, i8 100, i8 101, i8 102, i8 103, i8 104, i8 105, i8 106, i8 107, i8 108, i8 109, i8 110, i8 111>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @xlate, i64 0, i64 96) to <16 x i8>*), align 16, !dbg !1507, !tbaa !1179
	store <16 x i8> <i8 112, i8 113, i8 114, i8 115, i8 116, i8 117, i8 118, i8 119, i8 120, i8 121, i8 122, i8 123, i8 124, i8 125, i8 126, i8 127>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @xlate, i64 0, i64 112) to <16 x i8>*), align 16, !dbg !1507, !tbaa !1179
	store <16 x i8> <i8 -128, i8 -127, i8 -126, i8 -125, i8 -124, i8 -123, i8 -122, i8 -121, i8 -120, i8 -119, i8 -118, i8 -117, i8 -116, i8 -115, i8 -114, i8 -113>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @xlate, i64 0, i64 128) to <16 x i8>*), align 16, !dbg !1507, !tbaa !1179
	store <16 x i8> <i8 -112, i8 -111, i8 -110, i8 -109, i8 -108, i8 -107, i8 -106, i8 -105, i8 -104, i8 -103, i8 -102, i8 -101, i8 -100, i8 -99, i8 -98, i8 -97>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @xlate, i64 0, i64 144) to <16 x i8>*), align 16, !dbg !1507, !tbaa !1179
	store <16 x i8> <i8 -96, i8 -95, i8 -94, i8 -93, i8 -92, i8 -91, i8 -90, i8 -89, i8 -88, i8 -87, i8 -86, i8 -85, i8 -84, i8 -83, i8 -82, i8 -81>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @xlate, i64 0, i64 160) to <16 x i8>*), align 16, !dbg !1507, !tbaa !1179
	store <16 x i8> <i8 -80, i8 -79, i8 -78, i8 -77, i8 -76, i8 -75, i8 -74, i8 -73, i8 -72, i8 -71, i8 -70, i8 -69, i8 -68, i8 -67, i8 -66, i8 -65>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @xlate, i64 0, i64 176) to <16 x i8>*), align 16, !dbg !1507, !tbaa !1179
	store <16 x i8> <i8 -64, i8 -63, i8 -62, i8 -61, i8 -60, i8 -59, i8 -58, i8 -57, i8 -56, i8 -55, i8 -54, i8 -53, i8 -52, i8 -51, i8 -50, i8 -49>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @xlate, i64 0, i64 192) to <16 x i8>*), align 16, !dbg !1507, !tbaa !1179
	store <16 x i8> <i8 -48, i8 -47, i8 -46, i8 -45, i8 -44, i8 -43, i8 -42, i8 -41, i8 -40, i8 -39, i8 -38, i8 -37, i8 -36, i8 -35, i8 -34, i8 -33>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @xlate, i64 0, i64 208) to <16 x i8>*), align 16, !dbg !1507, !tbaa !1179
	store <16 x i8> <i8 -32, i8 -31, i8 -30, i8 -29, i8 -28, i8 -27, i8 -26, i8 -25, i8 -24, i8 -23, i8 -22, i8 -21, i8 -20, i8 -19, i8 -18, i8 -17>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @xlate, i64 0, i64 224) to <16 x i8>*), align 16, !dbg !1507, !tbaa !1179
	store <16 x i8> <i8 -16, i8 -15, i8 -14, i8 -13, i8 -12, i8 -11, i8 -10, i8 -9, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @xlate, i64 0, i64 240) to <16 x i8>*), align 16, !dbg !1507, !tbaa !1179
	br label %575, !dbg !1509
	%576 = phi i64 [ %592, %591 ], [ 0, %574 ]
	%577 = getelementptr inbounds [256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 %576, !dbg !1509
	%578 = load i8, i8* %577, align 1, !dbg !1509, !tbaa !896, !range !911
	%579 = icmp eq i8 %578, 0, !dbg !1509
	br i1 %579, label %580, label %591, !dbg !1510
	%581 = call fastcc i32 @get_next(%struct.Spec_list* %103, i32* null), !dbg !1511
	call void @llvm.dbg.value(metadata i32 %581, i64 0, metadata !813, metadata !688), !dbg !1512
	%582 = icmp eq i32 %581, -1, !dbg !1513
	%583 = load i8, i8* @truncate_set1, align 1, !dbg !1516
	%584 = icmp eq i8 %583, 0, !dbg !1516
	%585 = and i1 %582, %584, !dbg !1513
	br i1 %585, label %586, label %587, !dbg !1513
	call void @__assert_fail(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0), i32 1832, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #14, !dbg !1518
	unreachable, !dbg !1518
	br i1 %582, label %683, label %588, !dbg !1520
	%589 = trunc i32 %581 to i8, !dbg !1521
	%590 = getelementptr inbounds [256 x i8], [256 x i8]* @xlate, i64 0, i64 %576, !dbg !1522
	store i8 %589, i8* %590, align 1, !dbg !1523, !tbaa !1179
	br label %591
	%592 = add nuw nsw i64 %576, 1, !dbg !1524
	%593 = icmp slt i64 %592, 256, !dbg !1526
	br i1 %593, label %575, label %683, !dbg !1528, !llvm.loop !1530
	%595 = bitcast i32* %8 to i8*, !dbg !1533
	call void @llvm.lifetime.start(i64 4, i8* nonnull %595) #10, !dbg !1533
	%596 = bitcast i32* %9 to i8*, !dbg !1534
	call void @llvm.lifetime.start(i64 4, i8* nonnull %596) #10, !dbg !1534
	call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !823, metadata !688), !dbg !1535
	call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !823, metadata !688), !dbg !1535
	br label %597, !dbg !1536
	store <16 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, <16 x i8>* bitcast ([256 x i8]* @xlate to <16 x i8>*), align 16, !dbg !1538, !tbaa !1179
	store <16 x i8> <i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @xlate, i64 0, i64 16) to <16 x i8>*), align 16, !dbg !1538, !tbaa !1179
	store <16 x i8> <i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @xlate, i64 0, i64 32) to <16 x i8>*), align 16, !dbg !1538, !tbaa !1179
	store <16 x i8> <i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @xlate, i64 0, i64 48) to <16 x i8>*), align 16, !dbg !1538, !tbaa !1179
	store <16 x i8> <i8 64, i8 65, i8 66, i8 67, i8 68, i8 69, i8 70, i8 71, i8 72, i8 73, i8 74, i8 75, i8 76, i8 77, i8 78, i8 79>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @xlate, i64 0, i64 64) to <16 x i8>*), align 16, !dbg !1538, !tbaa !1179
	store <16 x i8> <i8 80, i8 81, i8 82, i8 83, i8 84, i8 85, i8 86, i8 87, i8 88, i8 89, i8 90, i8 91, i8 92, i8 93, i8 94, i8 95>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @xlate, i64 0, i64 80) to <16 x i8>*), align 16, !dbg !1538, !tbaa !1179
	store <16 x i8> <i8 96, i8 97, i8 98, i8 99, i8 100, i8 101, i8 102, i8 103, i8 104, i8 105, i8 106, i8 107, i8 108, i8 109, i8 110, i8 111>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @xlate, i64 0, i64 96) to <16 x i8>*), align 16, !dbg !1538, !tbaa !1179
	store <16 x i8> <i8 112, i8 113, i8 114, i8 115, i8 116, i8 117, i8 118, i8 119, i8 120, i8 121, i8 122, i8 123, i8 124, i8 125, i8 126, i8 127>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @xlate, i64 0, i64 112) to <16 x i8>*), align 16, !dbg !1538, !tbaa !1179
	store <16 x i8> <i8 -128, i8 -127, i8 -126, i8 -125, i8 -124, i8 -123, i8 -122, i8 -121, i8 -120, i8 -119, i8 -118, i8 -117, i8 -116, i8 -115, i8 -114, i8 -113>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @xlate, i64 0, i64 128) to <16 x i8>*), align 16, !dbg !1538, !tbaa !1179
	store <16 x i8> <i8 -112, i8 -111, i8 -110, i8 -109, i8 -108, i8 -107, i8 -106, i8 -105, i8 -104, i8 -103, i8 -102, i8 -101, i8 -100, i8 -99, i8 -98, i8 -97>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @xlate, i64 0, i64 144) to <16 x i8>*), align 16, !dbg !1538, !tbaa !1179
	store <16 x i8> <i8 -96, i8 -95, i8 -94, i8 -93, i8 -92, i8 -91, i8 -90, i8 -89, i8 -88, i8 -87, i8 -86, i8 -85, i8 -84, i8 -83, i8 -82, i8 -81>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @xlate, i64 0, i64 160) to <16 x i8>*), align 16, !dbg !1538, !tbaa !1179
	store <16 x i8> <i8 -80, i8 -79, i8 -78, i8 -77, i8 -76, i8 -75, i8 -74, i8 -73, i8 -72, i8 -71, i8 -70, i8 -69, i8 -68, i8 -67, i8 -66, i8 -65>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @xlate, i64 0, i64 176) to <16 x i8>*), align 16, !dbg !1538, !tbaa !1179
	store <16 x i8> <i8 -64, i8 -63, i8 -62, i8 -61, i8 -60, i8 -59, i8 -58, i8 -57, i8 -56, i8 -55, i8 -54, i8 -53, i8 -52, i8 -51, i8 -50, i8 -49>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @xlate, i64 0, i64 192) to <16 x i8>*), align 16, !dbg !1538, !tbaa !1179
	store <16 x i8> <i8 -48, i8 -47, i8 -46, i8 -45, i8 -44, i8 -43, i8 -42, i8 -41, i8 -40, i8 -39, i8 -38, i8 -37, i8 -36, i8 -35, i8 -34, i8 -33>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @xlate, i64 0, i64 208) to <16 x i8>*), align 16, !dbg !1538, !tbaa !1179
	store <16 x i8> <i8 -32, i8 -31, i8 -30, i8 -29, i8 -28, i8 -27, i8 -26, i8 -25, i8 -24, i8 -23, i8 -22, i8 -21, i8 -20, i8 -19, i8 -18, i8 -17>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @xlate, i64 0, i64 224) to <16 x i8>*), align 16, !dbg !1538, !tbaa !1179
	store <16 x i8> <i8 -16, i8 -15, i8 -14, i8 -13, i8 -12, i8 -11, i8 -10, i8 -9, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @xlate, i64 0, i64 240) to <16 x i8>*), align 16, !dbg !1538, !tbaa !1179
	%598 = getelementptr inbounds %struct.Spec_list, %struct.Spec_list* %6, i64 0, i32 2, !dbg !1540
	store i64 -2, i64* %598, align 8, !dbg !1541, !tbaa !1012
	%599 = getelementptr inbounds %struct.Spec_list, %struct.Spec_list* %103, i64 0, i32 2, !dbg !1542
	%600 = bitcast %struct.List_element** %78 to i64*
	%601 = getelementptr inbounds %struct.Spec_list, %struct.Spec_list* %103, i64 0, i32 1
	%602 = bitcast %struct.List_element** %601 to i64*
	br label %603, !dbg !1543
	%604 = phi i64 [ -1, %667 ], [ -2, %597 ]
	store i64 %604, i64* %599, align 8, !tbaa !1012
	br label %605, !dbg !959
	call void @llvm.dbg.value(metadata %struct.Spec_list* %6, i64 0, metadata !756, metadata !958), !dbg !959
	call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !821, metadata !958), !dbg !1544
	%606 = call fastcc i32 @get_next(%struct.Spec_list* nonnull %6, i32* nonnull %8), !dbg !1545
	call void @llvm.dbg.value(metadata i32 %606, i64 0, metadata !818, metadata !688), !dbg !1546
	call void @llvm.dbg.value(metadata i32* %9, i64 0, metadata !822, metadata !958), !dbg !1547
	%607 = call fastcc i32 @get_next(%struct.Spec_list* %103, i32* nonnull %9), !dbg !1548
	call void @llvm.dbg.value(metadata i32 %607, i64 0, metadata !820, metadata !688), !dbg !1549
	%608 = load i32, i32* %8, align 4, !dbg !1550, !tbaa !1179
	call void @llvm.dbg.value(metadata i32 %608, i64 0, metadata !821, metadata !688), !dbg !1544
	%609 = icmp eq i32 %608, 0, !dbg !1551
	%610 = load i32, i32* %9, align 4, !dbg !1552
	call void @llvm.dbg.value(metadata i32 %610, i64 0, metadata !822, metadata !688), !dbg !1547
	%611 = icmp eq i32 %610, 1, !dbg !1554
	%612 = and i1 %609, %611, !dbg !1555
	br i1 %612, label %613, label %632, !dbg !1555
	call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !825, metadata !688), !dbg !1556
	%614 = tail call i16** @__ctype_b_loc() #1, !dbg !1557
	%615 = load i16*, i16** %614, align 8, !tbaa !696
	br label %616, !dbg !1558
	%617 = phi i64 [ 0, %613 ], [ %630, %629 ]
	%618 = getelementptr inbounds i16, i16* %615, i64 %617, !dbg !1557
	%619 = load i16, i16* %618, align 2, !dbg !1557, !tbaa !1143
	%620 = and i16 %619, 512, !dbg !1557
	%621 = icmp eq i16 %620, 0, !dbg !1557
	br i1 %621, label %629, label %622, !dbg !1560
	call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !1561, metadata !688) #10, !dbg !1566
	%623 = tail call i32** @__ctype_toupper_loc() #1, !dbg !1571
	%624 = load i32*, i32** %623, align 8, !dbg !1573, !tbaa !696
	%625 = getelementptr inbounds i32, i32* %624, i64 %617, !dbg !1574
	%626 = load i32, i32* %625, align 4, !dbg !1574, !tbaa !903
	call void @llvm.dbg.value(metadata i32 %626, i64 0, metadata !830, metadata !688), !dbg !1575
	%627 = trunc i32 %626 to i8, !dbg !1576
	%628 = getelementptr inbounds [256 x i8], [256 x i8]* @xlate, i64 0, i64 %617, !dbg !1577
	store i8 %627, i8* %628, align 1, !dbg !1578, !tbaa !1179
	br label %629, !dbg !1577
	%630 = add nuw nsw i64 %617, 1, !dbg !1579
	%631 = icmp eq i64 %630, 256, !dbg !1581
	br i1 %631, label %663, label %616, !dbg !1558, !llvm.loop !1583
	%633 = icmp eq i32 %608, 1, !dbg !1586
	%634 = icmp eq i32 %610, 0, !dbg !1587
	%635 = and i1 %633, %634, !dbg !1589
	br i1 %635, label %636, label %655, !dbg !1589
	call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !834, metadata !688), !dbg !1590
	%637 = tail call i16** @__ctype_b_loc() #1, !dbg !1591
	%638 = load i16*, i16** %637, align 8, !tbaa !696
	br label %639, !dbg !1592
	%640 = phi i64 [ 0, %636 ], [ %653, %652 ]
	%641 = getelementptr inbounds i16, i16* %638, i64 %640, !dbg !1591
	%642 = load i16, i16* %641, align 2, !dbg !1591, !tbaa !1143
	%643 = and i16 %642, 256, !dbg !1591
	%644 = icmp eq i16 %643, 0, !dbg !1591
	br i1 %644, label %652, label %645, !dbg !1594
	call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !1595, metadata !688) #10, !dbg !1598
	%646 = tail call i32** @__ctype_tolower_loc() #1, !dbg !1603
	%647 = load i32*, i32** %646, align 8, !dbg !1605, !tbaa !696
	%648 = getelementptr inbounds i32, i32* %647, i64 %640, !dbg !1606
	%649 = load i32, i32* %648, align 4, !dbg !1606, !tbaa !903
	call void @llvm.dbg.value(metadata i32 %649, i64 0, metadata !838, metadata !688), !dbg !1607
	%650 = trunc i32 %649 to i8, !dbg !1608
	%651 = getelementptr inbounds [256 x i8], [256 x i8]* @xlate, i64 0, i64 %640, !dbg !1609
	store i8 %650, i8* %651, align 1, !dbg !1610, !tbaa !1179
	br label %652, !dbg !1609
	%653 = add nuw nsw i64 %640, 1, !dbg !1611
	%654 = icmp eq i64 %653, 256, !dbg !1613
	br i1 %654, label %664, label %639, !dbg !1592, !llvm.loop !1615
	%656 = icmp eq i32 %606, -1, !dbg !1618
	%657 = icmp eq i32 %607, -1, !dbg !1621
	%658 = or i1 %656, %657, !dbg !1623
	br i1 %658, label %676, label %659, !dbg !1623
	%660 = trunc i32 %607 to i8, !dbg !1624
	%661 = sext i32 %606 to i64, !dbg !1625
	%662 = getelementptr inbounds [256 x i8], [256 x i8]* @xlate, i64 0, i64 %661, !dbg !1625
	store i8 %660, i8* %662, align 1, !dbg !1626, !tbaa !1179
	br label %665
	br label %665, !dbg !1547
	br label %665, !dbg !1547
	call void @llvm.dbg.value(metadata i32 %610, i64 0, metadata !822, metadata !688), !dbg !1547
	%666 = icmp eq i32 %610, 2, !dbg !1627
	br i1 %666, label %605, label %667, !dbg !1629, !llvm.loop !1630
	call void @llvm.dbg.value(metadata %struct.Spec_list* %6, i64 0, metadata !756, metadata !958), !dbg !959
	tail call void @llvm.dbg.value(metadata %struct.Spec_list* %6, i64 0, metadata !1182, metadata !688), !dbg !1632
	%668 = load %struct.List_element*, %struct.List_element** %78, align 8, !dbg !1635, !tbaa !969
	%669 = getelementptr inbounds %struct.List_element, %struct.List_element* %668, i64 0, i32 1, !dbg !1636
	%670 = bitcast %struct.List_element** %669 to i64*, !dbg !1636
	%671 = load i64, i64* %670, align 8, !dbg !1636, !tbaa !976
	store i64 %671, i64* %600, align 8, !dbg !1637, !tbaa !969
	store i64 -1, i64* %598, align 8, !dbg !1638, !tbaa !1012
	tail call void @llvm.dbg.value(metadata %struct.Spec_list* %103, i64 0, metadata !1182, metadata !688), !dbg !1639
	%672 = load %struct.List_element*, %struct.List_element** %601, align 8, !dbg !1641, !tbaa !969
	%673 = getelementptr inbounds %struct.List_element, %struct.List_element* %672, i64 0, i32 1, !dbg !1642
	%674 = bitcast %struct.List_element** %673 to i64*, !dbg !1642
	%675 = load i64, i64* %674, align 8, !dbg !1642, !tbaa !976
	store i64 %675, i64* %602, align 8, !dbg !1643, !tbaa !969
	br label %603, !dbg !1644, !llvm.loop !1630
	%677 = xor i1 %656, true, !dbg !1645
	%678 = load i8, i8* @truncate_set1, align 1, !dbg !1648
	%679 = icmp eq i8 %678, 0, !dbg !1648
	%680 = and i1 %679, %677, !dbg !1645
	br i1 %680, label %681, label %682, !dbg !1645
	call void @__assert_fail(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0), i32 1885, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #14, !dbg !1650
	unreachable, !dbg !1650
	call void @llvm.lifetime.end(i64 4, i8* nonnull %596) #10, !dbg !1652
	call void @llvm.lifetime.end(i64 4, i8* nonnull %595) #10, !dbg !1652
	br label %684
	br label %684, !dbg !1653
	%685 = load i8, i8* @squeeze_repeats, align 1, !dbg !1653, !tbaa !896, !range !911
	%686 = icmp eq i8 %685, 0, !dbg !1653
	br i1 %686, label %687, label %688, !dbg !1654
	br label %701, !dbg !1655
	call void @llvm.dbg.value(metadata %struct.Spec_list* %103, i64 0, metadata !1391, metadata !688) #10, !dbg !1666
	call void @llvm.dbg.value(metadata i1 false, i64 0, metadata !1396, metadata !1404) #10, !dbg !1669
	%689 = getelementptr inbounds %struct.Spec_list, %struct.Spec_list* %103, i64 0, i32 2, !dbg !1670
	store i64 -2, i64* %689, align 8, !dbg !1671, !tbaa !1012
	%690 = call fastcc i32 @get_next(%struct.Spec_list* %103, i32* null) #10, !dbg !1672
	call void @llvm.dbg.value(metadata i32 %690, i64 0, metadata !1398, metadata !688) #10, !dbg !1673
	%691 = icmp eq i32 %690, -1, !dbg !1674
	br i1 %691, label %700, label %692, !dbg !1675
	br label %693, !dbg !1676
	%694 = phi i32 [ %697, %693 ], [ %690, %692 ]
	%695 = sext i32 %694 to i64, !dbg !1676
	%696 = getelementptr inbounds [256 x i8], [256 x i8]* @in_squeeze_set, i64 0, i64 %695, !dbg !1676
	store i8 1, i8* %696, align 1, !dbg !1677, !tbaa !896
	%697 = call fastcc i32 @get_next(%struct.Spec_list* %103, i32* null) #10, !dbg !1672
	call void @llvm.dbg.value(metadata i32 %697, i64 0, metadata !1398, metadata !688) #10, !dbg !1673
	%698 = icmp eq i32 %697, -1, !dbg !1674
	br i1 %698, label %699, label %693, !dbg !1675, !llvm.loop !1415
	br label %700, !dbg !1678
	call fastcc void @squeeze_filter(i64 (i8*, i64)* nonnull @read_and_xlate), !dbg !1678
	br label %768, !dbg !1679
	call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @io_buf, i64 0, i64 0), i64 0, metadata !1660, metadata !688) #10, !dbg !1655
	call void @llvm.dbg.value(metadata i64 8192, i64 0, metadata !1661, metadata !688) #10, !dbg !1680
	call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @io_buf, i64 0, i64 0), i64 0, metadata !1681, metadata !688) #10, !dbg !1686
	call void @llvm.dbg.value(metadata i64 8192, i64 0, metadata !1684, metadata !688) #10, !dbg !1688
	%702 = call i64 @safe_read(i32 0, i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @io_buf, i64 0, i64 0), i64 8192) #10, !dbg !1689
	call void @llvm.dbg.value(metadata i64 %702, i64 0, metadata !1685, metadata !688) #10, !dbg !1690
	switch i64 %702, label %703 [
		i64 -1, label %724
		i64 0, label %767
	], !dbg !1691
	%704 = add i64 %702, -1, !dbg !1692
	%705 = and i64 %702, 3, !dbg !1692
	%706 = icmp eq i64 %705, 0, !dbg !1692
	br i1 %706, label %720, label %707, !dbg !1692
	br label %708, !dbg !1692
	%709 = phi i64 [ %716, %708 ], [ 0, %707 ]
	%710 = phi i64 [ %717, %708 ], [ %705, %707 ]
	%711 = getelementptr inbounds [8192 x i8], [8192 x i8]* @io_buf, i64 0, i64 %709, !dbg !1692
	%712 = load i8, i8* %711, align 1, !dbg !1692, !tbaa !1179
	%713 = zext i8 %712 to i64, !dbg !1694
	%714 = getelementptr inbounds [256 x i8], [256 x i8]* @xlate, i64 0, i64 %713, !dbg !1694
	%715 = load i8, i8* %714, align 1, !dbg !1694, !tbaa !1179
	store i8 %715, i8* %711, align 1, !dbg !1695, !tbaa !1179
	%716 = add nuw i64 %709, 1, !dbg !1696
	call void @llvm.dbg.value(metadata i64 %716, i64 0, metadata !1663, metadata !688) #10, !dbg !1698
	call void @llvm.dbg.value(metadata i64 %716, i64 0, metadata !1663, metadata !688) #10, !dbg !1698
	%717 = add i64 %710, -1, !dbg !1699
	%718 = icmp eq i64 %717, 0, !dbg !1699
	br i1 %718, label %719, label %708, !dbg !1699, !llvm.loop !1701
	br label %720, !dbg !1692
	%721 = phi i64 [ 0, %703 ], [ %716, %719 ]
	%722 = icmp ult i64 %704, 3, !dbg !1692
	br i1 %722, label %756, label %723, !dbg !1692
	br label %728, !dbg !1692
	%725 = tail call i32* @__errno_location() #1, !dbg !1703
	%726 = load i32, i32* %725, align 4, !dbg !1703, !tbaa !903
	%727 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.95, i64 0, i64 0), i32 5) #10, !dbg !1705
	call void (i32, i32, i8*, ...) @error(i32 1, i32 %726, i8* %727) #10, !dbg !1707
	unreachable, !dbg !1703
	%729 = phi i64 [ %721, %723 ], [ %753, %728 ]
	%730 = getelementptr inbounds [8192 x i8], [8192 x i8]* @io_buf, i64 0, i64 %729, !dbg !1692
	%731 = load i8, i8* %730, align 1, !dbg !1692, !tbaa !1179
	%732 = zext i8 %731 to i64, !dbg !1694
	%733 = getelementptr inbounds [256 x i8], [256 x i8]* @xlate, i64 0, i64 %732, !dbg !1694
	%734 = load i8, i8* %733, align 1, !dbg !1694, !tbaa !1179
	store i8 %734, i8* %730, align 1, !dbg !1695, !tbaa !1179
	%735 = add nuw i64 %729, 1, !dbg !1696
	call void @llvm.dbg.value(metadata i64 %735, i64 0, metadata !1663, metadata !688) #10, !dbg !1698
	call void @llvm.dbg.value(metadata i64 %735, i64 0, metadata !1663, metadata !688) #10, !dbg !1698
	%736 = getelementptr inbounds [8192 x i8], [8192 x i8]* @io_buf, i64 0, i64 %735, !dbg !1692
	%737 = load i8, i8* %736, align 1, !dbg !1692, !tbaa !1179
	%738 = zext i8 %737 to i64, !dbg !1694
	%739 = getelementptr inbounds [256 x i8], [256 x i8]* @xlate, i64 0, i64 %738, !dbg !1694
	%740 = load i8, i8* %739, align 1, !dbg !1694, !tbaa !1179
	store i8 %740, i8* %736, align 1, !dbg !1695, !tbaa !1179
	%741 = add i64 %729, 2, !dbg !1696
	call void @llvm.dbg.value(metadata i64 %735, i64 0, metadata !1663, metadata !688) #10, !dbg !1698
	call void @llvm.dbg.value(metadata i64 %735, i64 0, metadata !1663, metadata !688) #10, !dbg !1698
	%742 = getelementptr inbounds [8192 x i8], [8192 x i8]* @io_buf, i64 0, i64 %741, !dbg !1692
	%743 = load i8, i8* %742, align 1, !dbg !1692, !tbaa !1179
	%744 = zext i8 %743 to i64, !dbg !1694
	%745 = getelementptr inbounds [256 x i8], [256 x i8]* @xlate, i64 0, i64 %744, !dbg !1694
	%746 = load i8, i8* %745, align 1, !dbg !1694, !tbaa !1179
	store i8 %746, i8* %742, align 1, !dbg !1695, !tbaa !1179
	%747 = add i64 %729, 3, !dbg !1696
	call void @llvm.dbg.value(metadata i64 %735, i64 0, metadata !1663, metadata !688) #10, !dbg !1698
	call void @llvm.dbg.value(metadata i64 %735, i64 0, metadata !1663, metadata !688) #10, !dbg !1698
	%748 = getelementptr inbounds [8192 x i8], [8192 x i8]* @io_buf, i64 0, i64 %747, !dbg !1692
	%749 = load i8, i8* %748, align 1, !dbg !1692, !tbaa !1179
	%750 = zext i8 %749 to i64, !dbg !1694
	%751 = getelementptr inbounds [256 x i8], [256 x i8]* @xlate, i64 0, i64 %750, !dbg !1694
	%752 = load i8, i8* %751, align 1, !dbg !1694, !tbaa !1179
	store i8 %752, i8* %748, align 1, !dbg !1695, !tbaa !1179
	%753 = add i64 %729, 4, !dbg !1696
	call void @llvm.dbg.value(metadata i64 %735, i64 0, metadata !1663, metadata !688) #10, !dbg !1698
	call void @llvm.dbg.value(metadata i64 %735, i64 0, metadata !1663, metadata !688) #10, !dbg !1698
	%754 = icmp eq i64 %753, %702, !dbg !1709
	br i1 %754, label %755, label %728, !dbg !1699, !llvm.loop !1711
	br label %756, !dbg !1714
	call void @llvm.dbg.value(metadata i64 %702, i64 0, metadata !842, metadata !688), !dbg !1714
	%757 = icmp eq i64 %702, 0, !dbg !1715
	br i1 %757, label %767, label %758, !dbg !1717
	%759 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1718, !tbaa !696
	%760 = call i64 @fwrite_unlocked(i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @io_buf, i64 0, i64 0), i64 1, i64 %702, %struct._IO_FILE* %759) #10, !dbg !1718
	%761 = icmp eq i64 %760, %702, !dbg !1720
	br i1 %761, label %701, label %762, !dbg !1721
	%763 = tail call i32* @__errno_location() #1, !dbg !1722
	%764 = load i32, i32* %763, align 4, !dbg !1722, !tbaa !903
	%765 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i64 0, i64 0), i32 5) #10, !dbg !1723
	call void (i32, i32, i8*, ...) @error(i32 1, i32 %764, i8* %765) #10, !dbg !1725
	unreachable, !dbg !1722
	br label %768, !dbg !1727
	br label %768, !dbg !1727
	%769 = call i32 @close(i32 0) #10, !dbg !1727
	%770 = icmp eq i32 %769, 0, !dbg !1729
	br i1 %770, label %775, label %771, !dbg !1730
	%772 = tail call i32* @__errno_location() #1, !dbg !1731
	%773 = load i32, i32* %772, align 4, !dbg !1731, !tbaa !903
	%774 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i64 0, i64 0), i32 5) #10, !dbg !1732
	call void (i32, i32, i8*, ...) @error(i32 1, i32 %773, i8* %774) #10, !dbg !1734
	unreachable, !dbg !1731
	%776 = phi i32 [ 1, %76 ], [ 1, %89 ], [ 0, %768 ]
	call void @llvm.lifetime.end(i64 56, i8* nonnull %11) #10, !dbg !1736
	call void @llvm.lifetime.end(i64 56, i8* nonnull %10) #10, !dbg !1736
	ret i32 %776, !dbg !1736
}
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1
declare void @llvm.lifetime.start(i64, i8* nocapture) #7
declare i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2
declare i8* @textdomain(i8*) local_unnamed_addr #2
declare i32 @atexit(void ()*) local_unnamed_addr #2
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2
declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3
define internal fastcc zeroext i1 @parse_str(i8* nocapture readonly, %struct.Spec_list* nocapture) unnamed_addr #6 !dbg !1737 {
	%3 = alloca i8*, align 8
	%4 = alloca i64, align 8
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1741, metadata !688), !dbg !1750
	tail call void @llvm.dbg.value(metadata %struct.Spec_list* %1, i64 0, metadata !1742, metadata !688), !dbg !1751
	tail call void @llvm.dbg.value(metadata %struct.E_string* undef, i64 0, metadata !1743, metadata !958), !dbg !1752
	%5 = tail call i64 @strlen(i8* %0) #13, !dbg !1753
	tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !1761, metadata !688) #10, !dbg !1770
	%6 = tail call noalias i8* @xmalloc(i64 %5) #10, !dbg !1771
	%7 = tail call noalias i8* @xcalloc(i64 %5, i64 1) #10, !dbg !1772
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1762, metadata !688) #10, !dbg !1773
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1763, metadata !688) #10, !dbg !1774
	br label %8, !dbg !1775
	%9 = phi i32 [ 0, %2 ], [ %79, %75 ]
	%10 = phi i32 [ 0, %2 ], [ %81, %75 ]
	tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1763, metadata !688) #10, !dbg !1774
	tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1762, metadata !688) #10, !dbg !1773
	%11 = zext i32 %10 to i64, !dbg !1776
	%12 = getelementptr inbounds i8, i8* %0, i64 %11, !dbg !1776
	%13 = load i8, i8* %12, align 1, !dbg !1776, !tbaa !1179
	switch i8 %13, label %14 [
		i8 0, label %82
		i8 92, label %16
	], !dbg !1778
	%15 = zext i32 %9 to i64
	br label %75, !dbg !1778
	%17 = zext i32 %9 to i64, !dbg !1780
	%18 = getelementptr inbounds i8, i8* %7, i64 %17, !dbg !1780
	store i8 1, i8* %18, align 1, !dbg !1782, !tbaa !896
	%19 = add i32 %10, 1, !dbg !1783
	%20 = zext i32 %19 to i64, !dbg !1784
	%21 = getelementptr inbounds i8, i8* %0, i64 %20, !dbg !1784
	%22 = load i8, i8* %21, align 1, !dbg !1784, !tbaa !1179
	%23 = sext i8 %22 to i32, !dbg !1784
	switch i32 %23, label %70 [
		i32 92, label %71
		i32 97, label %24
		i32 98, label %25
		i32 102, label %26
		i32 110, label %27
		i32 114, label %28
		i32 116, label %29
		i32 118, label %30
		i32 48, label %31
		i32 49, label %31
		i32 50, label %31
		i32 51, label %31
		i32 52, label %31
		i32 53, label %31
		i32 54, label %31
		i32 55, label %31
		i32 0, label %67
	], !dbg !1785
	tail call void @llvm.dbg.value(metadata i8 7, i64 0, metadata !1765, metadata !688) #10, !dbg !1786
	br label %71, !dbg !1787
	tail call void @llvm.dbg.value(metadata i8 8, i64 0, metadata !1765, metadata !688) #10, !dbg !1786
	br label %71, !dbg !1789
	tail call void @llvm.dbg.value(metadata i8 12, i64 0, metadata !1765, metadata !688) #10, !dbg !1786
	br label %71, !dbg !1790
	tail call void @llvm.dbg.value(metadata i8 10, i64 0, metadata !1765, metadata !688) #10, !dbg !1786
	br label %71, !dbg !1791
	tail call void @llvm.dbg.value(metadata i8 13, i64 0, metadata !1765, metadata !688) #10, !dbg !1786
	br label %71, !dbg !1792
	tail call void @llvm.dbg.value(metadata i8 9, i64 0, metadata !1765, metadata !688) #10, !dbg !1786
	br label %71, !dbg !1793
	tail call void @llvm.dbg.value(metadata i8 11, i64 0, metadata !1765, metadata !688) #10, !dbg !1786
	br label %71, !dbg !1794
	%32 = add i8 %22, -48, !dbg !1795
	tail call void @llvm.dbg.value(metadata i8 %32, i64 0, metadata !1765, metadata !688) #10, !dbg !1786
	%33 = add i32 %10, 2, !dbg !1796
	%34 = zext i32 %33 to i64, !dbg !1797
	%35 = getelementptr inbounds i8, i8* %0, i64 %34, !dbg !1797
	%36 = load i8, i8* %35, align 1, !dbg !1797, !tbaa !1179
	%37 = sext i8 %36 to i32, !dbg !1797
	%38 = add nsw i32 %37, -48, !dbg !1798
	tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !1768, metadata !688) #10, !dbg !1799
	%39 = icmp ult i32 %38, 8, !dbg !1800
	br i1 %39, label %40, label %71, !dbg !1800
	%41 = zext i8 %32 to i32, !dbg !1802
	%42 = shl nuw nsw i32 %41, 3, !dbg !1804
	%43 = add nsw i32 %38, %42, !dbg !1805
	%44 = trunc i32 %43 to i8, !dbg !1806
	tail call void @llvm.dbg.value(metadata i8 %44, i64 0, metadata !1765, metadata !688) #10, !dbg !1786
	tail call void @llvm.dbg.value(metadata i32 %19, i64 0, metadata !1763, metadata !688) #10, !dbg !1774
	%45 = add i32 %10, 3, !dbg !1807
	%46 = zext i32 %45 to i64, !dbg !1808
	%47 = getelementptr inbounds i8, i8* %0, i64 %46, !dbg !1808
	%48 = load i8, i8* %47, align 1, !dbg !1808, !tbaa !1179
	%49 = sext i8 %48 to i32, !dbg !1808
	%50 = add nsw i32 %49, -48, !dbg !1809
	tail call void @llvm.dbg.value(metadata i32 %50, i64 0, metadata !1768, metadata !688) #10, !dbg !1799
	%51 = icmp ult i32 %50, 8, !dbg !1810
	br i1 %51, label %52, label %71, !dbg !1810
	%53 = shl nsw i32 %43, 3, !dbg !1812
	%54 = and i32 %53, 2040, !dbg !1812
	%55 = add nsw i32 %50, %54, !dbg !1815
	%56 = icmp slt i32 %55, 256, !dbg !1816
	br i1 %56, label %57, label %59, !dbg !1817
	%58 = trunc i32 %55 to i8, !dbg !1818
	tail call void @llvm.dbg.value(metadata i8 %58, i64 0, metadata !1765, metadata !688) #10, !dbg !1786
	tail call void @llvm.dbg.value(metadata i32 %33, i64 0, metadata !1763, metadata !688) #10, !dbg !1774
	br label %71, !dbg !1820
	%60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.49, i64 0, i64 0), i32 5) #10, !dbg !1821
	%61 = load i8, i8* %21, align 1, !dbg !1823, !tbaa !1179
	%62 = sext i8 %61 to i32, !dbg !1823
	%63 = load i8, i8* %35, align 1, !dbg !1824, !tbaa !1179
	%64 = sext i8 %63 to i32, !dbg !1824
	%65 = load i8, i8* %47, align 1, !dbg !1825, !tbaa !1179
	%66 = sext i8 %65 to i32, !dbg !1825
	tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %60, i32 %62, i32 %64, i32 %66, i32 %62, i32 %64, i32 %66) #10, !dbg !1826
	br label %71
	%68 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.50, i64 0, i64 0), i32 5) #10, !dbg !1828
	tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %68) #10, !dbg !1829
	store i8 0, i8* %18, align 1, !dbg !1831, !tbaa !896
	%69 = add i32 %10, -1, !dbg !1832
	tail call void @llvm.dbg.value(metadata i32 %69, i64 0, metadata !1763, metadata !688) #10, !dbg !1774
	tail call void @llvm.dbg.value(metadata i8 92, i64 0, metadata !1765, metadata !688) #10, !dbg !1786
	br label %71, !dbg !1833
	tail call void @llvm.dbg.value(metadata i8 %22, i64 0, metadata !1765, metadata !688) #10, !dbg !1786
	br label %71, !dbg !1834
	%72 = phi i32 [ %10, %70 ], [ %69, %67 ], [ %33, %57 ], [ %19, %59 ], [ %19, %40 ], [ %10, %31 ], [ %10, %30 ], [ %10, %29 ], [ %10, %28 ], [ %10, %27 ], [ %10, %26 ], [ %10, %25 ], [ %10, %24 ], [ %10, %16 ]
	%73 = phi i8 [ %22, %70 ], [ 92, %67 ], [ %58, %57 ], [ %44, %59 ], [ %44, %40 ], [ %32, %31 ], [ 11, %30 ], [ 9, %29 ], [ 13, %28 ], [ 10, %27 ], [ 12, %26 ], [ 8, %25 ], [ 7, %24 ], [ 92, %16 ]
	tail call void @llvm.dbg.value(metadata i8 %73, i64 0, metadata !1765, metadata !688) #10, !dbg !1786
	tail call void @llvm.dbg.value(metadata i32 %72, i64 0, metadata !1763, metadata !688) #10, !dbg !1774
	%74 = add i32 %72, 1, !dbg !1835
	tail call void @llvm.dbg.value(metadata i32 %74, i64 0, metadata !1763, metadata !688) #10, !dbg !1774
	br label %75, !dbg !1836
	%76 = phi i64 [ %15, %14 ], [ %17, %71 ]
	%77 = phi i32 [ %10, %14 ], [ %74, %71 ]
	%78 = phi i8 [ %13, %14 ], [ %73, %71 ]
	%79 = add i32 %9, 1
	tail call void @llvm.dbg.value(metadata i32 %77, i64 0, metadata !1763, metadata !688) #10, !dbg !1774
	tail call void @llvm.dbg.value(metadata i32 %79, i64 0, metadata !1762, metadata !688) #10, !dbg !1773
	%80 = getelementptr inbounds i8, i8* %6, i64 %76
	store i8 %78, i8* %80, align 1, !tbaa !1179
	%81 = add i32 %77, 1, !dbg !1837
	tail call void @llvm.dbg.value(metadata i32 %81, i64 0, metadata !1763, metadata !688) #10, !dbg !1774
	br label %8, !dbg !1839, !llvm.loop !1840
	%83 = zext i32 %9 to i64, !dbg !1843
	tail call void @llvm.dbg.value(metadata %struct.E_string* undef, i64 0, metadata !1743, metadata !958), !dbg !1752
	tail call void @llvm.dbg.value(metadata %struct.E_string* undef, i64 0, metadata !1844, metadata !688) #10, !dbg !1884
	tail call void @llvm.dbg.value(metadata %struct.Spec_list* %1, i64 0, metadata !1851, metadata !688) #10, !dbg !1887
	tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !1852, metadata !688) #10, !dbg !1888
	tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1853, metadata !688) #10, !dbg !1889
	tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1853, metadata !688) #10, !dbg !1889
	%84 = icmp ugt i32 %9, 2, !dbg !1890
	br i1 %84, label %85, label %96, !dbg !1892
	%86 = bitcast i64* %4 to i8*
	%87 = getelementptr inbounds %struct.Spec_list, %struct.Spec_list* %1, i64 0, i32 1
	%88 = bitcast %struct.List_element** %87 to i8**
	%89 = bitcast i8** %3 to i8*
	%90 = add nsw i64 %83, -1
	br label %91, !dbg !1892
	%92 = phi i64 [ 2, %85 ], [ %336, %332 ]
	%93 = phi i64 [ 0, %85 ], [ %335, %332 ]
	br label %102, !dbg !1892
	br label %96, !dbg !1889
	br label %96, !dbg !1889
	%97 = phi i64 [ 0, %82 ], [ %419, %94 ], [ %335, %95 ]
	call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !1853, metadata !688) #10, !dbg !1889
	%98 = icmp ult i64 %97, %83, !dbg !1894
	br i1 %98, label %99, label %440, !dbg !1898
	%100 = getelementptr inbounds %struct.Spec_list, %struct.Spec_list* %1, i64 0, i32 1
	%101 = bitcast %struct.List_element** %100 to i8**
	br label %422, !dbg !1898
	%103 = phi i64 [ %92, %91 ], [ %420, %418 ]
	%104 = phi i64 [ %93, %91 ], [ %419, %418 ]
	call void @llvm.dbg.value(metadata %struct.E_string* undef, i64 0, metadata !1900, metadata !688) #10, !dbg !1907
	call void @llvm.dbg.value(metadata i64 %104, i64 0, metadata !1905, metadata !688) #10, !dbg !1909
	call void @llvm.dbg.value(metadata i8 91, i64 0, metadata !1906, metadata !688) #10, !dbg !1910
	%105 = getelementptr inbounds i8, i8* %6, i64 %104, !dbg !1911
	%106 = load i8, i8* %105, align 1, !dbg !1911, !tbaa !1179
	%107 = icmp eq i8 %106, 91, !dbg !1912
	br i1 %107, label %108, label %347, !dbg !1913
	%109 = getelementptr inbounds i8, i8* %7, i64 %104, !dbg !1914
	%110 = load i8, i8* %109, align 1, !dbg !1914, !tbaa !896, !range !911
	%111 = icmp eq i8 %110, 0, !dbg !1916
	br i1 %111, label %112, label %347, !dbg !1917
	call void @llvm.lifetime.start(i64 8, i8* nonnull %86) #10, !dbg !1918
	call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1854, metadata !688) #10, !dbg !1919
	%113 = add i64 %104, 1, !dbg !1920
	call void @llvm.dbg.value(metadata %struct.E_string* undef, i64 0, metadata !1900, metadata !688) #10, !dbg !1921
	call void @llvm.dbg.value(metadata i64 %113, i64 0, metadata !1905, metadata !688) #10, !dbg !1923
	call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1906, metadata !688) #10, !dbg !1924
	%114 = getelementptr inbounds i8, i8* %6, i64 %113, !dbg !1925
	%115 = load i8, i8* %114, align 1, !dbg !1925, !tbaa !1179
	switch i8 %115, label %268 [
		i8 58, label %116
		i8 61, label %122
	], !dbg !1926
	%117 = getelementptr inbounds i8, i8* %7, i64 %113, !dbg !1927
	%118 = load i8, i8* %117, align 1, !dbg !1927, !tbaa !896, !range !911
	%119 = icmp eq i8 %118, 0, !dbg !1928
	%120 = icmp ugt i64 %90, %103, !dbg !1929
	%121 = and i1 %119, %120, !dbg !1943
	call void @llvm.dbg.value(metadata %struct.E_string* undef, i64 0, metadata !1937, metadata !688) #10, !dbg !1944
	call void @llvm.dbg.value(metadata i64 %103, i64 0, metadata !1938, metadata !688) #10, !dbg !1945
	call void @llvm.dbg.value(metadata i8 %115, i64 0, metadata !1939, metadata !688) #10, !dbg !1946
	call void @llvm.dbg.value(metadata i64 %103, i64 0, metadata !1941, metadata !688) #10, !dbg !1947
	call void @llvm.dbg.value(metadata i64 %103, i64 0, metadata !1941, metadata !688) #10, !dbg !1947
	br i1 %121, label %128, label %268, !dbg !1943
	%123 = getelementptr inbounds i8, i8* %7, i64 %113, !dbg !1948
	%124 = load i8, i8* %123, align 1, !dbg !1948, !tbaa !896, !range !911
	%125 = icmp eq i8 %124, 0, !dbg !1951
	%126 = icmp ugt i64 %90, %103, !dbg !1929
	%127 = and i1 %125, %126, !dbg !1952
	call void @llvm.dbg.value(metadata %struct.E_string* undef, i64 0, metadata !1937, metadata !688) #10, !dbg !1944
	call void @llvm.dbg.value(metadata i64 %103, i64 0, metadata !1938, metadata !688) #10, !dbg !1945
	call void @llvm.dbg.value(metadata i8 %115, i64 0, metadata !1939, metadata !688) #10, !dbg !1946
	call void @llvm.dbg.value(metadata i64 %103, i64 0, metadata !1941, metadata !688) #10, !dbg !1947
	call void @llvm.dbg.value(metadata i64 %103, i64 0, metadata !1941, metadata !688) #10, !dbg !1947
	br i1 %127, label %128, label %268, !dbg !1952
	br label %129, !dbg !1954
	%130 = phi i64 [ %134, %147 ], [ %103, %128 ]
	%131 = getelementptr inbounds i8, i8* %6, i64 %130, !dbg !1954
	%132 = load i8, i8* %131, align 1, !dbg !1954, !tbaa !1179
	%133 = icmp eq i8 %132, %115, !dbg !1956
	%134 = add nuw i64 %130, 1
	br i1 %133, label %135, label %147, !dbg !1957
	%136 = getelementptr inbounds i8, i8* %6, i64 %134, !dbg !1958
	%137 = load i8, i8* %136, align 1, !dbg !1958, !tbaa !1179
	%138 = icmp eq i8 %137, 93, !dbg !1960
	br i1 %138, label %139, label %147, !dbg !1961
	%140 = getelementptr inbounds i8, i8* %7, i64 %130, !dbg !1962
	%141 = load i8, i8* %140, align 1, !dbg !1962, !tbaa !896, !range !911
	%142 = icmp eq i8 %141, 0, !dbg !1962
	br i1 %142, label %143, label %147, !dbg !1963
	%144 = getelementptr inbounds i8, i8* %7, i64 %134, !dbg !1964
	%145 = load i8, i8* %144, align 1, !dbg !1964, !tbaa !896, !range !911
	%146 = icmp eq i8 %145, 0, !dbg !1964
	br i1 %146, label %149, label %147, !dbg !1966
	call void @llvm.dbg.value(metadata i64 %134, i64 0, metadata !1941, metadata !688) #10, !dbg !1947
	call void @llvm.dbg.value(metadata i64 %134, i64 0, metadata !1941, metadata !688) #10, !dbg !1947
	%148 = icmp ult i64 %134, %90, !dbg !1929
	br i1 %148, label %129, label %267, !dbg !1968, !llvm.loop !1970
	call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !1864, metadata !688) #10, !dbg !1973
	%150 = xor i64 %103, -1, !dbg !1974
	%151 = add i64 %130, %150, !dbg !1975
	%152 = add i64 %151, 1, !dbg !1976
	call void @llvm.dbg.value(metadata i64 %152, i64 0, metadata !1867, metadata !688) #10, !dbg !1977
	%153 = getelementptr inbounds i8, i8* %105, i64 2, !dbg !1978
	call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !1870, metadata !688) #10, !dbg !1979
	%154 = icmp eq i64 %152, 0, !dbg !1980
	%155 = icmp eq i8 %115, 58
	br i1 %154, label %156, label %161, !dbg !1982
	br i1 %155, label %157, label %159, !dbg !1983
	%158 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.51, i64 0, i64 0), i32 5) #10, !dbg !1985
	call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %158) #10, !dbg !1987
	br label %340, !dbg !1989
	%160 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.52, i64 0, i64 0), i32 5) #10, !dbg !1990
	call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %160) #10, !dbg !1991
	br label %340
	br i1 %155, label %162, label %221, !dbg !1992
	br label %163, !dbg !1993
	%164 = phi i64 [ %173, %172 ], [ 0, %162 ]
	%165 = getelementptr inbounds [12 x i8*], [12 x i8*]* @char_class_name, i64 0, i64 %164, !dbg !1993
	%166 = load i8*, i8** %165, align 8, !dbg !1993, !tbaa !696
	%167 = call i32 @strncmp(i8* %153, i8* %166, i64 %152) #13, !dbg !1993
	%168 = icmp eq i32 %167, 0, !dbg !1993
	br i1 %168, label %169, label %172, !dbg !2015
	%170 = call i64 @strlen(i8* %166) #13, !dbg !2016
	%171 = icmp eq i64 %170, %152, !dbg !2018
	br i1 %171, label %175, label %172, !dbg !2019
	%173 = add nuw nsw i64 %164, 1, !dbg !2021
	%174 = icmp ult i64 %173, 12, !dbg !2023
	br i1 %174, label %163, label %186, !dbg !2024, !llvm.loop !2026
	%176 = trunc i64 %164 to i32, !dbg !2019
	call void @llvm.dbg.value(metadata i32 %176, i64 0, metadata !2012, metadata !688) #10, !dbg !2029
	%177 = call noalias i8* @xmalloc(i64 32) #10, !dbg !2030
	%178 = getelementptr inbounds i8, i8* %177, i64 8, !dbg !2031
	%179 = bitcast i8* %178 to %struct.List_element**, !dbg !2031
	store %struct.List_element* null, %struct.List_element** %179, align 8, !dbg !2032, !tbaa !976
	%180 = bitcast i8* %177 to i32*, !dbg !2033
	store i32 2, i32* %180, align 8, !dbg !2034, !tbaa !1269
	%181 = getelementptr inbounds i8, i8* %177, i64 16, !dbg !2035
	%182 = bitcast i8* %181 to i32*, !dbg !2036
	store i32 %176, i32* %182, align 8, !dbg !2037, !tbaa !1179
	%183 = load %struct.List_element*, %struct.List_element** %87, align 8, !dbg !2038, !tbaa !969
	%184 = icmp eq %struct.List_element* %183, null, !dbg !2038
	br i1 %184, label %185, label %341, !dbg !2041
	call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.55, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0), i32 699, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @__PRETTY_FUNCTION__.append_char_class, i64 0, i64 0)) #14, !dbg !2042
	unreachable, !dbg !2042
	call void @llvm.dbg.value(metadata %struct.E_string* undef, i64 0, metadata !2044, metadata !688) #10, !dbg !2052
	call void @llvm.dbg.value(metadata i64 %103, i64 0, metadata !2049, metadata !688) #10, !dbg !2054
	call void @llvm.dbg.value(metadata %struct.E_string* undef, i64 0, metadata !1900, metadata !688) #10, !dbg !2055
	call void @llvm.dbg.value(metadata i64 %103, i64 0, metadata !1905, metadata !688) #10, !dbg !2058
	call void @llvm.dbg.value(metadata i8 42, i64 0, metadata !1906, metadata !688) #10, !dbg !2059
	%187 = getelementptr inbounds i8, i8* %6, i64 %103, !dbg !2060
	%188 = load i8, i8* %187, align 1, !dbg !2060, !tbaa !1179
	%189 = icmp eq i8 %188, 42, !dbg !2061
	br i1 %189, label %190, label %216, !dbg !2062
	%191 = getelementptr inbounds i8, i8* %7, i64 %103, !dbg !2063
	%192 = load i8, i8* %191, align 1, !dbg !2063, !tbaa !896, !range !911
	%193 = icmp eq i8 %192, 0, !dbg !2064
	br i1 %193, label %194, label %216, !dbg !2065
	br label %195
	%196 = phi i64 [ %197, %205 ], [ %103, %194 ]
	%197 = add nuw i64 %196, 1
	call void @llvm.dbg.value(metadata i64 %197, i64 0, metadata !2050, metadata !688) #10, !dbg !2066
	%198 = icmp ult i64 %197, %83, !dbg !2067
	br i1 %198, label %199, label %215, !dbg !2070
	%200 = getelementptr inbounds i8, i8* %6, i64 %197, !dbg !2072
	%201 = load i8, i8* %200, align 1, !dbg !2072, !tbaa !1179
	%202 = zext i8 %201 to i32, !dbg !2072
	%203 = add nsw i32 %202, -48, !dbg !2072
	%204 = icmp ult i32 %203, 10, !dbg !2072
	br i1 %204, label %205, label %209, !dbg !2074
	%206 = getelementptr inbounds i8, i8* %7, i64 %197, !dbg !2075
	%207 = load i8, i8* %206, align 1, !dbg !2075, !tbaa !896, !range !911
	%208 = icmp eq i8 %207, 0, !dbg !2075
	br i1 %208, label %195, label %209, !dbg !2077, !llvm.loop !2078
	call void @llvm.dbg.value(metadata %struct.E_string* undef, i64 0, metadata !1900, metadata !688) #10, !dbg !2081
	call void @llvm.dbg.value(metadata i64 %197, i64 0, metadata !1905, metadata !688) #10, !dbg !2083
	call void @llvm.dbg.value(metadata i8 93, i64 0, metadata !1906, metadata !688) #10, !dbg !2084
	%210 = icmp eq i8 %201, 93, !dbg !2085
	br i1 %210, label %211, label %216, !dbg !2086
	%212 = getelementptr inbounds i8, i8* %7, i64 %197, !dbg !2087
	%213 = load i8, i8* %212, align 1, !dbg !2087, !tbaa !896, !range !911
	%214 = icmp eq i8 %213, 0, !dbg !2088
	br i1 %214, label %268, label %216, !dbg !2089
	br label %217, !dbg !2090
	br label %217, !dbg !2090
	%218 = call fastcc i8* @make_printable_str(i8* %153, i64 %152) #10, !dbg !2090
	call void @llvm.dbg.value(metadata i8* %218, i64 0, metadata !1871, metadata !688) #10, !dbg !2091
	%219 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.53, i64 0, i64 0), i32 5) #10, !dbg !2092
	%220 = call i8* @quote(i8* %218) #10, !dbg !2093
	call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %219, i8* %220) #10, !dbg !2094
	call void @free(i8* %218) #10, !dbg !2096
	br label %340
	call void @llvm.dbg.value(metadata %struct.Spec_list* %1, i64 0, metadata !2097, metadata !688) #10, !dbg !2103
	call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !2100, metadata !688) #10, !dbg !2105
	call void @llvm.dbg.value(metadata i64 %152, i64 0, metadata !2101, metadata !688) #10, !dbg !2106
	%222 = icmp eq i64 %151, 0, !dbg !2107
	br i1 %222, label %223, label %233, !dbg !2109
	%224 = call noalias i8* @xmalloc(i64 32) #10, !dbg !2110
	%225 = getelementptr inbounds i8, i8* %224, i64 8, !dbg !2111
	%226 = bitcast i8* %225 to %struct.List_element**, !dbg !2111
	store %struct.List_element* null, %struct.List_element** %226, align 8, !dbg !2112, !tbaa !976
	%227 = bitcast i8* %224 to i32*, !dbg !2113
	store i32 3, i32* %227, align 8, !dbg !2114, !tbaa !1269
	%228 = load i8, i8* %153, align 1, !dbg !2115, !tbaa !1179
	%229 = getelementptr inbounds i8, i8* %224, i64 16, !dbg !2116
	store i8 %228, i8* %229, align 8, !dbg !2117, !tbaa !1179
	%230 = load %struct.List_element*, %struct.List_element** %87, align 8, !dbg !2118, !tbaa !969
	%231 = icmp eq %struct.List_element* %230, null, !dbg !2118
	br i1 %231, label %232, label %341, !dbg !2121
	call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.55, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0), i32 741, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @__PRETTY_FUNCTION__.append_equiv_class, i64 0, i64 0)) #14, !dbg !2122
	unreachable, !dbg !2122
	call void @llvm.dbg.value(metadata %struct.E_string* undef, i64 0, metadata !2044, metadata !688) #10, !dbg !2124
	call void @llvm.dbg.value(metadata i64 %103, i64 0, metadata !2049, metadata !688) #10, !dbg !2126
	call void @llvm.dbg.value(metadata %struct.E_string* undef, i64 0, metadata !1900, metadata !688) #10, !dbg !2127
	call void @llvm.dbg.value(metadata i64 %103, i64 0, metadata !1905, metadata !688) #10, !dbg !2129
	call void @llvm.dbg.value(metadata i8 42, i64 0, metadata !1906, metadata !688) #10, !dbg !2130
	%234 = getelementptr inbounds i8, i8* %6, i64 %103, !dbg !2131
	%235 = load i8, i8* %234, align 1, !dbg !2131, !tbaa !1179
	%236 = icmp eq i8 %235, 42, !dbg !2132
	br i1 %236, label %237, label %263, !dbg !2133
	%238 = getelementptr inbounds i8, i8* %7, i64 %103, !dbg !2134
	%239 = load i8, i8* %238, align 1, !dbg !2134, !tbaa !896, !range !911
	%240 = icmp eq i8 %239, 0, !dbg !2135
	br i1 %240, label %241, label %263, !dbg !2136
	br label %242
	%243 = phi i64 [ %244, %252 ], [ %103, %241 ]
	%244 = add nuw i64 %243, 1
	call void @llvm.dbg.value(metadata i64 %244, i64 0, metadata !2050, metadata !688) #10, !dbg !2137
	%245 = icmp ult i64 %244, %83, !dbg !2138
	br i1 %245, label %246, label %262, !dbg !2139
	%247 = getelementptr inbounds i8, i8* %6, i64 %244, !dbg !2140
	%248 = load i8, i8* %247, align 1, !dbg !2140, !tbaa !1179
	%249 = zext i8 %248 to i32, !dbg !2140
	%250 = add nsw i32 %249, -48, !dbg !2140
	%251 = icmp ult i32 %250, 10, !dbg !2140
	br i1 %251, label %252, label %256, !dbg !2141
	%253 = getelementptr inbounds i8, i8* %7, i64 %244, !dbg !2142
	%254 = load i8, i8* %253, align 1, !dbg !2142, !tbaa !896, !range !911
	%255 = icmp eq i8 %254, 0, !dbg !2142
	br i1 %255, label %242, label %256, !dbg !2143, !llvm.loop !2078
	call void @llvm.dbg.value(metadata %struct.E_string* undef, i64 0, metadata !1900, metadata !688) #10, !dbg !2144
	call void @llvm.dbg.value(metadata i64 %244, i64 0, metadata !1905, metadata !688) #10, !dbg !2146
	call void @llvm.dbg.value(metadata i8 93, i64 0, metadata !1906, metadata !688) #10, !dbg !2147
	%257 = icmp eq i8 %248, 93, !dbg !2148
	br i1 %257, label %258, label %263, !dbg !2149
	%259 = getelementptr inbounds i8, i8* %7, i64 %244, !dbg !2150
	%260 = load i8, i8* %259, align 1, !dbg !2150, !tbaa !896, !range !911
	%261 = icmp eq i8 %260, 0, !dbg !2151
	br i1 %261, label %268, label %263, !dbg !2152
	br label %264, !dbg !2153
	br label %264, !dbg !2153
	%265 = call fastcc i8* @make_printable_str(i8* %153, i64 %152) #10, !dbg !2153
	call void @llvm.dbg.value(metadata i8* %265, i64 0, metadata !1878, metadata !688) #10, !dbg !2154
	%266 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.54, i64 0, i64 0), i32 5) #10, !dbg !2155
	call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %266, i8* %265) #10, !dbg !2156
	call void @free(i8* %265) #10, !dbg !2157
	br label %340
	br label %268, !dbg !1889
	call void @llvm.dbg.value(metadata i64 %104, i64 0, metadata !1853, metadata !688) #10, !dbg !1889
	call void @llvm.dbg.value(metadata i64* %4, i64 0, metadata !1862, metadata !958) #10, !dbg !2158
	call void @llvm.dbg.value(metadata %struct.E_string* undef, i64 0, metadata !2159, metadata !688) #10, !dbg !2183
	call void @llvm.dbg.value(metadata i64* %4, i64 0, metadata !2167, metadata !688) #10, !dbg !2185
	%269 = add i64 %104, 2, !dbg !2186
	%270 = icmp ult i64 %269, %83, !dbg !2186
	br i1 %270, label %272, label %271, !dbg !2189
	call void @__assert_fail(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.77, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0), i32 782, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @__PRETTY_FUNCTION__.find_bracketed_repeat, i64 0, i64 0)) #14, !dbg !2190
	unreachable, !dbg !2190
	call void @llvm.dbg.value(metadata %struct.E_string* undef, i64 0, metadata !1900, metadata !688) #10, !dbg !2192
	call void @llvm.dbg.value(metadata i64 %269, i64 0, metadata !1905, metadata !688) #10, !dbg !2195
	call void @llvm.dbg.value(metadata i8 42, i64 0, metadata !1906, metadata !688) #10, !dbg !2196
	%273 = getelementptr inbounds i8, i8* %6, i64 %269, !dbg !2197
	%274 = load i8, i8* %273, align 1, !dbg !2197, !tbaa !1179
	%275 = icmp eq i8 %274, 42, !dbg !2198
	br i1 %275, label %276, label %339, !dbg !2199, !llvm.loop !2200
	%277 = getelementptr inbounds i8, i8* %7, i64 %269, !dbg !2203
	%278 = load i8, i8* %277, align 1, !dbg !2203, !tbaa !896, !range !911
	%279 = icmp eq i8 %278, 0, !dbg !2204
	br i1 %279, label %280, label %339, !dbg !2205, !llvm.loop !2200
	%281 = add i64 %104, 3, !dbg !2206
	call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !2169, metadata !688) #10, !dbg !2207
	call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !2169, metadata !688) #10, !dbg !2207
	%282 = icmp ult i64 %281, %83, !dbg !2208
	br i1 %282, label %283, label %339, !dbg !2210, !llvm.loop !2200
	br label %284, !dbg !2211
	%285 = phi i64 [ %314, %313 ], [ %281, %283 ]
	%286 = getelementptr inbounds i8, i8* %7, i64 %285, !dbg !2211
	%287 = load i8, i8* %286, align 1, !dbg !2211, !tbaa !896, !range !911
	%288 = icmp eq i8 %287, 0, !dbg !2213
	br i1 %288, label %289, label %338, !dbg !2214, !llvm.loop !2200
	%290 = getelementptr inbounds i8, i8* %6, i64 %285, !dbg !2216
	%291 = load i8, i8* %290, align 1, !dbg !2216, !tbaa !1179
	%292 = icmp eq i8 %291, 93, !dbg !2217
	br i1 %292, label %293, label %313, !dbg !2218
	%294 = sub i64 %285, %113, !dbg !2219
	%295 = add i64 %294, -2, !dbg !2220
	call void @llvm.dbg.value(metadata i64 %295, i64 0, metadata !2171, metadata !688) #10, !dbg !2221
	%296 = icmp eq i64 %295, 0, !dbg !2222
	br i1 %296, label %297, label %298, !dbg !2223
	store i64 0, i64* %4, align 8, !dbg !2224, !tbaa !2226
	br label %320, !dbg !2227
	%299 = getelementptr inbounds i8, i8* %6, i64 %281, !dbg !2228
	call void @llvm.dbg.value(metadata i8* %299, i64 0, metadata !2176, metadata !688) #10, !dbg !2229
	call void @llvm.lifetime.start(i64 8, i8* nonnull %89) #10, !dbg !2230
	%300 = load i8, i8* %299, align 1, !dbg !2231, !tbaa !1179
	%301 = icmp eq i8 %300, 48, !dbg !2232
	%302 = select i1 %301, i32 8, i32 10, !dbg !2231
	call void @llvm.dbg.value(metadata i8** %3, i64 0, metadata !2179, metadata !958) #10, !dbg !2233
	%303 = call i32 @xstrtoumax(i8* %299, i8** nonnull %3, i32 %302, i64* nonnull %4, i8* null) #10, !dbg !2234
	%304 = icmp ne i32 %303, 0, !dbg !2235
	%305 = load i64, i64* %4, align 8, !dbg !2236
	%306 = icmp eq i64 %305, -1, !dbg !2238
	%307 = or i1 %304, %306, !dbg !2239
	br i1 %307, label %316, label %308, !dbg !2239
	%309 = getelementptr inbounds i8, i8* %299, i64 %295, !dbg !2240
	%310 = load i8*, i8** %3, align 8, !dbg !2241, !tbaa !696
	call void @llvm.dbg.value(metadata i8* %310, i64 0, metadata !2179, metadata !688) #10, !dbg !2233
	%311 = icmp eq i8* %309, %310, !dbg !2242
	br i1 %311, label %312, label %316, !dbg !2243
	call void @llvm.lifetime.end(i64 8, i8* nonnull %89) #10, !dbg !2245
	br label %320
	%314 = add i64 %285, 1, !dbg !2246
	call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !2169, metadata !688) #10, !dbg !2207
	call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !2169, metadata !688) #10, !dbg !2207
	%315 = icmp ult i64 %314, %83, !dbg !2208
	br i1 %315, label %284, label %338, !dbg !2210, !llvm.loop !2200
	%317 = call fastcc i8* @make_printable_str(i8* %299, i64 %295) #10, !dbg !2248
	call void @llvm.dbg.value(metadata i8* %317, i64 0, metadata !2180, metadata !688) #10, !dbg !2249
	%318 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.78, i64 0, i64 0), i32 5) #10, !dbg !2250
	%319 = call i8* @quote(i8* %317) #10, !dbg !2251
	call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %318, i8* %319) #10, !dbg !2252
	call void @free(i8* %317) #10, !dbg !2253
	call void @llvm.lifetime.end(i64 8, i8* nonnull %89) #10, !dbg !2245
	call void @llvm.dbg.value(metadata i32 -2, i64 0, metadata !1863, metadata !688) #10, !dbg !2254
	call void @llvm.lifetime.end(i64 8, i8* nonnull %86) #10, !dbg !2255
	br label %440
	%321 = phi i64 [ %305, %312 ], [ 0, %297 ], !dbg !2256
	call void @llvm.dbg.value(metadata i32 -2, i64 0, metadata !1863, metadata !688) #10, !dbg !2254
	call void @llvm.dbg.value(metadata i8 %115, i64 0, metadata !1861, metadata !688) #10, !dbg !2259
	call void @llvm.dbg.value(metadata i64 %321, i64 0, metadata !1862, metadata !688) #10, !dbg !2158
	call void @llvm.dbg.value(metadata %struct.Spec_list* %1, i64 0, metadata !1287, metadata !688) #10, !dbg !2260
	call void @llvm.dbg.value(metadata i8 %115, i64 0, metadata !1292, metadata !688) #10, !dbg !2262
	call void @llvm.dbg.value(metadata i64 %321, i64 0, metadata !1293, metadata !688) #10, !dbg !2263
	%322 = call noalias i8* @xmalloc(i64 32) #10, !dbg !2264
	%323 = getelementptr inbounds i8, i8* %322, i64 8, !dbg !2265
	%324 = bitcast i8* %323 to %struct.List_element**, !dbg !2265
	store %struct.List_element* null, %struct.List_element** %324, align 8, !dbg !2266, !tbaa !976
	%325 = bitcast i8* %322 to i32*, !dbg !2267
	store i32 4, i32* %325, align 8, !dbg !2268, !tbaa !1269
	%326 = getelementptr inbounds i8, i8* %322, i64 16, !dbg !2269
	store i8 %115, i8* %326, align 8, !dbg !2270, !tbaa !1306
	%327 = getelementptr inbounds i8, i8* %322, i64 24, !dbg !2271
	%328 = bitcast i8* %327 to i64*, !dbg !2271
	store i64 %321, i64* %328, align 8, !dbg !2272, !tbaa !1067
	%329 = load %struct.List_element*, %struct.List_element** %87, align 8, !dbg !2273, !tbaa !969
	%330 = icmp eq %struct.List_element* %329, null, !dbg !2273
	br i1 %330, label %331, label %332, !dbg !2274
	call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.55, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0), i32 719, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__PRETTY_FUNCTION__.append_repeated_char, i64 0, i64 0)) #14, !dbg !2275
	unreachable, !dbg !2275
	%333 = getelementptr inbounds %struct.List_element, %struct.List_element* %329, i64 0, i32 1, !dbg !2276
	%334 = bitcast %struct.List_element** %333 to i8**, !dbg !2277
	store i8* %322, i8** %334, align 8, !dbg !2277, !tbaa !976
	store i8* %322, i8** %88, align 8, !dbg !2278, !tbaa !969
	call void @llvm.dbg.value(metadata i64 %285, i64 0, metadata !1860, metadata !688) #10, !dbg !2279
	%335 = add i64 %285, 1, !dbg !2280
	call void @llvm.dbg.value(metadata i64 %335, i64 0, metadata !1853, metadata !688) #10, !dbg !1889
	call void @llvm.dbg.value(metadata i64 undef, i64 0, metadata !1853, metadata !688) #10, !dbg !1889
	call void @llvm.lifetime.end(i64 8, i8* nonnull %86) #10, !dbg !2255
	call void @llvm.dbg.value(metadata i64 %335, i64 0, metadata !1853, metadata !688) #10, !dbg !1889
	%336 = add i64 %285, 3, !dbg !2281
	%337 = icmp ult i64 %336, %83, !dbg !1890
	br i1 %337, label %91, label %95, !dbg !1892
	br label %339, !dbg !2255
	call void @llvm.lifetime.end(i64 8, i8* nonnull %86) #10, !dbg !2255
	br label %347
	call void @llvm.lifetime.end(i64 8, i8* nonnull %86) #10, !dbg !2255
	br label %440
	%342 = phi %struct.List_element* [ %230, %223 ], [ %183, %175 ]
	%343 = phi i8* [ %224, %223 ], [ %177, %175 ]
	%344 = getelementptr inbounds %struct.List_element, %struct.List_element* %342, i64 0, i32 1
	%345 = bitcast %struct.List_element** %344 to i8**
	store i8* %343, i8** %345, align 8, !tbaa !976
	store i8* %343, i8** %88, align 8, !tbaa !969
	call void @llvm.dbg.value(metadata i64 %130, i64 0, metadata !1864, metadata !688) #10, !dbg !1973
	%346 = add i64 %130, 2, !dbg !2282
	call void @llvm.dbg.value(metadata i64 %346, i64 0, metadata !1853, metadata !688) #10, !dbg !1889
	call void @llvm.dbg.value(metadata i64 %346, i64 0, metadata !1853, metadata !688) #10, !dbg !1889
	call void @llvm.lifetime.end(i64 8, i8* nonnull %86) #10, !dbg !2255
	br label %418
	call void @llvm.dbg.value(metadata i64 %104, i64 0, metadata !1853, metadata !688) #10, !dbg !1889
	%348 = add i64 %104, 1, !dbg !2283
	call void @llvm.dbg.value(metadata %struct.E_string* undef, i64 0, metadata !1900, metadata !688) #10, !dbg !2285
	call void @llvm.dbg.value(metadata i64 %348, i64 0, metadata !1905, metadata !688) #10, !dbg !2287
	call void @llvm.dbg.value(metadata i8 45, i64 0, metadata !1906, metadata !688) #10, !dbg !2288
	%349 = getelementptr inbounds i8, i8* %6, i64 %348, !dbg !2289
	%350 = load i8, i8* %349, align 1, !dbg !2289, !tbaa !1179
	%351 = icmp eq i8 %350, 45, !dbg !2290
	br i1 %351, label %352, label %406, !dbg !2291
	%353 = getelementptr inbounds i8, i8* %7, i64 %348, !dbg !2292
	%354 = load i8, i8* %353, align 1, !dbg !2292, !tbaa !896, !range !911
	%355 = icmp eq i8 %354, 0, !dbg !2293
	br i1 %355, label %356, label %406, !dbg !2294
	%357 = add i64 %104, 2, !dbg !2295
	%358 = getelementptr inbounds i8, i8* %6, i64 %357, !dbg !2298
	%359 = load i8, i8* %358, align 1, !dbg !2298, !tbaa !1179
	call void @llvm.dbg.value(metadata %struct.Spec_list* %1, i64 0, metadata !2299, metadata !688) #10, !dbg !2311
	call void @llvm.dbg.value(metadata i8 %106, i64 0, metadata !2304, metadata !688) #10, !dbg !2313
	call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !2305, metadata !688) #10, !dbg !2314
	%360 = icmp ult i8 %359, %106, !dbg !2315
	br i1 %360, label %361, label %390, !dbg !2316
	call void @llvm.dbg.value(metadata i8 %106, i64 0, metadata !2317, metadata !688) #10, !dbg !2323
	%362 = call noalias i8* @xmalloc(i64 5) #10, !dbg !2325
	call void @llvm.dbg.value(metadata i8* %362, i64 0, metadata !2322, metadata !688) #10, !dbg !2326
	%363 = tail call i16** @__ctype_b_loc() #1, !dbg !2327
	%364 = load i16*, i16** %363, align 8, !dbg !2327, !tbaa !696
	%365 = zext i8 %106 to i64, !dbg !2327
	%366 = getelementptr inbounds i16, i16* %364, i64 %365, !dbg !2327
	%367 = load i16, i16* %366, align 2, !dbg !2327, !tbaa !1143
	%368 = and i16 %367, 16384, !dbg !2327
	%369 = icmp eq i16 %368, 0, !dbg !2327
	br i1 %369, label %372, label %370, !dbg !2329
	store i8 %106, i8* %362, align 1, !dbg !2330, !tbaa !1179
	%371 = getelementptr inbounds i8, i8* %362, i64 1, !dbg !2332
	store i8 0, i8* %371, align 1, !dbg !2333, !tbaa !1179
	br label %376, !dbg !2334
	%373 = zext i8 %106 to i32, !dbg !2327
	%374 = call i64 @llvm.objectsize.i64.p0i8(i8* %362, i1 false) #10, !dbg !2335
	%375 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %362, i32 1, i64 %374, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.76, i64 0, i64 0), i32 %373) #10, !dbg !2335
	br label %376
	call void @llvm.dbg.value(metadata i8* %362, i64 0, metadata !2306, metadata !688) #10, !dbg !2337
	call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !2317, metadata !688) #10, !dbg !2338
	%377 = call noalias i8* @xmalloc(i64 5) #10, !dbg !2340
	call void @llvm.dbg.value(metadata i8* %377, i64 0, metadata !2322, metadata !688) #10, !dbg !2341
	%378 = load i16*, i16** %363, align 8, !dbg !2342, !tbaa !696
	%379 = zext i8 %359 to i64, !dbg !2342
	%380 = getelementptr inbounds i16, i16* %378, i64 %379, !dbg !2342
	%381 = load i16, i16* %380, align 2, !dbg !2342, !tbaa !1143
	%382 = and i16 %381, 16384, !dbg !2342
	%383 = icmp eq i16 %382, 0, !dbg !2342
	br i1 %383, label %386, label %384, !dbg !2343
	store i8 %359, i8* %377, align 1, !dbg !2344, !tbaa !1179
	%385 = getelementptr inbounds i8, i8* %377, i64 1, !dbg !2345
	store i8 0, i8* %385, align 1, !dbg !2346, !tbaa !1179
	br label %400, !dbg !2347
	%387 = zext i8 %359 to i32, !dbg !2342
	%388 = call i64 @llvm.objectsize.i64.p0i8(i8* %377, i1 false) #10, !dbg !2348
	%389 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %377, i32 1, i64 %388, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.76, i64 0, i64 0), i32 %387) #10, !dbg !2348
	br label %400
	%391 = call noalias i8* @xmalloc(i64 32) #10, !dbg !2349
	%392 = getelementptr inbounds i8, i8* %391, i64 8, !dbg !2350
	%393 = bitcast i8* %392 to %struct.List_element**, !dbg !2350
	store %struct.List_element* null, %struct.List_element** %393, align 8, !dbg !2351, !tbaa !976
	%394 = bitcast i8* %391 to i32*, !dbg !2352
	store i32 1, i32* %394, align 8, !dbg !2353, !tbaa !1269
	%395 = getelementptr inbounds i8, i8* %391, i64 16, !dbg !2354
	store i8 %106, i8* %395, align 8, !dbg !2355, !tbaa !2356
	%396 = getelementptr inbounds i8, i8* %391, i64 17, !dbg !2358
	store i8 %359, i8* %396, align 1, !dbg !2359, !tbaa !2360
	%397 = load %struct.List_element*, %struct.List_element** %87, align 8, !dbg !2361, !tbaa !969
	%398 = icmp eq %struct.List_element* %397, null, !dbg !2361
	br i1 %398, label %399, label %402, !dbg !2364
	call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.55, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0), i32 677, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @__PRETTY_FUNCTION__.append_range, i64 0, i64 0)) #14, !dbg !2365
	unreachable, !dbg !2365
	call void @llvm.dbg.value(metadata i8* %377, i64 0, metadata !2309, metadata !688) #10, !dbg !2367
	%401 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.79, i64 0, i64 0), i32 5) #10, !dbg !2368
	call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %401, i8* %362, i8* %377) #10, !dbg !2369
	call void @free(i8* %362) #10, !dbg !2370
	call void @free(i8* %377) #10, !dbg !2371
	br label %440, !dbg !2372
	%403 = getelementptr inbounds %struct.List_element, %struct.List_element* %397, i64 0, i32 1, !dbg !2373
	%404 = bitcast %struct.List_element** %403 to i8**, !dbg !2374
	store i8* %391, i8** %404, align 8, !dbg !2374, !tbaa !976
	store i8* %391, i8** %88, align 8, !dbg !2375, !tbaa !969
	%405 = add i64 %104, 3, !dbg !2376
	call void @llvm.dbg.value(metadata i64 %405, i64 0, metadata !1853, metadata !688) #10, !dbg !1889
	br label %418, !dbg !2377
	call void @llvm.dbg.value(metadata %struct.Spec_list* %1, i64 0, metadata !2378, metadata !688) #10, !dbg !2385
	%407 = call noalias i8* @xmalloc(i64 32) #10, !dbg !2388
	%408 = getelementptr inbounds i8, i8* %407, i64 8, !dbg !2389
	%409 = bitcast i8* %408 to %struct.List_element**, !dbg !2389
	store %struct.List_element* null, %struct.List_element** %409, align 8, !dbg !2390, !tbaa !976
	%410 = bitcast i8* %407 to i32*, !dbg !2391
	store i32 0, i32* %410, align 8, !dbg !2392, !tbaa !1269
	%411 = getelementptr inbounds i8, i8* %407, i64 16, !dbg !2393
	store i8 %106, i8* %411, align 8, !dbg !2394, !tbaa !1179
	%412 = load %struct.List_element*, %struct.List_element** %87, align 8, !dbg !2395, !tbaa !969
	%413 = icmp eq %struct.List_element* %412, null, !dbg !2395
	br i1 %413, label %414, label %415, !dbg !2398
	call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.55, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0), i32 647, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @__PRETTY_FUNCTION__.append_normal_char, i64 0, i64 0)) #14, !dbg !2399
	unreachable, !dbg !2399
	%416 = getelementptr inbounds %struct.List_element, %struct.List_element* %412, i64 0, i32 1, !dbg !2401
	%417 = bitcast %struct.List_element** %416 to i8**, !dbg !2402
	store i8* %407, i8** %417, align 8, !dbg !2402, !tbaa !976
	store i8* %407, i8** %88, align 8, !dbg !2403, !tbaa !969
	call void @llvm.dbg.value(metadata i64 %348, i64 0, metadata !1853, metadata !688) #10, !dbg !1889
	br label %418
	%419 = phi i64 [ %346, %341 ], [ %405, %402 ], [ %348, %415 ]
	call void @llvm.dbg.value(metadata i64 %419, i64 0, metadata !1853, metadata !688) #10, !dbg !1889
	%420 = add i64 %419, 2, !dbg !2281
	%421 = icmp ult i64 %420, %83, !dbg !1890
	br i1 %421, label %102, label %94, !dbg !1892, !llvm.loop !2200
	%423 = phi i64 [ %97, %99 ], [ %437, %434 ]
	%424 = getelementptr inbounds i8, i8* %6, i64 %423, !dbg !2404
	%425 = load i8, i8* %424, align 1, !dbg !2404, !tbaa !1179
	call void @llvm.dbg.value(metadata %struct.Spec_list* %1, i64 0, metadata !2378, metadata !688) #10, !dbg !2405
	call void @llvm.dbg.value(metadata i8 %425, i64 0, metadata !2383, metadata !688) #10, !dbg !2407
	%426 = call noalias i8* @xmalloc(i64 32) #10, !dbg !2408
	%427 = getelementptr inbounds i8, i8* %426, i64 8, !dbg !2409
	%428 = bitcast i8* %427 to %struct.List_element**, !dbg !2409
	store %struct.List_element* null, %struct.List_element** %428, align 8, !dbg !2410, !tbaa !976
	%429 = bitcast i8* %426 to i32*, !dbg !2411
	store i32 0, i32* %429, align 8, !dbg !2412, !tbaa !1269
	%430 = getelementptr inbounds i8, i8* %426, i64 16, !dbg !2413
	store i8 %425, i8* %430, align 8, !dbg !2414, !tbaa !1179
	%431 = load %struct.List_element*, %struct.List_element** %100, align 8, !dbg !2415, !tbaa !969
	%432 = icmp eq %struct.List_element* %431, null, !dbg !2415
	br i1 %432, label %433, label %434, !dbg !2416
	call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.55, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0), i32 647, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @__PRETTY_FUNCTION__.append_normal_char, i64 0, i64 0)) #14, !dbg !2417
	unreachable, !dbg !2417
	%435 = getelementptr inbounds %struct.List_element, %struct.List_element* %431, i64 0, i32 1, !dbg !2418
	%436 = bitcast %struct.List_element** %435 to i8**, !dbg !2419
	store i8* %426, i8** %436, align 8, !dbg !2419, !tbaa !976
	store i8* %426, i8** %101, align 8, !dbg !2420, !tbaa !969
	%437 = add nuw nsw i64 %423, 1, !dbg !2421
	call void @llvm.dbg.value(metadata i64 %437, i64 0, metadata !1853, metadata !688) #10, !dbg !1889
	call void @llvm.dbg.value(metadata i64 %437, i64 0, metadata !1853, metadata !688) #10, !dbg !1889
	%438 = icmp ult i64 %437, %83, !dbg !1894
	br i1 %438, label %422, label %439, !dbg !1898, !llvm.loop !2423
	br label %440, !dbg !1752
	%441 = phi i1 [ false, %400 ], [ false, %316 ], [ false, %340 ], [ true, %96 ], [ true, %439 ]
	call void @llvm.dbg.value(metadata %struct.E_string* undef, i64 0, metadata !1743, metadata !958), !dbg !1752
	call void @llvm.dbg.value(metadata %struct.E_string* undef, i64 0, metadata !2426, metadata !688) #10, !dbg !2431
	call void @free(i8* %6) #10, !dbg !2433
	call void @free(i8* %7) #10, !dbg !2434
	ret i1 %441, !dbg !2435
}
define internal fastcc void @get_spec_stats(%struct.Spec_list* nocapture) unnamed_addr #6 !dbg !2436 {
	tail call void @llvm.dbg.value(metadata %struct.Spec_list* %0, i64 0, metadata !2438, metadata !688), !dbg !2451
	tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2440, metadata !688), !dbg !2452
	%2 = getelementptr inbounds %struct.Spec_list, %struct.Spec_list* %0, i64 0, i32 4, !dbg !2453
	store i64 0, i64* %2, align 8, !dbg !2454, !tbaa !1033
	%3 = getelementptr inbounds %struct.Spec_list, %struct.Spec_list* %0, i64 0, i32 6, !dbg !2455
	store i8 0, i8* %3, align 8, !dbg !2456, !tbaa !1083
	%4 = getelementptr inbounds %struct.Spec_list, %struct.Spec_list* %0, i64 0, i32 8, !dbg !2457
	store i8 0, i8* %4, align 2, !dbg !2458, !tbaa !1091
	%5 = getelementptr inbounds %struct.Spec_list, %struct.Spec_list* %0, i64 0, i32 7, !dbg !2459
	store i8 0, i8* %5, align 1, !dbg !2460, !tbaa !1131
	%6 = getelementptr inbounds %struct.Spec_list, %struct.Spec_list* %0, i64 0, i32 0, !dbg !2461
	%7 = load %struct.List_element*, %struct.List_element** %6, align 8, !dbg !2461, !tbaa !973
	%8 = getelementptr inbounds %struct.Spec_list, %struct.Spec_list* %0, i64 0, i32 5
	br label %9, !dbg !2462
	%10 = phi i64 [ 0, %1 ], [ %114, %113 ], !dbg !2463
	%11 = phi i64 [ 0, %1 ], [ %116, %113 ]
	%12 = phi %struct.List_element* [ %7, %1 ], [ %14, %113 ]
	%13 = getelementptr inbounds %struct.List_element, %struct.List_element* %12, i64 0, i32 1
	%14 = load %struct.List_element*, %struct.List_element** %13, align 8, !tbaa !976
	tail call void @llvm.dbg.value(metadata %struct.List_element* %14, i64 0, metadata !2439, metadata !688), !dbg !2466
	tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !2440, metadata !688), !dbg !2452
	%15 = icmp eq %struct.List_element* %14, null, !dbg !2467
	br i1 %15, label %122, label %16, !dbg !2467
	tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2441, metadata !688), !dbg !2469
	%17 = getelementptr inbounds %struct.List_element, %struct.List_element* %14, i64 0, i32 0, !dbg !2470
	%18 = load i32, i32* %17, align 8, !dbg !2470, !tbaa !1269
	switch i32 %18, label %112 [
		i32 0, label %113
		i32 1, label %22
		i32 2, label %36
		i32 3, label %19
		i32 4, label %106
	], !dbg !2471
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2449, metadata !688), !dbg !2472
	tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2441, metadata !688), !dbg !2469
	%20 = getelementptr inbounds %struct.List_element, %struct.List_element* %14, i64 0, i32 2, i32 0, i32 0
	%21 = load i8, i8* %20, align 8, !tbaa !1179
	br label %62, !dbg !2473
	%23 = getelementptr inbounds %struct.List_element, %struct.List_element* %14, i64 0, i32 2, !dbg !2475
	%24 = bitcast %union.anon* %23 to %struct.anon*, !dbg !2475
	%25 = getelementptr inbounds %struct.anon, %struct.anon* %24, i64 0, i32 1, !dbg !2475
	%26 = load i8, i8* %25, align 1, !dbg !2475, !tbaa !2360
	%27 = getelementptr inbounds %union.anon, %union.anon* %23, i64 0, i32 0, i32 0, !dbg !2475
	%28 = load i8, i8* %27, align 8, !dbg !2475, !tbaa !2356
	%29 = icmp ult i8 %26, %28, !dbg !2475
	br i1 %29, label %30, label %31, !dbg !2478
	tail call void @__assert_fail(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.87, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0), i32 1263, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__PRETTY_FUNCTION__.get_spec_stats, i64 0, i64 0)) #14, !dbg !2479
	unreachable, !dbg !2479
	%32 = zext i8 %26 to i64, !dbg !2475
	%33 = zext i8 %28 to i64, !dbg !2475
	%34 = add nuw nsw i64 %32, 1, !dbg !2481
	%35 = sub nsw i64 %34, %33, !dbg !2482
	tail call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !2441, metadata !688), !dbg !2469
	br label %113, !dbg !2483
	store i8 1, i8* %5, align 1, !dbg !2484, !tbaa !1131
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2446, metadata !688), !dbg !2485
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2446, metadata !688), !dbg !2485
	tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2441, metadata !688), !dbg !2469
	%37 = getelementptr inbounds %struct.List_element, %struct.List_element* %14, i64 0, i32 2
	%38 = bitcast %union.anon* %37 to i32*
	%39 = load i32, i32* %38, align 8, !tbaa !1179
	%40 = icmp ult i32 %39, 12
	%41 = sext i32 %39 to i64
	%42 = getelementptr inbounds [12 x i16], [12 x i16]* @switch.table, i64 0, i64 %41
	br label %44, !dbg !2486
	switch i32 %39, label %60 [
		i32 10, label %113
		i32 6, label %113
	], !dbg !2488
	%45 = phi i64 [ 0, %36 ], [ %58, %48 ]
	%46 = phi i64 [ 0, %36 ], [ %57, %48 ]
	tail call void @llvm.dbg.value(metadata i32 %39, i64 0, metadata !2489, metadata !688) #10, !dbg !2496
	br i1 %40, label %48, label %47, !dbg !2500
	tail call void @abort() #14, !dbg !2501
	unreachable, !dbg !2501
	%49 = load i16, i16* %42, align 2, !dbg !2500
	%50 = tail call i16** @__ctype_b_loc() #1, !dbg !2503
	%51 = load i16*, i16** %50, align 8, !tbaa !696
	%52 = getelementptr inbounds i16, i16* %51, i64 %45
	%53 = load i16, i16* %52, align 2, !tbaa !1143
	%54 = and i16 %53, %49
	%55 = icmp ne i16 %54, 0, !dbg !2504
	%56 = zext i1 %55 to i64, !dbg !2505
	%57 = add i64 %56, %46, !dbg !2505
	tail call void @llvm.dbg.value(metadata i64 %57, i64 0, metadata !2441, metadata !688), !dbg !2469
	%58 = add nuw nsw i64 %45, 1, !dbg !2506
	tail call void @llvm.dbg.value(metadata i64 %57, i64 0, metadata !2441, metadata !688), !dbg !2469
	%59 = icmp slt i64 %58, 256, !dbg !2508
	br i1 %59, label %44, label %43, !dbg !2486, !llvm.loop !2510
	store i8 1, i8* %4, align 2, !dbg !2513, !tbaa !1091
	br label %113, !dbg !2515
	store i8 1, i8* %3, align 8, !dbg !2516, !tbaa !1083
	br label %113, !dbg !2517
	%63 = phi i32 [ 0, %19 ], [ %104, %62 ]
	%64 = phi i64 [ 0, %19 ], [ %103, %62 ]
	%65 = trunc i32 %63 to i8, !dbg !2518
	tail call void @llvm.dbg.value(metadata i8 %21, i64 0, metadata !2521, metadata !688), !dbg !2527
	tail call void @llvm.dbg.value(metadata i8 %65, i64 0, metadata !2526, metadata !688), !dbg !2529
	%66 = icmp eq i8 %21, %65, !dbg !2530
	%67 = zext i1 %66 to i64, !dbg !2531
	%68 = add i64 %67, %64, !dbg !2531
	tail call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !2441, metadata !688), !dbg !2469
	tail call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !2441, metadata !688), !dbg !2469
	%69 = trunc i32 %63 to i8, !dbg !2518
	%70 = or i8 %69, 1, !dbg !2518
	tail call void @llvm.dbg.value(metadata i8 %21, i64 0, metadata !2521, metadata !688), !dbg !2527
	tail call void @llvm.dbg.value(metadata i8 %65, i64 0, metadata !2526, metadata !688), !dbg !2529
	%71 = icmp eq i8 %21, %70, !dbg !2530
	%72 = zext i1 %71 to i64, !dbg !2531
	%73 = add i64 %72, %68, !dbg !2531
	tail call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !2441, metadata !688), !dbg !2469
	tail call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !2441, metadata !688), !dbg !2469
	%74 = trunc i32 %63 to i8, !dbg !2518
	%75 = or i8 %74, 2, !dbg !2518
	tail call void @llvm.dbg.value(metadata i8 %21, i64 0, metadata !2521, metadata !688), !dbg !2527
	tail call void @llvm.dbg.value(metadata i8 %65, i64 0, metadata !2526, metadata !688), !dbg !2529
	%76 = icmp eq i8 %21, %75, !dbg !2530
	%77 = zext i1 %76 to i64, !dbg !2531
	%78 = add i64 %77, %73, !dbg !2531
	tail call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !2441, metadata !688), !dbg !2469
	tail call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !2441, metadata !688), !dbg !2469
	%79 = trunc i32 %63 to i8, !dbg !2518
	%80 = or i8 %79, 3, !dbg !2518
	tail call void @llvm.dbg.value(metadata i8 %21, i64 0, metadata !2521, metadata !688), !dbg !2527
	tail call void @llvm.dbg.value(metadata i8 %65, i64 0, metadata !2526, metadata !688), !dbg !2529
	%81 = icmp eq i8 %21, %80, !dbg !2530
	%82 = zext i1 %81 to i64, !dbg !2531
	%83 = add i64 %82, %78, !dbg !2531
	tail call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !2441, metadata !688), !dbg !2469
	tail call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !2441, metadata !688), !dbg !2469
	%84 = trunc i32 %63 to i8, !dbg !2518
	%85 = or i8 %84, 4, !dbg !2518
	tail call void @llvm.dbg.value(metadata i8 %21, i64 0, metadata !2521, metadata !688), !dbg !2527
	tail call void @llvm.dbg.value(metadata i8 %65, i64 0, metadata !2526, metadata !688), !dbg !2529
	%86 = icmp eq i8 %21, %85, !dbg !2530
	%87 = zext i1 %86 to i64, !dbg !2531
	%88 = add i64 %87, %83, !dbg !2531
	tail call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !2441, metadata !688), !dbg !2469
	tail call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !2441, metadata !688), !dbg !2469
	%89 = trunc i32 %63 to i8, !dbg !2518
	%90 = or i8 %89, 5, !dbg !2518
	tail call void @llvm.dbg.value(metadata i8 %21, i64 0, metadata !2521, metadata !688), !dbg !2527
	tail call void @llvm.dbg.value(metadata i8 %65, i64 0, metadata !2526, metadata !688), !dbg !2529
	%91 = icmp eq i8 %21, %90, !dbg !2530
	%92 = zext i1 %91 to i64, !dbg !2531
	%93 = add i64 %92, %88, !dbg !2531
	tail call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !2441, metadata !688), !dbg !2469
	tail call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !2441, metadata !688), !dbg !2469
	%94 = trunc i32 %63 to i8, !dbg !2518
	%95 = or i8 %94, 6, !dbg !2518
	tail call void @llvm.dbg.value(metadata i8 %21, i64 0, metadata !2521, metadata !688), !dbg !2527
	tail call void @llvm.dbg.value(metadata i8 %65, i64 0, metadata !2526, metadata !688), !dbg !2529
	%96 = icmp eq i8 %21, %95, !dbg !2530
	%97 = zext i1 %96 to i64, !dbg !2531
	%98 = add i64 %97, %93, !dbg !2531
	tail call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !2441, metadata !688), !dbg !2469
	tail call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !2441, metadata !688), !dbg !2469
	%99 = trunc i32 %63 to i8, !dbg !2518
	%100 = or i8 %99, 7, !dbg !2518
	tail call void @llvm.dbg.value(metadata i8 %21, i64 0, metadata !2521, metadata !688), !dbg !2527
	tail call void @llvm.dbg.value(metadata i8 %65, i64 0, metadata !2526, metadata !688), !dbg !2529
	%101 = icmp eq i8 %21, %100, !dbg !2530
	%102 = zext i1 %101 to i64, !dbg !2531
	%103 = add i64 %102, %98, !dbg !2531
	tail call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !2441, metadata !688), !dbg !2469
	%104 = add nsw i32 %63, 8, !dbg !2532
	tail call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !2441, metadata !688), !dbg !2469
	%105 = icmp eq i32 %104, 256, !dbg !2534
	br i1 %105, label %61, label %62, !dbg !2473, !llvm.loop !2536
	%107 = getelementptr inbounds %struct.List_element, %struct.List_element* %14, i64 0, i32 2, i32 0, i32 1, !dbg !2539
	%108 = load i64, i64* %107, align 8, !dbg !2539, !tbaa !1067
	%109 = icmp eq i64 %108, 0, !dbg !2540
	br i1 %109, label %110, label %113, !dbg !2541
	store %struct.List_element* %14, %struct.List_element** %8, align 8, !dbg !2542, !tbaa !1064
	%111 = add i64 %10, 1, !dbg !2463
	store i64 %111, i64* %2, align 8, !dbg !2463, !tbaa !1033
	br label %113
	tail call void @abort() #14, !dbg !2543
	unreachable, !dbg !2543
	%114 = phi i64 [ %111, %110 ], [ %10, %61 ], [ %10, %60 ], [ %10, %43 ], [ %10, %43 ], [ %10, %31 ], [ %10, %16 ], [ %10, %106 ]
	%115 = phi i64 [ 0, %110 ], [ %103, %61 ], [ %57, %60 ], [ %57, %43 ], [ %57, %43 ], [ %35, %31 ], [ 1, %16 ], [ %108, %106 ]
	tail call void @llvm.dbg.value(metadata i64 %115, i64 0, metadata !2441, metadata !688), !dbg !2469
	%116 = add i64 %115, %11, !dbg !2544
	tail call void @llvm.dbg.value(metadata i64 %116, i64 0, metadata !2445, metadata !688), !dbg !2545
	%117 = icmp ule i64 %11, %116, !dbg !2546
	%118 = icmp ne i64 %116, -1, !dbg !2548
	%119 = and i1 %117, %118, !dbg !2550
	br i1 %119, label %9, label %120, !dbg !2550, !llvm.loop !2551
	%121 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.88, i64 0, i64 0), i32 5) #10, !dbg !2554
	tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %121) #10, !dbg !2555
	unreachable, !dbg !2554
	%123 = getelementptr inbounds %struct.Spec_list, %struct.Spec_list* %0, i64 0, i32 3, !dbg !2556
	store i64 %11, i64* %123, align 8, !dbg !2557, !tbaa !1029
	ret void, !dbg !2558
}
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #7
define internal fastcc i32 @get_next(%struct.Spec_list* nocapture, i32*) unnamed_addr #6 !dbg !2559 {
	%3 = icmp ne i32* %1, null
	%4 = getelementptr inbounds %struct.Spec_list, %struct.Spec_list* %0, i64 0, i32 2
	%5 = getelementptr inbounds %struct.Spec_list, %struct.Spec_list* %0, i64 0, i32 0
	%6 = getelementptr inbounds %struct.Spec_list, %struct.Spec_list* %0, i64 0, i32 1
	%7 = bitcast %struct.List_element** %6 to i64*
	br label %8
	tail call void @llvm.dbg.value(metadata %struct.Spec_list* %0, i64 0, metadata !2564, metadata !688), !dbg !2569
	tail call void @llvm.dbg.value(metadata i32* %1, i64 0, metadata !2565, metadata !688), !dbg !2570
	br i1 %3, label %9, label %10, !dbg !2571
	store i32 2, i32* %1, align 4, !dbg !2572, !tbaa !1179
	br label %10, !dbg !2574
	%11 = load i64, i64* %4, align 8, !dbg !2575, !tbaa !1012
	%12 = icmp eq i64 %11, -2, !dbg !2577
	br i1 %12, label %15, label %13, !dbg !2578
	%14 = load %struct.List_element*, %struct.List_element** %6, align 8, !tbaa !969
	br label %21, !dbg !2578
	%16 = load %struct.List_element*, %struct.List_element** %5, align 8, !dbg !2579, !tbaa !973
	%17 = getelementptr inbounds %struct.List_element, %struct.List_element* %16, i64 0, i32 1, !dbg !2581
	%18 = bitcast %struct.List_element** %17 to i64*, !dbg !2581
	%19 = load i64, i64* %18, align 8, !dbg !2581, !tbaa !976
	store i64 %19, i64* %7, align 8, !dbg !2582, !tbaa !969
	store i64 -1, i64* %4, align 8, !dbg !2583, !tbaa !1012
	%20 = inttoptr i64 %19 to %struct.List_element*, !dbg !2584
	br label %21, !dbg !2584
	%22 = phi i64 [ %11, %13 ], [ -1, %15 ], !dbg !2585
	%23 = phi %struct.List_element* [ %14, %13 ], [ %20, %15 ], !dbg !2588
	tail call void @llvm.dbg.value(metadata %struct.List_element* %23, i64 0, metadata !2566, metadata !688), !dbg !2589
	%24 = icmp eq %struct.List_element* %23, null, !dbg !2590
	br i1 %24, label %170, label %25, !dbg !2592
	%26 = getelementptr inbounds %struct.List_element, %struct.List_element* %23, i64 0, i32 0, !dbg !2593
	%27 = load i32, i32* %26, align 8, !dbg !2593, !tbaa !1269
	switch i32 %27, label %169 [
		i32 0, label %28
		i32 1, label %35
		i32 2, label %56
		i32 3, label %140
		i32 4, label %147
	], !dbg !2594
	%29 = getelementptr inbounds %struct.List_element, %struct.List_element* %23, i64 0, i32 2, i32 0, i32 0, !dbg !2595
	%30 = load i8, i8* %29, align 8, !dbg !2595, !tbaa !1179
	%31 = zext i8 %30 to i32, !dbg !2596
	tail call void @llvm.dbg.value(metadata i32 %31, i64 0, metadata !2567, metadata !688), !dbg !2597
	store i64 -1, i64* %4, align 8, !dbg !2598, !tbaa !1012
	%32 = getelementptr inbounds %struct.List_element, %struct.List_element* %23, i64 0, i32 1, !dbg !2599
	%33 = bitcast %struct.List_element** %32 to i64*, !dbg !2599
	%34 = load i64, i64* %33, align 8, !dbg !2599, !tbaa !976
	store i64 %34, i64* %7, align 8, !dbg !2600, !tbaa !969
	br label %171, !dbg !2601
	%36 = icmp eq i64 %22, -1, !dbg !2602
	br i1 %36, label %37, label %41, !dbg !2603
	%38 = getelementptr inbounds %struct.List_element, %struct.List_element* %23, i64 0, i32 2, i32 0, i32 0, !dbg !2604
	%39 = load i8, i8* %38, align 8, !dbg !2604, !tbaa !2356
	%40 = zext i8 %39 to i64, !dbg !2605
	br label %43, !dbg !2606
	%42 = add i64 %22, 1, !dbg !2607
	br label %43
	%44 = phi i64 [ %42, %41 ], [ %40, %37 ]
	store i64 %44, i64* %4, align 8, !dbg !2608, !tbaa !1012
	%45 = trunc i64 %44 to i32, !dbg !2609
	tail call void @llvm.dbg.value(metadata i32 %45, i64 0, metadata !2567, metadata !688), !dbg !2597
	%46 = getelementptr inbounds %struct.List_element, %struct.List_element* %23, i64 0, i32 2, !dbg !2610
	%47 = bitcast %union.anon* %46 to %struct.anon*, !dbg !2612
	%48 = getelementptr inbounds %struct.anon, %struct.anon* %47, i64 0, i32 1, !dbg !2613
	%49 = load i8, i8* %48, align 1, !dbg !2613, !tbaa !2360
	%50 = zext i8 %49 to i64, !dbg !2614
	%51 = icmp eq i64 %44, %50, !dbg !2615
	br i1 %51, label %52, label %171, !dbg !2616
	%53 = getelementptr inbounds %struct.List_element, %struct.List_element* %23, i64 0, i32 1, !dbg !2617
	%54 = bitcast %struct.List_element** %53 to i64*, !dbg !2617
	%55 = load i64, i64* %54, align 8, !dbg !2617, !tbaa !976
	store i64 %55, i64* %7, align 8, !dbg !2619, !tbaa !969
	store i64 -1, i64* %4, align 8, !dbg !2620, !tbaa !1012
	br label %171, !dbg !2621
	br i1 %3, label %57, label %63, !dbg !2622
	%58 = getelementptr inbounds %struct.List_element, %struct.List_element* %23, i64 0, i32 2, !dbg !2623
	%59 = bitcast %union.anon* %58 to i32*, !dbg !2626
	%60 = load i32, i32* %59, align 8, !dbg !2626, !tbaa !1179
	switch i32 %60, label %63 [
		i32 6, label %61
		i32 10, label %62
	], !dbg !2627
	store i32 0, i32* %1, align 4, !dbg !2628, !tbaa !1179
	br label %63, !dbg !2630
	store i32 1, i32* %1, align 4, !dbg !2631, !tbaa !1179
	br label %63, !dbg !2632
	%64 = load i64, i64* %4, align 8, !dbg !2633, !tbaa !1012
	%65 = icmp eq i64 %64, -1, !dbg !2635
	%66 = getelementptr inbounds %struct.List_element, %struct.List_element* %23, i64 0, i32 2
	%67 = bitcast %union.anon* %66 to i32*
	br i1 %65, label %68, label %97, !dbg !2636
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2568, metadata !688), !dbg !2637
	%69 = load i32, i32* %67, align 8, !tbaa !1179
	%70 = icmp ult i32 %69, 12
	br i1 %70, label %71, label %84, !dbg !2638
	%72 = sext i32 %69 to i64
	%73 = getelementptr inbounds [12 x i16], [12 x i16]* @switch.table, i64 0, i64 %72
	%74 = load i16, i16* %73, align 2
	%75 = tail call i16** @__ctype_b_loc() #1, !dbg !2642
	%76 = load i16*, i16** %75, align 8, !tbaa !696
	br label %77, !dbg !2646
	%78 = phi i32 [ 0, %71 ], [ %190, %189 ]
	tail call void @llvm.dbg.value(metadata i32 %69, i64 0, metadata !2489, metadata !688) #10, !dbg !2646
	%79 = zext i32 %78 to i64
	%80 = getelementptr inbounds i16, i16* %76, i64 %79
	%81 = load i16, i16* %80, align 2, !tbaa !1143
	%82 = and i16 %81, %74
	%83 = icmp eq i16 %82, 0, !dbg !2647
	br i1 %83, label %85, label %94, !dbg !2648
	tail call void @abort() #14, !dbg !2649
	unreachable, !dbg !2649
	%86 = or i32 %78, 1, !dbg !2650
	tail call void @llvm.dbg.value(metadata i32 %86, i64 0, metadata !2568, metadata !688), !dbg !2637
	tail call void @llvm.dbg.value(metadata i32 %86, i64 0, metadata !2568, metadata !688), !dbg !2637
	tail call void @llvm.dbg.value(metadata i32 %69, i64 0, metadata !2489, metadata !688) #10, !dbg !2646
	%87 = and i32 %86, 253
	%88 = zext i32 %87 to i64
	%89 = getelementptr inbounds i16, i16* %76, i64 %88
	%90 = load i16, i16* %89, align 2, !tbaa !1143
	%91 = and i16 %90, %74
	%92 = icmp eq i16 %91, 0, !dbg !2647
	br i1 %92, label %173, label %94, !dbg !2648
	tail call void @__assert_fail(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.96, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0), i32 1076, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @__PRETTY_FUNCTION__.get_next, i64 0, i64 0)) #14, !dbg !2652
	unreachable, !dbg !2652
	%95 = phi i32 [ %78, %77 ], [ %86, %85 ], [ %174, %173 ], [ %182, %181 ]
	%96 = sext i32 %95 to i64, !dbg !2656
	store i64 %96, i64* %4, align 8, !dbg !2657, !tbaa !1012
	br label %97, !dbg !2658
	%98 = phi i64 [ %96, %94 ], [ %64, %63 ], !dbg !2659
	%99 = load i32, i32* %67, align 8, !dbg !2659, !tbaa !1179
	tail call void @llvm.dbg.value(metadata i32 %99, i64 0, metadata !2489, metadata !688) #10, !dbg !2662
	%100 = icmp ult i32 %99, 12, !dbg !2664
	br i1 %100, label %102, label %101, !dbg !2664
	tail call void @abort() #14, !dbg !2665
	unreachable, !dbg !2665
	%103 = sext i32 %99 to i64, !dbg !2664
	%104 = getelementptr inbounds [12 x i16], [12 x i16]* @switch.table, i64 0, i64 %103, !dbg !2664
	%105 = load i16, i16* %104, align 2, !dbg !2664
	%106 = tail call i16** @__ctype_b_loc() #1, !dbg !2666
	%107 = load i16*, i16** %106, align 8, !tbaa !696
	%108 = and i64 %98, 255
	%109 = getelementptr inbounds i16, i16* %107, i64 %108
	%110 = load i16, i16* %109, align 2, !tbaa !1143
	%111 = and i16 %110, %105
	%112 = icmp eq i16 %111, 0, !dbg !2667
	br i1 %112, label %113, label %114, !dbg !2668
	tail call void @__assert_fail(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.97, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0), i32 1079, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @__PRETTY_FUNCTION__.get_next, i64 0, i64 0)) #14, !dbg !2669
	unreachable, !dbg !2669
	%115 = trunc i64 %98 to i32, !dbg !2671
	tail call void @llvm.dbg.value(metadata i32 %115, i64 0, metadata !2567, metadata !688), !dbg !2597
	%116 = add i64 %98, 1, !dbg !2672
	%117 = trunc i64 %116 to i32, !dbg !2674
	tail call void @llvm.dbg.value(metadata i32 %117, i64 0, metadata !2568, metadata !688), !dbg !2637
	tail call void @llvm.dbg.value(metadata i32 %117, i64 0, metadata !2568, metadata !688), !dbg !2637
	%118 = icmp slt i32 %117, 256, !dbg !2675
	br i1 %118, label %119, label %134, !dbg !2678
	br label %120, !dbg !2680
	%121 = phi i32 [ %129, %128 ], [ %117, %119 ]
	tail call void @llvm.dbg.value(metadata i32 %99, i64 0, metadata !2489, metadata !688) #10, !dbg !2680
	%122 = and i32 %121, 255
	%123 = zext i32 %122 to i64
	%124 = getelementptr inbounds i16, i16* %107, i64 %123
	%125 = load i16, i16* %124, align 2, !tbaa !1143
	%126 = and i16 %125, %105
	%127 = icmp eq i16 %126, 0, !dbg !2683
	br i1 %127, label %128, label %131, !dbg !2684
	%129 = add nsw i32 %121, 1, !dbg !2685
	tail call void @llvm.dbg.value(metadata i32 %129, i64 0, metadata !2568, metadata !688), !dbg !2637
	tail call void @llvm.dbg.value(metadata i32 %129, i64 0, metadata !2568, metadata !688), !dbg !2637
	%130 = icmp slt i32 %129, 256, !dbg !2675
	br i1 %130, label %120, label %133, !dbg !2678, !llvm.loop !2687
	%132 = sext i32 %121 to i64, !dbg !2690
	br label %138, !dbg !2692
	br label %134, !dbg !2693
	%135 = getelementptr inbounds %struct.List_element, %struct.List_element* %23, i64 0, i32 1, !dbg !2693
	%136 = bitcast %struct.List_element** %135 to i64*, !dbg !2693
	%137 = load i64, i64* %136, align 8, !dbg !2693, !tbaa !976
	store i64 %137, i64* %7, align 8, !dbg !2695, !tbaa !969
	br label %138
	%139 = phi i64 [ -1, %134 ], [ %132, %131 ]
	store i64 %139, i64* %4, align 8, !tbaa !1012
	br label %171, !dbg !2696
	%141 = getelementptr inbounds %struct.List_element, %struct.List_element* %23, i64 0, i32 2, i32 0, i32 0, !dbg !2697
	%142 = load i8, i8* %141, align 8, !dbg !2697, !tbaa !1179
	%143 = zext i8 %142 to i32, !dbg !2698
	tail call void @llvm.dbg.value(metadata i32 %143, i64 0, metadata !2567, metadata !688), !dbg !2597
	store i64 -1, i64* %4, align 8, !dbg !2699, !tbaa !1012
	%144 = getelementptr inbounds %struct.List_element, %struct.List_element* %23, i64 0, i32 1, !dbg !2700
	%145 = bitcast %struct.List_element** %144 to i64*, !dbg !2700
	%146 = load i64, i64* %145, align 8, !dbg !2700, !tbaa !976
	store i64 %146, i64* %7, align 8, !dbg !2701, !tbaa !969
	br label %171, !dbg !2702
	%148 = getelementptr inbounds %struct.List_element, %struct.List_element* %23, i64 0, i32 2, i32 0, i32 1, !dbg !2703
	%149 = load i64, i64* %148, align 8, !dbg !2703, !tbaa !1067
	%150 = icmp eq i64 %149, 0, !dbg !2705
	br i1 %150, label %151, label %155, !dbg !2706
	%152 = getelementptr inbounds %struct.List_element, %struct.List_element* %23, i64 0, i32 1, !dbg !2707
	%153 = bitcast %struct.List_element** %152 to i64*, !dbg !2707
	%154 = load i64, i64* %153, align 8, !dbg !2707, !tbaa !976
	store i64 %154, i64* %7, align 8, !dbg !2709, !tbaa !969
	store i64 -1, i64* %4, align 8, !dbg !2710, !tbaa !1012
	br label %8, !dbg !2711
	%156 = icmp eq i64 %22, -1, !dbg !2712
	br i1 %156, label %157, label %158, !dbg !2715
	store i64 0, i64* %4, align 8, !dbg !2716, !tbaa !1012
	br label %158, !dbg !2718
	%159 = phi i64 [ 0, %157 ], [ %22, %155 ], !dbg !2719
	%160 = add i64 %159, 1, !dbg !2719
	store i64 %160, i64* %4, align 8, !dbg !2719, !tbaa !1012
	%161 = getelementptr inbounds %struct.List_element, %struct.List_element* %23, i64 0, i32 2, i32 0, i32 0, !dbg !2720
	%162 = load i8, i8* %161, align 8, !dbg !2720, !tbaa !1306
	%163 = zext i8 %162 to i32, !dbg !2721
	tail call void @llvm.dbg.value(metadata i32 %163, i64 0, metadata !2567, metadata !688), !dbg !2597
	%164 = icmp eq i64 %160, %149, !dbg !2722
	br i1 %164, label %165, label %171, !dbg !2724
	%166 = getelementptr inbounds %struct.List_element, %struct.List_element* %23, i64 0, i32 1, !dbg !2725
	%167 = bitcast %struct.List_element** %166 to i64*, !dbg !2725
	%168 = load i64, i64* %167, align 8, !dbg !2725, !tbaa !976
	store i64 %168, i64* %7, align 8, !dbg !2727, !tbaa !969
	store i64 -1, i64* %4, align 8, !dbg !2728, !tbaa !1012
	br label %171, !dbg !2729
	tail call void @abort() #14, !dbg !2730
	unreachable, !dbg !2730
	br label %171, !dbg !2731
	%172 = phi i32 [ %163, %165 ], [ %163, %158 ], [ %143, %140 ], [ %115, %138 ], [ %45, %52 ], [ %45, %43 ], [ %31, %28 ], [ -1, %170 ]
	ret i32 %172, !dbg !2731
	%174 = or i32 %78, 2, !dbg !2650
	tail call void @llvm.dbg.value(metadata i32 %86, i64 0, metadata !2568, metadata !688), !dbg !2637
	tail call void @llvm.dbg.value(metadata i32 %86, i64 0, metadata !2568, metadata !688), !dbg !2637
	tail call void @llvm.dbg.value(metadata i32 %69, i64 0, metadata !2489, metadata !688) #10, !dbg !2646
	%175 = and i32 %174, 254
	%176 = zext i32 %175 to i64
	%177 = getelementptr inbounds i16, i16* %76, i64 %176
	%178 = load i16, i16* %177, align 2, !tbaa !1143
	%179 = and i16 %178, %74
	%180 = icmp eq i16 %179, 0, !dbg !2647
	br i1 %180, label %181, label %94, !dbg !2648
	%182 = or i32 %78, 3, !dbg !2650
	tail call void @llvm.dbg.value(metadata i32 %86, i64 0, metadata !2568, metadata !688), !dbg !2637
	tail call void @llvm.dbg.value(metadata i32 %86, i64 0, metadata !2568, metadata !688), !dbg !2637
	tail call void @llvm.dbg.value(metadata i32 %69, i64 0, metadata !2489, metadata !688) #10, !dbg !2646
	%183 = and i32 %182, 255
	%184 = zext i32 %183 to i64
	%185 = getelementptr inbounds i16, i16* %76, i64 %184
	%186 = load i16, i16* %185, align 2, !tbaa !1143
	%187 = and i16 %186, %74
	%188 = icmp eq i16 %187, 0, !dbg !2647
	br i1 %188, label %189, label %94, !dbg !2648
	%190 = add nsw i32 %78, 4, !dbg !2650
	tail call void @llvm.dbg.value(metadata i32 %86, i64 0, metadata !2568, metadata !688), !dbg !2637
	tail call void @llvm.dbg.value(metadata i32 %86, i64 0, metadata !2568, metadata !688), !dbg !2637
	%191 = icmp slt i32 %190, 256, !dbg !2732
	br i1 %191, label %77, label %93, !dbg !2638, !llvm.loop !2734
}
declare void @llvm.lifetime.end(i64, i8* nocapture) #7
declare i16** @__ctype_b_loc() local_unnamed_addr #8
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #5
declare void @abort() local_unnamed_addr #5
define internal i64 @plain_read(i8*, i64) #6 !dbg !1682 {
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1681, metadata !688), !dbg !2737
	tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1684, metadata !688), !dbg !2738
	%3 = tail call i64 @safe_read(i32 0, i8* %0, i64 %1) #10, !dbg !2739
	tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1685, metadata !688), !dbg !2740
	%4 = icmp eq i64 %3, -1, !dbg !2741
	br i1 %4, label %5, label %9, !dbg !2742
	%6 = tail call i32* @__errno_location() #1, !dbg !2743
	%7 = load i32, i32* %6, align 4, !dbg !2743, !tbaa !903
	%8 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.95, i64 0, i64 0), i32 5) #10, !dbg !2744
	tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %7, i8* %8) #10, !dbg !2745
	unreachable, !dbg !2743
	ret i64 %3, !dbg !2746
}
define internal fastcc void @squeeze_filter(i64 (i8*, i64)* nocapture) unnamed_addr #6 !dbg !2747 {
	tail call void @llvm.dbg.value(metadata i64 8192, i64 0, metadata !2753, metadata !688), !dbg !2765
	tail call void @llvm.dbg.value(metadata i32 2147483647, i64 0, metadata !2755, metadata !688), !dbg !2766
	tail call void @llvm.dbg.value(metadata i32 2147483647, i64 0, metadata !2757, metadata !688), !dbg !2767
	tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2758, metadata !688), !dbg !2768
	tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2759, metadata !688), !dbg !2769
	br label %5, !dbg !2770
	%3 = phi i64 [ %97, %96 ], [ %91, %90 ]
	%4 = phi i32 [ %86, %96 ], [ 2147483647, %90 ]
	br label %82, !dbg !2767
	%6 = phi i64 [ 0, %1 ], [ %83, %82 ]
	%7 = phi i64 [ 0, %1 ], [ %15, %82 ]
	%8 = phi i32 [ 2147483647, %1 ], [ %84, %82 ]
	tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !2757, metadata !688), !dbg !2767
	tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !2759, metadata !688), !dbg !2769
	tail call void @llvm.dbg.value(metadata i64 %6, i64 0, metadata !2758, metadata !688), !dbg !2768
	%9 = icmp ult i64 %6, %7, !dbg !2771
	br i1 %9, label %13, label %10, !dbg !2773
	%11 = tail call i64 %0(i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @io_buf, i64 0, i64 0), i64 8192) #10, !dbg !2774
	tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !2759, metadata !688), !dbg !2769
	%12 = icmp eq i64 %11, 0, !dbg !2776
	br i1 %12, label %99, label %13, !dbg !2778
	%14 = phi i64 [ %6, %5 ], [ 0, %10 ]
	%15 = phi i64 [ %7, %5 ], [ %11, %10 ]
	tail call void @llvm.dbg.value(metadata i64 %15, i64 0, metadata !2759, metadata !688), !dbg !2769
	tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !2758, metadata !688), !dbg !2768
	tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !2760, metadata !688), !dbg !2779
	%16 = icmp eq i32 %8, 2147483647, !dbg !2780
	br i1 %16, label %17, label %85, !dbg !2781
	tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !2758, metadata !688), !dbg !2768
	%18 = icmp ugt i64 %15, %14, !dbg !2782
	br i1 %18, label %19, label %33, !dbg !2786
	br label %20, !dbg !2787
	%21 = phi i64 [ %29, %28 ], [ %14, %19 ]
	%22 = getelementptr inbounds [8192 x i8], [8192 x i8]* @io_buf, i64 0, i64 %21, !dbg !2787
	%23 = load i8, i8* %22, align 1, !dbg !2787, !tbaa !1179
	%24 = zext i8 %23 to i64, !dbg !2789
	%25 = getelementptr inbounds [256 x i8], [256 x i8]* @in_squeeze_set, i64 0, i64 %24, !dbg !2789
	%26 = load i8, i8* %25, align 1, !dbg !2789, !tbaa !896, !range !911
	%27 = icmp eq i8 %26, 0, !dbg !2790
	br i1 %27, label %28, label %31, !dbg !2791
	%29 = add i64 %21, 2, !dbg !2793
	tail call void @llvm.dbg.value(metadata i64 %29, i64 0, metadata !2758, metadata !688), !dbg !2768
	tail call void @llvm.dbg.value(metadata i64 %29, i64 0, metadata !2758, metadata !688), !dbg !2768
	%30 = icmp ult i64 %29, %15, !dbg !2782
	br i1 %30, label %20, label %31, !dbg !2786, !llvm.loop !2795
	%32 = phi i64 [ %29, %28 ], [ %21, %20 ]
	br label %33, !dbg !2798
	%34 = phi i64 [ %14, %17 ], [ %32, %31 ]
	%35 = icmp eq i64 %34, %15, !dbg !2798
	br i1 %35, label %36, label %45, !dbg !2800
	%37 = add i64 %15, -1, !dbg !2801
	%38 = getelementptr inbounds [8192 x i8], [8192 x i8]* @io_buf, i64 0, i64 %37, !dbg !2803
	%39 = load i8, i8* %38, align 1, !dbg !2803, !tbaa !1179
	%40 = zext i8 %39 to i64, !dbg !2804
	%41 = getelementptr inbounds [256 x i8], [256 x i8]* @in_squeeze_set, i64 0, i64 %40, !dbg !2804
	%42 = load i8, i8* %41, align 1, !dbg !2804, !tbaa !896, !range !911
	%43 = icmp eq i8 %42, 0, !dbg !2804
	tail call void @llvm.dbg.value(metadata i64 %37, i64 0, metadata !2758, metadata !688), !dbg !2768
	%44 = select i1 %43, i64 %15, i64 %37, !dbg !2805
	br label %45, !dbg !2805
	%46 = phi i64 [ %34, %33 ], [ %44, %36 ]
	tail call void @llvm.dbg.value(metadata i64 %46, i64 0, metadata !2758, metadata !688), !dbg !2768
	%47 = icmp ult i64 %46, %15, !dbg !2807
	br i1 %47, label %50, label %48, !dbg !2809
	%49 = sub i64 %15, %14, !dbg !2810
	tail call void @llvm.dbg.value(metadata i64 %49, i64 0, metadata !2762, metadata !688), !dbg !2811
	br label %66, !dbg !2812
	%51 = getelementptr inbounds [8192 x i8], [8192 x i8]* @io_buf, i64 0, i64 %46, !dbg !2813
	%52 = load i8, i8* %51, align 1, !dbg !2813, !tbaa !1179
	%53 = sext i8 %52 to i32, !dbg !2813
	tail call void @llvm.dbg.value(metadata i32 %53, i64 0, metadata !2757, metadata !688), !dbg !2767
	%54 = sub i64 %46, %14, !dbg !2815
	%55 = add i64 %54, 1, !dbg !2816
	tail call void @llvm.dbg.value(metadata i64 %55, i64 0, metadata !2762, metadata !688), !dbg !2811
	%56 = icmp eq i64 %46, 0, !dbg !2817
	br i1 %56, label %63, label %57, !dbg !2819
	%58 = add i64 %46, -1, !dbg !2820
	%59 = getelementptr inbounds [8192 x i8], [8192 x i8]* @io_buf, i64 0, i64 %58, !dbg !2822
	%60 = load i8, i8* %59, align 1, !dbg !2822, !tbaa !1179
	%61 = icmp eq i8 %60, %52, !dbg !2823
	tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !2762, metadata !688), !dbg !2811
	%62 = select i1 %61, i64 %54, i64 %55, !dbg !2824
	br label %63, !dbg !2824
	%64 = phi i64 [ %55, %50 ], [ %62, %57 ]
	tail call void @llvm.dbg.value(metadata i64 %64, i64 0, metadata !2762, metadata !688), !dbg !2811
	%65 = add i64 %46, 1, !dbg !2826
	tail call void @llvm.dbg.value(metadata i64 %65, i64 0, metadata !2758, metadata !688), !dbg !2768
	br label %66
	%67 = phi i64 [ %46, %48 ], [ %65, %63 ]
	%68 = phi i32 [ 2147483647, %48 ], [ %53, %63 ]
	%69 = phi i64 [ %49, %48 ], [ %64, %63 ]
	tail call void @llvm.dbg.value(metadata i64 %69, i64 0, metadata !2762, metadata !688), !dbg !2811
	tail call void @llvm.dbg.value(metadata i32 %68, i64 0, metadata !2757, metadata !688), !dbg !2767
	tail call void @llvm.dbg.value(metadata i64 %67, i64 0, metadata !2758, metadata !688), !dbg !2768
	%70 = icmp eq i64 %69, 0, !dbg !2827
	br i1 %70, label %80, label %71, !dbg !2829
	%72 = getelementptr inbounds [8192 x i8], [8192 x i8]* @io_buf, i64 0, i64 %14, !dbg !2830
	%73 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2830, !tbaa !696
	%74 = tail call i64 @fwrite_unlocked(i8* %72, i64 1, i64 %69, %struct._IO_FILE* %73) #10, !dbg !2830
	%75 = icmp eq i64 %74, %69, !dbg !2832
	br i1 %75, label %80, label %76, !dbg !2833
	%77 = tail call i32* @__errno_location() #1, !dbg !2834
	%78 = load i32, i32* %77, align 4, !dbg !2834, !tbaa !903
	%79 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i64 0, i64 0), i32 5) #10, !dbg !2835
	tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %78, i8* %79) #10, !dbg !2836
	unreachable, !dbg !2834
	tail call void @llvm.dbg.value(metadata i32 %68, i64 0, metadata !2757, metadata !688), !dbg !2767
	tail call void @llvm.dbg.value(metadata i64 %67, i64 0, metadata !2758, metadata !688), !dbg !2768
	%81 = icmp eq i32 %68, 2147483647, !dbg !2838
	br i1 %81, label %82, label %85, !dbg !2840
	%83 = phi i64 [ %67, %80 ], [ %87, %85 ], [ %3, %2 ]
	%84 = phi i32 [ 2147483647, %80 ], [ %86, %85 ], [ %4, %2 ]
	br label %5, !dbg !2767, !llvm.loop !2841
	%86 = phi i32 [ %8, %13 ], [ %68, %80 ]
	%87 = phi i64 [ %14, %13 ], [ %67, %80 ]
	tail call void @llvm.dbg.value(metadata i64 %87, i64 0, metadata !2758, metadata !688), !dbg !2768
	%88 = icmp ult i64 %87, %15, !dbg !2843
	br i1 %88, label %89, label %82, !dbg !2848
	br label %90, !dbg !2849
	%91 = phi i64 [ %97, %96 ], [ %87, %89 ]
	%92 = getelementptr inbounds [8192 x i8], [8192 x i8]* @io_buf, i64 0, i64 %91, !dbg !2849
	%93 = load i8, i8* %92, align 1, !dbg !2849, !tbaa !1179
	%94 = sext i8 %93 to i32, !dbg !2849
	%95 = icmp eq i32 %94, %86, !dbg !2851
	br i1 %95, label %96, label %2, !dbg !2852, !llvm.loop !2841
	%97 = add nuw i64 %91, 1, !dbg !2854
	tail call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !2758, metadata !688), !dbg !2768
	tail call void @llvm.dbg.value(metadata i64 %97, i64 0, metadata !2758, metadata !688), !dbg !2768
	%98 = icmp ult i64 %97, %15, !dbg !2843
	br i1 %98, label %90, label %2, !dbg !2848, !llvm.loop !2841
	ret void, !dbg !2856
}
define internal i64 @read_and_delete(i8*, i64) #6 !dbg !2857 {
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2859, metadata !688), !dbg !2865
	tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2860, metadata !688), !dbg !2866
	br label %3, !dbg !2867, !llvm.loop !2868
	tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2861, metadata !688), !dbg !2870
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1681, metadata !688) #10, !dbg !2871
	tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1684, metadata !688) #10, !dbg !2873
	%4 = tail call i64 @safe_read(i32 0, i8* %0, i64 %1) #10, !dbg !2874
	tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !1685, metadata !688) #10, !dbg !2875
	switch i64 %4, label %5 [
		i64 -1, label %6
		i64 0, label %43
	], !dbg !2876
	br label %10, !dbg !2877
	%7 = tail call i32* @__errno_location() #1, !dbg !2881
	%8 = load i32, i32* %7, align 4, !dbg !2881, !tbaa !903
	%9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.95, i64 0, i64 0), i32 5) #10, !dbg !2882
	tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %8, i8* %9) #10, !dbg !2883
	unreachable, !dbg !2881
	%11 = phi i64 [ %19, %18 ], [ 0, %5 ]
	%12 = getelementptr inbounds i8, i8* %0, i64 %11, !dbg !2877
	%13 = load i8, i8* %12, align 1, !dbg !2877, !tbaa !1179
	%14 = zext i8 %13 to i64, !dbg !2884
	%15 = getelementptr inbounds [256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 %14, !dbg !2884
	%16 = load i8, i8* %15, align 1, !dbg !2884, !tbaa !896, !range !911
	%17 = icmp eq i8 %16, 0, !dbg !2885
	br i1 %17, label %18, label %21, !dbg !2886
	%19 = add nuw i64 %11, 1, !dbg !2888
	tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2864, metadata !688), !dbg !2890
	tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2864, metadata !688), !dbg !2890
	%20 = icmp ult i64 %19, %4, !dbg !2891
	br i1 %20, label %10, label %21, !dbg !2893, !llvm.loop !2894
	%22 = phi i64 [ %11, %10 ], [ %19, %18 ]
	%23 = phi i64 [ %11, %10 ], [ %19, %18 ]
	br label %38
	%25 = phi i64 [ %26, %28 ], [ %40, %38 ]
	%26 = add i64 %25, 1
	tail call void @llvm.dbg.value(metadata i64 %26, i64 0, metadata !2864, metadata !688), !dbg !2890
	tail call void @llvm.dbg.value(metadata i64 %39, i64 0, metadata !2861, metadata !688), !dbg !2870
	%27 = icmp ult i64 %26, %4, !dbg !2897
	br i1 %27, label %28, label %41, !dbg !2901
	%29 = getelementptr inbounds i8, i8* %0, i64 %26, !dbg !2903
	%30 = load i8, i8* %29, align 1, !dbg !2903, !tbaa !1179
	%31 = zext i8 %30 to i64, !dbg !2905
	%32 = getelementptr inbounds [256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 %31, !dbg !2905
	%33 = load i8, i8* %32, align 1, !dbg !2905, !tbaa !896, !range !911
	%34 = icmp eq i8 %33, 0, !dbg !2905
	br i1 %34, label %35, label %24, !dbg !2906, !llvm.loop !2907
	%36 = add i64 %39, 1, !dbg !2910
	tail call void @llvm.dbg.value(metadata i64 %36, i64 0, metadata !2861, metadata !688), !dbg !2870
	%37 = getelementptr inbounds i8, i8* %0, i64 %39, !dbg !2911
	store i8 %30, i8* %37, align 1, !dbg !2912, !tbaa !1179
	br label %38, !dbg !2911, !llvm.loop !2907
	%39 = phi i64 [ %36, %35 ], [ %22, %21 ]
	%40 = phi i64 [ %26, %35 ], [ %23, %21 ]
	br label %24
	%42 = icmp eq i64 %39, 0, !dbg !2913
	br i1 %42, label %3, label %43, !dbg !2914, !llvm.loop !2868
	%44 = phi i64 [ %39, %41 ], [ 0, %3 ]
	ret i64 %44, !dbg !2916
}
declare i64 @fwrite_unlocked(i8*, i64, i64, %struct._IO_FILE*) local_unnamed_addr #3
declare i32* @__errno_location() local_unnamed_addr #8
declare i32** @__ctype_toupper_loc() local_unnamed_addr #8
declare i32** @__ctype_tolower_loc() local_unnamed_addr #8
define internal i64 @read_and_xlate(i8*, i64) #6 !dbg !1656 {
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1660, metadata !688), !dbg !2917
	tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1661, metadata !688), !dbg !2918
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1681, metadata !688) #10, !dbg !2919
	tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1684, metadata !688) #10, !dbg !2921
	%3 = tail call i64 @safe_read(i32 0, i8* %0, i64 %1) #10, !dbg !2922
	tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1685, metadata !688) #10, !dbg !2923
	switch i64 %3, label %4 [
		i64 -1, label %25
		i64 0, label %31
	], !dbg !2924
	%5 = add i64 %3, -1, !dbg !2925
	%6 = and i64 %3, 3, !dbg !2925
	%7 = icmp eq i64 %6, 0, !dbg !2925
	br i1 %7, label %21, label %8, !dbg !2925
	br label %9, !dbg !2925
	%10 = phi i64 [ %17, %9 ], [ 0, %8 ]
	%11 = phi i64 [ %18, %9 ], [ %6, %8 ]
	%12 = getelementptr inbounds i8, i8* %0, i64 %10, !dbg !2925
	%13 = load i8, i8* %12, align 1, !dbg !2925, !tbaa !1179
	%14 = zext i8 %13 to i64, !dbg !2926
	%15 = getelementptr inbounds [256 x i8], [256 x i8]* @xlate, i64 0, i64 %14, !dbg !2926
	%16 = load i8, i8* %15, align 1, !dbg !2926, !tbaa !1179
	store i8 %16, i8* %12, align 1, !dbg !2927, !tbaa !1179
	%17 = add nuw i64 %10, 1, !dbg !2928
	tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !1663, metadata !688), !dbg !2929
	tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !1663, metadata !688), !dbg !2929
	%18 = add i64 %11, -1, !dbg !2930
	%19 = icmp eq i64 %18, 0, !dbg !2930
	br i1 %19, label %20, label %9, !dbg !2930, !llvm.loop !2931
	br label %21, !dbg !2925
	%22 = phi i64 [ 0, %4 ], [ %17, %20 ]
	%23 = icmp ult i64 %5, 3, !dbg !2925
	br i1 %23, label %30, label %24, !dbg !2925
	br label %32, !dbg !2925
	%26 = tail call i32* @__errno_location() #1, !dbg !2932
	%27 = load i32, i32* %26, align 4, !dbg !2932, !tbaa !903
	%28 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.95, i64 0, i64 0), i32 5) #10, !dbg !2933
	tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %27, i8* %28) #10, !dbg !2934
	unreachable, !dbg !2932
	br label %30, !dbg !2935
	br label %31, !dbg !2935
	ret i64 %3, !dbg !2935
	%33 = phi i64 [ %22, %24 ], [ %57, %32 ]
	%34 = getelementptr inbounds i8, i8* %0, i64 %33, !dbg !2925
	%35 = load i8, i8* %34, align 1, !dbg !2925, !tbaa !1179
	%36 = zext i8 %35 to i64, !dbg !2926
	%37 = getelementptr inbounds [256 x i8], [256 x i8]* @xlate, i64 0, i64 %36, !dbg !2926
	%38 = load i8, i8* %37, align 1, !dbg !2926, !tbaa !1179
	store i8 %38, i8* %34, align 1, !dbg !2927, !tbaa !1179
	%39 = add nuw i64 %33, 1, !dbg !2928
	tail call void @llvm.dbg.value(metadata i64 %39, i64 0, metadata !1663, metadata !688), !dbg !2929
	tail call void @llvm.dbg.value(metadata i64 %39, i64 0, metadata !1663, metadata !688), !dbg !2929
	%40 = getelementptr inbounds i8, i8* %0, i64 %39, !dbg !2925
	%41 = load i8, i8* %40, align 1, !dbg !2925, !tbaa !1179
	%42 = zext i8 %41 to i64, !dbg !2926
	%43 = getelementptr inbounds [256 x i8], [256 x i8]* @xlate, i64 0, i64 %42, !dbg !2926
	%44 = load i8, i8* %43, align 1, !dbg !2926, !tbaa !1179
	store i8 %44, i8* %40, align 1, !dbg !2927, !tbaa !1179
	%45 = add i64 %33, 2, !dbg !2928
	tail call void @llvm.dbg.value(metadata i64 %39, i64 0, metadata !1663, metadata !688), !dbg !2929
	tail call void @llvm.dbg.value(metadata i64 %39, i64 0, metadata !1663, metadata !688), !dbg !2929
	%46 = getelementptr inbounds i8, i8* %0, i64 %45, !dbg !2925
	%47 = load i8, i8* %46, align 1, !dbg !2925, !tbaa !1179
	%48 = zext i8 %47 to i64, !dbg !2926
	%49 = getelementptr inbounds [256 x i8], [256 x i8]* @xlate, i64 0, i64 %48, !dbg !2926
	%50 = load i8, i8* %49, align 1, !dbg !2926, !tbaa !1179
	store i8 %50, i8* %46, align 1, !dbg !2927, !tbaa !1179
	%51 = add i64 %33, 3, !dbg !2928
	tail call void @llvm.dbg.value(metadata i64 %39, i64 0, metadata !1663, metadata !688), !dbg !2929
	tail call void @llvm.dbg.value(metadata i64 %39, i64 0, metadata !1663, metadata !688), !dbg !2929
	%52 = getelementptr inbounds i8, i8* %0, i64 %51, !dbg !2925
	%53 = load i8, i8* %52, align 1, !dbg !2925, !tbaa !1179
	%54 = zext i8 %53 to i64, !dbg !2926
	%55 = getelementptr inbounds [256 x i8], [256 x i8]* @xlate, i64 0, i64 %54, !dbg !2926
	%56 = load i8, i8* %55, align 1, !dbg !2926, !tbaa !1179
	store i8 %56, i8* %52, align 1, !dbg !2927, !tbaa !1179
	%57 = add i64 %33, 4, !dbg !2928
	tail call void @llvm.dbg.value(metadata i64 %39, i64 0, metadata !1663, metadata !688), !dbg !2929
	tail call void @llvm.dbg.value(metadata i64 %39, i64 0, metadata !1663, metadata !688), !dbg !2929
	%58 = icmp eq i64 %57, %3, !dbg !2936
	br i1 %58, label %29, label %32, !dbg !2930, !llvm.loop !1711
}
declare i32 @close(i32) local_unnamed_addr #3
declare i64 @strlen(i8* nocapture) local_unnamed_addr #4
define internal fastcc i8* @make_printable_str(i8* nocapture readonly, i64) unnamed_addr #6 !dbg !2937 {
	%3 = alloca [5 x i8], align 1
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2941, metadata !688), !dbg !2955
	tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2942, metadata !688), !dbg !2956
	%4 = add i64 %1, 1, !dbg !2957
	tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !2958, metadata !688) #10, !dbg !2964
	tail call void @llvm.dbg.value(metadata i64 4, i64 0, metadata !2963, metadata !688) #10, !dbg !2966
	%5 = icmp ugt i64 %4, 2305843009213693951, !dbg !2967
	br i1 %5, label %6, label %7, !dbg !2969
	tail call void @xalloc_die() #14, !dbg !2970
	unreachable, !dbg !2970
	%8 = shl i64 %4, 2, !dbg !2971
	%9 = tail call noalias i8* @xmalloc(i64 %8) #10, !dbg !2972
	tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !2943, metadata !688), !dbg !2973
	tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !2944, metadata !688), !dbg !2974
	tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2945, metadata !688), !dbg !2975
	call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !2944, metadata !688), !dbg !2974
	call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2945, metadata !688), !dbg !2975
	%10 = icmp eq i64 %1, 0, !dbg !2976
	br i1 %10, label %15, label %11, !dbg !2978
	%12 = getelementptr inbounds [5 x i8], [5 x i8]* %3, i64 0, i64 0
	%13 = getelementptr inbounds [5 x i8], [5 x i8]* %3, i64 0, i64 1
	br label %16, !dbg !2978
	br label %15, !dbg !2980
	ret i8* %9, !dbg !2980
	%17 = phi i8* [ %9, %11 ], [ %43, %40 ]
	%18 = phi i64 [ 0, %11 ], [ %44, %40 ]
	call void @llvm.lifetime.start(i64 5, i8* nonnull %12) #10, !dbg !2981
	call void @llvm.dbg.declare(metadata [5 x i8]* %3, metadata !2947, metadata !688), !dbg !2982
	call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2953, metadata !688), !dbg !2983
	%19 = getelementptr inbounds i8, i8* %0, i64 %18, !dbg !2984
	%20 = load i8, i8* %19, align 1, !dbg !2984, !tbaa !1179
	call void @llvm.dbg.value(metadata i8 %20, i64 0, metadata !2954, metadata !688), !dbg !2985
	%21 = zext i8 %20 to i32, !dbg !2986
	switch i8 %20, label %29 [
		i8 92, label %40
		i8 7, label %22
		i8 8, label %23
		i8 12, label %24
		i8 10, label %25
		i8 13, label %26
		i8 9, label %27
		i8 11, label %28
	], !dbg !2987
	br label %40, !dbg !2988
	br label %40, !dbg !2990
	br label %40, !dbg !2991
	br label %40, !dbg !2992
	br label %40, !dbg !2993
	br label %40, !dbg !2994
	br label %40, !dbg !2995
	%30 = tail call i16** @__ctype_b_loc() #1, !dbg !2996
	%31 = load i16*, i16** %30, align 8, !dbg !2996, !tbaa !696
	%32 = zext i8 %20 to i64, !dbg !2996
	%33 = getelementptr inbounds i16, i16* %31, i64 %32, !dbg !2996
	%34 = load i16, i16* %33, align 2, !dbg !2996, !tbaa !1143
	%35 = and i16 %34, 16384, !dbg !2996
	%36 = icmp eq i16 %35, 0, !dbg !2996
	br i1 %36, label %38, label %37, !dbg !2998
	store i8 %20, i8* %12, align 1, !dbg !2999, !tbaa !1179
	store i8 0, i8* %13, align 1, !dbg !3001, !tbaa !1179
	br label %40, !dbg !3002
	%39 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %12, i32 1, i64 5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.76, i64 0, i64 0), i32 %21) #10, !dbg !3003
	br label %40
	%41 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.75, i64 0, i64 0), %28 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.74, i64 0, i64 0), %27 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.73, i64 0, i64 0), %26 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.72, i64 0, i64 0), %25 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.71, i64 0, i64 0), %24 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.70, i64 0, i64 0), %23 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.69, i64 0, i64 0), %22 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.68, i64 0, i64 0), %16 ], [ %12, %38 ], [ %12, %37 ]
	call void @llvm.dbg.value(metadata i8* %41, i64 0, metadata !2953, metadata !688), !dbg !2983
	call void @llvm.dbg.value(metadata i8* %17, i64 0, metadata !3004, metadata !688) #10, !dbg !3013
	call void @llvm.dbg.value(metadata i8* %41, i64 0, metadata !3012, metadata !688) #10, !dbg !3013
	%42 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %17, i1 false) #10, !dbg !3015
	%43 = call i8* @__stpcpy_chk(i8* nonnull %17, i8* nonnull %41, i64 %42) #10, !dbg !3016
	call void @llvm.dbg.value(metadata i8* %43, i64 0, metadata !2944, metadata !688), !dbg !2974
	call void @llvm.lifetime.end(i64 5, i8* nonnull %12) #10, !dbg !3017
	%44 = add nuw i64 %18, 1, !dbg !3018
	call void @llvm.dbg.value(metadata i64 %44, i64 0, metadata !2945, metadata !688), !dbg !2975
	call void @llvm.dbg.value(metadata i8* %43, i64 0, metadata !2944, metadata !688), !dbg !2974
	call void @llvm.dbg.value(metadata i64 %44, i64 0, metadata !2945, metadata !688), !dbg !2975
	%45 = icmp eq i64 %44, %1, !dbg !2976
	br i1 %45, label %14, label %16, !dbg !2978, !llvm.loop !3020
}
declare void @free(i8* nocapture) local_unnamed_addr #2
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #1
declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) local_unnamed_addr #3
declare i8* @__stpcpy_chk(i8*, i8*, i64) local_unnamed_addr #2
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !3023 {
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3025, metadata !688), !dbg !3026
	store i8* %0, i8** @file_name, align 8, !dbg !3027, !tbaa !696
	ret void, !dbg !3028
}
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !3029 {
	%2 = zext i1 %0 to i8
	tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !3033, metadata !1404), !dbg !3034
	store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !3035, !tbaa !896
	ret void, !dbg !3036
}
define void @close_stdout() #6 !dbg !3037 {
	%1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3044, !tbaa !696
	%2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #10, !dbg !3045
	%3 = icmp eq i32 %2, 0, !dbg !3046
	br i1 %3, label %21, label %4, !dbg !3047
	%5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !3048, !tbaa !896, !range !911
	%6 = icmp eq i8 %5, 0, !dbg !3048
	%7 = tail call i32* @__errno_location() #1, !dbg !3050
	br i1 %6, label %11, label %8, !dbg !3052
	%9 = load i32, i32* %7, align 4, !dbg !3053, !tbaa !903
	%10 = icmp eq i32 %9, 32, !dbg !3055
	br i1 %10, label %21, label %11, !dbg !3056
	%12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i64 0, i64 0), i32 5) #10, !dbg !3058
	tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !3041, metadata !688), !dbg !3059
	%13 = load i8*, i8** @file_name, align 8, !dbg !3060, !tbaa !696
	%14 = icmp eq i8* %13, null, !dbg !3060
	%15 = load i32, i32* %7, align 4, !tbaa !903
	br i1 %14, label %18, label %16, !dbg !3061
	%17 = tail call i8* @quotearg_colon(i8* nonnull %13) #10, !dbg !3062
	tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.32, i64 0, i64 0), i8* %17, i8* %12) #10, !dbg !3064
	br label %19, !dbg !3066
	tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.33, i64 0, i64 0), i8* %12) #10, !dbg !3067
	br label %19
	%20 = load volatile i32, i32* @exit_failure, align 4, !dbg !3068, !tbaa !903
	tail call void @_exit(i32 %20) #14, !dbg !3069
	unreachable, !dbg !3069
	%22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3070, !tbaa !696
	%23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #10, !dbg !3072
	%24 = icmp eq i32 %23, 0, !dbg !3073
	br i1 %24, label %27, label %25, !dbg !3074
	%26 = load volatile i32, i32* @exit_failure, align 4, !dbg !3075, !tbaa !903
	tail call void @_exit(i32 %26) #14, !dbg !3076
	unreachable, !dbg !3076
	ret void, !dbg !3077
}
declare void @_exit(i32) local_unnamed_addr #9
define void @fdadvise(i32, i64, i64, i32) local_unnamed_addr #6 !dbg !3078 {
	tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3087, metadata !688), !dbg !3093
	tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3088, metadata !688), !dbg !3094
	tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3089, metadata !688), !dbg !3095
	tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !3090, metadata !688), !dbg !3096
	%5 = tail call i32 @posix_fadvise(i32 %0, i64 %1, i64 %2, i32 %3) #10, !dbg !3097
	tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !3091, metadata !688), !dbg !3097
	ret void, !dbg !3098
}
declare i32 @posix_fadvise(i32, i64, i64, i32) local_unnamed_addr #2
define void @fadvise(%struct._IO_FILE*, i32) local_unnamed_addr #6 !dbg !3099 {
	tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3154, metadata !688), !dbg !3156
	tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3155, metadata !688), !dbg !3157
	%3 = icmp eq %struct._IO_FILE* %0, null, !dbg !3158
	br i1 %3, label %7, label %4, !dbg !3160
	%5 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3161
	tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !3087, metadata !688) #10, !dbg !3162
	tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3088, metadata !688) #10, !dbg !3165
	tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3089, metadata !688) #10, !dbg !3166
	tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3090, metadata !688) #10, !dbg !3167
	%6 = tail call i32 @posix_fadvise(i32 %5, i64 0, i64 0, i32 %1) #10, !dbg !3168
	tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !3091, metadata !688) #10, !dbg !3168
	br label %7, !dbg !3169
	ret void, !dbg !3170
}
declare i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #2
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !3171 {
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3173, metadata !688), !dbg !3176
	%2 = icmp eq i8* %0, null, !dbg !3177
	br i1 %2, label %3, label %6, !dbg !3179
	%4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3180, !tbaa !696
	%5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.92, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #16, !dbg !3182
	tail call void @abort() #14, !dbg !3183
	unreachable, !dbg !3183
	%7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #13, !dbg !3184
	tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !3174, metadata !688), !dbg !3185
	%8 = icmp ne i8* %7, null, !dbg !3186
	%9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !3187
	%10 = select i1 %8, i8* %9, i8* %0, !dbg !3189
	tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !3175, metadata !688), !dbg !3190
	%11 = ptrtoint i8* %10 to i64, !dbg !3191
	%12 = ptrtoint i8* %0 to i64, !dbg !3191
	%13 = sub i64 %11, %12, !dbg !3191
	%14 = icmp sgt i64 %13, 6, !dbg !3193
	br i1 %14, label %15, label %24, !dbg !3194
	%16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !3195
	%17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.93, i64 0, i64 0), i64 7) #13, !dbg !3195
	%18 = icmp eq i32 %17, 0, !dbg !3197
	br i1 %18, label %19, label %24, !dbg !3198
	tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !3173, metadata !688), !dbg !3176
	%20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.94, i64 0, i64 0), i64 3) #13, !dbg !3199
	%21 = icmp eq i32 %20, 0, !dbg !3202
	br i1 %21, label %22, label %24, !dbg !3203
	%23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !3204
	tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !3173, metadata !688), !dbg !3176
	store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !3206, !tbaa !696
	br label %24, !dbg !3207
	%25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
	tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !3173, metadata !688), !dbg !3176
	store i8* %25, i8** @program_name, align 8, !dbg !3208, !tbaa !696
	store i8* %25, i8** @program_invocation_name, align 8, !dbg !3209, !tbaa !696
	ret void, !dbg !3210
}
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #10
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !3211 {
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !3216, metadata !688), !dbg !3219
	%2 = tail call i32* @__errno_location() #1, !dbg !3220
	%3 = load i32, i32* %2, align 4, !dbg !3220, !tbaa !903
	tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !3217, metadata !688), !dbg !3221
	%4 = icmp ne %struct.quoting_options* %0, null, !dbg !3222
	%5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !3223
	%6 = select i1 %4, i8* %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), !dbg !3223
	%7 = tail call i8* @xmemdup(i8* %6, i64 56) #10, !dbg !3225
	%8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !3225
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !3218, metadata !688), !dbg !3226
	store i32 %3, i32* %2, align 4, !dbg !3227, !tbaa !903
	ret %struct.quoting_options* %8, !dbg !3228
}
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #11 !dbg !3229 {
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !3235, metadata !688), !dbg !3236
	%2 = icmp ne %struct.quoting_options* %0, null, !dbg !3237
	%3 = select i1 %2, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !3237
	%4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3238
	%5 = load i32, i32* %4, align 8, !dbg !3238, !tbaa !3240
	ret i32 %5, !dbg !3242
}
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !3243 {
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !3247, metadata !688), !dbg !3249
	tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3248, metadata !688), !dbg !3250
	%3 = icmp ne %struct.quoting_options* %0, null, !dbg !3251
	%4 = select i1 %3, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !3251
	%5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3252
	store i32 %1, i32* %5, align 8, !dbg !3254, !tbaa !3240
	ret void, !dbg !3255
}
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !3256 {
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !3260, metadata !688), !dbg !3268
	tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !3261, metadata !688), !dbg !3269
	tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3262, metadata !688), !dbg !3270
	tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !3263, metadata !688), !dbg !3271
	%4 = icmp ne %struct.quoting_options* %0, null, !dbg !3272
	%5 = select i1 %4, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !3272
	%6 = lshr i8 %1, 5, !dbg !3273
	%7 = zext i8 %6 to i64, !dbg !3273
	%8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !3275
	tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !3264, metadata !688), !dbg !3276
	%9 = and i8 %1, 31, !dbg !3277
	%10 = zext i8 %9 to i32, !dbg !3278
	tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !3266, metadata !688), !dbg !3279
	%11 = load i32, i32* %8, align 4, !dbg !3280, !tbaa !903
	%12 = lshr i32 %11, %10, !dbg !3281
	%13 = and i32 %12, 1, !dbg !3282
	tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !3267, metadata !688), !dbg !3283
	%14 = and i32 %2, 1, !dbg !3284
	%15 = xor i32 %13, %14, !dbg !3285
	%16 = shl i32 %15, %10, !dbg !3286
	%17 = xor i32 %16, %11, !dbg !3287
	store i32 %17, i32* %8, align 4, !dbg !3287, !tbaa !903
	ret i32 %13, !dbg !3288
}
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !3289 {
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !3293, metadata !688), !dbg !3296
	tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3294, metadata !688), !dbg !3297
	%3 = icmp eq %struct.quoting_options* %0, null, !dbg !3298
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !3293, metadata !688), !dbg !3296
	%4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !3300
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3293, metadata !688), !dbg !3296
	%5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3301
	%6 = load i32, i32* %5, align 4, !dbg !3301, !tbaa !3302
	tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !3295, metadata !688), !dbg !3303
	store i32 %1, i32* %5, align 4, !dbg !3304, !tbaa !3302
	ret i32 %6, !dbg !3305
}
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !3306 {
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !3310, metadata !688), !dbg !3313
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3311, metadata !688), !dbg !3314
	tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3312, metadata !688), !dbg !3315
	%4 = icmp eq %struct.quoting_options* %0, null, !dbg !3316
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !3310, metadata !688), !dbg !3313
	%5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !3318
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3310, metadata !688), !dbg !3313
	%6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3319
	store i32 10, i32* %6, align 8, !dbg !3320, !tbaa !3240
	%7 = icmp ne i8* %1, null, !dbg !3321
	%8 = icmp ne i8* %2, null, !dbg !3323
	%9 = and i1 %7, %8, !dbg !3325
	br i1 %9, label %11, label %10, !dbg !3325
	tail call void @abort() #14, !dbg !3326
	unreachable, !dbg !3326
	%12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3327
	store i8* %1, i8** %12, align 8, !dbg !3328, !tbaa !3329
	%13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3330
	store i8* %2, i8** %13, align 8, !dbg !3331, !tbaa !3332
	ret void, !dbg !3333
}
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !3334 {
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3338, metadata !688), !dbg !3346
	tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3339, metadata !688), !dbg !3347
	tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3340, metadata !688), !dbg !3348
	tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3341, metadata !688), !dbg !3349
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3342, metadata !688), !dbg !3350
	%6 = icmp ne %struct.quoting_options* %4, null, !dbg !3351
	%7 = select i1 %6, %struct.quoting_options* %4, %struct.quoting_options* @default_quoting_options, !dbg !3351
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !3343, metadata !688), !dbg !3352
	%8 = tail call i32* @__errno_location() #1, !dbg !3353
	%9 = load i32, i32* %8, align 4, !dbg !3353, !tbaa !903
	tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !3344, metadata !688), !dbg !3354
	%10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !3355
	%11 = load i32, i32* %10, align 8, !dbg !3355, !tbaa !3240
	%12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !3356
	%13 = load i32, i32* %12, align 4, !dbg !3356, !tbaa !3302
	%14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !3357
	%15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !3358
	%16 = load i8*, i8** %15, align 8, !dbg !3358, !tbaa !3329
	%17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !3359
	%18 = load i8*, i8** %17, align 8, !dbg !3359, !tbaa !3332
	%19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !3360
	tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !3345, metadata !688), !dbg !3361
	store i32 %9, i32* %8, align 4, !dbg !3362, !tbaa !903
	ret i64 %19, !dbg !3363
}
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !3364 {
	%10 = alloca i64, align 8
	%11 = bitcast i64* %10 to %struct.__mbstate_t*
	%12 = alloca i32, align 4
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3370, metadata !688), !dbg !3433
	tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3371, metadata !688), !dbg !3434
	tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3372, metadata !688), !dbg !3435
	tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3373, metadata !688), !dbg !3436
	tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !3374, metadata !688), !dbg !3437
	tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !3375, metadata !688), !dbg !3438
	tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !3376, metadata !688), !dbg !3439
	tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !3377, metadata !688), !dbg !3440
	tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3378, metadata !688), !dbg !3441
	tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3380, metadata !688), !dbg !3442
	tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3381, metadata !688), !dbg !3443
	tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3382, metadata !688), !dbg !3444
	tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3383, metadata !688), !dbg !3445
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3384, metadata !688), !dbg !3446
	%13 = tail call i64 @__ctype_get_mb_cur_max() #10, !dbg !3447
	%14 = icmp eq i64 %13, 1, !dbg !3448
	%15 = lshr i32 %5, 1, !dbg !3449
	%16 = trunc i32 %15 to i8, !dbg !3449
	%17 = and i8 %16, 1, !dbg !3449
	tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !3386, metadata !688), !dbg !3449
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3387, metadata !688), !dbg !3450
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3388, metadata !688), !dbg !3451
	tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3389, metadata !688), !dbg !3452
	%18 = bitcast i64* %10 to i8*
	%19 = bitcast i32* %12 to i8*
	%20 = icmp eq i32* %6, null
	%21 = icmp ne i32* %6, null
	%22 = and i32 %5, 1
	%23 = icmp eq i32 %22, 0
	%24 = and i32 %5, 4
	%25 = icmp eq i32 %24, 0
	%26 = getelementptr inbounds i8, i8* %2, i64 1
	br label %27, !dbg !3453
	%28 = phi i32 [ %4, %9 ], [ %96, %614 ]
	%29 = phi i8* [ %7, %9 ], [ %97, %614 ]
	%30 = phi i8* [ %8, %9 ], [ %98, %614 ]
	%31 = phi i64 [ 0, %9 ], [ %126, %614 ]
	%32 = phi i8* [ null, %9 ], [ %100, %614 ]
	%33 = phi i64 [ 0, %9 ], [ %101, %614 ]
	%34 = phi i8 [ 0, %9 ], [ %102, %614 ]
	%35 = phi i64 [ %3, %9 ], [ %598, %614 ]
	%36 = phi i8 [ %17, %9 ], [ %103, %614 ]
	%37 = phi i8 [ 0, %9 ], [ %128, %614 ]
	%38 = phi i8 [ 0, %9 ], [ %129, %614 ]
	%39 = phi i8 [ 1, %9 ], [ %130, %614 ]
	%40 = phi i64 [ %1, %9 ], [ %126, %614 ]
	call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !3371, metadata !688), !dbg !3434
	call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !3389, metadata !688), !dbg !3452
	call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !3388, metadata !688), !dbg !3451
	call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !3387, metadata !688), !dbg !3450
	call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !3386, metadata !688), !dbg !3449
	call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !3373, metadata !688), !dbg !3436
	call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !3384, metadata !688), !dbg !3446
	call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !3383, metadata !688), !dbg !3445
	call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !3382, metadata !688), !dbg !3444
	call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !3381, metadata !688), !dbg !3443
	call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3380, metadata !688), !dbg !3442
	call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !3378, metadata !688), !dbg !3441
	call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3377, metadata !688), !dbg !3440
	call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !3374, metadata !688), !dbg !3437
	switch i32 %28, label %94 [
		i32 6, label %41
		i32 5, label %42
		i32 7, label %95
		i32 0, label %93
		i32 2, label %85
		i32 4, label %79
		i32 3, label %76
		i32 1, label %77
		i32 10, label %51
		i32 8, label %48
		i32 9, label %48
	], !dbg !3454
	call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3374, metadata !688), !dbg !3437
	call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3386, metadata !688), !dbg !3449
	call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !3386, metadata !688), !dbg !3449
	call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3374, metadata !688), !dbg !3437
	br label %95, !dbg !3455
	call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !3386, metadata !688), !dbg !3449
	call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3374, metadata !688), !dbg !3437
	%43 = and i8 %36, 1, !dbg !3457
	%44 = icmp eq i8 %43, 0, !dbg !3457
	br i1 %44, label %45, label %95, !dbg !3455
	%46 = icmp eq i64 %40, 0, !dbg !3459
	br i1 %46, label %95, label %47, !dbg !3463
	store i8 34, i8* %0, align 1, !dbg !3465, !tbaa !1179
	br label %95, !dbg !3465
	%49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.108, i64 0, i64 0), i32 %28), !dbg !3467
	call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !3377, metadata !688), !dbg !3440
	%50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.109, i64 0, i64 0), i32 %28), !dbg !3471
	call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !3378, metadata !688), !dbg !3441
	br label %51, !dbg !3472
	%52 = phi i8* [ %49, %48 ], [ %29, %27 ]
	%53 = phi i8* [ %50, %48 ], [ %30, %27 ]
	call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !3378, metadata !688), !dbg !3441
	call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3377, metadata !688), !dbg !3440
	%54 = and i8 %36, 1, !dbg !3473
	%55 = icmp eq i8 %54, 0, !dbg !3473
	br i1 %55, label %56, label %73, !dbg !3475
	call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3382, metadata !688), !dbg !3444
	call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3380, metadata !688), !dbg !3442
	%57 = load i8, i8* %52, align 1, !dbg !3476, !tbaa !1179
	%58 = icmp eq i8 %57, 0, !dbg !3480
	br i1 %58, label %73, label %59, !dbg !3480
	br label %60, !dbg !3482
	%61 = phi i8 [ %70, %67 ], [ %57, %59 ]
	%62 = phi i8* [ %69, %67 ], [ %52, %59 ]
	%63 = phi i64 [ %68, %67 ], [ 0, %59 ]
	%64 = icmp ult i64 %63, %40, !dbg !3482
	br i1 %64, label %65, label %67, !dbg !3486
	%66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !3488
	store i8 %61, i8* %66, align 1, !dbg !3488, !tbaa !1179
	br label %67, !dbg !3488
	%68 = add i64 %63, 1, !dbg !3490
	call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !3380, metadata !688), !dbg !3442
	%69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !3492
	call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !3382, metadata !688), !dbg !3444
	call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !3382, metadata !688), !dbg !3444
	call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !3380, metadata !688), !dbg !3442
	%70 = load i8, i8* %69, align 1, !dbg !3476, !tbaa !1179
	%71 = icmp eq i8 %70, 0, !dbg !3480
	br i1 %71, label %72, label %60, !dbg !3480, !llvm.loop !3494
	br label %73, !dbg !3442
	%74 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %72 ]
	call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !3380, metadata !688), !dbg !3442
	call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3384, metadata !688), !dbg !3446
	call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !3382, metadata !688), !dbg !3444
	%75 = call i64 @strlen(i8* %53) #13, !dbg !3497
	call void @llvm.dbg.value(metadata i64 %75, i64 0, metadata !3383, metadata !688), !dbg !3445
	br label %95, !dbg !3498
	call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3384, metadata !688), !dbg !3446
	br label %77, !dbg !3499
	%78 = phi i8 [ %34, %27 ], [ 1, %76 ]
	call void @llvm.dbg.value(metadata i8 %78, i64 0, metadata !3384, metadata !688), !dbg !3446
	call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3386, metadata !688), !dbg !3449
	br label %79, !dbg !3500
	%80 = phi i8 [ %34, %27 ], [ %78, %77 ]
	%81 = phi i8 [ %36, %27 ], [ 1, %77 ]
	call void @llvm.dbg.value(metadata i8 %81, i64 0, metadata !3386, metadata !688), !dbg !3449
	call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !3384, metadata !688), !dbg !3446
	%82 = and i8 %81, 1, !dbg !3501
	%83 = icmp eq i8 %82, 0, !dbg !3501
	call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3384, metadata !688), !dbg !3446
	%84 = select i1 %83, i8 1, i8 %80, !dbg !3503
	br label %85, !dbg !3503
	%86 = phi i8 [ %34, %27 ], [ %84, %79 ]
	%87 = phi i8 [ %36, %27 ], [ %81, %79 ]
	call void @llvm.dbg.value(metadata i8 %87, i64 0, metadata !3386, metadata !688), !dbg !3449
	call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !3384, metadata !688), !dbg !3446
	call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3374, metadata !688), !dbg !3437
	%88 = and i8 %87, 1, !dbg !3504
	%89 = icmp eq i8 %88, 0, !dbg !3504
	br i1 %89, label %90, label %95, !dbg !3506
	%91 = icmp eq i64 %40, 0, !dbg !3507
	br i1 %91, label %95, label %92, !dbg !3511
	store i8 39, i8* %0, align 1, !dbg !3513, !tbaa !1179
	br label %95, !dbg !3513
	call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3386, metadata !688), !dbg !3449
	br label %95, !dbg !3515
	call void @abort() #14, !dbg !3516
	unreachable, !dbg !3516
	%96 = phi i32 [ 0, %93 ], [ %28, %73 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %92 ], [ 2, %90 ], [ 2, %85 ], [ 5, %41 ]
	%97 = phi i8* [ %29, %93 ], [ %52, %73 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %92 ], [ %29, %90 ], [ %29, %85 ], [ %29, %41 ]
	%98 = phi i8* [ %30, %93 ], [ %53, %73 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %92 ], [ %30, %90 ], [ %30, %85 ], [ %30, %41 ]
	%99 = phi i64 [ 0, %93 ], [ %74, %73 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %92 ], [ 1, %90 ], [ 0, %85 ], [ 0, %41 ]
	%100 = phi i8* [ %32, %93 ], [ %53, %73 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.110, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.110, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.110, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.109, i64 0, i64 0), %92 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.109, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.109, i64 0, i64 0), %85 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.110, i64 0, i64 0), %41 ]
	%101 = phi i64 [ %33, %93 ], [ %75, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %92 ], [ 1, %90 ], [ 1, %85 ], [ 1, %41 ]
	%102 = phi i8 [ %34, %93 ], [ 1, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %86, %92 ], [ %86, %90 ], [ %86, %85 ], [ 1, %41 ]
	%103 = phi i8 [ 0, %93 ], [ %36, %73 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %87, %92 ], [ %87, %90 ], [ %87, %85 ], [ 1, %41 ]
	call void @llvm.dbg.value(metadata i8 %103, i64 0, metadata !3386, metadata !688), !dbg !3449
	call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !3384, metadata !688), !dbg !3446
	call void @llvm.dbg.value(metadata i64 %101, i64 0, metadata !3383, metadata !688), !dbg !3445
	call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !3382, metadata !688), !dbg !3444
	call void @llvm.dbg.value(metadata i64 %99, i64 0, metadata !3380, metadata !688), !dbg !3442
	call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !3378, metadata !688), !dbg !3441
	call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !3377, metadata !688), !dbg !3440
	call void @llvm.dbg.value(metadata i32 %96, i64 0, metadata !3374, metadata !688), !dbg !3437
	call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3379, metadata !688), !dbg !3517
	%104 = and i8 %102, 1
	%105 = icmp ne i8 %104, 0
	%106 = icmp ne i32 %96, 2
	%107 = and i1 %106, %105
	%108 = icmp ne i64 %101, 0
	%109 = and i1 %108, %107
	%110 = icmp ugt i64 %101, 1
	%111 = and i8 %103, 1
	%112 = icmp eq i8 %111, 0
	%113 = xor i1 %105, true
	%114 = icmp eq i32 %96, 2
	%115 = icmp ne i8 %111, 0
	%116 = and i1 %114, %115
	%117 = and i1 %21, %115
	%118 = or i1 %106, %112
	%119 = and i8 %102, %103
	%120 = and i8 %119, 1
	%121 = icmp ne i8 %120, 0
	%122 = and i1 %121, %108
	br label %123, !dbg !3518
	%124 = phi i64 [ 0, %95 ], [ %596, %587 ]
	%125 = phi i64 [ %99, %95 ], [ %589, %587 ]
	%126 = phi i64 [ %31, %95 ], [ %590, %587 ]
	%127 = phi i64 [ %35, %95 ], [ %591, %587 ]
	%128 = phi i8 [ %37, %95 ], [ %592, %587 ]
	%129 = phi i8 [ %38, %95 ], [ %593, %587 ]
	%130 = phi i8 [ %39, %95 ], [ %594, %587 ]
	%131 = phi i64 [ %40, %95 ], [ %595, %587 ]
	call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !3371, metadata !688), !dbg !3434
	call void @llvm.dbg.value(metadata i8 %130, i64 0, metadata !3389, metadata !688), !dbg !3452
	call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !3388, metadata !688), !dbg !3451
	call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !3387, metadata !688), !dbg !3450
	call void @llvm.dbg.value(metadata i64 %127, i64 0, metadata !3373, metadata !688), !dbg !3436
	call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !3381, metadata !688), !dbg !3443
	call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !3380, metadata !688), !dbg !3442
	call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !3379, metadata !688), !dbg !3517
	%132 = icmp eq i64 %127, -1, !dbg !3519
	br i1 %132, label %135, label %133, !dbg !3521
	%134 = icmp eq i64 %124, %127, !dbg !3522
	br i1 %134, label %597, label %139, !dbg !3524
	%136 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !3526
	%137 = load i8, i8* %136, align 1, !dbg !3526, !tbaa !1179
	%138 = icmp eq i8 %137, 0, !dbg !3528
	br i1 %138, label %597, label %139, !dbg !3524
	call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3395, metadata !688), !dbg !3529
	call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3396, metadata !688), !dbg !3530
	call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3397, metadata !688), !dbg !3531
	br i1 %109, label %140, label %155, !dbg !3532
	%141 = add i64 %124, %101, !dbg !3534
	%142 = and i1 %110, %132, !dbg !3536
	br i1 %142, label %143, label %145, !dbg !3536
	%144 = call i64 @strlen(i8* %2) #13, !dbg !3537
	call void @llvm.dbg.value(metadata i64 %144, i64 0, metadata !3373, metadata !688), !dbg !3436
	br label %145, !dbg !3538
	%146 = phi i64 [ %144, %143 ], [ %127, %140 ]
	call void @llvm.dbg.value(metadata i64 %146, i64 0, metadata !3373, metadata !688), !dbg !3436
	%147 = icmp ugt i64 %141, %146, !dbg !3540
	br i1 %147, label %155, label %148, !dbg !3542
	%149 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !3543
	%150 = call i32 @memcmp(i8* %149, i8* %100, i64 %101) #13, !dbg !3544
	%151 = icmp ne i32 %150, 0, !dbg !3545
	%152 = or i1 %151, %112, !dbg !3545
	%153 = xor i1 %151, true, !dbg !3545
	%154 = zext i1 %153 to i8, !dbg !3545
	br i1 %152, label %155, label %644, !dbg !3545
	%156 = phi i64 [ %146, %148 ], [ %146, %145 ], [ %127, %139 ]
	%157 = phi i8 [ %154, %148 ], [ 0, %145 ], [ 0, %139 ]
	call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !3395, metadata !688), !dbg !3529
	call void @llvm.dbg.value(metadata i64 %156, i64 0, metadata !3373, metadata !688), !dbg !3436
	%158 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !3547
	%159 = load i8, i8* %158, align 1, !dbg !3547, !tbaa !1179
	call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !3390, metadata !688), !dbg !3548
	switch i8 %159, label %298 [
		i8 0, label %160
		i8 63, label %210
		i8 7, label %257
		i8 8, label %247
		i8 12, label %248
		i8 10, label %255
		i8 13, label %249
		i8 9, label %250
		i8 11, label %251
		i8 92, label %252
		i8 123, label %259
		i8 125, label %259
		i8 35, label %270
		i8 126, label %270
		i8 32, label %272
		i8 33, label %273
		i8 34, label %273
		i8 36, label %273
		i8 38, label %273
		i8 40, label %273
		i8 41, label %273
		i8 42, label %273
		i8 59, label %273
		i8 60, label %273
		i8 61, label %273
		i8 62, label %273
		i8 91, label %273
		i8 94, label %273
		i8 96, label %273
		i8 124, label %273
		i8 39, label %275
		i8 37, label %476
		i8 43, label %476
		i8 44, label %476
		i8 45, label %476
		i8 46, label %476
		i8 47, label %476
		i8 48, label %476
		i8 49, label %476
		i8 50, label %476
		i8 51, label %476
		i8 52, label %476
		i8 53, label %476
		i8 54, label %476
		i8 55, label %476
		i8 56, label %476
		i8 57, label %476
		i8 58, label %476
		i8 65, label %476
		i8 66, label %476
		i8 67, label %476
		i8 68, label %476
		i8 69, label %476
		i8 70, label %476
		i8 71, label %476
		i8 72, label %476
		i8 73, label %476
		i8 74, label %476
		i8 75, label %476
		i8 76, label %476
		i8 77, label %476
		i8 78, label %476
		i8 79, label %476
		i8 80, label %476
		i8 81, label %476
		i8 82, label %476
		i8 83, label %476
		i8 84, label %476
		i8 85, label %476
		i8 86, label %476
		i8 87, label %476
		i8 88, label %476
		i8 89, label %476
		i8 90, label %476
		i8 93, label %476
		i8 95, label %476
		i8 97, label %476
		i8 98, label %476
		i8 99, label %476
		i8 100, label %476
		i8 101, label %476
		i8 102, label %476
		i8 103, label %476
		i8 104, label %476
		i8 105, label %476
		i8 106, label %476
		i8 107, label %476
		i8 108, label %476
		i8 109, label %476
		i8 110, label %476
		i8 111, label %476
		i8 112, label %476
		i8 113, label %476
		i8 114, label %476
		i8 115, label %476
		i8 116, label %476
		i8 117, label %476
		i8 118, label %476
		i8 119, label %476
		i8 120, label %476
		i8 121, label %476
		i8 122, label %476
	], !dbg !3549
	br i1 %105, label %161, label %209, !dbg !3550
	br i1 %112, label %162, label %644, !dbg !3551
	call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3396, metadata !688), !dbg !3530
	%163 = and i8 %128, 1, !dbg !3556
	%164 = icmp eq i8 %163, 0, !dbg !3556
	%165 = and i1 %114, %164, !dbg !3559
	br i1 %165, label %166, label %182, !dbg !3559
	%167 = icmp ult i64 %125, %131, !dbg !3561
	br i1 %167, label %168, label %170, !dbg !3566
	%169 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !3568
	store i8 39, i8* %169, align 1, !dbg !3568, !tbaa !1179
	br label %170, !dbg !3568
	%171 = add i64 %125, 1, !dbg !3570
	call void @llvm.dbg.value(metadata i64 %171, i64 0, metadata !3380, metadata !688), !dbg !3442
	%172 = icmp ult i64 %171, %131, !dbg !3572
	br i1 %172, label %173, label %175, !dbg !3576
	%174 = getelementptr inbounds i8, i8* %0, i64 %171, !dbg !3578
	store i8 36, i8* %174, align 1, !dbg !3578, !tbaa !1179
	br label %175, !dbg !3578
	%176 = add i64 %125, 2, !dbg !3580
	call void @llvm.dbg.value(metadata i64 %176, i64 0, metadata !3380, metadata !688), !dbg !3442
	%177 = icmp ult i64 %176, %131, !dbg !3582
	br i1 %177, label %178, label %180, !dbg !3586
	%179 = getelementptr inbounds i8, i8* %0, i64 %176, !dbg !3588
	store i8 39, i8* %179, align 1, !dbg !3588, !tbaa !1179
	br label %180, !dbg !3588
	%181 = add i64 %125, 3, !dbg !3590
	call void @llvm.dbg.value(metadata i64 %181, i64 0, metadata !3380, metadata !688), !dbg !3442
	call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3387, metadata !688), !dbg !3450
	br label %182, !dbg !3592
	%183 = phi i64 [ %181, %180 ], [ %125, %162 ]
	%184 = phi i8 [ 1, %180 ], [ %128, %162 ]
	call void @llvm.dbg.value(metadata i8 %184, i64 0, metadata !3387, metadata !688), !dbg !3450
	call void @llvm.dbg.value(metadata i64 %183, i64 0, metadata !3380, metadata !688), !dbg !3442
	%185 = icmp ult i64 %183, %131, !dbg !3594
	br i1 %185, label %186, label %188, !dbg !3598
	%187 = getelementptr inbounds i8, i8* %0, i64 %183, !dbg !3600
	store i8 92, i8* %187, align 1, !dbg !3600, !tbaa !1179
	br label %188, !dbg !3600
	%189 = add i64 %183, 1, !dbg !3602
	call void @llvm.dbg.value(metadata i64 %189, i64 0, metadata !3380, metadata !688), !dbg !3442
	br i1 %106, label %190, label %476, !dbg !3604
	%191 = add i64 %124, 1, !dbg !3606
	%192 = icmp ult i64 %191, %156, !dbg !3608
	br i1 %192, label %193, label %476, !dbg !3609
	%194 = getelementptr inbounds i8, i8* %2, i64 %191, !dbg !3610
	%195 = load i8, i8* %194, align 1, !dbg !3610, !tbaa !1179
	%196 = add i8 %195, -48, !dbg !3612
	%197 = icmp ult i8 %196, 10, !dbg !3612
	br i1 %197, label %198, label %476, !dbg !3612
	%199 = icmp ult i64 %189, %131, !dbg !3613
	br i1 %199, label %200, label %202, !dbg !3618
	%201 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !3620
	store i8 48, i8* %201, align 1, !dbg !3620, !tbaa !1179
	br label %202, !dbg !3620
	%203 = add i64 %183, 2, !dbg !3622
	call void @llvm.dbg.value(metadata i64 %203, i64 0, metadata !3380, metadata !688), !dbg !3442
	%204 = icmp ult i64 %203, %131, !dbg !3624
	br i1 %204, label %205, label %207, !dbg !3628
	%206 = getelementptr inbounds i8, i8* %0, i64 %203, !dbg !3630
	store i8 48, i8* %206, align 1, !dbg !3630, !tbaa !1179
	br label %207, !dbg !3630
	%208 = add i64 %183, 3, !dbg !3632
	call void @llvm.dbg.value(metadata i64 %208, i64 0, metadata !3380, metadata !688), !dbg !3442
	br label %476, !dbg !3634
	br i1 %23, label %476, label %587, !dbg !3635
	switch i32 %96, label %476 [
		i32 2, label %211
		i32 5, label %212
	], !dbg !3636
	br i1 %112, label %476, label %644, !dbg !3637
	br i1 %25, label %476, label %213, !dbg !3639
	%214 = add i64 %124, 2, !dbg !3641
	%215 = icmp ult i64 %214, %156, !dbg !3643
	br i1 %215, label %216, label %476, !dbg !3644
	%217 = add i64 %124, 1, !dbg !3645
	%218 = getelementptr inbounds i8, i8* %2, i64 %217, !dbg !3647
	%219 = load i8, i8* %218, align 1, !dbg !3647, !tbaa !1179
	%220 = icmp eq i8 %219, 63, !dbg !3648
	br i1 %220, label %221, label %476, !dbg !3649
	%222 = getelementptr inbounds i8, i8* %2, i64 %214, !dbg !3651
	%223 = load i8, i8* %222, align 1, !dbg !3651, !tbaa !1179
	%224 = sext i8 %223 to i32, !dbg !3651
	switch i32 %224, label %476 [
		i32 33, label %225
		i32 39, label %225
		i32 40, label %225
		i32 41, label %225
		i32 45, label %225
		i32 47, label %225
		i32 60, label %225
		i32 61, label %225
		i32 62, label %225
	], !dbg !3652
	br i1 %112, label %226, label %644, !dbg !3653
	call void @llvm.dbg.value(metadata i8 %223, i64 0, metadata !3390, metadata !688), !dbg !3548
	call void @llvm.dbg.value(metadata i64 %214, i64 0, metadata !3379, metadata !688), !dbg !3517
	%227 = icmp ult i64 %125, %131, !dbg !3655
	br i1 %227, label %228, label %230, !dbg !3659
	%229 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !3661
	store i8 63, i8* %229, align 1, !dbg !3661, !tbaa !1179
	br label %230, !dbg !3661
	%231 = add i64 %125, 1, !dbg !3663
	call void @llvm.dbg.value(metadata i64 %231, i64 0, metadata !3380, metadata !688), !dbg !3442
	%232 = icmp ult i64 %231, %131, !dbg !3665
	br i1 %232, label %233, label %235, !dbg !3669
	%234 = getelementptr inbounds i8, i8* %0, i64 %231, !dbg !3671
	store i8 34, i8* %234, align 1, !dbg !3671, !tbaa !1179
	br label %235, !dbg !3671
	%236 = add i64 %125, 2, !dbg !3673
	call void @llvm.dbg.value(metadata i64 %236, i64 0, metadata !3380, metadata !688), !dbg !3442
	%237 = icmp ult i64 %236, %131, !dbg !3675
	br i1 %237, label %238, label %240, !dbg !3679
	%239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !3681
	store i8 34, i8* %239, align 1, !dbg !3681, !tbaa !1179
	br label %240, !dbg !3681
	%241 = add i64 %125, 3, !dbg !3683
	call void @llvm.dbg.value(metadata i64 %241, i64 0, metadata !3380, metadata !688), !dbg !3442
	%242 = icmp ult i64 %241, %131, !dbg !3685
	br i1 %242, label %243, label %245, !dbg !3689
	%244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !3691
	store i8 63, i8* %244, align 1, !dbg !3691, !tbaa !1179
	br label %245, !dbg !3691
	%246 = add i64 %125, 4, !dbg !3693
	call void @llvm.dbg.value(metadata i64 %246, i64 0, metadata !3380, metadata !688), !dbg !3442
	br label %476, !dbg !3695
	call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !3394, metadata !688), !dbg !3696
	br label %257, !dbg !3697
	call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !3394, metadata !688), !dbg !3696
	br label %257, !dbg !3698
	call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !3394, metadata !688), !dbg !3696
	br label %255, !dbg !3699
	call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !3394, metadata !688), !dbg !3696
	br label %255, !dbg !3700
	call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !3394, metadata !688), !dbg !3696
	br label %257, !dbg !3701
	call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !3394, metadata !688), !dbg !3696
	br i1 %114, label %253, label %254, !dbg !3702
	br i1 %112, label %542, label %644, !dbg !3703
	br i1 %122, label %542, label %255, !dbg !3706
	%256 = phi i8 [ 92, %254 ], [ 116, %250 ], [ 114, %249 ], [ 110, %155 ]
	call void @llvm.dbg.value(metadata i8 %256, i64 0, metadata !3394, metadata !688), !dbg !3696
	br i1 %118, label %257, label %644, !dbg !3708
	%258 = phi i8 [ %256, %255 ], [ 118, %251 ], [ 102, %248 ], [ 98, %247 ], [ 97, %155 ]
	call void @llvm.dbg.value(metadata i8 %258, i64 0, metadata !3394, metadata !688), !dbg !3696
	br i1 %105, label %503, label %476, !dbg !3710
	%260 = icmp eq i64 %156, -1, !dbg !3711
	br i1 %260, label %261, label %266, !dbg !3713
	%262 = load i8, i8* %26, align 1, !dbg !3714, !tbaa !1179
	%263 = icmp ne i8 %262, 0, !dbg !3716
	%264 = icmp ne i64 %124, 0, !dbg !3717
	%265 = or i1 %264, %263, !dbg !3719
	br i1 %265, label %476, label %272, !dbg !3719
	%267 = icmp ne i64 %156, 1, !dbg !3720
	%268 = icmp ne i64 %124, 0, !dbg !3717
	%269 = or i1 %268, %267, !dbg !3722
	br i1 %269, label %476, label %272, !dbg !3722
	%271 = icmp eq i64 %124, 0, !dbg !3717
	br i1 %271, label %272, label %476, !dbg !3724
	call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3397, metadata !688), !dbg !3531
	br label %273, !dbg !3725
	%274 = phi i8 [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 1, %272 ]
	call void @llvm.dbg.value(metadata i8 %274, i64 0, metadata !3397, metadata !688), !dbg !3531
	br i1 %118, label %476, label %644, !dbg !3726
	call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3388, metadata !688), !dbg !3451
	call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3397, metadata !688), !dbg !3531
	br i1 %114, label %276, label %476, !dbg !3728
	br i1 %112, label %277, label %644, !dbg !3729
	%278 = icmp eq i64 %131, 0, !dbg !3732
	%279 = icmp ne i64 %126, 0, !dbg !3734
	%280 = or i1 %279, %278, !dbg !3736
	call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !3381, metadata !688), !dbg !3443
	call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3371, metadata !688), !dbg !3434
	%281 = select i1 %280, i64 %126, i64 %131, !dbg !3736
	%282 = select i1 %280, i64 %131, i64 0, !dbg !3736
	call void @llvm.dbg.value(metadata i64 %282, i64 0, metadata !3371, metadata !688), !dbg !3434
	call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !3381, metadata !688), !dbg !3443
	%283 = icmp ult i64 %125, %282, !dbg !3737
	br i1 %283, label %284, label %286, !dbg !3741
	%285 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !3743
	store i8 39, i8* %285, align 1, !dbg !3743, !tbaa !1179
	br label %286, !dbg !3743
	%287 = add i64 %125, 1, !dbg !3745
	call void @llvm.dbg.value(metadata i64 %287, i64 0, metadata !3380, metadata !688), !dbg !3442
	%288 = icmp ult i64 %287, %282, !dbg !3747
	br i1 %288, label %289, label %291, !dbg !3751
	%290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !3753
	store i8 92, i8* %290, align 1, !dbg !3753, !tbaa !1179
	br label %291, !dbg !3753
	%292 = add i64 %125, 2, !dbg !3755
	call void @llvm.dbg.value(metadata i64 %292, i64 0, metadata !3380, metadata !688), !dbg !3442
	%293 = icmp ult i64 %292, %282, !dbg !3757
	br i1 %293, label %294, label %296, !dbg !3761
	%295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !3763
	store i8 39, i8* %295, align 1, !dbg !3763, !tbaa !1179
	br label %296, !dbg !3763
	%297 = add i64 %125, 3, !dbg !3765
	call void @llvm.dbg.value(metadata i64 %297, i64 0, metadata !3380, metadata !688), !dbg !3442
	call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3387, metadata !688), !dbg !3450
	br label %476, !dbg !3767
	br i1 %14, label %299, label %308, !dbg !3768
	call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3398, metadata !688), !dbg !3769
	%300 = tail call i16** @__ctype_b_loc() #1, !dbg !3770
	%301 = load i16*, i16** %300, align 8, !dbg !3770, !tbaa !696
	%302 = zext i8 %159 to i64, !dbg !3770
	%303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !3770
	%304 = load i16, i16* %303, align 2, !dbg !3770, !tbaa !1143
	%305 = lshr i16 %304, 14, !dbg !3772
	%306 = trunc i16 %305 to i8, !dbg !3772
	%307 = and i8 %306, 1, !dbg !3772
	call void @llvm.dbg.value(metadata i8 %307, i64 0, metadata !3401, metadata !688), !dbg !3773
	br label %368, !dbg !3774
	call void @llvm.lifetime.start(i64 8, i8* nonnull %18) #10, !dbg !3775
	store i64 0, i64* %10, align 8, !dbg !3776
	call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3398, metadata !688), !dbg !3769
	call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3401, metadata !688), !dbg !3773
	%309 = icmp eq i64 %156, -1, !dbg !3777
	br i1 %309, label %310, label %312, !dbg !3779, !llvm.loop !3780
	%311 = call i64 @strlen(i8* nonnull %2) #13, !dbg !3783
	call void @llvm.dbg.value(metadata i64 %311, i64 0, metadata !3373, metadata !688), !dbg !3436
	br label %312, !dbg !3784, !llvm.loop !3780
	%313 = phi i64 [ %156, %308 ], [ %311, %310 ]
	br label %314, !dbg !3773
	%315 = phi i64 [ %360, %355 ], [ 0, %312 ]
	%316 = phi i8 [ %359, %355 ], [ 1, %312 ]
	call void @llvm.dbg.value(metadata i8 %316, i64 0, metadata !3401, metadata !688), !dbg !3773
	call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !3398, metadata !688), !dbg !3769
	call void @llvm.dbg.value(metadata i64 %313, i64 0, metadata !3373, metadata !688), !dbg !3436
	call void @llvm.lifetime.start(i64 4, i8* nonnull %19) #10, !dbg !3785
	%317 = add i64 %315, %124, !dbg !3786
	%318 = getelementptr inbounds i8, i8* %2, i64 %317, !dbg !3787
	%319 = sub i64 %313, %317, !dbg !3788
	call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !3402, metadata !958), !dbg !3789
	call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !3419, metadata !958), !dbg !3790
	%320 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %318, i64 %319, %struct.__mbstate_t* nonnull %11) #10, !dbg !3791
	call void @llvm.dbg.value(metadata i64 %320, i64 0, metadata !3422, metadata !688), !dbg !3792
	switch i64 %320, label %334 [
		i64 0, label %350
		i64 -1, label %347
		i64 -2, label %321
	], !dbg !3793
	call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !3398, metadata !688), !dbg !3769
	%322 = icmp ugt i64 %313, %317, !dbg !3794
	br i1 %322, label %323, label %351, !dbg !3797
	br label %324, !dbg !3798
	%325 = phi i64 [ %332, %330 ], [ %317, %323 ]
	%326 = phi i64 [ %331, %330 ], [ %315, %323 ]
	%327 = getelementptr inbounds i8, i8* %2, i64 %325, !dbg !3798
	%328 = load i8, i8* %327, align 1, !dbg !3798, !tbaa !1179
	%329 = icmp eq i8 %328, 0, !dbg !3800
	br i1 %329, label %348, label %330, !dbg !3801
	%331 = add i64 %326, 1, !dbg !3803
	call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !3398, metadata !688), !dbg !3769
	call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !3398, metadata !688), !dbg !3769
	%332 = add i64 %331, %124, !dbg !3804
	%333 = icmp ult i64 %332, %313, !dbg !3794
	br i1 %333, label %324, label %348, !dbg !3797, !llvm.loop !3805
	%335 = icmp ugt i64 %320, 1, !dbg !3807
	%336 = and i1 %116, %335, !dbg !3811
	call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3423, metadata !688), !dbg !3812
	br i1 %336, label %337, label %355, !dbg !3811
	br label %338, !dbg !3813
	%339 = phi i64 [ %345, %344 ], [ 1, %337 ]
	%340 = add i64 %339, %317, !dbg !3813
	%341 = getelementptr inbounds i8, i8* %2, i64 %340, !dbg !3814
	%342 = load i8, i8* %341, align 1, !dbg !3814, !tbaa !1179
	%343 = sext i8 %342 to i32, !dbg !3814
	switch i32 %343, label %344 [
		i32 91, label %367
		i32 92, label %367
		i32 94, label %367
		i32 96, label %367
		i32 124, label %367
	], !dbg !3815
	%345 = add nuw i64 %339, 1, !dbg !3816
	call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !3423, metadata !688), !dbg !3812
	call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !3423, metadata !688), !dbg !3812
	%346 = icmp ult i64 %345, %320, !dbg !3807
	br i1 %346, label %338, label %354, !dbg !3818, !llvm.loop !3820
	br label %351, !dbg !3773
	%349 = phi i64 [ %331, %330 ], [ %326, %324 ]
	br label %351, !dbg !3773
	br label %351, !dbg !3773
	%352 = phi i64 [ %315, %321 ], [ %315, %347 ], [ %349, %348 ], [ %315, %350 ]
	%353 = phi i8 [ 0, %321 ], [ 0, %347 ], [ 0, %348 ], [ %316, %350 ]
	call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !3401, metadata !688), !dbg !3773
	call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !3398, metadata !688), !dbg !3769
	call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10, !dbg !3823
	br label %364
	br label %355, !dbg !3824
	%356 = load i32, i32* %12, align 4, !dbg !3824, !tbaa !903
	call void @llvm.dbg.value(metadata i32 %356, i64 0, metadata !3419, metadata !688), !dbg !3790
	%357 = call i32 @iswprint(i32 %356) #10, !dbg !3826
	%358 = icmp eq i32 %357, 0, !dbg !3826
	call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3401, metadata !688), !dbg !3773
	%359 = select i1 %358, i8 0, i8 %316, !dbg !3827
	call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !3401, metadata !688), !dbg !3773
	%360 = add i64 %320, %315, !dbg !3828
	call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !3398, metadata !688), !dbg !3769
	call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !3401, metadata !688), !dbg !3773
	call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !3398, metadata !688), !dbg !3769
	call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10, !dbg !3823
	call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !3402, metadata !958), !dbg !3789
	%361 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #13, !dbg !3829
	%362 = icmp eq i32 %361, 0, !dbg !3830
	br i1 %362, label %314, label %363, !dbg !3831, !llvm.loop !3780
	br label %364, !dbg !3833
	%365 = phi i8 [ %353, %351 ], [ %359, %363 ]
	%366 = phi i64 [ %352, %351 ], [ %360, %363 ]
	call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #10, !dbg !3833
	br label %368
	call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !3401, metadata !688), !dbg !3773
	call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !3398, metadata !688), !dbg !3769
	call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10, !dbg !3823
	call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #10, !dbg !3833
	br label %649
	%369 = phi i64 [ %156, %299 ], [ %313, %364 ]
	%370 = phi i64 [ 1, %299 ], [ %366, %364 ]
	%371 = phi i8 [ %307, %299 ], [ %365, %364 ]
	call void @llvm.dbg.value(metadata i8 %371, i64 0, metadata !3401, metadata !688), !dbg !3773
	call void @llvm.dbg.value(metadata i64 %370, i64 0, metadata !3398, metadata !688), !dbg !3769
	call void @llvm.dbg.value(metadata i64 %369, i64 0, metadata !3373, metadata !688), !dbg !3436
	%372 = and i8 %371, 1, !dbg !3834
	%373 = icmp ne i8 %372, 0, !dbg !3834
	call void @llvm.dbg.value(metadata i8 %372, i64 0, metadata !3397, metadata !688), !dbg !3531
	%374 = icmp ult i64 %370, 2, !dbg !3835
	%375 = or i1 %373, %113, !dbg !3836
	%376 = and i1 %374, %375, !dbg !3838
	br i1 %376, label %476, label %377, !dbg !3838
	%378 = add i64 %370, %124, !dbg !3839
	call void @llvm.dbg.value(metadata i64 %378, i64 0, metadata !3430, metadata !688), !dbg !3840
	br label %379, !dbg !3841
	%380 = phi i64 [ %124, %377 ], [ %447, %472 ]
	%381 = phi i64 [ %125, %377 ], [ %473, %472 ]
	%382 = phi i8 [ %128, %377 ], [ %468, %472 ]
	%383 = phi i8 [ %159, %377 ], [ %475, %472 ]
	%384 = phi i8 [ %157, %377 ], [ %445, %472 ]
	%385 = phi i8 [ 0, %377 ], [ %446, %472 ]
	call void @llvm.dbg.value(metadata i8 %385, i64 0, metadata !3396, metadata !688), !dbg !3530
	call void @llvm.dbg.value(metadata i8 %384, i64 0, metadata !3395, metadata !688), !dbg !3529
	call void @llvm.dbg.value(metadata i8 %383, i64 0, metadata !3390, metadata !688), !dbg !3548
	call void @llvm.dbg.value(metadata i8 %382, i64 0, metadata !3387, metadata !688), !dbg !3450
	call void @llvm.dbg.value(metadata i64 %381, i64 0, metadata !3380, metadata !688), !dbg !3442
	call void @llvm.dbg.value(metadata i64 %380, i64 0, metadata !3379, metadata !688), !dbg !3517
	br i1 %375, label %432, label %386, !dbg !3842
	br i1 %112, label %387, label %643, !dbg !3847
	call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3396, metadata !688), !dbg !3530
	%388 = and i8 %382, 1, !dbg !3851
	%389 = icmp eq i8 %388, 0, !dbg !3851
	%390 = and i1 %114, %389, !dbg !3854
	br i1 %390, label %391, label %407, !dbg !3854
	%392 = icmp ult i64 %381, %131, !dbg !3856
	br i1 %392, label %393, label %395, !dbg !3861
	%394 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !3863
	store i8 39, i8* %394, align 1, !dbg !3863, !tbaa !1179
	br label %395, !dbg !3863
	%396 = add i64 %381, 1, !dbg !3865
	call void @llvm.dbg.value(metadata i64 %396, i64 0, metadata !3380, metadata !688), !dbg !3442
	%397 = icmp ult i64 %396, %131, !dbg !3867
	br i1 %397, label %398, label %400, !dbg !3871
	%399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !3873
	store i8 36, i8* %399, align 1, !dbg !3873, !tbaa !1179
	br label %400, !dbg !3873
	%401 = add i64 %381, 2, !dbg !3875
	call void @llvm.dbg.value(metadata i64 %401, i64 0, metadata !3380, metadata !688), !dbg !3442
	%402 = icmp ult i64 %401, %131, !dbg !3877
	br i1 %402, label %403, label %405, !dbg !3881
	%404 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !3883
	store i8 39, i8* %404, align 1, !dbg !3883, !tbaa !1179
	br label %405, !dbg !3883
	%406 = add i64 %381, 3, !dbg !3885
	call void @llvm.dbg.value(metadata i64 %406, i64 0, metadata !3380, metadata !688), !dbg !3442
	call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3387, metadata !688), !dbg !3450
	br label %407, !dbg !3887
	%408 = phi i64 [ %406, %405 ], [ %381, %387 ]
	%409 = phi i8 [ 1, %405 ], [ %382, %387 ]
	call void @llvm.dbg.value(metadata i8 %409, i64 0, metadata !3387, metadata !688), !dbg !3450
	call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !3380, metadata !688), !dbg !3442
	%410 = icmp ult i64 %408, %131, !dbg !3889
	br i1 %410, label %411, label %413, !dbg !3893
	%412 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !3895
	store i8 92, i8* %412, align 1, !dbg !3895, !tbaa !1179
	br label %413, !dbg !3895
	%414 = add i64 %408, 1, !dbg !3897
	call void @llvm.dbg.value(metadata i64 %414, i64 0, metadata !3380, metadata !688), !dbg !3442
	%415 = icmp ult i64 %414, %131, !dbg !3899
	br i1 %415, label %416, label %420, !dbg !3903
	%417 = lshr i8 %383, 6, !dbg !3905
	%418 = or i8 %417, 48, !dbg !3905
	%419 = getelementptr inbounds i8, i8* %0, i64 %414, !dbg !3905
	store i8 %418, i8* %419, align 1, !dbg !3905, !tbaa !1179
	br label %420, !dbg !3905
	%421 = add i64 %408, 2, !dbg !3907
	call void @llvm.dbg.value(metadata i64 %421, i64 0, metadata !3380, metadata !688), !dbg !3442
	%422 = icmp ult i64 %421, %131, !dbg !3909
	br i1 %422, label %423, label %428, !dbg !3913
	%424 = lshr i8 %383, 3, !dbg !3915
	%425 = and i8 %424, 7, !dbg !3915
	%426 = or i8 %425, 48, !dbg !3915
	%427 = getelementptr inbounds i8, i8* %0, i64 %421, !dbg !3915
	store i8 %426, i8* %427, align 1, !dbg !3915, !tbaa !1179
	br label %428, !dbg !3915
	%429 = add i64 %408, 3, !dbg !3917
	call void @llvm.dbg.value(metadata i64 %429, i64 0, metadata !3380, metadata !688), !dbg !3442
	%430 = and i8 %383, 7, !dbg !3919
	%431 = or i8 %430, 48, !dbg !3920
	call void @llvm.dbg.value(metadata i8 %431, i64 0, metadata !3390, metadata !688), !dbg !3548
	br label %441, !dbg !3921
	%433 = and i8 %384, 1, !dbg !3922
	%434 = icmp eq i8 %433, 0, !dbg !3922
	br i1 %434, label %441, label %435, !dbg !3924
	%436 = icmp ult i64 %381, %131, !dbg !3925
	br i1 %436, label %437, label %439, !dbg !3930
	%438 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !3932
	store i8 92, i8* %438, align 1, !dbg !3932, !tbaa !1179
	br label %439, !dbg !3932
	%440 = add i64 %381, 1, !dbg !3934
	call void @llvm.dbg.value(metadata i64 %440, i64 0, metadata !3380, metadata !688), !dbg !3442
	call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3395, metadata !688), !dbg !3529
	br label %441, !dbg !3936
	%442 = phi i64 [ %440, %439 ], [ %381, %432 ], [ %429, %428 ]
	%443 = phi i8 [ %382, %439 ], [ %382, %432 ], [ %409, %428 ]
	%444 = phi i8 [ %383, %439 ], [ %383, %432 ], [ %431, %428 ]
	%445 = phi i8 [ 0, %439 ], [ %384, %432 ], [ %384, %428 ]
	%446 = phi i8 [ %385, %439 ], [ %385, %432 ], [ 1, %428 ]
	call void @llvm.dbg.value(metadata i8 %446, i64 0, metadata !3396, metadata !688), !dbg !3530
	call void @llvm.dbg.value(metadata i8 %445, i64 0, metadata !3395, metadata !688), !dbg !3529
	call void @llvm.dbg.value(metadata i8 %444, i64 0, metadata !3390, metadata !688), !dbg !3548
	call void @llvm.dbg.value(metadata i8 %443, i64 0, metadata !3387, metadata !688), !dbg !3450
	call void @llvm.dbg.value(metadata i64 %442, i64 0, metadata !3380, metadata !688), !dbg !3442
	%447 = add i64 %380, 1, !dbg !3937
	%448 = icmp ugt i64 %378, %447, !dbg !3939
	br i1 %448, label %449, label %541, !dbg !3940
	%450 = and i8 %443, 1, !dbg !3941
	%451 = icmp ne i8 %450, 0, !dbg !3941
	%452 = and i8 %446, 1, !dbg !3945
	%453 = icmp eq i8 %452, 0, !dbg !3945
	%454 = and i1 %451, %453, !dbg !3941
	br i1 %454, label %455, label %466, !dbg !3941
	%456 = icmp ult i64 %442, %131, !dbg !3947
	br i1 %456, label %457, label %459, !dbg !3952
	%458 = getelementptr inbounds i8, i8* %0, i64 %442, !dbg !3954
	store i8 39, i8* %458, align 1, !dbg !3954, !tbaa !1179
	br label %459, !dbg !3954
	%460 = add i64 %442, 1, !dbg !3956
	call void @llvm.dbg.value(metadata i64 %460, i64 0, metadata !3380, metadata !688), !dbg !3442
	%461 = icmp ult i64 %460, %131, !dbg !3958
	br i1 %461, label %462, label %464, !dbg !3962
	%463 = getelementptr inbounds i8, i8* %0, i64 %460, !dbg !3964
	store i8 39, i8* %463, align 1, !dbg !3964, !tbaa !1179
	br label %464, !dbg !3964
	%465 = add i64 %442, 2, !dbg !3966
	call void @llvm.dbg.value(metadata i64 %465, i64 0, metadata !3380, metadata !688), !dbg !3442
	call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3387, metadata !688), !dbg !3450
	br label %466, !dbg !3968
	%467 = phi i64 [ %465, %464 ], [ %442, %449 ]
	%468 = phi i8 [ 0, %464 ], [ %443, %449 ]
	call void @llvm.dbg.value(metadata i8 %468, i64 0, metadata !3387, metadata !688), !dbg !3450
	call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !3380, metadata !688), !dbg !3442
	%469 = icmp ult i64 %467, %131, !dbg !3970
	br i1 %469, label %470, label %472, !dbg !3974
	%471 = getelementptr inbounds i8, i8* %0, i64 %467, !dbg !3976
	store i8 %444, i8* %471, align 1, !dbg !3976, !tbaa !1179
	br label %472, !dbg !3976
	%473 = add i64 %467, 1, !dbg !3978
	call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !3380, metadata !688), !dbg !3442
	call void @llvm.dbg.value(metadata i64 %447, i64 0, metadata !3379, metadata !688), !dbg !3517
	%474 = getelementptr inbounds i8, i8* %2, i64 %447, !dbg !3980
	%475 = load i8, i8* %474, align 1, !dbg !3980, !tbaa !1179
	call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !3390, metadata !688), !dbg !3548
	br label %379, !dbg !3981, !llvm.loop !3983
	%477 = phi i64 [ %124, %296 ], [ %124, %275 ], [ %124, %273 ], [ %124, %270 ], [ %124, %261 ], [ %124, %266 ], [ %124, %257 ], [ %124, %210 ], [ %124, %221 ], [ %214, %245 ], [ %124, %216 ], [ %124, %213 ], [ %124, %212 ], [ %124, %211 ], [ %124, %209 ], [ %124, %207 ], [ %124, %193 ], [ %124, %190 ], [ %124, %188 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %368 ]
	%478 = phi i64 [ %297, %296 ], [ %125, %275 ], [ %125, %273 ], [ %125, %270 ], [ %125, %261 ], [ %125, %266 ], [ %125, %257 ], [ %125, %210 ], [ %125, %221 ], [ %246, %245 ], [ %125, %216 ], [ %125, %213 ], [ %125, %212 ], [ %125, %211 ], [ %125, %209 ], [ %208, %207 ], [ %189, %193 ], [ %189, %190 ], [ %189, %188 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %368 ]
	%479 = phi i64 [ %281, %296 ], [ %126, %275 ], [ %126, %273 ], [ %126, %270 ], [ %126, %261 ], [ %126, %266 ], [ %126, %257 ], [ %126, %210 ], [ %126, %221 ], [ %126, %245 ], [ %126, %216 ], [ %126, %213 ], [ %126, %212 ], [ %126, %211 ], [ %126, %209 ], [ %126, %207 ], [ %126, %193 ], [ %126, %190 ], [ %126, %188 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %368 ]
	%480 = phi i64 [ %156, %296 ], [ %156, %275 ], [ %156, %273 ], [ %156, %270 ], [ -1, %261 ], [ %156, %266 ], [ %156, %257 ], [ %156, %210 ], [ %156, %221 ], [ %156, %245 ], [ %156, %216 ], [ %156, %213 ], [ %156, %212 ], [ %156, %211 ], [ %156, %209 ], [ %156, %207 ], [ %156, %193 ], [ %156, %190 ], [ %156, %188 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %369, %368 ]
	%481 = phi i8 [ 0, %296 ], [ %128, %275 ], [ %128, %273 ], [ %128, %270 ], [ %128, %261 ], [ %128, %266 ], [ %128, %257 ], [ %128, %210 ], [ %128, %221 ], [ %128, %245 ], [ %128, %216 ], [ %128, %213 ], [ %128, %212 ], [ %128, %211 ], [ %128, %209 ], [ %184, %207 ], [ %184, %193 ], [ %184, %190 ], [ %184, %188 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %368 ]
	%482 = phi i8 [ 1, %296 ], [ 1, %275 ], [ %129, %273 ], [ %129, %270 ], [ %129, %261 ], [ %129, %266 ], [ %129, %257 ], [ %129, %210 ], [ %129, %221 ], [ %129, %245 ], [ %129, %216 ], [ %129, %213 ], [ %129, %212 ], [ %129, %211 ], [ %129, %209 ], [ %129, %207 ], [ %129, %193 ], [ %129, %190 ], [ %129, %188 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %368 ]
	%483 = phi i8 [ 39, %296 ], [ 39, %275 ], [ %159, %273 ], [ %159, %270 ], [ %159, %261 ], [ %159, %266 ], [ %159, %257 ], [ 63, %210 ], [ 63, %221 ], [ %223, %245 ], [ 63, %216 ], [ 63, %213 ], [ 63, %212 ], [ 63, %211 ], [ 0, %209 ], [ 48, %207 ], [ 48, %193 ], [ 48, %190 ], [ 48, %188 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %368 ]
	%484 = phi i8 [ 0, %296 ], [ 0, %275 ], [ 0, %273 ], [ 0, %270 ], [ 0, %261 ], [ 0, %266 ], [ 0, %257 ], [ 0, %210 ], [ 0, %221 ], [ 0, %245 ], [ 0, %216 ], [ 0, %213 ], [ 0, %212 ], [ 0, %211 ], [ 0, %209 ], [ 1, %207 ], [ 1, %193 ], [ 1, %190 ], [ 1, %188 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %368 ]
	%485 = phi i8 [ 1, %296 ], [ 1, %275 ], [ %274, %273 ], [ 0, %270 ], [ 0, %261 ], [ 0, %266 ], [ 0, %257 ], [ 0, %210 ], [ 0, %221 ], [ 0, %245 ], [ 0, %216 ], [ 0, %213 ], [ 0, %212 ], [ 0, %211 ], [ 0, %209 ], [ 0, %207 ], [ 0, %193 ], [ 0, %190 ], [ 0, %188 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ %372, %368 ]
	%486 = phi i64 [ %282, %296 ], [ %131, %275 ], [ %131, %273 ], [ %131, %270 ], [ %131, %261 ], [ %131, %266 ], [ %131, %257 ], [ %131, %210 ], [ %131, %221 ], [ %131, %245 ], [ %131, %216 ], [ %131, %213 ], [ %131, %212 ], [ %131, %211 ], [ %131, %209 ], [ %131, %207 ], [ %131, %193 ], [ %131, %190 ], [ %131, %188 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %368 ]
	call void @llvm.dbg.value(metadata i64 %486, i64 0, metadata !3371, metadata !688), !dbg !3434
	call void @llvm.dbg.value(metadata i8 %485, i64 0, metadata !3397, metadata !688), !dbg !3531
	call void @llvm.dbg.value(metadata i8 %484, i64 0, metadata !3396, metadata !688), !dbg !3530
	call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !3395, metadata !688), !dbg !3529
	call void @llvm.dbg.value(metadata i8 %483, i64 0, metadata !3390, metadata !688), !dbg !3548
	call void @llvm.dbg.value(metadata i8 %482, i64 0, metadata !3388, metadata !688), !dbg !3451
	call void @llvm.dbg.value(metadata i8 %481, i64 0, metadata !3387, metadata !688), !dbg !3450
	call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !3373, metadata !688), !dbg !3436
	call void @llvm.dbg.value(metadata i64 %479, i64 0, metadata !3381, metadata !688), !dbg !3443
	call void @llvm.dbg.value(metadata i64 %478, i64 0, metadata !3380, metadata !688), !dbg !3442
	call void @llvm.dbg.value(metadata i64 %477, i64 0, metadata !3379, metadata !688), !dbg !3517
	br i1 %107, label %488, label %487, !dbg !3986
	br i1 %117, label %489, label %501, !dbg !3988
	br i1 %20, label %501, label %489, !dbg !3989
	%490 = lshr i8 %483, 5, !dbg !3990
	%491 = zext i8 %490 to i64, !dbg !3990
	%492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !3992
	%493 = load i32, i32* %492, align 4, !dbg !3992, !tbaa !903
	%494 = and i8 %483, 31, !dbg !3993
	%495 = zext i8 %494 to i32, !dbg !3994
	%496 = shl i32 1, %495, !dbg !3995
	%497 = and i32 %493, %496, !dbg !3995
	%498 = icmp eq i32 %497, 0, !dbg !3995
	%499 = icmp eq i8 %157, 0, !dbg !3996
	%500 = and i1 %499, %498, !dbg !3997
	br i1 %500, label %542, label %503, !dbg !3997
	%502 = icmp eq i8 %157, 0, !dbg !3996
	br i1 %502, label %542, label %503, !dbg !3998
	%504 = phi i64 [ %477, %489 ], [ %477, %501 ], [ %124, %257 ]
	%505 = phi i64 [ %478, %489 ], [ %478, %501 ], [ %125, %257 ]
	%506 = phi i64 [ %479, %489 ], [ %479, %501 ], [ %126, %257 ]
	%507 = phi i64 [ %480, %489 ], [ %480, %501 ], [ %156, %257 ]
	%508 = phi i8 [ %481, %489 ], [ %481, %501 ], [ %128, %257 ]
	%509 = phi i8 [ %482, %489 ], [ %482, %501 ], [ %129, %257 ]
	%510 = phi i8 [ %483, %489 ], [ %483, %501 ], [ %258, %257 ]
	%511 = phi i8 [ %485, %489 ], [ %485, %501 ], [ 0, %257 ]
	%512 = phi i64 [ %486, %489 ], [ %486, %501 ], [ %131, %257 ]
	call void @llvm.dbg.value(metadata i64 %512, i64 0, metadata !3371, metadata !688), !dbg !3434
	call void @llvm.dbg.value(metadata i8 %511, i64 0, metadata !3397, metadata !688), !dbg !3531
	call void @llvm.dbg.value(metadata i8 %510, i64 0, metadata !3390, metadata !688), !dbg !3548
	call void @llvm.dbg.value(metadata i8 %509, i64 0, metadata !3388, metadata !688), !dbg !3451
	call void @llvm.dbg.value(metadata i8 %508, i64 0, metadata !3387, metadata !688), !dbg !3450
	call void @llvm.dbg.value(metadata i64 %507, i64 0, metadata !3373, metadata !688), !dbg !3436
	call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !3381, metadata !688), !dbg !3443
	call void @llvm.dbg.value(metadata i64 %505, i64 0, metadata !3380, metadata !688), !dbg !3442
	call void @llvm.dbg.value(metadata i64 %504, i64 0, metadata !3379, metadata !688), !dbg !3517
	br i1 %112, label %513, label %644, !dbg !4000
	call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3396, metadata !688), !dbg !3530
	%514 = and i8 %508, 1, !dbg !4003
	%515 = icmp eq i8 %514, 0, !dbg !4003
	%516 = and i1 %114, %515, !dbg !4006
	br i1 %516, label %517, label %533, !dbg !4006
	%518 = icmp ult i64 %505, %512, !dbg !4008
	br i1 %518, label %519, label %521, !dbg !4013
	%520 = getelementptr inbounds i8, i8* %0, i64 %505, !dbg !4015
	store i8 39, i8* %520, align 1, !dbg !4015, !tbaa !1179
	br label %521, !dbg !4015
	%522 = add i64 %505, 1, !dbg !4017
	call void @llvm.dbg.value(metadata i64 %522, i64 0, metadata !3380, metadata !688), !dbg !3442
	%523 = icmp ult i64 %522, %512, !dbg !4019
	br i1 %523, label %524, label %526, !dbg !4023
	%525 = getelementptr inbounds i8, i8* %0, i64 %522, !dbg !4025
	store i8 36, i8* %525, align 1, !dbg !4025, !tbaa !1179
	br label %526, !dbg !4025
	%527 = add i64 %505, 2, !dbg !4027
	call void @llvm.dbg.value(metadata i64 %527, i64 0, metadata !3380, metadata !688), !dbg !3442
	%528 = icmp ult i64 %527, %512, !dbg !4029
	br i1 %528, label %529, label %531, !dbg !4033
	%530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !4035
	store i8 39, i8* %530, align 1, !dbg !4035, !tbaa !1179
	br label %531, !dbg !4035
	%532 = add i64 %505, 3, !dbg !4037
	call void @llvm.dbg.value(metadata i64 %532, i64 0, metadata !3380, metadata !688), !dbg !3442
	call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3387, metadata !688), !dbg !3450
	br label %533, !dbg !4039
	%534 = phi i64 [ %532, %531 ], [ %505, %513 ]
	%535 = phi i8 [ 1, %531 ], [ %508, %513 ]
	call void @llvm.dbg.value(metadata i8 %535, i64 0, metadata !3387, metadata !688), !dbg !3450
	call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !3380, metadata !688), !dbg !3442
	%536 = icmp ult i64 %534, %512, !dbg !4041
	br i1 %536, label %537, label %539, !dbg !4045
	%538 = getelementptr inbounds i8, i8* %0, i64 %534, !dbg !4047
	store i8 92, i8* %538, align 1, !dbg !4047, !tbaa !1179
	br label %539, !dbg !4047
	%540 = add i64 %534, 1, !dbg !4049
	call void @llvm.dbg.value(metadata i64 %540, i64 0, metadata !3380, metadata !688), !dbg !3442
	call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !3371, metadata !688), !dbg !3434
	call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !3397, metadata !688), !dbg !3531
	call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !3396, metadata !688), !dbg !3530
	call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !3390, metadata !688), !dbg !3548
	call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !3388, metadata !688), !dbg !3451
	call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !3387, metadata !688), !dbg !3450
	call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !3373, metadata !688), !dbg !3436
	call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !3381, metadata !688), !dbg !3443
	call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !3380, metadata !688), !dbg !3442
	call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !3379, metadata !688), !dbg !3517
	br label %569, !dbg !4051
	br label %542, !dbg !3434
	%543 = phi i64 [ %477, %501 ], [ %124, %253 ], [ %477, %489 ], [ %124, %254 ], [ %380, %541 ]
	%544 = phi i64 [ %478, %501 ], [ %125, %253 ], [ %478, %489 ], [ %125, %254 ], [ %442, %541 ]
	%545 = phi i64 [ %479, %501 ], [ %126, %253 ], [ %479, %489 ], [ %126, %254 ], [ %126, %541 ]
	%546 = phi i64 [ %480, %501 ], [ %156, %253 ], [ %480, %489 ], [ %156, %254 ], [ %369, %541 ]
	%547 = phi i8 [ %481, %501 ], [ %128, %253 ], [ %481, %489 ], [ %128, %254 ], [ %443, %541 ]
	%548 = phi i8 [ %482, %501 ], [ %129, %253 ], [ %482, %489 ], [ %129, %254 ], [ %129, %541 ]
	%549 = phi i8 [ %483, %501 ], [ 92, %253 ], [ %483, %489 ], [ 92, %254 ], [ %444, %541 ]
	%550 = phi i8 [ %484, %501 ], [ 0, %253 ], [ %484, %489 ], [ 0, %254 ], [ %446, %541 ]
	%551 = phi i8 [ %485, %501 ], [ 0, %253 ], [ %485, %489 ], [ 0, %254 ], [ %372, %541 ]
	%552 = phi i64 [ %486, %501 ], [ %131, %253 ], [ %486, %489 ], [ %131, %254 ], [ %131, %541 ]
	call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !3371, metadata !688), !dbg !3434
	call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !3397, metadata !688), !dbg !3531
	call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !3396, metadata !688), !dbg !3530
	call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !3390, metadata !688), !dbg !3548
	call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !3388, metadata !688), !dbg !3451
	call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !3387, metadata !688), !dbg !3450
	call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !3373, metadata !688), !dbg !3436
	call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !3381, metadata !688), !dbg !3443
	call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !3380, metadata !688), !dbg !3442
	call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !3379, metadata !688), !dbg !3517
	%553 = and i8 %547, 1, !dbg !4051
	%554 = icmp ne i8 %553, 0, !dbg !4051
	%555 = and i8 %550, 1, !dbg !4055
	%556 = icmp eq i8 %555, 0, !dbg !4055
	%557 = and i1 %554, %556, !dbg !4051
	br i1 %557, label %558, label %569, !dbg !4051
	%559 = icmp ult i64 %544, %552, !dbg !4057
	br i1 %559, label %560, label %562, !dbg !4062
	%561 = getelementptr inbounds i8, i8* %0, i64 %544, !dbg !4064
	store i8 39, i8* %561, align 1, !dbg !4064, !tbaa !1179
	br label %562, !dbg !4064
	%563 = add i64 %544, 1, !dbg !4066
	call void @llvm.dbg.value(metadata i64 %563, i64 0, metadata !3380, metadata !688), !dbg !3442
	%564 = icmp ult i64 %563, %552, !dbg !4068
	br i1 %564, label %565, label %567, !dbg !4072
	%566 = getelementptr inbounds i8, i8* %0, i64 %563, !dbg !4074
	store i8 39, i8* %566, align 1, !dbg !4074, !tbaa !1179
	br label %567, !dbg !4074
	%568 = add i64 %544, 2, !dbg !4076
	call void @llvm.dbg.value(metadata i64 %568, i64 0, metadata !3380, metadata !688), !dbg !3442
	call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3387, metadata !688), !dbg !3450
	br label %569, !dbg !4078
	%570 = phi i64 [ %552, %567 ], [ %552, %542 ], [ %512, %539 ]
	%571 = phi i8 [ %551, %567 ], [ %551, %542 ], [ %511, %539 ]
	%572 = phi i8 [ %549, %567 ], [ %549, %542 ], [ %510, %539 ]
	%573 = phi i8 [ %548, %567 ], [ %548, %542 ], [ %509, %539 ]
	%574 = phi i64 [ %546, %567 ], [ %546, %542 ], [ %507, %539 ]
	%575 = phi i64 [ %545, %567 ], [ %545, %542 ], [ %506, %539 ]
	%576 = phi i64 [ %543, %567 ], [ %543, %542 ], [ %504, %539 ]
	%577 = phi i64 [ %568, %567 ], [ %544, %542 ], [ %540, %539 ]
	%578 = phi i8 [ 0, %567 ], [ %547, %542 ], [ %535, %539 ]
	call void @llvm.dbg.value(metadata i8 %578, i64 0, metadata !3387, metadata !688), !dbg !3450
	call void @llvm.dbg.value(metadata i64 %577, i64 0, metadata !3380, metadata !688), !dbg !3442
	%579 = icmp ult i64 %577, %570, !dbg !4080
	br i1 %579, label %580, label %582, !dbg !4084
	%581 = getelementptr inbounds i8, i8* %0, i64 %577, !dbg !4086
	store i8 %572, i8* %581, align 1, !dbg !4086, !tbaa !1179
	br label %582, !dbg !4086
	%583 = add i64 %577, 1, !dbg !4088
	call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !3380, metadata !688), !dbg !3442
	%584 = and i8 %571, 1, !dbg !4090
	%585 = icmp eq i8 %584, 0, !dbg !4090
	call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3389, metadata !688), !dbg !3452
	%586 = select i1 %585, i8 0, i8 %130, !dbg !4092
	call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !3389, metadata !688), !dbg !3452
	br label %587, !dbg !4093
	%588 = phi i64 [ %124, %209 ], [ %576, %582 ]
	%589 = phi i64 [ %125, %209 ], [ %583, %582 ]
	%590 = phi i64 [ %126, %209 ], [ %575, %582 ]
	%591 = phi i64 [ %156, %209 ], [ %574, %582 ]
	%592 = phi i8 [ %128, %209 ], [ %578, %582 ]
	%593 = phi i8 [ %129, %209 ], [ %573, %582 ]
	%594 = phi i8 [ %130, %209 ], [ %586, %582 ]
	%595 = phi i64 [ %131, %209 ], [ %570, %582 ]
	%596 = add i64 %588, 1, !dbg !4094
	call void @llvm.dbg.value(metadata i64 %596, i64 0, metadata !3379, metadata !688), !dbg !3517
	br label %123, !dbg !4096, !llvm.loop !4097
	%598 = phi i64 [ %124, %133 ], [ -1, %135 ]
	%599 = icmp eq i64 %125, 0, !dbg !4100
	%600 = and i1 %114, %599, !dbg !4102
	%601 = xor i1 %600, true, !dbg !4102
	%602 = or i1 %112, %601, !dbg !4102
	br i1 %602, label %603, label %648, !dbg !4102
	%604 = and i1 %114, %112, !dbg !4103
	%605 = xor i1 %604, true, !dbg !4103
	%606 = and i8 %129, 1, !dbg !4105
	%607 = icmp eq i8 %606, 0, !dbg !4105
	%608 = or i1 %607, %605, !dbg !4103
	br i1 %608, label %618, label %609, !dbg !4103
	%610 = and i8 %130, 1, !dbg !4107
	%611 = icmp eq i8 %610, 0, !dbg !4107
	br i1 %611, label %614, label %612, !dbg !4110
	%613 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %126, i8* %2, i64 %598, i32 5, i32 %5, i32* %6, i8* %97, i8* %98), !dbg !4111
	br label %659, !dbg !4112
	%615 = icmp eq i64 %131, 0, !dbg !4113
	%616 = icmp ne i64 %126, 0, !dbg !4115
	%617 = and i1 %616, %615, !dbg !4117
	br i1 %617, label %27, label %618, !dbg !4117
	%619 = icmp ne i8* %100, null, !dbg !4118
	%620 = and i1 %619, %112, !dbg !4120
	br i1 %620, label %621, label %638, !dbg !4120
	call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !3382, metadata !688), !dbg !3444
	call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !3380, metadata !688), !dbg !3442
	%622 = load i8, i8* %100, align 1, !dbg !4121, !tbaa !1179
	%623 = icmp eq i8 %622, 0, !dbg !4125
	br i1 %623, label %638, label %624, !dbg !4125
	br label %625, !dbg !4127
	%626 = phi i8 [ %635, %632 ], [ %622, %624 ]
	%627 = phi i8* [ %634, %632 ], [ %100, %624 ]
	%628 = phi i64 [ %633, %632 ], [ %125, %624 ]
	%629 = icmp ult i64 %628, %131, !dbg !4127
	br i1 %629, label %630, label %632, !dbg !4131
	%631 = getelementptr inbounds i8, i8* %0, i64 %628, !dbg !4133
	store i8 %626, i8* %631, align 1, !dbg !4133, !tbaa !1179
	br label %632, !dbg !4133
	%633 = add i64 %628, 1, !dbg !4135
	call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !3380, metadata !688), !dbg !3442
	%634 = getelementptr inbounds i8, i8* %627, i64 1, !dbg !4137
	call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !3382, metadata !688), !dbg !3444
	call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !3382, metadata !688), !dbg !3444
	call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !3380, metadata !688), !dbg !3442
	%635 = load i8, i8* %634, align 1, !dbg !4121, !tbaa !1179
	%636 = icmp eq i8 %635, 0, !dbg !4125
	br i1 %636, label %637, label %625, !dbg !4125, !llvm.loop !4139
	br label %638, !dbg !3442
	%639 = phi i64 [ %125, %618 ], [ %125, %621 ], [ %633, %637 ]
	call void @llvm.dbg.value(metadata i64 %639, i64 0, metadata !3380, metadata !688), !dbg !3442
	%640 = icmp ult i64 %639, %131, !dbg !4142
	br i1 %640, label %641, label %659, !dbg !4144
	%642 = getelementptr inbounds i8, i8* %0, i64 %639, !dbg !4145
	store i8 0, i8* %642, align 1, !dbg !4146, !tbaa !1179
	br label %659, !dbg !4145
	br label %649, !dbg !3434
	%645 = phi i32 [ %96, %148 ], [ %96, %161 ], [ 2, %211 ], [ 5, %225 ], [ 2, %253 ], [ 2, %255 ], [ 2, %273 ], [ 2, %276 ], [ %96, %503 ]
	%646 = phi i64 [ %146, %148 ], [ %156, %161 ], [ %156, %211 ], [ %156, %225 ], [ %156, %253 ], [ %156, %255 ], [ %156, %273 ], [ %156, %276 ], [ %507, %503 ]
	%647 = phi i64 [ %131, %148 ], [ %131, %161 ], [ %131, %211 ], [ %131, %225 ], [ %131, %253 ], [ %131, %255 ], [ %131, %273 ], [ %131, %276 ], [ %512, %503 ]
	br label %649, !dbg !3434
	br label %649, !dbg !3434
	%650 = phi i32 [ 2, %367 ], [ %96, %643 ], [ %645, %644 ], [ %96, %648 ]
	%651 = phi i64 [ %313, %367 ], [ %369, %643 ], [ %646, %644 ], [ %598, %648 ]
	%652 = phi i64 [ %131, %367 ], [ %131, %643 ], [ %647, %644 ], [ %131, %648 ]
	call void @llvm.dbg.value(metadata i64 %652, i64 0, metadata !3371, metadata !688), !dbg !3434
	call void @llvm.dbg.value(metadata i64 %651, i64 0, metadata !3373, metadata !688), !dbg !3436
	%653 = icmp ne i32 %650, 2, !dbg !4147
	%654 = icmp eq i8 %104, 0, !dbg !4149
	%655 = or i1 %653, %654, !dbg !4151
	call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3374, metadata !688), !dbg !3437
	%656 = select i1 %655, i32 %650, i32 4, !dbg !4151
	call void @llvm.dbg.value(metadata i32 %656, i64 0, metadata !3374, metadata !688), !dbg !3437
	%657 = and i32 %5, -3, !dbg !4152
	%658 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %652, i8* %2, i64 %651, i32 %656, i32 %657, i32* null, i8* %97, i8* %98), !dbg !4153
	br label %659, !dbg !4154
	%660 = phi i64 [ %658, %649 ], [ %613, %612 ], [ %639, %641 ], [ %639, %638 ]
	ret i64 %660, !dbg !4155
}
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !4156 {
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4160, metadata !688), !dbg !4164
	tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4161, metadata !688), !dbg !4165
	%3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #10, !dbg !4166
	tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4162, metadata !688), !dbg !4167
	%4 = icmp eq i8* %3, %0, !dbg !4168
	br i1 %4, label %5, label %75, !dbg !4170
	%6 = tail call i8* @locale_charset() #10, !dbg !4171
	tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !4163, metadata !688), !dbg !4172
	tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !4173, metadata !688), !dbg !4189
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4187, metadata !688), !dbg !4192
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4188, metadata !688), !dbg !4193
	%7 = load i8, i8* %6, align 1, !tbaa !1179
	%8 = sext i8 %7 to i32
	%9 = and i32 %8, -33, !dbg !4194
	switch i32 %9, label %72 [
		i32 85, label %10
		i32 71, label %38
	], !dbg !4194
	tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !4197, metadata !688), !dbg !4211
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4209, metadata !688), !dbg !4215
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4210, metadata !688), !dbg !4216
	%11 = getelementptr inbounds i8, i8* %6, i64 1
	%12 = load i8, i8* %11, align 1, !tbaa !1179
	%13 = sext i8 %12 to i32
	%14 = and i32 %13, -33, !dbg !4217
	%15 = icmp eq i32 %14, 84, !dbg !4217
	br i1 %15, label %16, label %72, !dbg !4217
	tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !4220, metadata !688), !dbg !4233
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4231, metadata !688), !dbg !4237
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4232, metadata !688), !dbg !4238
	%17 = getelementptr inbounds i8, i8* %6, i64 2
	%18 = load i8, i8* %17, align 1, !tbaa !1179
	%19 = sext i8 %18 to i32
	%20 = and i32 %19, -33, !dbg !4239
	%21 = icmp eq i32 %20, 70, !dbg !4239
	br i1 %21, label %22, label %72, !dbg !4239
	tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !4242, metadata !688), !dbg !4254
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4252, metadata !688), !dbg !4258
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4253, metadata !688), !dbg !4259
	%23 = getelementptr inbounds i8, i8* %6, i64 3
	%24 = load i8, i8* %23, align 1, !tbaa !1179
	%25 = icmp eq i8 %24, 45, !dbg !4260
	br i1 %25, label %26, label %72, !dbg !4263
	tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !4265, metadata !688), !dbg !4276
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4274, metadata !688), !dbg !4280
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4275, metadata !688), !dbg !4281
	%27 = getelementptr inbounds i8, i8* %6, i64 4
	%28 = load i8, i8* %27, align 1, !tbaa !1179
	%29 = icmp eq i8 %28, 56, !dbg !4282
	br i1 %29, label %30, label %72, !dbg !4285
	tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !4287, metadata !688), !dbg !4297
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4295, metadata !688), !dbg !4301
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4296, metadata !688), !dbg !4302
	%31 = getelementptr inbounds i8, i8* %6, i64 5
	%32 = load i8, i8* %31, align 1, !tbaa !1179
	%33 = icmp eq i8 %32, 0, !dbg !4303
	br i1 %33, label %34, label %72, !dbg !4306
	%35 = load i8, i8* %0, align 1, !dbg !4308, !tbaa !1179
	%36 = icmp eq i8 %35, 96, !dbg !4309
	%37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.111, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.112, i64 0, i64 0), !dbg !4308
	br label %75, !dbg !4310
	tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !4197, metadata !688), !dbg !4311
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4209, metadata !688), !dbg !4315
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4210, metadata !688), !dbg !4316
	%39 = getelementptr inbounds i8, i8* %6, i64 1
	%40 = load i8, i8* %39, align 1, !tbaa !1179
	%41 = sext i8 %40 to i32
	%42 = and i32 %41, -33, !dbg !4317
	%43 = icmp eq i32 %42, 66, !dbg !4317
	br i1 %43, label %44, label %72, !dbg !4317
	tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !4220, metadata !688), !dbg !4318
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4231, metadata !688), !dbg !4320
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4232, metadata !688), !dbg !4321
	%45 = getelementptr inbounds i8, i8* %6, i64 2
	%46 = load i8, i8* %45, align 1, !tbaa !1179
	%47 = icmp eq i8 %46, 49, !dbg !4322
	br i1 %47, label %48, label %72, !dbg !4324
	tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !4242, metadata !688), !dbg !4326
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4252, metadata !688), !dbg !4328
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4253, metadata !688), !dbg !4329
	%49 = getelementptr inbounds i8, i8* %6, i64 3
	%50 = load i8, i8* %49, align 1, !tbaa !1179
	%51 = icmp eq i8 %50, 56, !dbg !4330
	br i1 %51, label %52, label %72, !dbg !4331
	tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !4265, metadata !688), !dbg !4332
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4274, metadata !688), !dbg !4334
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4275, metadata !688), !dbg !4335
	%53 = getelementptr inbounds i8, i8* %6, i64 4
	%54 = load i8, i8* %53, align 1, !tbaa !1179
	%55 = icmp eq i8 %54, 48, !dbg !4336
	br i1 %55, label %56, label %72, !dbg !4337
	tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !4287, metadata !688), !dbg !4338
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4295, metadata !688), !dbg !4340
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4296, metadata !688), !dbg !4341
	%57 = getelementptr inbounds i8, i8* %6, i64 5
	%58 = load i8, i8* %57, align 1, !tbaa !1179
	%59 = icmp eq i8 %58, 51, !dbg !4342
	br i1 %59, label %60, label %72, !dbg !4343
	tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !4344, metadata !688), !dbg !4353
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4351, metadata !688), !dbg !4357
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4352, metadata !688), !dbg !4358
	%61 = getelementptr inbounds i8, i8* %6, i64 6
	%62 = load i8, i8* %61, align 1, !tbaa !1179
	%63 = icmp eq i8 %62, 48, !dbg !4359
	br i1 %63, label %64, label %72, !dbg !4362
	tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !4364, metadata !688), !dbg !4372
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4370, metadata !688), !dbg !4376
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4371, metadata !688), !dbg !4377
	%65 = getelementptr inbounds i8, i8* %6, i64 7
	%66 = load i8, i8* %65, align 1, !tbaa !1179
	%67 = icmp eq i8 %66, 0, !dbg !4378
	br i1 %67, label %68, label %72, !dbg !4381
	%69 = load i8, i8* %0, align 1, !dbg !4382, !tbaa !1179
	%70 = icmp eq i8 %69, 96, !dbg !4383
	%71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.113, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.114, i64 0, i64 0), !dbg !4382
	br label %75, !dbg !4384
	%73 = icmp eq i32 %1, 9, !dbg !4385
	%74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.110, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.109, i64 0, i64 0), !dbg !4386
	br label %75, !dbg !4387
	%76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
	ret i8* %76, !dbg !4388
}
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4
declare i32 @iswprint(i32) local_unnamed_addr #2
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #4
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !4389 {
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4393, metadata !688), !dbg !4396
	tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4394, metadata !688), !dbg !4397
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !4395, metadata !688), !dbg !4398
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4399, metadata !688) #10, !dbg !4412
	tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4404, metadata !688) #10, !dbg !4414
	tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !4405, metadata !688) #10, !dbg !4415
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !4406, metadata !688) #10, !dbg !4416
	%4 = icmp ne %struct.quoting_options* %2, null, !dbg !4417
	%5 = select i1 %4, %struct.quoting_options* %2, %struct.quoting_options* @default_quoting_options, !dbg !4417
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4407, metadata !688) #10, !dbg !4418
	%6 = tail call i32* @__errno_location() #1, !dbg !4419
	%7 = load i32, i32* %6, align 4, !dbg !4419, !tbaa !903
	tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !4408, metadata !688) #10, !dbg !4420
	%8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !4421
	%9 = load i32, i32* %8, align 4, !dbg !4421, !tbaa !3302
	%10 = or i32 %9, 1, !dbg !4422
	tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !4409, metadata !688) #10, !dbg !4423
	%11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !4424
	%12 = load i32, i32* %11, align 8, !dbg !4424, !tbaa !3240
	%13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !4425
	%14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !4426
	%15 = load i8*, i8** %14, align 8, !dbg !4426, !tbaa !3329
	%16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !4427
	%17 = load i8*, i8** %16, align 8, !dbg !4427, !tbaa !3332
	%18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #10, !dbg !4428
	%19 = add i64 %18, 1, !dbg !4429
	tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !4410, metadata !688) #10, !dbg !4430
	tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !4431, metadata !688) #10, !dbg !4436
	%20 = tail call noalias i8* @xmalloc(i64 %19) #10, !dbg !4438
	tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !4411, metadata !688) #10, !dbg !4439
	%21 = load i32, i32* %11, align 8, !dbg !4440, !tbaa !3240
	%22 = load i8*, i8** %14, align 8, !dbg !4441, !tbaa !3329
	%23 = load i8*, i8** %16, align 8, !dbg !4442, !tbaa !3332
	%24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #10, !dbg !4443
	store i32 %7, i32* %6, align 4, !dbg !4444, !tbaa !903
	ret i8* %20, !dbg !4445
}
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !4400 {
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4399, metadata !688), !dbg !4446
	tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4404, metadata !688), !dbg !4447
	tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !4405, metadata !688), !dbg !4448
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !4406, metadata !688), !dbg !4449
	%5 = icmp ne %struct.quoting_options* %3, null, !dbg !4450
	%6 = select i1 %5, %struct.quoting_options* %3, %struct.quoting_options* @default_quoting_options, !dbg !4450
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !4407, metadata !688), !dbg !4451
	%7 = tail call i32* @__errno_location() #1, !dbg !4452
	%8 = load i32, i32* %7, align 4, !dbg !4452, !tbaa !903
	tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !4408, metadata !688), !dbg !4453
	%9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !4454
	%10 = load i32, i32* %9, align 4, !dbg !4454, !tbaa !3302
	%11 = icmp ne i64* %2, null, !dbg !4455
	%12 = xor i1 %11, true, !dbg !4455
	%13 = zext i1 %12 to i32, !dbg !4455
	%14 = or i32 %10, %13, !dbg !4456
	tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !4409, metadata !688), !dbg !4457
	%15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !4458
	%16 = load i32, i32* %15, align 8, !dbg !4458, !tbaa !3240
	%17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !4459
	%18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !4460
	%19 = load i8*, i8** %18, align 8, !dbg !4460, !tbaa !3329
	%20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !4461
	%21 = load i8*, i8** %20, align 8, !dbg !4461, !tbaa !3332
	%22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !4462
	%23 = add i64 %22, 1, !dbg !4463
	tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !4410, metadata !688), !dbg !4464
	tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !4431, metadata !688) #10, !dbg !4465
	%24 = tail call noalias i8* @xmalloc(i64 %23) #10, !dbg !4467
	tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !4411, metadata !688), !dbg !4468
	%25 = load i32, i32* %15, align 8, !dbg !4469, !tbaa !3240
	%26 = load i8*, i8** %18, align 8, !dbg !4470, !tbaa !3329
	%27 = load i8*, i8** %20, align 8, !dbg !4471, !tbaa !3332
	%28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !4472
	store i32 %8, i32* %7, align 4, !dbg !4473, !tbaa !903
	br i1 %11, label %29, label %30, !dbg !4474
	store i64 %22, i64* %2, align 8, !dbg !4475, !tbaa !2226
	br label %30, !dbg !4477
	ret i8* %24, !dbg !4478
}
define void @quotearg_free() local_unnamed_addr #6 !dbg !4479 {
	%1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !4483, !tbaa !696
	tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !4481, metadata !688), !dbg !4484
	tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4482, metadata !688), !dbg !4485
	tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4482, metadata !688), !dbg !4485
	%2 = load i32, i32* @nslots, align 4, !dbg !4486, !tbaa !903
	%3 = icmp sgt i32 %2, 1, !dbg !4490
	br i1 %3, label %4, label %14, !dbg !4491
	br label %5, !dbg !4493
	%6 = phi i64 [ %9, %5 ], [ 1, %4 ]
	%7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !4493
	%8 = load i8*, i8** %7, align 8, !dbg !4493, !tbaa !4494
	tail call void @free(i8* %8) #10, !dbg !4496
	%9 = add nuw i64 %6, 1, !dbg !4497
	%10 = load i32, i32* @nslots, align 4, !dbg !4486, !tbaa !903
	%11 = sext i32 %10 to i64, !dbg !4490
	%12 = icmp slt i64 %9, %11, !dbg !4490
	br i1 %12, label %5, label %13, !dbg !4491, !llvm.loop !4499
	br label %14, !dbg !4502
	%15 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !4502
	%16 = load i8*, i8** %15, align 8, !dbg !4502, !tbaa !4494
	%17 = icmp eq i8* %16, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !4504
	br i1 %17, label %19, label %18, !dbg !4505
	tail call void @free(i8* %16) #10, !dbg !4506
	store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !4508, !tbaa !4509
	store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !4510, !tbaa !4494
	br label %19, !dbg !4511
	%20 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !4512
	br i1 %20, label %23, label %21, !dbg !4514
	%22 = bitcast %struct.slotvec* %1 to i8*, !dbg !4515
	tail call void @free(i8* %22) #10, !dbg !4517
	store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !4518, !tbaa !696
	br label %23, !dbg !4519
	store i32 1, i32* @nslots, align 4, !dbg !4520, !tbaa !903
	ret void, !dbg !4521
}
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !4522 {
	tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4526, metadata !688), !dbg !4528
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4527, metadata !688), !dbg !4529
	%3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !4530
	ret i8* %3, !dbg !4531
}
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !4532 {
	tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4536, metadata !688), !dbg !4550
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4537, metadata !688), !dbg !4551
	tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4538, metadata !688), !dbg !4552
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !4539, metadata !688), !dbg !4553
	%5 = tail call i32* @__errno_location() #1, !dbg !4554
	%6 = load i32, i32* %5, align 4, !dbg !4554, !tbaa !903
	tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !4540, metadata !688), !dbg !4555
	%7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !4556, !tbaa !696
	tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !4541, metadata !688), !dbg !4557
	%8 = icmp slt i32 %0, 0, !dbg !4558
	br i1 %8, label %9, label %10, !dbg !4560
	tail call void @abort() #14, !dbg !4561
	unreachable, !dbg !4561
	%11 = load i32, i32* @nslots, align 4, !dbg !4562, !tbaa !903
	%12 = icmp sgt i32 %11, %0, !dbg !4563
	br i1 %12, label %34, label %13, !dbg !4564
	%14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !4565
	%15 = icmp ugt i32 %0, 2147483646, !dbg !4566
	br i1 %15, label %16, label %17, !dbg !4568
	tail call void @xalloc_die() #14, !dbg !4569
	unreachable, !dbg !4569
	%18 = bitcast %struct.slotvec* %7 to i8*, !dbg !4570
	%19 = select i1 %14, i8* null, i8* %18, !dbg !4570
	%20 = add nsw i32 %0, 1, !dbg !4572
	%21 = sext i32 %20 to i64, !dbg !4573
	%22 = shl nsw i64 %21, 4, !dbg !4574
	%23 = tail call i8* @xrealloc(i8* %19, i64 %22) #10, !dbg !4575
	%24 = bitcast i8* %23 to %struct.slotvec*, !dbg !4575
	tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !4541, metadata !688), !dbg !4557
	store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !4576, !tbaa !696
	br i1 %14, label %25, label %26, !dbg !4577
	tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !4578, !tbaa.struct !4580
	br label %26, !dbg !4581
	%27 = load i32, i32* @nslots, align 4, !dbg !4582, !tbaa !903
	%28 = sext i32 %27 to i64, !dbg !4583
	%29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !4583
	%30 = bitcast %struct.slotvec* %29 to i8*, !dbg !4584
	%31 = sub nsw i32 %20, %27, !dbg !4585
	%32 = sext i32 %31 to i64, !dbg !4586
	%33 = shl nsw i64 %32, 4, !dbg !4587
	tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !4584
	store i32 %20, i32* @nslots, align 4, !dbg !4588, !tbaa !903
	br label %34, !dbg !4589
	%35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
	tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !4541, metadata !688), !dbg !4557
	%36 = sext i32 %0 to i64, !dbg !4590
	%37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !4591
	%38 = load i64, i64* %37, align 8, !dbg !4591, !tbaa !4509
	tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !4545, metadata !688), !dbg !4592
	%39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !4593
	%40 = load i8*, i8** %39, align 8, !dbg !4593, !tbaa !4494
	tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !4547, metadata !688), !dbg !4594
	%41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !4595
	%42 = load i32, i32* %41, align 4, !dbg !4595, !tbaa !3302
	%43 = or i32 %42, 1, !dbg !4596
	tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !4548, metadata !688), !dbg !4597
	%44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !4598
	%45 = load i32, i32* %44, align 8, !dbg !4598, !tbaa !3240
	%46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !4599
	%47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !4600
	%48 = load i8*, i8** %47, align 8, !dbg !4600, !tbaa !3329
	%49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !4601
	%50 = load i8*, i8** %49, align 8, !dbg !4601, !tbaa !3332
	%51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !4602
	tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !4549, metadata !688), !dbg !4603
	%52 = icmp ugt i64 %38, %51, !dbg !4604
	br i1 %52, label %63, label %53, !dbg !4606
	%54 = add i64 %51, 1, !dbg !4607
	tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !4545, metadata !688), !dbg !4592
	store i64 %54, i64* %37, align 8, !dbg !4609, !tbaa !4509
	%55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !4610
	br i1 %55, label %57, label %56, !dbg !4612
	tail call void @free(i8* %40) #10, !dbg !4613
	br label %57, !dbg !4613
	tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !4431, metadata !688) #10, !dbg !4614
	%58 = tail call noalias i8* @xmalloc(i64 %54) #10, !dbg !4616
	tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !4547, metadata !688), !dbg !4594
	store i8* %58, i8** %39, align 8, !dbg !4617, !tbaa !4494
	%59 = load i32, i32* %44, align 8, !dbg !4618, !tbaa !3240
	%60 = load i8*, i8** %47, align 8, !dbg !4619, !tbaa !3329
	%61 = load i8*, i8** %49, align 8, !dbg !4620, !tbaa !3332
	%62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !4621
	br label %63, !dbg !4622
	%64 = phi i8* [ %58, %57 ], [ %40, %34 ]
	tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !4547, metadata !688), !dbg !4594
	store i32 %6, i32* %5, align 4, !dbg !4623, !tbaa !903
	ret i8* %64, !dbg !4624
}
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #7
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !4625 {
	tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4629, metadata !688), !dbg !4632
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4630, metadata !688), !dbg !4633
	tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4631, metadata !688), !dbg !4634
	%4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !4635
	ret i8* %4, !dbg !4636
}
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !4637 {
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4641, metadata !688), !dbg !4642
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4526, metadata !688) #10, !dbg !4643
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4527, metadata !688) #10, !dbg !4645
	%2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !4646
	ret i8* %2, !dbg !4647
}
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !4648 {
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4650, metadata !688), !dbg !4652
	tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4651, metadata !688), !dbg !4653
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4629, metadata !688) #10, !dbg !4654
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4630, metadata !688) #10, !dbg !4656
	tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4631, metadata !688) #10, !dbg !4657
	%3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !4658
	ret i8* %3, !dbg !4659
}
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !4660 {
	%4 = alloca [52 x i8], align 4
	tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !4668, metadata !4674), !dbg !4675
	%5 = alloca %struct.quoting_options, align 8
	tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4664, metadata !688), !dbg !4677
	tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4665, metadata !688), !dbg !4678
	tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4666, metadata !688), !dbg !4679
	%6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !4680
	call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !4680
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4667, metadata !958), !dbg !4681
	tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4673, metadata !688) #10, !dbg !4682
	%7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !4683
	call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !4683
	tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !4668, metadata !688) #10, !dbg !4675
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4668, metadata !4684) #10, !dbg !4675
	call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !4675
	%8 = icmp eq i32 %1, 10, !dbg !4685
	br i1 %8, label %9, label %10, !dbg !4687
	tail call void @abort() #14, !dbg !4688, !noalias !4689
	unreachable, !dbg !4688
	tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4668, metadata !4684) #10, !dbg !4675
	%11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !4692
	store i32 %1, i32* %11, align 8, !dbg !4692, !alias.scope !4689
	%12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !4692
	%13 = bitcast i32* %12 to i8*, !dbg !4692
	call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !4692
	call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !4693
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4667, metadata !958), !dbg !4681
	%14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !4694
	call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !4695
	ret i8* %14, !dbg !4696
}
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !4697 {
	%5 = alloca [52 x i8], align 4
	tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !4668, metadata !4674), !dbg !4706
	%6 = alloca %struct.quoting_options, align 8
	tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4701, metadata !688), !dbg !4708
	tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4702, metadata !688), !dbg !4709
	tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4703, metadata !688), !dbg !4710
	tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4704, metadata !688), !dbg !4711
	%7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !4712
	call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10, !dbg !4712
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !4705, metadata !958), !dbg !4713
	tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4673, metadata !688) #10, !dbg !4714
	%8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !4715
	call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !4715
	tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !4668, metadata !688) #10, !dbg !4706
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4668, metadata !4684) #10, !dbg !4706
	call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !4706
	%9 = icmp eq i32 %1, 10, !dbg !4716
	br i1 %9, label %10, label %11, !dbg !4717
	tail call void @abort() #14, !dbg !4718, !noalias !4719
	unreachable, !dbg !4718
	tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4668, metadata !4684) #10, !dbg !4706
	%12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !4722
	store i32 %1, i32* %12, align 8, !dbg !4722, !alias.scope !4719
	%13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !4722
	%14 = bitcast i32* %13 to i8*, !dbg !4722
	call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #10, !dbg !4722
	call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !4723
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !4705, metadata !958), !dbg !4713
	%15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !4724
	call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10, !dbg !4725
	ret i8* %15, !dbg !4726
}
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !4727 {
	%3 = alloca [52 x i8], align 4
	tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !4668, metadata !4674), !dbg !4733
	%4 = alloca %struct.quoting_options, align 8
	tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4731, metadata !688), !dbg !4736
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4732, metadata !688), !dbg !4737
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4664, metadata !688) #10, !dbg !4738
	tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4665, metadata !688) #10, !dbg !4739
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4666, metadata !688) #10, !dbg !4740
	%5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !4741
	call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10, !dbg !4741
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !4667, metadata !958) #10, !dbg !4742
	tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4673, metadata !688) #10, !dbg !4743
	%6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !4744
	call void @llvm.lifetime.start(i64 52, i8* nonnull %6), !dbg !4744
	tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !4668, metadata !688) #10, !dbg !4733
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4668, metadata !4684) #10, !dbg !4733
	call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !4733
	%7 = icmp eq i32 %0, 10, !dbg !4745
	br i1 %7, label %8, label %9, !dbg !4746
	tail call void @abort() #14, !dbg !4747, !noalias !4748
	unreachable, !dbg !4747
	tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4668, metadata !4684) #10, !dbg !4733
	%10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !4751
	store i32 %0, i32* %10, align 8, !dbg !4751, !alias.scope !4748
	%11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !4751
	%12 = bitcast i32* %11 to i8*, !dbg !4751
	call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #10, !dbg !4751
	call void @llvm.lifetime.end(i64 52, i8* nonnull %6), !dbg !4752
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !4667, metadata !958) #10, !dbg !4742
	%13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !4753
	call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10, !dbg !4754
	ret i8* %13, !dbg !4755
}
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !4756 {
	%4 = alloca [52 x i8], align 4
	tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !4668, metadata !4674), !dbg !4763
	%5 = alloca %struct.quoting_options, align 8
	tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4760, metadata !688), !dbg !4766
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4761, metadata !688), !dbg !4767
	tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4762, metadata !688), !dbg !4768
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4701, metadata !688) #10, !dbg !4769
	tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4702, metadata !688) #10, !dbg !4770
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4703, metadata !688) #10, !dbg !4771
	tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4704, metadata !688) #10, !dbg !4772
	%6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !4773
	call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !4773
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4705, metadata !958) #10, !dbg !4774
	tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4673, metadata !688) #10, !dbg !4775
	%7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !4776
	call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !4776
	tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !4668, metadata !688) #10, !dbg !4763
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4668, metadata !4684) #10, !dbg !4763
	call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !4763
	%8 = icmp eq i32 %0, 10, !dbg !4777
	br i1 %8, label %9, label %10, !dbg !4778
	tail call void @abort() #14, !dbg !4779, !noalias !4780
	unreachable, !dbg !4779
	tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4668, metadata !4684) #10, !dbg !4763
	%11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !4783
	store i32 %0, i32* %11, align 8, !dbg !4783, !alias.scope !4780
	%12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !4783
	%13 = bitcast i32* %12 to i8*, !dbg !4783
	call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !4783
	call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !4784
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4705, metadata !958) #10, !dbg !4774
	%14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #10, !dbg !4785
	call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !4786
	ret i8* %14, !dbg !4787
}
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !4788 {
	%4 = alloca %struct.quoting_options, align 8
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4792, metadata !688), !dbg !4796
	tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4793, metadata !688), !dbg !4797
	tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !4794, metadata !688), !dbg !4798
	%5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !4799
	call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10, !dbg !4799
	call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !4800, !tbaa.struct !4801
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !4795, metadata !958), !dbg !4802
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3260, metadata !688), !dbg !4803
	tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !3261, metadata !688), !dbg !4805
	tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3262, metadata !688), !dbg !4806
	tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !3263, metadata !688), !dbg !4807
	%6 = lshr i8 %2, 5, !dbg !4808
	%7 = zext i8 %6 to i64, !dbg !4808
	%8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !4809
	tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !3264, metadata !688), !dbg !4810
	%9 = and i8 %2, 31, !dbg !4811
	%10 = zext i8 %9 to i32, !dbg !4812
	tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !3266, metadata !688), !dbg !4813
	%11 = load i32, i32* %8, align 4, !dbg !4814, !tbaa !903
	%12 = lshr i32 %11, %10, !dbg !4815
	%13 = and i32 %12, 1, !dbg !4816
	tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !3267, metadata !688), !dbg !4817
	%14 = xor i32 %13, 1, !dbg !4818
	%15 = shl i32 %14, %10, !dbg !4819
	%16 = xor i32 %15, %11, !dbg !4820
	store i32 %16, i32* %8, align 4, !dbg !4820, !tbaa !903
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !4795, metadata !958), !dbg !4802
	%17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !4821
	call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10, !dbg !4822
	ret i8* %17, !dbg !4823
}
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !4824 {
	%3 = alloca %struct.quoting_options, align 8
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4828, metadata !688), !dbg !4830
	tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !4829, metadata !688), !dbg !4831
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4792, metadata !688) #10, !dbg !4832
	tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !4793, metadata !688) #10, !dbg !4834
	tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !4794, metadata !688) #10, !dbg !4835
	%4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !4836
	call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #10, !dbg !4836
	call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !4837, !tbaa.struct !4801
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !4795, metadata !958) #10, !dbg !4838
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3260, metadata !688) #10, !dbg !4839
	tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !3261, metadata !688) #10, !dbg !4841
	tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3262, metadata !688) #10, !dbg !4842
	tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !3263, metadata !688) #10, !dbg !4843
	%5 = lshr i8 %1, 5, !dbg !4844
	%6 = zext i8 %5 to i64, !dbg !4844
	%7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !4845
	tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !3264, metadata !688) #10, !dbg !4846
	%8 = and i8 %1, 31, !dbg !4847
	%9 = zext i8 %8 to i32, !dbg !4848
	tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !3266, metadata !688) #10, !dbg !4849
	%10 = load i32, i32* %7, align 4, !dbg !4850, !tbaa !903
	%11 = lshr i32 %10, %9, !dbg !4851
	%12 = and i32 %11, 1, !dbg !4852
	tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !3267, metadata !688) #10, !dbg !4853
	%13 = xor i32 %12, 1, !dbg !4854
	%14 = shl i32 %13, %9, !dbg !4855
	%15 = xor i32 %14, %10, !dbg !4856
	store i32 %15, i32* %7, align 4, !dbg !4856, !tbaa !903
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !4795, metadata !958) #10, !dbg !4838
	%16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !4857
	call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #10, !dbg !4858
	ret i8* %16, !dbg !4859
}
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !4860 {
	%2 = alloca %struct.quoting_options, align 8
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4862, metadata !688), !dbg !4863
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4828, metadata !688) #10, !dbg !4864
	tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !4829, metadata !688) #10, !dbg !4866
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4792, metadata !688) #10, !dbg !4867
	tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !4793, metadata !688) #10, !dbg !4869
	tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !4794, metadata !688) #10, !dbg !4870
	%3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !4871
	call void @llvm.lifetime.start(i64 56, i8* nonnull %3) #10, !dbg !4871
	call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !4872, !tbaa.struct !4801
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !4795, metadata !958) #10, !dbg !4873
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3260, metadata !688) #10, !dbg !4874
	tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3261, metadata !688) #10, !dbg !4876
	tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3262, metadata !688) #10, !dbg !4877
	tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3263, metadata !688) #10, !dbg !4878
	%4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !4879
	tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !3264, metadata !688) #10, !dbg !4880
	tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !3266, metadata !688) #10, !dbg !4881
	%5 = load i32, i32* %4, align 4, !dbg !4882, !tbaa !903
	%6 = or i32 %5, 67108864, !dbg !4883
	store i32 %6, i32* %4, align 4, !dbg !4883, !tbaa !903
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !4795, metadata !958) #10, !dbg !4873
	%7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #10, !dbg !4884
	call void @llvm.lifetime.end(i64 56, i8* nonnull %3) #10, !dbg !4885
	ret i8* %7, !dbg !4886
}
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !4887 {
	%3 = alloca %struct.quoting_options, align 8
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4889, metadata !688), !dbg !4891
	tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4890, metadata !688), !dbg !4892
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4792, metadata !688) #10, !dbg !4893
	tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4793, metadata !688) #10, !dbg !4895
	tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !4794, metadata !688) #10, !dbg !4896
	%4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !4897
	call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #10, !dbg !4897
	call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !4898, !tbaa.struct !4801
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !4795, metadata !958) #10, !dbg !4899
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3260, metadata !688) #10, !dbg !4900
	tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3261, metadata !688) #10, !dbg !4902
	tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3262, metadata !688) #10, !dbg !4903
	tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3263, metadata !688) #10, !dbg !4904
	%5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !4905
	tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !3264, metadata !688) #10, !dbg !4906
	tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !3266, metadata !688) #10, !dbg !4907
	%6 = load i32, i32* %5, align 4, !dbg !4908, !tbaa !903
	%7 = or i32 %6, 67108864, !dbg !4909
	store i32 %7, i32* %5, align 4, !dbg !4909, !tbaa !903
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !4795, metadata !958) #10, !dbg !4899
	%8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #10, !dbg !4910
	call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #10, !dbg !4911
	ret i8* %8, !dbg !4912
}
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !4913 {
	%4 = alloca [52 x i8], align 4
	tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !4668, metadata !4674), !dbg !4919
	%5 = alloca %struct.quoting_options, align 8
	%6 = alloca [52 x i8], align 4
	tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4915, metadata !688), !dbg !4921
	tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4916, metadata !688), !dbg !4922
	tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4917, metadata !688), !dbg !4923
	%7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !4924
	call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10, !dbg !4924
	tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4673, metadata !688) #10, !dbg !4925
	%8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !4926
	call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !4926
	tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !4668, metadata !688) #10, !dbg !4919
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4668, metadata !4684) #10, !dbg !4919
	call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !4919
	%9 = icmp eq i32 %1, 10, !dbg !4927
	br i1 %9, label %10, label %11, !dbg !4928
	tail call void @abort() #14, !dbg !4929, !noalias !4930
	unreachable, !dbg !4929
	tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4668, metadata !4684) #10, !dbg !4919
	%12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !4933
	call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !4933
	call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !4934
	%13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !4935
	store i32 %1, i32* %13, align 8, !dbg !4935
	%14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !4935
	%15 = bitcast i32* %14 to i8*, !dbg !4935
	call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !4935
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4918, metadata !958), !dbg !4936
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3260, metadata !688), !dbg !4937
	tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3261, metadata !688), !dbg !4939
	tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3262, metadata !688), !dbg !4940
	tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3263, metadata !688), !dbg !4941
	%16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !4942
	tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !3264, metadata !688), !dbg !4943
	tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !3266, metadata !688), !dbg !4944
	%17 = load i32, i32* %16, align 4, !dbg !4945, !tbaa !903
	%18 = or i32 %17, 67108864, !dbg !4946
	store i32 %18, i32* %16, align 4, !dbg !4946, !tbaa !903
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4918, metadata !958), !dbg !4936
	%19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !4947
	call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10, !dbg !4948
	ret i8* %19, !dbg !4949
}
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !4950 {
	%5 = alloca %struct.quoting_options, align 8
	tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4954, metadata !688), !dbg !4958
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4955, metadata !688), !dbg !4959
	tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4956, metadata !688), !dbg !4960
	tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4957, metadata !688), !dbg !4961
	tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4962, metadata !688) #10, !dbg !4972
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4967, metadata !688) #10, !dbg !4974
	tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4968, metadata !688) #10, !dbg !4975
	tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4969, metadata !688) #10, !dbg !4976
	tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !4970, metadata !688) #10, !dbg !4977
	%6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !4978
	call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !4978
	call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !4979, !tbaa.struct !4801
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4971, metadata !958) #10, !dbg !4980
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3310, metadata !688) #10, !dbg !4981
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3311, metadata !688) #10, !dbg !4983
	tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3312, metadata !688) #10, !dbg !4984
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !3310, metadata !688) #10, !dbg !4981
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3310, metadata !688) #10, !dbg !4981
	%7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !4985
	store i32 10, i32* %7, align 8, !dbg !4986, !tbaa !3240
	%8 = icmp ne i8* %1, null, !dbg !4987
	%9 = icmp ne i8* %2, null, !dbg !4988
	%10 = and i1 %8, %9, !dbg !4989
	br i1 %10, label %12, label %11, !dbg !4989
	tail call void @abort() #14, !dbg !4990
	unreachable, !dbg !4990
	%13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !4991
	store i8* %1, i8** %13, align 8, !dbg !4992, !tbaa !3329
	%14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !4993
	store i8* %2, i8** %14, align 8, !dbg !4994, !tbaa !3332
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4971, metadata !958) #10, !dbg !4980
	%15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #10, !dbg !4995
	call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !4996
	ret i8* %15, !dbg !4997
}
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !4963 {
	%6 = alloca %struct.quoting_options, align 8
	tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4962, metadata !688), !dbg !4998
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4967, metadata !688), !dbg !4999
	tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4968, metadata !688), !dbg !5000
	tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4969, metadata !688), !dbg !5001
	tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !4970, metadata !688), !dbg !5002
	%7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !5003
	call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10, !dbg !5003
	call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !5004, !tbaa.struct !4801
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !4971, metadata !958), !dbg !5005
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3310, metadata !688) #10, !dbg !5006
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3311, metadata !688) #10, !dbg !5008
	tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3312, metadata !688) #10, !dbg !5009
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !3310, metadata !688) #10, !dbg !5006
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3310, metadata !688) #10, !dbg !5006
	%8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !5010
	store i32 10, i32* %8, align 8, !dbg !5011, !tbaa !3240
	%9 = icmp ne i8* %1, null, !dbg !5012
	%10 = icmp ne i8* %2, null, !dbg !5013
	%11 = and i1 %9, %10, !dbg !5014
	br i1 %11, label %13, label %12, !dbg !5014
	tail call void @abort() #14, !dbg !5015
	unreachable, !dbg !5015
	%14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !5016
	store i8* %1, i8** %14, align 8, !dbg !5017, !tbaa !3329
	%15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !5018
	store i8* %2, i8** %15, align 8, !dbg !5019, !tbaa !3332
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !4971, metadata !958), !dbg !5005
	%16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !5020
	call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10, !dbg !5021
	ret i8* %16, !dbg !5022
}
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !5023 {
	%4 = alloca %struct.quoting_options, align 8
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5027, metadata !688), !dbg !5030
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !5028, metadata !688), !dbg !5031
	tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !5029, metadata !688), !dbg !5032
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4954, metadata !688) #10, !dbg !5033
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4955, metadata !688) #10, !dbg !5035
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4956, metadata !688) #10, !dbg !5036
	tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4957, metadata !688) #10, !dbg !5037
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4962, metadata !688) #10, !dbg !5038
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4967, metadata !688) #10, !dbg !5040
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4968, metadata !688) #10, !dbg !5041
	tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4969, metadata !688) #10, !dbg !5042
	tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !4970, metadata !688) #10, !dbg !5043
	%5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !5044
	call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10, !dbg !5044
	call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !5045, !tbaa.struct !4801
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !4971, metadata !958) #10, !dbg !5046
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3310, metadata !688) #10, !dbg !5047
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3311, metadata !688) #10, !dbg !5049
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3312, metadata !688) #10, !dbg !5050
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !3310, metadata !688) #10, !dbg !5047
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3310, metadata !688) #10, !dbg !5047
	%6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !5051
	store i32 10, i32* %6, align 8, !dbg !5052, !tbaa !3240
	%7 = icmp ne i8* %0, null, !dbg !5053
	%8 = icmp ne i8* %1, null, !dbg !5054
	%9 = and i1 %7, %8, !dbg !5055
	br i1 %9, label %11, label %10, !dbg !5055
	tail call void @abort() #14, !dbg !5056
	unreachable, !dbg !5056
	%12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !5057
	store i8* %0, i8** %12, align 8, !dbg !5058, !tbaa !3329
	%13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !5059
	store i8* %1, i8** %13, align 8, !dbg !5060, !tbaa !3332
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !4971, metadata !958) #10, !dbg !5046
	%14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !5061
	call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10, !dbg !5062
	ret i8* %14, !dbg !5063
}
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !5064 {
	%5 = alloca %struct.quoting_options, align 8
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5068, metadata !688), !dbg !5072
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !5069, metadata !688), !dbg !5073
	tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !5070, metadata !688), !dbg !5074
	tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !5071, metadata !688), !dbg !5075
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4962, metadata !688) #10, !dbg !5076
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4967, metadata !688) #10, !dbg !5078
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4968, metadata !688) #10, !dbg !5079
	tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4969, metadata !688) #10, !dbg !5080
	tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4970, metadata !688) #10, !dbg !5081
	%6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !5082
	call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !5082
	call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !5083, !tbaa.struct !4801
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4971, metadata !958) #10, !dbg !5084
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3310, metadata !688) #10, !dbg !5085
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3311, metadata !688) #10, !dbg !5087
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3312, metadata !688) #10, !dbg !5088
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !3310, metadata !688) #10, !dbg !5085
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3310, metadata !688) #10, !dbg !5085
	%7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !5089
	store i32 10, i32* %7, align 8, !dbg !5090, !tbaa !3240
	%8 = icmp ne i8* %0, null, !dbg !5091
	%9 = icmp ne i8* %1, null, !dbg !5092
	%10 = and i1 %8, %9, !dbg !5093
	br i1 %10, label %12, label %11, !dbg !5093
	tail call void @abort() #14, !dbg !5094
	unreachable, !dbg !5094
	%13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !5095
	store i8* %0, i8** %13, align 8, !dbg !5096, !tbaa !3329
	%14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !5097
	store i8* %1, i8** %14, align 8, !dbg !5098, !tbaa !3332
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4971, metadata !958) #10, !dbg !5084
	%15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #10, !dbg !5099
	call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !5100
	ret i8* %15, !dbg !5101
}
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !5102 {
	tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !5106, metadata !688), !dbg !5109
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !5107, metadata !688), !dbg !5110
	tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !5108, metadata !688), !dbg !5111
	%4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !5112
	ret i8* %4, !dbg !5113
}
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !5114 {
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5118, metadata !688), !dbg !5120
	tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !5119, metadata !688), !dbg !5121
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !5106, metadata !688) #10, !dbg !5122
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5107, metadata !688) #10, !dbg !5124
	tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !5108, metadata !688) #10, !dbg !5125
	%3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !5126
	ret i8* %3, !dbg !5127
}
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !5128 {
	tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !5132, metadata !688), !dbg !5134
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !5133, metadata !688), !dbg !5135
	tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !5106, metadata !688) #10, !dbg !5136
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !5107, metadata !688) #10, !dbg !5138
	tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !5108, metadata !688) #10, !dbg !5139
	%3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !5140
	ret i8* %3, !dbg !5141
}
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !5142 {
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5146, metadata !688), !dbg !5147
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !5132, metadata !688) #10, !dbg !5148
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5133, metadata !688) #10, !dbg !5150
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !5106, metadata !688) #10, !dbg !5151
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5107, metadata !688) #10, !dbg !5153
	tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !5108, metadata !688) #10, !dbg !5154
	%2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !5155
	ret i8* %2, !dbg !5156
}
define i64 @safe_read(i32, i8* nocapture, i64) local_unnamed_addr #6 !dbg !613 {
	tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !617, metadata !688), !dbg !5157
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !618, metadata !688), !dbg !5158
	tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !619, metadata !688), !dbg !5159
	br label %4, !dbg !5160
	%5 = phi i64 [ 2147475456, %13 ], [ %2, %3 ]
	br label %6, !dbg !5159
	tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !619, metadata !688), !dbg !5159
	%7 = tail call i64 @read(i32 %0, i8* %1, i64 %5) #10, !dbg !5161
	tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !620, metadata !688), !dbg !5162
	%8 = icmp sgt i64 %7, -1, !dbg !5163
	br i1 %8, label %17, label %9, !dbg !5165
	%10 = tail call i32* @__errno_location() #1, !dbg !5166
	%11 = load i32, i32* %10, align 4, !dbg !5166, !tbaa !903
	%12 = icmp eq i32 %11, 4, !dbg !5166
	br i1 %12, label %6, label %13, !dbg !5168, !llvm.loop !5169
	%14 = icmp eq i32 %11, 22, !dbg !5172
	%15 = icmp ugt i64 %5, 2147475456, !dbg !5174
	%16 = and i1 %15, %14, !dbg !5176
	br i1 %16, label %4, label %18
	br label %19, !dbg !5177
	br label %19, !dbg !5177
	ret i64 %7, !dbg !5177
}
declare i64 @read(i32, i8* nocapture, i64) local_unnamed_addr #3
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !5178 {
	tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5223, metadata !688), !dbg !5229
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !5224, metadata !688), !dbg !5230
	tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !5225, metadata !688), !dbg !5231
	tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !5226, metadata !688), !dbg !5232
	tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !5227, metadata !688), !dbg !5233
	tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !5228, metadata !688), !dbg !5234
	%7 = icmp eq i8* %1, null, !dbg !5235
	br i1 %7, label %10, label %8, !dbg !5237
	%9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.121, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #10, !dbg !5238
	br label %12, !dbg !5238
	%11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.122, i64 0, i64 0), i8* %2, i8* %3) #10, !dbg !5239
	br label %12
	%13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.123, i64 0, i64 0), i32 5) #10, !dbg !5240
	%14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #10, !dbg !5241
	%15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.124, i64 0, i64 0), i32 5) #10, !dbg !5243
	%16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #10, !dbg !5244
	switch i64 %5, label %126 [
		i64 0, label %17
		i64 1, label %18
		i64 2, label %22
		i64 3, label %28
		i64 4, label %36
		i64 5, label %46
		i64 6, label %58
		i64 7, label %72
		i64 8, label %88
		i64 9, label %106
	], !dbg !5245
	tail call void @abort() #14, !dbg !5246
	unreachable, !dbg !5246
	%19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.125, i64 0, i64 0), i32 5) #10, !dbg !5248
	%20 = load i8*, i8** %4, align 8, !dbg !5248, !tbaa !696
	%21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #10, !dbg !5249
	br label %146, !dbg !5251
	%23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.126, i64 0, i64 0), i32 5) #10, !dbg !5252
	%24 = load i8*, i8** %4, align 8, !dbg !5252, !tbaa !696
	%25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !5252
	%26 = load i8*, i8** %25, align 8, !dbg !5252, !tbaa !696
	%27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #10, !dbg !5253
	br label %146, !dbg !5254
	%29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.127, i64 0, i64 0), i32 5) #10, !dbg !5255
	%30 = load i8*, i8** %4, align 8, !dbg !5255, !tbaa !696
	%31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !5255
	%32 = load i8*, i8** %31, align 8, !dbg !5255, !tbaa !696
	%33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !5255
	%34 = load i8*, i8** %33, align 8, !dbg !5255, !tbaa !696
	%35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #10, !dbg !5256
	br label %146, !dbg !5257
	%37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.128, i64 0, i64 0), i32 5) #10, !dbg !5258
	%38 = load i8*, i8** %4, align 8, !dbg !5258, !tbaa !696
	%39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !5258
	%40 = load i8*, i8** %39, align 8, !dbg !5258, !tbaa !696
	%41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !5258
	%42 = load i8*, i8** %41, align 8, !dbg !5258, !tbaa !696
	%43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !5258
	%44 = load i8*, i8** %43, align 8, !dbg !5258, !tbaa !696
	%45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #10, !dbg !5259
	br label %146, !dbg !5260
	%47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.129, i64 0, i64 0), i32 5) #10, !dbg !5261
	%48 = load i8*, i8** %4, align 8, !dbg !5261, !tbaa !696
	%49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !5261
	%50 = load i8*, i8** %49, align 8, !dbg !5261, !tbaa !696
	%51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !5261
	%52 = load i8*, i8** %51, align 8, !dbg !5261, !tbaa !696
	%53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !5261
	%54 = load i8*, i8** %53, align 8, !dbg !5261, !tbaa !696
	%55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !5261
	%56 = load i8*, i8** %55, align 8, !dbg !5261, !tbaa !696
	%57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #10, !dbg !5262
	br label %146, !dbg !5263
	%59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.130, i64 0, i64 0), i32 5) #10, !dbg !5264
	%60 = load i8*, i8** %4, align 8, !dbg !5264, !tbaa !696
	%61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !5264
	%62 = load i8*, i8** %61, align 8, !dbg !5264, !tbaa !696
	%63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !5264
	%64 = load i8*, i8** %63, align 8, !dbg !5264, !tbaa !696
	%65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !5264
	%66 = load i8*, i8** %65, align 8, !dbg !5264, !tbaa !696
	%67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !5264
	%68 = load i8*, i8** %67, align 8, !dbg !5264, !tbaa !696
	%69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !5264
	%70 = load i8*, i8** %69, align 8, !dbg !5264, !tbaa !696
	%71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #10, !dbg !5265
	br label %146, !dbg !5266
	%73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.131, i64 0, i64 0), i32 5) #10, !dbg !5267
	%74 = load i8*, i8** %4, align 8, !dbg !5267, !tbaa !696
	%75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !5267
	%76 = load i8*, i8** %75, align 8, !dbg !5267, !tbaa !696
	%77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !5267
	%78 = load i8*, i8** %77, align 8, !dbg !5267, !tbaa !696
	%79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !5267
	%80 = load i8*, i8** %79, align 8, !dbg !5267, !tbaa !696
	%81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !5267
	%82 = load i8*, i8** %81, align 8, !dbg !5267, !tbaa !696
	%83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !5267
	%84 = load i8*, i8** %83, align 8, !dbg !5267, !tbaa !696
	%85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !5267
	%86 = load i8*, i8** %85, align 8, !dbg !5267, !tbaa !696
	%87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #10, !dbg !5268
	br label %146, !dbg !5269
	%89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.132, i64 0, i64 0), i32 5) #10, !dbg !5270
	%90 = load i8*, i8** %4, align 8, !dbg !5270, !tbaa !696
	%91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !5270
	%92 = load i8*, i8** %91, align 8, !dbg !5270, !tbaa !696
	%93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !5270
	%94 = load i8*, i8** %93, align 8, !dbg !5270, !tbaa !696
	%95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !5270
	%96 = load i8*, i8** %95, align 8, !dbg !5270, !tbaa !696
	%97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !5270
	%98 = load i8*, i8** %97, align 8, !dbg !5270, !tbaa !696
	%99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !5270
	%100 = load i8*, i8** %99, align 8, !dbg !5270, !tbaa !696
	%101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !5270
	%102 = load i8*, i8** %101, align 8, !dbg !5270, !tbaa !696
	%103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !5270
	%104 = load i8*, i8** %103, align 8, !dbg !5270, !tbaa !696
	%105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #10, !dbg !5271
	br label %146, !dbg !5272
	%107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.133, i64 0, i64 0), i32 5) #10, !dbg !5273
	%108 = load i8*, i8** %4, align 8, !dbg !5273, !tbaa !696
	%109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !5273
	%110 = load i8*, i8** %109, align 8, !dbg !5273, !tbaa !696
	%111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !5273
	%112 = load i8*, i8** %111, align 8, !dbg !5273, !tbaa !696
	%113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !5273
	%114 = load i8*, i8** %113, align 8, !dbg !5273, !tbaa !696
	%115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !5273
	%116 = load i8*, i8** %115, align 8, !dbg !5273, !tbaa !696
	%117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !5273
	%118 = load i8*, i8** %117, align 8, !dbg !5273, !tbaa !696
	%119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !5273
	%120 = load i8*, i8** %119, align 8, !dbg !5273, !tbaa !696
	%121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !5273
	%122 = load i8*, i8** %121, align 8, !dbg !5273, !tbaa !696
	%123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !5273
	%124 = load i8*, i8** %123, align 8, !dbg !5273, !tbaa !696
	%125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #10, !dbg !5274
	br label %146, !dbg !5275
	%127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.134, i64 0, i64 0), i32 5) #10, !dbg !5276
	%128 = load i8*, i8** %4, align 8, !dbg !5276, !tbaa !696
	%129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !5276
	%130 = load i8*, i8** %129, align 8, !dbg !5276, !tbaa !696
	%131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !5276
	%132 = load i8*, i8** %131, align 8, !dbg !5276, !tbaa !696
	%133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !5276
	%134 = load i8*, i8** %133, align 8, !dbg !5276, !tbaa !696
	%135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !5276
	%136 = load i8*, i8** %135, align 8, !dbg !5276, !tbaa !696
	%137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !5276
	%138 = load i8*, i8** %137, align 8, !dbg !5276, !tbaa !696
	%139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !5276
	%140 = load i8*, i8** %139, align 8, !dbg !5276, !tbaa !696
	%141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !5276
	%142 = load i8*, i8** %141, align 8, !dbg !5276, !tbaa !696
	%143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !5276
	%144 = load i8*, i8** %143, align 8, !dbg !5276, !tbaa !696
	%145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #10, !dbg !5277
	br label %146, !dbg !5278
	ret void, !dbg !5279
}
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !5280 {
	tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5284, metadata !688), !dbg !5290
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !5285, metadata !688), !dbg !5291
	tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !5286, metadata !688), !dbg !5292
	tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !5287, metadata !688), !dbg !5293
	tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !5288, metadata !688), !dbg !5294
	tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !5289, metadata !688), !dbg !5295
	br label %6, !dbg !5296
	%7 = phi i64 [ 0, %5 ], [ %11, %6 ]
	tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !5289, metadata !688), !dbg !5295
	%8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !5298
	%9 = load i8*, i8** %8, align 8, !dbg !5298, !tbaa !696
	%10 = icmp eq i8* %9, null, !dbg !5301
	%11 = add i64 %7, 1, !dbg !5303
	tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !5289, metadata !688), !dbg !5295
	br i1 %10, label %12, label %6, !dbg !5301, !llvm.loop !5305
	tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !5308
	ret void, !dbg !5309
}
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !5310 {
	%6 = alloca [10 x i8*], align 16
	tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5321, metadata !688), !dbg !5329
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !5322, metadata !688), !dbg !5330
	tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !5323, metadata !688), !dbg !5331
	tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !5324, metadata !688), !dbg !5332
	tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !5325, metadata !688), !dbg !5333
	%7 = bitcast [10 x i8*]* %6 to i8*, !dbg !5334
	call void @llvm.lifetime.start(i64 80, i8* nonnull %7) #10, !dbg !5334
	tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !5327, metadata !688), !dbg !5335
	tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !5326, metadata !688), !dbg !5336
	tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !5326, metadata !688), !dbg !5336
	%8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
	%9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
	%10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
	%11 = load i32, i32* %8, align 8, !dbg !5337
	%12 = icmp ult i32 %11, 41, !dbg !5337
	br i1 %12, label %13, label %18, !dbg !5337
	%14 = load i8*, i8** %9, align 8, !dbg !5341
	%15 = sext i32 %11 to i64, !dbg !5341
	%16 = getelementptr i8, i8* %14, i64 %15, !dbg !5341
	%17 = add i32 %11, 8, !dbg !5341
	store i32 %17, i32* %8, align 8, !dbg !5341
	br label %21, !dbg !5341
	%19 = load i8*, i8** %10, align 8, !dbg !5343
	%20 = getelementptr i8, i8* %19, i64 8, !dbg !5343
	store i8* %20, i8** %10, align 8, !dbg !5343
	br label %21, !dbg !5343
	%22 = phi i32 [ %17, %13 ], [ %11, %18 ], !dbg !5337
	%23 = phi i8* [ %16, %13 ], [ %19, %18 ]
	%24 = bitcast i8* %23 to i8**, !dbg !5345
	%25 = load i8*, i8** %24, align 8, !dbg !5345
	%26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !5347
	store i8* %25, i8** %26, align 16, !dbg !5348, !tbaa !696
	%27 = icmp eq i8* %25, null, !dbg !5349
	br i1 %27, label %30, label %28, !dbg !5350
	tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5326, metadata !688), !dbg !5336
	tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5326, metadata !688), !dbg !5336
	%29 = icmp ult i32 %22, 41, !dbg !5337
	br i1 %29, label %35, label %32, !dbg !5337
	%31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
	call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !5352
	call void @llvm.lifetime.end(i64 80, i8* nonnull %7) #10, !dbg !5353
	ret void, !dbg !5353
	%33 = load i8*, i8** %10, align 8, !dbg !5343
	%34 = getelementptr i8, i8* %33, i64 8, !dbg !5343
	store i8* %34, i8** %10, align 8, !dbg !5343
	br label %40, !dbg !5343
	%36 = load i8*, i8** %9, align 8, !dbg !5341
	%37 = sext i32 %22 to i64, !dbg !5341
	%38 = getelementptr i8, i8* %36, i64 %37, !dbg !5341
	%39 = add i32 %22, 8, !dbg !5341
	store i32 %39, i32* %8, align 8, !dbg !5341
	br label %40, !dbg !5341
	%41 = phi i32 [ %39, %35 ], [ %22, %32 ], !dbg !5337
	%42 = phi i8* [ %38, %35 ], [ %33, %32 ]
	%43 = bitcast i8* %42 to i8**, !dbg !5345
	%44 = load i8*, i8** %43, align 8, !dbg !5345
	%45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !5347
	store i8* %44, i8** %45, align 8, !dbg !5348, !tbaa !696
	%46 = icmp eq i8* %44, null, !dbg !5349
	br i1 %46, label %30, label %47, !dbg !5350
	tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5326, metadata !688), !dbg !5336
	tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5326, metadata !688), !dbg !5336
	%48 = icmp ult i32 %41, 41, !dbg !5337
	br i1 %48, label %52, label %49, !dbg !5337
	%50 = load i8*, i8** %10, align 8, !dbg !5343
	%51 = getelementptr i8, i8* %50, i64 8, !dbg !5343
	store i8* %51, i8** %10, align 8, !dbg !5343
	br label %57, !dbg !5343
	%53 = load i8*, i8** %9, align 8, !dbg !5341
	%54 = sext i32 %41 to i64, !dbg !5341
	%55 = getelementptr i8, i8* %53, i64 %54, !dbg !5341
	%56 = add i32 %41, 8, !dbg !5341
	store i32 %56, i32* %8, align 8, !dbg !5341
	br label %57, !dbg !5341
	%58 = phi i32 [ %56, %52 ], [ %41, %49 ], !dbg !5337
	%59 = phi i8* [ %55, %52 ], [ %50, %49 ]
	%60 = bitcast i8* %59 to i8**, !dbg !5345
	%61 = load i8*, i8** %60, align 8, !dbg !5345
	%62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !5347
	store i8* %61, i8** %62, align 16, !dbg !5348, !tbaa !696
	%63 = icmp eq i8* %61, null, !dbg !5349
	br i1 %63, label %30, label %64, !dbg !5350
	tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5326, metadata !688), !dbg !5336
	tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5326, metadata !688), !dbg !5336
	%65 = icmp ult i32 %58, 41, !dbg !5337
	br i1 %65, label %69, label %66, !dbg !5337
	%67 = load i8*, i8** %10, align 8, !dbg !5343
	%68 = getelementptr i8, i8* %67, i64 8, !dbg !5343
	store i8* %68, i8** %10, align 8, !dbg !5343
	br label %74, !dbg !5343
	%70 = load i8*, i8** %9, align 8, !dbg !5341
	%71 = sext i32 %58 to i64, !dbg !5341
	%72 = getelementptr i8, i8* %70, i64 %71, !dbg !5341
	%73 = add i32 %58, 8, !dbg !5341
	store i32 %73, i32* %8, align 8, !dbg !5341
	br label %74, !dbg !5341
	%75 = phi i32 [ %73, %69 ], [ %58, %66 ], !dbg !5337
	%76 = phi i8* [ %72, %69 ], [ %67, %66 ]
	%77 = bitcast i8* %76 to i8**, !dbg !5345
	%78 = load i8*, i8** %77, align 8, !dbg !5345
	%79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !5347
	store i8* %78, i8** %79, align 8, !dbg !5348, !tbaa !696
	%80 = icmp eq i8* %78, null, !dbg !5349
	br i1 %80, label %30, label %81, !dbg !5350
	tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5326, metadata !688), !dbg !5336
	tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5326, metadata !688), !dbg !5336
	%82 = icmp ult i32 %75, 41, !dbg !5337
	br i1 %82, label %86, label %83, !dbg !5337
	%84 = load i8*, i8** %10, align 8, !dbg !5343
	%85 = getelementptr i8, i8* %84, i64 8, !dbg !5343
	store i8* %85, i8** %10, align 8, !dbg !5343
	br label %91, !dbg !5343
	%87 = load i8*, i8** %9, align 8, !dbg !5341
	%88 = sext i32 %75 to i64, !dbg !5341
	%89 = getelementptr i8, i8* %87, i64 %88, !dbg !5341
	%90 = add i32 %75, 8, !dbg !5341
	store i32 %90, i32* %8, align 8, !dbg !5341
	br label %91, !dbg !5341
	%92 = phi i32 [ %90, %86 ], [ %75, %83 ], !dbg !5337
	%93 = phi i8* [ %89, %86 ], [ %84, %83 ]
	%94 = bitcast i8* %93 to i8**, !dbg !5345
	%95 = load i8*, i8** %94, align 8, !dbg !5345
	%96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !5347
	store i8* %95, i8** %96, align 16, !dbg !5348, !tbaa !696
	%97 = icmp eq i8* %95, null, !dbg !5349
	br i1 %97, label %30, label %98, !dbg !5350
	tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5326, metadata !688), !dbg !5336
	tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5326, metadata !688), !dbg !5336
	%99 = icmp ult i32 %92, 41, !dbg !5337
	br i1 %99, label %103, label %100, !dbg !5337
	%101 = load i8*, i8** %10, align 8, !dbg !5343
	%102 = getelementptr i8, i8* %101, i64 8, !dbg !5343
	store i8* %102, i8** %10, align 8, !dbg !5343
	br label %108, !dbg !5343
	%104 = load i8*, i8** %9, align 8, !dbg !5341
	%105 = sext i32 %92 to i64, !dbg !5341
	%106 = getelementptr i8, i8* %104, i64 %105, !dbg !5341
	%107 = add i32 %92, 8, !dbg !5341
	store i32 %107, i32* %8, align 8, !dbg !5341
	br label %108, !dbg !5341
	%109 = phi i8* [ %106, %103 ], [ %101, %100 ]
	%110 = bitcast i8* %109 to i8**, !dbg !5345
	%111 = load i8*, i8** %110, align 8, !dbg !5345
	%112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !5347
	store i8* %111, i8** %112, align 8, !dbg !5348, !tbaa !696
	%113 = icmp eq i8* %111, null, !dbg !5349
	br i1 %113, label %30, label %114, !dbg !5350
	tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5326, metadata !688), !dbg !5336
	tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5326, metadata !688), !dbg !5336
	%115 = load i8*, i8** %10, align 8, !dbg !5343
	%116 = getelementptr i8, i8* %115, i64 8, !dbg !5343
	store i8* %116, i8** %10, align 8, !dbg !5343
	%117 = bitcast i8* %115 to i8**, !dbg !5345
	%118 = load i8*, i8** %117, align 8, !dbg !5345
	%119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !5347
	store i8* %118, i8** %119, align 16, !dbg !5348, !tbaa !696
	%120 = icmp eq i8* %118, null, !dbg !5349
	br i1 %120, label %30, label %121, !dbg !5350
	tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5326, metadata !688), !dbg !5336
	tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5326, metadata !688), !dbg !5336
	%122 = load i8*, i8** %10, align 8, !dbg !5343
	%123 = getelementptr i8, i8* %122, i64 8, !dbg !5343
	store i8* %123, i8** %10, align 8, !dbg !5343
	%124 = bitcast i8* %122 to i8**, !dbg !5345
	%125 = load i8*, i8** %124, align 8, !dbg !5345
	%126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !5347
	store i8* %125, i8** %126, align 8, !dbg !5348, !tbaa !696
	%127 = icmp eq i8* %125, null, !dbg !5349
	br i1 %127, label %30, label %128, !dbg !5350
	tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5326, metadata !688), !dbg !5336
	tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5326, metadata !688), !dbg !5336
	%129 = load i8*, i8** %10, align 8, !dbg !5343
	%130 = getelementptr i8, i8* %129, i64 8, !dbg !5343
	store i8* %130, i8** %10, align 8, !dbg !5343
	%131 = bitcast i8* %129 to i8**, !dbg !5345
	%132 = load i8*, i8** %131, align 8, !dbg !5345
	%133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !5347
	store i8* %132, i8** %133, align 16, !dbg !5348, !tbaa !696
	%134 = icmp eq i8* %132, null, !dbg !5349
	br i1 %134, label %30, label %135, !dbg !5350
	tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5326, metadata !688), !dbg !5336
	tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5326, metadata !688), !dbg !5336
	%136 = load i8*, i8** %10, align 8, !dbg !5343
	%137 = getelementptr i8, i8* %136, i64 8, !dbg !5343
	store i8* %137, i8** %10, align 8, !dbg !5343
	%138 = bitcast i8* %136 to i8**, !dbg !5345
	%139 = load i8*, i8** %138, align 8, !dbg !5345
	%140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !5347
	store i8* %139, i8** %140, align 8, !dbg !5348, !tbaa !696
	%141 = icmp eq i8* %139, null, !dbg !5349
	tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5326, metadata !688), !dbg !5336
	tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5326, metadata !688), !dbg !5336
	%142 = select i1 %141, i64 9, i64 10, !dbg !5350
	br label %30, !dbg !5350
}
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !5354 {
	%5 = alloca [1 x %struct.__va_list_tag], align 16
	tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5358, metadata !688), !dbg !5368
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !5359, metadata !688), !dbg !5369
	tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !5360, metadata !688), !dbg !5370
	tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !5361, metadata !688), !dbg !5371
	%6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !5372
	call void @llvm.lifetime.start(i64 24, i8* nonnull %6) #10, !dbg !5372
	tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !5362, metadata !688), !dbg !5373
	%7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !5374
	call void @llvm.va_start(i8* nonnull %6), !dbg !5374
	call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !5375
	call void @llvm.va_end(i8* nonnull %6), !dbg !5376
	call void @llvm.lifetime.end(i64 24, i8* nonnull %6) #10, !dbg !5377
	ret void, !dbg !5377
}
declare void @llvm.va_start(i8*) #10
declare void @llvm.va_end(i8*) #10
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !5378 {
	%1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.137, i64 0, i64 0), i32 5) #10, !dbg !5379
	%2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.138, i64 0, i64 0)) #10, !dbg !5380
	%3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.139, i64 0, i64 0), i32 5) #10, !dbg !5382
	%4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.140, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.141, i64 0, i64 0)) #10, !dbg !5383
	%5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19.142, i64 0, i64 0), i32 5) #10, !dbg !5384
	%6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !5384, !tbaa !696
	%7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #10, !dbg !5385
	ret void, !dbg !5386
}
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #12 !dbg !5387 {
	tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !5389, metadata !688), !dbg !5391
	tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !5390, metadata !688), !dbg !5392
	%3 = udiv i64 9223372036854775807, %1, !dbg !5393
	%4 = icmp ult i64 %3, %0, !dbg !5393
	br i1 %4, label %5, label %6, !dbg !5395
	tail call void @xalloc_die() #14, !dbg !5396
	unreachable, !dbg !5396
	%7 = mul i64 %1, %0, !dbg !5397
	tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !5398, metadata !688) #10, !dbg !5405
	%8 = tail call noalias i8* @malloc(i64 %7) #10, !dbg !5407
	tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !5404, metadata !688) #10, !dbg !5408
	%9 = icmp eq i8* %8, null, !dbg !5409
	%10 = icmp ne i64 %7, 0, !dbg !5411
	%11 = and i1 %10, %9, !dbg !5413
	br i1 %11, label %12, label %13, !dbg !5413
	tail call void @xalloc_die() #14, !dbg !5414
	unreachable, !dbg !5414
	ret i8* %8, !dbg !5415
}
declare noalias i8* @malloc(i64) local_unnamed_addr #2
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !5399 {
	tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !5398, metadata !688), !dbg !5416
	%2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !5417
	tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !5404, metadata !688), !dbg !5418
	%3 = icmp eq i8* %2, null, !dbg !5419
	%4 = icmp ne i64 %0, 0, !dbg !5420
	%5 = and i1 %4, %3, !dbg !5421
	br i1 %5, label %6, label %7, !dbg !5421
	tail call void @xalloc_die() #14, !dbg !5422
	unreachable, !dbg !5422
	ret i8* %2, !dbg !5423
}
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #12 !dbg !5424 {
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5428, metadata !688), !dbg !5431
	tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !5429, metadata !688), !dbg !5432
	tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !5430, metadata !688), !dbg !5433
	%4 = udiv i64 9223372036854775807, %2, !dbg !5434
	%5 = icmp ult i64 %4, %1, !dbg !5434
	br i1 %5, label %6, label %7, !dbg !5436
	tail call void @xalloc_die() #14, !dbg !5437
	unreachable, !dbg !5437
	%8 = mul i64 %2, %1, !dbg !5438
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5439, metadata !688) #10, !dbg !5445
	tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !5444, metadata !688) #10, !dbg !5447
	%9 = icmp eq i64 %8, 0, !dbg !5448
	%10 = icmp ne i8* %0, null, !dbg !5450
	%11 = and i1 %10, %9, !dbg !5452
	br i1 %11, label %12, label %13, !dbg !5452
	tail call void @free(i8* nonnull %0) #10, !dbg !5453
	br label %19, !dbg !5455
	%14 = tail call i8* @realloc(i8* %0, i64 %8) #10, !dbg !5456
	tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !5439, metadata !688) #10, !dbg !5445
	%15 = icmp eq i8* %14, null, !dbg !5457
	%16 = icmp ne i64 %8, 0, !dbg !5459
	%17 = and i1 %16, %15, !dbg !5461
	br i1 %17, label %18, label %19, !dbg !5461
	tail call void @xalloc_die() #14, !dbg !5462
	unreachable, !dbg !5462
	%20 = phi i8* [ null, %12 ], [ %14, %13 ]
	ret i8* %20, !dbg !5463
}
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !5440 {
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5439, metadata !688), !dbg !5464
	tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !5444, metadata !688), !dbg !5465
	%3 = icmp eq i64 %1, 0, !dbg !5466
	%4 = icmp ne i8* %0, null, !dbg !5467
	%5 = and i1 %4, %3, !dbg !5468
	br i1 %5, label %6, label %7, !dbg !5468
	tail call void @free(i8* nonnull %0) #10, !dbg !5469
	br label %13, !dbg !5470
	%8 = tail call i8* @realloc(i8* %0, i64 %1) #10, !dbg !5471
	tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !5439, metadata !688), !dbg !5464
	%9 = icmp eq i8* %8, null, !dbg !5472
	%10 = icmp ne i64 %1, 0, !dbg !5473
	%11 = and i1 %10, %9, !dbg !5474
	br i1 %11, label %12, label %13, !dbg !5474
	tail call void @xalloc_die() #14, !dbg !5475
	unreachable, !dbg !5475
	%14 = phi i8* [ null, %6 ], [ %8, %7 ]
	ret i8* %14, !dbg !5476
}
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #12 !dbg !644 {
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !649, metadata !688), !dbg !5477
	tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !650, metadata !688), !dbg !5478
	tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !651, metadata !688), !dbg !5479
	%4 = load i64, i64* %1, align 8, !dbg !5480, !tbaa !2226
	tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !652, metadata !688), !dbg !5481
	%5 = icmp eq i8* %0, null, !dbg !5482
	br i1 %5, label %6, label %13, !dbg !5484
	%7 = icmp eq i64 %4, 0, !dbg !5485
	br i1 %7, label %8, label %17, !dbg !5488
	%9 = udiv i64 128, %2, !dbg !5489
	tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !652, metadata !688), !dbg !5481
	%10 = icmp ugt i64 %2, 128, !dbg !5491
	%11 = zext i1 %10 to i64, !dbg !5491
	%12 = add nuw nsw i64 %9, %11, !dbg !5492
	tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !652, metadata !688), !dbg !5481
	br label %17, !dbg !5493
	%14 = udiv i64 6148914691236517204, %2, !dbg !5494
	%15 = icmp ugt i64 %14, %4, !dbg !5497
	br i1 %15, label %20, label %16, !dbg !5498
	tail call void @xalloc_die() #14, !dbg !5499
	unreachable, !dbg !5499
	%18 = phi i64 [ %12, %8 ], [ %4, %6 ]
	tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !652, metadata !688), !dbg !5481
	store i64 %18, i64* %1, align 8, !dbg !5500, !tbaa !2226
	%19 = mul i64 %18, %2, !dbg !5501
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5439, metadata !688) #10, !dbg !5502
	tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !5444, metadata !688) #10, !dbg !5504
	br label %27, !dbg !5505
	%21 = lshr i64 %4, 1, !dbg !5506
	%22 = add i64 %4, 1, !dbg !5507
	%23 = add i64 %22, %21, !dbg !5508
	tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !652, metadata !688), !dbg !5481
	tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !652, metadata !688), !dbg !5481
	store i64 %23, i64* %1, align 8, !dbg !5500, !tbaa !2226
	%24 = mul i64 %23, %2, !dbg !5501
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5439, metadata !688) #10, !dbg !5502
	tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !5444, metadata !688) #10, !dbg !5504
	%25 = icmp eq i64 %24, 0, !dbg !5509
	br i1 %25, label %26, label %27, !dbg !5505
	tail call void @free(i8* nonnull %0) #10, !dbg !5510
	br label %34, !dbg !5511
	%28 = phi i64 [ %19, %17 ], [ %24, %20 ]
	%29 = tail call i8* @realloc(i8* %0, i64 %28) #10, !dbg !5512
	tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !5439, metadata !688) #10, !dbg !5502
	%30 = icmp eq i8* %29, null, !dbg !5513
	%31 = icmp ne i64 %28, 0, !dbg !5514
	%32 = and i1 %31, %30, !dbg !5515
	br i1 %32, label %33, label %34, !dbg !5515
	tail call void @xalloc_die() #14, !dbg !5516
	unreachable, !dbg !5516
	%35 = phi i8* [ null, %26 ], [ %29, %27 ]
	ret i8* %35, !dbg !5517
}
define noalias i8* @xcharalloc(i64) local_unnamed_addr #12 !dbg !5518 {
	tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !5520, metadata !688), !dbg !5521
	tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !5398, metadata !688) #10, !dbg !5522
	%2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !5524
	tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !5404, metadata !688) #10, !dbg !5525
	%3 = icmp eq i8* %2, null, !dbg !5526
	%4 = icmp ne i64 %0, 0, !dbg !5527
	%5 = and i1 %4, %3, !dbg !5528
	br i1 %5, label %6, label %7, !dbg !5528
	tail call void @xalloc_die() #14, !dbg !5529
	unreachable, !dbg !5529
	ret i8* %2, !dbg !5530
}
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !5531 {
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5535, metadata !688), !dbg !5537
	tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !5536, metadata !688), !dbg !5538
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !649, metadata !688) #10, !dbg !5539
	tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !650, metadata !688) #10, !dbg !5541
	tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !651, metadata !688) #10, !dbg !5542
	%3 = load i64, i64* %1, align 8, !dbg !5543, !tbaa !2226
	tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !652, metadata !688) #10, !dbg !5544
	%4 = icmp eq i8* %0, null, !dbg !5545
	br i1 %4, label %5, label %8, !dbg !5546
	%6 = icmp eq i64 %3, 0, !dbg !5547
	tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !652, metadata !688) #10, !dbg !5544
	tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !652, metadata !688) #10, !dbg !5544
	%7 = select i1 %6, i64 128, i64 %3, !dbg !5548
	tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !652, metadata !688) #10, !dbg !5544
	store i64 %7, i64* %1, align 8, !dbg !5549, !tbaa !2226
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5439, metadata !688) #10, !dbg !5550
	tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !5444, metadata !688) #10, !dbg !5552
	br label %17, !dbg !5553
	%9 = icmp ult i64 %3, 6148914691236517204, !dbg !5554
	br i1 %9, label %11, label %10, !dbg !5555
	tail call void @xalloc_die() #14, !dbg !5556
	unreachable, !dbg !5556
	%12 = lshr i64 %3, 1, !dbg !5557
	%13 = add i64 %3, 1, !dbg !5558
	%14 = add i64 %13, %12, !dbg !5559
	tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !652, metadata !688) #10, !dbg !5544
	tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !652, metadata !688) #10, !dbg !5544
	store i64 %14, i64* %1, align 8, !dbg !5549, !tbaa !2226
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5439, metadata !688) #10, !dbg !5550
	tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !5444, metadata !688) #10, !dbg !5552
	%15 = icmp eq i64 %14, 0, !dbg !5560
	br i1 %15, label %16, label %17, !dbg !5553
	tail call void @free(i8* nonnull %0) #10, !dbg !5561
	br label %24, !dbg !5562
	%18 = phi i64 [ %7, %5 ], [ %14, %11 ]
	%19 = tail call i8* @realloc(i8* %0, i64 %18) #10, !dbg !5563
	tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !5439, metadata !688) #10, !dbg !5550
	%20 = icmp eq i8* %19, null, !dbg !5564
	%21 = icmp ne i64 %18, 0, !dbg !5565
	%22 = and i1 %21, %20, !dbg !5566
	br i1 %22, label %23, label %24, !dbg !5566
	tail call void @xalloc_die() #14, !dbg !5567
	unreachable, !dbg !5567
	%25 = phi i8* [ null, %16 ], [ %19, %17 ]
	ret i8* %25, !dbg !5568
}
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !5569 {
	tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !5571, metadata !688), !dbg !5572
	tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !5398, metadata !688) #10, !dbg !5573
	%2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !5575
	tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !5404, metadata !688) #10, !dbg !5576
	%3 = icmp eq i8* %2, null, !dbg !5577
	%4 = icmp ne i64 %0, 0, !dbg !5578
	%5 = and i1 %4, %3, !dbg !5579
	br i1 %5, label %6, label %7, !dbg !5579
	tail call void @xalloc_die() #14, !dbg !5580
	unreachable, !dbg !5580
	tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !5581
	ret i8* %2, !dbg !5582
}
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !5583 {
	tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !5585, metadata !688), !dbg !5588
	tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !5586, metadata !688), !dbg !5589
	%3 = udiv i64 9223372036854775807, %1, !dbg !5590
	%4 = icmp ult i64 %3, %0, !dbg !5590
	br i1 %4, label %8, label %5, !dbg !5592
	%6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #10, !dbg !5593
	tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !5587, metadata !688), !dbg !5595
	%7 = icmp eq i8* %6, null, !dbg !5596
	br i1 %7, label %8, label %9, !dbg !5597
	tail call void @xalloc_die() #14, !dbg !5599
	unreachable, !dbg !5599
	ret i8* %6, !dbg !5600
}
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !5601 {
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5605, metadata !688), !dbg !5607
	tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !5606, metadata !688), !dbg !5608
	tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !5398, metadata !688) #10, !dbg !5609
	%3 = tail call noalias i8* @malloc(i64 %1) #10, !dbg !5611
	tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !5404, metadata !688) #10, !dbg !5612
	%4 = icmp eq i8* %3, null, !dbg !5613
	%5 = icmp ne i64 %1, 0, !dbg !5614
	%6 = and i1 %5, %4, !dbg !5615
	br i1 %6, label %7, label %8, !dbg !5615
	tail call void @xalloc_die() #14, !dbg !5616
	unreachable, !dbg !5616
	tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !5617
	ret i8* %3, !dbg !5618
}
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !5619 {
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5621, metadata !688), !dbg !5622
	%2 = tail call i64 @strlen(i8* %0) #13, !dbg !5623
	%3 = add i64 %2, 1, !dbg !5624
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5605, metadata !688) #10, !dbg !5625
	tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !5606, metadata !688) #10, !dbg !5628
	tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !5398, metadata !688) #10, !dbg !5629
	%4 = tail call noalias i8* @malloc(i64 %3) #10, !dbg !5631
	tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !5404, metadata !688) #10, !dbg !5632
	%5 = icmp eq i8* %4, null, !dbg !5633
	%6 = icmp ne i64 %3, 0, !dbg !5634
	%7 = and i1 %6, %5, !dbg !5635
	br i1 %7, label %8, label %9, !dbg !5635
	tail call void @xalloc_die() #14, !dbg !5636
	unreachable, !dbg !5636
	tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #10, !dbg !5637
	ret i8* %4, !dbg !5638
}
define void @xalloc_die() local_unnamed_addr #0 !dbg !5639 {
	%1 = load volatile i32, i32* @exit_failure, align 4, !dbg !5641, !tbaa !903
	%2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.155, i64 0, i64 0), i32 5) #10, !dbg !5642
	tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.156, i64 0, i64 0), i8* %2) #10, !dbg !5643
	tail call void @abort() #14, !dbg !5645
	unreachable, !dbg !5645
}
define i32 @xstrtoumax(i8*, i8**, i32, i64* nocapture, i8* readonly) local_unnamed_addr #6 !dbg !5646 {
	%6 = alloca i8*, align 8
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5653, metadata !688), !dbg !5671
	tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !5654, metadata !688), !dbg !5672
	tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !5655, metadata !688), !dbg !5673
	tail call void @llvm.dbg.value(metadata i64* %3, i64 0, metadata !5656, metadata !688), !dbg !5674
	tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !5657, metadata !688), !dbg !5675
	%7 = bitcast i8** %6 to i8*, !dbg !5676
	call void @llvm.lifetime.start(i64 8, i8* nonnull %7) #10, !dbg !5676
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !5661, metadata !688), !dbg !5677
	%8 = icmp ult i32 %2, 37, !dbg !5678
	br i1 %8, label %10, label %9, !dbg !5678
	tail call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.159, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.160, i64 0, i64 0), i32 96, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @__PRETTY_FUNCTION__.xstrtoumax, i64 0, i64 0)) #14, !dbg !5681
	unreachable, !dbg !5681
	%11 = icmp ne i8** %1, null, !dbg !5683
	tail call void @llvm.dbg.value(metadata i8** %25, i64 0, metadata !5659, metadata !688), !dbg !5684
	%12 = tail call i32* @__errno_location() #1, !dbg !5685
	store i32 0, i32* %12, align 4, !dbg !5686, !tbaa !903
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5662, metadata !688), !dbg !5687
	%13 = tail call i16** @__ctype_b_loc() #1, !dbg !5688
	%14 = load i16*, i16** %13, align 8, !tbaa !696
	br label %15, !dbg !5690
	%16 = phi i8* [ %0, %10 ], [ %23, %15 ]
	%17 = load i8, i8* %16, align 1, !tbaa !1179
	tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !5665, metadata !688), !dbg !5691
	tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !5662, metadata !688), !dbg !5687
	%18 = zext i8 %17 to i64, !dbg !5688
	%19 = getelementptr inbounds i16, i16* %14, i64 %18, !dbg !5688
	%20 = load i16, i16* %19, align 2, !dbg !5688, !tbaa !1143
	%21 = and i16 %20, 8192, !dbg !5688
	%22 = icmp eq i16 %21, 0, !dbg !5692
	%23 = getelementptr inbounds i8, i8* %16, i64 1, !dbg !5693
	tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !5662, metadata !688), !dbg !5687
	br i1 %22, label %24, label %15, !dbg !5692, !llvm.loop !5694
	%25 = select i1 %11, i8** %1, i8** %6, !dbg !5683
	%26 = icmp eq i8 %17, 45, !dbg !5696
	br i1 %26, label %265, label %27
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5698, metadata !688) #10, !dbg !5707
	tail call void @llvm.dbg.value(metadata i8** %25, i64 0, metadata !5705, metadata !688) #10, !dbg !5707
	tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !5706, metadata !688) #10, !dbg !5707
	%28 = call i64 @__strtoul_internal(i8* %0, i8** %25, i32 %2, i32 0) #10, !dbg !5709
	call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !5660, metadata !688), !dbg !5710
	%29 = load i8*, i8** %25, align 8, !dbg !5711, !tbaa !696
	%30 = icmp eq i8* %29, %0, !dbg !5713
	br i1 %30, label %31, label %40, !dbg !5714
	%32 = icmp eq i8* %4, null, !dbg !5715
	br i1 %32, label %265, label %33, !dbg !5718
	%34 = load i8, i8* %0, align 1, !dbg !5719, !tbaa !1179
	%35 = icmp eq i8 %34, 0, !dbg !5719
	br i1 %35, label %265, label %36, !dbg !5721
	%37 = sext i8 %34 to i32, !dbg !5719
	%38 = call i8* @strchr(i8* nonnull %4, i32 %37) #10, !dbg !5722
	%39 = icmp eq i8* %38, null, !dbg !5722
	br i1 %39, label %265, label %47, !dbg !5724
	%41 = load i32, i32* %12, align 4, !dbg !5726, !tbaa !903
	switch i32 %41, label %265 [
		i32 0, label %43
		i32 34, label %42
	], !dbg !5728
	call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !5661, metadata !688), !dbg !5677
	br label %43, !dbg !5729
	%44 = phi i32 [ 1, %42 ], [ 0, %40 ]
	call void @llvm.dbg.value(metadata i32 %44, i64 0, metadata !5661, metadata !688), !dbg !5677
	%45 = icmp eq i8* %4, null, !dbg !5731
	br i1 %45, label %46, label %47, !dbg !5733
	call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !5660, metadata !688), !dbg !5710
	store i64 %28, i64* %3, align 8, !dbg !5734, !tbaa !2226
	br label %265, !dbg !5736
	%48 = phi i32 [ %44, %43 ], [ 0, %36 ]
	%49 = phi i64 [ %28, %43 ], [ 1, %36 ]
	%50 = load i8, i8* %29, align 1, !dbg !5737, !tbaa !1179
	%51 = icmp eq i8 %50, 0, !dbg !5738
	br i1 %51, label %262, label %52, !dbg !5739
	%53 = sext i8 %50 to i32, !dbg !5737
	call void @llvm.dbg.value(metadata i32 1024, i64 0, metadata !5666, metadata !688), !dbg !5740
	call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !5669, metadata !688), !dbg !5741
	%54 = call i8* @strchr(i8* nonnull %4, i32 %53) #10, !dbg !5742
	%55 = icmp eq i8* %54, null, !dbg !5742
	br i1 %55, label %56, label %58, !dbg !5745
	call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !5660, metadata !688), !dbg !5710
	store i64 %49, i64* %3, align 8, !dbg !5747, !tbaa !2226
	%57 = or i32 %48, 2, !dbg !5749
	br label %265, !dbg !5750
	switch i32 %53, label %72 [
		i32 69, label %59
		i32 71, label %59
		i32 103, label %59
		i32 107, label %59
		i32 75, label %59
		i32 77, label %59
		i32 109, label %59
		i32 80, label %59
		i32 84, label %59
		i32 116, label %59
		i32 89, label %59
		i32 90, label %59
	], !dbg !5751
	%60 = call i8* @strchr(i8* nonnull %4, i32 48) #10, !dbg !5752
	%61 = icmp eq i8* %60, null, !dbg !5752
	br i1 %61, label %72, label %62, !dbg !5756
	%63 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !5758
	%64 = load i8, i8* %63, align 1, !dbg !5758, !tbaa !1179
	%65 = sext i8 %64 to i32, !dbg !5758
	switch i32 %65, label %72 [
		i32 105, label %66
		i32 66, label %71
		i32 68, label %71
	], !dbg !5759
	%67 = getelementptr inbounds i8, i8* %29, i64 2, !dbg !5760
	%68 = load i8, i8* %67, align 1, !dbg !5760, !tbaa !1179
	%69 = icmp eq i8 %68, 66, !dbg !5763
	call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !5669, metadata !688), !dbg !5741
	%70 = select i1 %69, i64 3, i64 1, !dbg !5764
	br label %72, !dbg !5764
	call void @llvm.dbg.value(metadata i32 1000, i64 0, metadata !5666, metadata !688), !dbg !5740
	call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !5669, metadata !688), !dbg !5741
	br label %72, !dbg !5765
	%73 = phi i64 [ 1024, %58 ], [ 1024, %62 ], [ 1000, %71 ], [ 1024, %59 ], [ 1024, %66 ]
	%74 = phi i64 [ 1, %58 ], [ 1, %62 ], [ 2, %71 ], [ 1, %59 ], [ %70, %66 ]
	switch i32 %53, label %251 [
		i32 98, label %75
		i32 66, label %80
		i32 99, label %253
		i32 69, label %85
		i32 71, label %111
		i32 103, label %111
		i32 107, label %125
		i32 75, label %125
		i32 77, label %131
		i32 109, label %131
		i32 80, label %141
		i32 84, label %163
		i32 116, label %163
		i32 119, label %181
		i32 89, label %187
		i32 90, label %221
	], !dbg !5766
	tail call void @llvm.dbg.value(metadata i32 512, i64 0, metadata !5767, metadata !688), !dbg !5773
	%76 = icmp ugt i64 %49, 36028797018963967, !dbg !5776
	%77 = shl i64 %49, 9, !dbg !5778
	%78 = select i1 %76, i64 -1, i64 %77, !dbg !5779
	%79 = zext i1 %76 to i32, !dbg !5779
	call void @llvm.dbg.value(metadata i32 %79, i64 0, metadata !5670, metadata !688), !dbg !5780
	br label %253, !dbg !5781
	tail call void @llvm.dbg.value(metadata i32 1024, i64 0, metadata !5767, metadata !688), !dbg !5782
	%81 = icmp ugt i64 %49, 18014398509481983, !dbg !5784
	%82 = shl i64 %49, 10, !dbg !5785
	%83 = select i1 %81, i64 -1, i64 %82, !dbg !5786
	%84 = zext i1 %81 to i32, !dbg !5786
	call void @llvm.dbg.value(metadata i32 %84, i64 0, metadata !5670, metadata !688), !dbg !5780
	br label %253, !dbg !5787
	tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !5788, metadata !688), !dbg !5796
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !5795, metadata !688), !dbg !5798
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !5795, metadata !688), !dbg !5798
	tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !5788, metadata !688), !dbg !5796
	%86 = udiv i64 -1, %73
	%87 = icmp ult i64 %86, %49, !dbg !5799
	%88 = mul i64 %49, %73, !dbg !5801
	%89 = select i1 %87, i64 -1, i64 %88, !dbg !5802
	tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !5788, metadata !688), !dbg !5796
	tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !5788, metadata !688), !dbg !5796
	%90 = icmp ult i64 %86, %89, !dbg !5799
	%91 = mul i64 %89, %73, !dbg !5801
	%92 = select i1 %90, i64 -1, i64 %91, !dbg !5802
	%93 = or i1 %90, %87, !dbg !5803
	tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !5788, metadata !688), !dbg !5796
	tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !5788, metadata !688), !dbg !5796
	%94 = icmp ult i64 %86, %92, !dbg !5799
	%95 = mul i64 %92, %73, !dbg !5801
	%96 = select i1 %94, i64 -1, i64 %95, !dbg !5802
	%97 = or i1 %94, %93, !dbg !5803
	tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !5788, metadata !688), !dbg !5796
	tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !5788, metadata !688), !dbg !5796
	%98 = icmp ult i64 %86, %96, !dbg !5799
	%99 = mul i64 %96, %73, !dbg !5801
	%100 = select i1 %98, i64 -1, i64 %99, !dbg !5802
	%101 = or i1 %98, %97, !dbg !5803
	tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !5788, metadata !688), !dbg !5796
	tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !5788, metadata !688), !dbg !5796
	%102 = icmp ult i64 %86, %100, !dbg !5799
	%103 = mul i64 %100, %73, !dbg !5801
	%104 = select i1 %102, i64 -1, i64 %103, !dbg !5802
	%105 = or i1 %102, %101, !dbg !5803
	tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !5788, metadata !688), !dbg !5796
	tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !5788, metadata !688), !dbg !5796
	%106 = icmp ult i64 %86, %104, !dbg !5799
	%107 = mul i64 %104, %73, !dbg !5801
	%108 = select i1 %106, i64 -1, i64 %107, !dbg !5802
	%109 = or i1 %106, %105, !dbg !5803
	%110 = zext i1 %109 to i32, !dbg !5803
	tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !5788, metadata !688), !dbg !5796
	tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !5788, metadata !688), !dbg !5796
	br label %253, !dbg !5780
	tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !5788, metadata !688), !dbg !5804
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !5795, metadata !688), !dbg !5806
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !5795, metadata !688), !dbg !5806
	tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !5788, metadata !688), !dbg !5804
	%112 = udiv i64 -1, %73
	%113 = icmp ult i64 %112, %49, !dbg !5807
	%114 = mul i64 %49, %73, !dbg !5809
	%115 = select i1 %113, i64 -1, i64 %114, !dbg !5810
	tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !5788, metadata !688), !dbg !5804
	tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !5788, metadata !688), !dbg !5804
	%116 = icmp ult i64 %112, %115, !dbg !5807
	%117 = mul i64 %115, %73, !dbg !5809
	%118 = select i1 %116, i64 -1, i64 %117, !dbg !5810
	%119 = or i1 %116, %113, !dbg !5811
	tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !5788, metadata !688), !dbg !5804
	tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !5788, metadata !688), !dbg !5804
	%120 = icmp ult i64 %112, %118, !dbg !5807
	%121 = mul i64 %118, %73, !dbg !5809
	%122 = select i1 %120, i64 -1, i64 %121, !dbg !5810
	%123 = or i1 %120, %119, !dbg !5811
	%124 = zext i1 %123 to i32, !dbg !5811
	tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !5788, metadata !688), !dbg !5804
	tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !5788, metadata !688), !dbg !5804
	br label %253, !dbg !5780
	tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !5788, metadata !688), !dbg !5812
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !5795, metadata !688), !dbg !5814
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !5795, metadata !688), !dbg !5814
	tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !5788, metadata !688), !dbg !5812
	%126 = udiv i64 -1, %73
	%127 = icmp ult i64 %126, %49, !dbg !5815
	%128 = mul i64 %49, %73, !dbg !5817
	%129 = select i1 %127, i64 -1, i64 %128, !dbg !5818
	%130 = zext i1 %127 to i32, !dbg !5818
	tail call void @llvm.dbg.value(metadata i32 %130, i64 0, metadata !5795, metadata !688), !dbg !5814
	tail call void @llvm.dbg.value(metadata i32 %130, i64 0, metadata !5795, metadata !688), !dbg !5814
	br label %253, !dbg !5780
	tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !5788, metadata !688), !dbg !5819
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !5795, metadata !688), !dbg !5821
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !5795, metadata !688), !dbg !5821
	tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !5788, metadata !688), !dbg !5819
	%132 = udiv i64 -1, %73
	%133 = icmp ult i64 %132, %49, !dbg !5822
	%134 = mul i64 %49, %73, !dbg !5824
	%135 = select i1 %133, i64 -1, i64 %134, !dbg !5825
	tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !5788, metadata !688), !dbg !5819
	tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !5788, metadata !688), !dbg !5819
	%136 = icmp ult i64 %132, %135, !dbg !5822
	%137 = mul i64 %135, %73, !dbg !5824
	%138 = select i1 %136, i64 -1, i64 %137, !dbg !5825
	%139 = or i1 %136, %133, !dbg !5826
	%140 = zext i1 %139 to i32, !dbg !5826
	tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !5788, metadata !688), !dbg !5819
	tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !5788, metadata !688), !dbg !5819
	br label %253, !dbg !5780
	tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !5788, metadata !688), !dbg !5827
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !5795, metadata !688), !dbg !5829
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !5795, metadata !688), !dbg !5829
	tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !5788, metadata !688), !dbg !5827
	%142 = udiv i64 -1, %73
	%143 = icmp ult i64 %142, %49, !dbg !5830
	%144 = mul i64 %49, %73, !dbg !5832
	%145 = select i1 %143, i64 -1, i64 %144, !dbg !5833
	tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !5788, metadata !688), !dbg !5827
	tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !5788, metadata !688), !dbg !5827
	%146 = icmp ult i64 %142, %145, !dbg !5830
	%147 = mul i64 %145, %73, !dbg !5832
	%148 = select i1 %146, i64 -1, i64 %147, !dbg !5833
	%149 = or i1 %146, %143, !dbg !5834
	tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !5788, metadata !688), !dbg !5827
	tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !5788, metadata !688), !dbg !5827
	%150 = icmp ult i64 %142, %148, !dbg !5830
	%151 = mul i64 %148, %73, !dbg !5832
	%152 = select i1 %150, i64 -1, i64 %151, !dbg !5833
	%153 = or i1 %150, %149, !dbg !5834
	tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !5788, metadata !688), !dbg !5827
	tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !5788, metadata !688), !dbg !5827
	%154 = icmp ult i64 %142, %152, !dbg !5830
	%155 = mul i64 %152, %73, !dbg !5832
	%156 = select i1 %154, i64 -1, i64 %155, !dbg !5833
	%157 = or i1 %154, %153, !dbg !5834
	tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !5788, metadata !688), !dbg !5827
	tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !5788, metadata !688), !dbg !5827
	%158 = icmp ult i64 %142, %156, !dbg !5830
	%159 = mul i64 %156, %73, !dbg !5832
	%160 = select i1 %158, i64 -1, i64 %159, !dbg !5833
	%161 = or i1 %158, %157, !dbg !5834
	%162 = zext i1 %161 to i32, !dbg !5834
	tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !5788, metadata !688), !dbg !5827
	tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !5788, metadata !688), !dbg !5827
	br label %253, !dbg !5780
	tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !5788, metadata !688), !dbg !5835
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !5795, metadata !688), !dbg !5837
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !5795, metadata !688), !dbg !5837
	tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !5788, metadata !688), !dbg !5835
	%164 = udiv i64 -1, %73
	%165 = icmp ult i64 %164, %49, !dbg !5838
	%166 = mul i64 %49, %73, !dbg !5840
	%167 = select i1 %165, i64 -1, i64 %166, !dbg !5841
	tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !5788, metadata !688), !dbg !5835
	tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !5788, metadata !688), !dbg !5835
	%168 = icmp ult i64 %164, %167, !dbg !5838
	%169 = mul i64 %167, %73, !dbg !5840
	%170 = select i1 %168, i64 -1, i64 %169, !dbg !5841
	%171 = or i1 %168, %165, !dbg !5842
	tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !5788, metadata !688), !dbg !5835
	tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !5788, metadata !688), !dbg !5835
	%172 = icmp ult i64 %164, %170, !dbg !5838
	%173 = mul i64 %170, %73, !dbg !5840
	%174 = select i1 %172, i64 -1, i64 %173, !dbg !5841
	%175 = or i1 %172, %171, !dbg !5842
	tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !5788, metadata !688), !dbg !5835
	tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !5788, metadata !688), !dbg !5835
	%176 = icmp ult i64 %164, %174, !dbg !5838
	%177 = mul i64 %174, %73, !dbg !5840
	%178 = select i1 %176, i64 -1, i64 %177, !dbg !5841
	%179 = or i1 %176, %175, !dbg !5842
	%180 = zext i1 %179 to i32, !dbg !5842
	tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !5788, metadata !688), !dbg !5835
	tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !5788, metadata !688), !dbg !5835
	br label %253, !dbg !5780
	tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !5767, metadata !688), !dbg !5843
	%182 = icmp slt i64 %49, 0, !dbg !5845
	%183 = shl i64 %49, 1, !dbg !5846
	%184 = select i1 %182, i64 -1, i64 %183, !dbg !5847
	%185 = lshr i64 %49, 63, !dbg !5847
	%186 = trunc i64 %185 to i32, !dbg !5847
	call void @llvm.dbg.value(metadata i32 %186, i64 0, metadata !5670, metadata !688), !dbg !5780
	br label %253, !dbg !5848
	tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !5788, metadata !688), !dbg !5849
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !5795, metadata !688), !dbg !5851
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !5795, metadata !688), !dbg !5851
	tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !5788, metadata !688), !dbg !5849
	%188 = udiv i64 -1, %73
	%189 = icmp ult i64 %188, %49, !dbg !5852
	%190 = mul i64 %49, %73, !dbg !5854
	%191 = select i1 %189, i64 -1, i64 %190, !dbg !5855
	tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !5788, metadata !688), !dbg !5849
	tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !5788, metadata !688), !dbg !5849
	%192 = icmp ult i64 %188, %191, !dbg !5852
	%193 = mul i64 %191, %73, !dbg !5854
	%194 = select i1 %192, i64 -1, i64 %193, !dbg !5855
	%195 = or i1 %192, %189, !dbg !5856
	tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !5788, metadata !688), !dbg !5849
	tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !5788, metadata !688), !dbg !5849
	%196 = icmp ult i64 %188, %194, !dbg !5852
	%197 = mul i64 %194, %73, !dbg !5854
	%198 = select i1 %196, i64 -1, i64 %197, !dbg !5855
	%199 = or i1 %196, %195, !dbg !5856
	tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !5788, metadata !688), !dbg !5849
	tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !5788, metadata !688), !dbg !5849
	%200 = icmp ult i64 %188, %198, !dbg !5852
	%201 = mul i64 %198, %73, !dbg !5854
	%202 = select i1 %200, i64 -1, i64 %201, !dbg !5855
	%203 = or i1 %200, %199, !dbg !5856
	tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !5788, metadata !688), !dbg !5849
	tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !5788, metadata !688), !dbg !5849
	%204 = icmp ult i64 %188, %202, !dbg !5852
	%205 = mul i64 %202, %73, !dbg !5854
	%206 = select i1 %204, i64 -1, i64 %205, !dbg !5855
	%207 = or i1 %204, %203, !dbg !5856
	tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !5788, metadata !688), !dbg !5849
	tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !5788, metadata !688), !dbg !5849
	%208 = icmp ult i64 %188, %206, !dbg !5852
	%209 = mul i64 %206, %73, !dbg !5854
	%210 = select i1 %208, i64 -1, i64 %209, !dbg !5855
	%211 = or i1 %208, %207, !dbg !5856
	tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !5788, metadata !688), !dbg !5849
	tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !5788, metadata !688), !dbg !5849
	%212 = icmp ult i64 %188, %210, !dbg !5852
	%213 = mul i64 %210, %73, !dbg !5854
	%214 = select i1 %212, i64 -1, i64 %213, !dbg !5855
	%215 = or i1 %212, %211, !dbg !5856
	tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !5788, metadata !688), !dbg !5849
	tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !5788, metadata !688), !dbg !5849
	%216 = icmp ult i64 %188, %214, !dbg !5852
	%217 = mul i64 %214, %73, !dbg !5854
	%218 = select i1 %216, i64 -1, i64 %217, !dbg !5855
	%219 = or i1 %216, %215, !dbg !5856
	%220 = zext i1 %219 to i32, !dbg !5856
	tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !5788, metadata !688), !dbg !5849
	tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !5788, metadata !688), !dbg !5849
	br label %253, !dbg !5780
	tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !5788, metadata !688), !dbg !5857
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !5795, metadata !688), !dbg !5859
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !5795, metadata !688), !dbg !5859
	tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !5788, metadata !688), !dbg !5857
	%222 = udiv i64 -1, %73
	%223 = icmp ult i64 %222, %49, !dbg !5860
	%224 = mul i64 %49, %73, !dbg !5862
	%225 = select i1 %223, i64 -1, i64 %224, !dbg !5863
	tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !5788, metadata !688), !dbg !5857
	tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !5788, metadata !688), !dbg !5857
	%226 = icmp ult i64 %222, %225, !dbg !5860
	%227 = mul i64 %225, %73, !dbg !5862
	%228 = select i1 %226, i64 -1, i64 %227, !dbg !5863
	%229 = or i1 %226, %223, !dbg !5864
	tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !5788, metadata !688), !dbg !5857
	tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !5788, metadata !688), !dbg !5857
	%230 = icmp ult i64 %222, %228, !dbg !5860
	%231 = mul i64 %228, %73, !dbg !5862
	%232 = select i1 %230, i64 -1, i64 %231, !dbg !5863
	%233 = or i1 %230, %229, !dbg !5864
	tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !5788, metadata !688), !dbg !5857
	tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !5788, metadata !688), !dbg !5857
	%234 = icmp ult i64 %222, %232, !dbg !5860
	%235 = mul i64 %232, %73, !dbg !5862
	%236 = select i1 %234, i64 -1, i64 %235, !dbg !5863
	%237 = or i1 %234, %233, !dbg !5864
	tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !5788, metadata !688), !dbg !5857
	tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !5788, metadata !688), !dbg !5857
	%238 = icmp ult i64 %222, %236, !dbg !5860
	%239 = mul i64 %236, %73, !dbg !5862
	%240 = select i1 %238, i64 -1, i64 %239, !dbg !5863
	%241 = or i1 %238, %237, !dbg !5864
	tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !5788, metadata !688), !dbg !5857
	tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !5788, metadata !688), !dbg !5857
	%242 = icmp ult i64 %222, %240, !dbg !5860
	%243 = mul i64 %240, %73, !dbg !5862
	%244 = select i1 %242, i64 -1, i64 %243, !dbg !5863
	%245 = or i1 %242, %241, !dbg !5864
	tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !5788, metadata !688), !dbg !5857
	tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !5788, metadata !688), !dbg !5857
	%246 = icmp ult i64 %222, %244, !dbg !5860
	%247 = mul i64 %244, %73, !dbg !5862
	%248 = select i1 %246, i64 -1, i64 %247, !dbg !5863
	%249 = or i1 %246, %245, !dbg !5864
	%250 = zext i1 %249 to i32, !dbg !5864
	tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !5788, metadata !688), !dbg !5857
	tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !5788, metadata !688), !dbg !5857
	br label %253, !dbg !5780
	call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !5660, metadata !688), !dbg !5710
	store i64 %49, i64* %3, align 8, !dbg !5865, !tbaa !2226
	%252 = or i32 %48, 2, !dbg !5866
	br label %265, !dbg !5867
	%254 = phi i64 [ %184, %181 ], [ %49, %72 ], [ %83, %80 ], [ %78, %75 ], [ %108, %85 ], [ %122, %111 ], [ %129, %125 ], [ %138, %131 ], [ %160, %141 ], [ %178, %163 ], [ %218, %187 ], [ %248, %221 ]
	%255 = phi i32 [ %186, %181 ], [ 0, %72 ], [ %84, %80 ], [ %79, %75 ], [ %110, %85 ], [ %124, %111 ], [ %130, %125 ], [ %140, %131 ], [ %162, %141 ], [ %180, %163 ], [ %220, %187 ], [ %250, %221 ]
	call void @llvm.dbg.value(metadata i32 %255, i64 0, metadata !5670, metadata !688), !dbg !5780
	%256 = or i32 %255, %48, !dbg !5868
	call void @llvm.dbg.value(metadata i32 %256, i64 0, metadata !5661, metadata !688), !dbg !5677
	%257 = getelementptr inbounds i8, i8* %29, i64 %74, !dbg !5869
	store i8* %257, i8** %25, align 8, !dbg !5869, !tbaa !696
	%258 = load i8, i8* %257, align 1, !dbg !5870, !tbaa !1179
	%259 = icmp eq i8 %258, 0, !dbg !5870
	%260 = or i32 %256, 2, !dbg !5872
	call void @llvm.dbg.value(metadata i32 %260, i64 0, metadata !5661, metadata !688), !dbg !5677
	%261 = select i1 %259, i32 %256, i32 %260, !dbg !5873
	call void @llvm.dbg.value(metadata i32 %261, i64 0, metadata !5661, metadata !688), !dbg !5677
	call void @llvm.dbg.value(metadata i32 %261, i64 0, metadata !5661, metadata !688), !dbg !5677
	br label %262
	%263 = phi i64 [ %49, %47 ], [ %254, %253 ]
	%264 = phi i32 [ %48, %47 ], [ %261, %253 ]
	call void @llvm.dbg.value(metadata i32 %264, i64 0, metadata !5661, metadata !688), !dbg !5677
	call void @llvm.dbg.value(metadata i64 %263, i64 0, metadata !5660, metadata !688), !dbg !5710
	store i64 %263, i64* %3, align 8, !dbg !5874, !tbaa !2226
	br label %265, !dbg !5875
	%266 = phi i32 [ %264, %262 ], [ %44, %46 ], [ 4, %24 ], [ 4, %36 ], [ 4, %33 ], [ 4, %31 ], [ 4, %40 ], [ %57, %56 ], [ %252, %251 ]
	call void @llvm.lifetime.end(i64 8, i8* nonnull %7) #10, !dbg !5876
	ret i32 %266, !dbg !5876
}
declare i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2
declare i8* @strchr(i8*, i32) local_unnamed_addr #4
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !5877 {
	tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !5880, metadata !688), !dbg !5886
	tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !5881, metadata !688), !dbg !5887
	%3 = icmp eq i64 %0, 0, !dbg !5888
	%4 = icmp eq i64 %1, 0, !dbg !5889
	%5 = or i1 %3, %4, !dbg !5891
	br i1 %5, label %12, label %6, !dbg !5891
	%7 = mul i64 %1, %0, !dbg !5892
	tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !5883, metadata !688), !dbg !5893
	%8 = udiv i64 %7, %1, !dbg !5894
	%9 = icmp eq i64 %8, %0, !dbg !5896
	br i1 %9, label %12, label %10, !dbg !5897
	%11 = tail call i32* @__errno_location() #1, !dbg !5898
	store i32 12, i32* %11, align 4, !dbg !5900, !tbaa !903
	br label %16
	%13 = phi i64 [ 1, %2 ], [ %1, %6 ]
	%14 = phi i64 [ 1, %2 ], [ %0, %6 ]
	tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !5880, metadata !688), !dbg !5886
	tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !5881, metadata !688), !dbg !5887
	%15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #10, !dbg !5901
	tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !5882, metadata !688), !dbg !5902
	br label %16, !dbg !5903
	%17 = phi i8* [ %15, %12 ], [ null, %10 ]
	ret i8* %17, !dbg !5904
}
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !5905 {
	%5 = alloca i32, align 4
	tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !5922, metadata !688), !dbg !5931
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !5923, metadata !688), !dbg !5932
	tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !5924, metadata !688), !dbg !5933
	tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !5925, metadata !688), !dbg !5934
	%6 = bitcast i32* %5 to i8*, !dbg !5935
	call void @llvm.lifetime.start(i64 4, i8* nonnull %6) #10, !dbg !5935
	%7 = icmp eq i32* %0, null, !dbg !5936
	tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !5922, metadata !688), !dbg !5931
	%8 = select i1 %7, i32* %5, i32* %0, !dbg !5938
	tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !5922, metadata !688), !dbg !5931
	%9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #10, !dbg !5939
	call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !5926, metadata !688), !dbg !5940
	%10 = icmp ugt i64 %9, -3, !dbg !5941
	%11 = icmp ne i64 %2, 0, !dbg !5942
	%12 = and i1 %11, %10, !dbg !5944
	br i1 %12, label %13, label %18, !dbg !5944
	%14 = call zeroext i1 @hard_locale(i32 0) #10, !dbg !5945
	br i1 %14, label %18, label %15, !dbg !5947
	%16 = load i8, i8* %1, align 1, !dbg !5949, !tbaa !1179
	call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !5928, metadata !688), !dbg !5950
	%17 = zext i8 %16 to i32, !dbg !5951
	store i32 %17, i32* %8, align 4, !dbg !5952, !tbaa !903
	br label %18
	%19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
	call void @llvm.lifetime.end(i64 4, i8* nonnull %6) #10, !dbg !5953
	ret i64 %19, !dbg !5953
}
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !5954 {
	tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5999, metadata !688), !dbg !6004
	%2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #10, !dbg !6005
	tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !6006, metadata !688), !dbg !6010
	%3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !6012
	%4 = load i32, i32* %3, align 8, !dbg !6012, !tbaa !6013
	%5 = and i32 %4, 32, !dbg !6012
	%6 = icmp eq i32 %5, 0, !dbg !6015
	%7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #10, !dbg !6016
	%8 = icmp ne i32 %7, 0, !dbg !6017
	br i1 %6, label %9, label %19, !dbg !6018
	%10 = xor i1 %8, true, !dbg !6020
	%11 = icmp ne i64 %2, 0, !dbg !6020
	%12 = or i1 %11, %10, !dbg !6020
	%13 = sext i1 %8 to i32, !dbg !6020
	br i1 %12, label %22, label %14, !dbg !6020
	%15 = tail call i32* @__errno_location() #1, !dbg !6022
	%16 = load i32, i32* %15, align 4, !dbg !6022, !tbaa !903
	%17 = icmp ne i32 %16, 9, !dbg !6024
	%18 = sext i1 %17 to i32, !dbg !6024
	br label %22, !dbg !6024
	br i1 %8, label %22, label %20, !dbg !6026
	%21 = tail call i32* @__errno_location() #1, !dbg !6028
	store i32 0, i32* %21, align 4, !dbg !6030, !tbaa !903
	br label %22, !dbg !6028
	%23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
	ret i32 %23, !dbg !6031
}
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !6032 {
	tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !6037, metadata !688), !dbg !6057
	tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !6038, metadata !688), !dbg !6058
	%2 = tail call i8* @setlocale(i32 %0, i8* null) #10, !dbg !6059
	tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !6039, metadata !688), !dbg !6060
	%3 = icmp eq i8* %2, null, !dbg !6061
	br i1 %3, label %15, label %4, !dbg !6062
	tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !6047, metadata !688), !dbg !6063
	tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !6048, metadata !688), !dbg !6064
	%5 = load i8, i8* %2, align 1, !dbg !6065, !tbaa !1179
	%6 = icmp eq i8 %5, 67, !dbg !6067
	br i1 %6, label %7, label %11, !dbg !6070
	%8 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !6072
	%9 = load i8, i8* %8, align 1, !dbg !6072, !tbaa !1179
	%10 = icmp eq i8 %9, 0, !dbg !6075
	br i1 %10, label %14, label %11, !dbg !6077
	tail call void @llvm.dbg.value(metadata i64 5, i64 0, metadata !6053, metadata !688), !dbg !6079
	%12 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.169, i64 0, i64 0)) #10, !dbg !6080
	%13 = icmp eq i32 %12, 0, !dbg !6082
	br i1 %13, label %14, label %15, !dbg !6084
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !6038, metadata !688), !dbg !6058
	br label %15, !dbg !6086
	%16 = phi i1 [ false, %14 ], [ true, %11 ], [ true, %1 ]
	ret i1 %16, !dbg !6087
}
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4
define i8* @locale_charset() local_unnamed_addr #6 !dbg !6088 {
	%1 = alloca [51 x i8], align 16
	tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !6100, metadata !688), !dbg !6174
	%2 = alloca [51 x i8], align 16
	tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !6167, metadata !688), !dbg !6176
	%3 = tail call i8* @nl_langinfo(i32 14) #10, !dbg !6177
	tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !6092, metadata !688), !dbg !6178
	%4 = icmp eq i8* %3, null, !dbg !6179
	%5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.172, i64 0, i64 0), i8* %3, !dbg !6181
	tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !6092, metadata !688), !dbg !6178
	%6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !6182, !tbaa !696
	tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !6114, metadata !688) #10, !dbg !6183
	%7 = icmp eq i8* %6, null, !dbg !6184
	br i1 %7, label %8, label %127, !dbg !6185
	%9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.173, i64 0, i64 0)) #10, !dbg !6186
	tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !6115, metadata !688) #10, !dbg !6187
	%10 = icmp eq i8* %9, null, !dbg !6188
	br i1 %10, label %14, label %11, !dbg !6190
	%12 = load i8, i8* %9, align 1, !dbg !6191, !tbaa !1179
	%13 = icmp eq i8 %12, 0, !dbg !6193
	br i1 %13, label %14, label %15, !dbg !6194
	br label %15, !dbg !6196
	%16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.174, i64 0, i64 0), %14 ], [ %9, %11 ]
	tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !6115, metadata !688) #10, !dbg !6187
	%17 = tail call i64 @strlen(i8* nonnull %16) #13, !dbg !6197
	tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !6118, metadata !688) #10, !dbg !6198
	tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !6120, metadata !688) #10, !dbg !6199
	%18 = icmp eq i64 %17, 0, !dbg !6200
	br i1 %18, label %24, label %19, !dbg !6201
	%20 = add i64 %17, -1, !dbg !6202
	%21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !6202
	%22 = load i8, i8* %21, align 1, !dbg !6202, !tbaa !1179
	%23 = icmp ne i8 %22, 47, !dbg !6204
	br label %24
	%25 = phi i1 [ false, %15 ], [ %23, %19 ]
	%26 = zext i1 %25 to i64, !dbg !6205
	%27 = add i64 %17, 14, !dbg !6206
	%28 = add i64 %27, %26, !dbg !6207
	%29 = tail call noalias i8* @malloc(i64 %28) #10, !dbg !6208
	tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !6117, metadata !688) #10, !dbg !6209
	%30 = icmp eq i8* %29, null, !dbg !6210
	br i1 %30, label %125, label %31, !dbg !6210
	tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #10, !dbg !6211
	%32 = getelementptr inbounds i8, i8* %29, i64 %17
	br i1 %25, label %33, label %35, !dbg !6214
	store i8 47, i8* %32, align 1, !dbg !6215, !tbaa !1179
	%34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !6217
	tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.175, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !6218
	br label %37, !dbg !6219
	%36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !6217
	tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.175, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !6218
	br label %37, !dbg !6219
	%38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #10, !dbg !6220
	tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !6122, metadata !688) #10, !dbg !6221
	%39 = icmp slt i32 %38, 0, !dbg !6222
	br i1 %39, label %123, label %40, !dbg !6223
	%41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.176, i64 0, i64 0)) #10, !dbg !6224
	tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !6123, metadata !688) #10, !dbg !6225
	%42 = icmp eq %struct._IO_FILE* %41, null, !dbg !6226
	br i1 %42, label %48, label %43, !dbg !6227
	%44 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
	%45 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
	%46 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
	%47 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
	br label %50, !dbg !6228
	%49 = tail call i32 @close(i32 %38) #10, !dbg !6229
	br label %123, !dbg !6231
	%51 = phi i64 [ %112, %111 ], [ 0, %43 ]
	%52 = phi i8* [ %113, %111 ], [ null, %43 ]
	call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !6164, metadata !688) #10, !dbg !6228
	call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !6165, metadata !688) #10, !dbg !6232
	call void @llvm.lifetime.start(i64 51, i8* nonnull %44) #10, !dbg !6233
	call void @llvm.lifetime.start(i64 51, i8* nonnull %45) #10, !dbg !6234
	call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !6235, metadata !688) #10, !dbg !6240
	%53 = load i8*, i8** %46, align 8, !dbg !6242, !tbaa !6243
	%54 = load i8*, i8** %47, align 8, !dbg !6242, !tbaa !6244
	%55 = icmp ult i8* %53, %54, !dbg !6242
	br i1 %55, label %58, label %56, !dbg !6242, !prof !6245
	%57 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !6246
	br label %62, !dbg !6246
	%59 = getelementptr inbounds i8, i8* %53, i64 1, !dbg !6248
	store i8* %59, i8** %46, align 8, !dbg !6248, !tbaa !6243
	%60 = load i8, i8* %53, align 1, !dbg !6248, !tbaa !1179
	%61 = zext i8 %60 to i32, !dbg !6248
	br label %62, !dbg !6248
	%63 = phi i32 [ %57, %56 ], [ %61, %58 ], !dbg !6250
	call void @llvm.dbg.value(metadata i32 %63, i64 0, metadata !6166, metadata !688) #10, !dbg !6252
	switch i32 %63, label %77 [
		i32 -1, label %115
		i32 32, label %111
		i32 10, label %111
		i32 9, label %111
		i32 35, label %64
	], !dbg !6253
	br label %65, !dbg !6254
	call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !6235, metadata !688) #10, !dbg !6254
	%66 = load i8*, i8** %46, align 8, !dbg !6258, !tbaa !6243
	%67 = load i8*, i8** %47, align 8, !dbg !6258, !tbaa !6244
	%68 = icmp ult i8* %66, %67, !dbg !6258
	br i1 %68, label %71, label %69, !dbg !6258, !prof !6245
	%70 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !6259
	br label %75, !dbg !6259
	%72 = getelementptr inbounds i8, i8* %66, i64 1, !dbg !6260
	store i8* %72, i8** %46, align 8, !dbg !6260, !tbaa !6243
	%73 = load i8, i8* %66, align 1, !dbg !6260, !tbaa !1179
	%74 = zext i8 %73 to i32, !dbg !6260
	br label %75, !dbg !6260
	%76 = phi i32 [ %70, %69 ], [ %74, %71 ], !dbg !6261
	call void @llvm.dbg.value(metadata i32 %76, i64 0, metadata !6166, metadata !688) #10, !dbg !6252
	switch i32 %76, label %65 [
		i32 -1, label %114
		i32 10, label %110
	], !dbg !6262, !llvm.loop !6264
	%78 = call i32 @ungetc(i32 %63, %struct._IO_FILE* nonnull %41) #10, !dbg !6267
	%79 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.177, i64 0, i64 0), i8* nonnull %44, i8* nonnull %45) #10, !dbg !6268
	%80 = icmp slt i32 %79, 2, !dbg !6270
	br i1 %80, label %115, label %81, !dbg !6271
	%82 = call i64 @strlen(i8* nonnull %44) #13, !dbg !6272
	call void @llvm.dbg.value(metadata i64 %82, i64 0, metadata !6171, metadata !688) #10, !dbg !6273
	%83 = call i64 @strlen(i8* nonnull %45) #13, !dbg !6274
	call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !6172, metadata !688) #10, !dbg !6275
	call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !6173, metadata !688) #10, !dbg !6276
	%84 = icmp eq i64 %51, 0, !dbg !6277
	%85 = add i64 %82, 1
	%86 = add i64 %85, %83
	%87 = add i64 %86, 1
	br i1 %84, label %88, label %91, !dbg !6279
	call void @llvm.dbg.value(metadata i64 %87, i64 0, metadata !6165, metadata !688) #10, !dbg !6232
	%89 = add i64 %86, 2, !dbg !6280
	%90 = call noalias i8* @malloc(i64 %89) #10, !dbg !6282
	call void @llvm.dbg.value(metadata i8* %90, i64 0, metadata !6164, metadata !688) #10, !dbg !6228
	br label %95, !dbg !6283
	%92 = add i64 %87, %51, !dbg !6284
	call void @llvm.dbg.value(metadata i64 %92, i64 0, metadata !6165, metadata !688) #10, !dbg !6232
	%93 = add i64 %92, 1, !dbg !6286
	%94 = call i8* @realloc(i8* %52, i64 %93) #10, !dbg !6287
	call void @llvm.dbg.value(metadata i8* %94, i64 0, metadata !6164, metadata !688) #10, !dbg !6228
	br label %95
	%96 = phi i64 [ %87, %88 ], [ %92, %91 ]
	%97 = phi i8* [ %90, %88 ], [ %94, %91 ]
	call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !6164, metadata !688) #10, !dbg !6228
	call void @llvm.dbg.value(metadata i64 %96, i64 0, metadata !6165, metadata !688) #10, !dbg !6232
	%98 = icmp eq i8* %97, null, !dbg !6288
	br i1 %98, label %99, label %100, !dbg !6290
	call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !6165, metadata !688) #10, !dbg !6232
	call void @free(i8* %52) #10, !dbg !6291
	br label %116, !dbg !6293
	%101 = getelementptr inbounds i8, i8* %97, i64 %96, !dbg !6294
	%102 = xor i64 %83, -1, !dbg !6295
	%103 = getelementptr inbounds i8, i8* %101, i64 %102, !dbg !6295
	%104 = xor i64 %82, -1, !dbg !6296
	%105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !6296
	call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !6297, metadata !688) #10, !dbg !6301
	call void @llvm.dbg.value(metadata i8* %44, i64 0, metadata !6300, metadata !688) #10, !dbg !6301
	%106 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false) #10, !dbg !6303
	%107 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %44, i64 %106) #10, !dbg !6304
	call void @llvm.dbg.value(metadata i8* %103, i64 0, metadata !6297, metadata !688) #10, !dbg !6305
	call void @llvm.dbg.value(metadata i8* %45, i64 0, metadata !6300, metadata !688) #10, !dbg !6305
	%108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %103, i1 false) #10, !dbg !6307
	%109 = call i8* @__strcpy_chk(i8* nonnull %103, i8* nonnull %45, i64 %108) #10, !dbg !6308
	br label %111, !dbg !6309
	br label %111, !dbg !6228
	%112 = phi i64 [ %96, %100 ], [ %51, %62 ], [ %51, %62 ], [ %51, %62 ], [ %51, %110 ]
	%113 = phi i8* [ %97, %100 ], [ %52, %62 ], [ %52, %62 ], [ %52, %62 ], [ %52, %110 ]
	call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !6164, metadata !688) #10, !dbg !6228
	call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !6165, metadata !688) #10, !dbg !6232
	call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #10, !dbg !6309
	call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #10, !dbg !6309
	br label %50
	br label %116, !dbg !6228
	br label %116, !dbg !6228
	%117 = phi i64 [ 0, %99 ], [ %51, %114 ], [ %51, %115 ]
	%118 = phi i8* [ null, %99 ], [ %52, %114 ], [ %52, %115 ]
	call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !6164, metadata !688) #10, !dbg !6228
	call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !6165, metadata !688) #10, !dbg !6232
	call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #10, !dbg !6309
	call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #10, !dbg !6309
	%119 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #10, !dbg !6310
	%120 = icmp eq i64 %117, 0, !dbg !6311
	br i1 %120, label %123, label %121, !dbg !6313
	%122 = getelementptr inbounds i8, i8* %118, i64 %117, !dbg !6314
	store i8 0, i8* %122, align 1, !dbg !6316, !tbaa !1179
	call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !6114, metadata !688) #10, !dbg !6183
	br label %123
	%124 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.172, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.172, i64 0, i64 0), %48 ], [ %118, %121 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.172, i64 0, i64 0), %116 ]
	call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !6114, metadata !688) #10, !dbg !6183
	call void @free(i8* %29) #10, !dbg !6317
	br label %125
	%126 = phi i8* [ %124, %123 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.172, i64 0, i64 0), %24 ]
	call void @llvm.dbg.value(metadata i8* %126, i64 0, metadata !6114, metadata !688) #10, !dbg !6183
	store volatile i8* %126, i8** @charset_aliases, align 8, !dbg !6318, !tbaa !696
	br label %127, !dbg !6319
	%128 = phi i8* [ %6, %0 ], [ %126, %125 ]
	call void @llvm.dbg.value(metadata i8* %128, i64 0, metadata !6093, metadata !688), !dbg !6320
	%129 = load i8, i8* %128, align 1, !dbg !6321, !tbaa !1179
	%130 = icmp eq i8 %129, 0, !dbg !6322
	br i1 %130, label %157, label %131, !dbg !6323
	br label %132, !dbg !6325
	%133 = phi i8 [ %154, %147 ], [ %129, %131 ]
	%134 = phi i8* [ %153, %147 ], [ %128, %131 ]
	%135 = call i32 @strcmp(i8* %5, i8* %134) #10, !dbg !6325
	%136 = icmp eq i32 %135, 0, !dbg !6326
	br i1 %136, label %143, label %137, !dbg !6327
	%138 = icmp eq i8 %133, 42, !dbg !6328
	br i1 %138, label %139, label %147, !dbg !6330
	%140 = getelementptr inbounds i8, i8* %134, i64 1, !dbg !6331
	%141 = load i8, i8* %140, align 1, !dbg !6331, !tbaa !1179
	%142 = icmp eq i8 %141, 0, !dbg !6333
	br i1 %142, label %143, label %147, !dbg !6334
	%144 = call i64 @strlen(i8* %134) #13, !dbg !6336
	%145 = getelementptr inbounds i8, i8* %134, i64 %144, !dbg !6338
	%146 = getelementptr inbounds i8, i8* %145, i64 1, !dbg !6339
	call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !6092, metadata !688), !dbg !6178
	br label %157, !dbg !6340
	%148 = call i64 @strlen(i8* %134) #13, !dbg !6341
	%149 = add i64 %148, 1, !dbg !6342
	%150 = getelementptr inbounds i8, i8* %134, i64 %149, !dbg !6343
	call void @llvm.dbg.value(metadata i8* %150, i64 0, metadata !6093, metadata !688), !dbg !6320
	%151 = call i64 @strlen(i8* %150) #13, !dbg !6344
	%152 = add i64 %151, 1, !dbg !6345
	%153 = getelementptr inbounds i8, i8* %150, i64 %152, !dbg !6346
	call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !6093, metadata !688), !dbg !6320
	call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !6093, metadata !688), !dbg !6320
	%154 = load i8, i8* %153, align 1, !dbg !6321, !tbaa !1179
	%155 = icmp eq i8 %154, 0, !dbg !6322
	br i1 %155, label %156, label %132, !dbg !6323, !llvm.loop !6347
	br label %157, !dbg !6178
	%158 = phi i8* [ %146, %143 ], [ %5, %127 ], [ %5, %156 ]
	call void @llvm.dbg.value(metadata i8* %158, i64 0, metadata !6092, metadata !688), !dbg !6178
	%159 = load i8, i8* %158, align 1, !dbg !6350, !tbaa !1179
	%160 = icmp eq i8 %159, 0, !dbg !6352
	%161 = select i1 %160, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.178, i64 0, i64 0), i8* %158, !dbg !6353
	call void @llvm.dbg.value(metadata i8* %161, i64 0, metadata !6092, metadata !688), !dbg !6178
	ret i8* %161, !dbg !6354
}
declare i8* @nl_langinfo(i32) local_unnamed_addr #2
declare i8* @getenv(i8* nocapture) local_unnamed_addr #4
declare i32 @open(i8* nocapture readonly, i32, ...) local_unnamed_addr #3
declare noalias %struct._IO_FILE* @fdopen(i32, i8* nocapture readonly) local_unnamed_addr #2
declare i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #3
declare i32 @ungetc(i32, %struct._IO_FILE* nocapture) local_unnamed_addr #2
declare i32 @fscanf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) local_unnamed_addr #2
declare i8* @__strcpy_chk(i8*, i8*, i64) local_unnamed_addr #2
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !6355 {
	tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !6400, metadata !688), !dbg !6404
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !6401, metadata !688), !dbg !6405
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !6403, metadata !688), !dbg !6406
	%2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !6407
	tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !6402, metadata !688), !dbg !6408
	%3 = icmp slt i32 %2, 0, !dbg !6409
	br i1 %3, label %4, label %6, !dbg !6411
	%5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !6412
	br label %24, !dbg !6413
	%7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !6414
	%8 = icmp eq i32 %7, 0, !dbg !6414
	br i1 %8, label %13, label %9, !dbg !6416
	%10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !6417
	%11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #10, !dbg !6419
	%12 = icmp eq i64 %11, -1, !dbg !6421
	br i1 %12, label %16, label %13, !dbg !6422
	%14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #10, !dbg !6423
	%15 = icmp eq i32 %14, 0, !dbg !6423
	br i1 %15, label %16, label %18, !dbg !6424
	tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !6401, metadata !688), !dbg !6405
	%17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !6426
	tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !6403, metadata !688), !dbg !6406
	br label %24, !dbg !6427
	%19 = tail call i32* @__errno_location() #1, !dbg !6428
	%20 = load i32, i32* %19, align 4, !dbg !6428, !tbaa !903
	tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !6401, metadata !688), !dbg !6405
	tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !6401, metadata !688), !dbg !6405
	%21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !6426
	tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !6403, metadata !688), !dbg !6406
	%22 = icmp eq i32 %20, 0, !dbg !6429
	br i1 %22, label %24, label %23, !dbg !6427
	store i32 %20, i32* %19, align 4, !dbg !6431, !tbaa !903
	tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !6403, metadata !688), !dbg !6406
	br label %24, !dbg !6433
	%25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
	ret i32 %25, !dbg !6434
}
declare i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #2
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2
declare i64 @lseek(i32, i64, i32) local_unnamed_addr #2
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !6435 {
	tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !6480, metadata !688), !dbg !6481
	%2 = icmp eq %struct._IO_FILE* %0, null, !dbg !6482
	br i1 %2, label %6, label %3, !dbg !6484
	%4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !6485
	%5 = icmp eq i32 %4, 0, !dbg !6485
	br i1 %5, label %6, label %8, !dbg !6487
	%7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !6489
	br label %17, !dbg !6490
	tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !6491, metadata !688) #10, !dbg !6496
	%9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !6498
	%10 = load i32, i32* %9, align 8, !dbg !6498, !tbaa !6013
	%11 = and i32 %10, 256, !dbg !6500
	%12 = icmp eq i32 %11, 0, !dbg !6500
	br i1 %12, label %15, label %13, !dbg !6501
	%14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #10, !dbg !6502
	br label %15, !dbg !6502
	%16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !6503
	br label %17, !dbg !6504
	%18 = phi i32 [ %7, %6 ], [ %16, %15 ]
	ret i32 %18, !dbg !6505
}
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !6506 {
	tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !6551, metadata !688), !dbg !6557
	tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !6552, metadata !688), !dbg !6558
	tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !6553, metadata !688), !dbg !6559
	%4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !6560
	%5 = load i8*, i8** %4, align 8, !dbg !6560, !tbaa !6244
	%6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !6561
	%7 = load i8*, i8** %6, align 8, !dbg !6561, !tbaa !6243
	%8 = icmp eq i8* %5, %7, !dbg !6562
	br i1 %8, label %9, label %28, !dbg !6563
	%10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !6564
	%11 = load i8*, i8** %10, align 8, !dbg !6564, !tbaa !6566
	%12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !6567
	%13 = load i8*, i8** %12, align 8, !dbg !6567, !tbaa !6568
	%14 = icmp eq i8* %11, %13, !dbg !6569
	br i1 %14, label %15, label %28, !dbg !6570
	%16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !6571
	%17 = load i8*, i8** %16, align 8, !dbg !6571, !tbaa !6572
	%18 = icmp eq i8* %17, null, !dbg !6573
	br i1 %18, label %19, label %28, !dbg !6574
	%20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !6576
	%21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #10, !dbg !6577
	tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !6554, metadata !688), !dbg !6579
	%22 = icmp eq i64 %21, -1, !dbg !6580
	br i1 %22, label %30, label %23, !dbg !6582
	%24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !6583
	%25 = load i32, i32* %24, align 8, !dbg !6584, !tbaa !6013
	%26 = and i32 %25, -17, !dbg !6584
	store i32 %26, i32* %24, align 8, !dbg !6584, !tbaa !6013
	%27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !6585
	store i64 %21, i64* %27, align 8, !dbg !6586, !tbaa !6587
	br label %30, !dbg !6588
	%29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !6589
	br label %30, !dbg !6590
	%31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
	ret i32 %31, !dbg !6591
}
declare i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #2
attributes #0 = { noreturn nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { argmemonly nounwind }
attributes #8 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind }
attributes #11 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { nounwind readonly }
attributes #14 = { noreturn nounwind }
attributes #15 = { noreturn }
attributes #16 = { cold }
!llvm.dbg.cu = !{!2, !159, !165, !173, !605, !180, !187, !608, !631, !250, !639, !656, !658, !662, !664, !667, !669, !259, !672, !674, !676}
!llvm.ident = !{!678, !678, !678, !678, !678, !678, !678, !678, !678, !678, !678, !678, !678, !678, !678, !678, !678, !678, !678, !678, !678}
!llvm.module.flags = !{!679, !680, !681, !682}
!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "long_options", scope: !2, file: !3, line: 269, type: !147, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, emissionKind: FullDebug, enums: !4, retainedTypes: !67, globals: !84)
!3 = !DIFile(filename: "src/tr.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4 = !{!5, !12, !27, !36, !39, !44, !59}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "Range_element_type", file: !3, line: 92, size: 32, elements: !6)
!6 = !{!7, !8, !9, !10, !11}
!7 = !DIEnumerator(name: "RE_NORMAL_CHAR", value: 0)
!8 = !DIEnumerator(name: "RE_RANGE", value: 1)
!9 = !DIEnumerator(name: "RE_CHAR_CLASS", value: 2)
!10 = !DIEnumerator(name: "RE_EQUIV_CLASS", value: 3)
!11 = !DIEnumerator(name: "RE_REPEATED_CHAR", value: 4)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "Char_class", file: !3, line: 70, size: 32, elements: !13)
!13 = !{!14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26}
!14 = !DIEnumerator(name: "CC_ALNUM", value: 0)
!15 = !DIEnumerator(name: "CC_ALPHA", value: 1)
!16 = !DIEnumerator(name: "CC_BLANK", value: 2)
!17 = !DIEnumerator(name: "CC_CNTRL", value: 3)
!18 = !DIEnumerator(name: "CC_DIGIT", value: 4)
!19 = !DIEnumerator(name: "CC_GRAPH", value: 5)
!20 = !DIEnumerator(name: "CC_LOWER", value: 6)
!21 = !DIEnumerator(name: "CC_PRINT", value: 7)
!22 = !DIEnumerator(name: "CC_PUNCT", value: 8)
!23 = !DIEnumerator(name: "CC_SPACE", value: 9)
!24 = !DIEnumerator(name: "CC_UPPER", value: 10)
!25 = !DIEnumerator(name: "CC_XDIGIT", value: 11)
!26 = !DIEnumerator(name: "CC_NO_CLASS", value: 9999)
!27 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !28, line: 45, size: 32, elements: !29)
!28 = !DIFile(filename: "./lib/fadvise.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!29 = !{!30, !31, !32, !33, !34, !35}
!30 = !DIEnumerator(name: "FADVISE_NORMAL", value: 0)
!31 = !DIEnumerator(name: "FADVISE_SEQUENTIAL", value: 2)
!32 = !DIEnumerator(name: "FADVISE_NOREUSE", value: 5)
!33 = !DIEnumerator(name: "FADVISE_DONTNEED", value: 4)
!34 = !DIEnumerator(name: "FADVISE_WILLNEED", value: 3)
!35 = !DIEnumerator(name: "FADVISE_RANDOM", value: 1)
!36 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !3, line: 40, size: 32, elements: !37)
!37 = !{!38}
!38 = !DIEnumerator(name: "N_CHARS", value: 256)
!39 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "Upper_Lower_class", file: !3, line: 84, size: 32, elements: !40)
!40 = !{!41, !42, !43}
!41 = !DIEnumerator(name: "UL_LOWER", value: 0)
!42 = !DIEnumerator(name: "UL_UPPER", value: 1)
!43 = !DIEnumerator(name: "UL_NONE", value: 2)
!44 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !45, line: 46, size: 32, elements: !46)
!45 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!46 = !{!47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58}
!47 = !DIEnumerator(name: "_ISupper", value: 256)
!48 = !DIEnumerator(name: "_ISlower", value: 512)
!49 = !DIEnumerator(name: "_ISalpha", value: 1024)
!50 = !DIEnumerator(name: "_ISdigit", value: 2048)
!51 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!52 = !DIEnumerator(name: "_ISspace", value: 8192)
!53 = !DIEnumerator(name: "_ISprint", value: 16384)
!54 = !DIEnumerator(name: "_ISgraph", value: 32768)
!55 = !DIEnumerator(name: "_ISblank", value: 1)
!56 = !DIEnumerator(name: "_IScntrl", value: 2)
!57 = !DIEnumerator(name: "_ISpunct", value: 4)
!58 = !DIEnumerator(name: "_ISalnum", value: 8)
!59 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !60, line: 26, size: 32, elements: !61)
!60 = !DIFile(filename: "./lib/xstrtol.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!61 = !{!62, !63, !64, !65, !66}
!62 = !DIEnumerator(name: "LONGINT_OK", value: 0)
!63 = !DIEnumerator(name: "LONGINT_OVERFLOW", value: 1)
!64 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR", value: 2)
!65 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW", value: 3)
!66 = !DIEnumerator(name: "LONGINT_INVALID", value: 4)
!67 = !{!68, !70, !71, !72, !73, !76, !78, !81, !83}
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!71 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!72 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !74, line: 62, baseType: !75)
!74 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!75 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !80)
!80 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !69)
!83 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!84 = !{!85, !88, !93, !98, !100, !103, !0, !133, !135, !137, !139, !141}
!85 = !DIGlobalVariableExpression(var: !86)
!86 = distinct !DIGlobalVariable(name: "translating", scope: !2, file: !3, line: 242, type: !87, isLocal: true, isDefinition: true)
!87 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!88 = !DIGlobalVariableExpression(var: !89)
!89 = distinct !DIGlobalVariable(name: "io_buf", scope: !2, file: !3, line: 244, type: !90, isLocal: true, isDefinition: true)
!90 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 65536, elements: !91)
!91 = !{!92}
!92 = !DISubrange(count: 8192)
!93 = !DIGlobalVariableExpression(var: !94)
!94 = distinct !DIGlobalVariable(name: "in_squeeze_set", scope: !2, file: !3, line: 256, type: !95, isLocal: true, isDefinition: true)
!95 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 2048, elements: !96)
!96 = !{!97}
!97 = !DISubrange(count: 256)
!98 = !DIGlobalVariableExpression(var: !99)
!99 = distinct !DIGlobalVariable(name: "in_delete_set", scope: !2, file: !3, line: 262, type: !95, isLocal: true, isDefinition: true)
!100 = !DIGlobalVariableExpression(var: !101)
!101 = distinct !DIGlobalVariable(name: "xlate", scope: !2, file: !3, line: 267, type: !102, isLocal: true, isDefinition: true)
!102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 2048, elements: !96)
!103 = !DIGlobalVariableExpression(var: !104)
!104 = distinct !DIGlobalVariable(name: "infomap", scope: !105, file: !106, line: 632, type: !130, isLocal: true, isDefinition: true)
!105 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !106, file: !106, line: 630, type: !107, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !109)
!106 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!107 = !DISubroutineType(types: !108)
!108 = !{null, !81}
!109 = !{!110, !111, !112, !119, !121, !122, !123, !126, !127, !129}
!110 = !DILocalVariable(name: "program", arg: 1, scope: !105, file: !106, line: 630, type: !81)
!111 = !DILocalVariable(name: "node", scope: !105, file: !106, line: 642, type: !81)
!112 = !DILocalVariable(name: "map_prog", scope: !105, file: !106, line: 643, type: !113)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !115)
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !105, file: !106, line: 632, size: 128, elements: !116)
!116 = !{!117, !118}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !115, file: !106, line: 632, baseType: !81, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !115, file: !106, line: 632, baseType: !81, size: 64, offset: 64)
!119 = !DILocalVariable(name: "__s1_len", scope: !120, file: !106, line: 645, type: !73)
!120 = distinct !DILexicalBlock(scope: !105, file: !106, line: 645, column: 33)
!121 = !DILocalVariable(name: "__s2_len", scope: !120, file: !106, line: 645, type: !73)
!122 = !DILocalVariable(name: "lc_messages", scope: !105, file: !106, line: 655, type: !81)
!123 = !DILocalVariable(name: "__s1_len", scope: !124, file: !106, line: 656, type: !73)
!124 = distinct !DILexicalBlock(scope: !125, file: !106, line: 656, column: 22)
!125 = distinct !DILexicalBlock(scope: !105, file: !106, line: 656, column: 7)
!126 = !DILocalVariable(name: "__s2_len", scope: !124, file: !106, line: 656, type: !73)
!127 = !DILocalVariable(name: "__s2", scope: !128, file: !106, line: 656, type: !78)
!128 = distinct !DILexicalBlock(scope: !124, file: !106, line: 656, column: 22)
!129 = !DILocalVariable(name: "__result", scope: !128, file: !106, line: 656, type: !71)
!130 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, size: 896, elements: !131)
!131 = !{!132}
!132 = !DISubrange(count: 7)
!133 = !DIGlobalVariableExpression(var: !134)
!134 = distinct !DIGlobalVariable(name: "complement", scope: !2, file: !3, line: 208, type: !87, isLocal: true, isDefinition: true)
!135 = !DIGlobalVariableExpression(var: !136)
!136 = distinct !DIGlobalVariable(name: "delete", scope: !2, file: !3, line: 205, type: !87, isLocal: true, isDefinition: true)
!137 = !DIGlobalVariableExpression(var: !138)
!138 = distinct !DIGlobalVariable(name: "squeeze_repeats", scope: !2, file: !3, line: 202, type: !87, isLocal: true, isDefinition: true)
!139 = !DIGlobalVariableExpression(var: !140)
!140 = distinct !DIGlobalVariable(name: "truncate_set1", scope: !2, file: !3, line: 238, type: !87, isLocal: true, isDefinition: true)
!141 = !DIGlobalVariableExpression(var: !142)
!142 = distinct !DIGlobalVariable(name: "char_class_name", scope: !2, file: !3, line: 246, type: !143, isLocal: true, isDefinition: true)
!143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 768, elements: !145)
!144 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !81)
!145 = !{!146}
!146 = !DISubrange(count: 12)
!147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !148, size: 1792, elements: !131)
!148 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !149)
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !150, line: 104, size: 256, elements: !151)
!150 = !DIFile(filename: "/usr/include/getopt.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!151 = !{!152, !153, !154, !156}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !149, file: !150, line: 106, baseType: !81, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !149, file: !150, line: 109, baseType: !71, size: 32, offset: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !149, file: !150, line: 110, baseType: !155, size: 64, offset: 128)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !149, file: !150, line: 111, baseType: !71, size: 32, offset: 192)
!157 = !DIGlobalVariableExpression(var: !158)
!158 = distinct !DIGlobalVariable(name: "Version", scope: !159, file: !160, line: 2, type: !81, isDefinition: true)
!159 = distinct !DICompileUnit(language: DW_LANG_C99, file: !160, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, emissionKind: FullDebug, enums: !161, globals: !162)
!160 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!161 = !{}
!162 = !{!157}
!163 = !DIGlobalVariableExpression(var: !164)
!164 = distinct !DIGlobalVariable(name: "file_name", scope: !165, file: !170, line: 36, type: !81, isLocal: true, isDefinition: true)
!165 = distinct !DICompileUnit(language: DW_LANG_C99, file: !166, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, emissionKind: FullDebug, enums: !161, globals: !167)
!166 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!167 = !{!163, !168}
!168 = !DIGlobalVariableExpression(var: !169)
!169 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !165, file: !170, line: 46, type: !87, isLocal: true, isDefinition: true)
!170 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!171 = !DIGlobalVariableExpression(var: !172)
!172 = distinct !DIGlobalVariable(name: "exit_failure", scope: !173, file: !176, line: 24, type: !177, isDefinition: true)
!173 = distinct !DICompileUnit(language: DW_LANG_C99, file: !174, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, emissionKind: FullDebug, enums: !161, globals: !175)
!174 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!175 = !{!171}
!176 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!177 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !71)
!178 = !DIGlobalVariableExpression(var: !179)
!179 = distinct !DIGlobalVariable(name: "program_name", scope: !180, file: !184, line: 33, type: !81, isDefinition: true)
!180 = distinct !DICompileUnit(language: DW_LANG_C99, file: !181, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, emissionKind: FullDebug, enums: !161, retainedTypes: !182, globals: !183)
!181 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!182 = !{!70, !68}
!183 = !{!178}
!184 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!185 = !DIGlobalVariableExpression(var: !186)
!186 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !187, file: !213, line: 77, type: !245, isDefinition: true)
!187 = distinct !DICompileUnit(language: DW_LANG_C99, file: !188, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, emissionKind: FullDebug, enums: !189, retainedTypes: !209, globals: !210)
!188 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!189 = !{!190, !204, !44}
!190 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !191, line: 32, size: 32, elements: !192)
!191 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!192 = !{!193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203}
!193 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!194 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!195 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!196 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!197 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!198 = !DIEnumerator(name: "c_quoting_style", value: 5)
!199 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!200 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!201 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!202 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!203 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!204 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !191, line: 242, size: 32, elements: !205)
!205 = !{!206, !207, !208}
!206 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!207 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!208 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!209 = !{!71, !72, !73, !68}
!210 = !{!185, !211, !218, !230, !232, !234, !241, !243}
!211 = !DIGlobalVariableExpression(var: !212)
!212 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !187, file: !213, line: 93, type: !214, isDefinition: true)
!213 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 320, elements: !216)
!215 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !190)
!216 = !{!217}
!217 = !DISubrange(count: 10)
!218 = !DIGlobalVariableExpression(var: !219)
!219 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !187, file: !213, line: 1043, type: !220, isDefinition: true)
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !213, line: 57, size: 448, elements: !221)
!221 = !{!222, !223, !224, !228, !229}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !220, file: !213, line: 60, baseType: !190, size: 32)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !220, file: !213, line: 63, baseType: !71, size: 32, offset: 32)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !220, file: !213, line: 67, baseType: !225, size: 256, offset: 64)
!225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 256, elements: !226)
!226 = !{!227}
!227 = !DISubrange(count: 8)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !220, file: !213, line: 70, baseType: !81, size: 64, offset: 320)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !220, file: !213, line: 73, baseType: !81, size: 64, offset: 384)
!230 = !DIGlobalVariableExpression(var: !231)
!231 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !187, file: !213, line: 108, type: !220, isLocal: true, isDefinition: true)
!232 = !DIGlobalVariableExpression(var: !233)
!233 = distinct !DIGlobalVariable(name: "slot0", scope: !187, file: !213, line: 834, type: !102, isLocal: true, isDefinition: true)
!234 = !DIGlobalVariableExpression(var: !235)
!235 = distinct !DIGlobalVariable(name: "slotvec", scope: !187, file: !213, line: 837, type: !236, isLocal: true, isDefinition: true)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !213, line: 826, size: 128, elements: !238)
!238 = !{!239, !240}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !237, file: !213, line: 828, baseType: !73, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !237, file: !213, line: 829, baseType: !68, size: 64, offset: 64)
!241 = !DIGlobalVariableExpression(var: !242)
!242 = distinct !DIGlobalVariable(name: "nslots", scope: !187, file: !213, line: 835, type: !71, isLocal: true, isDefinition: true)
!243 = !DIGlobalVariableExpression(var: !244)
!244 = distinct !DIGlobalVariable(name: "slotvec0", scope: !187, file: !213, line: 836, type: !237, isLocal: true, isDefinition: true)
!245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 704, elements: !246)
!246 = !{!247}
!247 = !DISubrange(count: 11)
!248 = !DIGlobalVariableExpression(var: !249)
!249 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !250, file: !253, line: 26, type: !254, isDefinition: true)
!250 = distinct !DICompileUnit(language: DW_LANG_C99, file: !251, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, emissionKind: FullDebug, enums: !161, globals: !252)
!251 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!252 = !{!248}
!253 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!254 = !DICompositeType(tag: DW_TAG_array_type, baseType: !82, size: 376, elements: !255)
!255 = !{!256}
!256 = !DISubrange(count: 47)
!257 = !DIGlobalVariableExpression(var: !258)
!258 = distinct !DIGlobalVariable(name: "charset_aliases", scope: !259, file: !603, line: 120, type: !604, isLocal: true, isDefinition: true)
!259 = distinct !DICompileUnit(language: DW_LANG_C99, file: !260, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, emissionKind: FullDebug, enums: !261, retainedTypes: !600, globals: !602)
!260 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!261 = !{!262}
!262 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !263, line: 41, size: 32, elements: !264)
!263 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!264 = !{!265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599}
!265 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!266 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!267 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!268 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!269 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!270 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!271 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!272 = !DIEnumerator(name: "DAY_1", value: 131079)
!273 = !DIEnumerator(name: "DAY_2", value: 131080)
!274 = !DIEnumerator(name: "DAY_3", value: 131081)
!275 = !DIEnumerator(name: "DAY_4", value: 131082)
!276 = !DIEnumerator(name: "DAY_5", value: 131083)
!277 = !DIEnumerator(name: "DAY_6", value: 131084)
!278 = !DIEnumerator(name: "DAY_7", value: 131085)
!279 = !DIEnumerator(name: "ABMON_1", value: 131086)
!280 = !DIEnumerator(name: "ABMON_2", value: 131087)
!281 = !DIEnumerator(name: "ABMON_3", value: 131088)
!282 = !DIEnumerator(name: "ABMON_4", value: 131089)
!283 = !DIEnumerator(name: "ABMON_5", value: 131090)
!284 = !DIEnumerator(name: "ABMON_6", value: 131091)
!285 = !DIEnumerator(name: "ABMON_7", value: 131092)
!286 = !DIEnumerator(name: "ABMON_8", value: 131093)
!287 = !DIEnumerator(name: "ABMON_9", value: 131094)
!288 = !DIEnumerator(name: "ABMON_10", value: 131095)
!289 = !DIEnumerator(name: "ABMON_11", value: 131096)
!290 = !DIEnumerator(name: "ABMON_12", value: 131097)
!291 = !DIEnumerator(name: "MON_1", value: 131098)
!292 = !DIEnumerator(name: "MON_2", value: 131099)
!293 = !DIEnumerator(name: "MON_3", value: 131100)
!294 = !DIEnumerator(name: "MON_4", value: 131101)
!295 = !DIEnumerator(name: "MON_5", value: 131102)
!296 = !DIEnumerator(name: "MON_6", value: 131103)
!297 = !DIEnumerator(name: "MON_7", value: 131104)
!298 = !DIEnumerator(name: "MON_8", value: 131105)
!299 = !DIEnumerator(name: "MON_9", value: 131106)
!300 = !DIEnumerator(name: "MON_10", value: 131107)
!301 = !DIEnumerator(name: "MON_11", value: 131108)
!302 = !DIEnumerator(name: "MON_12", value: 131109)
!303 = !DIEnumerator(name: "AM_STR", value: 131110)
!304 = !DIEnumerator(name: "PM_STR", value: 131111)
!305 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!306 = !DIEnumerator(name: "D_FMT", value: 131113)
!307 = !DIEnumerator(name: "T_FMT", value: 131114)
!308 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!309 = !DIEnumerator(name: "ERA", value: 131116)
!310 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!311 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!312 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!313 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!314 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!315 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!316 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!317 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!318 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!319 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!320 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!321 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!322 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!323 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!324 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!325 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!326 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!327 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!328 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!329 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!330 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!331 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!332 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!333 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!334 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!335 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!336 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!337 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!338 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!339 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!340 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!341 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!342 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!343 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!344 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!345 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!346 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!347 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!348 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!349 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!350 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!351 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!352 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!353 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!354 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!355 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!356 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!357 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!358 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!359 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!360 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!361 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!362 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!363 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!364 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!365 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!366 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!367 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!368 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!369 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!370 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!371 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!372 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!373 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!374 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!375 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!376 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!377 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!378 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!379 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!380 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!381 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!382 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!383 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!384 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!385 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!386 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!387 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!388 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!389 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!390 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!391 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!392 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!393 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!394 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!395 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!396 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!397 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!398 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!399 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!400 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!401 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!402 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!403 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!404 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!405 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!406 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!407 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!408 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!409 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!410 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!411 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!412 = !DIEnumerator(name: "CODESET", value: 14)
!413 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!414 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!415 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!416 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!417 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!418 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!419 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!420 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!421 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!422 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!423 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!424 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!425 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!426 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!427 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!428 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!429 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!430 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!431 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!432 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!433 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!434 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!435 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!436 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!437 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!438 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!439 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!440 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!441 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!442 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!443 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!444 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!445 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!446 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!447 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!448 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!449 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!450 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!451 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!452 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!453 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!454 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!455 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!456 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!457 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!458 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!459 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!460 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!461 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!462 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!463 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!464 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!465 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!466 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!467 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!468 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!469 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!470 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!471 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!472 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!473 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!474 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!475 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!476 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!477 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!478 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!479 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!480 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!481 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!482 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!483 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!484 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!485 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!486 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!487 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!488 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!489 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!490 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!491 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!492 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!493 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!494 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!495 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!496 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!497 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!498 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!499 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!500 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!501 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!502 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!503 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!504 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!505 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!506 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!507 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!508 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!509 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!510 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!511 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!512 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!513 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!514 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!515 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!516 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!517 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!518 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!519 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!520 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!521 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!522 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!523 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!524 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!525 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!526 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!527 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!528 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!529 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!530 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!531 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!532 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!533 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!534 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!535 = !DIEnumerator(name: "THOUSEP", value: 65537)
!536 = !DIEnumerator(name: "__GROUPING", value: 65538)
!537 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!538 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!539 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!540 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!541 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!542 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!543 = !DIEnumerator(name: "__YESSTR", value: 327682)
!544 = !DIEnumerator(name: "__NOSTR", value: 327683)
!545 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!546 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!547 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!548 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!549 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!550 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!551 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!552 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!553 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!554 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!555 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!556 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!557 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!558 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!559 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!560 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!561 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!562 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!563 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!564 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!565 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!566 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!567 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!568 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!569 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!570 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!571 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!572 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!573 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!574 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!575 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!576 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!577 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!578 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!579 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!580 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!581 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!582 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!583 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!584 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!585 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!586 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!587 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!588 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!589 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!590 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!591 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!592 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!593 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!594 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!595 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!596 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!597 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!598 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!599 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!600 = !{!70, !68, !601}
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!602 = !{!257}
!603 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!604 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !81)
!605 = distinct !DICompileUnit(language: DW_LANG_C99, file: !606, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, emissionKind: FullDebug, enums: !607)
!606 = !DIFile(filename: "./lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!607 = !{!27}
!608 = distinct !DICompileUnit(language: DW_LANG_C99, file: !609, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, emissionKind: FullDebug, enums: !610)
!609 = !DIFile(filename: "./lib/safe-read.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!610 = !{!611}
!611 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !613, file: !612, line: 62, size: 32, elements: !629)
!612 = !DIFile(filename: "lib/safe-read.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!613 = distinct !DISubprogram(name: "safe_read", scope: !612, file: !612, line: 56, type: !614, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !608, variables: !616)
!614 = !DISubroutineType(types: !615)
!615 = !{!73, !71, !70, !73}
!616 = !{!617, !618, !619, !620}
!617 = !DILocalVariable(name: "fd", arg: 1, scope: !613, file: !612, line: 56, type: !71)
!618 = !DILocalVariable(name: "buf", arg: 2, scope: !613, file: !612, line: 56, type: !70)
!619 = !DILocalVariable(name: "count", arg: 3, scope: !613, file: !612, line: 56, type: !73)
!620 = !DILocalVariable(name: "result", scope: !621, file: !612, line: 66, type: !624)
!621 = distinct !DILexicalBlock(scope: !622, file: !612, line: 65, column: 5)
!622 = distinct !DILexicalBlock(scope: !623, file: !612, line: 64, column: 3)
!623 = distinct !DILexicalBlock(scope: !613, file: !612, line: 64, column: 3)
!624 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !625, line: 109, baseType: !626)
!625 = !DIFile(filename: "/usr/include/sys/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!626 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !627, line: 181, baseType: !628)
!627 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!628 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!629 = !{!630}
!630 = !DIEnumerator(name: "BUGGY_READ_MAXIMUM", value: 2147475456)
!631 = distinct !DICompileUnit(language: DW_LANG_C99, file: !632, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, emissionKind: FullDebug, enums: !633, retainedTypes: !638)
!632 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!633 = !{!634}
!634 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !635, line: 41, size: 32, elements: !636)
!635 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!636 = !{!637}
!637 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!638 = !{!70}
!639 = distinct !DICompileUnit(language: DW_LANG_C99, file: !640, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, emissionKind: FullDebug, enums: !641, retainedTypes: !655)
!640 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!641 = !{!642}
!642 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !644, file: !643, line: 192, size: 32, elements: !653)
!643 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!644 = distinct !DISubprogram(name: "x2nrealloc", scope: !643, file: !643, line: 180, type: !645, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !639, variables: !648)
!645 = !DISubroutineType(types: !646)
!646 = !{!70, !70, !647, !73}
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!648 = !{!649, !650, !651, !652}
!649 = !DILocalVariable(name: "p", arg: 1, scope: !644, file: !643, line: 180, type: !70)
!650 = !DILocalVariable(name: "pn", arg: 2, scope: !644, file: !643, line: 180, type: !647)
!651 = !DILocalVariable(name: "s", arg: 3, scope: !644, file: !643, line: 180, type: !73)
!652 = !DILocalVariable(name: "n", scope: !644, file: !643, line: 182, type: !73)
!653 = !{!654}
!654 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!655 = !{!73, !68, !70}
!656 = distinct !DICompileUnit(language: DW_LANG_C99, file: !657, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, emissionKind: FullDebug, enums: !161)
!657 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!658 = distinct !DICompileUnit(language: DW_LANG_C99, file: !659, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, emissionKind: FullDebug, enums: !660, retainedTypes: !661)
!659 = !DIFile(filename: "./lib/xstrtoumax.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!660 = !{!59, !44}
!661 = !{!71, !72, !68}
!662 = distinct !DICompileUnit(language: DW_LANG_C99, file: !663, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, emissionKind: FullDebug, enums: !161, retainedTypes: !638)
!663 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!664 = distinct !DICompileUnit(language: DW_LANG_C99, file: !665, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, emissionKind: FullDebug, enums: !161, retainedTypes: !666)
!665 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!666 = !{!73}
!667 = distinct !DICompileUnit(language: DW_LANG_C99, file: !668, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, emissionKind: FullDebug, enums: !161)
!668 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!669 = distinct !DICompileUnit(language: DW_LANG_C99, file: !670, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, emissionKind: FullDebug, enums: !161, retainedTypes: !671)
!670 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!671 = !{!73, !76, !78, !81}
!672 = distinct !DICompileUnit(language: DW_LANG_C99, file: !673, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, emissionKind: FullDebug, enums: !161)
!673 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!674 = distinct !DICompileUnit(language: DW_LANG_C99, file: !675, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, emissionKind: FullDebug, enums: !161, retainedTypes: !638)
!675 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!676 = distinct !DICompileUnit(language: DW_LANG_C99, file: !677, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, emissionKind: FullDebug, enums: !161, retainedTypes: !638)
!677 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!678 = !{!"clang version 4.0.1 (tags/RELEASE_401/final)"}
!679 = !{i32 2, !"Dwarf Version", i32 4}
!680 = !{i32 2, !"Debug Info Version", i32 3}
!681 = !{i32 1, !"PIC Level", i32 2}
!682 = !{i32 1, !"PIE Level", i32 2}
!683 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 281, type: !684, isDefinition: true, scopeLine: 282, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !686)
!684 = !DISubroutineType(types: !685)
!685 = !{null, !71}
!686 = !{!687}
!687 = !DILocalVariable(name: "status", arg: 1, scope: !683, file: !3, line: 281, type: !71)
!688 = !DIExpression()
!689 = !DILocation(line: 281, column: 12, scope: !683)
!690 = !DILocation(line: 283, column: 14, scope: !691)
!691 = distinct !DILexicalBlock(scope: !683, file: !3, line: 283, column: 7)
!692 = !DILocation(line: 283, column: 7, scope: !683)
!693 = !DILocation(line: 284, column: 5, scope: !694)
!694 = !DILexicalBlockFile(scope: !695, file: !3, discriminator: 1)
!695 = distinct !DILexicalBlock(scope: !691, file: !3, line: 284, column: 5)
!696 = !{!697, !697, i64 0}
!697 = !{!"any pointer", !698, i64 0}
!698 = !{!"omnipotent char", !699, i64 0}
!699 = !{!"Simple C/C++ TBAA"}
!700 = !DILocation(line: 284, column: 5, scope: !701)
!701 = !DILexicalBlockFile(scope: !695, file: !3, discriminator: 3)
!702 = !DILocation(line: 284, column: 5, scope: !703)
!703 = !DILexicalBlockFile(scope: !695, file: !3, discriminator: 2)
!704 = !DILocation(line: 287, column: 7, scope: !705)
!705 = distinct !DILexicalBlock(scope: !691, file: !3, line: 286, column: 5)
!706 = !DILocation(line: 287, column: 7, scope: !707)
!707 = !DILexicalBlockFile(scope: !705, file: !3, discriminator: 1)
!708 = !DILocation(line: 291, column: 7, scope: !705)
!709 = !DILocation(line: 291, column: 7, scope: !707)
!710 = !DILocation(line: 302, column: 7, scope: !705)
!711 = !DILocation(line: 302, column: 7, scope: !707)
!712 = !DILocation(line: 303, column: 7, scope: !705)
!713 = !DILocation(line: 303, column: 7, scope: !707)
!714 = !DILocation(line: 304, column: 7, scope: !705)
!715 = !DILocation(line: 304, column: 7, scope: !707)
!716 = !DILocation(line: 318, column: 6, scope: !705)
!717 = !DILocation(line: 318, column: 6, scope: !707)
!718 = !DILocation(line: 329, column: 6, scope: !705)
!719 = !DILocation(line: 329, column: 6, scope: !707)
!720 = !DILocation(line: 339, column: 6, scope: !705)
!721 = !DILocation(line: 339, column: 6, scope: !707)
!722 = !DILocation(line: 642, column: 15, scope: !105, inlinedAt: !723)
!723 = distinct !DILocation(line: 349, column: 7, scope: !705)
!724 = !DILocation(line: 651, column: 3, scope: !105, inlinedAt: !723)
!725 = !DILocation(line: 651, column: 3, scope: !726, inlinedAt: !723)
!726 = !DILexicalBlockFile(scope: !105, file: !106, discriminator: 1)
!727 = !DILocation(line: 655, column: 29, scope: !105, inlinedAt: !723)
!728 = !DILocation(line: 655, column: 15, scope: !105, inlinedAt: !723)
!729 = !DILocation(line: 656, column: 7, scope: !125, inlinedAt: !723)
!730 = !DILocation(line: 656, column: 19, scope: !125, inlinedAt: !723)
!731 = !DILocation(line: 656, column: 22, scope: !732, inlinedAt: !723)
!732 = !DILexicalBlockFile(scope: !125, file: !106, discriminator: 16)
!733 = !DILocation(line: 656, column: 7, scope: !734, inlinedAt: !723)
!734 = !DILexicalBlockFile(scope: !105, file: !106, discriminator: 16)
!735 = !DILocation(line: 662, column: 7, scope: !736, inlinedAt: !723)
!736 = distinct !DILexicalBlock(scope: !125, file: !106, line: 657, column: 5)
!737 = !DILocation(line: 662, column: 7, scope: !738, inlinedAt: !723)
!738 = !DILexicalBlockFile(scope: !736, file: !106, discriminator: 1)
!739 = !DILocation(line: 664, column: 5, scope: !736, inlinedAt: !723)
!740 = !DILocation(line: 665, column: 3, scope: !105, inlinedAt: !723)
!741 = !DILocation(line: 665, column: 3, scope: !726, inlinedAt: !723)
!742 = !DILocation(line: 667, column: 3, scope: !105, inlinedAt: !723)
!743 = !DILocation(line: 667, column: 3, scope: !726, inlinedAt: !723)
!744 = !DILocation(line: 351, column: 3, scope: !683)
!745 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 1691, type: !746, isDefinition: true, scopeLine: 1692, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !749)
!746 = !DISubroutineType(types: !747)
!747 = !{!71, !71, !748}
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!749 = !{!750, !751, !752, !753, !754, !755, !756, !793, !794, !796, !797, !802, !809, !811, !813, !818, !820, !821, !822, !823, !825, !830, !834, !838, !842}
!750 = !DILocalVariable(name: "argc", arg: 1, scope: !745, file: !3, line: 1691, type: !71)
!751 = !DILocalVariable(name: "argv", arg: 2, scope: !745, file: !3, line: 1691, type: !748)
!752 = !DILocalVariable(name: "c", scope: !745, file: !3, line: 1693, type: !71)
!753 = !DILocalVariable(name: "non_option_args", scope: !745, file: !3, line: 1694, type: !71)
!754 = !DILocalVariable(name: "min_operands", scope: !745, file: !3, line: 1695, type: !71)
!755 = !DILocalVariable(name: "max_operands", scope: !745, file: !3, line: 1696, type: !71)
!756 = !DILocalVariable(name: "buf1", scope: !745, file: !3, line: 1697, type: !757)
!757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Spec_list", file: !3, line: 140, size: 448, elements: !758)
!758 = !{!759, !785, !786, !787, !788, !789, !790, !791, !792}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !757, file: !3, line: 144, baseType: !760, size: 64)
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "List_element", file: !3, line: 106, size: 256, elements: !762)
!762 = !{!763, !764, !765}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !761, file: !3, line: 108, baseType: !5, size: 32)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !761, file: !3, line: 109, baseType: !760, size: 64, offset: 64)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !761, file: !3, line: 128, baseType: !766, size: 128, offset: 128)
!766 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !761, file: !3, line: 110, size: 128, elements: !767)
!767 = !{!768, !769, !774, !775, !776}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "normal_char", scope: !766, file: !3, line: 112, baseType: !80, size: 8)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !766, file: !3, line: 118, baseType: !770, size: 16)
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !766, file: !3, line: 113, size: 16, elements: !771)
!771 = !{!772, !773}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "first_char", scope: !770, file: !3, line: 115, baseType: !80, size: 8)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "last_char", scope: !770, file: !3, line: 116, baseType: !80, size: 8, offset: 8)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "char_class", scope: !766, file: !3, line: 119, baseType: !12, size: 32)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "equiv_code", scope: !766, file: !3, line: 120, baseType: !80, size: 8)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "repeated_char", scope: !766, file: !3, line: 126, baseType: !777, size: 128)
!777 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !766, file: !3, line: 121, size: 128, elements: !778)
!778 = !{!779, !780}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "the_repeated_char", scope: !777, file: !3, line: 123, baseType: !80, size: 8)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "repeat_count", scope: !777, file: !3, line: 124, baseType: !781, size: 64, offset: 64)
!781 = !DIDerivedType(tag: DW_TAG_typedef, name: "count", file: !3, line: 48, baseType: !782)
!782 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !783, line: 136, baseType: !784)
!783 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!784 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !627, line: 62, baseType: !75)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !757, file: !3, line: 150, baseType: !760, size: 64, offset: 64)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !757, file: !3, line: 153, baseType: !781, size: 64, offset: 128)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !757, file: !3, line: 157, baseType: !781, size: 64, offset: 192)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "n_indefinite_repeats", scope: !757, file: !3, line: 160, baseType: !73, size: 64, offset: 256)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "indefinite_repeat_element", scope: !757, file: !3, line: 165, baseType: !760, size: 64, offset: 320)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "has_equiv_class", scope: !757, file: !3, line: 169, baseType: !87, size: 8, offset: 384)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "has_char_class", scope: !757, file: !3, line: 173, baseType: !87, size: 8, offset: 392)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "has_restricted_char_class", scope: !757, file: !3, line: 177, baseType: !87, size: 8, offset: 400)
!793 = !DILocalVariable(name: "buf2", scope: !745, file: !3, line: 1697, type: !757)
!794 = !DILocalVariable(name: "s1", scope: !745, file: !3, line: 1698, type: !795)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!796 = !DILocalVariable(name: "s2", scope: !745, file: !3, line: 1699, type: !795)
!797 = !DILocalVariable(name: "nr", scope: !798, file: !3, line: 1804, type: !73)
!798 = distinct !DILexicalBlock(scope: !799, file: !3, line: 1803, column: 9)
!799 = distinct !DILexicalBlock(scope: !800, file: !3, line: 1799, column: 5)
!800 = distinct !DILexicalBlock(scope: !801, file: !3, line: 1798, column: 12)
!801 = distinct !DILexicalBlock(scope: !745, file: !3, line: 1793, column: 7)
!802 = !DILocalVariable(name: "in_s1", scope: !803, file: !3, line: 1821, type: !808)
!803 = distinct !DILexicalBlock(scope: !804, file: !3, line: 1820, column: 9)
!804 = distinct !DILexicalBlock(scope: !805, file: !3, line: 1819, column: 11)
!805 = distinct !DILexicalBlock(scope: !806, file: !3, line: 1818, column: 5)
!806 = distinct !DILexicalBlock(scope: !807, file: !3, line: 1817, column: 12)
!807 = distinct !DILexicalBlock(scope: !800, file: !3, line: 1811, column: 12)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!809 = !DILocalVariable(name: "i", scope: !810, file: !3, line: 1825, type: !71)
!810 = distinct !DILexicalBlock(scope: !803, file: !3, line: 1825, column: 11)
!811 = !DILocalVariable(name: "i", scope: !812, file: !3, line: 1827, type: !71)
!812 = distinct !DILexicalBlock(scope: !803, file: !3, line: 1827, column: 11)
!813 = !DILocalVariable(name: "ch", scope: !814, file: !3, line: 1831, type: !71)
!814 = distinct !DILexicalBlock(scope: !815, file: !3, line: 1830, column: 17)
!815 = distinct !DILexicalBlock(scope: !816, file: !3, line: 1829, column: 19)
!816 = distinct !DILexicalBlock(scope: !817, file: !3, line: 1828, column: 13)
!817 = distinct !DILexicalBlock(scope: !812, file: !3, line: 1827, column: 11)
!818 = !DILocalVariable(name: "c1", scope: !819, file: !3, line: 1845, type: !71)
!819 = distinct !DILexicalBlock(scope: !804, file: !3, line: 1844, column: 9)
!820 = !DILocalVariable(name: "c2", scope: !819, file: !3, line: 1845, type: !71)
!821 = !DILocalVariable(name: "class_s1", scope: !819, file: !3, line: 1846, type: !39)
!822 = !DILocalVariable(name: "class_s2", scope: !819, file: !3, line: 1847, type: !39)
!823 = !DILocalVariable(name: "i", scope: !824, file: !3, line: 1849, type: !71)
!824 = distinct !DILexicalBlock(scope: !819, file: !3, line: 1849, column: 11)
!825 = !DILocalVariable(name: "i", scope: !826, file: !3, line: 1860, type: !71)
!826 = distinct !DILexicalBlock(scope: !827, file: !3, line: 1860, column: 19)
!827 = distinct !DILexicalBlock(scope: !828, file: !3, line: 1859, column: 17)
!828 = distinct !DILexicalBlock(scope: !829, file: !3, line: 1858, column: 19)
!829 = distinct !DILexicalBlock(scope: !819, file: !3, line: 1854, column: 13)
!830 = !DILocalVariable(name: "__res", scope: !831, file: !3, line: 1862, type: !71)
!831 = distinct !DILexicalBlock(scope: !832, file: !3, line: 1862, column: 34)
!832 = distinct !DILexicalBlock(scope: !833, file: !3, line: 1861, column: 25)
!833 = distinct !DILexicalBlock(scope: !826, file: !3, line: 1860, column: 19)
!834 = !DILocalVariable(name: "i", scope: !835, file: !3, line: 1866, type: !71)
!835 = distinct !DILexicalBlock(scope: !836, file: !3, line: 1866, column: 19)
!836 = distinct !DILexicalBlock(scope: !837, file: !3, line: 1865, column: 17)
!837 = distinct !DILexicalBlock(scope: !828, file: !3, line: 1864, column: 24)
!838 = !DILocalVariable(name: "__res", scope: !839, file: !3, line: 1868, type: !71)
!839 = distinct !DILexicalBlock(scope: !840, file: !3, line: 1868, column: 34)
!840 = distinct !DILexicalBlock(scope: !841, file: !3, line: 1867, column: 25)
!841 = distinct !DILexicalBlock(scope: !835, file: !3, line: 1866, column: 19)
!842 = !DILocalVariable(name: "bytes_read", scope: !843, file: !3, line: 1896, type: !73)
!843 = distinct !DILexicalBlock(scope: !844, file: !3, line: 1895, column: 13)
!844 = distinct !DILexicalBlock(scope: !845, file: !3, line: 1893, column: 9)
!845 = distinct !DILexicalBlock(scope: !805, file: !3, line: 1887, column: 11)
!846 = !DILocalVariable(name: "in_set", scope: !847, file: !3, line: 1145, type: !95)
!847 = distinct !DISubprogram(name: "card_of_complement", scope: !3, file: !3, line: 1141, type: !848, isLocal: true, isDefinition: true, scopeLine: 1142, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !850)
!848 = !DISubroutineType(types: !849)
!849 = !{!71, !795}
!850 = !{!851, !852, !853, !846}
!851 = !DILocalVariable(name: "s", arg: 1, scope: !847, file: !3, line: 1141, type: !795)
!852 = !DILocalVariable(name: "c", scope: !847, file: !3, line: 1143, type: !71)
!853 = !DILocalVariable(name: "cardinality", scope: !847, file: !3, line: 1144, type: !71)
!854 = !DILocation(line: 1145, column: 8, scope: !847, inlinedAt: !855)
!855 = distinct !DILocation(line: 1322, column: 18, scope: !856, inlinedAt: !862)
!856 = distinct !DILexicalBlock(scope: !857, file: !3, line: 1321, column: 7)
!857 = distinct !DISubprogram(name: "get_s1_spec_stats", scope: !3, file: !3, line: 1318, type: !858, isLocal: true, isDefinition: true, scopeLine: 1319, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !860)
!858 = !DISubroutineType(types: !859)
!859 = !{null, !795}
!860 = !{!861}
!861 = !DILocalVariable(name: "s1", arg: 1, scope: !857, file: !3, line: 1318, type: !795)
!862 = distinct !DILocation(line: 1446, column: 3, scope: !863, inlinedAt: !869)
!863 = distinct !DISubprogram(name: "validate", scope: !3, file: !3, line: 1444, type: !864, isLocal: true, isDefinition: true, scopeLine: 1445, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !866)
!864 = !DISubroutineType(types: !865)
!865 = !{null, !795, !795}
!866 = !{!867, !868}
!867 = !DILocalVariable(name: "s1", arg: 1, scope: !863, file: !3, line: 1444, type: !795)
!868 = !DILocalVariable(name: "s2", arg: 2, scope: !863, file: !3, line: 1444, type: !795)
!869 = distinct !DILocation(line: 1784, column: 3, scope: !745)
!870 = !DILocation(line: 1691, column: 11, scope: !745)
!871 = !DILocation(line: 1691, column: 24, scope: !745)
!872 = !DILocation(line: 1697, column: 3, scope: !745)
!873 = !DILocation(line: 1698, column: 21, scope: !745)
!874 = !DILocation(line: 1699, column: 21, scope: !745)
!875 = !DILocation(line: 1702, column: 21, scope: !745)
!876 = !DILocation(line: 1702, column: 3, scope: !745)
!877 = !DILocation(line: 1703, column: 3, scope: !745)
!878 = !DILocation(line: 1704, column: 3, scope: !745)
!879 = !DILocation(line: 1705, column: 3, scope: !745)
!880 = !DILocation(line: 1707, column: 3, scope: !745)
!881 = !DILocation(line: 1709, column: 3, scope: !745)
!882 = !DILocation(line: 1709, column: 15, scope: !883)
!883 = !DILexicalBlockFile(scope: !745, file: !3, discriminator: 1)
!884 = !DILocation(line: 1693, column: 7, scope: !745)
!885 = !DILocation(line: 1709, column: 3, scope: !883)
!886 = !DILocation(line: 1716, column: 11, scope: !887)
!887 = distinct !DILexicalBlock(scope: !888, file: !3, line: 1712, column: 9)
!888 = distinct !DILexicalBlock(scope: !745, file: !3, line: 1710, column: 5)
!889 = !DILocation(line: 1724, column: 11, scope: !887)
!890 = !DILocation(line: 1728, column: 11, scope: !887)
!891 = !DILocation(line: 1730, column: 9, scope: !887)
!892 = !DILocation(line: 1732, column: 9, scope: !887)
!893 = !DILocation(line: 1732, column: 9, scope: !894)
!894 = !DILexicalBlockFile(scope: !887, file: !3, discriminator: 1)
!895 = !DILocation(line: 1735, column: 11, scope: !887)
!896 = !{!897, !897, i64 0}
!897 = !{!"_Bool", !698, i64 0}
!898 = !DILocation(line: 1709, column: 3, scope: !899)
!899 = !DILexicalBlockFile(scope: !745, file: !3, discriminator: 2)
!900 = distinct !{!900, !881, !901}
!901 = !DILocation(line: 1738, column: 5, scope: !745)
!902 = !DILocation(line: 1740, column: 28, scope: !745)
!903 = !{!904, !904, i64 0}
!904 = !{!"int", !698, i64 0}
!905 = !DILocation(line: 1740, column: 26, scope: !745)
!906 = !DILocation(line: 1694, column: 7, scope: !745)
!907 = !DILocation(line: 1741, column: 34, scope: !745)
!908 = !DILocation(line: 1741, column: 43, scope: !883)
!909 = !DILocation(line: 1741, column: 15, scope: !899)
!910 = !DILocation(line: 1742, column: 33, scope: !745)
!911 = !{i8 0, i8 2}
!912 = !DILocation(line: 1742, column: 30, scope: !745)
!913 = !DILocation(line: 1742, column: 20, scope: !745)
!914 = !DILocation(line: 1695, column: 7, scope: !745)
!915 = !DILocation(line: 1743, column: 30, scope: !745)
!916 = !DILocation(line: 1743, column: 20, scope: !745)
!917 = !DILocation(line: 1696, column: 7, scope: !745)
!918 = !DILocation(line: 1745, column: 23, scope: !919)
!919 = distinct !DILexicalBlock(scope: !745, file: !3, line: 1745, column: 7)
!920 = !DILocation(line: 1745, column: 7, scope: !745)
!921 = !DILocation(line: 1747, column: 27, scope: !922)
!922 = distinct !DILexicalBlock(scope: !923, file: !3, line: 1747, column: 11)
!923 = distinct !DILexicalBlock(scope: !919, file: !3, line: 1746, column: 5)
!924 = !DILocation(line: 1747, column: 11, scope: !923)
!925 = !DILocation(line: 1748, column: 22, scope: !922)
!926 = !DILocation(line: 1748, column: 9, scope: !927)
!927 = !DILexicalBlockFile(scope: !922, file: !3, discriminator: 1)
!928 = !DILocation(line: 1748, column: 9, scope: !922)
!929 = !DILocation(line: 1751, column: 24, scope: !930)
!930 = distinct !DILexicalBlock(scope: !922, file: !3, line: 1750, column: 9)
!931 = !DILocation(line: 1751, column: 72, scope: !930)
!932 = !DILocation(line: 1751, column: 62, scope: !930)
!933 = !DILocation(line: 1751, column: 55, scope: !934)
!934 = !DILexicalBlockFile(scope: !930, file: !3, discriminator: 1)
!935 = !DILocation(line: 1751, column: 11, scope: !936)
!936 = !DILexicalBlockFile(scope: !930, file: !3, discriminator: 2)
!937 = !DILocation(line: 1752, column: 11, scope: !930)
!938 = !DILocation(line: 1752, column: 11, scope: !934)
!939 = !DILocation(line: 1758, column: 7, scope: !923)
!940 = !DILocation(line: 1761, column: 20, scope: !941)
!941 = distinct !DILexicalBlock(scope: !745, file: !3, line: 1761, column: 7)
!942 = !DILocation(line: 1761, column: 7, scope: !745)
!943 = !DILocation(line: 1763, column: 20, scope: !944)
!944 = distinct !DILexicalBlock(scope: !941, file: !3, line: 1762, column: 5)
!945 = !DILocation(line: 1763, column: 55, scope: !944)
!946 = !DILocation(line: 1763, column: 62, scope: !944)
!947 = !DILocation(line: 1763, column: 50, scope: !944)
!948 = !DILocation(line: 1763, column: 43, scope: !949)
!949 = !DILexicalBlockFile(scope: !944, file: !3, discriminator: 1)
!950 = !DILocation(line: 1763, column: 7, scope: !951)
!951 = !DILexicalBlockFile(scope: !944, file: !3, discriminator: 2)
!952 = !DILocation(line: 1764, column: 11, scope: !944)
!953 = !DILocation(line: 1765, column: 9, scope: !954)
!954 = distinct !DILexicalBlock(scope: !944, file: !3, line: 1764, column: 11)
!955 = !DILocation(line: 1765, column: 9, scope: !956)
!956 = !DILexicalBlockFile(scope: !954, file: !3, discriminator: 1)
!957 = !DILocation(line: 1768, column: 7, scope: !944)
!958 = !DIExpression(DW_OP_deref)
!959 = !DILocation(line: 1697, column: 20, scope: !745)
!960 = !DILocalVariable(name: "spec_list", arg: 1, scope: !961, file: !3, line: 1338, type: !795)
!961 = distinct !DISubprogram(name: "spec_init", scope: !3, file: !3, line: 1338, type: !858, isLocal: true, isDefinition: true, scopeLine: 1339, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !962)
!962 = !{!960, !963}
!963 = !DILocalVariable(name: "new", scope: !961, file: !3, line: 1340, type: !760)
!964 = !DILocation(line: 1338, column: 30, scope: !961, inlinedAt: !965)
!965 = distinct !DILocation(line: 1771, column: 3, scope: !745)
!966 = !DILocation(line: 1340, column: 30, scope: !961, inlinedAt: !965)
!967 = !DILocation(line: 1341, column: 32, scope: !961, inlinedAt: !965)
!968 = !DILocation(line: 1341, column: 37, scope: !961, inlinedAt: !965)
!969 = !{!970, !697, i64 8}
!970 = !{!"Spec_list", !697, i64 0, !697, i64 8, !971, i64 16, !971, i64 24, !971, i64 32, !697, i64 40, !897, i64 48, !897, i64 49, !897, i64 50}
!971 = !{!"long", !698, i64 0}
!972 = !DILocation(line: 1341, column: 19, scope: !961, inlinedAt: !965)
!973 = !{!970, !697, i64 0}
!974 = !DILocation(line: 1342, column: 20, scope: !961, inlinedAt: !965)
!975 = !DILocation(line: 1342, column: 25, scope: !961, inlinedAt: !965)
!976 = !{!977, !697, i64 8}
!977 = !{!"List_element", !698, i64 0, !697, i64 8, !698, i64 16}
!978 = !DILocation(line: 1772, column: 24, scope: !979)
!979 = distinct !DILexicalBlock(scope: !745, file: !3, line: 1772, column: 7)
!980 = !DILocation(line: 1772, column: 19, scope: !979)
!981 = !DILocation(line: 1772, column: 8, scope: !979)
!982 = !DILocation(line: 1772, column: 7, scope: !745)
!983 = !DILocation(line: 1775, column: 7, scope: !745)
!984 = !DILocation(line: 1697, column: 26, scope: !745)
!985 = !DILocation(line: 1338, column: 30, scope: !961, inlinedAt: !986)
!986 = distinct !DILocation(line: 1777, column: 7, scope: !987)
!987 = distinct !DILexicalBlock(scope: !988, file: !3, line: 1776, column: 5)
!988 = distinct !DILexicalBlock(scope: !745, file: !3, line: 1775, column: 7)
!989 = !DILocation(line: 1340, column: 30, scope: !961, inlinedAt: !986)
!990 = !DILocation(line: 1341, column: 32, scope: !961, inlinedAt: !986)
!991 = !DILocation(line: 1341, column: 37, scope: !961, inlinedAt: !986)
!992 = !DILocation(line: 1341, column: 19, scope: !961, inlinedAt: !986)
!993 = !DILocation(line: 1342, column: 20, scope: !961, inlinedAt: !986)
!994 = !DILocation(line: 1342, column: 25, scope: !961, inlinedAt: !986)
!995 = !DILocation(line: 1778, column: 28, scope: !996)
!996 = distinct !DILexicalBlock(scope: !987, file: !3, line: 1778, column: 11)
!997 = !DILocation(line: 1778, column: 35, scope: !996)
!998 = !DILocation(line: 1778, column: 23, scope: !996)
!999 = !DILocation(line: 1778, column: 12, scope: !996)
!1000 = !DILocation(line: 1778, column: 11, scope: !987)
!1001 = !DILocation(line: 1444, column: 29, scope: !863, inlinedAt: !869)
!1002 = !DILocation(line: 1444, column: 51, scope: !863, inlinedAt: !869)
!1003 = !DILocation(line: 1318, column: 38, scope: !857, inlinedAt: !862)
!1004 = !DILocation(line: 1320, column: 3, scope: !857, inlinedAt: !862)
!1005 = !DILocation(line: 1321, column: 7, scope: !856, inlinedAt: !862)
!1006 = !DILocation(line: 1321, column: 7, scope: !857, inlinedAt: !862)
!1007 = !DILocation(line: 1141, column: 39, scope: !847, inlinedAt: !855)
!1008 = !DILocation(line: 1144, column: 7, scope: !847, inlinedAt: !855)
!1009 = !DILocation(line: 1145, column: 3, scope: !847, inlinedAt: !855)
!1010 = !DILocation(line: 1147, column: 6, scope: !847, inlinedAt: !855)
!1011 = !DILocation(line: 1147, column: 12, scope: !847, inlinedAt: !855)
!1012 = !{!970, !971, i64 16}
!1013 = !DILocation(line: 1148, column: 15, scope: !1014, inlinedAt: !855)
!1014 = !DILexicalBlockFile(scope: !847, file: !3, discriminator: 1)
!1015 = !DILocation(line: 1143, column: 7, scope: !847, inlinedAt: !855)
!1016 = !DILocation(line: 1148, column: 35, scope: !1014, inlinedAt: !855)
!1017 = !DILocation(line: 1148, column: 3, scope: !1014, inlinedAt: !855)
!1018 = !DILocation(line: 1150, column: 24, scope: !1019, inlinedAt: !855)
!1019 = distinct !DILexicalBlock(scope: !847, file: !3, line: 1149, column: 5)
!1020 = !DILocation(line: 1150, column: 23, scope: !1019, inlinedAt: !855)
!1021 = !DILocation(line: 1150, column: 19, scope: !1019, inlinedAt: !855)
!1022 = !DILocation(line: 1151, column: 17, scope: !1019, inlinedAt: !855)
!1023 = distinct !{!1023, !1024, !1025}
!1024 = !DILocation(line: 1148, column: 3, scope: !847)
!1025 = !DILocation(line: 1152, column: 5, scope: !847)
!1026 = !DILocation(line: 1154, column: 1, scope: !847, inlinedAt: !855)
!1027 = !DILocation(line: 1322, column: 9, scope: !856, inlinedAt: !862)
!1028 = !DILocation(line: 1322, column: 16, scope: !856, inlinedAt: !862)
!1029 = !{!970, !971, i64 24}
!1030 = !DILocation(line: 1322, column: 5, scope: !856, inlinedAt: !862)
!1031 = !DILocation(line: 1447, column: 11, scope: !1032, inlinedAt: !869)
!1032 = distinct !DILexicalBlock(scope: !863, file: !3, line: 1447, column: 7)
!1033 = !{!970, !971, i64 32}
!1034 = !DILocation(line: 1447, column: 32, scope: !1032, inlinedAt: !869)
!1035 = !DILocation(line: 1447, column: 7, scope: !863, inlinedAt: !869)
!1036 = !DILocation(line: 1449, column: 7, scope: !1037, inlinedAt: !869)
!1037 = distinct !DILexicalBlock(scope: !1032, file: !3, line: 1448, column: 5)
!1038 = !DILocation(line: 1449, column: 7, scope: !1039, inlinedAt: !869)
!1039 = !DILexicalBlockFile(scope: !1037, file: !3, discriminator: 1)
!1040 = !DILocation(line: 1453, column: 7, scope: !1041, inlinedAt: !869)
!1041 = distinct !DILexicalBlock(scope: !863, file: !3, line: 1453, column: 7)
!1042 = !DILocation(line: 1453, column: 7, scope: !863, inlinedAt: !869)
!1043 = !DILocation(line: 1455, column: 34, scope: !1044, inlinedAt: !869)
!1044 = distinct !DILexicalBlock(scope: !1041, file: !3, line: 1454, column: 5)
!1045 = !DILocalVariable(name: "s2", arg: 1, scope: !1046, file: !3, line: 1326, type: !795)
!1046 = distinct !DISubprogram(name: "get_s2_spec_stats", scope: !3, file: !3, line: 1326, type: !1047, isLocal: true, isDefinition: true, scopeLine: 1327, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1049)
!1047 = !DISubroutineType(types: !1048)
!1048 = !{null, !795, !781}
!1049 = !{!1045, !1050}
!1050 = !DILocalVariable(name: "len_s1", arg: 2, scope: !1046, file: !3, line: 1326, type: !781)
!1051 = !DILocation(line: 1326, column: 38, scope: !1046, inlinedAt: !1052)
!1052 = distinct !DILocation(line: 1455, column: 7, scope: !1044, inlinedAt: !869)
!1053 = !DILocation(line: 1326, column: 48, scope: !1046, inlinedAt: !1052)
!1054 = !DILocation(line: 1328, column: 3, scope: !1046, inlinedAt: !1052)
!1055 = !DILocation(line: 1329, column: 21, scope: !1056, inlinedAt: !1052)
!1056 = distinct !DILexicalBlock(scope: !1046, file: !3, line: 1329, column: 7)
!1057 = !DILocation(line: 1329, column: 14, scope: !1056, inlinedAt: !1052)
!1058 = !DILocation(line: 1329, column: 56, scope: !1059, inlinedAt: !1052)
!1059 = !DILexicalBlockFile(scope: !1056, file: !3, discriminator: 1)
!1060 = !DILocation(line: 1329, column: 28, scope: !1056, inlinedAt: !1052)
!1061 = !DILocation(line: 1332, column: 16, scope: !1062, inlinedAt: !1052)
!1062 = distinct !DILexicalBlock(scope: !1056, file: !3, line: 1330, column: 5)
!1063 = !DILocation(line: 1331, column: 11, scope: !1062, inlinedAt: !1052)
!1064 = !{!970, !697, i64 40}
!1065 = !DILocation(line: 1331, column: 54, scope: !1062, inlinedAt: !1052)
!1066 = !DILocation(line: 1331, column: 67, scope: !1062, inlinedAt: !1052)
!1067 = !{!1068, !971, i64 8}
!1068 = !{!"", !698, i64 0, !971, i64 8}
!1069 = !DILocation(line: 1333, column: 18, scope: !1062, inlinedAt: !1052)
!1070 = !DILocation(line: 1457, column: 11, scope: !1044, inlinedAt: !869)
!1071 = !DILocation(line: 1457, column: 36, scope: !1072, inlinedAt: !869)
!1072 = distinct !DILexicalBlock(scope: !1044, file: !3, line: 1457, column: 11)
!1073 = !DILocation(line: 1459, column: 11, scope: !1074, inlinedAt: !869)
!1074 = distinct !DILexicalBlock(scope: !1072, file: !3, line: 1458, column: 9)
!1075 = !DILocation(line: 1459, column: 11, scope: !1076, inlinedAt: !869)
!1076 = !DILexicalBlockFile(scope: !1074, file: !3, discriminator: 1)
!1077 = !DILocation(line: 1463, column: 11, scope: !1078, inlinedAt: !869)
!1078 = distinct !DILexicalBlock(scope: !1044, file: !3, line: 1463, column: 11)
!1079 = !DILocation(line: 1463, column: 11, scope: !1044, inlinedAt: !869)
!1080 = !DILocation(line: 1465, column: 19, scope: !1081, inlinedAt: !869)
!1081 = distinct !DILexicalBlock(scope: !1082, file: !3, line: 1465, column: 15)
!1082 = distinct !DILexicalBlock(scope: !1078, file: !3, line: 1464, column: 9)
!1083 = !{!970, !897, i64 48}
!1084 = !DILocation(line: 1465, column: 15, scope: !1082, inlinedAt: !869)
!1085 = !DILocation(line: 1467, column: 15, scope: !1086, inlinedAt: !869)
!1086 = distinct !DILexicalBlock(scope: !1081, file: !3, line: 1466, column: 13)
!1087 = !DILocation(line: 1467, column: 15, scope: !1088, inlinedAt: !869)
!1088 = !DILexicalBlockFile(scope: !1086, file: !3, discriminator: 1)
!1089 = !DILocation(line: 1472, column: 19, scope: !1090, inlinedAt: !869)
!1090 = distinct !DILexicalBlock(scope: !1082, file: !3, line: 1472, column: 15)
!1091 = !{!970, !897, i64 50}
!1092 = !DILocation(line: 1472, column: 15, scope: !1082, inlinedAt: !869)
!1093 = !DILocation(line: 1474, column: 15, scope: !1094, inlinedAt: !869)
!1094 = distinct !DILexicalBlock(scope: !1090, file: !3, line: 1473, column: 13)
!1095 = !DILocation(line: 1474, column: 15, scope: !1096, inlinedAt: !869)
!1096 = !DILexicalBlockFile(scope: !1094, file: !3, discriminator: 1)
!1097 = !DILocalVariable(name: "s1", arg: 1, scope: !1098, file: !3, line: 1166, type: !795)
!1098 = distinct !DISubprogram(name: "validate_case_classes", scope: !3, file: !3, line: 1166, type: !864, isLocal: true, isDefinition: true, scopeLine: 1167, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1099)
!1099 = !{!1097, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1114}
!1100 = !DILocalVariable(name: "s2", arg: 2, scope: !1098, file: !3, line: 1166, type: !795)
!1101 = !DILocalVariable(name: "n_upper", scope: !1098, file: !3, line: 1168, type: !73)
!1102 = !DILocalVariable(name: "n_lower", scope: !1098, file: !3, line: 1169, type: !73)
!1103 = !DILocalVariable(name: "i", scope: !1098, file: !3, line: 1170, type: !83)
!1104 = !DILocalVariable(name: "c1", scope: !1098, file: !3, line: 1171, type: !71)
!1105 = !DILocalVariable(name: "c2", scope: !1098, file: !3, line: 1172, type: !71)
!1106 = !DILocalVariable(name: "old_s1_len", scope: !1098, file: !3, line: 1173, type: !781)
!1107 = !DILocalVariable(name: "old_s2_len", scope: !1098, file: !3, line: 1174, type: !781)
!1108 = !DILocalVariable(name: "s1_tail", scope: !1098, file: !3, line: 1175, type: !760)
!1109 = !DILocalVariable(name: "s2_tail", scope: !1098, file: !3, line: 1176, type: !760)
!1110 = !DILocalVariable(name: "s1_new_element", scope: !1098, file: !3, line: 1177, type: !87)
!1111 = !DILocalVariable(name: "s2_new_element", scope: !1098, file: !3, line: 1178, type: !87)
!1112 = !DILocalVariable(name: "class_s1", scope: !1113, file: !3, line: 1196, type: !39)
!1113 = distinct !DILexicalBlock(scope: !1098, file: !3, line: 1195, column: 5)
!1114 = !DILocalVariable(name: "class_s2", scope: !1113, file: !3, line: 1196, type: !39)
!1115 = !DILocation(line: 1166, column: 42, scope: !1098, inlinedAt: !1116)
!1116 = distinct !DILocation(line: 1479, column: 11, scope: !1082, inlinedAt: !869)
!1117 = !DILocation(line: 1166, column: 64, scope: !1098, inlinedAt: !1116)
!1118 = !DILocation(line: 1168, column: 10, scope: !1098, inlinedAt: !1116)
!1119 = !DILocation(line: 1169, column: 10, scope: !1098, inlinedAt: !1116)
!1120 = !DILocation(line: 1171, column: 7, scope: !1098, inlinedAt: !1116)
!1121 = !DILocation(line: 1172, column: 7, scope: !1098, inlinedAt: !1116)
!1122 = !DILocation(line: 1173, column: 26, scope: !1098, inlinedAt: !1116)
!1123 = !DILocation(line: 1173, column: 9, scope: !1098, inlinedAt: !1116)
!1124 = !DILocation(line: 1174, column: 9, scope: !1098, inlinedAt: !1116)
!1125 = !DILocation(line: 1175, column: 38, scope: !1098, inlinedAt: !1116)
!1126 = !DILocation(line: 1176, column: 38, scope: !1098, inlinedAt: !1116)
!1127 = !DILocation(line: 1177, column: 8, scope: !1098, inlinedAt: !1116)
!1128 = !DILocation(line: 1178, column: 8, scope: !1098, inlinedAt: !1116)
!1129 = !DILocation(line: 1180, column: 12, scope: !1130, inlinedAt: !1116)
!1130 = distinct !DILexicalBlock(scope: !1098, file: !3, line: 1180, column: 7)
!1131 = !{!970, !897, i64 49}
!1132 = !DILocation(line: 1180, column: 7, scope: !1098, inlinedAt: !1116)
!1133 = !DILocation(line: 1170, column: 16, scope: !1098, inlinedAt: !1116)
!1134 = !DILocation(line: 1185, column: 11, scope: !1135, inlinedAt: !1116)
!1135 = distinct !DILexicalBlock(scope: !1136, file: !3, line: 1185, column: 11)
!1136 = distinct !DILexicalBlock(scope: !1137, file: !3, line: 1184, column: 5)
!1137 = distinct !DILexicalBlock(scope: !1138, file: !3, line: 1183, column: 3)
!1138 = distinct !DILexicalBlock(scope: !1098, file: !3, line: 1183, column: 3)
!1139 = !DILocation(line: 1183, column: 3, scope: !1140, inlinedAt: !1116)
!1140 = !DILexicalBlockFile(scope: !1138, file: !3, discriminator: 1)
!1141 = !DILocation(line: 1183, column: 29, scope: !1142, inlinedAt: !1116)
!1142 = !DILexicalBlockFile(scope: !1137, file: !3, discriminator: 2)
!1143 = !{!1144, !1144, i64 0}
!1144 = !{!"short", !698, i64 0}
!1145 = !DILocation(line: 1185, column: 11, scope: !1136, inlinedAt: !1116)
!1146 = !DILocation(line: 1187, column: 11, scope: !1136, inlinedAt: !1116)
!1147 = distinct !{!1147, !1148, !1149, !1150, !1151}
!1148 = !DILocation(line: 1183, column: 3, scope: !1138)
!1149 = !DILocation(line: 1189, column: 5, scope: !1138)
!1150 = !{!"llvm.loop.vectorize.width", i32 1}
!1151 = !{!"llvm.loop.interleave.count", i32 1}
!1152 = !DILocation(line: 1191, column: 7, scope: !1098, inlinedAt: !1116)
!1153 = !DILocation(line: 1191, column: 13, scope: !1098, inlinedAt: !1116)
!1154 = !DILocation(line: 1192, column: 7, scope: !1098, inlinedAt: !1116)
!1155 = !DILocation(line: 1192, column: 13, scope: !1098, inlinedAt: !1116)
!1156 = !DILocation(line: 1194, column: 3, scope: !1157, inlinedAt: !1116)
!1157 = !DILexicalBlockFile(scope: !1098, file: !3, discriminator: 3)
!1158 = !DILocation(line: 1196, column: 7, scope: !1113, inlinedAt: !1116)
!1159 = !DILocation(line: 1196, column: 30, scope: !1113, inlinedAt: !1116)
!1160 = !DILocation(line: 1198, column: 12, scope: !1113, inlinedAt: !1116)
!1161 = !DILocation(line: 1196, column: 40, scope: !1113, inlinedAt: !1116)
!1162 = !DILocation(line: 1199, column: 12, scope: !1113, inlinedAt: !1116)
!1163 = !DILocation(line: 1203, column: 11, scope: !1164, inlinedAt: !1116)
!1164 = distinct !DILexicalBlock(scope: !1113, file: !3, line: 1203, column: 11)
!1165 = !DILocation(line: 1203, column: 29, scope: !1166, inlinedAt: !1116)
!1166 = !DILexicalBlockFile(scope: !1164, file: !3, discriminator: 1)
!1167 = !DILocation(line: 1203, column: 38, scope: !1166, inlinedAt: !1116)
!1168 = !DILocation(line: 1203, column: 26, scope: !1164, inlinedAt: !1116)
!1169 = !DILocation(line: 1204, column: 16, scope: !1166, inlinedAt: !1116)
!1170 = !DILocation(line: 1204, column: 34, scope: !1171, inlinedAt: !1116)
!1171 = !DILexicalBlockFile(scope: !1164, file: !3, discriminator: 2)
!1172 = !DILocation(line: 1204, column: 43, scope: !1171, inlinedAt: !1116)
!1173 = !DILocation(line: 1204, column: 31, scope: !1166, inlinedAt: !1116)
!1174 = !DILocation(line: 1205, column: 9, scope: !1164, inlinedAt: !1116)
!1175 = !DILocation(line: 1205, column: 9, scope: !1166, inlinedAt: !1116)
!1176 = !DILocation(line: 1209, column: 20, scope: !1177, inlinedAt: !1116)
!1177 = distinct !DILexicalBlock(scope: !1113, file: !3, line: 1209, column: 11)
!1178 = !DILocation(line: 1209, column: 11, scope: !1113, inlinedAt: !1116)
!1179 = !{!698, !698, i64 0}
!1180 = !DILocation(line: 1214, column: 26, scope: !1181, inlinedAt: !1116)
!1181 = distinct !DILexicalBlock(scope: !1177, file: !3, line: 1210, column: 9)
!1182 = !DILocalVariable(name: "s", arg: 1, scope: !1183, file: !3, line: 994, type: !795)
!1183 = distinct !DISubprogram(name: "skip_construct", scope: !3, file: !3, line: 994, type: !858, isLocal: true, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1184)
!1184 = !{!1182}
!1185 = !DILocation(line: 994, column: 35, scope: !1183, inlinedAt: !1186)
!1186 = distinct !DILocation(line: 1211, column: 11, scope: !1181, inlinedAt: !1116)
!1187 = !DILocation(line: 996, column: 16, scope: !1183, inlinedAt: !1186)
!1188 = !DILocation(line: 996, column: 22, scope: !1183, inlinedAt: !1186)
!1189 = !DILocation(line: 996, column: 11, scope: !1183, inlinedAt: !1186)
!1190 = !DILocation(line: 997, column: 12, scope: !1183, inlinedAt: !1186)
!1191 = !DILocation(line: 994, column: 35, scope: !1183, inlinedAt: !1192)
!1192 = distinct !DILocation(line: 1212, column: 11, scope: !1181, inlinedAt: !1116)
!1193 = !DILocation(line: 996, column: 16, scope: !1183, inlinedAt: !1192)
!1194 = !DILocation(line: 996, column: 22, scope: !1183, inlinedAt: !1192)
!1195 = !DILocation(line: 996, column: 11, scope: !1183, inlinedAt: !1192)
!1196 = !DILocation(line: 997, column: 12, scope: !1183, inlinedAt: !1192)
!1197 = !DILocation(line: 1214, column: 35, scope: !1181, inlinedAt: !1116)
!1198 = !DILocation(line: 1214, column: 22, scope: !1199, inlinedAt: !1116)
!1199 = !DILexicalBlockFile(scope: !1181, file: !3, discriminator: 3)
!1200 = !DILocation(line: 1214, column: 68, scope: !1199, inlinedAt: !1116)
!1201 = !DILocation(line: 1215, column: 35, scope: !1181, inlinedAt: !1116)
!1202 = !DILocation(line: 1215, column: 26, scope: !1181, inlinedAt: !1116)
!1203 = !DILocation(line: 1215, column: 22, scope: !1199, inlinedAt: !1116)
!1204 = !DILocation(line: 1215, column: 68, scope: !1199, inlinedAt: !1116)
!1205 = !DILocation(line: 1216, column: 9, scope: !1181, inlinedAt: !1116)
!1206 = !DILocation(line: 1218, column: 28, scope: !1113, inlinedAt: !1116)
!1207 = !DILocation(line: 1219, column: 28, scope: !1113, inlinedAt: !1116)
!1208 = !DILocation(line: 1218, column: 34, scope: !1113, inlinedAt: !1116)
!1209 = !DILocation(line: 1218, column: 22, scope: !1113, inlinedAt: !1116)
!1210 = !DILocation(line: 1219, column: 34, scope: !1113, inlinedAt: !1116)
!1211 = !DILocation(line: 1219, column: 22, scope: !1113, inlinedAt: !1116)
!1212 = !DILocation(line: 1220, column: 5, scope: !1098, inlinedAt: !1116)
!1213 = !DILocation(line: 1194, column: 13, scope: !1214, inlinedAt: !1116)
!1214 = !DILexicalBlockFile(scope: !1098, file: !3, discriminator: 1)
!1215 = !DILocation(line: 1194, column: 25, scope: !1216, inlinedAt: !1116)
!1216 = !DILexicalBlockFile(scope: !1098, file: !3, discriminator: 2)
!1217 = !DILocation(line: 1194, column: 19, scope: !1214, inlinedAt: !1116)
!1218 = distinct !{!1218, !1219, !1220}
!1219 = !DILocation(line: 1194, column: 3, scope: !1098)
!1220 = !DILocation(line: 1220, column: 5, scope: !1098)
!1221 = !DILocation(line: 1222, column: 3, scope: !1222, inlinedAt: !1116)
!1222 = distinct !DILexicalBlock(scope: !1223, file: !3, line: 1222, column: 3)
!1223 = distinct !DILexicalBlock(scope: !1098, file: !3, line: 1222, column: 3)
!1224 = !DILocation(line: 1222, column: 3, scope: !1225, inlinedAt: !1116)
!1225 = !DILexicalBlockFile(scope: !1222, file: !3, discriminator: 1)
!1226 = !DILocation(line: 1222, column: 3, scope: !1227, inlinedAt: !1116)
!1227 = !DILexicalBlockFile(scope: !1223, file: !3, discriminator: 1)
!1228 = !DILocation(line: 1222, column: 3, scope: !1229, inlinedAt: !1116)
!1229 = !DILexicalBlockFile(scope: !1222, file: !3, discriminator: 3)
!1230 = !DILocation(line: 1224, column: 12, scope: !1098, inlinedAt: !1116)
!1231 = !DILocation(line: 1225, column: 12, scope: !1098, inlinedAt: !1116)
!1232 = !DILocation(line: 1226, column: 1, scope: !1098, inlinedAt: !1116)
!1233 = !DILocation(line: 1481, column: 32, scope: !1234, inlinedAt: !869)
!1234 = distinct !DILexicalBlock(scope: !1082, file: !3, line: 1481, column: 15)
!1235 = !DILocation(line: 1481, column: 19, scope: !1234, inlinedAt: !869)
!1236 = !DILocation(line: 1481, column: 26, scope: !1234, inlinedAt: !869)
!1237 = !DILocation(line: 1483, column: 20, scope: !1238, inlinedAt: !869)
!1238 = distinct !DILexicalBlock(scope: !1239, file: !3, line: 1483, column: 19)
!1239 = distinct !DILexicalBlock(scope: !1234, file: !3, line: 1482, column: 13)
!1240 = !DILocation(line: 1481, column: 15, scope: !1082, inlinedAt: !869)
!1241 = !DILocation(line: 1488, column: 34, scope: !1242, inlinedAt: !869)
!1242 = distinct !DILexicalBlock(scope: !1243, file: !3, line: 1488, column: 23)
!1243 = distinct !DILexicalBlock(scope: !1238, file: !3, line: 1484, column: 17)
!1244 = !DILocation(line: 1488, column: 23, scope: !1243, inlinedAt: !869)
!1245 = !DILocation(line: 1489, column: 21, scope: !1242, inlinedAt: !869)
!1246 = !DILocation(line: 1489, column: 21, scope: !1247, inlinedAt: !869)
!1247 = !DILexicalBlockFile(scope: !1242, file: !3, discriminator: 1)
!1248 = !DILocalVariable(name: "s1", arg: 1, scope: !1249, file: !3, line: 1370, type: !1252)
!1249 = distinct !DISubprogram(name: "string2_extend", scope: !3, file: !3, line: 1370, type: !1250, isLocal: true, isDefinition: true, scopeLine: 1371, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1254)
!1250 = !DISubroutineType(types: !1251)
!1251 = !{null, !1252, !795}
!1252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1253, size: 64)
!1253 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !757)
!1254 = !{!1248, !1255, !1256, !1257}
!1255 = !DILocalVariable(name: "s2", arg: 2, scope: !1249, file: !3, line: 1370, type: !795)
!1256 = !DILocalVariable(name: "p", scope: !1249, file: !3, line: 1372, type: !760)
!1257 = !DILocalVariable(name: "char_to_repeat", scope: !1249, file: !3, line: 1373, type: !80)
!1258 = !DILocation(line: 1370, column: 41, scope: !1249, inlinedAt: !1259)
!1259 = distinct !DILocation(line: 1491, column: 19, scope: !1243, inlinedAt: !869)
!1260 = !DILocation(line: 1370, column: 63, scope: !1249, inlinedAt: !1259)
!1261 = !DILocation(line: 1375, column: 3, scope: !1262, inlinedAt: !1259)
!1262 = distinct !DILexicalBlock(scope: !1263, file: !3, line: 1375, column: 3)
!1263 = distinct !DILexicalBlock(scope: !1249, file: !3, line: 1375, column: 3)
!1264 = !DILocation(line: 1375, column: 3, scope: !1263, inlinedAt: !1259)
!1265 = !DILocation(line: 1375, column: 3, scope: !1266, inlinedAt: !1259)
!1266 = !DILexicalBlockFile(scope: !1262, file: !3, discriminator: 2)
!1267 = !DILocation(line: 1372, column: 24, scope: !1249, inlinedAt: !1259)
!1268 = !DILocation(line: 1380, column: 14, scope: !1249, inlinedAt: !1259)
!1269 = !{!977, !698, i64 0}
!1270 = !DILocation(line: 1380, column: 3, scope: !1249, inlinedAt: !1259)
!1271 = !DILocation(line: 1383, column: 29, scope: !1272, inlinedAt: !1259)
!1272 = distinct !DILexicalBlock(scope: !1249, file: !3, line: 1381, column: 5)
!1273 = !DILocation(line: 1384, column: 7, scope: !1272, inlinedAt: !1259)
!1274 = !DILocation(line: 1386, column: 27, scope: !1272, inlinedAt: !1259)
!1275 = !DILocation(line: 1386, column: 29, scope: !1272, inlinedAt: !1259)
!1276 = !DILocation(line: 1386, column: 35, scope: !1272, inlinedAt: !1259)
!1277 = !DILocation(line: 1387, column: 7, scope: !1272, inlinedAt: !1259)
!1278 = !DILocation(line: 1393, column: 7, scope: !1272, inlinedAt: !1259)
!1279 = !DILocation(line: 1393, column: 7, scope: !1280, inlinedAt: !1259)
!1280 = !DILexicalBlockFile(scope: !1272, file: !3, discriminator: 1)
!1281 = !DILocation(line: 1398, column: 43, scope: !1272, inlinedAt: !1259)
!1282 = !DILocation(line: 1399, column: 7, scope: !1272, inlinedAt: !1259)
!1283 = !DILocation(line: 1404, column: 7, scope: !1272, inlinedAt: !1259)
!1284 = !DILocation(line: 1407, column: 7, scope: !1272, inlinedAt: !1259)
!1285 = !DILocation(line: 1373, column: 17, scope: !1249, inlinedAt: !1259)
!1286 = !DILocation(line: 1410, column: 56, scope: !1249, inlinedAt: !1259)
!1287 = !DILocalVariable(name: "list", arg: 1, scope: !1288, file: !3, line: 711, type: !795)
!1288 = distinct !DISubprogram(name: "append_repeated_char", scope: !3, file: !3, line: 711, type: !1289, isLocal: true, isDefinition: true, scopeLine: 713, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1291)
!1289 = !DISubroutineType(types: !1290)
!1290 = !{null, !795, !80, !781}
!1291 = !{!1287, !1292, !1293, !1294}
!1292 = !DILocalVariable(name: "the_char", arg: 2, scope: !1288, file: !3, line: 711, type: !80)
!1293 = !DILocalVariable(name: "repeat_count", arg: 3, scope: !1288, file: !3, line: 712, type: !781)
!1294 = !DILocalVariable(name: "new", scope: !1288, file: !3, line: 714, type: !760)
!1295 = !DILocation(line: 711, column: 41, scope: !1288, inlinedAt: !1296)
!1296 = distinct !DILocation(line: 1410, column: 3, scope: !1249, inlinedAt: !1259)
!1297 = !DILocation(line: 711, column: 61, scope: !1288, inlinedAt: !1296)
!1298 = !DILocation(line: 712, column: 29, scope: !1288, inlinedAt: !1296)
!1299 = !DILocation(line: 714, column: 30, scope: !1288, inlinedAt: !1296)
!1300 = !DILocation(line: 715, column: 8, scope: !1288, inlinedAt: !1296)
!1301 = !DILocation(line: 715, column: 13, scope: !1288, inlinedAt: !1296)
!1302 = !DILocation(line: 716, column: 8, scope: !1288, inlinedAt: !1296)
!1303 = !DILocation(line: 716, column: 13, scope: !1288, inlinedAt: !1296)
!1304 = !DILocation(line: 717, column: 8, scope: !1288, inlinedAt: !1296)
!1305 = !DILocation(line: 717, column: 42, scope: !1288, inlinedAt: !1296)
!1306 = !{!1068, !698, i64 0}
!1307 = !DILocation(line: 718, column: 24, scope: !1288, inlinedAt: !1296)
!1308 = !DILocation(line: 718, column: 37, scope: !1288, inlinedAt: !1296)
!1309 = !DILocation(line: 719, column: 3, scope: !1310, inlinedAt: !1296)
!1310 = distinct !DILexicalBlock(scope: !1311, file: !3, line: 719, column: 3)
!1311 = distinct !DILexicalBlock(scope: !1288, file: !3, line: 719, column: 3)
!1312 = !DILocation(line: 719, column: 3, scope: !1311, inlinedAt: !1296)
!1313 = !DILocation(line: 719, column: 3, scope: !1314, inlinedAt: !1296)
!1314 = !DILexicalBlockFile(scope: !1310, file: !3, discriminator: 2)
!1315 = !DILocation(line: 720, column: 15, scope: !1288, inlinedAt: !1296)
!1316 = !DILocation(line: 720, column: 20, scope: !1288, inlinedAt: !1296)
!1317 = !DILocation(line: 721, column: 14, scope: !1288, inlinedAt: !1296)
!1318 = !DILocation(line: 1411, column: 20, scope: !1249, inlinedAt: !1259)
!1319 = !DILocation(line: 1411, column: 14, scope: !1249, inlinedAt: !1259)
!1320 = !DILocation(line: 1492, column: 17, scope: !1243, inlinedAt: !869)
!1321 = !DILocation(line: 1496, column: 39, scope: !1322, inlinedAt: !869)
!1322 = !DILexicalBlockFile(scope: !1323, file: !3, discriminator: 1)
!1323 = distinct !DILexicalBlock(scope: !1082, file: !3, line: 1495, column: 15)
!1324 = !DILocation(line: 1496, column: 25, scope: !1322, inlinedAt: !869)
!1325 = !DILocation(line: 1495, column: 15, scope: !1323, inlinedAt: !869)
!1326 = !DILocation(line: 1495, column: 26, scope: !1323, inlinedAt: !869)
!1327 = !DILocation(line: 1495, column: 33, scope: !1322, inlinedAt: !869)
!1328 = !DILocation(line: 1496, column: 15, scope: !1323, inlinedAt: !869)
!1329 = !DILocation(line: 1496, column: 32, scope: !1322, inlinedAt: !869)
!1330 = !DILocation(line: 1496, column: 46, scope: !1322, inlinedAt: !869)
!1331 = !DILocalVariable(name: "s", arg: 1, scope: !1332, file: !3, line: 1419, type: !795)
!1332 = distinct !DISubprogram(name: "homogeneous_spec_list", scope: !3, file: !3, line: 1419, type: !1333, isLocal: true, isDefinition: true, scopeLine: 1420, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1335)
!1333 = !DISubroutineType(types: !1334)
!1334 = !{!87, !795}
!1335 = !{!1331, !1336, !1337}
!1336 = !DILocalVariable(name: "b", scope: !1332, file: !3, line: 1421, type: !71)
!1337 = !DILocalVariable(name: "c", scope: !1332, file: !3, line: 1421, type: !71)
!1338 = !DILocation(line: 1419, column: 42, scope: !1332, inlinedAt: !1339)
!1339 = distinct !DILocation(line: 1496, column: 49, scope: !1340, inlinedAt: !869)
!1340 = !DILexicalBlockFile(scope: !1323, file: !3, discriminator: 2)
!1341 = !DILocation(line: 1423, column: 6, scope: !1332, inlinedAt: !1339)
!1342 = !DILocation(line: 1423, column: 12, scope: !1332, inlinedAt: !1339)
!1343 = !DILocation(line: 1425, column: 12, scope: !1344, inlinedAt: !1339)
!1344 = distinct !DILexicalBlock(scope: !1332, file: !3, line: 1425, column: 7)
!1345 = !DILocation(line: 1421, column: 7, scope: !1332, inlinedAt: !1339)
!1346 = !DILocation(line: 1425, column: 32, scope: !1344, inlinedAt: !1339)
!1347 = !DILocation(line: 1425, column: 7, scope: !1332, inlinedAt: !1339)
!1348 = !DILocation(line: 1428, column: 15, scope: !1349, inlinedAt: !1339)
!1349 = !DILexicalBlockFile(scope: !1332, file: !3, discriminator: 1)
!1350 = !DILocation(line: 1421, column: 10, scope: !1332, inlinedAt: !1339)
!1351 = !DILocation(line: 1428, column: 35, scope: !1349, inlinedAt: !1339)
!1352 = !DILocation(line: 1428, column: 3, scope: !1349, inlinedAt: !1339)
!1353 = !DILocation(line: 1429, column: 11, scope: !1354, inlinedAt: !1339)
!1354 = distinct !DILexicalBlock(scope: !1332, file: !3, line: 1429, column: 9)
!1355 = !DILocation(line: 1429, column: 9, scope: !1332, inlinedAt: !1339)
!1356 = distinct !{!1356, !1357, !1358}
!1357 = !DILocation(line: 1428, column: 3, scope: !1332)
!1358 = !DILocation(line: 1430, column: 14, scope: !1332)
!1359 = !DILocation(line: 1498, column: 15, scope: !1360, inlinedAt: !869)
!1360 = distinct !DILexicalBlock(scope: !1323, file: !3, line: 1497, column: 13)
!1361 = !DILocation(line: 1498, column: 15, scope: !1362, inlinedAt: !869)
!1362 = !DILexicalBlockFile(scope: !1360, file: !3, discriminator: 1)
!1363 = !DILocation(line: 1506, column: 40, scope: !1364, inlinedAt: !869)
!1364 = distinct !DILexicalBlock(scope: !1365, file: !3, line: 1506, column: 15)
!1365 = distinct !DILexicalBlock(scope: !1078, file: !3, line: 1505, column: 9)
!1366 = !DILocation(line: 1506, column: 15, scope: !1365, inlinedAt: !869)
!1367 = !DILocation(line: 1507, column: 13, scope: !1364, inlinedAt: !869)
!1368 = !DILocation(line: 1507, column: 13, scope: !1369, inlinedAt: !869)
!1369 = !DILexicalBlockFile(scope: !1364, file: !3, discriminator: 1)
!1370 = !DILocation(line: 40, column: 23, scope: !1371, inlinedAt: !1378)
!1371 = distinct !DISubprogram(name: "xset_binary_mode", scope: !1372, file: !1372, line: 40, type: !1373, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1375)
!1372 = !DIFile(filename: "./lib/xbinary-io.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1373 = !DISubroutineType(types: !1374)
!1374 = !{null, !71, !71}
!1375 = !{!1376, !1377}
!1376 = !DILocalVariable(name: "fd", arg: 1, scope: !1371, file: !1372, line: 40, type: !71)
!1377 = !DILocalVariable(name: "mode", arg: 2, scope: !1371, file: !1372, line: 40, type: !71)
!1378 = distinct !DILocation(line: 1789, column: 3, scope: !745)
!1379 = !DILocation(line: 40, column: 31, scope: !1371, inlinedAt: !1378)
!1380 = !DILocation(line: 40, column: 23, scope: !1371, inlinedAt: !1381)
!1381 = distinct !DILocation(line: 1790, column: 3, scope: !745)
!1382 = !DILocation(line: 40, column: 31, scope: !1371, inlinedAt: !1381)
!1383 = !DILocation(line: 1791, column: 12, scope: !745)
!1384 = !DILocation(line: 1791, column: 3, scope: !745)
!1385 = !DILocation(line: 1793, column: 7, scope: !801)
!1386 = !DILocation(line: 1793, column: 42, scope: !1387)
!1387 = !DILexicalBlockFile(scope: !801, file: !3, discriminator: 1)
!1388 = !DILocation(line: 1793, column: 23, scope: !801)
!1389 = !DILocation(line: 1795, column: 27, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !801, file: !3, line: 1794, column: 5)
!1391 = !DILocalVariable(name: "s", arg: 1, scope: !1392, file: !3, line: 1678, type: !795)
!1392 = distinct !DISubprogram(name: "set_initialize", scope: !3, file: !3, line: 1678, type: !1393, isLocal: true, isDefinition: true, scopeLine: 1679, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1395)
!1393 = !DISubroutineType(types: !1394)
!1394 = !{null, !795, !87, !808}
!1395 = !{!1391, !1396, !1397, !1398, !1399}
!1396 = !DILocalVariable(name: "complement_this_set", arg: 2, scope: !1392, file: !3, line: 1678, type: !87)
!1397 = !DILocalVariable(name: "in_set", arg: 3, scope: !1392, file: !3, line: 1678, type: !808)
!1398 = !DILocalVariable(name: "c", scope: !1392, file: !3, line: 1680, type: !71)
!1399 = !DILocalVariable(name: "i", scope: !1400, file: !3, line: 1686, type: !73)
!1400 = distinct !DILexicalBlock(scope: !1401, file: !3, line: 1686, column: 5)
!1401 = distinct !DILexicalBlock(scope: !1392, file: !3, line: 1685, column: 7)
!1402 = !DILocation(line: 1678, column: 35, scope: !1392, inlinedAt: !1403)
!1403 = distinct !DILocation(line: 1795, column: 7, scope: !1390)
!1404 = !DIExpression(DW_OP_LLVM_fragment, 0, 1)
!1405 = !DILocation(line: 1678, column: 43, scope: !1392, inlinedAt: !1403)
!1406 = !DILocation(line: 1682, column: 6, scope: !1392, inlinedAt: !1403)
!1407 = !DILocation(line: 1682, column: 12, scope: !1392, inlinedAt: !1403)
!1408 = !DILocation(line: 1683, column: 15, scope: !1409, inlinedAt: !1403)
!1409 = !DILexicalBlockFile(scope: !1392, file: !3, discriminator: 1)
!1410 = !DILocation(line: 1680, column: 7, scope: !1392, inlinedAt: !1403)
!1411 = !DILocation(line: 1683, column: 35, scope: !1409, inlinedAt: !1403)
!1412 = !DILocation(line: 1683, column: 3, scope: !1409, inlinedAt: !1403)
!1413 = !DILocation(line: 1684, column: 5, scope: !1392, inlinedAt: !1403)
!1414 = !DILocation(line: 1684, column: 15, scope: !1392, inlinedAt: !1403)
!1415 = distinct !{!1415, !1416, !1417}
!1416 = !DILocation(line: 1683, column: 3, scope: !1392)
!1417 = !DILocation(line: 1684, column: 17, scope: !1392)
!1418 = !DILocation(line: 1685, column: 7, scope: !1392, inlinedAt: !1403)
!1419 = !DILocation(line: 1687, column: 21, scope: !1420, inlinedAt: !1403)
!1420 = distinct !DILexicalBlock(scope: !1400, file: !3, line: 1686, column: 5)
!1421 = !DILocation(line: 1687, column: 17, scope: !1420, inlinedAt: !1403)
!1422 = !DILocation(line: 1796, column: 7, scope: !1390)
!1423 = !DILocation(line: 1797, column: 5, scope: !1390)
!1424 = !DILocation(line: 1798, column: 12, scope: !800)
!1425 = !DILocation(line: 1798, column: 19, scope: !800)
!1426 = !DILocation(line: 1800, column: 27, scope: !799)
!1427 = !DILocation(line: 1678, column: 35, scope: !1392, inlinedAt: !1428)
!1428 = distinct !DILocation(line: 1800, column: 7, scope: !799)
!1429 = !DILocation(line: 1678, column: 43, scope: !1392, inlinedAt: !1428)
!1430 = !DILocation(line: 1682, column: 6, scope: !1392, inlinedAt: !1428)
!1431 = !DILocation(line: 1682, column: 12, scope: !1392, inlinedAt: !1428)
!1432 = !DILocation(line: 1683, column: 15, scope: !1409, inlinedAt: !1428)
!1433 = !DILocation(line: 1680, column: 7, scope: !1392, inlinedAt: !1428)
!1434 = !DILocation(line: 1683, column: 35, scope: !1409, inlinedAt: !1428)
!1435 = !DILocation(line: 1683, column: 3, scope: !1409, inlinedAt: !1428)
!1436 = !DILocation(line: 1684, column: 5, scope: !1392, inlinedAt: !1428)
!1437 = !DILocation(line: 1684, column: 15, scope: !1392, inlinedAt: !1428)
!1438 = !DILocation(line: 1685, column: 7, scope: !1392, inlinedAt: !1428)
!1439 = !DILocation(line: 1687, column: 21, scope: !1420, inlinedAt: !1428)
!1440 = !DILocation(line: 1687, column: 17, scope: !1420, inlinedAt: !1428)
!1441 = !DILocation(line: 1804, column: 23, scope: !798)
!1442 = !DILocation(line: 1804, column: 18, scope: !798)
!1443 = !DILocation(line: 1805, column: 18, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !798, file: !3, line: 1805, column: 15)
!1445 = !DILocation(line: 1805, column: 15, scope: !798)
!1446 = !DILocation(line: 1807, column: 15, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !798, file: !3, line: 1807, column: 15)
!1448 = !DILocation(line: 1807, column: 46, scope: !1447)
!1449 = !DILocation(line: 1807, column: 15, scope: !798)
!1450 = !DILocation(line: 1808, column: 13, scope: !1447)
!1451 = !DILocation(line: 1808, column: 13, scope: !1452)
!1452 = !DILexicalBlockFile(scope: !1447, file: !3, discriminator: 1)
!1453 = !DILocation(line: 1808, column: 13, scope: !1454)
!1454 = !DILexicalBlockFile(scope: !1447, file: !3, discriminator: 2)
!1455 = !DILocation(line: 1811, column: 38, scope: !1456)
!1456 = !DILexicalBlockFile(scope: !807, file: !3, discriminator: 1)
!1457 = !DILocation(line: 1811, column: 28, scope: !807)
!1458 = !DILocation(line: 1813, column: 27, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !807, file: !3, line: 1812, column: 5)
!1460 = !DILocation(line: 1678, column: 35, scope: !1392, inlinedAt: !1461)
!1461 = distinct !DILocation(line: 1813, column: 7, scope: !1459)
!1462 = !DILocation(line: 1678, column: 43, scope: !1392, inlinedAt: !1461)
!1463 = !DILocation(line: 1682, column: 6, scope: !1392, inlinedAt: !1461)
!1464 = !DILocation(line: 1682, column: 12, scope: !1392, inlinedAt: !1461)
!1465 = !DILocation(line: 1683, column: 15, scope: !1409, inlinedAt: !1461)
!1466 = !DILocation(line: 1680, column: 7, scope: !1392, inlinedAt: !1461)
!1467 = !DILocation(line: 1683, column: 35, scope: !1409, inlinedAt: !1461)
!1468 = !DILocation(line: 1683, column: 3, scope: !1409, inlinedAt: !1461)
!1469 = !DILocation(line: 1684, column: 5, scope: !1392, inlinedAt: !1461)
!1470 = !DILocation(line: 1684, column: 15, scope: !1392, inlinedAt: !1461)
!1471 = !DILocation(line: 1685, column: 7, scope: !1392, inlinedAt: !1461)
!1472 = !DILocation(line: 1687, column: 21, scope: !1420, inlinedAt: !1461)
!1473 = !DILocation(line: 1687, column: 17, scope: !1420, inlinedAt: !1461)
!1474 = !DILocation(line: 1678, column: 35, scope: !1392, inlinedAt: !1475)
!1475 = distinct !DILocation(line: 1814, column: 7, scope: !1459)
!1476 = !DILocation(line: 1678, column: 43, scope: !1392, inlinedAt: !1475)
!1477 = !DILocation(line: 1682, column: 6, scope: !1392, inlinedAt: !1475)
!1478 = !DILocation(line: 1682, column: 12, scope: !1392, inlinedAt: !1475)
!1479 = !DILocation(line: 1683, column: 15, scope: !1409, inlinedAt: !1475)
!1480 = !DILocation(line: 1680, column: 7, scope: !1392, inlinedAt: !1475)
!1481 = !DILocation(line: 1683, column: 35, scope: !1409, inlinedAt: !1475)
!1482 = !DILocation(line: 1683, column: 3, scope: !1409, inlinedAt: !1475)
!1483 = !DILocation(line: 1684, column: 5, scope: !1392, inlinedAt: !1475)
!1484 = !DILocation(line: 1684, column: 15, scope: !1392, inlinedAt: !1475)
!1485 = !DILocation(line: 1815, column: 7, scope: !1459)
!1486 = !DILocation(line: 1816, column: 5, scope: !1459)
!1487 = !DILocation(line: 1817, column: 12, scope: !806)
!1488 = !DILocation(line: 1817, column: 12, scope: !807)
!1489 = !DILocation(line: 1819, column: 11, scope: !804)
!1490 = !DILocation(line: 1819, column: 11, scope: !805)
!1491 = !DILocation(line: 1678, column: 35, scope: !1392, inlinedAt: !1492)
!1492 = distinct !DILocation(line: 1823, column: 11, scope: !803)
!1493 = !DILocation(line: 1678, column: 43, scope: !1392, inlinedAt: !1492)
!1494 = !DILocation(line: 1682, column: 6, scope: !1392, inlinedAt: !1492)
!1495 = !DILocation(line: 1682, column: 12, scope: !1392, inlinedAt: !1492)
!1496 = !DILocation(line: 1683, column: 15, scope: !1409, inlinedAt: !1492)
!1497 = !DILocation(line: 1680, column: 7, scope: !1392, inlinedAt: !1492)
!1498 = !DILocation(line: 1683, column: 35, scope: !1409, inlinedAt: !1492)
!1499 = !DILocation(line: 1683, column: 3, scope: !1409, inlinedAt: !1492)
!1500 = !DILocation(line: 1684, column: 5, scope: !1392, inlinedAt: !1492)
!1501 = !DILocation(line: 1684, column: 15, scope: !1392, inlinedAt: !1492)
!1502 = !DILocation(line: 1824, column: 15, scope: !803)
!1503 = !DILocation(line: 1824, column: 21, scope: !803)
!1504 = !DILocation(line: 1825, column: 20, scope: !810)
!1505 = !DILocation(line: 1825, column: 11, scope: !1506)
!1506 = !DILexicalBlockFile(scope: !810, file: !3, discriminator: 1)
!1507 = !DILocation(line: 1826, column: 22, scope: !1508)
!1508 = distinct !DILexicalBlock(scope: !810, file: !3, line: 1825, column: 11)
!1509 = !DILocation(line: 1829, column: 20, scope: !815)
!1510 = !DILocation(line: 1829, column: 19, scope: !816)
!1511 = !DILocation(line: 1831, column: 28, scope: !814)
!1512 = !DILocation(line: 1831, column: 23, scope: !814)
!1513 = !DILocation(line: 1832, column: 19, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !1515, file: !3, line: 1832, column: 19)
!1515 = distinct !DILexicalBlock(scope: !814, file: !3, line: 1832, column: 19)
!1516 = !DILocation(line: 1832, column: 19, scope: !1517)
!1517 = !DILexicalBlockFile(scope: !1514, file: !3, discriminator: 1)
!1518 = !DILocation(line: 1832, column: 19, scope: !1519)
!1519 = !DILexicalBlockFile(scope: !1514, file: !3, discriminator: 3)
!1520 = !DILocation(line: 1833, column: 23, scope: !814)
!1521 = !DILocation(line: 1839, column: 30, scope: !814)
!1522 = !DILocation(line: 1839, column: 19, scope: !814)
!1523 = !DILocation(line: 1839, column: 28, scope: !814)
!1524 = !DILocation(line: 1827, column: 41, scope: !1525)
!1525 = !DILexicalBlockFile(scope: !817, file: !3, discriminator: 3)
!1526 = !DILocation(line: 1827, column: 29, scope: !1527)
!1527 = !DILexicalBlockFile(scope: !817, file: !3, discriminator: 1)
!1528 = !DILocation(line: 1827, column: 11, scope: !1529)
!1529 = !DILexicalBlockFile(scope: !812, file: !3, discriminator: 1)
!1530 = distinct !{!1530, !1531, !1532}
!1531 = !DILocation(line: 1827, column: 11, scope: !812)
!1532 = !DILocation(line: 1841, column: 13, scope: !812)
!1533 = !DILocation(line: 1846, column: 11, scope: !819)
!1534 = !DILocation(line: 1847, column: 11, scope: !819)
!1535 = !DILocation(line: 1849, column: 20, scope: !824)
!1536 = !DILocation(line: 1849, column: 11, scope: !1537)
!1537 = !DILexicalBlockFile(scope: !824, file: !3, discriminator: 1)
!1538 = !DILocation(line: 1850, column: 22, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !824, file: !3, line: 1849, column: 11)
!1540 = !DILocation(line: 1851, column: 15, scope: !819)
!1541 = !DILocation(line: 1851, column: 21, scope: !819)
!1542 = !DILocation(line: 1852, column: 15, scope: !819)
!1543 = !DILocation(line: 1853, column: 11, scope: !819)
!1544 = !DILocation(line: 1846, column: 34, scope: !819)
!1545 = !DILocation(line: 1855, column: 20, scope: !829)
!1546 = !DILocation(line: 1845, column: 15, scope: !819)
!1547 = !DILocation(line: 1847, column: 34, scope: !819)
!1548 = !DILocation(line: 1856, column: 20, scope: !829)
!1549 = !DILocation(line: 1845, column: 19, scope: !819)
!1550 = !DILocation(line: 1858, column: 19, scope: !828)
!1551 = !DILocation(line: 1858, column: 28, scope: !828)
!1552 = !DILocation(line: 1858, column: 43, scope: !1553)
!1553 = !DILexicalBlockFile(scope: !828, file: !3, discriminator: 1)
!1554 = !DILocation(line: 1858, column: 52, scope: !1553)
!1555 = !DILocation(line: 1858, column: 40, scope: !828)
!1556 = !DILocation(line: 1860, column: 28, scope: !826)
!1557 = !DILocation(line: 1861, column: 25, scope: !832)
!1558 = !DILocation(line: 1860, column: 19, scope: !1559)
!1559 = !DILexicalBlockFile(scope: !826, file: !3, discriminator: 1)
!1560 = !DILocation(line: 1861, column: 25, scope: !833)
!1561 = !DILocalVariable(name: "__c", arg: 1, scope: !1562, file: !45, line: 221, type: !71)
!1562 = distinct !DISubprogram(name: "toupper", scope: !45, file: !45, line: 221, type: !1563, isDefinition: true, scopeLine: 222, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1565)
!1563 = !DISubroutineType(types: !1564)
!1564 = !{!71, !71}
!1565 = !{!1561}
!1566 = !DILocation(line: 221, column: 1, scope: !1562, inlinedAt: !1567)
!1567 = distinct !DILocation(line: 1862, column: 34, scope: !1568)
!1568 = distinct !DILexicalBlock(scope: !1569, file: !3, line: 1862, column: 34)
!1569 = distinct !DILexicalBlock(scope: !1570, file: !3, line: 1862, column: 34)
!1570 = distinct !DILexicalBlock(scope: !831, file: !3, line: 1862, column: 34)
!1571 = !DILocation(line: 223, column: 39, scope: !1572, inlinedAt: !1567)
!1572 = !DILexicalBlockFile(scope: !1562, file: !45, discriminator: 2)
!1573 = !DILocation(line: 223, column: 38, scope: !1572, inlinedAt: !1567)
!1574 = !DILocation(line: 223, column: 37, scope: !1572, inlinedAt: !1567)
!1575 = !DILocation(line: 1862, column: 34, scope: !831)
!1576 = !DILocation(line: 1862, column: 34, scope: !832)
!1577 = !DILocation(line: 1862, column: 23, scope: !832)
!1578 = !DILocation(line: 1862, column: 32, scope: !832)
!1579 = !DILocation(line: 1860, column: 49, scope: !1580)
!1580 = !DILexicalBlockFile(scope: !833, file: !3, discriminator: 3)
!1581 = !DILocation(line: 1860, column: 37, scope: !1582)
!1582 = !DILexicalBlockFile(scope: !833, file: !3, discriminator: 1)
!1583 = distinct !{!1583, !1584, !1585}
!1584 = !DILocation(line: 1860, column: 19, scope: !826)
!1585 = !DILocation(line: 1862, column: 34, scope: !826)
!1586 = !DILocation(line: 1864, column: 33, scope: !837)
!1587 = !DILocation(line: 1864, column: 57, scope: !1588)
!1588 = !DILexicalBlockFile(scope: !837, file: !3, discriminator: 1)
!1589 = !DILocation(line: 1864, column: 45, scope: !837)
!1590 = !DILocation(line: 1866, column: 28, scope: !835)
!1591 = !DILocation(line: 1867, column: 25, scope: !840)
!1592 = !DILocation(line: 1866, column: 19, scope: !1593)
!1593 = !DILexicalBlockFile(scope: !835, file: !3, discriminator: 1)
!1594 = !DILocation(line: 1867, column: 25, scope: !841)
!1595 = !DILocalVariable(name: "__c", arg: 1, scope: !1596, file: !45, line: 215, type: !71)
!1596 = distinct !DISubprogram(name: "tolower", scope: !45, file: !45, line: 215, type: !1563, isDefinition: true, scopeLine: 216, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1597)
!1597 = !{!1595}
!1598 = !DILocation(line: 215, column: 1, scope: !1596, inlinedAt: !1599)
!1599 = distinct !DILocation(line: 1868, column: 34, scope: !1600)
!1600 = distinct !DILexicalBlock(scope: !1601, file: !3, line: 1868, column: 34)
!1601 = distinct !DILexicalBlock(scope: !1602, file: !3, line: 1868, column: 34)
!1602 = distinct !DILexicalBlock(scope: !839, file: !3, line: 1868, column: 34)
!1603 = !DILocation(line: 217, column: 39, scope: !1604, inlinedAt: !1599)
!1604 = !DILexicalBlockFile(scope: !1596, file: !45, discriminator: 2)
!1605 = !DILocation(line: 217, column: 38, scope: !1604, inlinedAt: !1599)
!1606 = !DILocation(line: 217, column: 37, scope: !1604, inlinedAt: !1599)
!1607 = !DILocation(line: 1868, column: 34, scope: !839)
!1608 = !DILocation(line: 1868, column: 34, scope: !840)
!1609 = !DILocation(line: 1868, column: 23, scope: !840)
!1610 = !DILocation(line: 1868, column: 32, scope: !840)
!1611 = !DILocation(line: 1866, column: 49, scope: !1612)
!1612 = !DILexicalBlockFile(scope: !841, file: !3, discriminator: 3)
!1613 = !DILocation(line: 1866, column: 37, scope: !1614)
!1614 = !DILexicalBlockFile(scope: !841, file: !3, discriminator: 1)
!1615 = distinct !{!1615, !1616, !1617}
!1616 = !DILocation(line: 1866, column: 19, scope: !835)
!1617 = !DILocation(line: 1868, column: 34, scope: !835)
!1618 = !DILocation(line: 1873, column: 26, scope: !1619)
!1619 = distinct !DILexicalBlock(scope: !1620, file: !3, line: 1873, column: 23)
!1620 = distinct !DILexicalBlock(scope: !837, file: !3, line: 1871, column: 17)
!1621 = !DILocation(line: 1873, column: 38, scope: !1622)
!1622 = !DILexicalBlockFile(scope: !1619, file: !3, discriminator: 1)
!1623 = !DILocation(line: 1873, column: 32, scope: !1619)
!1624 = !DILocation(line: 1875, column: 31, scope: !1620)
!1625 = !DILocation(line: 1875, column: 19, scope: !1620)
!1626 = !DILocation(line: 1875, column: 29, scope: !1620)
!1627 = !DILocation(line: 1879, column: 28, scope: !1628)
!1628 = distinct !DILexicalBlock(scope: !829, file: !3, line: 1879, column: 19)
!1629 = !DILocation(line: 1879, column: 19, scope: !829)
!1630 = distinct !{!1630, !1543, !1631}
!1631 = !DILocation(line: 1884, column: 13, scope: !819)
!1632 = !DILocation(line: 994, column: 35, scope: !1183, inlinedAt: !1633)
!1633 = distinct !DILocation(line: 1881, column: 19, scope: !1634)
!1634 = distinct !DILexicalBlock(scope: !1628, file: !3, line: 1880, column: 17)
!1635 = !DILocation(line: 996, column: 16, scope: !1183, inlinedAt: !1633)
!1636 = !DILocation(line: 996, column: 22, scope: !1183, inlinedAt: !1633)
!1637 = !DILocation(line: 996, column: 11, scope: !1183, inlinedAt: !1633)
!1638 = !DILocation(line: 997, column: 12, scope: !1183, inlinedAt: !1633)
!1639 = !DILocation(line: 994, column: 35, scope: !1183, inlinedAt: !1640)
!1640 = distinct !DILocation(line: 1882, column: 19, scope: !1634)
!1641 = !DILocation(line: 996, column: 16, scope: !1183, inlinedAt: !1640)
!1642 = !DILocation(line: 996, column: 22, scope: !1183, inlinedAt: !1640)
!1643 = !DILocation(line: 996, column: 11, scope: !1183, inlinedAt: !1640)
!1644 = !DILocation(line: 1883, column: 17, scope: !1634)
!1645 = !DILocation(line: 1885, column: 11, scope: !1646)
!1646 = distinct !DILexicalBlock(scope: !1647, file: !3, line: 1885, column: 11)
!1647 = distinct !DILexicalBlock(scope: !819, file: !3, line: 1885, column: 11)
!1648 = !DILocation(line: 1885, column: 11, scope: !1649)
!1649 = !DILexicalBlockFile(scope: !1646, file: !3, discriminator: 1)
!1650 = !DILocation(line: 1885, column: 11, scope: !1651)
!1651 = !DILexicalBlockFile(scope: !1646, file: !3, discriminator: 3)
!1652 = !DILocation(line: 1886, column: 9, scope: !804)
!1653 = !DILocation(line: 1887, column: 11, scope: !845)
!1654 = !DILocation(line: 1887, column: 11, scope: !805)
!1655 = !DILocation(line: 1661, column: 23, scope: !1656, inlinedAt: !1665)
!1656 = distinct !DISubprogram(name: "read_and_xlate", scope: !3, file: !3, line: 1661, type: !1657, isLocal: true, isDefinition: true, scopeLine: 1662, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1659)
!1657 = !DISubroutineType(types: !1658)
!1658 = !{!73, !68, !73}
!1659 = !{!1660, !1661, !1662, !1663}
!1660 = !DILocalVariable(name: "buf", arg: 1, scope: !1656, file: !3, line: 1661, type: !68)
!1661 = !DILocalVariable(name: "size", arg: 2, scope: !1656, file: !3, line: 1661, type: !73)
!1662 = !DILocalVariable(name: "bytes_read", scope: !1656, file: !3, line: 1663, type: !73)
!1663 = !DILocalVariable(name: "i", scope: !1664, file: !3, line: 1665, type: !73)
!1664 = distinct !DILexicalBlock(scope: !1656, file: !3, line: 1665, column: 3)
!1665 = distinct !DILocation(line: 1896, column: 35, scope: !843)
!1666 = !DILocation(line: 1678, column: 35, scope: !1392, inlinedAt: !1667)
!1667 = distinct !DILocation(line: 1889, column: 11, scope: !1668)
!1668 = distinct !DILexicalBlock(scope: !845, file: !3, line: 1888, column: 9)
!1669 = !DILocation(line: 1678, column: 43, scope: !1392, inlinedAt: !1667)
!1670 = !DILocation(line: 1682, column: 6, scope: !1392, inlinedAt: !1667)
!1671 = !DILocation(line: 1682, column: 12, scope: !1392, inlinedAt: !1667)
!1672 = !DILocation(line: 1683, column: 15, scope: !1409, inlinedAt: !1667)
!1673 = !DILocation(line: 1680, column: 7, scope: !1392, inlinedAt: !1667)
!1674 = !DILocation(line: 1683, column: 35, scope: !1409, inlinedAt: !1667)
!1675 = !DILocation(line: 1683, column: 3, scope: !1409, inlinedAt: !1667)
!1676 = !DILocation(line: 1684, column: 5, scope: !1392, inlinedAt: !1667)
!1677 = !DILocation(line: 1684, column: 15, scope: !1392, inlinedAt: !1667)
!1678 = !DILocation(line: 1890, column: 11, scope: !1668)
!1679 = !DILocation(line: 1891, column: 9, scope: !1668)
!1680 = !DILocation(line: 1661, column: 35, scope: !1656, inlinedAt: !1665)
!1681 = !DILocalVariable(name: "buf", arg: 1, scope: !1682, file: !3, line: 1608, type: !68)
!1682 = distinct !DISubprogram(name: "plain_read", scope: !3, file: !3, line: 1608, type: !1657, isLocal: true, isDefinition: true, scopeLine: 1609, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1683)
!1683 = !{!1681, !1684, !1685}
!1684 = !DILocalVariable(name: "size", arg: 2, scope: !1682, file: !3, line: 1608, type: !73)
!1685 = !DILocalVariable(name: "nr", scope: !1682, file: !3, line: 1610, type: !73)
!1686 = !DILocation(line: 1608, column: 19, scope: !1682, inlinedAt: !1687)
!1687 = distinct !DILocation(line: 1663, column: 23, scope: !1656, inlinedAt: !1665)
!1688 = !DILocation(line: 1608, column: 31, scope: !1682, inlinedAt: !1687)
!1689 = !DILocation(line: 1610, column: 15, scope: !1682, inlinedAt: !1687)
!1690 = !DILocation(line: 1610, column: 10, scope: !1682, inlinedAt: !1687)
!1691 = !DILocation(line: 1611, column: 7, scope: !1682, inlinedAt: !1687)
!1692 = !DILocation(line: 1666, column: 30, scope: !1693, inlinedAt: !1665)
!1693 = distinct !DILexicalBlock(scope: !1664, file: !3, line: 1665, column: 3)
!1694 = !DILocation(line: 1666, column: 14, scope: !1693, inlinedAt: !1665)
!1695 = !DILocation(line: 1666, column: 12, scope: !1693, inlinedAt: !1665)
!1696 = !DILocation(line: 1665, column: 39, scope: !1697, inlinedAt: !1665)
!1697 = !DILexicalBlockFile(scope: !1693, file: !3, discriminator: 3)
!1698 = !DILocation(line: 1665, column: 15, scope: !1664, inlinedAt: !1665)
!1699 = !DILocation(line: 1665, column: 3, scope: !1700, inlinedAt: !1665)
!1700 = !DILexicalBlockFile(scope: !1664, file: !3, discriminator: 1)
!1701 = distinct !{!1701, !1702}
!1702 = !{!"llvm.loop.unroll.disable"}
!1703 = !DILocation(line: 1612, column: 5, scope: !1704, inlinedAt: !1687)
!1704 = distinct !DILexicalBlock(scope: !1682, file: !3, line: 1611, column: 7)
!1705 = !DILocation(line: 1612, column: 5, scope: !1706, inlinedAt: !1687)
!1706 = !DILexicalBlockFile(scope: !1704, file: !3, discriminator: 1)
!1707 = !DILocation(line: 1612, column: 5, scope: !1708, inlinedAt: !1687)
!1708 = !DILexicalBlockFile(scope: !1704, file: !3, discriminator: 2)
!1709 = !DILocation(line: 1665, column: 24, scope: !1710, inlinedAt: !1665)
!1710 = !DILexicalBlockFile(scope: !1693, file: !3, discriminator: 1)
!1711 = distinct !{!1711, !1712, !1713}
!1712 = !DILocation(line: 1665, column: 3, scope: !1664)
!1713 = !DILocation(line: 1666, column: 37, scope: !1664)
!1714 = !DILocation(line: 1896, column: 22, scope: !843)
!1715 = !DILocation(line: 1897, column: 30, scope: !1716)
!1716 = distinct !DILexicalBlock(scope: !843, file: !3, line: 1897, column: 19)
!1717 = !DILocation(line: 1897, column: 19, scope: !843)
!1718 = !DILocation(line: 1899, column: 19, scope: !1719)
!1719 = distinct !DILexicalBlock(scope: !843, file: !3, line: 1899, column: 19)
!1720 = !DILocation(line: 1899, column: 58, scope: !1719)
!1721 = !DILocation(line: 1899, column: 19, scope: !843)
!1722 = !DILocation(line: 1900, column: 17, scope: !1719)
!1723 = !DILocation(line: 1900, column: 17, scope: !1724)
!1724 = !DILexicalBlockFile(scope: !1719, file: !3, discriminator: 1)
!1725 = !DILocation(line: 1900, column: 17, scope: !1726)
!1726 = !DILexicalBlockFile(scope: !1719, file: !3, discriminator: 2)
!1727 = !DILocation(line: 1905, column: 7, scope: !1728)
!1728 = distinct !DILexicalBlock(scope: !745, file: !3, line: 1905, column: 7)
!1729 = !DILocation(line: 1905, column: 28, scope: !1728)
!1730 = !DILocation(line: 1905, column: 7, scope: !745)
!1731 = !DILocation(line: 1906, column: 5, scope: !1728)
!1732 = !DILocation(line: 1906, column: 5, scope: !1733)
!1733 = !DILexicalBlockFile(scope: !1728, file: !3, discriminator: 1)
!1734 = !DILocation(line: 1906, column: 5, scope: !1735)
!1735 = !DILexicalBlockFile(scope: !1728, file: !3, discriminator: 2)
!1736 = !DILocation(line: 1909, column: 1, scope: !745)
!1737 = distinct !DISubprogram(name: "parse_str", scope: !3, file: !3, line: 1352, type: !1738, isLocal: true, isDefinition: true, scopeLine: 1353, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1740)
!1738 = !DISubroutineType(types: !1739)
!1739 = !{!87, !81, !795}
!1740 = !{!1741, !1742, !1743, !1749}
!1741 = !DILocalVariable(name: "s", arg: 1, scope: !1737, file: !3, line: 1352, type: !81)
!1742 = !DILocalVariable(name: "spec_list", arg: 2, scope: !1737, file: !3, line: 1352, type: !795)
!1743 = !DILocalVariable(name: "es", scope: !1737, file: !3, line: 1354, type: !1744)
!1744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "E_string", file: !3, line: 184, size: 192, elements: !1745)
!1745 = !{!1746, !1747, !1748}
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1744, file: !3, line: 186, baseType: !68, size: 64)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !1744, file: !3, line: 187, baseType: !808, size: 64, offset: 64)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1744, file: !3, line: 188, baseType: !73, size: 64, offset: 128)
!1749 = !DILocalVariable(name: "ok", scope: !1737, file: !3, line: 1355, type: !87)
!1750 = !DILocation(line: 1352, column: 24, scope: !1737)
!1751 = !DILocation(line: 1352, column: 45, scope: !1737)
!1752 = !DILocation(line: 1354, column: 19, scope: !1737)
!1753 = !DILocation(line: 434, column: 16, scope: !1754, inlinedAt: !1769)
!1754 = distinct !DISubprogram(name: "unquote", scope: !3, file: !3, line: 432, type: !1755, isLocal: true, isDefinition: true, scopeLine: 433, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1758)
!1755 = !DISubroutineType(types: !1756)
!1756 = !{!87, !81, !1757}
!1757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1744, size: 64)
!1758 = !{!1759, !1760, !1761, !1762, !1763, !1765, !1768}
!1759 = !DILocalVariable(name: "s", arg: 1, scope: !1754, file: !3, line: 432, type: !81)
!1760 = !DILocalVariable(name: "es", arg: 2, scope: !1754, file: !3, line: 432, type: !1757)
!1761 = !DILocalVariable(name: "len", scope: !1754, file: !3, line: 434, type: !73)
!1762 = !DILocalVariable(name: "j", scope: !1754, file: !3, line: 439, type: !83)
!1763 = !DILocalVariable(name: "i", scope: !1764, file: !3, line: 440, type: !83)
!1764 = distinct !DILexicalBlock(scope: !1754, file: !3, line: 440, column: 3)
!1765 = !DILocalVariable(name: "c", scope: !1766, file: !3, line: 442, type: !80)
!1766 = distinct !DILexicalBlock(scope: !1767, file: !3, line: 441, column: 5)
!1767 = distinct !DILexicalBlock(scope: !1764, file: !3, line: 440, column: 3)
!1768 = !DILocalVariable(name: "oct_digit", scope: !1766, file: !3, line: 443, type: !71)
!1769 = distinct !DILocation(line: 1355, column: 13, scope: !1737)
!1770 = !DILocation(line: 434, column: 10, scope: !1754, inlinedAt: !1769)
!1771 = !DILocation(line: 436, column: 11, scope: !1754, inlinedAt: !1769)
!1772 = !DILocation(line: 437, column: 17, scope: !1754, inlinedAt: !1769)
!1773 = !DILocation(line: 439, column: 16, scope: !1754, inlinedAt: !1769)
!1774 = !DILocation(line: 440, column: 21, scope: !1764, inlinedAt: !1769)
!1775 = !DILocation(line: 440, column: 8, scope: !1764, inlinedAt: !1769)
!1776 = !DILocation(line: 440, column: 28, scope: !1777, inlinedAt: !1769)
!1777 = !DILexicalBlockFile(scope: !1767, file: !3, discriminator: 1)
!1778 = !DILocation(line: 440, column: 3, scope: !1779, inlinedAt: !1769)
!1779 = !DILexicalBlockFile(scope: !1764, file: !3, discriminator: 1)
!1780 = !DILocation(line: 448, column: 11, scope: !1781, inlinedAt: !1769)
!1781 = distinct !DILexicalBlock(scope: !1766, file: !3, line: 446, column: 9)
!1782 = !DILocation(line: 448, column: 26, scope: !1781, inlinedAt: !1769)
!1783 = !DILocation(line: 449, column: 23, scope: !1781, inlinedAt: !1769)
!1784 = !DILocation(line: 449, column: 19, scope: !1781, inlinedAt: !1769)
!1785 = !DILocation(line: 449, column: 11, scope: !1781, inlinedAt: !1769)
!1786 = !DILocation(line: 442, column: 21, scope: !1766, inlinedAt: !1769)
!1787 = !DILocation(line: 456, column: 15, scope: !1788, inlinedAt: !1769)
!1788 = distinct !DILexicalBlock(scope: !1781, file: !3, line: 450, column: 13)
!1789 = !DILocation(line: 459, column: 15, scope: !1788, inlinedAt: !1769)
!1790 = !DILocation(line: 462, column: 15, scope: !1788, inlinedAt: !1769)
!1791 = !DILocation(line: 465, column: 15, scope: !1788, inlinedAt: !1769)
!1792 = !DILocation(line: 468, column: 15, scope: !1788, inlinedAt: !1769)
!1793 = !DILocation(line: 471, column: 15, scope: !1788, inlinedAt: !1769)
!1794 = !DILocation(line: 474, column: 15, scope: !1788, inlinedAt: !1769)
!1795 = !DILocation(line: 483, column: 28, scope: !1788, inlinedAt: !1769)
!1796 = !DILocation(line: 484, column: 31, scope: !1788, inlinedAt: !1769)
!1797 = !DILocation(line: 484, column: 27, scope: !1788, inlinedAt: !1769)
!1798 = !DILocation(line: 484, column: 36, scope: !1788, inlinedAt: !1769)
!1799 = !DILocation(line: 443, column: 11, scope: !1766, inlinedAt: !1769)
!1800 = !DILocation(line: 485, column: 34, scope: !1801, inlinedAt: !1769)
!1801 = distinct !DILexicalBlock(scope: !1788, file: !3, line: 485, column: 19)
!1802 = !DILocation(line: 487, column: 27, scope: !1803, inlinedAt: !1769)
!1803 = distinct !DILexicalBlock(scope: !1801, file: !3, line: 486, column: 17)
!1804 = !DILocation(line: 487, column: 25, scope: !1803, inlinedAt: !1769)
!1805 = !DILocation(line: 487, column: 29, scope: !1803, inlinedAt: !1769)
!1806 = !DILocation(line: 487, column: 23, scope: !1803, inlinedAt: !1769)
!1807 = !DILocation(line: 489, column: 35, scope: !1803, inlinedAt: !1769)
!1808 = !DILocation(line: 489, column: 31, scope: !1803, inlinedAt: !1769)
!1809 = !DILocation(line: 489, column: 40, scope: !1803, inlinedAt: !1769)
!1810 = !DILocation(line: 490, column: 38, scope: !1811, inlinedAt: !1769)
!1811 = distinct !DILexicalBlock(scope: !1803, file: !3, line: 490, column: 23)
!1812 = !DILocation(line: 492, column: 29, scope: !1813, inlinedAt: !1769)
!1813 = distinct !DILexicalBlock(scope: !1814, file: !3, line: 492, column: 27)
!1814 = distinct !DILexicalBlock(scope: !1811, file: !3, line: 491, column: 21)
!1815 = !DILocation(line: 492, column: 33, scope: !1813, inlinedAt: !1769)
!1816 = !DILocation(line: 492, column: 45, scope: !1813, inlinedAt: !1769)
!1817 = !DILocation(line: 492, column: 27, scope: !1814, inlinedAt: !1769)
!1818 = !DILocation(line: 494, column: 31, scope: !1819, inlinedAt: !1769)
!1819 = distinct !DILexicalBlock(scope: !1813, file: !3, line: 493, column: 25)
!1820 = !DILocation(line: 496, column: 25, scope: !1819, inlinedAt: !1769)
!1821 = !DILocation(line: 507, column: 40, scope: !1822, inlinedAt: !1769)
!1822 = distinct !DILexicalBlock(scope: !1813, file: !3, line: 498, column: 25)
!1823 = !DILocation(line: 509, column: 34, scope: !1822, inlinedAt: !1769)
!1824 = !DILocation(line: 509, column: 40, scope: !1822, inlinedAt: !1769)
!1825 = !DILocation(line: 509, column: 50, scope: !1822, inlinedAt: !1769)
!1826 = !DILocation(line: 507, column: 27, scope: !1827, inlinedAt: !1769)
!1827 = !DILexicalBlockFile(scope: !1822, file: !3, discriminator: 1)
!1828 = !DILocation(line: 516, column: 28, scope: !1788, inlinedAt: !1769)
!1829 = !DILocation(line: 516, column: 15, scope: !1830, inlinedAt: !1769)
!1830 = !DILexicalBlockFile(scope: !1788, file: !3, discriminator: 1)
!1831 = !DILocation(line: 519, column: 30, scope: !1788, inlinedAt: !1769)
!1832 = !DILocation(line: 520, column: 16, scope: !1788, inlinedAt: !1769)
!1833 = !DILocation(line: 522, column: 15, scope: !1788, inlinedAt: !1769)
!1834 = !DILocation(line: 525, column: 15, scope: !1788, inlinedAt: !1769)
!1835 = !DILocation(line: 527, column: 11, scope: !1781, inlinedAt: !1769)
!1836 = !DILocation(line: 529, column: 11, scope: !1781, inlinedAt: !1769)
!1837 = !DILocation(line: 440, column: 35, scope: !1838, inlinedAt: !1769)
!1838 = !DILexicalBlockFile(scope: !1767, file: !3, discriminator: 3)
!1839 = !DILocation(line: 440, column: 3, scope: !1838, inlinedAt: !1769)
!1840 = distinct !{!1840, !1841, !1842}
!1841 = !DILocation(line: 440, column: 3, scope: !1764)
!1842 = !DILocation(line: 534, column: 5, scope: !1764)
!1843 = !DILocation(line: 535, column: 13, scope: !1754, inlinedAt: !1769)
!1844 = !DILocalVariable(name: "es", arg: 1, scope: !1845, file: !3, line: 854, type: !1848)
!1845 = distinct !DISubprogram(name: "build_spec_list", scope: !3, file: !3, line: 854, type: !1846, isLocal: true, isDefinition: true, scopeLine: 855, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1850)
!1846 = !DISubroutineType(types: !1847)
!1847 = !{!87, !1848, !795}
!1848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1849, size: 64)
!1849 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1744)
!1850 = !{!1844, !1851, !1852, !1853, !1854, !1860, !1861, !1862, !1863, !1864, !1867, !1870, !1871, !1878}
!1851 = !DILocalVariable(name: "result", arg: 2, scope: !1845, file: !3, line: 854, type: !795)
!1852 = !DILocalVariable(name: "p", scope: !1845, file: !3, line: 856, type: !81)
!1853 = !DILocalVariable(name: "i", scope: !1845, file: !3, line: 864, type: !73)
!1854 = !DILocalVariable(name: "matched_multi_char_construct", scope: !1855, file: !3, line: 869, type: !87)
!1855 = distinct !DILexicalBlock(scope: !1856, file: !3, line: 868, column: 9)
!1856 = distinct !DILexicalBlock(scope: !1857, file: !3, line: 867, column: 11)
!1857 = distinct !DILexicalBlock(scope: !1858, file: !3, line: 866, column: 5)
!1858 = distinct !DILexicalBlock(scope: !1859, file: !3, line: 865, column: 3)
!1859 = distinct !DILexicalBlock(scope: !1845, file: !3, line: 865, column: 3)
!1860 = !DILocalVariable(name: "closing_bracket_idx", scope: !1855, file: !3, line: 870, type: !73)
!1861 = !DILocalVariable(name: "char_to_repeat", scope: !1855, file: !3, line: 871, type: !80)
!1862 = !DILocalVariable(name: "repeat_count", scope: !1855, file: !3, line: 872, type: !781)
!1863 = !DILocalVariable(name: "err", scope: !1855, file: !3, line: 873, type: !71)
!1864 = !DILocalVariable(name: "closing_delim_idx", scope: !1865, file: !3, line: 878, type: !73)
!1865 = distinct !DILexicalBlock(scope: !1866, file: !3, line: 877, column: 13)
!1866 = distinct !DILexicalBlock(scope: !1855, file: !3, line: 876, column: 15)
!1867 = !DILocalVariable(name: "opnd_str_len", scope: !1868, file: !3, line: 882, type: !73)
!1868 = distinct !DILexicalBlock(scope: !1869, file: !3, line: 881, column: 17)
!1869 = distinct !DILexicalBlock(scope: !1865, file: !3, line: 880, column: 19)
!1870 = !DILocalVariable(name: "opnd_str", scope: !1868, file: !3, line: 883, type: !81)
!1871 = !DILocalVariable(name: "tmp", scope: !1872, file: !3, line: 904, type: !68)
!1872 = distinct !DILexicalBlock(scope: !1873, file: !3, line: 903, column: 29)
!1873 = distinct !DILexicalBlock(scope: !1874, file: !3, line: 900, column: 31)
!1874 = distinct !DILexicalBlock(scope: !1875, file: !3, line: 899, column: 25)
!1875 = distinct !DILexicalBlock(scope: !1876, file: !3, line: 898, column: 27)
!1876 = distinct !DILexicalBlock(scope: !1877, file: !3, line: 896, column: 21)
!1877 = distinct !DILexicalBlock(scope: !1868, file: !3, line: 895, column: 23)
!1878 = !DILocalVariable(name: "tmp", scope: !1879, file: !3, line: 922, type: !68)
!1879 = distinct !DILexicalBlock(scope: !1880, file: !3, line: 921, column: 29)
!1880 = distinct !DILexicalBlock(scope: !1881, file: !3, line: 918, column: 31)
!1881 = distinct !DILexicalBlock(scope: !1882, file: !3, line: 917, column: 25)
!1882 = distinct !DILexicalBlock(scope: !1883, file: !3, line: 916, column: 27)
!1883 = distinct !DILexicalBlock(scope: !1877, file: !3, line: 914, column: 21)
!1884 = !DILocation(line: 854, column: 41, scope: !1845, inlinedAt: !1885)
!1885 = distinct !DILocation(line: 1355, column: 33, scope: !1886)
!1886 = !DILexicalBlockFile(scope: !1737, file: !3, discriminator: 1)
!1887 = !DILocation(line: 854, column: 63, scope: !1845, inlinedAt: !1885)
!1888 = !DILocation(line: 856, column: 15, scope: !1845, inlinedAt: !1885)
!1889 = !DILocation(line: 864, column: 10, scope: !1845, inlinedAt: !1885)
!1890 = !DILocation(line: 865, column: 21, scope: !1891, inlinedAt: !1885)
!1891 = !DILexicalBlockFile(scope: !1858, file: !3, discriminator: 1)
!1892 = !DILocation(line: 865, column: 3, scope: !1893, inlinedAt: !1885)
!1893 = !DILexicalBlockFile(scope: !1859, file: !3, discriminator: 1)
!1894 = !DILocation(line: 985, column: 12, scope: !1895, inlinedAt: !1885)
!1895 = !DILexicalBlockFile(scope: !1896, file: !3, discriminator: 1)
!1896 = distinct !DILexicalBlock(scope: !1897, file: !3, line: 985, column: 3)
!1897 = distinct !DILexicalBlock(scope: !1845, file: !3, line: 985, column: 3)
!1898 = !DILocation(line: 985, column: 3, scope: !1899, inlinedAt: !1885)
!1899 = !DILexicalBlockFile(scope: !1897, file: !3, discriminator: 1)
!1900 = !DILocalVariable(name: "es", arg: 1, scope: !1901, file: !3, line: 194, type: !1848)
!1901 = distinct !DISubprogram(name: "es_match", scope: !3, file: !3, line: 194, type: !1902, isLocal: true, isDefinition: true, scopeLine: 195, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1904)
!1902 = !DISubroutineType(types: !1903)
!1903 = !{!87, !1848, !73, !69}
!1904 = !{!1900, !1905, !1906}
!1905 = !DILocalVariable(name: "i", arg: 2, scope: !1901, file: !3, line: 194, type: !73)
!1906 = !DILocalVariable(name: "c", arg: 3, scope: !1901, file: !3, line: 194, type: !69)
!1907 = !DILocation(line: 194, column: 34, scope: !1901, inlinedAt: !1908)
!1908 = distinct !DILocation(line: 867, column: 11, scope: !1856, inlinedAt: !1885)
!1909 = !DILocation(line: 194, column: 45, scope: !1901, inlinedAt: !1908)
!1910 = !DILocation(line: 194, column: 53, scope: !1901, inlinedAt: !1908)
!1911 = !DILocation(line: 196, column: 10, scope: !1901, inlinedAt: !1908)
!1912 = !DILocation(line: 196, column: 19, scope: !1901, inlinedAt: !1908)
!1913 = !DILocation(line: 196, column: 24, scope: !1901, inlinedAt: !1908)
!1914 = !DILocation(line: 196, column: 28, scope: !1915, inlinedAt: !1908)
!1915 = !DILexicalBlockFile(scope: !1901, file: !3, discriminator: 1)
!1916 = !DILocation(line: 196, column: 27, scope: !1915, inlinedAt: !1908)
!1917 = !DILocation(line: 867, column: 11, scope: !1857, inlinedAt: !1885)
!1918 = !DILocation(line: 872, column: 11, scope: !1855, inlinedAt: !1885)
!1919 = !DILocation(line: 869, column: 16, scope: !1855, inlinedAt: !1885)
!1920 = !DILocation(line: 876, column: 31, scope: !1866, inlinedAt: !1885)
!1921 = !DILocation(line: 194, column: 34, scope: !1901, inlinedAt: !1922)
!1922 = distinct !DILocation(line: 876, column: 15, scope: !1866, inlinedAt: !1885)
!1923 = !DILocation(line: 194, column: 45, scope: !1901, inlinedAt: !1922)
!1924 = !DILocation(line: 194, column: 53, scope: !1901, inlinedAt: !1922)
!1925 = !DILocation(line: 196, column: 10, scope: !1901, inlinedAt: !1922)
!1926 = !DILocation(line: 196, column: 24, scope: !1901, inlinedAt: !1922)
!1927 = !DILocation(line: 196, column: 28, scope: !1915, inlinedAt: !1922)
!1928 = !DILocation(line: 196, column: 27, scope: !1915, inlinedAt: !1922)
!1929 = !DILocation(line: 757, column: 32, scope: !1930, inlinedAt: !1942)
!1930 = !DILexicalBlockFile(scope: !1931, file: !3, discriminator: 1)
!1931 = distinct !DILexicalBlock(scope: !1932, file: !3, line: 757, column: 3)
!1932 = distinct !DILexicalBlock(scope: !1933, file: !3, line: 757, column: 3)
!1933 = distinct !DISubprogram(name: "find_closing_delim", scope: !3, file: !3, line: 754, type: !1934, isLocal: true, isDefinition: true, scopeLine: 756, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1936)
!1934 = !DISubroutineType(types: !1935)
!1935 = !{!87, !1848, !73, !69, !647}
!1936 = !{!1937, !1938, !1939, !1940, !1941}
!1937 = !DILocalVariable(name: "es", arg: 1, scope: !1933, file: !3, line: 754, type: !1848)
!1938 = !DILocalVariable(name: "start_idx", arg: 2, scope: !1933, file: !3, line: 754, type: !73)
!1939 = !DILocalVariable(name: "pre_bracket_char", arg: 3, scope: !1933, file: !3, line: 755, type: !69)
!1940 = !DILocalVariable(name: "result_idx", arg: 4, scope: !1933, file: !3, line: 755, type: !647)
!1941 = !DILocalVariable(name: "i", scope: !1932, file: !3, line: 757, type: !73)
!1942 = distinct !DILocation(line: 880, column: 19, scope: !1869, inlinedAt: !1885)
!1943 = !DILocation(line: 876, column: 41, scope: !1866, inlinedAt: !1885)
!1944 = !DILocation(line: 754, column: 44, scope: !1933, inlinedAt: !1942)
!1945 = !DILocation(line: 754, column: 55, scope: !1933, inlinedAt: !1942)
!1946 = !DILocation(line: 755, column: 26, scope: !1933, inlinedAt: !1942)
!1947 = !DILocation(line: 757, column: 15, scope: !1932, inlinedAt: !1942)
!1948 = !DILocation(line: 196, column: 28, scope: !1915, inlinedAt: !1949)
!1949 = distinct !DILocation(line: 876, column: 44, scope: !1950, inlinedAt: !1885)
!1950 = !DILexicalBlockFile(scope: !1866, file: !3, discriminator: 1)
!1951 = !DILocation(line: 196, column: 27, scope: !1915, inlinedAt: !1949)
!1952 = !DILocation(line: 876, column: 15, scope: !1953, inlinedAt: !1885)
!1953 = !DILexicalBlockFile(scope: !1855, file: !3, discriminator: 1)
!1954 = !DILocation(line: 758, column: 9, scope: !1955, inlinedAt: !1942)
!1955 = distinct !DILexicalBlock(scope: !1931, file: !3, line: 758, column: 9)
!1956 = !DILocation(line: 758, column: 18, scope: !1955, inlinedAt: !1942)
!1957 = !DILocation(line: 758, column: 38, scope: !1955, inlinedAt: !1942)
!1958 = !DILocation(line: 758, column: 41, scope: !1959, inlinedAt: !1942)
!1959 = !DILexicalBlockFile(scope: !1955, file: !3, discriminator: 1)
!1960 = !DILocation(line: 758, column: 54, scope: !1959, inlinedAt: !1942)
!1961 = !DILocation(line: 759, column: 9, scope: !1955, inlinedAt: !1942)
!1962 = !DILocation(line: 759, column: 13, scope: !1959, inlinedAt: !1942)
!1963 = !DILocation(line: 759, column: 28, scope: !1959, inlinedAt: !1942)
!1964 = !DILocation(line: 759, column: 32, scope: !1965, inlinedAt: !1942)
!1965 = !DILexicalBlockFile(scope: !1955, file: !3, discriminator: 2)
!1966 = !DILocation(line: 758, column: 9, scope: !1967, inlinedAt: !1942)
!1967 = !DILexicalBlockFile(scope: !1931, file: !3, discriminator: 2)
!1968 = !DILocation(line: 757, column: 3, scope: !1969, inlinedAt: !1942)
!1969 = !DILexicalBlockFile(scope: !1932, file: !3, discriminator: 1)
!1970 = distinct !{!1970, !1971, !1972}
!1971 = !DILocation(line: 757, column: 3, scope: !1932)
!1972 = !DILocation(line: 763, column: 7, scope: !1932)
!1973 = !DILocation(line: 878, column: 22, scope: !1865, inlinedAt: !1885)
!1974 = !DILocation(line: 882, column: 59, scope: !1868, inlinedAt: !1885)
!1975 = !DILocation(line: 882, column: 63, scope: !1868, inlinedAt: !1885)
!1976 = !DILocation(line: 882, column: 73, scope: !1868, inlinedAt: !1885)
!1977 = !DILocation(line: 882, column: 26, scope: !1868, inlinedAt: !1885)
!1978 = !DILocation(line: 883, column: 48, scope: !1868, inlinedAt: !1885)
!1979 = !DILocation(line: 883, column: 31, scope: !1868, inlinedAt: !1885)
!1980 = !DILocation(line: 885, column: 36, scope: !1981, inlinedAt: !1885)
!1981 = distinct !DILexicalBlock(scope: !1868, file: !3, line: 885, column: 23)
!1982 = !DILocation(line: 885, column: 23, scope: !1868, inlinedAt: !1885)
!1983 = !DILocation(line: 887, column: 27, scope: !1984, inlinedAt: !1885)
!1984 = distinct !DILexicalBlock(scope: !1981, file: !3, line: 886, column: 21)
!1985 = !DILocation(line: 888, column: 38, scope: !1986, inlinedAt: !1885)
!1986 = distinct !DILexicalBlock(scope: !1984, file: !3, line: 887, column: 27)
!1987 = !DILocation(line: 888, column: 25, scope: !1988, inlinedAt: !1885)
!1988 = !DILexicalBlockFile(scope: !1986, file: !3, discriminator: 1)
!1989 = !DILocation(line: 888, column: 25, scope: !1986, inlinedAt: !1885)
!1990 = !DILocation(line: 891, column: 32, scope: !1986, inlinedAt: !1885)
!1991 = !DILocation(line: 890, column: 25, scope: !1986, inlinedAt: !1885)
!1992 = !DILocation(line: 895, column: 23, scope: !1868, inlinedAt: !1885)
!1993 = !DILocation(line: 548, column: 9, scope: !1994, inlinedAt: !2004)
!1994 = distinct !DILexicalBlock(scope: !1995, file: !3, line: 548, column: 9)
!1995 = distinct !DILexicalBlock(scope: !1996, file: !3, line: 547, column: 3)
!1996 = distinct !DILexicalBlock(scope: !1997, file: !3, line: 547, column: 3)
!1997 = distinct !DISubprogram(name: "look_up_char_class", scope: !3, file: !3, line: 543, type: !1998, isLocal: true, isDefinition: true, scopeLine: 544, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2000)
!1998 = !DISubroutineType(types: !1999)
!1999 = !{!12, !81, !73}
!2000 = !{!2001, !2002, !2003}
!2001 = !DILocalVariable(name: "class_str", arg: 1, scope: !1997, file: !3, line: 543, type: !81)
!2002 = !DILocalVariable(name: "len", arg: 2, scope: !1997, file: !3, line: 543, type: !73)
!2003 = !DILocalVariable(name: "i", scope: !1997, file: !3, line: 545, type: !12)
!2004 = distinct !DILocation(line: 692, column: 32, scope: !2005, inlinedAt: !2014)
!2005 = distinct !DISubprogram(name: "append_char_class", scope: !3, file: !3, line: 689, type: !2006, isLocal: true, isDefinition: true, scopeLine: 691, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2008)
!2006 = !DISubroutineType(types: !2007)
!2007 = !{!87, !795, !81, !73}
!2008 = !{!2009, !2010, !2011, !2012, !2013}
!2009 = !DILocalVariable(name: "list", arg: 1, scope: !2005, file: !3, line: 689, type: !795)
!2010 = !DILocalVariable(name: "char_class_str", arg: 2, scope: !2005, file: !3, line: 690, type: !81)
!2011 = !DILocalVariable(name: "len", arg: 3, scope: !2005, file: !3, line: 690, type: !73)
!2012 = !DILocalVariable(name: "char_class", scope: !2005, file: !3, line: 692, type: !12)
!2013 = !DILocalVariable(name: "new", scope: !2005, file: !3, line: 695, type: !760)
!2014 = distinct !DILocation(line: 898, column: 28, scope: !1875, inlinedAt: !1885)
!2015 = !DILocation(line: 549, column: 9, scope: !1994, inlinedAt: !2004)
!2016 = !DILocation(line: 549, column: 12, scope: !2017, inlinedAt: !2004)
!2017 = !DILexicalBlockFile(scope: !1994, file: !3, discriminator: 1)
!2018 = !DILocation(line: 549, column: 40, scope: !2017, inlinedAt: !2004)
!2019 = !DILocation(line: 548, column: 9, scope: !2020, inlinedAt: !2004)
!2020 = !DILexicalBlockFile(scope: !1995, file: !3, discriminator: 1)
!2021 = !DILocation(line: 547, column: 57, scope: !2022, inlinedAt: !2004)
!2022 = !DILexicalBlockFile(scope: !1995, file: !3, discriminator: 2)
!2023 = !DILocation(line: 547, column: 17, scope: !2020, inlinedAt: !2004)
!2024 = !DILocation(line: 547, column: 3, scope: !2025, inlinedAt: !2004)
!2025 = !DILexicalBlockFile(scope: !1996, file: !3, discriminator: 1)
!2026 = distinct !{!2026, !2027, !2028}
!2027 = !DILocation(line: 547, column: 3, scope: !1996)
!2028 = !DILocation(line: 550, column: 14, scope: !1996)
!2029 = !DILocation(line: 692, column: 19, scope: !2005, inlinedAt: !2014)
!2030 = !DILocation(line: 695, column: 30, scope: !2005, inlinedAt: !2014)
!2031 = !DILocation(line: 696, column: 8, scope: !2005, inlinedAt: !2014)
!2032 = !DILocation(line: 696, column: 13, scope: !2005, inlinedAt: !2014)
!2033 = !DILocation(line: 697, column: 8, scope: !2005, inlinedAt: !2014)
!2034 = !DILocation(line: 697, column: 13, scope: !2005, inlinedAt: !2014)
!2035 = !DILocation(line: 698, column: 8, scope: !2005, inlinedAt: !2014)
!2036 = !DILocation(line: 698, column: 10, scope: !2005, inlinedAt: !2014)
!2037 = !DILocation(line: 698, column: 21, scope: !2005, inlinedAt: !2014)
!2038 = !DILocation(line: 699, column: 3, scope: !2039, inlinedAt: !2014)
!2039 = distinct !DILexicalBlock(scope: !2040, file: !3, line: 699, column: 3)
!2040 = distinct !DILexicalBlock(scope: !2005, file: !3, line: 699, column: 3)
!2041 = !DILocation(line: 699, column: 3, scope: !2040, inlinedAt: !2014)
!2042 = !DILocation(line: 699, column: 3, scope: !2043, inlinedAt: !2014)
!2043 = !DILexicalBlockFile(scope: !2039, file: !3, discriminator: 2)
!2044 = !DILocalVariable(name: "es", arg: 1, scope: !2045, file: !3, line: 830, type: !1848)
!2045 = distinct !DISubprogram(name: "star_digits_closebracket", scope: !3, file: !3, line: 830, type: !2046, isLocal: true, isDefinition: true, scopeLine: 831, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2048)
!2046 = !DISubroutineType(types: !2047)
!2047 = !{!87, !1848, !73}
!2048 = !{!2044, !2049, !2050}
!2049 = !DILocalVariable(name: "idx", arg: 2, scope: !2045, file: !3, line: 830, type: !73)
!2050 = !DILocalVariable(name: "i", scope: !2051, file: !3, line: 835, type: !73)
!2051 = distinct !DILexicalBlock(scope: !2045, file: !3, line: 835, column: 3)
!2052 = !DILocation(line: 830, column: 50, scope: !2045, inlinedAt: !2053)
!2053 = distinct !DILocation(line: 900, column: 31, scope: !1873, inlinedAt: !1885)
!2054 = !DILocation(line: 830, column: 61, scope: !2045, inlinedAt: !2053)
!2055 = !DILocation(line: 194, column: 34, scope: !1901, inlinedAt: !2056)
!2056 = distinct !DILocation(line: 832, column: 8, scope: !2057, inlinedAt: !2053)
!2057 = distinct !DILexicalBlock(scope: !2045, file: !3, line: 832, column: 7)
!2058 = !DILocation(line: 194, column: 45, scope: !1901, inlinedAt: !2056)
!2059 = !DILocation(line: 194, column: 53, scope: !1901, inlinedAt: !2056)
!2060 = !DILocation(line: 196, column: 10, scope: !1901, inlinedAt: !2056)
!2061 = !DILocation(line: 196, column: 19, scope: !1901, inlinedAt: !2056)
!2062 = !DILocation(line: 196, column: 24, scope: !1901, inlinedAt: !2056)
!2063 = !DILocation(line: 196, column: 28, scope: !1915, inlinedAt: !2056)
!2064 = !DILocation(line: 196, column: 27, scope: !1915, inlinedAt: !2056)
!2065 = !DILocation(line: 832, column: 7, scope: !2045, inlinedAt: !2053)
!2066 = !DILocation(line: 835, column: 15, scope: !2051, inlinedAt: !2053)
!2067 = !DILocation(line: 835, column: 30, scope: !2068, inlinedAt: !2053)
!2068 = !DILexicalBlockFile(scope: !2069, file: !3, discriminator: 1)
!2069 = distinct !DILexicalBlock(scope: !2051, file: !3, line: 835, column: 3)
!2070 = !DILocation(line: 835, column: 3, scope: !2071, inlinedAt: !2053)
!2071 = !DILexicalBlockFile(scope: !2051, file: !3, discriminator: 1)
!2072 = !DILocation(line: 836, column: 10, scope: !2073, inlinedAt: !2053)
!2073 = distinct !DILexicalBlock(scope: !2069, file: !3, line: 836, column: 9)
!2074 = !DILocation(line: 836, column: 40, scope: !2073, inlinedAt: !2053)
!2075 = !DILocation(line: 836, column: 43, scope: !2076, inlinedAt: !2053)
!2076 = !DILexicalBlockFile(scope: !2073, file: !3, discriminator: 1)
!2077 = !DILocation(line: 836, column: 9, scope: !2068, inlinedAt: !2053)
!2078 = distinct !{!2078, !2079, !2080}
!2079 = !DILocation(line: 835, column: 3, scope: !2051)
!2080 = !DILocation(line: 837, column: 34, scope: !2051)
!2081 = !DILocation(line: 194, column: 34, scope: !1901, inlinedAt: !2082)
!2082 = distinct !DILocation(line: 837, column: 14, scope: !2073, inlinedAt: !2053)
!2083 = !DILocation(line: 194, column: 45, scope: !1901, inlinedAt: !2082)
!2084 = !DILocation(line: 194, column: 53, scope: !1901, inlinedAt: !2082)
!2085 = !DILocation(line: 196, column: 19, scope: !1901, inlinedAt: !2082)
!2086 = !DILocation(line: 196, column: 24, scope: !1901, inlinedAt: !2082)
!2087 = !DILocation(line: 196, column: 28, scope: !1915, inlinedAt: !2082)
!2088 = !DILocation(line: 196, column: 27, scope: !1915, inlinedAt: !2082)
!2089 = !DILocation(line: 900, column: 31, scope: !1874, inlinedAt: !1885)
!2090 = !DILocation(line: 904, column: 43, scope: !1872, inlinedAt: !1885)
!2091 = !DILocation(line: 904, column: 37, scope: !1872, inlinedAt: !1885)
!2092 = !DILocation(line: 906, column: 44, scope: !1872, inlinedAt: !1885)
!2093 = !DILocation(line: 907, column: 38, scope: !1872, inlinedAt: !1885)
!2094 = !DILocation(line: 906, column: 31, scope: !2095, inlinedAt: !1885)
!2095 = !DILexicalBlockFile(scope: !1872, file: !3, discriminator: 1)
!2096 = !DILocation(line: 908, column: 31, scope: !1872, inlinedAt: !1885)
!2097 = !DILocalVariable(name: "list", arg: 1, scope: !2098, file: !3, line: 731, type: !795)
!2098 = distinct !DISubprogram(name: "append_equiv_class", scope: !3, file: !3, line: 731, type: !2006, isLocal: true, isDefinition: true, scopeLine: 733, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2099)
!2099 = !{!2097, !2100, !2101, !2102}
!2100 = !DILocalVariable(name: "equiv_class_str", arg: 2, scope: !2098, file: !3, line: 732, type: !81)
!2101 = !DILocalVariable(name: "len", arg: 3, scope: !2098, file: !3, line: 732, type: !73)
!2102 = !DILocalVariable(name: "new", scope: !2098, file: !3, line: 737, type: !760)
!2103 = !DILocation(line: 731, column: 39, scope: !2098, inlinedAt: !2104)
!2104 = distinct !DILocation(line: 916, column: 28, scope: !1882, inlinedAt: !1885)
!2105 = !DILocation(line: 732, column: 33, scope: !2098, inlinedAt: !2104)
!2106 = !DILocation(line: 732, column: 57, scope: !2098, inlinedAt: !2104)
!2107 = !DILocation(line: 734, column: 11, scope: !2108, inlinedAt: !2104)
!2108 = distinct !DILexicalBlock(scope: !2098, file: !3, line: 734, column: 7)
!2109 = !DILocation(line: 734, column: 7, scope: !2098, inlinedAt: !2104)
!2110 = !DILocation(line: 737, column: 30, scope: !2098, inlinedAt: !2104)
!2111 = !DILocation(line: 738, column: 8, scope: !2098, inlinedAt: !2104)
!2112 = !DILocation(line: 738, column: 13, scope: !2098, inlinedAt: !2104)
!2113 = !DILocation(line: 739, column: 8, scope: !2098, inlinedAt: !2104)
!2114 = !DILocation(line: 739, column: 13, scope: !2098, inlinedAt: !2104)
!2115 = !DILocation(line: 740, column: 23, scope: !2098, inlinedAt: !2104)
!2116 = !DILocation(line: 740, column: 8, scope: !2098, inlinedAt: !2104)
!2117 = !DILocation(line: 740, column: 21, scope: !2098, inlinedAt: !2104)
!2118 = !DILocation(line: 741, column: 3, scope: !2119, inlinedAt: !2104)
!2119 = distinct !DILexicalBlock(scope: !2120, file: !3, line: 741, column: 3)
!2120 = distinct !DILexicalBlock(scope: !2098, file: !3, line: 741, column: 3)
!2121 = !DILocation(line: 741, column: 3, scope: !2120, inlinedAt: !2104)
!2122 = !DILocation(line: 741, column: 3, scope: !2123, inlinedAt: !2104)
!2123 = !DILexicalBlockFile(scope: !2119, file: !3, discriminator: 2)
!2124 = !DILocation(line: 830, column: 50, scope: !2045, inlinedAt: !2125)
!2125 = distinct !DILocation(line: 918, column: 31, scope: !1880, inlinedAt: !1885)
!2126 = !DILocation(line: 830, column: 61, scope: !2045, inlinedAt: !2125)
!2127 = !DILocation(line: 194, column: 34, scope: !1901, inlinedAt: !2128)
!2128 = distinct !DILocation(line: 832, column: 8, scope: !2057, inlinedAt: !2125)
!2129 = !DILocation(line: 194, column: 45, scope: !1901, inlinedAt: !2128)
!2130 = !DILocation(line: 194, column: 53, scope: !1901, inlinedAt: !2128)
!2131 = !DILocation(line: 196, column: 10, scope: !1901, inlinedAt: !2128)
!2132 = !DILocation(line: 196, column: 19, scope: !1901, inlinedAt: !2128)
!2133 = !DILocation(line: 196, column: 24, scope: !1901, inlinedAt: !2128)
!2134 = !DILocation(line: 196, column: 28, scope: !1915, inlinedAt: !2128)
!2135 = !DILocation(line: 196, column: 27, scope: !1915, inlinedAt: !2128)
!2136 = !DILocation(line: 832, column: 7, scope: !2045, inlinedAt: !2125)
!2137 = !DILocation(line: 835, column: 15, scope: !2051, inlinedAt: !2125)
!2138 = !DILocation(line: 835, column: 30, scope: !2068, inlinedAt: !2125)
!2139 = !DILocation(line: 835, column: 3, scope: !2071, inlinedAt: !2125)
!2140 = !DILocation(line: 836, column: 10, scope: !2073, inlinedAt: !2125)
!2141 = !DILocation(line: 836, column: 40, scope: !2073, inlinedAt: !2125)
!2142 = !DILocation(line: 836, column: 43, scope: !2076, inlinedAt: !2125)
!2143 = !DILocation(line: 836, column: 9, scope: !2068, inlinedAt: !2125)
!2144 = !DILocation(line: 194, column: 34, scope: !1901, inlinedAt: !2145)
!2145 = distinct !DILocation(line: 837, column: 14, scope: !2073, inlinedAt: !2125)
!2146 = !DILocation(line: 194, column: 45, scope: !1901, inlinedAt: !2145)
!2147 = !DILocation(line: 194, column: 53, scope: !1901, inlinedAt: !2145)
!2148 = !DILocation(line: 196, column: 19, scope: !1901, inlinedAt: !2145)
!2149 = !DILocation(line: 196, column: 24, scope: !1901, inlinedAt: !2145)
!2150 = !DILocation(line: 196, column: 28, scope: !1915, inlinedAt: !2145)
!2151 = !DILocation(line: 196, column: 27, scope: !1915, inlinedAt: !2145)
!2152 = !DILocation(line: 918, column: 31, scope: !1881, inlinedAt: !1885)
!2153 = !DILocation(line: 922, column: 43, scope: !1879, inlinedAt: !1885)
!2154 = !DILocation(line: 922, column: 37, scope: !1879, inlinedAt: !1885)
!2155 = !DILocation(line: 925, column: 16, scope: !1879, inlinedAt: !1885)
!2156 = !DILocation(line: 924, column: 31, scope: !1879, inlinedAt: !1885)
!2157 = !DILocation(line: 927, column: 31, scope: !1879, inlinedAt: !1885)
!2158 = !DILocation(line: 872, column: 17, scope: !1855, inlinedAt: !1885)
!2159 = !DILocalVariable(name: "es", arg: 1, scope: !2160, file: !3, line: 778, type: !1848)
!2160 = distinct !DISubprogram(name: "find_bracketed_repeat", scope: !3, file: !3, line: 778, type: !2161, isLocal: true, isDefinition: true, scopeLine: 781, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2164)
!2161 = !DISubroutineType(types: !2162)
!2162 = !{!71, !1848, !73, !601, !2163, !647}
!2163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!2164 = !{!2159, !2165, !2166, !2167, !2168, !2169, !2171, !2176, !2179, !2180}
!2165 = !DILocalVariable(name: "start_idx", arg: 2, scope: !2160, file: !3, line: 778, type: !73)
!2166 = !DILocalVariable(name: "char_to_repeat", arg: 3, scope: !2160, file: !3, line: 779, type: !601)
!2167 = !DILocalVariable(name: "repeat_count", arg: 4, scope: !2160, file: !3, line: 779, type: !2163)
!2168 = !DILocalVariable(name: "closing_bracket_idx", arg: 5, scope: !2160, file: !3, line: 780, type: !647)
!2169 = !DILocalVariable(name: "i", scope: !2170, file: !3, line: 786, type: !73)
!2170 = distinct !DILexicalBlock(scope: !2160, file: !3, line: 786, column: 3)
!2171 = !DILocalVariable(name: "digit_str_len", scope: !2172, file: !3, line: 790, type: !73)
!2172 = distinct !DILexicalBlock(scope: !2173, file: !3, line: 789, column: 9)
!2173 = distinct !DILexicalBlock(scope: !2174, file: !3, line: 788, column: 11)
!2174 = distinct !DILexicalBlock(scope: !2175, file: !3, line: 787, column: 5)
!2175 = distinct !DILexicalBlock(scope: !2170, file: !3, line: 786, column: 3)
!2176 = !DILocalVariable(name: "digit_str", scope: !2177, file: !3, line: 802, type: !81)
!2177 = distinct !DILexicalBlock(scope: !2178, file: !3, line: 799, column: 13)
!2178 = distinct !DILexicalBlock(scope: !2172, file: !3, line: 793, column: 15)
!2179 = !DILocalVariable(name: "d_end", scope: !2177, file: !3, line: 803, type: !68)
!2180 = !DILocalVariable(name: "tmp", scope: !2181, file: !3, line: 810, type: !68)
!2181 = distinct !DILexicalBlock(scope: !2182, file: !3, line: 809, column: 17)
!2182 = distinct !DILexicalBlock(scope: !2177, file: !3, line: 804, column: 19)
!2183 = !DILocation(line: 778, column: 47, scope: !2160, inlinedAt: !2184)
!2184 = distinct !DILocation(line: 943, column: 17, scope: !1855, inlinedAt: !1885)
!2185 = !DILocation(line: 779, column: 62, scope: !2160, inlinedAt: !2184)
!2186 = !DILocation(line: 782, column: 3, scope: !2187, inlinedAt: !2184)
!2187 = distinct !DILexicalBlock(scope: !2188, file: !3, line: 782, column: 3)
!2188 = distinct !DILexicalBlock(scope: !2160, file: !3, line: 782, column: 3)
!2189 = !DILocation(line: 782, column: 3, scope: !2188, inlinedAt: !2184)
!2190 = !DILocation(line: 782, column: 3, scope: !2191, inlinedAt: !2184)
!2191 = !DILexicalBlockFile(scope: !2187, file: !3, discriminator: 2)
!2192 = !DILocation(line: 194, column: 34, scope: !1901, inlinedAt: !2193)
!2193 = distinct !DILocation(line: 783, column: 8, scope: !2194, inlinedAt: !2184)
!2194 = distinct !DILexicalBlock(scope: !2160, file: !3, line: 783, column: 7)
!2195 = !DILocation(line: 194, column: 45, scope: !1901, inlinedAt: !2193)
!2196 = !DILocation(line: 194, column: 53, scope: !1901, inlinedAt: !2193)
!2197 = !DILocation(line: 196, column: 10, scope: !1901, inlinedAt: !2193)
!2198 = !DILocation(line: 196, column: 19, scope: !1901, inlinedAt: !2193)
!2199 = !DILocation(line: 196, column: 24, scope: !1901, inlinedAt: !2193)
!2200 = distinct !{!2200, !2201, !2202}
!2201 = !DILocation(line: 865, column: 3, scope: !1859)
!2202 = !DILocation(line: 982, column: 5, scope: !1859)
!2203 = !DILocation(line: 196, column: 28, scope: !1915, inlinedAt: !2193)
!2204 = !DILocation(line: 196, column: 27, scope: !1915, inlinedAt: !2193)
!2205 = !DILocation(line: 783, column: 7, scope: !2160, inlinedAt: !2184)
!2206 = !DILocation(line: 786, column: 29, scope: !2170, inlinedAt: !2184)
!2207 = !DILocation(line: 786, column: 15, scope: !2170, inlinedAt: !2184)
!2208 = !DILocation(line: 786, column: 36, scope: !2209, inlinedAt: !2184)
!2209 = !DILexicalBlockFile(scope: !2175, file: !3, discriminator: 1)
!2210 = !DILocation(line: 786, column: 46, scope: !2209, inlinedAt: !2184)
!2211 = !DILocation(line: 786, column: 50, scope: !2212, inlinedAt: !2184)
!2212 = !DILexicalBlockFile(scope: !2175, file: !3, discriminator: 2)
!2213 = !DILocation(line: 786, column: 49, scope: !2212, inlinedAt: !2184)
!2214 = !DILocation(line: 786, column: 3, scope: !2215, inlinedAt: !2184)
!2215 = !DILexicalBlockFile(scope: !2170, file: !3, discriminator: 3)
!2216 = !DILocation(line: 788, column: 11, scope: !2173, inlinedAt: !2184)
!2217 = !DILocation(line: 788, column: 20, scope: !2173, inlinedAt: !2184)
!2218 = !DILocation(line: 788, column: 11, scope: !2174, inlinedAt: !2184)
!2219 = !DILocation(line: 790, column: 36, scope: !2172, inlinedAt: !2184)
!2220 = !DILocation(line: 790, column: 48, scope: !2172, inlinedAt: !2184)
!2221 = !DILocation(line: 790, column: 18, scope: !2172, inlinedAt: !2184)
!2222 = !DILocation(line: 793, column: 29, scope: !2178, inlinedAt: !2184)
!2223 = !DILocation(line: 793, column: 15, scope: !2172, inlinedAt: !2184)
!2224 = !DILocation(line: 796, column: 29, scope: !2225, inlinedAt: !2184)
!2225 = distinct !DILexicalBlock(scope: !2178, file: !3, line: 794, column: 13)
!2226 = !{!971, !971, i64 0}
!2227 = !DILocation(line: 797, column: 13, scope: !2225, inlinedAt: !2184)
!2228 = !DILocation(line: 802, column: 40, scope: !2177, inlinedAt: !2184)
!2229 = !DILocation(line: 802, column: 27, scope: !2177, inlinedAt: !2184)
!2230 = !DILocation(line: 803, column: 15, scope: !2177, inlinedAt: !2184)
!2231 = !DILocation(line: 804, column: 51, scope: !2182, inlinedAt: !2184)
!2232 = !DILocation(line: 804, column: 62, scope: !2182, inlinedAt: !2184)
!2233 = !DILocation(line: 803, column: 21, scope: !2177, inlinedAt: !2184)
!2234 = !DILocation(line: 804, column: 20, scope: !2182, inlinedAt: !2184)
!2235 = !DILocation(line: 806, column: 20, scope: !2182, inlinedAt: !2184)
!2236 = !DILocation(line: 807, column: 45, scope: !2237, inlinedAt: !2184)
!2237 = !DILexicalBlockFile(scope: !2182, file: !3, discriminator: 1)
!2238 = !DILocation(line: 807, column: 43, scope: !2237, inlinedAt: !2184)
!2239 = !DILocation(line: 807, column: 19, scope: !2182, inlinedAt: !2184)
!2240 = !DILocation(line: 808, column: 32, scope: !2237, inlinedAt: !2184)
!2241 = !DILocation(line: 808, column: 51, scope: !2237, inlinedAt: !2184)
!2242 = !DILocation(line: 808, column: 48, scope: !2237, inlinedAt: !2184)
!2243 = !DILocation(line: 804, column: 19, scope: !2244, inlinedAt: !2184)
!2244 = !DILexicalBlockFile(scope: !2177, file: !3, discriminator: 1)
!2245 = !DILocation(line: 817, column: 13, scope: !2178, inlinedAt: !2184)
!2246 = !DILocation(line: 786, column: 67, scope: !2247, inlinedAt: !2184)
!2247 = !DILexicalBlockFile(scope: !2175, file: !3, discriminator: 5)
!2248 = !DILocation(line: 810, column: 31, scope: !2181, inlinedAt: !2184)
!2249 = !DILocation(line: 810, column: 25, scope: !2181, inlinedAt: !2184)
!2250 = !DILocation(line: 812, column: 26, scope: !2181, inlinedAt: !2184)
!2251 = !DILocation(line: 813, column: 26, scope: !2181, inlinedAt: !2184)
!2252 = !DILocation(line: 811, column: 19, scope: !2181, inlinedAt: !2184)
!2253 = !DILocation(line: 814, column: 19, scope: !2181, inlinedAt: !2184)
!2254 = !DILocation(line: 873, column: 15, scope: !1855, inlinedAt: !1885)
!2255 = !DILocation(line: 968, column: 9, scope: !1856, inlinedAt: !1885)
!2256 = !DILocation(line: 948, column: 61, scope: !2257, inlinedAt: !1885)
!2257 = distinct !DILexicalBlock(scope: !2258, file: !3, line: 947, column: 13)
!2258 = distinct !DILexicalBlock(scope: !1855, file: !3, line: 946, column: 15)
!2259 = !DILocation(line: 871, column: 25, scope: !1855, inlinedAt: !1885)
!2260 = !DILocation(line: 711, column: 41, scope: !1288, inlinedAt: !2261)
!2261 = distinct !DILocation(line: 948, column: 15, scope: !2257, inlinedAt: !1885)
!2262 = !DILocation(line: 711, column: 61, scope: !1288, inlinedAt: !2261)
!2263 = !DILocation(line: 712, column: 29, scope: !1288, inlinedAt: !2261)
!2264 = !DILocation(line: 714, column: 30, scope: !1288, inlinedAt: !2261)
!2265 = !DILocation(line: 715, column: 8, scope: !1288, inlinedAt: !2261)
!2266 = !DILocation(line: 715, column: 13, scope: !1288, inlinedAt: !2261)
!2267 = !DILocation(line: 716, column: 8, scope: !1288, inlinedAt: !2261)
!2268 = !DILocation(line: 716, column: 13, scope: !1288, inlinedAt: !2261)
!2269 = !DILocation(line: 717, column: 8, scope: !1288, inlinedAt: !2261)
!2270 = !DILocation(line: 717, column: 42, scope: !1288, inlinedAt: !2261)
!2271 = !DILocation(line: 718, column: 24, scope: !1288, inlinedAt: !2261)
!2272 = !DILocation(line: 718, column: 37, scope: !1288, inlinedAt: !2261)
!2273 = !DILocation(line: 719, column: 3, scope: !1310, inlinedAt: !2261)
!2274 = !DILocation(line: 719, column: 3, scope: !1311, inlinedAt: !2261)
!2275 = !DILocation(line: 719, column: 3, scope: !1314, inlinedAt: !2261)
!2276 = !DILocation(line: 720, column: 15, scope: !1288, inlinedAt: !2261)
!2277 = !DILocation(line: 720, column: 20, scope: !1288, inlinedAt: !2261)
!2278 = !DILocation(line: 721, column: 14, scope: !1288, inlinedAt: !2261)
!2279 = !DILocation(line: 870, column: 18, scope: !1855, inlinedAt: !1885)
!2280 = !DILocation(line: 949, column: 39, scope: !2257, inlinedAt: !1885)
!2281 = !DILocation(line: 865, column: 17, scope: !1891, inlinedAt: !1885)
!2282 = !DILocation(line: 933, column: 41, scope: !1868, inlinedAt: !1885)
!2283 = !DILocation(line: 971, column: 27, scope: !2284, inlinedAt: !1885)
!2284 = distinct !DILexicalBlock(scope: !1857, file: !3, line: 971, column: 11)
!2285 = !DILocation(line: 194, column: 34, scope: !1901, inlinedAt: !2286)
!2286 = distinct !DILocation(line: 971, column: 11, scope: !2284, inlinedAt: !1885)
!2287 = !DILocation(line: 194, column: 45, scope: !1901, inlinedAt: !2286)
!2288 = !DILocation(line: 194, column: 53, scope: !1901, inlinedAt: !2286)
!2289 = !DILocation(line: 196, column: 10, scope: !1901, inlinedAt: !2286)
!2290 = !DILocation(line: 196, column: 19, scope: !1901, inlinedAt: !2286)
!2291 = !DILocation(line: 196, column: 24, scope: !1901, inlinedAt: !2286)
!2292 = !DILocation(line: 196, column: 28, scope: !1915, inlinedAt: !2286)
!2293 = !DILocation(line: 196, column: 27, scope: !1915, inlinedAt: !2286)
!2294 = !DILocation(line: 971, column: 11, scope: !1857, inlinedAt: !1885)
!2295 = !DILocation(line: 973, column: 48, scope: !2296, inlinedAt: !1885)
!2296 = distinct !DILexicalBlock(scope: !2297, file: !3, line: 973, column: 15)
!2297 = distinct !DILexicalBlock(scope: !2284, file: !3, line: 972, column: 9)
!2298 = !DILocation(line: 973, column: 44, scope: !2296, inlinedAt: !1885)
!2299 = !DILocalVariable(name: "list", arg: 1, scope: !2300, file: !3, line: 658, type: !795)
!2300 = distinct !DISubprogram(name: "append_range", scope: !3, file: !3, line: 658, type: !2301, isLocal: true, isDefinition: true, scopeLine: 659, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2303)
!2301 = !DISubroutineType(types: !2302)
!2302 = !{!87, !795, !80, !80}
!2303 = !{!2299, !2304, !2305, !2306, !2309, !2310}
!2304 = !DILocalVariable(name: "first", arg: 2, scope: !2300, file: !3, line: 658, type: !80)
!2305 = !DILocalVariable(name: "last", arg: 3, scope: !2300, file: !3, line: 658, type: !80)
!2306 = !DILocalVariable(name: "tmp1", scope: !2307, file: !3, line: 662, type: !68)
!2307 = distinct !DILexicalBlock(scope: !2308, file: !3, line: 661, column: 5)
!2308 = distinct !DILexicalBlock(scope: !2300, file: !3, line: 660, column: 7)
!2309 = !DILocalVariable(name: "tmp2", scope: !2307, file: !3, line: 663, type: !68)
!2310 = !DILocalVariable(name: "new", scope: !2300, file: !3, line: 672, type: !760)
!2311 = !DILocation(line: 658, column: 33, scope: !2300, inlinedAt: !2312)
!2312 = distinct !DILocation(line: 973, column: 16, scope: !2296, inlinedAt: !1885)
!2313 = !DILocation(line: 658, column: 53, scope: !2300, inlinedAt: !2312)
!2314 = !DILocation(line: 658, column: 74, scope: !2300, inlinedAt: !2312)
!2315 = !DILocation(line: 660, column: 12, scope: !2308, inlinedAt: !2312)
!2316 = !DILocation(line: 660, column: 7, scope: !2300, inlinedAt: !2312)
!2317 = !DILocalVariable(name: "c", arg: 1, scope: !2318, file: !3, line: 558, type: !80)
!2318 = distinct !DISubprogram(name: "make_printable_char", scope: !3, file: !3, line: 558, type: !2319, isLocal: true, isDefinition: true, scopeLine: 559, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2321)
!2319 = !DISubroutineType(types: !2320)
!2320 = !{!68, !80}
!2321 = !{!2317, !2322}
!2322 = !DILocalVariable(name: "buf", scope: !2318, file: !3, line: 560, type: !68)
!2323 = !DILocation(line: 558, column: 36, scope: !2318, inlinedAt: !2324)
!2324 = distinct !DILocation(line: 662, column: 20, scope: !2307, inlinedAt: !2312)
!2325 = !DILocation(line: 560, column: 15, scope: !2318, inlinedAt: !2324)
!2326 = !DILocation(line: 560, column: 9, scope: !2318, inlinedAt: !2324)
!2327 = !DILocation(line: 562, column: 7, scope: !2328, inlinedAt: !2324)
!2328 = distinct !DILexicalBlock(scope: !2318, file: !3, line: 562, column: 7)
!2329 = !DILocation(line: 562, column: 7, scope: !2318, inlinedAt: !2324)
!2330 = !DILocation(line: 564, column: 14, scope: !2331, inlinedAt: !2324)
!2331 = distinct !DILexicalBlock(scope: !2328, file: !3, line: 563, column: 5)
!2332 = !DILocation(line: 565, column: 7, scope: !2331, inlinedAt: !2324)
!2333 = !DILocation(line: 565, column: 14, scope: !2331, inlinedAt: !2324)
!2334 = !DILocation(line: 566, column: 5, scope: !2331, inlinedAt: !2324)
!2335 = !DILocation(line: 569, column: 7, scope: !2336, inlinedAt: !2324)
!2336 = distinct !DILexicalBlock(scope: !2328, file: !3, line: 568, column: 5)
!2337 = !DILocation(line: 662, column: 13, scope: !2307, inlinedAt: !2312)
!2338 = !DILocation(line: 558, column: 36, scope: !2318, inlinedAt: !2339)
!2339 = distinct !DILocation(line: 663, column: 20, scope: !2307, inlinedAt: !2312)
!2340 = !DILocation(line: 560, column: 15, scope: !2318, inlinedAt: !2339)
!2341 = !DILocation(line: 560, column: 9, scope: !2318, inlinedAt: !2339)
!2342 = !DILocation(line: 562, column: 7, scope: !2328, inlinedAt: !2339)
!2343 = !DILocation(line: 562, column: 7, scope: !2318, inlinedAt: !2339)
!2344 = !DILocation(line: 564, column: 14, scope: !2331, inlinedAt: !2339)
!2345 = !DILocation(line: 565, column: 7, scope: !2331, inlinedAt: !2339)
!2346 = !DILocation(line: 565, column: 14, scope: !2331, inlinedAt: !2339)
!2347 = !DILocation(line: 566, column: 5, scope: !2331, inlinedAt: !2339)
!2348 = !DILocation(line: 569, column: 7, scope: !2336, inlinedAt: !2339)
!2349 = !DILocation(line: 672, column: 30, scope: !2300, inlinedAt: !2312)
!2350 = !DILocation(line: 673, column: 8, scope: !2300, inlinedAt: !2312)
!2351 = !DILocation(line: 673, column: 13, scope: !2300, inlinedAt: !2312)
!2352 = !DILocation(line: 674, column: 8, scope: !2300, inlinedAt: !2312)
!2353 = !DILocation(line: 674, column: 13, scope: !2300, inlinedAt: !2312)
!2354 = !DILocation(line: 675, column: 8, scope: !2300, inlinedAt: !2312)
!2355 = !DILocation(line: 675, column: 27, scope: !2300, inlinedAt: !2312)
!2356 = !{!2357, !698, i64 0}
!2357 = !{!"", !698, i64 0, !698, i64 1}
!2358 = !DILocation(line: 676, column: 16, scope: !2300, inlinedAt: !2312)
!2359 = !DILocation(line: 676, column: 26, scope: !2300, inlinedAt: !2312)
!2360 = !{!2357, !698, i64 1}
!2361 = !DILocation(line: 677, column: 3, scope: !2362, inlinedAt: !2312)
!2362 = distinct !DILexicalBlock(scope: !2363, file: !3, line: 677, column: 3)
!2363 = distinct !DILexicalBlock(scope: !2300, file: !3, line: 677, column: 3)
!2364 = !DILocation(line: 677, column: 3, scope: !2363, inlinedAt: !2312)
!2365 = !DILocation(line: 677, column: 3, scope: !2366, inlinedAt: !2312)
!2366 = !DILexicalBlockFile(scope: !2362, file: !3, discriminator: 2)
!2367 = !DILocation(line: 663, column: 13, scope: !2307, inlinedAt: !2312)
!2368 = !DILocation(line: 666, column: 8, scope: !2307, inlinedAt: !2312)
!2369 = !DILocation(line: 665, column: 7, scope: !2307, inlinedAt: !2312)
!2370 = !DILocation(line: 668, column: 7, scope: !2307, inlinedAt: !2312)
!2371 = !DILocation(line: 669, column: 7, scope: !2307, inlinedAt: !2312)
!2372 = !DILocation(line: 973, column: 15, scope: !2297, inlinedAt: !1885)
!2373 = !DILocation(line: 678, column: 15, scope: !2300, inlinedAt: !2312)
!2374 = !DILocation(line: 678, column: 20, scope: !2300, inlinedAt: !2312)
!2375 = !DILocation(line: 679, column: 14, scope: !2300, inlinedAt: !2312)
!2376 = !DILocation(line: 975, column: 13, scope: !2297, inlinedAt: !1885)
!2377 = !DILocation(line: 976, column: 9, scope: !2297, inlinedAt: !1885)
!2378 = !DILocalVariable(name: "list", arg: 1, scope: !2379, file: !3, line: 641, type: !795)
!2379 = distinct !DISubprogram(name: "append_normal_char", scope: !3, file: !3, line: 641, type: !2380, isLocal: true, isDefinition: true, scopeLine: 642, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2382)
!2380 = !DISubroutineType(types: !2381)
!2381 = !{null, !795, !80}
!2382 = !{!2378, !2383, !2384}
!2383 = !DILocalVariable(name: "c", arg: 2, scope: !2379, file: !3, line: 641, type: !80)
!2384 = !DILocalVariable(name: "new", scope: !2379, file: !3, line: 643, type: !760)
!2385 = !DILocation(line: 641, column: 39, scope: !2379, inlinedAt: !2386)
!2386 = distinct !DILocation(line: 979, column: 11, scope: !2387, inlinedAt: !1885)
!2387 = distinct !DILexicalBlock(scope: !2284, file: !3, line: 978, column: 9)
!2388 = !DILocation(line: 643, column: 30, scope: !2379, inlinedAt: !2386)
!2389 = !DILocation(line: 644, column: 8, scope: !2379, inlinedAt: !2386)
!2390 = !DILocation(line: 644, column: 13, scope: !2379, inlinedAt: !2386)
!2391 = !DILocation(line: 645, column: 8, scope: !2379, inlinedAt: !2386)
!2392 = !DILocation(line: 645, column: 13, scope: !2379, inlinedAt: !2386)
!2393 = !DILocation(line: 646, column: 8, scope: !2379, inlinedAt: !2386)
!2394 = !DILocation(line: 646, column: 22, scope: !2379, inlinedAt: !2386)
!2395 = !DILocation(line: 647, column: 3, scope: !2396, inlinedAt: !2386)
!2396 = distinct !DILexicalBlock(scope: !2397, file: !3, line: 647, column: 3)
!2397 = distinct !DILexicalBlock(scope: !2379, file: !3, line: 647, column: 3)
!2398 = !DILocation(line: 647, column: 3, scope: !2397, inlinedAt: !2386)
!2399 = !DILocation(line: 647, column: 3, scope: !2400, inlinedAt: !2386)
!2400 = !DILexicalBlockFile(scope: !2396, file: !3, discriminator: 2)
!2401 = !DILocation(line: 648, column: 15, scope: !2379, inlinedAt: !2386)
!2402 = !DILocation(line: 648, column: 20, scope: !2379, inlinedAt: !2386)
!2403 = !DILocation(line: 649, column: 14, scope: !2379, inlinedAt: !2386)
!2404 = !DILocation(line: 986, column: 33, scope: !1896, inlinedAt: !1885)
!2405 = !DILocation(line: 641, column: 39, scope: !2379, inlinedAt: !2406)
!2406 = distinct !DILocation(line: 986, column: 5, scope: !1896, inlinedAt: !1885)
!2407 = !DILocation(line: 641, column: 59, scope: !2379, inlinedAt: !2406)
!2408 = !DILocation(line: 643, column: 30, scope: !2379, inlinedAt: !2406)
!2409 = !DILocation(line: 644, column: 8, scope: !2379, inlinedAt: !2406)
!2410 = !DILocation(line: 644, column: 13, scope: !2379, inlinedAt: !2406)
!2411 = !DILocation(line: 645, column: 8, scope: !2379, inlinedAt: !2406)
!2412 = !DILocation(line: 645, column: 13, scope: !2379, inlinedAt: !2406)
!2413 = !DILocation(line: 646, column: 8, scope: !2379, inlinedAt: !2406)
!2414 = !DILocation(line: 646, column: 22, scope: !2379, inlinedAt: !2406)
!2415 = !DILocation(line: 647, column: 3, scope: !2396, inlinedAt: !2406)
!2416 = !DILocation(line: 647, column: 3, scope: !2397, inlinedAt: !2406)
!2417 = !DILocation(line: 647, column: 3, scope: !2400, inlinedAt: !2406)
!2418 = !DILocation(line: 648, column: 15, scope: !2379, inlinedAt: !2406)
!2419 = !DILocation(line: 648, column: 20, scope: !2379, inlinedAt: !2406)
!2420 = !DILocation(line: 649, column: 14, scope: !2379, inlinedAt: !2406)
!2421 = !DILocation(line: 985, column: 24, scope: !2422, inlinedAt: !1885)
!2422 = !DILexicalBlockFile(scope: !1896, file: !3, discriminator: 2)
!2423 = distinct !{!2423, !2424, !2425}
!2424 = !DILocation(line: 985, column: 3, scope: !1897)
!2425 = !DILocation(line: 986, column: 37, scope: !1897)
!2426 = !DILocalVariable(name: "es", arg: 1, scope: !2427, file: !3, line: 417, type: !1757)
!2427 = distinct !DISubprogram(name: "es_free", scope: !3, file: !3, line: 417, type: !2428, isLocal: true, isDefinition: true, scopeLine: 418, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2430)
!2428 = !DISubroutineType(types: !2429)
!2429 = !{null, !1757}
!2430 = !{!2426}
!2431 = !DILocation(line: 417, column: 27, scope: !2427, inlinedAt: !2432)
!2432 = distinct !DILocation(line: 1356, column: 3, scope: !1737)
!2433 = !DILocation(line: 419, column: 3, scope: !2427, inlinedAt: !2432)
!2434 = !DILocation(line: 420, column: 3, scope: !2427, inlinedAt: !2432)
!2435 = !DILocation(line: 1357, column: 3, scope: !1737)
!2436 = distinct !DISubprogram(name: "get_spec_stats", scope: !3, file: !3, line: 1242, type: !858, isLocal: true, isDefinition: true, scopeLine: 1243, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2437)
!2437 = !{!2438, !2439, !2440, !2441, !2445, !2446, !2449}
!2438 = !DILocalVariable(name: "s", arg: 1, scope: !2436, file: !3, line: 1242, type: !795)
!2439 = !DILocalVariable(name: "p", scope: !2436, file: !3, line: 1244, type: !760)
!2440 = !DILocalVariable(name: "length", scope: !2436, file: !3, line: 1245, type: !781)
!2441 = !DILocalVariable(name: "len", scope: !2442, file: !3, line: 1253, type: !781)
!2442 = distinct !DILexicalBlock(scope: !2443, file: !3, line: 1252, column: 5)
!2443 = distinct !DILexicalBlock(scope: !2444, file: !3, line: 1251, column: 3)
!2444 = distinct !DILexicalBlock(scope: !2436, file: !3, line: 1251, column: 3)
!2445 = !DILocalVariable(name: "new_length", scope: !2442, file: !3, line: 1254, type: !781)
!2446 = !DILocalVariable(name: "i", scope: !2447, file: !3, line: 1269, type: !71)
!2447 = distinct !DILexicalBlock(scope: !2448, file: !3, line: 1269, column: 11)
!2448 = distinct !DILexicalBlock(scope: !2442, file: !3, line: 1257, column: 9)
!2449 = !DILocalVariable(name: "i", scope: !2450, file: !3, line: 1284, type: !71)
!2450 = distinct !DILexicalBlock(scope: !2448, file: !3, line: 1284, column: 11)
!2451 = !DILocation(line: 1242, column: 35, scope: !2436)
!2452 = !DILocation(line: 1245, column: 9, scope: !2436)
!2453 = !DILocation(line: 1247, column: 6, scope: !2436)
!2454 = !DILocation(line: 1247, column: 27, scope: !2436)
!2455 = !DILocation(line: 1248, column: 6, scope: !2436)
!2456 = !DILocation(line: 1248, column: 22, scope: !2436)
!2457 = !DILocation(line: 1249, column: 6, scope: !2436)
!2458 = !DILocation(line: 1249, column: 32, scope: !2436)
!2459 = !DILocation(line: 1250, column: 6, scope: !2436)
!2460 = !DILocation(line: 1250, column: 21, scope: !2436)
!2461 = !DILocation(line: 1251, column: 15, scope: !2444)
!2462 = !DILocation(line: 1251, column: 8, scope: !2444)
!2463 = !DILocation(line: 1296, column: 15, scope: !2464)
!2464 = distinct !DILexicalBlock(scope: !2465, file: !3, line: 1294, column: 13)
!2465 = distinct !DILexicalBlock(scope: !2448, file: !3, line: 1291, column: 15)
!2466 = !DILocation(line: 1244, column: 24, scope: !2436)
!2467 = !DILocation(line: 1251, column: 3, scope: !2468)
!2468 = !DILexicalBlockFile(scope: !2444, file: !3, discriminator: 1)
!2469 = !DILocation(line: 1253, column: 13, scope: !2442)
!2470 = !DILocation(line: 1256, column: 18, scope: !2442)
!2471 = !DILocation(line: 1256, column: 7, scope: !2442)
!2472 = !DILocation(line: 1284, column: 20, scope: !2450)
!2473 = !DILocation(line: 1284, column: 11, scope: !2474)
!2474 = !DILexicalBlockFile(scope: !2450, file: !3, discriminator: 1)
!2475 = !DILocation(line: 1263, column: 11, scope: !2476)
!2476 = distinct !DILexicalBlock(scope: !2477, file: !3, line: 1263, column: 11)
!2477 = distinct !DILexicalBlock(scope: !2448, file: !3, line: 1263, column: 11)
!2478 = !DILocation(line: 1263, column: 11, scope: !2477)
!2479 = !DILocation(line: 1263, column: 11, scope: !2480)
!2480 = !DILexicalBlockFile(scope: !2476, file: !3, discriminator: 2)
!2481 = !DILocation(line: 1264, column: 38, scope: !2448)
!2482 = !DILocation(line: 1264, column: 62, scope: !2448)
!2483 = !DILocation(line: 1265, column: 11, scope: !2448)
!2484 = !DILocation(line: 1268, column: 29, scope: !2448)
!2485 = !DILocation(line: 1269, column: 20, scope: !2447)
!2486 = !DILocation(line: 1269, column: 11, scope: !2487)
!2487 = !DILexicalBlockFile(scope: !2447, file: !3, discriminator: 1)
!2488 = !DILocation(line: 1272, column: 11, scope: !2448)
!2489 = !DILocalVariable(name: "char_class", arg: 1, scope: !2490, file: !3, line: 367, type: !12)
!2490 = distinct !DISubprogram(name: "is_char_class_member", scope: !3, file: !3, line: 367, type: !2491, isLocal: true, isDefinition: true, scopeLine: 368, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2493)
!2491 = !DISubroutineType(types: !2492)
!2492 = !{!87, !12, !80}
!2493 = !{!2489, !2494, !2495}
!2494 = !DILocalVariable(name: "c", arg: 2, scope: !2490, file: !3, line: 367, type: !80)
!2495 = !DILocalVariable(name: "result", scope: !2490, file: !3, line: 369, type: !71)
!2496 = !DILocation(line: 367, column: 39, scope: !2490, inlinedAt: !2497)
!2497 = distinct !DILocation(line: 1270, column: 17, scope: !2498)
!2498 = distinct !DILexicalBlock(scope: !2499, file: !3, line: 1270, column: 17)
!2499 = distinct !DILexicalBlock(scope: !2447, file: !3, line: 1269, column: 11)
!2500 = !DILocation(line: 371, column: 3, scope: !2490, inlinedAt: !2497)
!2501 = !DILocation(line: 410, column: 7, scope: !2502, inlinedAt: !2497)
!2502 = distinct !DILexicalBlock(scope: !2490, file: !3, line: 372, column: 5)
!2503 = !DILocation(line: 407, column: 16, scope: !2502, inlinedAt: !2497)
!2504 = !DILocation(line: 413, column: 11, scope: !2490, inlinedAt: !2497)
!2505 = !DILocation(line: 1270, column: 17, scope: !2499)
!2506 = !DILocation(line: 1269, column: 41, scope: !2507)
!2507 = !DILexicalBlockFile(scope: !2499, file: !3, discriminator: 3)
!2508 = !DILocation(line: 1269, column: 29, scope: !2509)
!2509 = !DILexicalBlockFile(scope: !2499, file: !3, discriminator: 1)
!2510 = distinct !{!2510, !2511, !2512}
!2511 = !DILocation(line: 1269, column: 11, scope: !2447)
!2512 = !DILocation(line: 1271, column: 17, scope: !2447)
!2513 = !DILocation(line: 1278, column: 44, scope: !2514)
!2514 = distinct !DILexicalBlock(scope: !2448, file: !3, line: 1273, column: 13)
!2515 = !DILocation(line: 1279, column: 15, scope: !2514)
!2516 = !DILocation(line: 1287, column: 30, scope: !2448)
!2517 = !DILocation(line: 1288, column: 11, scope: !2448)
!2518 = !DILocation(line: 1285, column: 57, scope: !2519)
!2519 = distinct !DILexicalBlock(scope: !2520, file: !3, line: 1285, column: 17)
!2520 = distinct !DILexicalBlock(scope: !2450, file: !3, line: 1284, column: 11)
!2521 = !DILocalVariable(name: "equiv_class", arg: 1, scope: !2522, file: !3, line: 358, type: !80)
!2522 = distinct !DISubprogram(name: "is_equiv_class_member", scope: !3, file: !3, line: 358, type: !2523, isLocal: true, isDefinition: true, scopeLine: 359, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2525)
!2523 = !DISubroutineType(types: !2524)
!2524 = !{!87, !80, !80}
!2525 = !{!2521, !2526}
!2526 = !DILocalVariable(name: "c", arg: 2, scope: !2522, file: !3, line: 358, type: !80)
!2527 = !DILocation(line: 358, column: 38, scope: !2522, inlinedAt: !2528)
!2528 = distinct !DILocation(line: 1285, column: 17, scope: !2519)
!2529 = !DILocation(line: 358, column: 65, scope: !2522, inlinedAt: !2528)
!2530 = !DILocation(line: 360, column: 23, scope: !2522, inlinedAt: !2528)
!2531 = !DILocation(line: 1285, column: 17, scope: !2520)
!2532 = !DILocation(line: 1284, column: 41, scope: !2533)
!2533 = !DILexicalBlockFile(scope: !2520, file: !3, discriminator: 3)
!2534 = !DILocation(line: 1284, column: 29, scope: !2535)
!2535 = !DILexicalBlockFile(scope: !2520, file: !3, discriminator: 1)
!2536 = distinct !{!2536, !2537, !2538}
!2537 = !DILocation(line: 1284, column: 11, scope: !2450)
!2538 = !DILocation(line: 1286, column: 17, scope: !2450)
!2539 = !DILocation(line: 1291, column: 34, scope: !2465)
!2540 = !DILocation(line: 1291, column: 47, scope: !2465)
!2541 = !DILocation(line: 1291, column: 15, scope: !2448)
!2542 = !DILocation(line: 1295, column: 44, scope: !2464)
!2543 = !DILocation(line: 1301, column: 11, scope: !2448)
!2544 = !DILocation(line: 1308, column: 27, scope: !2442)
!2545 = !DILocation(line: 1254, column: 13, scope: !2442)
!2546 = !DILocation(line: 1309, column: 21, scope: !2547)
!2547 = distinct !DILexicalBlock(scope: !2442, file: !3, line: 1309, column: 11)
!2548 = !DILocation(line: 1309, column: 49, scope: !2549)
!2549 = !DILexicalBlockFile(scope: !2547, file: !3, discriminator: 1)
!2550 = !DILocation(line: 1309, column: 35, scope: !2547)
!2551 = distinct !{!2551, !2552, !2553}
!2552 = !DILocation(line: 1251, column: 3, scope: !2444)
!2553 = !DILocation(line: 1312, column: 5, scope: !2444)
!2554 = !DILocation(line: 1310, column: 9, scope: !2547)
!2555 = !DILocation(line: 1310, column: 9, scope: !2549)
!2556 = !DILocation(line: 1314, column: 6, scope: !2436)
!2557 = !DILocation(line: 1314, column: 13, scope: !2436)
!2558 = !DILocation(line: 1315, column: 1, scope: !2436)
!2559 = distinct !DISubprogram(name: "get_next", scope: !3, file: !3, line: 1015, type: !2560, isLocal: true, isDefinition: true, scopeLine: 1016, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2563)
!2560 = !DISubroutineType(types: !2561)
!2561 = !{!71, !795, !2562}
!2562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!2563 = !{!2564, !2565, !2566, !2567, !2568}
!2564 = !DILocalVariable(name: "s", arg: 1, scope: !2559, file: !3, line: 1015, type: !795)
!2565 = !DILocalVariable(name: "class", arg: 2, scope: !2559, file: !3, line: 1015, type: !2562)
!2566 = !DILocalVariable(name: "p", scope: !2559, file: !3, line: 1017, type: !760)
!2567 = !DILocalVariable(name: "return_val", scope: !2559, file: !3, line: 1018, type: !71)
!2568 = !DILocalVariable(name: "i", scope: !2559, file: !3, line: 1019, type: !71)
!2569 = !DILocation(line: 1015, column: 29, scope: !2559)
!2570 = !DILocation(line: 1015, column: 56, scope: !2559)
!2571 = !DILocation(line: 1021, column: 7, scope: !2559)
!2572 = !DILocation(line: 1022, column: 12, scope: !2573)
!2573 = distinct !DILexicalBlock(scope: !2559, file: !3, line: 1021, column: 7)
!2574 = !DILocation(line: 1022, column: 5, scope: !2573)
!2575 = !DILocation(line: 1024, column: 10, scope: !2576)
!2576 = distinct !DILexicalBlock(scope: !2559, file: !3, line: 1024, column: 7)
!2577 = !DILocation(line: 1024, column: 16, scope: !2576)
!2578 = !DILocation(line: 1024, column: 7, scope: !2559)
!2579 = !DILocation(line: 1026, column: 20, scope: !2580)
!2580 = distinct !DILexicalBlock(scope: !2576, file: !3, line: 1025, column: 5)
!2581 = !DILocation(line: 1026, column: 26, scope: !2580)
!2582 = !DILocation(line: 1026, column: 15, scope: !2580)
!2583 = !DILocation(line: 1027, column: 16, scope: !2580)
!2584 = !DILocation(line: 1028, column: 5, scope: !2580)
!2585 = !DILocation(line: 1043, column: 14, scope: !2586)
!2586 = distinct !DILexicalBlock(scope: !2587, file: !3, line: 1043, column: 11)
!2587 = distinct !DILexicalBlock(scope: !2559, file: !3, line: 1035, column: 5)
!2588 = !DILocation(line: 1030, column: 10, scope: !2559)
!2589 = !DILocation(line: 1017, column: 24, scope: !2559)
!2590 = !DILocation(line: 1031, column: 9, scope: !2591)
!2591 = distinct !DILexicalBlock(scope: !2559, file: !3, line: 1031, column: 7)
!2592 = !DILocation(line: 1031, column: 7, scope: !2559)
!2593 = !DILocation(line: 1034, column: 14, scope: !2559)
!2594 = !DILocation(line: 1034, column: 3, scope: !2559)
!2595 = !DILocation(line: 1037, column: 25, scope: !2587)
!2596 = !DILocation(line: 1037, column: 20, scope: !2587)
!2597 = !DILocation(line: 1018, column: 7, scope: !2559)
!2598 = !DILocation(line: 1038, column: 16, scope: !2587)
!2599 = !DILocation(line: 1039, column: 20, scope: !2587)
!2600 = !DILocation(line: 1039, column: 15, scope: !2587)
!2601 = !DILocation(line: 1040, column: 7, scope: !2587)
!2602 = !DILocation(line: 1043, column: 20, scope: !2586)
!2603 = !DILocation(line: 1043, column: 11, scope: !2587)
!2604 = !DILocation(line: 1044, column: 31, scope: !2586)
!2605 = !DILocation(line: 1044, column: 20, scope: !2586)
!2606 = !DILocation(line: 1044, column: 9, scope: !2586)
!2607 = !DILocation(line: 1046, column: 9, scope: !2586)
!2608 = !DILocation(line: 1044, column: 18, scope: !2586)
!2609 = !DILocation(line: 1047, column: 20, scope: !2587)
!2610 = !DILocation(line: 1048, column: 26, scope: !2611)
!2611 = distinct !DILexicalBlock(scope: !2587, file: !3, line: 1048, column: 11)
!2612 = !DILocation(line: 1048, column: 28, scope: !2611)
!2613 = !DILocation(line: 1048, column: 34, scope: !2611)
!2614 = !DILocation(line: 1048, column: 23, scope: !2611)
!2615 = !DILocation(line: 1048, column: 20, scope: !2611)
!2616 = !DILocation(line: 1048, column: 11, scope: !2587)
!2617 = !DILocation(line: 1050, column: 24, scope: !2618)
!2618 = distinct !DILexicalBlock(scope: !2611, file: !3, line: 1049, column: 9)
!2619 = !DILocation(line: 1050, column: 19, scope: !2618)
!2620 = !DILocation(line: 1051, column: 20, scope: !2618)
!2621 = !DILocation(line: 1052, column: 9, scope: !2618)
!2622 = !DILocation(line: 1056, column: 11, scope: !2587)
!2623 = !DILocation(line: 1058, column: 22, scope: !2624)
!2624 = distinct !DILexicalBlock(scope: !2625, file: !3, line: 1057, column: 9)
!2625 = distinct !DILexicalBlock(scope: !2587, file: !3, line: 1056, column: 11)
!2626 = !DILocation(line: 1058, column: 24, scope: !2624)
!2627 = !DILocation(line: 1058, column: 11, scope: !2624)
!2628 = !DILocation(line: 1061, column: 22, scope: !2629)
!2629 = distinct !DILexicalBlock(scope: !2624, file: !3, line: 1059, column: 13)
!2630 = !DILocation(line: 1062, column: 15, scope: !2629)
!2631 = !DILocation(line: 1064, column: 22, scope: !2629)
!2632 = !DILocation(line: 1065, column: 15, scope: !2629)
!2633 = !DILocation(line: 1071, column: 14, scope: !2634)
!2634 = distinct !DILexicalBlock(scope: !2587, file: !3, line: 1071, column: 11)
!2635 = !DILocation(line: 1071, column: 20, scope: !2634)
!2636 = !DILocation(line: 1071, column: 11, scope: !2587)
!2637 = !DILocation(line: 1019, column: 7, scope: !2559)
!2638 = !DILocation(line: 1073, column: 11, scope: !2639)
!2639 = !DILexicalBlockFile(scope: !2640, file: !3, discriminator: 1)
!2640 = distinct !DILexicalBlock(scope: !2641, file: !3, line: 1073, column: 11)
!2641 = distinct !DILexicalBlock(scope: !2634, file: !3, line: 1072, column: 9)
!2642 = !DILocation(line: 407, column: 16, scope: !2502, inlinedAt: !2643)
!2643 = distinct !DILocation(line: 1074, column: 17, scope: !2644)
!2644 = distinct !DILexicalBlock(scope: !2645, file: !3, line: 1074, column: 17)
!2645 = distinct !DILexicalBlock(scope: !2640, file: !3, line: 1073, column: 11)
!2646 = !DILocation(line: 367, column: 39, scope: !2490, inlinedAt: !2643)
!2647 = !DILocation(line: 413, column: 11, scope: !2490, inlinedAt: !2643)
!2648 = !DILocation(line: 1074, column: 17, scope: !2645)
!2649 = !DILocation(line: 410, column: 7, scope: !2502, inlinedAt: !2643)
!2650 = !DILocation(line: 1073, column: 37, scope: !2651)
!2651 = !DILexicalBlockFile(scope: !2645, file: !3, discriminator: 2)
!2652 = !DILocation(line: 1076, column: 11, scope: !2653)
!2653 = !DILexicalBlockFile(scope: !2654, file: !3, discriminator: 2)
!2654 = distinct !DILexicalBlock(scope: !2655, file: !3, line: 1076, column: 11)
!2655 = distinct !DILexicalBlock(scope: !2641, file: !3, line: 1076, column: 11)
!2656 = !DILocation(line: 1077, column: 22, scope: !2641)
!2657 = !DILocation(line: 1077, column: 20, scope: !2641)
!2658 = !DILocation(line: 1078, column: 9, scope: !2641)
!2659 = !DILocation(line: 1079, column: 7, scope: !2660)
!2660 = distinct !DILexicalBlock(scope: !2661, file: !3, line: 1079, column: 7)
!2661 = distinct !DILexicalBlock(scope: !2587, file: !3, line: 1079, column: 7)
!2662 = !DILocation(line: 367, column: 39, scope: !2490, inlinedAt: !2663)
!2663 = distinct !DILocation(line: 1079, column: 7, scope: !2660)
!2664 = !DILocation(line: 371, column: 3, scope: !2490, inlinedAt: !2663)
!2665 = !DILocation(line: 410, column: 7, scope: !2502, inlinedAt: !2663)
!2666 = !DILocation(line: 407, column: 16, scope: !2502, inlinedAt: !2663)
!2667 = !DILocation(line: 413, column: 11, scope: !2490, inlinedAt: !2663)
!2668 = !DILocation(line: 1079, column: 7, scope: !2661)
!2669 = !DILocation(line: 1079, column: 7, scope: !2670)
!2670 = !DILexicalBlockFile(scope: !2660, file: !3, discriminator: 2)
!2671 = !DILocation(line: 1080, column: 20, scope: !2587)
!2672 = !DILocation(line: 1081, column: 25, scope: !2673)
!2673 = distinct !DILexicalBlock(scope: !2587, file: !3, line: 1081, column: 7)
!2674 = !DILocation(line: 1081, column: 16, scope: !2673)
!2675 = !DILocation(line: 1081, column: 32, scope: !2676)
!2676 = !DILexicalBlockFile(scope: !2677, file: !3, discriminator: 1)
!2677 = distinct !DILexicalBlock(scope: !2673, file: !3, line: 1081, column: 7)
!2678 = !DILocation(line: 1081, column: 7, scope: !2679)
!2679 = !DILexicalBlockFile(scope: !2673, file: !3, discriminator: 1)
!2680 = !DILocation(line: 367, column: 39, scope: !2490, inlinedAt: !2681)
!2681 = distinct !DILocation(line: 1082, column: 13, scope: !2682)
!2682 = distinct !DILexicalBlock(scope: !2677, file: !3, line: 1082, column: 13)
!2683 = !DILocation(line: 413, column: 11, scope: !2490, inlinedAt: !2681)
!2684 = !DILocation(line: 1082, column: 13, scope: !2677)
!2685 = !DILocation(line: 1081, column: 44, scope: !2686)
!2686 = !DILexicalBlockFile(scope: !2677, file: !3, discriminator: 2)
!2687 = distinct !{!2687, !2688, !2689}
!2688 = !DILocation(line: 1081, column: 7, scope: !2673)
!2689 = !DILocation(line: 1083, column: 11, scope: !2673)
!2690 = !DILocation(line: 1085, column: 20, scope: !2691)
!2691 = distinct !DILexicalBlock(scope: !2587, file: !3, line: 1084, column: 11)
!2692 = !DILocation(line: 1085, column: 9, scope: !2691)
!2693 = !DILocation(line: 1088, column: 24, scope: !2694)
!2694 = distinct !DILexicalBlock(scope: !2691, file: !3, line: 1087, column: 9)
!2695 = !DILocation(line: 1088, column: 19, scope: !2694)
!2696 = !DILocation(line: 1091, column: 7, scope: !2587)
!2697 = !DILocation(line: 1099, column: 25, scope: !2587)
!2698 = !DILocation(line: 1099, column: 20, scope: !2587)
!2699 = !DILocation(line: 1100, column: 16, scope: !2587)
!2700 = !DILocation(line: 1101, column: 20, scope: !2587)
!2701 = !DILocation(line: 1101, column: 15, scope: !2587)
!2702 = !DILocation(line: 1102, column: 7, scope: !2587)
!2703 = !DILocation(line: 1106, column: 30, scope: !2704)
!2704 = distinct !DILexicalBlock(scope: !2587, file: !3, line: 1106, column: 11)
!2705 = !DILocation(line: 1106, column: 43, scope: !2704)
!2706 = !DILocation(line: 1106, column: 11, scope: !2587)
!2707 = !DILocation(line: 1108, column: 24, scope: !2708)
!2708 = distinct !DILexicalBlock(scope: !2704, file: !3, line: 1107, column: 9)
!2709 = !DILocation(line: 1108, column: 19, scope: !2708)
!2710 = !DILocation(line: 1109, column: 20, scope: !2708)
!2711 = !DILocation(line: 1110, column: 24, scope: !2708)
!2712 = !DILocation(line: 1114, column: 24, scope: !2713)
!2713 = distinct !DILexicalBlock(scope: !2714, file: !3, line: 1114, column: 15)
!2714 = distinct !DILexicalBlock(scope: !2704, file: !3, line: 1113, column: 9)
!2715 = !DILocation(line: 1114, column: 15, scope: !2714)
!2716 = !DILocation(line: 1116, column: 24, scope: !2717)
!2717 = distinct !DILexicalBlock(scope: !2713, file: !3, line: 1115, column: 13)
!2718 = !DILocation(line: 1117, column: 13, scope: !2717)
!2719 = !DILocation(line: 1118, column: 11, scope: !2714)
!2720 = !DILocation(line: 1119, column: 43, scope: !2714)
!2721 = !DILocation(line: 1119, column: 24, scope: !2714)
!2722 = !DILocation(line: 1120, column: 24, scope: !2723)
!2723 = distinct !DILexicalBlock(scope: !2714, file: !3, line: 1120, column: 15)
!2724 = !DILocation(line: 1120, column: 15, scope: !2714)
!2725 = !DILocation(line: 1122, column: 28, scope: !2726)
!2726 = distinct !DILexicalBlock(scope: !2723, file: !3, line: 1121, column: 13)
!2727 = !DILocation(line: 1122, column: 23, scope: !2726)
!2728 = !DILocation(line: 1123, column: 24, scope: !2726)
!2729 = !DILocation(line: 1124, column: 13, scope: !2726)
!2730 = !DILocation(line: 1129, column: 7, scope: !2587)
!2731 = !DILocation(line: 1133, column: 1, scope: !2559)
!2732 = !DILocation(line: 1073, column: 25, scope: !2733)
!2733 = !DILexicalBlockFile(scope: !2645, file: !3, discriminator: 1)
!2734 = distinct !{!2734, !2735, !2736}
!2735 = !DILocation(line: 1073, column: 11, scope: !2640)
!2736 = !DILocation(line: 1075, column: 15, scope: !2640)
!2737 = !DILocation(line: 1608, column: 19, scope: !1682)
!2738 = !DILocation(line: 1608, column: 31, scope: !1682)
!2739 = !DILocation(line: 1610, column: 15, scope: !1682)
!2740 = !DILocation(line: 1610, column: 10, scope: !1682)
!2741 = !DILocation(line: 1611, column: 10, scope: !1704)
!2742 = !DILocation(line: 1611, column: 7, scope: !1682)
!2743 = !DILocation(line: 1612, column: 5, scope: !1704)
!2744 = !DILocation(line: 1612, column: 5, scope: !1706)
!2745 = !DILocation(line: 1612, column: 5, scope: !1708)
!2746 = !DILocation(line: 1613, column: 3, scope: !1682)
!2747 = distinct !DISubprogram(name: "squeeze_filter", scope: !3, file: !3, line: 1523, type: !2748, isLocal: true, isDefinition: true, scopeLine: 1524, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2751)
!2748 = !DISubroutineType(types: !2749)
!2749 = !{null, !68, !73, !2750}
!2750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1657, size: 64)
!2751 = !{!2752, !2753, !2754, !2755, !2757, !2758, !2759, !2760, !2762}
!2752 = !DILocalVariable(name: "buf", arg: 1, scope: !2747, file: !3, line: 1523, type: !68)
!2753 = !DILocalVariable(name: "size", arg: 2, scope: !2747, file: !3, line: 1523, type: !73)
!2754 = !DILocalVariable(name: "reader", arg: 3, scope: !2747, file: !3, line: 1523, type: !2750)
!2755 = !DILocalVariable(name: "NOT_A_CHAR", scope: !2747, file: !3, line: 1527, type: !2756)
!2756 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !71)
!2757 = !DILocalVariable(name: "char_to_squeeze", scope: !2747, file: !3, line: 1529, type: !71)
!2758 = !DILocalVariable(name: "i", scope: !2747, file: !3, line: 1530, type: !73)
!2759 = !DILocalVariable(name: "nr", scope: !2747, file: !3, line: 1531, type: !73)
!2760 = !DILocalVariable(name: "begin", scope: !2761, file: !3, line: 1543, type: !73)
!2761 = distinct !DILexicalBlock(scope: !2747, file: !3, line: 1534, column: 5)
!2762 = !DILocalVariable(name: "out_len", scope: !2763, file: !3, line: 1547, type: !73)
!2763 = distinct !DILexicalBlock(scope: !2764, file: !3, line: 1546, column: 9)
!2764 = distinct !DILexicalBlock(scope: !2761, file: !3, line: 1545, column: 11)
!2765 = !DILocation(line: 1523, column: 35, scope: !2747)
!2766 = !DILocation(line: 1527, column: 13, scope: !2747)
!2767 = !DILocation(line: 1529, column: 7, scope: !2747)
!2768 = !DILocation(line: 1530, column: 10, scope: !2747)
!2769 = !DILocation(line: 1531, column: 10, scope: !2747)
!2770 = !DILocation(line: 1533, column: 3, scope: !2747)
!2771 = !DILocation(line: 1535, column: 13, scope: !2772)
!2772 = distinct !DILexicalBlock(scope: !2761, file: !3, line: 1535, column: 11)
!2773 = !DILocation(line: 1535, column: 11, scope: !2761)
!2774 = !DILocation(line: 1537, column: 16, scope: !2775)
!2775 = distinct !DILexicalBlock(scope: !2772, file: !3, line: 1536, column: 9)
!2776 = !DILocation(line: 1538, column: 18, scope: !2777)
!2777 = distinct !DILexicalBlock(scope: !2775, file: !3, line: 1538, column: 15)
!2778 = !DILocation(line: 1538, column: 15, scope: !2775)
!2779 = !DILocation(line: 1543, column: 14, scope: !2761)
!2780 = !DILocation(line: 1545, column: 27, scope: !2764)
!2781 = !DILocation(line: 1545, column: 11, scope: !2761)
!2782 = !DILocation(line: 1559, column: 20, scope: !2783)
!2783 = !DILexicalBlockFile(scope: !2784, file: !3, discriminator: 1)
!2784 = distinct !DILexicalBlock(scope: !2785, file: !3, line: 1559, column: 11)
!2785 = distinct !DILexicalBlock(scope: !2763, file: !3, line: 1559, column: 11)
!2786 = !DILocation(line: 1559, column: 25, scope: !2783)
!2787 = !DILocation(line: 1559, column: 54, scope: !2788)
!2788 = !DILexicalBlockFile(scope: !2784, file: !3, discriminator: 2)
!2789 = !DILocation(line: 1559, column: 29, scope: !2788)
!2790 = !DILocation(line: 1559, column: 28, scope: !2788)
!2791 = !DILocation(line: 1559, column: 11, scope: !2792)
!2792 = !DILexicalBlockFile(scope: !2785, file: !3, discriminator: 3)
!2793 = !DILocation(line: 1559, column: 66, scope: !2794)
!2794 = !DILexicalBlockFile(scope: !2784, file: !3, discriminator: 4)
!2795 = distinct !{!2795, !2796, !2797}
!2796 = !DILocation(line: 1559, column: 11, scope: !2785)
!2797 = !DILocation(line: 1560, column: 13, scope: !2785)
!2798 = !DILocation(line: 1565, column: 17, scope: !2799)
!2799 = distinct !DILexicalBlock(scope: !2763, file: !3, line: 1565, column: 15)
!2800 = !DILocation(line: 1565, column: 23, scope: !2799)
!2801 = !DILocation(line: 1565, column: 57, scope: !2802)
!2802 = !DILexicalBlockFile(scope: !2799, file: !3, discriminator: 1)
!2803 = !DILocation(line: 1565, column: 51, scope: !2802)
!2804 = !DILocation(line: 1565, column: 26, scope: !2802)
!2805 = !DILocation(line: 1565, column: 15, scope: !2806)
!2806 = !DILexicalBlockFile(scope: !2763, file: !3, discriminator: 1)
!2807 = !DILocation(line: 1568, column: 17, scope: !2808)
!2808 = distinct !DILexicalBlock(scope: !2763, file: !3, line: 1568, column: 15)
!2809 = !DILocation(line: 1568, column: 15, scope: !2763)
!2810 = !DILocation(line: 1569, column: 26, scope: !2808)
!2811 = !DILocation(line: 1547, column: 18, scope: !2763)
!2812 = !DILocation(line: 1569, column: 13, scope: !2808)
!2813 = !DILocation(line: 1572, column: 33, scope: !2814)
!2814 = distinct !DILexicalBlock(scope: !2808, file: !3, line: 1571, column: 13)
!2815 = !DILocation(line: 1574, column: 27, scope: !2814)
!2816 = !DILocation(line: 1574, column: 35, scope: !2814)
!2817 = !DILocation(line: 1578, column: 21, scope: !2818)
!2818 = distinct !DILexicalBlock(scope: !2814, file: !3, line: 1578, column: 19)
!2819 = !DILocation(line: 1578, column: 25, scope: !2818)
!2820 = !DILocation(line: 1578, column: 34, scope: !2821)
!2821 = !DILexicalBlockFile(scope: !2818, file: !3, discriminator: 1)
!2822 = !DILocation(line: 1578, column: 28, scope: !2821)
!2823 = !DILocation(line: 1578, column: 39, scope: !2821)
!2824 = !DILocation(line: 1578, column: 19, scope: !2825)
!2825 = !DILexicalBlockFile(scope: !2814, file: !3, discriminator: 1)
!2826 = !DILocation(line: 1584, column: 15, scope: !2814)
!2827 = !DILocation(line: 1586, column: 23, scope: !2828)
!2828 = distinct !DILexicalBlock(scope: !2763, file: !3, line: 1586, column: 15)
!2829 = !DILocation(line: 1587, column: 15, scope: !2828)
!2830 = !DILocation(line: 1587, column: 18, scope: !2831)
!2831 = !DILexicalBlockFile(scope: !2828, file: !3, discriminator: 1)
!2832 = !DILocation(line: 1587, column: 59, scope: !2831)
!2833 = !DILocation(line: 1586, column: 15, scope: !2806)
!2834 = !DILocation(line: 1588, column: 13, scope: !2828)
!2835 = !DILocation(line: 1588, column: 13, scope: !2831)
!2836 = !DILocation(line: 1588, column: 13, scope: !2837)
!2837 = !DILexicalBlockFile(scope: !2828, file: !3, discriminator: 2)
!2838 = !DILocation(line: 1591, column: 27, scope: !2839)
!2839 = distinct !DILexicalBlock(scope: !2761, file: !3, line: 1591, column: 11)
!2840 = !DILocation(line: 1591, column: 11, scope: !2761)
!2841 = distinct !{!2841, !2770, !2842}
!2842 = !DILocation(line: 1604, column: 5, scope: !2747)
!2843 = !DILocation(line: 1596, column: 20, scope: !2844)
!2844 = !DILexicalBlockFile(scope: !2845, file: !3, discriminator: 1)
!2845 = distinct !DILexicalBlock(scope: !2846, file: !3, line: 1596, column: 11)
!2846 = distinct !DILexicalBlock(scope: !2847, file: !3, line: 1596, column: 11)
!2847 = distinct !DILexicalBlock(scope: !2839, file: !3, line: 1592, column: 9)
!2848 = !DILocation(line: 1596, column: 25, scope: !2844)
!2849 = !DILocation(line: 1596, column: 28, scope: !2850)
!2850 = !DILexicalBlockFile(scope: !2845, file: !3, discriminator: 2)
!2851 = !DILocation(line: 1596, column: 35, scope: !2850)
!2852 = !DILocation(line: 1596, column: 11, scope: !2853)
!2853 = !DILexicalBlockFile(scope: !2846, file: !3, discriminator: 3)
!2854 = !DILocation(line: 1596, column: 56, scope: !2855)
!2855 = !DILexicalBlockFile(scope: !2845, file: !3, discriminator: 4)
!2856 = !DILocation(line: 1605, column: 1, scope: !2747)
!2857 = distinct !DISubprogram(name: "read_and_delete", scope: !3, file: !3, line: 1623, type: !1657, isLocal: true, isDefinition: true, scopeLine: 1624, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2858)
!2858 = !{!2859, !2860, !2861, !2862, !2864}
!2859 = !DILocalVariable(name: "buf", arg: 1, scope: !2857, file: !3, line: 1623, type: !68)
!2860 = !DILocalVariable(name: "size", arg: 2, scope: !2857, file: !3, line: 1623, type: !73)
!2861 = !DILocalVariable(name: "n_saved", scope: !2857, file: !3, line: 1625, type: !73)
!2862 = !DILocalVariable(name: "nr", scope: !2863, file: !3, line: 1632, type: !73)
!2863 = distinct !DILexicalBlock(scope: !2857, file: !3, line: 1631, column: 5)
!2864 = !DILocalVariable(name: "i", scope: !2863, file: !3, line: 1642, type: !73)
!2865 = !DILocation(line: 1623, column: 24, scope: !2857)
!2866 = !DILocation(line: 1623, column: 36, scope: !2857)
!2867 = !DILocation(line: 1630, column: 3, scope: !2857)
!2868 = distinct !{!2868, !2867, !2869}
!2869 = !DILocation(line: 1651, column: 22, scope: !2857)
!2870 = !DILocation(line: 1625, column: 10, scope: !2857)
!2871 = !DILocation(line: 1608, column: 19, scope: !1682, inlinedAt: !2872)
!2872 = distinct !DILocation(line: 1632, column: 19, scope: !2863)
!2873 = !DILocation(line: 1608, column: 31, scope: !1682, inlinedAt: !2872)
!2874 = !DILocation(line: 1610, column: 15, scope: !1682, inlinedAt: !2872)
!2875 = !DILocation(line: 1610, column: 10, scope: !1682, inlinedAt: !2872)
!2876 = !DILocation(line: 1611, column: 7, scope: !1682, inlinedAt: !2872)
!2877 = !DILocation(line: 1643, column: 54, scope: !2878)
!2878 = !DILexicalBlockFile(scope: !2879, file: !3, discriminator: 2)
!2879 = distinct !DILexicalBlock(scope: !2880, file: !3, line: 1643, column: 7)
!2880 = distinct !DILexicalBlock(scope: !2863, file: !3, line: 1643, column: 7)
!2881 = !DILocation(line: 1612, column: 5, scope: !1704, inlinedAt: !2872)
!2882 = !DILocation(line: 1612, column: 5, scope: !1706, inlinedAt: !2872)
!2883 = !DILocation(line: 1612, column: 5, scope: !1708, inlinedAt: !2872)
!2884 = !DILocation(line: 1643, column: 30, scope: !2878)
!2885 = !DILocation(line: 1643, column: 29, scope: !2878)
!2886 = !DILocation(line: 1643, column: 7, scope: !2887)
!2887 = !DILexicalBlockFile(scope: !2880, file: !3, discriminator: 3)
!2888 = !DILocation(line: 1643, column: 65, scope: !2889)
!2889 = !DILexicalBlockFile(scope: !2879, file: !3, discriminator: 4)
!2890 = !DILocation(line: 1642, column: 14, scope: !2863)
!2891 = !DILocation(line: 1643, column: 21, scope: !2892)
!2892 = !DILexicalBlockFile(scope: !2879, file: !3, discriminator: 1)
!2893 = !DILocation(line: 1643, column: 26, scope: !2892)
!2894 = distinct !{!2894, !2895, !2896}
!2895 = !DILocation(line: 1643, column: 7, scope: !2880)
!2896 = !DILocation(line: 1644, column: 9, scope: !2880)
!2897 = !DILocation(line: 1647, column: 19, scope: !2898)
!2898 = !DILexicalBlockFile(scope: !2899, file: !3, discriminator: 1)
!2899 = distinct !DILexicalBlock(scope: !2900, file: !3, line: 1647, column: 7)
!2900 = distinct !DILexicalBlock(scope: !2863, file: !3, line: 1647, column: 7)
!2901 = !DILocation(line: 1647, column: 7, scope: !2902)
!2902 = !DILexicalBlockFile(scope: !2900, file: !3, discriminator: 1)
!2903 = !DILocation(line: 1648, column: 38, scope: !2904)
!2904 = distinct !DILexicalBlock(scope: !2899, file: !3, line: 1648, column: 13)
!2905 = !DILocation(line: 1648, column: 14, scope: !2904)
!2906 = !DILocation(line: 1648, column: 13, scope: !2899)
!2907 = distinct !{!2907, !2908, !2909}
!2908 = !DILocation(line: 1647, column: 7, scope: !2900)
!2909 = !DILocation(line: 1649, column: 33, scope: !2900)
!2910 = !DILocation(line: 1649, column: 22, scope: !2904)
!2911 = !DILocation(line: 1649, column: 11, scope: !2904)
!2912 = !DILocation(line: 1649, column: 26, scope: !2904)
!2913 = !DILocation(line: 1651, column: 18, scope: !2857)
!2914 = !DILocation(line: 1650, column: 5, scope: !2915)
!2915 = !DILexicalBlockFile(scope: !2863, file: !3, discriminator: 3)
!2916 = !DILocation(line: 1654, column: 1, scope: !2857)
!2917 = !DILocation(line: 1661, column: 23, scope: !1656)
!2918 = !DILocation(line: 1661, column: 35, scope: !1656)
!2919 = !DILocation(line: 1608, column: 19, scope: !1682, inlinedAt: !2920)
!2920 = distinct !DILocation(line: 1663, column: 23, scope: !1656)
!2921 = !DILocation(line: 1608, column: 31, scope: !1682, inlinedAt: !2920)
!2922 = !DILocation(line: 1610, column: 15, scope: !1682, inlinedAt: !2920)
!2923 = !DILocation(line: 1610, column: 10, scope: !1682, inlinedAt: !2920)
!2924 = !DILocation(line: 1611, column: 7, scope: !1682, inlinedAt: !2920)
!2925 = !DILocation(line: 1666, column: 30, scope: !1693)
!2926 = !DILocation(line: 1666, column: 14, scope: !1693)
!2927 = !DILocation(line: 1666, column: 12, scope: !1693)
!2928 = !DILocation(line: 1665, column: 39, scope: !1697)
!2929 = !DILocation(line: 1665, column: 15, scope: !1664)
!2930 = !DILocation(line: 1665, column: 3, scope: !1700)
!2931 = distinct !{!2931, !1702}
!2932 = !DILocation(line: 1612, column: 5, scope: !1704, inlinedAt: !2920)
!2933 = !DILocation(line: 1612, column: 5, scope: !1706, inlinedAt: !2920)
!2934 = !DILocation(line: 1612, column: 5, scope: !1708, inlinedAt: !2920)
!2935 = !DILocation(line: 1668, column: 3, scope: !1656)
!2936 = !DILocation(line: 1665, column: 24, scope: !1710)
!2937 = distinct !DISubprogram(name: "make_printable_str", scope: !3, file: !3, line: 582, type: !2938, isLocal: true, isDefinition: true, scopeLine: 583, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2940)
!2938 = !DISubroutineType(types: !2939)
!2939 = !{!68, !81, !73}
!2940 = !{!2941, !2942, !2943, !2944, !2945, !2947, !2953, !2954}
!2941 = !DILocalVariable(name: "s", arg: 1, scope: !2937, file: !3, line: 582, type: !81)
!2942 = !DILocalVariable(name: "len", arg: 2, scope: !2937, file: !3, line: 582, type: !73)
!2943 = !DILocalVariable(name: "printable_buf", scope: !2937, file: !3, line: 586, type: !68)
!2944 = !DILocalVariable(name: "p", scope: !2937, file: !3, line: 587, type: !68)
!2945 = !DILocalVariable(name: "i", scope: !2946, file: !3, line: 589, type: !73)
!2946 = distinct !DILexicalBlock(scope: !2937, file: !3, line: 589, column: 3)
!2947 = !DILocalVariable(name: "buf", scope: !2948, file: !3, line: 591, type: !2950)
!2948 = distinct !DILexicalBlock(scope: !2949, file: !3, line: 590, column: 5)
!2949 = distinct !DILexicalBlock(scope: !2946, file: !3, line: 589, column: 3)
!2950 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 40, elements: !2951)
!2951 = !{!2952}
!2952 = !DISubrange(count: 5)
!2953 = !DILocalVariable(name: "tmp", scope: !2948, file: !3, line: 592, type: !81)
!2954 = !DILocalVariable(name: "c", scope: !2948, file: !3, line: 593, type: !80)
!2955 = !DILocation(line: 582, column: 33, scope: !2937)
!2956 = !DILocation(line: 582, column: 43, scope: !2937)
!2957 = !DILocation(line: 586, column: 39, scope: !2937)
!2958 = !DILocalVariable(name: "n", arg: 1, scope: !2959, file: !643, line: 105, type: !73)
!2959 = distinct !DISubprogram(name: "xnmalloc", scope: !643, file: !643, line: 105, type: !2960, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2962)
!2960 = !DISubroutineType(types: !2961)
!2961 = !{!70, !73, !73}
!2962 = !{!2958, !2963}
!2963 = !DILocalVariable(name: "s", arg: 2, scope: !2959, file: !643, line: 105, type: !73)
!2964 = !DILocation(line: 105, column: 18, scope: !2959, inlinedAt: !2965)
!2965 = distinct !DILocation(line: 586, column: 25, scope: !2937)
!2966 = !DILocation(line: 105, column: 28, scope: !2959, inlinedAt: !2965)
!2967 = !DILocation(line: 107, column: 7, scope: !2968, inlinedAt: !2965)
!2968 = distinct !DILexicalBlock(scope: !2959, file: !643, line: 107, column: 7)
!2969 = !DILocation(line: 107, column: 7, scope: !2959, inlinedAt: !2965)
!2970 = !DILocation(line: 108, column: 5, scope: !2968, inlinedAt: !2965)
!2971 = !DILocation(line: 109, column: 21, scope: !2959, inlinedAt: !2965)
!2972 = !DILocation(line: 109, column: 10, scope: !2959, inlinedAt: !2965)
!2973 = !DILocation(line: 586, column: 9, scope: !2937)
!2974 = !DILocation(line: 587, column: 9, scope: !2937)
!2975 = !DILocation(line: 589, column: 15, scope: !2946)
!2976 = !DILocation(line: 589, column: 24, scope: !2977)
!2977 = !DILexicalBlockFile(scope: !2949, file: !3, discriminator: 1)
!2978 = !DILocation(line: 589, column: 3, scope: !2979)
!2979 = !DILexicalBlockFile(scope: !2946, file: !3, discriminator: 1)
!2980 = !DILocation(line: 634, column: 3, scope: !2937)
!2981 = !DILocation(line: 591, column: 7, scope: !2948)
!2982 = !DILocation(line: 591, column: 12, scope: !2948)
!2983 = !DILocation(line: 592, column: 19, scope: !2948)
!2984 = !DILocation(line: 593, column: 25, scope: !2948)
!2985 = !DILocation(line: 593, column: 21, scope: !2948)
!2986 = !DILocation(line: 595, column: 15, scope: !2948)
!2987 = !DILocation(line: 595, column: 7, scope: !2948)
!2988 = !DILocation(line: 602, column: 11, scope: !2989)
!2989 = distinct !DILexicalBlock(scope: !2948, file: !3, line: 596, column: 9)
!2990 = !DILocation(line: 605, column: 11, scope: !2989)
!2991 = !DILocation(line: 608, column: 11, scope: !2989)
!2992 = !DILocation(line: 611, column: 11, scope: !2989)
!2993 = !DILocation(line: 614, column: 11, scope: !2989)
!2994 = !DILocation(line: 617, column: 11, scope: !2989)
!2995 = !DILocation(line: 620, column: 11, scope: !2989)
!2996 = !DILocation(line: 622, column: 15, scope: !2997)
!2997 = distinct !DILexicalBlock(scope: !2989, file: !3, line: 622, column: 15)
!2998 = !DILocation(line: 622, column: 15, scope: !2989)
!2999 = !DILocation(line: 624, column: 22, scope: !3000)
!3000 = distinct !DILexicalBlock(scope: !2997, file: !3, line: 623, column: 13)
!3001 = !DILocation(line: 625, column: 22, scope: !3000)
!3002 = !DILocation(line: 626, column: 13, scope: !3000)
!3003 = !DILocation(line: 628, column: 13, scope: !2997)
!3004 = !DILocalVariable(name: "__dest", arg: 1, scope: !3005, file: !3006, line: 114, type: !3009)
!3005 = distinct !DISubprogram(name: "stpcpy", scope: !3006, file: !3006, line: 114, type: !3007, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !3011)
!3006 = !DIFile(filename: "/usr/include/bits/string3.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3007 = !DISubroutineType(types: !3008)
!3008 = !{!68, !3009, !3010}
!3009 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !68)
!3010 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !81)
!3011 = !{!3004, !3012}
!3012 = !DILocalVariable(name: "__src", arg: 2, scope: !3005, file: !3006, line: 114, type: !3010)
!3013 = !DILocation(line: 114, column: 1, scope: !3005, inlinedAt: !3014)
!3014 = distinct !DILocation(line: 632, column: 11, scope: !2948)
!3015 = !DILocation(line: 116, column: 49, scope: !3005, inlinedAt: !3014)
!3016 = !DILocation(line: 116, column: 10, scope: !3005, inlinedAt: !3014)
!3017 = !DILocation(line: 633, column: 5, scope: !2949)
!3018 = !DILocation(line: 589, column: 32, scope: !3019)
!3019 = !DILexicalBlockFile(scope: !2949, file: !3, discriminator: 3)
!3020 = distinct !{!3020, !3021, !3022}
!3021 = !DILocation(line: 589, column: 3, scope: !2946)
!3022 = !DILocation(line: 633, column: 5, scope: !2946)
!3023 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !170, file: !170, line: 41, type: !107, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !165, variables: !3024)
!3024 = !{!3025}
!3025 = !DILocalVariable(name: "file", arg: 1, scope: !3023, file: !170, line: 41, type: !81)
!3026 = !DILocation(line: 41, column: 41, scope: !3023)
!3027 = !DILocation(line: 43, column: 13, scope: !3023)
!3028 = !DILocation(line: 44, column: 1, scope: !3023)
!3029 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !170, file: !170, line: 78, type: !3030, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !165, variables: !3032)
!3030 = !DISubroutineType(types: !3031)
!3031 = !{null, !87}
!3032 = !{!3033}
!3033 = !DILocalVariable(name: "ignore", arg: 1, scope: !3029, file: !170, line: 78, type: !87)
!3034 = !DILocation(line: 78, column: 37, scope: !3029)
!3035 = !DILocation(line: 80, column: 16, scope: !3029)
!3036 = !DILocation(line: 81, column: 1, scope: !3029)
!3037 = distinct !DISubprogram(name: "close_stdout", scope: !170, file: !170, line: 107, type: !3038, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !165, variables: !3040)
!3038 = !DISubroutineType(types: !3039)
!3039 = !{null}
!3040 = !{!3041}
!3041 = !DILocalVariable(name: "write_error", scope: !3042, file: !170, line: 112, type: !81)
!3042 = distinct !DILexicalBlock(scope: !3043, file: !170, line: 111, column: 5)
!3043 = distinct !DILexicalBlock(scope: !3037, file: !170, line: 109, column: 7)
!3044 = !DILocation(line: 109, column: 21, scope: !3043)
!3045 = !DILocation(line: 109, column: 7, scope: !3043)
!3046 = !DILocation(line: 109, column: 29, scope: !3043)
!3047 = !DILocation(line: 110, column: 7, scope: !3043)
!3048 = !DILocation(line: 110, column: 12, scope: !3049)
!3049 = !DILexicalBlockFile(scope: !3043, file: !170, discriminator: 1)
!3050 = !DILocation(line: 114, column: 19, scope: !3051)
!3051 = distinct !DILexicalBlock(scope: !3042, file: !170, line: 113, column: 11)
!3052 = !DILocation(line: 110, column: 25, scope: !3049)
!3053 = !DILocation(line: 110, column: 28, scope: !3054)
!3054 = !DILexicalBlockFile(scope: !3043, file: !170, discriminator: 2)
!3055 = !DILocation(line: 110, column: 34, scope: !3054)
!3056 = !DILocation(line: 109, column: 7, scope: !3057)
!3057 = !DILexicalBlockFile(scope: !3037, file: !170, discriminator: 1)
!3058 = !DILocation(line: 112, column: 33, scope: !3042)
!3059 = !DILocation(line: 112, column: 19, scope: !3042)
!3060 = !DILocation(line: 113, column: 11, scope: !3051)
!3061 = !DILocation(line: 113, column: 11, scope: !3042)
!3062 = !DILocation(line: 114, column: 36, scope: !3063)
!3063 = !DILexicalBlockFile(scope: !3051, file: !170, discriminator: 1)
!3064 = !DILocation(line: 114, column: 9, scope: !3065)
!3065 = !DILexicalBlockFile(scope: !3051, file: !170, discriminator: 2)
!3066 = !DILocation(line: 114, column: 9, scope: !3051)
!3067 = !DILocation(line: 117, column: 9, scope: !3063)
!3068 = !DILocation(line: 119, column: 14, scope: !3042)
!3069 = !DILocation(line: 119, column: 7, scope: !3042)
!3070 = !DILocation(line: 122, column: 22, scope: !3071)
!3071 = distinct !DILexicalBlock(scope: !3037, file: !170, line: 122, column: 8)
!3072 = !DILocation(line: 122, column: 8, scope: !3071)
!3073 = !DILocation(line: 122, column: 30, scope: !3071)
!3074 = !DILocation(line: 122, column: 8, scope: !3037)
!3075 = !DILocation(line: 123, column: 13, scope: !3071)
!3076 = !DILocation(line: 123, column: 6, scope: !3071)
!3077 = !DILocation(line: 124, column: 1, scope: !3037)
!3078 = distinct !DISubprogram(name: "fdadvise", scope: !3079, file: !3079, line: 31, type: !3080, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !605, variables: !3086)
!3079 = !DIFile(filename: "lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3080 = !DISubroutineType(types: !3081)
!3081 = !{null, !71, !3082, !3082, !3085}
!3082 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !3083, line: 91, baseType: !3084)
!3083 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3084 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !627, line: 140, baseType: !628)
!3085 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !28, line: 52, baseType: !27)
!3086 = !{!3087, !3088, !3089, !3090, !3091}
!3087 = !DILocalVariable(name: "fd", arg: 1, scope: !3078, file: !3079, line: 31, type: !71)
!3088 = !DILocalVariable(name: "offset", arg: 2, scope: !3078, file: !3079, line: 31, type: !3082)
!3089 = !DILocalVariable(name: "len", arg: 3, scope: !3078, file: !3079, line: 31, type: !3082)
!3090 = !DILocalVariable(name: "advice", arg: 4, scope: !3078, file: !3079, line: 31, type: !3085)
!3091 = !DILocalVariable(name: "__x", scope: !3092, file: !3079, line: 34, type: !71)
!3092 = distinct !DILexicalBlock(scope: !3078, file: !3079, line: 34, column: 3)
!3093 = !DILocation(line: 31, column: 15, scope: !3078)
!3094 = !DILocation(line: 31, column: 25, scope: !3078)
!3095 = !DILocation(line: 31, column: 39, scope: !3078)
!3096 = !DILocation(line: 31, column: 54, scope: !3078)
!3097 = !DILocation(line: 34, column: 3, scope: !3092)
!3098 = !DILocation(line: 36, column: 1, scope: !3078)
!3099 = distinct !DISubprogram(name: "fadvise", scope: !3079, file: !3079, line: 39, type: !3100, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !605, variables: !3153)
!3100 = !DISubroutineType(types: !3101)
!3101 = !{null, !3102, !3085}
!3102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3103, size: 64)
!3103 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3083, line: 49, baseType: !3104)
!3104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3105, line: 241, size: 1728, elements: !3106)
!3105 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3106 = !{!3107, !3108, !3109, !3110, !3111, !3112, !3113, !3114, !3115, !3116, !3117, !3118, !3119, !3127, !3128, !3129, !3130, !3131, !3132, !3134, !3138, !3141, !3143, !3144, !3145, !3146, !3147, !3148, !3149}
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3104, file: !3105, line: 242, baseType: !71, size: 32)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3104, file: !3105, line: 247, baseType: !68, size: 64, offset: 64)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3104, file: !3105, line: 248, baseType: !68, size: 64, offset: 128)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3104, file: !3105, line: 249, baseType: !68, size: 64, offset: 192)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3104, file: !3105, line: 250, baseType: !68, size: 64, offset: 256)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3104, file: !3105, line: 251, baseType: !68, size: 64, offset: 320)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3104, file: !3105, line: 252, baseType: !68, size: 64, offset: 384)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3104, file: !3105, line: 253, baseType: !68, size: 64, offset: 448)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3104, file: !3105, line: 254, baseType: !68, size: 64, offset: 512)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3104, file: !3105, line: 256, baseType: !68, size: 64, offset: 576)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3104, file: !3105, line: 257, baseType: !68, size: 64, offset: 640)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3104, file: !3105, line: 258, baseType: !68, size: 64, offset: 704)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3104, file: !3105, line: 260, baseType: !3120, size: 64, offset: 768)
!3120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3121, size: 64)
!3121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3105, line: 156, size: 192, elements: !3122)
!3122 = !{!3123, !3124, !3126}
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3121, file: !3105, line: 157, baseType: !3120, size: 64)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3121, file: !3105, line: 158, baseType: !3125, size: 64, offset: 64)
!3125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3104, size: 64)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3121, file: !3105, line: 162, baseType: !71, size: 32, offset: 128)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3104, file: !3105, line: 262, baseType: !3125, size: 64, offset: 832)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3104, file: !3105, line: 264, baseType: !71, size: 32, offset: 896)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3104, file: !3105, line: 268, baseType: !71, size: 32, offset: 928)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3104, file: !3105, line: 270, baseType: !3084, size: 64, offset: 960)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3104, file: !3105, line: 274, baseType: !72, size: 16, offset: 1024)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3104, file: !3105, line: 275, baseType: !3133, size: 8, offset: 1040)
!3133 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3104, file: !3105, line: 276, baseType: !3135, size: 8, offset: 1048)
!3135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 8, elements: !3136)
!3136 = !{!3137}
!3137 = !DISubrange(count: 1)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3104, file: !3105, line: 280, baseType: !3139, size: 64, offset: 1088)
!3139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3140, size: 64)
!3140 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !3105, line: 150, baseType: null)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3104, file: !3105, line: 289, baseType: !3142, size: 64, offset: 1152)
!3142 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !627, line: 141, baseType: !628)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3104, file: !3105, line: 297, baseType: !70, size: 64, offset: 1216)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3104, file: !3105, line: 298, baseType: !70, size: 64, offset: 1280)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3104, file: !3105, line: 299, baseType: !70, size: 64, offset: 1344)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3104, file: !3105, line: 300, baseType: !70, size: 64, offset: 1408)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3104, file: !3105, line: 302, baseType: !73, size: 64, offset: 1472)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3104, file: !3105, line: 303, baseType: !71, size: 32, offset: 1536)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3104, file: !3105, line: 305, baseType: !3150, size: 160, offset: 1568)
!3150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 160, elements: !3151)
!3151 = !{!3152}
!3152 = !DISubrange(count: 20)
!3153 = !{!3154, !3155}
!3154 = !DILocalVariable(name: "fp", arg: 1, scope: !3099, file: !3079, line: 39, type: !3102)
!3155 = !DILocalVariable(name: "advice", arg: 2, scope: !3099, file: !3079, line: 39, type: !3085)
!3156 = !DILocation(line: 39, column: 16, scope: !3099)
!3157 = !DILocation(line: 39, column: 30, scope: !3099)
!3158 = !DILocation(line: 41, column: 7, scope: !3159)
!3159 = distinct !DILexicalBlock(scope: !3099, file: !3079, line: 41, column: 7)
!3160 = !DILocation(line: 41, column: 7, scope: !3099)
!3161 = !DILocation(line: 42, column: 15, scope: !3159)
!3162 = !DILocation(line: 31, column: 15, scope: !3078, inlinedAt: !3163)
!3163 = distinct !DILocation(line: 42, column: 5, scope: !3164)
!3164 = !DILexicalBlockFile(scope: !3159, file: !3079, discriminator: 1)
!3165 = !DILocation(line: 31, column: 25, scope: !3078, inlinedAt: !3163)
!3166 = !DILocation(line: 31, column: 39, scope: !3078, inlinedAt: !3163)
!3167 = !DILocation(line: 31, column: 54, scope: !3078, inlinedAt: !3163)
!3168 = !DILocation(line: 34, column: 3, scope: !3092, inlinedAt: !3163)
!3169 = !DILocation(line: 42, column: 5, scope: !3159)
!3170 = !DILocation(line: 43, column: 1, scope: !3099)
!3171 = distinct !DISubprogram(name: "set_program_name", scope: !184, file: !184, line: 39, type: !107, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !180, variables: !3172)
!3172 = !{!3173, !3174, !3175}
!3173 = !DILocalVariable(name: "argv0", arg: 1, scope: !3171, file: !184, line: 39, type: !81)
!3174 = !DILocalVariable(name: "slash", scope: !3171, file: !184, line: 46, type: !81)
!3175 = !DILocalVariable(name: "base", scope: !3171, file: !184, line: 47, type: !81)
!3176 = !DILocation(line: 39, column: 31, scope: !3171)
!3177 = !DILocation(line: 51, column: 13, scope: !3178)
!3178 = distinct !DILexicalBlock(scope: !3171, file: !184, line: 51, column: 7)
!3179 = !DILocation(line: 51, column: 7, scope: !3171)
!3180 = !DILocation(line: 55, column: 14, scope: !3181)
!3181 = distinct !DILexicalBlock(scope: !3178, file: !184, line: 52, column: 5)
!3182 = !DILocation(line: 54, column: 7, scope: !3181)
!3183 = !DILocation(line: 56, column: 7, scope: !3181)
!3184 = !DILocation(line: 59, column: 11, scope: !3171)
!3185 = !DILocation(line: 46, column: 15, scope: !3171)
!3186 = !DILocation(line: 60, column: 17, scope: !3171)
!3187 = !DILocation(line: 60, column: 33, scope: !3188)
!3188 = !DILexicalBlockFile(scope: !3171, file: !184, discriminator: 1)
!3189 = !DILocation(line: 60, column: 11, scope: !3171)
!3190 = !DILocation(line: 47, column: 15, scope: !3171)
!3191 = !DILocation(line: 61, column: 12, scope: !3192)
!3192 = distinct !DILexicalBlock(scope: !3171, file: !184, line: 61, column: 7)
!3193 = !DILocation(line: 61, column: 20, scope: !3192)
!3194 = !DILocation(line: 61, column: 25, scope: !3192)
!3195 = !DILocation(line: 61, column: 28, scope: !3196)
!3196 = !DILexicalBlockFile(scope: !3192, file: !184, discriminator: 1)
!3197 = !DILocation(line: 61, column: 61, scope: !3196)
!3198 = !DILocation(line: 61, column: 7, scope: !3188)
!3199 = !DILocation(line: 64, column: 11, scope: !3200)
!3200 = distinct !DILexicalBlock(scope: !3201, file: !184, line: 64, column: 11)
!3201 = distinct !DILexicalBlock(scope: !3192, file: !184, line: 62, column: 5)
!3202 = !DILocation(line: 64, column: 36, scope: !3200)
!3203 = !DILocation(line: 64, column: 11, scope: !3201)
!3204 = !DILocation(line: 66, column: 24, scope: !3205)
!3205 = distinct !DILexicalBlock(scope: !3200, file: !184, line: 65, column: 9)
!3206 = !DILocation(line: 70, column: 41, scope: !3205)
!3207 = !DILocation(line: 72, column: 9, scope: !3205)
!3208 = !DILocation(line: 84, column: 16, scope: !3171)
!3209 = !DILocation(line: 90, column: 27, scope: !3171)
!3210 = !DILocation(line: 92, column: 1, scope: !3171)
!3211 = distinct !DISubprogram(name: "clone_quoting_options", scope: !213, file: !213, line: 114, type: !3212, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !187, variables: !3215)
!3212 = !DISubroutineType(types: !3213)
!3213 = !{!3214, !3214}
!3214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!3215 = !{!3216, !3217, !3218}
!3216 = !DILocalVariable(name: "o", arg: 1, scope: !3211, file: !213, line: 114, type: !3214)
!3217 = !DILocalVariable(name: "e", scope: !3211, file: !213, line: 116, type: !71)
!3218 = !DILocalVariable(name: "p", scope: !3211, file: !213, line: 117, type: !3214)
!3219 = !DILocation(line: 114, column: 48, scope: !3211)
!3220 = !DILocation(line: 116, column: 11, scope: !3211)
!3221 = !DILocation(line: 116, column: 7, scope: !3211)
!3222 = !DILocation(line: 117, column: 40, scope: !3211)
!3223 = !DILocation(line: 117, column: 40, scope: !3224)
!3224 = !DILexicalBlockFile(scope: !3211, file: !213, discriminator: 3)
!3225 = !DILocation(line: 117, column: 31, scope: !3224)
!3226 = !DILocation(line: 117, column: 27, scope: !3211)
!3227 = !DILocation(line: 119, column: 9, scope: !3211)
!3228 = !DILocation(line: 120, column: 3, scope: !3211)
!3229 = distinct !DISubprogram(name: "get_quoting_style", scope: !213, file: !213, line: 125, type: !3230, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !187, variables: !3234)
!3230 = !DISubroutineType(types: !3231)
!3231 = !{!190, !3232}
!3232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3233, size: 64)
!3233 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !220)
!3234 = !{!3235}
!3235 = !DILocalVariable(name: "o", arg: 1, scope: !3229, file: !213, line: 125, type: !3232)
!3236 = !DILocation(line: 125, column: 50, scope: !3229)
!3237 = !DILocation(line: 127, column: 11, scope: !3229)
!3238 = !DILocation(line: 127, column: 46, scope: !3239)
!3239 = !DILexicalBlockFile(scope: !3229, file: !213, discriminator: 3)
!3240 = !{!3241, !698, i64 0}
!3241 = !{!"quoting_options", !698, i64 0, !904, i64 4, !698, i64 8, !697, i64 40, !697, i64 48}
!3242 = !DILocation(line: 127, column: 3, scope: !3239)
!3243 = distinct !DISubprogram(name: "set_quoting_style", scope: !213, file: !213, line: 133, type: !3244, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !187, variables: !3246)
!3244 = !DISubroutineType(types: !3245)
!3245 = !{null, !3214, !190}
!3246 = !{!3247, !3248}
!3247 = !DILocalVariable(name: "o", arg: 1, scope: !3243, file: !213, line: 133, type: !3214)
!3248 = !DILocalVariable(name: "s", arg: 2, scope: !3243, file: !213, line: 133, type: !190)
!3249 = !DILocation(line: 133, column: 44, scope: !3243)
!3250 = !DILocation(line: 133, column: 66, scope: !3243)
!3251 = !DILocation(line: 135, column: 4, scope: !3243)
!3252 = !DILocation(line: 135, column: 39, scope: !3253)
!3253 = !DILexicalBlockFile(scope: !3243, file: !213, discriminator: 3)
!3254 = !DILocation(line: 135, column: 45, scope: !3253)
!3255 = !DILocation(line: 136, column: 1, scope: !3243)
!3256 = distinct !DISubprogram(name: "set_char_quoting", scope: !213, file: !213, line: 144, type: !3257, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !187, variables: !3259)
!3257 = !DISubroutineType(types: !3258)
!3258 = !{!71, !3214, !69, !71}
!3259 = !{!3260, !3261, !3262, !3263, !3264, !3266, !3267}
!3260 = !DILocalVariable(name: "o", arg: 1, scope: !3256, file: !213, line: 144, type: !3214)
!3261 = !DILocalVariable(name: "c", arg: 2, scope: !3256, file: !213, line: 144, type: !69)
!3262 = !DILocalVariable(name: "i", arg: 3, scope: !3256, file: !213, line: 144, type: !71)
!3263 = !DILocalVariable(name: "uc", scope: !3256, file: !213, line: 146, type: !80)
!3264 = !DILocalVariable(name: "p", scope: !3256, file: !213, line: 147, type: !3265)
!3265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!3266 = !DILocalVariable(name: "shift", scope: !3256, file: !213, line: 149, type: !71)
!3267 = !DILocalVariable(name: "r", scope: !3256, file: !213, line: 150, type: !71)
!3268 = !DILocation(line: 144, column: 43, scope: !3256)
!3269 = !DILocation(line: 144, column: 51, scope: !3256)
!3270 = !DILocation(line: 144, column: 58, scope: !3256)
!3271 = !DILocation(line: 146, column: 17, scope: !3256)
!3272 = !DILocation(line: 148, column: 6, scope: !3256)
!3273 = !DILocation(line: 148, column: 62, scope: !3274)
!3274 = !DILexicalBlockFile(scope: !3256, file: !213, discriminator: 3)
!3275 = !DILocation(line: 148, column: 57, scope: !3274)
!3276 = !DILocation(line: 147, column: 17, scope: !3256)
!3277 = !DILocation(line: 149, column: 18, scope: !3256)
!3278 = !DILocation(line: 149, column: 15, scope: !3256)
!3279 = !DILocation(line: 149, column: 7, scope: !3256)
!3280 = !DILocation(line: 150, column: 12, scope: !3256)
!3281 = !DILocation(line: 150, column: 15, scope: !3256)
!3282 = !DILocation(line: 150, column: 25, scope: !3256)
!3283 = !DILocation(line: 150, column: 7, scope: !3256)
!3284 = !DILocation(line: 151, column: 13, scope: !3256)
!3285 = !DILocation(line: 151, column: 18, scope: !3256)
!3286 = !DILocation(line: 151, column: 23, scope: !3256)
!3287 = !DILocation(line: 151, column: 6, scope: !3256)
!3288 = !DILocation(line: 152, column: 3, scope: !3256)
!3289 = distinct !DISubprogram(name: "set_quoting_flags", scope: !213, file: !213, line: 160, type: !3290, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !187, variables: !3292)
!3290 = !DISubroutineType(types: !3291)
!3291 = !{!71, !3214, !71}
!3292 = !{!3293, !3294, !3295}
!3293 = !DILocalVariable(name: "o", arg: 1, scope: !3289, file: !213, line: 160, type: !3214)
!3294 = !DILocalVariable(name: "i", arg: 2, scope: !3289, file: !213, line: 160, type: !71)
!3295 = !DILocalVariable(name: "r", scope: !3289, file: !213, line: 162, type: !71)
!3296 = !DILocation(line: 160, column: 44, scope: !3289)
!3297 = !DILocation(line: 160, column: 51, scope: !3289)
!3298 = !DILocation(line: 163, column: 8, scope: !3299)
!3299 = distinct !DILexicalBlock(scope: !3289, file: !213, line: 163, column: 7)
!3300 = !DILocation(line: 163, column: 7, scope: !3289)
!3301 = !DILocation(line: 165, column: 10, scope: !3289)
!3302 = !{!3241, !904, i64 4}
!3303 = !DILocation(line: 162, column: 7, scope: !3289)
!3304 = !DILocation(line: 166, column: 12, scope: !3289)
!3305 = !DILocation(line: 167, column: 3, scope: !3289)
!3306 = distinct !DISubprogram(name: "set_custom_quoting", scope: !213, file: !213, line: 171, type: !3307, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !187, variables: !3309)
!3307 = !DISubroutineType(types: !3308)
!3308 = !{null, !3214, !81, !81}
!3309 = !{!3310, !3311, !3312}
!3310 = !DILocalVariable(name: "o", arg: 1, scope: !3306, file: !213, line: 171, type: !3214)
!3311 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3306, file: !213, line: 172, type: !81)
!3312 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3306, file: !213, line: 172, type: !81)
!3313 = !DILocation(line: 171, column: 45, scope: !3306)
!3314 = !DILocation(line: 172, column: 33, scope: !3306)
!3315 = !DILocation(line: 172, column: 57, scope: !3306)
!3316 = !DILocation(line: 174, column: 8, scope: !3317)
!3317 = distinct !DILexicalBlock(scope: !3306, file: !213, line: 174, column: 7)
!3318 = !DILocation(line: 174, column: 7, scope: !3306)
!3319 = !DILocation(line: 176, column: 6, scope: !3306)
!3320 = !DILocation(line: 176, column: 12, scope: !3306)
!3321 = !DILocation(line: 177, column: 8, scope: !3322)
!3322 = distinct !DILexicalBlock(scope: !3306, file: !213, line: 177, column: 7)
!3323 = !DILocation(line: 177, column: 23, scope: !3324)
!3324 = !DILexicalBlockFile(scope: !3322, file: !213, discriminator: 1)
!3325 = !DILocation(line: 177, column: 19, scope: !3322)
!3326 = !DILocation(line: 178, column: 5, scope: !3322)
!3327 = !DILocation(line: 179, column: 6, scope: !3306)
!3328 = !DILocation(line: 179, column: 17, scope: !3306)
!3329 = !{!3241, !697, i64 40}
!3330 = !DILocation(line: 180, column: 6, scope: !3306)
!3331 = !DILocation(line: 180, column: 18, scope: !3306)
!3332 = !{!3241, !697, i64 48}
!3333 = !DILocation(line: 181, column: 1, scope: !3306)
!3334 = distinct !DISubprogram(name: "quotearg_buffer", scope: !213, file: !213, line: 776, type: !3335, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !187, variables: !3337)
!3335 = !DISubroutineType(types: !3336)
!3336 = !{!73, !68, !73, !81, !73, !3232}
!3337 = !{!3338, !3339, !3340, !3341, !3342, !3343, !3344, !3345}
!3338 = !DILocalVariable(name: "buffer", arg: 1, scope: !3334, file: !213, line: 776, type: !68)
!3339 = !DILocalVariable(name: "buffersize", arg: 2, scope: !3334, file: !213, line: 776, type: !73)
!3340 = !DILocalVariable(name: "arg", arg: 3, scope: !3334, file: !213, line: 777, type: !81)
!3341 = !DILocalVariable(name: "argsize", arg: 4, scope: !3334, file: !213, line: 777, type: !73)
!3342 = !DILocalVariable(name: "o", arg: 5, scope: !3334, file: !213, line: 778, type: !3232)
!3343 = !DILocalVariable(name: "p", scope: !3334, file: !213, line: 780, type: !3232)
!3344 = !DILocalVariable(name: "e", scope: !3334, file: !213, line: 781, type: !71)
!3345 = !DILocalVariable(name: "r", scope: !3334, file: !213, line: 782, type: !73)
!3346 = !DILocation(line: 776, column: 24, scope: !3334)
!3347 = !DILocation(line: 776, column: 39, scope: !3334)
!3348 = !DILocation(line: 777, column: 30, scope: !3334)
!3349 = !DILocation(line: 777, column: 42, scope: !3334)
!3350 = !DILocation(line: 778, column: 48, scope: !3334)
!3351 = !DILocation(line: 780, column: 37, scope: !3334)
!3352 = !DILocation(line: 780, column: 33, scope: !3334)
!3353 = !DILocation(line: 781, column: 11, scope: !3334)
!3354 = !DILocation(line: 781, column: 7, scope: !3334)
!3355 = !DILocation(line: 783, column: 43, scope: !3334)
!3356 = !DILocation(line: 783, column: 53, scope: !3334)
!3357 = !DILocation(line: 783, column: 60, scope: !3334)
!3358 = !DILocation(line: 784, column: 43, scope: !3334)
!3359 = !DILocation(line: 784, column: 58, scope: !3334)
!3360 = !DILocation(line: 782, column: 14, scope: !3334)
!3361 = !DILocation(line: 782, column: 10, scope: !3334)
!3362 = !DILocation(line: 785, column: 9, scope: !3334)
!3363 = !DILocation(line: 786, column: 3, scope: !3334)
!3364 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !213, file: !213, line: 248, type: !3365, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !187, variables: !3369)
!3365 = !DISubroutineType(types: !3366)
!3366 = !{!73, !68, !73, !81, !73, !190, !71, !3367, !81, !81}
!3367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3368, size: 64)
!3368 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !83)
!3369 = !{!3370, !3371, !3372, !3373, !3374, !3375, !3376, !3377, !3378, !3379, !3380, !3381, !3382, !3383, !3384, !3385, !3386, !3387, !3388, !3389, !3390, !3394, !3395, !3396, !3397, !3398, !3401, !3402, !3419, !3422, !3423, !3430}
!3370 = !DILocalVariable(name: "buffer", arg: 1, scope: !3364, file: !213, line: 248, type: !68)
!3371 = !DILocalVariable(name: "buffersize", arg: 2, scope: !3364, file: !213, line: 248, type: !73)
!3372 = !DILocalVariable(name: "arg", arg: 3, scope: !3364, file: !213, line: 249, type: !81)
!3373 = !DILocalVariable(name: "argsize", arg: 4, scope: !3364, file: !213, line: 249, type: !73)
!3374 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !3364, file: !213, line: 250, type: !190)
!3375 = !DILocalVariable(name: "flags", arg: 6, scope: !3364, file: !213, line: 250, type: !71)
!3376 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !3364, file: !213, line: 251, type: !3367)
!3377 = !DILocalVariable(name: "left_quote", arg: 8, scope: !3364, file: !213, line: 252, type: !81)
!3378 = !DILocalVariable(name: "right_quote", arg: 9, scope: !3364, file: !213, line: 253, type: !81)
!3379 = !DILocalVariable(name: "i", scope: !3364, file: !213, line: 255, type: !73)
!3380 = !DILocalVariable(name: "len", scope: !3364, file: !213, line: 256, type: !73)
!3381 = !DILocalVariable(name: "orig_buffersize", scope: !3364, file: !213, line: 257, type: !73)
!3382 = !DILocalVariable(name: "quote_string", scope: !3364, file: !213, line: 258, type: !81)
!3383 = !DILocalVariable(name: "quote_string_len", scope: !3364, file: !213, line: 259, type: !73)
!3384 = !DILocalVariable(name: "backslash_escapes", scope: !3364, file: !213, line: 260, type: !87)
!3385 = !DILocalVariable(name: "unibyte_locale", scope: !3364, file: !213, line: 261, type: !87)
!3386 = !DILocalVariable(name: "elide_outer_quotes", scope: !3364, file: !213, line: 262, type: !87)
!3387 = !DILocalVariable(name: "pending_shell_escape_end", scope: !3364, file: !213, line: 263, type: !87)
!3388 = !DILocalVariable(name: "encountered_single_quote", scope: !3364, file: !213, line: 264, type: !87)
!3389 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !3364, file: !213, line: 265, type: !87)
!3390 = !DILocalVariable(name: "c", scope: !3391, file: !213, line: 394, type: !80)
!3391 = distinct !DILexicalBlock(scope: !3392, file: !213, line: 393, column: 5)
!3392 = distinct !DILexicalBlock(scope: !3393, file: !213, line: 392, column: 3)
!3393 = distinct !DILexicalBlock(scope: !3364, file: !213, line: 392, column: 3)
!3394 = !DILocalVariable(name: "esc", scope: !3391, file: !213, line: 395, type: !80)
!3395 = !DILocalVariable(name: "is_right_quote", scope: !3391, file: !213, line: 396, type: !87)
!3396 = !DILocalVariable(name: "escaping", scope: !3391, file: !213, line: 397, type: !87)
!3397 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !3391, file: !213, line: 398, type: !87)
!3398 = !DILocalVariable(name: "m", scope: !3399, file: !213, line: 602, type: !73)
!3399 = distinct !DILexicalBlock(scope: !3400, file: !213, line: 600, column: 11)
!3400 = distinct !DILexicalBlock(scope: !3391, file: !213, line: 418, column: 9)
!3401 = !DILocalVariable(name: "printable", scope: !3399, file: !213, line: 604, type: !87)
!3402 = !DILocalVariable(name: "mbstate", scope: !3403, file: !213, line: 613, type: !3405)
!3403 = distinct !DILexicalBlock(scope: !3404, file: !213, line: 612, column: 15)
!3404 = distinct !DILexicalBlock(scope: !3399, file: !213, line: 606, column: 17)
!3405 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !3406, line: 107, baseType: !3407)
!3406 = !DIFile(filename: "/usr/include/wchar.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3407 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !3406, line: 95, baseType: !3408)
!3408 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3406, line: 83, size: 64, elements: !3409)
!3409 = !{!3410, !3411}
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3408, file: !3406, line: 85, baseType: !71, size: 32)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3408, file: !3406, line: 94, baseType: !3412, size: 32, offset: 32)
!3412 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3408, file: !3406, line: 86, size: 32, elements: !3413)
!3413 = !{!3414, !3415}
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3412, file: !3406, line: 89, baseType: !83, size: 32)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3412, file: !3406, line: 93, baseType: !3416, size: 32)
!3416 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 32, elements: !3417)
!3417 = !{!3418}
!3418 = !DISubrange(count: 4)
!3419 = !DILocalVariable(name: "w", scope: !3420, file: !213, line: 623, type: !3421)
!3420 = distinct !DILexicalBlock(scope: !3403, file: !213, line: 622, column: 19)
!3421 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !74, line: 90, baseType: !71)
!3422 = !DILocalVariable(name: "bytes", scope: !3420, file: !213, line: 624, type: !73)
!3423 = !DILocalVariable(name: "j", scope: !3424, file: !213, line: 649, type: !73)
!3424 = distinct !DILexicalBlock(scope: !3425, file: !213, line: 648, column: 27)
!3425 = distinct !DILexicalBlock(scope: !3426, file: !213, line: 646, column: 29)
!3426 = distinct !DILexicalBlock(scope: !3427, file: !213, line: 641, column: 23)
!3427 = distinct !DILexicalBlock(scope: !3428, file: !213, line: 633, column: 30)
!3428 = distinct !DILexicalBlock(scope: !3429, file: !213, line: 628, column: 30)
!3429 = distinct !DILexicalBlock(scope: !3420, file: !213, line: 626, column: 25)
!3430 = !DILocalVariable(name: "ilim", scope: !3431, file: !213, line: 676, type: !73)
!3431 = distinct !DILexicalBlock(scope: !3432, file: !213, line: 673, column: 15)
!3432 = distinct !DILexicalBlock(scope: !3399, file: !213, line: 672, column: 17)
!3433 = !DILocation(line: 248, column: 33, scope: !3364)
!3434 = !DILocation(line: 248, column: 48, scope: !3364)
!3435 = !DILocation(line: 249, column: 39, scope: !3364)
!3436 = !DILocation(line: 249, column: 51, scope: !3364)
!3437 = !DILocation(line: 250, column: 46, scope: !3364)
!3438 = !DILocation(line: 250, column: 65, scope: !3364)
!3439 = !DILocation(line: 251, column: 47, scope: !3364)
!3440 = !DILocation(line: 252, column: 39, scope: !3364)
!3441 = !DILocation(line: 253, column: 39, scope: !3364)
!3442 = !DILocation(line: 256, column: 10, scope: !3364)
!3443 = !DILocation(line: 257, column: 10, scope: !3364)
!3444 = !DILocation(line: 258, column: 15, scope: !3364)
!3445 = !DILocation(line: 259, column: 10, scope: !3364)
!3446 = !DILocation(line: 260, column: 8, scope: !3364)
!3447 = !DILocation(line: 261, column: 25, scope: !3364)
!3448 = !DILocation(line: 261, column: 36, scope: !3364)
!3449 = !DILocation(line: 262, column: 8, scope: !3364)
!3450 = !DILocation(line: 263, column: 8, scope: !3364)
!3451 = !DILocation(line: 264, column: 8, scope: !3364)
!3452 = !DILocation(line: 265, column: 8, scope: !3364)
!3453 = !DILocation(line: 265, column: 3, scope: !3364)
!3454 = !DILocation(line: 308, column: 3, scope: !3364)
!3455 = !DILocation(line: 315, column: 11, scope: !3456)
!3456 = distinct !DILexicalBlock(scope: !3364, file: !213, line: 309, column: 5)
!3457 = !DILocation(line: 315, column: 12, scope: !3458)
!3458 = distinct !DILexicalBlock(scope: !3456, file: !213, line: 315, column: 11)
!3459 = !DILocation(line: 316, column: 9, scope: !3460)
!3460 = !DILexicalBlockFile(scope: !3461, file: !213, discriminator: 1)
!3461 = distinct !DILexicalBlock(scope: !3462, file: !213, line: 316, column: 9)
!3462 = distinct !DILexicalBlock(scope: !3458, file: !213, line: 316, column: 9)
!3463 = !DILocation(line: 316, column: 9, scope: !3464)
!3464 = !DILexicalBlockFile(scope: !3462, file: !213, discriminator: 1)
!3465 = !DILocation(line: 316, column: 9, scope: !3466)
!3466 = !DILexicalBlockFile(scope: !3461, file: !213, discriminator: 2)
!3467 = !DILocation(line: 354, column: 26, scope: !3468)
!3468 = distinct !DILexicalBlock(scope: !3469, file: !213, line: 332, column: 11)
!3469 = distinct !DILexicalBlock(scope: !3470, file: !213, line: 331, column: 13)
!3470 = distinct !DILexicalBlock(scope: !3456, file: !213, line: 330, column: 7)
!3471 = !DILocation(line: 355, column: 27, scope: !3468)
!3472 = !DILocation(line: 356, column: 11, scope: !3468)
!3473 = !DILocation(line: 357, column: 14, scope: !3474)
!3474 = distinct !DILexicalBlock(scope: !3470, file: !213, line: 357, column: 13)
!3475 = !DILocation(line: 357, column: 13, scope: !3470)
!3476 = !DILocation(line: 358, column: 43, scope: !3477)
!3477 = !DILexicalBlockFile(scope: !3478, file: !213, discriminator: 1)
!3478 = distinct !DILexicalBlock(scope: !3479, file: !213, line: 358, column: 11)
!3479 = distinct !DILexicalBlock(scope: !3474, file: !213, line: 358, column: 11)
!3480 = !DILocation(line: 358, column: 11, scope: !3481)
!3481 = !DILexicalBlockFile(scope: !3479, file: !213, discriminator: 1)
!3482 = !DILocation(line: 359, column: 13, scope: !3483)
!3483 = !DILexicalBlockFile(scope: !3484, file: !213, discriminator: 1)
!3484 = distinct !DILexicalBlock(scope: !3485, file: !213, line: 359, column: 13)
!3485 = distinct !DILexicalBlock(scope: !3478, file: !213, line: 359, column: 13)
!3486 = !DILocation(line: 359, column: 13, scope: !3487)
!3487 = !DILexicalBlockFile(scope: !3485, file: !213, discriminator: 1)
!3488 = !DILocation(line: 359, column: 13, scope: !3489)
!3489 = !DILexicalBlockFile(scope: !3484, file: !213, discriminator: 2)
!3490 = !DILocation(line: 359, column: 13, scope: !3491)
!3491 = !DILexicalBlockFile(scope: !3485, file: !213, discriminator: 3)
!3492 = !DILocation(line: 358, column: 70, scope: !3493)
!3493 = !DILexicalBlockFile(scope: !3478, file: !213, discriminator: 2)
!3494 = distinct !{!3494, !3495, !3496}
!3495 = !DILocation(line: 358, column: 11, scope: !3479)
!3496 = !DILocation(line: 359, column: 13, scope: !3479)
!3497 = !DILocation(line: 362, column: 28, scope: !3470)
!3498 = !DILocation(line: 364, column: 7, scope: !3456)
!3499 = !DILocation(line: 367, column: 7, scope: !3456)
!3500 = !DILocation(line: 370, column: 7, scope: !3456)
!3501 = !DILocation(line: 373, column: 12, scope: !3502)
!3502 = distinct !DILexicalBlock(scope: !3456, file: !213, line: 373, column: 11)
!3503 = !DILocation(line: 373, column: 11, scope: !3456)
!3504 = !DILocation(line: 378, column: 12, scope: !3505)
!3505 = distinct !DILexicalBlock(scope: !3456, file: !213, line: 378, column: 11)
!3506 = !DILocation(line: 378, column: 11, scope: !3456)
!3507 = !DILocation(line: 379, column: 9, scope: !3508)
!3508 = !DILexicalBlockFile(scope: !3509, file: !213, discriminator: 1)
!3509 = distinct !DILexicalBlock(scope: !3510, file: !213, line: 379, column: 9)
!3510 = distinct !DILexicalBlock(scope: !3505, file: !213, line: 379, column: 9)
!3511 = !DILocation(line: 379, column: 9, scope: !3512)
!3512 = !DILexicalBlockFile(scope: !3510, file: !213, discriminator: 1)
!3513 = !DILocation(line: 379, column: 9, scope: !3514)
!3514 = !DILexicalBlockFile(scope: !3509, file: !213, discriminator: 2)
!3515 = !DILocation(line: 386, column: 7, scope: !3456)
!3516 = !DILocation(line: 389, column: 7, scope: !3456)
!3517 = !DILocation(line: 255, column: 10, scope: !3364)
!3518 = !DILocation(line: 392, column: 8, scope: !3393)
!3519 = !DILocation(line: 392, column: 27, scope: !3520)
!3520 = !DILexicalBlockFile(scope: !3392, file: !213, discriminator: 1)
!3521 = !DILocation(line: 392, column: 19, scope: !3520)
!3522 = !DILocation(line: 392, column: 60, scope: !3523)
!3523 = !DILexicalBlockFile(scope: !3392, file: !213, discriminator: 3)
!3524 = !DILocation(line: 392, column: 3, scope: !3525)
!3525 = !DILexicalBlockFile(scope: !3393, file: !213, discriminator: 4)
!3526 = !DILocation(line: 392, column: 41, scope: !3527)
!3527 = !DILexicalBlockFile(scope: !3392, file: !213, discriminator: 2)
!3528 = !DILocation(line: 392, column: 48, scope: !3527)
!3529 = !DILocation(line: 396, column: 12, scope: !3391)
!3530 = !DILocation(line: 397, column: 12, scope: !3391)
!3531 = !DILocation(line: 398, column: 12, scope: !3391)
!3532 = !DILocation(line: 401, column: 11, scope: !3533)
!3533 = distinct !DILexicalBlock(scope: !3391, file: !213, line: 400, column: 11)
!3534 = !DILocation(line: 403, column: 17, scope: !3535)
!3535 = !DILexicalBlockFile(scope: !3533, file: !213, discriminator: 1)
!3536 = !DILocation(line: 404, column: 39, scope: !3533)
!3537 = !DILocation(line: 408, column: 32, scope: !3533)
!3538 = !DILocation(line: 404, column: 19, scope: !3539)
!3539 = !DILexicalBlockFile(scope: !3533, file: !213, discriminator: 2)
!3540 = !DILocation(line: 404, column: 15, scope: !3541)
!3541 = !DILexicalBlockFile(scope: !3533, file: !213, discriminator: 4)
!3542 = !DILocation(line: 409, column: 11, scope: !3533)
!3543 = !DILocation(line: 409, column: 26, scope: !3535)
!3544 = !DILocation(line: 409, column: 14, scope: !3535)
!3545 = !DILocation(line: 400, column: 11, scope: !3546)
!3546 = !DILexicalBlockFile(scope: !3391, file: !213, discriminator: 1)
!3547 = !DILocation(line: 416, column: 11, scope: !3391)
!3548 = !DILocation(line: 394, column: 21, scope: !3391)
!3549 = !DILocation(line: 417, column: 7, scope: !3391)
!3550 = !DILocation(line: 420, column: 15, scope: !3400)
!3551 = !DILocation(line: 422, column: 15, scope: !3552)
!3552 = !DILexicalBlockFile(scope: !3553, file: !213, discriminator: 1)
!3553 = distinct !DILexicalBlock(scope: !3554, file: !213, line: 422, column: 15)
!3554 = distinct !DILexicalBlock(scope: !3555, file: !213, line: 421, column: 13)
!3555 = distinct !DILexicalBlock(scope: !3400, file: !213, line: 420, column: 15)
!3556 = !DILocation(line: 422, column: 15, scope: !3557)
!3557 = !DILexicalBlockFile(scope: !3558, file: !213, discriminator: 4)
!3558 = distinct !DILexicalBlock(scope: !3553, file: !213, line: 422, column: 15)
!3559 = !DILocation(line: 422, column: 15, scope: !3560)
!3560 = !DILexicalBlockFile(scope: !3558, file: !213, discriminator: 3)
!3561 = !DILocation(line: 422, column: 15, scope: !3562)
!3562 = !DILexicalBlockFile(scope: !3563, file: !213, discriminator: 6)
!3563 = distinct !DILexicalBlock(scope: !3564, file: !213, line: 422, column: 15)
!3564 = distinct !DILexicalBlock(scope: !3565, file: !213, line: 422, column: 15)
!3565 = distinct !DILexicalBlock(scope: !3558, file: !213, line: 422, column: 15)
!3566 = !DILocation(line: 422, column: 15, scope: !3567)
!3567 = !DILexicalBlockFile(scope: !3564, file: !213, discriminator: 6)
!3568 = !DILocation(line: 422, column: 15, scope: !3569)
!3569 = !DILexicalBlockFile(scope: !3563, file: !213, discriminator: 7)
!3570 = !DILocation(line: 422, column: 15, scope: !3571)
!3571 = !DILexicalBlockFile(scope: !3564, file: !213, discriminator: 8)
!3572 = !DILocation(line: 422, column: 15, scope: !3573)
!3573 = !DILexicalBlockFile(scope: !3574, file: !213, discriminator: 11)
!3574 = distinct !DILexicalBlock(scope: !3575, file: !213, line: 422, column: 15)
!3575 = distinct !DILexicalBlock(scope: !3565, file: !213, line: 422, column: 15)
!3576 = !DILocation(line: 422, column: 15, scope: !3577)
!3577 = !DILexicalBlockFile(scope: !3575, file: !213, discriminator: 11)
!3578 = !DILocation(line: 422, column: 15, scope: !3579)
!3579 = !DILexicalBlockFile(scope: !3574, file: !213, discriminator: 12)
!3580 = !DILocation(line: 422, column: 15, scope: !3581)
!3581 = !DILexicalBlockFile(scope: !3575, file: !213, discriminator: 13)
!3582 = !DILocation(line: 422, column: 15, scope: !3583)
!3583 = !DILexicalBlockFile(scope: !3584, file: !213, discriminator: 16)
!3584 = distinct !DILexicalBlock(scope: !3585, file: !213, line: 422, column: 15)
!3585 = distinct !DILexicalBlock(scope: !3565, file: !213, line: 422, column: 15)
!3586 = !DILocation(line: 422, column: 15, scope: !3587)
!3587 = !DILexicalBlockFile(scope: !3585, file: !213, discriminator: 16)
!3588 = !DILocation(line: 422, column: 15, scope: !3589)
!3589 = !DILexicalBlockFile(scope: !3584, file: !213, discriminator: 17)
!3590 = !DILocation(line: 422, column: 15, scope: !3591)
!3591 = !DILexicalBlockFile(scope: !3585, file: !213, discriminator: 18)
!3592 = !DILocation(line: 422, column: 15, scope: !3593)
!3593 = !DILexicalBlockFile(scope: !3565, file: !213, discriminator: 20)
!3594 = !DILocation(line: 422, column: 15, scope: !3595)
!3595 = !DILexicalBlockFile(scope: !3596, file: !213, discriminator: 22)
!3596 = distinct !DILexicalBlock(scope: !3597, file: !213, line: 422, column: 15)
!3597 = distinct !DILexicalBlock(scope: !3553, file: !213, line: 422, column: 15)
!3598 = !DILocation(line: 422, column: 15, scope: !3599)
!3599 = !DILexicalBlockFile(scope: !3597, file: !213, discriminator: 22)
!3600 = !DILocation(line: 422, column: 15, scope: !3601)
!3601 = !DILexicalBlockFile(scope: !3596, file: !213, discriminator: 23)
!3602 = !DILocation(line: 422, column: 15, scope: !3603)
!3603 = !DILexicalBlockFile(scope: !3597, file: !213, discriminator: 24)
!3604 = !DILocation(line: 430, column: 19, scope: !3605)
!3605 = distinct !DILexicalBlock(scope: !3554, file: !213, line: 429, column: 19)
!3606 = !DILocation(line: 430, column: 24, scope: !3607)
!3607 = !DILexicalBlockFile(scope: !3605, file: !213, discriminator: 1)
!3608 = !DILocation(line: 430, column: 28, scope: !3607)
!3609 = !DILocation(line: 430, column: 38, scope: !3607)
!3610 = !DILocation(line: 430, column: 48, scope: !3611)
!3611 = !DILexicalBlockFile(scope: !3605, file: !213, discriminator: 2)
!3612 = !DILocation(line: 430, column: 59, scope: !3611)
!3613 = !DILocation(line: 432, column: 19, scope: !3614)
!3614 = !DILexicalBlockFile(scope: !3615, file: !213, discriminator: 1)
!3615 = distinct !DILexicalBlock(scope: !3616, file: !213, line: 432, column: 19)
!3616 = distinct !DILexicalBlock(scope: !3617, file: !213, line: 432, column: 19)
!3617 = distinct !DILexicalBlock(scope: !3605, file: !213, line: 431, column: 17)
!3618 = !DILocation(line: 432, column: 19, scope: !3619)
!3619 = !DILexicalBlockFile(scope: !3616, file: !213, discriminator: 1)
!3620 = !DILocation(line: 432, column: 19, scope: !3621)
!3621 = !DILexicalBlockFile(scope: !3615, file: !213, discriminator: 2)
!3622 = !DILocation(line: 432, column: 19, scope: !3623)
!3623 = !DILexicalBlockFile(scope: !3616, file: !213, discriminator: 3)
!3624 = !DILocation(line: 433, column: 19, scope: !3625)
!3625 = !DILexicalBlockFile(scope: !3626, file: !213, discriminator: 1)
!3626 = distinct !DILexicalBlock(scope: !3627, file: !213, line: 433, column: 19)
!3627 = distinct !DILexicalBlock(scope: !3617, file: !213, line: 433, column: 19)
!3628 = !DILocation(line: 433, column: 19, scope: !3629)
!3629 = !DILexicalBlockFile(scope: !3627, file: !213, discriminator: 1)
!3630 = !DILocation(line: 433, column: 19, scope: !3631)
!3631 = !DILexicalBlockFile(scope: !3626, file: !213, discriminator: 2)
!3632 = !DILocation(line: 433, column: 19, scope: !3633)
!3633 = !DILexicalBlockFile(scope: !3627, file: !213, discriminator: 3)
!3634 = !DILocation(line: 434, column: 17, scope: !3617)
!3635 = !DILocation(line: 441, column: 20, scope: !3555)
!3636 = !DILocation(line: 446, column: 11, scope: !3400)
!3637 = !DILocation(line: 449, column: 19, scope: !3638)
!3638 = distinct !DILexicalBlock(scope: !3400, file: !213, line: 447, column: 13)
!3639 = !DILocation(line: 455, column: 19, scope: !3640)
!3640 = distinct !DILexicalBlock(scope: !3638, file: !213, line: 454, column: 19)
!3641 = !DILocation(line: 455, column: 24, scope: !3642)
!3642 = !DILexicalBlockFile(scope: !3640, file: !213, discriminator: 1)
!3643 = !DILocation(line: 455, column: 28, scope: !3642)
!3644 = !DILocation(line: 455, column: 38, scope: !3642)
!3645 = !DILocation(line: 455, column: 47, scope: !3646)
!3646 = !DILexicalBlockFile(scope: !3640, file: !213, discriminator: 2)
!3647 = !DILocation(line: 455, column: 41, scope: !3646)
!3648 = !DILocation(line: 455, column: 52, scope: !3646)
!3649 = !DILocation(line: 454, column: 19, scope: !3650)
!3650 = !DILexicalBlockFile(scope: !3638, file: !213, discriminator: 1)
!3651 = !DILocation(line: 456, column: 25, scope: !3640)
!3652 = !DILocation(line: 456, column: 17, scope: !3640)
!3653 = !DILocation(line: 463, column: 25, scope: !3654)
!3654 = distinct !DILexicalBlock(scope: !3640, file: !213, line: 457, column: 19)
!3655 = !DILocation(line: 467, column: 21, scope: !3656)
!3656 = !DILexicalBlockFile(scope: !3657, file: !213, discriminator: 1)
!3657 = distinct !DILexicalBlock(scope: !3658, file: !213, line: 467, column: 21)
!3658 = distinct !DILexicalBlock(scope: !3654, file: !213, line: 467, column: 21)
!3659 = !DILocation(line: 467, column: 21, scope: !3660)
!3660 = !DILexicalBlockFile(scope: !3658, file: !213, discriminator: 1)
!3661 = !DILocation(line: 467, column: 21, scope: !3662)
!3662 = !DILexicalBlockFile(scope: !3657, file: !213, discriminator: 2)
!3663 = !DILocation(line: 467, column: 21, scope: !3664)
!3664 = !DILexicalBlockFile(scope: !3658, file: !213, discriminator: 3)
!3665 = !DILocation(line: 468, column: 21, scope: !3666)
!3666 = !DILexicalBlockFile(scope: !3667, file: !213, discriminator: 1)
!3667 = distinct !DILexicalBlock(scope: !3668, file: !213, line: 468, column: 21)
!3668 = distinct !DILexicalBlock(scope: !3654, file: !213, line: 468, column: 21)
!3669 = !DILocation(line: 468, column: 21, scope: !3670)
!3670 = !DILexicalBlockFile(scope: !3668, file: !213, discriminator: 1)
!3671 = !DILocation(line: 468, column: 21, scope: !3672)
!3672 = !DILexicalBlockFile(scope: !3667, file: !213, discriminator: 2)
!3673 = !DILocation(line: 468, column: 21, scope: !3674)
!3674 = !DILexicalBlockFile(scope: !3668, file: !213, discriminator: 3)
!3675 = !DILocation(line: 469, column: 21, scope: !3676)
!3676 = !DILexicalBlockFile(scope: !3677, file: !213, discriminator: 1)
!3677 = distinct !DILexicalBlock(scope: !3678, file: !213, line: 469, column: 21)
!3678 = distinct !DILexicalBlock(scope: !3654, file: !213, line: 469, column: 21)
!3679 = !DILocation(line: 469, column: 21, scope: !3680)
!3680 = !DILexicalBlockFile(scope: !3678, file: !213, discriminator: 1)
!3681 = !DILocation(line: 469, column: 21, scope: !3682)
!3682 = !DILexicalBlockFile(scope: !3677, file: !213, discriminator: 2)
!3683 = !DILocation(line: 469, column: 21, scope: !3684)
!3684 = !DILexicalBlockFile(scope: !3678, file: !213, discriminator: 3)
!3685 = !DILocation(line: 470, column: 21, scope: !3686)
!3686 = !DILexicalBlockFile(scope: !3687, file: !213, discriminator: 1)
!3687 = distinct !DILexicalBlock(scope: !3688, file: !213, line: 470, column: 21)
!3688 = distinct !DILexicalBlock(scope: !3654, file: !213, line: 470, column: 21)
!3689 = !DILocation(line: 470, column: 21, scope: !3690)
!3690 = !DILexicalBlockFile(scope: !3688, file: !213, discriminator: 1)
!3691 = !DILocation(line: 470, column: 21, scope: !3692)
!3692 = !DILexicalBlockFile(scope: !3687, file: !213, discriminator: 2)
!3693 = !DILocation(line: 470, column: 21, scope: !3694)
!3694 = !DILexicalBlockFile(scope: !3688, file: !213, discriminator: 3)
!3695 = !DILocation(line: 471, column: 21, scope: !3654)
!3696 = !DILocation(line: 395, column: 21, scope: !3391)
!3697 = !DILocation(line: 484, column: 31, scope: !3400)
!3698 = !DILocation(line: 485, column: 31, scope: !3400)
!3699 = !DILocation(line: 487, column: 31, scope: !3400)
!3700 = !DILocation(line: 488, column: 31, scope: !3400)
!3701 = !DILocation(line: 489, column: 31, scope: !3400)
!3702 = !DILocation(line: 492, column: 15, scope: !3400)
!3703 = !DILocation(line: 494, column: 19, scope: !3704)
!3704 = distinct !DILexicalBlock(scope: !3705, file: !213, line: 493, column: 13)
!3705 = distinct !DILexicalBlock(scope: !3400, file: !213, line: 492, column: 15)
!3706 = !DILocation(line: 501, column: 33, scope: !3707)
!3707 = distinct !DILexicalBlock(scope: !3400, file: !213, line: 501, column: 15)
!3708 = !DILocation(line: 506, column: 15, scope: !3709)
!3709 = distinct !DILexicalBlock(scope: !3400, file: !213, line: 505, column: 15)
!3710 = !DILocation(line: 510, column: 15, scope: !3400)
!3711 = !DILocation(line: 518, column: 26, scope: !3712)
!3712 = distinct !DILexicalBlock(scope: !3400, file: !213, line: 518, column: 15)
!3713 = !DILocation(line: 518, column: 15, scope: !3400)
!3714 = !DILocation(line: 518, column: 40, scope: !3715)
!3715 = !DILexicalBlockFile(scope: !3712, file: !213, discriminator: 1)
!3716 = !DILocation(line: 518, column: 47, scope: !3715)
!3717 = !DILocation(line: 522, column: 17, scope: !3718)
!3718 = distinct !DILexicalBlock(scope: !3400, file: !213, line: 522, column: 15)
!3719 = !DILocation(line: 518, column: 18, scope: !3715)
!3720 = !DILocation(line: 518, column: 65, scope: !3721)
!3721 = !DILexicalBlockFile(scope: !3712, file: !213, discriminator: 2)
!3722 = !DILocation(line: 518, column: 15, scope: !3723)
!3723 = !DILexicalBlockFile(scope: !3400, file: !213, discriminator: 2)
!3724 = !DILocation(line: 522, column: 15, scope: !3400)
!3725 = !DILocation(line: 526, column: 11, scope: !3400)
!3726 = !DILocation(line: 541, column: 15, scope: !3727)
!3727 = distinct !DILexicalBlock(scope: !3400, file: !213, line: 540, column: 15)
!3728 = !DILocation(line: 548, column: 15, scope: !3400)
!3729 = !DILocation(line: 550, column: 19, scope: !3730)
!3730 = distinct !DILexicalBlock(scope: !3731, file: !213, line: 549, column: 13)
!3731 = distinct !DILexicalBlock(scope: !3400, file: !213, line: 548, column: 15)
!3732 = !DILocation(line: 553, column: 19, scope: !3733)
!3733 = distinct !DILexicalBlock(scope: !3730, file: !213, line: 553, column: 19)
!3734 = !DILocation(line: 553, column: 35, scope: !3735)
!3735 = !DILexicalBlockFile(scope: !3733, file: !213, discriminator: 1)
!3736 = !DILocation(line: 553, column: 30, scope: !3733)
!3737 = !DILocation(line: 562, column: 15, scope: !3738)
!3738 = !DILexicalBlockFile(scope: !3739, file: !213, discriminator: 1)
!3739 = distinct !DILexicalBlock(scope: !3740, file: !213, line: 562, column: 15)
!3740 = distinct !DILexicalBlock(scope: !3730, file: !213, line: 562, column: 15)
!3741 = !DILocation(line: 562, column: 15, scope: !3742)
!3742 = !DILexicalBlockFile(scope: !3740, file: !213, discriminator: 1)
!3743 = !DILocation(line: 562, column: 15, scope: !3744)
!3744 = !DILexicalBlockFile(scope: !3739, file: !213, discriminator: 2)
!3745 = !DILocation(line: 562, column: 15, scope: !3746)
!3746 = !DILexicalBlockFile(scope: !3740, file: !213, discriminator: 3)
!3747 = !DILocation(line: 563, column: 15, scope: !3748)
!3748 = !DILexicalBlockFile(scope: !3749, file: !213, discriminator: 1)
!3749 = distinct !DILexicalBlock(scope: !3750, file: !213, line: 563, column: 15)
!3750 = distinct !DILexicalBlock(scope: !3730, file: !213, line: 563, column: 15)
!3751 = !DILocation(line: 563, column: 15, scope: !3752)
!3752 = !DILexicalBlockFile(scope: !3750, file: !213, discriminator: 1)
!3753 = !DILocation(line: 563, column: 15, scope: !3754)
!3754 = !DILexicalBlockFile(scope: !3749, file: !213, discriminator: 2)
!3755 = !DILocation(line: 563, column: 15, scope: !3756)
!3756 = !DILexicalBlockFile(scope: !3750, file: !213, discriminator: 3)
!3757 = !DILocation(line: 564, column: 15, scope: !3758)
!3758 = !DILexicalBlockFile(scope: !3759, file: !213, discriminator: 1)
!3759 = distinct !DILexicalBlock(scope: !3760, file: !213, line: 564, column: 15)
!3760 = distinct !DILexicalBlock(scope: !3730, file: !213, line: 564, column: 15)
!3761 = !DILocation(line: 564, column: 15, scope: !3762)
!3762 = !DILexicalBlockFile(scope: !3760, file: !213, discriminator: 1)
!3763 = !DILocation(line: 564, column: 15, scope: !3764)
!3764 = !DILexicalBlockFile(scope: !3759, file: !213, discriminator: 2)
!3765 = !DILocation(line: 564, column: 15, scope: !3766)
!3766 = !DILexicalBlockFile(scope: !3760, file: !213, discriminator: 3)
!3767 = !DILocation(line: 566, column: 13, scope: !3730)
!3768 = !DILocation(line: 606, column: 17, scope: !3399)
!3769 = !DILocation(line: 602, column: 20, scope: !3399)
!3770 = !DILocation(line: 609, column: 29, scope: !3771)
!3771 = distinct !DILexicalBlock(scope: !3404, file: !213, line: 607, column: 15)
!3772 = !DILocation(line: 609, column: 27, scope: !3771)
!3773 = !DILocation(line: 604, column: 18, scope: !3399)
!3774 = !DILocation(line: 610, column: 15, scope: !3771)
!3775 = !DILocation(line: 613, column: 17, scope: !3403)
!3776 = !DILocation(line: 614, column: 17, scope: !3403)
!3777 = !DILocation(line: 618, column: 29, scope: !3778)
!3778 = distinct !DILexicalBlock(scope: !3403, file: !213, line: 618, column: 21)
!3779 = !DILocation(line: 618, column: 21, scope: !3403)
!3780 = distinct !{!3780, !3781, !3782}
!3781 = !DILocation(line: 621, column: 17, scope: !3403)
!3782 = !DILocation(line: 667, column: 44, scope: !3403)
!3783 = !DILocation(line: 619, column: 29, scope: !3778)
!3784 = !DILocation(line: 619, column: 19, scope: !3778)
!3785 = !DILocation(line: 623, column: 21, scope: !3420)
!3786 = !DILocation(line: 624, column: 56, scope: !3420)
!3787 = !DILocation(line: 624, column: 50, scope: !3420)
!3788 = !DILocation(line: 625, column: 53, scope: !3420)
!3789 = !DILocation(line: 613, column: 27, scope: !3403)
!3790 = !DILocation(line: 623, column: 29, scope: !3420)
!3791 = !DILocation(line: 624, column: 36, scope: !3420)
!3792 = !DILocation(line: 624, column: 28, scope: !3420)
!3793 = !DILocation(line: 626, column: 25, scope: !3420)
!3794 = !DILocation(line: 636, column: 38, scope: !3795)
!3795 = !DILexicalBlockFile(scope: !3796, file: !213, discriminator: 1)
!3796 = distinct !DILexicalBlock(scope: !3427, file: !213, line: 634, column: 23)
!3797 = !DILocation(line: 636, column: 48, scope: !3795)
!3798 = !DILocation(line: 636, column: 51, scope: !3799)
!3799 = !DILexicalBlockFile(scope: !3796, file: !213, discriminator: 2)
!3800 = !DILocation(line: 636, column: 48, scope: !3799)
!3801 = !DILocation(line: 636, column: 25, scope: !3802)
!3802 = !DILexicalBlockFile(scope: !3796, file: !213, discriminator: 3)
!3803 = !DILocation(line: 637, column: 28, scope: !3796)
!3804 = !DILocation(line: 636, column: 34, scope: !3795)
!3805 = distinct !{!3805, !3806, !3803}
!3806 = !DILocation(line: 636, column: 25, scope: !3796)
!3807 = !DILocation(line: 650, column: 43, scope: !3808)
!3808 = !DILexicalBlockFile(scope: !3809, file: !213, discriminator: 1)
!3809 = distinct !DILexicalBlock(scope: !3810, file: !213, line: 650, column: 29)
!3810 = distinct !DILexicalBlock(scope: !3424, file: !213, line: 650, column: 29)
!3811 = !DILocation(line: 647, column: 29, scope: !3425)
!3812 = !DILocation(line: 649, column: 36, scope: !3424)
!3813 = !DILocation(line: 651, column: 49, scope: !3809)
!3814 = !DILocation(line: 651, column: 39, scope: !3809)
!3815 = !DILocation(line: 651, column: 31, scope: !3809)
!3816 = !DILocation(line: 650, column: 53, scope: !3817)
!3817 = !DILexicalBlockFile(scope: !3809, file: !213, discriminator: 2)
!3818 = !DILocation(line: 650, column: 29, scope: !3819)
!3819 = !DILexicalBlockFile(scope: !3810, file: !213, discriminator: 1)
!3820 = distinct !{!3820, !3821, !3822}
!3821 = !DILocation(line: 650, column: 29, scope: !3810)
!3822 = !DILocation(line: 659, column: 33, scope: !3810)
!3823 = !DILocation(line: 666, column: 19, scope: !3403)
!3824 = !DILocation(line: 662, column: 41, scope: !3825)
!3825 = distinct !DILexicalBlock(scope: !3426, file: !213, line: 662, column: 29)
!3826 = !DILocation(line: 662, column: 31, scope: !3825)
!3827 = !DILocation(line: 662, column: 29, scope: !3426)
!3828 = !DILocation(line: 664, column: 27, scope: !3426)
!3829 = !DILocation(line: 667, column: 26, scope: !3403)
!3830 = !DILocation(line: 667, column: 24, scope: !3403)
!3831 = !DILocation(line: 666, column: 19, scope: !3832)
!3832 = !DILexicalBlockFile(scope: !3420, file: !213, discriminator: 3)
!3833 = !DILocation(line: 668, column: 15, scope: !3404)
!3834 = !DILocation(line: 670, column: 40, scope: !3399)
!3835 = !DILocation(line: 672, column: 19, scope: !3432)
!3836 = !DILocation(line: 672, column: 45, scope: !3837)
!3837 = !DILexicalBlockFile(scope: !3432, file: !213, discriminator: 1)
!3838 = !DILocation(line: 672, column: 23, scope: !3432)
!3839 = !DILocation(line: 676, column: 33, scope: !3431)
!3840 = !DILocation(line: 676, column: 24, scope: !3431)
!3841 = !DILocation(line: 678, column: 17, scope: !3431)
!3842 = !DILocation(line: 680, column: 43, scope: !3843)
!3843 = distinct !DILexicalBlock(scope: !3844, file: !213, line: 680, column: 25)
!3844 = distinct !DILexicalBlock(scope: !3845, file: !213, line: 679, column: 19)
!3845 = distinct !DILexicalBlock(scope: !3846, file: !213, line: 678, column: 17)
!3846 = distinct !DILexicalBlock(scope: !3431, file: !213, line: 678, column: 17)
!3847 = !DILocation(line: 682, column: 25, scope: !3848)
!3848 = !DILexicalBlockFile(scope: !3849, file: !213, discriminator: 1)
!3849 = distinct !DILexicalBlock(scope: !3850, file: !213, line: 682, column: 25)
!3850 = distinct !DILexicalBlock(scope: !3843, file: !213, line: 681, column: 23)
!3851 = !DILocation(line: 682, column: 25, scope: !3852)
!3852 = !DILexicalBlockFile(scope: !3853, file: !213, discriminator: 4)
!3853 = distinct !DILexicalBlock(scope: !3849, file: !213, line: 682, column: 25)
!3854 = !DILocation(line: 682, column: 25, scope: !3855)
!3855 = !DILexicalBlockFile(scope: !3853, file: !213, discriminator: 3)
!3856 = !DILocation(line: 682, column: 25, scope: !3857)
!3857 = !DILexicalBlockFile(scope: !3858, file: !213, discriminator: 6)
!3858 = distinct !DILexicalBlock(scope: !3859, file: !213, line: 682, column: 25)
!3859 = distinct !DILexicalBlock(scope: !3860, file: !213, line: 682, column: 25)
!3860 = distinct !DILexicalBlock(scope: !3853, file: !213, line: 682, column: 25)
!3861 = !DILocation(line: 682, column: 25, scope: !3862)
!3862 = !DILexicalBlockFile(scope: !3859, file: !213, discriminator: 6)
!3863 = !DILocation(line: 682, column: 25, scope: !3864)
!3864 = !DILexicalBlockFile(scope: !3858, file: !213, discriminator: 7)
!3865 = !DILocation(line: 682, column: 25, scope: !3866)
!3866 = !DILexicalBlockFile(scope: !3859, file: !213, discriminator: 8)
!3867 = !DILocation(line: 682, column: 25, scope: !3868)
!3868 = !DILexicalBlockFile(scope: !3869, file: !213, discriminator: 11)
!3869 = distinct !DILexicalBlock(scope: !3870, file: !213, line: 682, column: 25)
!3870 = distinct !DILexicalBlock(scope: !3860, file: !213, line: 682, column: 25)
!3871 = !DILocation(line: 682, column: 25, scope: !3872)
!3872 = !DILexicalBlockFile(scope: !3870, file: !213, discriminator: 11)
!3873 = !DILocation(line: 682, column: 25, scope: !3874)
!3874 = !DILexicalBlockFile(scope: !3869, file: !213, discriminator: 12)
!3875 = !DILocation(line: 682, column: 25, scope: !3876)
!3876 = !DILexicalBlockFile(scope: !3870, file: !213, discriminator: 13)
!3877 = !DILocation(line: 682, column: 25, scope: !3878)
!3878 = !DILexicalBlockFile(scope: !3879, file: !213, discriminator: 16)
!3879 = distinct !DILexicalBlock(scope: !3880, file: !213, line: 682, column: 25)
!3880 = distinct !DILexicalBlock(scope: !3860, file: !213, line: 682, column: 25)
!3881 = !DILocation(line: 682, column: 25, scope: !3882)
!3882 = !DILexicalBlockFile(scope: !3880, file: !213, discriminator: 16)
!3883 = !DILocation(line: 682, column: 25, scope: !3884)
!3884 = !DILexicalBlockFile(scope: !3879, file: !213, discriminator: 17)
!3885 = !DILocation(line: 682, column: 25, scope: !3886)
!3886 = !DILexicalBlockFile(scope: !3880, file: !213, discriminator: 18)
!3887 = !DILocation(line: 682, column: 25, scope: !3888)
!3888 = !DILexicalBlockFile(scope: !3860, file: !213, discriminator: 20)
!3889 = !DILocation(line: 682, column: 25, scope: !3890)
!3890 = !DILexicalBlockFile(scope: !3891, file: !213, discriminator: 22)
!3891 = distinct !DILexicalBlock(scope: !3892, file: !213, line: 682, column: 25)
!3892 = distinct !DILexicalBlock(scope: !3849, file: !213, line: 682, column: 25)
!3893 = !DILocation(line: 682, column: 25, scope: !3894)
!3894 = !DILexicalBlockFile(scope: !3892, file: !213, discriminator: 22)
!3895 = !DILocation(line: 682, column: 25, scope: !3896)
!3896 = !DILexicalBlockFile(scope: !3891, file: !213, discriminator: 23)
!3897 = !DILocation(line: 682, column: 25, scope: !3898)
!3898 = !DILexicalBlockFile(scope: !3892, file: !213, discriminator: 24)
!3899 = !DILocation(line: 683, column: 25, scope: !3900)
!3900 = !DILexicalBlockFile(scope: !3901, file: !213, discriminator: 1)
!3901 = distinct !DILexicalBlock(scope: !3902, file: !213, line: 683, column: 25)
!3902 = distinct !DILexicalBlock(scope: !3850, file: !213, line: 683, column: 25)
!3903 = !DILocation(line: 683, column: 25, scope: !3904)
!3904 = !DILexicalBlockFile(scope: !3902, file: !213, discriminator: 1)
!3905 = !DILocation(line: 683, column: 25, scope: !3906)
!3906 = !DILexicalBlockFile(scope: !3901, file: !213, discriminator: 2)
!3907 = !DILocation(line: 683, column: 25, scope: !3908)
!3908 = !DILexicalBlockFile(scope: !3902, file: !213, discriminator: 3)
!3909 = !DILocation(line: 684, column: 25, scope: !3910)
!3910 = !DILexicalBlockFile(scope: !3911, file: !213, discriminator: 1)
!3911 = distinct !DILexicalBlock(scope: !3912, file: !213, line: 684, column: 25)
!3912 = distinct !DILexicalBlock(scope: !3850, file: !213, line: 684, column: 25)
!3913 = !DILocation(line: 684, column: 25, scope: !3914)
!3914 = !DILexicalBlockFile(scope: !3912, file: !213, discriminator: 1)
!3915 = !DILocation(line: 684, column: 25, scope: !3916)
!3916 = !DILexicalBlockFile(scope: !3911, file: !213, discriminator: 2)
!3917 = !DILocation(line: 684, column: 25, scope: !3918)
!3918 = !DILexicalBlockFile(scope: !3912, file: !213, discriminator: 3)
!3919 = !DILocation(line: 685, column: 38, scope: !3850)
!3920 = !DILocation(line: 685, column: 33, scope: !3850)
!3921 = !DILocation(line: 686, column: 23, scope: !3850)
!3922 = !DILocation(line: 687, column: 30, scope: !3923)
!3923 = distinct !DILexicalBlock(scope: !3843, file: !213, line: 687, column: 30)
!3924 = !DILocation(line: 687, column: 30, scope: !3843)
!3925 = !DILocation(line: 689, column: 25, scope: !3926)
!3926 = !DILexicalBlockFile(scope: !3927, file: !213, discriminator: 1)
!3927 = distinct !DILexicalBlock(scope: !3928, file: !213, line: 689, column: 25)
!3928 = distinct !DILexicalBlock(scope: !3929, file: !213, line: 689, column: 25)
!3929 = distinct !DILexicalBlock(scope: !3923, file: !213, line: 688, column: 23)
!3930 = !DILocation(line: 689, column: 25, scope: !3931)
!3931 = !DILexicalBlockFile(scope: !3928, file: !213, discriminator: 1)
!3932 = !DILocation(line: 689, column: 25, scope: !3933)
!3933 = !DILexicalBlockFile(scope: !3927, file: !213, discriminator: 2)
!3934 = !DILocation(line: 689, column: 25, scope: !3935)
!3935 = !DILexicalBlockFile(scope: !3928, file: !213, discriminator: 3)
!3936 = !DILocation(line: 691, column: 23, scope: !3929)
!3937 = !DILocation(line: 692, column: 35, scope: !3938)
!3938 = distinct !DILexicalBlock(scope: !3844, file: !213, line: 692, column: 25)
!3939 = !DILocation(line: 692, column: 30, scope: !3938)
!3940 = !DILocation(line: 692, column: 25, scope: !3844)
!3941 = !DILocation(line: 694, column: 21, scope: !3942)
!3942 = !DILexicalBlockFile(scope: !3943, file: !213, discriminator: 1)
!3943 = distinct !DILexicalBlock(scope: !3944, file: !213, line: 694, column: 21)
!3944 = distinct !DILexicalBlock(scope: !3844, file: !213, line: 694, column: 21)
!3945 = !DILocation(line: 694, column: 21, scope: !3946)
!3946 = !DILexicalBlockFile(scope: !3943, file: !213, discriminator: 2)
!3947 = !DILocation(line: 694, column: 21, scope: !3948)
!3948 = !DILexicalBlockFile(scope: !3949, file: !213, discriminator: 4)
!3949 = distinct !DILexicalBlock(scope: !3950, file: !213, line: 694, column: 21)
!3950 = distinct !DILexicalBlock(scope: !3951, file: !213, line: 694, column: 21)
!3951 = distinct !DILexicalBlock(scope: !3943, file: !213, line: 694, column: 21)
!3952 = !DILocation(line: 694, column: 21, scope: !3953)
!3953 = !DILexicalBlockFile(scope: !3950, file: !213, discriminator: 4)
!3954 = !DILocation(line: 694, column: 21, scope: !3955)
!3955 = !DILexicalBlockFile(scope: !3949, file: !213, discriminator: 5)
!3956 = !DILocation(line: 694, column: 21, scope: !3957)
!3957 = !DILexicalBlockFile(scope: !3950, file: !213, discriminator: 6)
!3958 = !DILocation(line: 694, column: 21, scope: !3959)
!3959 = !DILexicalBlockFile(scope: !3960, file: !213, discriminator: 9)
!3960 = distinct !DILexicalBlock(scope: !3961, file: !213, line: 694, column: 21)
!3961 = distinct !DILexicalBlock(scope: !3951, file: !213, line: 694, column: 21)
!3962 = !DILocation(line: 694, column: 21, scope: !3963)
!3963 = !DILexicalBlockFile(scope: !3961, file: !213, discriminator: 9)
!3964 = !DILocation(line: 694, column: 21, scope: !3965)
!3965 = !DILexicalBlockFile(scope: !3960, file: !213, discriminator: 10)
!3966 = !DILocation(line: 694, column: 21, scope: !3967)
!3967 = !DILexicalBlockFile(scope: !3961, file: !213, discriminator: 11)
!3968 = !DILocation(line: 694, column: 21, scope: !3969)
!3969 = !DILexicalBlockFile(scope: !3951, file: !213, discriminator: 13)
!3970 = !DILocation(line: 695, column: 21, scope: !3971)
!3971 = !DILexicalBlockFile(scope: !3972, file: !213, discriminator: 1)
!3972 = distinct !DILexicalBlock(scope: !3973, file: !213, line: 695, column: 21)
!3973 = distinct !DILexicalBlock(scope: !3844, file: !213, line: 695, column: 21)
!3974 = !DILocation(line: 695, column: 21, scope: !3975)
!3975 = !DILexicalBlockFile(scope: !3973, file: !213, discriminator: 1)
!3976 = !DILocation(line: 695, column: 21, scope: !3977)
!3977 = !DILexicalBlockFile(scope: !3972, file: !213, discriminator: 2)
!3978 = !DILocation(line: 695, column: 21, scope: !3979)
!3979 = !DILexicalBlockFile(scope: !3973, file: !213, discriminator: 3)
!3980 = !DILocation(line: 696, column: 25, scope: !3844)
!3981 = !DILocation(line: 678, column: 17, scope: !3982)
!3982 = !DILexicalBlockFile(scope: !3845, file: !213, discriminator: 1)
!3983 = distinct !{!3983, !3984, !3985}
!3984 = !DILocation(line: 678, column: 17, scope: !3846)
!3985 = !DILocation(line: 697, column: 19, scope: !3846)
!3986 = !DILocation(line: 704, column: 34, scope: !3987)
!3987 = distinct !DILexicalBlock(scope: !3391, file: !213, line: 704, column: 11)
!3988 = !DILocation(line: 706, column: 14, scope: !3987)
!3989 = !DILocation(line: 707, column: 14, scope: !3987)
!3990 = !DILocation(line: 707, column: 35, scope: !3991)
!3991 = !DILexicalBlockFile(scope: !3987, file: !213, discriminator: 1)
!3992 = !DILocation(line: 707, column: 17, scope: !3991)
!3993 = !DILocation(line: 707, column: 53, scope: !3991)
!3994 = !DILocation(line: 707, column: 47, scope: !3991)
!3995 = !DILocation(line: 707, column: 65, scope: !3991)
!3996 = !DILocation(line: 708, column: 15, scope: !3991)
!3997 = !DILocation(line: 708, column: 11, scope: !3987)
!3998 = !DILocation(line: 704, column: 11, scope: !3999)
!3999 = !DILexicalBlockFile(scope: !3391, file: !213, discriminator: 2)
!4000 = !DILocation(line: 712, column: 7, scope: !4001)
!4001 = !DILexicalBlockFile(scope: !4002, file: !213, discriminator: 1)
!4002 = distinct !DILexicalBlock(scope: !3391, file: !213, line: 712, column: 7)
!4003 = !DILocation(line: 712, column: 7, scope: !4004)
!4004 = !DILexicalBlockFile(scope: !4005, file: !213, discriminator: 4)
!4005 = distinct !DILexicalBlock(scope: !4002, file: !213, line: 712, column: 7)
!4006 = !DILocation(line: 712, column: 7, scope: !4007)
!4007 = !DILexicalBlockFile(scope: !4005, file: !213, discriminator: 3)
!4008 = !DILocation(line: 712, column: 7, scope: !4009)
!4009 = !DILexicalBlockFile(scope: !4010, file: !213, discriminator: 6)
!4010 = distinct !DILexicalBlock(scope: !4011, file: !213, line: 712, column: 7)
!4011 = distinct !DILexicalBlock(scope: !4012, file: !213, line: 712, column: 7)
!4012 = distinct !DILexicalBlock(scope: !4005, file: !213, line: 712, column: 7)
!4013 = !DILocation(line: 712, column: 7, scope: !4014)
!4014 = !DILexicalBlockFile(scope: !4011, file: !213, discriminator: 6)
!4015 = !DILocation(line: 712, column: 7, scope: !4016)
!4016 = !DILexicalBlockFile(scope: !4010, file: !213, discriminator: 7)
!4017 = !DILocation(line: 712, column: 7, scope: !4018)
!4018 = !DILexicalBlockFile(scope: !4011, file: !213, discriminator: 8)
!4019 = !DILocation(line: 712, column: 7, scope: !4020)
!4020 = !DILexicalBlockFile(scope: !4021, file: !213, discriminator: 11)
!4021 = distinct !DILexicalBlock(scope: !4022, file: !213, line: 712, column: 7)
!4022 = distinct !DILexicalBlock(scope: !4012, file: !213, line: 712, column: 7)
!4023 = !DILocation(line: 712, column: 7, scope: !4024)
!4024 = !DILexicalBlockFile(scope: !4022, file: !213, discriminator: 11)
!4025 = !DILocation(line: 712, column: 7, scope: !4026)
!4026 = !DILexicalBlockFile(scope: !4021, file: !213, discriminator: 12)
!4027 = !DILocation(line: 712, column: 7, scope: !4028)
!4028 = !DILexicalBlockFile(scope: !4022, file: !213, discriminator: 13)
!4029 = !DILocation(line: 712, column: 7, scope: !4030)
!4030 = !DILexicalBlockFile(scope: !4031, file: !213, discriminator: 16)
!4031 = distinct !DILexicalBlock(scope: !4032, file: !213, line: 712, column: 7)
!4032 = distinct !DILexicalBlock(scope: !4012, file: !213, line: 712, column: 7)
!4033 = !DILocation(line: 712, column: 7, scope: !4034)
!4034 = !DILexicalBlockFile(scope: !4032, file: !213, discriminator: 16)
!4035 = !DILocation(line: 712, column: 7, scope: !4036)
!4036 = !DILexicalBlockFile(scope: !4031, file: !213, discriminator: 17)
!4037 = !DILocation(line: 712, column: 7, scope: !4038)
!4038 = !DILexicalBlockFile(scope: !4032, file: !213, discriminator: 18)
!4039 = !DILocation(line: 712, column: 7, scope: !4040)
!4040 = !DILexicalBlockFile(scope: !4012, file: !213, discriminator: 20)
!4041 = !DILocation(line: 712, column: 7, scope: !4042)
!4042 = !DILexicalBlockFile(scope: !4043, file: !213, discriminator: 22)
!4043 = distinct !DILexicalBlock(scope: !4044, file: !213, line: 712, column: 7)
!4044 = distinct !DILexicalBlock(scope: !4002, file: !213, line: 712, column: 7)
!4045 = !DILocation(line: 712, column: 7, scope: !4046)
!4046 = !DILexicalBlockFile(scope: !4044, file: !213, discriminator: 22)
!4047 = !DILocation(line: 712, column: 7, scope: !4048)
!4048 = !DILexicalBlockFile(scope: !4043, file: !213, discriminator: 23)
!4049 = !DILocation(line: 712, column: 7, scope: !4050)
!4050 = !DILexicalBlockFile(scope: !4044, file: !213, discriminator: 24)
!4051 = !DILocation(line: 715, column: 7, scope: !4052)
!4052 = !DILexicalBlockFile(scope: !4053, file: !213, discriminator: 1)
!4053 = distinct !DILexicalBlock(scope: !4054, file: !213, line: 715, column: 7)
!4054 = distinct !DILexicalBlock(scope: !3391, file: !213, line: 715, column: 7)
!4055 = !DILocation(line: 715, column: 7, scope: !4056)
!4056 = !DILexicalBlockFile(scope: !4053, file: !213, discriminator: 2)
!4057 = !DILocation(line: 715, column: 7, scope: !4058)
!4058 = !DILexicalBlockFile(scope: !4059, file: !213, discriminator: 4)
!4059 = distinct !DILexicalBlock(scope: !4060, file: !213, line: 715, column: 7)
!4060 = distinct !DILexicalBlock(scope: !4061, file: !213, line: 715, column: 7)
!4061 = distinct !DILexicalBlock(scope: !4053, file: !213, line: 715, column: 7)
!4062 = !DILocation(line: 715, column: 7, scope: !4063)
!4063 = !DILexicalBlockFile(scope: !4060, file: !213, discriminator: 4)
!4064 = !DILocation(line: 715, column: 7, scope: !4065)
!4065 = !DILexicalBlockFile(scope: !4059, file: !213, discriminator: 5)
!4066 = !DILocation(line: 715, column: 7, scope: !4067)
!4067 = !DILexicalBlockFile(scope: !4060, file: !213, discriminator: 6)
!4068 = !DILocation(line: 715, column: 7, scope: !4069)
!4069 = !DILexicalBlockFile(scope: !4070, file: !213, discriminator: 9)
!4070 = distinct !DILexicalBlock(scope: !4071, file: !213, line: 715, column: 7)
!4071 = distinct !DILexicalBlock(scope: !4061, file: !213, line: 715, column: 7)
!4072 = !DILocation(line: 715, column: 7, scope: !4073)
!4073 = !DILexicalBlockFile(scope: !4071, file: !213, discriminator: 9)
!4074 = !DILocation(line: 715, column: 7, scope: !4075)
!4075 = !DILexicalBlockFile(scope: !4070, file: !213, discriminator: 10)
!4076 = !DILocation(line: 715, column: 7, scope: !4077)
!4077 = !DILexicalBlockFile(scope: !4071, file: !213, discriminator: 11)
!4078 = !DILocation(line: 715, column: 7, scope: !4079)
!4079 = !DILexicalBlockFile(scope: !4061, file: !213, discriminator: 13)
!4080 = !DILocation(line: 716, column: 7, scope: !4081)
!4081 = !DILexicalBlockFile(scope: !4082, file: !213, discriminator: 1)
!4082 = distinct !DILexicalBlock(scope: !4083, file: !213, line: 716, column: 7)
!4083 = distinct !DILexicalBlock(scope: !3391, file: !213, line: 716, column: 7)
!4084 = !DILocation(line: 716, column: 7, scope: !4085)
!4085 = !DILexicalBlockFile(scope: !4083, file: !213, discriminator: 1)
!4086 = !DILocation(line: 716, column: 7, scope: !4087)
!4087 = !DILexicalBlockFile(scope: !4082, file: !213, discriminator: 2)
!4088 = !DILocation(line: 716, column: 7, scope: !4089)
!4089 = !DILexicalBlockFile(scope: !4083, file: !213, discriminator: 3)
!4090 = !DILocation(line: 718, column: 13, scope: !4091)
!4091 = distinct !DILexicalBlock(scope: !3391, file: !213, line: 718, column: 11)
!4092 = !DILocation(line: 718, column: 11, scope: !3391)
!4093 = !DILocation(line: 720, column: 5, scope: !3392)
!4094 = !DILocation(line: 392, column: 75, scope: !4095)
!4095 = !DILexicalBlockFile(scope: !3392, file: !213, discriminator: 5)
!4096 = !DILocation(line: 392, column: 3, scope: !4095)
!4097 = distinct !{!4097, !4098, !4099}
!4098 = !DILocation(line: 392, column: 3, scope: !3393)
!4099 = !DILocation(line: 720, column: 5, scope: !3393)
!4100 = !DILocation(line: 722, column: 11, scope: !4101)
!4101 = distinct !DILexicalBlock(scope: !3364, file: !213, line: 722, column: 7)
!4102 = !DILocation(line: 722, column: 16, scope: !4101)
!4103 = !DILocation(line: 730, column: 51, scope: !4104)
!4104 = distinct !DILexicalBlock(scope: !3364, file: !213, line: 730, column: 7)
!4105 = !DILocation(line: 731, column: 10, scope: !4106)
!4106 = !DILexicalBlockFile(scope: !4104, file: !213, discriminator: 1)
!4107 = !DILocation(line: 733, column: 11, scope: !4108)
!4108 = distinct !DILexicalBlock(scope: !4109, file: !213, line: 733, column: 11)
!4109 = distinct !DILexicalBlock(scope: !4104, file: !213, line: 732, column: 5)
!4110 = !DILocation(line: 733, column: 11, scope: !4109)
!4111 = !DILocation(line: 734, column: 16, scope: !4108)
!4112 = !DILocation(line: 734, column: 9, scope: !4108)
!4113 = !DILocation(line: 738, column: 18, scope: !4114)
!4114 = distinct !DILexicalBlock(scope: !4108, file: !213, line: 738, column: 16)
!4115 = !DILocation(line: 738, column: 32, scope: !4116)
!4116 = !DILexicalBlockFile(scope: !4114, file: !213, discriminator: 1)
!4117 = !DILocation(line: 738, column: 29, scope: !4114)
!4118 = !DILocation(line: 747, column: 7, scope: !4119)
!4119 = distinct !DILexicalBlock(scope: !3364, file: !213, line: 747, column: 7)
!4120 = !DILocation(line: 747, column: 20, scope: !4119)
!4121 = !DILocation(line: 748, column: 12, scope: !4122)
!4122 = !DILexicalBlockFile(scope: !4123, file: !213, discriminator: 1)
!4123 = distinct !DILexicalBlock(scope: !4124, file: !213, line: 748, column: 5)
!4124 = distinct !DILexicalBlock(scope: !4119, file: !213, line: 748, column: 5)
!4125 = !DILocation(line: 748, column: 5, scope: !4126)
!4126 = !DILexicalBlockFile(scope: !4124, file: !213, discriminator: 1)
!4127 = !DILocation(line: 749, column: 7, scope: !4128)
!4128 = !DILexicalBlockFile(scope: !4129, file: !213, discriminator: 1)
!4129 = distinct !DILexicalBlock(scope: !4130, file: !213, line: 749, column: 7)
!4130 = distinct !DILexicalBlock(scope: !4123, file: !213, line: 749, column: 7)
!4131 = !DILocation(line: 749, column: 7, scope: !4132)
!4132 = !DILexicalBlockFile(scope: !4130, file: !213, discriminator: 1)
!4133 = !DILocation(line: 749, column: 7, scope: !4134)
!4134 = !DILexicalBlockFile(scope: !4129, file: !213, discriminator: 2)
!4135 = !DILocation(line: 749, column: 7, scope: !4136)
!4136 = !DILexicalBlockFile(scope: !4130, file: !213, discriminator: 3)
!4137 = !DILocation(line: 748, column: 39, scope: !4138)
!4138 = !DILexicalBlockFile(scope: !4123, file: !213, discriminator: 2)
!4139 = distinct !{!4139, !4140, !4141}
!4140 = !DILocation(line: 748, column: 5, scope: !4124)
!4141 = !DILocation(line: 749, column: 7, scope: !4124)
!4142 = !DILocation(line: 751, column: 11, scope: !4143)
!4143 = distinct !DILexicalBlock(scope: !3364, file: !213, line: 751, column: 7)
!4144 = !DILocation(line: 751, column: 7, scope: !3364)
!4145 = !DILocation(line: 752, column: 5, scope: !4143)
!4146 = !DILocation(line: 752, column: 17, scope: !4143)
!4147 = !DILocation(line: 758, column: 21, scope: !4148)
!4148 = distinct !DILexicalBlock(scope: !3364, file: !213, line: 758, column: 7)
!4149 = !DILocation(line: 758, column: 54, scope: !4150)
!4150 = !DILexicalBlockFile(scope: !4148, file: !213, discriminator: 1)
!4151 = !DILocation(line: 758, column: 51, scope: !4148)
!4152 = !DILocation(line: 762, column: 42, scope: !3364)
!4153 = !DILocation(line: 760, column: 10, scope: !3364)
!4154 = !DILocation(line: 760, column: 3, scope: !3364)
!4155 = !DILocation(line: 764, column: 1, scope: !3364)
!4156 = distinct !DISubprogram(name: "gettext_quote", scope: !213, file: !213, line: 199, type: !4157, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !187, variables: !4159)
!4157 = !DISubroutineType(types: !4158)
!4158 = !{!81, !81, !190}
!4159 = !{!4160, !4161, !4162, !4163}
!4160 = !DILocalVariable(name: "msgid", arg: 1, scope: !4156, file: !213, line: 199, type: !81)
!4161 = !DILocalVariable(name: "s", arg: 2, scope: !4156, file: !213, line: 199, type: !190)
!4162 = !DILocalVariable(name: "translation", scope: !4156, file: !213, line: 201, type: !81)
!4163 = !DILocalVariable(name: "locale_code", scope: !4156, file: !213, line: 202, type: !81)
!4164 = !DILocation(line: 199, column: 28, scope: !4156)
!4165 = !DILocation(line: 199, column: 54, scope: !4156)
!4166 = !DILocation(line: 201, column: 29, scope: !4156)
!4167 = !DILocation(line: 201, column: 15, scope: !4156)
!4168 = !DILocation(line: 204, column: 19, scope: !4169)
!4169 = distinct !DILexicalBlock(scope: !4156, file: !213, line: 204, column: 7)
!4170 = !DILocation(line: 204, column: 7, scope: !4156)
!4171 = !DILocation(line: 225, column: 17, scope: !4156)
!4172 = !DILocation(line: 202, column: 15, scope: !4156)
!4173 = !DILocalVariable(name: "s2", arg: 2, scope: !4174, file: !4175, line: 160, type: !81)
!4174 = distinct !DISubprogram(name: "strcaseeq0", scope: !4175, file: !4175, line: 160, type: !4176, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !187, variables: !4178)
!4175 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4176 = !DISubroutineType(types: !4177)
!4177 = !{!71, !81, !81, !69, !69, !69, !69, !69, !69, !69, !69, !69}
!4178 = !{!4179, !4173, !4180, !4181, !4182, !4183, !4184, !4185, !4186, !4187, !4188}
!4179 = !DILocalVariable(name: "s1", arg: 1, scope: !4174, file: !4175, line: 160, type: !81)
!4180 = !DILocalVariable(name: "s20", arg: 3, scope: !4174, file: !4175, line: 160, type: !69)
!4181 = !DILocalVariable(name: "s21", arg: 4, scope: !4174, file: !4175, line: 160, type: !69)
!4182 = !DILocalVariable(name: "s22", arg: 5, scope: !4174, file: !4175, line: 160, type: !69)
!4183 = !DILocalVariable(name: "s23", arg: 6, scope: !4174, file: !4175, line: 160, type: !69)
!4184 = !DILocalVariable(name: "s24", arg: 7, scope: !4174, file: !4175, line: 160, type: !69)
!4185 = !DILocalVariable(name: "s25", arg: 8, scope: !4174, file: !4175, line: 160, type: !69)
!4186 = !DILocalVariable(name: "s26", arg: 9, scope: !4174, file: !4175, line: 160, type: !69)
!4187 = !DILocalVariable(name: "s27", arg: 10, scope: !4174, file: !4175, line: 160, type: !69)
!4188 = !DILocalVariable(name: "s28", arg: 11, scope: !4174, file: !4175, line: 160, type: !69)
!4189 = !DILocation(line: 160, column: 41, scope: !4174, inlinedAt: !4190)
!4190 = distinct !DILocation(line: 226, column: 7, scope: !4191)
!4191 = distinct !DILexicalBlock(scope: !4156, file: !213, line: 226, column: 7)
!4192 = !DILocation(line: 160, column: 120, scope: !4174, inlinedAt: !4190)
!4193 = !DILocation(line: 160, column: 130, scope: !4174, inlinedAt: !4190)
!4194 = !DILocation(line: 162, column: 7, scope: !4195, inlinedAt: !4190)
!4195 = !DILexicalBlockFile(scope: !4196, file: !4175, discriminator: 1)
!4196 = distinct !DILexicalBlock(scope: !4174, file: !4175, line: 162, column: 7)
!4197 = !DILocalVariable(name: "s2", arg: 2, scope: !4198, file: !4175, line: 146, type: !81)
!4198 = distinct !DISubprogram(name: "strcaseeq1", scope: !4175, file: !4175, line: 146, type: !4199, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !187, variables: !4201)
!4199 = !DISubroutineType(types: !4200)
!4200 = !{!71, !81, !81, !69, !69, !69, !69, !69, !69, !69, !69}
!4201 = !{!4202, !4197, !4203, !4204, !4205, !4206, !4207, !4208, !4209, !4210}
!4202 = !DILocalVariable(name: "s1", arg: 1, scope: !4198, file: !4175, line: 146, type: !81)
!4203 = !DILocalVariable(name: "s21", arg: 3, scope: !4198, file: !4175, line: 146, type: !69)
!4204 = !DILocalVariable(name: "s22", arg: 4, scope: !4198, file: !4175, line: 146, type: !69)
!4205 = !DILocalVariable(name: "s23", arg: 5, scope: !4198, file: !4175, line: 146, type: !69)
!4206 = !DILocalVariable(name: "s24", arg: 6, scope: !4198, file: !4175, line: 146, type: !69)
!4207 = !DILocalVariable(name: "s25", arg: 7, scope: !4198, file: !4175, line: 146, type: !69)
!4208 = !DILocalVariable(name: "s26", arg: 8, scope: !4198, file: !4175, line: 146, type: !69)
!4209 = !DILocalVariable(name: "s27", arg: 9, scope: !4198, file: !4175, line: 146, type: !69)
!4210 = !DILocalVariable(name: "s28", arg: 10, scope: !4198, file: !4175, line: 146, type: !69)
!4211 = !DILocation(line: 146, column: 41, scope: !4198, inlinedAt: !4212)
!4212 = distinct !DILocation(line: 167, column: 16, scope: !4213, inlinedAt: !4190)
!4213 = distinct !DILexicalBlock(scope: !4214, file: !4175, line: 164, column: 11)
!4214 = distinct !DILexicalBlock(scope: !4196, file: !4175, line: 163, column: 5)
!4215 = !DILocation(line: 146, column: 110, scope: !4198, inlinedAt: !4212)
!4216 = !DILocation(line: 146, column: 120, scope: !4198, inlinedAt: !4212)
!4217 = !DILocation(line: 148, column: 7, scope: !4218, inlinedAt: !4212)
!4218 = !DILexicalBlockFile(scope: !4219, file: !4175, discriminator: 1)
!4219 = distinct !DILexicalBlock(scope: !4198, file: !4175, line: 148, column: 7)
!4220 = !DILocalVariable(name: "s2", arg: 2, scope: !4221, file: !4175, line: 132, type: !81)
!4221 = distinct !DISubprogram(name: "strcaseeq2", scope: !4175, file: !4175, line: 132, type: !4222, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !187, variables: !4224)
!4222 = !DISubroutineType(types: !4223)
!4223 = !{!71, !81, !81, !69, !69, !69, !69, !69, !69, !69}
!4224 = !{!4225, !4220, !4226, !4227, !4228, !4229, !4230, !4231, !4232}
!4225 = !DILocalVariable(name: "s1", arg: 1, scope: !4221, file: !4175, line: 132, type: !81)
!4226 = !DILocalVariable(name: "s22", arg: 3, scope: !4221, file: !4175, line: 132, type: !69)
!4227 = !DILocalVariable(name: "s23", arg: 4, scope: !4221, file: !4175, line: 132, type: !69)
!4228 = !DILocalVariable(name: "s24", arg: 5, scope: !4221, file: !4175, line: 132, type: !69)
!4229 = !DILocalVariable(name: "s25", arg: 6, scope: !4221, file: !4175, line: 132, type: !69)
!4230 = !DILocalVariable(name: "s26", arg: 7, scope: !4221, file: !4175, line: 132, type: !69)
!4231 = !DILocalVariable(name: "s27", arg: 8, scope: !4221, file: !4175, line: 132, type: !69)
!4232 = !DILocalVariable(name: "s28", arg: 9, scope: !4221, file: !4175, line: 132, type: !69)
!4233 = !DILocation(line: 132, column: 41, scope: !4221, inlinedAt: !4234)
!4234 = distinct !DILocation(line: 153, column: 16, scope: !4235, inlinedAt: !4212)
!4235 = distinct !DILexicalBlock(scope: !4236, file: !4175, line: 150, column: 11)
!4236 = distinct !DILexicalBlock(scope: !4219, file: !4175, line: 149, column: 5)
!4237 = !DILocation(line: 132, column: 100, scope: !4221, inlinedAt: !4234)
!4238 = !DILocation(line: 132, column: 110, scope: !4221, inlinedAt: !4234)
!4239 = !DILocation(line: 134, column: 7, scope: !4240, inlinedAt: !4234)
!4240 = !DILexicalBlockFile(scope: !4241, file: !4175, discriminator: 1)
!4241 = distinct !DILexicalBlock(scope: !4221, file: !4175, line: 134, column: 7)
!4242 = !DILocalVariable(name: "s2", arg: 2, scope: !4243, file: !4175, line: 118, type: !81)
!4243 = distinct !DISubprogram(name: "strcaseeq3", scope: !4175, file: !4175, line: 118, type: !4244, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !187, variables: !4246)
!4244 = !DISubroutineType(types: !4245)
!4245 = !{!71, !81, !81, !69, !69, !69, !69, !69, !69}
!4246 = !{!4247, !4242, !4248, !4249, !4250, !4251, !4252, !4253}
!4247 = !DILocalVariable(name: "s1", arg: 1, scope: !4243, file: !4175, line: 118, type: !81)
!4248 = !DILocalVariable(name: "s23", arg: 3, scope: !4243, file: !4175, line: 118, type: !69)
!4249 = !DILocalVariable(name: "s24", arg: 4, scope: !4243, file: !4175, line: 118, type: !69)
!4250 = !DILocalVariable(name: "s25", arg: 5, scope: !4243, file: !4175, line: 118, type: !69)
!4251 = !DILocalVariable(name: "s26", arg: 6, scope: !4243, file: !4175, line: 118, type: !69)
!4252 = !DILocalVariable(name: "s27", arg: 7, scope: !4243, file: !4175, line: 118, type: !69)
!4253 = !DILocalVariable(name: "s28", arg: 8, scope: !4243, file: !4175, line: 118, type: !69)
!4254 = !DILocation(line: 118, column: 41, scope: !4243, inlinedAt: !4255)
!4255 = distinct !DILocation(line: 139, column: 16, scope: !4256, inlinedAt: !4234)
!4256 = distinct !DILexicalBlock(scope: !4257, file: !4175, line: 136, column: 11)
!4257 = distinct !DILexicalBlock(scope: !4241, file: !4175, line: 135, column: 5)
!4258 = !DILocation(line: 118, column: 90, scope: !4243, inlinedAt: !4255)
!4259 = !DILocation(line: 118, column: 100, scope: !4243, inlinedAt: !4255)
!4260 = !DILocation(line: 120, column: 7, scope: !4261, inlinedAt: !4255)
!4261 = !DILexicalBlockFile(scope: !4262, file: !4175, discriminator: 2)
!4262 = distinct !DILexicalBlock(scope: !4243, file: !4175, line: 120, column: 7)
!4263 = !DILocation(line: 120, column: 7, scope: !4264, inlinedAt: !4255)
!4264 = !DILexicalBlockFile(scope: !4243, file: !4175, discriminator: 2)
!4265 = !DILocalVariable(name: "s2", arg: 2, scope: !4266, file: !4175, line: 104, type: !81)
!4266 = distinct !DISubprogram(name: "strcaseeq4", scope: !4175, file: !4175, line: 104, type: !4267, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !187, variables: !4269)
!4267 = !DISubroutineType(types: !4268)
!4268 = !{!71, !81, !81, !69, !69, !69, !69, !69}
!4269 = !{!4270, !4265, !4271, !4272, !4273, !4274, !4275}
!4270 = !DILocalVariable(name: "s1", arg: 1, scope: !4266, file: !4175, line: 104, type: !81)
!4271 = !DILocalVariable(name: "s24", arg: 3, scope: !4266, file: !4175, line: 104, type: !69)
!4272 = !DILocalVariable(name: "s25", arg: 4, scope: !4266, file: !4175, line: 104, type: !69)
!4273 = !DILocalVariable(name: "s26", arg: 5, scope: !4266, file: !4175, line: 104, type: !69)
!4274 = !DILocalVariable(name: "s27", arg: 6, scope: !4266, file: !4175, line: 104, type: !69)
!4275 = !DILocalVariable(name: "s28", arg: 7, scope: !4266, file: !4175, line: 104, type: !69)
!4276 = !DILocation(line: 104, column: 41, scope: !4266, inlinedAt: !4277)
!4277 = distinct !DILocation(line: 125, column: 16, scope: !4278, inlinedAt: !4255)
!4278 = distinct !DILexicalBlock(scope: !4279, file: !4175, line: 122, column: 11)
!4279 = distinct !DILexicalBlock(scope: !4262, file: !4175, line: 121, column: 5)
!4280 = !DILocation(line: 104, column: 80, scope: !4266, inlinedAt: !4277)
!4281 = !DILocation(line: 104, column: 90, scope: !4266, inlinedAt: !4277)
!4282 = !DILocation(line: 106, column: 7, scope: !4283, inlinedAt: !4277)
!4283 = !DILexicalBlockFile(scope: !4284, file: !4175, discriminator: 2)
!4284 = distinct !DILexicalBlock(scope: !4266, file: !4175, line: 106, column: 7)
!4285 = !DILocation(line: 106, column: 7, scope: !4286, inlinedAt: !4277)
!4286 = !DILexicalBlockFile(scope: !4266, file: !4175, discriminator: 2)
!4287 = !DILocalVariable(name: "s2", arg: 2, scope: !4288, file: !4175, line: 90, type: !81)
!4288 = distinct !DISubprogram(name: "strcaseeq5", scope: !4175, file: !4175, line: 90, type: !4289, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !187, variables: !4291)
!4289 = !DISubroutineType(types: !4290)
!4290 = !{!71, !81, !81, !69, !69, !69, !69}
!4291 = !{!4292, !4287, !4293, !4294, !4295, !4296}
!4292 = !DILocalVariable(name: "s1", arg: 1, scope: !4288, file: !4175, line: 90, type: !81)
!4293 = !DILocalVariable(name: "s25", arg: 3, scope: !4288, file: !4175, line: 90, type: !69)
!4294 = !DILocalVariable(name: "s26", arg: 4, scope: !4288, file: !4175, line: 90, type: !69)
!4295 = !DILocalVariable(name: "s27", arg: 5, scope: !4288, file: !4175, line: 90, type: !69)
!4296 = !DILocalVariable(name: "s28", arg: 6, scope: !4288, file: !4175, line: 90, type: !69)
!4297 = !DILocation(line: 90, column: 41, scope: !4288, inlinedAt: !4298)
!4298 = distinct !DILocation(line: 111, column: 16, scope: !4299, inlinedAt: !4277)
!4299 = distinct !DILexicalBlock(scope: !4300, file: !4175, line: 108, column: 11)
!4300 = distinct !DILexicalBlock(scope: !4284, file: !4175, line: 107, column: 5)
!4301 = !DILocation(line: 90, column: 70, scope: !4288, inlinedAt: !4298)
!4302 = !DILocation(line: 90, column: 80, scope: !4288, inlinedAt: !4298)
!4303 = !DILocation(line: 92, column: 7, scope: !4304, inlinedAt: !4298)
!4304 = !DILexicalBlockFile(scope: !4305, file: !4175, discriminator: 2)
!4305 = distinct !DILexicalBlock(scope: !4288, file: !4175, line: 92, column: 7)
!4306 = !DILocation(line: 92, column: 7, scope: !4307, inlinedAt: !4298)
!4307 = !DILexicalBlockFile(scope: !4288, file: !4175, discriminator: 2)
!4308 = !DILocation(line: 227, column: 12, scope: !4191)
!4309 = !DILocation(line: 227, column: 21, scope: !4191)
!4310 = !DILocation(line: 227, column: 5, scope: !4191)
!4311 = !DILocation(line: 146, column: 41, scope: !4198, inlinedAt: !4312)
!4312 = distinct !DILocation(line: 167, column: 16, scope: !4213, inlinedAt: !4313)
!4313 = distinct !DILocation(line: 228, column: 7, scope: !4314)
!4314 = distinct !DILexicalBlock(scope: !4156, file: !213, line: 228, column: 7)
!4315 = !DILocation(line: 146, column: 110, scope: !4198, inlinedAt: !4312)
!4316 = !DILocation(line: 146, column: 120, scope: !4198, inlinedAt: !4312)
!4317 = !DILocation(line: 148, column: 7, scope: !4218, inlinedAt: !4312)
!4318 = !DILocation(line: 132, column: 41, scope: !4221, inlinedAt: !4319)
!4319 = distinct !DILocation(line: 153, column: 16, scope: !4235, inlinedAt: !4312)
!4320 = !DILocation(line: 132, column: 100, scope: !4221, inlinedAt: !4319)
!4321 = !DILocation(line: 132, column: 110, scope: !4221, inlinedAt: !4319)
!4322 = !DILocation(line: 134, column: 7, scope: !4323, inlinedAt: !4319)
!4323 = !DILexicalBlockFile(scope: !4241, file: !4175, discriminator: 2)
!4324 = !DILocation(line: 134, column: 7, scope: !4325, inlinedAt: !4319)
!4325 = !DILexicalBlockFile(scope: !4221, file: !4175, discriminator: 2)
!4326 = !DILocation(line: 118, column: 41, scope: !4243, inlinedAt: !4327)
!4327 = distinct !DILocation(line: 139, column: 16, scope: !4256, inlinedAt: !4319)
!4328 = !DILocation(line: 118, column: 90, scope: !4243, inlinedAt: !4327)
!4329 = !DILocation(line: 118, column: 100, scope: !4243, inlinedAt: !4327)
!4330 = !DILocation(line: 120, column: 7, scope: !4261, inlinedAt: !4327)
!4331 = !DILocation(line: 120, column: 7, scope: !4264, inlinedAt: !4327)
!4332 = !DILocation(line: 104, column: 41, scope: !4266, inlinedAt: !4333)
!4333 = distinct !DILocation(line: 125, column: 16, scope: !4278, inlinedAt: !4327)
!4334 = !DILocation(line: 104, column: 80, scope: !4266, inlinedAt: !4333)
!4335 = !DILocation(line: 104, column: 90, scope: !4266, inlinedAt: !4333)
!4336 = !DILocation(line: 106, column: 7, scope: !4283, inlinedAt: !4333)
!4337 = !DILocation(line: 106, column: 7, scope: !4286, inlinedAt: !4333)
!4338 = !DILocation(line: 90, column: 41, scope: !4288, inlinedAt: !4339)
!4339 = distinct !DILocation(line: 111, column: 16, scope: !4299, inlinedAt: !4333)
!4340 = !DILocation(line: 90, column: 70, scope: !4288, inlinedAt: !4339)
!4341 = !DILocation(line: 90, column: 80, scope: !4288, inlinedAt: !4339)
!4342 = !DILocation(line: 92, column: 7, scope: !4304, inlinedAt: !4339)
!4343 = !DILocation(line: 92, column: 7, scope: !4307, inlinedAt: !4339)
!4344 = !DILocalVariable(name: "s2", arg: 2, scope: !4345, file: !4175, line: 76, type: !81)
!4345 = distinct !DISubprogram(name: "strcaseeq6", scope: !4175, file: !4175, line: 76, type: !4346, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !187, variables: !4348)
!4346 = !DISubroutineType(types: !4347)
!4347 = !{!71, !81, !81, !69, !69, !69}
!4348 = !{!4349, !4344, !4350, !4351, !4352}
!4349 = !DILocalVariable(name: "s1", arg: 1, scope: !4345, file: !4175, line: 76, type: !81)
!4350 = !DILocalVariable(name: "s26", arg: 3, scope: !4345, file: !4175, line: 76, type: !69)
!4351 = !DILocalVariable(name: "s27", arg: 4, scope: !4345, file: !4175, line: 76, type: !69)
!4352 = !DILocalVariable(name: "s28", arg: 5, scope: !4345, file: !4175, line: 76, type: !69)
!4353 = !DILocation(line: 76, column: 41, scope: !4345, inlinedAt: !4354)
!4354 = distinct !DILocation(line: 97, column: 16, scope: !4355, inlinedAt: !4339)
!4355 = distinct !DILexicalBlock(scope: !4356, file: !4175, line: 94, column: 11)
!4356 = distinct !DILexicalBlock(scope: !4305, file: !4175, line: 93, column: 5)
!4357 = !DILocation(line: 76, column: 60, scope: !4345, inlinedAt: !4354)
!4358 = !DILocation(line: 76, column: 70, scope: !4345, inlinedAt: !4354)
!4359 = !DILocation(line: 78, column: 7, scope: !4360, inlinedAt: !4354)
!4360 = !DILexicalBlockFile(scope: !4361, file: !4175, discriminator: 2)
!4361 = distinct !DILexicalBlock(scope: !4345, file: !4175, line: 78, column: 7)
!4362 = !DILocation(line: 78, column: 7, scope: !4363, inlinedAt: !4354)
!4363 = !DILexicalBlockFile(scope: !4345, file: !4175, discriminator: 2)
!4364 = !DILocalVariable(name: "s2", arg: 2, scope: !4365, file: !4175, line: 62, type: !81)
!4365 = distinct !DISubprogram(name: "strcaseeq7", scope: !4175, file: !4175, line: 62, type: !4366, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !187, variables: !4368)
!4366 = !DISubroutineType(types: !4367)
!4367 = !{!71, !81, !81, !69, !69}
!4368 = !{!4369, !4364, !4370, !4371}
!4369 = !DILocalVariable(name: "s1", arg: 1, scope: !4365, file: !4175, line: 62, type: !81)
!4370 = !DILocalVariable(name: "s27", arg: 3, scope: !4365, file: !4175, line: 62, type: !69)
!4371 = !DILocalVariable(name: "s28", arg: 4, scope: !4365, file: !4175, line: 62, type: !69)
!4372 = !DILocation(line: 62, column: 41, scope: !4365, inlinedAt: !4373)
!4373 = distinct !DILocation(line: 83, column: 16, scope: !4374, inlinedAt: !4354)
!4374 = distinct !DILexicalBlock(scope: !4375, file: !4175, line: 80, column: 11)
!4375 = distinct !DILexicalBlock(scope: !4361, file: !4175, line: 79, column: 5)
!4376 = !DILocation(line: 62, column: 50, scope: !4365, inlinedAt: !4373)
!4377 = !DILocation(line: 62, column: 60, scope: !4365, inlinedAt: !4373)
!4378 = !DILocation(line: 64, column: 7, scope: !4379, inlinedAt: !4373)
!4379 = !DILexicalBlockFile(scope: !4380, file: !4175, discriminator: 2)
!4380 = distinct !DILexicalBlock(scope: !4365, file: !4175, line: 64, column: 7)
!4381 = !DILocation(line: 228, column: 7, scope: !4156)
!4382 = !DILocation(line: 229, column: 12, scope: !4314)
!4383 = !DILocation(line: 229, column: 21, scope: !4314)
!4384 = !DILocation(line: 229, column: 5, scope: !4314)
!4385 = !DILocation(line: 231, column: 13, scope: !4156)
!4386 = !DILocation(line: 231, column: 11, scope: !4156)
!4387 = !DILocation(line: 231, column: 3, scope: !4156)
!4388 = !DILocation(line: 232, column: 1, scope: !4156)
!4389 = distinct !DISubprogram(name: "quotearg_alloc", scope: !213, file: !213, line: 791, type: !4390, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !187, variables: !4392)
!4390 = !DISubroutineType(types: !4391)
!4391 = !{!68, !81, !73, !3232}
!4392 = !{!4393, !4394, !4395}
!4393 = !DILocalVariable(name: "arg", arg: 1, scope: !4389, file: !213, line: 791, type: !81)
!4394 = !DILocalVariable(name: "argsize", arg: 2, scope: !4389, file: !213, line: 791, type: !73)
!4395 = !DILocalVariable(name: "o", arg: 3, scope: !4389, file: !213, line: 792, type: !3232)
!4396 = !DILocation(line: 791, column: 29, scope: !4389)
!4397 = !DILocation(line: 791, column: 41, scope: !4389)
!4398 = !DILocation(line: 792, column: 47, scope: !4389)
!4399 = !DILocalVariable(name: "arg", arg: 1, scope: !4400, file: !213, line: 804, type: !81)
!4400 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !213, file: !213, line: 804, type: !4401, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !187, variables: !4403)
!4401 = !DISubroutineType(types: !4402)
!4402 = !{!68, !81, !73, !647, !3232}
!4403 = !{!4399, !4404, !4405, !4406, !4407, !4408, !4409, !4410, !4411}
!4404 = !DILocalVariable(name: "argsize", arg: 2, scope: !4400, file: !213, line: 804, type: !73)
!4405 = !DILocalVariable(name: "size", arg: 3, scope: !4400, file: !213, line: 804, type: !647)
!4406 = !DILocalVariable(name: "o", arg: 4, scope: !4400, file: !213, line: 805, type: !3232)
!4407 = !DILocalVariable(name: "p", scope: !4400, file: !213, line: 807, type: !3232)
!4408 = !DILocalVariable(name: "e", scope: !4400, file: !213, line: 808, type: !71)
!4409 = !DILocalVariable(name: "flags", scope: !4400, file: !213, line: 810, type: !71)
!4410 = !DILocalVariable(name: "bufsize", scope: !4400, file: !213, line: 811, type: !73)
!4411 = !DILocalVariable(name: "buf", scope: !4400, file: !213, line: 815, type: !68)
!4412 = !DILocation(line: 804, column: 33, scope: !4400, inlinedAt: !4413)
!4413 = distinct !DILocation(line: 794, column: 10, scope: !4389)
!4414 = !DILocation(line: 804, column: 45, scope: !4400, inlinedAt: !4413)
!4415 = !DILocation(line: 804, column: 62, scope: !4400, inlinedAt: !4413)
!4416 = !DILocation(line: 805, column: 51, scope: !4400, inlinedAt: !4413)
!4417 = !DILocation(line: 807, column: 37, scope: !4400, inlinedAt: !4413)
!4418 = !DILocation(line: 807, column: 33, scope: !4400, inlinedAt: !4413)
!4419 = !DILocation(line: 808, column: 11, scope: !4400, inlinedAt: !4413)
!4420 = !DILocation(line: 808, column: 7, scope: !4400, inlinedAt: !4413)
!4421 = !DILocation(line: 810, column: 18, scope: !4400, inlinedAt: !4413)
!4422 = !DILocation(line: 810, column: 24, scope: !4400, inlinedAt: !4413)
!4423 = !DILocation(line: 810, column: 7, scope: !4400, inlinedAt: !4413)
!4424 = !DILocation(line: 811, column: 69, scope: !4400, inlinedAt: !4413)
!4425 = !DILocation(line: 812, column: 53, scope: !4400, inlinedAt: !4413)
!4426 = !DILocation(line: 813, column: 49, scope: !4400, inlinedAt: !4413)
!4427 = !DILocation(line: 814, column: 49, scope: !4400, inlinedAt: !4413)
!4428 = !DILocation(line: 811, column: 20, scope: !4400, inlinedAt: !4413)
!4429 = !DILocation(line: 814, column: 62, scope: !4400, inlinedAt: !4413)
!4430 = !DILocation(line: 811, column: 10, scope: !4400, inlinedAt: !4413)
!4431 = !DILocalVariable(name: "n", arg: 1, scope: !4432, file: !643, line: 220, type: !73)
!4432 = distinct !DISubprogram(name: "xcharalloc", scope: !643, file: !643, line: 220, type: !4433, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !187, variables: !4435)
!4433 = !DISubroutineType(types: !4434)
!4434 = !{!68, !73}
!4435 = !{!4431}
!4436 = !DILocation(line: 220, column: 20, scope: !4432, inlinedAt: !4437)
!4437 = distinct !DILocation(line: 815, column: 15, scope: !4400, inlinedAt: !4413)
!4438 = !DILocation(line: 222, column: 10, scope: !4432, inlinedAt: !4437)
!4439 = !DILocation(line: 815, column: 9, scope: !4400, inlinedAt: !4413)
!4440 = !DILocation(line: 816, column: 60, scope: !4400, inlinedAt: !4413)
!4441 = !DILocation(line: 818, column: 32, scope: !4400, inlinedAt: !4413)
!4442 = !DILocation(line: 818, column: 47, scope: !4400, inlinedAt: !4413)
!4443 = !DILocation(line: 816, column: 3, scope: !4400, inlinedAt: !4413)
!4444 = !DILocation(line: 819, column: 9, scope: !4400, inlinedAt: !4413)
!4445 = !DILocation(line: 794, column: 3, scope: !4389)
!4446 = !DILocation(line: 804, column: 33, scope: !4400)
!4447 = !DILocation(line: 804, column: 45, scope: !4400)
!4448 = !DILocation(line: 804, column: 62, scope: !4400)
!4449 = !DILocation(line: 805, column: 51, scope: !4400)
!4450 = !DILocation(line: 807, column: 37, scope: !4400)
!4451 = !DILocation(line: 807, column: 33, scope: !4400)
!4452 = !DILocation(line: 808, column: 11, scope: !4400)
!4453 = !DILocation(line: 808, column: 7, scope: !4400)
!4454 = !DILocation(line: 810, column: 18, scope: !4400)
!4455 = !DILocation(line: 810, column: 27, scope: !4400)
!4456 = !DILocation(line: 810, column: 24, scope: !4400)
!4457 = !DILocation(line: 810, column: 7, scope: !4400)
!4458 = !DILocation(line: 811, column: 69, scope: !4400)
!4459 = !DILocation(line: 812, column: 53, scope: !4400)
!4460 = !DILocation(line: 813, column: 49, scope: !4400)
!4461 = !DILocation(line: 814, column: 49, scope: !4400)
!4462 = !DILocation(line: 811, column: 20, scope: !4400)
!4463 = !DILocation(line: 814, column: 62, scope: !4400)
!4464 = !DILocation(line: 811, column: 10, scope: !4400)
!4465 = !DILocation(line: 220, column: 20, scope: !4432, inlinedAt: !4466)
!4466 = distinct !DILocation(line: 815, column: 15, scope: !4400)
!4467 = !DILocation(line: 222, column: 10, scope: !4432, inlinedAt: !4466)
!4468 = !DILocation(line: 815, column: 9, scope: !4400)
!4469 = !DILocation(line: 816, column: 60, scope: !4400)
!4470 = !DILocation(line: 818, column: 32, scope: !4400)
!4471 = !DILocation(line: 818, column: 47, scope: !4400)
!4472 = !DILocation(line: 816, column: 3, scope: !4400)
!4473 = !DILocation(line: 819, column: 9, scope: !4400)
!4474 = !DILocation(line: 820, column: 7, scope: !4400)
!4475 = !DILocation(line: 821, column: 11, scope: !4476)
!4476 = distinct !DILexicalBlock(scope: !4400, file: !213, line: 820, column: 7)
!4477 = !DILocation(line: 821, column: 5, scope: !4476)
!4478 = !DILocation(line: 822, column: 3, scope: !4400)
!4479 = distinct !DISubprogram(name: "quotearg_free", scope: !213, file: !213, line: 840, type: !3038, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !187, variables: !4480)
!4480 = !{!4481, !4482}
!4481 = !DILocalVariable(name: "sv", scope: !4479, file: !213, line: 842, type: !236)
!4482 = !DILocalVariable(name: "i", scope: !4479, file: !213, line: 843, type: !71)
!4483 = !DILocation(line: 842, column: 24, scope: !4479)
!4484 = !DILocation(line: 842, column: 19, scope: !4479)
!4485 = !DILocation(line: 843, column: 7, scope: !4479)
!4486 = !DILocation(line: 844, column: 19, scope: !4487)
!4487 = !DILexicalBlockFile(scope: !4488, file: !213, discriminator: 1)
!4488 = distinct !DILexicalBlock(scope: !4489, file: !213, line: 844, column: 3)
!4489 = distinct !DILexicalBlock(scope: !4479, file: !213, line: 844, column: 3)
!4490 = !DILocation(line: 844, column: 17, scope: !4487)
!4491 = !DILocation(line: 844, column: 3, scope: !4492)
!4492 = !DILexicalBlockFile(scope: !4489, file: !213, discriminator: 1)
!4493 = !DILocation(line: 845, column: 17, scope: !4488)
!4494 = !{!4495, !697, i64 8}
!4495 = !{!"slotvec", !971, i64 0, !697, i64 8}
!4496 = !DILocation(line: 845, column: 5, scope: !4488)
!4497 = !DILocation(line: 844, column: 28, scope: !4498)
!4498 = !DILexicalBlockFile(scope: !4488, file: !213, discriminator: 2)
!4499 = distinct !{!4499, !4500, !4501}
!4500 = !DILocation(line: 844, column: 3, scope: !4489)
!4501 = !DILocation(line: 845, column: 20, scope: !4489)
!4502 = !DILocation(line: 846, column: 13, scope: !4503)
!4503 = distinct !DILexicalBlock(scope: !4479, file: !213, line: 846, column: 7)
!4504 = !DILocation(line: 846, column: 17, scope: !4503)
!4505 = !DILocation(line: 846, column: 7, scope: !4479)
!4506 = !DILocation(line: 848, column: 7, scope: !4507)
!4507 = distinct !DILexicalBlock(scope: !4503, file: !213, line: 847, column: 5)
!4508 = !DILocation(line: 849, column: 21, scope: !4507)
!4509 = !{!4495, !971, i64 0}
!4510 = !DILocation(line: 850, column: 20, scope: !4507)
!4511 = !DILocation(line: 851, column: 5, scope: !4507)
!4512 = !DILocation(line: 852, column: 10, scope: !4513)
!4513 = distinct !DILexicalBlock(scope: !4479, file: !213, line: 852, column: 7)
!4514 = !DILocation(line: 852, column: 7, scope: !4479)
!4515 = !DILocation(line: 854, column: 13, scope: !4516)
!4516 = distinct !DILexicalBlock(scope: !4513, file: !213, line: 853, column: 5)
!4517 = !DILocation(line: 854, column: 7, scope: !4516)
!4518 = !DILocation(line: 855, column: 15, scope: !4516)
!4519 = !DILocation(line: 856, column: 5, scope: !4516)
!4520 = !DILocation(line: 857, column: 10, scope: !4479)
!4521 = !DILocation(line: 858, column: 1, scope: !4479)
!4522 = distinct !DISubprogram(name: "quotearg_n", scope: !213, file: !213, line: 922, type: !4523, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !187, variables: !4525)
!4523 = !DISubroutineType(types: !4524)
!4524 = !{!68, !71, !81}
!4525 = !{!4526, !4527}
!4526 = !DILocalVariable(name: "n", arg: 1, scope: !4522, file: !213, line: 922, type: !71)
!4527 = !DILocalVariable(name: "arg", arg: 2, scope: !4522, file: !213, line: 922, type: !81)
!4528 = !DILocation(line: 922, column: 17, scope: !4522)
!4529 = !DILocation(line: 922, column: 32, scope: !4522)
!4530 = !DILocation(line: 924, column: 10, scope: !4522)
!4531 = !DILocation(line: 924, column: 3, scope: !4522)
!4532 = distinct !DISubprogram(name: "quotearg_n_options", scope: !213, file: !213, line: 869, type: !4533, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !187, variables: !4535)
!4533 = !DISubroutineType(types: !4534)
!4534 = !{!68, !71, !81, !73, !3232}
!4535 = !{!4536, !4537, !4538, !4539, !4540, !4541, !4542, !4545, !4547, !4548, !4549}
!4536 = !DILocalVariable(name: "n", arg: 1, scope: !4532, file: !213, line: 869, type: !71)
!4537 = !DILocalVariable(name: "arg", arg: 2, scope: !4532, file: !213, line: 869, type: !81)
!4538 = !DILocalVariable(name: "argsize", arg: 3, scope: !4532, file: !213, line: 869, type: !73)
!4539 = !DILocalVariable(name: "options", arg: 4, scope: !4532, file: !213, line: 870, type: !3232)
!4540 = !DILocalVariable(name: "e", scope: !4532, file: !213, line: 872, type: !71)
!4541 = !DILocalVariable(name: "sv", scope: !4532, file: !213, line: 874, type: !236)
!4542 = !DILocalVariable(name: "preallocated", scope: !4543, file: !213, line: 881, type: !87)
!4543 = distinct !DILexicalBlock(scope: !4544, file: !213, line: 880, column: 5)
!4544 = distinct !DILexicalBlock(scope: !4532, file: !213, line: 879, column: 7)
!4545 = !DILocalVariable(name: "size", scope: !4546, file: !213, line: 894, type: !73)
!4546 = distinct !DILexicalBlock(scope: !4532, file: !213, line: 893, column: 3)
!4547 = !DILocalVariable(name: "val", scope: !4546, file: !213, line: 895, type: !68)
!4548 = !DILocalVariable(name: "flags", scope: !4546, file: !213, line: 897, type: !71)
!4549 = !DILocalVariable(name: "qsize", scope: !4546, file: !213, line: 898, type: !73)
!4550 = !DILocation(line: 869, column: 25, scope: !4532)
!4551 = !DILocation(line: 869, column: 40, scope: !4532)
!4552 = !DILocation(line: 869, column: 52, scope: !4532)
!4553 = !DILocation(line: 870, column: 51, scope: !4532)
!4554 = !DILocation(line: 872, column: 11, scope: !4532)
!4555 = !DILocation(line: 872, column: 7, scope: !4532)
!4556 = !DILocation(line: 874, column: 24, scope: !4532)
!4557 = !DILocation(line: 874, column: 19, scope: !4532)
!4558 = !DILocation(line: 876, column: 9, scope: !4559)
!4559 = distinct !DILexicalBlock(scope: !4532, file: !213, line: 876, column: 7)
!4560 = !DILocation(line: 876, column: 7, scope: !4532)
!4561 = !DILocation(line: 877, column: 5, scope: !4559)
!4562 = !DILocation(line: 879, column: 7, scope: !4544)
!4563 = !DILocation(line: 879, column: 14, scope: !4544)
!4564 = !DILocation(line: 879, column: 7, scope: !4532)
!4565 = !DILocation(line: 881, column: 31, scope: !4543)
!4566 = !DILocation(line: 883, column: 67, scope: !4567)
!4567 = distinct !DILexicalBlock(scope: !4543, file: !213, line: 883, column: 11)
!4568 = !DILocation(line: 883, column: 11, scope: !4543)
!4569 = !DILocation(line: 884, column: 9, scope: !4567)
!4570 = !DILocation(line: 886, column: 32, scope: !4571)
!4571 = !DILexicalBlockFile(scope: !4543, file: !213, discriminator: 3)
!4572 = !DILocation(line: 886, column: 61, scope: !4571)
!4573 = !DILocation(line: 886, column: 58, scope: !4571)
!4574 = !DILocation(line: 886, column: 66, scope: !4571)
!4575 = !DILocation(line: 886, column: 22, scope: !4571)
!4576 = !DILocation(line: 886, column: 15, scope: !4571)
!4577 = !DILocation(line: 887, column: 11, scope: !4543)
!4578 = !DILocation(line: 888, column: 15, scope: !4579)
!4579 = distinct !DILexicalBlock(scope: !4543, file: !213, line: 887, column: 11)
!4580 = !{i64 0, i64 8, !2226, i64 8, i64 8, !696}
!4581 = !DILocation(line: 888, column: 9, scope: !4579)
!4582 = !DILocation(line: 889, column: 20, scope: !4543)
!4583 = !DILocation(line: 889, column: 18, scope: !4543)
!4584 = !DILocation(line: 889, column: 7, scope: !4543)
!4585 = !DILocation(line: 889, column: 38, scope: !4543)
!4586 = !DILocation(line: 889, column: 31, scope: !4543)
!4587 = !DILocation(line: 889, column: 48, scope: !4543)
!4588 = !DILocation(line: 890, column: 14, scope: !4543)
!4589 = !DILocation(line: 891, column: 5, scope: !4543)
!4590 = !DILocation(line: 894, column: 19, scope: !4546)
!4591 = !DILocation(line: 894, column: 25, scope: !4546)
!4592 = !DILocation(line: 894, column: 12, scope: !4546)
!4593 = !DILocation(line: 895, column: 23, scope: !4546)
!4594 = !DILocation(line: 895, column: 11, scope: !4546)
!4595 = !DILocation(line: 897, column: 26, scope: !4546)
!4596 = !DILocation(line: 897, column: 32, scope: !4546)
!4597 = !DILocation(line: 897, column: 9, scope: !4546)
!4598 = !DILocation(line: 899, column: 55, scope: !4546)
!4599 = !DILocation(line: 900, column: 46, scope: !4546)
!4600 = !DILocation(line: 901, column: 55, scope: !4546)
!4601 = !DILocation(line: 902, column: 55, scope: !4546)
!4602 = !DILocation(line: 898, column: 20, scope: !4546)
!4603 = !DILocation(line: 898, column: 12, scope: !4546)
!4604 = !DILocation(line: 904, column: 14, scope: !4605)
!4605 = distinct !DILexicalBlock(scope: !4546, file: !213, line: 904, column: 9)
!4606 = !DILocation(line: 904, column: 9, scope: !4546)
!4607 = !DILocation(line: 906, column: 35, scope: !4608)
!4608 = distinct !DILexicalBlock(scope: !4605, file: !213, line: 905, column: 7)
!4609 = !DILocation(line: 906, column: 20, scope: !4608)
!4610 = !DILocation(line: 907, column: 17, scope: !4611)
!4611 = distinct !DILexicalBlock(scope: !4608, file: !213, line: 907, column: 13)
!4612 = !DILocation(line: 907, column: 13, scope: !4608)
!4613 = !DILocation(line: 908, column: 11, scope: !4611)
!4614 = !DILocation(line: 220, column: 20, scope: !4432, inlinedAt: !4615)
!4615 = distinct !DILocation(line: 909, column: 27, scope: !4608)
!4616 = !DILocation(line: 222, column: 10, scope: !4432, inlinedAt: !4615)
!4617 = !DILocation(line: 909, column: 19, scope: !4608)
!4618 = !DILocation(line: 910, column: 69, scope: !4608)
!4619 = !DILocation(line: 912, column: 44, scope: !4608)
!4620 = !DILocation(line: 913, column: 44, scope: !4608)
!4621 = !DILocation(line: 910, column: 9, scope: !4608)
!4622 = !DILocation(line: 914, column: 7, scope: !4608)
!4623 = !DILocation(line: 916, column: 11, scope: !4546)
!4624 = !DILocation(line: 917, column: 5, scope: !4546)
!4625 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !213, file: !213, line: 928, type: !4626, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !187, variables: !4628)
!4626 = !DISubroutineType(types: !4627)
!4627 = !{!68, !71, !81, !73}
!4628 = !{!4629, !4630, !4631}
!4629 = !DILocalVariable(name: "n", arg: 1, scope: !4625, file: !213, line: 928, type: !71)
!4630 = !DILocalVariable(name: "arg", arg: 2, scope: !4625, file: !213, line: 928, type: !81)
!4631 = !DILocalVariable(name: "argsize", arg: 3, scope: !4625, file: !213, line: 928, type: !73)
!4632 = !DILocation(line: 928, column: 21, scope: !4625)
!4633 = !DILocation(line: 928, column: 36, scope: !4625)
!4634 = !DILocation(line: 928, column: 48, scope: !4625)
!4635 = !DILocation(line: 930, column: 10, scope: !4625)
!4636 = !DILocation(line: 930, column: 3, scope: !4625)
!4637 = distinct !DISubprogram(name: "quotearg", scope: !213, file: !213, line: 934, type: !4638, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !187, variables: !4640)
!4638 = !DISubroutineType(types: !4639)
!4639 = !{!68, !81}
!4640 = !{!4641}
!4641 = !DILocalVariable(name: "arg", arg: 1, scope: !4637, file: !213, line: 934, type: !81)
!4642 = !DILocation(line: 934, column: 23, scope: !4637)
!4643 = !DILocation(line: 922, column: 17, scope: !4522, inlinedAt: !4644)
!4644 = distinct !DILocation(line: 936, column: 10, scope: !4637)
!4645 = !DILocation(line: 922, column: 32, scope: !4522, inlinedAt: !4644)
!4646 = !DILocation(line: 924, column: 10, scope: !4522, inlinedAt: !4644)
!4647 = !DILocation(line: 936, column: 3, scope: !4637)
!4648 = distinct !DISubprogram(name: "quotearg_mem", scope: !213, file: !213, line: 940, type: !2938, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !187, variables: !4649)
!4649 = !{!4650, !4651}
!4650 = !DILocalVariable(name: "arg", arg: 1, scope: !4648, file: !213, line: 940, type: !81)
!4651 = !DILocalVariable(name: "argsize", arg: 2, scope: !4648, file: !213, line: 940, type: !73)
!4652 = !DILocation(line: 940, column: 27, scope: !4648)
!4653 = !DILocation(line: 940, column: 39, scope: !4648)
!4654 = !DILocation(line: 928, column: 21, scope: !4625, inlinedAt: !4655)
!4655 = distinct !DILocation(line: 942, column: 10, scope: !4648)
!4656 = !DILocation(line: 928, column: 36, scope: !4625, inlinedAt: !4655)
!4657 = !DILocation(line: 928, column: 48, scope: !4625, inlinedAt: !4655)
!4658 = !DILocation(line: 930, column: 10, scope: !4625, inlinedAt: !4655)
!4659 = !DILocation(line: 942, column: 3, scope: !4648)
!4660 = distinct !DISubprogram(name: "quotearg_n_style", scope: !213, file: !213, line: 946, type: !4661, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !187, variables: !4663)
!4661 = !DISubroutineType(types: !4662)
!4662 = !{!68, !71, !190, !81}
!4663 = !{!4664, !4665, !4666, !4667}
!4664 = !DILocalVariable(name: "n", arg: 1, scope: !4660, file: !213, line: 946, type: !71)
!4665 = !DILocalVariable(name: "s", arg: 2, scope: !4660, file: !213, line: 946, type: !190)
!4666 = !DILocalVariable(name: "arg", arg: 3, scope: !4660, file: !213, line: 946, type: !81)
!4667 = !DILocalVariable(name: "o", scope: !4660, file: !213, line: 948, type: !3233)
!4668 = !DILocalVariable(name: "o", scope: !4669, file: !213, line: 187, type: !220)
!4669 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !213, file: !213, line: 185, type: !4670, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !187, variables: !4672)
!4670 = !DISubroutineType(types: !4671)
!4671 = !{!220, !190}
!4672 = !{!4673, !4668}
!4673 = !DILocalVariable(name: "style", arg: 1, scope: !4669, file: !213, line: 185, type: !190)
!4674 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!4675 = !DILocation(line: 187, column: 26, scope: !4669, inlinedAt: !4676)
!4676 = distinct !DILocation(line: 948, column: 36, scope: !4660)
!4677 = !DILocation(line: 946, column: 23, scope: !4660)
!4678 = !DILocation(line: 946, column: 45, scope: !4660)
!4679 = !DILocation(line: 946, column: 60, scope: !4660)
!4680 = !DILocation(line: 948, column: 3, scope: !4660)
!4681 = !DILocation(line: 948, column: 32, scope: !4660)
!4682 = !DILocation(line: 185, column: 48, scope: !4669, inlinedAt: !4676)
!4683 = !DILocation(line: 187, column: 3, scope: !4669, inlinedAt: !4676)
!4684 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!4685 = !DILocation(line: 188, column: 13, scope: !4686, inlinedAt: !4676)
!4686 = distinct !DILexicalBlock(scope: !4669, file: !213, line: 188, column: 7)
!4687 = !DILocation(line: 188, column: 7, scope: !4669, inlinedAt: !4676)
!4688 = !DILocation(line: 189, column: 5, scope: !4686, inlinedAt: !4676)
!4689 = !{!4690}
!4690 = distinct !{!4690, !4691, !"quoting_options_from_style: argument 0"}
!4691 = distinct !{!4691, !"quoting_options_from_style"}
!4692 = !DILocation(line: 191, column: 10, scope: !4669, inlinedAt: !4676)
!4693 = !DILocation(line: 192, column: 1, scope: !4669, inlinedAt: !4676)
!4694 = !DILocation(line: 949, column: 10, scope: !4660)
!4695 = !DILocation(line: 950, column: 1, scope: !4660)
!4696 = !DILocation(line: 949, column: 3, scope: !4660)
!4697 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !213, file: !213, line: 953, type: !4698, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !187, variables: !4700)
!4698 = !DISubroutineType(types: !4699)
!4699 = !{!68, !71, !190, !81, !73}
!4700 = !{!4701, !4702, !4703, !4704, !4705}
!4701 = !DILocalVariable(name: "n", arg: 1, scope: !4697, file: !213, line: 953, type: !71)
!4702 = !DILocalVariable(name: "s", arg: 2, scope: !4697, file: !213, line: 953, type: !190)
!4703 = !DILocalVariable(name: "arg", arg: 3, scope: !4697, file: !213, line: 954, type: !81)
!4704 = !DILocalVariable(name: "argsize", arg: 4, scope: !4697, file: !213, line: 954, type: !73)
!4705 = !DILocalVariable(name: "o", scope: !4697, file: !213, line: 956, type: !3233)
!4706 = !DILocation(line: 187, column: 26, scope: !4669, inlinedAt: !4707)
!4707 = distinct !DILocation(line: 956, column: 36, scope: !4697)
!4708 = !DILocation(line: 953, column: 27, scope: !4697)
!4709 = !DILocation(line: 953, column: 49, scope: !4697)
!4710 = !DILocation(line: 954, column: 35, scope: !4697)
!4711 = !DILocation(line: 954, column: 47, scope: !4697)
!4712 = !DILocation(line: 956, column: 3, scope: !4697)
!4713 = !DILocation(line: 956, column: 32, scope: !4697)
!4714 = !DILocation(line: 185, column: 48, scope: !4669, inlinedAt: !4707)
!4715 = !DILocation(line: 187, column: 3, scope: !4669, inlinedAt: !4707)
!4716 = !DILocation(line: 188, column: 13, scope: !4686, inlinedAt: !4707)
!4717 = !DILocation(line: 188, column: 7, scope: !4669, inlinedAt: !4707)
!4718 = !DILocation(line: 189, column: 5, scope: !4686, inlinedAt: !4707)
!4719 = !{!4720}
!4720 = distinct !{!4720, !4721, !"quoting_options_from_style: argument 0"}
!4721 = distinct !{!4721, !"quoting_options_from_style"}
!4722 = !DILocation(line: 191, column: 10, scope: !4669, inlinedAt: !4707)
!4723 = !DILocation(line: 192, column: 1, scope: !4669, inlinedAt: !4707)
!4724 = !DILocation(line: 957, column: 10, scope: !4697)
!4725 = !DILocation(line: 958, column: 1, scope: !4697)
!4726 = !DILocation(line: 957, column: 3, scope: !4697)
!4727 = distinct !DISubprogram(name: "quotearg_style", scope: !213, file: !213, line: 961, type: !4728, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !187, variables: !4730)
!4728 = !DISubroutineType(types: !4729)
!4729 = !{!68, !190, !81}
!4730 = !{!4731, !4732}
!4731 = !DILocalVariable(name: "s", arg: 1, scope: !4727, file: !213, line: 961, type: !190)
!4732 = !DILocalVariable(name: "arg", arg: 2, scope: !4727, file: !213, line: 961, type: !81)
!4733 = !DILocation(line: 187, column: 26, scope: !4669, inlinedAt: !4734)
!4734 = distinct !DILocation(line: 948, column: 36, scope: !4660, inlinedAt: !4735)
!4735 = distinct !DILocation(line: 963, column: 10, scope: !4727)
!4736 = !DILocation(line: 961, column: 36, scope: !4727)
!4737 = !DILocation(line: 961, column: 51, scope: !4727)
!4738 = !DILocation(line: 946, column: 23, scope: !4660, inlinedAt: !4735)
!4739 = !DILocation(line: 946, column: 45, scope: !4660, inlinedAt: !4735)
!4740 = !DILocation(line: 946, column: 60, scope: !4660, inlinedAt: !4735)
!4741 = !DILocation(line: 948, column: 3, scope: !4660, inlinedAt: !4735)
!4742 = !DILocation(line: 948, column: 32, scope: !4660, inlinedAt: !4735)
!4743 = !DILocation(line: 185, column: 48, scope: !4669, inlinedAt: !4734)
!4744 = !DILocation(line: 187, column: 3, scope: !4669, inlinedAt: !4734)
!4745 = !DILocation(line: 188, column: 13, scope: !4686, inlinedAt: !4734)
!4746 = !DILocation(line: 188, column: 7, scope: !4669, inlinedAt: !4734)
!4747 = !DILocation(line: 189, column: 5, scope: !4686, inlinedAt: !4734)
!4748 = !{!4749}
!4749 = distinct !{!4749, !4750, !"quoting_options_from_style: argument 0"}
!4750 = distinct !{!4750, !"quoting_options_from_style"}
!4751 = !DILocation(line: 191, column: 10, scope: !4669, inlinedAt: !4734)
!4752 = !DILocation(line: 192, column: 1, scope: !4669, inlinedAt: !4734)
!4753 = !DILocation(line: 949, column: 10, scope: !4660, inlinedAt: !4735)
!4754 = !DILocation(line: 950, column: 1, scope: !4660, inlinedAt: !4735)
!4755 = !DILocation(line: 963, column: 3, scope: !4727)
!4756 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !213, file: !213, line: 967, type: !4757, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !187, variables: !4759)
!4757 = !DISubroutineType(types: !4758)
!4758 = !{!68, !190, !81, !73}
!4759 = !{!4760, !4761, !4762}
!4760 = !DILocalVariable(name: "s", arg: 1, scope: !4756, file: !213, line: 967, type: !190)
!4761 = !DILocalVariable(name: "arg", arg: 2, scope: !4756, file: !213, line: 967, type: !81)
!4762 = !DILocalVariable(name: "argsize", arg: 3, scope: !4756, file: !213, line: 967, type: !73)
!4763 = !DILocation(line: 187, column: 26, scope: !4669, inlinedAt: !4764)
!4764 = distinct !DILocation(line: 956, column: 36, scope: !4697, inlinedAt: !4765)
!4765 = distinct !DILocation(line: 969, column: 10, scope: !4756)
!4766 = !DILocation(line: 967, column: 40, scope: !4756)
!4767 = !DILocation(line: 967, column: 55, scope: !4756)
!4768 = !DILocation(line: 967, column: 67, scope: !4756)
!4769 = !DILocation(line: 953, column: 27, scope: !4697, inlinedAt: !4765)
!4770 = !DILocation(line: 953, column: 49, scope: !4697, inlinedAt: !4765)
!4771 = !DILocation(line: 954, column: 35, scope: !4697, inlinedAt: !4765)
!4772 = !DILocation(line: 954, column: 47, scope: !4697, inlinedAt: !4765)
!4773 = !DILocation(line: 956, column: 3, scope: !4697, inlinedAt: !4765)
!4774 = !DILocation(line: 956, column: 32, scope: !4697, inlinedAt: !4765)
!4775 = !DILocation(line: 185, column: 48, scope: !4669, inlinedAt: !4764)
!4776 = !DILocation(line: 187, column: 3, scope: !4669, inlinedAt: !4764)
!4777 = !DILocation(line: 188, column: 13, scope: !4686, inlinedAt: !4764)
!4778 = !DILocation(line: 188, column: 7, scope: !4669, inlinedAt: !4764)
!4779 = !DILocation(line: 189, column: 5, scope: !4686, inlinedAt: !4764)
!4780 = !{!4781}
!4781 = distinct !{!4781, !4782, !"quoting_options_from_style: argument 0"}
!4782 = distinct !{!4782, !"quoting_options_from_style"}
!4783 = !DILocation(line: 191, column: 10, scope: !4669, inlinedAt: !4764)
!4784 = !DILocation(line: 192, column: 1, scope: !4669, inlinedAt: !4764)
!4785 = !DILocation(line: 957, column: 10, scope: !4697, inlinedAt: !4765)
!4786 = !DILocation(line: 958, column: 1, scope: !4697, inlinedAt: !4765)
!4787 = !DILocation(line: 969, column: 3, scope: !4756)
!4788 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !213, file: !213, line: 973, type: !4789, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !187, variables: !4791)
!4789 = !DISubroutineType(types: !4790)
!4790 = !{!68, !81, !73, !69}
!4791 = !{!4792, !4793, !4794, !4795}
!4792 = !DILocalVariable(name: "arg", arg: 1, scope: !4788, file: !213, line: 973, type: !81)
!4793 = !DILocalVariable(name: "argsize", arg: 2, scope: !4788, file: !213, line: 973, type: !73)
!4794 = !DILocalVariable(name: "ch", arg: 3, scope: !4788, file: !213, line: 973, type: !69)
!4795 = !DILocalVariable(name: "options", scope: !4788, file: !213, line: 975, type: !220)
!4796 = !DILocation(line: 973, column: 32, scope: !4788)
!4797 = !DILocation(line: 973, column: 44, scope: !4788)
!4798 = !DILocation(line: 973, column: 58, scope: !4788)
!4799 = !DILocation(line: 975, column: 3, scope: !4788)
!4800 = !DILocation(line: 976, column: 13, scope: !4788)
!4801 = !{i64 0, i64 4, !1179, i64 4, i64 4, !903, i64 8, i64 32, !1179, i64 40, i64 8, !696, i64 48, i64 8, !696}
!4802 = !DILocation(line: 975, column: 26, scope: !4788)
!4803 = !DILocation(line: 144, column: 43, scope: !3256, inlinedAt: !4804)
!4804 = distinct !DILocation(line: 977, column: 3, scope: !4788)
!4805 = !DILocation(line: 144, column: 51, scope: !3256, inlinedAt: !4804)
!4806 = !DILocation(line: 144, column: 58, scope: !3256, inlinedAt: !4804)
!4807 = !DILocation(line: 146, column: 17, scope: !3256, inlinedAt: !4804)
!4808 = !DILocation(line: 148, column: 62, scope: !3274, inlinedAt: !4804)
!4809 = !DILocation(line: 148, column: 57, scope: !3274, inlinedAt: !4804)
!4810 = !DILocation(line: 147, column: 17, scope: !3256, inlinedAt: !4804)
!4811 = !DILocation(line: 149, column: 18, scope: !3256, inlinedAt: !4804)
!4812 = !DILocation(line: 149, column: 15, scope: !3256, inlinedAt: !4804)
!4813 = !DILocation(line: 149, column: 7, scope: !3256, inlinedAt: !4804)
!4814 = !DILocation(line: 150, column: 12, scope: !3256, inlinedAt: !4804)
!4815 = !DILocation(line: 150, column: 15, scope: !3256, inlinedAt: !4804)
!4816 = !DILocation(line: 150, column: 25, scope: !3256, inlinedAt: !4804)
!4817 = !DILocation(line: 150, column: 7, scope: !3256, inlinedAt: !4804)
!4818 = !DILocation(line: 151, column: 18, scope: !3256, inlinedAt: !4804)
!4819 = !DILocation(line: 151, column: 23, scope: !3256, inlinedAt: !4804)
!4820 = !DILocation(line: 151, column: 6, scope: !3256, inlinedAt: !4804)
!4821 = !DILocation(line: 978, column: 10, scope: !4788)
!4822 = !DILocation(line: 979, column: 1, scope: !4788)
!4823 = !DILocation(line: 978, column: 3, scope: !4788)
!4824 = distinct !DISubprogram(name: "quotearg_char", scope: !213, file: !213, line: 982, type: !4825, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !187, variables: !4827)
!4825 = !DISubroutineType(types: !4826)
!4826 = !{!68, !81, !69}
!4827 = !{!4828, !4829}
!4828 = !DILocalVariable(name: "arg", arg: 1, scope: !4824, file: !213, line: 982, type: !81)
!4829 = !DILocalVariable(name: "ch", arg: 2, scope: !4824, file: !213, line: 982, type: !69)
!4830 = !DILocation(line: 982, column: 28, scope: !4824)
!4831 = !DILocation(line: 982, column: 38, scope: !4824)
!4832 = !DILocation(line: 973, column: 32, scope: !4788, inlinedAt: !4833)
!4833 = distinct !DILocation(line: 984, column: 10, scope: !4824)
!4834 = !DILocation(line: 973, column: 44, scope: !4788, inlinedAt: !4833)
!4835 = !DILocation(line: 973, column: 58, scope: !4788, inlinedAt: !4833)
!4836 = !DILocation(line: 975, column: 3, scope: !4788, inlinedAt: !4833)
!4837 = !DILocation(line: 976, column: 13, scope: !4788, inlinedAt: !4833)
!4838 = !DILocation(line: 975, column: 26, scope: !4788, inlinedAt: !4833)
!4839 = !DILocation(line: 144, column: 43, scope: !3256, inlinedAt: !4840)
!4840 = distinct !DILocation(line: 977, column: 3, scope: !4788, inlinedAt: !4833)
!4841 = !DILocation(line: 144, column: 51, scope: !3256, inlinedAt: !4840)
!4842 = !DILocation(line: 144, column: 58, scope: !3256, inlinedAt: !4840)
!4843 = !DILocation(line: 146, column: 17, scope: !3256, inlinedAt: !4840)
!4844 = !DILocation(line: 148, column: 62, scope: !3274, inlinedAt: !4840)
!4845 = !DILocation(line: 148, column: 57, scope: !3274, inlinedAt: !4840)
!4846 = !DILocation(line: 147, column: 17, scope: !3256, inlinedAt: !4840)
!4847 = !DILocation(line: 149, column: 18, scope: !3256, inlinedAt: !4840)
!4848 = !DILocation(line: 149, column: 15, scope: !3256, inlinedAt: !4840)
!4849 = !DILocation(line: 149, column: 7, scope: !3256, inlinedAt: !4840)
!4850 = !DILocation(line: 150, column: 12, scope: !3256, inlinedAt: !4840)
!4851 = !DILocation(line: 150, column: 15, scope: !3256, inlinedAt: !4840)
!4852 = !DILocation(line: 150, column: 25, scope: !3256, inlinedAt: !4840)
!4853 = !DILocation(line: 150, column: 7, scope: !3256, inlinedAt: !4840)
!4854 = !DILocation(line: 151, column: 18, scope: !3256, inlinedAt: !4840)
!4855 = !DILocation(line: 151, column: 23, scope: !3256, inlinedAt: !4840)
!4856 = !DILocation(line: 151, column: 6, scope: !3256, inlinedAt: !4840)
!4857 = !DILocation(line: 978, column: 10, scope: !4788, inlinedAt: !4833)
!4858 = !DILocation(line: 979, column: 1, scope: !4788, inlinedAt: !4833)
!4859 = !DILocation(line: 984, column: 3, scope: !4824)
!4860 = distinct !DISubprogram(name: "quotearg_colon", scope: !213, file: !213, line: 988, type: !4638, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !187, variables: !4861)
!4861 = !{!4862}
!4862 = !DILocalVariable(name: "arg", arg: 1, scope: !4860, file: !213, line: 988, type: !81)
!4863 = !DILocation(line: 988, column: 29, scope: !4860)
!4864 = !DILocation(line: 982, column: 28, scope: !4824, inlinedAt: !4865)
!4865 = distinct !DILocation(line: 990, column: 10, scope: !4860)
!4866 = !DILocation(line: 982, column: 38, scope: !4824, inlinedAt: !4865)
!4867 = !DILocation(line: 973, column: 32, scope: !4788, inlinedAt: !4868)
!4868 = distinct !DILocation(line: 984, column: 10, scope: !4824, inlinedAt: !4865)
!4869 = !DILocation(line: 973, column: 44, scope: !4788, inlinedAt: !4868)
!4870 = !DILocation(line: 973, column: 58, scope: !4788, inlinedAt: !4868)
!4871 = !DILocation(line: 975, column: 3, scope: !4788, inlinedAt: !4868)
!4872 = !DILocation(line: 976, column: 13, scope: !4788, inlinedAt: !4868)
!4873 = !DILocation(line: 975, column: 26, scope: !4788, inlinedAt: !4868)
!4874 = !DILocation(line: 144, column: 43, scope: !3256, inlinedAt: !4875)
!4875 = distinct !DILocation(line: 977, column: 3, scope: !4788, inlinedAt: !4868)
!4876 = !DILocation(line: 144, column: 51, scope: !3256, inlinedAt: !4875)
!4877 = !DILocation(line: 144, column: 58, scope: !3256, inlinedAt: !4875)
!4878 = !DILocation(line: 146, column: 17, scope: !3256, inlinedAt: !4875)
!4879 = !DILocation(line: 148, column: 57, scope: !3274, inlinedAt: !4875)
!4880 = !DILocation(line: 147, column: 17, scope: !3256, inlinedAt: !4875)
!4881 = !DILocation(line: 149, column: 7, scope: !3256, inlinedAt: !4875)
!4882 = !DILocation(line: 150, column: 12, scope: !3256, inlinedAt: !4875)
!4883 = !DILocation(line: 151, column: 6, scope: !3256, inlinedAt: !4875)
!4884 = !DILocation(line: 978, column: 10, scope: !4788, inlinedAt: !4868)
!4885 = !DILocation(line: 979, column: 1, scope: !4788, inlinedAt: !4868)
!4886 = !DILocation(line: 990, column: 3, scope: !4860)
!4887 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !213, file: !213, line: 994, type: !2938, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !187, variables: !4888)
!4888 = !{!4889, !4890}
!4889 = !DILocalVariable(name: "arg", arg: 1, scope: !4887, file: !213, line: 994, type: !81)
!4890 = !DILocalVariable(name: "argsize", arg: 2, scope: !4887, file: !213, line: 994, type: !73)
!4891 = !DILocation(line: 994, column: 33, scope: !4887)
!4892 = !DILocation(line: 994, column: 45, scope: !4887)
!4893 = !DILocation(line: 973, column: 32, scope: !4788, inlinedAt: !4894)
!4894 = distinct !DILocation(line: 996, column: 10, scope: !4887)
!4895 = !DILocation(line: 973, column: 44, scope: !4788, inlinedAt: !4894)
!4896 = !DILocation(line: 973, column: 58, scope: !4788, inlinedAt: !4894)
!4897 = !DILocation(line: 975, column: 3, scope: !4788, inlinedAt: !4894)
!4898 = !DILocation(line: 976, column: 13, scope: !4788, inlinedAt: !4894)
!4899 = !DILocation(line: 975, column: 26, scope: !4788, inlinedAt: !4894)
!4900 = !DILocation(line: 144, column: 43, scope: !3256, inlinedAt: !4901)
!4901 = distinct !DILocation(line: 977, column: 3, scope: !4788, inlinedAt: !4894)
!4902 = !DILocation(line: 144, column: 51, scope: !3256, inlinedAt: !4901)
!4903 = !DILocation(line: 144, column: 58, scope: !3256, inlinedAt: !4901)
!4904 = !DILocation(line: 146, column: 17, scope: !3256, inlinedAt: !4901)
!4905 = !DILocation(line: 148, column: 57, scope: !3274, inlinedAt: !4901)
!4906 = !DILocation(line: 147, column: 17, scope: !3256, inlinedAt: !4901)
!4907 = !DILocation(line: 149, column: 7, scope: !3256, inlinedAt: !4901)
!4908 = !DILocation(line: 150, column: 12, scope: !3256, inlinedAt: !4901)
!4909 = !DILocation(line: 151, column: 6, scope: !3256, inlinedAt: !4901)
!4910 = !DILocation(line: 978, column: 10, scope: !4788, inlinedAt: !4894)
!4911 = !DILocation(line: 979, column: 1, scope: !4788, inlinedAt: !4894)
!4912 = !DILocation(line: 996, column: 3, scope: !4887)
!4913 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !213, file: !213, line: 1000, type: !4661, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !187, variables: !4914)
!4914 = !{!4915, !4916, !4917, !4918}
!4915 = !DILocalVariable(name: "n", arg: 1, scope: !4913, file: !213, line: 1000, type: !71)
!4916 = !DILocalVariable(name: "s", arg: 2, scope: !4913, file: !213, line: 1000, type: !190)
!4917 = !DILocalVariable(name: "arg", arg: 3, scope: !4913, file: !213, line: 1000, type: !81)
!4918 = !DILocalVariable(name: "options", scope: !4913, file: !213, line: 1002, type: !220)
!4919 = !DILocation(line: 187, column: 26, scope: !4669, inlinedAt: !4920)
!4920 = distinct !DILocation(line: 1003, column: 13, scope: !4913)
!4921 = !DILocation(line: 1000, column: 29, scope: !4913)
!4922 = !DILocation(line: 1000, column: 51, scope: !4913)
!4923 = !DILocation(line: 1000, column: 66, scope: !4913)
!4924 = !DILocation(line: 1002, column: 3, scope: !4913)
!4925 = !DILocation(line: 185, column: 48, scope: !4669, inlinedAt: !4920)
!4926 = !DILocation(line: 187, column: 3, scope: !4669, inlinedAt: !4920)
!4927 = !DILocation(line: 188, column: 13, scope: !4686, inlinedAt: !4920)
!4928 = !DILocation(line: 188, column: 7, scope: !4669, inlinedAt: !4920)
!4929 = !DILocation(line: 189, column: 5, scope: !4686, inlinedAt: !4920)
!4930 = !{!4931}
!4931 = distinct !{!4931, !4932, !"quoting_options_from_style: argument 0"}
!4932 = distinct !{!4932, !"quoting_options_from_style"}
!4933 = !DILocation(line: 191, column: 10, scope: !4669, inlinedAt: !4920)
!4934 = !DILocation(line: 192, column: 1, scope: !4669, inlinedAt: !4920)
!4935 = !DILocation(line: 1003, column: 13, scope: !4913)
!4936 = !DILocation(line: 1002, column: 26, scope: !4913)
!4937 = !DILocation(line: 144, column: 43, scope: !3256, inlinedAt: !4938)
!4938 = distinct !DILocation(line: 1004, column: 3, scope: !4913)
!4939 = !DILocation(line: 144, column: 51, scope: !3256, inlinedAt: !4938)
!4940 = !DILocation(line: 144, column: 58, scope: !3256, inlinedAt: !4938)
!4941 = !DILocation(line: 146, column: 17, scope: !3256, inlinedAt: !4938)
!4942 = !DILocation(line: 148, column: 57, scope: !3274, inlinedAt: !4938)
!4943 = !DILocation(line: 147, column: 17, scope: !3256, inlinedAt: !4938)
!4944 = !DILocation(line: 149, column: 7, scope: !3256, inlinedAt: !4938)
!4945 = !DILocation(line: 150, column: 12, scope: !3256, inlinedAt: !4938)
!4946 = !DILocation(line: 151, column: 6, scope: !3256, inlinedAt: !4938)
!4947 = !DILocation(line: 1005, column: 10, scope: !4913)
!4948 = !DILocation(line: 1006, column: 1, scope: !4913)
!4949 = !DILocation(line: 1005, column: 3, scope: !4913)
!4950 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !213, file: !213, line: 1009, type: !4951, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !187, variables: !4953)
!4951 = !DISubroutineType(types: !4952)
!4952 = !{!68, !71, !81, !81, !81}
!4953 = !{!4954, !4955, !4956, !4957}
!4954 = !DILocalVariable(name: "n", arg: 1, scope: !4950, file: !213, line: 1009, type: !71)
!4955 = !DILocalVariable(name: "left_quote", arg: 2, scope: !4950, file: !213, line: 1009, type: !81)
!4956 = !DILocalVariable(name: "right_quote", arg: 3, scope: !4950, file: !213, line: 1010, type: !81)
!4957 = !DILocalVariable(name: "arg", arg: 4, scope: !4950, file: !213, line: 1010, type: !81)
!4958 = !DILocation(line: 1009, column: 24, scope: !4950)
!4959 = !DILocation(line: 1009, column: 39, scope: !4950)
!4960 = !DILocation(line: 1010, column: 32, scope: !4950)
!4961 = !DILocation(line: 1010, column: 57, scope: !4950)
!4962 = !DILocalVariable(name: "n", arg: 1, scope: !4963, file: !213, line: 1017, type: !71)
!4963 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !213, file: !213, line: 1017, type: !4964, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !187, variables: !4966)
!4964 = !DISubroutineType(types: !4965)
!4965 = !{!68, !71, !81, !81, !81, !73}
!4966 = !{!4962, !4967, !4968, !4969, !4970, !4971}
!4967 = !DILocalVariable(name: "left_quote", arg: 2, scope: !4963, file: !213, line: 1017, type: !81)
!4968 = !DILocalVariable(name: "right_quote", arg: 3, scope: !4963, file: !213, line: 1018, type: !81)
!4969 = !DILocalVariable(name: "arg", arg: 4, scope: !4963, file: !213, line: 1019, type: !81)
!4970 = !DILocalVariable(name: "argsize", arg: 5, scope: !4963, file: !213, line: 1019, type: !73)
!4971 = !DILocalVariable(name: "o", scope: !4963, file: !213, line: 1021, type: !220)
!4972 = !DILocation(line: 1017, column: 28, scope: !4963, inlinedAt: !4973)
!4973 = distinct !DILocation(line: 1012, column: 10, scope: !4950)
!4974 = !DILocation(line: 1017, column: 43, scope: !4963, inlinedAt: !4973)
!4975 = !DILocation(line: 1018, column: 36, scope: !4963, inlinedAt: !4973)
!4976 = !DILocation(line: 1019, column: 36, scope: !4963, inlinedAt: !4973)
!4977 = !DILocation(line: 1019, column: 48, scope: !4963, inlinedAt: !4973)
!4978 = !DILocation(line: 1021, column: 3, scope: !4963, inlinedAt: !4973)
!4979 = !DILocation(line: 1021, column: 30, scope: !4963, inlinedAt: !4973)
!4980 = !DILocation(line: 1021, column: 26, scope: !4963, inlinedAt: !4973)
!4981 = !DILocation(line: 171, column: 45, scope: !3306, inlinedAt: !4982)
!4982 = distinct !DILocation(line: 1022, column: 3, scope: !4963, inlinedAt: !4973)
!4983 = !DILocation(line: 172, column: 33, scope: !3306, inlinedAt: !4982)
!4984 = !DILocation(line: 172, column: 57, scope: !3306, inlinedAt: !4982)
!4985 = !DILocation(line: 176, column: 6, scope: !3306, inlinedAt: !4982)
!4986 = !DILocation(line: 176, column: 12, scope: !3306, inlinedAt: !4982)
!4987 = !DILocation(line: 177, column: 8, scope: !3322, inlinedAt: !4982)
!4988 = !DILocation(line: 177, column: 23, scope: !3324, inlinedAt: !4982)
!4989 = !DILocation(line: 177, column: 19, scope: !3322, inlinedAt: !4982)
!4990 = !DILocation(line: 178, column: 5, scope: !3322, inlinedAt: !4982)
!4991 = !DILocation(line: 179, column: 6, scope: !3306, inlinedAt: !4982)
!4992 = !DILocation(line: 179, column: 17, scope: !3306, inlinedAt: !4982)
!4993 = !DILocation(line: 180, column: 6, scope: !3306, inlinedAt: !4982)
!4994 = !DILocation(line: 180, column: 18, scope: !3306, inlinedAt: !4982)
!4995 = !DILocation(line: 1023, column: 10, scope: !4963, inlinedAt: !4973)
!4996 = !DILocation(line: 1024, column: 1, scope: !4963, inlinedAt: !4973)
!4997 = !DILocation(line: 1012, column: 3, scope: !4950)
!4998 = !DILocation(line: 1017, column: 28, scope: !4963)
!4999 = !DILocation(line: 1017, column: 43, scope: !4963)
!5000 = !DILocation(line: 1018, column: 36, scope: !4963)
!5001 = !DILocation(line: 1019, column: 36, scope: !4963)
!5002 = !DILocation(line: 1019, column: 48, scope: !4963)
!5003 = !DILocation(line: 1021, column: 3, scope: !4963)
!5004 = !DILocation(line: 1021, column: 30, scope: !4963)
!5005 = !DILocation(line: 1021, column: 26, scope: !4963)
!5006 = !DILocation(line: 171, column: 45, scope: !3306, inlinedAt: !5007)
!5007 = distinct !DILocation(line: 1022, column: 3, scope: !4963)
!5008 = !DILocation(line: 172, column: 33, scope: !3306, inlinedAt: !5007)
!5009 = !DILocation(line: 172, column: 57, scope: !3306, inlinedAt: !5007)
!5010 = !DILocation(line: 176, column: 6, scope: !3306, inlinedAt: !5007)
!5011 = !DILocation(line: 176, column: 12, scope: !3306, inlinedAt: !5007)
!5012 = !DILocation(line: 177, column: 8, scope: !3322, inlinedAt: !5007)
!5013 = !DILocation(line: 177, column: 23, scope: !3324, inlinedAt: !5007)
!5014 = !DILocation(line: 177, column: 19, scope: !3322, inlinedAt: !5007)
!5015 = !DILocation(line: 178, column: 5, scope: !3322, inlinedAt: !5007)
!5016 = !DILocation(line: 179, column: 6, scope: !3306, inlinedAt: !5007)
!5017 = !DILocation(line: 179, column: 17, scope: !3306, inlinedAt: !5007)
!5018 = !DILocation(line: 180, column: 6, scope: !3306, inlinedAt: !5007)
!5019 = !DILocation(line: 180, column: 18, scope: !3306, inlinedAt: !5007)
!5020 = !DILocation(line: 1023, column: 10, scope: !4963)
!5021 = !DILocation(line: 1024, column: 1, scope: !4963)
!5022 = !DILocation(line: 1023, column: 3, scope: !4963)
!5023 = distinct !DISubprogram(name: "quotearg_custom", scope: !213, file: !213, line: 1027, type: !5024, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !187, variables: !5026)
!5024 = !DISubroutineType(types: !5025)
!5025 = !{!68, !81, !81, !81}
!5026 = !{!5027, !5028, !5029}
!5027 = !DILocalVariable(name: "left_quote", arg: 1, scope: !5023, file: !213, line: 1027, type: !81)
!5028 = !DILocalVariable(name: "right_quote", arg: 2, scope: !5023, file: !213, line: 1027, type: !81)
!5029 = !DILocalVariable(name: "arg", arg: 3, scope: !5023, file: !213, line: 1028, type: !81)
!5030 = !DILocation(line: 1027, column: 30, scope: !5023)
!5031 = !DILocation(line: 1027, column: 54, scope: !5023)
!5032 = !DILocation(line: 1028, column: 30, scope: !5023)
!5033 = !DILocation(line: 1009, column: 24, scope: !4950, inlinedAt: !5034)
!5034 = distinct !DILocation(line: 1030, column: 10, scope: !5023)
!5035 = !DILocation(line: 1009, column: 39, scope: !4950, inlinedAt: !5034)
!5036 = !DILocation(line: 1010, column: 32, scope: !4950, inlinedAt: !5034)
!5037 = !DILocation(line: 1010, column: 57, scope: !4950, inlinedAt: !5034)
!5038 = !DILocation(line: 1017, column: 28, scope: !4963, inlinedAt: !5039)
!5039 = distinct !DILocation(line: 1012, column: 10, scope: !4950, inlinedAt: !5034)
!5040 = !DILocation(line: 1017, column: 43, scope: !4963, inlinedAt: !5039)
!5041 = !DILocation(line: 1018, column: 36, scope: !4963, inlinedAt: !5039)
!5042 = !DILocation(line: 1019, column: 36, scope: !4963, inlinedAt: !5039)
!5043 = !DILocation(line: 1019, column: 48, scope: !4963, inlinedAt: !5039)
!5044 = !DILocation(line: 1021, column: 3, scope: !4963, inlinedAt: !5039)
!5045 = !DILocation(line: 1021, column: 30, scope: !4963, inlinedAt: !5039)
!5046 = !DILocation(line: 1021, column: 26, scope: !4963, inlinedAt: !5039)
!5047 = !DILocation(line: 171, column: 45, scope: !3306, inlinedAt: !5048)
!5048 = distinct !DILocation(line: 1022, column: 3, scope: !4963, inlinedAt: !5039)
!5049 = !DILocation(line: 172, column: 33, scope: !3306, inlinedAt: !5048)
!5050 = !DILocation(line: 172, column: 57, scope: !3306, inlinedAt: !5048)
!5051 = !DILocation(line: 176, column: 6, scope: !3306, inlinedAt: !5048)
!5052 = !DILocation(line: 176, column: 12, scope: !3306, inlinedAt: !5048)
!5053 = !DILocation(line: 177, column: 8, scope: !3322, inlinedAt: !5048)
!5054 = !DILocation(line: 177, column: 23, scope: !3324, inlinedAt: !5048)
!5055 = !DILocation(line: 177, column: 19, scope: !3322, inlinedAt: !5048)
!5056 = !DILocation(line: 178, column: 5, scope: !3322, inlinedAt: !5048)
!5057 = !DILocation(line: 179, column: 6, scope: !3306, inlinedAt: !5048)
!5058 = !DILocation(line: 179, column: 17, scope: !3306, inlinedAt: !5048)
!5059 = !DILocation(line: 180, column: 6, scope: !3306, inlinedAt: !5048)
!5060 = !DILocation(line: 180, column: 18, scope: !3306, inlinedAt: !5048)
!5061 = !DILocation(line: 1023, column: 10, scope: !4963, inlinedAt: !5039)
!5062 = !DILocation(line: 1024, column: 1, scope: !4963, inlinedAt: !5039)
!5063 = !DILocation(line: 1030, column: 3, scope: !5023)
!5064 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !213, file: !213, line: 1034, type: !5065, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !187, variables: !5067)
!5065 = !DISubroutineType(types: !5066)
!5066 = !{!68, !81, !81, !81, !73}
!5067 = !{!5068, !5069, !5070, !5071}
!5068 = !DILocalVariable(name: "left_quote", arg: 1, scope: !5064, file: !213, line: 1034, type: !81)
!5069 = !DILocalVariable(name: "right_quote", arg: 2, scope: !5064, file: !213, line: 1034, type: !81)
!5070 = !DILocalVariable(name: "arg", arg: 3, scope: !5064, file: !213, line: 1035, type: !81)
!5071 = !DILocalVariable(name: "argsize", arg: 4, scope: !5064, file: !213, line: 1035, type: !73)
!5072 = !DILocation(line: 1034, column: 34, scope: !5064)
!5073 = !DILocation(line: 1034, column: 58, scope: !5064)
!5074 = !DILocation(line: 1035, column: 34, scope: !5064)
!5075 = !DILocation(line: 1035, column: 46, scope: !5064)
!5076 = !DILocation(line: 1017, column: 28, scope: !4963, inlinedAt: !5077)
!5077 = distinct !DILocation(line: 1037, column: 10, scope: !5064)
!5078 = !DILocation(line: 1017, column: 43, scope: !4963, inlinedAt: !5077)
!5079 = !DILocation(line: 1018, column: 36, scope: !4963, inlinedAt: !5077)
!5080 = !DILocation(line: 1019, column: 36, scope: !4963, inlinedAt: !5077)
!5081 = !DILocation(line: 1019, column: 48, scope: !4963, inlinedAt: !5077)
!5082 = !DILocation(line: 1021, column: 3, scope: !4963, inlinedAt: !5077)
!5083 = !DILocation(line: 1021, column: 30, scope: !4963, inlinedAt: !5077)
!5084 = !DILocation(line: 1021, column: 26, scope: !4963, inlinedAt: !5077)
!5085 = !DILocation(line: 171, column: 45, scope: !3306, inlinedAt: !5086)
!5086 = distinct !DILocation(line: 1022, column: 3, scope: !4963, inlinedAt: !5077)
!5087 = !DILocation(line: 172, column: 33, scope: !3306, inlinedAt: !5086)
!5088 = !DILocation(line: 172, column: 57, scope: !3306, inlinedAt: !5086)
!5089 = !DILocation(line: 176, column: 6, scope: !3306, inlinedAt: !5086)
!5090 = !DILocation(line: 176, column: 12, scope: !3306, inlinedAt: !5086)
!5091 = !DILocation(line: 177, column: 8, scope: !3322, inlinedAt: !5086)
!5092 = !DILocation(line: 177, column: 23, scope: !3324, inlinedAt: !5086)
!5093 = !DILocation(line: 177, column: 19, scope: !3322, inlinedAt: !5086)
!5094 = !DILocation(line: 178, column: 5, scope: !3322, inlinedAt: !5086)
!5095 = !DILocation(line: 179, column: 6, scope: !3306, inlinedAt: !5086)
!5096 = !DILocation(line: 179, column: 17, scope: !3306, inlinedAt: !5086)
!5097 = !DILocation(line: 180, column: 6, scope: !3306, inlinedAt: !5086)
!5098 = !DILocation(line: 180, column: 18, scope: !3306, inlinedAt: !5086)
!5099 = !DILocation(line: 1023, column: 10, scope: !4963, inlinedAt: !5077)
!5100 = !DILocation(line: 1024, column: 1, scope: !4963, inlinedAt: !5077)
!5101 = !DILocation(line: 1037, column: 3, scope: !5064)
!5102 = distinct !DISubprogram(name: "quote_n_mem", scope: !213, file: !213, line: 1052, type: !5103, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !187, variables: !5105)
!5103 = !DISubroutineType(types: !5104)
!5104 = !{!81, !71, !81, !73}
!5105 = !{!5106, !5107, !5108}
!5106 = !DILocalVariable(name: "n", arg: 1, scope: !5102, file: !213, line: 1052, type: !71)
!5107 = !DILocalVariable(name: "arg", arg: 2, scope: !5102, file: !213, line: 1052, type: !81)
!5108 = !DILocalVariable(name: "argsize", arg: 3, scope: !5102, file: !213, line: 1052, type: !73)
!5109 = !DILocation(line: 1052, column: 18, scope: !5102)
!5110 = !DILocation(line: 1052, column: 33, scope: !5102)
!5111 = !DILocation(line: 1052, column: 45, scope: !5102)
!5112 = !DILocation(line: 1054, column: 10, scope: !5102)
!5113 = !DILocation(line: 1054, column: 3, scope: !5102)
!5114 = distinct !DISubprogram(name: "quote_mem", scope: !213, file: !213, line: 1058, type: !5115, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !187, variables: !5117)
!5115 = !DISubroutineType(types: !5116)
!5116 = !{!81, !81, !73}
!5117 = !{!5118, !5119}
!5118 = !DILocalVariable(name: "arg", arg: 1, scope: !5114, file: !213, line: 1058, type: !81)
!5119 = !DILocalVariable(name: "argsize", arg: 2, scope: !5114, file: !213, line: 1058, type: !73)
!5120 = !DILocation(line: 1058, column: 24, scope: !5114)
!5121 = !DILocation(line: 1058, column: 36, scope: !5114)
!5122 = !DILocation(line: 1052, column: 18, scope: !5102, inlinedAt: !5123)
!5123 = distinct !DILocation(line: 1060, column: 10, scope: !5114)
!5124 = !DILocation(line: 1052, column: 33, scope: !5102, inlinedAt: !5123)
!5125 = !DILocation(line: 1052, column: 45, scope: !5102, inlinedAt: !5123)
!5126 = !DILocation(line: 1054, column: 10, scope: !5102, inlinedAt: !5123)
!5127 = !DILocation(line: 1060, column: 3, scope: !5114)
!5128 = distinct !DISubprogram(name: "quote_n", scope: !213, file: !213, line: 1064, type: !5129, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !187, variables: !5131)
!5129 = !DISubroutineType(types: !5130)
!5130 = !{!81, !71, !81}
!5131 = !{!5132, !5133}
!5132 = !DILocalVariable(name: "n", arg: 1, scope: !5128, file: !213, line: 1064, type: !71)
!5133 = !DILocalVariable(name: "arg", arg: 2, scope: !5128, file: !213, line: 1064, type: !81)
!5134 = !DILocation(line: 1064, column: 14, scope: !5128)
!5135 = !DILocation(line: 1064, column: 29, scope: !5128)
!5136 = !DILocation(line: 1052, column: 18, scope: !5102, inlinedAt: !5137)
!5137 = distinct !DILocation(line: 1066, column: 10, scope: !5128)
!5138 = !DILocation(line: 1052, column: 33, scope: !5102, inlinedAt: !5137)
!5139 = !DILocation(line: 1052, column: 45, scope: !5102, inlinedAt: !5137)
!5140 = !DILocation(line: 1054, column: 10, scope: !5102, inlinedAt: !5137)
!5141 = !DILocation(line: 1066, column: 3, scope: !5128)
!5142 = distinct !DISubprogram(name: "quote", scope: !213, file: !213, line: 1070, type: !5143, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !187, variables: !5145)
!5143 = !DISubroutineType(types: !5144)
!5144 = !{!81, !81}
!5145 = !{!5146}
!5146 = !DILocalVariable(name: "arg", arg: 1, scope: !5142, file: !213, line: 1070, type: !81)
!5147 = !DILocation(line: 1070, column: 20, scope: !5142)
!5148 = !DILocation(line: 1064, column: 14, scope: !5128, inlinedAt: !5149)
!5149 = distinct !DILocation(line: 1072, column: 10, scope: !5142)
!5150 = !DILocation(line: 1064, column: 29, scope: !5128, inlinedAt: !5149)
!5151 = !DILocation(line: 1052, column: 18, scope: !5102, inlinedAt: !5152)
!5152 = distinct !DILocation(line: 1066, column: 10, scope: !5128, inlinedAt: !5149)
!5153 = !DILocation(line: 1052, column: 33, scope: !5102, inlinedAt: !5152)
!5154 = !DILocation(line: 1052, column: 45, scope: !5102, inlinedAt: !5152)
!5155 = !DILocation(line: 1054, column: 10, scope: !5102, inlinedAt: !5152)
!5156 = !DILocation(line: 1072, column: 3, scope: !5142)
!5157 = !DILocation(line: 56, column: 14, scope: !613)
!5158 = !DILocation(line: 56, column: 30, scope: !613)
!5159 = !DILocation(line: 56, column: 42, scope: !613)
!5160 = !DILocation(line: 64, column: 3, scope: !613)
!5161 = !DILocation(line: 66, column: 24, scope: !621)
!5162 = !DILocation(line: 66, column: 15, scope: !621)
!5163 = !DILocation(line: 68, column: 13, scope: !5164)
!5164 = distinct !DILexicalBlock(scope: !621, file: !612, line: 68, column: 11)
!5165 = !DILocation(line: 68, column: 11, scope: !621)
!5166 = !DILocation(line: 70, column: 16, scope: !5167)
!5167 = distinct !DILexicalBlock(scope: !5164, file: !612, line: 70, column: 16)
!5168 = !DILocation(line: 70, column: 16, scope: !5164)
!5169 = distinct !{!5169, !5170, !5171}
!5170 = !DILocation(line: 64, column: 3, scope: !623)
!5171 = !DILocation(line: 76, column: 5, scope: !623)
!5172 = !DILocation(line: 72, column: 22, scope: !5173)
!5173 = distinct !DILexicalBlock(scope: !5167, file: !612, line: 72, column: 16)
!5174 = !DILocation(line: 72, column: 54, scope: !5175)
!5175 = !DILexicalBlockFile(scope: !5173, file: !612, discriminator: 1)
!5176 = !DILocation(line: 72, column: 32, scope: !5173)
!5177 = !DILocation(line: 77, column: 1, scope: !613)
!5178 = distinct !DISubprogram(name: "version_etc_arn", scope: !635, file: !635, line: 62, type: !5179, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !631, variables: !5222)
!5179 = !DISubroutineType(types: !5180)
!5180 = !{null, !5181, !81, !81, !81, !5221, !73}
!5181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5182, size: 64)
!5182 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3083, line: 49, baseType: !5183)
!5183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3105, line: 241, size: 1728, elements: !5184)
!5184 = !{!5185, !5186, !5187, !5188, !5189, !5190, !5191, !5192, !5193, !5194, !5195, !5196, !5197, !5205, !5206, !5207, !5208, !5209, !5210, !5211, !5212, !5213, !5214, !5215, !5216, !5217, !5218, !5219, !5220}
!5185 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5183, file: !3105, line: 242, baseType: !71, size: 32)
!5186 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5183, file: !3105, line: 247, baseType: !68, size: 64, offset: 64)
!5187 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5183, file: !3105, line: 248, baseType: !68, size: 64, offset: 128)
!5188 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5183, file: !3105, line: 249, baseType: !68, size: 64, offset: 192)
!5189 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5183, file: !3105, line: 250, baseType: !68, size: 64, offset: 256)
!5190 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5183, file: !3105, line: 251, baseType: !68, size: 64, offset: 320)
!5191 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5183, file: !3105, line: 252, baseType: !68, size: 64, offset: 384)
!5192 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5183, file: !3105, line: 253, baseType: !68, size: 64, offset: 448)
!5193 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5183, file: !3105, line: 254, baseType: !68, size: 64, offset: 512)
!5194 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5183, file: !3105, line: 256, baseType: !68, size: 64, offset: 576)
!5195 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5183, file: !3105, line: 257, baseType: !68, size: 64, offset: 640)
!5196 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5183, file: !3105, line: 258, baseType: !68, size: 64, offset: 704)
!5197 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5183, file: !3105, line: 260, baseType: !5198, size: 64, offset: 768)
!5198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5199, size: 64)
!5199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3105, line: 156, size: 192, elements: !5200)
!5200 = !{!5201, !5202, !5204}
!5201 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !5199, file: !3105, line: 157, baseType: !5198, size: 64)
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !5199, file: !3105, line: 158, baseType: !5203, size: 64, offset: 64)
!5203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5183, size: 64)
!5204 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !5199, file: !3105, line: 162, baseType: !71, size: 32, offset: 128)
!5205 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5183, file: !3105, line: 262, baseType: !5203, size: 64, offset: 832)
!5206 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5183, file: !3105, line: 264, baseType: !71, size: 32, offset: 896)
!5207 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5183, file: !3105, line: 268, baseType: !71, size: 32, offset: 928)
!5208 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5183, file: !3105, line: 270, baseType: !3084, size: 64, offset: 960)
!5209 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5183, file: !3105, line: 274, baseType: !72, size: 16, offset: 1024)
!5210 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5183, file: !3105, line: 275, baseType: !3133, size: 8, offset: 1040)
!5211 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5183, file: !3105, line: 276, baseType: !3135, size: 8, offset: 1048)
!5212 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5183, file: !3105, line: 280, baseType: !3139, size: 64, offset: 1088)
!5213 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5183, file: !3105, line: 289, baseType: !3142, size: 64, offset: 1152)
!5214 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !5183, file: !3105, line: 297, baseType: !70, size: 64, offset: 1216)
!5215 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !5183, file: !3105, line: 298, baseType: !70, size: 64, offset: 1280)
!5216 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !5183, file: !3105, line: 299, baseType: !70, size: 64, offset: 1344)
!5217 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !5183, file: !3105, line: 300, baseType: !70, size: 64, offset: 1408)
!5218 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5183, file: !3105, line: 302, baseType: !73, size: 64, offset: 1472)
!5219 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5183, file: !3105, line: 303, baseType: !71, size: 32, offset: 1536)
!5220 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5183, file: !3105, line: 305, baseType: !3150, size: 160, offset: 1568)
!5221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!5222 = !{!5223, !5224, !5225, !5226, !5227, !5228}
!5223 = !DILocalVariable(name: "stream", arg: 1, scope: !5178, file: !635, line: 62, type: !5181)
!5224 = !DILocalVariable(name: "command_name", arg: 2, scope: !5178, file: !635, line: 63, type: !81)
!5225 = !DILocalVariable(name: "package", arg: 3, scope: !5178, file: !635, line: 63, type: !81)
!5226 = !DILocalVariable(name: "version", arg: 4, scope: !5178, file: !635, line: 64, type: !81)
!5227 = !DILocalVariable(name: "authors", arg: 5, scope: !5178, file: !635, line: 65, type: !5221)
!5228 = !DILocalVariable(name: "n_authors", arg: 6, scope: !5178, file: !635, line: 65, type: !73)
!5229 = !DILocation(line: 62, column: 24, scope: !5178)
!5230 = !DILocation(line: 63, column: 30, scope: !5178)
!5231 = !DILocation(line: 63, column: 56, scope: !5178)
!5232 = !DILocation(line: 64, column: 30, scope: !5178)
!5233 = !DILocation(line: 65, column: 39, scope: !5178)
!5234 = !DILocation(line: 65, column: 55, scope: !5178)
!5235 = !DILocation(line: 67, column: 7, scope: !5236)
!5236 = distinct !DILexicalBlock(scope: !5178, file: !635, line: 67, column: 7)
!5237 = !DILocation(line: 67, column: 7, scope: !5178)
!5238 = !DILocation(line: 68, column: 5, scope: !5236)
!5239 = !DILocation(line: 70, column: 5, scope: !5236)
!5240 = !DILocation(line: 84, column: 3, scope: !5178)
!5241 = !DILocation(line: 84, column: 3, scope: !5242)
!5242 = !DILexicalBlockFile(scope: !5178, file: !635, discriminator: 1)
!5243 = !DILocation(line: 86, column: 3, scope: !5178)
!5244 = !DILocation(line: 86, column: 3, scope: !5242)
!5245 = !DILocation(line: 95, column: 3, scope: !5178)
!5246 = !DILocation(line: 99, column: 7, scope: !5247)
!5247 = distinct !DILexicalBlock(scope: !5178, file: !635, line: 96, column: 5)
!5248 = !DILocation(line: 102, column: 7, scope: !5247)
!5249 = !DILocation(line: 102, column: 7, scope: !5250)
!5250 = !DILexicalBlockFile(scope: !5247, file: !635, discriminator: 1)
!5251 = !DILocation(line: 103, column: 7, scope: !5247)
!5252 = !DILocation(line: 106, column: 7, scope: !5247)
!5253 = !DILocation(line: 106, column: 7, scope: !5250)
!5254 = !DILocation(line: 107, column: 7, scope: !5247)
!5255 = !DILocation(line: 110, column: 7, scope: !5247)
!5256 = !DILocation(line: 110, column: 7, scope: !5250)
!5257 = !DILocation(line: 112, column: 7, scope: !5247)
!5258 = !DILocation(line: 117, column: 7, scope: !5247)
!5259 = !DILocation(line: 117, column: 7, scope: !5250)
!5260 = !DILocation(line: 119, column: 7, scope: !5247)
!5261 = !DILocation(line: 124, column: 7, scope: !5247)
!5262 = !DILocation(line: 124, column: 7, scope: !5250)
!5263 = !DILocation(line: 126, column: 7, scope: !5247)
!5264 = !DILocation(line: 131, column: 7, scope: !5247)
!5265 = !DILocation(line: 131, column: 7, scope: !5250)
!5266 = !DILocation(line: 134, column: 7, scope: !5247)
!5267 = !DILocation(line: 139, column: 7, scope: !5247)
!5268 = !DILocation(line: 139, column: 7, scope: !5250)
!5269 = !DILocation(line: 142, column: 7, scope: !5247)
!5270 = !DILocation(line: 147, column: 7, scope: !5247)
!5271 = !DILocation(line: 147, column: 7, scope: !5250)
!5272 = !DILocation(line: 151, column: 7, scope: !5247)
!5273 = !DILocation(line: 156, column: 7, scope: !5247)
!5274 = !DILocation(line: 156, column: 7, scope: !5250)
!5275 = !DILocation(line: 160, column: 7, scope: !5247)
!5276 = !DILocation(line: 167, column: 7, scope: !5247)
!5277 = !DILocation(line: 167, column: 7, scope: !5250)
!5278 = !DILocation(line: 171, column: 7, scope: !5247)
!5279 = !DILocation(line: 173, column: 1, scope: !5178)
!5280 = distinct !DISubprogram(name: "version_etc_ar", scope: !635, file: !635, line: 180, type: !5281, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !631, variables: !5283)
!5281 = !DISubroutineType(types: !5282)
!5282 = !{null, !5181, !81, !81, !81, !5221}
!5283 = !{!5284, !5285, !5286, !5287, !5288, !5289}
!5284 = !DILocalVariable(name: "stream", arg: 1, scope: !5280, file: !635, line: 180, type: !5181)
!5285 = !DILocalVariable(name: "command_name", arg: 2, scope: !5280, file: !635, line: 181, type: !81)
!5286 = !DILocalVariable(name: "package", arg: 3, scope: !5280, file: !635, line: 181, type: !81)
!5287 = !DILocalVariable(name: "version", arg: 4, scope: !5280, file: !635, line: 182, type: !81)
!5288 = !DILocalVariable(name: "authors", arg: 5, scope: !5280, file: !635, line: 182, type: !5221)
!5289 = !DILocalVariable(name: "n_authors", scope: !5280, file: !635, line: 184, type: !73)
!5290 = !DILocation(line: 180, column: 23, scope: !5280)
!5291 = !DILocation(line: 181, column: 29, scope: !5280)
!5292 = !DILocation(line: 181, column: 55, scope: !5280)
!5293 = !DILocation(line: 182, column: 29, scope: !5280)
!5294 = !DILocation(line: 182, column: 59, scope: !5280)
!5295 = !DILocation(line: 184, column: 10, scope: !5280)
!5296 = !DILocation(line: 186, column: 8, scope: !5297)
!5297 = distinct !DILexicalBlock(scope: !5280, file: !635, line: 186, column: 3)
!5298 = !DILocation(line: 186, column: 23, scope: !5299)
!5299 = !DILexicalBlockFile(scope: !5300, file: !635, discriminator: 1)
!5300 = distinct !DILexicalBlock(scope: !5297, file: !635, line: 186, column: 3)
!5301 = !DILocation(line: 186, column: 3, scope: !5302)
!5302 = !DILexicalBlockFile(scope: !5297, file: !635, discriminator: 1)
!5303 = !DILocation(line: 186, column: 52, scope: !5304)
!5304 = !DILexicalBlockFile(scope: !5300, file: !635, discriminator: 3)
!5305 = distinct !{!5305, !5306, !5307}
!5306 = !DILocation(line: 186, column: 3, scope: !5297)
!5307 = !DILocation(line: 187, column: 5, scope: !5297)
!5308 = !DILocation(line: 188, column: 3, scope: !5280)
!5309 = !DILocation(line: 189, column: 1, scope: !5280)
!5310 = distinct !DISubprogram(name: "version_etc_va", scope: !635, file: !635, line: 196, type: !5311, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !631, variables: !5320)
!5311 = !DISubroutineType(types: !5312)
!5312 = !{null, !5181, !81, !81, !81, !5313}
!5313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5314, size: 64)
!5314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !632, line: 189, size: 192, elements: !5315)
!5315 = !{!5316, !5317, !5318, !5319}
!5316 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !5314, file: !632, line: 189, baseType: !83, size: 32)
!5317 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !5314, file: !632, line: 189, baseType: !83, size: 32, offset: 32)
!5318 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !5314, file: !632, line: 189, baseType: !70, size: 64, offset: 64)
!5319 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !5314, file: !632, line: 189, baseType: !70, size: 64, offset: 128)
!5320 = !{!5321, !5322, !5323, !5324, !5325, !5326, !5327}
!5321 = !DILocalVariable(name: "stream", arg: 1, scope: !5310, file: !635, line: 196, type: !5181)
!5322 = !DILocalVariable(name: "command_name", arg: 2, scope: !5310, file: !635, line: 197, type: !81)
!5323 = !DILocalVariable(name: "package", arg: 3, scope: !5310, file: !635, line: 197, type: !81)
!5324 = !DILocalVariable(name: "version", arg: 4, scope: !5310, file: !635, line: 198, type: !81)
!5325 = !DILocalVariable(name: "authors", arg: 5, scope: !5310, file: !635, line: 198, type: !5313)
!5326 = !DILocalVariable(name: "n_authors", scope: !5310, file: !635, line: 200, type: !73)
!5327 = !DILocalVariable(name: "authtab", scope: !5310, file: !635, line: 201, type: !5328)
!5328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 640, elements: !216)
!5329 = !DILocation(line: 196, column: 23, scope: !5310)
!5330 = !DILocation(line: 197, column: 29, scope: !5310)
!5331 = !DILocation(line: 197, column: 55, scope: !5310)
!5332 = !DILocation(line: 198, column: 29, scope: !5310)
!5333 = !DILocation(line: 198, column: 46, scope: !5310)
!5334 = !DILocation(line: 201, column: 3, scope: !5310)
!5335 = !DILocation(line: 201, column: 15, scope: !5310)
!5336 = !DILocation(line: 200, column: 10, scope: !5310)
!5337 = !DILocation(line: 205, column: 35, scope: !5338)
!5338 = !DILexicalBlockFile(scope: !5339, file: !635, discriminator: 1)
!5339 = distinct !DILexicalBlock(scope: !5340, file: !635, line: 203, column: 3)
!5340 = distinct !DILexicalBlock(scope: !5310, file: !635, line: 203, column: 3)
!5341 = !DILocation(line: 205, column: 35, scope: !5342)
!5342 = !DILexicalBlockFile(scope: !5339, file: !635, discriminator: 2)
!5343 = !DILocation(line: 205, column: 35, scope: !5344)
!5344 = !DILexicalBlockFile(scope: !5339, file: !635, discriminator: 3)
!5345 = !DILocation(line: 205, column: 35, scope: !5346)
!5346 = !DILexicalBlockFile(scope: !5339, file: !635, discriminator: 4)
!5347 = !DILocation(line: 205, column: 14, scope: !5346)
!5348 = !DILocation(line: 205, column: 33, scope: !5346)
!5349 = !DILocation(line: 205, column: 67, scope: !5346)
!5350 = !DILocation(line: 203, column: 3, scope: !5351)
!5351 = !DILexicalBlockFile(scope: !5340, file: !635, discriminator: 1)
!5352 = !DILocation(line: 208, column: 3, scope: !5310)
!5353 = !DILocation(line: 210, column: 1, scope: !5310)
!5354 = distinct !DISubprogram(name: "version_etc", scope: !635, file: !635, line: 227, type: !5355, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !631, variables: !5357)
!5355 = !DISubroutineType(types: !5356)
!5356 = !{null, !5181, !81, !81, !81, null}
!5357 = !{!5358, !5359, !5360, !5361, !5362}
!5358 = !DILocalVariable(name: "stream", arg: 1, scope: !5354, file: !635, line: 227, type: !5181)
!5359 = !DILocalVariable(name: "command_name", arg: 2, scope: !5354, file: !635, line: 228, type: !81)
!5360 = !DILocalVariable(name: "package", arg: 3, scope: !5354, file: !635, line: 228, type: !81)
!5361 = !DILocalVariable(name: "version", arg: 4, scope: !5354, file: !635, line: 229, type: !81)
!5362 = !DILocalVariable(name: "authors", scope: !5354, file: !635, line: 231, type: !5363)
!5363 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !3083, line: 80, baseType: !5364)
!5364 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !5365, line: 50, baseType: !5366)
!5365 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5366 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !632, line: 231, baseType: !5367)
!5367 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5314, size: 192, elements: !3136)
!5368 = !DILocation(line: 227, column: 20, scope: !5354)
!5369 = !DILocation(line: 228, column: 26, scope: !5354)
!5370 = !DILocation(line: 228, column: 52, scope: !5354)
!5371 = !DILocation(line: 229, column: 26, scope: !5354)
!5372 = !DILocation(line: 231, column: 3, scope: !5354)
!5373 = !DILocation(line: 231, column: 11, scope: !5354)
!5374 = !DILocation(line: 233, column: 3, scope: !5354)
!5375 = !DILocation(line: 234, column: 3, scope: !5354)
!5376 = !DILocation(line: 235, column: 3, scope: !5354)
!5377 = !DILocation(line: 236, column: 1, scope: !5354)
!5378 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !635, file: !635, line: 239, type: !3038, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !631, variables: !161)
!5379 = !DILocation(line: 245, column: 3, scope: !5378)
!5380 = !DILocation(line: 245, column: 3, scope: !5381)
!5381 = !DILexicalBlockFile(scope: !5378, file: !635, discriminator: 1)
!5382 = !DILocation(line: 251, column: 3, scope: !5378)
!5383 = !DILocation(line: 251, column: 3, scope: !5381)
!5384 = !DILocation(line: 256, column: 3, scope: !5378)
!5385 = !DILocation(line: 256, column: 3, scope: !5381)
!5386 = !DILocation(line: 258, column: 1, scope: !5378)
!5387 = distinct !DISubprogram(name: "xnmalloc", scope: !643, file: !643, line: 105, type: !2960, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !639, variables: !5388)
!5388 = !{!5389, !5390}
!5389 = !DILocalVariable(name: "n", arg: 1, scope: !5387, file: !643, line: 105, type: !73)
!5390 = !DILocalVariable(name: "s", arg: 2, scope: !5387, file: !643, line: 105, type: !73)
!5391 = !DILocation(line: 105, column: 18, scope: !5387)
!5392 = !DILocation(line: 105, column: 28, scope: !5387)
!5393 = !DILocation(line: 107, column: 7, scope: !5394)
!5394 = distinct !DILexicalBlock(scope: !5387, file: !643, line: 107, column: 7)
!5395 = !DILocation(line: 107, column: 7, scope: !5387)
!5396 = !DILocation(line: 108, column: 5, scope: !5394)
!5397 = !DILocation(line: 109, column: 21, scope: !5387)
!5398 = !DILocalVariable(name: "n", arg: 1, scope: !5399, file: !5400, line: 39, type: !73)
!5399 = distinct !DISubprogram(name: "xmalloc", scope: !5400, file: !5400, line: 39, type: !5401, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !639, variables: !5403)
!5400 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5401 = !DISubroutineType(types: !5402)
!5402 = !{!70, !73}
!5403 = !{!5398, !5404}
!5404 = !DILocalVariable(name: "p", scope: !5399, file: !5400, line: 41, type: !70)
!5405 = !DILocation(line: 39, column: 17, scope: !5399, inlinedAt: !5406)
!5406 = distinct !DILocation(line: 109, column: 10, scope: !5387)
!5407 = !DILocation(line: 41, column: 13, scope: !5399, inlinedAt: !5406)
!5408 = !DILocation(line: 41, column: 9, scope: !5399, inlinedAt: !5406)
!5409 = !DILocation(line: 42, column: 8, scope: !5410, inlinedAt: !5406)
!5410 = distinct !DILexicalBlock(scope: !5399, file: !5400, line: 42, column: 7)
!5411 = !DILocation(line: 42, column: 15, scope: !5412, inlinedAt: !5406)
!5412 = !DILexicalBlockFile(scope: !5410, file: !5400, discriminator: 1)
!5413 = !DILocation(line: 42, column: 10, scope: !5410, inlinedAt: !5406)
!5414 = !DILocation(line: 43, column: 5, scope: !5410, inlinedAt: !5406)
!5415 = !DILocation(line: 109, column: 3, scope: !5387)
!5416 = !DILocation(line: 39, column: 17, scope: !5399)
!5417 = !DILocation(line: 41, column: 13, scope: !5399)
!5418 = !DILocation(line: 41, column: 9, scope: !5399)
!5419 = !DILocation(line: 42, column: 8, scope: !5410)
!5420 = !DILocation(line: 42, column: 15, scope: !5412)
!5421 = !DILocation(line: 42, column: 10, scope: !5410)
!5422 = !DILocation(line: 43, column: 5, scope: !5410)
!5423 = !DILocation(line: 44, column: 3, scope: !5399)
!5424 = distinct !DISubprogram(name: "xnrealloc", scope: !643, file: !643, line: 118, type: !5425, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !639, variables: !5427)
!5425 = !DISubroutineType(types: !5426)
!5426 = !{!70, !70, !73, !73}
!5427 = !{!5428, !5429, !5430}
!5428 = !DILocalVariable(name: "p", arg: 1, scope: !5424, file: !643, line: 118, type: !70)
!5429 = !DILocalVariable(name: "n", arg: 2, scope: !5424, file: !643, line: 118, type: !73)
!5430 = !DILocalVariable(name: "s", arg: 3, scope: !5424, file: !643, line: 118, type: !73)
!5431 = !DILocation(line: 118, column: 18, scope: !5424)
!5432 = !DILocation(line: 118, column: 28, scope: !5424)
!5433 = !DILocation(line: 118, column: 38, scope: !5424)
!5434 = !DILocation(line: 120, column: 7, scope: !5435)
!5435 = distinct !DILexicalBlock(scope: !5424, file: !643, line: 120, column: 7)
!5436 = !DILocation(line: 120, column: 7, scope: !5424)
!5437 = !DILocation(line: 121, column: 5, scope: !5435)
!5438 = !DILocation(line: 122, column: 25, scope: !5424)
!5439 = !DILocalVariable(name: "p", arg: 1, scope: !5440, file: !5400, line: 51, type: !70)
!5440 = distinct !DISubprogram(name: "xrealloc", scope: !5400, file: !5400, line: 51, type: !5441, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !639, variables: !5443)
!5441 = !DISubroutineType(types: !5442)
!5442 = !{!70, !70, !73}
!5443 = !{!5439, !5444}
!5444 = !DILocalVariable(name: "n", arg: 2, scope: !5440, file: !5400, line: 51, type: !73)
!5445 = !DILocation(line: 51, column: 17, scope: !5440, inlinedAt: !5446)
!5446 = distinct !DILocation(line: 122, column: 10, scope: !5424)
!5447 = !DILocation(line: 51, column: 27, scope: !5440, inlinedAt: !5446)
!5448 = !DILocation(line: 53, column: 8, scope: !5449, inlinedAt: !5446)
!5449 = distinct !DILexicalBlock(scope: !5440, file: !5400, line: 53, column: 7)
!5450 = !DILocation(line: 53, column: 13, scope: !5451, inlinedAt: !5446)
!5451 = !DILexicalBlockFile(scope: !5449, file: !5400, discriminator: 1)
!5452 = !DILocation(line: 53, column: 10, scope: !5449, inlinedAt: !5446)
!5453 = !DILocation(line: 57, column: 7, scope: !5454, inlinedAt: !5446)
!5454 = distinct !DILexicalBlock(scope: !5449, file: !5400, line: 54, column: 5)
!5455 = !DILocation(line: 58, column: 7, scope: !5454, inlinedAt: !5446)
!5456 = !DILocation(line: 61, column: 7, scope: !5440, inlinedAt: !5446)
!5457 = !DILocation(line: 62, column: 8, scope: !5458, inlinedAt: !5446)
!5458 = distinct !DILexicalBlock(scope: !5440, file: !5400, line: 62, column: 7)
!5459 = !DILocation(line: 62, column: 13, scope: !5460, inlinedAt: !5446)
!5460 = !DILexicalBlockFile(scope: !5458, file: !5400, discriminator: 1)
!5461 = !DILocation(line: 62, column: 10, scope: !5458, inlinedAt: !5446)
!5462 = !DILocation(line: 63, column: 5, scope: !5458, inlinedAt: !5446)
!5463 = !DILocation(line: 122, column: 3, scope: !5424)
!5464 = !DILocation(line: 51, column: 17, scope: !5440)
!5465 = !DILocation(line: 51, column: 27, scope: !5440)
!5466 = !DILocation(line: 53, column: 8, scope: !5449)
!5467 = !DILocation(line: 53, column: 13, scope: !5451)
!5468 = !DILocation(line: 53, column: 10, scope: !5449)
!5469 = !DILocation(line: 57, column: 7, scope: !5454)
!5470 = !DILocation(line: 58, column: 7, scope: !5454)
!5471 = !DILocation(line: 61, column: 7, scope: !5440)
!5472 = !DILocation(line: 62, column: 8, scope: !5458)
!5473 = !DILocation(line: 62, column: 13, scope: !5460)
!5474 = !DILocation(line: 62, column: 10, scope: !5458)
!5475 = !DILocation(line: 63, column: 5, scope: !5458)
!5476 = !DILocation(line: 65, column: 1, scope: !5440)
!5477 = !DILocation(line: 180, column: 19, scope: !644)
!5478 = !DILocation(line: 180, column: 30, scope: !644)
!5479 = !DILocation(line: 180, column: 41, scope: !644)
!5480 = !DILocation(line: 182, column: 14, scope: !644)
!5481 = !DILocation(line: 182, column: 10, scope: !644)
!5482 = !DILocation(line: 184, column: 9, scope: !5483)
!5483 = distinct !DILexicalBlock(scope: !644, file: !643, line: 184, column: 7)
!5484 = !DILocation(line: 184, column: 7, scope: !644)
!5485 = !DILocation(line: 186, column: 13, scope: !5486)
!5486 = distinct !DILexicalBlock(scope: !5487, file: !643, line: 186, column: 11)
!5487 = distinct !DILexicalBlock(scope: !5483, file: !643, line: 185, column: 5)
!5488 = !DILocation(line: 186, column: 11, scope: !5487)
!5489 = !DILocation(line: 194, column: 30, scope: !5490)
!5490 = distinct !DILexicalBlock(scope: !5486, file: !643, line: 187, column: 9)
!5491 = !DILocation(line: 195, column: 16, scope: !5490)
!5492 = !DILocation(line: 195, column: 13, scope: !5490)
!5493 = !DILocation(line: 196, column: 9, scope: !5490)
!5494 = !DILocation(line: 204, column: 69, scope: !5495)
!5495 = distinct !DILexicalBlock(scope: !5496, file: !643, line: 204, column: 11)
!5496 = distinct !DILexicalBlock(scope: !5483, file: !643, line: 199, column: 5)
!5497 = !DILocation(line: 205, column: 11, scope: !5495)
!5498 = !DILocation(line: 204, column: 11, scope: !5496)
!5499 = !DILocation(line: 206, column: 9, scope: !5495)
!5500 = !DILocation(line: 210, column: 7, scope: !644)
!5501 = !DILocation(line: 211, column: 25, scope: !644)
!5502 = !DILocation(line: 51, column: 17, scope: !5440, inlinedAt: !5503)
!5503 = distinct !DILocation(line: 211, column: 10, scope: !644)
!5504 = !DILocation(line: 51, column: 27, scope: !5440, inlinedAt: !5503)
!5505 = !DILocation(line: 53, column: 10, scope: !5449, inlinedAt: !5503)
!5506 = !DILocation(line: 207, column: 14, scope: !5496)
!5507 = !DILocation(line: 207, column: 18, scope: !5496)
!5508 = !DILocation(line: 207, column: 9, scope: !5496)
!5509 = !DILocation(line: 53, column: 8, scope: !5449, inlinedAt: !5503)
!5510 = !DILocation(line: 57, column: 7, scope: !5454, inlinedAt: !5503)
!5511 = !DILocation(line: 58, column: 7, scope: !5454, inlinedAt: !5503)
!5512 = !DILocation(line: 61, column: 7, scope: !5440, inlinedAt: !5503)
!5513 = !DILocation(line: 62, column: 8, scope: !5458, inlinedAt: !5503)
!5514 = !DILocation(line: 62, column: 13, scope: !5460, inlinedAt: !5503)
!5515 = !DILocation(line: 62, column: 10, scope: !5458, inlinedAt: !5503)
!5516 = !DILocation(line: 63, column: 5, scope: !5458, inlinedAt: !5503)
!5517 = !DILocation(line: 211, column: 3, scope: !644)
!5518 = distinct !DISubprogram(name: "xcharalloc", scope: !643, file: !643, line: 220, type: !4433, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !639, variables: !5519)
!5519 = !{!5520}
!5520 = !DILocalVariable(name: "n", arg: 1, scope: !5518, file: !643, line: 220, type: !73)
!5521 = !DILocation(line: 220, column: 20, scope: !5518)
!5522 = !DILocation(line: 39, column: 17, scope: !5399, inlinedAt: !5523)
!5523 = distinct !DILocation(line: 222, column: 10, scope: !5518)
!5524 = !DILocation(line: 41, column: 13, scope: !5399, inlinedAt: !5523)
!5525 = !DILocation(line: 41, column: 9, scope: !5399, inlinedAt: !5523)
!5526 = !DILocation(line: 42, column: 8, scope: !5410, inlinedAt: !5523)
!5527 = !DILocation(line: 42, column: 15, scope: !5412, inlinedAt: !5523)
!5528 = !DILocation(line: 42, column: 10, scope: !5410, inlinedAt: !5523)
!5529 = !DILocation(line: 43, column: 5, scope: !5410, inlinedAt: !5523)
!5530 = !DILocation(line: 222, column: 3, scope: !5518)
!5531 = distinct !DISubprogram(name: "x2realloc", scope: !5400, file: !5400, line: 74, type: !5532, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !639, variables: !5534)
!5532 = !DISubroutineType(types: !5533)
!5533 = !{!70, !70, !647}
!5534 = !{!5535, !5536}
!5535 = !DILocalVariable(name: "p", arg: 1, scope: !5531, file: !5400, line: 74, type: !70)
!5536 = !DILocalVariable(name: "pn", arg: 2, scope: !5531, file: !5400, line: 74, type: !647)
!5537 = !DILocation(line: 74, column: 18, scope: !5531)
!5538 = !DILocation(line: 74, column: 29, scope: !5531)
!5539 = !DILocation(line: 180, column: 19, scope: !644, inlinedAt: !5540)
!5540 = distinct !DILocation(line: 76, column: 10, scope: !5531)
!5541 = !DILocation(line: 180, column: 30, scope: !644, inlinedAt: !5540)
!5542 = !DILocation(line: 180, column: 41, scope: !644, inlinedAt: !5540)
!5543 = !DILocation(line: 182, column: 14, scope: !644, inlinedAt: !5540)
!5544 = !DILocation(line: 182, column: 10, scope: !644, inlinedAt: !5540)
!5545 = !DILocation(line: 184, column: 9, scope: !5483, inlinedAt: !5540)
!5546 = !DILocation(line: 184, column: 7, scope: !644, inlinedAt: !5540)
!5547 = !DILocation(line: 186, column: 13, scope: !5486, inlinedAt: !5540)
!5548 = !DILocation(line: 186, column: 11, scope: !5487, inlinedAt: !5540)
!5549 = !DILocation(line: 210, column: 7, scope: !644, inlinedAt: !5540)
!5550 = !DILocation(line: 51, column: 17, scope: !5440, inlinedAt: !5551)
!5551 = distinct !DILocation(line: 211, column: 10, scope: !644, inlinedAt: !5540)
!5552 = !DILocation(line: 51, column: 27, scope: !5440, inlinedAt: !5551)
!5553 = !DILocation(line: 53, column: 10, scope: !5449, inlinedAt: !5551)
!5554 = !DILocation(line: 205, column: 11, scope: !5495, inlinedAt: !5540)
!5555 = !DILocation(line: 204, column: 11, scope: !5496, inlinedAt: !5540)
!5556 = !DILocation(line: 206, column: 9, scope: !5495, inlinedAt: !5540)
!5557 = !DILocation(line: 207, column: 14, scope: !5496, inlinedAt: !5540)
!5558 = !DILocation(line: 207, column: 18, scope: !5496, inlinedAt: !5540)
!5559 = !DILocation(line: 207, column: 9, scope: !5496, inlinedAt: !5540)
!5560 = !DILocation(line: 53, column: 8, scope: !5449, inlinedAt: !5551)
!5561 = !DILocation(line: 57, column: 7, scope: !5454, inlinedAt: !5551)
!5562 = !DILocation(line: 58, column: 7, scope: !5454, inlinedAt: !5551)
!5563 = !DILocation(line: 61, column: 7, scope: !5440, inlinedAt: !5551)
!5564 = !DILocation(line: 62, column: 8, scope: !5458, inlinedAt: !5551)
!5565 = !DILocation(line: 62, column: 13, scope: !5460, inlinedAt: !5551)
!5566 = !DILocation(line: 62, column: 10, scope: !5458, inlinedAt: !5551)
!5567 = !DILocation(line: 63, column: 5, scope: !5458, inlinedAt: !5551)
!5568 = !DILocation(line: 76, column: 3, scope: !5531)
!5569 = distinct !DISubprogram(name: "xzalloc", scope: !5400, file: !5400, line: 84, type: !5401, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !639, variables: !5570)
!5570 = !{!5571}
!5571 = !DILocalVariable(name: "s", arg: 1, scope: !5569, file: !5400, line: 84, type: !73)
!5572 = !DILocation(line: 84, column: 17, scope: !5569)
!5573 = !DILocation(line: 39, column: 17, scope: !5399, inlinedAt: !5574)
!5574 = distinct !DILocation(line: 86, column: 18, scope: !5569)
!5575 = !DILocation(line: 41, column: 13, scope: !5399, inlinedAt: !5574)
!5576 = !DILocation(line: 41, column: 9, scope: !5399, inlinedAt: !5574)
!5577 = !DILocation(line: 42, column: 8, scope: !5410, inlinedAt: !5574)
!5578 = !DILocation(line: 42, column: 15, scope: !5412, inlinedAt: !5574)
!5579 = !DILocation(line: 42, column: 10, scope: !5410, inlinedAt: !5574)
!5580 = !DILocation(line: 43, column: 5, scope: !5410, inlinedAt: !5574)
!5581 = !DILocation(line: 86, column: 10, scope: !5569)
!5582 = !DILocation(line: 86, column: 3, scope: !5569)
!5583 = distinct !DISubprogram(name: "xcalloc", scope: !5400, file: !5400, line: 93, type: !2960, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !639, variables: !5584)
!5584 = !{!5585, !5586, !5587}
!5585 = !DILocalVariable(name: "n", arg: 1, scope: !5583, file: !5400, line: 93, type: !73)
!5586 = !DILocalVariable(name: "s", arg: 2, scope: !5583, file: !5400, line: 93, type: !73)
!5587 = !DILocalVariable(name: "p", scope: !5583, file: !5400, line: 95, type: !70)
!5588 = !DILocation(line: 93, column: 17, scope: !5583)
!5589 = !DILocation(line: 93, column: 27, scope: !5583)
!5590 = !DILocation(line: 100, column: 7, scope: !5591)
!5591 = distinct !DILexicalBlock(scope: !5583, file: !5400, line: 100, column: 7)
!5592 = !DILocation(line: 101, column: 7, scope: !5591)
!5593 = !DILocation(line: 101, column: 18, scope: !5594)
!5594 = !DILexicalBlockFile(scope: !5591, file: !5400, discriminator: 1)
!5595 = !DILocation(line: 95, column: 9, scope: !5583)
!5596 = !DILocation(line: 101, column: 16, scope: !5594)
!5597 = !DILocation(line: 100, column: 7, scope: !5598)
!5598 = !DILexicalBlockFile(scope: !5583, file: !5400, discriminator: 1)
!5599 = !DILocation(line: 102, column: 5, scope: !5591)
!5600 = !DILocation(line: 103, column: 3, scope: !5583)
!5601 = distinct !DISubprogram(name: "xmemdup", scope: !5400, file: !5400, line: 111, type: !5602, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !639, variables: !5604)
!5602 = !DISubroutineType(types: !5603)
!5603 = !{!70, !76, !73}
!5604 = !{!5605, !5606}
!5605 = !DILocalVariable(name: "p", arg: 1, scope: !5601, file: !5400, line: 111, type: !76)
!5606 = !DILocalVariable(name: "s", arg: 2, scope: !5601, file: !5400, line: 111, type: !73)
!5607 = !DILocation(line: 111, column: 22, scope: !5601)
!5608 = !DILocation(line: 111, column: 32, scope: !5601)
!5609 = !DILocation(line: 39, column: 17, scope: !5399, inlinedAt: !5610)
!5610 = distinct !DILocation(line: 113, column: 18, scope: !5601)
!5611 = !DILocation(line: 41, column: 13, scope: !5399, inlinedAt: !5610)
!5612 = !DILocation(line: 41, column: 9, scope: !5399, inlinedAt: !5610)
!5613 = !DILocation(line: 42, column: 8, scope: !5410, inlinedAt: !5610)
!5614 = !DILocation(line: 42, column: 15, scope: !5412, inlinedAt: !5610)
!5615 = !DILocation(line: 42, column: 10, scope: !5410, inlinedAt: !5610)
!5616 = !DILocation(line: 43, column: 5, scope: !5410, inlinedAt: !5610)
!5617 = !DILocation(line: 113, column: 10, scope: !5601)
!5618 = !DILocation(line: 113, column: 3, scope: !5601)
!5619 = distinct !DISubprogram(name: "xstrdup", scope: !5400, file: !5400, line: 119, type: !4638, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !639, variables: !5620)
!5620 = !{!5621}
!5621 = !DILocalVariable(name: "string", arg: 1, scope: !5619, file: !5400, line: 119, type: !81)
!5622 = !DILocation(line: 119, column: 22, scope: !5619)
!5623 = !DILocation(line: 121, column: 27, scope: !5619)
!5624 = !DILocation(line: 121, column: 43, scope: !5619)
!5625 = !DILocation(line: 111, column: 22, scope: !5601, inlinedAt: !5626)
!5626 = distinct !DILocation(line: 121, column: 10, scope: !5627)
!5627 = !DILexicalBlockFile(scope: !5619, file: !5400, discriminator: 1)
!5628 = !DILocation(line: 111, column: 32, scope: !5601, inlinedAt: !5626)
!5629 = !DILocation(line: 39, column: 17, scope: !5399, inlinedAt: !5630)
!5630 = distinct !DILocation(line: 113, column: 18, scope: !5601, inlinedAt: !5626)
!5631 = !DILocation(line: 41, column: 13, scope: !5399, inlinedAt: !5630)
!5632 = !DILocation(line: 41, column: 9, scope: !5399, inlinedAt: !5630)
!5633 = !DILocation(line: 42, column: 8, scope: !5410, inlinedAt: !5630)
!5634 = !DILocation(line: 42, column: 15, scope: !5412, inlinedAt: !5630)
!5635 = !DILocation(line: 42, column: 10, scope: !5410, inlinedAt: !5630)
!5636 = !DILocation(line: 43, column: 5, scope: !5410, inlinedAt: !5630)
!5637 = !DILocation(line: 113, column: 10, scope: !5601, inlinedAt: !5626)
!5638 = !DILocation(line: 121, column: 3, scope: !5619)
!5639 = distinct !DISubprogram(name: "xalloc_die", scope: !5640, file: !5640, line: 32, type: !3038, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !656, variables: !161)
!5640 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5641 = !DILocation(line: 34, column: 10, scope: !5639)
!5642 = !DILocation(line: 34, column: 33, scope: !5639)
!5643 = !DILocation(line: 34, column: 3, scope: !5644)
!5644 = !DILexicalBlockFile(scope: !5639, file: !5640, discriminator: 1)
!5645 = !DILocation(line: 40, column: 3, scope: !5639)
!5646 = distinct !DISubprogram(name: "xstrtoumax", scope: !5647, file: !5647, line: 88, type: !5648, isDefinition: true, scopeLine: 90, flags: DIFlagPrototyped, isOptimized: true, unit: !658, variables: !5652)
!5647 = !DIFile(filename: "./lib/xstrtol.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5648 = !DISubroutineType(types: !5649)
!5649 = !{!5650, !81, !748, !71, !5651, !81}
!5650 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !60, line: 39, baseType: !59)
!5651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!5652 = !{!5653, !5654, !5655, !5656, !5657, !5658, !5659, !5660, !5661, !5662, !5665, !5666, !5669, !5670}
!5653 = !DILocalVariable(name: "s", arg: 1, scope: !5646, file: !5647, line: 88, type: !81)
!5654 = !DILocalVariable(name: "ptr", arg: 2, scope: !5646, file: !5647, line: 88, type: !748)
!5655 = !DILocalVariable(name: "strtol_base", arg: 3, scope: !5646, file: !5647, line: 88, type: !71)
!5656 = !DILocalVariable(name: "val", arg: 4, scope: !5646, file: !5647, line: 89, type: !5651)
!5657 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !5646, file: !5647, line: 89, type: !81)
!5658 = !DILocalVariable(name: "t_ptr", scope: !5646, file: !5647, line: 91, type: !68)
!5659 = !DILocalVariable(name: "p", scope: !5646, file: !5647, line: 92, type: !748)
!5660 = !DILocalVariable(name: "tmp", scope: !5646, file: !5647, line: 93, type: !782)
!5661 = !DILocalVariable(name: "err", scope: !5646, file: !5647, line: 94, type: !5650)
!5662 = !DILocalVariable(name: "q", scope: !5663, file: !5647, line: 104, type: !81)
!5663 = distinct !DILexicalBlock(scope: !5664, file: !5647, line: 103, column: 5)
!5664 = distinct !DILexicalBlock(scope: !5646, file: !5647, line: 102, column: 7)
!5665 = !DILocalVariable(name: "ch", scope: !5663, file: !5647, line: 105, type: !80)
!5666 = !DILocalVariable(name: "base", scope: !5667, file: !5647, line: 141, type: !71)
!5667 = distinct !DILexicalBlock(scope: !5668, file: !5647, line: 140, column: 5)
!5668 = distinct !DILexicalBlock(scope: !5646, file: !5647, line: 139, column: 7)
!5669 = !DILocalVariable(name: "suffixes", scope: !5667, file: !5647, line: 142, type: !71)
!5670 = !DILocalVariable(name: "overflow", scope: !5667, file: !5647, line: 143, type: !5650)
!5671 = !DILocation(line: 88, column: 24, scope: !5646)
!5672 = !DILocation(line: 88, column: 34, scope: !5646)
!5673 = !DILocation(line: 88, column: 43, scope: !5646)
!5674 = !DILocation(line: 89, column: 24, scope: !5646)
!5675 = !DILocation(line: 89, column: 41, scope: !5646)
!5676 = !DILocation(line: 91, column: 3, scope: !5646)
!5677 = !DILocation(line: 94, column: 16, scope: !5646)
!5678 = !DILocation(line: 96, column: 3, scope: !5679)
!5679 = distinct !DILexicalBlock(scope: !5680, file: !5647, line: 96, column: 3)
!5680 = distinct !DILexicalBlock(scope: !5646, file: !5647, line: 96, column: 3)
!5681 = !DILocation(line: 96, column: 3, scope: !5682)
!5682 = !DILexicalBlockFile(scope: !5679, file: !5647, discriminator: 3)
!5683 = !DILocation(line: 98, column: 8, scope: !5646)
!5684 = !DILocation(line: 92, column: 10, scope: !5646)
!5685 = !DILocation(line: 100, column: 3, scope: !5646)
!5686 = !DILocation(line: 100, column: 9, scope: !5646)
!5687 = !DILocation(line: 104, column: 19, scope: !5663)
!5688 = !DILocation(line: 106, column: 14, scope: !5689)
!5689 = !DILexicalBlockFile(scope: !5663, file: !5647, discriminator: 1)
!5690 = !DILocation(line: 106, column: 7, scope: !5663)
!5691 = !DILocation(line: 105, column: 21, scope: !5663)
!5692 = !DILocation(line: 106, column: 7, scope: !5689)
!5693 = !DILocation(line: 107, column: 15, scope: !5663)
!5694 = distinct !{!5694, !5690, !5695}
!5695 = !DILocation(line: 107, column: 17, scope: !5663)
!5696 = !DILocation(line: 109, column: 9, scope: !5697)
!5697 = distinct !DILexicalBlock(scope: !5663, file: !5647, line: 108, column: 11)
!5698 = !DILocalVariable(name: "nptr", arg: 1, scope: !5699, file: !5700, line: 336, type: !3010)
!5699 = distinct !DISubprogram(name: "strtoumax", scope: !5700, file: !5700, line: 336, type: !5701, isDefinition: true, scopeLine: 338, flags: DIFlagPrototyped, isOptimized: true, unit: !658, variables: !5704)
!5700 = !DIFile(filename: "/usr/include/inttypes.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5701 = !DISubroutineType(types: !5702)
!5702 = !{!782, !3010, !5703, !71}
!5703 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !748)
!5704 = !{!5698, !5705, !5706}
!5705 = !DILocalVariable(name: "endptr", arg: 2, scope: !5699, file: !5700, line: 336, type: !5703)
!5706 = !DILocalVariable(name: "base", arg: 3, scope: !5699, file: !5700, line: 336, type: !71)
!5707 = !DILocation(line: 336, column: 1, scope: !5699, inlinedAt: !5708)
!5708 = distinct !DILocation(line: 112, column: 9, scope: !5646)
!5709 = !DILocation(line: 339, column: 10, scope: !5699, inlinedAt: !5708)
!5710 = !DILocation(line: 93, column: 14, scope: !5646)
!5711 = !DILocation(line: 114, column: 7, scope: !5712)
!5712 = distinct !DILexicalBlock(scope: !5646, file: !5647, line: 114, column: 7)
!5713 = !DILocation(line: 114, column: 10, scope: !5712)
!5714 = !DILocation(line: 114, column: 7, scope: !5646)
!5715 = !DILocation(line: 118, column: 11, scope: !5716)
!5716 = distinct !DILexicalBlock(scope: !5717, file: !5647, line: 118, column: 11)
!5717 = distinct !DILexicalBlock(scope: !5712, file: !5647, line: 115, column: 5)
!5718 = !DILocation(line: 118, column: 26, scope: !5716)
!5719 = !DILocation(line: 118, column: 29, scope: !5720)
!5720 = !DILexicalBlockFile(scope: !5716, file: !5647, discriminator: 1)
!5721 = !DILocation(line: 118, column: 33, scope: !5720)
!5722 = !DILocation(line: 118, column: 36, scope: !5723)
!5723 = !DILexicalBlockFile(scope: !5716, file: !5647, discriminator: 5)
!5724 = !DILocation(line: 118, column: 11, scope: !5725)
!5725 = !DILexicalBlockFile(scope: !5717, file: !5647, discriminator: 5)
!5726 = !DILocation(line: 123, column: 12, scope: !5727)
!5727 = distinct !DILexicalBlock(scope: !5712, file: !5647, line: 123, column: 12)
!5728 = !DILocation(line: 123, column: 12, scope: !5712)
!5729 = !DILocation(line: 128, column: 5, scope: !5730)
!5730 = distinct !DILexicalBlock(scope: !5727, file: !5647, line: 124, column: 5)
!5731 = !DILocation(line: 133, column: 8, scope: !5732)
!5732 = distinct !DILexicalBlock(scope: !5646, file: !5647, line: 133, column: 7)
!5733 = !DILocation(line: 133, column: 7, scope: !5646)
!5734 = !DILocation(line: 135, column: 12, scope: !5735)
!5735 = distinct !DILexicalBlock(scope: !5732, file: !5647, line: 134, column: 5)
!5736 = !DILocation(line: 136, column: 7, scope: !5735)
!5737 = !DILocation(line: 139, column: 7, scope: !5668)
!5738 = !DILocation(line: 139, column: 11, scope: !5668)
!5739 = !DILocation(line: 139, column: 7, scope: !5646)
!5740 = !DILocation(line: 141, column: 11, scope: !5667)
!5741 = !DILocation(line: 142, column: 11, scope: !5667)
!5742 = !DILocation(line: 145, column: 12, scope: !5743)
!5743 = !DILexicalBlockFile(scope: !5744, file: !5647, discriminator: 3)
!5744 = distinct !DILexicalBlock(scope: !5667, file: !5647, line: 145, column: 11)
!5745 = !DILocation(line: 145, column: 11, scope: !5746)
!5746 = !DILexicalBlockFile(scope: !5667, file: !5647, discriminator: 3)
!5747 = !DILocation(line: 147, column: 16, scope: !5748)
!5748 = distinct !DILexicalBlock(scope: !5744, file: !5647, line: 146, column: 9)
!5749 = !DILocation(line: 148, column: 22, scope: !5748)
!5750 = !DILocation(line: 148, column: 11, scope: !5748)
!5751 = !DILocation(line: 151, column: 7, scope: !5667)
!5752 = !DILocation(line: 163, column: 15, scope: !5753)
!5753 = !DILexicalBlockFile(scope: !5754, file: !5647, discriminator: 2)
!5754 = distinct !DILexicalBlock(scope: !5755, file: !5647, line: 163, column: 15)
!5755 = distinct !DILexicalBlock(scope: !5667, file: !5647, line: 152, column: 9)
!5756 = !DILocation(line: 163, column: 15, scope: !5757)
!5757 = !DILexicalBlockFile(scope: !5755, file: !5647, discriminator: 2)
!5758 = !DILocation(line: 164, column: 21, scope: !5754)
!5759 = !DILocation(line: 164, column: 13, scope: !5754)
!5760 = !DILocation(line: 167, column: 21, scope: !5761)
!5761 = distinct !DILexicalBlock(scope: !5762, file: !5647, line: 167, column: 21)
!5762 = distinct !DILexicalBlock(scope: !5754, file: !5647, line: 165, column: 15)
!5763 = !DILocation(line: 167, column: 29, scope: !5761)
!5764 = !DILocation(line: 167, column: 21, scope: !5762)
!5765 = !DILocation(line: 175, column: 17, scope: !5762)
!5766 = !DILocation(line: 179, column: 7, scope: !5667)
!5767 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !5768, file: !5647, line: 60, type: !71)
!5768 = distinct !DISubprogram(name: "bkm_scale", scope: !5647, file: !5647, line: 60, type: !5769, isLocal: true, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, unit: !658, variables: !5771)
!5769 = !DISubroutineType(types: !5770)
!5770 = !{!5650, !5651, !71}
!5771 = !{!5772, !5767}
!5772 = !DILocalVariable(name: "x", arg: 1, scope: !5768, file: !5647, line: 60, type: !5651)
!5773 = !DILocation(line: 60, column: 31, scope: !5768, inlinedAt: !5774)
!5774 = distinct !DILocation(line: 182, column: 22, scope: !5775)
!5775 = distinct !DILexicalBlock(scope: !5667, file: !5647, line: 180, column: 9)
!5776 = !DILocation(line: 67, column: 39, scope: !5777, inlinedAt: !5774)
!5777 = distinct !DILexicalBlock(scope: !5768, file: !5647, line: 67, column: 7)
!5778 = !DILocation(line: 72, column: 6, scope: !5768, inlinedAt: !5774)
!5779 = !DILocation(line: 67, column: 7, scope: !5768, inlinedAt: !5774)
!5780 = !DILocation(line: 143, column: 20, scope: !5667)
!5781 = !DILocation(line: 183, column: 11, scope: !5775)
!5782 = !DILocation(line: 60, column: 31, scope: !5768, inlinedAt: !5783)
!5783 = distinct !DILocation(line: 189, column: 22, scope: !5775)
!5784 = !DILocation(line: 67, column: 39, scope: !5777, inlinedAt: !5783)
!5785 = !DILocation(line: 72, column: 6, scope: !5768, inlinedAt: !5783)
!5786 = !DILocation(line: 67, column: 7, scope: !5768, inlinedAt: !5783)
!5787 = !DILocation(line: 190, column: 11, scope: !5775)
!5788 = !DILocalVariable(name: "power", arg: 3, scope: !5789, file: !5647, line: 77, type: !71)
!5789 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !5647, file: !5647, line: 77, type: !5790, isLocal: true, isDefinition: true, scopeLine: 78, flags: DIFlagPrototyped, isOptimized: true, unit: !658, variables: !5792)
!5790 = !DISubroutineType(types: !5791)
!5791 = !{!5650, !5651, !71, !71}
!5792 = !{!5793, !5794, !5788, !5795}
!5793 = !DILocalVariable(name: "x", arg: 1, scope: !5789, file: !5647, line: 77, type: !5651)
!5794 = !DILocalVariable(name: "base", arg: 2, scope: !5789, file: !5647, line: 77, type: !71)
!5795 = !DILocalVariable(name: "err", scope: !5789, file: !5647, line: 79, type: !5650)
!5796 = !DILocation(line: 77, column: 50, scope: !5789, inlinedAt: !5797)
!5797 = distinct !DILocation(line: 197, column: 22, scope: !5775)
!5798 = !DILocation(line: 79, column: 16, scope: !5789, inlinedAt: !5797)
!5799 = !DILocation(line: 67, column: 39, scope: !5777, inlinedAt: !5800)
!5800 = distinct !DILocation(line: 81, column: 12, scope: !5789, inlinedAt: !5797)
!5801 = !DILocation(line: 72, column: 6, scope: !5768, inlinedAt: !5800)
!5802 = !DILocation(line: 67, column: 7, scope: !5768, inlinedAt: !5800)
!5803 = !DILocation(line: 81, column: 9, scope: !5789, inlinedAt: !5797)
!5804 = !DILocation(line: 77, column: 50, scope: !5789, inlinedAt: !5805)
!5805 = distinct !DILocation(line: 202, column: 22, scope: !5775)
!5806 = !DILocation(line: 79, column: 16, scope: !5789, inlinedAt: !5805)
!5807 = !DILocation(line: 67, column: 39, scope: !5777, inlinedAt: !5808)
!5808 = distinct !DILocation(line: 81, column: 12, scope: !5789, inlinedAt: !5805)
!5809 = !DILocation(line: 72, column: 6, scope: !5768, inlinedAt: !5808)
!5810 = !DILocation(line: 67, column: 7, scope: !5768, inlinedAt: !5808)
!5811 = !DILocation(line: 81, column: 9, scope: !5789, inlinedAt: !5805)
!5812 = !DILocation(line: 77, column: 50, scope: !5789, inlinedAt: !5813)
!5813 = distinct !DILocation(line: 207, column: 22, scope: !5775)
!5814 = !DILocation(line: 79, column: 16, scope: !5789, inlinedAt: !5813)
!5815 = !DILocation(line: 67, column: 39, scope: !5777, inlinedAt: !5816)
!5816 = distinct !DILocation(line: 81, column: 12, scope: !5789, inlinedAt: !5813)
!5817 = !DILocation(line: 72, column: 6, scope: !5768, inlinedAt: !5816)
!5818 = !DILocation(line: 67, column: 7, scope: !5768, inlinedAt: !5816)
!5819 = !DILocation(line: 77, column: 50, scope: !5789, inlinedAt: !5820)
!5820 = distinct !DILocation(line: 212, column: 22, scope: !5775)
!5821 = !DILocation(line: 79, column: 16, scope: !5789, inlinedAt: !5820)
!5822 = !DILocation(line: 67, column: 39, scope: !5777, inlinedAt: !5823)
!5823 = distinct !DILocation(line: 81, column: 12, scope: !5789, inlinedAt: !5820)
!5824 = !DILocation(line: 72, column: 6, scope: !5768, inlinedAt: !5823)
!5825 = !DILocation(line: 67, column: 7, scope: !5768, inlinedAt: !5823)
!5826 = !DILocation(line: 81, column: 9, scope: !5789, inlinedAt: !5820)
!5827 = !DILocation(line: 77, column: 50, scope: !5789, inlinedAt: !5828)
!5828 = distinct !DILocation(line: 216, column: 22, scope: !5775)
!5829 = !DILocation(line: 79, column: 16, scope: !5789, inlinedAt: !5828)
!5830 = !DILocation(line: 67, column: 39, scope: !5777, inlinedAt: !5831)
!5831 = distinct !DILocation(line: 81, column: 12, scope: !5789, inlinedAt: !5828)
!5832 = !DILocation(line: 72, column: 6, scope: !5768, inlinedAt: !5831)
!5833 = !DILocation(line: 67, column: 7, scope: !5768, inlinedAt: !5831)
!5834 = !DILocation(line: 81, column: 9, scope: !5789, inlinedAt: !5828)
!5835 = !DILocation(line: 77, column: 50, scope: !5789, inlinedAt: !5836)
!5836 = distinct !DILocation(line: 221, column: 22, scope: !5775)
!5837 = !DILocation(line: 79, column: 16, scope: !5789, inlinedAt: !5836)
!5838 = !DILocation(line: 67, column: 39, scope: !5777, inlinedAt: !5839)
!5839 = distinct !DILocation(line: 81, column: 12, scope: !5789, inlinedAt: !5836)
!5840 = !DILocation(line: 72, column: 6, scope: !5768, inlinedAt: !5839)
!5841 = !DILocation(line: 67, column: 7, scope: !5768, inlinedAt: !5839)
!5842 = !DILocation(line: 81, column: 9, scope: !5789, inlinedAt: !5836)
!5843 = !DILocation(line: 60, column: 31, scope: !5768, inlinedAt: !5844)
!5844 = distinct !DILocation(line: 225, column: 22, scope: !5775)
!5845 = !DILocation(line: 67, column: 39, scope: !5777, inlinedAt: !5844)
!5846 = !DILocation(line: 72, column: 6, scope: !5768, inlinedAt: !5844)
!5847 = !DILocation(line: 67, column: 7, scope: !5768, inlinedAt: !5844)
!5848 = !DILocation(line: 226, column: 11, scope: !5775)
!5849 = !DILocation(line: 77, column: 50, scope: !5789, inlinedAt: !5850)
!5850 = distinct !DILocation(line: 229, column: 22, scope: !5775)
!5851 = !DILocation(line: 79, column: 16, scope: !5789, inlinedAt: !5850)
!5852 = !DILocation(line: 67, column: 39, scope: !5777, inlinedAt: !5853)
!5853 = distinct !DILocation(line: 81, column: 12, scope: !5789, inlinedAt: !5850)
!5854 = !DILocation(line: 72, column: 6, scope: !5768, inlinedAt: !5853)
!5855 = !DILocation(line: 67, column: 7, scope: !5768, inlinedAt: !5853)
!5856 = !DILocation(line: 81, column: 9, scope: !5789, inlinedAt: !5850)
!5857 = !DILocation(line: 77, column: 50, scope: !5789, inlinedAt: !5858)
!5858 = distinct !DILocation(line: 233, column: 22, scope: !5775)
!5859 = !DILocation(line: 79, column: 16, scope: !5789, inlinedAt: !5858)
!5860 = !DILocation(line: 67, column: 39, scope: !5777, inlinedAt: !5861)
!5861 = distinct !DILocation(line: 81, column: 12, scope: !5789, inlinedAt: !5858)
!5862 = !DILocation(line: 72, column: 6, scope: !5768, inlinedAt: !5861)
!5863 = !DILocation(line: 67, column: 7, scope: !5768, inlinedAt: !5861)
!5864 = !DILocation(line: 81, column: 9, scope: !5789, inlinedAt: !5858)
!5865 = !DILocation(line: 237, column: 16, scope: !5775)
!5866 = !DILocation(line: 238, column: 22, scope: !5775)
!5867 = !DILocation(line: 238, column: 11, scope: !5775)
!5868 = !DILocation(line: 241, column: 11, scope: !5667)
!5869 = !DILocation(line: 242, column: 10, scope: !5667)
!5870 = !DILocation(line: 243, column: 11, scope: !5871)
!5871 = distinct !DILexicalBlock(scope: !5667, file: !5647, line: 243, column: 11)
!5872 = !DILocation(line: 244, column: 13, scope: !5871)
!5873 = !DILocation(line: 243, column: 11, scope: !5667)
!5874 = !DILocation(line: 247, column: 8, scope: !5646)
!5875 = !DILocation(line: 248, column: 3, scope: !5646)
!5876 = !DILocation(line: 249, column: 1, scope: !5646)
!5877 = distinct !DISubprogram(name: "rpl_calloc", scope: !5878, file: !5878, line: 42, type: !2960, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !662, variables: !5879)
!5878 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5879 = !{!5880, !5881, !5882, !5883}
!5880 = !DILocalVariable(name: "n", arg: 1, scope: !5877, file: !5878, line: 42, type: !73)
!5881 = !DILocalVariable(name: "s", arg: 2, scope: !5877, file: !5878, line: 42, type: !73)
!5882 = !DILocalVariable(name: "result", scope: !5877, file: !5878, line: 44, type: !70)
!5883 = !DILocalVariable(name: "bytes", scope: !5884, file: !5878, line: 56, type: !73)
!5884 = distinct !DILexicalBlock(scope: !5885, file: !5878, line: 53, column: 5)
!5885 = distinct !DILexicalBlock(scope: !5877, file: !5878, line: 47, column: 7)
!5886 = !DILocation(line: 42, column: 20, scope: !5877)
!5887 = !DILocation(line: 42, column: 30, scope: !5877)
!5888 = !DILocation(line: 47, column: 9, scope: !5885)
!5889 = !DILocation(line: 47, column: 19, scope: !5890)
!5890 = !DILexicalBlockFile(scope: !5885, file: !5878, discriminator: 1)
!5891 = !DILocation(line: 47, column: 14, scope: !5885)
!5892 = !DILocation(line: 56, column: 24, scope: !5884)
!5893 = !DILocation(line: 56, column: 14, scope: !5884)
!5894 = !DILocation(line: 57, column: 17, scope: !5895)
!5895 = distinct !DILexicalBlock(scope: !5884, file: !5878, line: 57, column: 11)
!5896 = !DILocation(line: 57, column: 21, scope: !5895)
!5897 = !DILocation(line: 57, column: 11, scope: !5884)
!5898 = !DILocation(line: 59, column: 11, scope: !5899)
!5899 = distinct !DILexicalBlock(scope: !5895, file: !5878, line: 58, column: 9)
!5900 = !DILocation(line: 59, column: 17, scope: !5899)
!5901 = !DILocation(line: 65, column: 12, scope: !5877)
!5902 = !DILocation(line: 44, column: 9, scope: !5877)
!5903 = !DILocation(line: 72, column: 3, scope: !5877)
!5904 = !DILocation(line: 73, column: 1, scope: !5877)
!5905 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !5906, file: !5906, line: 334, type: !5907, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !664, variables: !5921)
!5906 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5907 = !DISubroutineType(types: !5908)
!5908 = !{!73, !5909, !81, !73, !5910}
!5909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3421, size: 64)
!5910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5911, size: 64)
!5911 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !3406, line: 107, baseType: !5912)
!5912 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !3406, line: 95, baseType: !5913)
!5913 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3406, line: 83, size: 64, elements: !5914)
!5914 = !{!5915, !5916}
!5915 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !5913, file: !3406, line: 85, baseType: !71, size: 32)
!5916 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !5913, file: !3406, line: 94, baseType: !5917, size: 32, offset: 32)
!5917 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5913, file: !3406, line: 86, size: 32, elements: !5918)
!5918 = !{!5919, !5920}
!5919 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !5917, file: !3406, line: 89, baseType: !83, size: 32)
!5920 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !5917, file: !3406, line: 93, baseType: !3416, size: 32)
!5921 = !{!5922, !5923, !5924, !5925, !5926, !5927, !5928}
!5922 = !DILocalVariable(name: "pwc", arg: 1, scope: !5905, file: !5906, line: 334, type: !5909)
!5923 = !DILocalVariable(name: "s", arg: 2, scope: !5905, file: !5906, line: 334, type: !81)
!5924 = !DILocalVariable(name: "n", arg: 3, scope: !5905, file: !5906, line: 334, type: !73)
!5925 = !DILocalVariable(name: "ps", arg: 4, scope: !5905, file: !5906, line: 334, type: !5910)
!5926 = !DILocalVariable(name: "ret", scope: !5905, file: !5906, line: 336, type: !73)
!5927 = !DILocalVariable(name: "wc", scope: !5905, file: !5906, line: 337, type: !3421)
!5928 = !DILocalVariable(name: "uc", scope: !5929, file: !5906, line: 398, type: !80)
!5929 = distinct !DILexicalBlock(scope: !5930, file: !5906, line: 397, column: 5)
!5930 = distinct !DILexicalBlock(scope: !5905, file: !5906, line: 396, column: 7)
!5931 = !DILocation(line: 334, column: 23, scope: !5905)
!5932 = !DILocation(line: 334, column: 40, scope: !5905)
!5933 = !DILocation(line: 334, column: 50, scope: !5905)
!5934 = !DILocation(line: 334, column: 64, scope: !5905)
!5935 = !DILocation(line: 337, column: 3, scope: !5905)
!5936 = !DILocation(line: 353, column: 9, scope: !5937)
!5937 = distinct !DILexicalBlock(scope: !5905, file: !5906, line: 353, column: 7)
!5938 = !DILocation(line: 353, column: 7, scope: !5905)
!5939 = !DILocation(line: 388, column: 9, scope: !5905)
!5940 = !DILocation(line: 336, column: 10, scope: !5905)
!5941 = !DILocation(line: 396, column: 19, scope: !5930)
!5942 = !DILocation(line: 396, column: 31, scope: !5943)
!5943 = !DILexicalBlockFile(scope: !5930, file: !5906, discriminator: 1)
!5944 = !DILocation(line: 396, column: 26, scope: !5930)
!5945 = !DILocation(line: 396, column: 41, scope: !5946)
!5946 = !DILexicalBlockFile(scope: !5930, file: !5906, discriminator: 2)
!5947 = !DILocation(line: 396, column: 7, scope: !5948)
!5948 = !DILexicalBlockFile(scope: !5905, file: !5906, discriminator: 2)
!5949 = !DILocation(line: 398, column: 26, scope: !5929)
!5950 = !DILocation(line: 398, column: 21, scope: !5929)
!5951 = !DILocation(line: 399, column: 14, scope: !5929)
!5952 = !DILocation(line: 399, column: 12, scope: !5929)
!5953 = !DILocation(line: 405, column: 1, scope: !5905)
!5954 = distinct !DISubprogram(name: "close_stream", scope: !5955, file: !5955, line: 56, type: !5956, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !667, variables: !5998)
!5955 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5956 = !DISubroutineType(types: !5957)
!5957 = !{!71, !5958}
!5958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5959, size: 64)
!5959 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3083, line: 49, baseType: !5960)
!5960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3105, line: 241, size: 1728, elements: !5961)
!5961 = !{!5962, !5963, !5964, !5965, !5966, !5967, !5968, !5969, !5970, !5971, !5972, !5973, !5974, !5982, !5983, !5984, !5985, !5986, !5987, !5988, !5989, !5990, !5991, !5992, !5993, !5994, !5995, !5996, !5997}
!5962 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5960, file: !3105, line: 242, baseType: !71, size: 32)
!5963 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5960, file: !3105, line: 247, baseType: !68, size: 64, offset: 64)
!5964 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5960, file: !3105, line: 248, baseType: !68, size: 64, offset: 128)
!5965 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5960, file: !3105, line: 249, baseType: !68, size: 64, offset: 192)
!5966 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5960, file: !3105, line: 250, baseType: !68, size: 64, offset: 256)
!5967 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5960, file: !3105, line: 251, baseType: !68, size: 64, offset: 320)
!5968 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5960, file: !3105, line: 252, baseType: !68, size: 64, offset: 384)
!5969 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5960, file: !3105, line: 253, baseType: !68, size: 64, offset: 448)
!5970 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5960, file: !3105, line: 254, baseType: !68, size: 64, offset: 512)
!5971 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5960, file: !3105, line: 256, baseType: !68, size: 64, offset: 576)
!5972 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5960, file: !3105, line: 257, baseType: !68, size: 64, offset: 640)
!5973 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5960, file: !3105, line: 258, baseType: !68, size: 64, offset: 704)
!5974 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5960, file: !3105, line: 260, baseType: !5975, size: 64, offset: 768)
!5975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5976, size: 64)
!5976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3105, line: 156, size: 192, elements: !5977)
!5977 = !{!5978, !5979, !5981}
!5978 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !5976, file: !3105, line: 157, baseType: !5975, size: 64)
!5979 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !5976, file: !3105, line: 158, baseType: !5980, size: 64, offset: 64)
!5980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5960, size: 64)
!5981 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !5976, file: !3105, line: 162, baseType: !71, size: 32, offset: 128)
!5982 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5960, file: !3105, line: 262, baseType: !5980, size: 64, offset: 832)
!5983 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5960, file: !3105, line: 264, baseType: !71, size: 32, offset: 896)
!5984 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5960, file: !3105, line: 268, baseType: !71, size: 32, offset: 928)
!5985 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5960, file: !3105, line: 270, baseType: !3084, size: 64, offset: 960)
!5986 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5960, file: !3105, line: 274, baseType: !72, size: 16, offset: 1024)
!5987 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5960, file: !3105, line: 275, baseType: !3133, size: 8, offset: 1040)
!5988 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5960, file: !3105, line: 276, baseType: !3135, size: 8, offset: 1048)
!5989 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5960, file: !3105, line: 280, baseType: !3139, size: 64, offset: 1088)
!5990 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5960, file: !3105, line: 289, baseType: !3142, size: 64, offset: 1152)
!5991 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !5960, file: !3105, line: 297, baseType: !70, size: 64, offset: 1216)
!5992 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !5960, file: !3105, line: 298, baseType: !70, size: 64, offset: 1280)
!5993 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !5960, file: !3105, line: 299, baseType: !70, size: 64, offset: 1344)
!5994 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !5960, file: !3105, line: 300, baseType: !70, size: 64, offset: 1408)
!5995 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5960, file: !3105, line: 302, baseType: !73, size: 64, offset: 1472)
!5996 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5960, file: !3105, line: 303, baseType: !71, size: 32, offset: 1536)
!5997 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5960, file: !3105, line: 305, baseType: !3150, size: 160, offset: 1568)
!5998 = !{!5999, !6000, !6002, !6003}
!5999 = !DILocalVariable(name: "stream", arg: 1, scope: !5954, file: !5955, line: 56, type: !5958)
!6000 = !DILocalVariable(name: "some_pending", scope: !5954, file: !5955, line: 58, type: !6001)
!6001 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !87)
!6002 = !DILocalVariable(name: "prev_fail", scope: !5954, file: !5955, line: 59, type: !6001)
!6003 = !DILocalVariable(name: "fclose_fail", scope: !5954, file: !5955, line: 60, type: !6001)
!6004 = !DILocation(line: 56, column: 21, scope: !5954)
!6005 = !DILocation(line: 58, column: 30, scope: !5954)
!6006 = !DILocalVariable(name: "__stream", arg: 1, scope: !6007, file: !6008, line: 132, type: !5958)
!6007 = distinct !DISubprogram(name: "ferror_unlocked", scope: !6008, file: !6008, line: 132, type: !5956, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !667, variables: !6009)
!6008 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!6009 = !{!6006}
!6010 = !DILocation(line: 132, column: 1, scope: !6007, inlinedAt: !6011)
!6011 = distinct !DILocation(line: 59, column: 27, scope: !5954)
!6012 = !DILocation(line: 134, column: 10, scope: !6007, inlinedAt: !6011)
!6013 = !{!6014, !904, i64 0}
!6014 = !{!"_IO_FILE", !904, i64 0, !697, i64 8, !697, i64 16, !697, i64 24, !697, i64 32, !697, i64 40, !697, i64 48, !697, i64 56, !697, i64 64, !697, i64 72, !697, i64 80, !697, i64 88, !697, i64 96, !697, i64 104, !904, i64 112, !904, i64 116, !971, i64 120, !1144, i64 128, !698, i64 130, !698, i64 131, !697, i64 136, !971, i64 144, !697, i64 152, !697, i64 160, !697, i64 168, !697, i64 176, !971, i64 184, !904, i64 192, !698, i64 196}
!6015 = !DILocation(line: 59, column: 43, scope: !5954)
!6016 = !DILocation(line: 60, column: 29, scope: !5954)
!6017 = !DILocation(line: 60, column: 45, scope: !5954)
!6018 = !DILocation(line: 70, column: 17, scope: !6019)
!6019 = distinct !DILexicalBlock(scope: !5954, file: !5955, line: 70, column: 7)
!6020 = !DILocation(line: 70, column: 33, scope: !6021)
!6021 = !DILexicalBlockFile(scope: !6019, file: !5955, discriminator: 1)
!6022 = !DILocation(line: 70, column: 53, scope: !6023)
!6023 = !DILexicalBlockFile(scope: !6019, file: !5955, discriminator: 3)
!6024 = !DILocation(line: 70, column: 7, scope: !6025)
!6025 = !DILexicalBlockFile(scope: !5954, file: !5955, discriminator: 3)
!6026 = !DILocation(line: 72, column: 11, scope: !6027)
!6027 = distinct !DILexicalBlock(scope: !6019, file: !5955, line: 71, column: 5)
!6028 = !DILocation(line: 73, column: 9, scope: !6029)
!6029 = distinct !DILexicalBlock(scope: !6027, file: !5955, line: 72, column: 11)
!6030 = !DILocation(line: 73, column: 15, scope: !6029)
!6031 = !DILocation(line: 78, column: 1, scope: !5954)
!6032 = distinct !DISubprogram(name: "hard_locale", scope: !6033, file: !6033, line: 38, type: !6034, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !669, variables: !6036)
!6033 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!6034 = !DISubroutineType(types: !6035)
!6035 = !{!87, !71}
!6036 = !{!6037, !6038, !6039, !6040, !6047, !6048, !6050, !6051, !6053, !6054, !6056}
!6037 = !DILocalVariable(name: "category", arg: 1, scope: !6032, file: !6033, line: 38, type: !71)
!6038 = !DILocalVariable(name: "hard", scope: !6032, file: !6033, line: 40, type: !87)
!6039 = !DILocalVariable(name: "p", scope: !6032, file: !6033, line: 41, type: !81)
!6040 = !DILocalVariable(name: "__s1_len", scope: !6041, file: !6033, line: 47, type: !73)
!6041 = distinct !DILexicalBlock(scope: !6042, file: !6033, line: 47, column: 15)
!6042 = distinct !DILexicalBlock(scope: !6043, file: !6033, line: 47, column: 15)
!6043 = distinct !DILexicalBlock(scope: !6044, file: !6033, line: 46, column: 9)
!6044 = distinct !DILexicalBlock(scope: !6045, file: !6033, line: 45, column: 11)
!6045 = distinct !DILexicalBlock(scope: !6046, file: !6033, line: 44, column: 5)
!6046 = distinct !DILexicalBlock(scope: !6032, file: !6033, line: 43, column: 7)
!6047 = !DILocalVariable(name: "__s2_len", scope: !6041, file: !6033, line: 47, type: !73)
!6048 = !DILocalVariable(name: "__s2", scope: !6049, file: !6033, line: 47, type: !78)
!6049 = distinct !DILexicalBlock(scope: !6041, file: !6033, line: 47, column: 15)
!6050 = !DILocalVariable(name: "__result", scope: !6049, file: !6033, line: 47, type: !71)
!6051 = !DILocalVariable(name: "__s1_len", scope: !6052, file: !6033, line: 47, type: !73)
!6052 = distinct !DILexicalBlock(scope: !6042, file: !6033, line: 47, column: 39)
!6053 = !DILocalVariable(name: "__s2_len", scope: !6052, file: !6033, line: 47, type: !73)
!6054 = !DILocalVariable(name: "__s2", scope: !6055, file: !6033, line: 47, type: !78)
!6055 = distinct !DILexicalBlock(scope: !6052, file: !6033, line: 47, column: 39)
!6056 = !DILocalVariable(name: "__result", scope: !6055, file: !6033, line: 47, type: !71)
!6057 = !DILocation(line: 38, column: 18, scope: !6032)
!6058 = !DILocation(line: 40, column: 8, scope: !6032)
!6059 = !DILocation(line: 41, column: 19, scope: !6032)
!6060 = !DILocation(line: 41, column: 15, scope: !6032)
!6061 = !DILocation(line: 43, column: 7, scope: !6046)
!6062 = !DILocation(line: 43, column: 7, scope: !6032)
!6063 = !DILocation(line: 47, column: 15, scope: !6041)
!6064 = !DILocation(line: 47, column: 15, scope: !6049)
!6065 = !DILocation(line: 47, column: 15, scope: !6066)
!6066 = !DILexicalBlockFile(scope: !6049, file: !6033, discriminator: 2)
!6067 = !DILocation(line: 47, column: 15, scope: !6068)
!6068 = !DILexicalBlockFile(scope: !6069, file: !6033, discriminator: 3)
!6069 = distinct !DILexicalBlock(scope: !6049, file: !6033, line: 47, column: 15)
!6070 = !DILocation(line: 47, column: 15, scope: !6071)
!6071 = !DILexicalBlockFile(scope: !6069, file: !6033, discriminator: 2)
!6072 = !DILocation(line: 47, column: 15, scope: !6073)
!6073 = !DILexicalBlockFile(scope: !6074, file: !6033, discriminator: 4)
!6074 = distinct !DILexicalBlock(scope: !6069, file: !6033, line: 47, column: 15)
!6075 = !DILocation(line: 47, column: 15, scope: !6076)
!6076 = !DILexicalBlockFile(scope: !6041, file: !6033, discriminator: 11)
!6077 = !DILocation(line: 47, column: 36, scope: !6078)
!6078 = !DILexicalBlockFile(scope: !6042, file: !6033, discriminator: 13)
!6079 = !DILocation(line: 47, column: 39, scope: !6052)
!6080 = !DILocation(line: 47, column: 39, scope: !6081)
!6081 = !DILexicalBlockFile(scope: !6052, file: !6033, discriminator: 26)
!6082 = !DILocation(line: 47, column: 59, scope: !6083)
!6083 = !DILexicalBlockFile(scope: !6042, file: !6033, discriminator: 27)
!6084 = !DILocation(line: 47, column: 15, scope: !6085)
!6085 = !DILexicalBlockFile(scope: !6043, file: !6033, discriminator: 27)
!6086 = !DILocation(line: 48, column: 13, scope: !6042)
!6087 = !DILocation(line: 71, column: 3, scope: !6032)
!6088 = distinct !DISubprogram(name: "locale_charset", scope: !603, file: !603, line: 393, type: !6089, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !259, variables: !6091)
!6089 = !DISubroutineType(types: !6090)
!6090 = !{!81}
!6091 = !{!6092, !6093, !6094, !6099}
!6092 = !DILocalVariable(name: "codeset", scope: !6088, file: !603, line: 395, type: !81)
!6093 = !DILocalVariable(name: "aliases", scope: !6088, file: !603, line: 396, type: !81)
!6094 = !DILocalVariable(name: "__s1_len", scope: !6095, file: !603, line: 592, type: !73)
!6095 = distinct !DILexicalBlock(scope: !6096, file: !603, line: 592, column: 9)
!6096 = distinct !DILexicalBlock(scope: !6097, file: !603, line: 592, column: 9)
!6097 = distinct !DILexicalBlock(scope: !6098, file: !603, line: 589, column: 3)
!6098 = distinct !DILexicalBlock(scope: !6088, file: !603, line: 589, column: 3)
!6099 = !DILocalVariable(name: "__s2_len", scope: !6095, file: !603, line: 592, type: !73)
!6100 = !DILocalVariable(name: "buf1", scope: !6101, file: !603, line: 196, type: !6168)
!6101 = distinct !DILexicalBlock(scope: !6102, file: !603, line: 194, column: 21)
!6102 = distinct !DILexicalBlock(scope: !6103, file: !603, line: 193, column: 19)
!6103 = distinct !DILexicalBlock(scope: !6104, file: !603, line: 193, column: 19)
!6104 = distinct !DILexicalBlock(scope: !6105, file: !603, line: 188, column: 17)
!6105 = distinct !DILexicalBlock(scope: !6106, file: !603, line: 181, column: 19)
!6106 = distinct !DILexicalBlock(scope: !6107, file: !603, line: 177, column: 13)
!6107 = distinct !DILexicalBlock(scope: !6108, file: !603, line: 173, column: 15)
!6108 = distinct !DILexicalBlock(scope: !6109, file: !603, line: 161, column: 9)
!6109 = distinct !DILexicalBlock(scope: !6110, file: !603, line: 157, column: 11)
!6110 = distinct !DILexicalBlock(scope: !6111, file: !603, line: 130, column: 5)
!6111 = distinct !DILexicalBlock(scope: !6112, file: !603, line: 129, column: 7)
!6112 = distinct !DISubprogram(name: "get_charset_aliases", scope: !603, file: !603, line: 124, type: !6089, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !259, variables: !6113)
!6113 = !{!6114, !6115, !6116, !6117, !6118, !6120, !6121, !6122, !6123, !6164, !6165, !6166, !6100, !6167, !6171, !6172, !6173}
!6114 = !DILocalVariable(name: "cp", scope: !6112, file: !603, line: 126, type: !81)
!6115 = !DILocalVariable(name: "dir", scope: !6110, file: !603, line: 132, type: !81)
!6116 = !DILocalVariable(name: "base", scope: !6110, file: !603, line: 133, type: !81)
!6117 = !DILocalVariable(name: "file_name", scope: !6110, file: !603, line: 134, type: !68)
!6118 = !DILocalVariable(name: "dir_len", scope: !6119, file: !603, line: 144, type: !73)
!6119 = distinct !DILexicalBlock(scope: !6110, file: !603, line: 143, column: 7)
!6120 = !DILocalVariable(name: "base_len", scope: !6119, file: !603, line: 145, type: !73)
!6121 = !DILocalVariable(name: "add_slash", scope: !6119, file: !603, line: 146, type: !71)
!6122 = !DILocalVariable(name: "fd", scope: !6108, file: !603, line: 162, type: !71)
!6123 = !DILocalVariable(name: "fp", scope: !6106, file: !603, line: 178, type: !6124)
!6124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6125, size: 64)
!6125 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3083, line: 49, baseType: !6126)
!6126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3105, line: 241, size: 1728, elements: !6127)
!6127 = !{!6128, !6129, !6130, !6131, !6132, !6133, !6134, !6135, !6136, !6137, !6138, !6139, !6140, !6148, !6149, !6150, !6151, !6152, !6153, !6154, !6155, !6156, !6157, !6158, !6159, !6160, !6161, !6162, !6163}
!6128 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !6126, file: !3105, line: 242, baseType: !71, size: 32)
!6129 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !6126, file: !3105, line: 247, baseType: !68, size: 64, offset: 64)
!6130 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !6126, file: !3105, line: 248, baseType: !68, size: 64, offset: 128)
!6131 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !6126, file: !3105, line: 249, baseType: !68, size: 64, offset: 192)
!6132 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !6126, file: !3105, line: 250, baseType: !68, size: 64, offset: 256)
!6133 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !6126, file: !3105, line: 251, baseType: !68, size: 64, offset: 320)
!6134 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !6126, file: !3105, line: 252, baseType: !68, size: 64, offset: 384)
!6135 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !6126, file: !3105, line: 253, baseType: !68, size: 64, offset: 448)
!6136 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !6126, file: !3105, line: 254, baseType: !68, size: 64, offset: 512)
!6137 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !6126, file: !3105, line: 256, baseType: !68, size: 64, offset: 576)
!6138 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !6126, file: !3105, line: 257, baseType: !68, size: 64, offset: 640)
!6139 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !6126, file: !3105, line: 258, baseType: !68, size: 64, offset: 704)
!6140 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !6126, file: !3105, line: 260, baseType: !6141, size: 64, offset: 768)
!6141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6142, size: 64)
!6142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3105, line: 156, size: 192, elements: !6143)
!6143 = !{!6144, !6145, !6147}
!6144 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !6142, file: !3105, line: 157, baseType: !6141, size: 64)
!6145 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !6142, file: !3105, line: 158, baseType: !6146, size: 64, offset: 64)
!6146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6126, size: 64)
!6147 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !6142, file: !3105, line: 162, baseType: !71, size: 32, offset: 128)
!6148 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !6126, file: !3105, line: 262, baseType: !6146, size: 64, offset: 832)
!6149 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !6126, file: !3105, line: 264, baseType: !71, size: 32, offset: 896)
!6150 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !6126, file: !3105, line: 268, baseType: !71, size: 32, offset: 928)
!6151 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !6126, file: !3105, line: 270, baseType: !3084, size: 64, offset: 960)
!6152 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !6126, file: !3105, line: 274, baseType: !72, size: 16, offset: 1024)
!6153 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !6126, file: !3105, line: 275, baseType: !3133, size: 8, offset: 1040)
!6154 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !6126, file: !3105, line: 276, baseType: !3135, size: 8, offset: 1048)
!6155 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !6126, file: !3105, line: 280, baseType: !3139, size: 64, offset: 1088)
!6156 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !6126, file: !3105, line: 289, baseType: !3142, size: 64, offset: 1152)
!6157 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !6126, file: !3105, line: 297, baseType: !70, size: 64, offset: 1216)
!6158 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !6126, file: !3105, line: 298, baseType: !70, size: 64, offset: 1280)
!6159 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !6126, file: !3105, line: 299, baseType: !70, size: 64, offset: 1344)
!6160 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !6126, file: !3105, line: 300, baseType: !70, size: 64, offset: 1408)
!6161 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !6126, file: !3105, line: 302, baseType: !73, size: 64, offset: 1472)
!6162 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !6126, file: !3105, line: 303, baseType: !71, size: 32, offset: 1536)
!6163 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !6126, file: !3105, line: 305, baseType: !3150, size: 160, offset: 1568)
!6164 = !DILocalVariable(name: "res_ptr", scope: !6104, file: !603, line: 190, type: !68)
!6165 = !DILocalVariable(name: "res_size", scope: !6104, file: !603, line: 191, type: !73)
!6166 = !DILocalVariable(name: "c", scope: !6101, file: !603, line: 195, type: !71)
!6167 = !DILocalVariable(name: "buf2", scope: !6101, file: !603, line: 197, type: !6168)
!6168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 408, elements: !6169)
!6169 = !{!6170}
!6170 = !DISubrange(count: 51)
!6171 = !DILocalVariable(name: "l1", scope: !6101, file: !603, line: 198, type: !73)
!6172 = !DILocalVariable(name: "l2", scope: !6101, file: !603, line: 198, type: !73)
!6173 = !DILocalVariable(name: "old_res_ptr", scope: !6101, file: !603, line: 199, type: !68)
!6174 = !DILocation(line: 196, column: 28, scope: !6101, inlinedAt: !6175)
!6175 = distinct !DILocation(line: 589, column: 18, scope: !6098)
!6176 = !DILocation(line: 197, column: 28, scope: !6101, inlinedAt: !6175)
!6177 = !DILocation(line: 403, column: 13, scope: !6088)
!6178 = !DILocation(line: 395, column: 15, scope: !6088)
!6179 = !DILocation(line: 584, column: 15, scope: !6180)
!6180 = distinct !DILexicalBlock(scope: !6088, file: !603, line: 584, column: 7)
!6181 = !DILocation(line: 584, column: 7, scope: !6088)
!6182 = !DILocation(line: 128, column: 8, scope: !6112, inlinedAt: !6175)
!6183 = !DILocation(line: 126, column: 15, scope: !6112, inlinedAt: !6175)
!6184 = !DILocation(line: 129, column: 10, scope: !6111, inlinedAt: !6175)
!6185 = !DILocation(line: 129, column: 7, scope: !6112, inlinedAt: !6175)
!6186 = !DILocation(line: 138, column: 13, scope: !6110, inlinedAt: !6175)
!6187 = !DILocation(line: 132, column: 19, scope: !6110, inlinedAt: !6175)
!6188 = !DILocation(line: 139, column: 15, scope: !6189, inlinedAt: !6175)
!6189 = distinct !DILexicalBlock(scope: !6110, file: !603, line: 139, column: 11)
!6190 = !DILocation(line: 139, column: 23, scope: !6189, inlinedAt: !6175)
!6191 = !DILocation(line: 139, column: 26, scope: !6192, inlinedAt: !6175)
!6192 = !DILexicalBlockFile(scope: !6189, file: !603, discriminator: 1)
!6193 = !DILocation(line: 139, column: 33, scope: !6192, inlinedAt: !6175)
!6194 = !DILocation(line: 139, column: 11, scope: !6195, inlinedAt: !6175)
!6195 = !DILexicalBlockFile(scope: !6110, file: !603, discriminator: 1)
!6196 = !DILocation(line: 140, column: 9, scope: !6189, inlinedAt: !6175)
!6197 = !DILocation(line: 144, column: 26, scope: !6119, inlinedAt: !6175)
!6198 = !DILocation(line: 144, column: 16, scope: !6119, inlinedAt: !6175)
!6199 = !DILocation(line: 145, column: 16, scope: !6119, inlinedAt: !6175)
!6200 = !DILocation(line: 146, column: 34, scope: !6119, inlinedAt: !6175)
!6201 = !DILocation(line: 146, column: 38, scope: !6119, inlinedAt: !6175)
!6202 = !DILocation(line: 146, column: 42, scope: !6203, inlinedAt: !6175)
!6203 = !DILexicalBlockFile(scope: !6119, file: !603, discriminator: 1)
!6204 = !DILocation(line: 146, column: 41, scope: !6203, inlinedAt: !6175)
!6205 = !DILocation(line: 147, column: 48, scope: !6119, inlinedAt: !6175)
!6206 = !DILocation(line: 147, column: 46, scope: !6119, inlinedAt: !6175)
!6207 = !DILocation(line: 147, column: 69, scope: !6119, inlinedAt: !6175)
!6208 = !DILocation(line: 147, column: 30, scope: !6119, inlinedAt: !6175)
!6209 = !DILocation(line: 134, column: 13, scope: !6110, inlinedAt: !6175)
!6210 = !DILocation(line: 148, column: 13, scope: !6119, inlinedAt: !6175)
!6211 = !DILocation(line: 150, column: 13, scope: !6212, inlinedAt: !6175)
!6212 = distinct !DILexicalBlock(scope: !6213, file: !603, line: 149, column: 11)
!6213 = distinct !DILexicalBlock(scope: !6119, file: !603, line: 148, column: 13)
!6214 = !DILocation(line: 151, column: 17, scope: !6212, inlinedAt: !6175)
!6215 = !DILocation(line: 152, column: 34, scope: !6216, inlinedAt: !6175)
!6216 = distinct !DILexicalBlock(scope: !6212, file: !603, line: 151, column: 17)
!6217 = !DILocation(line: 153, column: 41, scope: !6212, inlinedAt: !6175)
!6218 = !DILocation(line: 153, column: 13, scope: !6212, inlinedAt: !6175)
!6219 = !DILocation(line: 157, column: 11, scope: !6110, inlinedAt: !6175)
!6220 = !DILocation(line: 171, column: 16, scope: !6108, inlinedAt: !6175)
!6221 = !DILocation(line: 162, column: 15, scope: !6108, inlinedAt: !6175)
!6222 = !DILocation(line: 173, column: 18, scope: !6107, inlinedAt: !6175)
!6223 = !DILocation(line: 173, column: 15, scope: !6108, inlinedAt: !6175)
!6224 = !DILocation(line: 180, column: 20, scope: !6106, inlinedAt: !6175)
!6225 = !DILocation(line: 178, column: 21, scope: !6106, inlinedAt: !6175)
!6226 = !DILocation(line: 181, column: 22, scope: !6105, inlinedAt: !6175)
!6227 = !DILocation(line: 181, column: 19, scope: !6106, inlinedAt: !6175)
!6228 = !DILocation(line: 190, column: 25, scope: !6104, inlinedAt: !6175)
!6229 = !DILocation(line: 184, column: 19, scope: !6230, inlinedAt: !6175)
!6230 = distinct !DILexicalBlock(scope: !6105, file: !603, line: 182, column: 17)
!6231 = !DILocation(line: 186, column: 17, scope: !6230, inlinedAt: !6175)
!6232 = !DILocation(line: 191, column: 26, scope: !6104, inlinedAt: !6175)
!6233 = !DILocation(line: 196, column: 23, scope: !6101, inlinedAt: !6175)
!6234 = !DILocation(line: 197, column: 23, scope: !6101, inlinedAt: !6175)
!6235 = !DILocalVariable(name: "__fp", arg: 1, scope: !6236, file: !6008, line: 63, type: !6124)
!6236 = distinct !DISubprogram(name: "getc_unlocked", scope: !6008, file: !6008, line: 63, type: !6237, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !259, variables: !6239)
!6237 = !DISubroutineType(types: !6238)
!6238 = !{!71, !6124}
!6239 = !{!6235}
!6240 = !DILocation(line: 63, column: 22, scope: !6236, inlinedAt: !6241)
!6241 = distinct !DILocation(line: 201, column: 27, scope: !6101, inlinedAt: !6175)
!6242 = !DILocation(line: 65, column: 10, scope: !6236, inlinedAt: !6241)
!6243 = !{!6014, !697, i64 8}
!6244 = !{!6014, !697, i64 16}
!6245 = !{!"branch_weights", i32 2000, i32 1}
!6246 = !DILocation(line: 65, column: 10, scope: !6247, inlinedAt: !6241)
!6247 = !DILexicalBlockFile(scope: !6236, file: !6008, discriminator: 1)
!6248 = !DILocation(line: 65, column: 10, scope: !6249, inlinedAt: !6241)
!6249 = !DILexicalBlockFile(scope: !6236, file: !6008, discriminator: 2)
!6250 = !DILocation(line: 65, column: 10, scope: !6251, inlinedAt: !6241)
!6251 = !DILexicalBlockFile(scope: !6236, file: !6008, discriminator: 3)
!6252 = !DILocation(line: 195, column: 27, scope: !6101, inlinedAt: !6175)
!6253 = !DILocation(line: 202, column: 27, scope: !6101, inlinedAt: !6175)
!6254 = !DILocation(line: 63, column: 22, scope: !6236, inlinedAt: !6255)
!6255 = distinct !DILocation(line: 210, column: 33, scope: !6256, inlinedAt: !6175)
!6256 = distinct !DILexicalBlock(scope: !6257, file: !603, line: 207, column: 25)
!6257 = distinct !DILexicalBlock(scope: !6101, file: !603, line: 206, column: 27)
!6258 = !DILocation(line: 65, column: 10, scope: !6236, inlinedAt: !6255)
!6259 = !DILocation(line: 65, column: 10, scope: !6247, inlinedAt: !6255)
!6260 = !DILocation(line: 65, column: 10, scope: !6249, inlinedAt: !6255)
!6261 = !DILocation(line: 65, column: 10, scope: !6251, inlinedAt: !6255)
!6262 = !DILocation(line: 210, column: 29, scope: !6263, inlinedAt: !6175)
!6263 = !DILexicalBlockFile(scope: !6256, file: !603, discriminator: 1)
!6264 = distinct !{!6264, !6265, !6266}
!6265 = !DILocation(line: 193, column: 19, scope: !6103)
!6266 = !DILocation(line: 241, column: 21, scope: !6103)
!6267 = !DILocation(line: 216, column: 23, scope: !6101, inlinedAt: !6175)
!6268 = !DILocation(line: 217, column: 27, scope: !6269, inlinedAt: !6175)
!6269 = distinct !DILexicalBlock(scope: !6101, file: !603, line: 217, column: 27)
!6270 = !DILocation(line: 217, column: 64, scope: !6269, inlinedAt: !6175)
!6271 = !DILocation(line: 217, column: 27, scope: !6101, inlinedAt: !6175)
!6272 = !DILocation(line: 219, column: 28, scope: !6101, inlinedAt: !6175)
!6273 = !DILocation(line: 198, column: 30, scope: !6101, inlinedAt: !6175)
!6274 = !DILocation(line: 220, column: 28, scope: !6101, inlinedAt: !6175)
!6275 = !DILocation(line: 198, column: 34, scope: !6101, inlinedAt: !6175)
!6276 = !DILocation(line: 199, column: 29, scope: !6101, inlinedAt: !6175)
!6277 = !DILocation(line: 222, column: 36, scope: !6278, inlinedAt: !6175)
!6278 = distinct !DILexicalBlock(scope: !6101, file: !603, line: 222, column: 27)
!6279 = !DILocation(line: 222, column: 27, scope: !6101, inlinedAt: !6175)
!6280 = !DILocation(line: 225, column: 63, scope: !6281, inlinedAt: !6175)
!6281 = distinct !DILexicalBlock(scope: !6278, file: !603, line: 223, column: 25)
!6282 = !DILocation(line: 225, column: 46, scope: !6281, inlinedAt: !6175)
!6283 = !DILocation(line: 226, column: 25, scope: !6281, inlinedAt: !6175)
!6284 = !DILocation(line: 229, column: 36, scope: !6285, inlinedAt: !6175)
!6285 = distinct !DILexicalBlock(scope: !6278, file: !603, line: 228, column: 25)
!6286 = !DILocation(line: 230, column: 73, scope: !6285, inlinedAt: !6175)
!6287 = !DILocation(line: 230, column: 46, scope: !6285, inlinedAt: !6175)
!6288 = !DILocation(line: 232, column: 35, scope: !6289, inlinedAt: !6175)
!6289 = distinct !DILexicalBlock(scope: !6101, file: !603, line: 232, column: 27)
!6290 = !DILocation(line: 232, column: 27, scope: !6101, inlinedAt: !6175)
!6291 = !DILocation(line: 236, column: 27, scope: !6292, inlinedAt: !6175)
!6292 = distinct !DILexicalBlock(scope: !6289, file: !603, line: 233, column: 25)
!6293 = !DILocation(line: 237, column: 27, scope: !6292, inlinedAt: !6175)
!6294 = !DILocation(line: 239, column: 39, scope: !6101, inlinedAt: !6175)
!6295 = !DILocation(line: 239, column: 50, scope: !6101, inlinedAt: !6175)
!6296 = !DILocation(line: 239, column: 61, scope: !6101, inlinedAt: !6175)
!6297 = !DILocalVariable(name: "__dest", arg: 1, scope: !6298, file: !3006, line: 107, type: !3009)
!6298 = distinct !DISubprogram(name: "strcpy", scope: !3006, file: !3006, line: 107, type: !3007, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !259, variables: !6299)
!6299 = !{!6297, !6300}
!6300 = !DILocalVariable(name: "__src", arg: 2, scope: !6298, file: !3006, line: 107, type: !3010)
!6301 = !DILocation(line: 107, column: 1, scope: !6298, inlinedAt: !6302)
!6302 = distinct !DILocation(line: 239, column: 23, scope: !6101, inlinedAt: !6175)
!6303 = !DILocation(line: 109, column: 49, scope: !6298, inlinedAt: !6302)
!6304 = !DILocation(line: 109, column: 10, scope: !6298, inlinedAt: !6302)
!6305 = !DILocation(line: 107, column: 1, scope: !6298, inlinedAt: !6306)
!6306 = distinct !DILocation(line: 240, column: 23, scope: !6101, inlinedAt: !6175)
!6307 = !DILocation(line: 109, column: 49, scope: !6298, inlinedAt: !6306)
!6308 = !DILocation(line: 109, column: 10, scope: !6298, inlinedAt: !6306)
!6309 = !DILocation(line: 241, column: 21, scope: !6102, inlinedAt: !6175)
!6310 = !DILocation(line: 242, column: 19, scope: !6104, inlinedAt: !6175)
!6311 = !DILocation(line: 243, column: 32, scope: !6312, inlinedAt: !6175)
!6312 = distinct !DILexicalBlock(scope: !6104, file: !603, line: 243, column: 23)
!6313 = !DILocation(line: 243, column: 23, scope: !6104, inlinedAt: !6175)
!6314 = !DILocation(line: 247, column: 33, scope: !6315, inlinedAt: !6175)
!6315 = distinct !DILexicalBlock(scope: !6312, file: !603, line: 246, column: 21)
!6316 = !DILocation(line: 247, column: 45, scope: !6315, inlinedAt: !6175)
!6317 = !DILocation(line: 253, column: 11, scope: !6108, inlinedAt: !6175)
!6318 = !DILocation(line: 377, column: 23, scope: !6110, inlinedAt: !6175)
!6319 = !DILocation(line: 378, column: 5, scope: !6110, inlinedAt: !6175)
!6320 = !DILocation(line: 396, column: 15, scope: !6088)
!6321 = !DILocation(line: 590, column: 8, scope: !6097)
!6322 = !DILocation(line: 590, column: 17, scope: !6097)
!6323 = !DILocation(line: 589, column: 3, scope: !6324)
!6324 = !DILexicalBlockFile(scope: !6098, file: !603, discriminator: 1)
!6325 = !DILocation(line: 592, column: 9, scope: !6095)
!6326 = !DILocation(line: 592, column: 35, scope: !6096)
!6327 = !DILocation(line: 593, column: 9, scope: !6096)
!6328 = !DILocation(line: 593, column: 24, scope: !6329)
!6329 = !DILexicalBlockFile(scope: !6096, file: !603, discriminator: 1)
!6330 = !DILocation(line: 593, column: 31, scope: !6329)
!6331 = !DILocation(line: 593, column: 34, scope: !6332)
!6332 = !DILexicalBlockFile(scope: !6096, file: !603, discriminator: 2)
!6333 = !DILocation(line: 593, column: 45, scope: !6332)
!6334 = !DILocation(line: 592, column: 9, scope: !6335)
!6335 = !DILexicalBlockFile(scope: !6097, file: !603, discriminator: 1)
!6336 = !DILocation(line: 595, column: 29, scope: !6337)
!6337 = distinct !DILexicalBlock(scope: !6096, file: !603, line: 594, column: 7)
!6338 = !DILocation(line: 595, column: 27, scope: !6337)
!6339 = !DILocation(line: 595, column: 46, scope: !6337)
!6340 = !DILocation(line: 596, column: 9, scope: !6337)
!6341 = !DILocation(line: 591, column: 19, scope: !6097)
!6342 = !DILocation(line: 591, column: 36, scope: !6097)
!6343 = !DILocation(line: 591, column: 16, scope: !6097)
!6344 = !DILocation(line: 591, column: 52, scope: !6335)
!6345 = !DILocation(line: 591, column: 69, scope: !6097)
!6346 = !DILocation(line: 591, column: 49, scope: !6097)
!6347 = distinct !{!6347, !6348, !6349}
!6348 = !DILocation(line: 589, column: 3, scope: !6098)
!6349 = !DILocation(line: 597, column: 7, scope: !6098)
!6350 = !DILocation(line: 602, column: 7, scope: !6351)
!6351 = distinct !DILexicalBlock(scope: !6088, file: !603, line: 602, column: 7)
!6352 = !DILocation(line: 602, column: 18, scope: !6351)
!6353 = !DILocation(line: 602, column: 7, scope: !6088)
!6354 = !DILocation(line: 612, column: 3, scope: !6088)
!6355 = distinct !DISubprogram(name: "rpl_fclose", scope: !6356, file: !6356, line: 56, type: !6357, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !672, variables: !6399)
!6356 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!6357 = !DISubroutineType(types: !6358)
!6358 = !{!71, !6359}
!6359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6360, size: 64)
!6360 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3083, line: 49, baseType: !6361)
!6361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3105, line: 241, size: 1728, elements: !6362)
!6362 = !{!6363, !6364, !6365, !6366, !6367, !6368, !6369, !6370, !6371, !6372, !6373, !6374, !6375, !6383, !6384, !6385, !6386, !6387, !6388, !6389, !6390, !6391, !6392, !6393, !6394, !6395, !6396, !6397, !6398}
!6363 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !6361, file: !3105, line: 242, baseType: !71, size: 32)
!6364 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !6361, file: !3105, line: 247, baseType: !68, size: 64, offset: 64)
!6365 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !6361, file: !3105, line: 248, baseType: !68, size: 64, offset: 128)
!6366 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !6361, file: !3105, line: 249, baseType: !68, size: 64, offset: 192)
!6367 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !6361, file: !3105, line: 250, baseType: !68, size: 64, offset: 256)
!6368 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !6361, file: !3105, line: 251, baseType: !68, size: 64, offset: 320)
!6369 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !6361, file: !3105, line: 252, baseType: !68, size: 64, offset: 384)
!6370 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !6361, file: !3105, line: 253, baseType: !68, size: 64, offset: 448)
!6371 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !6361, file: !3105, line: 254, baseType: !68, size: 64, offset: 512)
!6372 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !6361, file: !3105, line: 256, baseType: !68, size: 64, offset: 576)
!6373 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !6361, file: !3105, line: 257, baseType: !68, size: 64, offset: 640)
!6374 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !6361, file: !3105, line: 258, baseType: !68, size: 64, offset: 704)
!6375 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !6361, file: !3105, line: 260, baseType: !6376, size: 64, offset: 768)
!6376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6377, size: 64)
!6377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3105, line: 156, size: 192, elements: !6378)
!6378 = !{!6379, !6380, !6382}
!6379 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !6377, file: !3105, line: 157, baseType: !6376, size: 64)
!6380 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !6377, file: !3105, line: 158, baseType: !6381, size: 64, offset: 64)
!6381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6361, size: 64)
!6382 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !6377, file: !3105, line: 162, baseType: !71, size: 32, offset: 128)
!6383 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !6361, file: !3105, line: 262, baseType: !6381, size: 64, offset: 832)
!6384 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !6361, file: !3105, line: 264, baseType: !71, size: 32, offset: 896)
!6385 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !6361, file: !3105, line: 268, baseType: !71, size: 32, offset: 928)
!6386 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !6361, file: !3105, line: 270, baseType: !3084, size: 64, offset: 960)
!6387 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !6361, file: !3105, line: 274, baseType: !72, size: 16, offset: 1024)
!6388 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !6361, file: !3105, line: 275, baseType: !3133, size: 8, offset: 1040)
!6389 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !6361, file: !3105, line: 276, baseType: !3135, size: 8, offset: 1048)
!6390 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !6361, file: !3105, line: 280, baseType: !3139, size: 64, offset: 1088)
!6391 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !6361, file: !3105, line: 289, baseType: !3142, size: 64, offset: 1152)
!6392 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !6361, file: !3105, line: 297, baseType: !70, size: 64, offset: 1216)
!6393 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !6361, file: !3105, line: 298, baseType: !70, size: 64, offset: 1280)
!6394 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !6361, file: !3105, line: 299, baseType: !70, size: 64, offset: 1344)
!6395 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !6361, file: !3105, line: 300, baseType: !70, size: 64, offset: 1408)
!6396 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !6361, file: !3105, line: 302, baseType: !73, size: 64, offset: 1472)
!6397 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !6361, file: !3105, line: 303, baseType: !71, size: 32, offset: 1536)
!6398 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !6361, file: !3105, line: 305, baseType: !3150, size: 160, offset: 1568)
!6399 = !{!6400, !6401, !6402, !6403}
!6400 = !DILocalVariable(name: "fp", arg: 1, scope: !6355, file: !6356, line: 56, type: !6359)
!6401 = !DILocalVariable(name: "saved_errno", scope: !6355, file: !6356, line: 58, type: !71)
!6402 = !DILocalVariable(name: "fd", scope: !6355, file: !6356, line: 59, type: !71)
!6403 = !DILocalVariable(name: "result", scope: !6355, file: !6356, line: 60, type: !71)
!6404 = !DILocation(line: 56, column: 19, scope: !6355)
!6405 = !DILocation(line: 58, column: 7, scope: !6355)
!6406 = !DILocation(line: 60, column: 7, scope: !6355)
!6407 = !DILocation(line: 63, column: 8, scope: !6355)
!6408 = !DILocation(line: 59, column: 7, scope: !6355)
!6409 = !DILocation(line: 64, column: 10, scope: !6410)
!6410 = distinct !DILexicalBlock(scope: !6355, file: !6356, line: 64, column: 7)
!6411 = !DILocation(line: 64, column: 7, scope: !6355)
!6412 = !DILocation(line: 65, column: 12, scope: !6410)
!6413 = !DILocation(line: 65, column: 5, scope: !6410)
!6414 = !DILocation(line: 70, column: 9, scope: !6415)
!6415 = distinct !DILexicalBlock(scope: !6355, file: !6356, line: 70, column: 7)
!6416 = !DILocation(line: 70, column: 23, scope: !6415)
!6417 = !DILocation(line: 70, column: 33, scope: !6418)
!6418 = !DILexicalBlockFile(scope: !6415, file: !6356, discriminator: 1)
!6419 = !DILocation(line: 70, column: 26, scope: !6420)
!6420 = !DILexicalBlockFile(scope: !6415, file: !6356, discriminator: 3)
!6421 = !DILocation(line: 70, column: 59, scope: !6418)
!6422 = !DILocation(line: 71, column: 7, scope: !6415)
!6423 = !DILocation(line: 71, column: 10, scope: !6418)
!6424 = !DILocation(line: 70, column: 7, scope: !6425)
!6425 = !DILexicalBlockFile(scope: !6355, file: !6356, discriminator: 2)
!6426 = !DILocation(line: 98, column: 12, scope: !6355)
!6427 = !DILocation(line: 103, column: 7, scope: !6355)
!6428 = !DILocation(line: 72, column: 19, scope: !6415)
!6429 = !DILocation(line: 103, column: 19, scope: !6430)
!6430 = distinct !DILexicalBlock(scope: !6355, file: !6356, line: 103, column: 7)
!6431 = !DILocation(line: 105, column: 13, scope: !6432)
!6432 = distinct !DILexicalBlock(scope: !6430, file: !6356, line: 104, column: 5)
!6433 = !DILocation(line: 107, column: 5, scope: !6432)
!6434 = !DILocation(line: 110, column: 1, scope: !6355)
!6435 = distinct !DISubprogram(name: "rpl_fflush", scope: !6436, file: !6436, line: 127, type: !6437, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !674, variables: !6479)
!6436 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!6437 = !DISubroutineType(types: !6438)
!6438 = !{!71, !6439}
!6439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6440, size: 64)
!6440 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3083, line: 49, baseType: !6441)
!6441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3105, line: 241, size: 1728, elements: !6442)
!6442 = !{!6443, !6444, !6445, !6446, !6447, !6448, !6449, !6450, !6451, !6452, !6453, !6454, !6455, !6463, !6464, !6465, !6466, !6467, !6468, !6469, !6470, !6471, !6472, !6473, !6474, !6475, !6476, !6477, !6478}
!6443 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !6441, file: !3105, line: 242, baseType: !71, size: 32)
!6444 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !6441, file: !3105, line: 247, baseType: !68, size: 64, offset: 64)
!6445 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !6441, file: !3105, line: 248, baseType: !68, size: 64, offset: 128)
!6446 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !6441, file: !3105, line: 249, baseType: !68, size: 64, offset: 192)
!6447 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !6441, file: !3105, line: 250, baseType: !68, size: 64, offset: 256)
!6448 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !6441, file: !3105, line: 251, baseType: !68, size: 64, offset: 320)
!6449 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !6441, file: !3105, line: 252, baseType: !68, size: 64, offset: 384)
!6450 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !6441, file: !3105, line: 253, baseType: !68, size: 64, offset: 448)
!6451 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !6441, file: !3105, line: 254, baseType: !68, size: 64, offset: 512)
!6452 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !6441, file: !3105, line: 256, baseType: !68, size: 64, offset: 576)
!6453 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !6441, file: !3105, line: 257, baseType: !68, size: 64, offset: 640)
!6454 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !6441, file: !3105, line: 258, baseType: !68, size: 64, offset: 704)
!6455 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !6441, file: !3105, line: 260, baseType: !6456, size: 64, offset: 768)
!6456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6457, size: 64)
!6457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3105, line: 156, size: 192, elements: !6458)
!6458 = !{!6459, !6460, !6462}
!6459 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !6457, file: !3105, line: 157, baseType: !6456, size: 64)
!6460 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !6457, file: !3105, line: 158, baseType: !6461, size: 64, offset: 64)
!6461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6441, size: 64)
!6462 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !6457, file: !3105, line: 162, baseType: !71, size: 32, offset: 128)
!6463 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !6441, file: !3105, line: 262, baseType: !6461, size: 64, offset: 832)
!6464 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !6441, file: !3105, line: 264, baseType: !71, size: 32, offset: 896)
!6465 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !6441, file: !3105, line: 268, baseType: !71, size: 32, offset: 928)
!6466 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !6441, file: !3105, line: 270, baseType: !3084, size: 64, offset: 960)
!6467 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !6441, file: !3105, line: 274, baseType: !72, size: 16, offset: 1024)
!6468 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !6441, file: !3105, line: 275, baseType: !3133, size: 8, offset: 1040)
!6469 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !6441, file: !3105, line: 276, baseType: !3135, size: 8, offset: 1048)
!6470 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !6441, file: !3105, line: 280, baseType: !3139, size: 64, offset: 1088)
!6471 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !6441, file: !3105, line: 289, baseType: !3142, size: 64, offset: 1152)
!6472 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !6441, file: !3105, line: 297, baseType: !70, size: 64, offset: 1216)
!6473 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !6441, file: !3105, line: 298, baseType: !70, size: 64, offset: 1280)
!6474 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !6441, file: !3105, line: 299, baseType: !70, size: 64, offset: 1344)
!6475 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !6441, file: !3105, line: 300, baseType: !70, size: 64, offset: 1408)
!6476 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !6441, file: !3105, line: 302, baseType: !73, size: 64, offset: 1472)
!6477 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !6441, file: !3105, line: 303, baseType: !71, size: 32, offset: 1536)
!6478 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !6441, file: !3105, line: 305, baseType: !3150, size: 160, offset: 1568)
!6479 = !{!6480}
!6480 = !DILocalVariable(name: "stream", arg: 1, scope: !6435, file: !6436, line: 127, type: !6439)
!6481 = !DILocation(line: 127, column: 19, scope: !6435)
!6482 = !DILocation(line: 148, column: 14, scope: !6483)
!6483 = distinct !DILexicalBlock(scope: !6435, file: !6436, line: 148, column: 7)
!6484 = !DILocation(line: 148, column: 22, scope: !6483)
!6485 = !DILocation(line: 148, column: 27, scope: !6486)
!6486 = !DILexicalBlockFile(scope: !6483, file: !6436, discriminator: 1)
!6487 = !DILocation(line: 148, column: 7, scope: !6488)
!6488 = !DILexicalBlockFile(scope: !6435, file: !6436, discriminator: 1)
!6489 = !DILocation(line: 149, column: 12, scope: !6483)
!6490 = !DILocation(line: 149, column: 5, scope: !6483)
!6491 = !DILocalVariable(name: "fp", arg: 1, scope: !6492, file: !6436, line: 40, type: !6439)
!6492 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !6436, file: !6436, line: 40, type: !6493, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !674, variables: !6495)
!6493 = !DISubroutineType(types: !6494)
!6494 = !{null, !6439}
!6495 = !{!6491}
!6496 = !DILocation(line: 40, column: 48, scope: !6492, inlinedAt: !6497)
!6497 = distinct !DILocation(line: 153, column: 3, scope: !6435)
!6498 = !DILocation(line: 42, column: 11, scope: !6499, inlinedAt: !6497)
!6499 = distinct !DILexicalBlock(scope: !6492, file: !6436, line: 42, column: 7)
!6500 = !DILocation(line: 42, column: 18, scope: !6499, inlinedAt: !6497)
!6501 = !DILocation(line: 42, column: 7, scope: !6492, inlinedAt: !6497)
!6502 = !DILocation(line: 44, column: 5, scope: !6499, inlinedAt: !6497)
!6503 = !DILocation(line: 155, column: 10, scope: !6435)
!6504 = !DILocation(line: 155, column: 3, scope: !6435)
!6505 = !DILocation(line: 229, column: 1, scope: !6435)
!6506 = distinct !DISubprogram(name: "rpl_fseeko", scope: !6507, file: !6507, line: 28, type: !6508, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !676, variables: !6550)
!6507 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!6508 = !DISubroutineType(types: !6509)
!6509 = !{!71, !6510, !3082, !71}
!6510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6511, size: 64)
!6511 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3083, line: 49, baseType: !6512)
!6512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3105, line: 241, size: 1728, elements: !6513)
!6513 = !{!6514, !6515, !6516, !6517, !6518, !6519, !6520, !6521, !6522, !6523, !6524, !6525, !6526, !6534, !6535, !6536, !6537, !6538, !6539, !6540, !6541, !6542, !6543, !6544, !6545, !6546, !6547, !6548, !6549}
!6514 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !6512, file: !3105, line: 242, baseType: !71, size: 32)
!6515 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !6512, file: !3105, line: 247, baseType: !68, size: 64, offset: 64)
!6516 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !6512, file: !3105, line: 248, baseType: !68, size: 64, offset: 128)
!6517 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !6512, file: !3105, line: 249, baseType: !68, size: 64, offset: 192)
!6518 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !6512, file: !3105, line: 250, baseType: !68, size: 64, offset: 256)
!6519 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !6512, file: !3105, line: 251, baseType: !68, size: 64, offset: 320)
!6520 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !6512, file: !3105, line: 252, baseType: !68, size: 64, offset: 384)
!6521 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !6512, file: !3105, line: 253, baseType: !68, size: 64, offset: 448)
!6522 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !6512, file: !3105, line: 254, baseType: !68, size: 64, offset: 512)
!6523 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !6512, file: !3105, line: 256, baseType: !68, size: 64, offset: 576)
!6524 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !6512, file: !3105, line: 257, baseType: !68, size: 64, offset: 640)
!6525 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !6512, file: !3105, line: 258, baseType: !68, size: 64, offset: 704)
!6526 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !6512, file: !3105, line: 260, baseType: !6527, size: 64, offset: 768)
!6527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6528, size: 64)
!6528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3105, line: 156, size: 192, elements: !6529)
!6529 = !{!6530, !6531, !6533}
!6530 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !6528, file: !3105, line: 157, baseType: !6527, size: 64)
!6531 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !6528, file: !3105, line: 158, baseType: !6532, size: 64, offset: 64)
!6532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6512, size: 64)
!6533 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !6528, file: !3105, line: 162, baseType: !71, size: 32, offset: 128)
!6534 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !6512, file: !3105, line: 262, baseType: !6532, size: 64, offset: 832)
!6535 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !6512, file: !3105, line: 264, baseType: !71, size: 32, offset: 896)
!6536 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !6512, file: !3105, line: 268, baseType: !71, size: 32, offset: 928)
!6537 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !6512, file: !3105, line: 270, baseType: !3084, size: 64, offset: 960)
!6538 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !6512, file: !3105, line: 274, baseType: !72, size: 16, offset: 1024)
!6539 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !6512, file: !3105, line: 275, baseType: !3133, size: 8, offset: 1040)
!6540 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !6512, file: !3105, line: 276, baseType: !3135, size: 8, offset: 1048)
!6541 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !6512, file: !3105, line: 280, baseType: !3139, size: 64, offset: 1088)
!6542 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !6512, file: !3105, line: 289, baseType: !3142, size: 64, offset: 1152)
!6543 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !6512, file: !3105, line: 297, baseType: !70, size: 64, offset: 1216)
!6544 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !6512, file: !3105, line: 298, baseType: !70, size: 64, offset: 1280)
!6545 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !6512, file: !3105, line: 299, baseType: !70, size: 64, offset: 1344)
!6546 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !6512, file: !3105, line: 300, baseType: !70, size: 64, offset: 1408)
!6547 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !6512, file: !3105, line: 302, baseType: !73, size: 64, offset: 1472)
!6548 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !6512, file: !3105, line: 303, baseType: !71, size: 32, offset: 1536)
!6549 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !6512, file: !3105, line: 305, baseType: !3150, size: 160, offset: 1568)
!6550 = !{!6551, !6552, !6553, !6554}
!6551 = !DILocalVariable(name: "fp", arg: 1, scope: !6506, file: !6507, line: 28, type: !6510)
!6552 = !DILocalVariable(name: "offset", arg: 2, scope: !6506, file: !6507, line: 28, type: !3082)
!6553 = !DILocalVariable(name: "whence", arg: 3, scope: !6506, file: !6507, line: 28, type: !71)
!6554 = !DILocalVariable(name: "pos", scope: !6555, file: !6507, line: 116, type: !3082)
!6555 = distinct !DILexicalBlock(scope: !6556, file: !6507, line: 112, column: 5)
!6556 = distinct !DILexicalBlock(scope: !6506, file: !6507, line: 51, column: 7)
!6557 = !DILocation(line: 28, column: 15, scope: !6506)
!6558 = !DILocation(line: 28, column: 25, scope: !6506)
!6559 = !DILocation(line: 28, column: 37, scope: !6506)
!6560 = !DILocation(line: 51, column: 11, scope: !6556)
!6561 = !DILocation(line: 51, column: 31, scope: !6556)
!6562 = !DILocation(line: 51, column: 24, scope: !6556)
!6563 = !DILocation(line: 52, column: 7, scope: !6556)
!6564 = !DILocation(line: 52, column: 14, scope: !6565)
!6565 = !DILexicalBlockFile(scope: !6556, file: !6507, discriminator: 1)
!6566 = !{!6014, !697, i64 40}
!6567 = !DILocation(line: 52, column: 35, scope: !6565)
!6568 = !{!6014, !697, i64 32}
!6569 = !DILocation(line: 52, column: 28, scope: !6565)
!6570 = !DILocation(line: 53, column: 7, scope: !6556)
!6571 = !DILocation(line: 53, column: 14, scope: !6565)
!6572 = !{!6014, !697, i64 72}
!6573 = !DILocation(line: 53, column: 28, scope: !6565)
!6574 = !DILocation(line: 51, column: 7, scope: !6575)
!6575 = !DILexicalBlockFile(scope: !6506, file: !6507, discriminator: 1)
!6576 = !DILocation(line: 116, column: 26, scope: !6555)
!6577 = !DILocation(line: 116, column: 19, scope: !6578)
!6578 = !DILexicalBlockFile(scope: !6555, file: !6507, discriminator: 1)
!6579 = !DILocation(line: 116, column: 13, scope: !6555)
!6580 = !DILocation(line: 117, column: 15, scope: !6581)
!6581 = distinct !DILexicalBlock(scope: !6555, file: !6507, line: 117, column: 11)
!6582 = !DILocation(line: 117, column: 11, scope: !6555)
!6583 = !DILocation(line: 127, column: 11, scope: !6555)
!6584 = !DILocation(line: 127, column: 18, scope: !6555)
!6585 = !DILocation(line: 128, column: 11, scope: !6555)
!6586 = !DILocation(line: 128, column: 19, scope: !6555)
!6587 = !{!6014, !971, i64 144}
!6588 = !DILocation(line: 159, column: 7, scope: !6555)
!6589 = !DILocation(line: 161, column: 10, scope: !6506)
!6590 = !DILocation(line: 161, column: 3, scope: !6506)
!6591 = !DILocation(line: 162, column: 1, scope: !6506)
