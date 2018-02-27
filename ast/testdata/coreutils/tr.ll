; ModuleID = 'coreutils-8.27/src/tr.bc'
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
@long_options = internal constant [7 x %struct.option] [%struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.43, i32 0, i32 0), i32 0, i32* null, i32 99 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i32 0, i32 0), i32 0, i32* null, i32 100 }, %struct.option { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.45, i32 0, i32 0), i32 0, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.46, i32 0, i32 0), i32 0, i32* null, i32 116 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.48, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16
@.str.15 = private unnamed_addr constant [13 x i8] c"Jim Meyering\00", align 1
@truncate_set1 = internal unnamed_addr global i8 0, align 1
@squeeze_repeats = internal unnamed_addr global i8 0, align 1
@complement = internal unnamed_addr global i8 0, align 1
@delete = internal unnamed_addr global i8 0, align 1
@optind = external local_unnamed_addr global i32, align 4
@translating = internal unnamed_addr global i8 0, align 1
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
@in_squeeze_set = internal global [256 x i8] zeroinitializer, align 16
@in_delete_set = internal global [256 x i8] zeroinitializer, align 16
@io_buf = internal global [8192 x i8] zeroinitializer, align 16
@.str.23 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@xlate = internal unnamed_addr global [256 x i8] zeroinitializer, align 16
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
@char_class_name = internal unnamed_addr constant [12 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.67, i32 0, i32 0)], align 16
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
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0), align 8
@.str.28 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.32 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.33 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4
@program_name = local_unnamed_addr global i8* null, align 8
@.str.92 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.93 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.94 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.98, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.99, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.100, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.101, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.102, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.103, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.104, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.105, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.106, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.107, i32 0, i32 0), i8* null], align 16
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
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8
@.str.11.108 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.109 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.110 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.111 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.112 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.113 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.114 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8
@nslots = internal unnamed_addr global i32 1, align 4
@slot0 = internal global [256 x i8] zeroinitializer, align 16
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8
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
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16
@.str.1.155 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.156 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.159 = private unnamed_addr constant [38 x i8] c"0 <= strtol_base && strtol_base <= 36\00", align 1
@.str.1.160 = private unnamed_addr constant [16 x i8] c"./lib/xstrtol.c\00", align 1
@__PRETTY_FUNCTION__.xstrtoumax = private unnamed_addr constant [79 x i8] c"strtol_error xstrtoumax(const char *, char **, int, uintmax_t *, const char *)\00", align 1
@.str.1.169 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.172 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8
@.str.3.173 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.174 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.175 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.176 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.177 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.178 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 {
  %2 = icmp eq i32 %0, 0
  br i1 %2, label %8, label %3

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #10
  %6 = load i8*, i8** @program_name, align 8
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #10
  br label %48

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 5) #10
  %10 = load i8*, i8** @program_name, align 8
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10) #10
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([496 x i8], [496 x i8]* @.str.2, i64 0, i64 0), i32 5) #10
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #10
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 5) #10
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #10
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 5) #10
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #10
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([373 x i8], [373 x i8]* @.str.5, i64 0, i64 0), i32 5) #10
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22) #10
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([425 x i8], [425 x i8]* @.str.6, i64 0, i64 0), i32 5) #10
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %26 = tail call i32 @fputs_unlocked(i8* %24, %struct._IO_FILE* %25) #10
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([411 x i8], [411 x i8]* @.str.7, i64 0, i64 0), i32 5) #10
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %29 = tail call i32 @fputs_unlocked(i8* %27, %struct._IO_FILE* %28) #10
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([472 x i8], [472 x i8]* @.str.8, i64 0, i64 0), i32 5) #10
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %32 = tail call i32 @fputs_unlocked(i8* %30, %struct._IO_FILE* %31) #10
  %33 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.36, i64 0, i64 0), i32 5) #10
  %34 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %33, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.37, i64 0, i64 0)) #10
  %35 = tail call i8* @setlocale(i32 5, i8* null) #10
  %36 = icmp eq i8* %35, null
  br i1 %36, label %43, label %37

; <label>:37:                                     ; preds = %8
  %38 = tail call i32 @strncmp(i8* nonnull %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38, i64 0, i64 0), i64 3) #13
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %43, label %40

; <label>:40:                                     ; preds = %37
  %41 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.39, i64 0, i64 0), i32 5) #10
  %42 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0)) #10
  br label %43

; <label>:43:                                     ; preds = %8, %37, %40
  %44 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.40, i64 0, i64 0), i32 5) #10
  %45 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %44, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.37, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0)) #10
  %46 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.41, i64 0, i64 0), i32 5) #10
  %47 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %46, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i64 0, i64 0)) #10
  br label %48

; <label>:48:                                     ; preds = %43, %3
  tail call void @exit(i32 %0) #14
  unreachable
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

; Function Attrs: nounwind
declare i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

declare i32 @fputs_unlocked(i8*, %struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind
declare i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define i32 @main(i32, i8**) local_unnamed_addr #6 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [256 x i8], align 16
  %6 = alloca %struct.Spec_list, align 8
  %7 = alloca %struct.Spec_list, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = bitcast %struct.Spec_list* %6 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %10) #10
  %11 = bitcast %struct.Spec_list* %7 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %11) #10
  %12 = load i8*, i8** %1, align 8
  tail call void @set_program_name(i8* %12) #10
  %13 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0)) #10
  %14 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0)) #10
  %15 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0)) #10
  %16 = tail call i32 @atexit(void ()* nonnull @close_stdout) #10
  br label %17

; <label>:17:                                     ; preds = %27, %2
  %18 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), %struct.option* getelementptr inbounds ([7 x %struct.option], [7 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #10
  switch i32 %18, label %26 [
    i32 -1, label %29
    i32 99, label %19
    i32 67, label %19
    i32 100, label %27
    i32 115, label %20
    i32 116, label %21
    i32 -130, label %22
    i32 -131, label %23
  ]

; <label>:19:                                     ; preds = %17, %17
  br label %27

; <label>:20:                                     ; preds = %17
  br label %27

; <label>:21:                                     ; preds = %17
  br label %27

; <label>:22:                                     ; preds = %17
  tail call void @usage(i32 0) #15
  unreachable

; <label>:23:                                     ; preds = %17
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %25 = load i8*, i8** @Version, align 8
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i8* %25, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0), i8* null) #10
  tail call void @exit(i32 0) #14
  unreachable

; <label>:26:                                     ; preds = %17
  tail call void @usage(i32 1) #15
  unreachable

; <label>:27:                                     ; preds = %17, %21, %20, %19
  %28 = phi i8* [ @truncate_set1, %21 ], [ @squeeze_repeats, %20 ], [ @complement, %19 ], [ @delete, %17 ]
  store i8 1, i8* %28, align 1
  br label %17

; <label>:29:                                     ; preds = %17
  %30 = load i32, i32* @optind, align 4
  %31 = sub nsw i32 %0, %30
  %32 = icmp eq i32 %31, 2
  %33 = load i8, i8* @delete, align 1
  %34 = and i8 %33, 1
  %35 = xor i8 %34, 1
  %36 = select i1 %32, i8 %35, i8 0
  store i8 %36, i8* @translating, align 1
  %37 = load i8, i8* @squeeze_repeats, align 1
  %38 = icmp eq i8 %33, %37
  %39 = select i1 %38, i32 2, i32 1
  %40 = icmp ule i8 %33, %37
  %41 = select i1 %40, i32 2, i32 1
  %42 = icmp slt i32 %31, %39
  br i1 %42, label %43, label %61

; <label>:43:                                     ; preds = %29
  %44 = icmp eq i32 %31, 0
  br i1 %44, label %45, label %47

; <label>:45:                                     ; preds = %43
  %46 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0), i32 5) #10
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %46) #10
  br label %60

; <label>:47:                                     ; preds = %43
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i64 0, i64 0), i32 5) #10
  %49 = add nsw i32 %0, -1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8*, i8** %1, i64 %50
  %52 = load i8*, i8** %51, align 8
  %53 = tail call i8* @quote(i8* %52) #10
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %48, i8* %53) #10
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %55 = load i8, i8* @squeeze_repeats, align 1
  %56 = icmp ne i8 %55, 0
  %57 = select i1 %56, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.20, i64 0, i64 0)
  %58 = tail call i8* @dcgettext(i8* null, i8* %57, i32 5) #10
  %59 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %54, i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i8* %58) #10
  br label %60

; <label>:60:                                     ; preds = %47, %45
  tail call void @usage(i32 1) #15
  unreachable

; <label>:61:                                     ; preds = %29
  %62 = icmp slt i32 %41, %31
  br i1 %62, label %63, label %76

; <label>:63:                                     ; preds = %61
  %64 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i64 0, i64 0), i32 5) #10
  %65 = load i32, i32* @optind, align 4
  %66 = add nsw i32 %65, %41
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8*, i8** %1, i64 %67
  %69 = load i8*, i8** %68, align 8
  %70 = tail call i8* @quote(i8* %69) #10
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %64, i8* %70) #10
  br i1 %32, label %71, label %75

; <label>:71:                                     ; preds = %63
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.22, i64 0, i64 0), i32 5) #10
  %74 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %72, i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i8* %73) #10
  br label %75

; <label>:75:                                     ; preds = %71, %63
  tail call void @usage(i32 1) #15
  unreachable

; <label>:76:                                     ; preds = %61
  %77 = tail call noalias i8* @xmalloc(i64 32) #10
  %78 = getelementptr inbounds %struct.Spec_list, %struct.Spec_list* %6, i64 0, i32 1
  %79 = bitcast %struct.List_element** %78 to i8**
  store i8* %77, i8** %79, align 8
  %80 = bitcast %struct.Spec_list* %6 to i8**
  store i8* %77, i8** %80, align 8
  %81 = getelementptr inbounds i8, i8* %77, i64 8
  %82 = bitcast i8* %81 to %struct.List_element**
  store %struct.List_element* null, %struct.List_element** %82, align 8
  %83 = load i32, i32* @optind, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8*, i8** %1, i64 %84
  %86 = load i8*, i8** %85, align 8
  %87 = call fastcc zeroext i1 @parse_str(i8* %86, %struct.Spec_list* nonnull %6)
  br i1 %87, label %88, label %775

; <label>:88:                                     ; preds = %76
  br i1 %32, label %89, label %102

; <label>:89:                                     ; preds = %88
  %90 = tail call noalias i8* @xmalloc(i64 32) #10
  %91 = getelementptr inbounds %struct.Spec_list, %struct.Spec_list* %7, i64 0, i32 1
  %92 = bitcast %struct.List_element** %91 to i8**
  store i8* %90, i8** %92, align 8
  %93 = bitcast %struct.Spec_list* %7 to i8**
  store i8* %90, i8** %93, align 8
  %94 = getelementptr inbounds i8, i8* %90, i64 8
  %95 = bitcast i8* %94 to %struct.List_element**
  store %struct.List_element* null, %struct.List_element** %95, align 8
  %96 = load i32, i32* @optind, align 4
  %97 = add nsw i32 %96, 1
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8*, i8** %1, i64 %98
  %100 = load i8*, i8** %99, align 8
  %101 = call fastcc zeroext i1 @parse_str(i8* %100, %struct.Spec_list* nonnull %7)
  br i1 %101, label %102, label %775

; <label>:102:                                    ; preds = %88, %89
  %103 = phi %struct.Spec_list* [ %7, %89 ], [ null, %88 ]
  call fastcc void @get_spec_stats(%struct.Spec_list* nonnull %6) #10
  %104 = load i8, i8* @complement, align 1
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %128, label %106

; <label>:106:                                    ; preds = %102
  %107 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  call void @llvm.lifetime.start(i64 256, i8* nonnull %107) #10
  call void @llvm.memset.p0i8.i64(i8* nonnull %107, i8 0, i64 256, i32 16, i1 false) #10
  %108 = getelementptr inbounds %struct.Spec_list, %struct.Spec_list* %6, i64 0, i32 2
  store i64 -2, i64* %108, align 8
  %109 = call fastcc i32 @get_next(%struct.Spec_list* nonnull %6, i32* null) #10
  %110 = icmp eq i32 %109, -1
  br i1 %110, label %125, label %111

; <label>:111:                                    ; preds = %106
  br label %112

; <label>:112:                                    ; preds = %111, %112
  %113 = phi i32 [ %121, %112 ], [ %109, %111 ]
  %114 = phi i32 [ %120, %112 ], [ 256, %111 ]
  %115 = sext i32 %113 to i64
  %116 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 %115
  %117 = load i8, i8* %116, align 1
  %118 = xor i8 %117, 1
  %119 = zext i8 %118 to i32
  %120 = sub nsw i32 %114, %119
  store i8 1, i8* %116, align 1
  %121 = call fastcc i32 @get_next(%struct.Spec_list* nonnull %6, i32* null) #10
  %122 = icmp eq i32 %121, -1
  br i1 %122, label %123, label %112

; <label>:123:                                    ; preds = %112
  %124 = sext i32 %120 to i64
  br label %125

; <label>:125:                                    ; preds = %123, %106
  %126 = phi i64 [ 256, %106 ], [ %124, %123 ]
  call void @llvm.lifetime.end(i64 256, i8* nonnull %107) #10
  %127 = getelementptr inbounds %struct.Spec_list, %struct.Spec_list* %6, i64 0, i32 3
  store i64 %126, i64* %127, align 8
  br label %128

; <label>:128:                                    ; preds = %125, %102
  %129 = getelementptr inbounds %struct.Spec_list, %struct.Spec_list* %6, i64 0, i32 4
  %130 = load i64, i64* %129, align 8
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %134, label %132

; <label>:132:                                    ; preds = %128
  %133 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.80, i64 0, i64 0), i32 5) #10
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %133) #10
  unreachable

; <label>:134:                                    ; preds = %128
  %135 = icmp eq %struct.Spec_list* %103, null
  br i1 %135, label %368, label %136

; <label>:136:                                    ; preds = %134
  %137 = getelementptr inbounds %struct.Spec_list, %struct.Spec_list* %6, i64 0, i32 3
  %138 = load i64, i64* %137, align 8
  call fastcc void @get_spec_stats(%struct.Spec_list* nonnull %103) #10
  %139 = getelementptr inbounds %struct.Spec_list, %struct.Spec_list* %103, i64 0, i32 3
  %140 = load i64, i64* %139, align 8
  %141 = icmp uge i64 %138, %140
  %142 = getelementptr inbounds %struct.Spec_list, %struct.Spec_list* %103, i64 0, i32 4
  %143 = load i64, i64* %142, align 8
  %144 = icmp eq i64 %143, 1
  %145 = and i1 %141, %144
  br i1 %145, label %146, label %151

; <label>:146:                                    ; preds = %136
  %147 = sub i64 %138, %140
  %148 = getelementptr inbounds %struct.Spec_list, %struct.Spec_list* %103, i64 0, i32 5
  %149 = load %struct.List_element*, %struct.List_element** %148, align 8
  %150 = getelementptr inbounds %struct.List_element, %struct.List_element* %149, i64 0, i32 2, i32 0, i32 1
  store i64 %147, i64* %150, align 8
  store i64 %138, i64* %139, align 8
  br label %155

; <label>:151:                                    ; preds = %136
  %152 = icmp ugt i64 %143, 1
  br i1 %152, label %153, label %155

; <label>:153:                                    ; preds = %151
  %154 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.81, i64 0, i64 0), i32 5) #10
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %154) #10
  unreachable

; <label>:155:                                    ; preds = %151, %146
  %156 = phi i64 [ 1, %146 ], [ %143, %151 ]
  %157 = phi i64 [ %138, %146 ], [ %140, %151 ]
  %158 = load i8, i8* @translating, align 1
  %159 = icmp eq i8 %158, 0
  br i1 %159, label %363, label %160

; <label>:160:                                    ; preds = %155
  %161 = getelementptr inbounds %struct.Spec_list, %struct.Spec_list* %103, i64 0, i32 6
  %162 = load i8, i8* %161, align 8
  %163 = icmp eq i8 %162, 0
  br i1 %163, label %166, label %164

; <label>:164:                                    ; preds = %160
  %165 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.82, i64 0, i64 0), i32 5) #10
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %165) #10
  unreachable

; <label>:166:                                    ; preds = %160
  %167 = getelementptr inbounds %struct.Spec_list, %struct.Spec_list* %103, i64 0, i32 8
  %168 = load i8, i8* %167, align 2
  %169 = icmp eq i8 %168, 0
  br i1 %169, label %172, label %170

; <label>:170:                                    ; preds = %166
  %171 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.83, i64 0, i64 0), i32 5) #10
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %171) #10
  unreachable

; <label>:172:                                    ; preds = %166
  %173 = load i64, i64* %137, align 8
  %174 = bitcast %struct.List_element** %78 to i64*
  %175 = load i64, i64* %174, align 8
  %176 = getelementptr inbounds %struct.Spec_list, %struct.Spec_list* %103, i64 0, i32 1
  %177 = bitcast %struct.List_element** %176 to i64*
  %178 = load i64, i64* %177, align 8
  %179 = getelementptr inbounds %struct.Spec_list, %struct.Spec_list* %103, i64 0, i32 7
  %180 = load i8, i8* %179, align 1
  %181 = icmp eq i8 %180, 0
  %182 = inttoptr i64 %178 to %struct.List_element*
  br i1 %181, label %290, label %183

; <label>:183:                                    ; preds = %172
  %184 = tail call i16** @__ctype_b_loc() #1
  %185 = load i16*, i16** %184, align 8
  br label %186

; <label>:186:                                    ; preds = %186, %183
  %187 = phi i64 [ 0, %183 ], [ %214, %186 ]
  %188 = phi <2 x i64> [ zeroinitializer, %183 ], [ %204, %186 ]
  %189 = phi <2 x i64> [ zeroinitializer, %183 ], [ %205, %186 ]
  %190 = phi <2 x i64> [ zeroinitializer, %183 ], [ %212, %186 ]
  %191 = phi <2 x i64> [ zeroinitializer, %183 ], [ %213, %186 ]
  %192 = getelementptr inbounds i16, i16* %185, i64 %187
  %193 = bitcast i16* %192 to <2 x i16>*
  %194 = load <2 x i16>, <2 x i16>* %193, align 2
  %195 = getelementptr i16, i16* %192, i64 2
  %196 = bitcast i16* %195 to <2 x i16>*
  %197 = load <2 x i16>, <2 x i16>* %196, align 2
  %198 = lshr <2 x i16> %194, <i16 8, i16 8>
  %199 = lshr <2 x i16> %197, <i16 8, i16 8>
  %200 = and <2 x i16> %198, <i16 1, i16 1>
  %201 = and <2 x i16> %199, <i16 1, i16 1>
  %202 = zext <2 x i16> %200 to <2 x i64>
  %203 = zext <2 x i16> %201 to <2 x i64>
  %204 = add <2 x i64> %202, %188
  %205 = add <2 x i64> %203, %189
  %206 = lshr <2 x i16> %194, <i16 9, i16 9>
  %207 = lshr <2 x i16> %197, <i16 9, i16 9>
  %208 = and <2 x i16> %206, <i16 1, i16 1>
  %209 = and <2 x i16> %207, <i16 1, i16 1>
  %210 = zext <2 x i16> %208 to <2 x i64>
  %211 = zext <2 x i16> %209 to <2 x i64>
  %212 = add <2 x i64> %210, %190
  %213 = add <2 x i64> %211, %191
  %214 = add i64 %187, 4
  %215 = icmp eq i64 %214, 256
  br i1 %215, label %216, label %186

; <label>:216:                                    ; preds = %186
  %217 = add <2 x i64> %213, %212
  %218 = shufflevector <2 x i64> %217, <2 x i64> undef, <2 x i32> <i32 1, i32 undef>
  %219 = add <2 x i64> %217, %218
  %220 = extractelement <2 x i64> %219, i32 0
  %221 = add <2 x i64> %205, %204
  %222 = shufflevector <2 x i64> %221, <2 x i64> undef, <2 x i32> <i32 1, i32 undef>
  %223 = add <2 x i64> %221, %222
  %224 = extractelement <2 x i64> %223, i32 0
  %225 = getelementptr inbounds %struct.Spec_list, %struct.Spec_list* %6, i64 0, i32 2
  store i64 -2, i64* %225, align 8
  %226 = getelementptr inbounds %struct.Spec_list, %struct.Spec_list* %103, i64 0, i32 2
  store i64 -2, i64* %226, align 8
  %227 = bitcast i32* %3 to i8*
  %228 = bitcast i32* %4 to i8*
  br label %229

; <label>:229:                                    ; preds = %272, %216
  %230 = phi i8 [ 1, %216 ], [ %278, %272 ]
  %231 = phi i8 [ 1, %216 ], [ %276, %272 ]
  call void @llvm.lifetime.start(i64 4, i8* nonnull %227) #10
  call void @llvm.lifetime.start(i64 4, i8* nonnull %228) #10
  %232 = call fastcc i32 @get_next(%struct.Spec_list* nonnull %6, i32* nonnull %3) #10
  %233 = call fastcc i32 @get_next(%struct.Spec_list* nonnull %103, i32* nonnull %4) #10
  %234 = icmp ne i8 %230, 0
  %235 = load i32, i32* %4, align 4
  %236 = icmp ne i32 %235, 2
  %237 = and i1 %234, %236
  br i1 %237, label %238, label %245

; <label>:238:                                    ; preds = %229
  %239 = icmp ne i8 %231, 0
  %240 = load i32, i32* %3, align 4
  %241 = icmp ne i32 %240, 2
  %242 = and i1 %239, %241
  br i1 %242, label %252, label %243

; <label>:243:                                    ; preds = %238
  %244 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.89, i64 0, i64 0), i32 5) #10
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %244) #10
  unreachable

; <label>:245:                                    ; preds = %229
  %246 = icmp eq i32 %235, 2
  br i1 %246, label %249, label %247

; <label>:247:                                    ; preds = %245
  %248 = load i32, i32* %3, align 4
  br label %252

; <label>:249:                                    ; preds = %245
  %250 = load i64, i64* %226, align 8
  %251 = load i64, i64* %225, align 8
  br label %272

; <label>:252:                                    ; preds = %247, %238
  %253 = phi i32 [ %248, %247 ], [ %240, %238 ]
  %254 = load %struct.List_element*, %struct.List_element** %78, align 8
  %255 = getelementptr inbounds %struct.List_element, %struct.List_element* %254, i64 0, i32 1
  %256 = bitcast %struct.List_element** %255 to i64*
  %257 = load i64, i64* %256, align 8
  store i64 %257, i64* %174, align 8
  store i64 -1, i64* %225, align 8
  %258 = load %struct.List_element*, %struct.List_element** %176, align 8
  %259 = getelementptr inbounds %struct.List_element, %struct.List_element* %258, i64 0, i32 1
  %260 = bitcast %struct.List_element** %259 to i64*
  %261 = load i64, i64* %260, align 8
  store i64 %261, i64* %177, align 8
  store i64 -1, i64* %226, align 8
  %262 = icmp eq i32 %253, 1
  %263 = select i1 %262, i64 %224, i64 %220
  %264 = load i64, i64* %137, align 8
  %265 = sub i64 1, %263
  %266 = add i64 %265, %264
  store i64 %266, i64* %137, align 8
  %267 = icmp eq i32 %235, 1
  %268 = select i1 %267, i64 %224, i64 %220
  %269 = load i64, i64* %139, align 8
  %270 = sub i64 1, %268
  %271 = add i64 %270, %269
  store i64 %271, i64* %139, align 8
  br label %272

; <label>:272:                                    ; preds = %252, %249
  %273 = phi i64 [ %251, %249 ], [ -1, %252 ]
  %274 = phi i64 [ %250, %249 ], [ -1, %252 ]
  %275 = icmp eq i64 %273, -1
  %276 = zext i1 %275 to i8
  %277 = icmp eq i64 %274, -1
  %278 = zext i1 %277 to i8
  call void @llvm.lifetime.end(i64 4, i8* nonnull %228) #10
  call void @llvm.lifetime.end(i64 4, i8* nonnull %227) #10
  %279 = icmp ne i32 %232, -1
  %280 = icmp ne i32 %233, -1
  %281 = and i1 %279, %280
  br i1 %281, label %229, label %282

; <label>:282:                                    ; preds = %272
  %283 = load i64, i64* %137, align 8
  %284 = icmp ult i64 %173, %283
  br i1 %284, label %288, label %285

; <label>:285:                                    ; preds = %282
  %286 = load i64, i64* %139, align 8
  %287 = icmp ult i64 %157, %286
  br i1 %287, label %288, label %289

; <label>:288:                                    ; preds = %285, %282
  call void @__assert_fail(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.90, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0), i32 1222, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @__PRETTY_FUNCTION__.validate_case_classes, i64 0, i64 0)) #14
  unreachable

; <label>:289:                                    ; preds = %285
  store i64 %175, i64* %174, align 8
  store i64 %178, i64* %177, align 8
  br label %290

; <label>:290:                                    ; preds = %289, %172
  %291 = phi i64 [ %157, %172 ], [ %286, %289 ]
  %292 = phi i64 [ %173, %172 ], [ %283, %289 ]
  %293 = icmp ugt i64 %292, %291
  %294 = load i8, i8* @truncate_set1, align 1
  %295 = icmp eq i8 %294, 0
  %296 = and i1 %293, %295
  br i1 %296, label %297, label %339

; <label>:297:                                    ; preds = %290
  %298 = icmp eq i64 %291, 0
  br i1 %298, label %299, label %301

; <label>:299:                                    ; preds = %297
  %300 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.84, i64 0, i64 0), i32 5) #10
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %300) #10
  unreachable

; <label>:301:                                    ; preds = %297
  %302 = load i8, i8* @translating, align 1
  %303 = icmp eq i8 %302, 0
  br i1 %303, label %304, label %305

; <label>:304:                                    ; preds = %301
  call void @__assert_fail(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.91, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0), i32 1375, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @__PRETTY_FUNCTION__.string2_extend, i64 0, i64 0)) #14
  unreachable

; <label>:305:                                    ; preds = %301
  %306 = getelementptr inbounds %struct.List_element, %struct.List_element* %182, i64 0, i32 0
  %307 = load i32, i32* %306, align 8
  switch i32 %307, label %319 [
    i32 0, label %308
    i32 1, label %310
    i32 2, label %314
    i32 4, label %316
    i32 3, label %318
  ]

; <label>:308:                                    ; preds = %305
  %309 = getelementptr inbounds %struct.List_element, %struct.List_element* %182, i64 0, i32 2, i32 0, i32 0
  br label %320

; <label>:310:                                    ; preds = %305
  %311 = getelementptr inbounds %struct.List_element, %struct.List_element* %182, i64 0, i32 2
  %312 = bitcast %union.anon* %311 to %struct.anon*
  %313 = getelementptr inbounds %struct.anon, %struct.anon* %312, i64 0, i32 1
  br label %320

; <label>:314:                                    ; preds = %305
  %315 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.94, i64 0, i64 0), i32 5) #10
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %315) #10
  unreachable

; <label>:316:                                    ; preds = %305
  %317 = getelementptr inbounds %struct.List_element, %struct.List_element* %182, i64 0, i32 2, i32 0, i32 0
  br label %320

; <label>:318:                                    ; preds = %305
  call void @abort() #14
  unreachable

; <label>:319:                                    ; preds = %305
  call void @abort() #14
  unreachable

; <label>:320:                                    ; preds = %316, %310, %308
  %321 = phi i8* [ %317, %316 ], [ %313, %310 ], [ %309, %308 ]
  %322 = load i8, i8* %321, align 1
  %323 = sub i64 %292, %291
  %324 = call noalias i8* @xmalloc(i64 32) #10
  %325 = getelementptr inbounds i8, i8* %324, i64 8
  %326 = bitcast i8* %325 to %struct.List_element**
  store %struct.List_element* null, %struct.List_element** %326, align 8
  %327 = bitcast i8* %324 to i32*
  store i32 4, i32* %327, align 8
  %328 = getelementptr inbounds i8, i8* %324, i64 16
  store i8 %322, i8* %328, align 8
  %329 = getelementptr inbounds i8, i8* %324, i64 24
  %330 = bitcast i8* %329 to i64*
  store i64 %323, i64* %330, align 8
  %331 = load %struct.List_element*, %struct.List_element** %176, align 8
  %332 = icmp eq %struct.List_element* %331, null
  br i1 %332, label %333, label %334

; <label>:333:                                    ; preds = %320
  call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.55, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0), i32 719, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__PRETTY_FUNCTION__.append_repeated_char, i64 0, i64 0)) #14
  unreachable

; <label>:334:                                    ; preds = %320
  %335 = getelementptr inbounds %struct.List_element, %struct.List_element* %331, i64 0, i32 1
  %336 = bitcast %struct.List_element** %335 to i8**
  store i8* %324, i8** %336, align 8
  %337 = bitcast %struct.List_element** %176 to i8**
  store i8* %324, i8** %337, align 8
  %338 = load i64, i64* %137, align 8
  store i64 %338, i64* %139, align 8
  br label %339

; <label>:339:                                    ; preds = %334, %290
  %340 = phi i64 [ %338, %334 ], [ %292, %290 ]
  %341 = phi i64 [ %338, %334 ], [ %291, %290 ]
  %342 = load i8, i8* @complement, align 1
  %343 = icmp eq i8 %342, 0
  br i1 %343, label %368, label %344

; <label>:344:                                    ; preds = %339
  %345 = getelementptr inbounds %struct.Spec_list, %struct.Spec_list* %6, i64 0, i32 7
  %346 = load i8, i8* %345, align 1
  %347 = icmp eq i8 %346, 0
  br i1 %347, label %368, label %348

; <label>:348:                                    ; preds = %344
  %349 = icmp eq i64 %341, %340
  br i1 %349, label %350, label %361

; <label>:350:                                    ; preds = %348
  %351 = getelementptr inbounds %struct.Spec_list, %struct.Spec_list* %103, i64 0, i32 2
  store i64 -2, i64* %351, align 8
  %352 = call fastcc i32 @get_next(%struct.Spec_list* nonnull %103, i32* null) #10
  %353 = icmp eq i32 %352, -1
  br i1 %353, label %361, label %354

; <label>:354:                                    ; preds = %350
  br label %355

; <label>:355:                                    ; preds = %354, %358
  %356 = call fastcc i32 @get_next(%struct.Spec_list* nonnull %103, i32* null) #10
  %357 = icmp eq i32 %356, -1
  br i1 %357, label %367, label %358

; <label>:358:                                    ; preds = %355
  %359 = icmp eq i32 %356, %352
  br i1 %359, label %355, label %360

; <label>:360:                                    ; preds = %358
  br label %361

; <label>:361:                                    ; preds = %360, %350, %348
  %362 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.85, i64 0, i64 0), i32 5) #10
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %362) #10
  unreachable

; <label>:363:                                    ; preds = %155
  %364 = icmp eq i64 %156, 0
  br i1 %364, label %368, label %365

; <label>:365:                                    ; preds = %363
  %366 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.86, i64 0, i64 0), i32 5) #10
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %366) #10
  unreachable

; <label>:367:                                    ; preds = %355
  br label %368

; <label>:368:                                    ; preds = %367, %134, %339, %344, %363
  %369 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  call void @fadvise(%struct._IO_FILE* %369, i32 2) #10
  %370 = load i8, i8* @squeeze_repeats, align 1
  %371 = icmp ne i8 %370, 0
  %372 = icmp eq i32 %31, 1
  %373 = and i1 %372, %371
  br i1 %373, label %374, label %424

; <label>:374:                                    ; preds = %368
  %375 = load i8, i8* @complement, align 1
  %376 = icmp eq i8 %375, 0
  %377 = getelementptr inbounds %struct.Spec_list, %struct.Spec_list* %6, i64 0, i32 2
  store i64 -2, i64* %377, align 8
  %378 = call fastcc i32 @get_next(%struct.Spec_list* nonnull %6, i32* null) #10
  %379 = icmp eq i32 %378, -1
  br i1 %379, label %388, label %380

; <label>:380:                                    ; preds = %374
  br label %381

; <label>:381:                                    ; preds = %380, %381
  %382 = phi i32 [ %385, %381 ], [ %378, %380 ]
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds [256 x i8], [256 x i8]* @in_squeeze_set, i64 0, i64 %383
  store i8 1, i8* %384, align 1
  %385 = call fastcc i32 @get_next(%struct.Spec_list* nonnull %6, i32* null) #10
  %386 = icmp eq i32 %385, -1
  br i1 %386, label %387, label %381

; <label>:387:                                    ; preds = %381
  br label %388

; <label>:388:                                    ; preds = %387, %374
  br i1 %376, label %423, label %389

; <label>:389:                                    ; preds = %388
  br label %390

; <label>:390:                                    ; preds = %389
  %391 = load <16 x i8>, <16 x i8>* bitcast ([256 x i8]* @in_squeeze_set to <16 x i8>*), align 16
  %392 = load <16 x i8>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_squeeze_set, i64 0, i64 16) to <16 x i8>*), align 16
  %393 = xor <16 x i8> %391, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  %394 = xor <16 x i8> %392, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  store <16 x i8> %393, <16 x i8>* bitcast ([256 x i8]* @in_squeeze_set to <16 x i8>*), align 16
  store <16 x i8> %394, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_squeeze_set, i64 0, i64 16) to <16 x i8>*), align 16
  %395 = load <16 x i8>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_squeeze_set, i64 0, i64 32) to <16 x i8>*), align 16
  %396 = load <16 x i8>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_squeeze_set, i64 0, i64 48) to <16 x i8>*), align 16
  %397 = xor <16 x i8> %395, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  %398 = xor <16 x i8> %396, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  store <16 x i8> %397, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_squeeze_set, i64 0, i64 32) to <16 x i8>*), align 16
  store <16 x i8> %398, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_squeeze_set, i64 0, i64 48) to <16 x i8>*), align 16
  %399 = load <16 x i8>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_squeeze_set, i64 0, i64 64) to <16 x i8>*), align 16
  %400 = load <16 x i8>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_squeeze_set, i64 0, i64 80) to <16 x i8>*), align 16
  %401 = xor <16 x i8> %399, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  %402 = xor <16 x i8> %400, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  store <16 x i8> %401, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_squeeze_set, i64 0, i64 64) to <16 x i8>*), align 16
  store <16 x i8> %402, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_squeeze_set, i64 0, i64 80) to <16 x i8>*), align 16
  %403 = load <16 x i8>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_squeeze_set, i64 0, i64 96) to <16 x i8>*), align 16
  %404 = load <16 x i8>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_squeeze_set, i64 0, i64 112) to <16 x i8>*), align 16
  %405 = xor <16 x i8> %403, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  %406 = xor <16 x i8> %404, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  store <16 x i8> %405, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_squeeze_set, i64 0, i64 96) to <16 x i8>*), align 16
  store <16 x i8> %406, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_squeeze_set, i64 0, i64 112) to <16 x i8>*), align 16
  %407 = load <16 x i8>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_squeeze_set, i64 0, i64 128) to <16 x i8>*), align 16
  %408 = load <16 x i8>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_squeeze_set, i64 0, i64 144) to <16 x i8>*), align 16
  %409 = xor <16 x i8> %407, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  %410 = xor <16 x i8> %408, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  store <16 x i8> %409, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_squeeze_set, i64 0, i64 128) to <16 x i8>*), align 16
  store <16 x i8> %410, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_squeeze_set, i64 0, i64 144) to <16 x i8>*), align 16
  %411 = load <16 x i8>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_squeeze_set, i64 0, i64 160) to <16 x i8>*), align 16
  %412 = load <16 x i8>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_squeeze_set, i64 0, i64 176) to <16 x i8>*), align 16
  %413 = xor <16 x i8> %411, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  %414 = xor <16 x i8> %412, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  store <16 x i8> %413, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_squeeze_set, i64 0, i64 160) to <16 x i8>*), align 16
  store <16 x i8> %414, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_squeeze_set, i64 0, i64 176) to <16 x i8>*), align 16
  %415 = load <16 x i8>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_squeeze_set, i64 0, i64 192) to <16 x i8>*), align 16
  %416 = load <16 x i8>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_squeeze_set, i64 0, i64 208) to <16 x i8>*), align 16
  %417 = xor <16 x i8> %415, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  %418 = xor <16 x i8> %416, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  store <16 x i8> %417, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_squeeze_set, i64 0, i64 192) to <16 x i8>*), align 16
  store <16 x i8> %418, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_squeeze_set, i64 0, i64 208) to <16 x i8>*), align 16
  %419 = load <16 x i8>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_squeeze_set, i64 0, i64 224) to <16 x i8>*), align 16
  %420 = load <16 x i8>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_squeeze_set, i64 0, i64 240) to <16 x i8>*), align 16
  %421 = xor <16 x i8> %419, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  %422 = xor <16 x i8> %420, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  store <16 x i8> %421, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_squeeze_set, i64 0, i64 224) to <16 x i8>*), align 16
  store <16 x i8> %422, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_squeeze_set, i64 0, i64 240) to <16 x i8>*), align 16
  br label %423

; <label>:423:                                    ; preds = %390, %388
  call fastcc void @squeeze_filter(i64 (i8*, i64)* nonnull @plain_read)
  br label %768

; <label>:424:                                    ; preds = %368
  %425 = load i8, i8* @delete, align 1
  %426 = icmp ne i8 %425, 0
  %427 = and i1 %372, %426
  br i1 %427, label %428, label %489

; <label>:428:                                    ; preds = %424
  %429 = load i8, i8* @complement, align 1
  %430 = icmp eq i8 %429, 0
  %431 = getelementptr inbounds %struct.Spec_list, %struct.Spec_list* %6, i64 0, i32 2
  store i64 -2, i64* %431, align 8
  %432 = call fastcc i32 @get_next(%struct.Spec_list* nonnull %6, i32* null) #10
  %433 = icmp eq i32 %432, -1
  br i1 %433, label %442, label %434

; <label>:434:                                    ; preds = %428
  br label %435

; <label>:435:                                    ; preds = %434, %435
  %436 = phi i32 [ %439, %435 ], [ %432, %434 ]
  %437 = sext i32 %436 to i64
  %438 = getelementptr inbounds [256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 %437
  store i8 1, i8* %438, align 1
  %439 = call fastcc i32 @get_next(%struct.Spec_list* nonnull %6, i32* null) #10
  %440 = icmp eq i32 %439, -1
  br i1 %440, label %441, label %435

; <label>:441:                                    ; preds = %435
  br label %442

; <label>:442:                                    ; preds = %441, %428
  br i1 %430, label %477, label %443

; <label>:443:                                    ; preds = %442
  br label %444

; <label>:444:                                    ; preds = %443
  %445 = load <16 x i8>, <16 x i8>* bitcast ([256 x i8]* @in_delete_set to <16 x i8>*), align 16
  %446 = load <16 x i8>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 16) to <16 x i8>*), align 16
  %447 = xor <16 x i8> %445, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  %448 = xor <16 x i8> %446, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  store <16 x i8> %447, <16 x i8>* bitcast ([256 x i8]* @in_delete_set to <16 x i8>*), align 16
  store <16 x i8> %448, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 16) to <16 x i8>*), align 16
  %449 = load <16 x i8>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 32) to <16 x i8>*), align 16
  %450 = load <16 x i8>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 48) to <16 x i8>*), align 16
  %451 = xor <16 x i8> %449, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  %452 = xor <16 x i8> %450, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  store <16 x i8> %451, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 32) to <16 x i8>*), align 16
  store <16 x i8> %452, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 48) to <16 x i8>*), align 16
  %453 = load <16 x i8>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 64) to <16 x i8>*), align 16
  %454 = load <16 x i8>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 80) to <16 x i8>*), align 16
  %455 = xor <16 x i8> %453, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  %456 = xor <16 x i8> %454, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  store <16 x i8> %455, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 64) to <16 x i8>*), align 16
  store <16 x i8> %456, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 80) to <16 x i8>*), align 16
  %457 = load <16 x i8>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 96) to <16 x i8>*), align 16
  %458 = load <16 x i8>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 112) to <16 x i8>*), align 16
  %459 = xor <16 x i8> %457, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  %460 = xor <16 x i8> %458, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  store <16 x i8> %459, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 96) to <16 x i8>*), align 16
  store <16 x i8> %460, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 112) to <16 x i8>*), align 16
  %461 = load <16 x i8>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 128) to <16 x i8>*), align 16
  %462 = load <16 x i8>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 144) to <16 x i8>*), align 16
  %463 = xor <16 x i8> %461, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  %464 = xor <16 x i8> %462, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  store <16 x i8> %463, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 128) to <16 x i8>*), align 16
  store <16 x i8> %464, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 144) to <16 x i8>*), align 16
  %465 = load <16 x i8>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 160) to <16 x i8>*), align 16
  %466 = load <16 x i8>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 176) to <16 x i8>*), align 16
  %467 = xor <16 x i8> %465, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  %468 = xor <16 x i8> %466, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  store <16 x i8> %467, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 160) to <16 x i8>*), align 16
  store <16 x i8> %468, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 176) to <16 x i8>*), align 16
  %469 = load <16 x i8>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 192) to <16 x i8>*), align 16
  %470 = load <16 x i8>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 208) to <16 x i8>*), align 16
  %471 = xor <16 x i8> %469, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  %472 = xor <16 x i8> %470, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  store <16 x i8> %471, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 192) to <16 x i8>*), align 16
  store <16 x i8> %472, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 208) to <16 x i8>*), align 16
  %473 = load <16 x i8>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 224) to <16 x i8>*), align 16
  %474 = load <16 x i8>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 240) to <16 x i8>*), align 16
  %475 = xor <16 x i8> %473, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  %476 = xor <16 x i8> %474, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  store <16 x i8> %475, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 224) to <16 x i8>*), align 16
  store <16 x i8> %476, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 240) to <16 x i8>*), align 16
  br label %477

; <label>:477:                                    ; preds = %444, %442
  br label %478

; <label>:478:                                    ; preds = %477, %481
  %479 = call i64 @read_and_delete(i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @io_buf, i64 0, i64 0), i64 8192)
  %480 = icmp eq i64 %479, 0
  br i1 %480, label %766, label %481

; <label>:481:                                    ; preds = %478
  %482 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %483 = call i64 @fwrite_unlocked(i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @io_buf, i64 0, i64 0), i64 1, i64 %479, %struct._IO_FILE* %482) #10
  %484 = icmp eq i64 %483, %479
  br i1 %484, label %478, label %485

; <label>:485:                                    ; preds = %481
  %486 = tail call i32* @__errno_location() #1
  %487 = load i32, i32* %486, align 4
  %488 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i64 0, i64 0), i32 5) #10
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %487, i8* %488) #10
  unreachable

; <label>:489:                                    ; preds = %424
  %490 = and i1 %32, %426
  %491 = and i1 %371, %490
  br i1 %491, label %492, label %554

; <label>:492:                                    ; preds = %489
  %493 = load i8, i8* @complement, align 1
  %494 = icmp eq i8 %493, 0
  %495 = getelementptr inbounds %struct.Spec_list, %struct.Spec_list* %6, i64 0, i32 2
  store i64 -2, i64* %495, align 8
  %496 = call fastcc i32 @get_next(%struct.Spec_list* nonnull %6, i32* null) #10
  %497 = icmp eq i32 %496, -1
  br i1 %497, label %506, label %498

; <label>:498:                                    ; preds = %492
  br label %499

; <label>:499:                                    ; preds = %498, %499
  %500 = phi i32 [ %503, %499 ], [ %496, %498 ]
  %501 = sext i32 %500 to i64
  %502 = getelementptr inbounds [256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 %501
  store i8 1, i8* %502, align 1
  %503 = call fastcc i32 @get_next(%struct.Spec_list* nonnull %6, i32* null) #10
  %504 = icmp eq i32 %503, -1
  br i1 %504, label %505, label %499

; <label>:505:                                    ; preds = %499
  br label %506

; <label>:506:                                    ; preds = %505, %492
  br i1 %494, label %541, label %507

; <label>:507:                                    ; preds = %506
  br label %508

; <label>:508:                                    ; preds = %507
  %509 = load <16 x i8>, <16 x i8>* bitcast ([256 x i8]* @in_delete_set to <16 x i8>*), align 16
  %510 = load <16 x i8>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 16) to <16 x i8>*), align 16
  %511 = xor <16 x i8> %509, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  %512 = xor <16 x i8> %510, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  store <16 x i8> %511, <16 x i8>* bitcast ([256 x i8]* @in_delete_set to <16 x i8>*), align 16
  store <16 x i8> %512, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 16) to <16 x i8>*), align 16
  %513 = load <16 x i8>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 32) to <16 x i8>*), align 16
  %514 = load <16 x i8>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 48) to <16 x i8>*), align 16
  %515 = xor <16 x i8> %513, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  %516 = xor <16 x i8> %514, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  store <16 x i8> %515, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 32) to <16 x i8>*), align 16
  store <16 x i8> %516, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 48) to <16 x i8>*), align 16
  %517 = load <16 x i8>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 64) to <16 x i8>*), align 16
  %518 = load <16 x i8>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 80) to <16 x i8>*), align 16
  %519 = xor <16 x i8> %517, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  %520 = xor <16 x i8> %518, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  store <16 x i8> %519, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 64) to <16 x i8>*), align 16
  store <16 x i8> %520, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 80) to <16 x i8>*), align 16
  %521 = load <16 x i8>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 96) to <16 x i8>*), align 16
  %522 = load <16 x i8>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 112) to <16 x i8>*), align 16
  %523 = xor <16 x i8> %521, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  %524 = xor <16 x i8> %522, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  store <16 x i8> %523, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 96) to <16 x i8>*), align 16
  store <16 x i8> %524, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 112) to <16 x i8>*), align 16
  %525 = load <16 x i8>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 128) to <16 x i8>*), align 16
  %526 = load <16 x i8>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 144) to <16 x i8>*), align 16
  %527 = xor <16 x i8> %525, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  %528 = xor <16 x i8> %526, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  store <16 x i8> %527, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 128) to <16 x i8>*), align 16
  store <16 x i8> %528, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 144) to <16 x i8>*), align 16
  %529 = load <16 x i8>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 160) to <16 x i8>*), align 16
  %530 = load <16 x i8>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 176) to <16 x i8>*), align 16
  %531 = xor <16 x i8> %529, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  %532 = xor <16 x i8> %530, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  store <16 x i8> %531, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 160) to <16 x i8>*), align 16
  store <16 x i8> %532, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 176) to <16 x i8>*), align 16
  %533 = load <16 x i8>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 192) to <16 x i8>*), align 16
  %534 = load <16 x i8>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 208) to <16 x i8>*), align 16
  %535 = xor <16 x i8> %533, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  %536 = xor <16 x i8> %534, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  store <16 x i8> %535, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 192) to <16 x i8>*), align 16
  store <16 x i8> %536, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 208) to <16 x i8>*), align 16
  %537 = load <16 x i8>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 224) to <16 x i8>*), align 16
  %538 = load <16 x i8>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 240) to <16 x i8>*), align 16
  %539 = xor <16 x i8> %537, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  %540 = xor <16 x i8> %538, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  store <16 x i8> %539, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 224) to <16 x i8>*), align 16
  store <16 x i8> %540, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 240) to <16 x i8>*), align 16
  br label %541

; <label>:541:                                    ; preds = %508, %506
  %542 = getelementptr inbounds %struct.Spec_list, %struct.Spec_list* %103, i64 0, i32 2
  store i64 -2, i64* %542, align 8
  %543 = call fastcc i32 @get_next(%struct.Spec_list* %103, i32* null) #10
  %544 = icmp eq i32 %543, -1
  br i1 %544, label %553, label %545

; <label>:545:                                    ; preds = %541
  br label %546

; <label>:546:                                    ; preds = %545, %546
  %547 = phi i32 [ %550, %546 ], [ %543, %545 ]
  %548 = sext i32 %547 to i64
  %549 = getelementptr inbounds [256 x i8], [256 x i8]* @in_squeeze_set, i64 0, i64 %548
  store i8 1, i8* %549, align 1
  %550 = call fastcc i32 @get_next(%struct.Spec_list* %103, i32* null) #10
  %551 = icmp eq i32 %550, -1
  br i1 %551, label %552, label %546

; <label>:552:                                    ; preds = %546
  br label %553

; <label>:553:                                    ; preds = %552, %541
  call fastcc void @squeeze_filter(i64 (i8*, i64)* nonnull @read_and_delete)
  br label %768

; <label>:554:                                    ; preds = %489
  %555 = load i8, i8* @translating, align 1
  %556 = icmp eq i8 %555, 0
  br i1 %556, label %768, label %557

; <label>:557:                                    ; preds = %554
  %558 = load i8, i8* @complement, align 1
  %559 = icmp eq i8 %558, 0
  br i1 %559, label %594, label %560

; <label>:560:                                    ; preds = %557
  %561 = getelementptr inbounds %struct.Spec_list, %struct.Spec_list* %6, i64 0, i32 2
  store i64 -2, i64* %561, align 8
  %562 = call fastcc i32 @get_next(%struct.Spec_list* nonnull %6, i32* null) #10
  %563 = icmp eq i32 %562, -1
  br i1 %563, label %572, label %564

; <label>:564:                                    ; preds = %560
  br label %565

; <label>:565:                                    ; preds = %564, %565
  %566 = phi i32 [ %569, %565 ], [ %562, %564 ]
  %567 = sext i32 %566 to i64
  %568 = getelementptr inbounds [256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 %567
  store i8 1, i8* %568, align 1
  %569 = call fastcc i32 @get_next(%struct.Spec_list* nonnull %6, i32* null) #10
  %570 = icmp eq i32 %569, -1
  br i1 %570, label %571, label %565

; <label>:571:                                    ; preds = %565
  br label %572

; <label>:572:                                    ; preds = %571, %560
  %573 = getelementptr inbounds %struct.Spec_list, %struct.Spec_list* %103, i64 0, i32 2
  store i64 -2, i64* %573, align 8
  br label %574

; <label>:574:                                    ; preds = %572
  store <16 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, <16 x i8>* bitcast ([256 x i8]* @xlate to <16 x i8>*), align 16
  store <16 x i8> <i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @xlate, i64 0, i64 16) to <16 x i8>*), align 16
  store <16 x i8> <i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @xlate, i64 0, i64 32) to <16 x i8>*), align 16
  store <16 x i8> <i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @xlate, i64 0, i64 48) to <16 x i8>*), align 16
  store <16 x i8> <i8 64, i8 65, i8 66, i8 67, i8 68, i8 69, i8 70, i8 71, i8 72, i8 73, i8 74, i8 75, i8 76, i8 77, i8 78, i8 79>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @xlate, i64 0, i64 64) to <16 x i8>*), align 16
  store <16 x i8> <i8 80, i8 81, i8 82, i8 83, i8 84, i8 85, i8 86, i8 87, i8 88, i8 89, i8 90, i8 91, i8 92, i8 93, i8 94, i8 95>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @xlate, i64 0, i64 80) to <16 x i8>*), align 16
  store <16 x i8> <i8 96, i8 97, i8 98, i8 99, i8 100, i8 101, i8 102, i8 103, i8 104, i8 105, i8 106, i8 107, i8 108, i8 109, i8 110, i8 111>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @xlate, i64 0, i64 96) to <16 x i8>*), align 16
  store <16 x i8> <i8 112, i8 113, i8 114, i8 115, i8 116, i8 117, i8 118, i8 119, i8 120, i8 121, i8 122, i8 123, i8 124, i8 125, i8 126, i8 127>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @xlate, i64 0, i64 112) to <16 x i8>*), align 16
  store <16 x i8> <i8 -128, i8 -127, i8 -126, i8 -125, i8 -124, i8 -123, i8 -122, i8 -121, i8 -120, i8 -119, i8 -118, i8 -117, i8 -116, i8 -115, i8 -114, i8 -113>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @xlate, i64 0, i64 128) to <16 x i8>*), align 16
  store <16 x i8> <i8 -112, i8 -111, i8 -110, i8 -109, i8 -108, i8 -107, i8 -106, i8 -105, i8 -104, i8 -103, i8 -102, i8 -101, i8 -100, i8 -99, i8 -98, i8 -97>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @xlate, i64 0, i64 144) to <16 x i8>*), align 16
  store <16 x i8> <i8 -96, i8 -95, i8 -94, i8 -93, i8 -92, i8 -91, i8 -90, i8 -89, i8 -88, i8 -87, i8 -86, i8 -85, i8 -84, i8 -83, i8 -82, i8 -81>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @xlate, i64 0, i64 160) to <16 x i8>*), align 16
  store <16 x i8> <i8 -80, i8 -79, i8 -78, i8 -77, i8 -76, i8 -75, i8 -74, i8 -73, i8 -72, i8 -71, i8 -70, i8 -69, i8 -68, i8 -67, i8 -66, i8 -65>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @xlate, i64 0, i64 176) to <16 x i8>*), align 16
  store <16 x i8> <i8 -64, i8 -63, i8 -62, i8 -61, i8 -60, i8 -59, i8 -58, i8 -57, i8 -56, i8 -55, i8 -54, i8 -53, i8 -52, i8 -51, i8 -50, i8 -49>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @xlate, i64 0, i64 192) to <16 x i8>*), align 16
  store <16 x i8> <i8 -48, i8 -47, i8 -46, i8 -45, i8 -44, i8 -43, i8 -42, i8 -41, i8 -40, i8 -39, i8 -38, i8 -37, i8 -36, i8 -35, i8 -34, i8 -33>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @xlate, i64 0, i64 208) to <16 x i8>*), align 16
  store <16 x i8> <i8 -32, i8 -31, i8 -30, i8 -29, i8 -28, i8 -27, i8 -26, i8 -25, i8 -24, i8 -23, i8 -22, i8 -21, i8 -20, i8 -19, i8 -18, i8 -17>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @xlate, i64 0, i64 224) to <16 x i8>*), align 16
  store <16 x i8> <i8 -16, i8 -15, i8 -14, i8 -13, i8 -12, i8 -11, i8 -10, i8 -9, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @xlate, i64 0, i64 240) to <16 x i8>*), align 16
  br label %575

; <label>:575:                                    ; preds = %574, %591
  %576 = phi i64 [ %592, %591 ], [ 0, %574 ]
  %577 = getelementptr inbounds [256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 %576
  %578 = load i8, i8* %577, align 1
  %579 = icmp eq i8 %578, 0
  br i1 %579, label %580, label %591

; <label>:580:                                    ; preds = %575
  %581 = call fastcc i32 @get_next(%struct.Spec_list* %103, i32* null)
  %582 = icmp eq i32 %581, -1
  %583 = load i8, i8* @truncate_set1, align 1
  %584 = icmp eq i8 %583, 0
  %585 = and i1 %582, %584
  br i1 %585, label %586, label %587

; <label>:586:                                    ; preds = %580
  call void @__assert_fail(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0), i32 1832, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #14
  unreachable

; <label>:587:                                    ; preds = %580
  br i1 %582, label %683, label %588

; <label>:588:                                    ; preds = %587
  %589 = trunc i32 %581 to i8
  %590 = getelementptr inbounds [256 x i8], [256 x i8]* @xlate, i64 0, i64 %576
  store i8 %589, i8* %590, align 1
  br label %591

; <label>:591:                                    ; preds = %588, %575
  %592 = add nuw nsw i64 %576, 1
  %593 = icmp slt i64 %592, 256
  br i1 %593, label %575, label %683

; <label>:594:                                    ; preds = %557
  %595 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start(i64 4, i8* nonnull %595) #10
  %596 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start(i64 4, i8* nonnull %596) #10
  br label %597

; <label>:597:                                    ; preds = %594
  store <16 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, <16 x i8>* bitcast ([256 x i8]* @xlate to <16 x i8>*), align 16
  store <16 x i8> <i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @xlate, i64 0, i64 16) to <16 x i8>*), align 16
  store <16 x i8> <i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @xlate, i64 0, i64 32) to <16 x i8>*), align 16
  store <16 x i8> <i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @xlate, i64 0, i64 48) to <16 x i8>*), align 16
  store <16 x i8> <i8 64, i8 65, i8 66, i8 67, i8 68, i8 69, i8 70, i8 71, i8 72, i8 73, i8 74, i8 75, i8 76, i8 77, i8 78, i8 79>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @xlate, i64 0, i64 64) to <16 x i8>*), align 16
  store <16 x i8> <i8 80, i8 81, i8 82, i8 83, i8 84, i8 85, i8 86, i8 87, i8 88, i8 89, i8 90, i8 91, i8 92, i8 93, i8 94, i8 95>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @xlate, i64 0, i64 80) to <16 x i8>*), align 16
  store <16 x i8> <i8 96, i8 97, i8 98, i8 99, i8 100, i8 101, i8 102, i8 103, i8 104, i8 105, i8 106, i8 107, i8 108, i8 109, i8 110, i8 111>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @xlate, i64 0, i64 96) to <16 x i8>*), align 16
  store <16 x i8> <i8 112, i8 113, i8 114, i8 115, i8 116, i8 117, i8 118, i8 119, i8 120, i8 121, i8 122, i8 123, i8 124, i8 125, i8 126, i8 127>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @xlate, i64 0, i64 112) to <16 x i8>*), align 16
  store <16 x i8> <i8 -128, i8 -127, i8 -126, i8 -125, i8 -124, i8 -123, i8 -122, i8 -121, i8 -120, i8 -119, i8 -118, i8 -117, i8 -116, i8 -115, i8 -114, i8 -113>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @xlate, i64 0, i64 128) to <16 x i8>*), align 16
  store <16 x i8> <i8 -112, i8 -111, i8 -110, i8 -109, i8 -108, i8 -107, i8 -106, i8 -105, i8 -104, i8 -103, i8 -102, i8 -101, i8 -100, i8 -99, i8 -98, i8 -97>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @xlate, i64 0, i64 144) to <16 x i8>*), align 16
  store <16 x i8> <i8 -96, i8 -95, i8 -94, i8 -93, i8 -92, i8 -91, i8 -90, i8 -89, i8 -88, i8 -87, i8 -86, i8 -85, i8 -84, i8 -83, i8 -82, i8 -81>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @xlate, i64 0, i64 160) to <16 x i8>*), align 16
  store <16 x i8> <i8 -80, i8 -79, i8 -78, i8 -77, i8 -76, i8 -75, i8 -74, i8 -73, i8 -72, i8 -71, i8 -70, i8 -69, i8 -68, i8 -67, i8 -66, i8 -65>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @xlate, i64 0, i64 176) to <16 x i8>*), align 16
  store <16 x i8> <i8 -64, i8 -63, i8 -62, i8 -61, i8 -60, i8 -59, i8 -58, i8 -57, i8 -56, i8 -55, i8 -54, i8 -53, i8 -52, i8 -51, i8 -50, i8 -49>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @xlate, i64 0, i64 192) to <16 x i8>*), align 16
  store <16 x i8> <i8 -48, i8 -47, i8 -46, i8 -45, i8 -44, i8 -43, i8 -42, i8 -41, i8 -40, i8 -39, i8 -38, i8 -37, i8 -36, i8 -35, i8 -34, i8 -33>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @xlate, i64 0, i64 208) to <16 x i8>*), align 16
  store <16 x i8> <i8 -32, i8 -31, i8 -30, i8 -29, i8 -28, i8 -27, i8 -26, i8 -25, i8 -24, i8 -23, i8 -22, i8 -21, i8 -20, i8 -19, i8 -18, i8 -17>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @xlate, i64 0, i64 224) to <16 x i8>*), align 16
  store <16 x i8> <i8 -16, i8 -15, i8 -14, i8 -13, i8 -12, i8 -11, i8 -10, i8 -9, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @xlate, i64 0, i64 240) to <16 x i8>*), align 16
  %598 = getelementptr inbounds %struct.Spec_list, %struct.Spec_list* %6, i64 0, i32 2
  store i64 -2, i64* %598, align 8
  %599 = getelementptr inbounds %struct.Spec_list, %struct.Spec_list* %103, i64 0, i32 2
  %600 = bitcast %struct.List_element** %78 to i64*
  %601 = getelementptr inbounds %struct.Spec_list, %struct.Spec_list* %103, i64 0, i32 1
  %602 = bitcast %struct.List_element** %601 to i64*
  br label %603

; <label>:603:                                    ; preds = %597, %667
  %604 = phi i64 [ -1, %667 ], [ -2, %597 ]
  store i64 %604, i64* %599, align 8
  br label %605

; <label>:605:                                    ; preds = %603, %665
  %606 = call fastcc i32 @get_next(%struct.Spec_list* nonnull %6, i32* nonnull %8)
  %607 = call fastcc i32 @get_next(%struct.Spec_list* %103, i32* nonnull %9)
  %608 = load i32, i32* %8, align 4
  %609 = icmp eq i32 %608, 0
  %610 = load i32, i32* %9, align 4
  %611 = icmp eq i32 %610, 1
  %612 = and i1 %609, %611
  br i1 %612, label %613, label %632

; <label>:613:                                    ; preds = %605
  %614 = tail call i16** @__ctype_b_loc() #1
  %615 = load i16*, i16** %614, align 8
  br label %616

; <label>:616:                                    ; preds = %629, %613
  %617 = phi i64 [ 0, %613 ], [ %630, %629 ]
  %618 = getelementptr inbounds i16, i16* %615, i64 %617
  %619 = load i16, i16* %618, align 2
  %620 = and i16 %619, 512
  %621 = icmp eq i16 %620, 0
  br i1 %621, label %629, label %622

; <label>:622:                                    ; preds = %616
  %623 = tail call i32** @__ctype_toupper_loc() #1
  %624 = load i32*, i32** %623, align 8
  %625 = getelementptr inbounds i32, i32* %624, i64 %617
  %626 = load i32, i32* %625, align 4
  %627 = trunc i32 %626 to i8
  %628 = getelementptr inbounds [256 x i8], [256 x i8]* @xlate, i64 0, i64 %617
  store i8 %627, i8* %628, align 1
  br label %629

; <label>:629:                                    ; preds = %616, %622
  %630 = add nuw nsw i64 %617, 1
  %631 = icmp eq i64 %630, 256
  br i1 %631, label %663, label %616

; <label>:632:                                    ; preds = %605
  %633 = icmp eq i32 %608, 1
  %634 = icmp eq i32 %610, 0
  %635 = and i1 %633, %634
  br i1 %635, label %636, label %655

; <label>:636:                                    ; preds = %632
  %637 = tail call i16** @__ctype_b_loc() #1
  %638 = load i16*, i16** %637, align 8
  br label %639

; <label>:639:                                    ; preds = %652, %636
  %640 = phi i64 [ 0, %636 ], [ %653, %652 ]
  %641 = getelementptr inbounds i16, i16* %638, i64 %640
  %642 = load i16, i16* %641, align 2
  %643 = and i16 %642, 256
  %644 = icmp eq i16 %643, 0
  br i1 %644, label %652, label %645

; <label>:645:                                    ; preds = %639
  %646 = tail call i32** @__ctype_tolower_loc() #1
  %647 = load i32*, i32** %646, align 8
  %648 = getelementptr inbounds i32, i32* %647, i64 %640
  %649 = load i32, i32* %648, align 4
  %650 = trunc i32 %649 to i8
  %651 = getelementptr inbounds [256 x i8], [256 x i8]* @xlate, i64 0, i64 %640
  store i8 %650, i8* %651, align 1
  br label %652

; <label>:652:                                    ; preds = %639, %645
  %653 = add nuw nsw i64 %640, 1
  %654 = icmp eq i64 %653, 256
  br i1 %654, label %664, label %639

; <label>:655:                                    ; preds = %632
  %656 = icmp eq i32 %606, -1
  %657 = icmp eq i32 %607, -1
  %658 = or i1 %656, %657
  br i1 %658, label %676, label %659

; <label>:659:                                    ; preds = %655
  %660 = trunc i32 %607 to i8
  %661 = sext i32 %606 to i64
  %662 = getelementptr inbounds [256 x i8], [256 x i8]* @xlate, i64 0, i64 %661
  store i8 %660, i8* %662, align 1
  br label %665

; <label>:663:                                    ; preds = %629
  br label %665

; <label>:664:                                    ; preds = %652
  br label %665

; <label>:665:                                    ; preds = %664, %663, %659
  %666 = icmp eq i32 %610, 2
  br i1 %666, label %605, label %667

; <label>:667:                                    ; preds = %665
  %668 = load %struct.List_element*, %struct.List_element** %78, align 8
  %669 = getelementptr inbounds %struct.List_element, %struct.List_element* %668, i64 0, i32 1
  %670 = bitcast %struct.List_element** %669 to i64*
  %671 = load i64, i64* %670, align 8
  store i64 %671, i64* %600, align 8
  store i64 -1, i64* %598, align 8
  %672 = load %struct.List_element*, %struct.List_element** %601, align 8
  %673 = getelementptr inbounds %struct.List_element, %struct.List_element* %672, i64 0, i32 1
  %674 = bitcast %struct.List_element** %673 to i64*
  %675 = load i64, i64* %674, align 8
  store i64 %675, i64* %602, align 8
  br label %603

; <label>:676:                                    ; preds = %655
  %677 = xor i1 %656, true
  %678 = load i8, i8* @truncate_set1, align 1
  %679 = icmp eq i8 %678, 0
  %680 = and i1 %679, %677
  br i1 %680, label %681, label %682

; <label>:681:                                    ; preds = %676
  call void @__assert_fail(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0), i32 1885, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #14
  unreachable

; <label>:682:                                    ; preds = %676
  call void @llvm.lifetime.end(i64 4, i8* nonnull %596) #10
  call void @llvm.lifetime.end(i64 4, i8* nonnull %595) #10
  br label %684

; <label>:683:                                    ; preds = %587, %591
  br label %684

; <label>:684:                                    ; preds = %683, %682
  %685 = load i8, i8* @squeeze_repeats, align 1
  %686 = icmp eq i8 %685, 0
  br i1 %686, label %687, label %688

; <label>:687:                                    ; preds = %684
  br label %701

; <label>:688:                                    ; preds = %684
  %689 = getelementptr inbounds %struct.Spec_list, %struct.Spec_list* %103, i64 0, i32 2
  store i64 -2, i64* %689, align 8
  %690 = call fastcc i32 @get_next(%struct.Spec_list* %103, i32* null) #10
  %691 = icmp eq i32 %690, -1
  br i1 %691, label %700, label %692

; <label>:692:                                    ; preds = %688
  br label %693

; <label>:693:                                    ; preds = %692, %693
  %694 = phi i32 [ %697, %693 ], [ %690, %692 ]
  %695 = sext i32 %694 to i64
  %696 = getelementptr inbounds [256 x i8], [256 x i8]* @in_squeeze_set, i64 0, i64 %695
  store i8 1, i8* %696, align 1
  %697 = call fastcc i32 @get_next(%struct.Spec_list* %103, i32* null) #10
  %698 = icmp eq i32 %697, -1
  br i1 %698, label %699, label %693

; <label>:699:                                    ; preds = %693
  br label %700

; <label>:700:                                    ; preds = %699, %688
  call fastcc void @squeeze_filter(i64 (i8*, i64)* nonnull @read_and_xlate)
  br label %768

; <label>:701:                                    ; preds = %687, %758
  %702 = call i64 @safe_read(i32 0, i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @io_buf, i64 0, i64 0), i64 8192) #10
  switch i64 %702, label %703 [
    i64 -1, label %724
    i64 0, label %767
  ]

; <label>:703:                                    ; preds = %701
  %704 = add i64 %702, -1
  %705 = and i64 %702, 3
  %706 = icmp eq i64 %705, 0
  br i1 %706, label %720, label %707

; <label>:707:                                    ; preds = %703
  br label %708

; <label>:708:                                    ; preds = %708, %707
  %709 = phi i64 [ %716, %708 ], [ 0, %707 ]
  %710 = phi i64 [ %717, %708 ], [ %705, %707 ]
  %711 = getelementptr inbounds [8192 x i8], [8192 x i8]* @io_buf, i64 0, i64 %709
  %712 = load i8, i8* %711, align 1
  %713 = zext i8 %712 to i64
  %714 = getelementptr inbounds [256 x i8], [256 x i8]* @xlate, i64 0, i64 %713
  %715 = load i8, i8* %714, align 1
  store i8 %715, i8* %711, align 1
  %716 = add nuw i64 %709, 1
  %717 = add i64 %710, -1
  %718 = icmp eq i64 %717, 0
  br i1 %718, label %719, label %708

; <label>:719:                                    ; preds = %708
  br label %720

; <label>:720:                                    ; preds = %703, %719
  %721 = phi i64 [ 0, %703 ], [ %716, %719 ]
  %722 = icmp ult i64 %704, 3
  br i1 %722, label %756, label %723

; <label>:723:                                    ; preds = %720
  br label %728

; <label>:724:                                    ; preds = %701
  %725 = tail call i32* @__errno_location() #1
  %726 = load i32, i32* %725, align 4
  %727 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.95, i64 0, i64 0), i32 5) #10
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %726, i8* %727) #10
  unreachable

; <label>:728:                                    ; preds = %728, %723
  %729 = phi i64 [ %721, %723 ], [ %753, %728 ]
  %730 = getelementptr inbounds [8192 x i8], [8192 x i8]* @io_buf, i64 0, i64 %729
  %731 = load i8, i8* %730, align 1
  %732 = zext i8 %731 to i64
  %733 = getelementptr inbounds [256 x i8], [256 x i8]* @xlate, i64 0, i64 %732
  %734 = load i8, i8* %733, align 1
  store i8 %734, i8* %730, align 1
  %735 = add nuw i64 %729, 1
  %736 = getelementptr inbounds [8192 x i8], [8192 x i8]* @io_buf, i64 0, i64 %735
  %737 = load i8, i8* %736, align 1
  %738 = zext i8 %737 to i64
  %739 = getelementptr inbounds [256 x i8], [256 x i8]* @xlate, i64 0, i64 %738
  %740 = load i8, i8* %739, align 1
  store i8 %740, i8* %736, align 1
  %741 = add i64 %729, 2
  %742 = getelementptr inbounds [8192 x i8], [8192 x i8]* @io_buf, i64 0, i64 %741
  %743 = load i8, i8* %742, align 1
  %744 = zext i8 %743 to i64
  %745 = getelementptr inbounds [256 x i8], [256 x i8]* @xlate, i64 0, i64 %744
  %746 = load i8, i8* %745, align 1
  store i8 %746, i8* %742, align 1
  %747 = add i64 %729, 3
  %748 = getelementptr inbounds [8192 x i8], [8192 x i8]* @io_buf, i64 0, i64 %747
  %749 = load i8, i8* %748, align 1
  %750 = zext i8 %749 to i64
  %751 = getelementptr inbounds [256 x i8], [256 x i8]* @xlate, i64 0, i64 %750
  %752 = load i8, i8* %751, align 1
  store i8 %752, i8* %748, align 1
  %753 = add i64 %729, 4
  %754 = icmp eq i64 %753, %702
  br i1 %754, label %755, label %728

; <label>:755:                                    ; preds = %728
  br label %756

; <label>:756:                                    ; preds = %720, %755
  %757 = icmp eq i64 %702, 0
  br i1 %757, label %767, label %758

; <label>:758:                                    ; preds = %756
  %759 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %760 = call i64 @fwrite_unlocked(i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @io_buf, i64 0, i64 0), i64 1, i64 %702, %struct._IO_FILE* %759) #10
  %761 = icmp eq i64 %760, %702
  br i1 %761, label %701, label %762

; <label>:762:                                    ; preds = %758
  %763 = tail call i32* @__errno_location() #1
  %764 = load i32, i32* %763, align 4
  %765 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i64 0, i64 0), i32 5) #10
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %764, i8* %765) #10
  unreachable

; <label>:766:                                    ; preds = %478
  br label %768

; <label>:767:                                    ; preds = %756, %701
  br label %768

; <label>:768:                                    ; preds = %767, %766, %554, %700, %553, %423
  %769 = call i32 @close(i32 0) #10
  %770 = icmp eq i32 %769, 0
  br i1 %770, label %775, label %771

; <label>:771:                                    ; preds = %768
  %772 = tail call i32* @__errno_location() #1
  %773 = load i32, i32* %772, align 4
  %774 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i64 0, i64 0), i32 5) #10
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %773, i8* %774) #10
  unreachable

; <label>:775:                                    ; preds = %768, %89, %76
  %776 = phi i32 [ 1, %76 ], [ 1, %89 ], [ 0, %768 ]
  call void @llvm.lifetime.end(i64 56, i8* nonnull %11) #10
  call void @llvm.lifetime.end(i64 56, i8* nonnull %10) #10
  ret i32 %776
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #7

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @parse_str(i8* nocapture readonly, %struct.Spec_list* nocapture) unnamed_addr #6 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = tail call i64 @strlen(i8* %0) #13
  %6 = tail call noalias i8* @xmalloc(i64 %5) #10
  %7 = tail call noalias i8* @xcalloc(i64 %5, i64 1) #10
  br label %8

; <label>:8:                                      ; preds = %75, %2
  %9 = phi i32 [ 0, %2 ], [ %79, %75 ]
  %10 = phi i32 [ 0, %2 ], [ %81, %75 ]
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds i8, i8* %0, i64 %11
  %13 = load i8, i8* %12, align 1
  switch i8 %13, label %14 [
    i8 0, label %82
    i8 92, label %16
  ]

; <label>:14:                                     ; preds = %8
  %15 = zext i32 %9 to i64
  br label %75

; <label>:16:                                     ; preds = %8
  %17 = zext i32 %9 to i64
  %18 = getelementptr inbounds i8, i8* %7, i64 %17
  store i8 1, i8* %18, align 1
  %19 = add i32 %10, 1
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %0, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
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
  ]

; <label>:24:                                     ; preds = %16
  br label %71

; <label>:25:                                     ; preds = %16
  br label %71

; <label>:26:                                     ; preds = %16
  br label %71

; <label>:27:                                     ; preds = %16
  br label %71

; <label>:28:                                     ; preds = %16
  br label %71

; <label>:29:                                     ; preds = %16
  br label %71

; <label>:30:                                     ; preds = %16
  br label %71

; <label>:31:                                     ; preds = %16, %16, %16, %16, %16, %16, %16, %16
  %32 = add i8 %22, -48
  %33 = add i32 %10, 2
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %0, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = add nsw i32 %37, -48
  %39 = icmp ult i32 %38, 8
  br i1 %39, label %40, label %71

; <label>:40:                                     ; preds = %31
  %41 = zext i8 %32 to i32
  %42 = shl nuw nsw i32 %41, 3
  %43 = add nsw i32 %38, %42
  %44 = trunc i32 %43 to i8
  %45 = add i32 %10, 3
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %0, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = add nsw i32 %49, -48
  %51 = icmp ult i32 %50, 8
  br i1 %51, label %52, label %71

; <label>:52:                                     ; preds = %40
  %53 = shl nsw i32 %43, 3
  %54 = and i32 %53, 2040
  %55 = add nsw i32 %50, %54
  %56 = icmp slt i32 %55, 256
  br i1 %56, label %57, label %59

; <label>:57:                                     ; preds = %52
  %58 = trunc i32 %55 to i8
  br label %71

; <label>:59:                                     ; preds = %52
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.49, i64 0, i64 0), i32 5) #10
  %61 = load i8, i8* %21, align 1
  %62 = sext i8 %61 to i32
  %63 = load i8, i8* %35, align 1
  %64 = sext i8 %63 to i32
  %65 = load i8, i8* %47, align 1
  %66 = sext i8 %65 to i32
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %60, i32 %62, i32 %64, i32 %66, i32 %62, i32 %64, i32 %66) #10
  br label %71

; <label>:67:                                     ; preds = %16
  %68 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.50, i64 0, i64 0), i32 5) #10
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %68) #10
  store i8 0, i8* %18, align 1
  %69 = add i32 %10, -1
  br label %71

; <label>:70:                                     ; preds = %16
  br label %71

; <label>:71:                                     ; preds = %70, %67, %59, %57, %40, %31, %30, %29, %28, %27, %26, %25, %24, %16
  %72 = phi i32 [ %10, %70 ], [ %69, %67 ], [ %33, %57 ], [ %19, %59 ], [ %19, %40 ], [ %10, %31 ], [ %10, %30 ], [ %10, %29 ], [ %10, %28 ], [ %10, %27 ], [ %10, %26 ], [ %10, %25 ], [ %10, %24 ], [ %10, %16 ]
  %73 = phi i8 [ %22, %70 ], [ 92, %67 ], [ %58, %57 ], [ %44, %59 ], [ %44, %40 ], [ %32, %31 ], [ 11, %30 ], [ 9, %29 ], [ 13, %28 ], [ 10, %27 ], [ 12, %26 ], [ 8, %25 ], [ 7, %24 ], [ 92, %16 ]
  %74 = add i32 %72, 1
  br label %75

; <label>:75:                                     ; preds = %71, %14
  %76 = phi i64 [ %15, %14 ], [ %17, %71 ]
  %77 = phi i32 [ %10, %14 ], [ %74, %71 ]
  %78 = phi i8 [ %13, %14 ], [ %73, %71 ]
  %79 = add i32 %9, 1
  %80 = getelementptr inbounds i8, i8* %6, i64 %76
  store i8 %78, i8* %80, align 1
  %81 = add i32 %77, 1
  br label %8

; <label>:82:                                     ; preds = %8
  %83 = zext i32 %9 to i64
  %84 = icmp ugt i32 %9, 2
  br i1 %84, label %85, label %96

; <label>:85:                                     ; preds = %82
  %86 = bitcast i64* %4 to i8*
  %87 = getelementptr inbounds %struct.Spec_list, %struct.Spec_list* %1, i64 0, i32 1
  %88 = bitcast %struct.List_element** %87 to i8**
  %89 = bitcast i8** %3 to i8*
  %90 = add nsw i64 %83, -1
  br label %91

; <label>:91:                                     ; preds = %332, %85
  %92 = phi i64 [ 2, %85 ], [ %336, %332 ]
  %93 = phi i64 [ 0, %85 ], [ %335, %332 ]
  br label %102

; <label>:94:                                     ; preds = %418
  br label %96

; <label>:95:                                     ; preds = %332
  br label %96

; <label>:96:                                     ; preds = %95, %94, %82
  %97 = phi i64 [ 0, %82 ], [ %419, %94 ], [ %335, %95 ]
  %98 = icmp ult i64 %97, %83
  br i1 %98, label %99, label %440

; <label>:99:                                     ; preds = %96
  %100 = getelementptr inbounds %struct.Spec_list, %struct.Spec_list* %1, i64 0, i32 1
  %101 = bitcast %struct.List_element** %100 to i8**
  br label %422

; <label>:102:                                    ; preds = %418, %91
  %103 = phi i64 [ %92, %91 ], [ %420, %418 ]
  %104 = phi i64 [ %93, %91 ], [ %419, %418 ]
  %105 = getelementptr inbounds i8, i8* %6, i64 %104
  %106 = load i8, i8* %105, align 1
  %107 = icmp eq i8 %106, 91
  br i1 %107, label %108, label %347

; <label>:108:                                    ; preds = %102
  %109 = getelementptr inbounds i8, i8* %7, i64 %104
  %110 = load i8, i8* %109, align 1
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %112, label %347

; <label>:112:                                    ; preds = %108
  call void @llvm.lifetime.start(i64 8, i8* nonnull %86) #10
  %113 = add i64 %104, 1
  %114 = getelementptr inbounds i8, i8* %6, i64 %113
  %115 = load i8, i8* %114, align 1
  switch i8 %115, label %268 [
    i8 58, label %116
    i8 61, label %122
  ]

; <label>:116:                                    ; preds = %112
  %117 = getelementptr inbounds i8, i8* %7, i64 %113
  %118 = load i8, i8* %117, align 1
  %119 = icmp eq i8 %118, 0
  %120 = icmp ugt i64 %90, %103
  %121 = and i1 %119, %120
  br i1 %121, label %128, label %268

; <label>:122:                                    ; preds = %112
  %123 = getelementptr inbounds i8, i8* %7, i64 %113
  %124 = load i8, i8* %123, align 1
  %125 = icmp eq i8 %124, 0
  %126 = icmp ugt i64 %90, %103
  %127 = and i1 %125, %126
  br i1 %127, label %128, label %268

; <label>:128:                                    ; preds = %116, %122
  br label %129

; <label>:129:                                    ; preds = %128, %147
  %130 = phi i64 [ %134, %147 ], [ %103, %128 ]
  %131 = getelementptr inbounds i8, i8* %6, i64 %130
  %132 = load i8, i8* %131, align 1
  %133 = icmp eq i8 %132, %115
  %134 = add nuw i64 %130, 1
  br i1 %133, label %135, label %147

; <label>:135:                                    ; preds = %129
  %136 = getelementptr inbounds i8, i8* %6, i64 %134
  %137 = load i8, i8* %136, align 1
  %138 = icmp eq i8 %137, 93
  br i1 %138, label %139, label %147

; <label>:139:                                    ; preds = %135
  %140 = getelementptr inbounds i8, i8* %7, i64 %130
  %141 = load i8, i8* %140, align 1
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %143, label %147

; <label>:143:                                    ; preds = %139
  %144 = getelementptr inbounds i8, i8* %7, i64 %134
  %145 = load i8, i8* %144, align 1
  %146 = icmp eq i8 %145, 0
  br i1 %146, label %149, label %147

; <label>:147:                                    ; preds = %143, %139, %135, %129
  %148 = icmp ult i64 %134, %90
  br i1 %148, label %129, label %267

; <label>:149:                                    ; preds = %143
  %150 = xor i64 %103, -1
  %151 = add i64 %130, %150
  %152 = add i64 %151, 1
  %153 = getelementptr inbounds i8, i8* %105, i64 2
  %154 = icmp eq i64 %152, 0
  %155 = icmp eq i8 %115, 58
  br i1 %154, label %156, label %161

; <label>:156:                                    ; preds = %149
  br i1 %155, label %157, label %159

; <label>:157:                                    ; preds = %156
  %158 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.51, i64 0, i64 0), i32 5) #10
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %158) #10
  br label %340

; <label>:159:                                    ; preds = %156
  %160 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.52, i64 0, i64 0), i32 5) #10
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %160) #10
  br label %340

; <label>:161:                                    ; preds = %149
  br i1 %155, label %162, label %221

; <label>:162:                                    ; preds = %161
  br label %163

; <label>:163:                                    ; preds = %162, %172
  %164 = phi i64 [ %173, %172 ], [ 0, %162 ]
  %165 = getelementptr inbounds [12 x i8*], [12 x i8*]* @char_class_name, i64 0, i64 %164
  %166 = load i8*, i8** %165, align 8
  %167 = call i32 @strncmp(i8* %153, i8* %166, i64 %152) #13
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %172

; <label>:169:                                    ; preds = %163
  %170 = call i64 @strlen(i8* %166) #13
  %171 = icmp eq i64 %170, %152
  br i1 %171, label %175, label %172

; <label>:172:                                    ; preds = %169, %163
  %173 = add nuw nsw i64 %164, 1
  %174 = icmp ult i64 %173, 12
  br i1 %174, label %163, label %186

; <label>:175:                                    ; preds = %169
  %176 = trunc i64 %164 to i32
  %177 = call noalias i8* @xmalloc(i64 32) #10
  %178 = getelementptr inbounds i8, i8* %177, i64 8
  %179 = bitcast i8* %178 to %struct.List_element**
  store %struct.List_element* null, %struct.List_element** %179, align 8
  %180 = bitcast i8* %177 to i32*
  store i32 2, i32* %180, align 8
  %181 = getelementptr inbounds i8, i8* %177, i64 16
  %182 = bitcast i8* %181 to i32*
  store i32 %176, i32* %182, align 8
  %183 = load %struct.List_element*, %struct.List_element** %87, align 8
  %184 = icmp eq %struct.List_element* %183, null
  br i1 %184, label %185, label %341

; <label>:185:                                    ; preds = %175
  call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.55, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0), i32 699, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @__PRETTY_FUNCTION__.append_char_class, i64 0, i64 0)) #14
  unreachable

; <label>:186:                                    ; preds = %172
  %187 = getelementptr inbounds i8, i8* %6, i64 %103
  %188 = load i8, i8* %187, align 1
  %189 = icmp eq i8 %188, 42
  br i1 %189, label %190, label %216

; <label>:190:                                    ; preds = %186
  %191 = getelementptr inbounds i8, i8* %7, i64 %103
  %192 = load i8, i8* %191, align 1
  %193 = icmp eq i8 %192, 0
  br i1 %193, label %194, label %216

; <label>:194:                                    ; preds = %190
  br label %195

; <label>:195:                                    ; preds = %194, %205
  %196 = phi i64 [ %197, %205 ], [ %103, %194 ]
  %197 = add nuw i64 %196, 1
  %198 = icmp ult i64 %197, %83
  br i1 %198, label %199, label %215

; <label>:199:                                    ; preds = %195
  %200 = getelementptr inbounds i8, i8* %6, i64 %197
  %201 = load i8, i8* %200, align 1
  %202 = zext i8 %201 to i32
  %203 = add nsw i32 %202, -48
  %204 = icmp ult i32 %203, 10
  br i1 %204, label %205, label %209

; <label>:205:                                    ; preds = %199
  %206 = getelementptr inbounds i8, i8* %7, i64 %197
  %207 = load i8, i8* %206, align 1
  %208 = icmp eq i8 %207, 0
  br i1 %208, label %195, label %209

; <label>:209:                                    ; preds = %205, %199
  %210 = icmp eq i8 %201, 93
  br i1 %210, label %211, label %216

; <label>:211:                                    ; preds = %209
  %212 = getelementptr inbounds i8, i8* %7, i64 %197
  %213 = load i8, i8* %212, align 1
  %214 = icmp eq i8 %213, 0
  br i1 %214, label %268, label %216

; <label>:215:                                    ; preds = %195
  br label %217

; <label>:216:                                    ; preds = %186, %190, %209, %211
  br label %217

; <label>:217:                                    ; preds = %216, %215
  %218 = call fastcc i8* @make_printable_str(i8* %153, i64 %152) #10
  %219 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.53, i64 0, i64 0), i32 5) #10
  %220 = call i8* @quote(i8* %218) #10
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %219, i8* %220) #10
  call void @free(i8* %218) #10
  br label %340

; <label>:221:                                    ; preds = %161
  %222 = icmp eq i64 %151, 0
  br i1 %222, label %223, label %233

; <label>:223:                                    ; preds = %221
  %224 = call noalias i8* @xmalloc(i64 32) #10
  %225 = getelementptr inbounds i8, i8* %224, i64 8
  %226 = bitcast i8* %225 to %struct.List_element**
  store %struct.List_element* null, %struct.List_element** %226, align 8
  %227 = bitcast i8* %224 to i32*
  store i32 3, i32* %227, align 8
  %228 = load i8, i8* %153, align 1
  %229 = getelementptr inbounds i8, i8* %224, i64 16
  store i8 %228, i8* %229, align 8
  %230 = load %struct.List_element*, %struct.List_element** %87, align 8
  %231 = icmp eq %struct.List_element* %230, null
  br i1 %231, label %232, label %341

; <label>:232:                                    ; preds = %223
  call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.55, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0), i32 741, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @__PRETTY_FUNCTION__.append_equiv_class, i64 0, i64 0)) #14
  unreachable

; <label>:233:                                    ; preds = %221
  %234 = getelementptr inbounds i8, i8* %6, i64 %103
  %235 = load i8, i8* %234, align 1
  %236 = icmp eq i8 %235, 42
  br i1 %236, label %237, label %263

; <label>:237:                                    ; preds = %233
  %238 = getelementptr inbounds i8, i8* %7, i64 %103
  %239 = load i8, i8* %238, align 1
  %240 = icmp eq i8 %239, 0
  br i1 %240, label %241, label %263

; <label>:241:                                    ; preds = %237
  br label %242

; <label>:242:                                    ; preds = %241, %252
  %243 = phi i64 [ %244, %252 ], [ %103, %241 ]
  %244 = add nuw i64 %243, 1
  %245 = icmp ult i64 %244, %83
  br i1 %245, label %246, label %262

; <label>:246:                                    ; preds = %242
  %247 = getelementptr inbounds i8, i8* %6, i64 %244
  %248 = load i8, i8* %247, align 1
  %249 = zext i8 %248 to i32
  %250 = add nsw i32 %249, -48
  %251 = icmp ult i32 %250, 10
  br i1 %251, label %252, label %256

; <label>:252:                                    ; preds = %246
  %253 = getelementptr inbounds i8, i8* %7, i64 %244
  %254 = load i8, i8* %253, align 1
  %255 = icmp eq i8 %254, 0
  br i1 %255, label %242, label %256

; <label>:256:                                    ; preds = %252, %246
  %257 = icmp eq i8 %248, 93
  br i1 %257, label %258, label %263

; <label>:258:                                    ; preds = %256
  %259 = getelementptr inbounds i8, i8* %7, i64 %244
  %260 = load i8, i8* %259, align 1
  %261 = icmp eq i8 %260, 0
  br i1 %261, label %268, label %263

; <label>:262:                                    ; preds = %242
  br label %264

; <label>:263:                                    ; preds = %233, %237, %256, %258
  br label %264

; <label>:264:                                    ; preds = %263, %262
  %265 = call fastcc i8* @make_printable_str(i8* %153, i64 %152) #10
  %266 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.54, i64 0, i64 0), i32 5) #10
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %266, i8* %265) #10
  call void @free(i8* %265) #10
  br label %340

; <label>:267:                                    ; preds = %147
  br label %268

; <label>:268:                                    ; preds = %267, %258, %211, %122, %116, %112
  %269 = add i64 %104, 2
  %270 = icmp ult i64 %269, %83
  br i1 %270, label %272, label %271

; <label>:271:                                    ; preds = %268
  call void @__assert_fail(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.77, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0), i32 782, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @__PRETTY_FUNCTION__.find_bracketed_repeat, i64 0, i64 0)) #14
  unreachable

; <label>:272:                                    ; preds = %268
  %273 = getelementptr inbounds i8, i8* %6, i64 %269
  %274 = load i8, i8* %273, align 1
  %275 = icmp eq i8 %274, 42
  br i1 %275, label %276, label %339

; <label>:276:                                    ; preds = %272
  %277 = getelementptr inbounds i8, i8* %7, i64 %269
  %278 = load i8, i8* %277, align 1
  %279 = icmp eq i8 %278, 0
  br i1 %279, label %280, label %339

; <label>:280:                                    ; preds = %276
  %281 = add i64 %104, 3
  %282 = icmp ult i64 %281, %83
  br i1 %282, label %283, label %339

; <label>:283:                                    ; preds = %280
  br label %284

; <label>:284:                                    ; preds = %283, %313
  %285 = phi i64 [ %314, %313 ], [ %281, %283 ]
  %286 = getelementptr inbounds i8, i8* %7, i64 %285
  %287 = load i8, i8* %286, align 1
  %288 = icmp eq i8 %287, 0
  br i1 %288, label %289, label %338

; <label>:289:                                    ; preds = %284
  %290 = getelementptr inbounds i8, i8* %6, i64 %285
  %291 = load i8, i8* %290, align 1
  %292 = icmp eq i8 %291, 93
  br i1 %292, label %293, label %313

; <label>:293:                                    ; preds = %289
  %294 = sub i64 %285, %113
  %295 = add i64 %294, -2
  %296 = icmp eq i64 %295, 0
  br i1 %296, label %297, label %298

; <label>:297:                                    ; preds = %293
  store i64 0, i64* %4, align 8
  br label %320

; <label>:298:                                    ; preds = %293
  %299 = getelementptr inbounds i8, i8* %6, i64 %281
  call void @llvm.lifetime.start(i64 8, i8* nonnull %89) #10
  %300 = load i8, i8* %299, align 1
  %301 = icmp eq i8 %300, 48
  %302 = select i1 %301, i32 8, i32 10
  %303 = call i32 @xstrtoumax(i8* %299, i8** nonnull %3, i32 %302, i64* nonnull %4, i8* null) #10
  %304 = icmp ne i32 %303, 0
  %305 = load i64, i64* %4, align 8
  %306 = icmp eq i64 %305, -1
  %307 = or i1 %304, %306
  br i1 %307, label %316, label %308

; <label>:308:                                    ; preds = %298
  %309 = getelementptr inbounds i8, i8* %299, i64 %295
  %310 = load i8*, i8** %3, align 8
  %311 = icmp eq i8* %309, %310
  br i1 %311, label %312, label %316

; <label>:312:                                    ; preds = %308
  call void @llvm.lifetime.end(i64 8, i8* nonnull %89) #10
  br label %320

; <label>:313:                                    ; preds = %289
  %314 = add i64 %285, 1
  %315 = icmp ult i64 %314, %83
  br i1 %315, label %284, label %338

; <label>:316:                                    ; preds = %308, %298
  %317 = call fastcc i8* @make_printable_str(i8* %299, i64 %295) #10
  %318 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.78, i64 0, i64 0), i32 5) #10
  %319 = call i8* @quote(i8* %317) #10
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %318, i8* %319) #10
  call void @free(i8* %317) #10
  call void @llvm.lifetime.end(i64 8, i8* nonnull %89) #10
  call void @llvm.lifetime.end(i64 8, i8* nonnull %86) #10
  br label %440

; <label>:320:                                    ; preds = %312, %297
  %321 = phi i64 [ %305, %312 ], [ 0, %297 ]
  %322 = call noalias i8* @xmalloc(i64 32) #10
  %323 = getelementptr inbounds i8, i8* %322, i64 8
  %324 = bitcast i8* %323 to %struct.List_element**
  store %struct.List_element* null, %struct.List_element** %324, align 8
  %325 = bitcast i8* %322 to i32*
  store i32 4, i32* %325, align 8
  %326 = getelementptr inbounds i8, i8* %322, i64 16
  store i8 %115, i8* %326, align 8
  %327 = getelementptr inbounds i8, i8* %322, i64 24
  %328 = bitcast i8* %327 to i64*
  store i64 %321, i64* %328, align 8
  %329 = load %struct.List_element*, %struct.List_element** %87, align 8
  %330 = icmp eq %struct.List_element* %329, null
  br i1 %330, label %331, label %332

; <label>:331:                                    ; preds = %320
  call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.55, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0), i32 719, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__PRETTY_FUNCTION__.append_repeated_char, i64 0, i64 0)) #14
  unreachable

; <label>:332:                                    ; preds = %320
  %333 = getelementptr inbounds %struct.List_element, %struct.List_element* %329, i64 0, i32 1
  %334 = bitcast %struct.List_element** %333 to i8**
  store i8* %322, i8** %334, align 8
  store i8* %322, i8** %88, align 8
  %335 = add i64 %285, 1
  call void @llvm.lifetime.end(i64 8, i8* nonnull %86) #10
  %336 = add i64 %285, 3
  %337 = icmp ult i64 %336, %83
  br i1 %337, label %91, label %95

; <label>:338:                                    ; preds = %284, %313
  br label %339

; <label>:339:                                    ; preds = %338, %280, %276, %272
  call void @llvm.lifetime.end(i64 8, i8* nonnull %86) #10
  br label %347

; <label>:340:                                    ; preds = %264, %217, %159, %157
  call void @llvm.lifetime.end(i64 8, i8* nonnull %86) #10
  br label %440

; <label>:341:                                    ; preds = %223, %175
  %342 = phi %struct.List_element* [ %230, %223 ], [ %183, %175 ]
  %343 = phi i8* [ %224, %223 ], [ %177, %175 ]
  %344 = getelementptr inbounds %struct.List_element, %struct.List_element* %342, i64 0, i32 1
  %345 = bitcast %struct.List_element** %344 to i8**
  store i8* %343, i8** %345, align 8
  store i8* %343, i8** %88, align 8
  %346 = add i64 %130, 2
  call void @llvm.lifetime.end(i64 8, i8* nonnull %86) #10
  br label %418

; <label>:347:                                    ; preds = %339, %108, %102
  %348 = add i64 %104, 1
  %349 = getelementptr inbounds i8, i8* %6, i64 %348
  %350 = load i8, i8* %349, align 1
  %351 = icmp eq i8 %350, 45
  br i1 %351, label %352, label %406

; <label>:352:                                    ; preds = %347
  %353 = getelementptr inbounds i8, i8* %7, i64 %348
  %354 = load i8, i8* %353, align 1
  %355 = icmp eq i8 %354, 0
  br i1 %355, label %356, label %406

; <label>:356:                                    ; preds = %352
  %357 = add i64 %104, 2
  %358 = getelementptr inbounds i8, i8* %6, i64 %357
  %359 = load i8, i8* %358, align 1
  %360 = icmp ult i8 %359, %106
  br i1 %360, label %361, label %390

; <label>:361:                                    ; preds = %356
  %362 = call noalias i8* @xmalloc(i64 5) #10
  %363 = tail call i16** @__ctype_b_loc() #1
  %364 = load i16*, i16** %363, align 8
  %365 = zext i8 %106 to i64
  %366 = getelementptr inbounds i16, i16* %364, i64 %365
  %367 = load i16, i16* %366, align 2
  %368 = and i16 %367, 16384
  %369 = icmp eq i16 %368, 0
  br i1 %369, label %372, label %370

; <label>:370:                                    ; preds = %361
  store i8 %106, i8* %362, align 1
  %371 = getelementptr inbounds i8, i8* %362, i64 1
  store i8 0, i8* %371, align 1
  br label %376

; <label>:372:                                    ; preds = %361
  %373 = zext i8 %106 to i32
  %374 = call i64 @llvm.objectsize.i64.p0i8(i8* %362, i1 false) #10
  %375 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %362, i32 1, i64 %374, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.76, i64 0, i64 0), i32 %373) #10
  br label %376

; <label>:376:                                    ; preds = %372, %370
  %377 = call noalias i8* @xmalloc(i64 5) #10
  %378 = load i16*, i16** %363, align 8
  %379 = zext i8 %359 to i64
  %380 = getelementptr inbounds i16, i16* %378, i64 %379
  %381 = load i16, i16* %380, align 2
  %382 = and i16 %381, 16384
  %383 = icmp eq i16 %382, 0
  br i1 %383, label %386, label %384

; <label>:384:                                    ; preds = %376
  store i8 %359, i8* %377, align 1
  %385 = getelementptr inbounds i8, i8* %377, i64 1
  store i8 0, i8* %385, align 1
  br label %400

; <label>:386:                                    ; preds = %376
  %387 = zext i8 %359 to i32
  %388 = call i64 @llvm.objectsize.i64.p0i8(i8* %377, i1 false) #10
  %389 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %377, i32 1, i64 %388, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.76, i64 0, i64 0), i32 %387) #10
  br label %400

; <label>:390:                                    ; preds = %356
  %391 = call noalias i8* @xmalloc(i64 32) #10
  %392 = getelementptr inbounds i8, i8* %391, i64 8
  %393 = bitcast i8* %392 to %struct.List_element**
  store %struct.List_element* null, %struct.List_element** %393, align 8
  %394 = bitcast i8* %391 to i32*
  store i32 1, i32* %394, align 8
  %395 = getelementptr inbounds i8, i8* %391, i64 16
  store i8 %106, i8* %395, align 8
  %396 = getelementptr inbounds i8, i8* %391, i64 17
  store i8 %359, i8* %396, align 1
  %397 = load %struct.List_element*, %struct.List_element** %87, align 8
  %398 = icmp eq %struct.List_element* %397, null
  br i1 %398, label %399, label %402

; <label>:399:                                    ; preds = %390
  call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.55, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0), i32 677, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @__PRETTY_FUNCTION__.append_range, i64 0, i64 0)) #14
  unreachable

; <label>:400:                                    ; preds = %386, %384
  %401 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.79, i64 0, i64 0), i32 5) #10
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %401, i8* %362, i8* %377) #10
  call void @free(i8* %362) #10
  call void @free(i8* %377) #10
  br label %440

; <label>:402:                                    ; preds = %390
  %403 = getelementptr inbounds %struct.List_element, %struct.List_element* %397, i64 0, i32 1
  %404 = bitcast %struct.List_element** %403 to i8**
  store i8* %391, i8** %404, align 8
  store i8* %391, i8** %88, align 8
  %405 = add i64 %104, 3
  br label %418

; <label>:406:                                    ; preds = %347, %352
  %407 = call noalias i8* @xmalloc(i64 32) #10
  %408 = getelementptr inbounds i8, i8* %407, i64 8
  %409 = bitcast i8* %408 to %struct.List_element**
  store %struct.List_element* null, %struct.List_element** %409, align 8
  %410 = bitcast i8* %407 to i32*
  store i32 0, i32* %410, align 8
  %411 = getelementptr inbounds i8, i8* %407, i64 16
  store i8 %106, i8* %411, align 8
  %412 = load %struct.List_element*, %struct.List_element** %87, align 8
  %413 = icmp eq %struct.List_element* %412, null
  br i1 %413, label %414, label %415

; <label>:414:                                    ; preds = %406
  call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.55, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0), i32 647, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @__PRETTY_FUNCTION__.append_normal_char, i64 0, i64 0)) #14
  unreachable

; <label>:415:                                    ; preds = %406
  %416 = getelementptr inbounds %struct.List_element, %struct.List_element* %412, i64 0, i32 1
  %417 = bitcast %struct.List_element** %416 to i8**
  store i8* %407, i8** %417, align 8
  store i8* %407, i8** %88, align 8
  br label %418

; <label>:418:                                    ; preds = %415, %402, %341
  %419 = phi i64 [ %346, %341 ], [ %405, %402 ], [ %348, %415 ]
  %420 = add i64 %419, 2
  %421 = icmp ult i64 %420, %83
  br i1 %421, label %102, label %94

; <label>:422:                                    ; preds = %434, %99
  %423 = phi i64 [ %97, %99 ], [ %437, %434 ]
  %424 = getelementptr inbounds i8, i8* %6, i64 %423
  %425 = load i8, i8* %424, align 1
  %426 = call noalias i8* @xmalloc(i64 32) #10
  %427 = getelementptr inbounds i8, i8* %426, i64 8
  %428 = bitcast i8* %427 to %struct.List_element**
  store %struct.List_element* null, %struct.List_element** %428, align 8
  %429 = bitcast i8* %426 to i32*
  store i32 0, i32* %429, align 8
  %430 = getelementptr inbounds i8, i8* %426, i64 16
  store i8 %425, i8* %430, align 8
  %431 = load %struct.List_element*, %struct.List_element** %100, align 8
  %432 = icmp eq %struct.List_element* %431, null
  br i1 %432, label %433, label %434

; <label>:433:                                    ; preds = %422
  call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.55, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0), i32 647, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @__PRETTY_FUNCTION__.append_normal_char, i64 0, i64 0)) #14
  unreachable

; <label>:434:                                    ; preds = %422
  %435 = getelementptr inbounds %struct.List_element, %struct.List_element* %431, i64 0, i32 1
  %436 = bitcast %struct.List_element** %435 to i8**
  store i8* %426, i8** %436, align 8
  store i8* %426, i8** %101, align 8
  %437 = add nuw nsw i64 %423, 1
  %438 = icmp ult i64 %437, %83
  br i1 %438, label %422, label %439

; <label>:439:                                    ; preds = %434
  br label %440

; <label>:440:                                    ; preds = %439, %96, %316, %340, %400
  %441 = phi i1 [ false, %400 ], [ false, %316 ], [ false, %340 ], [ true, %96 ], [ true, %439 ]
  call void @free(i8* %6) #10
  call void @free(i8* %7) #10
  ret i1 %441
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @get_spec_stats(%struct.Spec_list* nocapture) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.Spec_list, %struct.Spec_list* %0, i64 0, i32 4
  store i64 0, i64* %2, align 8
  %3 = getelementptr inbounds %struct.Spec_list, %struct.Spec_list* %0, i64 0, i32 6
  store i8 0, i8* %3, align 8
  %4 = getelementptr inbounds %struct.Spec_list, %struct.Spec_list* %0, i64 0, i32 8
  store i8 0, i8* %4, align 2
  %5 = getelementptr inbounds %struct.Spec_list, %struct.Spec_list* %0, i64 0, i32 7
  store i8 0, i8* %5, align 1
  %6 = getelementptr inbounds %struct.Spec_list, %struct.Spec_list* %0, i64 0, i32 0
  %7 = load %struct.List_element*, %struct.List_element** %6, align 8
  %8 = getelementptr inbounds %struct.Spec_list, %struct.Spec_list* %0, i64 0, i32 5
  br label %9

; <label>:9:                                      ; preds = %113, %1
  %10 = phi i64 [ 0, %1 ], [ %114, %113 ]
  %11 = phi i64 [ 0, %1 ], [ %116, %113 ]
  %12 = phi %struct.List_element* [ %7, %1 ], [ %14, %113 ]
  %13 = getelementptr inbounds %struct.List_element, %struct.List_element* %12, i64 0, i32 1
  %14 = load %struct.List_element*, %struct.List_element** %13, align 8
  %15 = icmp eq %struct.List_element* %14, null
  br i1 %15, label %122, label %16

; <label>:16:                                     ; preds = %9
  %17 = getelementptr inbounds %struct.List_element, %struct.List_element* %14, i64 0, i32 0
  %18 = load i32, i32* %17, align 8
  switch i32 %18, label %112 [
    i32 0, label %113
    i32 1, label %22
    i32 2, label %36
    i32 3, label %19
    i32 4, label %106
  ]

; <label>:19:                                     ; preds = %16
  %20 = getelementptr inbounds %struct.List_element, %struct.List_element* %14, i64 0, i32 2, i32 0, i32 0
  %21 = load i8, i8* %20, align 8
  br label %62

; <label>:22:                                     ; preds = %16
  %23 = getelementptr inbounds %struct.List_element, %struct.List_element* %14, i64 0, i32 2
  %24 = bitcast %union.anon* %23 to %struct.anon*
  %25 = getelementptr inbounds %struct.anon, %struct.anon* %24, i64 0, i32 1
  %26 = load i8, i8* %25, align 1
  %27 = getelementptr inbounds %union.anon, %union.anon* %23, i64 0, i32 0, i32 0
  %28 = load i8, i8* %27, align 8
  %29 = icmp ult i8 %26, %28
  br i1 %29, label %30, label %31

; <label>:30:                                     ; preds = %22
  tail call void @__assert_fail(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.87, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0), i32 1263, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__PRETTY_FUNCTION__.get_spec_stats, i64 0, i64 0)) #14
  unreachable

; <label>:31:                                     ; preds = %22
  %32 = zext i8 %26 to i64
  %33 = zext i8 %28 to i64
  %34 = add nuw nsw i64 %32, 1
  %35 = sub nsw i64 %34, %33
  br label %113

; <label>:36:                                     ; preds = %16
  store i8 1, i8* %5, align 1
  %37 = getelementptr inbounds %struct.List_element, %struct.List_element* %14, i64 0, i32 2
  %38 = bitcast %union.anon* %37 to i32*
  %39 = load i32, i32* %38, align 8
  %40 = icmp ult i32 %39, 12
  %41 = sext i32 %39 to i64
  %42 = getelementptr inbounds [12 x i16], [12 x i16]* @switch.table, i64 0, i64 %41
  br label %44

; <label>:43:                                     ; preds = %48
  switch i32 %39, label %60 [
    i32 10, label %113
    i32 6, label %113
  ]

; <label>:44:                                     ; preds = %36, %48
  %45 = phi i64 [ 0, %36 ], [ %58, %48 ]
  %46 = phi i64 [ 0, %36 ], [ %57, %48 ]
  br i1 %40, label %48, label %47

; <label>:47:                                     ; preds = %44
  tail call void @abort() #14
  unreachable

; <label>:48:                                     ; preds = %44
  %49 = load i16, i16* %42, align 2
  %50 = tail call i16** @__ctype_b_loc() #1
  %51 = load i16*, i16** %50, align 8
  %52 = getelementptr inbounds i16, i16* %51, i64 %45
  %53 = load i16, i16* %52, align 2
  %54 = and i16 %53, %49
  %55 = icmp ne i16 %54, 0
  %56 = zext i1 %55 to i64
  %57 = add i64 %56, %46
  %58 = add nuw nsw i64 %45, 1
  %59 = icmp slt i64 %58, 256
  br i1 %59, label %44, label %43

; <label>:60:                                     ; preds = %43
  store i8 1, i8* %4, align 2
  br label %113

; <label>:61:                                     ; preds = %62
  store i8 1, i8* %3, align 8
  br label %113

; <label>:62:                                     ; preds = %62, %19
  %63 = phi i32 [ 0, %19 ], [ %104, %62 ]
  %64 = phi i64 [ 0, %19 ], [ %103, %62 ]
  %65 = trunc i32 %63 to i8
  %66 = icmp eq i8 %21, %65
  %67 = zext i1 %66 to i64
  %68 = add i64 %67, %64
  %69 = trunc i32 %63 to i8
  %70 = or i8 %69, 1
  %71 = icmp eq i8 %21, %70
  %72 = zext i1 %71 to i64
  %73 = add i64 %72, %68
  %74 = trunc i32 %63 to i8
  %75 = or i8 %74, 2
  %76 = icmp eq i8 %21, %75
  %77 = zext i1 %76 to i64
  %78 = add i64 %77, %73
  %79 = trunc i32 %63 to i8
  %80 = or i8 %79, 3
  %81 = icmp eq i8 %21, %80
  %82 = zext i1 %81 to i64
  %83 = add i64 %82, %78
  %84 = trunc i32 %63 to i8
  %85 = or i8 %84, 4
  %86 = icmp eq i8 %21, %85
  %87 = zext i1 %86 to i64
  %88 = add i64 %87, %83
  %89 = trunc i32 %63 to i8
  %90 = or i8 %89, 5
  %91 = icmp eq i8 %21, %90
  %92 = zext i1 %91 to i64
  %93 = add i64 %92, %88
  %94 = trunc i32 %63 to i8
  %95 = or i8 %94, 6
  %96 = icmp eq i8 %21, %95
  %97 = zext i1 %96 to i64
  %98 = add i64 %97, %93
  %99 = trunc i32 %63 to i8
  %100 = or i8 %99, 7
  %101 = icmp eq i8 %21, %100
  %102 = zext i1 %101 to i64
  %103 = add i64 %102, %98
  %104 = add nsw i32 %63, 8
  %105 = icmp eq i32 %104, 256
  br i1 %105, label %61, label %62

; <label>:106:                                    ; preds = %16
  %107 = getelementptr inbounds %struct.List_element, %struct.List_element* %14, i64 0, i32 2, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %113

; <label>:110:                                    ; preds = %106
  store %struct.List_element* %14, %struct.List_element** %8, align 8
  %111 = add i64 %10, 1
  store i64 %111, i64* %2, align 8
  br label %113

; <label>:112:                                    ; preds = %16
  tail call void @abort() #14
  unreachable

; <label>:113:                                    ; preds = %106, %16, %110, %60, %43, %43, %61, %31
  %114 = phi i64 [ %111, %110 ], [ %10, %61 ], [ %10, %60 ], [ %10, %43 ], [ %10, %43 ], [ %10, %31 ], [ %10, %16 ], [ %10, %106 ]
  %115 = phi i64 [ 0, %110 ], [ %103, %61 ], [ %57, %60 ], [ %57, %43 ], [ %57, %43 ], [ %35, %31 ], [ 1, %16 ], [ %108, %106 ]
  %116 = add i64 %115, %11
  %117 = icmp ule i64 %11, %116
  %118 = icmp ne i64 %116, -1
  %119 = and i1 %117, %118
  br i1 %119, label %9, label %120

; <label>:120:                                    ; preds = %113
  %121 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.88, i64 0, i64 0), i32 5) #10
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %121) #10
  unreachable

; <label>:122:                                    ; preds = %9
  %123 = getelementptr inbounds %struct.Spec_list, %struct.Spec_list* %0, i64 0, i32 3
  store i64 %11, i64* %123, align 8
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #7

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @get_next(%struct.Spec_list* nocapture, i32*) unnamed_addr #6 {
  %3 = icmp ne i32* %1, null
  %4 = getelementptr inbounds %struct.Spec_list, %struct.Spec_list* %0, i64 0, i32 2
  %5 = getelementptr inbounds %struct.Spec_list, %struct.Spec_list* %0, i64 0, i32 0
  %6 = getelementptr inbounds %struct.Spec_list, %struct.Spec_list* %0, i64 0, i32 1
  %7 = bitcast %struct.List_element** %6 to i64*
  br label %8

; <label>:8:                                      ; preds = %151, %2
  br i1 %3, label %9, label %10

; <label>:9:                                      ; preds = %8
  store i32 2, i32* %1, align 4
  br label %10

; <label>:10:                                     ; preds = %9, %8
  %11 = load i64, i64* %4, align 8
  %12 = icmp eq i64 %11, -2
  br i1 %12, label %15, label %13

; <label>:13:                                     ; preds = %10
  %14 = load %struct.List_element*, %struct.List_element** %6, align 8
  br label %21

; <label>:15:                                     ; preds = %10
  %16 = load %struct.List_element*, %struct.List_element** %5, align 8
  %17 = getelementptr inbounds %struct.List_element, %struct.List_element* %16, i64 0, i32 1
  %18 = bitcast %struct.List_element** %17 to i64*
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %7, align 8
  store i64 -1, i64* %4, align 8
  %20 = inttoptr i64 %19 to %struct.List_element*
  br label %21

; <label>:21:                                     ; preds = %13, %15
  %22 = phi i64 [ %11, %13 ], [ -1, %15 ]
  %23 = phi %struct.List_element* [ %14, %13 ], [ %20, %15 ]
  %24 = icmp eq %struct.List_element* %23, null
  br i1 %24, label %170, label %25

; <label>:25:                                     ; preds = %21
  %26 = getelementptr inbounds %struct.List_element, %struct.List_element* %23, i64 0, i32 0
  %27 = load i32, i32* %26, align 8
  switch i32 %27, label %169 [
    i32 0, label %28
    i32 1, label %35
    i32 2, label %56
    i32 3, label %140
    i32 4, label %147
  ]

; <label>:28:                                     ; preds = %25
  %29 = getelementptr inbounds %struct.List_element, %struct.List_element* %23, i64 0, i32 2, i32 0, i32 0
  %30 = load i8, i8* %29, align 8
  %31 = zext i8 %30 to i32
  store i64 -1, i64* %4, align 8
  %32 = getelementptr inbounds %struct.List_element, %struct.List_element* %23, i64 0, i32 1
  %33 = bitcast %struct.List_element** %32 to i64*
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %7, align 8
  br label %171

; <label>:35:                                     ; preds = %25
  %36 = icmp eq i64 %22, -1
  br i1 %36, label %37, label %41

; <label>:37:                                     ; preds = %35
  %38 = getelementptr inbounds %struct.List_element, %struct.List_element* %23, i64 0, i32 2, i32 0, i32 0
  %39 = load i8, i8* %38, align 8
  %40 = zext i8 %39 to i64
  br label %43

; <label>:41:                                     ; preds = %35
  %42 = add i64 %22, 1
  br label %43

; <label>:43:                                     ; preds = %41, %37
  %44 = phi i64 [ %42, %41 ], [ %40, %37 ]
  store i64 %44, i64* %4, align 8
  %45 = trunc i64 %44 to i32
  %46 = getelementptr inbounds %struct.List_element, %struct.List_element* %23, i64 0, i32 2
  %47 = bitcast %union.anon* %46 to %struct.anon*
  %48 = getelementptr inbounds %struct.anon, %struct.anon* %47, i64 0, i32 1
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i64
  %51 = icmp eq i64 %44, %50
  br i1 %51, label %52, label %171

; <label>:52:                                     ; preds = %43
  %53 = getelementptr inbounds %struct.List_element, %struct.List_element* %23, i64 0, i32 1
  %54 = bitcast %struct.List_element** %53 to i64*
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %7, align 8
  store i64 -1, i64* %4, align 8
  br label %171

; <label>:56:                                     ; preds = %25
  br i1 %3, label %57, label %63

; <label>:57:                                     ; preds = %56
  %58 = getelementptr inbounds %struct.List_element, %struct.List_element* %23, i64 0, i32 2
  %59 = bitcast %union.anon* %58 to i32*
  %60 = load i32, i32* %59, align 8
  switch i32 %60, label %63 [
    i32 6, label %61
    i32 10, label %62
  ]

; <label>:61:                                     ; preds = %57
  store i32 0, i32* %1, align 4
  br label %63

; <label>:62:                                     ; preds = %57
  store i32 1, i32* %1, align 4
  br label %63

; <label>:63:                                     ; preds = %61, %62, %57, %56
  %64 = load i64, i64* %4, align 8
  %65 = icmp eq i64 %64, -1
  %66 = getelementptr inbounds %struct.List_element, %struct.List_element* %23, i64 0, i32 2
  %67 = bitcast %union.anon* %66 to i32*
  br i1 %65, label %68, label %97

; <label>:68:                                     ; preds = %63
  %69 = load i32, i32* %67, align 8
  %70 = icmp ult i32 %69, 12
  br i1 %70, label %71, label %84

; <label>:71:                                     ; preds = %68
  %72 = sext i32 %69 to i64
  %73 = getelementptr inbounds [12 x i16], [12 x i16]* @switch.table, i64 0, i64 %72
  %74 = load i16, i16* %73, align 2
  %75 = tail call i16** @__ctype_b_loc() #1
  %76 = load i16*, i16** %75, align 8
  br label %77

; <label>:77:                                     ; preds = %189, %71
  %78 = phi i32 [ 0, %71 ], [ %190, %189 ]
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i16, i16* %76, i64 %79
  %81 = load i16, i16* %80, align 2
  %82 = and i16 %81, %74
  %83 = icmp eq i16 %82, 0
  br i1 %83, label %85, label %94

; <label>:84:                                     ; preds = %68
  tail call void @abort() #14
  unreachable

; <label>:85:                                     ; preds = %77
  %86 = or i32 %78, 1
  %87 = and i32 %86, 253
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds i16, i16* %76, i64 %88
  %90 = load i16, i16* %89, align 2
  %91 = and i16 %90, %74
  %92 = icmp eq i16 %91, 0
  br i1 %92, label %173, label %94

; <label>:93:                                     ; preds = %189
  tail call void @__assert_fail(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.96, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0), i32 1076, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @__PRETTY_FUNCTION__.get_next, i64 0, i64 0)) #14
  unreachable

; <label>:94:                                     ; preds = %181, %173, %85, %77
  %95 = phi i32 [ %78, %77 ], [ %86, %85 ], [ %174, %173 ], [ %182, %181 ]
  %96 = sext i32 %95 to i64
  store i64 %96, i64* %4, align 8
  br label %97

; <label>:97:                                     ; preds = %63, %94
  %98 = phi i64 [ %96, %94 ], [ %64, %63 ]
  %99 = load i32, i32* %67, align 8
  %100 = icmp ult i32 %99, 12
  br i1 %100, label %102, label %101

; <label>:101:                                    ; preds = %97
  tail call void @abort() #14
  unreachable

; <label>:102:                                    ; preds = %97
  %103 = sext i32 %99 to i64
  %104 = getelementptr inbounds [12 x i16], [12 x i16]* @switch.table, i64 0, i64 %103
  %105 = load i16, i16* %104, align 2
  %106 = tail call i16** @__ctype_b_loc() #1
  %107 = load i16*, i16** %106, align 8
  %108 = and i64 %98, 255
  %109 = getelementptr inbounds i16, i16* %107, i64 %108
  %110 = load i16, i16* %109, align 2
  %111 = and i16 %110, %105
  %112 = icmp eq i16 %111, 0
  br i1 %112, label %113, label %114

; <label>:113:                                    ; preds = %102
  tail call void @__assert_fail(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.97, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0), i32 1079, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @__PRETTY_FUNCTION__.get_next, i64 0, i64 0)) #14
  unreachable

; <label>:114:                                    ; preds = %102
  %115 = trunc i64 %98 to i32
  %116 = add i64 %98, 1
  %117 = trunc i64 %116 to i32
  %118 = icmp slt i32 %117, 256
  br i1 %118, label %119, label %134

; <label>:119:                                    ; preds = %114
  br label %120

; <label>:120:                                    ; preds = %119, %128
  %121 = phi i32 [ %129, %128 ], [ %117, %119 ]
  %122 = and i32 %121, 255
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds i16, i16* %107, i64 %123
  %125 = load i16, i16* %124, align 2
  %126 = and i16 %125, %105
  %127 = icmp eq i16 %126, 0
  br i1 %127, label %128, label %131

; <label>:128:                                    ; preds = %120
  %129 = add nsw i32 %121, 1
  %130 = icmp slt i32 %129, 256
  br i1 %130, label %120, label %133

; <label>:131:                                    ; preds = %120
  %132 = sext i32 %121 to i64
  br label %138

; <label>:133:                                    ; preds = %128
  br label %134

; <label>:134:                                    ; preds = %133, %114
  %135 = getelementptr inbounds %struct.List_element, %struct.List_element* %23, i64 0, i32 1
  %136 = bitcast %struct.List_element** %135 to i64*
  %137 = load i64, i64* %136, align 8
  store i64 %137, i64* %7, align 8
  br label %138

; <label>:138:                                    ; preds = %134, %131
  %139 = phi i64 [ -1, %134 ], [ %132, %131 ]
  store i64 %139, i64* %4, align 8
  br label %171

; <label>:140:                                    ; preds = %25
  %141 = getelementptr inbounds %struct.List_element, %struct.List_element* %23, i64 0, i32 2, i32 0, i32 0
  %142 = load i8, i8* %141, align 8
  %143 = zext i8 %142 to i32
  store i64 -1, i64* %4, align 8
  %144 = getelementptr inbounds %struct.List_element, %struct.List_element* %23, i64 0, i32 1
  %145 = bitcast %struct.List_element** %144 to i64*
  %146 = load i64, i64* %145, align 8
  store i64 %146, i64* %7, align 8
  br label %171

; <label>:147:                                    ; preds = %25
  %148 = getelementptr inbounds %struct.List_element, %struct.List_element* %23, i64 0, i32 2, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = icmp eq i64 %149, 0
  br i1 %150, label %151, label %155

; <label>:151:                                    ; preds = %147
  %152 = getelementptr inbounds %struct.List_element, %struct.List_element* %23, i64 0, i32 1
  %153 = bitcast %struct.List_element** %152 to i64*
  %154 = load i64, i64* %153, align 8
  store i64 %154, i64* %7, align 8
  store i64 -1, i64* %4, align 8
  br label %8

; <label>:155:                                    ; preds = %147
  %156 = icmp eq i64 %22, -1
  br i1 %156, label %157, label %158

; <label>:157:                                    ; preds = %155
  store i64 0, i64* %4, align 8
  br label %158

; <label>:158:                                    ; preds = %157, %155
  %159 = phi i64 [ 0, %157 ], [ %22, %155 ]
  %160 = add i64 %159, 1
  store i64 %160, i64* %4, align 8
  %161 = getelementptr inbounds %struct.List_element, %struct.List_element* %23, i64 0, i32 2, i32 0, i32 0
  %162 = load i8, i8* %161, align 8
  %163 = zext i8 %162 to i32
  %164 = icmp eq i64 %160, %149
  br i1 %164, label %165, label %171

; <label>:165:                                    ; preds = %158
  %166 = getelementptr inbounds %struct.List_element, %struct.List_element* %23, i64 0, i32 1
  %167 = bitcast %struct.List_element** %166 to i64*
  %168 = load i64, i64* %167, align 8
  store i64 %168, i64* %7, align 8
  store i64 -1, i64* %4, align 8
  br label %171

; <label>:169:                                    ; preds = %25
  tail call void @abort() #14
  unreachable

; <label>:170:                                    ; preds = %21
  br label %171

; <label>:171:                                    ; preds = %170, %28, %138, %140, %52, %43, %158, %165
  %172 = phi i32 [ %163, %165 ], [ %163, %158 ], [ %143, %140 ], [ %115, %138 ], [ %45, %52 ], [ %45, %43 ], [ %31, %28 ], [ -1, %170 ]
  ret i32 %172

; <label>:173:                                    ; preds = %85
  %174 = or i32 %78, 2
  %175 = and i32 %174, 254
  %176 = zext i32 %175 to i64
  %177 = getelementptr inbounds i16, i16* %76, i64 %176
  %178 = load i16, i16* %177, align 2
  %179 = and i16 %178, %74
  %180 = icmp eq i16 %179, 0
  br i1 %180, label %181, label %94

; <label>:181:                                    ; preds = %173
  %182 = or i32 %78, 3
  %183 = and i32 %182, 255
  %184 = zext i32 %183 to i64
  %185 = getelementptr inbounds i16, i16* %76, i64 %184
  %186 = load i16, i16* %185, align 2
  %187 = and i16 %186, %74
  %188 = icmp eq i16 %187, 0
  br i1 %188, label %189, label %94

; <label>:189:                                    ; preds = %181
  %190 = add nsw i32 %78, 4
  %191 = icmp slt i32 %190, 256
  br i1 %191, label %77, label %93
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #7

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #8

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #5

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @plain_read(i8*, i64) #6 {
  %3 = tail call i64 @safe_read(i32 0, i8* %0, i64 %1) #10
  %4 = icmp eq i64 %3, -1
  br i1 %4, label %5, label %9

; <label>:5:                                      ; preds = %2
  %6 = tail call i32* @__errno_location() #1
  %7 = load i32, i32* %6, align 4
  %8 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.95, i64 0, i64 0), i32 5) #10
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %7, i8* %8) #10
  unreachable

; <label>:9:                                      ; preds = %2
  ret i64 %3
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @squeeze_filter(i64 (i8*, i64)* nocapture) unnamed_addr #6 {
  br label %5

; <label>:2:                                      ; preds = %90, %96
  %3 = phi i64 [ %97, %96 ], [ %91, %90 ]
  %4 = phi i32 [ %86, %96 ], [ 2147483647, %90 ]
  br label %82

; <label>:5:                                      ; preds = %82, %1
  %6 = phi i64 [ 0, %1 ], [ %83, %82 ]
  %7 = phi i64 [ 0, %1 ], [ %15, %82 ]
  %8 = phi i32 [ 2147483647, %1 ], [ %84, %82 ]
  %9 = icmp ult i64 %6, %7
  br i1 %9, label %13, label %10

; <label>:10:                                     ; preds = %5
  %11 = tail call i64 %0(i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @io_buf, i64 0, i64 0), i64 8192) #10
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %99, label %13

; <label>:13:                                     ; preds = %10, %5
  %14 = phi i64 [ %6, %5 ], [ 0, %10 ]
  %15 = phi i64 [ %7, %5 ], [ %11, %10 ]
  %16 = icmp eq i32 %8, 2147483647
  br i1 %16, label %17, label %85

; <label>:17:                                     ; preds = %13
  %18 = icmp ugt i64 %15, %14
  br i1 %18, label %19, label %33

; <label>:19:                                     ; preds = %17
  br label %20

; <label>:20:                                     ; preds = %19, %28
  %21 = phi i64 [ %29, %28 ], [ %14, %19 ]
  %22 = getelementptr inbounds [8192 x i8], [8192 x i8]* @io_buf, i64 0, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i64
  %25 = getelementptr inbounds [256 x i8], [256 x i8]* @in_squeeze_set, i64 0, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %31

; <label>:28:                                     ; preds = %20
  %29 = add i64 %21, 2
  %30 = icmp ult i64 %29, %15
  br i1 %30, label %20, label %31

; <label>:31:                                     ; preds = %28, %20
  %32 = phi i64 [ %29, %28 ], [ %21, %20 ]
  br label %33

; <label>:33:                                     ; preds = %31, %17
  %34 = phi i64 [ %14, %17 ], [ %32, %31 ]
  %35 = icmp eq i64 %34, %15
  br i1 %35, label %36, label %45

; <label>:36:                                     ; preds = %33
  %37 = add i64 %15, -1
  %38 = getelementptr inbounds [8192 x i8], [8192 x i8]* @io_buf, i64 0, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i64
  %41 = getelementptr inbounds [256 x i8], [256 x i8]* @in_squeeze_set, i64 0, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = icmp eq i8 %42, 0
  %44 = select i1 %43, i64 %15, i64 %37
  br label %45

; <label>:45:                                     ; preds = %36, %33
  %46 = phi i64 [ %34, %33 ], [ %44, %36 ]
  %47 = icmp ult i64 %46, %15
  br i1 %47, label %50, label %48

; <label>:48:                                     ; preds = %45
  %49 = sub i64 %15, %14
  br label %66

; <label>:50:                                     ; preds = %45
  %51 = getelementptr inbounds [8192 x i8], [8192 x i8]* @io_buf, i64 0, i64 %46
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = sub i64 %46, %14
  %55 = add i64 %54, 1
  %56 = icmp eq i64 %46, 0
  br i1 %56, label %63, label %57

; <label>:57:                                     ; preds = %50
  %58 = add i64 %46, -1
  %59 = getelementptr inbounds [8192 x i8], [8192 x i8]* @io_buf, i64 0, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = icmp eq i8 %60, %52
  %62 = select i1 %61, i64 %54, i64 %55
  br label %63

; <label>:63:                                     ; preds = %57, %50
  %64 = phi i64 [ %55, %50 ], [ %62, %57 ]
  %65 = add i64 %46, 1
  br label %66

; <label>:66:                                     ; preds = %63, %48
  %67 = phi i64 [ %46, %48 ], [ %65, %63 ]
  %68 = phi i32 [ 2147483647, %48 ], [ %53, %63 ]
  %69 = phi i64 [ %49, %48 ], [ %64, %63 ]
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %80, label %71

; <label>:71:                                     ; preds = %66
  %72 = getelementptr inbounds [8192 x i8], [8192 x i8]* @io_buf, i64 0, i64 %14
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %74 = tail call i64 @fwrite_unlocked(i8* %72, i64 1, i64 %69, %struct._IO_FILE* %73) #10
  %75 = icmp eq i64 %74, %69
  br i1 %75, label %80, label %76

; <label>:76:                                     ; preds = %71
  %77 = tail call i32* @__errno_location() #1
  %78 = load i32, i32* %77, align 4
  %79 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i64 0, i64 0), i32 5) #10
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %78, i8* %79) #10
  unreachable

; <label>:80:                                     ; preds = %66, %71
  %81 = icmp eq i32 %68, 2147483647
  br i1 %81, label %82, label %85

; <label>:82:                                     ; preds = %80, %85, %2
  %83 = phi i64 [ %67, %80 ], [ %87, %85 ], [ %3, %2 ]
  %84 = phi i32 [ 2147483647, %80 ], [ %86, %85 ], [ %4, %2 ]
  br label %5

; <label>:85:                                     ; preds = %80, %13
  %86 = phi i32 [ %8, %13 ], [ %68, %80 ]
  %87 = phi i64 [ %14, %13 ], [ %67, %80 ]
  %88 = icmp ult i64 %87, %15
  br i1 %88, label %89, label %82

; <label>:89:                                     ; preds = %85
  br label %90

; <label>:90:                                     ; preds = %89, %96
  %91 = phi i64 [ %97, %96 ], [ %87, %89 ]
  %92 = getelementptr inbounds [8192 x i8], [8192 x i8]* @io_buf, i64 0, i64 %91
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp eq i32 %94, %86
  br i1 %95, label %96, label %2

; <label>:96:                                     ; preds = %90
  %97 = add nuw i64 %91, 1
  %98 = icmp ult i64 %97, %15
  br i1 %98, label %90, label %2

; <label>:99:                                     ; preds = %10
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @read_and_delete(i8*, i64) #6 {
  br label %3

; <label>:3:                                      ; preds = %41, %2
  %4 = tail call i64 @safe_read(i32 0, i8* %0, i64 %1) #10
  switch i64 %4, label %5 [
    i64 -1, label %6
    i64 0, label %43
  ]

; <label>:5:                                      ; preds = %3
  br label %10

; <label>:6:                                      ; preds = %3
  %7 = tail call i32* @__errno_location() #1
  %8 = load i32, i32* %7, align 4
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.95, i64 0, i64 0), i32 5) #10
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %8, i8* %9) #10
  unreachable

; <label>:10:                                     ; preds = %5, %18
  %11 = phi i64 [ %19, %18 ], [ 0, %5 ]
  %12 = getelementptr inbounds i8, i8* %0, i64 %11
  %13 = load i8, i8* %12, align 1
  %14 = zext i8 %13 to i64
  %15 = getelementptr inbounds [256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 %14
  %16 = load i8, i8* %15, align 1
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %21

; <label>:18:                                     ; preds = %10
  %19 = add nuw i64 %11, 1
  %20 = icmp ult i64 %19, %4
  br i1 %20, label %10, label %21

; <label>:21:                                     ; preds = %10, %18
  %22 = phi i64 [ %11, %10 ], [ %19, %18 ]
  %23 = phi i64 [ %11, %10 ], [ %19, %18 ]
  br label %38

; <label>:24:                                     ; preds = %38, %28
  %25 = phi i64 [ %26, %28 ], [ %40, %38 ]
  %26 = add i64 %25, 1
  %27 = icmp ult i64 %26, %4
  br i1 %27, label %28, label %41

; <label>:28:                                     ; preds = %24
  %29 = getelementptr inbounds i8, i8* %0, i64 %26
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i64
  %32 = getelementptr inbounds [256 x i8], [256 x i8]* @in_delete_set, i64 0, i64 %31
  %33 = load i8, i8* %32, align 1
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %24

; <label>:35:                                     ; preds = %28
  %36 = add i64 %39, 1
  %37 = getelementptr inbounds i8, i8* %0, i64 %39
  store i8 %30, i8* %37, align 1
  br label %38

; <label>:38:                                     ; preds = %21, %35
  %39 = phi i64 [ %36, %35 ], [ %22, %21 ]
  %40 = phi i64 [ %26, %35 ], [ %23, %21 ]
  br label %24

; <label>:41:                                     ; preds = %24
  %42 = icmp eq i64 %39, 0
  br i1 %42, label %3, label %43

; <label>:43:                                     ; preds = %3, %41
  %44 = phi i64 [ %39, %41 ], [ 0, %3 ]
  ret i64 %44
}

declare i64 @fwrite_unlocked(i8*, i64, i64, %struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #8

; Function Attrs: nounwind readnone
declare i32** @__ctype_toupper_loc() local_unnamed_addr #8

; Function Attrs: nounwind readnone
declare i32** @__ctype_tolower_loc() local_unnamed_addr #8

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @read_and_xlate(i8*, i64) #6 {
  %3 = tail call i64 @safe_read(i32 0, i8* %0, i64 %1) #10
  switch i64 %3, label %4 [
    i64 -1, label %25
    i64 0, label %31
  ]

; <label>:4:                                      ; preds = %2
  %5 = add i64 %3, -1
  %6 = and i64 %3, 3
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %21, label %8

; <label>:8:                                      ; preds = %4
  br label %9

; <label>:9:                                      ; preds = %9, %8
  %10 = phi i64 [ %17, %9 ], [ 0, %8 ]
  %11 = phi i64 [ %18, %9 ], [ %6, %8 ]
  %12 = getelementptr inbounds i8, i8* %0, i64 %10
  %13 = load i8, i8* %12, align 1
  %14 = zext i8 %13 to i64
  %15 = getelementptr inbounds [256 x i8], [256 x i8]* @xlate, i64 0, i64 %14
  %16 = load i8, i8* %15, align 1
  store i8 %16, i8* %12, align 1
  %17 = add nuw i64 %10, 1
  %18 = add i64 %11, -1
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %9

; <label>:20:                                     ; preds = %9
  br label %21

; <label>:21:                                     ; preds = %4, %20
  %22 = phi i64 [ 0, %4 ], [ %17, %20 ]
  %23 = icmp ult i64 %5, 3
  br i1 %23, label %30, label %24

; <label>:24:                                     ; preds = %21
  br label %32

; <label>:25:                                     ; preds = %2
  %26 = tail call i32* @__errno_location() #1
  %27 = load i32, i32* %26, align 4
  %28 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.95, i64 0, i64 0), i32 5) #10
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %27, i8* %28) #10
  unreachable

; <label>:29:                                     ; preds = %32
  br label %30

; <label>:30:                                     ; preds = %21, %29
  br label %31

; <label>:31:                                     ; preds = %30, %2
  ret i64 %3

; <label>:32:                                     ; preds = %32, %24
  %33 = phi i64 [ %22, %24 ], [ %57, %32 ]
  %34 = getelementptr inbounds i8, i8* %0, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i64
  %37 = getelementptr inbounds [256 x i8], [256 x i8]* @xlate, i64 0, i64 %36
  %38 = load i8, i8* %37, align 1
  store i8 %38, i8* %34, align 1
  %39 = add nuw i64 %33, 1
  %40 = getelementptr inbounds i8, i8* %0, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i64
  %43 = getelementptr inbounds [256 x i8], [256 x i8]* @xlate, i64 0, i64 %42
  %44 = load i8, i8* %43, align 1
  store i8 %44, i8* %40, align 1
  %45 = add i64 %33, 2
  %46 = getelementptr inbounds i8, i8* %0, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i64
  %49 = getelementptr inbounds [256 x i8], [256 x i8]* @xlate, i64 0, i64 %48
  %50 = load i8, i8* %49, align 1
  store i8 %50, i8* %46, align 1
  %51 = add i64 %33, 3
  %52 = getelementptr inbounds i8, i8* %0, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = zext i8 %53 to i64
  %55 = getelementptr inbounds [256 x i8], [256 x i8]* @xlate, i64 0, i64 %54
  %56 = load i8, i8* %55, align 1
  store i8 %56, i8* %52, align 1
  %57 = add i64 %33, 4
  %58 = icmp eq i64 %57, %3
  br i1 %58, label %29, label %32
}

declare i32 @close(i32) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @make_printable_str(i8* nocapture readonly, i64) unnamed_addr #6 {
  %3 = alloca [5 x i8], align 1
  %4 = add i64 %1, 1
  %5 = icmp ugt i64 %4, 2305843009213693951
  br i1 %5, label %6, label %7

; <label>:6:                                      ; preds = %2
  tail call void @xalloc_die() #14
  unreachable

; <label>:7:                                      ; preds = %2
  %8 = shl i64 %4, 2
  %9 = tail call noalias i8* @xmalloc(i64 %8) #10
  %10 = icmp eq i64 %1, 0
  br i1 %10, label %15, label %11

; <label>:11:                                     ; preds = %7
  %12 = getelementptr inbounds [5 x i8], [5 x i8]* %3, i64 0, i64 0
  %13 = getelementptr inbounds [5 x i8], [5 x i8]* %3, i64 0, i64 1
  br label %16

; <label>:14:                                     ; preds = %40
  br label %15

; <label>:15:                                     ; preds = %14, %7
  ret i8* %9

; <label>:16:                                     ; preds = %40, %11
  %17 = phi i8* [ %9, %11 ], [ %43, %40 ]
  %18 = phi i64 [ 0, %11 ], [ %44, %40 ]
  call void @llvm.lifetime.start(i64 5, i8* nonnull %12) #10
  %19 = getelementptr inbounds i8, i8* %0, i64 %18
  %20 = load i8, i8* %19, align 1
  %21 = zext i8 %20 to i32
  switch i8 %20, label %29 [
    i8 92, label %40
    i8 7, label %22
    i8 8, label %23
    i8 12, label %24
    i8 10, label %25
    i8 13, label %26
    i8 9, label %27
    i8 11, label %28
  ]

; <label>:22:                                     ; preds = %16
  br label %40

; <label>:23:                                     ; preds = %16
  br label %40

; <label>:24:                                     ; preds = %16
  br label %40

; <label>:25:                                     ; preds = %16
  br label %40

; <label>:26:                                     ; preds = %16
  br label %40

; <label>:27:                                     ; preds = %16
  br label %40

; <label>:28:                                     ; preds = %16
  br label %40

; <label>:29:                                     ; preds = %16
  %30 = tail call i16** @__ctype_b_loc() #1
  %31 = load i16*, i16** %30, align 8
  %32 = zext i8 %20 to i64
  %33 = getelementptr inbounds i16, i16* %31, i64 %32
  %34 = load i16, i16* %33, align 2
  %35 = and i16 %34, 16384
  %36 = icmp eq i16 %35, 0
  br i1 %36, label %38, label %37

; <label>:37:                                     ; preds = %29
  store i8 %20, i8* %12, align 1
  store i8 0, i8* %13, align 1
  br label %40

; <label>:38:                                     ; preds = %29
  %39 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %12, i32 1, i64 5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.76, i64 0, i64 0), i32 %21) #10
  br label %40

; <label>:40:                                     ; preds = %37, %38, %16, %28, %27, %26, %25, %24, %23, %22
  %41 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.75, i64 0, i64 0), %28 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.74, i64 0, i64 0), %27 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.73, i64 0, i64 0), %26 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.72, i64 0, i64 0), %25 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.71, i64 0, i64 0), %24 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.70, i64 0, i64 0), %23 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.69, i64 0, i64 0), %22 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.68, i64 0, i64 0), %16 ], [ %12, %38 ], [ %12, %37 ]
  %42 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %17, i1 false) #10
  %43 = call i8* @__stpcpy_chk(i8* nonnull %17, i8* nonnull %41, i64 %42) #10
  call void @llvm.lifetime.end(i64 5, i8* nonnull %12) #10
  %44 = add nuw i64 %18, 1
  %45 = icmp eq i64 %44, %1
  br i1 %45, label %14, label %16
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #1

declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare i8* @__stpcpy_chk(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 {
  store i8* %0, i8** @file_name, align 8
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 {
  %2 = zext i1 %0 to i8
  store i8 %2, i8* @ignore_EPIPE, align 1
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #10
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %21, label %4

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1
  %6 = icmp eq i8 %5, 0
  %7 = tail call i32* @__errno_location() #1
  br i1 %6, label %11, label %8

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4
  %10 = icmp eq i32 %9, 32
  br i1 %10, label %21, label %11

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i64 0, i64 0), i32 5) #10
  %13 = load i8*, i8** @file_name, align 8
  %14 = icmp eq i8* %13, null
  %15 = load i32, i32* %7, align 4
  br i1 %14, label %18, label %16

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #10
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.32, i64 0, i64 0), i8* %17, i8* %12) #10
  br label %19

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.33, i64 0, i64 0), i8* %12) #10
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4
  tail call void @_exit(i32 %20) #14
  unreachable

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #10
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4
  tail call void @_exit(i32 %26) #14
  unreachable

; <label>:27:                                     ; preds = %21
  ret void
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define void @fdadvise(i32, i64, i64, i32) local_unnamed_addr #6 {
  %5 = tail call i32 @posix_fadvise(i32 %0, i64 %1, i64 %2, i32 %3) #10
  ret void
}

; Function Attrs: nounwind
declare i32 @posix_fadvise(i32, i64, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @fadvise(%struct._IO_FILE*, i32) local_unnamed_addr #6 {
  %3 = icmp eq %struct._IO_FILE* %0, null
  br i1 %3, label %7, label %4

; <label>:4:                                      ; preds = %2
  %5 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10
  %6 = tail call i32 @posix_fadvise(i32 %5, i64 0, i64 0, i32 %1) #10
  br label %7

; <label>:7:                                      ; preds = %2, %4
  ret void
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 {
  %2 = icmp eq i8* %0, null
  br i1 %2, label %3, label %6

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.92, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #16
  tail call void @abort() #14
  unreachable

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #13
  %8 = icmp ne i8* %7, null
  %9 = getelementptr inbounds i8, i8* %7, i64 1
  %10 = select i1 %8, i8* %9, i8* %0
  %11 = ptrtoint i8* %10 to i64
  %12 = ptrtoint i8* %0 to i64
  %13 = sub i64 %11, %12
  %14 = icmp sgt i64 %13, 6
  br i1 %14, label %15, label %24

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.93, i64 0, i64 0), i64 7) #13
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %24

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.94, i64 0, i64 0), i64 3) #13
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3
  store i8* %23, i8** @program_invocation_short_name, align 8
  br label %24

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  store i8* %25, i8** @program_name, align 8
  store i8* %25, i8** @program_invocation_name, align 8
  ret void
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #10

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 {
  %2 = tail call i32* @__errno_location() #1
  %3 = load i32, i32* %2, align 4
  %4 = icmp ne %struct.quoting_options* %0, null
  %5 = bitcast %struct.quoting_options* %0 to i8*
  %6 = select i1 %4, i8* %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*)
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #10
  %8 = bitcast i8* %7 to %struct.quoting_options*
  store i32 %3, i32* %2, align 4
  ret %struct.quoting_options* %8
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #11 {
  %2 = icmp ne %struct.quoting_options* %0, null
  %3 = select i1 %2, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0
  %5 = load i32, i32* %4, align 8
  ret i32 %5
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 {
  %3 = icmp ne %struct.quoting_options* %0, null
  %4 = select i1 %3, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0
  store i32 %1, i32* %5, align 8
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 {
  %4 = icmp ne %struct.quoting_options* %0, null
  %5 = select i1 %4, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options
  %6 = lshr i8 %1, 5
  %7 = zext i8 %6 to i64
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7
  %9 = and i8 %1, 31
  %10 = zext i8 %9 to i32
  %11 = load i32, i32* %8, align 4
  %12 = lshr i32 %11, %10
  %13 = and i32 %12, 1
  %14 = and i32 %2, 1
  %15 = xor i32 %13, %14
  %16 = shl i32 %15, %10
  %17 = xor i32 %16, %11
  store i32 %17, i32* %8, align 4
  ret i32 %13
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 {
  %3 = icmp eq %struct.quoting_options* %0, null
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1
  %6 = load i32, i32* %5, align 4
  store i32 %1, i32* %5, align 4
  ret i32 %6
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 {
  %4 = icmp eq %struct.quoting_options* %0, null
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0
  store i32 10, i32* %6, align 8
  %7 = icmp ne i8* %1, null
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8
  br i1 %9, label %11, label %10

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14
  unreachable

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3
  store i8* %1, i8** %12, align 8
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4
  store i8* %2, i8** %13, align 8
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 {
  %6 = icmp ne %struct.quoting_options* %4, null
  %7 = select i1 %6, %struct.quoting_options* %4, %struct.quoting_options* @default_quoting_options
  %8 = tail call i32* @__errno_location() #1
  %9 = load i32, i32* %8, align 4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3
  %16 = load i8*, i8** %15, align 8
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4
  %18 = load i8*, i8** %17, align 8
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18)
  store i32 %9, i32* %8, align 4
  ret i64 %19
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  %13 = tail call i64 @__ctype_get_mb_cur_max() #10
  %14 = icmp eq i64 %13, 1
  %15 = lshr i32 %5, 1
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27

; <label>:27:                                     ; preds = %614, %9
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
  ]

; <label>:41:                                     ; preds = %27
  br label %95

; <label>:42:                                     ; preds = %27
  %43 = and i8 %36, 1
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %95

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0
  br i1 %46, label %95, label %47

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1
  br label %95

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.108, i64 0, i64 0), i32 %28)
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.109, i64 0, i64 0), i32 %28)
  br label %51

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  %54 = and i8 %36, 1
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %56, label %73

; <label>:56:                                     ; preds = %51
  %57 = load i8, i8* %52, align 1
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %73, label %59

; <label>:59:                                     ; preds = %56
  br label %60

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  %64 = icmp ult i64 %63, %40
  br i1 %64, label %65, label %67

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63
  store i8 %61, i8* %66, align 1
  br label %67

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1
  %69 = getelementptr inbounds i8, i8* %62, i64 1
  %70 = load i8, i8* %69, align 1
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %72, label %60

; <label>:72:                                     ; preds = %67
  br label %73

; <label>:73:                                     ; preds = %72, %56, %51
  %74 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %72 ]
  %75 = call i64 @strlen(i8* %53) #13
  br label %95

; <label>:76:                                     ; preds = %27
  br label %77

; <label>:77:                                     ; preds = %27, %76
  %78 = phi i8 [ %34, %27 ], [ 1, %76 ]
  br label %79

; <label>:79:                                     ; preds = %27, %77
  %80 = phi i8 [ %34, %27 ], [ %78, %77 ]
  %81 = phi i8 [ %36, %27 ], [ 1, %77 ]
  %82 = and i8 %81, 1
  %83 = icmp eq i8 %82, 0
  %84 = select i1 %83, i8 1, i8 %80
  br label %85

; <label>:85:                                     ; preds = %79, %27
  %86 = phi i8 [ %34, %27 ], [ %84, %79 ]
  %87 = phi i8 [ %36, %27 ], [ %81, %79 ]
  %88 = and i8 %87, 1
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %90, label %95

; <label>:90:                                     ; preds = %85
  %91 = icmp eq i64 %40, 0
  br i1 %91, label %95, label %92

; <label>:92:                                     ; preds = %90
  store i8 39, i8* %0, align 1
  br label %95

; <label>:93:                                     ; preds = %27
  br label %95

; <label>:94:                                     ; preds = %27
  call void @abort() #14
  unreachable

; <label>:95:                                     ; preds = %41, %85, %90, %92, %27, %42, %45, %47, %93, %73
  %96 = phi i32 [ 0, %93 ], [ %28, %73 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %92 ], [ 2, %90 ], [ 2, %85 ], [ 5, %41 ]
  %97 = phi i8* [ %29, %93 ], [ %52, %73 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %92 ], [ %29, %90 ], [ %29, %85 ], [ %29, %41 ]
  %98 = phi i8* [ %30, %93 ], [ %53, %73 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %92 ], [ %30, %90 ], [ %30, %85 ], [ %30, %41 ]
  %99 = phi i64 [ 0, %93 ], [ %74, %73 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %92 ], [ 1, %90 ], [ 0, %85 ], [ 0, %41 ]
  %100 = phi i8* [ %32, %93 ], [ %53, %73 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.110, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.110, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.110, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.109, i64 0, i64 0), %92 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.109, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.109, i64 0, i64 0), %85 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.110, i64 0, i64 0), %41 ]
  %101 = phi i64 [ %33, %93 ], [ %75, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %92 ], [ 1, %90 ], [ 1, %85 ], [ 1, %41 ]
  %102 = phi i8 [ %34, %93 ], [ 1, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %86, %92 ], [ %86, %90 ], [ %86, %85 ], [ 1, %41 ]
  %103 = phi i8 [ 0, %93 ], [ %36, %73 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %87, %92 ], [ %87, %90 ], [ %87, %85 ], [ 1, %41 ]
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
  br label %123

; <label>:123:                                    ; preds = %587, %95
  %124 = phi i64 [ 0, %95 ], [ %596, %587 ]
  %125 = phi i64 [ %99, %95 ], [ %589, %587 ]
  %126 = phi i64 [ %31, %95 ], [ %590, %587 ]
  %127 = phi i64 [ %35, %95 ], [ %591, %587 ]
  %128 = phi i8 [ %37, %95 ], [ %592, %587 ]
  %129 = phi i8 [ %38, %95 ], [ %593, %587 ]
  %130 = phi i8 [ %39, %95 ], [ %594, %587 ]
  %131 = phi i64 [ %40, %95 ], [ %595, %587 ]
  %132 = icmp eq i64 %127, -1
  br i1 %132, label %135, label %133

; <label>:133:                                    ; preds = %123
  %134 = icmp eq i64 %124, %127
  br i1 %134, label %597, label %139

; <label>:135:                                    ; preds = %123
  %136 = getelementptr inbounds i8, i8* %2, i64 %124
  %137 = load i8, i8* %136, align 1
  %138 = icmp eq i8 %137, 0
  br i1 %138, label %597, label %139

; <label>:139:                                    ; preds = %133, %135
  br i1 %109, label %140, label %155

; <label>:140:                                    ; preds = %139
  %141 = add i64 %124, %101
  %142 = and i1 %110, %132
  br i1 %142, label %143, label %145

; <label>:143:                                    ; preds = %140
  %144 = call i64 @strlen(i8* %2) #13
  br label %145

; <label>:145:                                    ; preds = %140, %143
  %146 = phi i64 [ %144, %143 ], [ %127, %140 ]
  %147 = icmp ugt i64 %141, %146
  br i1 %147, label %155, label %148

; <label>:148:                                    ; preds = %145
  %149 = getelementptr inbounds i8, i8* %2, i64 %124
  %150 = call i32 @memcmp(i8* %149, i8* %100, i64 %101) #13
  %151 = icmp ne i32 %150, 0
  %152 = or i1 %151, %112
  %153 = xor i1 %151, true
  %154 = zext i1 %153 to i8
  br i1 %152, label %155, label %644

; <label>:155:                                    ; preds = %148, %145, %139
  %156 = phi i64 [ %146, %148 ], [ %146, %145 ], [ %127, %139 ]
  %157 = phi i8 [ %154, %148 ], [ 0, %145 ], [ 0, %139 ]
  %158 = getelementptr inbounds i8, i8* %2, i64 %124
  %159 = load i8, i8* %158, align 1
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
  ]

; <label>:160:                                    ; preds = %155
  br i1 %105, label %161, label %209

; <label>:161:                                    ; preds = %160
  br i1 %112, label %162, label %644

; <label>:162:                                    ; preds = %161
  %163 = and i8 %128, 1
  %164 = icmp eq i8 %163, 0
  %165 = and i1 %114, %164
  br i1 %165, label %166, label %182

; <label>:166:                                    ; preds = %162
  %167 = icmp ult i64 %125, %131
  br i1 %167, label %168, label %170

; <label>:168:                                    ; preds = %166
  %169 = getelementptr inbounds i8, i8* %0, i64 %125
  store i8 39, i8* %169, align 1
  br label %170

; <label>:170:                                    ; preds = %168, %166
  %171 = add i64 %125, 1
  %172 = icmp ult i64 %171, %131
  br i1 %172, label %173, label %175

; <label>:173:                                    ; preds = %170
  %174 = getelementptr inbounds i8, i8* %0, i64 %171
  store i8 36, i8* %174, align 1
  br label %175

; <label>:175:                                    ; preds = %173, %170
  %176 = add i64 %125, 2
  %177 = icmp ult i64 %176, %131
  br i1 %177, label %178, label %180

; <label>:178:                                    ; preds = %175
  %179 = getelementptr inbounds i8, i8* %0, i64 %176
  store i8 39, i8* %179, align 1
  br label %180

; <label>:180:                                    ; preds = %178, %175
  %181 = add i64 %125, 3
  br label %182

; <label>:182:                                    ; preds = %162, %180
  %183 = phi i64 [ %181, %180 ], [ %125, %162 ]
  %184 = phi i8 [ 1, %180 ], [ %128, %162 ]
  %185 = icmp ult i64 %183, %131
  br i1 %185, label %186, label %188

; <label>:186:                                    ; preds = %182
  %187 = getelementptr inbounds i8, i8* %0, i64 %183
  store i8 92, i8* %187, align 1
  br label %188

; <label>:188:                                    ; preds = %186, %182
  %189 = add i64 %183, 1
  br i1 %106, label %190, label %476

; <label>:190:                                    ; preds = %188
  %191 = add i64 %124, 1
  %192 = icmp ult i64 %191, %156
  br i1 %192, label %193, label %476

; <label>:193:                                    ; preds = %190
  %194 = getelementptr inbounds i8, i8* %2, i64 %191
  %195 = load i8, i8* %194, align 1
  %196 = add i8 %195, -48
  %197 = icmp ult i8 %196, 10
  br i1 %197, label %198, label %476

; <label>:198:                                    ; preds = %193
  %199 = icmp ult i64 %189, %131
  br i1 %199, label %200, label %202

; <label>:200:                                    ; preds = %198
  %201 = getelementptr inbounds i8, i8* %0, i64 %189
  store i8 48, i8* %201, align 1
  br label %202

; <label>:202:                                    ; preds = %200, %198
  %203 = add i64 %183, 2
  %204 = icmp ult i64 %203, %131
  br i1 %204, label %205, label %207

; <label>:205:                                    ; preds = %202
  %206 = getelementptr inbounds i8, i8* %0, i64 %203
  store i8 48, i8* %206, align 1
  br label %207

; <label>:207:                                    ; preds = %205, %202
  %208 = add i64 %183, 3
  br label %476

; <label>:209:                                    ; preds = %160
  br i1 %23, label %476, label %587

; <label>:210:                                    ; preds = %155
  switch i32 %96, label %476 [
    i32 2, label %211
    i32 5, label %212
  ]

; <label>:211:                                    ; preds = %210
  br i1 %112, label %476, label %644

; <label>:212:                                    ; preds = %210
  br i1 %25, label %476, label %213

; <label>:213:                                    ; preds = %212
  %214 = add i64 %124, 2
  %215 = icmp ult i64 %214, %156
  br i1 %215, label %216, label %476

; <label>:216:                                    ; preds = %213
  %217 = add i64 %124, 1
  %218 = getelementptr inbounds i8, i8* %2, i64 %217
  %219 = load i8, i8* %218, align 1
  %220 = icmp eq i8 %219, 63
  br i1 %220, label %221, label %476

; <label>:221:                                    ; preds = %216
  %222 = getelementptr inbounds i8, i8* %2, i64 %214
  %223 = load i8, i8* %222, align 1
  %224 = sext i8 %223 to i32
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
  ]

; <label>:225:                                    ; preds = %221, %221, %221, %221, %221, %221, %221, %221, %221
  br i1 %112, label %226, label %644

; <label>:226:                                    ; preds = %225
  %227 = icmp ult i64 %125, %131
  br i1 %227, label %228, label %230

; <label>:228:                                    ; preds = %226
  %229 = getelementptr inbounds i8, i8* %0, i64 %125
  store i8 63, i8* %229, align 1
  br label %230

; <label>:230:                                    ; preds = %228, %226
  %231 = add i64 %125, 1
  %232 = icmp ult i64 %231, %131
  br i1 %232, label %233, label %235

; <label>:233:                                    ; preds = %230
  %234 = getelementptr inbounds i8, i8* %0, i64 %231
  store i8 34, i8* %234, align 1
  br label %235

; <label>:235:                                    ; preds = %233, %230
  %236 = add i64 %125, 2
  %237 = icmp ult i64 %236, %131
  br i1 %237, label %238, label %240

; <label>:238:                                    ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236
  store i8 34, i8* %239, align 1
  br label %240

; <label>:240:                                    ; preds = %238, %235
  %241 = add i64 %125, 3
  %242 = icmp ult i64 %241, %131
  br i1 %242, label %243, label %245

; <label>:243:                                    ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241
  store i8 63, i8* %244, align 1
  br label %245

; <label>:245:                                    ; preds = %243, %240
  %246 = add i64 %125, 4
  br label %476

; <label>:247:                                    ; preds = %155
  br label %257

; <label>:248:                                    ; preds = %155
  br label %257

; <label>:249:                                    ; preds = %155
  br label %255

; <label>:250:                                    ; preds = %155
  br label %255

; <label>:251:                                    ; preds = %155
  br label %257

; <label>:252:                                    ; preds = %155
  br i1 %114, label %253, label %254

; <label>:253:                                    ; preds = %252
  br i1 %112, label %542, label %644

; <label>:254:                                    ; preds = %252
  br i1 %122, label %542, label %255

; <label>:255:                                    ; preds = %254, %155, %250, %249
  %256 = phi i8 [ 92, %254 ], [ 116, %250 ], [ 114, %249 ], [ 110, %155 ]
  br i1 %118, label %257, label %644

; <label>:257:                                    ; preds = %255, %155, %251, %248, %247
  %258 = phi i8 [ %256, %255 ], [ 118, %251 ], [ 102, %248 ], [ 98, %247 ], [ 97, %155 ]
  br i1 %105, label %503, label %476

; <label>:259:                                    ; preds = %155, %155
  %260 = icmp eq i64 %156, -1
  br i1 %260, label %261, label %266

; <label>:261:                                    ; preds = %259
  %262 = load i8, i8* %26, align 1
  %263 = icmp ne i8 %262, 0
  %264 = icmp ne i64 %124, 0
  %265 = or i1 %264, %263
  br i1 %265, label %476, label %272

; <label>:266:                                    ; preds = %259
  %267 = icmp ne i64 %156, 1
  %268 = icmp ne i64 %124, 0
  %269 = or i1 %268, %267
  br i1 %269, label %476, label %272

; <label>:270:                                    ; preds = %155, %155
  %271 = icmp eq i64 %124, 0
  br i1 %271, label %272, label %476

; <label>:272:                                    ; preds = %270, %266, %261, %155
  br label %273

; <label>:273:                                    ; preds = %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %272
  %274 = phi i8 [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 1, %272 ]
  br i1 %118, label %476, label %644

; <label>:275:                                    ; preds = %155
  br i1 %114, label %276, label %476

; <label>:276:                                    ; preds = %275
  br i1 %112, label %277, label %644

; <label>:277:                                    ; preds = %276
  %278 = icmp eq i64 %131, 0
  %279 = icmp ne i64 %126, 0
  %280 = or i1 %279, %278
  %281 = select i1 %280, i64 %126, i64 %131
  %282 = select i1 %280, i64 %131, i64 0
  %283 = icmp ult i64 %125, %282
  br i1 %283, label %284, label %286

; <label>:284:                                    ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %125
  store i8 39, i8* %285, align 1
  br label %286

; <label>:286:                                    ; preds = %284, %277
  %287 = add i64 %125, 1
  %288 = icmp ult i64 %287, %282
  br i1 %288, label %289, label %291

; <label>:289:                                    ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287
  store i8 92, i8* %290, align 1
  br label %291

; <label>:291:                                    ; preds = %289, %286
  %292 = add i64 %125, 2
  %293 = icmp ult i64 %292, %282
  br i1 %293, label %294, label %296

; <label>:294:                                    ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292
  store i8 39, i8* %295, align 1
  br label %296

; <label>:296:                                    ; preds = %294, %291
  %297 = add i64 %125, 3
  br label %476

; <label>:298:                                    ; preds = %155
  br i1 %14, label %299, label %308

; <label>:299:                                    ; preds = %298
  %300 = tail call i16** @__ctype_b_loc() #1
  %301 = load i16*, i16** %300, align 8
  %302 = zext i8 %159 to i64
  %303 = getelementptr inbounds i16, i16* %301, i64 %302
  %304 = load i16, i16* %303, align 2
  %305 = lshr i16 %304, 14
  %306 = trunc i16 %305 to i8
  %307 = and i8 %306, 1
  br label %368

; <label>:308:                                    ; preds = %298
  call void @llvm.lifetime.start(i64 8, i8* nonnull %18) #10
  store i64 0, i64* %10, align 8
  %309 = icmp eq i64 %156, -1
  br i1 %309, label %310, label %312

; <label>:310:                                    ; preds = %308
  %311 = call i64 @strlen(i8* nonnull %2) #13
  br label %312

; <label>:312:                                    ; preds = %310, %308
  %313 = phi i64 [ %156, %308 ], [ %311, %310 ]
  br label %314

; <label>:314:                                    ; preds = %312, %355
  %315 = phi i64 [ %360, %355 ], [ 0, %312 ]
  %316 = phi i8 [ %359, %355 ], [ 1, %312 ]
  call void @llvm.lifetime.start(i64 4, i8* nonnull %19) #10
  %317 = add i64 %315, %124
  %318 = getelementptr inbounds i8, i8* %2, i64 %317
  %319 = sub i64 %313, %317
  %320 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %318, i64 %319, %struct.__mbstate_t* nonnull %11) #10
  switch i64 %320, label %334 [
    i64 0, label %350
    i64 -1, label %347
    i64 -2, label %321
  ]

; <label>:321:                                    ; preds = %314
  %322 = icmp ugt i64 %313, %317
  br i1 %322, label %323, label %351

; <label>:323:                                    ; preds = %321
  br label %324

; <label>:324:                                    ; preds = %323, %330
  %325 = phi i64 [ %332, %330 ], [ %317, %323 ]
  %326 = phi i64 [ %331, %330 ], [ %315, %323 ]
  %327 = getelementptr inbounds i8, i8* %2, i64 %325
  %328 = load i8, i8* %327, align 1
  %329 = icmp eq i8 %328, 0
  br i1 %329, label %348, label %330

; <label>:330:                                    ; preds = %324
  %331 = add i64 %326, 1
  %332 = add i64 %331, %124
  %333 = icmp ult i64 %332, %313
  br i1 %333, label %324, label %348

; <label>:334:                                    ; preds = %314
  %335 = icmp ugt i64 %320, 1
  %336 = and i1 %116, %335
  br i1 %336, label %337, label %355

; <label>:337:                                    ; preds = %334
  br label %338

; <label>:338:                                    ; preds = %337, %344
  %339 = phi i64 [ %345, %344 ], [ 1, %337 ]
  %340 = add i64 %339, %317
  %341 = getelementptr inbounds i8, i8* %2, i64 %340
  %342 = load i8, i8* %341, align 1
  %343 = sext i8 %342 to i32
  switch i32 %343, label %344 [
    i32 91, label %367
    i32 92, label %367
    i32 94, label %367
    i32 96, label %367
    i32 124, label %367
  ]

; <label>:344:                                    ; preds = %338
  %345 = add nuw i64 %339, 1
  %346 = icmp ult i64 %345, %320
  br i1 %346, label %338, label %354

; <label>:347:                                    ; preds = %314
  br label %351

; <label>:348:                                    ; preds = %324, %330
  %349 = phi i64 [ %331, %330 ], [ %326, %324 ]
  br label %351

; <label>:350:                                    ; preds = %314
  br label %351

; <label>:351:                                    ; preds = %350, %348, %347, %321
  %352 = phi i64 [ %315, %321 ], [ %315, %347 ], [ %349, %348 ], [ %315, %350 ]
  %353 = phi i8 [ 0, %321 ], [ 0, %347 ], [ 0, %348 ], [ %316, %350 ]
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10
  br label %364

; <label>:354:                                    ; preds = %344
  br label %355

; <label>:355:                                    ; preds = %354, %334
  %356 = load i32, i32* %12, align 4
  %357 = call i32 @iswprint(i32 %356) #10
  %358 = icmp eq i32 %357, 0
  %359 = select i1 %358, i8 0, i8 %316
  %360 = add i64 %320, %315
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10
  %361 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #13
  %362 = icmp eq i32 %361, 0
  br i1 %362, label %314, label %363

; <label>:363:                                    ; preds = %355
  br label %364

; <label>:364:                                    ; preds = %363, %351
  %365 = phi i8 [ %353, %351 ], [ %359, %363 ]
  %366 = phi i64 [ %352, %351 ], [ %360, %363 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #10
  br label %368

; <label>:367:                                    ; preds = %338, %338, %338, %338, %338
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #10
  br label %649

; <label>:368:                                    ; preds = %364, %299
  %369 = phi i64 [ %156, %299 ], [ %313, %364 ]
  %370 = phi i64 [ 1, %299 ], [ %366, %364 ]
  %371 = phi i8 [ %307, %299 ], [ %365, %364 ]
  %372 = and i8 %371, 1
  %373 = icmp ne i8 %372, 0
  %374 = icmp ult i64 %370, 2
  %375 = or i1 %373, %113
  %376 = and i1 %374, %375
  br i1 %376, label %476, label %377

; <label>:377:                                    ; preds = %368
  %378 = add i64 %370, %124
  br label %379

; <label>:379:                                    ; preds = %472, %377
  %380 = phi i64 [ %124, %377 ], [ %447, %472 ]
  %381 = phi i64 [ %125, %377 ], [ %473, %472 ]
  %382 = phi i8 [ %128, %377 ], [ %468, %472 ]
  %383 = phi i8 [ %159, %377 ], [ %475, %472 ]
  %384 = phi i8 [ %157, %377 ], [ %445, %472 ]
  %385 = phi i8 [ 0, %377 ], [ %446, %472 ]
  br i1 %375, label %432, label %386

; <label>:386:                                    ; preds = %379
  br i1 %112, label %387, label %643

; <label>:387:                                    ; preds = %386
  %388 = and i8 %382, 1
  %389 = icmp eq i8 %388, 0
  %390 = and i1 %114, %389
  br i1 %390, label %391, label %407

; <label>:391:                                    ; preds = %387
  %392 = icmp ult i64 %381, %131
  br i1 %392, label %393, label %395

; <label>:393:                                    ; preds = %391
  %394 = getelementptr inbounds i8, i8* %0, i64 %381
  store i8 39, i8* %394, align 1
  br label %395

; <label>:395:                                    ; preds = %393, %391
  %396 = add i64 %381, 1
  %397 = icmp ult i64 %396, %131
  br i1 %397, label %398, label %400

; <label>:398:                                    ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396
  store i8 36, i8* %399, align 1
  br label %400

; <label>:400:                                    ; preds = %398, %395
  %401 = add i64 %381, 2
  %402 = icmp ult i64 %401, %131
  br i1 %402, label %403, label %405

; <label>:403:                                    ; preds = %400
  %404 = getelementptr inbounds i8, i8* %0, i64 %401
  store i8 39, i8* %404, align 1
  br label %405

; <label>:405:                                    ; preds = %403, %400
  %406 = add i64 %381, 3
  br label %407

; <label>:407:                                    ; preds = %387, %405
  %408 = phi i64 [ %406, %405 ], [ %381, %387 ]
  %409 = phi i8 [ 1, %405 ], [ %382, %387 ]
  %410 = icmp ult i64 %408, %131
  br i1 %410, label %411, label %413

; <label>:411:                                    ; preds = %407
  %412 = getelementptr inbounds i8, i8* %0, i64 %408
  store i8 92, i8* %412, align 1
  br label %413

; <label>:413:                                    ; preds = %411, %407
  %414 = add i64 %408, 1
  %415 = icmp ult i64 %414, %131
  br i1 %415, label %416, label %420

; <label>:416:                                    ; preds = %413
  %417 = lshr i8 %383, 6
  %418 = or i8 %417, 48
  %419 = getelementptr inbounds i8, i8* %0, i64 %414
  store i8 %418, i8* %419, align 1
  br label %420

; <label>:420:                                    ; preds = %416, %413
  %421 = add i64 %408, 2
  %422 = icmp ult i64 %421, %131
  br i1 %422, label %423, label %428

; <label>:423:                                    ; preds = %420
  %424 = lshr i8 %383, 3
  %425 = and i8 %424, 7
  %426 = or i8 %425, 48
  %427 = getelementptr inbounds i8, i8* %0, i64 %421
  store i8 %426, i8* %427, align 1
  br label %428

; <label>:428:                                    ; preds = %423, %420
  %429 = add i64 %408, 3
  %430 = and i8 %383, 7
  %431 = or i8 %430, 48
  br label %441

; <label>:432:                                    ; preds = %379
  %433 = and i8 %384, 1
  %434 = icmp eq i8 %433, 0
  br i1 %434, label %441, label %435

; <label>:435:                                    ; preds = %432
  %436 = icmp ult i64 %381, %131
  br i1 %436, label %437, label %439

; <label>:437:                                    ; preds = %435
  %438 = getelementptr inbounds i8, i8* %0, i64 %381
  store i8 92, i8* %438, align 1
  br label %439

; <label>:439:                                    ; preds = %437, %435
  %440 = add i64 %381, 1
  br label %441

; <label>:441:                                    ; preds = %432, %439, %428
  %442 = phi i64 [ %440, %439 ], [ %381, %432 ], [ %429, %428 ]
  %443 = phi i8 [ %382, %439 ], [ %382, %432 ], [ %409, %428 ]
  %444 = phi i8 [ %383, %439 ], [ %383, %432 ], [ %431, %428 ]
  %445 = phi i8 [ 0, %439 ], [ %384, %432 ], [ %384, %428 ]
  %446 = phi i8 [ %385, %439 ], [ %385, %432 ], [ 1, %428 ]
  %447 = add i64 %380, 1
  %448 = icmp ugt i64 %378, %447
  br i1 %448, label %449, label %541

; <label>:449:                                    ; preds = %441
  %450 = and i8 %443, 1
  %451 = icmp ne i8 %450, 0
  %452 = and i8 %446, 1
  %453 = icmp eq i8 %452, 0
  %454 = and i1 %451, %453
  br i1 %454, label %455, label %466

; <label>:455:                                    ; preds = %449
  %456 = icmp ult i64 %442, %131
  br i1 %456, label %457, label %459

; <label>:457:                                    ; preds = %455
  %458 = getelementptr inbounds i8, i8* %0, i64 %442
  store i8 39, i8* %458, align 1
  br label %459

; <label>:459:                                    ; preds = %457, %455
  %460 = add i64 %442, 1
  %461 = icmp ult i64 %460, %131
  br i1 %461, label %462, label %464

; <label>:462:                                    ; preds = %459
  %463 = getelementptr inbounds i8, i8* %0, i64 %460
  store i8 39, i8* %463, align 1
  br label %464

; <label>:464:                                    ; preds = %462, %459
  %465 = add i64 %442, 2
  br label %466

; <label>:466:                                    ; preds = %449, %464
  %467 = phi i64 [ %465, %464 ], [ %442, %449 ]
  %468 = phi i8 [ 0, %464 ], [ %443, %449 ]
  %469 = icmp ult i64 %467, %131
  br i1 %469, label %470, label %472

; <label>:470:                                    ; preds = %466
  %471 = getelementptr inbounds i8, i8* %0, i64 %467
  store i8 %444, i8* %471, align 1
  br label %472

; <label>:472:                                    ; preds = %470, %466
  %473 = add i64 %467, 1
  %474 = getelementptr inbounds i8, i8* %2, i64 %447
  %475 = load i8, i8* %474, align 1
  br label %379

; <label>:476:                                    ; preds = %368, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %273, %188, %190, %193, %207, %209, %211, %212, %270, %266, %261, %275, %296, %257, %245, %221, %216, %213, %210
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
  br i1 %107, label %488, label %487

; <label>:487:                                    ; preds = %476
  br i1 %117, label %489, label %501

; <label>:488:                                    ; preds = %476
  br i1 %20, label %501, label %489

; <label>:489:                                    ; preds = %488, %487
  %490 = lshr i8 %483, 5
  %491 = zext i8 %490 to i64
  %492 = getelementptr inbounds i32, i32* %6, i64 %491
  %493 = load i32, i32* %492, align 4
  %494 = and i8 %483, 31
  %495 = zext i8 %494 to i32
  %496 = shl i32 1, %495
  %497 = and i32 %493, %496
  %498 = icmp eq i32 %497, 0
  %499 = icmp eq i8 %157, 0
  %500 = and i1 %499, %498
  br i1 %500, label %542, label %503

; <label>:501:                                    ; preds = %488, %487
  %502 = icmp eq i8 %157, 0
  br i1 %502, label %542, label %503

; <label>:503:                                    ; preds = %257, %489, %501
  %504 = phi i64 [ %477, %489 ], [ %477, %501 ], [ %124, %257 ]
  %505 = phi i64 [ %478, %489 ], [ %478, %501 ], [ %125, %257 ]
  %506 = phi i64 [ %479, %489 ], [ %479, %501 ], [ %126, %257 ]
  %507 = phi i64 [ %480, %489 ], [ %480, %501 ], [ %156, %257 ]
  %508 = phi i8 [ %481, %489 ], [ %481, %501 ], [ %128, %257 ]
  %509 = phi i8 [ %482, %489 ], [ %482, %501 ], [ %129, %257 ]
  %510 = phi i8 [ %483, %489 ], [ %483, %501 ], [ %258, %257 ]
  %511 = phi i8 [ %485, %489 ], [ %485, %501 ], [ 0, %257 ]
  %512 = phi i64 [ %486, %489 ], [ %486, %501 ], [ %131, %257 ]
  br i1 %112, label %513, label %644

; <label>:513:                                    ; preds = %503
  %514 = and i8 %508, 1
  %515 = icmp eq i8 %514, 0
  %516 = and i1 %114, %515
  br i1 %516, label %517, label %533

; <label>:517:                                    ; preds = %513
  %518 = icmp ult i64 %505, %512
  br i1 %518, label %519, label %521

; <label>:519:                                    ; preds = %517
  %520 = getelementptr inbounds i8, i8* %0, i64 %505
  store i8 39, i8* %520, align 1
  br label %521

; <label>:521:                                    ; preds = %519, %517
  %522 = add i64 %505, 1
  %523 = icmp ult i64 %522, %512
  br i1 %523, label %524, label %526

; <label>:524:                                    ; preds = %521
  %525 = getelementptr inbounds i8, i8* %0, i64 %522
  store i8 36, i8* %525, align 1
  br label %526

; <label>:526:                                    ; preds = %524, %521
  %527 = add i64 %505, 2
  %528 = icmp ult i64 %527, %512
  br i1 %528, label %529, label %531

; <label>:529:                                    ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527
  store i8 39, i8* %530, align 1
  br label %531

; <label>:531:                                    ; preds = %529, %526
  %532 = add i64 %505, 3
  br label %533

; <label>:533:                                    ; preds = %513, %531
  %534 = phi i64 [ %532, %531 ], [ %505, %513 ]
  %535 = phi i8 [ 1, %531 ], [ %508, %513 ]
  %536 = icmp ult i64 %534, %512
  br i1 %536, label %537, label %539

; <label>:537:                                    ; preds = %533
  %538 = getelementptr inbounds i8, i8* %0, i64 %534
  store i8 92, i8* %538, align 1
  br label %539

; <label>:539:                                    ; preds = %533, %537
  %540 = add i64 %534, 1
  br label %569

; <label>:541:                                    ; preds = %441
  br label %542

; <label>:542:                                    ; preds = %541, %254, %489, %253, %501
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
  %553 = and i8 %547, 1
  %554 = icmp ne i8 %553, 0
  %555 = and i8 %550, 1
  %556 = icmp eq i8 %555, 0
  %557 = and i1 %554, %556
  br i1 %557, label %558, label %569

; <label>:558:                                    ; preds = %542
  %559 = icmp ult i64 %544, %552
  br i1 %559, label %560, label %562

; <label>:560:                                    ; preds = %558
  %561 = getelementptr inbounds i8, i8* %0, i64 %544
  store i8 39, i8* %561, align 1
  br label %562

; <label>:562:                                    ; preds = %560, %558
  %563 = add i64 %544, 1
  %564 = icmp ult i64 %563, %552
  br i1 %564, label %565, label %567

; <label>:565:                                    ; preds = %562
  %566 = getelementptr inbounds i8, i8* %0, i64 %563
  store i8 39, i8* %566, align 1
  br label %567

; <label>:567:                                    ; preds = %565, %562
  %568 = add i64 %544, 2
  br label %569

; <label>:569:                                    ; preds = %539, %542, %567
  %570 = phi i64 [ %552, %567 ], [ %552, %542 ], [ %512, %539 ]
  %571 = phi i8 [ %551, %567 ], [ %551, %542 ], [ %511, %539 ]
  %572 = phi i8 [ %549, %567 ], [ %549, %542 ], [ %510, %539 ]
  %573 = phi i8 [ %548, %567 ], [ %548, %542 ], [ %509, %539 ]
  %574 = phi i64 [ %546, %567 ], [ %546, %542 ], [ %507, %539 ]
  %575 = phi i64 [ %545, %567 ], [ %545, %542 ], [ %506, %539 ]
  %576 = phi i64 [ %543, %567 ], [ %543, %542 ], [ %504, %539 ]
  %577 = phi i64 [ %568, %567 ], [ %544, %542 ], [ %540, %539 ]
  %578 = phi i8 [ 0, %567 ], [ %547, %542 ], [ %535, %539 ]
  %579 = icmp ult i64 %577, %570
  br i1 %579, label %580, label %582

; <label>:580:                                    ; preds = %569
  %581 = getelementptr inbounds i8, i8* %0, i64 %577
  store i8 %572, i8* %581, align 1
  br label %582

; <label>:582:                                    ; preds = %580, %569
  %583 = add i64 %577, 1
  %584 = and i8 %571, 1
  %585 = icmp eq i8 %584, 0
  %586 = select i1 %585, i8 0, i8 %130
  br label %587

; <label>:587:                                    ; preds = %582, %209
  %588 = phi i64 [ %124, %209 ], [ %576, %582 ]
  %589 = phi i64 [ %125, %209 ], [ %583, %582 ]
  %590 = phi i64 [ %126, %209 ], [ %575, %582 ]
  %591 = phi i64 [ %156, %209 ], [ %574, %582 ]
  %592 = phi i8 [ %128, %209 ], [ %578, %582 ]
  %593 = phi i8 [ %129, %209 ], [ %573, %582 ]
  %594 = phi i8 [ %130, %209 ], [ %586, %582 ]
  %595 = phi i64 [ %131, %209 ], [ %570, %582 ]
  %596 = add i64 %588, 1
  br label %123

; <label>:597:                                    ; preds = %133, %135
  %598 = phi i64 [ %124, %133 ], [ -1, %135 ]
  %599 = icmp eq i64 %125, 0
  %600 = and i1 %114, %599
  %601 = xor i1 %600, true
  %602 = or i1 %112, %601
  br i1 %602, label %603, label %648

; <label>:603:                                    ; preds = %597
  %604 = and i1 %114, %112
  %605 = xor i1 %604, true
  %606 = and i8 %129, 1
  %607 = icmp eq i8 %606, 0
  %608 = or i1 %607, %605
  br i1 %608, label %618, label %609

; <label>:609:                                    ; preds = %603
  %610 = and i8 %130, 1
  %611 = icmp eq i8 %610, 0
  br i1 %611, label %614, label %612

; <label>:612:                                    ; preds = %609
  %613 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %126, i8* %2, i64 %598, i32 5, i32 %5, i32* %6, i8* %97, i8* %98)
  br label %659

; <label>:614:                                    ; preds = %609
  %615 = icmp eq i64 %131, 0
  %616 = icmp ne i64 %126, 0
  %617 = and i1 %616, %615
  br i1 %617, label %27, label %618

; <label>:618:                                    ; preds = %603, %614
  %619 = icmp ne i8* %100, null
  %620 = and i1 %619, %112
  br i1 %620, label %621, label %638

; <label>:621:                                    ; preds = %618
  %622 = load i8, i8* %100, align 1
  %623 = icmp eq i8 %622, 0
  br i1 %623, label %638, label %624

; <label>:624:                                    ; preds = %621
  br label %625

; <label>:625:                                    ; preds = %624, %632
  %626 = phi i8 [ %635, %632 ], [ %622, %624 ]
  %627 = phi i8* [ %634, %632 ], [ %100, %624 ]
  %628 = phi i64 [ %633, %632 ], [ %125, %624 ]
  %629 = icmp ult i64 %628, %131
  br i1 %629, label %630, label %632

; <label>:630:                                    ; preds = %625
  %631 = getelementptr inbounds i8, i8* %0, i64 %628
  store i8 %626, i8* %631, align 1
  br label %632

; <label>:632:                                    ; preds = %630, %625
  %633 = add i64 %628, 1
  %634 = getelementptr inbounds i8, i8* %627, i64 1
  %635 = load i8, i8* %634, align 1
  %636 = icmp eq i8 %635, 0
  br i1 %636, label %637, label %625

; <label>:637:                                    ; preds = %632
  br label %638

; <label>:638:                                    ; preds = %637, %621, %618
  %639 = phi i64 [ %125, %618 ], [ %125, %621 ], [ %633, %637 ]
  %640 = icmp ult i64 %639, %131
  br i1 %640, label %641, label %659

; <label>:641:                                    ; preds = %638
  %642 = getelementptr inbounds i8, i8* %0, i64 %639
  store i8 0, i8* %642, align 1
  br label %659

; <label>:643:                                    ; preds = %386
  br label %649

; <label>:644:                                    ; preds = %148, %161, %211, %225, %253, %255, %273, %276, %503
  %645 = phi i32 [ %96, %148 ], [ %96, %161 ], [ 2, %211 ], [ 5, %225 ], [ 2, %253 ], [ 2, %255 ], [ 2, %273 ], [ 2, %276 ], [ %96, %503 ]
  %646 = phi i64 [ %146, %148 ], [ %156, %161 ], [ %156, %211 ], [ %156, %225 ], [ %156, %253 ], [ %156, %255 ], [ %156, %273 ], [ %156, %276 ], [ %507, %503 ]
  %647 = phi i64 [ %131, %148 ], [ %131, %161 ], [ %131, %211 ], [ %131, %225 ], [ %131, %253 ], [ %131, %255 ], [ %131, %273 ], [ %131, %276 ], [ %512, %503 ]
  br label %649

; <label>:648:                                    ; preds = %597
  br label %649

; <label>:649:                                    ; preds = %648, %644, %643, %367
  %650 = phi i32 [ 2, %367 ], [ %96, %643 ], [ %645, %644 ], [ %96, %648 ]
  %651 = phi i64 [ %313, %367 ], [ %369, %643 ], [ %646, %644 ], [ %598, %648 ]
  %652 = phi i64 [ %131, %367 ], [ %131, %643 ], [ %647, %644 ], [ %131, %648 ]
  %653 = icmp ne i32 %650, 2
  %654 = icmp eq i8 %104, 0
  %655 = or i1 %653, %654
  %656 = select i1 %655, i32 %650, i32 4
  %657 = and i32 %5, -3
  %658 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %652, i8* %2, i64 %651, i32 %656, i32 %657, i32* null, i8* %97, i8* %98)
  br label %659

; <label>:659:                                    ; preds = %638, %641, %649, %612
  %660 = phi i64 [ %658, %649 ], [ %613, %612 ], [ %639, %641 ], [ %639, %638 ]
  ret i64 %660
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 {
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #10
  %4 = icmp eq i8* %3, %0
  br i1 %4, label %5, label %75

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #10
  %7 = load i8, i8* %6, align 1
  %8 = sext i8 %7 to i32
  %9 = and i32 %8, -33
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ]

; <label>:10:                                     ; preds = %5
  %11 = getelementptr inbounds i8, i8* %6, i64 1
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = and i32 %13, -33
  %15 = icmp eq i32 %14, 84
  br i1 %15, label %16, label %72

; <label>:16:                                     ; preds = %10
  %17 = getelementptr inbounds i8, i8* %6, i64 2
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = and i32 %19, -33
  %21 = icmp eq i32 %20, 70
  br i1 %21, label %22, label %72

; <label>:22:                                     ; preds = %16
  %23 = getelementptr inbounds i8, i8* %6, i64 3
  %24 = load i8, i8* %23, align 1
  %25 = icmp eq i8 %24, 45
  br i1 %25, label %26, label %72

; <label>:26:                                     ; preds = %22
  %27 = getelementptr inbounds i8, i8* %6, i64 4
  %28 = load i8, i8* %27, align 1
  %29 = icmp eq i8 %28, 56
  br i1 %29, label %30, label %72

; <label>:30:                                     ; preds = %26
  %31 = getelementptr inbounds i8, i8* %6, i64 5
  %32 = load i8, i8* %31, align 1
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %72

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1
  %36 = icmp eq i8 %35, 96
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.111, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.112, i64 0, i64 0)
  br label %75

; <label>:38:                                     ; preds = %5
  %39 = getelementptr inbounds i8, i8* %6, i64 1
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = and i32 %41, -33
  %43 = icmp eq i32 %42, 66
  br i1 %43, label %44, label %72

; <label>:44:                                     ; preds = %38
  %45 = getelementptr inbounds i8, i8* %6, i64 2
  %46 = load i8, i8* %45, align 1
  %47 = icmp eq i8 %46, 49
  br i1 %47, label %48, label %72

; <label>:48:                                     ; preds = %44
  %49 = getelementptr inbounds i8, i8* %6, i64 3
  %50 = load i8, i8* %49, align 1
  %51 = icmp eq i8 %50, 56
  br i1 %51, label %52, label %72

; <label>:52:                                     ; preds = %48
  %53 = getelementptr inbounds i8, i8* %6, i64 4
  %54 = load i8, i8* %53, align 1
  %55 = icmp eq i8 %54, 48
  br i1 %55, label %56, label %72

; <label>:56:                                     ; preds = %52
  %57 = getelementptr inbounds i8, i8* %6, i64 5
  %58 = load i8, i8* %57, align 1
  %59 = icmp eq i8 %58, 51
  br i1 %59, label %60, label %72

; <label>:60:                                     ; preds = %56
  %61 = getelementptr inbounds i8, i8* %6, i64 6
  %62 = load i8, i8* %61, align 1
  %63 = icmp eq i8 %62, 48
  br i1 %63, label %64, label %72

; <label>:64:                                     ; preds = %60
  %65 = getelementptr inbounds i8, i8* %6, i64 7
  %66 = load i8, i8* %65, align 1
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %68, label %72

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1
  %70 = icmp eq i8 %69, 96
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.113, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.114, i64 0, i64 0)
  br label %75

; <label>:72:                                     ; preds = %5, %30, %26, %22, %16, %10, %64, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.110, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.109, i64 0, i64 0)
  br label %75

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 {
  %4 = icmp ne %struct.quoting_options* %2, null
  %5 = select i1 %4, %struct.quoting_options* %2, %struct.quoting_options* @default_quoting_options
  %6 = tail call i32* @__errno_location() #1
  %7 = load i32, i32* %6, align 4
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = or i32 %9, 1
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3
  %15 = load i8*, i8** %14, align 8
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4
  %17 = load i8*, i8** %16, align 8
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #10
  %19 = add i64 %18, 1
  %20 = tail call noalias i8* @xmalloc(i64 %19) #10
  %21 = load i32, i32* %11, align 8
  %22 = load i8*, i8** %14, align 8
  %23 = load i8*, i8** %16, align 8
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #10
  store i32 %7, i32* %6, align 4
  ret i8* %20
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 {
  %5 = icmp ne %struct.quoting_options* %3, null
  %6 = select i1 %5, %struct.quoting_options* %3, %struct.quoting_options* @default_quoting_options
  %7 = tail call i32* @__errno_location() #1
  %8 = load i32, i32* %7, align 4
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i64* %2, null
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = or i32 %10, %13
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3
  %19 = load i8*, i8** %18, align 8
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4
  %21 = load i8*, i8** %20, align 8
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21)
  %23 = add i64 %22, 1
  %24 = tail call noalias i8* @xmalloc(i64 %23) #10
  %25 = load i32, i32* %15, align 8
  %26 = load i8*, i8** %18, align 8
  %27 = load i8*, i8** %20, align 8
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27)
  store i32 %8, i32* %7, align 4
  br i1 %11, label %29, label %30

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8
  br label %30

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8
  %2 = load i32, i32* @nslots, align 4
  %3 = icmp sgt i32 %2, 1
  br i1 %3, label %4, label %14

; <label>:4:                                      ; preds = %0
  br label %5

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1
  %8 = load i8*, i8** %7, align 8
  tail call void @free(i8* %8) #10
  %9 = add nuw i64 %6, 1
  %10 = load i32, i32* @nslots, align 4
  %11 = sext i32 %10 to i64
  %12 = icmp slt i64 %9, %11
  br i1 %12, label %5, label %13

; <label>:13:                                     ; preds = %5
  br label %14

; <label>:14:                                     ; preds = %13, %0
  %15 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1
  %16 = load i8*, i8** %15, align 8
  %17 = icmp eq i8* %16, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0)
  br i1 %17, label %19, label %18

; <label>:18:                                     ; preds = %14
  tail call void @free(i8* %16) #10
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8
  br label %19

; <label>:19:                                     ; preds = %14, %18
  %20 = icmp eq %struct.slotvec* %1, @slotvec0
  br i1 %20, label %23, label %21

; <label>:21:                                     ; preds = %19
  %22 = bitcast %struct.slotvec* %1 to i8*
  tail call void @free(i8* %22) #10
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8
  br label %23

; <label>:23:                                     ; preds = %19, %21
  store i32 1, i32* @nslots, align 4
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 {
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options)
  ret i8* %3
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 {
  %5 = tail call i32* @__errno_location() #1
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8
  %8 = icmp slt i32 %0, 0
  br i1 %8, label %9, label %10

; <label>:9:                                      ; preds = %4
  tail call void @abort() #14
  unreachable

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4
  %12 = icmp sgt i32 %11, %0
  br i1 %12, label %34, label %13

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0
  %15 = icmp ugt i32 %0, 2147483646
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14
  unreachable

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*
  %19 = select i1 %14, i8* null, i8* %18
  %20 = add nsw i32 %0, 1
  %21 = sext i32 %20 to i64
  %22 = shl nsw i64 %21, 4
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #10
  %24 = bitcast i8* %23 to %struct.slotvec*
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8
  br i1 %14, label %25, label %26

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false)
  br label %26

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28
  %30 = bitcast %struct.slotvec* %29 to i8*
  %31 = sub nsw i32 %20, %27
  %32 = sext i32 %31 to i64
  %33 = shl nsw i64 %32, 4
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false)
  store i32 %20, i32* @nslots, align 4
  br label %34

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  %36 = sext i32 %0 to i64
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, 1
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3
  %48 = load i8*, i8** %47, align 8
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4
  %50 = load i8*, i8** %49, align 8
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50)
  %52 = icmp ugt i64 %38, %51
  br i1 %52, label %63, label %53

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1
  store i64 %54, i64* %37, align 8
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0)
  br i1 %55, label %57, label %56

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #10
  br label %57

; <label>:57:                                     ; preds = %53, %56
  %58 = tail call noalias i8* @xmalloc(i64 %54) #10
  store i8* %58, i8** %39, align 8
  %59 = load i32, i32* %44, align 8
  %60 = load i8*, i8** %47, align 8
  %61 = load i8*, i8** %49, align 8
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61)
  br label %63

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  store i32 %6, i32* %5, align 4
  ret i8* %64
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 {
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options)
  ret i8* %4
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 {
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #10
  ret i8* %2
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 {
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #10
  ret i8* %3
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 {
  %4 = alloca [52 x i8], align 4
  %5 = alloca %struct.quoting_options, align 8
  %6 = bitcast %struct.quoting_options* %5 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7)
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false)
  %8 = icmp eq i32 %1, 10
  br i1 %8, label %9, label %10

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14
  unreachable

; <label>:10:                                     ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0
  store i32 %1, i32* %11, align 8
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1
  %13 = bitcast i32* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7)
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5)
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10
  ret i8* %14
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 {
  %5 = alloca [52 x i8], align 4
  %6 = alloca %struct.quoting_options, align 8
  %7 = bitcast %struct.quoting_options* %6 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8)
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false)
  %9 = icmp eq i32 %1, 10
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %4
  tail call void @abort() #14
  unreachable

; <label>:11:                                     ; preds = %4
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0
  store i32 %1, i32* %12, align 8
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1
  %14 = bitcast i32* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #10
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8)
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6)
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10
  ret i8* %15
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 {
  %3 = alloca [52 x i8], align 4
  %4 = alloca %struct.quoting_options, align 8
  %5 = bitcast %struct.quoting_options* %4 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0
  call void @llvm.lifetime.start(i64 52, i8* nonnull %6)
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false)
  %7 = icmp eq i32 %0, 10
  br i1 %7, label %8, label %9

; <label>:8:                                      ; preds = %2
  tail call void @abort() #14
  unreachable

; <label>:9:                                      ; preds = %2
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0
  store i32 %0, i32* %10, align 8
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1
  %12 = bitcast i32* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #10
  call void @llvm.lifetime.end(i64 52, i8* nonnull %6)
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #10
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10
  ret i8* %13
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 {
  %4 = alloca [52 x i8], align 4
  %5 = alloca %struct.quoting_options, align 8
  %6 = bitcast %struct.quoting_options* %5 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7)
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false)
  %8 = icmp eq i32 %0, 10
  br i1 %8, label %9, label %10

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14
  unreachable

; <label>:10:                                     ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0
  store i32 %0, i32* %11, align 8
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1
  %13 = bitcast i32* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7)
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #10
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10
  ret i8* %14
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = bitcast %struct.quoting_options* %4 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false)
  %6 = lshr i8 %2, 5
  %7 = zext i8 %6 to i64
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7
  %9 = and i8 %2, 31
  %10 = zext i8 %9 to i32
  %11 = load i32, i32* %8, align 4
  %12 = lshr i32 %11, %10
  %13 = and i32 %12, 1
  %14 = xor i32 %13, 1
  %15 = shl i32 %14, %10
  %16 = xor i32 %15, %11
  store i32 %16, i32* %8, align 4
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4)
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10
  ret i8* %17
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 {
  %3 = alloca %struct.quoting_options, align 8
  %4 = bitcast %struct.quoting_options* %3 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #10
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10
  %5 = lshr i8 %1, 5
  %6 = zext i8 %5 to i64
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6
  %8 = and i8 %1, 31
  %9 = zext i8 %8 to i32
  %10 = load i32, i32* %7, align 4
  %11 = lshr i32 %10, %9
  %12 = and i32 %11, 1
  %13 = xor i32 %12, 1
  %14 = shl i32 %13, %9
  %15 = xor i32 %14, %10
  store i32 %15, i32* %7, align 4
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #10
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #10
  ret i8* %16
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 {
  %2 = alloca %struct.quoting_options, align 8
  %3 = bitcast %struct.quoting_options* %2 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %3) #10
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1
  %5 = load i32, i32* %4, align 4
  %6 = or i32 %5, 67108864
  store i32 %6, i32* %4, align 4
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #10
  call void @llvm.lifetime.end(i64 56, i8* nonnull %3) #10
  ret i8* %7
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 {
  %3 = alloca %struct.quoting_options, align 8
  %4 = bitcast %struct.quoting_options* %3 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #10
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1
  %6 = load i32, i32* %5, align 4
  %7 = or i32 %6, 67108864
  store i32 %7, i32* %5, align 4
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #10
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #10
  ret i8* %8
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 {
  %4 = alloca [52 x i8], align 4
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  %7 = bitcast %struct.quoting_options* %5 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8)
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false)
  %9 = icmp eq i32 %1, 10
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14
  unreachable

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false)
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8)
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0
  store i32 %1, i32* %13, align 8
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1
  %15 = bitcast i32* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false)
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %17, 67108864
  store i32 %18, i32* %16, align 4
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5)
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10
  ret i8* %19
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 {
  %5 = alloca %struct.quoting_options, align 8
  %6 = bitcast %struct.quoting_options* %5 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0
  store i32 10, i32* %7, align 8
  %8 = icmp ne i8* %1, null
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9
  br i1 %10, label %12, label %11

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14
  unreachable

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3
  store i8* %1, i8** %13, align 8
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4
  store i8* %2, i8** %14, align 8
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #10
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10
  ret i8* %15
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 {
  %6 = alloca %struct.quoting_options, align 8
  %7 = bitcast %struct.quoting_options* %6 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false)
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0
  store i32 10, i32* %8, align 8
  %9 = icmp ne i8* %1, null
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10
  br i1 %11, label %13, label %12

; <label>:12:                                     ; preds = %5
  tail call void @abort() #14
  unreachable

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3
  store i8* %1, i8** %14, align 8
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4
  store i8* %2, i8** %15, align 8
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6)
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10
  ret i8* %16
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = bitcast %struct.quoting_options* %4 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0
  store i32 10, i32* %6, align 8
  %7 = icmp ne i8* %0, null
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8
  br i1 %9, label %11, label %10

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14
  unreachable

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3
  store i8* %0, i8** %12, align 8
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4
  store i8* %1, i8** %13, align 8
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #10
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10
  ret i8* %14
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 {
  %5 = alloca %struct.quoting_options, align 8
  %6 = bitcast %struct.quoting_options* %5 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0
  store i32 10, i32* %7, align 8
  %8 = icmp ne i8* %0, null
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9
  br i1 %10, label %12, label %11

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14
  unreachable

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3
  store i8* %0, i8** %13, align 8
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4
  store i8* %1, i8** %14, align 8
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #10
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10
  ret i8* %15
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 {
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options)
  ret i8* %4
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 {
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #10
  ret i8* %3
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 {
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10
  ret i8* %3
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 {
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10
  ret i8* %2
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @safe_read(i32, i8* nocapture, i64) local_unnamed_addr #6 {
  br label %4

; <label>:4:                                      ; preds = %13, %3
  %5 = phi i64 [ 2147475456, %13 ], [ %2, %3 ]
  br label %6

; <label>:6:                                      ; preds = %4, %9
  %7 = tail call i64 @read(i32 %0, i8* %1, i64 %5) #10
  %8 = icmp sgt i64 %7, -1
  br i1 %8, label %17, label %9

; <label>:9:                                      ; preds = %6
  %10 = tail call i32* @__errno_location() #1
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, 4
  br i1 %12, label %6, label %13

; <label>:13:                                     ; preds = %9
  %14 = icmp eq i32 %11, 22
  %15 = icmp ugt i64 %5, 2147475456
  %16 = and i1 %15, %14
  br i1 %16, label %4, label %18

; <label>:17:                                     ; preds = %6
  br label %19

; <label>:18:                                     ; preds = %13
  br label %19

; <label>:19:                                     ; preds = %18, %17
  ret i64 %7
}

declare i64 @read(i32, i8* nocapture, i64) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 {
  %7 = icmp eq i8* %1, null
  br i1 %7, label %10, label %8

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.121, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #10
  br label %12

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.122, i64 0, i64 0), i8* %2, i8* %3) #10
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.123, i64 0, i64 0), i32 5) #10
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #10
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.124, i64 0, i64 0), i32 5) #10
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #10
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
  ]

; <label>:17:                                     ; preds = %12
  tail call void @abort() #14
  unreachable

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.125, i64 0, i64 0), i32 5) #10
  %20 = load i8*, i8** %4, align 8
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #10
  br label %146

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.126, i64 0, i64 0), i32 5) #10
  %24 = load i8*, i8** %4, align 8
  %25 = getelementptr inbounds i8*, i8** %4, i64 1
  %26 = load i8*, i8** %25, align 8
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #10
  br label %146

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.127, i64 0, i64 0), i32 5) #10
  %30 = load i8*, i8** %4, align 8
  %31 = getelementptr inbounds i8*, i8** %4, i64 1
  %32 = load i8*, i8** %31, align 8
  %33 = getelementptr inbounds i8*, i8** %4, i64 2
  %34 = load i8*, i8** %33, align 8
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #10
  br label %146

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.128, i64 0, i64 0), i32 5) #10
  %38 = load i8*, i8** %4, align 8
  %39 = getelementptr inbounds i8*, i8** %4, i64 1
  %40 = load i8*, i8** %39, align 8
  %41 = getelementptr inbounds i8*, i8** %4, i64 2
  %42 = load i8*, i8** %41, align 8
  %43 = getelementptr inbounds i8*, i8** %4, i64 3
  %44 = load i8*, i8** %43, align 8
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #10
  br label %146

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.129, i64 0, i64 0), i32 5) #10
  %48 = load i8*, i8** %4, align 8
  %49 = getelementptr inbounds i8*, i8** %4, i64 1
  %50 = load i8*, i8** %49, align 8
  %51 = getelementptr inbounds i8*, i8** %4, i64 2
  %52 = load i8*, i8** %51, align 8
  %53 = getelementptr inbounds i8*, i8** %4, i64 3
  %54 = load i8*, i8** %53, align 8
  %55 = getelementptr inbounds i8*, i8** %4, i64 4
  %56 = load i8*, i8** %55, align 8
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #10
  br label %146

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.130, i64 0, i64 0), i32 5) #10
  %60 = load i8*, i8** %4, align 8
  %61 = getelementptr inbounds i8*, i8** %4, i64 1
  %62 = load i8*, i8** %61, align 8
  %63 = getelementptr inbounds i8*, i8** %4, i64 2
  %64 = load i8*, i8** %63, align 8
  %65 = getelementptr inbounds i8*, i8** %4, i64 3
  %66 = load i8*, i8** %65, align 8
  %67 = getelementptr inbounds i8*, i8** %4, i64 4
  %68 = load i8*, i8** %67, align 8
  %69 = getelementptr inbounds i8*, i8** %4, i64 5
  %70 = load i8*, i8** %69, align 8
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #10
  br label %146

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.131, i64 0, i64 0), i32 5) #10
  %74 = load i8*, i8** %4, align 8
  %75 = getelementptr inbounds i8*, i8** %4, i64 1
  %76 = load i8*, i8** %75, align 8
  %77 = getelementptr inbounds i8*, i8** %4, i64 2
  %78 = load i8*, i8** %77, align 8
  %79 = getelementptr inbounds i8*, i8** %4, i64 3
  %80 = load i8*, i8** %79, align 8
  %81 = getelementptr inbounds i8*, i8** %4, i64 4
  %82 = load i8*, i8** %81, align 8
  %83 = getelementptr inbounds i8*, i8** %4, i64 5
  %84 = load i8*, i8** %83, align 8
  %85 = getelementptr inbounds i8*, i8** %4, i64 6
  %86 = load i8*, i8** %85, align 8
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #10
  br label %146

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.132, i64 0, i64 0), i32 5) #10
  %90 = load i8*, i8** %4, align 8
  %91 = getelementptr inbounds i8*, i8** %4, i64 1
  %92 = load i8*, i8** %91, align 8
  %93 = getelementptr inbounds i8*, i8** %4, i64 2
  %94 = load i8*, i8** %93, align 8
  %95 = getelementptr inbounds i8*, i8** %4, i64 3
  %96 = load i8*, i8** %95, align 8
  %97 = getelementptr inbounds i8*, i8** %4, i64 4
  %98 = load i8*, i8** %97, align 8
  %99 = getelementptr inbounds i8*, i8** %4, i64 5
  %100 = load i8*, i8** %99, align 8
  %101 = getelementptr inbounds i8*, i8** %4, i64 6
  %102 = load i8*, i8** %101, align 8
  %103 = getelementptr inbounds i8*, i8** %4, i64 7
  %104 = load i8*, i8** %103, align 8
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #10
  br label %146

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.133, i64 0, i64 0), i32 5) #10
  %108 = load i8*, i8** %4, align 8
  %109 = getelementptr inbounds i8*, i8** %4, i64 1
  %110 = load i8*, i8** %109, align 8
  %111 = getelementptr inbounds i8*, i8** %4, i64 2
  %112 = load i8*, i8** %111, align 8
  %113 = getelementptr inbounds i8*, i8** %4, i64 3
  %114 = load i8*, i8** %113, align 8
  %115 = getelementptr inbounds i8*, i8** %4, i64 4
  %116 = load i8*, i8** %115, align 8
  %117 = getelementptr inbounds i8*, i8** %4, i64 5
  %118 = load i8*, i8** %117, align 8
  %119 = getelementptr inbounds i8*, i8** %4, i64 6
  %120 = load i8*, i8** %119, align 8
  %121 = getelementptr inbounds i8*, i8** %4, i64 7
  %122 = load i8*, i8** %121, align 8
  %123 = getelementptr inbounds i8*, i8** %4, i64 8
  %124 = load i8*, i8** %123, align 8
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #10
  br label %146

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.134, i64 0, i64 0), i32 5) #10
  %128 = load i8*, i8** %4, align 8
  %129 = getelementptr inbounds i8*, i8** %4, i64 1
  %130 = load i8*, i8** %129, align 8
  %131 = getelementptr inbounds i8*, i8** %4, i64 2
  %132 = load i8*, i8** %131, align 8
  %133 = getelementptr inbounds i8*, i8** %4, i64 3
  %134 = load i8*, i8** %133, align 8
  %135 = getelementptr inbounds i8*, i8** %4, i64 4
  %136 = load i8*, i8** %135, align 8
  %137 = getelementptr inbounds i8*, i8** %4, i64 5
  %138 = load i8*, i8** %137, align 8
  %139 = getelementptr inbounds i8*, i8** %4, i64 6
  %140 = load i8*, i8** %139, align 8
  %141 = getelementptr inbounds i8*, i8** %4, i64 7
  %142 = load i8*, i8** %141, align 8
  %143 = getelementptr inbounds i8*, i8** %4, i64 8
  %144 = load i8*, i8** %143, align 8
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #10
  br label %146

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 {
  br label %6

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7
  %9 = load i8*, i8** %8, align 8
  %10 = icmp eq i8* %9, null
  %11 = add i64 %7, 1
  br i1 %10, label %12, label %6

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 {
  %6 = alloca [10 x i8*], align 16
  %7 = bitcast [10 x i8*]* %6 to i8*
  call void @llvm.lifetime.start(i64 80, i8* nonnull %7) #10
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %11 = load i32, i32* %8, align 8
  %12 = icmp ult i32 %11, 41
  br i1 %12, label %13, label %18

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8
  %15 = sext i32 %11 to i64
  %16 = getelementptr i8, i8* %14, i64 %15
  %17 = add i32 %11, 8
  store i32 %17, i32* %8, align 8
  br label %21

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8
  %20 = getelementptr i8, i8* %19, i64 8
  store i8* %20, i8** %10, align 8
  br label %21

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**
  %25 = load i8*, i8** %24, align 8
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0
  store i8* %25, i8** %26, align 16
  %27 = icmp eq i8* %25, null
  br i1 %27, label %30, label %28

; <label>:28:                                     ; preds = %21
  %29 = icmp ult i32 %22, 41
  br i1 %29, label %35, label %32

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31)
  call void @llvm.lifetime.end(i64 80, i8* nonnull %7) #10
  ret void

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8
  %34 = getelementptr i8, i8* %33, i64 8
  store i8* %34, i8** %10, align 8
  br label %40

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8
  %37 = sext i32 %22 to i64
  %38 = getelementptr i8, i8* %36, i64 %37
  %39 = add i32 %22, 8
  store i32 %39, i32* %8, align 8
  br label %40

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**
  %44 = load i8*, i8** %43, align 8
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1
  store i8* %44, i8** %45, align 8
  %46 = icmp eq i8* %44, null
  br i1 %46, label %30, label %47

; <label>:47:                                     ; preds = %40
  %48 = icmp ult i32 %41, 41
  br i1 %48, label %52, label %49

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8
  %51 = getelementptr i8, i8* %50, i64 8
  store i8* %51, i8** %10, align 8
  br label %57

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8
  %54 = sext i32 %41 to i64
  %55 = getelementptr i8, i8* %53, i64 %54
  %56 = add i32 %41, 8
  store i32 %56, i32* %8, align 8
  br label %57

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**
  %61 = load i8*, i8** %60, align 8
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2
  store i8* %61, i8** %62, align 16
  %63 = icmp eq i8* %61, null
  br i1 %63, label %30, label %64

; <label>:64:                                     ; preds = %57
  %65 = icmp ult i32 %58, 41
  br i1 %65, label %69, label %66

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8
  %68 = getelementptr i8, i8* %67, i64 8
  store i8* %68, i8** %10, align 8
  br label %74

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8
  %71 = sext i32 %58 to i64
  %72 = getelementptr i8, i8* %70, i64 %71
  %73 = add i32 %58, 8
  store i32 %73, i32* %8, align 8
  br label %74

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**
  %78 = load i8*, i8** %77, align 8
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3
  store i8* %78, i8** %79, align 8
  %80 = icmp eq i8* %78, null
  br i1 %80, label %30, label %81

; <label>:81:                                     ; preds = %74
  %82 = icmp ult i32 %75, 41
  br i1 %82, label %86, label %83

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8
  %85 = getelementptr i8, i8* %84, i64 8
  store i8* %85, i8** %10, align 8
  br label %91

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8
  %88 = sext i32 %75 to i64
  %89 = getelementptr i8, i8* %87, i64 %88
  %90 = add i32 %75, 8
  store i32 %90, i32* %8, align 8
  br label %91

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**
  %95 = load i8*, i8** %94, align 8
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4
  store i8* %95, i8** %96, align 16
  %97 = icmp eq i8* %95, null
  br i1 %97, label %30, label %98

; <label>:98:                                     ; preds = %91
  %99 = icmp ult i32 %92, 41
  br i1 %99, label %103, label %100

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8
  %102 = getelementptr i8, i8* %101, i64 8
  store i8* %102, i8** %10, align 8
  br label %108

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8
  %105 = sext i32 %92 to i64
  %106 = getelementptr i8, i8* %104, i64 %105
  %107 = add i32 %92, 8
  store i32 %107, i32* %8, align 8
  br label %108

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**
  %111 = load i8*, i8** %110, align 8
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5
  store i8* %111, i8** %112, align 8
  %113 = icmp eq i8* %111, null
  br i1 %113, label %30, label %114

; <label>:114:                                    ; preds = %108
  %115 = load i8*, i8** %10, align 8
  %116 = getelementptr i8, i8* %115, i64 8
  store i8* %116, i8** %10, align 8
  %117 = bitcast i8* %115 to i8**
  %118 = load i8*, i8** %117, align 8
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6
  store i8* %118, i8** %119, align 16
  %120 = icmp eq i8* %118, null
  br i1 %120, label %30, label %121

; <label>:121:                                    ; preds = %114
  %122 = load i8*, i8** %10, align 8
  %123 = getelementptr i8, i8* %122, i64 8
  store i8* %123, i8** %10, align 8
  %124 = bitcast i8* %122 to i8**
  %125 = load i8*, i8** %124, align 8
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7
  store i8* %125, i8** %126, align 8
  %127 = icmp eq i8* %125, null
  br i1 %127, label %30, label %128

; <label>:128:                                    ; preds = %121
  %129 = load i8*, i8** %10, align 8
  %130 = getelementptr i8, i8* %129, i64 8
  store i8* %130, i8** %10, align 8
  %131 = bitcast i8* %129 to i8**
  %132 = load i8*, i8** %131, align 8
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8
  store i8* %132, i8** %133, align 16
  %134 = icmp eq i8* %132, null
  br i1 %134, label %30, label %135

; <label>:135:                                    ; preds = %128
  %136 = load i8*, i8** %10, align 8
  %137 = getelementptr i8, i8* %136, i64 8
  store i8* %137, i8** %10, align 8
  %138 = bitcast i8* %136 to i8**
  %139 = load i8*, i8** %138, align 8
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9
  store i8* %139, i8** %140, align 8
  %141 = icmp eq i8* %139, null
  %142 = select i1 %141, i64 9, i64 10
  br label %30
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*
  call void @llvm.lifetime.start(i64 24, i8* nonnull %6) #10
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0
  call void @llvm.va_start(i8* nonnull %6)
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7)
  call void @llvm.va_end(i8* nonnull %6)
  call void @llvm.lifetime.end(i64 24, i8* nonnull %6) #10
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #10

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.137, i64 0, i64 0), i32 5) #10
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.138, i64 0, i64 0)) #10
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.139, i64 0, i64 0), i32 5) #10
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.140, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.141, i64 0, i64 0)) #10
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19.142, i64 0, i64 0), i32 5) #10
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #10
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #12 {
  %3 = udiv i64 9223372036854775807, %1
  %4 = icmp ult i64 %3, %0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #14
  unreachable

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0
  %8 = tail call noalias i8* @malloc(i64 %7) #10
  %9 = icmp eq i8* %8, null
  %10 = icmp ne i64 %7, 0
  %11 = and i1 %10, %9
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #14
  unreachable

; <label>:13:                                     ; preds = %6
  ret i8* %8
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 {
  %2 = tail call noalias i8* @malloc(i64 %0) #10
  %3 = icmp eq i8* %2, null
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3
  br i1 %5, label %6, label %7

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14
  unreachable

; <label>:7:                                      ; preds = %1
  ret i8* %2
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #12 {
  %4 = udiv i64 9223372036854775807, %2
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %7

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #14
  unreachable

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1
  %9 = icmp eq i64 %8, 0
  %10 = icmp ne i8* %0, null
  %11 = and i1 %10, %9
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #10
  br label %19

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #10
  %15 = icmp eq i8* %14, null
  %16 = icmp ne i64 %8, 0
  %17 = and i1 %16, %15
  br i1 %17, label %18, label %19

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #14
  unreachable

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 {
  %3 = icmp eq i64 %1, 0
  %4 = icmp ne i8* %0, null
  %5 = and i1 %4, %3
  br i1 %5, label %6, label %7

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #10
  br label %13

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #10
  %9 = icmp eq i8* %8, null
  %10 = icmp ne i64 %1, 0
  %11 = and i1 %10, %9
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #14
  unreachable

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #12 {
  %4 = load i64, i64* %1, align 8
  %5 = icmp eq i8* %0, null
  br i1 %5, label %6, label %13

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0
  br i1 %7, label %8, label %17

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2
  %10 = icmp ugt i64 %2, 128
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11
  br label %17

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2
  %15 = icmp ugt i64 %14, %4
  br i1 %15, label %20, label %16

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14
  unreachable

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  store i64 %18, i64* %1, align 8
  %19 = mul i64 %18, %2
  br label %27

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1
  %22 = add i64 %4, 1
  %23 = add i64 %22, %21
  store i64 %23, i64* %1, align 8
  %24 = mul i64 %23, %2
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #10
  br label %34

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #10
  %30 = icmp eq i8* %29, null
  %31 = icmp ne i64 %28, 0
  %32 = and i1 %31, %30
  br i1 %32, label %33, label %34

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #14
  unreachable

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #12 {
  %2 = tail call noalias i8* @malloc(i64 %0) #10
  %3 = icmp eq i8* %2, null
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3
  br i1 %5, label %6, label %7

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14
  unreachable

; <label>:7:                                      ; preds = %1
  ret i8* %2
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 {
  %3 = load i64, i64* %1, align 8
  %4 = icmp eq i8* %0, null
  br i1 %4, label %5, label %8

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0
  %7 = select i1 %6, i64 128, i64 %3
  store i64 %7, i64* %1, align 8
  br label %17

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204
  br i1 %9, label %11, label %10

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #14
  unreachable

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1
  %13 = add i64 %3, 1
  %14 = add i64 %13, %12
  store i64 %14, i64* %1, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #10
  br label %24

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #10
  %20 = icmp eq i8* %19, null
  %21 = icmp ne i64 %18, 0
  %22 = and i1 %21, %20
  br i1 %22, label %23, label %24

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #14
  unreachable

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 {
  %2 = tail call noalias i8* @malloc(i64 %0) #10
  %3 = icmp eq i8* %2, null
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3
  br i1 %5, label %6, label %7

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14
  unreachable

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false)
  ret i8* %2
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 {
  %3 = udiv i64 9223372036854775807, %1
  %4 = icmp ult i64 %3, %0
  br i1 %4, label %8, label %5

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #10
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %9

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #14
  unreachable

; <label>:9:                                      ; preds = %5
  ret i8* %6
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 {
  %3 = tail call noalias i8* @malloc(i64 %1) #10
  %4 = icmp eq i8* %3, null
  %5 = icmp ne i64 %1, 0
  %6 = and i1 %5, %4
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #14
  unreachable

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false)
  ret i8* %3
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 {
  %2 = tail call i64 @strlen(i8* %0) #13
  %3 = add i64 %2, 1
  %4 = tail call noalias i8* @malloc(i64 %3) #10
  %5 = icmp eq i8* %4, null
  %6 = icmp ne i64 %3, 0
  %7 = and i1 %6, %5
  br i1 %7, label %8, label %9

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #14
  unreachable

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #10
  ret i8* %4
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 {
  %1 = load volatile i32, i32* @exit_failure, align 4
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.155, i64 0, i64 0), i32 5) #10
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.156, i64 0, i64 0), i8* %2) #10
  tail call void @abort() #14
  unreachable
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @xstrtoumax(i8*, i8**, i32, i64* nocapture, i8* readonly) local_unnamed_addr #6 {
  %6 = alloca i8*, align 8
  %7 = bitcast i8** %6 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %7) #10
  %8 = icmp ult i32 %2, 37
  br i1 %8, label %10, label %9

; <label>:9:                                      ; preds = %5
  tail call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.159, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.160, i64 0, i64 0), i32 96, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @__PRETTY_FUNCTION__.xstrtoumax, i64 0, i64 0)) #14
  unreachable

; <label>:10:                                     ; preds = %5
  %11 = icmp ne i8** %1, null
  %12 = tail call i32* @__errno_location() #1
  store i32 0, i32* %12, align 4
  %13 = tail call i16** @__ctype_b_loc() #1
  %14 = load i16*, i16** %13, align 8
  br label %15

; <label>:15:                                     ; preds = %15, %10
  %16 = phi i8* [ %0, %10 ], [ %23, %15 ]
  %17 = load i8, i8* %16, align 1
  %18 = zext i8 %17 to i64
  %19 = getelementptr inbounds i16, i16* %14, i64 %18
  %20 = load i16, i16* %19, align 2
  %21 = and i16 %20, 8192
  %22 = icmp eq i16 %21, 0
  %23 = getelementptr inbounds i8, i8* %16, i64 1
  br i1 %22, label %24, label %15

; <label>:24:                                     ; preds = %15
  %25 = select i1 %11, i8** %1, i8** %6
  %26 = icmp eq i8 %17, 45
  br i1 %26, label %265, label %27

; <label>:27:                                     ; preds = %24
  %28 = call i64 @__strtoul_internal(i8* %0, i8** %25, i32 %2, i32 0) #10
  %29 = load i8*, i8** %25, align 8
  %30 = icmp eq i8* %29, %0
  br i1 %30, label %31, label %40

; <label>:31:                                     ; preds = %27
  %32 = icmp eq i8* %4, null
  br i1 %32, label %265, label %33

; <label>:33:                                     ; preds = %31
  %34 = load i8, i8* %0, align 1
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %265, label %36

; <label>:36:                                     ; preds = %33
  %37 = sext i8 %34 to i32
  %38 = call i8* @strchr(i8* nonnull %4, i32 %37) #10
  %39 = icmp eq i8* %38, null
  br i1 %39, label %265, label %47

; <label>:40:                                     ; preds = %27
  %41 = load i32, i32* %12, align 4
  switch i32 %41, label %265 [
    i32 0, label %43
    i32 34, label %42
  ]

; <label>:42:                                     ; preds = %40
  br label %43

; <label>:43:                                     ; preds = %40, %42
  %44 = phi i32 [ 1, %42 ], [ 0, %40 ]
  %45 = icmp eq i8* %4, null
  br i1 %45, label %46, label %47

; <label>:46:                                     ; preds = %43
  store i64 %28, i64* %3, align 8
  br label %265

; <label>:47:                                     ; preds = %36, %43
  %48 = phi i32 [ %44, %43 ], [ 0, %36 ]
  %49 = phi i64 [ %28, %43 ], [ 1, %36 ]
  %50 = load i8, i8* %29, align 1
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %262, label %52

; <label>:52:                                     ; preds = %47
  %53 = sext i8 %50 to i32
  %54 = call i8* @strchr(i8* nonnull %4, i32 %53) #10
  %55 = icmp eq i8* %54, null
  br i1 %55, label %56, label %58

; <label>:56:                                     ; preds = %52
  store i64 %49, i64* %3, align 8
  %57 = or i32 %48, 2
  br label %265

; <label>:58:                                     ; preds = %52
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
  ]

; <label>:59:                                     ; preds = %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58
  %60 = call i8* @strchr(i8* nonnull %4, i32 48) #10
  %61 = icmp eq i8* %60, null
  br i1 %61, label %72, label %62

; <label>:62:                                     ; preds = %59
  %63 = getelementptr inbounds i8, i8* %29, i64 1
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  switch i32 %65, label %72 [
    i32 105, label %66
    i32 66, label %71
    i32 68, label %71
  ]

; <label>:66:                                     ; preds = %62
  %67 = getelementptr inbounds i8, i8* %29, i64 2
  %68 = load i8, i8* %67, align 1
  %69 = icmp eq i8 %68, 66
  %70 = select i1 %69, i64 3, i64 1
  br label %72

; <label>:71:                                     ; preds = %62, %62
  br label %72

; <label>:72:                                     ; preds = %66, %59, %62, %71, %58
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
  ]

; <label>:75:                                     ; preds = %72
  %76 = icmp ugt i64 %49, 36028797018963967
  %77 = shl i64 %49, 9
  %78 = select i1 %76, i64 -1, i64 %77
  %79 = zext i1 %76 to i32
  br label %253

; <label>:80:                                     ; preds = %72
  %81 = icmp ugt i64 %49, 18014398509481983
  %82 = shl i64 %49, 10
  %83 = select i1 %81, i64 -1, i64 %82
  %84 = zext i1 %81 to i32
  br label %253

; <label>:85:                                     ; preds = %72
  %86 = udiv i64 -1, %73
  %87 = icmp ult i64 %86, %49
  %88 = mul i64 %49, %73
  %89 = select i1 %87, i64 -1, i64 %88
  %90 = icmp ult i64 %86, %89
  %91 = mul i64 %89, %73
  %92 = select i1 %90, i64 -1, i64 %91
  %93 = or i1 %90, %87
  %94 = icmp ult i64 %86, %92
  %95 = mul i64 %92, %73
  %96 = select i1 %94, i64 -1, i64 %95
  %97 = or i1 %94, %93
  %98 = icmp ult i64 %86, %96
  %99 = mul i64 %96, %73
  %100 = select i1 %98, i64 -1, i64 %99
  %101 = or i1 %98, %97
  %102 = icmp ult i64 %86, %100
  %103 = mul i64 %100, %73
  %104 = select i1 %102, i64 -1, i64 %103
  %105 = or i1 %102, %101
  %106 = icmp ult i64 %86, %104
  %107 = mul i64 %104, %73
  %108 = select i1 %106, i64 -1, i64 %107
  %109 = or i1 %106, %105
  %110 = zext i1 %109 to i32
  br label %253

; <label>:111:                                    ; preds = %72, %72
  %112 = udiv i64 -1, %73
  %113 = icmp ult i64 %112, %49
  %114 = mul i64 %49, %73
  %115 = select i1 %113, i64 -1, i64 %114
  %116 = icmp ult i64 %112, %115
  %117 = mul i64 %115, %73
  %118 = select i1 %116, i64 -1, i64 %117
  %119 = or i1 %116, %113
  %120 = icmp ult i64 %112, %118
  %121 = mul i64 %118, %73
  %122 = select i1 %120, i64 -1, i64 %121
  %123 = or i1 %120, %119
  %124 = zext i1 %123 to i32
  br label %253

; <label>:125:                                    ; preds = %72, %72
  %126 = udiv i64 -1, %73
  %127 = icmp ult i64 %126, %49
  %128 = mul i64 %49, %73
  %129 = select i1 %127, i64 -1, i64 %128
  %130 = zext i1 %127 to i32
  br label %253

; <label>:131:                                    ; preds = %72, %72
  %132 = udiv i64 -1, %73
  %133 = icmp ult i64 %132, %49
  %134 = mul i64 %49, %73
  %135 = select i1 %133, i64 -1, i64 %134
  %136 = icmp ult i64 %132, %135
  %137 = mul i64 %135, %73
  %138 = select i1 %136, i64 -1, i64 %137
  %139 = or i1 %136, %133
  %140 = zext i1 %139 to i32
  br label %253

; <label>:141:                                    ; preds = %72
  %142 = udiv i64 -1, %73
  %143 = icmp ult i64 %142, %49
  %144 = mul i64 %49, %73
  %145 = select i1 %143, i64 -1, i64 %144
  %146 = icmp ult i64 %142, %145
  %147 = mul i64 %145, %73
  %148 = select i1 %146, i64 -1, i64 %147
  %149 = or i1 %146, %143
  %150 = icmp ult i64 %142, %148
  %151 = mul i64 %148, %73
  %152 = select i1 %150, i64 -1, i64 %151
  %153 = or i1 %150, %149
  %154 = icmp ult i64 %142, %152
  %155 = mul i64 %152, %73
  %156 = select i1 %154, i64 -1, i64 %155
  %157 = or i1 %154, %153
  %158 = icmp ult i64 %142, %156
  %159 = mul i64 %156, %73
  %160 = select i1 %158, i64 -1, i64 %159
  %161 = or i1 %158, %157
  %162 = zext i1 %161 to i32
  br label %253

; <label>:163:                                    ; preds = %72, %72
  %164 = udiv i64 -1, %73
  %165 = icmp ult i64 %164, %49
  %166 = mul i64 %49, %73
  %167 = select i1 %165, i64 -1, i64 %166
  %168 = icmp ult i64 %164, %167
  %169 = mul i64 %167, %73
  %170 = select i1 %168, i64 -1, i64 %169
  %171 = or i1 %168, %165
  %172 = icmp ult i64 %164, %170
  %173 = mul i64 %170, %73
  %174 = select i1 %172, i64 -1, i64 %173
  %175 = or i1 %172, %171
  %176 = icmp ult i64 %164, %174
  %177 = mul i64 %174, %73
  %178 = select i1 %176, i64 -1, i64 %177
  %179 = or i1 %176, %175
  %180 = zext i1 %179 to i32
  br label %253

; <label>:181:                                    ; preds = %72
  %182 = icmp slt i64 %49, 0
  %183 = shl i64 %49, 1
  %184 = select i1 %182, i64 -1, i64 %183
  %185 = lshr i64 %49, 63
  %186 = trunc i64 %185 to i32
  br label %253

; <label>:187:                                    ; preds = %72
  %188 = udiv i64 -1, %73
  %189 = icmp ult i64 %188, %49
  %190 = mul i64 %49, %73
  %191 = select i1 %189, i64 -1, i64 %190
  %192 = icmp ult i64 %188, %191
  %193 = mul i64 %191, %73
  %194 = select i1 %192, i64 -1, i64 %193
  %195 = or i1 %192, %189
  %196 = icmp ult i64 %188, %194
  %197 = mul i64 %194, %73
  %198 = select i1 %196, i64 -1, i64 %197
  %199 = or i1 %196, %195
  %200 = icmp ult i64 %188, %198
  %201 = mul i64 %198, %73
  %202 = select i1 %200, i64 -1, i64 %201
  %203 = or i1 %200, %199
  %204 = icmp ult i64 %188, %202
  %205 = mul i64 %202, %73
  %206 = select i1 %204, i64 -1, i64 %205
  %207 = or i1 %204, %203
  %208 = icmp ult i64 %188, %206
  %209 = mul i64 %206, %73
  %210 = select i1 %208, i64 -1, i64 %209
  %211 = or i1 %208, %207
  %212 = icmp ult i64 %188, %210
  %213 = mul i64 %210, %73
  %214 = select i1 %212, i64 -1, i64 %213
  %215 = or i1 %212, %211
  %216 = icmp ult i64 %188, %214
  %217 = mul i64 %214, %73
  %218 = select i1 %216, i64 -1, i64 %217
  %219 = or i1 %216, %215
  %220 = zext i1 %219 to i32
  br label %253

; <label>:221:                                    ; preds = %72
  %222 = udiv i64 -1, %73
  %223 = icmp ult i64 %222, %49
  %224 = mul i64 %49, %73
  %225 = select i1 %223, i64 -1, i64 %224
  %226 = icmp ult i64 %222, %225
  %227 = mul i64 %225, %73
  %228 = select i1 %226, i64 -1, i64 %227
  %229 = or i1 %226, %223
  %230 = icmp ult i64 %222, %228
  %231 = mul i64 %228, %73
  %232 = select i1 %230, i64 -1, i64 %231
  %233 = or i1 %230, %229
  %234 = icmp ult i64 %222, %232
  %235 = mul i64 %232, %73
  %236 = select i1 %234, i64 -1, i64 %235
  %237 = or i1 %234, %233
  %238 = icmp ult i64 %222, %236
  %239 = mul i64 %236, %73
  %240 = select i1 %238, i64 -1, i64 %239
  %241 = or i1 %238, %237
  %242 = icmp ult i64 %222, %240
  %243 = mul i64 %240, %73
  %244 = select i1 %242, i64 -1, i64 %243
  %245 = or i1 %242, %241
  %246 = icmp ult i64 %222, %244
  %247 = mul i64 %244, %73
  %248 = select i1 %246, i64 -1, i64 %247
  %249 = or i1 %246, %245
  %250 = zext i1 %249 to i32
  br label %253

; <label>:251:                                    ; preds = %72
  store i64 %49, i64* %3, align 8
  %252 = or i32 %48, 2
  br label %265

; <label>:253:                                    ; preds = %221, %187, %163, %141, %131, %125, %111, %85, %75, %80, %181, %72
  %254 = phi i64 [ %184, %181 ], [ %49, %72 ], [ %83, %80 ], [ %78, %75 ], [ %108, %85 ], [ %122, %111 ], [ %129, %125 ], [ %138, %131 ], [ %160, %141 ], [ %178, %163 ], [ %218, %187 ], [ %248, %221 ]
  %255 = phi i32 [ %186, %181 ], [ 0, %72 ], [ %84, %80 ], [ %79, %75 ], [ %110, %85 ], [ %124, %111 ], [ %130, %125 ], [ %140, %131 ], [ %162, %141 ], [ %180, %163 ], [ %220, %187 ], [ %250, %221 ]
  %256 = or i32 %255, %48
  %257 = getelementptr inbounds i8, i8* %29, i64 %74
  store i8* %257, i8** %25, align 8
  %258 = load i8, i8* %257, align 1
  %259 = icmp eq i8 %258, 0
  %260 = or i32 %256, 2
  %261 = select i1 %259, i32 %256, i32 %260
  br label %262

; <label>:262:                                    ; preds = %253, %47
  %263 = phi i64 [ %49, %47 ], [ %254, %253 ]
  %264 = phi i32 [ %48, %47 ], [ %261, %253 ]
  store i64 %263, i64* %3, align 8
  br label %265

; <label>:265:                                    ; preds = %24, %56, %251, %40, %31, %33, %36, %262, %46
  %266 = phi i32 [ %264, %262 ], [ %44, %46 ], [ 4, %24 ], [ 4, %36 ], [ 4, %33 ], [ 4, %31 ], [ 4, %40 ], [ %57, %56 ], [ %252, %251 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %7) #10
  ret i32 %266
}

; Function Attrs: nounwind
declare i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 {
  %3 = icmp eq i64 %0, 0
  %4 = icmp eq i64 %1, 0
  %5 = or i1 %3, %4
  br i1 %5, label %12, label %6

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0
  %8 = udiv i64 %7, %1
  %9 = icmp eq i64 %8, %0
  br i1 %9, label %12, label %10

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #1
  store i32 12, i32* %11, align 4
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #10
  br label %16

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 {
  %5 = alloca i32, align 4
  %6 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start(i64 4, i8* nonnull %6) #10
  %7 = icmp eq i32* %0, null
  %8 = select i1 %7, i32* %5, i32* %0
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #10
  %10 = icmp ugt i64 %9, -3
  %11 = icmp ne i64 %2, 0
  %12 = and i1 %11, %10
  br i1 %12, label %13, label %18

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #10
  br i1 %14, label %18, label %15

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1
  %17 = zext i8 %16 to i32
  store i32 %17, i32* %8, align 4
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end(i64 4, i8* nonnull %6) #10
  ret i64 %19
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 {
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #10
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0
  %4 = load i32, i32* %3, align 8
  %5 = and i32 %4, 32
  %6 = icmp eq i32 %5, 0
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #10
  %8 = icmp ne i32 %7, 0
  br i1 %6, label %9, label %19

; <label>:9:                                      ; preds = %1
  %10 = xor i1 %8, true
  %11 = icmp ne i64 %2, 0
  %12 = or i1 %11, %10
  %13 = sext i1 %8 to i32
  br i1 %12, label %22, label %14

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #1
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 9
  %18 = sext i1 %17 to i32
  br label %22

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #1
  store i32 0, i32* %21, align 4
  br label %22

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 {
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #10
  %3 = icmp eq i8* %2, null
  br i1 %3, label %15, label %4

; <label>:4:                                      ; preds = %1
  %5 = load i8, i8* %2, align 1
  %6 = icmp eq i8 %5, 67
  br i1 %6, label %7, label %11

; <label>:7:                                      ; preds = %4
  %8 = getelementptr inbounds i8, i8* %2, i64 1
  %9 = load i8, i8* %8, align 1
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %14, label %11

; <label>:11:                                     ; preds = %4, %7
  %12 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.169, i64 0, i64 0)) #10
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

; <label>:14:                                     ; preds = %11, %7
  br label %15

; <label>:15:                                     ; preds = %1, %11, %14
  %16 = phi i1 [ false, %14 ], [ true, %11 ], [ true, %1 ]
  ret i1 %16
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 {
  %1 = alloca [51 x i8], align 16
  %2 = alloca [51 x i8], align 16
  %3 = tail call i8* @nl_langinfo(i32 14) #10
  %4 = icmp eq i8* %3, null
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.172, i64 0, i64 0), i8* %3
  %6 = load volatile i8*, i8** @charset_aliases, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %127

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.173, i64 0, i64 0)) #10
  %10 = icmp eq i8* %9, null
  br i1 %10, label %14, label %11

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %15

; <label>:14:                                     ; preds = %11, %8
  br label %15

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.174, i64 0, i64 0), %14 ], [ %9, %11 ]
  %17 = tail call i64 @strlen(i8* nonnull %16) #13
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %24, label %19

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1
  %21 = getelementptr inbounds i8, i8* %16, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = icmp ne i8 %22, 47
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64
  %27 = add i64 %17, 14
  %28 = add i64 %27, %26
  %29 = tail call noalias i8* @malloc(i64 %28) #10
  %30 = icmp eq i8* %29, null
  br i1 %30, label %125, label %31

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #10
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1
  %34 = getelementptr inbounds i8, i8* %32, i64 %26
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.175, i64 0, i64 0), i64 14, i32 1, i1 false) #10
  br label %37

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.175, i64 0, i64 0), i64 14, i32 1, i1 false) #10
  br label %37

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #10
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %123, label %40

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.176, i64 0, i64 0)) #10
  %42 = icmp eq %struct._IO_FILE* %41, null
  br i1 %42, label %48, label %43

; <label>:43:                                     ; preds = %40
  %44 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %45 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %46 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %47 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50

; <label>:48:                                     ; preds = %40
  %49 = tail call i32 @close(i32 %38) #10
  br label %123

; <label>:50:                                     ; preds = %111, %43
  %51 = phi i64 [ %112, %111 ], [ 0, %43 ]
  %52 = phi i8* [ %113, %111 ], [ null, %43 ]
  call void @llvm.lifetime.start(i64 51, i8* nonnull %44) #10
  call void @llvm.lifetime.start(i64 51, i8* nonnull %45) #10
  %53 = load i8*, i8** %46, align 8
  %54 = load i8*, i8** %47, align 8
  %55 = icmp ult i8* %53, %54
  br i1 %55, label %58, label %56

; <label>:56:                                     ; preds = %50
  %57 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10
  br label %62

; <label>:58:                                     ; preds = %50
  %59 = getelementptr inbounds i8, i8* %53, i64 1
  store i8* %59, i8** %46, align 8
  %60 = load i8, i8* %53, align 1
  %61 = zext i8 %60 to i32
  br label %62

; <label>:62:                                     ; preds = %58, %56
  %63 = phi i32 [ %57, %56 ], [ %61, %58 ]
  switch i32 %63, label %77 [
    i32 -1, label %115
    i32 32, label %111
    i32 10, label %111
    i32 9, label %111
    i32 35, label %64
  ]

; <label>:64:                                     ; preds = %62
  br label %65

; <label>:65:                                     ; preds = %64, %75
  %66 = load i8*, i8** %46, align 8
  %67 = load i8*, i8** %47, align 8
  %68 = icmp ult i8* %66, %67
  br i1 %68, label %71, label %69

; <label>:69:                                     ; preds = %65
  %70 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10
  br label %75

; <label>:71:                                     ; preds = %65
  %72 = getelementptr inbounds i8, i8* %66, i64 1
  store i8* %72, i8** %46, align 8
  %73 = load i8, i8* %66, align 1
  %74 = zext i8 %73 to i32
  br label %75

; <label>:75:                                     ; preds = %71, %69
  %76 = phi i32 [ %70, %69 ], [ %74, %71 ]
  switch i32 %76, label %65 [
    i32 -1, label %114
    i32 10, label %110
  ]

; <label>:77:                                     ; preds = %62
  %78 = call i32 @ungetc(i32 %63, %struct._IO_FILE* nonnull %41) #10
  %79 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.177, i64 0, i64 0), i8* nonnull %44, i8* nonnull %45) #10
  %80 = icmp slt i32 %79, 2
  br i1 %80, label %115, label %81

; <label>:81:                                     ; preds = %77
  %82 = call i64 @strlen(i8* nonnull %44) #13
  %83 = call i64 @strlen(i8* nonnull %45) #13
  %84 = icmp eq i64 %51, 0
  %85 = add i64 %82, 1
  %86 = add i64 %85, %83
  %87 = add i64 %86, 1
  br i1 %84, label %88, label %91

; <label>:88:                                     ; preds = %81
  %89 = add i64 %86, 2
  %90 = call noalias i8* @malloc(i64 %89) #10
  br label %95

; <label>:91:                                     ; preds = %81
  %92 = add i64 %87, %51
  %93 = add i64 %92, 1
  %94 = call i8* @realloc(i8* %52, i64 %93) #10
  br label %95

; <label>:95:                                     ; preds = %91, %88
  %96 = phi i64 [ %87, %88 ], [ %92, %91 ]
  %97 = phi i8* [ %90, %88 ], [ %94, %91 ]
  %98 = icmp eq i8* %97, null
  br i1 %98, label %99, label %100

; <label>:99:                                     ; preds = %95
  call void @free(i8* %52) #10
  br label %116

; <label>:100:                                    ; preds = %95
  %101 = getelementptr inbounds i8, i8* %97, i64 %96
  %102 = xor i64 %83, -1
  %103 = getelementptr inbounds i8, i8* %101, i64 %102
  %104 = xor i64 %82, -1
  %105 = getelementptr inbounds i8, i8* %103, i64 %104
  %106 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false) #10
  %107 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %44, i64 %106) #10
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %103, i1 false) #10
  %109 = call i8* @__strcpy_chk(i8* nonnull %103, i8* nonnull %45, i64 %108) #10
  br label %111

; <label>:110:                                    ; preds = %75
  br label %111

; <label>:111:                                    ; preds = %110, %100, %62, %62, %62
  %112 = phi i64 [ %96, %100 ], [ %51, %62 ], [ %51, %62 ], [ %51, %62 ], [ %51, %110 ]
  %113 = phi i8* [ %97, %100 ], [ %52, %62 ], [ %52, %62 ], [ %52, %62 ], [ %52, %110 ]
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #10
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #10
  br label %50

; <label>:114:                                    ; preds = %75
  br label %116

; <label>:115:                                    ; preds = %62, %77
  br label %116

; <label>:116:                                    ; preds = %115, %114, %99
  %117 = phi i64 [ 0, %99 ], [ %51, %114 ], [ %51, %115 ]
  %118 = phi i8* [ null, %99 ], [ %52, %114 ], [ %52, %115 ]
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #10
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #10
  %119 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #10
  %120 = icmp eq i64 %117, 0
  br i1 %120, label %123, label %121

; <label>:121:                                    ; preds = %116
  %122 = getelementptr inbounds i8, i8* %118, i64 %117
  store i8 0, i8* %122, align 1
  br label %123

; <label>:123:                                    ; preds = %121, %116, %48, %37
  %124 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.172, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.172, i64 0, i64 0), %48 ], [ %118, %121 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.172, i64 0, i64 0), %116 ]
  call void @free(i8* %29) #10
  br label %125

; <label>:125:                                    ; preds = %123, %24
  %126 = phi i8* [ %124, %123 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.172, i64 0, i64 0), %24 ]
  store volatile i8* %126, i8** @charset_aliases, align 8
  br label %127

; <label>:127:                                    ; preds = %0, %125
  %128 = phi i8* [ %6, %0 ], [ %126, %125 ]
  %129 = load i8, i8* %128, align 1
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %157, label %131

; <label>:131:                                    ; preds = %127
  br label %132

; <label>:132:                                    ; preds = %131, %147
  %133 = phi i8 [ %154, %147 ], [ %129, %131 ]
  %134 = phi i8* [ %153, %147 ], [ %128, %131 ]
  %135 = call i32 @strcmp(i8* %5, i8* %134) #10
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %143, label %137

; <label>:137:                                    ; preds = %132
  %138 = icmp eq i8 %133, 42
  br i1 %138, label %139, label %147

; <label>:139:                                    ; preds = %137
  %140 = getelementptr inbounds i8, i8* %134, i64 1
  %141 = load i8, i8* %140, align 1
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %143, label %147

; <label>:143:                                    ; preds = %139, %132
  %144 = call i64 @strlen(i8* %134) #13
  %145 = getelementptr inbounds i8, i8* %134, i64 %144
  %146 = getelementptr inbounds i8, i8* %145, i64 1
  br label %157

; <label>:147:                                    ; preds = %137, %139
  %148 = call i64 @strlen(i8* %134) #13
  %149 = add i64 %148, 1
  %150 = getelementptr inbounds i8, i8* %134, i64 %149
  %151 = call i64 @strlen(i8* %150) #13
  %152 = add i64 %151, 1
  %153 = getelementptr inbounds i8, i8* %150, i64 %152
  %154 = load i8, i8* %153, align 1
  %155 = icmp eq i8 %154, 0
  br i1 %155, label %156, label %132

; <label>:156:                                    ; preds = %147
  br label %157

; <label>:157:                                    ; preds = %156, %127, %143
  %158 = phi i8* [ %146, %143 ], [ %5, %127 ], [ %5, %156 ]
  %159 = load i8, i8* %158, align 1
  %160 = icmp eq i8 %159, 0
  %161 = select i1 %160, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.178, i64 0, i64 0), i8* %158
  ret i8* %161
}

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i8* @getenv(i8* nocapture) local_unnamed_addr #4

declare i32 @open(i8* nocapture readonly, i32, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fdopen(i32, i8* nocapture readonly) local_unnamed_addr #2

declare i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @ungetc(i32, %struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @fscanf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @__strcpy_chk(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 {
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %4, label %6

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0)
  br label %24

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #10
  %12 = icmp eq i64 %11, -1
  br i1 %12, label %16, label %13

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #10
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

; <label>:16:                                     ; preds = %13, %9
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0)
  br label %24

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #1
  %20 = load i32, i32* %19, align 4
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0)
  %22 = icmp eq i32 %20, 0
  br i1 %22, label %24, label %23

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4
  br label %24

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25
}

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 {
  %2 = icmp eq %struct._IO_FILE* %0, null
  br i1 %2, label %6, label %3

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0)
  br label %17

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = and i32 %10, 256
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #10
  br label %15

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0)
  br label %17

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 {
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2
  %5 = load i8*, i8** %4, align 8
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1
  %7 = load i8*, i8** %6, align 8
  %8 = icmp eq i8* %5, %7
  br i1 %8, label %9, label %28

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5
  %11 = load i8*, i8** %10, align 8
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4
  %13 = load i8*, i8** %12, align 8
  %14 = icmp eq i8* %11, %13
  br i1 %14, label %15, label %28

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9
  %17 = load i8*, i8** %16, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %28

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #10
  %22 = icmp eq i64 %21, -1
  br i1 %22, label %30, label %23

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = and i32 %25, -17
  store i32 %26, i32* %24, align 8
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21
  store i64 %21, i64* %27, align 8
  br label %30

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2)
  br label %30

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31
}

; Function Attrs: nounwind
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