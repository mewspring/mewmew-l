; ModuleID = 'coreutils-8.27/src/ptx.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.regex_data = type { i8*, %struct.re_pattern_buffer, [256 x i8] }
%struct.re_pattern_buffer = type { %struct.re_dfa_t*, i64, i64, i64, i8*, i8*, i64, i8 }
%struct.re_dfa_t = type opaque
%struct.BLOCK = type { i8*, i8* }
%struct.WORD_TABLE = type { %struct.WORD*, i64, i64 }
%struct.WORD = type { i8*, i16 }
%struct.re_registers = type { i32, i32*, i32* }
%struct.OCCURS = type { %struct.WORD, i16, i16, i32, i64 }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.mbuiter_multi = type { i8, %struct.__mbstate_t, i8, %struct.mbchar }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.mbchar = type { i8*, i64, i8, i32, [24 x i8] }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.mbiter_multi = type { i8*, i8, %struct.__mbstate_t, i8, %struct.mbchar }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%union.anon.43 = type { i32, [4092 x i8] }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [91 x i8] c"Usage: %s [OPTION]... [INPUT]...   (without -G)\0A  or:  %s -G [OPTION]... [INPUT [OUTPUT]]\0A\00", align 1
@.str.2 = private unnamed_addr constant [78 x i8] c"Output a permuted index, including context, of the words in the input files.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.25 = private unnamed_addr constant [56 x i8] c"\0AWith no FILE, or when FILE is -, read standard input.\0A\00", align 1
@.str.26 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@.str.3 = private unnamed_addr constant [141 x i8] c"  -A, --auto-reference           output automatically generated references\0A  -G, --traditional              behave more like System V 'ptx'\0A\00", align 1
@.str.4 = private unnamed_addr constant [128 x i8] c"  -F, --flag-truncation=STRING   use STRING for flagging line truncations.\0A                                 The default is '/'\0A\00", align 1
@.str.5 = private unnamed_addr constant [349 x i8] c"  -M, --macro-name=STRING        macro name to use instead of 'xx'\0A  -O, --format=roff              generate output as roff directives\0A  -R, --right-side-refs          put references at right, not counted in -w\0A  -S, --sentence-regexp=REGEXP   for end of lines or end of sentences\0A  -T, --format=tex               generate output as TeX directives\0A\00", align 1
@.str.6 = private unnamed_addr constant [418 x i8] c"  -W, --word-regexp=REGEXP       use REGEXP to match each keyword\0A  -b, --break-file=FILE          word break characters in this FILE\0A  -f, --ignore-case              fold lower case to upper case for sorting\0A  -g, --gap-size=NUMBER          gap size in columns between output fields\0A  -i, --ignore-file=FILE         read ignore word list from FILE\0A  -o, --only-file=FILE           read only word list from this FILE\0A\00", align 1
@.str.7 = private unnamed_addr constant [206 x i8] c"  -r, --references               first field of each line is a reference\0A  -t, --typeset-mode               - not implemented -\0A  -w, --width=NUMBER             output width in columns, reference excluded\0A\00", align 1
@.str.8 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.9 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"ptx\00", align 1
@.str.35 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.36 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.38 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.39 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.40 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.41 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"AF:GM:ORS:TW:b:i:fg:o:trw:\00", align 1
@long_options = internal constant [19 x %struct.option] [%struct.option { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.42, i32 0, i32 0), i32 0, i32* null, i32 65 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.43, i32 0, i32 0), i32 1, i32* null, i32 98 }, %struct.option { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.44, i32 0, i32 0), i32 1, i32* null, i32 70 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.45, i32 0, i32 0), i32 0, i32* null, i32 102 }, %struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.46, i32 0, i32 0), i32 1, i32* null, i32 103 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.47, i32 0, i32 0), i32 1, i32* null, i32 105 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.48, i32 0, i32 0), i32 1, i32* null, i32 77 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.49, i32 0, i32 0), i32 1, i32* null, i32 111 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.50, i32 0, i32 0), i32 0, i32* null, i32 114 }, %struct.option { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.51, i32 0, i32 0), i32 0, i32* null, i32 82 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i32 0, i32 0), i32 1, i32* null, i32 10 }, %struct.option { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.53, i32 0, i32 0), i32 1, i32* null, i32 83 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.54, i32 0, i32 0), i32 0, i32* null, i32 71 }, %struct.option { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.55, i32 0, i32 0), i32 0, i32* null, i32 116 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.56, i32 0, i32 0), i32 1, i32* null, i32 119 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.57, i32 0, i32 0), i32 1, i32* null, i32 87 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.58, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.59, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16
@gnu_extensions = internal unnamed_addr global i1 false, align 1
@optarg = external local_unnamed_addr global i8*, align 8
@break_file = internal unnamed_addr global i8* null, align 8
@ignore_case = internal unnamed_addr global i1 false, align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"invalid gap width: %s\00", align 1
@gap_size = internal unnamed_addr global i32 3, align 4
@ignore_file = internal unnamed_addr global i8* null, align 8
@only_file = internal unnamed_addr global i8* null, align 8
@input_reference = internal unnamed_addr global i1 false, align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"invalid line width: %s\00", align 1
@line_width = internal unnamed_addr global i32 72, align 4
@auto_reference = internal unnamed_addr global i1 false, align 1
@truncation_string = internal unnamed_addr global i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.60, i64 0, i64 0), align 8
@macro_name = internal unnamed_addr global i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i64 0, i64 0), align 8
@output_format = internal unnamed_addr global i32 0, align 4
@right_reference = internal unnamed_addr global i1 false, align 1
@context_regex = internal global %struct.regex_data zeroinitializer, align 8
@word_regex = internal global %struct.regex_data zeroinitializer, align 8
@.str.17 = private unnamed_addr constant [9 x i8] c"--format\00", align 1
@format_args = internal constant [3 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.63, i32 0, i32 0), i8* null], align 16
@format_vals = internal constant [2 x i32] [i32 2, i32 3], align 4
@.str.19 = private unnamed_addr constant [10 x i8] c"F. Pinard\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"Fran\C3\A7ois Pinard\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@input_file_name = internal unnamed_addr global i8** null, align 8
@file_line_count = internal unnamed_addr global i32* null, align 8
@text_buffers = internal unnamed_addr global %struct.BLOCK* null, align 8
@number_input_files = internal unnamed_addr global i32 0, align 4
@.str.22 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@folded_chars = internal global [256 x i8] zeroinitializer, align 16
@.str.65 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.64 = private unnamed_addr constant [32 x i8] c"[.?!][]\22')}]*\5C($\5C|\09\5C|  \5C)[ \09\0A]*\00", align 1
@word_fastmap = internal unnamed_addr global [256 x i8] zeroinitializer, align 16
@ignore_table = internal global %struct.WORD_TABLE zeroinitializer, align 8
@only_table = internal global %struct.WORD_TABLE zeroinitializer, align 8
@number_of_occurs.0 = internal unnamed_addr global i64 0, align 8
@total_line_count = internal unnamed_addr global i32 0, align 4
@maximum_word_length = internal unnamed_addr global i32 0, align 4
@reference_max_width = internal unnamed_addr global i32 0, align 4
@context_regs = internal global %struct.re_registers zeroinitializer, align 8
@word_regs = internal global %struct.re_registers zeroinitializer, align 8
@occurs_alloc.0 = internal unnamed_addr global i64 0, align 8
@occurs_table.0 = internal unnamed_addr global %struct.OCCURS* null, align 8
@.str.68 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@reference = internal unnamed_addr global %struct.BLOCK zeroinitializer, align 8
@half_line_width = internal unnamed_addr global i32 0, align 4
@before_max_width = internal unnamed_addr global i32 0, align 4
@keyafter_max_width = internal unnamed_addr global i32 0, align 4
@truncation_string_length = internal unnamed_addr global i32 0, align 4
@edited_flag = internal unnamed_addr global [256 x i8] zeroinitializer, align 16
@tail = internal unnamed_addr global %struct.BLOCK zeroinitializer, align 8
@tail_truncation = internal unnamed_addr global i32 0, align 4
@head = internal unnamed_addr global %struct.BLOCK zeroinitializer, align 8
@head_truncation = internal unnamed_addr global i32 0, align 4
@keyafter = internal unnamed_addr global %struct.BLOCK zeroinitializer, align 8
@keyafter_truncation = internal unnamed_addr global i32 0, align 4
@before = internal unnamed_addr global %struct.BLOCK zeroinitializer, align 8
@before_truncation = internal unnamed_addr global i32 0, align 4
@.str.70 = private unnamed_addr constant [6 x i8] c"%s:%d\00", align 1
@.str.87 = private unnamed_addr constant [6 x i8] c".%s \22\00", align 1
@.str.88 = private unnamed_addr constant [3 x i8] c" \22\00", align 1
@.str.89 = private unnamed_addr constant [5 x i8] c"\5C%s \00", align 1
@.str.90 = private unnamed_addr constant [3 x i8] c"}{\00", align 1
@.str.71 = private unnamed_addr constant [6 x i8] c"\5Coe{}\00", align 1
@.str.72 = private unnamed_addr constant [6 x i8] c"\5COE{}\00", align 1
@.str.73 = private unnamed_addr constant [6 x i8] c"\5Cae{}\00", align 1
@.str.74 = private unnamed_addr constant [6 x i8] c"\5CAE{}\00", align 1
@.str.76 = private unnamed_addr constant [2 x i8] c"\5C\00", align 1
@.str.75 = private unnamed_addr constant [7 x i8] c"\5C'%s%c\00", align 1
@.str.77 = private unnamed_addr constant [7 x i8] c"\5C^%s%c\00", align 1
@.str.78 = private unnamed_addr constant [7 x i8] c"\5C\22%s%c\00", align 1
@.str.79 = private unnamed_addr constant [7 x i8] c"\5C~%s%c\00", align 1
@.str.80 = private unnamed_addr constant [7 x i8] c"\5Cc{%c}\00", align 1
@.str.81 = private unnamed_addr constant [6 x i8] c"\5Caa{}\00", align 1
@.str.82 = private unnamed_addr constant [6 x i8] c"\5CAA{}\00", align 1
@.str.83 = private unnamed_addr constant [5 x i8] c"\5Co{}\00", align 1
@.str.84 = private unnamed_addr constant [5 x i8] c"\5CO{}\00", align 1
@.str.85 = private unnamed_addr constant [6 x i8] c"$\5C%c$\00", align 1
@.str.86 = private unnamed_addr constant [13 x i8] c"\5Cbackslash{}\00", align 1
@.str.67 = private unnamed_addr constant [36 x i8] c"error in regular expression matcher\00", align 1
@stdin = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.21 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.66 = private unnamed_addr constant [19 x i8] c"%s (for regexp %s)\00", align 1
@.str.62 = private unnamed_addr constant [5 x i8] c"roff\00", align 1
@.str.63 = private unnamed_addr constant [4 x i8] c"tex\00", align 1
@.str.61 = private unnamed_addr constant [3 x i8] c"xx\00", align 1
@.str.60 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.42 = private unnamed_addr constant [15 x i8] c"auto-reference\00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"break-file\00", align 1
@.str.44 = private unnamed_addr constant [16 x i8] c"flag-truncation\00", align 1
@.str.45 = private unnamed_addr constant [12 x i8] c"ignore-case\00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c"gap-size\00", align 1
@.str.47 = private unnamed_addr constant [12 x i8] c"ignore-file\00", align 1
@.str.48 = private unnamed_addr constant [11 x i8] c"macro-name\00", align 1
@.str.49 = private unnamed_addr constant [10 x i8] c"only-file\00", align 1
@.str.50 = private unnamed_addr constant [11 x i8] c"references\00", align 1
@.str.51 = private unnamed_addr constant [16 x i8] c"right-side-refs\00", align 1
@.str.52 = private unnamed_addr constant [7 x i8] c"format\00", align 1
@.str.53 = private unnamed_addr constant [16 x i8] c"sentence-regexp\00", align 1
@.str.54 = private unnamed_addr constant [12 x i8] c"traditional\00", align 1
@.str.55 = private unnamed_addr constant [13 x i8] c"typeset-mode\00", align 1
@.str.56 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.57 = private unnamed_addr constant [12 x i8] c"word-regexp\00", align 1
@.str.58 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.59 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), align 8
@.str.27 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@argmatch_die = local_unnamed_addr global void ()* @__argmatch_die, align 8
@.str.30 = private unnamed_addr constant [27 x i8] c"invalid argument %s for %s\00", align 1
@.str.1.31 = private unnamed_addr constant [29 x i8] c"ambiguous argument %s for %s\00", align 1
@.str.2.32 = private unnamed_addr constant [21 x i8] c"Valid arguments are:\00", align 1
@.str.3.33 = private unnamed_addr constant [8 x i8] c"\0A  - %s\00", align 1
@.str.4.34 = private unnamed_addr constant [5 x i8] c", %s\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1
@.str.69 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.70 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.71 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@diacrit_base = local_unnamed_addr constant [256 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00ABCDEFGHIJKLMNOPQRSTUVWXYZ\00\00\00\00\00\00abcdefghijklmnopqrstuvwxyz\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00AAAAAAACEEEEIIII\00NOOOOO\00OUUUUY\00\00aaaaaaaceeeeiiii\00nooooo\00ouuuuy\00y", align 16
@diacrit_diac = local_unnamed_addr constant [256 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\04\00\03\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\06\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\03\02\04\06\05\08\01\07\03\02\04\05\03\02\04\05\00\06\03\02\04\06\05\00\09\03\02\04\05\02\00\00\03\02\04\06\05\08\01\07\03\02\04\05\03\02\04\05\00\06\03\02\04\06\05\00\09\03\02\04\05\02\00\00", align 16
@exit_failure = global i32 1, align 4
@.str.91 = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@program_name = local_unnamed_addr global i8* null, align 8
@.str.96 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.97 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.98 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@.str.99 = private unnamed_addr constant [8 x i8] c"%s (%s)\00", align 1
@.str.1.102 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.2.103 = private unnamed_addr constant [11 x i8] c"//TRANSLIT\00", align 1
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.104, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.105, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.106, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.107, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.108, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.109, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.110, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.111, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.112, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.113, i32 0, i32 0), i8* null], align 16
@.str.104 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.105 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.106 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.107 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.108 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.109 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.110 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.111 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.112 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.113 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8
@.str.11.114 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.115 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.116 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.117 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.118 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.119 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.120 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8
@nslots = internal unnamed_addr global i32 1, align 4
@slot0 = internal global [256 x i8] zeroinitializer, align 16
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8
@.str.135 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1.136 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.139 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.140 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.141 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.142 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.143 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.144 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.145 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.146 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.147 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.148 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.149 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.150 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.151 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.152 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.155 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.156 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.157 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.158 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.159 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19.160 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16
@.str.1.171 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.172 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.177 = private unnamed_addr constant [38 x i8] c"0 <= strtol_base && strtol_base <= 36\00", align 1
@.str.1.178 = private unnamed_addr constant [16 x i8] c"./lib/xstrtol.c\00", align 1
@__PRETTY_FUNCTION__.xstrtoul = private unnamed_addr constant [81 x i8] c"strtol_error xstrtoul(const char *, char **, int, unsigned long *, const char *)\00", align 1
@.str.187 = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@.str.1.198 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.201 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8
@.str.3.202 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.203 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.204 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.205 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.206 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.207 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1
@.str.210 = private unnamed_addr constant [23 x i8] c"mbsinit (&iter->state)\00", align 1
@.str.1.211 = private unnamed_addr constant [15 x i8] c"./lib/mbiter.h\00", align 1
@__PRETTY_FUNCTION__.mbiter_multi_next = private unnamed_addr constant [46 x i8] c"void mbiter_multi_next(struct mbiter_multi *)\00", align 1
@.str.2.212 = private unnamed_addr constant [23 x i8] c"*iter->cur.ptr == '\5C0'\00", align 1
@.str.3.213 = private unnamed_addr constant [18 x i8] c"iter->cur.wc == 0\00", align 1
@.str.218 = private unnamed_addr constant [23 x i8] c"mbsinit (&iter->state)\00", align 1
@.str.1.219 = private unnamed_addr constant [16 x i8] c"./lib/mbuiter.h\00", align 1
@__PRETTY_FUNCTION__.mbuiter_multi_next = private unnamed_addr constant [48 x i8] c"void mbuiter_multi_next(struct mbuiter_multi *)\00", align 1
@.str.2.220 = private unnamed_addr constant [23 x i8] c"*iter->cur.ptr == '\5C0'\00", align 1
@.str.3.221 = private unnamed_addr constant [18 x i8] c"iter->cur.wc == 0\00", align 1
@mmalloca_results = internal unnamed_addr global [257 x i8*] zeroinitializer, align 16
@is_basic_table = local_unnamed_addr constant [8 x i32] [i32 6656, i32 -17, i32 -2, i32 2147483646, i32 0, i32 0, i32 0, i32 0], align 16

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 {
  %2 = icmp eq i32 %0, 0
  br i1 %2, label %8, label %3

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #11
  %6 = load i8*, i8** @program_name, align 8
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #11
  br label %57

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.1, i64 0, i64 0), i32 5) #11
  %10 = load i8*, i8** @program_name, align 8
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10, i8* %10) #11
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.2, i64 0, i64 0), i32 5) #11
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #11
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.25, i64 0, i64 0), i32 5) #11
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #11
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.26, i64 0, i64 0), i32 5) #11
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #11
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([141 x i8], [141 x i8]* @.str.3, i64 0, i64 0), i32 5) #11
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22) #11
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @.str.4, i64 0, i64 0), i32 5) #11
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %26 = tail call i32 @fputs_unlocked(i8* %24, %struct._IO_FILE* %25) #11
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([349 x i8], [349 x i8]* @.str.5, i64 0, i64 0), i32 5) #11
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %29 = tail call i32 @fputs_unlocked(i8* %27, %struct._IO_FILE* %28) #11
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([418 x i8], [418 x i8]* @.str.6, i64 0, i64 0), i32 5) #11
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %32 = tail call i32 @fputs_unlocked(i8* %30, %struct._IO_FILE* %31) #11
  %33 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([206 x i8], [206 x i8]* @.str.7, i64 0, i64 0), i32 5) #11
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %35 = tail call i32 @fputs_unlocked(i8* %33, %struct._IO_FILE* %34) #11
  %36 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0), i32 5) #11
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %38 = tail call i32 @fputs_unlocked(i8* %36, %struct._IO_FILE* %37) #11
  %39 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.9, i64 0, i64 0), i32 5) #11
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %41 = tail call i32 @fputs_unlocked(i8* %39, %struct._IO_FILE* %40) #11
  %42 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.35, i64 0, i64 0), i32 5) #11
  %43 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %42, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.36, i64 0, i64 0)) #11
  %44 = tail call i8* @setlocale(i32 5, i8* null) #11
  %45 = icmp eq i8* %44, null
  br i1 %45, label %52, label %46

; <label>:46:                                     ; preds = %8
  %47 = tail call i32 @strncmp(i8* nonnull %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37, i64 0, i64 0), i64 3) #14
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %52, label %49

; <label>:49:                                     ; preds = %46
  %50 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.38, i64 0, i64 0), i32 5) #11
  %51 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %50, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0)) #11
  br label %52

; <label>:52:                                     ; preds = %8, %46, %49
  %53 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.39, i64 0, i64 0), i32 5) #11
  %54 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %53, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.36, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0)) #11
  %55 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.40, i64 0, i64 0), i32 5) #11
  %56 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %55, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.41, i64 0, i64 0)) #11
  br label %57

; <label>:57:                                     ; preds = %52, %3
  tail call void @exit(i32 %0) #15
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
  %3 = alloca [12 x i8], align 1
  %4 = alloca %struct.WORD, align 8
  %5 = alloca %struct.BLOCK, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = load i8*, i8** %1, align 8
  tail call void @set_program_name(i8* %8) #11
  %9 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)) #11
  %10 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0)) #11
  %11 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0)) #11
  %12 = tail call i32 @atexit(void ()* nonnull @close_stdout) #11
  %13 = bitcast i64* %6 to i8*
  %14 = bitcast i64* %7 to i8*
  br label %15

; <label>:15:                                     ; preds = %79, %2
  %16 = call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i64 0, i64 0), %struct.option* getelementptr inbounds ([19 x %struct.option], [19 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #11
  switch i32 %16, label %17 [
    i32 -1, label %85
    i32 71, label %18
    i32 98, label %19
    i32 102, label %21
    i32 103, label %22
    i32 105, label %36
    i32 111, label %38
    i32 114, label %40
    i32 116, label %79
    i32 119, label %41
    i32 65, label %55
    i32 70, label %56
    i32 77, label %59
    i32 79, label %61
    i32 82, label %62
    i32 83, label %63
    i32 84, label %66
    i32 87, label %67
    i32 10, label %73
    i32 -130, label %80
    i32 -131, label %81
  ]

; <label>:17:                                     ; preds = %15
  call void @usage(i32 1) #16
  unreachable

; <label>:18:                                     ; preds = %15
  store i1 true, i1* @gnu_extensions, align 1
  br label %79

; <label>:19:                                     ; preds = %15
  %20 = load i64, i64* bitcast (i8** @optarg to i64*), align 8
  store i64 %20, i64* bitcast (i8** @break_file to i64*), align 8
  br label %79

; <label>:21:                                     ; preds = %15
  store i1 true, i1* @ignore_case, align 1
  br label %79

; <label>:22:                                     ; preds = %15
  call void @llvm.lifetime.start(i64 8, i8* nonnull %13) #11
  %23 = load i8*, i8** @optarg, align 8
  %24 = call i32 @xstrtoul(i8* %23, i8** null, i32 0, i64* nonnull %6, i8* null) #11
  %25 = icmp eq i32 %24, 0
  %26 = load i64, i64* %6, align 8
  %27 = add i64 %26, -1
  %28 = icmp ult i64 %27, 2147483647
  %29 = and i1 %25, %28
  br i1 %29, label %34, label %30

; <label>:30:                                     ; preds = %22
  %31 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i64 0, i64 0), i32 5) #11
  %32 = load i8*, i8** @optarg, align 8
  %33 = call i8* @quote(i8* %32) #11
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %31, i8* %33) #11
  unreachable

; <label>:34:                                     ; preds = %22
  %35 = trunc i64 %26 to i32
  store i32 %35, i32* @gap_size, align 4
  call void @llvm.lifetime.end(i64 8, i8* nonnull %13) #11
  br label %79

; <label>:36:                                     ; preds = %15
  %37 = load i64, i64* bitcast (i8** @optarg to i64*), align 8
  store i64 %37, i64* bitcast (i8** @ignore_file to i64*), align 8
  br label %79

; <label>:38:                                     ; preds = %15
  %39 = load i64, i64* bitcast (i8** @optarg to i64*), align 8
  store i64 %39, i64* bitcast (i8** @only_file to i64*), align 8
  br label %79

; <label>:40:                                     ; preds = %15
  store i1 true, i1* @input_reference, align 1
  br label %79

; <label>:41:                                     ; preds = %15
  call void @llvm.lifetime.start(i64 8, i8* nonnull %14) #11
  %42 = load i8*, i8** @optarg, align 8
  %43 = call i32 @xstrtoul(i8* %42, i8** null, i32 0, i64* nonnull %7, i8* null) #11
  %44 = icmp eq i32 %43, 0
  %45 = load i64, i64* %7, align 8
  %46 = add i64 %45, -1
  %47 = icmp ult i64 %46, 2147483647
  %48 = and i1 %44, %47
  br i1 %48, label %53, label %49

; <label>:49:                                     ; preds = %41
  %50 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 5) #11
  %51 = load i8*, i8** @optarg, align 8
  %52 = call i8* @quote(i8* %51) #11
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %50, i8* %52) #11
  unreachable

; <label>:53:                                     ; preds = %41
  %54 = trunc i64 %45 to i32
  store i32 %54, i32* @line_width, align 4
  call void @llvm.lifetime.end(i64 8, i8* nonnull %14) #11
  br label %79

; <label>:55:                                     ; preds = %15
  store i1 true, i1* @auto_reference, align 1
  br label %79

; <label>:56:                                     ; preds = %15
  %57 = load i8*, i8** @optarg, align 8
  %58 = call fastcc i8* @copy_unescaped_string(i8* %57)
  store i8* %58, i8** @truncation_string, align 8
  br label %79

; <label>:59:                                     ; preds = %15
  %60 = load i64, i64* bitcast (i8** @optarg to i64*), align 8
  store i64 %60, i64* bitcast (i8** @macro_name to i64*), align 8
  br label %79

; <label>:61:                                     ; preds = %15
  store i32 2, i32* @output_format, align 4
  br label %79

; <label>:62:                                     ; preds = %15
  store i1 true, i1* @right_reference, align 1
  br label %79

; <label>:63:                                     ; preds = %15
  %64 = load i8*, i8** @optarg, align 8
  %65 = call fastcc i8* @copy_unescaped_string(i8* %64)
  store i8* %65, i8** getelementptr inbounds (%struct.regex_data, %struct.regex_data* @context_regex, i64 0, i32 0), align 8
  br label %79

; <label>:66:                                     ; preds = %15
  store i32 3, i32* @output_format, align 4
  br label %79

; <label>:67:                                     ; preds = %15
  %68 = load i8*, i8** @optarg, align 8
  %69 = call fastcc i8* @copy_unescaped_string(i8* %68)
  store i8* %69, i8** getelementptr inbounds (%struct.regex_data, %struct.regex_data* @word_regex, i64 0, i32 0), align 8
  %70 = load i8, i8* %69, align 1
  %71 = icmp ne i8 %70, 0
  %72 = select i1 %71, i8* %69, i8* null
  store i8* %72, i8** getelementptr inbounds (%struct.regex_data, %struct.regex_data* @word_regex, i64 0, i32 0), align 8
  br label %79

; <label>:73:                                     ; preds = %15
  %74 = load i8*, i8** @optarg, align 8
  %75 = load void ()*, void ()** @argmatch_die, align 8
  %76 = call i64 @__xargmatch_internal(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0), i8* %74, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @format_args, i64 0, i64 0), i8* bitcast ([2 x i32]* @format_vals to i8*), i64 4, void ()* %75) #11
  %77 = getelementptr inbounds [2 x i32], [2 x i32]* @format_vals, i64 0, i64 %76
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* @output_format, align 4
  br label %79

; <label>:79:                                     ; preds = %73, %67, %66, %63, %62, %61, %59, %56, %55, %53, %40, %38, %36, %34, %21, %19, %18, %15
  br label %15

; <label>:80:                                     ; preds = %15
  call void @usage(i32 0) #16
  unreachable

; <label>:81:                                     ; preds = %15
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %83 = load i8*, i8** @Version, align 8
  %84 = call i8* @proper_name_utf8(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i64 0, i64 0)) #11
  call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %82, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i8* %83, i8* %84, i8* null) #11
  call void @exit(i32 0) #15
  unreachable

; <label>:85:                                     ; preds = %15
  %86 = load i32, i32* @optind, align 4
  %87 = icmp eq i32 %86, %0
  br i1 %87, label %88, label %93

; <label>:88:                                     ; preds = %85
  %89 = call noalias i8* @xmalloc(i64 8) #11
  store i8* %89, i8** bitcast (i8*** @input_file_name to i8**), align 8
  %90 = call noalias i8* @xmalloc(i64 4) #11
  store i8* %90, i8** bitcast (i32** @file_line_count to i8**), align 8
  %91 = call noalias i8* @xmalloc(i64 16) #11
  store i8* %91, i8** bitcast (%struct.BLOCK** @text_buffers to i8**), align 8
  store i32 1, i32* @number_input_files, align 4
  %92 = load i8**, i8*** @input_file_name, align 8
  store i8* null, i8** %92, align 8
  br label %205

; <label>:93:                                     ; preds = %85
  %94 = load i1, i1* @gnu_extensions, align 1
  br i1 %94, label %156, label %95

; <label>:95:                                     ; preds = %93
  %96 = sub nsw i32 %0, %86
  store i32 %96, i32* @number_input_files, align 4
  %97 = sext i32 %96 to i64
  %98 = shl nsw i64 %97, 3
  %99 = call noalias i8* @xmalloc(i64 %98) #11
  store i8* %99, i8** bitcast (i8*** @input_file_name to i8**), align 8
  %100 = load i32, i32* @number_input_files, align 4
  %101 = sext i32 %100 to i64
  %102 = shl nsw i64 %101, 2
  %103 = call noalias i8* @xmalloc(i64 %102) #11
  store i8* %103, i8** bitcast (i32** @file_line_count to i8**), align 8
  %104 = load i32, i32* @number_input_files, align 4
  %105 = sext i32 %104 to i64
  %106 = shl nsw i64 %105, 4
  %107 = call noalias i8* @xmalloc(i64 %106) #11
  store i8* %107, i8** bitcast (%struct.BLOCK** @text_buffers to i8**), align 8
  %108 = load i32, i32* @number_input_files, align 4
  %109 = icmp sgt i32 %108, 0
  br i1 %109, label %110, label %205

; <label>:110:                                    ; preds = %95
  %111 = load i8**, i8*** @input_file_name, align 8
  %112 = sext i32 %108 to i64
  %113 = load i32, i32* @optind, align 4
  %114 = and i64 %112, 1
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %130, label %116

; <label>:116:                                    ; preds = %110
  br label %117

; <label>:117:                                    ; preds = %116
  %118 = sext i32 %113 to i64
  %119 = getelementptr inbounds i8*, i8** %1, i64 %118
  %120 = load i8*, i8** %119, align 8
  %121 = load i8, i8* %120, align 1
  switch i8 %121, label %126 [
    i8 0, label %127
    i8 45, label %122
  ]

; <label>:122:                                    ; preds = %117
  %123 = getelementptr inbounds i8, i8* %120, i64 1
  %124 = load i8, i8* %123, align 1
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %127, label %126

; <label>:126:                                    ; preds = %122, %117
  br label %127

; <label>:127:                                    ; preds = %126, %122, %117
  %128 = phi i8* [ %120, %126 ], [ null, %117 ], [ null, %122 ]
  store i8* %128, i8** %111, align 8
  %129 = add nsw i32 %113, 1
  store i32 %129, i32* @optind, align 4
  br label %130

; <label>:130:                                    ; preds = %110, %127
  %131 = phi i32 [ %113, %110 ], [ %129, %127 ]
  %132 = phi i64 [ 0, %110 ], [ 1, %127 ]
  %133 = icmp eq i32 %108, 1
  br i1 %133, label %204, label %134

; <label>:134:                                    ; preds = %130
  br label %135

; <label>:135:                                    ; preds = %2242, %134
  %136 = phi i32 [ %131, %134 ], [ %2245, %2242 ]
  %137 = phi i64 [ %132, %134 ], [ %2246, %2242 ]
  %138 = sext i32 %136 to i64
  %139 = getelementptr inbounds i8*, i8** %1, i64 %138
  %140 = load i8*, i8** %139, align 8
  %141 = load i8, i8* %140, align 1
  switch i8 %141, label %146 [
    i8 0, label %147
    i8 45, label %142
  ]

; <label>:142:                                    ; preds = %135
  %143 = getelementptr inbounds i8, i8* %140, i64 1
  %144 = load i8, i8* %143, align 1
  %145 = icmp eq i8 %144, 0
  br i1 %145, label %147, label %146

; <label>:146:                                    ; preds = %135, %142
  br label %147

; <label>:147:                                    ; preds = %135, %142, %146
  %148 = phi i8* [ %140, %146 ], [ null, %135 ], [ null, %142 ]
  %149 = getelementptr inbounds i8*, i8** %111, i64 %137
  store i8* %148, i8** %149, align 8
  %150 = add nsw i32 %136, 1
  store i32 %150, i32* @optind, align 4
  %151 = add nuw nsw i64 %137, 1
  %152 = sext i32 %150 to i64
  %153 = getelementptr inbounds i8*, i8** %1, i64 %152
  %154 = load i8*, i8** %153, align 8
  %155 = load i8, i8* %154, align 1
  switch i8 %155, label %2241 [
    i8 0, label %2242
    i8 45, label %2237
  ]

; <label>:156:                                    ; preds = %93
  store i32 1, i32* @number_input_files, align 4
  %157 = call noalias i8* @xmalloc(i64 8) #11
  store i8* %157, i8** bitcast (i8*** @input_file_name to i8**), align 8
  %158 = call noalias i8* @xmalloc(i64 4) #11
  store i8* %158, i8** bitcast (i32** @file_line_count to i8**), align 8
  %159 = call noalias i8* @xmalloc(i64 16) #11
  store i8* %159, i8** bitcast (%struct.BLOCK** @text_buffers to i8**), align 8
  %160 = load i32, i32* @optind, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i8*, i8** %1, i64 %161
  %163 = load i8*, i8** %162, align 8
  %164 = load i8, i8* %163, align 1
  switch i8 %164, label %169 [
    i8 0, label %170
    i8 45, label %165
  ]

; <label>:165:                                    ; preds = %156
  %166 = getelementptr inbounds i8, i8* %163, i64 1
  %167 = load i8, i8* %166, align 1
  %168 = icmp eq i8 %167, 0
  br i1 %168, label %170, label %169

; <label>:169:                                    ; preds = %156, %165
  br label %170

; <label>:170:                                    ; preds = %156, %165, %169
  %171 = phi i8* [ %163, %169 ], [ null, %165 ], [ null, %156 ]
  %172 = load i8**, i8*** @input_file_name, align 8
  store i8* %171, i8** %172, align 8
  %173 = add nsw i32 %160, 1
  store i32 %173, i32* @optind, align 4
  %174 = icmp slt i32 %173, %0
  br i1 %174, label %175, label %193

; <label>:175:                                    ; preds = %170
  %176 = sext i32 %173 to i64
  %177 = getelementptr inbounds i8*, i8** %1, i64 %176
  %178 = load i8*, i8** %177, align 8
  %179 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %180 = call %struct._IO_FILE* @freopen_safer(i8* %178, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0), %struct._IO_FILE* %179) #11
  %181 = icmp eq %struct._IO_FILE* %180, null
  br i1 %181, label %182, label %190

; <label>:182:                                    ; preds = %175
  %183 = tail call i32* @__errno_location() #1
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* @optind, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i8*, i8** %1, i64 %186
  %188 = load i8*, i8** %187, align 8
  %189 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %188) #11
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %184, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0), i8* %189) #11
  unreachable

; <label>:190:                                    ; preds = %175
  %191 = load i32, i32* @optind, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* @optind, align 4
  br label %193

; <label>:193:                                    ; preds = %190, %170
  %194 = phi i32 [ %192, %190 ], [ %173, %170 ]
  %195 = icmp slt i32 %194, %0
  br i1 %195, label %196, label %205

; <label>:196:                                    ; preds = %193
  %197 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 5) #11
  %198 = load i32, i32* @optind, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i8*, i8** %1, i64 %199
  %201 = load i8*, i8** %200, align 8
  %202 = call i8* @quote(i8* %201) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %197, i8* %202) #11
  call void @usage(i32 1) #16
  unreachable

; <label>:203:                                    ; preds = %2242
  br label %204

; <label>:204:                                    ; preds = %130, %203
  br label %205

; <label>:205:                                    ; preds = %204, %95, %193, %88
  %206 = load i32, i32* @output_format, align 4
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %211

; <label>:208:                                    ; preds = %205
  %209 = load i1, i1* @gnu_extensions, align 1
  %210 = select i1 %209, i32 2, i32 1
  store i32 %210, i32* @output_format, align 4
  br label %211

; <label>:211:                                    ; preds = %208, %205
  %212 = load i1, i1* @ignore_case, align 1
  br i1 %212, label %213, label %243

; <label>:213:                                    ; preds = %211
  %214 = tail call i32** @__ctype_toupper_loc() #1
  br label %215

; <label>:215:                                    ; preds = %215, %213
  %216 = phi i64 [ 0, %213 ], [ %240, %215 ]
  %217 = load i32*, i32** %214, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 %216
  %219 = load i32, i32* %218, align 4
  %220 = trunc i32 %219 to i8
  %221 = getelementptr inbounds [256 x i8], [256 x i8]* @folded_chars, i64 0, i64 %216
  store i8 %220, i8* %221, align 4
  %222 = or i64 %216, 1
  %223 = load i32*, i32** %214, align 8
  %224 = getelementptr inbounds i32, i32* %223, i64 %222
  %225 = load i32, i32* %224, align 4
  %226 = trunc i32 %225 to i8
  %227 = getelementptr inbounds [256 x i8], [256 x i8]* @folded_chars, i64 0, i64 %222
  store i8 %226, i8* %227, align 1
  %228 = or i64 %216, 2
  %229 = load i32*, i32** %214, align 8
  %230 = getelementptr inbounds i32, i32* %229, i64 %228
  %231 = load i32, i32* %230, align 4
  %232 = trunc i32 %231 to i8
  %233 = getelementptr inbounds [256 x i8], [256 x i8]* @folded_chars, i64 0, i64 %228
  store i8 %232, i8* %233, align 2
  %234 = or i64 %216, 3
  %235 = load i32*, i32** %214, align 8
  %236 = getelementptr inbounds i32, i32* %235, i64 %234
  %237 = load i32, i32* %236, align 4
  %238 = trunc i32 %237 to i8
  %239 = getelementptr inbounds [256 x i8], [256 x i8]* @folded_chars, i64 0, i64 %234
  store i8 %238, i8* %239, align 1
  %240 = add nsw i64 %216, 4
  %241 = icmp eq i64 %240, 256
  br i1 %241, label %242, label %215

; <label>:242:                                    ; preds = %215
  br label %243

; <label>:243:                                    ; preds = %242, %211
  %244 = load i8*, i8** getelementptr inbounds (%struct.regex_data, %struct.regex_data* @context_regex, i64 0, i32 0), align 8
  %245 = icmp eq i8* %244, null
  br i1 %245, label %249, label %246

; <label>:246:                                    ; preds = %243
  %247 = load i8, i8* %244, align 1
  %248 = icmp eq i8 %247, 0
  br i1 %248, label %254, label %255

; <label>:249:                                    ; preds = %243
  %250 = load i1, i1* @gnu_extensions, align 1
  %251 = load i1, i1* @input_reference, align 1
  %252 = or i1 %250, %251
  %253 = select i1 %252, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.65, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.64, i64 0, i64 0)
  store i8* %253, i8** getelementptr inbounds (%struct.regex_data, %struct.regex_data* @context_regex, i64 0, i32 0), align 8
  br label %255

; <label>:254:                                    ; preds = %246
  store i8* null, i8** getelementptr inbounds (%struct.regex_data, %struct.regex_data* @context_regex, i64 0, i32 0), align 8
  br label %256

; <label>:255:                                    ; preds = %249, %246
  call fastcc void @compile_regex(%struct.regex_data* nonnull @context_regex) #11
  br label %256

; <label>:256:                                    ; preds = %255, %254
  %257 = load i8*, i8** getelementptr inbounds (%struct.regex_data, %struct.regex_data* @word_regex, i64 0, i32 0), align 8
  %258 = icmp eq i8* %257, null
  br i1 %258, label %259, label %302

; <label>:259:                                    ; preds = %256
  %260 = load i8*, i8** @break_file, align 8
  %261 = icmp eq i8* %260, null
  br i1 %261, label %262, label %305

; <label>:262:                                    ; preds = %259
  %263 = load i1, i1* @gnu_extensions, align 1
  br i1 %263, label %301, label %264

; <label>:264:                                    ; preds = %262
  %265 = tail call i16** @__ctype_b_loc() #1
  br label %266

; <label>:266:                                    ; preds = %266, %264
  %267 = phi i64 [ 0, %264 ], [ %299, %266 ]
  %268 = load i16*, i16** %265, align 8
  %269 = getelementptr inbounds i16, i16* %268, i64 %267
  %270 = load i16, i16* %269, align 2
  %271 = lshr i16 %270, 10
  %272 = trunc i16 %271 to i8
  %273 = and i8 %272, 1
  %274 = getelementptr inbounds [256 x i8], [256 x i8]* @word_fastmap, i64 0, i64 %267
  store i8 %273, i8* %274, align 4
  %275 = or i64 %267, 1
  %276 = load i16*, i16** %265, align 8
  %277 = getelementptr inbounds i16, i16* %276, i64 %275
  %278 = load i16, i16* %277, align 2
  %279 = lshr i16 %278, 10
  %280 = trunc i16 %279 to i8
  %281 = and i8 %280, 1
  %282 = getelementptr inbounds [256 x i8], [256 x i8]* @word_fastmap, i64 0, i64 %275
  store i8 %281, i8* %282, align 1
  %283 = or i64 %267, 2
  %284 = load i16*, i16** %265, align 8
  %285 = getelementptr inbounds i16, i16* %284, i64 %283
  %286 = load i16, i16* %285, align 2
  %287 = lshr i16 %286, 10
  %288 = trunc i16 %287 to i8
  %289 = and i8 %288, 1
  %290 = getelementptr inbounds [256 x i8], [256 x i8]* @word_fastmap, i64 0, i64 %283
  store i8 %289, i8* %290, align 2
  %291 = or i64 %267, 3
  %292 = load i16*, i16** %265, align 8
  %293 = getelementptr inbounds i16, i16* %292, i64 %291
  %294 = load i16, i16* %293, align 2
  %295 = lshr i16 %294, 10
  %296 = trunc i16 %295 to i8
  %297 = and i8 %296, 1
  %298 = getelementptr inbounds [256 x i8], [256 x i8]* @word_fastmap, i64 0, i64 %291
  store i8 %297, i8* %298, align 1
  %299 = add nsw i64 %267, 4
  %300 = icmp eq i64 %299, 256
  br i1 %300, label %326, label %266

; <label>:301:                                    ; preds = %262
  call void @llvm.memset.p0i8.i64(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @word_fastmap, i64 0, i64 0), i8 1, i64 256, i32 16, i1 false) #11
  store i8 0, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @word_fastmap, i64 0, i64 32), align 16
  store i8 0, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @word_fastmap, i64 0, i64 9), align 1
  store i8 0, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @word_fastmap, i64 0, i64 10), align 2
  br label %327

; <label>:302:                                    ; preds = %256
  call fastcc void @compile_regex(%struct.regex_data* nonnull @word_regex) #11
  %303 = load i8*, i8** @break_file, align 8
  %304 = icmp eq i8* %303, null
  br i1 %304, label %327, label %305

; <label>:305:                                    ; preds = %259, %302
  %306 = phi i8* [ %303, %302 ], [ %260, %259 ]
  %307 = bitcast %struct.BLOCK* %5 to i8*
  call void @llvm.lifetime.start(i64 16, i8* nonnull %307) #11
  call fastcc void @swallow_file_in_memory(i8* nonnull %306, %struct.BLOCK* nonnull %5) #11
  call void @llvm.memset.p0i8.i64(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @word_fastmap, i64 0, i64 0), i8 1, i64 256, i32 16, i1 false) #11
  %308 = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %5, i64 0, i32 0
  %309 = load i8*, i8** %308, align 8
  %310 = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %5, i64 0, i32 1
  %311 = load i8*, i8** %310, align 8
  %312 = icmp ult i8* %309, %311
  br i1 %312, label %313, label %322

; <label>:313:                                    ; preds = %305
  br label %314

; <label>:314:                                    ; preds = %313, %314
  %315 = phi i8* [ %319, %314 ], [ %309, %313 ]
  %316 = load i8, i8* %315, align 1
  %317 = zext i8 %316 to i64
  %318 = getelementptr inbounds [256 x i8], [256 x i8]* @word_fastmap, i64 0, i64 %317
  store i8 0, i8* %318, align 1
  %319 = getelementptr inbounds i8, i8* %315, i64 1
  %320 = icmp eq i8* %319, %311
  br i1 %320, label %321, label %314

; <label>:321:                                    ; preds = %314
  br label %322

; <label>:322:                                    ; preds = %321, %305
  %323 = load i1, i1* @gnu_extensions, align 1
  br i1 %323, label %324, label %325

; <label>:324:                                    ; preds = %322
  store i8 0, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @word_fastmap, i64 0, i64 32), align 16
  store i8 0, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @word_fastmap, i64 0, i64 9), align 1
  store i8 0, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @word_fastmap, i64 0, i64 10), align 2
  br label %325

; <label>:325:                                    ; preds = %322, %324
  call void @free(i8* %309) #11
  call void @llvm.lifetime.end(i64 16, i8* nonnull %307) #11
  br label %327

; <label>:326:                                    ; preds = %266
  br label %327

; <label>:327:                                    ; preds = %326, %301, %302, %325
  %328 = load i8*, i8** @ignore_file, align 8
  %329 = icmp eq i8* %328, null
  br i1 %329, label %334, label %330

; <label>:330:                                    ; preds = %327
  call fastcc void @digest_word_file(i8* nonnull %328, %struct.WORD_TABLE* nonnull @ignore_table)
  %331 = load i64, i64* getelementptr inbounds (%struct.WORD_TABLE, %struct.WORD_TABLE* @ignore_table, i64 0, i32 2), align 8
  %332 = icmp eq i64 %331, 0
  br i1 %332, label %333, label %334

; <label>:333:                                    ; preds = %330
  store i8* null, i8** @ignore_file, align 8
  br label %334

; <label>:334:                                    ; preds = %327, %330, %333
  %335 = load i8*, i8** @only_file, align 8
  %336 = icmp eq i8* %335, null
  br i1 %336, label %341, label %337

; <label>:337:                                    ; preds = %334
  call fastcc void @digest_word_file(i8* nonnull %335, %struct.WORD_TABLE* nonnull @only_table)
  %338 = load i64, i64* getelementptr inbounds (%struct.WORD_TABLE, %struct.WORD_TABLE* @only_table, i64 0, i32 2), align 8
  %339 = icmp eq i64 %338, 0
  br i1 %339, label %340, label %341

; <label>:340:                                    ; preds = %337
  store i8* null, i8** @only_file, align 8
  br label %341

; <label>:341:                                    ; preds = %334, %337, %340
  store i64 0, i64* @number_of_occurs.0, align 8
  store i32 0, i32* @total_line_count, align 4
  store i32 0, i32* @maximum_word_length, align 4
  store i32 0, i32* @reference_max_width, align 4
  %342 = load i32, i32* @number_input_files, align 4
  %343 = icmp sgt i32 %342, 0
  br i1 %343, label %344, label %925

; <label>:344:                                    ; preds = %341
  %345 = bitcast %struct.WORD* %4 to i8*
  %346 = getelementptr inbounds %struct.WORD, %struct.WORD* %4, i64 0, i32 0
  %347 = getelementptr inbounds %struct.WORD, %struct.WORD* %4, i64 0, i32 1
  br label %348

; <label>:348:                                    ; preds = %344, %911
  %349 = phi i64 [ 0, %344 ], [ %916, %911 ]
  %350 = load %struct.BLOCK*, %struct.BLOCK** @text_buffers, align 8
  %351 = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %350, i64 %349
  %352 = load i8**, i8*** @input_file_name, align 8
  %353 = getelementptr inbounds i8*, i8** %352, i64 %349
  %354 = load i8*, i8** %353, align 8
  call fastcc void @swallow_file_in_memory(i8* %354, %struct.BLOCK* %351)
  call void @llvm.lifetime.start(i64 16, i8* nonnull %345) #11
  %355 = load %struct.BLOCK*, %struct.BLOCK** @text_buffers, align 8
  %356 = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %355, i64 %349, i32 0
  %357 = load i8*, i8** %356, align 8
  %358 = load i1, i1* @input_reference, align 1
  %359 = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %355, i64 %349, i32 1
  %360 = load i8*, i8** %359, align 8
  br i1 %358, label %361, label %402

; <label>:361:                                    ; preds = %348
  %362 = icmp ult i8* %357, %360
  br i1 %362, label %363, label %379

; <label>:363:                                    ; preds = %361
  %364 = tail call i16** @__ctype_b_loc() #1
  %365 = load i16*, i16** %364, align 8
  br label %366

; <label>:366:                                    ; preds = %374, %363
  %367 = phi i8* [ %357, %363 ], [ %375, %374 ]
  %368 = load i8, i8* %367, align 1
  %369 = zext i8 %368 to i64
  %370 = getelementptr inbounds i16, i16* %365, i64 %369
  %371 = load i16, i16* %370, align 2
  %372 = and i16 %371, 8192
  %373 = icmp eq i16 %372, 0
  br i1 %373, label %374, label %377

; <label>:374:                                    ; preds = %366
  %375 = getelementptr inbounds i8, i8* %367, i64 1
  %376 = icmp ult i8* %375, %360
  br i1 %376, label %366, label %377

; <label>:377:                                    ; preds = %366, %374
  %378 = phi i8* [ %367, %366 ], [ %375, %374 ]
  br label %379

; <label>:379:                                    ; preds = %377, %361
  %380 = phi i8* [ %357, %361 ], [ %378, %377 ]
  %381 = ptrtoint i8* %380 to i64
  %382 = ptrtoint i8* %357 to i64
  %383 = sub i64 %381, %382
  %384 = trunc i64 %383 to i32
  %385 = icmp ult i8* %380, %360
  br i1 %385, label %386, label %402

; <label>:386:                                    ; preds = %379
  %387 = tail call i16** @__ctype_b_loc() #1
  %388 = load i16*, i16** %387, align 8
  br label %389

; <label>:389:                                    ; preds = %397, %386
  %390 = phi i8* [ %380, %386 ], [ %398, %397 ]
  %391 = load i8, i8* %390, align 1
  %392 = zext i8 %391 to i64
  %393 = getelementptr inbounds i16, i16* %388, i64 %392
  %394 = load i16, i16* %393, align 2
  %395 = and i16 %394, 8192
  %396 = icmp eq i16 %395, 0
  br i1 %396, label %400, label %397

; <label>:397:                                    ; preds = %389
  %398 = getelementptr inbounds i8, i8* %390, i64 1
  %399 = icmp ult i8* %398, %360
  br i1 %399, label %389, label %400

; <label>:400:                                    ; preds = %389, %397
  %401 = phi i8* [ %390, %389 ], [ %398, %397 ]
  br label %402

; <label>:402:                                    ; preds = %400, %379, %348
  %403 = phi i8* [ %380, %379 ], [ %357, %348 ], [ %401, %400 ]
  %404 = phi i32 [ %384, %379 ], [ 0, %348 ], [ %384, %400 ]
  %405 = icmp ult i8* %357, %360
  br i1 %405, label %406, label %911

; <label>:406:                                    ; preds = %402
  br label %410

; <label>:407:                                    ; preds = %495, %468
  %408 = load i8*, i8** %359, align 8
  %409 = icmp ult i8* %431, %408
  br i1 %409, label %410, label %910

; <label>:410:                                    ; preds = %406, %407
  %411 = phi i8* [ %408, %407 ], [ %360, %406 ]
  %412 = phi i8* [ %431, %407 ], [ %357, %406 ]
  %413 = phi i8* [ %459, %407 ], [ %357, %406 ]
  %414 = phi i32 [ %458, %407 ], [ %404, %406 ]
  %415 = phi i8* [ %457, %407 ], [ %403, %406 ]
  %416 = load i8*, i8** getelementptr inbounds (%struct.regex_data, %struct.regex_data* @context_regex, i64 0, i32 0), align 8
  %417 = icmp eq i8* %416, null
  br i1 %417, label %430, label %418

; <label>:418:                                    ; preds = %410
  %419 = ptrtoint i8* %411 to i64
  %420 = ptrtoint i8* %412 to i64
  %421 = sub i64 %419, %420
  %422 = trunc i64 %421 to i32
  %423 = call i32 @re_search(%struct.re_pattern_buffer* getelementptr inbounds (%struct.regex_data, %struct.regex_data* @context_regex, i64 0, i32 1), i8* %412, i32 %422, i32 0, i32 %422, %struct.re_registers* nonnull @context_regs) #11
  switch i32 %423, label %425 [
    i32 -2, label %424
    i32 -1, label %430
  ]

; <label>:424:                                    ; preds = %418
  call fastcc void @matcher_error() #15
  unreachable

; <label>:425:                                    ; preds = %418
  %426 = load i32*, i32** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @context_regs, i64 0, i32 2), align 8
  %427 = load i32, i32* %426, align 4
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds i8, i8* %412, i64 %428
  br label %430

; <label>:430:                                    ; preds = %425, %418, %410
  %431 = phi i8* [ %429, %425 ], [ %411, %418 ], [ %411, %410 ]
  br label %432

; <label>:432:                                    ; preds = %435, %430
  %433 = phi i8* [ %431, %430 ], [ %438, %435 ]
  %434 = icmp ugt i8* %433, %412
  br i1 %434, label %435, label %445

; <label>:435:                                    ; preds = %432
  %436 = tail call i16** @__ctype_b_loc() #1
  %437 = load i16*, i16** %436, align 8
  %438 = getelementptr inbounds i8, i8* %433, i64 -1
  %439 = load i8, i8* %438, align 1
  %440 = zext i8 %439 to i64
  %441 = getelementptr inbounds i16, i16* %437, i64 %440
  %442 = load i16, i16* %441, align 2
  %443 = and i16 %442, 8192
  %444 = icmp eq i16 %443, 0
  br i1 %444, label %445, label %432

; <label>:445:                                    ; preds = %435, %432
  %446 = ptrtoint i8* %433 to i64
  br label %447

; <label>:447:                                    ; preds = %896, %445
  %448 = phi i8* [ %898, %896 ], [ %415, %445 ]
  %449 = phi i32 [ %590, %896 ], [ %414, %445 ]
  %450 = phi i8* [ %897, %896 ], [ %413, %445 ]
  %451 = phi i8* [ %899, %896 ], [ %412, %445 ]
  %452 = phi i8* [ %528, %896 ], [ %412, %445 ]
  br label %456

; <label>:453:                                    ; preds = %768
  br label %584

; <label>:454:                                    ; preds = %675
  br label %584

; <label>:455:                                    ; preds = %763
  br label %584

; <label>:456:                                    ; preds = %584, %447
  %457 = phi i8* [ %448, %447 ], [ %585, %584 ]
  %458 = phi i32 [ %449, %447 ], [ %586, %584 ]
  %459 = phi i8* [ %450, %447 ], [ %587, %584 ]
  %460 = phi i8* [ %452, %447 ], [ %528, %584 ]
  br label %461

; <label>:461:                                    ; preds = %517, %456
  %462 = phi i8* [ %519, %517 ], [ %460, %456 ]
  %463 = load i8*, i8** getelementptr inbounds (%struct.regex_data, %struct.regex_data* @word_regex, i64 0, i32 0), align 8
  %464 = icmp eq i8* %463, null
  br i1 %464, label %465, label %468

; <label>:465:                                    ; preds = %461
  %466 = icmp ult i8* %462, %433
  br i1 %466, label %467, label %495

; <label>:467:                                    ; preds = %465
  br label %483

; <label>:468:                                    ; preds = %461
  %469 = ptrtoint i8* %462 to i64
  %470 = sub i64 %446, %469
  %471 = trunc i64 %470 to i32
  %472 = call i32 @re_search(%struct.re_pattern_buffer* getelementptr inbounds (%struct.regex_data, %struct.regex_data* @word_regex, i64 0, i32 1), i8* %462, i32 %471, i32 0, i32 %471, %struct.re_registers* nonnull @word_regs) #11
  switch i32 %472, label %474 [
    i32 -2, label %473
    i32 -1, label %407
  ]

; <label>:473:                                    ; preds = %468
  call fastcc void @matcher_error() #15
  unreachable

; <label>:474:                                    ; preds = %468
  %475 = load i32*, i32** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @word_regs, i64 0, i32 1), align 8
  %476 = load i32, i32* %475, align 4
  %477 = sext i32 %476 to i64
  %478 = getelementptr inbounds i8, i8* %462, i64 %477
  %479 = load i32*, i32** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @word_regs, i64 0, i32 2), align 8
  %480 = load i32, i32* %479, align 4
  %481 = sext i32 %480 to i64
  %482 = getelementptr inbounds i8, i8* %462, i64 %481
  br label %513

; <label>:483:                                    ; preds = %467, %490
  %484 = phi i8* [ %491, %490 ], [ %462, %467 ]
  %485 = load i8, i8* %484, align 1
  %486 = zext i8 %485 to i64
  %487 = getelementptr inbounds [256 x i8], [256 x i8]* @word_fastmap, i64 0, i64 %486
  %488 = load i8, i8* %487, align 1
  %489 = icmp eq i8 %488, 0
  br i1 %489, label %490, label %493

; <label>:490:                                    ; preds = %483
  %491 = getelementptr inbounds i8, i8* %484, i64 1
  %492 = icmp ult i8* %491, %433
  br i1 %492, label %483, label %493

; <label>:493:                                    ; preds = %483, %490
  %494 = phi i8* [ %484, %483 ], [ %491, %490 ]
  br label %495

; <label>:495:                                    ; preds = %493, %465
  %496 = phi i8* [ %462, %465 ], [ %494, %493 ]
  %497 = icmp eq i8* %496, %433
  br i1 %497, label %407, label %498

; <label>:498:                                    ; preds = %495
  %499 = icmp ult i8* %496, %433
  br i1 %499, label %500, label %517

; <label>:500:                                    ; preds = %498
  br label %501

; <label>:501:                                    ; preds = %500, %508
  %502 = phi i8* [ %509, %508 ], [ %496, %500 ]
  %503 = load i8, i8* %502, align 1
  %504 = zext i8 %503 to i64
  %505 = getelementptr inbounds [256 x i8], [256 x i8]* @word_fastmap, i64 0, i64 %504
  %506 = load i8, i8* %505, align 1
  %507 = icmp eq i8 %506, 0
  br i1 %507, label %511, label %508

; <label>:508:                                    ; preds = %501
  %509 = getelementptr inbounds i8, i8* %502, i64 1
  %510 = icmp ult i8* %509, %433
  br i1 %510, label %501, label %511

; <label>:511:                                    ; preds = %501, %508
  %512 = phi i8* [ %509, %508 ], [ %502, %501 ]
  br label %513

; <label>:513:                                    ; preds = %511, %474
  %514 = phi i8* [ %478, %474 ], [ %496, %511 ]
  %515 = phi i8* [ %482, %474 ], [ %512, %511 ]
  %516 = icmp eq i8* %515, %514
  br i1 %516, label %517, label %520

; <label>:517:                                    ; preds = %513, %498
  %518 = phi i8* [ %514, %513 ], [ %496, %498 ]
  %519 = getelementptr inbounds i8, i8* %518, i64 1
  br label %461

; <label>:520:                                    ; preds = %513
  store i8* %514, i8** %346, align 8
  %521 = ptrtoint i8* %515 to i64
  %522 = ptrtoint i8* %514 to i64
  %523 = sub i64 %521, %522
  %524 = trunc i64 %523 to i16
  store i16 %524, i16* %347, align 8
  %525 = sext i16 %524 to i32
  %526 = shl i64 %523, 48
  %527 = ashr exact i64 %526, 48
  %528 = getelementptr inbounds i8, i8* %514, i64 %527
  %529 = load i32, i32* @maximum_word_length, align 4
  %530 = icmp sgt i32 %525, %529
  br i1 %530, label %531, label %532

; <label>:531:                                    ; preds = %520
  store i32 %525, i32* @maximum_word_length, align 4
  br label %532

; <label>:532:                                    ; preds = %531, %520
  %533 = load i1, i1* @input_reference, align 1
  br i1 %533, label %534, label %588

; <label>:534:                                    ; preds = %532
  %535 = icmp ult i8* %457, %514
  br i1 %535, label %536, label %579

; <label>:536:                                    ; preds = %534
  br label %537

; <label>:537:                                    ; preds = %536, %567
  %538 = phi i8* [ %548, %567 ], [ %459, %536 ]
  %539 = phi i32 [ %572, %567 ], [ %458, %536 ]
  %540 = phi i8* [ %568, %567 ], [ %457, %536 ]
  br label %541

; <label>:541:                                    ; preds = %574, %537
  %542 = phi i8* [ %540, %537 ], [ %575, %574 ]
  %543 = load i8, i8* %542, align 1
  %544 = icmp eq i8 %543, 10
  br i1 %544, label %545, label %574

; <label>:545:                                    ; preds = %541
  %546 = load i32, i32* @total_line_count, align 4
  %547 = add nsw i32 %546, 1
  store i32 %547, i32* @total_line_count, align 4
  %548 = getelementptr inbounds i8, i8* %542, i64 1
  %549 = load i8*, i8** %359, align 8
  %550 = icmp ult i8* %548, %549
  br i1 %550, label %551, label %567

; <label>:551:                                    ; preds = %545
  %552 = tail call i16** @__ctype_b_loc() #1
  %553 = load i16*, i16** %552, align 8
  br label %554

; <label>:554:                                    ; preds = %562, %551
  %555 = phi i8* [ %548, %551 ], [ %563, %562 ]
  %556 = load i8, i8* %555, align 1
  %557 = zext i8 %556 to i64
  %558 = getelementptr inbounds i16, i16* %553, i64 %557
  %559 = load i16, i16* %558, align 2
  %560 = and i16 %559, 8192
  %561 = icmp eq i16 %560, 0
  br i1 %561, label %562, label %565

; <label>:562:                                    ; preds = %554
  %563 = getelementptr inbounds i8, i8* %555, i64 1
  %564 = icmp ult i8* %563, %549
  br i1 %564, label %554, label %565

; <label>:565:                                    ; preds = %554, %562
  %566 = phi i8* [ %555, %554 ], [ %563, %562 ]
  br label %567

; <label>:567:                                    ; preds = %565, %545
  %568 = phi i8* [ %548, %545 ], [ %566, %565 ]
  %569 = ptrtoint i8* %568 to i64
  %570 = ptrtoint i8* %548 to i64
  %571 = sub i64 %569, %570
  %572 = trunc i64 %571 to i32
  %573 = icmp ult i8* %568, %514
  br i1 %573, label %537, label %578

; <label>:574:                                    ; preds = %541
  %575 = getelementptr inbounds i8, i8* %542, i64 1
  %576 = icmp ult i8* %575, %514
  br i1 %576, label %541, label %577

; <label>:577:                                    ; preds = %574
  br label %579

; <label>:578:                                    ; preds = %567
  br label %579

; <label>:579:                                    ; preds = %578, %577, %534
  %580 = phi i32 [ %458, %534 ], [ %539, %577 ], [ %572, %578 ]
  %581 = phi i8* [ %459, %534 ], [ %538, %577 ], [ %548, %578 ]
  %582 = phi i8* [ %457, %534 ], [ %575, %577 ], [ %568, %578 ]
  %583 = icmp ugt i8* %582, %514
  br i1 %583, label %584, label %588

; <label>:584:                                    ; preds = %579, %685, %453, %454, %455
  %585 = phi i8* [ %589, %685 ], [ %582, %579 ], [ %589, %453 ], [ %589, %454 ], [ %589, %455 ]
  %586 = phi i32 [ %590, %685 ], [ %580, %579 ], [ %590, %453 ], [ %590, %454 ], [ %590, %455 ]
  %587 = phi i8* [ %591, %685 ], [ %581, %579 ], [ %591, %453 ], [ %591, %454 ], [ %591, %455 ]
  br label %456

; <label>:588:                                    ; preds = %579, %532
  %589 = phi i8* [ %582, %579 ], [ %457, %532 ]
  %590 = phi i32 [ %580, %579 ], [ %458, %532 ]
  %591 = phi i8* [ %581, %579 ], [ %459, %532 ]
  %592 = load i8*, i8** @ignore_file, align 8
  %593 = icmp eq i8* %592, null
  br i1 %593, label %682, label %594

; <label>:594:                                    ; preds = %588
  %595 = load i64, i64* getelementptr inbounds (%struct.WORD_TABLE, %struct.WORD_TABLE* @ignore_table, i64 0, i32 2), align 8
  %596 = add i64 %595, 4294967295
  %597 = trunc i64 %596 to i32
  %598 = icmp slt i32 %597, 0
  br i1 %598, label %682, label %599

; <label>:599:                                    ; preds = %594
  %600 = load %struct.WORD*, %struct.WORD** getelementptr inbounds (%struct.WORD_TABLE, %struct.WORD_TABLE* @ignore_table, i64 0, i32 0), align 8
  %601 = load i1, i1* @ignore_case, align 1
  br label %602

; <label>:602:                                    ; preds = %672, %599
  %603 = phi i32 [ 0, %599 ], [ %606, %672 ]
  %604 = phi i32 [ %597, %599 ], [ %673, %672 ]
  br label %605

; <label>:605:                                    ; preds = %677, %602
  %606 = phi i32 [ %603, %602 ], [ %678, %677 ]
  %607 = add nsw i32 %606, %604
  %608 = sdiv i32 %607, 2
  %609 = sext i32 %608 to i64
  %610 = getelementptr inbounds %struct.WORD, %struct.WORD* %600, i64 %609
  %611 = bitcast %struct.WORD* %610 to i8*
  %612 = getelementptr inbounds %struct.WORD, %struct.WORD* %600, i64 %609, i32 1
  %613 = load i16, i16* %612, align 8
  %614 = icmp slt i16 %524, %613
  %615 = select i1 %614, i8* %345, i8* %611
  %616 = getelementptr inbounds i8, i8* %615, i64 8
  %617 = bitcast i8* %616 to i16*
  %618 = load i16, i16* %617, align 8
  %619 = icmp sgt i16 %618, 0
  br i1 %601, label %625, label %620

; <label>:620:                                    ; preds = %605
  br i1 %619, label %621, label %664

; <label>:621:                                    ; preds = %620
  %622 = getelementptr inbounds %struct.WORD, %struct.WORD* %610, i64 0, i32 0
  %623 = load i8*, i8** %622, align 8
  %624 = sext i16 %618 to i64
  br label %651

; <label>:625:                                    ; preds = %605
  br i1 %619, label %626, label %664

; <label>:626:                                    ; preds = %625
  %627 = getelementptr inbounds %struct.WORD, %struct.WORD* %610, i64 0, i32 0
  %628 = load i8*, i8** %627, align 8
  %629 = sext i16 %618 to i64
  br label %632

; <label>:630:                                    ; preds = %632
  %631 = icmp slt i64 %648, %629
  br i1 %631, label %632, label %662

; <label>:632:                                    ; preds = %630, %626
  %633 = phi i64 [ 0, %626 ], [ %648, %630 ]
  %634 = getelementptr inbounds i8, i8* %514, i64 %633
  %635 = load i8, i8* %634, align 1
  %636 = zext i8 %635 to i64
  %637 = getelementptr inbounds [256 x i8], [256 x i8]* @folded_chars, i64 0, i64 %636
  %638 = load i8, i8* %637, align 1
  %639 = zext i8 %638 to i32
  %640 = getelementptr inbounds i8, i8* %628, i64 %633
  %641 = load i8, i8* %640, align 1
  %642 = zext i8 %641 to i64
  %643 = getelementptr inbounds [256 x i8], [256 x i8]* @folded_chars, i64 0, i64 %642
  %644 = load i8, i8* %643, align 1
  %645 = zext i8 %644 to i32
  %646 = sub nsw i32 %639, %645
  %647 = icmp eq i32 %646, 0
  %648 = add nuw nsw i64 %633, 1
  br i1 %647, label %630, label %667

; <label>:649:                                    ; preds = %651
  %650 = icmp slt i64 %661, %624
  br i1 %650, label %651, label %663

; <label>:651:                                    ; preds = %649, %621
  %652 = phi i64 [ 0, %621 ], [ %661, %649 ]
  %653 = getelementptr inbounds i8, i8* %514, i64 %652
  %654 = load i8, i8* %653, align 1
  %655 = zext i8 %654 to i32
  %656 = getelementptr inbounds i8, i8* %623, i64 %652
  %657 = load i8, i8* %656, align 1
  %658 = zext i8 %657 to i32
  %659 = sub nsw i32 %655, %658
  %660 = icmp eq i32 %659, 0
  %661 = add nuw nsw i64 %652, 1
  br i1 %660, label %649, label %668

; <label>:662:                                    ; preds = %630
  br label %664

; <label>:663:                                    ; preds = %649
  br label %664

; <label>:664:                                    ; preds = %663, %662, %625, %620
  %665 = sext i16 %613 to i32
  %666 = sub nsw i32 %525, %665
  br label %669

; <label>:667:                                    ; preds = %632
  br label %669

; <label>:668:                                    ; preds = %651
  br label %669

; <label>:669:                                    ; preds = %668, %667, %664
  %670 = phi i32 [ %666, %664 ], [ %646, %667 ], [ %659, %668 ]
  %671 = icmp slt i32 %670, 0
  br i1 %671, label %672, label %675

; <label>:672:                                    ; preds = %669
  %673 = add nsw i32 %608, -1
  %674 = icmp slt i32 %606, %608
  br i1 %674, label %602, label %681

; <label>:675:                                    ; preds = %669
  %676 = icmp eq i32 %670, 0
  br i1 %676, label %454, label %677

; <label>:677:                                    ; preds = %675
  %678 = add nsw i32 %608, 1
  %679 = icmp slt i32 %608, %604
  br i1 %679, label %605, label %680

; <label>:680:                                    ; preds = %677
  br label %682

; <label>:681:                                    ; preds = %672
  br label %682

; <label>:682:                                    ; preds = %681, %680, %594, %588
  %683 = load i8*, i8** @only_file, align 8
  %684 = icmp eq i8* %683, null
  br i1 %684, label %772, label %685

; <label>:685:                                    ; preds = %682
  %686 = load i64, i64* getelementptr inbounds (%struct.WORD_TABLE, %struct.WORD_TABLE* @only_table, i64 0, i32 2), align 8
  %687 = add i64 %686, 4294967295
  %688 = trunc i64 %687 to i32
  %689 = icmp slt i32 %688, 0
  br i1 %689, label %584, label %690

; <label>:690:                                    ; preds = %685
  %691 = load %struct.WORD*, %struct.WORD** getelementptr inbounds (%struct.WORD_TABLE, %struct.WORD_TABLE* @only_table, i64 0, i32 0), align 8
  %692 = load i1, i1* @ignore_case, align 1
  br label %693

; <label>:693:                                    ; preds = %763, %690
  %694 = phi i32 [ 0, %690 ], [ %697, %763 ]
  %695 = phi i32 [ %688, %690 ], [ %764, %763 ]
  br label %696

; <label>:696:                                    ; preds = %768, %693
  %697 = phi i32 [ %694, %693 ], [ %769, %768 ]
  %698 = add nsw i32 %697, %695
  %699 = sdiv i32 %698, 2
  %700 = sext i32 %699 to i64
  %701 = getelementptr inbounds %struct.WORD, %struct.WORD* %691, i64 %700
  %702 = bitcast %struct.WORD* %701 to i8*
  %703 = getelementptr inbounds %struct.WORD, %struct.WORD* %691, i64 %700, i32 1
  %704 = load i16, i16* %703, align 8
  %705 = icmp slt i16 %524, %704
  %706 = select i1 %705, i8* %345, i8* %702
  %707 = getelementptr inbounds i8, i8* %706, i64 8
  %708 = bitcast i8* %707 to i16*
  %709 = load i16, i16* %708, align 8
  %710 = icmp sgt i16 %709, 0
  br i1 %692, label %716, label %711

; <label>:711:                                    ; preds = %696
  br i1 %710, label %712, label %755

; <label>:712:                                    ; preds = %711
  %713 = getelementptr inbounds %struct.WORD, %struct.WORD* %701, i64 0, i32 0
  %714 = load i8*, i8** %713, align 8
  %715 = sext i16 %709 to i64
  br label %742

; <label>:716:                                    ; preds = %696
  br i1 %710, label %717, label %755

; <label>:717:                                    ; preds = %716
  %718 = getelementptr inbounds %struct.WORD, %struct.WORD* %701, i64 0, i32 0
  %719 = load i8*, i8** %718, align 8
  %720 = sext i16 %709 to i64
  br label %723

; <label>:721:                                    ; preds = %723
  %722 = icmp slt i64 %739, %720
  br i1 %722, label %723, label %753

; <label>:723:                                    ; preds = %721, %717
  %724 = phi i64 [ 0, %717 ], [ %739, %721 ]
  %725 = getelementptr inbounds i8, i8* %514, i64 %724
  %726 = load i8, i8* %725, align 1
  %727 = zext i8 %726 to i64
  %728 = getelementptr inbounds [256 x i8], [256 x i8]* @folded_chars, i64 0, i64 %727
  %729 = load i8, i8* %728, align 1
  %730 = zext i8 %729 to i32
  %731 = getelementptr inbounds i8, i8* %719, i64 %724
  %732 = load i8, i8* %731, align 1
  %733 = zext i8 %732 to i64
  %734 = getelementptr inbounds [256 x i8], [256 x i8]* @folded_chars, i64 0, i64 %733
  %735 = load i8, i8* %734, align 1
  %736 = zext i8 %735 to i32
  %737 = sub nsw i32 %730, %736
  %738 = icmp eq i32 %737, 0
  %739 = add nuw nsw i64 %724, 1
  br i1 %738, label %721, label %758

; <label>:740:                                    ; preds = %742
  %741 = icmp slt i64 %752, %715
  br i1 %741, label %742, label %754

; <label>:742:                                    ; preds = %740, %712
  %743 = phi i64 [ 0, %712 ], [ %752, %740 ]
  %744 = getelementptr inbounds i8, i8* %514, i64 %743
  %745 = load i8, i8* %744, align 1
  %746 = zext i8 %745 to i32
  %747 = getelementptr inbounds i8, i8* %714, i64 %743
  %748 = load i8, i8* %747, align 1
  %749 = zext i8 %748 to i32
  %750 = sub nsw i32 %746, %749
  %751 = icmp eq i32 %750, 0
  %752 = add nuw nsw i64 %743, 1
  br i1 %751, label %740, label %759

; <label>:753:                                    ; preds = %721
  br label %755

; <label>:754:                                    ; preds = %740
  br label %755

; <label>:755:                                    ; preds = %754, %753, %716, %711
  %756 = sext i16 %704 to i32
  %757 = sub nsw i32 %525, %756
  br label %760

; <label>:758:                                    ; preds = %723
  br label %760

; <label>:759:                                    ; preds = %742
  br label %760

; <label>:760:                                    ; preds = %759, %758, %755
  %761 = phi i32 [ %757, %755 ], [ %737, %758 ], [ %750, %759 ]
  %762 = icmp slt i32 %761, 0
  br i1 %762, label %763, label %766

; <label>:763:                                    ; preds = %760
  %764 = add nsw i32 %699, -1
  %765 = icmp slt i32 %697, %699
  br i1 %765, label %693, label %455

; <label>:766:                                    ; preds = %760
  %767 = icmp eq i32 %761, 0
  br i1 %767, label %771, label %768

; <label>:768:                                    ; preds = %766
  %769 = add nsw i32 %699, 1
  %770 = icmp slt i32 %699, %695
  br i1 %770, label %696, label %453

; <label>:771:                                    ; preds = %766
  br label %773

; <label>:772:                                    ; preds = %682
  br label %773

; <label>:773:                                    ; preds = %772, %771
  %774 = load i64, i64* @number_of_occurs.0, align 8
  %775 = load i64, i64* @occurs_alloc.0, align 8
  %776 = icmp eq i64 %774, %775
  br i1 %776, label %779, label %777

; <label>:777:                                    ; preds = %773
  %778 = load %struct.OCCURS*, %struct.OCCURS** @occurs_table.0, align 8
  br label %790

; <label>:779:                                    ; preds = %773
  %780 = icmp ugt i64 %774, 288230376151711743
  br i1 %780, label %781, label %782

; <label>:781:                                    ; preds = %779
  call void @xalloc_die() #15
  unreachable

; <label>:782:                                    ; preds = %779
  %783 = shl i64 %774, 1
  %784 = or i64 %783, 1
  store i64 %784, i64* @occurs_alloc.0, align 8
  %785 = load i8*, i8** bitcast (%struct.OCCURS** @occurs_table.0 to i8**), align 8
  %786 = shl i64 %784, 5
  %787 = call i8* @xrealloc(i8* %785, i64 %786) #11
  store i8* %787, i8** bitcast (%struct.OCCURS** @occurs_table.0 to i8**), align 8
  %788 = bitcast i8* %787 to %struct.OCCURS*
  %789 = load i64, i64* @number_of_occurs.0, align 8
  br label %790

; <label>:790:                                    ; preds = %782, %777
  %791 = phi i64 [ %774, %777 ], [ %789, %782 ]
  %792 = phi %struct.OCCURS* [ %778, %777 ], [ %788, %782 ]
  %793 = getelementptr inbounds %struct.OCCURS, %struct.OCCURS* %792, i64 %791
  %794 = load i1, i1* @auto_reference, align 1
  br i1 %794, label %795, label %841

; <label>:795:                                    ; preds = %790
  %796 = icmp ult i8* %589, %514
  br i1 %796, label %797, label %835

; <label>:797:                                    ; preds = %795
  br label %803

; <label>:798:                                    ; preds = %819, %827
  %799 = phi i8* [ %828, %827 ], [ %820, %819 ]
  br label %800

; <label>:800:                                    ; preds = %798, %810
  %801 = phi i8* [ %813, %810 ], [ %799, %798 ]
  %802 = icmp ult i8* %801, %514
  br i1 %802, label %803, label %834

; <label>:803:                                    ; preds = %797, %800
  %804 = phi i8* [ %813, %800 ], [ %591, %797 ]
  %805 = phi i8* [ %801, %800 ], [ %589, %797 ]
  br label %806

; <label>:806:                                    ; preds = %830, %803
  %807 = phi i8* [ %805, %803 ], [ %831, %830 ]
  %808 = load i8, i8* %807, align 1
  %809 = icmp eq i8 %808, 10
  br i1 %809, label %810, label %830

; <label>:810:                                    ; preds = %806
  %811 = load i32, i32* @total_line_count, align 4
  %812 = add nsw i32 %811, 1
  store i32 %812, i32* @total_line_count, align 4
  %813 = getelementptr inbounds i8, i8* %807, i64 1
  %814 = load i8*, i8** %359, align 8
  %815 = icmp ult i8* %813, %814
  br i1 %815, label %816, label %800

; <label>:816:                                    ; preds = %810
  %817 = tail call i16** @__ctype_b_loc() #1
  %818 = load i16*, i16** %817, align 8
  br label %819

; <label>:819:                                    ; preds = %827, %816
  %820 = phi i8* [ %813, %816 ], [ %828, %827 ]
  %821 = load i8, i8* %820, align 1
  %822 = zext i8 %821 to i64
  %823 = getelementptr inbounds i16, i16* %818, i64 %822
  %824 = load i16, i16* %823, align 2
  %825 = and i16 %824, 8192
  %826 = icmp eq i16 %825, 0
  br i1 %826, label %827, label %798

; <label>:827:                                    ; preds = %819
  %828 = getelementptr inbounds i8, i8* %820, i64 1
  %829 = icmp ult i8* %828, %814
  br i1 %829, label %819, label %798

; <label>:830:                                    ; preds = %806
  %831 = getelementptr inbounds i8, i8* %807, i64 1
  %832 = icmp ult i8* %831, %514
  br i1 %832, label %806, label %833

; <label>:833:                                    ; preds = %830
  br label %835

; <label>:834:                                    ; preds = %800
  br label %835

; <label>:835:                                    ; preds = %834, %833, %795
  %836 = phi i8* [ %591, %795 ], [ %804, %833 ], [ %813, %834 ]
  %837 = phi i8* [ %589, %795 ], [ %831, %833 ], [ %801, %834 ]
  %838 = load i32, i32* @total_line_count, align 4
  %839 = getelementptr inbounds %struct.OCCURS, %struct.OCCURS* %792, i64 %791, i32 3
  store i32 %838, i32* %839, align 4
  %840 = load i1, i1* @input_reference, align 1
  br label %853

; <label>:841:                                    ; preds = %790
  %842 = load i1, i1* @input_reference, align 1
  br i1 %842, label %843, label %896

; <label>:843:                                    ; preds = %841
  %844 = ptrtoint i8* %591 to i64
  %845 = sub i64 %844, %522
  %846 = trunc i64 %845 to i32
  %847 = shl i32 %846, 16
  %848 = ashr exact i32 %847, 16
  %849 = getelementptr inbounds %struct.OCCURS, %struct.OCCURS* %792, i64 %791, i32 3
  store i32 %848, i32* %849, align 4
  %850 = load i32, i32* @reference_max_width, align 4
  %851 = icmp sgt i32 %590, %850
  br i1 %851, label %852, label %853

; <label>:852:                                    ; preds = %843
  store i32 %590, i32* @reference_max_width, align 4
  br label %853

; <label>:853:                                    ; preds = %852, %843, %835
  %854 = phi i1 [ %840, %835 ], [ true, %852 ], [ true, %843 ]
  %855 = phi i8* [ %837, %835 ], [ %589, %852 ], [ %589, %843 ]
  %856 = phi i8* [ %836, %835 ], [ %591, %852 ], [ %591, %843 ]
  %857 = icmp eq i8* %856, %451
  %858 = and i1 %854, %857
  br i1 %858, label %859, label %896

; <label>:859:                                    ; preds = %853
  %860 = icmp ult i8* %451, %433
  br i1 %860, label %861, label %874

; <label>:861:                                    ; preds = %859
  %862 = tail call i16** @__ctype_b_loc() #1
  %863 = load i16*, i16** %862, align 8
  br label %864

; <label>:864:                                    ; preds = %880, %861
  %865 = phi i8* [ %451, %861 ], [ %881, %880 ]
  %866 = load i8, i8* %865, align 1
  %867 = zext i8 %866 to i64
  %868 = getelementptr inbounds i16, i16* %863, i64 %867
  %869 = load i16, i16* %868, align 2
  %870 = and i16 %869, 8192
  %871 = icmp eq i16 %870, 0
  br i1 %871, label %880, label %872

; <label>:872:                                    ; preds = %864, %880
  %873 = phi i8* [ %865, %864 ], [ %881, %880 ]
  br label %874

; <label>:874:                                    ; preds = %872, %859
  %875 = phi i8* [ %451, %859 ], [ %873, %872 ]
  %876 = icmp ult i8* %875, %433
  br i1 %876, label %877, label %896

; <label>:877:                                    ; preds = %874
  %878 = tail call i16** @__ctype_b_loc() #1
  %879 = load i16*, i16** %878, align 8
  br label %883

; <label>:880:                                    ; preds = %864
  %881 = getelementptr inbounds i8, i8* %865, i64 1
  %882 = icmp ult i8* %881, %433
  br i1 %882, label %864, label %872

; <label>:883:                                    ; preds = %891, %877
  %884 = phi i8* [ %875, %877 ], [ %892, %891 ]
  %885 = load i8, i8* %884, align 1
  %886 = zext i8 %885 to i64
  %887 = getelementptr inbounds i16, i16* %879, i64 %886
  %888 = load i16, i16* %887, align 2
  %889 = and i16 %888, 8192
  %890 = icmp eq i16 %889, 0
  br i1 %890, label %894, label %891

; <label>:891:                                    ; preds = %883
  %892 = getelementptr inbounds i8, i8* %884, i64 1
  %893 = icmp ult i8* %892, %433
  br i1 %893, label %883, label %894

; <label>:894:                                    ; preds = %883, %891
  %895 = phi i8* [ %892, %891 ], [ %884, %883 ]
  br label %896

; <label>:896:                                    ; preds = %894, %874, %853, %841
  %897 = phi i8* [ %856, %853 ], [ %451, %874 ], [ %591, %841 ], [ %451, %894 ]
  %898 = phi i8* [ %855, %853 ], [ %855, %874 ], [ %589, %841 ], [ %855, %894 ]
  %899 = phi i8* [ %451, %853 ], [ %875, %874 ], [ %451, %841 ], [ %895, %894 ]
  %900 = bitcast %struct.OCCURS* %793 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %900, i8* nonnull %345, i64 16, i32 8, i1 false) #11
  %901 = ptrtoint i8* %899 to i64
  %902 = sub i64 %901, %522
  %903 = trunc i64 %902 to i16
  %904 = getelementptr inbounds %struct.OCCURS, %struct.OCCURS* %792, i64 %791, i32 1
  store i16 %903, i16* %904, align 8
  %905 = sub i64 %446, %522
  %906 = trunc i64 %905 to i16
  %907 = getelementptr inbounds %struct.OCCURS, %struct.OCCURS* %792, i64 %791, i32 2
  store i16 %906, i16* %907, align 2
  %908 = getelementptr inbounds %struct.OCCURS, %struct.OCCURS* %792, i64 %791, i32 4
  store i64 %349, i64* %908, align 8
  %909 = add i64 %791, 1
  store i64 %909, i64* @number_of_occurs.0, align 8
  br label %447

; <label>:910:                                    ; preds = %407
  br label %911

; <label>:911:                                    ; preds = %910, %402
  call void @llvm.lifetime.end(i64 16, i8* nonnull %345) #11
  %912 = load i32, i32* @total_line_count, align 4
  %913 = add nsw i32 %912, 1
  store i32 %913, i32* @total_line_count, align 4
  %914 = load i32*, i32** @file_line_count, align 8
  %915 = getelementptr inbounds i32, i32* %914, i64 %349
  store i32 %913, i32* %915, align 4
  %916 = add nuw i64 %349, 1
  %917 = load i32, i32* @number_input_files, align 4
  %918 = sext i32 %917 to i64
  %919 = icmp slt i64 %916, %918
  br i1 %919, label %348, label %920

; <label>:920:                                    ; preds = %911
  %921 = load i64, i64* @number_of_occurs.0, align 8
  %922 = icmp eq i64 %921, 0
  br i1 %922, label %925, label %923

; <label>:923:                                    ; preds = %920
  %924 = load i8*, i8** bitcast (%struct.OCCURS** @occurs_table.0 to i8**), align 8
  call void @qsort(i8* %924, i64 %921, i64 32, i32 (i8*, i8*)* nonnull @compare_occurs) #11
  br label %925

; <label>:925:                                    ; preds = %341, %920, %923
  %926 = getelementptr inbounds [12 x i8], [12 x i8]* %3, i64 0, i64 0
  call void @llvm.lifetime.start(i64 12, i8* nonnull %926) #11
  %927 = load i1, i1* @auto_reference, align 1
  br i1 %927, label %928, label %976

; <label>:928:                                    ; preds = %925
  store i32 0, i32* @reference_max_width, align 4
  %929 = load i32, i32* @number_input_files, align 4
  %930 = icmp eq i32 %929, 0
  br i1 %930, label %969, label %931

; <label>:931:                                    ; preds = %928
  br label %932

; <label>:932:                                    ; preds = %931, %962
  %933 = phi i64 [ %964, %962 ], [ 0, %931 ]
  %934 = load i32*, i32** @file_line_count, align 8
  %935 = getelementptr inbounds i32, i32* %934, i64 %933
  %936 = load i32, i32* %935, align 4
  %937 = add nsw i32 %936, 1
  %938 = icmp eq i64 %933, 0
  br i1 %938, label %944, label %939

; <label>:939:                                    ; preds = %932
  %940 = add i64 %933, -1
  %941 = getelementptr inbounds i32, i32* %934, i64 %940
  %942 = load i32, i32* %941, align 4
  %943 = sub nsw i32 %937, %942
  br label %944

; <label>:944:                                    ; preds = %939, %932
  %945 = phi i32 [ %943, %939 ], [ %937, %932 ]
  %946 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %926, i32 1, i64 12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.68, i64 0, i64 0), i32 %945) #11
  %947 = call i64 @strlen(i8* nonnull %926) #14
  %948 = load i8**, i8*** @input_file_name, align 8
  %949 = getelementptr inbounds i8*, i8** %948, i64 %933
  %950 = load i8*, i8** %949, align 8
  %951 = icmp eq i8* %950, null
  br i1 %951, label %956, label %952

; <label>:952:                                    ; preds = %944
  %953 = call i64 @strlen(i8* nonnull %950) #14
  %954 = and i64 %947, 4294967295
  %955 = add i64 %953, %954
  br label %956

; <label>:956:                                    ; preds = %952, %944
  %957 = phi i64 [ %955, %952 ], [ %947, %944 ]
  %958 = trunc i64 %957 to i32
  %959 = load i32, i32* @reference_max_width, align 4
  %960 = icmp sgt i32 %958, %959
  br i1 %960, label %961, label %962

; <label>:961:                                    ; preds = %956
  store i32 %958, i32* @reference_max_width, align 4
  br label %962

; <label>:962:                                    ; preds = %961, %956
  %963 = phi i32 [ %959, %956 ], [ %958, %961 ]
  %964 = add i64 %933, 1
  %965 = load i32, i32* @number_input_files, align 4
  %966 = sext i32 %965 to i64
  %967 = icmp ult i64 %964, %966
  br i1 %967, label %932, label %968

; <label>:968:                                    ; preds = %962
  br label %969

; <label>:969:                                    ; preds = %968, %928
  %970 = phi i32 [ 0, %928 ], [ %963, %968 ]
  %971 = add nsw i32 %970, 1
  store i32 %971, i32* @reference_max_width, align 4
  %972 = sext i32 %971 to i64
  %973 = add nsw i64 %972, 1
  %974 = call noalias i8* @xmalloc(i64 %973) #11
  store i8* %974, i8** getelementptr inbounds (%struct.BLOCK, %struct.BLOCK* @reference, i64 0, i32 0), align 8
  %975 = load i1, i1* @auto_reference, align 1
  br i1 %975, label %978, label %976

; <label>:976:                                    ; preds = %969, %925
  %977 = load i1, i1* @input_reference, align 1
  br i1 %977, label %978, label %986

; <label>:978:                                    ; preds = %976, %969
  %979 = load i1, i1* @right_reference, align 1
  br i1 %979, label %986, label %980

; <label>:980:                                    ; preds = %978
  %981 = load i32, i32* @reference_max_width, align 4
  %982 = load i32, i32* @gap_size, align 4
  %983 = load i32, i32* @line_width, align 4
  %984 = add i32 %982, %981
  %985 = sub i32 %983, %984
  store i32 %985, i32* @line_width, align 4
  br label %988

; <label>:986:                                    ; preds = %978, %976
  %987 = load i32, i32* @line_width, align 4
  br label %988

; <label>:988:                                    ; preds = %986, %980
  %989 = phi i32 [ %987, %986 ], [ %985, %980 ]
  %990 = icmp slt i32 %989, 0
  br i1 %990, label %991, label %992

; <label>:991:                                    ; preds = %988
  store i32 0, i32* @line_width, align 4
  br label %992

; <label>:992:                                    ; preds = %991, %988
  %993 = phi i32 [ 0, %991 ], [ %989, %988 ]
  %994 = sdiv i32 %993, 2
  store i32 %994, i32* @half_line_width, align 4
  %995 = load i32, i32* @gap_size, align 4
  %996 = sub nsw i32 %994, %995
  store i32 %996, i32* @before_max_width, align 4
  store i32 %994, i32* @keyafter_max_width, align 4
  %997 = load i8*, i8** @truncation_string, align 8
  %998 = icmp eq i8* %997, null
  br i1 %998, label %1005, label %999

; <label>:999:                                    ; preds = %992
  %1000 = load i8, i8* %997, align 1
  %1001 = icmp eq i8 %1000, 0
  br i1 %1001, label %1005, label %1002

; <label>:1002:                                   ; preds = %999
  %1003 = call i64 @strlen(i8* nonnull %997) #14
  %1004 = trunc i64 %1003 to i32
  store i32 %1004, i32* @truncation_string_length, align 4
  br label %1007

; <label>:1005:                                   ; preds = %999, %992
  store i8* null, i8** @truncation_string, align 8
  %1006 = load i32, i32* @truncation_string_length, align 4
  br label %1007

; <label>:1007:                                   ; preds = %1005, %1002
  %1008 = phi i32 [ %1006, %1005 ], [ %1004, %1002 ]
  %1009 = load i1, i1* @gnu_extensions, align 1
  %1010 = shl nsw i32 %1008, 1
  br i1 %1009, label %1015, label %1011

; <label>:1011:                                   ; preds = %1007
  %1012 = sub nsw i32 %996, %1010
  %1013 = icmp sgt i32 %1012, 0
  %1014 = select i1 %1013, i32 %1012, i32 0
  store i32 %1014, i32* @before_max_width, align 4
  br label %1017

; <label>:1015:                                   ; preds = %1007
  %1016 = or i32 %1010, 1
  br label %1017

; <label>:1017:                                   ; preds = %1015, %1011
  %1018 = phi i32 [ %1016, %1015 ], [ %1010, %1011 ]
  %1019 = sub nsw i32 %994, %1018
  store i32 %1019, i32* @keyafter_max_width, align 4
  %1020 = tail call i16** @__ctype_b_loc() #1
  %1021 = load i16*, i16** %1020, align 8
  br label %1022

; <label>:1022:                                   ; preds = %1022, %1017
  %1023 = phi i64 [ 0, %1017 ], [ %1057, %1022 ]
  %1024 = getelementptr inbounds i16, i16* %1021, i64 %1023
  %1025 = bitcast i16* %1024 to <8 x i16>*
  %1026 = load <8 x i16>, <8 x i16>* %1025, align 2
  %1027 = getelementptr i16, i16* %1024, i64 8
  %1028 = bitcast i16* %1027 to <8 x i16>*
  %1029 = load <8 x i16>, <8 x i16>* %1028, align 2
  %1030 = lshr <8 x i16> %1026, <i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13>
  %1031 = lshr <8 x i16> %1029, <i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13>
  %1032 = trunc <8 x i16> %1030 to <8 x i8>
  %1033 = trunc <8 x i16> %1031 to <8 x i8>
  %1034 = and <8 x i8> %1032, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  %1035 = and <8 x i8> %1033, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  %1036 = getelementptr inbounds [256 x i8], [256 x i8]* @edited_flag, i64 0, i64 %1023
  %1037 = bitcast i8* %1036 to <8 x i8>*
  store <8 x i8> %1034, <8 x i8>* %1037, align 16
  %1038 = getelementptr i8, i8* %1036, i64 8
  %1039 = bitcast i8* %1038 to <8 x i8>*
  store <8 x i8> %1035, <8 x i8>* %1039, align 8
  %1040 = or i64 %1023, 16
  %1041 = getelementptr inbounds i16, i16* %1021, i64 %1040
  %1042 = bitcast i16* %1041 to <8 x i16>*
  %1043 = load <8 x i16>, <8 x i16>* %1042, align 2
  %1044 = getelementptr i16, i16* %1041, i64 8
  %1045 = bitcast i16* %1044 to <8 x i16>*
  %1046 = load <8 x i16>, <8 x i16>* %1045, align 2
  %1047 = lshr <8 x i16> %1043, <i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13>
  %1048 = lshr <8 x i16> %1046, <i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13>
  %1049 = trunc <8 x i16> %1047 to <8 x i8>
  %1050 = trunc <8 x i16> %1048 to <8 x i8>
  %1051 = and <8 x i8> %1049, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  %1052 = and <8 x i8> %1050, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  %1053 = getelementptr inbounds [256 x i8], [256 x i8]* @edited_flag, i64 0, i64 %1040
  %1054 = bitcast i8* %1053 to <8 x i8>*
  store <8 x i8> %1051, <8 x i8>* %1054, align 16
  %1055 = getelementptr i8, i8* %1053, i64 8
  %1056 = bitcast i8* %1055 to <8 x i8>*
  store <8 x i8> %1052, <8 x i8>* %1056, align 8
  %1057 = add nsw i64 %1023, 32
  %1058 = icmp eq i64 %1057, 256
  br i1 %1058, label %1059, label %1022

; <label>:1059:                                   ; preds = %1022
  store i8 1, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @edited_flag, i64 0, i64 12), align 4
  %1060 = load i32, i32* @output_format, align 4
  switch i32 %1060, label %1088 [
    i32 3, label %1061
    i32 2, label %1087
  ]

; <label>:1061:                                   ; preds = %1059
  store i8 1, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @edited_flag, i64 0, i64 95), align 1
  store i8 1, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @edited_flag, i64 0, i64 123), align 1
  store i8 1, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @edited_flag, i64 0, i64 125), align 1
  store i8 1, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @edited_flag, i64 0, i64 92), align 4
  store i32 16843009, i32* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @edited_flag, i64 0, i64 35) to i32*), align 1
  br label %1062

; <label>:1062:                                   ; preds = %1061
  %1063 = load <16 x i8>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @diacrit_diac, i64 0, i64 128) to <16 x i8>*), align 1
  %1064 = load <16 x i8>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @diacrit_diac, i64 0, i64 144) to <16 x i8>*), align 1
  %1065 = icmp ne <16 x i8> %1063, zeroinitializer
  %1066 = icmp ne <16 x i8> %1064, zeroinitializer
  %1067 = zext <16 x i1> %1065 to <16 x i8>
  %1068 = zext <16 x i1> %1066 to <16 x i8>
  store <16 x i8> %1067, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @edited_flag, i64 0, i64 128) to <16 x i8>*), align 16
  store <16 x i8> %1068, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @edited_flag, i64 0, i64 144) to <16 x i8>*), align 16
  %1069 = load <16 x i8>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @diacrit_diac, i64 0, i64 160) to <16 x i8>*), align 1
  %1070 = load <16 x i8>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @diacrit_diac, i64 0, i64 176) to <16 x i8>*), align 1
  %1071 = icmp ne <16 x i8> %1069, zeroinitializer
  %1072 = icmp ne <16 x i8> %1070, zeroinitializer
  %1073 = zext <16 x i1> %1071 to <16 x i8>
  %1074 = zext <16 x i1> %1072 to <16 x i8>
  store <16 x i8> %1073, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @edited_flag, i64 0, i64 160) to <16 x i8>*), align 16
  store <16 x i8> %1074, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @edited_flag, i64 0, i64 176) to <16 x i8>*), align 16
  %1075 = load <16 x i8>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @diacrit_diac, i64 0, i64 192) to <16 x i8>*), align 1
  %1076 = load <16 x i8>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @diacrit_diac, i64 0, i64 208) to <16 x i8>*), align 1
  %1077 = icmp ne <16 x i8> %1075, zeroinitializer
  %1078 = icmp ne <16 x i8> %1076, zeroinitializer
  %1079 = zext <16 x i1> %1077 to <16 x i8>
  %1080 = zext <16 x i1> %1078 to <16 x i8>
  store <16 x i8> %1079, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @edited_flag, i64 0, i64 192) to <16 x i8>*), align 16
  store <16 x i8> %1080, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @edited_flag, i64 0, i64 208) to <16 x i8>*), align 16
  %1081 = load <16 x i8>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @diacrit_diac, i64 0, i64 224) to <16 x i8>*), align 1
  %1082 = load <16 x i8>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @diacrit_diac, i64 0, i64 240) to <16 x i8>*), align 1
  %1083 = icmp ne <16 x i8> %1081, zeroinitializer
  %1084 = icmp ne <16 x i8> %1082, zeroinitializer
  %1085 = zext <16 x i1> %1083 to <16 x i8>
  %1086 = zext <16 x i1> %1084 to <16 x i8>
  store <16 x i8> %1085, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @edited_flag, i64 0, i64 224) to <16 x i8>*), align 16
  store <16 x i8> %1086, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @edited_flag, i64 0, i64 240) to <16 x i8>*), align 16
  br label %1088

; <label>:1087:                                   ; preds = %1059
  store i8 1, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @edited_flag, i64 0, i64 34), align 2
  br label %1088

; <label>:1088:                                   ; preds = %1062, %1059, %1087
  call void @llvm.lifetime.end(i64 12, i8* nonnull %926) #11
  call void @llvm.memset.p0i8.i64(i8* bitcast (%struct.BLOCK* @tail to i8*), i8 0, i64 16, i32 8, i1 false) #11
  store i32 0, i32* @tail_truncation, align 4
  call void @llvm.memset.p0i8.i64(i8* bitcast (%struct.BLOCK* @head to i8*), i8 0, i64 16, i32 8, i1 false) #11
  store i32 0, i32* @head_truncation, align 4
  %1089 = load i64, i64* @number_of_occurs.0, align 8
  %1090 = icmp eq i64 %1089, 0
  br i1 %1090, label %2236, label %1091

; <label>:1091:                                   ; preds = %1088
  %1092 = load %struct.OCCURS*, %struct.OCCURS** @occurs_table.0, align 8
  br label %1093

; <label>:1093:                                   ; preds = %2230, %1091
  %1094 = phi %struct.OCCURS* [ %2231, %2230 ], [ %1092, %1091 ]
  %1095 = phi i64 [ %2232, %2230 ], [ 0, %1091 ]
  %1096 = getelementptr inbounds %struct.OCCURS, %struct.OCCURS* %1094, i64 0, i32 0, i32 0
  %1097 = load i8*, i8** %1096, align 8
  store i8* %1097, i8** getelementptr inbounds (%struct.BLOCK, %struct.BLOCK* @keyafter, i64 0, i32 0), align 8
  %1098 = getelementptr inbounds %struct.OCCURS, %struct.OCCURS* %1094, i64 0, i32 0, i32 1
  %1099 = load i16, i16* %1098, align 8
  %1100 = sext i16 %1099 to i64
  %1101 = getelementptr inbounds i8, i8* %1097, i64 %1100
  store i8* %1101, i8** getelementptr inbounds (%struct.BLOCK, %struct.BLOCK* @keyafter, i64 0, i32 1), align 8
  %1102 = getelementptr inbounds %struct.OCCURS, %struct.OCCURS* %1094, i64 0, i32 1
  %1103 = load i16, i16* %1102, align 8
  %1104 = sext i16 %1103 to i64
  %1105 = getelementptr inbounds i8, i8* %1097, i64 %1104
  %1106 = getelementptr inbounds %struct.OCCURS, %struct.OCCURS* %1094, i64 0, i32 2
  %1107 = load i16, i16* %1106, align 2
  %1108 = sext i16 %1107 to i64
  %1109 = getelementptr inbounds i8, i8* %1097, i64 %1108
  %1110 = load %struct.BLOCK*, %struct.BLOCK** @text_buffers, align 8
  %1111 = getelementptr inbounds %struct.OCCURS, %struct.OCCURS* %1094, i64 0, i32 4
  %1112 = load i64, i64* %1111, align 8
  %1113 = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %1110, i64 %1112, i32 0
  %1114 = load i8*, i8** %1113, align 8
  %1115 = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %1110, i64 %1112, i32 1
  %1116 = load i8*, i8** %1115, align 8
  %1117 = icmp slt i16 %1099, %1107
  br i1 %1117, label %1118, label %1172

; <label>:1118:                                   ; preds = %1093
  %1119 = ptrtoint i8* %1109 to i64
  br label %1120

; <label>:1120:                                   ; preds = %1165, %1118
  %1121 = phi i8* [ %1097, %1118 ], [ %1166, %1165 ]
  %1122 = phi i8* [ %1101, %1118 ], [ %1167, %1165 ]
  %1123 = load i32, i32* @keyafter_max_width, align 4
  %1124 = sext i32 %1123 to i64
  %1125 = getelementptr inbounds i8, i8* %1121, i64 %1124
  %1126 = icmp ugt i8* %1122, %1125
  br i1 %1126, label %1169, label %1127

; <label>:1127:                                   ; preds = %1120
  store i8* %1122, i8** getelementptr inbounds (%struct.BLOCK, %struct.BLOCK* @keyafter, i64 0, i32 1), align 8
  %1128 = load i8*, i8** getelementptr inbounds (%struct.regex_data, %struct.regex_data* @word_regex, i64 0, i32 0), align 8
  %1129 = icmp eq i8* %1128, null
  br i1 %1129, label %1143, label %1130

; <label>:1130:                                   ; preds = %1127
  %1131 = ptrtoint i8* %1122 to i64
  %1132 = sub i64 %1119, %1131
  %1133 = trunc i64 %1132 to i32
  %1134 = call i32 @re_match(%struct.re_pattern_buffer* getelementptr inbounds (%struct.regex_data, %struct.regex_data* @word_regex, i64 0, i32 1), i8* %1122, i32 %1133, i32 0, %struct.re_registers* null) #11
  %1135 = icmp eq i32 %1134, -2
  br i1 %1135, label %1136, label %1137

; <label>:1136:                                   ; preds = %1130
  call fastcc void @matcher_error() #15
  unreachable

; <label>:1137:                                   ; preds = %1130
  %1138 = icmp eq i32 %1134, -1
  %1139 = sext i32 %1134 to i64
  %1140 = select i1 %1138, i64 1, i64 %1139
  %1141 = getelementptr inbounds i8, i8* %1122, i64 %1140
  %1142 = load i8*, i8** getelementptr inbounds (%struct.BLOCK, %struct.BLOCK* @keyafter, i64 0, i32 0), align 8
  br label %1165

; <label>:1143:                                   ; preds = %1127
  %1144 = load i8, i8* %1122, align 1
  %1145 = zext i8 %1144 to i64
  %1146 = getelementptr inbounds [256 x i8], [256 x i8]* @word_fastmap, i64 0, i64 %1145
  %1147 = load i8, i8* %1146, align 1
  %1148 = icmp eq i8 %1147, 0
  br i1 %1148, label %1162, label %1149

; <label>:1149:                                   ; preds = %1143
  %1150 = icmp ult i8* %1122, %1109
  br i1 %1150, label %1151, label %1165

; <label>:1151:                                   ; preds = %1149
  br label %1152

; <label>:1152:                                   ; preds = %1151, %1156
  %1153 = phi i8* [ %1154, %1156 ], [ %1122, %1151 ]
  %1154 = getelementptr inbounds i8, i8* %1153, i64 1
  %1155 = icmp ult i8* %1154, %1109
  br i1 %1155, label %1156, label %1164

; <label>:1156:                                   ; preds = %1152
  %1157 = load i8, i8* %1154, align 1
  %1158 = zext i8 %1157 to i64
  %1159 = getelementptr inbounds [256 x i8], [256 x i8]* @word_fastmap, i64 0, i64 %1158
  %1160 = load i8, i8* %1159, align 1
  %1161 = icmp eq i8 %1160, 0
  br i1 %1161, label %1164, label %1152

; <label>:1162:                                   ; preds = %1143
  %1163 = getelementptr inbounds i8, i8* %1122, i64 1
  br label %1165

; <label>:1164:                                   ; preds = %1152, %1156
  br label %1165

; <label>:1165:                                   ; preds = %1164, %1162, %1149, %1137
  %1166 = phi i8* [ %1142, %1137 ], [ %1121, %1162 ], [ %1121, %1149 ], [ %1121, %1164 ]
  %1167 = phi i8* [ %1141, %1137 ], [ %1163, %1162 ], [ %1122, %1149 ], [ %1154, %1164 ]
  %1168 = icmp ult i8* %1167, %1109
  br i1 %1168, label %1120, label %1169

; <label>:1169:                                   ; preds = %1120, %1165
  %1170 = phi i8* [ %1121, %1120 ], [ %1166, %1165 ]
  %1171 = phi i8* [ %1122, %1120 ], [ %1167, %1165 ]
  br label %1172

; <label>:1172:                                   ; preds = %1169, %1093
  %1173 = phi i8* [ %1097, %1093 ], [ %1170, %1169 ]
  %1174 = phi i8* [ %1101, %1093 ], [ %1171, %1169 ]
  %1175 = load i32, i32* @keyafter_max_width, align 4
  %1176 = sext i32 %1175 to i64
  %1177 = getelementptr inbounds i8, i8* %1173, i64 %1176
  %1178 = icmp ugt i8* %1174, %1177
  br i1 %1178, label %1179, label %1181

; <label>:1179:                                   ; preds = %1172
  %1180 = load i8*, i8** getelementptr inbounds (%struct.BLOCK, %struct.BLOCK* @keyafter, i64 0, i32 1), align 8
  br label %1182

; <label>:1181:                                   ; preds = %1172
  store i8* %1174, i8** getelementptr inbounds (%struct.BLOCK, %struct.BLOCK* @keyafter, i64 0, i32 1), align 8
  br label %1182

; <label>:1182:                                   ; preds = %1181, %1179
  %1183 = phi i8* [ %1180, %1179 ], [ %1174, %1181 ]
  %1184 = load i8*, i8** @truncation_string, align 8
  %1185 = icmp ult i8* %1183, %1109
  %1186 = icmp ne i8* %1184, null
  %1187 = and i1 %1185, %1186
  %1188 = zext i1 %1187 to i32
  store i32 %1188, i32* @keyafter_truncation, align 4
  %1189 = icmp ugt i8* %1183, %1173
  br i1 %1189, label %1190, label %1204

; <label>:1190:                                   ; preds = %1182
  %1191 = load i16*, i16** %1020, align 8
  br label %1192

; <label>:1192:                                   ; preds = %1201, %1190
  %1193 = phi i8* [ %1183, %1190 ], [ %1194, %1201 ]
  %1194 = getelementptr inbounds i8, i8* %1193, i64 -1
  %1195 = load i8, i8* %1194, align 1
  %1196 = zext i8 %1195 to i64
  %1197 = getelementptr inbounds i16, i16* %1191, i64 %1196
  %1198 = load i16, i16* %1197, align 2
  %1199 = and i16 %1198, 8192
  %1200 = icmp eq i16 %1199, 0
  br i1 %1200, label %1203, label %1201

; <label>:1201:                                   ; preds = %1192
  store i8* %1194, i8** getelementptr inbounds (%struct.BLOCK, %struct.BLOCK* @keyafter, i64 0, i32 1), align 8
  %1202 = icmp ugt i8* %1194, %1173
  br i1 %1202, label %1192, label %1203

; <label>:1203:                                   ; preds = %1192, %1201
  br label %1204

; <label>:1204:                                   ; preds = %1203, %1182
  %1205 = load i16, i16* %1102, align 8
  %1206 = sext i16 %1205 to i32
  %1207 = sub nsw i32 0, %1206
  %1208 = load i32, i32* @half_line_width, align 4
  %1209 = load i32, i32* @maximum_word_length, align 4
  %1210 = add nsw i32 %1209, %1208
  %1211 = icmp slt i32 %1210, %1207
  br i1 %1211, label %1212, label %1249

; <label>:1212:                                   ; preds = %1204
  %1213 = sext i32 %1210 to i64
  %1214 = sub nsw i64 0, %1213
  %1215 = getelementptr inbounds i8, i8* %1173, i64 %1214
  %1216 = load i8*, i8** getelementptr inbounds (%struct.regex_data, %struct.regex_data* @word_regex, i64 0, i32 0), align 8
  %1217 = icmp eq i8* %1216, null
  br i1 %1217, label %1228, label %1218

; <label>:1218:                                   ; preds = %1212
  %1219 = call i32 @re_match(%struct.re_pattern_buffer* getelementptr inbounds (%struct.regex_data, %struct.regex_data* @word_regex, i64 0, i32 1), i8* %1215, i32 %1210, i32 0, %struct.re_registers* null) #11
  %1220 = icmp eq i32 %1219, -2
  br i1 %1220, label %1221, label %1222

; <label>:1221:                                   ; preds = %1218
  call fastcc void @matcher_error() #15
  unreachable

; <label>:1222:                                   ; preds = %1218
  %1223 = icmp eq i32 %1219, -1
  %1224 = sext i32 %1219 to i64
  %1225 = select i1 %1223, i64 1, i64 %1224
  %1226 = getelementptr inbounds i8, i8* %1215, i64 %1225
  %1227 = load i8*, i8** getelementptr inbounds (%struct.BLOCK, %struct.BLOCK* @keyafter, i64 0, i32 0), align 8
  br label %1253

; <label>:1228:                                   ; preds = %1212
  %1229 = load i8, i8* %1215, align 1
  %1230 = zext i8 %1229 to i64
  %1231 = getelementptr inbounds [256 x i8], [256 x i8]* @word_fastmap, i64 0, i64 %1230
  %1232 = load i8, i8* %1231, align 1
  %1233 = icmp eq i8 %1232, 0
  br i1 %1233, label %1247, label %1234

; <label>:1234:                                   ; preds = %1228
  %1235 = icmp slt i32 %1210, 1
  br i1 %1235, label %1253, label %1236

; <label>:1236:                                   ; preds = %1234
  br label %1237

; <label>:1237:                                   ; preds = %1236, %1241
  %1238 = phi i8* [ %1239, %1241 ], [ %1215, %1236 ]
  %1239 = getelementptr inbounds i8, i8* %1238, i64 1
  %1240 = icmp ult i8* %1239, %1173
  br i1 %1240, label %1241, label %1252

; <label>:1241:                                   ; preds = %1237
  %1242 = load i8, i8* %1239, align 1
  %1243 = zext i8 %1242 to i64
  %1244 = getelementptr inbounds [256 x i8], [256 x i8]* @word_fastmap, i64 0, i64 %1243
  %1245 = load i8, i8* %1244, align 1
  %1246 = icmp eq i8 %1245, 0
  br i1 %1246, label %1252, label %1237

; <label>:1247:                                   ; preds = %1228
  %1248 = getelementptr inbounds i8, i8* %1215, i64 1
  br label %1253

; <label>:1249:                                   ; preds = %1204
  %1250 = sext i16 %1205 to i64
  %1251 = getelementptr inbounds i8, i8* %1173, i64 %1250
  br label %1253

; <label>:1252:                                   ; preds = %1237, %1241
  br label %1253

; <label>:1253:                                   ; preds = %1252, %1249, %1247, %1234, %1222
  %1254 = phi i8* [ %1227, %1222 ], [ %1173, %1247 ], [ %1173, %1249 ], [ %1173, %1234 ], [ %1173, %1252 ]
  %1255 = phi i8* [ %1226, %1222 ], [ %1248, %1247 ], [ %1251, %1249 ], [ %1215, %1234 ], [ %1239, %1252 ]
  store i8* %1255, i8** getelementptr inbounds (%struct.BLOCK, %struct.BLOCK* @before, i64 0, i32 0), align 8
  %1256 = ptrtoint i8* %1255 to i64
  br label %1257

; <label>:1257:                                   ; preds = %1260, %1253
  %1258 = phi i8* [ %1254, %1253 ], [ %1262, %1260 ]
  %1259 = icmp ugt i8* %1258, %1255
  br i1 %1259, label %1260, label %1269

; <label>:1260:                                   ; preds = %1257
  %1261 = load i16*, i16** %1020, align 8
  %1262 = getelementptr inbounds i8, i8* %1258, i64 -1
  %1263 = load i8, i8* %1262, align 1
  %1264 = zext i8 %1263 to i64
  %1265 = getelementptr inbounds i16, i16* %1261, i64 %1264
  %1266 = load i16, i16* %1265, align 2
  %1267 = and i16 %1266, 8192
  %1268 = icmp eq i16 %1267, 0
  br i1 %1268, label %1269, label %1257

; <label>:1269:                                   ; preds = %1260, %1257
  store i8* %1258, i8** getelementptr inbounds (%struct.BLOCK, %struct.BLOCK* @before, i64 0, i32 1), align 8
  %1270 = load i32, i32* @before_max_width, align 4
  %1271 = sext i32 %1270 to i64
  %1272 = getelementptr inbounds i8, i8* %1255, i64 %1271
  %1273 = icmp ult i8* %1272, %1258
  %1274 = ptrtoint i8* %1258 to i64
  br i1 %1273, label %1275, label %1338

; <label>:1275:                                   ; preds = %1269
  br label %1276

; <label>:1276:                                   ; preds = %1275, %1328
  %1277 = phi i64 [ %1329, %1328 ], [ %1256, %1275 ]
  %1278 = phi i64 [ %1330, %1328 ], [ %1274, %1275 ]
  %1279 = phi i32 [ %1332, %1328 ], [ %1270, %1275 ]
  %1280 = phi i8* [ %1331, %1328 ], [ %1258, %1275 ]
  %1281 = phi i8* [ %1333, %1328 ], [ %1255, %1275 ]
  %1282 = load i8*, i8** getelementptr inbounds (%struct.regex_data, %struct.regex_data* @word_regex, i64 0, i32 0), align 8
  %1283 = icmp eq i8* %1282, null
  br i1 %1283, label %1302, label %1284

; <label>:1284:                                   ; preds = %1276
  %1285 = ptrtoint i8* %1280 to i64
  %1286 = ptrtoint i8* %1281 to i64
  %1287 = sub i64 %1285, %1286
  %1288 = trunc i64 %1287 to i32
  %1289 = call i32 @re_match(%struct.re_pattern_buffer* getelementptr inbounds (%struct.regex_data, %struct.regex_data* @word_regex, i64 0, i32 1), i8* %1281, i32 %1288, i32 0, %struct.re_registers* null) #11
  %1290 = icmp eq i32 %1289, -2
  br i1 %1290, label %1291, label %1292

; <label>:1291:                                   ; preds = %1284
  call fastcc void @matcher_error() #15
  unreachable

; <label>:1292:                                   ; preds = %1284
  %1293 = icmp eq i32 %1289, -1
  %1294 = load i8*, i8** getelementptr inbounds (%struct.BLOCK, %struct.BLOCK* @before, i64 0, i32 0), align 8
  %1295 = sext i32 %1289 to i64
  %1296 = select i1 %1293, i64 1, i64 %1295
  %1297 = getelementptr inbounds i8, i8* %1294, i64 %1296
  store i8* %1297, i8** getelementptr inbounds (%struct.BLOCK, %struct.BLOCK* @before, i64 0, i32 0), align 8
  %1298 = load i32, i32* @before_max_width, align 4
  %1299 = load i8*, i8** getelementptr inbounds (%struct.BLOCK, %struct.BLOCK* @before, i64 0, i32 1), align 8
  %1300 = ptrtoint i8* %1299 to i64
  %1301 = ptrtoint i8* %1297 to i64
  br label %1328

; <label>:1302:                                   ; preds = %1276
  %1303 = load i8, i8* %1281, align 1
  %1304 = zext i8 %1303 to i64
  %1305 = getelementptr inbounds [256 x i8], [256 x i8]* @word_fastmap, i64 0, i64 %1304
  %1306 = load i8, i8* %1305, align 1
  %1307 = icmp eq i8 %1306, 0
  br i1 %1307, label %1321, label %1308

; <label>:1308:                                   ; preds = %1302
  %1309 = icmp ult i8* %1281, %1280
  br i1 %1309, label %1310, label %1328

; <label>:1310:                                   ; preds = %1308
  br label %1311

; <label>:1311:                                   ; preds = %1310, %1315
  %1312 = phi i8* [ %1313, %1315 ], [ %1281, %1310 ]
  %1313 = getelementptr inbounds i8, i8* %1312, i64 1
  store i8* %1313, i8** getelementptr inbounds (%struct.BLOCK, %struct.BLOCK* @before, i64 0, i32 0), align 8
  %1314 = icmp ult i8* %1313, %1280
  br i1 %1314, label %1315, label %1326

; <label>:1315:                                   ; preds = %1311
  %1316 = load i8, i8* %1313, align 1
  %1317 = zext i8 %1316 to i64
  %1318 = getelementptr inbounds [256 x i8], [256 x i8]* @word_fastmap, i64 0, i64 %1317
  %1319 = load i8, i8* %1318, align 1
  %1320 = icmp eq i8 %1319, 0
  br i1 %1320, label %1324, label %1311

; <label>:1321:                                   ; preds = %1302
  %1322 = getelementptr inbounds i8, i8* %1281, i64 1
  store i8* %1322, i8** getelementptr inbounds (%struct.BLOCK, %struct.BLOCK* @before, i64 0, i32 0), align 8
  %1323 = ptrtoint i8* %1322 to i64
  br label %1328

; <label>:1324:                                   ; preds = %1315
  %1325 = ptrtoint i8* %1313 to i64
  br label %1328

; <label>:1326:                                   ; preds = %1311
  %1327 = ptrtoint i8* %1313 to i64
  br label %1328

; <label>:1328:                                   ; preds = %1326, %1324, %1321, %1308, %1292
  %1329 = phi i64 [ %1277, %1308 ], [ %1323, %1321 ], [ %1301, %1292 ], [ %1325, %1324 ], [ %1327, %1326 ]
  %1330 = phi i64 [ %1278, %1308 ], [ %1278, %1321 ], [ %1300, %1292 ], [ %1278, %1324 ], [ %1278, %1326 ]
  %1331 = phi i8* [ %1280, %1308 ], [ %1280, %1321 ], [ %1299, %1292 ], [ %1280, %1324 ], [ %1280, %1326 ]
  %1332 = phi i32 [ %1279, %1308 ], [ %1279, %1321 ], [ %1298, %1292 ], [ %1279, %1324 ], [ %1279, %1326 ]
  %1333 = phi i8* [ %1281, %1308 ], [ %1322, %1321 ], [ %1297, %1292 ], [ %1313, %1324 ], [ %1313, %1326 ]
  %1334 = sext i32 %1332 to i64
  %1335 = getelementptr inbounds i8, i8* %1333, i64 %1334
  %1336 = icmp ult i8* %1335, %1331
  br i1 %1336, label %1276, label %1337

; <label>:1337:                                   ; preds = %1328
  br label %1338

; <label>:1338:                                   ; preds = %1337, %1269
  %1339 = phi i64 [ %1256, %1269 ], [ %1329, %1337 ]
  %1340 = phi i64 [ %1274, %1269 ], [ %1330, %1337 ]
  %1341 = phi i32 [ %1270, %1269 ], [ %1332, %1337 ]
  %1342 = phi i8* [ %1255, %1269 ], [ %1333, %1337 ]
  %1343 = load i8*, i8** @truncation_string, align 8
  %1344 = icmp eq i8* %1343, null
  br i1 %1344, label %1361, label %1345

; <label>:1345:                                   ; preds = %1338
  br label %1346

; <label>:1346:                                   ; preds = %1345, %1349
  %1347 = phi i8* [ %1351, %1349 ], [ %1342, %1345 ]
  %1348 = icmp ugt i8* %1347, %1114
  br i1 %1348, label %1349, label %1358

; <label>:1349:                                   ; preds = %1346
  %1350 = load i16*, i16** %1020, align 8
  %1351 = getelementptr inbounds i8, i8* %1347, i64 -1
  %1352 = load i8, i8* %1351, align 1
  %1353 = zext i8 %1352 to i64
  %1354 = getelementptr inbounds i16, i16* %1350, i64 %1353
  %1355 = load i16, i16* %1354, align 2
  %1356 = and i16 %1355, 8192
  %1357 = icmp eq i16 %1356, 0
  br i1 %1357, label %1358, label %1346

; <label>:1358:                                   ; preds = %1349, %1346
  %1359 = icmp ugt i8* %1347, %1105
  %1360 = zext i1 %1359 to i32
  br label %1361

; <label>:1361:                                   ; preds = %1358, %1338
  %1362 = phi i32 [ %1360, %1358 ], [ 0, %1338 ]
  store i32 %1362, i32* @before_truncation, align 4
  %1363 = icmp ult i8* %1342, %1116
  br i1 %1363, label %1364, label %1381

; <label>:1364:                                   ; preds = %1361
  %1365 = load i16*, i16** %1020, align 8
  br label %1366

; <label>:1366:                                   ; preds = %1375, %1364
  %1367 = phi i64 [ %1339, %1364 ], [ %1378, %1375 ]
  %1368 = phi i8* [ %1342, %1364 ], [ %1376, %1375 ]
  %1369 = load i8, i8* %1368, align 1
  %1370 = zext i8 %1369 to i64
  %1371 = getelementptr inbounds i16, i16* %1365, i64 %1370
  %1372 = load i16, i16* %1371, align 2
  %1373 = and i16 %1372, 8192
  %1374 = icmp eq i16 %1373, 0
  br i1 %1374, label %1379, label %1375

; <label>:1375:                                   ; preds = %1366
  %1376 = getelementptr inbounds i8, i8* %1368, i64 1
  store i8* %1376, i8** getelementptr inbounds (%struct.BLOCK, %struct.BLOCK* @before, i64 0, i32 0), align 8
  %1377 = icmp ult i8* %1376, %1116
  %1378 = ptrtoint i8* %1376 to i64
  br i1 %1377, label %1366, label %1379

; <label>:1379:                                   ; preds = %1366, %1375
  %1380 = phi i64 [ %1378, %1375 ], [ %1367, %1366 ]
  br label %1381

; <label>:1381:                                   ; preds = %1379, %1361
  %1382 = phi i64 [ %1339, %1361 ], [ %1380, %1379 ]
  %1383 = zext i32 %1341 to i64
  %1384 = load i32, i32* @gap_size, align 4
  %1385 = zext i32 %1384 to i64
  %1386 = sub i64 %1383, %1340
  %1387 = add i64 %1386, %1382
  %1388 = sub i64 %1387, %1385
  %1389 = trunc i64 %1388 to i32
  %1390 = icmp sgt i32 %1389, 0
  br i1 %1390, label %1391, label %1496

; <label>:1391:                                   ; preds = %1381
  %1392 = load i8*, i8** getelementptr inbounds (%struct.BLOCK, %struct.BLOCK* @keyafter, i64 0, i32 1), align 8
  store i8* %1392, i8** getelementptr inbounds (%struct.BLOCK, %struct.BLOCK* @tail, i64 0, i32 0), align 8
  %1393 = icmp ult i8* %1392, %1116
  br i1 %1393, label %1394, label %1409

; <label>:1394:                                   ; preds = %1391
  %1395 = load i16*, i16** %1020, align 8
  br label %1396

; <label>:1396:                                   ; preds = %1404, %1394
  %1397 = phi i8* [ %1392, %1394 ], [ %1405, %1404 ]
  %1398 = load i8, i8* %1397, align 1
  %1399 = zext i8 %1398 to i64
  %1400 = getelementptr inbounds i16, i16* %1395, i64 %1399
  %1401 = load i16, i16* %1400, align 2
  %1402 = and i16 %1401, 8192
  %1403 = icmp eq i16 %1402, 0
  br i1 %1403, label %1407, label %1404

; <label>:1404:                                   ; preds = %1396
  %1405 = getelementptr inbounds i8, i8* %1397, i64 1
  store i8* %1405, i8** getelementptr inbounds (%struct.BLOCK, %struct.BLOCK* @tail, i64 0, i32 0), align 8
  %1406 = icmp ult i8* %1405, %1116
  br i1 %1406, label %1396, label %1407

; <label>:1407:                                   ; preds = %1396, %1404
  %1408 = phi i8* [ %1397, %1396 ], [ %1405, %1404 ]
  br label %1409

; <label>:1409:                                   ; preds = %1407, %1391
  %1410 = phi i8* [ %1392, %1391 ], [ %1408, %1407 ]
  store i8* %1410, i8** getelementptr inbounds (%struct.BLOCK, %struct.BLOCK* @tail, i64 0, i32 1), align 8
  %1411 = icmp ult i8* %1410, %1109
  %1412 = shl i64 %1388, 32
  %1413 = ashr exact i64 %1412, 32
  br i1 %1411, label %1414, label %1466

; <label>:1414:                                   ; preds = %1409
  %1415 = ptrtoint i8* %1109 to i64
  br label %1416

; <label>:1416:                                   ; preds = %1459, %1414
  %1417 = phi i8* [ %1410, %1414 ], [ %1460, %1459 ]
  %1418 = phi i8* [ %1410, %1414 ], [ %1461, %1459 ]
  %1419 = getelementptr inbounds i8, i8* %1417, i64 %1413
  %1420 = icmp ult i8* %1418, %1419
  br i1 %1420, label %1421, label %1463

; <label>:1421:                                   ; preds = %1416
  store i8* %1418, i8** getelementptr inbounds (%struct.BLOCK, %struct.BLOCK* @tail, i64 0, i32 1), align 8
  %1422 = load i8*, i8** getelementptr inbounds (%struct.regex_data, %struct.regex_data* @word_regex, i64 0, i32 0), align 8
  %1423 = icmp eq i8* %1422, null
  br i1 %1423, label %1437, label %1424

; <label>:1424:                                   ; preds = %1421
  %1425 = ptrtoint i8* %1418 to i64
  %1426 = sub i64 %1415, %1425
  %1427 = trunc i64 %1426 to i32
  %1428 = call i32 @re_match(%struct.re_pattern_buffer* getelementptr inbounds (%struct.regex_data, %struct.regex_data* @word_regex, i64 0, i32 1), i8* %1418, i32 %1427, i32 0, %struct.re_registers* null) #11
  %1429 = icmp eq i32 %1428, -2
  br i1 %1429, label %1430, label %1431

; <label>:1430:                                   ; preds = %1424
  call fastcc void @matcher_error() #15
  unreachable

; <label>:1431:                                   ; preds = %1424
  %1432 = icmp eq i32 %1428, -1
  %1433 = sext i32 %1428 to i64
  %1434 = select i1 %1432, i64 1, i64 %1433
  %1435 = getelementptr inbounds i8, i8* %1418, i64 %1434
  %1436 = load i8*, i8** getelementptr inbounds (%struct.BLOCK, %struct.BLOCK* @tail, i64 0, i32 0), align 8
  br label %1459

; <label>:1437:                                   ; preds = %1421
  %1438 = load i8, i8* %1418, align 1
  %1439 = zext i8 %1438 to i64
  %1440 = getelementptr inbounds [256 x i8], [256 x i8]* @word_fastmap, i64 0, i64 %1439
  %1441 = load i8, i8* %1440, align 1
  %1442 = icmp eq i8 %1441, 0
  br i1 %1442, label %1456, label %1443

; <label>:1443:                                   ; preds = %1437
  %1444 = icmp ult i8* %1418, %1109
  br i1 %1444, label %1445, label %1459

; <label>:1445:                                   ; preds = %1443
  br label %1446

; <label>:1446:                                   ; preds = %1445, %1450
  %1447 = phi i8* [ %1448, %1450 ], [ %1418, %1445 ]
  %1448 = getelementptr inbounds i8, i8* %1447, i64 1
  %1449 = icmp ult i8* %1448, %1109
  br i1 %1449, label %1450, label %1458

; <label>:1450:                                   ; preds = %1446
  %1451 = load i8, i8* %1448, align 1
  %1452 = zext i8 %1451 to i64
  %1453 = getelementptr inbounds [256 x i8], [256 x i8]* @word_fastmap, i64 0, i64 %1452
  %1454 = load i8, i8* %1453, align 1
  %1455 = icmp eq i8 %1454, 0
  br i1 %1455, label %1458, label %1446

; <label>:1456:                                   ; preds = %1437
  %1457 = getelementptr inbounds i8, i8* %1418, i64 1
  br label %1459

; <label>:1458:                                   ; preds = %1446, %1450
  br label %1459

; <label>:1459:                                   ; preds = %1458, %1456, %1443, %1431
  %1460 = phi i8* [ %1436, %1431 ], [ %1417, %1456 ], [ %1417, %1443 ], [ %1417, %1458 ]
  %1461 = phi i8* [ %1435, %1431 ], [ %1457, %1456 ], [ %1418, %1443 ], [ %1448, %1458 ]
  %1462 = icmp ult i8* %1461, %1109
  br i1 %1462, label %1416, label %1463

; <label>:1463:                                   ; preds = %1416, %1459
  %1464 = phi i8* [ %1417, %1416 ], [ %1460, %1459 ]
  %1465 = phi i8* [ %1418, %1416 ], [ %1461, %1459 ]
  br label %1466

; <label>:1466:                                   ; preds = %1463, %1409
  %1467 = phi i8* [ %1410, %1409 ], [ %1464, %1463 ]
  %1468 = phi i8* [ %1410, %1409 ], [ %1465, %1463 ]
  %1469 = getelementptr inbounds i8, i8* %1467, i64 %1413
  %1470 = icmp ult i8* %1468, %1469
  br i1 %1470, label %1473, label %1471

; <label>:1471:                                   ; preds = %1466
  %1472 = load i8*, i8** getelementptr inbounds (%struct.BLOCK, %struct.BLOCK* @tail, i64 0, i32 1), align 8
  br label %1474

; <label>:1473:                                   ; preds = %1466
  store i8* %1468, i8** getelementptr inbounds (%struct.BLOCK, %struct.BLOCK* @tail, i64 0, i32 1), align 8
  br label %1474

; <label>:1474:                                   ; preds = %1473, %1471
  %1475 = phi i8* [ %1472, %1471 ], [ %1468, %1473 ]
  %1476 = icmp ugt i8* %1475, %1467
  br i1 %1476, label %1478, label %1477

; <label>:1477:                                   ; preds = %1474
  store i32 0, i32* @tail_truncation, align 4
  br label %1498

; <label>:1478:                                   ; preds = %1474
  store i32 0, i32* @keyafter_truncation, align 4
  %1479 = load i8*, i8** @truncation_string, align 8
  %1480 = icmp ult i8* %1475, %1109
  %1481 = icmp ne i8* %1479, null
  %1482 = and i1 %1480, %1481
  %1483 = zext i1 %1482 to i32
  store i32 %1483, i32* @tail_truncation, align 4
  %1484 = load i16*, i16** %1020, align 8
  br label %1485

; <label>:1485:                                   ; preds = %1494, %1478
  %1486 = phi i8* [ %1475, %1478 ], [ %1487, %1494 ]
  %1487 = getelementptr inbounds i8, i8* %1486, i64 -1
  %1488 = load i8, i8* %1487, align 1
  %1489 = zext i8 %1488 to i64
  %1490 = getelementptr inbounds i16, i16* %1484, i64 %1489
  %1491 = load i16, i16* %1490, align 2
  %1492 = and i16 %1491, 8192
  %1493 = icmp eq i16 %1492, 0
  br i1 %1493, label %1497, label %1494

; <label>:1494:                                   ; preds = %1485
  store i8* %1487, i8** getelementptr inbounds (%struct.BLOCK, %struct.BLOCK* @tail, i64 0, i32 1), align 8
  %1495 = icmp ugt i8* %1487, %1467
  br i1 %1495, label %1485, label %1497

; <label>:1496:                                   ; preds = %1381
  call void @llvm.memset.p0i8.i64(i8* bitcast (%struct.BLOCK* @tail to i8*), i8 0, i64 16, i32 8, i1 false) #11
  store i32 0, i32* @tail_truncation, align 4
  br label %1498

; <label>:1497:                                   ; preds = %1485, %1494
  br label %1498

; <label>:1498:                                   ; preds = %1497, %1496, %1477
  %1499 = load i32, i32* @keyafter_max_width, align 4
  %1500 = zext i32 %1499 to i64
  %1501 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.BLOCK, %struct.BLOCK* @keyafter, i64 0, i32 1) to i64*), align 8
  %1502 = load i64, i64* bitcast (%struct.BLOCK* @keyafter to i64*), align 8
  %1503 = load i32, i32* @gap_size, align 4
  %1504 = zext i32 %1503 to i64
  %1505 = sub i64 %1500, %1501
  %1506 = add i64 %1505, %1502
  %1507 = sub i64 %1506, %1504
  %1508 = trunc i64 %1507 to i32
  %1509 = icmp sgt i32 %1508, 0
  br i1 %1509, label %1510, label %1601

; <label>:1510:                                   ; preds = %1498
  %1511 = load i8*, i8** getelementptr inbounds (%struct.BLOCK, %struct.BLOCK* @before, i64 0, i32 0), align 8
  br label %1512

; <label>:1512:                                   ; preds = %1515, %1510
  %1513 = phi i8* [ %1511, %1510 ], [ %1517, %1515 ]
  %1514 = icmp ugt i8* %1513, %1114
  br i1 %1514, label %1515, label %1524

; <label>:1515:                                   ; preds = %1512
  %1516 = load i16*, i16** %1020, align 8
  %1517 = getelementptr inbounds i8, i8* %1513, i64 -1
  %1518 = load i8, i8* %1517, align 1
  %1519 = zext i8 %1518 to i64
  %1520 = getelementptr inbounds i16, i16* %1516, i64 %1519
  %1521 = load i16, i16* %1520, align 2
  %1522 = and i16 %1521, 8192
  %1523 = icmp eq i16 %1522, 0
  br i1 %1523, label %1524, label %1512

; <label>:1524:                                   ; preds = %1515, %1512
  store i8* %1513, i8** getelementptr inbounds (%struct.BLOCK, %struct.BLOCK* @head, i64 0, i32 1), align 8
  store i8* %1255, i8** getelementptr inbounds (%struct.BLOCK, %struct.BLOCK* @head, i64 0, i32 0), align 8
  %1525 = shl i64 %1507, 32
  %1526 = ashr exact i64 %1525, 32
  %1527 = getelementptr inbounds i8, i8* %1255, i64 %1526
  %1528 = icmp ult i8* %1527, %1513
  br i1 %1528, label %1529, label %1578

; <label>:1529:                                   ; preds = %1524
  br label %1530

; <label>:1530:                                   ; preds = %1529, %1572
  %1531 = phi i8* [ %1573, %1572 ], [ %1513, %1529 ]
  %1532 = phi i8* [ %1574, %1572 ], [ %1255, %1529 ]
  %1533 = load i8*, i8** getelementptr inbounds (%struct.regex_data, %struct.regex_data* @word_regex, i64 0, i32 0), align 8
  %1534 = icmp eq i8* %1533, null
  br i1 %1534, label %1550, label %1535

; <label>:1535:                                   ; preds = %1530
  %1536 = ptrtoint i8* %1531 to i64
  %1537 = ptrtoint i8* %1532 to i64
  %1538 = sub i64 %1536, %1537
  %1539 = trunc i64 %1538 to i32
  %1540 = call i32 @re_match(%struct.re_pattern_buffer* getelementptr inbounds (%struct.regex_data, %struct.regex_data* @word_regex, i64 0, i32 1), i8* %1532, i32 %1539, i32 0, %struct.re_registers* null) #11
  %1541 = icmp eq i32 %1540, -2
  br i1 %1541, label %1542, label %1543

; <label>:1542:                                   ; preds = %1535
  call fastcc void @matcher_error() #15
  unreachable

; <label>:1543:                                   ; preds = %1535
  %1544 = icmp eq i32 %1540, -1
  %1545 = load i8*, i8** getelementptr inbounds (%struct.BLOCK, %struct.BLOCK* @head, i64 0, i32 0), align 8
  %1546 = sext i32 %1540 to i64
  %1547 = select i1 %1544, i64 1, i64 %1546
  %1548 = getelementptr inbounds i8, i8* %1545, i64 %1547
  store i8* %1548, i8** getelementptr inbounds (%struct.BLOCK, %struct.BLOCK* @head, i64 0, i32 0), align 8
  %1549 = load i8*, i8** getelementptr inbounds (%struct.BLOCK, %struct.BLOCK* @head, i64 0, i32 1), align 8
  br label %1572

; <label>:1550:                                   ; preds = %1530
  %1551 = load i8, i8* %1532, align 1
  %1552 = zext i8 %1551 to i64
  %1553 = getelementptr inbounds [256 x i8], [256 x i8]* @word_fastmap, i64 0, i64 %1552
  %1554 = load i8, i8* %1553, align 1
  %1555 = icmp eq i8 %1554, 0
  br i1 %1555, label %1569, label %1556

; <label>:1556:                                   ; preds = %1550
  %1557 = icmp ult i8* %1532, %1531
  br i1 %1557, label %1558, label %1572

; <label>:1558:                                   ; preds = %1556
  br label %1559

; <label>:1559:                                   ; preds = %1558, %1563
  %1560 = phi i8* [ %1561, %1563 ], [ %1532, %1558 ]
  %1561 = getelementptr inbounds i8, i8* %1560, i64 1
  store i8* %1561, i8** getelementptr inbounds (%struct.BLOCK, %struct.BLOCK* @head, i64 0, i32 0), align 8
  %1562 = icmp ult i8* %1561, %1531
  br i1 %1562, label %1563, label %1571

; <label>:1563:                                   ; preds = %1559
  %1564 = load i8, i8* %1561, align 1
  %1565 = zext i8 %1564 to i64
  %1566 = getelementptr inbounds [256 x i8], [256 x i8]* @word_fastmap, i64 0, i64 %1565
  %1567 = load i8, i8* %1566, align 1
  %1568 = icmp eq i8 %1567, 0
  br i1 %1568, label %1571, label %1559

; <label>:1569:                                   ; preds = %1550
  %1570 = getelementptr inbounds i8, i8* %1532, i64 1
  store i8* %1570, i8** getelementptr inbounds (%struct.BLOCK, %struct.BLOCK* @head, i64 0, i32 0), align 8
  br label %1572

; <label>:1571:                                   ; preds = %1559, %1563
  br label %1572

; <label>:1572:                                   ; preds = %1571, %1569, %1556, %1543
  %1573 = phi i8* [ %1531, %1556 ], [ %1531, %1569 ], [ %1549, %1543 ], [ %1531, %1571 ]
  %1574 = phi i8* [ %1532, %1556 ], [ %1570, %1569 ], [ %1548, %1543 ], [ %1561, %1571 ]
  %1575 = getelementptr inbounds i8, i8* %1574, i64 %1526
  %1576 = icmp ult i8* %1575, %1573
  br i1 %1576, label %1530, label %1577

; <label>:1577:                                   ; preds = %1572
  br label %1578

; <label>:1578:                                   ; preds = %1577, %1524
  %1579 = phi i8* [ %1255, %1524 ], [ %1574, %1577 ]
  %1580 = phi i8* [ %1513, %1524 ], [ %1573, %1577 ]
  %1581 = icmp ugt i8* %1580, %1579
  br i1 %1581, label %1583, label %1582

; <label>:1582:                                   ; preds = %1578
  store i32 0, i32* @head_truncation, align 4
  br label %1603

; <label>:1583:                                   ; preds = %1578
  store i32 0, i32* @before_truncation, align 4
  %1584 = load i8*, i8** @truncation_string, align 8
  %1585 = icmp ugt i8* %1579, %1105
  %1586 = icmp ne i8* %1584, null
  %1587 = and i1 %1585, %1586
  %1588 = zext i1 %1587 to i32
  store i32 %1588, i32* @head_truncation, align 4
  %1589 = load i16*, i16** %1020, align 8
  br label %1590

; <label>:1590:                                   ; preds = %1598, %1583
  %1591 = phi i8* [ %1579, %1583 ], [ %1599, %1598 ]
  %1592 = load i8, i8* %1591, align 1
  %1593 = zext i8 %1592 to i64
  %1594 = getelementptr inbounds i16, i16* %1589, i64 %1593
  %1595 = load i16, i16* %1594, align 2
  %1596 = and i16 %1595, 8192
  %1597 = icmp eq i16 %1596, 0
  br i1 %1597, label %1602, label %1598

; <label>:1598:                                   ; preds = %1590
  %1599 = getelementptr inbounds i8, i8* %1591, i64 1
  store i8* %1599, i8** getelementptr inbounds (%struct.BLOCK, %struct.BLOCK* @head, i64 0, i32 0), align 8
  %1600 = icmp ult i8* %1599, %1580
  br i1 %1600, label %1590, label %1602

; <label>:1601:                                   ; preds = %1498
  call void @llvm.memset.p0i8.i64(i8* bitcast (%struct.BLOCK* @head to i8*), i8 0, i64 16, i32 8, i1 false) #11
  store i32 0, i32* @head_truncation, align 4
  br label %1603

; <label>:1602:                                   ; preds = %1590, %1598
  br label %1603

; <label>:1603:                                   ; preds = %1602, %1601, %1582
  %1604 = load i1, i1* @auto_reference, align 1
  br i1 %1604, label %1605, label %1630

; <label>:1605:                                   ; preds = %1603
  %1606 = load i8**, i8*** @input_file_name, align 8
  %1607 = load i64, i64* %1111, align 8
  %1608 = getelementptr inbounds i8*, i8** %1606, i64 %1607
  %1609 = load i8*, i8** %1608, align 8
  %1610 = icmp ne i8* %1609, null
  %1611 = select i1 %1610, i8* %1609, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)
  %1612 = getelementptr inbounds %struct.OCCURS, %struct.OCCURS* %1094, i64 0, i32 3
  %1613 = load i32, i32* %1612, align 4
  %1614 = add nsw i32 %1613, 1
  %1615 = icmp eq i64 %1607, 0
  br i1 %1615, label %1622, label %1616

; <label>:1616:                                   ; preds = %1605
  %1617 = load i32*, i32** @file_line_count, align 8
  %1618 = add i64 %1607, -1
  %1619 = getelementptr inbounds i32, i32* %1617, i64 %1618
  %1620 = load i32, i32* %1619, align 4
  %1621 = sub nsw i32 %1614, %1620
  br label %1622

; <label>:1622:                                   ; preds = %1616, %1605
  %1623 = phi i32 [ %1621, %1616 ], [ %1614, %1605 ]
  %1624 = load i8*, i8** getelementptr inbounds (%struct.BLOCK, %struct.BLOCK* @reference, i64 0, i32 0), align 8
  %1625 = call i64 @llvm.objectsize.i64.p0i8(i8* %1624, i1 false) #11
  %1626 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %1624, i32 1, i64 %1625, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.70, i64 0, i64 0), i8* %1611, i32 %1623) #11
  %1627 = load i8*, i8** getelementptr inbounds (%struct.BLOCK, %struct.BLOCK* @reference, i64 0, i32 0), align 8
  %1628 = call i64 @strlen(i8* %1627) #14
  %1629 = getelementptr inbounds i8, i8* %1627, i64 %1628
  store i8* %1629, i8** getelementptr inbounds (%struct.BLOCK, %struct.BLOCK* @reference, i64 0, i32 1), align 8
  br label %1655

; <label>:1630:                                   ; preds = %1603
  %1631 = load i1, i1* @input_reference, align 1
  br i1 %1631, label %1632, label %1655

; <label>:1632:                                   ; preds = %1630
  %1633 = load i8*, i8** getelementptr inbounds (%struct.BLOCK, %struct.BLOCK* @keyafter, i64 0, i32 0), align 8
  %1634 = getelementptr inbounds %struct.OCCURS, %struct.OCCURS* %1094, i64 0, i32 3
  %1635 = load i32, i32* %1634, align 4
  %1636 = shl i32 %1635, 16
  %1637 = ashr exact i32 %1636, 16
  %1638 = sext i32 %1637 to i64
  %1639 = getelementptr inbounds i8, i8* %1633, i64 %1638
  store i8* %1639, i8** getelementptr inbounds (%struct.BLOCK, %struct.BLOCK* @reference, i64 0, i32 0), align 8
  store i8* %1639, i8** getelementptr inbounds (%struct.BLOCK, %struct.BLOCK* @reference, i64 0, i32 1), align 8
  %1640 = icmp ult i8* %1639, %1109
  br i1 %1640, label %1641, label %1655

; <label>:1641:                                   ; preds = %1632
  %1642 = load i16*, i16** %1020, align 8
  br label %1645

; <label>:1643:                                   ; preds = %1645
  store i8* %1653, i8** getelementptr inbounds (%struct.BLOCK, %struct.BLOCK* @reference, i64 0, i32 1), align 8
  %1644 = icmp ult i8* %1653, %1109
  br i1 %1644, label %1645, label %1654

; <label>:1645:                                   ; preds = %1643, %1641
  %1646 = phi i8* [ %1639, %1641 ], [ %1653, %1643 ]
  %1647 = load i8, i8* %1646, align 1
  %1648 = zext i8 %1647 to i64
  %1649 = getelementptr inbounds i16, i16* %1642, i64 %1648
  %1650 = load i16, i16* %1649, align 2
  %1651 = and i16 %1650, 8192
  %1652 = icmp eq i16 %1651, 0
  %1653 = getelementptr inbounds i8, i8* %1646, i64 1
  br i1 %1652, label %1643, label %1654

; <label>:1654:                                   ; preds = %1643, %1645
  br label %1655

; <label>:1655:                                   ; preds = %1654, %1632, %1630, %1622
  %1656 = load i32, i32* @output_format, align 4
  switch i32 %1656, label %2230 [
    i32 0, label %1657
    i32 1, label %1657
    i32 2, label %1994
    i32 3, label %2112
  ]

; <label>:1657:                                   ; preds = %1655, %1655
  %1658 = load i1, i1* @right_reference, align 1
  br i1 %1658, label %1731, label %1659

; <label>:1659:                                   ; preds = %1657
  %1660 = load i1, i1* @auto_reference, align 1
  %1661 = load i8*, i8** getelementptr inbounds (%struct.BLOCK, %struct.BLOCK* @reference, i64 0, i32 0), align 8
  %1662 = load i8*, i8** getelementptr inbounds (%struct.BLOCK, %struct.BLOCK* @reference, i64 0, i32 1), align 8
  call fastcc void @print_field(i8* %1661, i8* %1662) #11
  br i1 %1660, label %1663, label %1702

; <label>:1663:                                   ; preds = %1659
  %1664 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %1665 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1664, i64 0, i32 5
  %1666 = load i8*, i8** %1665, align 8
  %1667 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1664, i64 0, i32 6
  %1668 = load i8*, i8** %1667, align 8
  %1669 = icmp ult i8* %1666, %1668
  br i1 %1669, label %1672, label %1670

; <label>:1670:                                   ; preds = %1663
  %1671 = call i32 @__overflow(%struct._IO_FILE* %1664, i32 58) #11
  br label %1674

; <label>:1672:                                   ; preds = %1663
  %1673 = getelementptr inbounds i8, i8* %1666, i64 1
  store i8* %1673, i8** %1665, align 8
  store i8 58, i8* %1666, align 1
  br label %1674

; <label>:1674:                                   ; preds = %1672, %1670
  %1675 = load i32, i32* @reference_max_width, align 4
  %1676 = load i32, i32* @gap_size, align 4
  %1677 = add nsw i32 %1676, %1675
  %1678 = zext i32 %1677 to i64
  %1679 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.BLOCK, %struct.BLOCK* @reference, i64 0, i32 1) to i64*), align 8
  %1680 = load i64, i64* bitcast (%struct.BLOCK* @reference to i64*), align 8
  %1681 = sub i64 4294967295, %1679
  %1682 = add i64 %1681, %1680
  %1683 = add i64 %1682, %1678
  %1684 = trunc i64 %1683 to i32
  %1685 = icmp sgt i32 %1684, 0
  br i1 %1685, label %1686, label %1731

; <label>:1686:                                   ; preds = %1674
  br label %1687

; <label>:1687:                                   ; preds = %1686, %1699
  %1688 = phi i32 [ %1700, %1699 ], [ %1684, %1686 ]
  %1689 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %1690 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1689, i64 0, i32 5
  %1691 = load i8*, i8** %1690, align 8
  %1692 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1689, i64 0, i32 6
  %1693 = load i8*, i8** %1692, align 8
  %1694 = icmp ult i8* %1691, %1693
  br i1 %1694, label %1697, label %1695

; <label>:1695:                                   ; preds = %1687
  %1696 = call i32 @__overflow(%struct._IO_FILE* %1689, i32 32) #11
  br label %1699

; <label>:1697:                                   ; preds = %1687
  %1698 = getelementptr inbounds i8, i8* %1691, i64 1
  store i8* %1698, i8** %1690, align 8
  store i8 32, i8* %1691, align 1
  br label %1699

; <label>:1699:                                   ; preds = %1697, %1695
  %1700 = add nsw i32 %1688, -1
  %1701 = icmp sgt i32 %1688, 1
  br i1 %1701, label %1687, label %1729

; <label>:1702:                                   ; preds = %1659
  %1703 = load i32, i32* @reference_max_width, align 4
  %1704 = load i32, i32* @gap_size, align 4
  %1705 = add nsw i32 %1704, %1703
  %1706 = zext i32 %1705 to i64
  %1707 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.BLOCK, %struct.BLOCK* @reference, i64 0, i32 1) to i64*), align 8
  %1708 = load i64, i64* bitcast (%struct.BLOCK* @reference to i64*), align 8
  %1709 = sub i64 %1708, %1707
  %1710 = add i64 %1709, %1706
  %1711 = trunc i64 %1710 to i32
  %1712 = icmp sgt i32 %1711, 0
  br i1 %1712, label %1713, label %1731

; <label>:1713:                                   ; preds = %1702
  br label %1714

; <label>:1714:                                   ; preds = %1713, %1726
  %1715 = phi i32 [ %1727, %1726 ], [ %1711, %1713 ]
  %1716 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %1717 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1716, i64 0, i32 5
  %1718 = load i8*, i8** %1717, align 8
  %1719 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1716, i64 0, i32 6
  %1720 = load i8*, i8** %1719, align 8
  %1721 = icmp ult i8* %1718, %1720
  br i1 %1721, label %1724, label %1722

; <label>:1722:                                   ; preds = %1714
  %1723 = call i32 @__overflow(%struct._IO_FILE* %1716, i32 32) #11
  br label %1726

; <label>:1724:                                   ; preds = %1714
  %1725 = getelementptr inbounds i8, i8* %1718, i64 1
  store i8* %1725, i8** %1717, align 8
  store i8 32, i8* %1718, align 1
  br label %1726

; <label>:1726:                                   ; preds = %1724, %1722
  %1727 = add nsw i32 %1715, -1
  %1728 = icmp sgt i32 %1715, 1
  br i1 %1728, label %1714, label %1730

; <label>:1729:                                   ; preds = %1699
  br label %1731

; <label>:1730:                                   ; preds = %1726
  br label %1731

; <label>:1731:                                   ; preds = %1730, %1729, %1702, %1674, %1657
  %1732 = load i8*, i8** getelementptr inbounds (%struct.BLOCK, %struct.BLOCK* @tail, i64 0, i32 0), align 8
  %1733 = load i8*, i8** getelementptr inbounds (%struct.BLOCK, %struct.BLOCK* @tail, i64 0, i32 1), align 8
  %1734 = icmp ult i8* %1732, %1733
  br i1 %1734, label %1735, label %1785

; <label>:1735:                                   ; preds = %1731
  call fastcc void @print_field(i8* %1732, i8* %1733) #11
  %1736 = load i32, i32* @tail_truncation, align 4
  %1737 = icmp eq i32 %1736, 0
  br i1 %1737, label %1743, label %1738

; <label>:1738:                                   ; preds = %1735
  %1739 = load i8*, i8** @truncation_string, align 8
  %1740 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %1741 = call i32 @fputs_unlocked(i8* %1739, %struct._IO_FILE* %1740) #11
  %1742 = load i32, i32* @tail_truncation, align 4
  br label %1743

; <label>:1743:                                   ; preds = %1738, %1735
  %1744 = phi i32 [ 0, %1735 ], [ %1742, %1738 ]
  %1745 = load i32, i32* @half_line_width, align 4
  %1746 = load i32, i32* @gap_size, align 4
  %1747 = sub nsw i32 %1745, %1746
  %1748 = zext i32 %1747 to i64
  %1749 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.BLOCK, %struct.BLOCK* @before, i64 0, i32 1) to i64*), align 8
  %1750 = load i64, i64* bitcast (%struct.BLOCK* @before to i64*), align 8
  %1751 = load i32, i32* @before_truncation, align 4
  %1752 = icmp ne i32 %1751, 0
  %1753 = load i32, i32* @truncation_string_length, align 4
  %1754 = zext i32 %1753 to i64
  %1755 = sub nsw i64 0, %1754
  %1756 = select i1 %1752, i64 %1755, i64 0
  %1757 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.BLOCK, %struct.BLOCK* @tail, i64 0, i32 1) to i64*), align 8
  %1758 = load i64, i64* bitcast (%struct.BLOCK* @tail to i64*), align 8
  %1759 = icmp ne i32 %1744, 0
  %1760 = select i1 %1759, i64 %1755, i64 0
  %1761 = sub i64 %1750, %1749
  %1762 = add i64 %1761, %1748
  %1763 = sub i64 %1762, %1757
  %1764 = add i64 %1763, %1756
  %1765 = add i64 %1764, %1758
  %1766 = add i64 %1765, %1760
  %1767 = trunc i64 %1766 to i32
  %1768 = icmp sgt i32 %1767, 0
  br i1 %1768, label %1769, label %1821

; <label>:1769:                                   ; preds = %1743
  br label %1770

; <label>:1770:                                   ; preds = %1769, %1782
  %1771 = phi i32 [ %1783, %1782 ], [ %1767, %1769 ]
  %1772 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %1773 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1772, i64 0, i32 5
  %1774 = load i8*, i8** %1773, align 8
  %1775 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1772, i64 0, i32 6
  %1776 = load i8*, i8** %1775, align 8
  %1777 = icmp ult i8* %1774, %1776
  br i1 %1777, label %1780, label %1778

; <label>:1778:                                   ; preds = %1770
  %1779 = call i32 @__overflow(%struct._IO_FILE* %1772, i32 32) #11
  br label %1782

; <label>:1780:                                   ; preds = %1770
  %1781 = getelementptr inbounds i8, i8* %1774, i64 1
  store i8* %1781, i8** %1773, align 8
  store i8 32, i8* %1774, align 1
  br label %1782

; <label>:1782:                                   ; preds = %1780, %1778
  %1783 = add nsw i32 %1771, -1
  %1784 = icmp sgt i32 %1771, 1
  br i1 %1784, label %1770, label %1819

; <label>:1785:                                   ; preds = %1731
  %1786 = load i32, i32* @half_line_width, align 4
  %1787 = load i32, i32* @gap_size, align 4
  %1788 = sub nsw i32 %1786, %1787
  %1789 = zext i32 %1788 to i64
  %1790 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.BLOCK, %struct.BLOCK* @before, i64 0, i32 1) to i64*), align 8
  %1791 = load i64, i64* bitcast (%struct.BLOCK* @before to i64*), align 8
  %1792 = sub i64 %1791, %1790
  %1793 = add i64 %1792, %1789
  %1794 = load i32, i32* @before_truncation, align 4
  %1795 = icmp ne i32 %1794, 0
  %1796 = load i32, i32* @truncation_string_length, align 4
  %1797 = zext i32 %1796 to i64
  %1798 = sub nsw i64 0, %1797
  %1799 = select i1 %1795, i64 %1798, i64 0
  %1800 = add i64 %1793, %1799
  %1801 = trunc i64 %1800 to i32
  %1802 = icmp sgt i32 %1801, 0
  br i1 %1802, label %1803, label %1821

; <label>:1803:                                   ; preds = %1785
  br label %1804

; <label>:1804:                                   ; preds = %1803, %1816
  %1805 = phi i32 [ %1817, %1816 ], [ %1801, %1803 ]
  %1806 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %1807 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1806, i64 0, i32 5
  %1808 = load i8*, i8** %1807, align 8
  %1809 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1806, i64 0, i32 6
  %1810 = load i8*, i8** %1809, align 8
  %1811 = icmp ult i8* %1808, %1810
  br i1 %1811, label %1814, label %1812

; <label>:1812:                                   ; preds = %1804
  %1813 = call i32 @__overflow(%struct._IO_FILE* %1806, i32 32) #11
  br label %1816

; <label>:1814:                                   ; preds = %1804
  %1815 = getelementptr inbounds i8, i8* %1808, i64 1
  store i8* %1815, i8** %1807, align 8
  store i8 32, i8* %1808, align 1
  br label %1816

; <label>:1816:                                   ; preds = %1814, %1812
  %1817 = add nsw i32 %1805, -1
  %1818 = icmp sgt i32 %1805, 1
  br i1 %1818, label %1804, label %1820

; <label>:1819:                                   ; preds = %1782
  br label %1821

; <label>:1820:                                   ; preds = %1816
  br label %1821

; <label>:1821:                                   ; preds = %1820, %1819, %1785, %1743
  %1822 = load i32, i32* @before_truncation, align 4
  %1823 = icmp eq i32 %1822, 0
  br i1 %1823, label %1828, label %1824

; <label>:1824:                                   ; preds = %1821
  %1825 = load i8*, i8** @truncation_string, align 8
  %1826 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %1827 = call i32 @fputs_unlocked(i8* %1825, %struct._IO_FILE* %1826) #11
  br label %1828

; <label>:1828:                                   ; preds = %1824, %1821
  %1829 = load i8*, i8** getelementptr inbounds (%struct.BLOCK, %struct.BLOCK* @before, i64 0, i32 0), align 8
  %1830 = load i8*, i8** getelementptr inbounds (%struct.BLOCK, %struct.BLOCK* @before, i64 0, i32 1), align 8
  call fastcc void @print_field(i8* %1829, i8* %1830) #11
  %1831 = load i32, i32* @gap_size, align 4
  %1832 = icmp sgt i32 %1831, 0
  br i1 %1832, label %1833, label %1850

; <label>:1833:                                   ; preds = %1828
  br label %1834

; <label>:1834:                                   ; preds = %1833, %1846
  %1835 = phi i32 [ %1847, %1846 ], [ %1831, %1833 ]
  %1836 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %1837 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1836, i64 0, i32 5
  %1838 = load i8*, i8** %1837, align 8
  %1839 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1836, i64 0, i32 6
  %1840 = load i8*, i8** %1839, align 8
  %1841 = icmp ult i8* %1838, %1840
  br i1 %1841, label %1844, label %1842

; <label>:1842:                                   ; preds = %1834
  %1843 = call i32 @__overflow(%struct._IO_FILE* %1836, i32 32) #11
  br label %1846

; <label>:1844:                                   ; preds = %1834
  %1845 = getelementptr inbounds i8, i8* %1838, i64 1
  store i8* %1845, i8** %1837, align 8
  store i8 32, i8* %1838, align 1
  br label %1846

; <label>:1846:                                   ; preds = %1844, %1842
  %1847 = add nsw i32 %1835, -1
  %1848 = icmp sgt i32 %1835, 1
  br i1 %1848, label %1834, label %1849

; <label>:1849:                                   ; preds = %1846
  br label %1850

; <label>:1850:                                   ; preds = %1849, %1828
  %1851 = load i8*, i8** getelementptr inbounds (%struct.BLOCK, %struct.BLOCK* @keyafter, i64 0, i32 0), align 8
  %1852 = load i8*, i8** getelementptr inbounds (%struct.BLOCK, %struct.BLOCK* @keyafter, i64 0, i32 1), align 8
  call fastcc void @print_field(i8* %1851, i8* %1852) #11
  %1853 = load i32, i32* @keyafter_truncation, align 4
  %1854 = icmp eq i32 %1853, 0
  br i1 %1854, label %1859, label %1855

; <label>:1855:                                   ; preds = %1850
  %1856 = load i8*, i8** @truncation_string, align 8
  %1857 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %1858 = call i32 @fputs_unlocked(i8* %1856, %struct._IO_FILE* %1857) #11
  br label %1859

; <label>:1859:                                   ; preds = %1855, %1850
  %1860 = load i8*, i8** getelementptr inbounds (%struct.BLOCK, %struct.BLOCK* @head, i64 0, i32 0), align 8
  %1861 = load i8*, i8** getelementptr inbounds (%struct.BLOCK, %struct.BLOCK* @head, i64 0, i32 1), align 8
  %1862 = icmp ult i8* %1860, %1861
  br i1 %1862, label %1863, label %1915

; <label>:1863:                                   ; preds = %1859
  %1864 = load i32, i32* @half_line_width, align 4
  %1865 = zext i32 %1864 to i64
  %1866 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.BLOCK, %struct.BLOCK* @keyafter, i64 0, i32 1) to i64*), align 8
  %1867 = load i64, i64* bitcast (%struct.BLOCK* @keyafter to i64*), align 8
  %1868 = load i32, i32* @keyafter_truncation, align 4
  %1869 = icmp ne i32 %1868, 0
  %1870 = load i32, i32* @truncation_string_length, align 4
  %1871 = zext i32 %1870 to i64
  %1872 = sub nsw i64 0, %1871
  %1873 = select i1 %1869, i64 %1872, i64 0
  %1874 = ptrtoint i8* %1861 to i64
  %1875 = ptrtoint i8* %1860 to i64
  %1876 = load i32, i32* @head_truncation, align 4
  %1877 = icmp ne i32 %1876, 0
  %1878 = select i1 %1877, i64 %1872, i64 0
  %1879 = sub i64 %1875, %1874
  %1880 = sub i64 %1879, %1866
  %1881 = add i64 %1880, %1865
  %1882 = add i64 %1881, %1867
  %1883 = add i64 %1882, %1873
  %1884 = add i64 %1883, %1878
  %1885 = trunc i64 %1884 to i32
  %1886 = icmp sgt i32 %1885, 0
  br i1 %1886, label %1887, label %1905

; <label>:1887:                                   ; preds = %1863
  br label %1888

; <label>:1888:                                   ; preds = %1887, %1900
  %1889 = phi i32 [ %1901, %1900 ], [ %1885, %1887 ]
  %1890 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %1891 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1890, i64 0, i32 5
  %1892 = load i8*, i8** %1891, align 8
  %1893 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1890, i64 0, i32 6
  %1894 = load i8*, i8** %1893, align 8
  %1895 = icmp ult i8* %1892, %1894
  br i1 %1895, label %1898, label %1896

; <label>:1896:                                   ; preds = %1888
  %1897 = call i32 @__overflow(%struct._IO_FILE* %1890, i32 32) #11
  br label %1900

; <label>:1898:                                   ; preds = %1888
  %1899 = getelementptr inbounds i8, i8* %1892, i64 1
  store i8* %1899, i8** %1891, align 8
  store i8 32, i8* %1892, align 1
  br label %1900

; <label>:1900:                                   ; preds = %1898, %1896
  %1901 = add nsw i32 %1889, -1
  %1902 = icmp sgt i32 %1889, 1
  br i1 %1902, label %1888, label %1903

; <label>:1903:                                   ; preds = %1900
  %1904 = load i32, i32* @head_truncation, align 4
  br label %1905

; <label>:1905:                                   ; preds = %1903, %1863
  %1906 = phi i32 [ %1904, %1903 ], [ %1876, %1863 ]
  %1907 = icmp eq i32 %1906, 0
  br i1 %1907, label %1912, label %1908

; <label>:1908:                                   ; preds = %1905
  %1909 = load i8*, i8** @truncation_string, align 8
  %1910 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %1911 = call i32 @fputs_unlocked(i8* %1909, %struct._IO_FILE* %1910) #11
  br label %1912

; <label>:1912:                                   ; preds = %1908, %1905
  %1913 = load i8*, i8** getelementptr inbounds (%struct.BLOCK, %struct.BLOCK* @head, i64 0, i32 0), align 8
  %1914 = load i8*, i8** getelementptr inbounds (%struct.BLOCK, %struct.BLOCK* @head, i64 0, i32 1), align 8
  call fastcc void @print_field(i8* %1913, i8* %1914) #11
  br label %1954

; <label>:1915:                                   ; preds = %1859
  %1916 = load i1, i1* @auto_reference, align 1
  br i1 %1916, label %1919, label %1917

; <label>:1917:                                   ; preds = %1915
  %1918 = load i1, i1* @input_reference, align 1
  br i1 %1918, label %1919, label %1954

; <label>:1919:                                   ; preds = %1917, %1915
  %1920 = load i1, i1* @right_reference, align 1
  br i1 %1920, label %1921, label %1954

; <label>:1921:                                   ; preds = %1919
  %1922 = load i32, i32* @half_line_width, align 4
  %1923 = zext i32 %1922 to i64
  %1924 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.BLOCK, %struct.BLOCK* @keyafter, i64 0, i32 1) to i64*), align 8
  %1925 = load i64, i64* bitcast (%struct.BLOCK* @keyafter to i64*), align 8
  %1926 = load i32, i32* @keyafter_truncation, align 4
  %1927 = icmp ne i32 %1926, 0
  %1928 = load i32, i32* @truncation_string_length, align 4
  %1929 = zext i32 %1928 to i64
  %1930 = sub nsw i64 0, %1929
  %1931 = select i1 %1927, i64 %1930, i64 0
  %1932 = sub i64 %1923, %1924
  %1933 = add i64 %1932, %1925
  %1934 = add i64 %1933, %1931
  %1935 = trunc i64 %1934 to i32
  %1936 = icmp sgt i32 %1935, 0
  br i1 %1936, label %1937, label %1954

; <label>:1937:                                   ; preds = %1921
  br label %1938

; <label>:1938:                                   ; preds = %1937, %1950
  %1939 = phi i32 [ %1951, %1950 ], [ %1935, %1937 ]
  %1940 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %1941 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1940, i64 0, i32 5
  %1942 = load i8*, i8** %1941, align 8
  %1943 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1940, i64 0, i32 6
  %1944 = load i8*, i8** %1943, align 8
  %1945 = icmp ult i8* %1942, %1944
  br i1 %1945, label %1948, label %1946

; <label>:1946:                                   ; preds = %1938
  %1947 = call i32 @__overflow(%struct._IO_FILE* %1940, i32 32) #11
  br label %1950

; <label>:1948:                                   ; preds = %1938
  %1949 = getelementptr inbounds i8, i8* %1942, i64 1
  store i8* %1949, i8** %1941, align 8
  store i8 32, i8* %1942, align 1
  br label %1950

; <label>:1950:                                   ; preds = %1948, %1946
  %1951 = add nsw i32 %1939, -1
  %1952 = icmp sgt i32 %1939, 1
  br i1 %1952, label %1938, label %1953

; <label>:1953:                                   ; preds = %1950
  br label %1954

; <label>:1954:                                   ; preds = %1953, %1921, %1919, %1917, %1912
  %1955 = load i1, i1* @auto_reference, align 1
  br i1 %1955, label %1958, label %1956

; <label>:1956:                                   ; preds = %1954
  %1957 = load i1, i1* @input_reference, align 1
  br i1 %1957, label %1958, label %1983

; <label>:1958:                                   ; preds = %1956, %1954
  %1959 = load i1, i1* @right_reference, align 1
  br i1 %1959, label %1960, label %1983

; <label>:1960:                                   ; preds = %1958
  %1961 = load i32, i32* @gap_size, align 4
  %1962 = icmp sgt i32 %1961, 0
  br i1 %1962, label %1963, label %1980

; <label>:1963:                                   ; preds = %1960
  br label %1964

; <label>:1964:                                   ; preds = %1963, %1976
  %1965 = phi i32 [ %1977, %1976 ], [ %1961, %1963 ]
  %1966 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %1967 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1966, i64 0, i32 5
  %1968 = load i8*, i8** %1967, align 8
  %1969 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1966, i64 0, i32 6
  %1970 = load i8*, i8** %1969, align 8
  %1971 = icmp ult i8* %1968, %1970
  br i1 %1971, label %1974, label %1972

; <label>:1972:                                   ; preds = %1964
  %1973 = call i32 @__overflow(%struct._IO_FILE* %1966, i32 32) #11
  br label %1976

; <label>:1974:                                   ; preds = %1964
  %1975 = getelementptr inbounds i8, i8* %1968, i64 1
  store i8* %1975, i8** %1967, align 8
  store i8 32, i8* %1968, align 1
  br label %1976

; <label>:1976:                                   ; preds = %1974, %1972
  %1977 = add nsw i32 %1965, -1
  %1978 = icmp sgt i32 %1965, 1
  br i1 %1978, label %1964, label %1979

; <label>:1979:                                   ; preds = %1976
  br label %1980

; <label>:1980:                                   ; preds = %1979, %1960
  %1981 = load i8*, i8** getelementptr inbounds (%struct.BLOCK, %struct.BLOCK* @reference, i64 0, i32 0), align 8
  %1982 = load i8*, i8** getelementptr inbounds (%struct.BLOCK, %struct.BLOCK* @reference, i64 0, i32 1), align 8
  call fastcc void @print_field(i8* %1981, i8* %1982) #11
  br label %1983

; <label>:1983:                                   ; preds = %1980, %1958, %1956
  %1984 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %1985 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1984, i64 0, i32 5
  %1986 = load i8*, i8** %1985, align 8
  %1987 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1984, i64 0, i32 6
  %1988 = load i8*, i8** %1987, align 8
  %1989 = icmp ult i8* %1986, %1988
  br i1 %1989, label %1992, label %1990

; <label>:1990:                                   ; preds = %1983
  %1991 = call i32 @__overflow(%struct._IO_FILE* %1984, i32 10) #11
  br label %2230

; <label>:1992:                                   ; preds = %1983
  %1993 = getelementptr inbounds i8, i8* %1986, i64 1
  store i8* %1993, i8** %1985, align 8
  store i8 10, i8* %1986, align 1
  br label %2230

; <label>:1994:                                   ; preds = %1655
  %1995 = load i8*, i8** @macro_name, align 8
  %1996 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.87, i64 0, i64 0), i8* %1995) #11
  %1997 = load i8*, i8** getelementptr inbounds (%struct.BLOCK, %struct.BLOCK* @tail, i64 0, i32 0), align 8
  %1998 = load i8*, i8** getelementptr inbounds (%struct.BLOCK, %struct.BLOCK* @tail, i64 0, i32 1), align 8
  call fastcc void @print_field(i8* %1997, i8* %1998) #11
  %1999 = load i32, i32* @tail_truncation, align 4
  %2000 = icmp eq i32 %1999, 0
  br i1 %2000, label %2005, label %2001

; <label>:2001:                                   ; preds = %1994
  %2002 = load i8*, i8** @truncation_string, align 8
  %2003 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %2004 = call i32 @fputs_unlocked(i8* %2002, %struct._IO_FILE* %2003) #11
  br label %2005

; <label>:2005:                                   ; preds = %2001, %1994
  %2006 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %2007 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %2006, i64 0, i32 5
  %2008 = load i8*, i8** %2007, align 8
  %2009 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %2006, i64 0, i32 6
  %2010 = load i8*, i8** %2009, align 8
  %2011 = icmp ult i8* %2008, %2010
  br i1 %2011, label %2014, label %2012

; <label>:2012:                                   ; preds = %2005
  %2013 = call i32 @__overflow(%struct._IO_FILE* %2006, i32 34) #11
  br label %2016

; <label>:2014:                                   ; preds = %2005
  %2015 = getelementptr inbounds i8, i8* %2008, i64 1
  store i8* %2015, i8** %2007, align 8
  store i8 34, i8* %2008, align 1
  br label %2016

; <label>:2016:                                   ; preds = %2014, %2012
  %2017 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %2018 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.88, i64 0, i64 0), %struct._IO_FILE* %2017) #11
  %2019 = load i32, i32* @before_truncation, align 4
  %2020 = icmp eq i32 %2019, 0
  br i1 %2020, label %2025, label %2021

; <label>:2021:                                   ; preds = %2016
  %2022 = load i8*, i8** @truncation_string, align 8
  %2023 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %2024 = call i32 @fputs_unlocked(i8* %2022, %struct._IO_FILE* %2023) #11
  br label %2025

; <label>:2025:                                   ; preds = %2021, %2016
  %2026 = load i8*, i8** getelementptr inbounds (%struct.BLOCK, %struct.BLOCK* @before, i64 0, i32 0), align 8
  %2027 = load i8*, i8** getelementptr inbounds (%struct.BLOCK, %struct.BLOCK* @before, i64 0, i32 1), align 8
  call fastcc void @print_field(i8* %2026, i8* %2027) #11
  %2028 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %2029 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %2028, i64 0, i32 5
  %2030 = load i8*, i8** %2029, align 8
  %2031 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %2028, i64 0, i32 6
  %2032 = load i8*, i8** %2031, align 8
  %2033 = icmp ult i8* %2030, %2032
  br i1 %2033, label %2036, label %2034

; <label>:2034:                                   ; preds = %2025
  %2035 = call i32 @__overflow(%struct._IO_FILE* %2028, i32 34) #11
  br label %2038

; <label>:2036:                                   ; preds = %2025
  %2037 = getelementptr inbounds i8, i8* %2030, i64 1
  store i8* %2037, i8** %2029, align 8
  store i8 34, i8* %2030, align 1
  br label %2038

; <label>:2038:                                   ; preds = %2036, %2034
  %2039 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %2040 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.88, i64 0, i64 0), %struct._IO_FILE* %2039) #11
  %2041 = load i8*, i8** getelementptr inbounds (%struct.BLOCK, %struct.BLOCK* @keyafter, i64 0, i32 0), align 8
  %2042 = load i8*, i8** getelementptr inbounds (%struct.BLOCK, %struct.BLOCK* @keyafter, i64 0, i32 1), align 8
  call fastcc void @print_field(i8* %2041, i8* %2042) #11
  %2043 = load i32, i32* @keyafter_truncation, align 4
  %2044 = icmp eq i32 %2043, 0
  br i1 %2044, label %2049, label %2045

; <label>:2045:                                   ; preds = %2038
  %2046 = load i8*, i8** @truncation_string, align 8
  %2047 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %2048 = call i32 @fputs_unlocked(i8* %2046, %struct._IO_FILE* %2047) #11
  br label %2049

; <label>:2049:                                   ; preds = %2045, %2038
  %2050 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %2051 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %2050, i64 0, i32 5
  %2052 = load i8*, i8** %2051, align 8
  %2053 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %2050, i64 0, i32 6
  %2054 = load i8*, i8** %2053, align 8
  %2055 = icmp ult i8* %2052, %2054
  br i1 %2055, label %2058, label %2056

; <label>:2056:                                   ; preds = %2049
  %2057 = call i32 @__overflow(%struct._IO_FILE* %2050, i32 34) #11
  br label %2060

; <label>:2058:                                   ; preds = %2049
  %2059 = getelementptr inbounds i8, i8* %2052, i64 1
  store i8* %2059, i8** %2051, align 8
  store i8 34, i8* %2052, align 1
  br label %2060

; <label>:2060:                                   ; preds = %2058, %2056
  %2061 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %2062 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.88, i64 0, i64 0), %struct._IO_FILE* %2061) #11
  %2063 = load i32, i32* @head_truncation, align 4
  %2064 = icmp eq i32 %2063, 0
  br i1 %2064, label %2069, label %2065

; <label>:2065:                                   ; preds = %2060
  %2066 = load i8*, i8** @truncation_string, align 8
  %2067 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %2068 = call i32 @fputs_unlocked(i8* %2066, %struct._IO_FILE* %2067) #11
  br label %2069

; <label>:2069:                                   ; preds = %2065, %2060
  %2070 = load i8*, i8** getelementptr inbounds (%struct.BLOCK, %struct.BLOCK* @head, i64 0, i32 0), align 8
  %2071 = load i8*, i8** getelementptr inbounds (%struct.BLOCK, %struct.BLOCK* @head, i64 0, i32 1), align 8
  call fastcc void @print_field(i8* %2070, i8* %2071) #11
  %2072 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %2073 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %2072, i64 0, i32 5
  %2074 = load i8*, i8** %2073, align 8
  %2075 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %2072, i64 0, i32 6
  %2076 = load i8*, i8** %2075, align 8
  %2077 = icmp ult i8* %2074, %2076
  br i1 %2077, label %2080, label %2078

; <label>:2078:                                   ; preds = %2069
  %2079 = call i32 @__overflow(%struct._IO_FILE* %2072, i32 34) #11
  br label %2082

; <label>:2080:                                   ; preds = %2069
  %2081 = getelementptr inbounds i8, i8* %2074, i64 1
  store i8* %2081, i8** %2073, align 8
  store i8 34, i8* %2074, align 1
  br label %2082

; <label>:2082:                                   ; preds = %2080, %2078
  %2083 = load i1, i1* @auto_reference, align 1
  br i1 %2083, label %2086, label %2084

; <label>:2084:                                   ; preds = %2082
  %2085 = load i1, i1* @input_reference, align 1
  br i1 %2085, label %2086, label %2101

; <label>:2086:                                   ; preds = %2084, %2082
  %2087 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %2088 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.88, i64 0, i64 0), %struct._IO_FILE* %2087) #11
  %2089 = load i8*, i8** getelementptr inbounds (%struct.BLOCK, %struct.BLOCK* @reference, i64 0, i32 0), align 8
  %2090 = load i8*, i8** getelementptr inbounds (%struct.BLOCK, %struct.BLOCK* @reference, i64 0, i32 1), align 8
  call fastcc void @print_field(i8* %2089, i8* %2090) #11
  %2091 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %2092 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %2091, i64 0, i32 5
  %2093 = load i8*, i8** %2092, align 8
  %2094 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %2091, i64 0, i32 6
  %2095 = load i8*, i8** %2094, align 8
  %2096 = icmp ult i8* %2093, %2095
  br i1 %2096, label %2099, label %2097

; <label>:2097:                                   ; preds = %2086
  %2098 = call i32 @__overflow(%struct._IO_FILE* %2091, i32 34) #11
  br label %2101

; <label>:2099:                                   ; preds = %2086
  %2100 = getelementptr inbounds i8, i8* %2093, i64 1
  store i8* %2100, i8** %2092, align 8
  store i8 34, i8* %2093, align 1
  br label %2101

; <label>:2101:                                   ; preds = %2099, %2097, %2084
  %2102 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %2103 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %2102, i64 0, i32 5
  %2104 = load i8*, i8** %2103, align 8
  %2105 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %2102, i64 0, i32 6
  %2106 = load i8*, i8** %2105, align 8
  %2107 = icmp ult i8* %2104, %2106
  br i1 %2107, label %2110, label %2108

; <label>:2108:                                   ; preds = %2101
  %2109 = call i32 @__overflow(%struct._IO_FILE* %2102, i32 10) #11
  br label %2230

; <label>:2110:                                   ; preds = %2101
  %2111 = getelementptr inbounds i8, i8* %2104, i64 1
  store i8* %2111, i8** %2103, align 8
  store i8 10, i8* %2104, align 1
  br label %2230

; <label>:2112:                                   ; preds = %1655
  %2113 = load i8*, i8** @macro_name, align 8
  %2114 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.89, i64 0, i64 0), i8* %2113) #11
  %2115 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %2116 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %2115, i64 0, i32 5
  %2117 = load i8*, i8** %2116, align 8
  %2118 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %2115, i64 0, i32 6
  %2119 = load i8*, i8** %2118, align 8
  %2120 = icmp ult i8* %2117, %2119
  br i1 %2120, label %2123, label %2121

; <label>:2121:                                   ; preds = %2112
  %2122 = call i32 @__overflow(%struct._IO_FILE* %2115, i32 123) #11
  br label %2125

; <label>:2123:                                   ; preds = %2112
  %2124 = getelementptr inbounds i8, i8* %2117, i64 1
  store i8* %2124, i8** %2116, align 8
  store i8 123, i8* %2117, align 1
  br label %2125

; <label>:2125:                                   ; preds = %2123, %2121
  %2126 = load i8*, i8** getelementptr inbounds (%struct.BLOCK, %struct.BLOCK* @tail, i64 0, i32 0), align 8
  %2127 = load i8*, i8** getelementptr inbounds (%struct.BLOCK, %struct.BLOCK* @tail, i64 0, i32 1), align 8
  call fastcc void @print_field(i8* %2126, i8* %2127) #11
  %2128 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %2129 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.90, i64 0, i64 0), %struct._IO_FILE* %2128) #11
  %2130 = load i8*, i8** getelementptr inbounds (%struct.BLOCK, %struct.BLOCK* @before, i64 0, i32 0), align 8
  %2131 = load i8*, i8** getelementptr inbounds (%struct.BLOCK, %struct.BLOCK* @before, i64 0, i32 1), align 8
  call fastcc void @print_field(i8* %2130, i8* %2131) #11
  %2132 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %2133 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.90, i64 0, i64 0), %struct._IO_FILE* %2132) #11
  %2134 = load i8*, i8** getelementptr inbounds (%struct.BLOCK, %struct.BLOCK* @keyafter, i64 0, i32 0), align 8
  %2135 = load i8*, i8** getelementptr inbounds (%struct.BLOCK, %struct.BLOCK* @keyafter, i64 0, i32 1), align 8
  %2136 = load i8*, i8** getelementptr inbounds (%struct.regex_data, %struct.regex_data* @word_regex, i64 0, i32 0), align 8
  %2137 = icmp eq i8* %2136, null
  br i1 %2137, label %2151, label %2138

; <label>:2138:                                   ; preds = %2125
  %2139 = ptrtoint i8* %2135 to i64
  %2140 = ptrtoint i8* %2134 to i64
  %2141 = sub i64 %2139, %2140
  %2142 = trunc i64 %2141 to i32
  %2143 = call i32 @re_match(%struct.re_pattern_buffer* getelementptr inbounds (%struct.regex_data, %struct.regex_data* @word_regex, i64 0, i32 1), i8* %2134, i32 %2142, i32 0, %struct.re_registers* null) #11
  %2144 = icmp eq i32 %2143, -2
  br i1 %2144, label %2145, label %2146

; <label>:2145:                                   ; preds = %2138
  call fastcc void @matcher_error() #15
  unreachable

; <label>:2146:                                   ; preds = %2138
  %2147 = icmp eq i32 %2143, -1
  %2148 = sext i32 %2143 to i64
  %2149 = select i1 %2147, i64 1, i64 %2148
  %2150 = getelementptr inbounds i8, i8* %2134, i64 %2149
  br label %2173

; <label>:2151:                                   ; preds = %2125
  %2152 = load i8, i8* %2134, align 1
  %2153 = zext i8 %2152 to i64
  %2154 = getelementptr inbounds [256 x i8], [256 x i8]* @word_fastmap, i64 0, i64 %2153
  %2155 = load i8, i8* %2154, align 1
  %2156 = icmp eq i8 %2155, 0
  br i1 %2156, label %2170, label %2157

; <label>:2157:                                   ; preds = %2151
  %2158 = icmp ult i8* %2134, %2135
  br i1 %2158, label %2159, label %2173

; <label>:2159:                                   ; preds = %2157
  br label %2160

; <label>:2160:                                   ; preds = %2159, %2164
  %2161 = phi i8* [ %2162, %2164 ], [ %2134, %2159 ]
  %2162 = getelementptr inbounds i8, i8* %2161, i64 1
  %2163 = icmp ult i8* %2162, %2135
  br i1 %2163, label %2164, label %2172

; <label>:2164:                                   ; preds = %2160
  %2165 = load i8, i8* %2162, align 1
  %2166 = zext i8 %2165 to i64
  %2167 = getelementptr inbounds [256 x i8], [256 x i8]* @word_fastmap, i64 0, i64 %2166
  %2168 = load i8, i8* %2167, align 1
  %2169 = icmp eq i8 %2168, 0
  br i1 %2169, label %2172, label %2160

; <label>:2170:                                   ; preds = %2151
  %2171 = getelementptr inbounds i8, i8* %2134, i64 1
  br label %2173

; <label>:2172:                                   ; preds = %2160, %2164
  br label %2173

; <label>:2173:                                   ; preds = %2172, %2170, %2157, %2146
  %2174 = phi i8* [ %2150, %2146 ], [ %2171, %2170 ], [ %2134, %2157 ], [ %2162, %2172 ]
  call fastcc void @print_field(i8* %2134, i8* %2174) #11
  %2175 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %2176 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.90, i64 0, i64 0), %struct._IO_FILE* %2175) #11
  call fastcc void @print_field(i8* %2174, i8* %2135) #11
  %2177 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %2178 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.90, i64 0, i64 0), %struct._IO_FILE* %2177) #11
  %2179 = load i8*, i8** getelementptr inbounds (%struct.BLOCK, %struct.BLOCK* @head, i64 0, i32 0), align 8
  %2180 = load i8*, i8** getelementptr inbounds (%struct.BLOCK, %struct.BLOCK* @head, i64 0, i32 1), align 8
  call fastcc void @print_field(i8* %2179, i8* %2180) #11
  %2181 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %2182 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %2181, i64 0, i32 5
  %2183 = load i8*, i8** %2182, align 8
  %2184 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %2181, i64 0, i32 6
  %2185 = load i8*, i8** %2184, align 8
  %2186 = icmp ult i8* %2183, %2185
  br i1 %2186, label %2189, label %2187

; <label>:2187:                                   ; preds = %2173
  %2188 = call i32 @__overflow(%struct._IO_FILE* %2181, i32 125) #11
  br label %2191

; <label>:2189:                                   ; preds = %2173
  %2190 = getelementptr inbounds i8, i8* %2183, i64 1
  store i8* %2190, i8** %2182, align 8
  store i8 125, i8* %2183, align 1
  br label %2191

; <label>:2191:                                   ; preds = %2189, %2187
  %2192 = load i1, i1* @auto_reference, align 1
  br i1 %2192, label %2195, label %2193

; <label>:2193:                                   ; preds = %2191
  %2194 = load i1, i1* @input_reference, align 1
  br i1 %2194, label %2195, label %2219

; <label>:2195:                                   ; preds = %2193, %2191
  %2196 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %2197 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %2196, i64 0, i32 5
  %2198 = load i8*, i8** %2197, align 8
  %2199 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %2196, i64 0, i32 6
  %2200 = load i8*, i8** %2199, align 8
  %2201 = icmp ult i8* %2198, %2200
  br i1 %2201, label %2204, label %2202

; <label>:2202:                                   ; preds = %2195
  %2203 = call i32 @__overflow(%struct._IO_FILE* %2196, i32 123) #11
  br label %2206

; <label>:2204:                                   ; preds = %2195
  %2205 = getelementptr inbounds i8, i8* %2198, i64 1
  store i8* %2205, i8** %2197, align 8
  store i8 123, i8* %2198, align 1
  br label %2206

; <label>:2206:                                   ; preds = %2204, %2202
  %2207 = load i8*, i8** getelementptr inbounds (%struct.BLOCK, %struct.BLOCK* @reference, i64 0, i32 0), align 8
  %2208 = load i8*, i8** getelementptr inbounds (%struct.BLOCK, %struct.BLOCK* @reference, i64 0, i32 1), align 8
  call fastcc void @print_field(i8* %2207, i8* %2208) #11
  %2209 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %2210 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %2209, i64 0, i32 5
  %2211 = load i8*, i8** %2210, align 8
  %2212 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %2209, i64 0, i32 6
  %2213 = load i8*, i8** %2212, align 8
  %2214 = icmp ult i8* %2211, %2213
  br i1 %2214, label %2217, label %2215

; <label>:2215:                                   ; preds = %2206
  %2216 = call i32 @__overflow(%struct._IO_FILE* %2209, i32 125) #11
  br label %2219

; <label>:2217:                                   ; preds = %2206
  %2218 = getelementptr inbounds i8, i8* %2211, i64 1
  store i8* %2218, i8** %2210, align 8
  store i8 125, i8* %2211, align 1
  br label %2219

; <label>:2219:                                   ; preds = %2217, %2215, %2193
  %2220 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %2221 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %2220, i64 0, i32 5
  %2222 = load i8*, i8** %2221, align 8
  %2223 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %2220, i64 0, i32 6
  %2224 = load i8*, i8** %2223, align 8
  %2225 = icmp ult i8* %2222, %2224
  br i1 %2225, label %2228, label %2226

; <label>:2226:                                   ; preds = %2219
  %2227 = call i32 @__overflow(%struct._IO_FILE* %2220, i32 10) #11
  br label %2230

; <label>:2228:                                   ; preds = %2219
  %2229 = getelementptr inbounds i8, i8* %2222, i64 1
  store i8* %2229, i8** %2221, align 8
  store i8 10, i8* %2222, align 1
  br label %2230

; <label>:2230:                                   ; preds = %2228, %2226, %2110, %2108, %1992, %1990, %1655
  %2231 = getelementptr inbounds %struct.OCCURS, %struct.OCCURS* %1094, i64 1
  %2232 = add i64 %1095, 1
  %2233 = load i64, i64* @number_of_occurs.0, align 8
  %2234 = icmp ult i64 %2232, %2233
  br i1 %2234, label %1093, label %2235

; <label>:2235:                                   ; preds = %2230
  br label %2236

; <label>:2236:                                   ; preds = %2235, %1088
  ret i32 0

; <label>:2237:                                   ; preds = %147
  %2238 = getelementptr inbounds i8, i8* %154, i64 1
  %2239 = load i8, i8* %2238, align 1
  %2240 = icmp eq i8 %2239, 0
  br i1 %2240, label %2242, label %2241

; <label>:2241:                                   ; preds = %2237, %147
  br label %2242

; <label>:2242:                                   ; preds = %2241, %2237, %147
  %2243 = phi i8* [ %154, %2241 ], [ null, %147 ], [ null, %2237 ]
  %2244 = getelementptr inbounds i8*, i8** %111, i64 %151
  store i8* %2243, i8** %2244, align 8
  %2245 = add nsw i32 %136, 2
  store i32 %2245, i32* @optind, align 4
  %2246 = add nsw i64 %137, 2
  %2247 = icmp slt i64 %2246, %112
  br i1 %2247, label %135, label %203
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #7

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #7

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @copy_unescaped_string(i8* nocapture readonly) unnamed_addr #6 {
  %2 = tail call i64 @strlen(i8* %0) #14
  %3 = add i64 %2, 1
  %4 = tail call noalias i8* @xmalloc(i64 %3) #11
  %5 = load i8, i8* %0, align 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %114, label %7

; <label>:7:                                      ; preds = %1
  br label %8

; <label>:8:                                      ; preds = %7, %75
  %9 = phi i8 [ %78, %75 ], [ %5, %7 ]
  %10 = phi i8* [ %77, %75 ], [ %4, %7 ]
  %11 = phi i8* [ %76, %75 ], [ %0, %7 ]
  %12 = icmp eq i8 %9, 92
  %13 = getelementptr inbounds i8, i8* %11, i64 1
  br i1 %12, label %14, label %111

; <label>:14:                                     ; preds = %8
  %15 = load i8, i8* %13, align 1
  %16 = sext i8 %15 to i32
  switch i32 %16, label %106 [
    i32 120, label %21
    i32 48, label %57
    i32 97, label %80
    i32 98, label %83
    i32 99, label %17
    i32 102, label %91
    i32 110, label %94
    i32 114, label %97
    i32 116, label %100
    i32 118, label %103
    i32 0, label %75
  ]

; <label>:17:                                     ; preds = %14
  %18 = icmp eq i8 %15, 0
  br i1 %18, label %75, label %19

; <label>:19:                                     ; preds = %17
  %20 = getelementptr inbounds i8, i8* %11, i64 2
  br label %86

; <label>:21:                                     ; preds = %14
  %22 = getelementptr inbounds i8, i8* %11, i64 2
  %23 = tail call i16** @__ctype_b_loc() #1
  %24 = load i16*, i16** %23, align 8
  %25 = load i8, i8* %22, align 1
  %26 = zext i8 %25 to i64
  %27 = getelementptr inbounds i16, i16* %24, i64 %26
  %28 = load i16, i16* %27, align 2
  %29 = and i16 %28, 4096
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %49, label %31

; <label>:31:                                     ; preds = %21
  %32 = sext i8 %25 to i32
  %33 = add i8 %25, -97
  %34 = icmp ult i8 %33, 6
  br i1 %34, label %39, label %35

; <label>:35:                                     ; preds = %31
  %36 = add i8 %25, -65
  %37 = icmp ult i8 %36, 6
  %38 = select i1 %37, i32 -55, i32 -48
  br label %39

; <label>:39:                                     ; preds = %31, %35
  %40 = phi i32 [ %38, %35 ], [ -87, %31 ]
  %41 = add nsw i32 %32, %40
  %42 = getelementptr inbounds i8, i8* %11, i64 3
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i64
  %45 = getelementptr inbounds i16, i16* %24, i64 %44
  %46 = load i16, i16* %45, align 2
  %47 = and i16 %46, 4096
  %48 = icmp eq i16 %47, 0
  br i1 %48, label %52, label %131

; <label>:49:                                     ; preds = %21
  %50 = getelementptr inbounds i8, i8* %10, i64 1
  store i8 92, i8* %10, align 1
  %51 = getelementptr inbounds i8, i8* %10, i64 2
  store i8 120, i8* %50, align 1
  br label %75

; <label>:52:                                     ; preds = %140, %39, %160
  %53 = phi i8* [ %164, %160 ], [ %144, %140 ], [ %42, %39 ]
  %54 = phi i32 [ %163, %160 ], [ %143, %140 ], [ %41, %39 ]
  %55 = trunc i32 %54 to i8
  %56 = getelementptr inbounds i8, i8* %10, i64 1
  store i8 %55, i8* %10, align 1
  br label %75

; <label>:57:                                     ; preds = %14
  %58 = getelementptr inbounds i8, i8* %11, i64 2
  %59 = load i8, i8* %58, align 1
  %60 = and i8 %59, -8
  %61 = icmp eq i8 %60, 48
  br i1 %61, label %62, label %69

; <label>:62:                                     ; preds = %57
  %63 = sext i8 %59 to i32
  %64 = add nsw i32 %63, -48
  %65 = getelementptr inbounds i8, i8* %11, i64 3
  %66 = load i8, i8* %65, align 1
  %67 = and i8 %66, -8
  %68 = icmp eq i8 %67, 48
  br i1 %68, label %116, label %69

; <label>:69:                                     ; preds = %125, %116, %62, %57
  %70 = phi i8* [ %58, %57 ], [ %65, %62 ], [ %121, %116 ], [ %130, %125 ]
  %71 = phi i32 [ 0, %57 ], [ %64, %62 ], [ %120, %116 ], [ %129, %125 ]
  %72 = trunc i32 %71 to i8
  %73 = getelementptr inbounds i8, i8* %10, i64 1
  store i8 %72, i8* %10, align 1
  br label %75

; <label>:74:                                     ; preds = %86
  br label %75

; <label>:75:                                     ; preds = %74, %17, %69, %80, %83, %91, %94, %97, %100, %103, %14, %106, %52, %49, %111
  %76 = phi i8* [ %108, %106 ], [ %13, %14 ], [ %105, %103 ], [ %102, %100 ], [ %99, %97 ], [ %96, %94 ], [ %93, %91 ], [ %85, %83 ], [ %82, %80 ], [ %70, %69 ], [ %22, %49 ], [ %53, %52 ], [ %13, %111 ], [ %13, %17 ], [ %87, %74 ]
  %77 = phi i8* [ %110, %106 ], [ %10, %14 ], [ %104, %103 ], [ %101, %100 ], [ %98, %97 ], [ %95, %94 ], [ %92, %91 ], [ %84, %83 ], [ %81, %80 ], [ %73, %69 ], [ %51, %49 ], [ %56, %52 ], [ %112, %111 ], [ %10, %17 ], [ %10, %74 ]
  %78 = load i8, i8* %76, align 1
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %113, label %8

; <label>:80:                                     ; preds = %14
  %81 = getelementptr inbounds i8, i8* %10, i64 1
  store i8 7, i8* %10, align 1
  %82 = getelementptr inbounds i8, i8* %11, i64 2
  br label %75

; <label>:83:                                     ; preds = %14
  %84 = getelementptr inbounds i8, i8* %10, i64 1
  store i8 8, i8* %10, align 1
  %85 = getelementptr inbounds i8, i8* %11, i64 2
  br label %75

; <label>:86:                                     ; preds = %19, %86
  %87 = phi i8* [ %20, %19 ], [ %90, %86 ]
  %88 = load i8, i8* %87, align 1
  %89 = icmp eq i8 %88, 0
  %90 = getelementptr inbounds i8, i8* %87, i64 1
  br i1 %89, label %74, label %86

; <label>:91:                                     ; preds = %14
  %92 = getelementptr inbounds i8, i8* %10, i64 1
  store i8 12, i8* %10, align 1
  %93 = getelementptr inbounds i8, i8* %11, i64 2
  br label %75

; <label>:94:                                     ; preds = %14
  %95 = getelementptr inbounds i8, i8* %10, i64 1
  store i8 10, i8* %10, align 1
  %96 = getelementptr inbounds i8, i8* %11, i64 2
  br label %75

; <label>:97:                                     ; preds = %14
  %98 = getelementptr inbounds i8, i8* %10, i64 1
  store i8 13, i8* %10, align 1
  %99 = getelementptr inbounds i8, i8* %11, i64 2
  br label %75

; <label>:100:                                    ; preds = %14
  %101 = getelementptr inbounds i8, i8* %10, i64 1
  store i8 9, i8* %10, align 1
  %102 = getelementptr inbounds i8, i8* %11, i64 2
  br label %75

; <label>:103:                                    ; preds = %14
  %104 = getelementptr inbounds i8, i8* %10, i64 1
  store i8 11, i8* %10, align 1
  %105 = getelementptr inbounds i8, i8* %11, i64 2
  br label %75

; <label>:106:                                    ; preds = %14
  %107 = getelementptr inbounds i8, i8* %10, i64 1
  store i8 92, i8* %10, align 1
  %108 = getelementptr inbounds i8, i8* %11, i64 2
  %109 = load i8, i8* %13, align 1
  %110 = getelementptr inbounds i8, i8* %10, i64 2
  store i8 %109, i8* %107, align 1
  br label %75

; <label>:111:                                    ; preds = %8
  %112 = getelementptr inbounds i8, i8* %10, i64 1
  store i8 %9, i8* %10, align 1
  br label %75

; <label>:113:                                    ; preds = %75
  br label %114

; <label>:114:                                    ; preds = %113, %1
  %115 = phi i8* [ %4, %1 ], [ %77, %113 ]
  store i8 0, i8* %115, align 1
  ret i8* %4

; <label>:116:                                    ; preds = %62
  %117 = shl nsw i32 %64, 3
  %118 = sext i8 %66 to i32
  %119 = add nsw i32 %117, -48
  %120 = add nsw i32 %119, %118
  %121 = getelementptr inbounds i8, i8* %11, i64 4
  %122 = load i8, i8* %121, align 1
  %123 = and i8 %122, -8
  %124 = icmp eq i8 %123, 48
  br i1 %124, label %125, label %69

; <label>:125:                                    ; preds = %116
  %126 = shl nsw i32 %120, 3
  %127 = sext i8 %122 to i32
  %128 = add nsw i32 %126, -48
  %129 = add i32 %128, %127
  %130 = getelementptr inbounds i8, i8* %11, i64 5
  br label %69

; <label>:131:                                    ; preds = %39
  %132 = shl nsw i32 %41, 4
  %133 = sext i8 %43 to i32
  %134 = add i8 %43, -97
  %135 = icmp ult i8 %134, 6
  br i1 %135, label %140, label %136

; <label>:136:                                    ; preds = %131
  %137 = add i8 %43, -65
  %138 = icmp ult i8 %137, 6
  %139 = select i1 %138, i32 -55, i32 -48
  br label %140

; <label>:140:                                    ; preds = %136, %131
  %141 = phi i32 [ %139, %136 ], [ -87, %131 ]
  %142 = add nsw i32 %133, %132
  %143 = add nsw i32 %142, %141
  %144 = getelementptr inbounds i8, i8* %11, i64 4
  %145 = load i8, i8* %144, align 1
  %146 = zext i8 %145 to i64
  %147 = getelementptr inbounds i16, i16* %24, i64 %146
  %148 = load i16, i16* %147, align 2
  %149 = and i16 %148, 4096
  %150 = icmp eq i16 %149, 0
  br i1 %150, label %52, label %151

; <label>:151:                                    ; preds = %140
  %152 = shl i32 %143, 4
  %153 = sext i8 %145 to i32
  %154 = add i8 %145, -97
  %155 = icmp ult i8 %154, 6
  br i1 %155, label %160, label %156

; <label>:156:                                    ; preds = %151
  %157 = add i8 %145, -65
  %158 = icmp ult i8 %157, 6
  %159 = select i1 %158, i32 -55, i32 -48
  br label %160

; <label>:160:                                    ; preds = %156, %151
  %161 = phi i32 [ %159, %156 ], [ -87, %151 ]
  %162 = add i32 %153, %152
  %163 = add i32 %162, %161
  %164 = getelementptr inbounds i8, i8* %11, i64 5
  br label %52
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #8

; Function Attrs: nounwind readnone
declare i32** @__ctype_toupper_loc() local_unnamed_addr #8

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @compile_regex(%struct.regex_data*) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.regex_data, %struct.regex_data* %0, i64 0, i32 1
  %3 = getelementptr inbounds %struct.regex_data, %struct.regex_data* %0, i64 0, i32 0
  %4 = load i8*, i8** %3, align 8
  %5 = getelementptr inbounds %struct.regex_data, %struct.regex_data* %0, i64 0, i32 2, i64 0
  %6 = getelementptr inbounds %struct.regex_data, %struct.regex_data* %0, i64 0, i32 1, i32 4
  %7 = bitcast %struct.re_pattern_buffer* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* %7, i8 0, i64 16, i32 8, i1 false)
  store i8* %5, i8** %6, align 8
  %8 = load i1, i1* @ignore_case, align 1
  %9 = select i1 %8, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @folded_chars, i64 0, i64 0), i8* null
  %10 = getelementptr inbounds %struct.regex_data, %struct.regex_data* %0, i64 0, i32 1, i32 5
  store i8* %9, i8** %10, align 8
  %11 = tail call i64 @strlen(i8* %4) #14
  %12 = tail call i8* @re_compile_pattern(i8* %4, i64 %11, %struct.re_pattern_buffer* %2) #11
  %13 = icmp eq i8* %12, null
  br i1 %13, label %17, label %14

; <label>:14:                                     ; preds = %1
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.66, i64 0, i64 0), i32 5) #11
  %16 = tail call i8* @quote(i8* %4) #11
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %15, i8* nonnull %12, i8* %16) #11
  unreachable

; <label>:17:                                     ; preds = %1
  %18 = tail call i32 @re_compile_fastmap(%struct.re_pattern_buffer* %2) #11
  ret void
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #8

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #7

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @swallow_file_in_memory(i8*, %struct.BLOCK* nocapture) unnamed_addr #6 {
  %3 = alloca i64, align 8
  %4 = bitcast i64* %3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %4) #11
  %5 = icmp eq i8* %0, null
  br i1 %5, label %12, label %6

; <label>:6:                                      ; preds = %2
  %7 = load i8, i8* %0, align 1
  switch i8 %7, label %15 [
    i8 0, label %12
    i8 45, label %8
  ]

; <label>:8:                                      ; preds = %6
  %9 = getelementptr inbounds i8, i8* %0, i64 1
  %10 = load i8, i8* %9, align 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %15

; <label>:12:                                     ; preds = %6, %2, %8
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %14 = call i8* @fread_file(%struct._IO_FILE* %13, i64* nonnull %3) #11
  br label %17

; <label>:15:                                     ; preds = %6, %8
  %16 = call i8* @read_file(i8* nonnull %0, i64* nonnull %3) #11
  br label %17

; <label>:17:                                     ; preds = %15, %12
  %18 = phi i8* [ %0, %15 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0), %12 ]
  %19 = phi i8* [ %16, %15 ], [ %14, %12 ]
  %20 = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %1, i64 0, i32 0
  store i8* %19, i8** %20, align 8
  %21 = icmp eq i8* %19, null
  br i1 %21, label %22, label %26

; <label>:22:                                     ; preds = %17
  %23 = tail call i32* @__errno_location() #1
  %24 = load i32, i32* %23, align 4
  %25 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %18) #11
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0), i8* %25) #11
  unreachable

; <label>:26:                                     ; preds = %17
  %27 = load i64, i64* %3, align 8
  %28 = getelementptr inbounds i8, i8* %19, i64 %27
  %29 = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %1, i64 0, i32 1
  store i8* %28, i8** %29, align 8
  call void @llvm.lifetime.end(i64 8, i8* nonnull %4) #11
  ret void
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @digest_word_file(i8*, %struct.WORD_TABLE* nocapture) unnamed_addr #6 {
  %3 = alloca %struct.BLOCK, align 8
  %4 = bitcast %struct.BLOCK* %3 to i8*
  call void @llvm.lifetime.start(i64 16, i8* nonnull %4) #11
  call fastcc void @swallow_file_in_memory(i8* %0, %struct.BLOCK* nonnull %3)
  %5 = getelementptr inbounds %struct.WORD_TABLE, %struct.WORD_TABLE* %1, i64 0, i32 1
  %6 = getelementptr inbounds %struct.WORD_TABLE, %struct.WORD_TABLE* %1, i64 0, i32 2
  %7 = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %3, i64 0, i32 0
  %8 = bitcast %struct.WORD_TABLE* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* %8, i8 0, i64 24, i32 8, i1 false)
  %9 = load i8*, i8** %7, align 8
  %10 = getelementptr inbounds %struct.BLOCK, %struct.BLOCK* %3, i64 0, i32 1
  %11 = load i8*, i8** %10, align 8
  %12 = icmp ult i8* %9, %11
  br i1 %12, label %13, label %71

; <label>:13:                                     ; preds = %2
  %14 = bitcast %struct.WORD_TABLE* %1 to i8**
  br label %15

; <label>:15:                                     ; preds = %13, %59
  %16 = phi i8* [ null, %13 ], [ %61, %59 ]
  %17 = phi i8* [ null, %13 ], [ %62, %59 ]
  %18 = phi %struct.WORD* [ null, %13 ], [ %63, %59 ]
  %19 = phi i8* [ null, %13 ], [ %64, %59 ]
  %20 = phi i64 [ 0, %13 ], [ %65, %59 ]
  %21 = phi i8* [ %9, %13 ], [ %68, %59 ]
  %22 = icmp ult i8* %21, %11
  br i1 %22, label %23, label %59

; <label>:23:                                     ; preds = %15
  br label %24

; <label>:24:                                     ; preds = %23, %28
  %25 = phi i8* [ %29, %28 ], [ %21, %23 ]
  %26 = load i8, i8* %25, align 1
  %27 = icmp eq i8 %26, 10
  br i1 %27, label %31, label %28

; <label>:28:                                     ; preds = %24
  %29 = getelementptr inbounds i8, i8* %25, i64 1
  %30 = icmp ult i8* %29, %11
  br i1 %30, label %24, label %31

; <label>:31:                                     ; preds = %28, %24
  %32 = phi i8* [ %29, %28 ], [ %25, %24 ]
  %33 = icmp ugt i8* %32, %21
  br i1 %33, label %34, label %59

; <label>:34:                                     ; preds = %31
  %35 = load i64, i64* %5, align 8
  %36 = icmp eq i64 %20, %35
  br i1 %36, label %37, label %47

; <label>:37:                                     ; preds = %34
  %38 = icmp ugt i64 %20, 576460752303423487
  br i1 %38, label %39, label %40

; <label>:39:                                     ; preds = %37
  tail call void @xalloc_die() #15
  unreachable

; <label>:40:                                     ; preds = %37
  %41 = shl i64 %20, 1
  %42 = or i64 %41, 1
  store i64 %42, i64* %5, align 8
  %43 = shl i64 %42, 4
  %44 = tail call i8* @xrealloc(i8* %19, i64 %43) #11
  store i8* %44, i8** %14, align 8
  %45 = bitcast i8* %44 to %struct.WORD*
  %46 = load i64, i64* %6, align 8
  br label %47

; <label>:47:                                     ; preds = %40, %34
  %48 = phi i8* [ %44, %40 ], [ %16, %34 ]
  %49 = phi i8* [ %44, %40 ], [ %17, %34 ]
  %50 = phi %struct.WORD* [ %45, %40 ], [ %18, %34 ]
  %51 = phi i64 [ %46, %40 ], [ %20, %34 ]
  %52 = getelementptr inbounds %struct.WORD, %struct.WORD* %50, i64 %51, i32 0
  store i8* %21, i8** %52, align 8
  %53 = ptrtoint i8* %32 to i64
  %54 = ptrtoint i8* %21 to i64
  %55 = sub i64 %53, %54
  %56 = trunc i64 %55 to i16
  %57 = getelementptr inbounds %struct.WORD, %struct.WORD* %50, i64 %51, i32 1
  store i16 %56, i16* %57, align 8
  %58 = add i64 %51, 1
  store i64 %58, i64* %6, align 8
  br label %59

; <label>:59:                                     ; preds = %15, %47, %31
  %60 = phi i8* [ %32, %47 ], [ %32, %31 ], [ %21, %15 ]
  %61 = phi i8* [ %48, %47 ], [ %16, %31 ], [ %16, %15 ]
  %62 = phi i8* [ %49, %47 ], [ %17, %31 ], [ %17, %15 ]
  %63 = phi %struct.WORD* [ %50, %47 ], [ %18, %31 ], [ %18, %15 ]
  %64 = phi i8* [ %49, %47 ], [ %19, %31 ], [ %19, %15 ]
  %65 = phi i64 [ %58, %47 ], [ %20, %31 ], [ %20, %15 ]
  %66 = icmp ult i8* %60, %11
  %67 = getelementptr inbounds i8, i8* %60, i64 1
  %68 = select i1 %66, i8* %67, i8* %60
  %69 = icmp ult i8* %68, %11
  br i1 %69, label %15, label %70

; <label>:70:                                     ; preds = %59
  br label %71

; <label>:71:                                     ; preds = %70, %2
  %72 = phi i64 [ 0, %2 ], [ %65, %70 ]
  %73 = phi i8* [ null, %2 ], [ %61, %70 ]
  tail call void @qsort(i8* %73, i64 %72, i64 16, i32 (i8*, i8*)* nonnull @compare_words) #11
  call void @llvm.lifetime.end(i64 16, i8* nonnull %4) #11
  ret void
}

declare i32 @re_search(%struct.re_pattern_buffer*, i8*, i32, i32, i32, %struct.re_registers*) local_unnamed_addr #3

; Function Attrs: noreturn nounwind sspstrong uwtable
define internal fastcc void @matcher_error() unnamed_addr #0 {
  %1 = tail call i32* @__errno_location() #1
  %2 = load i32, i32* %1, align 4
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.67, i64 0, i64 0), i32 5) #11
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %2, i8* %3) #11
  unreachable
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: nounwind readonly sspstrong uwtable
define internal i32 @compare_occurs(i8* nocapture readonly, i8* nocapture readonly) #9 {
  %3 = getelementptr inbounds i8, i8* %0, i64 8
  %4 = bitcast i8* %3 to i16*
  %5 = load i16, i16* %4, align 8
  %6 = getelementptr inbounds i8, i8* %1, i64 8
  %7 = bitcast i8* %6 to i16*
  %8 = load i16, i16* %7, align 8
  %9 = icmp slt i16 %5, %8
  %10 = select i1 %9, i8* %0, i8* %1
  %11 = getelementptr inbounds i8, i8* %10, i64 8
  %12 = bitcast i8* %11 to i16*
  %13 = load i16, i16* %12, align 8
  %14 = load i1, i1* @ignore_case, align 1
  %15 = icmp sgt i16 %13, 0
  br i1 %14, label %23, label %16

; <label>:16:                                     ; preds = %2
  br i1 %15, label %17, label %64

; <label>:17:                                     ; preds = %16
  %18 = bitcast i8* %0 to i8**
  %19 = load i8*, i8** %18, align 8
  %20 = bitcast i8* %1 to i8**
  %21 = load i8*, i8** %20, align 8
  %22 = sext i16 %13 to i64
  br label %51

; <label>:23:                                     ; preds = %2
  br i1 %15, label %24, label %64

; <label>:24:                                     ; preds = %23
  %25 = bitcast i8* %0 to i8**
  %26 = load i8*, i8** %25, align 8
  %27 = bitcast i8* %1 to i8**
  %28 = load i8*, i8** %27, align 8
  %29 = sext i16 %13 to i64
  br label %32

; <label>:30:                                     ; preds = %32
  %31 = icmp slt i64 %48, %29
  br i1 %31, label %32, label %62

; <label>:32:                                     ; preds = %30, %24
  %33 = phi i64 [ 0, %24 ], [ %48, %30 ]
  %34 = getelementptr inbounds i8, i8* %26, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i64
  %37 = getelementptr inbounds [256 x i8], [256 x i8]* @folded_chars, i64 0, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = getelementptr inbounds i8, i8* %28, i64 %33
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i64
  %43 = getelementptr inbounds [256 x i8], [256 x i8]* @folded_chars, i64 0, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = zext i8 %44 to i32
  %46 = sub nsw i32 %39, %45
  %47 = icmp eq i32 %46, 0
  %48 = add nuw nsw i64 %33, 1
  br i1 %47, label %30, label %75

; <label>:49:                                     ; preds = %51
  %50 = icmp slt i64 %61, %22
  br i1 %50, label %51, label %63

; <label>:51:                                     ; preds = %49, %17
  %52 = phi i64 [ 0, %17 ], [ %61, %49 ]
  %53 = getelementptr inbounds i8, i8* %19, i64 %52
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  %56 = getelementptr inbounds i8, i8* %21, i64 %52
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i32
  %59 = sub nsw i32 %55, %58
  %60 = icmp eq i32 %59, 0
  %61 = add nuw nsw i64 %52, 1
  br i1 %60, label %49, label %76

; <label>:62:                                     ; preds = %30
  br label %64

; <label>:63:                                     ; preds = %49
  br label %64

; <label>:64:                                     ; preds = %63, %62, %16, %23
  %65 = sext i16 %5 to i32
  %66 = sext i16 %8 to i32
  %67 = sub nsw i32 %65, %66
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %77

; <label>:69:                                     ; preds = %64
  %70 = bitcast i8* %0 to i64*
  %71 = load i64, i64* %70, align 8
  %72 = bitcast i8* %1 to i64*
  %73 = load i64, i64* %72, align 8
  %74 = sub i64 %71, %73
  br label %80

; <label>:75:                                     ; preds = %32
  br label %77

; <label>:76:                                     ; preds = %51
  br label %77

; <label>:77:                                     ; preds = %76, %75, %64
  %78 = phi i32 [ %67, %64 ], [ %46, %75 ], [ %59, %76 ]
  %79 = sext i32 %78 to i64
  br label %80

; <label>:80:                                     ; preds = %77, %69
  %81 = phi i64 [ %74, %69 ], [ %79, %77 ]
  %82 = trunc i64 %81 to i32
  ret i32 %82
}

declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)* nocapture) local_unnamed_addr #3

declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #4

declare i32 @re_match(%struct.re_pattern_buffer*, i8*, i32, i32, %struct.re_registers*) local_unnamed_addr #3

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @print_field(i8* readonly, i8* readnone) unnamed_addr #6 {
  %3 = icmp ult i8* %0, %1
  br i1 %3, label %4, label %184

; <label>:4:                                      ; preds = %2
  br label %5

; <label>:5:                                      ; preds = %4, %180
  %6 = phi i8* [ %181, %180 ], [ %0, %4 ]
  %7 = load i8, i8* %6, align 1
  %8 = zext i8 %7 to i64
  %9 = getelementptr inbounds [256 x i8], [256 x i8]* @edited_flag, i64 0, i64 %8
  %10 = load i8, i8* %9, align 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %168, label %12

; <label>:12:                                     ; preds = %5
  %13 = getelementptr inbounds [0 x i8], [0 x i8]* bitcast ([256 x i8]* @diacrit_diac to [0 x i8]*), i64 0, i64 %8
  %14 = load i8, i8* %13, align 1
  %15 = icmp ne i8 %14, 0
  %16 = load i32, i32* @output_format, align 4
  %17 = icmp eq i32 %16, 3
  %18 = and i1 %15, %17
  br i1 %18, label %19, label %106

; <label>:19:                                     ; preds = %12
  %20 = sext i8 %14 to i32
  %21 = getelementptr inbounds [0 x i8], [0 x i8]* bitcast ([256 x i8]* @diacrit_base to [0 x i8]*), i64 0, i64 %8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  switch i32 %20, label %180 [
    i32 1, label %24
    i32 2, label %48
    i32 3, label %52
    i32 4, label %56
    i32 5, label %60
    i32 6, label %64
    i32 7, label %68
    i32 8, label %70
    i32 9, label %88
  ]

; <label>:24:                                     ; preds = %19
  switch i32 %23, label %37 [
    i32 111, label %25
    i32 79, label %28
    i32 97, label %31
    i32 65, label %34
  ]

; <label>:25:                                     ; preds = %24
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %27 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.71, i64 0, i64 0), %struct._IO_FILE* %26) #11
  br label %180

; <label>:28:                                     ; preds = %24
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %30 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.72, i64 0, i64 0), %struct._IO_FILE* %29) #11
  br label %180

; <label>:31:                                     ; preds = %24
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %33 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.73, i64 0, i64 0), %struct._IO_FILE* %32) #11
  br label %180

; <label>:34:                                     ; preds = %24
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %36 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.74, i64 0, i64 0), %struct._IO_FILE* %35) #11
  br label %180

; <label>:37:                                     ; preds = %24
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %39 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %38, i64 0, i32 5
  %40 = load i8*, i8** %39, align 8
  %41 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %38, i64 0, i32 6
  %42 = load i8*, i8** %41, align 8
  %43 = icmp ult i8* %40, %42
  br i1 %43, label %46, label %44

; <label>:44:                                     ; preds = %37
  %45 = tail call i32 @__overflow(%struct._IO_FILE* %38, i32 32) #11
  br label %180

; <label>:46:                                     ; preds = %37
  %47 = getelementptr inbounds i8, i8* %40, i64 1
  store i8* %47, i8** %39, align 8
  store i8 32, i8* %40, align 1
  br label %180

; <label>:48:                                     ; preds = %19
  %49 = icmp eq i8 %22, 105
  %50 = select i1 %49, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.76, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)
  %51 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.75, i64 0, i64 0), i8* %50, i32 %23) #11
  br label %180

; <label>:52:                                     ; preds = %19
  %53 = icmp eq i8 %22, 105
  %54 = select i1 %53, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.76, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)
  %55 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.75, i64 0, i64 0), i8* %54, i32 %23) #11
  br label %180

; <label>:56:                                     ; preds = %19
  %57 = icmp eq i8 %22, 105
  %58 = select i1 %57, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.76, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)
  %59 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.77, i64 0, i64 0), i8* %58, i32 %23) #11
  br label %180

; <label>:60:                                     ; preds = %19
  %61 = icmp eq i8 %22, 105
  %62 = select i1 %61, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.76, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)
  %63 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.78, i64 0, i64 0), i8* %62, i32 %23) #11
  br label %180

; <label>:64:                                     ; preds = %19
  %65 = icmp eq i8 %22, 105
  %66 = select i1 %65, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.76, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)
  %67 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.79, i64 0, i64 0), i8* %66, i32 %23) #11
  br label %180

; <label>:68:                                     ; preds = %19
  %69 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.80, i64 0, i64 0), i32 %23) #11
  br label %180

; <label>:70:                                     ; preds = %19
  switch i32 %23, label %77 [
    i32 97, label %71
    i32 65, label %74
  ]

; <label>:71:                                     ; preds = %70
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %73 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.81, i64 0, i64 0), %struct._IO_FILE* %72) #11
  br label %180

; <label>:74:                                     ; preds = %70
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %76 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.82, i64 0, i64 0), %struct._IO_FILE* %75) #11
  br label %180

; <label>:77:                                     ; preds = %70
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %79 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %78, i64 0, i32 5
  %80 = load i8*, i8** %79, align 8
  %81 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %78, i64 0, i32 6
  %82 = load i8*, i8** %81, align 8
  %83 = icmp ult i8* %80, %82
  br i1 %83, label %86, label %84

; <label>:84:                                     ; preds = %77
  %85 = tail call i32 @__overflow(%struct._IO_FILE* %78, i32 32) #11
  br label %180

; <label>:86:                                     ; preds = %77
  %87 = getelementptr inbounds i8, i8* %80, i64 1
  store i8* %87, i8** %79, align 8
  store i8 32, i8* %80, align 1
  br label %180

; <label>:88:                                     ; preds = %19
  switch i32 %23, label %95 [
    i32 111, label %89
    i32 79, label %92
  ]

; <label>:89:                                     ; preds = %88
  %90 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %91 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.83, i64 0, i64 0), %struct._IO_FILE* %90) #11
  br label %180

; <label>:92:                                     ; preds = %88
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %94 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.84, i64 0, i64 0), %struct._IO_FILE* %93) #11
  br label %180

; <label>:95:                                     ; preds = %88
  %96 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %97 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %96, i64 0, i32 5
  %98 = load i8*, i8** %97, align 8
  %99 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %96, i64 0, i32 6
  %100 = load i8*, i8** %99, align 8
  %101 = icmp ult i8* %98, %100
  br i1 %101, label %104, label %102

; <label>:102:                                    ; preds = %95
  %103 = tail call i32 @__overflow(%struct._IO_FILE* %96, i32 32) #11
  br label %180

; <label>:104:                                    ; preds = %95
  %105 = getelementptr inbounds i8, i8* %98, i64 1
  store i8* %105, i8** %97, align 8
  store i8 32, i8* %98, align 1
  br label %180

; <label>:106:                                    ; preds = %12
  %107 = zext i8 %7 to i32
  switch i8 %7, label %157 [
    i8 34, label %108
    i8 36, label %130
    i8 37, label %130
    i8 38, label %130
    i8 35, label %130
    i8 95, label %130
    i8 123, label %152
    i8 125, label %152
    i8 92, label %154
  ]

; <label>:108:                                    ; preds = %106
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %110 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %109, i64 0, i32 5
  %111 = load i8*, i8** %110, align 8
  %112 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %109, i64 0, i32 6
  %113 = load i8*, i8** %112, align 8
  %114 = icmp ult i8* %111, %113
  br i1 %114, label %117, label %115

; <label>:115:                                    ; preds = %108
  %116 = tail call i32 @__overflow(%struct._IO_FILE* %109, i32 34) #11
  br label %119

; <label>:117:                                    ; preds = %108
  %118 = getelementptr inbounds i8, i8* %111, i64 1
  store i8* %118, i8** %110, align 8
  store i8 34, i8* %111, align 1
  br label %119

; <label>:119:                                    ; preds = %115, %117
  %120 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %121 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %120, i64 0, i32 5
  %122 = load i8*, i8** %121, align 8
  %123 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %120, i64 0, i32 6
  %124 = load i8*, i8** %123, align 8
  %125 = icmp ult i8* %122, %124
  br i1 %125, label %128, label %126

; <label>:126:                                    ; preds = %119
  %127 = tail call i32 @__overflow(%struct._IO_FILE* %120, i32 34) #11
  br label %180

; <label>:128:                                    ; preds = %119
  %129 = getelementptr inbounds i8, i8* %122, i64 1
  store i8* %129, i8** %121, align 8
  store i8 34, i8* %122, align 1
  br label %180

; <label>:130:                                    ; preds = %106, %106, %106, %106, %106
  %131 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %132 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %131, i64 0, i32 5
  %133 = load i8*, i8** %132, align 8
  %134 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %131, i64 0, i32 6
  %135 = load i8*, i8** %134, align 8
  %136 = icmp ult i8* %133, %135
  br i1 %136, label %139, label %137

; <label>:137:                                    ; preds = %130
  %138 = tail call i32 @__overflow(%struct._IO_FILE* %131, i32 92) #11
  br label %141

; <label>:139:                                    ; preds = %130
  %140 = getelementptr inbounds i8, i8* %133, i64 1
  store i8* %140, i8** %132, align 8
  store i8 92, i8* %133, align 1
  br label %141

; <label>:141:                                    ; preds = %137, %139
  %142 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %143 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %142, i64 0, i32 5
  %144 = load i8*, i8** %143, align 8
  %145 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %142, i64 0, i32 6
  %146 = load i8*, i8** %145, align 8
  %147 = icmp ult i8* %144, %146
  br i1 %147, label %150, label %148

; <label>:148:                                    ; preds = %141
  %149 = tail call i32 @__overflow(%struct._IO_FILE* %142, i32 %107) #11
  br label %180

; <label>:150:                                    ; preds = %141
  %151 = getelementptr inbounds i8, i8* %144, i64 1
  store i8* %151, i8** %143, align 8
  store i8 %7, i8* %144, align 1
  br label %180

; <label>:152:                                    ; preds = %106, %106
  %153 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.85, i64 0, i64 0), i32 %107) #11
  br label %180

; <label>:154:                                    ; preds = %106
  %155 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %156 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.86, i64 0, i64 0), %struct._IO_FILE* %155) #11
  br label %180

; <label>:157:                                    ; preds = %106
  %158 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %159 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %158, i64 0, i32 5
  %160 = load i8*, i8** %159, align 8
  %161 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %158, i64 0, i32 6
  %162 = load i8*, i8** %161, align 8
  %163 = icmp ult i8* %160, %162
  br i1 %163, label %166, label %164

; <label>:164:                                    ; preds = %157
  %165 = tail call i32 @__overflow(%struct._IO_FILE* %158, i32 32) #11
  br label %180

; <label>:166:                                    ; preds = %157
  %167 = getelementptr inbounds i8, i8* %160, i64 1
  store i8* %167, i8** %159, align 8
  store i8 32, i8* %160, align 1
  br label %180

; <label>:168:                                    ; preds = %5
  %169 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %170 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %169, i64 0, i32 5
  %171 = load i8*, i8** %170, align 8
  %172 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %169, i64 0, i32 6
  %173 = load i8*, i8** %172, align 8
  %174 = icmp ult i8* %171, %173
  br i1 %174, label %178, label %175

; <label>:175:                                    ; preds = %168
  %176 = zext i8 %7 to i32
  %177 = tail call i32 @__overflow(%struct._IO_FILE* %169, i32 %176) #11
  br label %180

; <label>:178:                                    ; preds = %168
  %179 = getelementptr inbounds i8, i8* %171, i64 1
  store i8* %179, i8** %170, align 8
  store i8 %7, i8* %171, align 1
  br label %180

; <label>:180:                                    ; preds = %178, %175, %166, %164, %150, %148, %128, %126, %104, %102, %86, %84, %46, %44, %89, %92, %71, %74, %25, %28, %31, %34, %19, %68, %64, %60, %56, %52, %48, %154, %152
  %181 = getelementptr inbounds i8, i8* %6, i64 1
  %182 = icmp eq i8* %181, %1
  br i1 %182, label %183, label %5

; <label>:183:                                    ; preds = %180
  br label %184

; <label>:184:                                    ; preds = %183, %2
  ret void
}

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: nounwind readonly sspstrong uwtable
define internal i32 @compare_words(i8* nocapture readonly, i8* nocapture readonly) #9 {
  %3 = getelementptr inbounds i8, i8* %0, i64 8
  %4 = bitcast i8* %3 to i16*
  %5 = load i16, i16* %4, align 8
  %6 = getelementptr inbounds i8, i8* %1, i64 8
  %7 = bitcast i8* %6 to i16*
  %8 = load i16, i16* %7, align 8
  %9 = icmp slt i16 %5, %8
  %10 = select i1 %9, i8* %0, i8* %1
  %11 = getelementptr inbounds i8, i8* %10, i64 8
  %12 = bitcast i8* %11 to i16*
  %13 = load i16, i16* %12, align 8
  %14 = load i1, i1* @ignore_case, align 1
  %15 = icmp sgt i16 %13, 0
  br i1 %14, label %23, label %16

; <label>:16:                                     ; preds = %2
  br i1 %15, label %17, label %64

; <label>:17:                                     ; preds = %16
  %18 = bitcast i8* %0 to i8**
  %19 = load i8*, i8** %18, align 8
  %20 = bitcast i8* %1 to i8**
  %21 = load i8*, i8** %20, align 8
  %22 = sext i16 %13 to i64
  br label %51

; <label>:23:                                     ; preds = %2
  br i1 %15, label %24, label %64

; <label>:24:                                     ; preds = %23
  %25 = bitcast i8* %0 to i8**
  %26 = load i8*, i8** %25, align 8
  %27 = bitcast i8* %1 to i8**
  %28 = load i8*, i8** %27, align 8
  %29 = sext i16 %13 to i64
  br label %32

; <label>:30:                                     ; preds = %32
  %31 = icmp slt i64 %48, %29
  br i1 %31, label %32, label %62

; <label>:32:                                     ; preds = %24, %30
  %33 = phi i64 [ 0, %24 ], [ %48, %30 ]
  %34 = getelementptr inbounds i8, i8* %26, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i64
  %37 = getelementptr inbounds [256 x i8], [256 x i8]* @folded_chars, i64 0, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = getelementptr inbounds i8, i8* %28, i64 %33
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i64
  %43 = getelementptr inbounds [256 x i8], [256 x i8]* @folded_chars, i64 0, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = zext i8 %44 to i32
  %46 = sub nsw i32 %39, %45
  %47 = icmp eq i32 %46, 0
  %48 = add nuw nsw i64 %33, 1
  br i1 %47, label %30, label %68

; <label>:49:                                     ; preds = %51
  %50 = icmp slt i64 %61, %22
  br i1 %50, label %51, label %63

; <label>:51:                                     ; preds = %17, %49
  %52 = phi i64 [ 0, %17 ], [ %61, %49 ]
  %53 = getelementptr inbounds i8, i8* %19, i64 %52
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  %56 = getelementptr inbounds i8, i8* %21, i64 %52
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i32
  %59 = sub nsw i32 %55, %58
  %60 = icmp eq i32 %59, 0
  %61 = add nuw nsw i64 %52, 1
  br i1 %60, label %49, label %69

; <label>:62:                                     ; preds = %30
  br label %64

; <label>:63:                                     ; preds = %49
  br label %64

; <label>:64:                                     ; preds = %63, %62, %16, %23
  %65 = sext i16 %5 to i32
  %66 = sext i16 %8 to i32
  %67 = sub nsw i32 %65, %66
  br label %70

; <label>:68:                                     ; preds = %32
  br label %70

; <label>:69:                                     ; preds = %51
  br label %70

; <label>:70:                                     ; preds = %69, %68, %64
  %71 = phi i32 [ %67, %64 ], [ %46, %68 ], [ %59, %69 ]
  ret i32 %71
}

declare i8* @re_compile_pattern(i8*, i64, %struct.re_pattern_buffer*) local_unnamed_addr #3

declare i32 @re_compile_fastmap(%struct.re_pattern_buffer*) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal void @__argmatch_die() #6 {
  tail call void @usage(i32 1) #11
  ret void
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i64 @argmatch(i8* nocapture readonly, i8** nocapture readonly, i8* readonly, i64) local_unnamed_addr #9 {
  %5 = tail call i64 @strlen(i8* %0) #14
  %6 = load i8*, i8** %1, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %39, label %8

; <label>:8:                                      ; preds = %4
  %9 = icmp eq i8* %2, null
  br label %10

; <label>:10:                                     ; preds = %8, %31
  %11 = phi i8* [ %6, %8 ], [ %36, %31 ]
  %12 = phi i8 [ 0, %8 ], [ %33, %31 ]
  %13 = phi i64 [ -1, %8 ], [ %32, %31 ]
  %14 = phi i64 [ 0, %8 ], [ %34, %31 ]
  %15 = tail call i32 @strncmp(i8* nonnull %11, i8* %0, i64 %5) #14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %31

; <label>:17:                                     ; preds = %10
  %18 = tail call i64 @strlen(i8* nonnull %11) #14
  %19 = icmp eq i64 %18, %5
  br i1 %19, label %45, label %20

; <label>:20:                                     ; preds = %17
  %21 = icmp eq i64 %13, -1
  br i1 %21, label %31, label %22

; <label>:22:                                     ; preds = %20
  br i1 %9, label %30, label %23

; <label>:23:                                     ; preds = %22
  %24 = mul i64 %13, %3
  %25 = getelementptr inbounds i8, i8* %2, i64 %24
  %26 = mul i64 %14, %3
  %27 = getelementptr inbounds i8, i8* %2, i64 %26
  %28 = tail call i32 @memcmp(i8* %25, i8* %27, i64 %3) #14
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %31, label %30

; <label>:30:                                     ; preds = %23, %22
  br label %31

; <label>:31:                                     ; preds = %20, %23, %10, %30
  %32 = phi i64 [ %13, %10 ], [ %13, %30 ], [ %13, %23 ], [ %14, %20 ]
  %33 = phi i8 [ %12, %10 ], [ 1, %30 ], [ %12, %23 ], [ %12, %20 ]
  %34 = add i64 %14, 1
  %35 = getelementptr inbounds i8*, i8** %1, i64 %34
  %36 = load i8*, i8** %35, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %38, label %10

; <label>:38:                                     ; preds = %31
  br label %39

; <label>:39:                                     ; preds = %38, %4
  %40 = phi i64 [ -1, %4 ], [ %32, %38 ]
  %41 = phi i8 [ 0, %4 ], [ %33, %38 ]
  %42 = and i8 %41, 1
  %43 = icmp eq i8 %42, 0
  %44 = select i1 %43, i64 %40, i64 -2
  br label %46

; <label>:45:                                     ; preds = %17
  br label %46

; <label>:46:                                     ; preds = %45, %39
  %47 = phi i64 [ %44, %39 ], [ %14, %45 ]
  ret i64 %47
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define void @argmatch_invalid(i8*, i8*, i64) local_unnamed_addr #6 {
  %4 = icmp eq i64 %2, -1
  %5 = select i1 %4, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1.31, i64 0, i64 0)
  %6 = tail call i8* @dcgettext(i8* null, i8* %5, i32 5) #11
  %7 = tail call i8* @quotearg_n_style(i32 0, i32 8, i8* %1) #11
  %8 = tail call i8* @quote_n(i32 1, i8* %0) #11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %6, i8* %7, i8* %8) #11
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define void @argmatch_valid(i8** nocapture readonly, i8* nocapture readonly, i64) local_unnamed_addr #6 {
  %4 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2.32, i64 0, i64 0), i32 5) #11
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %6 = tail call i32 @fputs_unlocked(i8* %4, %struct._IO_FILE* %5) #11
  %7 = load i8*, i8** %0, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %35, label %9

; <label>:9:                                      ; preds = %3
  br label %10

; <label>:10:                                     ; preds = %9, %28
  %11 = phi i8* [ %32, %28 ], [ %7, %9 ]
  %12 = phi i8* [ %29, %28 ], [ null, %9 ]
  %13 = phi i64 [ %30, %28 ], [ 0, %9 ]
  %14 = icmp eq i64 %13, 0
  %15 = mul i64 %13, %2
  %16 = getelementptr inbounds i8, i8* %1, i64 %15
  br i1 %14, label %20, label %17

; <label>:17:                                     ; preds = %10
  %18 = tail call i32 @memcmp(i8* %12, i8* %16, i64 %2) #14
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %24, label %20

; <label>:20:                                     ; preds = %10, %17
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %22 = tail call i8* @quote(i8* nonnull %11) #11
  %23 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %21, i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3.33, i64 0, i64 0), i8* %22) #11
  br label %28

; <label>:24:                                     ; preds = %17
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %26 = tail call i8* @quote(i8* nonnull %11) #11
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %25, i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4.34, i64 0, i64 0), i8* %26) #11
  br label %28

; <label>:28:                                     ; preds = %20, %24
  %29 = phi i8* [ %16, %20 ], [ %12, %24 ]
  %30 = add i64 %13, 1
  %31 = getelementptr inbounds i8*, i8** %0, i64 %30
  %32 = load i8*, i8** %31, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %10

; <label>:34:                                     ; preds = %28
  br label %35

; <label>:35:                                     ; preds = %34, %3
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %37 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %36, i64 0, i32 5
  %38 = load i8*, i8** %37, align 8
  %39 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %36, i64 0, i32 6
  %40 = load i8*, i8** %39, align 8
  %41 = icmp ult i8* %38, %40
  br i1 %41, label %44, label %42

; <label>:42:                                     ; preds = %35
  %43 = tail call i32 @__overflow(%struct._IO_FILE* nonnull %36, i32 10) #11
  br label %46

; <label>:44:                                     ; preds = %35
  %45 = getelementptr inbounds i8, i8* %38, i64 1
  store i8* %45, i8** %37, align 8
  store i8 10, i8* %38, align 1
  br label %46

; <label>:46:                                     ; preds = %42, %44
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @__xargmatch_internal(i8*, i8*, i8** nocapture readonly, i8* readonly, i64, void ()* nocapture) local_unnamed_addr #6 {
  %7 = tail call i64 @argmatch(i8* %1, i8** %2, i8* %3, i64 %4) #14
  %8 = icmp sgt i64 %7, -1
  br i1 %8, label %15, label %9

; <label>:9:                                      ; preds = %6
  %10 = icmp eq i64 %7, -1
  %11 = select i1 %10, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1.31, i64 0, i64 0)
  %12 = tail call i8* @dcgettext(i8* null, i8* %11, i32 5) #11
  %13 = tail call i8* @quotearg_n_style(i32 0, i32 8, i8* %1) #11
  %14 = tail call i8* @quote_n(i32 1, i8* %0) #11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %12, i8* %13, i8* %14) #11
  tail call void @argmatch_valid(i8** %2, i8* %3, i64 %4)
  tail call void %5() #11
  br label %15

; <label>:15:                                     ; preds = %6, %9
  %16 = phi i64 [ -1, %9 ], [ %7, %6 ]
  ret i64 %16
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i8* @argmatch_to_argument(i8* nocapture readonly, i8** nocapture readonly, i8* nocapture readonly, i64) local_unnamed_addr #9 {
  %5 = load i8*, i8** %1, align 8
  %6 = icmp eq i8* %5, null
  br i1 %6, label %22, label %7

; <label>:7:                                      ; preds = %4
  br label %12

; <label>:8:                                      ; preds = %12
  %9 = getelementptr inbounds i8*, i8** %1, i64 %19
  %10 = load i8*, i8** %9, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %20, label %12

; <label>:12:                                     ; preds = %7, %8
  %13 = phi i8* [ %10, %8 ], [ %5, %7 ]
  %14 = phi i64 [ %19, %8 ], [ 0, %7 ]
  %15 = mul i64 %14, %3
  %16 = getelementptr inbounds i8, i8* %2, i64 %15
  %17 = tail call i32 @memcmp(i8* %0, i8* %16, i64 %3) #14
  %18 = icmp eq i32 %17, 0
  %19 = add i64 %14, 1
  br i1 %18, label %20, label %8

; <label>:20:                                     ; preds = %8, %12
  %21 = phi i8* [ null, %8 ], [ %13, %12 ]
  br label %22

; <label>:22:                                     ; preds = %20, %4
  %23 = phi i8* [ null, %4 ], [ %21, %20 ]
  ret i8* %23
}

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
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #11
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
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.69, i64 0, i64 0), i32 5) #11
  %13 = load i8*, i8** @file_name, align 8
  %14 = icmp eq i8* %13, null
  %15 = load i32, i32* %7, align 4
  br i1 %14, label %18, label %16

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.70, i64 0, i64 0), i8* %17, i8* %12) #11
  br label %19

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.71, i64 0, i64 0), i8* %12) #11
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4
  tail call void @_exit(i32 %20) #15
  unreachable

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #11
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4
  tail call void @_exit(i32 %26) #15
  unreachable

; <label>:27:                                     ; preds = %21
  ret void
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #10

; Function Attrs: nounwind sspstrong uwtable
define %struct._IO_FILE* @freopen_safer(i8*, i8*, %struct._IO_FILE*) local_unnamed_addr #6 {
  %4 = tail call i32 @fileno(%struct._IO_FILE* %2) #11
  switch i32 %4, label %5 [
    i32 2, label %9
    i32 1, label %14
    i32 0, label %49
  ]

; <label>:5:                                      ; preds = %3
  %6 = tail call i32 @dup2(i32 2, i32 2) #11
  %7 = icmp ne i32 %6, 2
  %8 = zext i1 %7 to i8
  br label %9

; <label>:9:                                      ; preds = %5, %3
  %10 = phi i8 [ 0, %3 ], [ %8, %5 ]
  %11 = tail call i32 @dup2(i32 1, i32 1) #11
  %12 = icmp ne i32 %11, 1
  %13 = zext i1 %12 to i8
  br label %14

; <label>:14:                                     ; preds = %3, %9
  %15 = phi i8 [ 0, %3 ], [ %13, %9 ]
  %16 = phi i8 [ 0, %3 ], [ %10, %9 ]
  %17 = tail call i32 @dup2(i32 0, i32 0) #11
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %27, label %19

; <label>:19:                                     ; preds = %14
  %20 = tail call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.91, i64 0, i64 0), i32 0) #11
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %27, label %22

; <label>:22:                                     ; preds = %19
  %23 = icmp sgt i32 %20, -1
  br i1 %23, label %24, label %54

; <label>:24:                                     ; preds = %22
  %25 = tail call i32 @close(i32 %20) #11
  %26 = tail call i32* @__errno_location() #1
  store i32 9, i32* %26, align 4
  br label %54

; <label>:27:                                     ; preds = %14, %19
  %28 = phi i1 [ false, %14 ], [ true, %19 ]
  %29 = icmp eq i8 %15, 0
  br i1 %29, label %38, label %30

; <label>:30:                                     ; preds = %27
  %31 = tail call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.91, i64 0, i64 0), i32 0) #11
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %38, label %33

; <label>:33:                                     ; preds = %30
  %34 = icmp sgt i32 %31, -1
  br i1 %34, label %35, label %54

; <label>:35:                                     ; preds = %33
  %36 = tail call i32 @close(i32 %31) #11
  %37 = tail call i32* @__errno_location() #1
  store i32 9, i32* %37, align 4
  br label %54

; <label>:38:                                     ; preds = %30, %27
  %39 = and i8 %16, 1
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %49, label %41

; <label>:41:                                     ; preds = %38
  %42 = tail call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.91, i64 0, i64 0), i32 0) #11
  %43 = icmp eq i32 %42, 2
  br i1 %43, label %49, label %44

; <label>:44:                                     ; preds = %41
  %45 = icmp sgt i32 %42, -1
  br i1 %45, label %46, label %54

; <label>:46:                                     ; preds = %44
  %47 = tail call i32 @close(i32 %42) #11
  %48 = tail call i32* @__errno_location() #1
  store i32 9, i32* %48, align 4
  br label %54

; <label>:49:                                     ; preds = %3, %41, %38
  %50 = phi i8 [ %16, %38 ], [ %16, %41 ], [ 0, %3 ]
  %51 = phi i8 [ %15, %38 ], [ %15, %41 ], [ 0, %3 ]
  %52 = phi i1 [ %28, %38 ], [ %28, %41 ], [ false, %3 ]
  %53 = tail call %struct._IO_FILE* @rpl_freopen(i8* %0, i8* %1, %struct._IO_FILE* %2) #11
  br label %54

; <label>:54:                                     ; preds = %44, %46, %33, %35, %22, %24, %49
  %55 = phi i8 [ %50, %49 ], [ %16, %24 ], [ %16, %22 ], [ %16, %35 ], [ %16, %33 ], [ %16, %46 ], [ %16, %44 ]
  %56 = phi i8 [ %51, %49 ], [ %15, %24 ], [ %15, %22 ], [ 1, %35 ], [ 1, %33 ], [ %15, %46 ], [ %15, %44 ]
  %57 = phi i1 [ %52, %49 ], [ true, %24 ], [ true, %22 ], [ %28, %35 ], [ %28, %33 ], [ %28, %46 ], [ %28, %44 ]
  %58 = phi %struct._IO_FILE* [ %53, %49 ], [ null, %24 ], [ null, %22 ], [ null, %35 ], [ null, %33 ], [ null, %46 ], [ null, %44 ]
  %59 = tail call i32* @__errno_location() #1
  %60 = load i32, i32* %59, align 4
  %61 = and i8 %55, 1
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %65, label %63

; <label>:63:                                     ; preds = %54
  %64 = tail call i32 @close(i32 2) #11
  br label %65

; <label>:65:                                     ; preds = %54, %63
  %66 = and i8 %56, 1
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %70, label %68

; <label>:68:                                     ; preds = %65
  %69 = tail call i32 @close(i32 1) #11
  br label %70

; <label>:70:                                     ; preds = %65, %68
  br i1 %57, label %71, label %73

; <label>:71:                                     ; preds = %70
  %72 = tail call i32 @close(i32 0) #11
  br label %73

; <label>:73:                                     ; preds = %71, %70
  %74 = icmp eq %struct._IO_FILE* %58, null
  br i1 %74, label %75, label %76

; <label>:75:                                     ; preds = %73
  store i32 %60, i32* %59, align 4
  br label %76

; <label>:76:                                     ; preds = %73, %75
  ret %struct._IO_FILE* %58
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @dup2(i32, i32) local_unnamed_addr #2

declare i32 @open(i8* nocapture readonly, i32, ...) local_unnamed_addr #3

declare i32 @close(i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 {
  %2 = icmp eq i8* %0, null
  br i1 %2, label %3, label %6

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.96, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #17
  tail call void @abort() #15
  unreachable

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #14
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
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.97, i64 0, i64 0), i64 7) #14
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %24

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.98, i64 0, i64 0), i64 3) #14
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
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #11

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @proper_name(i8*) local_unnamed_addr #6 {
  %2 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #11
  %3 = icmp eq i8* %2, %0
  br i1 %3, label %14, label %4

; <label>:4:                                      ; preds = %1
  %5 = tail call fastcc zeroext i1 @mbsstr_trimmed_wordbounded(i8* %2, i8* %0)
  br i1 %5, label %14, label %6

; <label>:6:                                      ; preds = %4
  %7 = tail call i64 @strlen(i8* %2) #14
  %8 = tail call i64 @strlen(i8* %0) #14
  %9 = add i64 %7, 4
  %10 = add i64 %9, %8
  %11 = tail call noalias i8* @xmalloc(i64 %10) #11
  %12 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %11, i1 false)
  %13 = tail call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %11, i32 1, i64 %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.99, i64 0, i64 0), i8* %2, i8* %0) #11
  br label %14

; <label>:14:                                     ; preds = %1, %4, %6
  %15 = phi i8* [ %11, %6 ], [ %2, %4 ], [ %0, %1 ]
  ret i8* %15
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @mbsstr_trimmed_wordbounded(i8*, i8*) unnamed_addr #6 {
  %3 = alloca %struct.mbuiter_multi, align 8
  %4 = alloca %struct.mbuiter_multi, align 8
  %5 = tail call i8* @trim2(i8* %1, i32 2) #11
  %6 = load i8, i8* %0, align 1
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %147, label %8

; <label>:8:                                      ; preds = %2
  %9 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %3, i64 0, i32 0
  %10 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %3, i64 0, i32 3, i32 0
  %11 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %3, i64 0, i32 1
  %12 = bitcast %struct.__mbstate_t* %11 to i64*
  %13 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %3, i64 0, i32 2
  %14 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %4, i64 0, i32 0
  %15 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %4, i64 0, i32 3, i32 0
  %16 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %4, i64 0, i32 1
  %17 = bitcast %struct.__mbstate_t* %16 to i64*
  %18 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %4, i64 0, i32 2
  %19 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %4, i64 0, i32 3, i32 2
  %20 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %4, i64 0, i32 3, i32 3
  %21 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %3, i64 0, i32 3, i32 2
  %22 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %3, i64 0, i32 3, i32 3
  %23 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %3, i64 0, i32 3, i32 1
  %24 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %4, i64 0, i32 3, i32 1
  br label %25

; <label>:25:                                     ; preds = %8, %108
  %26 = phi i8* [ %0, %8 ], [ %109, %108 ]
  %27 = call i8* @mbsstr(i8* %26, i8* %5) #14
  %28 = icmp eq i8* %27, null
  br i1 %28, label %145, label %29

; <label>:29:                                     ; preds = %25
  %30 = call i64 @__ctype_get_mb_cur_max() #11
  %31 = icmp ugt i64 %30, 1
  br i1 %31, label %32, label %112

; <label>:32:                                     ; preds = %29
  call void @llvm.lifetime.start(i64 64, i8* nonnull %9) #11
  store i8* %26, i8** %10, align 8
  store i8 0, i8* %9, align 8
  store i64 0, i64* %12, align 4
  store i8 0, i8* %13, align 4
  %33 = icmp ult i8* %26, %27
  br i1 %33, label %34, label %52

; <label>:34:                                     ; preds = %32
  br label %35

; <label>:35:                                     ; preds = %34, %42
  call void @mbuiter_multi_next(%struct.mbuiter_multi* nonnull %3)
  %36 = load i8, i8* %21, align 8
  %37 = load i32, i32* %22, align 4
  %38 = icmp eq i8 %36, 0
  %39 = icmp ne i32 %37, 0
  %40 = or i1 %38, %39
  br i1 %40, label %42, label %41

; <label>:41:                                     ; preds = %35
  call void @abort() #15
  unreachable

; <label>:42:                                     ; preds = %35
  %43 = load i64, i64* %23, align 8
  %44 = load i8*, i8** %10, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 %43
  store i8* %45, i8** %10, align 8
  store i8 0, i8* %13, align 4
  %46 = icmp ult i8* %45, %27
  br i1 %46, label %35, label %47

; <label>:47:                                     ; preds = %42
  br i1 %38, label %52, label %48

; <label>:48:                                     ; preds = %47
  %49 = call i32 @iswalnum(i32 %37) #11
  %50 = icmp eq i32 %49, 0
  %51 = zext i1 %50 to i8
  br label %52

; <label>:52:                                     ; preds = %48, %47, %32
  %53 = phi i8 [ 1, %32 ], [ 1, %47 ], [ %51, %48 ]
  store i8* %27, i8** %10, align 8
  store i8 0, i8* %9, align 8
  store i64 0, i64* %12, align 4
  store i8 0, i8* %13, align 4
  call void @llvm.lifetime.start(i64 64, i8* nonnull %14) #11
  store i8* %5, i8** %15, align 8
  store i8 0, i8* %14, align 8
  store i64 0, i64* %17, align 4
  store i8 0, i8* %18, align 4
  call void @mbuiter_multi_next(%struct.mbuiter_multi* nonnull %4)
  %54 = load i8, i8* %19, align 8
  %55 = load i32, i32* %20, align 4
  %56 = icmp eq i8 %54, 0
  %57 = icmp ne i32 %55, 0
  %58 = or i1 %56, %57
  br i1 %58, label %59, label %80

; <label>:59:                                     ; preds = %52
  br label %60

; <label>:60:                                     ; preds = %59, %67
  call void @mbuiter_multi_next(%struct.mbuiter_multi* nonnull %3)
  %61 = load i8, i8* %21, align 8
  %62 = load i32, i32* %22, align 4
  %63 = icmp eq i8 %61, 0
  %64 = icmp ne i32 %62, 0
  %65 = or i1 %63, %64
  br i1 %65, label %67, label %66

; <label>:66:                                     ; preds = %60
  call void @abort() #15
  unreachable

; <label>:67:                                     ; preds = %60
  %68 = load i64, i64* %23, align 8
  %69 = load i8*, i8** %10, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 %68
  store i8* %70, i8** %10, align 8
  store i8 0, i8* %13, align 4
  %71 = load i64, i64* %24, align 8
  %72 = load i8*, i8** %15, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 %71
  store i8* %73, i8** %15, align 8
  store i8 0, i8* %18, align 4
  call void @mbuiter_multi_next(%struct.mbuiter_multi* nonnull %4)
  %74 = load i8, i8* %19, align 8
  %75 = load i32, i32* %20, align 4
  %76 = icmp eq i8 %74, 0
  %77 = icmp ne i32 %75, 0
  %78 = or i1 %76, %77
  br i1 %78, label %60, label %79

; <label>:79:                                     ; preds = %67
  br label %80

; <label>:80:                                     ; preds = %79, %52
  call void @llvm.lifetime.end(i64 64, i8* nonnull %14) #11
  call void @mbuiter_multi_next(%struct.mbuiter_multi* nonnull %3)
  %81 = load i8, i8* %21, align 8
  %82 = load i32, i32* %22, align 4
  %83 = icmp eq i32 %82, 0
  %84 = icmp ne i8 %81, 0
  %85 = and i1 %84, %83
  %86 = icmp eq i8 %81, 0
  %87 = or i1 %86, %85
  br i1 %87, label %92, label %88

; <label>:88:                                     ; preds = %80
  %89 = call i32 @iswalnum(i32 %82) #11
  %90 = icmp eq i32 %89, 0
  %91 = zext i1 %90 to i8
  br label %92

; <label>:92:                                     ; preds = %80, %88
  %93 = phi i8 [ 1, %80 ], [ %91, %88 ]
  %94 = icmp eq i8 %53, 0
  %95 = icmp eq i8 %93, 0
  %96 = or i1 %94, %95
  br i1 %96, label %97, label %103

; <label>:97:                                     ; preds = %92
  store i8* %27, i8** %10, align 8
  store i8 0, i8* %9, align 8
  store i64 0, i64* %12, align 4
  store i8 0, i8* %13, align 4
  call void @mbuiter_multi_next(%struct.mbuiter_multi* nonnull %3)
  %98 = load i8, i8* %21, align 8
  %99 = load i32, i32* %22, align 4
  %100 = icmp eq i8 %98, 0
  %101 = icmp ne i32 %99, 0
  %102 = or i1 %100, %101
  br i1 %102, label %105, label %103

; <label>:103:                                    ; preds = %92, %97
  %104 = phi i8 [ 0, %97 ], [ 1, %92 ]
  call void @llvm.lifetime.end(i64 64, i8* nonnull %9) #11
  br label %147

; <label>:105:                                    ; preds = %97
  %106 = load i64, i64* %23, align 8
  %107 = getelementptr inbounds i8, i8* %27, i64 %106
  call void @llvm.lifetime.end(i64 64, i8* nonnull %9) #11
  br label %108

; <label>:108:                                    ; preds = %105, %141
  %109 = phi i8* [ %107, %105 ], [ %144, %141 ]
  %110 = load i8, i8* %109, align 1
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %145, label %25

; <label>:112:                                    ; preds = %29
  %113 = icmp ult i8* %26, %27
  br i1 %113, label %114, label %124

; <label>:114:                                    ; preds = %112
  %115 = tail call i16** @__ctype_b_loc() #1
  %116 = load i16*, i16** %115, align 8
  %117 = getelementptr inbounds i8, i8* %27, i64 -1
  %118 = load i8, i8* %117, align 1
  %119 = zext i8 %118 to i64
  %120 = getelementptr inbounds i16, i16* %116, i64 %119
  %121 = load i16, i16* %120, align 2
  %122 = and i16 %121, 8
  %123 = icmp eq i16 %122, 0
  br label %124

; <label>:124:                                    ; preds = %114, %112
  %125 = phi i1 [ true, %112 ], [ %123, %114 ]
  %126 = call i64 @strlen(i8* %5) #14
  %127 = getelementptr inbounds i8, i8* %27, i64 %126
  %128 = load i8, i8* %127, align 1
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %138, label %130

; <label>:130:                                    ; preds = %124
  %131 = tail call i16** @__ctype_b_loc() #1
  %132 = load i16*, i16** %131, align 8
  %133 = zext i8 %128 to i64
  %134 = getelementptr inbounds i16, i16* %132, i64 %133
  %135 = load i16, i16* %134, align 2
  %136 = and i16 %135, 8
  %137 = icmp eq i16 %136, 0
  br label %138

; <label>:138:                                    ; preds = %130, %124
  %139 = phi i1 [ true, %124 ], [ %137, %130 ]
  %140 = and i1 %125, %139
  br i1 %140, label %145, label %141

; <label>:141:                                    ; preds = %138
  %142 = load i8, i8* %27, align 1
  %143 = icmp eq i8 %142, 0
  %144 = getelementptr inbounds i8, i8* %27, i64 1
  br i1 %143, label %145, label %108

; <label>:145:                                    ; preds = %138, %141, %25, %108
  %146 = phi i8 [ 0, %108 ], [ 0, %25 ], [ 0, %141 ], [ 1, %138 ]
  br label %147

; <label>:147:                                    ; preds = %145, %2, %103
  %148 = phi i8 [ %104, %103 ], [ 0, %2 ], [ %146, %145 ]
  call void @free(i8* %5) #11
  %149 = and i8 %148, 1
  %150 = icmp ne i8 %149, 0
  ret i1 %150
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @iswalnum(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i8* @proper_name_utf8(i8*, i8*) local_unnamed_addr #6 {
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #11
  %4 = tail call i8* @locale_charset() #11
  %5 = tail call i32 @c_strcasecmp(i8* %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.102, i64 0, i64 0)) #14
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %19, label %7

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @xstr_iconv(i8* %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.102, i64 0, i64 0), i8* %4) #11
  %9 = tail call i64 @strlen(i8* %4) #14
  %10 = add i64 %9, 11
  %11 = tail call noalias i8* @xmalloc(i64 %10) #11
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %4, i64 %9, i32 1, i1 false)
  %12 = getelementptr inbounds i8, i8* %11, i64 %9
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2.103, i64 0, i64 0), i64 11, i32 1, i1 false)
  %13 = tail call i8* @xstr_iconv(i8* %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.102, i64 0, i64 0), i8* %11) #11
  tail call void @free(i8* %11) #11
  %14 = icmp eq i8* %13, null
  br i1 %14, label %19, label %15

; <label>:15:                                     ; preds = %7
  %16 = tail call i8* @strchr(i8* nonnull %13, i32 63) #11
  %17 = icmp eq i8* %16, null
  br i1 %17, label %19, label %18

; <label>:18:                                     ; preds = %15
  tail call void @free(i8* nonnull %13) #11
  br label %19

; <label>:19:                                     ; preds = %2, %18, %7, %15
  %20 = phi i8* [ null, %18 ], [ null, %7 ], [ %13, %15 ], [ %1, %2 ]
  %21 = phi i8* [ %8, %18 ], [ %8, %7 ], [ %8, %15 ], [ %1, %2 ]
  %22 = phi i8* [ null, %18 ], [ null, %7 ], [ %13, %15 ], [ null, %2 ]
  %23 = phi i8* [ %8, %18 ], [ %8, %7 ], [ %8, %15 ], [ null, %2 ]
  %24 = icmp ne i8* %21, null
  %25 = icmp ne i8* %20, null
  %26 = select i1 %25, i8* %20, i8* %0
  %27 = select i1 %24, i8* %21, i8* %26
  %28 = tail call i32 @strcmp(i8* %3, i8* %0) #11
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %58, label %30

; <label>:30:                                     ; preds = %19
  %31 = tail call fastcc zeroext i1 @mbsstr_trimmed_wordbounded(i8* %3, i8* %0)
  br i1 %31, label %39, label %32

; <label>:32:                                     ; preds = %30
  br i1 %24, label %33, label %35

; <label>:33:                                     ; preds = %32
  %34 = tail call fastcc zeroext i1 @mbsstr_trimmed_wordbounded(i8* %3, i8* nonnull %21)
  br i1 %34, label %39, label %35

; <label>:35:                                     ; preds = %33, %32
  %36 = icmp eq i8* %20, null
  br i1 %36, label %45, label %37

; <label>:37:                                     ; preds = %35
  %38 = tail call fastcc zeroext i1 @mbsstr_trimmed_wordbounded(i8* %3, i8* nonnull %20)
  br i1 %38, label %39, label %45

; <label>:39:                                     ; preds = %37, %33, %30
  %40 = icmp eq i8* %23, null
  br i1 %40, label %42, label %41

; <label>:41:                                     ; preds = %39
  tail call void @free(i8* nonnull %23) #11
  br label %42

; <label>:42:                                     ; preds = %39, %41
  %43 = icmp eq i8* %22, null
  br i1 %43, label %68, label %44

; <label>:44:                                     ; preds = %42
  tail call void @free(i8* nonnull %22) #11
  br label %68

; <label>:45:                                     ; preds = %35, %37
  %46 = tail call i64 @strlen(i8* %3) #14
  %47 = tail call i64 @strlen(i8* %27) #14
  %48 = add i64 %46, 4
  %49 = add i64 %48, %47
  %50 = tail call noalias i8* @xmalloc(i64 %49) #11
  %51 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %50, i1 false)
  %52 = tail call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %50, i32 1, i64 %51, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.99, i64 0, i64 0), i8* %3, i8* %27) #11
  %53 = icmp eq i8* %23, null
  br i1 %53, label %55, label %54

; <label>:54:                                     ; preds = %45
  tail call void @free(i8* nonnull %23) #11
  br label %55

; <label>:55:                                     ; preds = %45, %54
  %56 = icmp eq i8* %22, null
  br i1 %56, label %68, label %57

; <label>:57:                                     ; preds = %55
  tail call void @free(i8* nonnull %22) #11
  br label %68

; <label>:58:                                     ; preds = %19
  %59 = icmp eq i8* %23, null
  %60 = icmp eq i8* %23, %27
  %61 = or i1 %59, %60
  br i1 %61, label %63, label %62

; <label>:62:                                     ; preds = %58
  tail call void @free(i8* %23) #11
  br label %63

; <label>:63:                                     ; preds = %58, %62
  %64 = icmp eq i8* %22, null
  %65 = icmp eq i8* %22, %27
  %66 = or i1 %64, %65
  br i1 %66, label %68, label %67

; <label>:67:                                     ; preds = %63
  tail call void @free(i8* %22) #11
  br label %68

; <label>:68:                                     ; preds = %67, %63, %57, %55, %44, %42
  %69 = phi i8* [ %3, %42 ], [ %3, %44 ], [ %50, %55 ], [ %50, %57 ], [ %27, %63 ], [ %27, %67 ]
  ret i8* %69
}

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 {
  %2 = tail call i32* @__errno_location() #1
  %3 = load i32, i32* %2, align 4
  %4 = icmp ne %struct.quoting_options* %0, null
  %5 = bitcast %struct.quoting_options* %0 to i8*
  %6 = select i1 %4, i8* %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*)
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #11
  %8 = bitcast i8* %7 to %struct.quoting_options*
  store i32 %3, i32* %2, align 4
  ret %struct.quoting_options* %8
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #9 {
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
  tail call void @abort() #15
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
  %13 = tail call i64 @__ctype_get_mb_cur_max() #11
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
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.114, i64 0, i64 0), i32 %28)
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.115, i64 0, i64 0), i32 %28)
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
  %75 = call i64 @strlen(i8* %53) #14
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
  call void @abort() #15
  unreachable

; <label>:95:                                     ; preds = %41, %85, %90, %92, %27, %42, %45, %47, %93, %73
  %96 = phi i32 [ 0, %93 ], [ %28, %73 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %92 ], [ 2, %90 ], [ 2, %85 ], [ 5, %41 ]
  %97 = phi i8* [ %29, %93 ], [ %52, %73 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %92 ], [ %29, %90 ], [ %29, %85 ], [ %29, %41 ]
  %98 = phi i8* [ %30, %93 ], [ %53, %73 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %92 ], [ %30, %90 ], [ %30, %85 ], [ %30, %41 ]
  %99 = phi i64 [ 0, %93 ], [ %74, %73 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %92 ], [ 1, %90 ], [ 0, %85 ], [ 0, %41 ]
  %100 = phi i8* [ %32, %93 ], [ %53, %73 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.116, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.116, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.116, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.115, i64 0, i64 0), %92 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.115, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.115, i64 0, i64 0), %85 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.116, i64 0, i64 0), %41 ]
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
  %144 = call i64 @strlen(i8* %2) #14
  br label %145

; <label>:145:                                    ; preds = %140, %143
  %146 = phi i64 [ %144, %143 ], [ %127, %140 ]
  %147 = icmp ugt i64 %141, %146
  br i1 %147, label %155, label %148

; <label>:148:                                    ; preds = %145
  %149 = getelementptr inbounds i8, i8* %2, i64 %124
  %150 = call i32 @memcmp(i8* %149, i8* %100, i64 %101) #14
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
  call void @llvm.lifetime.start(i64 8, i8* nonnull %18) #11
  store i64 0, i64* %10, align 8
  %309 = icmp eq i64 %156, -1
  br i1 %309, label %310, label %312

; <label>:310:                                    ; preds = %308
  %311 = call i64 @strlen(i8* nonnull %2) #14
  br label %312

; <label>:312:                                    ; preds = %310, %308
  %313 = phi i64 [ %156, %308 ], [ %311, %310 ]
  br label %314

; <label>:314:                                    ; preds = %312, %355
  %315 = phi i64 [ %360, %355 ], [ 0, %312 ]
  %316 = phi i8 [ %359, %355 ], [ 1, %312 ]
  call void @llvm.lifetime.start(i64 4, i8* nonnull %19) #11
  %317 = add i64 %315, %124
  %318 = getelementptr inbounds i8, i8* %2, i64 %317
  %319 = sub i64 %313, %317
  %320 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %318, i64 %319, %struct.__mbstate_t* nonnull %11) #11
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
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #11
  br label %364

; <label>:354:                                    ; preds = %344
  br label %355

; <label>:355:                                    ; preds = %354, %334
  %356 = load i32, i32* %12, align 4
  %357 = call i32 @iswprint(i32 %356) #11
  %358 = icmp eq i32 %357, 0
  %359 = select i1 %358, i8 0, i8 %316
  %360 = add i64 %320, %315
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #11
  %361 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #14
  %362 = icmp eq i32 %361, 0
  br i1 %362, label %314, label %363

; <label>:363:                                    ; preds = %355
  br label %364

; <label>:364:                                    ; preds = %363, %351
  %365 = phi i8 [ %353, %351 ], [ %359, %363 ]
  %366 = phi i64 [ %352, %351 ], [ %360, %363 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #11
  br label %368

; <label>:367:                                    ; preds = %338, %338, %338, %338, %338
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #11
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #11
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

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 {
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #11
  %4 = icmp eq i8* %3, %0
  br i1 %4, label %5, label %75

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #11
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
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.117, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.118, i64 0, i64 0)
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
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.119, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.120, i64 0, i64 0)
  br label %75

; <label>:72:                                     ; preds = %5, %30, %26, %22, %16, %10, %64, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.116, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.115, i64 0, i64 0)
  br label %75

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76
}

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
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #11
  %19 = add i64 %18, 1
  %20 = tail call noalias i8* @xmalloc(i64 %19) #11
  %21 = load i32, i32* %11, align 8
  %22 = load i8*, i8** %14, align 8
  %23 = load i8*, i8** %16, align 8
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #11
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
  %24 = tail call noalias i8* @xmalloc(i64 %23) #11
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
  tail call void @free(i8* %8) #11
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
  tail call void @free(i8* %16) #11
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8
  br label %19

; <label>:19:                                     ; preds = %14, %18
  %20 = icmp eq %struct.slotvec* %1, @slotvec0
  br i1 %20, label %23, label %21

; <label>:21:                                     ; preds = %19
  %22 = bitcast %struct.slotvec* %1 to i8*
  tail call void @free(i8* %22) #11
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
  tail call void @abort() #15
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
  tail call void @xalloc_die() #15
  unreachable

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*
  %19 = select i1 %14, i8* null, i8* %18
  %20 = add nsw i32 %0, 1
  %21 = sext i32 %20 to i64
  %22 = shl nsw i64 %21, 4
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #11
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
  tail call void @free(i8* %40) #11
  br label %57

; <label>:57:                                     ; preds = %53, %56
  %58 = tail call noalias i8* @xmalloc(i64 %54) #11
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

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 {
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options)
  ret i8* %4
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 {
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #11
  ret i8* %2
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 {
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #11
  ret i8* %3
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 {
  %4 = alloca [52 x i8], align 4
  %5 = alloca %struct.quoting_options, align 8
  %6 = bitcast %struct.quoting_options* %5 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #11
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7)
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false)
  %8 = icmp eq i32 %1, 10
  br i1 %8, label %9, label %10

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15
  unreachable

; <label>:10:                                     ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0
  store i32 %1, i32* %11, align 8
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1
  %13 = bitcast i32* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #11
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7)
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5)
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #11
  ret i8* %14
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 {
  %5 = alloca [52 x i8], align 4
  %6 = alloca %struct.quoting_options, align 8
  %7 = bitcast %struct.quoting_options* %6 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #11
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8)
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false)
  %9 = icmp eq i32 %1, 10
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %4
  tail call void @abort() #15
  unreachable

; <label>:11:                                     ; preds = %4
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0
  store i32 %1, i32* %12, align 8
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1
  %14 = bitcast i32* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #11
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8)
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6)
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #11
  ret i8* %15
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 {
  %3 = alloca [52 x i8], align 4
  %4 = alloca %struct.quoting_options, align 8
  %5 = bitcast %struct.quoting_options* %4 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #11
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0
  call void @llvm.lifetime.start(i64 52, i8* nonnull %6)
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false)
  %7 = icmp eq i32 %0, 10
  br i1 %7, label %8, label %9

; <label>:8:                                      ; preds = %2
  tail call void @abort() #15
  unreachable

; <label>:9:                                      ; preds = %2
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0
  store i32 %0, i32* %10, align 8
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1
  %12 = bitcast i32* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #11
  call void @llvm.lifetime.end(i64 52, i8* nonnull %6)
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #11
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #11
  ret i8* %13
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 {
  %4 = alloca [52 x i8], align 4
  %5 = alloca %struct.quoting_options, align 8
  %6 = bitcast %struct.quoting_options* %5 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #11
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7)
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false)
  %8 = icmp eq i32 %0, 10
  br i1 %8, label %9, label %10

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15
  unreachable

; <label>:10:                                     ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0
  store i32 %0, i32* %11, align 8
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1
  %13 = bitcast i32* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #11
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7)
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #11
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #11
  ret i8* %14
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = bitcast %struct.quoting_options* %4 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #11
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
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #11
  ret i8* %17
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 {
  %3 = alloca %struct.quoting_options, align 8
  %4 = bitcast %struct.quoting_options* %3 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #11
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11
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
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #11
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #11
  ret i8* %16
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 {
  %2 = alloca %struct.quoting_options, align 8
  %3 = bitcast %struct.quoting_options* %2 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %3) #11
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1
  %5 = load i32, i32* %4, align 4
  %6 = or i32 %5, 67108864
  store i32 %6, i32* %4, align 4
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #11
  call void @llvm.lifetime.end(i64 56, i8* nonnull %3) #11
  ret i8* %7
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 {
  %3 = alloca %struct.quoting_options, align 8
  %4 = bitcast %struct.quoting_options* %3 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #11
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1
  %6 = load i32, i32* %5, align 4
  %7 = or i32 %6, 67108864
  store i32 %7, i32* %5, align 4
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #11
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #11
  ret i8* %8
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 {
  %4 = alloca [52 x i8], align 4
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  %7 = bitcast %struct.quoting_options* %5 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #11
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8)
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false)
  %9 = icmp eq i32 %1, 10
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15
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
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #11
  ret i8* %19
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 {
  %5 = alloca %struct.quoting_options, align 8
  %6 = bitcast %struct.quoting_options* %5 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #11
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0
  store i32 10, i32* %7, align 8
  %8 = icmp ne i8* %1, null
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9
  br i1 %10, label %12, label %11

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15
  unreachable

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3
  store i8* %1, i8** %13, align 8
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4
  store i8* %2, i8** %14, align 8
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #11
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #11
  ret i8* %15
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 {
  %6 = alloca %struct.quoting_options, align 8
  %7 = bitcast %struct.quoting_options* %6 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #11
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false)
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0
  store i32 10, i32* %8, align 8
  %9 = icmp ne i8* %1, null
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10
  br i1 %11, label %13, label %12

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15
  unreachable

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3
  store i8* %1, i8** %14, align 8
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4
  store i8* %2, i8** %15, align 8
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6)
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #11
  ret i8* %16
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = bitcast %struct.quoting_options* %4 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #11
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0
  store i32 10, i32* %6, align 8
  %7 = icmp ne i8* %0, null
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8
  br i1 %9, label %11, label %10

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15
  unreachable

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3
  store i8* %0, i8** %12, align 8
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4
  store i8* %1, i8** %13, align 8
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #11
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #11
  ret i8* %14
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 {
  %5 = alloca %struct.quoting_options, align 8
  %6 = bitcast %struct.quoting_options* %5 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #11
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0
  store i32 10, i32* %7, align 8
  %8 = icmp ne i8* %0, null
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9
  br i1 %10, label %12, label %11

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15
  unreachable

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3
  store i8* %0, i8** %13, align 8
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4
  store i8* %1, i8** %14, align 8
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #11
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #11
  ret i8* %15
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 {
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options)
  ret i8* %4
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 {
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #11
  ret i8* %3
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 {
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #11
  ret i8* %3
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 {
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #11
  ret i8* %2
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @fread_file(%struct._IO_FILE* nocapture, i64* nocapture) local_unnamed_addr #6 {
  %3 = alloca %struct.stat, align 8
  %4 = bitcast %struct.stat* %3 to i8*
  call void @llvm.lifetime.start(i64 144, i8* nonnull %4) #11
  %5 = tail call i32 @fileno(%struct._IO_FILE* %0) #11
  %6 = call i32 @__fxstat(i32 1, i32 %5, %struct.stat* nonnull %3) #11
  %7 = icmp sgt i32 %6, -1
  br i1 %7, label %8, label %27

; <label>:8:                                      ; preds = %2
  %9 = getelementptr inbounds %struct.stat, %struct.stat* %3, i64 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = and i32 %10, 61440
  %12 = icmp eq i32 %11, 32768
  br i1 %12, label %13, label %27

; <label>:13:                                     ; preds = %8
  %14 = call i64 @ftello(%struct._IO_FILE* %0)
  %15 = icmp sgt i64 %14, -1
  br i1 %15, label %16, label %27

; <label>:16:                                     ; preds = %13
  %17 = getelementptr inbounds %struct.stat, %struct.stat* %3, i64 0, i32 8
  %18 = load i64, i64* %17, align 8
  %19 = icmp sgt i64 %18, %14
  br i1 %19, label %20, label %27

; <label>:20:                                     ; preds = %16
  %21 = sub nsw i64 %18, %14
  %22 = icmp eq i64 %21, -1
  br i1 %22, label %25, label %23

; <label>:23:                                     ; preds = %20
  %24 = add nsw i64 %21, 1
  br label %27

; <label>:25:                                     ; preds = %20
  %26 = tail call i32* @__errno_location() #1
  store i32 12, i32* %26, align 4
  call void @llvm.lifetime.end(i64 144, i8* nonnull %4) #11
  br label %75

; <label>:27:                                     ; preds = %13, %16, %23, %8, %2
  %28 = phi i64 [ 8192, %2 ], [ 8192, %8 ], [ %24, %23 ], [ 8192, %13 ], [ 8192, %16 ]
  call void @llvm.lifetime.end(i64 144, i8* nonnull %4) #11
  %29 = call noalias i8* @malloc(i64 %28) #11
  %30 = icmp eq i8* %29, null
  br i1 %30, label %75, label %31

; <label>:31:                                     ; preds = %27
  br label %32

; <label>:32:                                     ; preds = %31, %59
  %33 = phi i64 [ %39, %59 ], [ 0, %31 ]
  %34 = phi i64 [ %64, %59 ], [ %28, %31 ]
  %35 = phi i8* [ %65, %59 ], [ %29, %31 ]
  %36 = sub i64 %34, %33
  %37 = getelementptr inbounds i8, i8* %35, i64 %33
  %38 = call i64 @fread(i8* %37, i64 1, i64 %36, %struct._IO_FILE* %0)
  %39 = add i64 %38, %33
  %40 = icmp eq i64 %38, %36
  br i1 %40, label %57, label %41

; <label>:41:                                     ; preds = %32
  %42 = tail call i32* @__errno_location() #1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @ferror(%struct._IO_FILE* %0) #11
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %72

; <label>:46:                                     ; preds = %41
  %47 = add i64 %34, -1
  %48 = icmp ult i64 %39, %47
  br i1 %48, label %49, label %54

; <label>:49:                                     ; preds = %46
  %50 = add i64 %39, 1
  %51 = call i8* @realloc(i8* nonnull %35, i64 %50) #11
  %52 = icmp eq i8* %51, null
  %53 = select i1 %52, i8* %35, i8* %51
  br label %54

; <label>:54:                                     ; preds = %46, %49
  %55 = phi i8* [ %53, %49 ], [ %35, %46 ]
  %56 = getelementptr inbounds i8, i8* %55, i64 %39
  store i8 0, i8* %56, align 1
  store i64 %39, i64* %1, align 8
  br label %75

; <label>:57:                                     ; preds = %32
  %58 = icmp eq i64 %34, -1
  br i1 %58, label %70, label %59

; <label>:59:                                     ; preds = %57
  %60 = lshr i64 %34, 1
  %61 = xor i64 %60, -1
  %62 = icmp ult i64 %34, %61
  %63 = add i64 %60, %34
  %64 = select i1 %62, i64 %63, i64 -1
  %65 = call i8* @realloc(i8* nonnull %35, i64 %64) #11
  %66 = icmp eq i8* %65, null
  br i1 %66, label %67, label %32

; <label>:67:                                     ; preds = %59
  %68 = tail call i32* @__errno_location() #1
  %69 = load i32, i32* %68, align 4
  br label %72

; <label>:70:                                     ; preds = %57
  %71 = tail call i32* @__errno_location() #1
  br label %72

; <label>:72:                                     ; preds = %70, %67, %41
  %73 = phi i32* [ %71, %70 ], [ %68, %67 ], [ %42, %41 ]
  %74 = phi i32 [ 12, %70 ], [ %69, %67 ], [ %43, %41 ]
  call void @free(i8* nonnull %35) #11
  store i32 %74, i32* %73, align 4
  br label %75

; <label>:75:                                     ; preds = %54, %25, %72, %27
  %76 = phi i8* [ null, %25 ], [ null, %27 ], [ null, %72 ], [ %55, %54 ]
  ret i8* %76
}

; Function Attrs: nounwind
declare i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @ftello(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @fread(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @ferror(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @read_file(i8* nocapture readonly, i64* nocapture) local_unnamed_addr #6 {
  %3 = tail call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.135, i64 0, i64 0)) #11
  %4 = icmp eq %struct._IO_FILE* %3, null
  br i1 %4, label %17, label %5

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @fread_file(%struct._IO_FILE* nonnull %3, i64* %1) #11
  %7 = tail call i32* @__errno_location() #1
  %8 = load i32, i32* %7, align 4
  %9 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %3) #11
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %17, label %11

; <label>:11:                                     ; preds = %5
  %12 = icmp eq i8* %6, null
  br i1 %12, label %15, label %13

; <label>:13:                                     ; preds = %11
  %14 = load i32, i32* %7, align 4
  tail call void @free(i8* nonnull %6) #11
  br label %15

; <label>:15:                                     ; preds = %13, %11
  %16 = phi i32 [ %14, %13 ], [ %8, %11 ]
  store i32 %16, i32* %7, align 4
  br label %17

; <label>:17:                                     ; preds = %2, %5, %15
  %18 = phi i8* [ null, %15 ], [ null, %2 ], [ %6, %5 ]
  ret i8* %18
}

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @read_binary_file(i8* nocapture readonly, i64* nocapture) local_unnamed_addr #6 {
  %3 = tail call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1.136, i64 0, i64 0)) #11
  %4 = icmp eq %struct._IO_FILE* %3, null
  br i1 %4, label %17, label %5

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @fread_file(%struct._IO_FILE* nonnull %3, i64* %1) #11
  %7 = tail call i32* @__errno_location() #1
  %8 = load i32, i32* %7, align 4
  %9 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %3) #11
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %17, label %11

; <label>:11:                                     ; preds = %5
  %12 = icmp eq i8* %6, null
  br i1 %12, label %15, label %13

; <label>:13:                                     ; preds = %11
  %14 = load i32, i32* %7, align 4
  tail call void @free(i8* nonnull %6) #11
  br label %15

; <label>:15:                                     ; preds = %13, %11
  %16 = phi i32 [ %14, %13 ], [ %8, %11 ]
  store i32 %16, i32* %7, align 4
  br label %17

; <label>:17:                                     ; preds = %2, %5, %15
  %18 = phi i8* [ null, %15 ], [ null, %2 ], [ %6, %5 ]
  ret i8* %18
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @trim2(i8* nocapture readonly, i32) local_unnamed_addr #6 {
  %3 = alloca %struct.mbiter_multi, align 8
  %4 = tail call noalias i8* @__strdup(i8* %0) #11
  %5 = icmp eq i8* %4, null
  br i1 %5, label %6, label %7

; <label>:6:                                      ; preds = %2
  tail call void @xalloc_die() #15
  unreachable

; <label>:7:                                      ; preds = %2
  %8 = tail call i64 @__ctype_get_mb_cur_max() #11
  %9 = icmp ugt i64 %8, 1
  br i1 %9, label %10, label %118

; <label>:10:                                     ; preds = %7
  %11 = bitcast %struct.mbiter_multi* %3 to i8*
  call void @llvm.lifetime.start(i64 72, i8* nonnull %11) #11
  %12 = icmp eq i32 %1, 0
  %13 = getelementptr inbounds %struct.mbiter_multi, %struct.mbiter_multi* %3, i64 0, i32 4, i32 0
  br i1 %12, label %14, label %20

; <label>:14:                                     ; preds = %10
  %15 = getelementptr inbounds %struct.mbiter_multi, %struct.mbiter_multi* %3, i64 0, i32 0
  %16 = getelementptr inbounds %struct.mbiter_multi, %struct.mbiter_multi* %3, i64 0, i32 1
  %17 = getelementptr inbounds %struct.mbiter_multi, %struct.mbiter_multi* %3, i64 0, i32 2
  %18 = bitcast %struct.__mbstate_t* %17 to i64*
  %19 = getelementptr inbounds %struct.mbiter_multi, %struct.mbiter_multi* %3, i64 0, i32 3
  br label %53

; <label>:20:                                     ; preds = %10
  store i8* %4, i8** %13, align 8
  %21 = tail call i64 @strlen(i8* nonnull %4) #14
  %22 = getelementptr inbounds i8, i8* %4, i64 %21
  %23 = getelementptr inbounds %struct.mbiter_multi, %struct.mbiter_multi* %3, i64 0, i32 0
  store i8* %22, i8** %23, align 8
  %24 = getelementptr inbounds %struct.mbiter_multi, %struct.mbiter_multi* %3, i64 0, i32 1
  store i8 0, i8* %24, align 8
  %25 = getelementptr inbounds %struct.mbiter_multi, %struct.mbiter_multi* %3, i64 0, i32 2
  %26 = bitcast %struct.__mbstate_t* %25 to i64*
  store i64 0, i64* %26, align 4
  %27 = getelementptr inbounds %struct.mbiter_multi, %struct.mbiter_multi* %3, i64 0, i32 4, i32 3
  %28 = getelementptr inbounds %struct.mbiter_multi, %struct.mbiter_multi* %3, i64 0, i32 3
  store i8 0, i8* %28, align 4
  %29 = icmp sgt i64 %21, 0
  br i1 %29, label %30, label %48

; <label>:30:                                     ; preds = %20
  %31 = getelementptr inbounds %struct.mbiter_multi, %struct.mbiter_multi* %3, i64 0, i32 4, i32 2
  %32 = getelementptr inbounds %struct.mbiter_multi, %struct.mbiter_multi* %3, i64 0, i32 4, i32 1
  br label %33

; <label>:33:                                     ; preds = %30, %40
  call void @mbiter_multi_next(%struct.mbiter_multi* nonnull %3)
  %34 = load i8, i8* %31, align 8
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %46, label %36

; <label>:36:                                     ; preds = %33
  %37 = load i32, i32* %27, align 4
  %38 = call i32 @iswspace(i32 %37) #11
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %46, label %40

; <label>:40:                                     ; preds = %36
  %41 = load i64, i64* %32, align 8
  %42 = load i8*, i8** %13, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 %41
  store i8* %43, i8** %13, align 8
  store i8 0, i8* %28, align 4
  %44 = load i8*, i8** %23, align 8
  %45 = icmp ult i8* %43, %44
  br i1 %45, label %33, label %46

; <label>:46:                                     ; preds = %36, %33, %40
  %47 = load i8*, i8** %13, align 8
  br label %48

; <label>:48:                                     ; preds = %46, %20
  %49 = phi i8* [ %47, %46 ], [ %4, %20 ]
  %50 = call i64 @strlen(i8* %49) #14
  %51 = add i64 %50, 1
  call void @llvm.memmove.p0i8.p0i8.i64(i8* nonnull %4, i8* %49, i64 %51, i32 1, i1 false)
  %52 = icmp eq i32 %1, 1
  br i1 %52, label %117, label %53

; <label>:53:                                     ; preds = %14, %48
  %54 = phi i8* [ %19, %14 ], [ %28, %48 ]
  %55 = phi i64* [ %18, %14 ], [ %26, %48 ]
  %56 = phi i8* [ %16, %14 ], [ %24, %48 ]
  %57 = phi i8** [ %15, %14 ], [ %23, %48 ]
  store i8* %4, i8** %13, align 8
  %58 = call i64 @strlen(i8* nonnull %4) #14
  %59 = getelementptr inbounds i8, i8* %4, i64 %58
  store i8* %59, i8** %57, align 8
  store i8 0, i8* %56, align 8
  store i64 0, i64* %55, align 4
  store i8 0, i8* %54, align 4
  %60 = icmp sgt i64 %58, 0
  br i1 %60, label %61, label %117

; <label>:61:                                     ; preds = %53
  %62 = getelementptr inbounds %struct.mbiter_multi, %struct.mbiter_multi* %3, i64 0, i32 4, i32 2
  %63 = getelementptr inbounds %struct.mbiter_multi, %struct.mbiter_multi* %3, i64 0, i32 4, i32 3
  %64 = getelementptr inbounds %struct.mbiter_multi, %struct.mbiter_multi* %3, i64 0, i32 4, i32 1
  br label %65

; <label>:65:                                     ; preds = %61, %106
  %66 = phi i8* [ undef, %61 ], [ %108, %106 ]
  %67 = phi i32 [ 0, %61 ], [ %107, %106 ]
  call void @mbiter_multi_next(%struct.mbiter_multi* nonnull %3)
  switch i32 %67, label %98 [
    i32 0, label %68
    i32 1, label %82
  ]

; <label>:68:                                     ; preds = %65
  %69 = load i8, i8* %62, align 8
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %106, label %71

; <label>:71:                                     ; preds = %68
  %72 = load i32, i32* %63, align 4
  %73 = call i32 @iswspace(i32 %72) #11
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %106

; <label>:75:                                     ; preds = %71
  %76 = load i8, i8* %62, align 8
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %106, label %78

; <label>:78:                                     ; preds = %75
  %79 = load i32, i32* %63, align 4
  %80 = call i32 @iswspace(i32 %79) #11
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %106, label %105

; <label>:82:                                     ; preds = %65
  %83 = load i8, i8* %62, align 8
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %106, label %85

; <label>:85:                                     ; preds = %82
  %86 = load i32, i32* %63, align 4
  %87 = call i32 @iswspace(i32 %86) #11
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %106, label %89

; <label>:89:                                     ; preds = %85
  %90 = load i8, i8* %62, align 8
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %105, label %92

; <label>:92:                                     ; preds = %89
  %93 = load i32, i32* %63, align 4
  %94 = call i32 @iswspace(i32 %93) #11
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %105, label %96

; <label>:96:                                     ; preds = %92
  %97 = load i8*, i8** %13, align 8
  br label %106

; <label>:98:                                     ; preds = %65
  %99 = load i8, i8* %62, align 8
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %105, label %101

; <label>:101:                                    ; preds = %98
  %102 = load i32, i32* %63, align 4
  %103 = call i32 @iswspace(i32 %102) #11
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %106

; <label>:105:                                    ; preds = %78, %89, %92, %101, %98
  br label %106

; <label>:106:                                    ; preds = %68, %75, %78, %71, %85, %82, %101, %96, %105
  %107 = phi i32 [ 0, %71 ], [ 2, %96 ], [ 2, %101 ], [ 1, %105 ], [ 1, %85 ], [ 1, %82 ], [ 1, %78 ], [ 1, %75 ], [ 1, %68 ]
  %108 = phi i8* [ %66, %71 ], [ %97, %96 ], [ %66, %101 ], [ %66, %105 ], [ %66, %85 ], [ %66, %82 ], [ %66, %78 ], [ %66, %75 ], [ %66, %68 ]
  %109 = load i64, i64* %64, align 8
  %110 = load i8*, i8** %13, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 %109
  store i8* %111, i8** %13, align 8
  store i8 0, i8* %54, align 4
  %112 = load i8*, i8** %57, align 8
  %113 = icmp ult i8* %111, %112
  br i1 %113, label %65, label %114

; <label>:114:                                    ; preds = %106
  %115 = icmp eq i32 %107, 2
  br i1 %115, label %116, label %117

; <label>:116:                                    ; preds = %114
  store i8 0, i8* %108, align 1
  br label %117

; <label>:117:                                    ; preds = %53, %114, %116, %48
  call void @llvm.lifetime.end(i64 72, i8* nonnull %11) #11
  br label %165

; <label>:118:                                    ; preds = %7
  %119 = icmp eq i32 %1, 0
  br i1 %119, label %145, label %120

; <label>:120:                                    ; preds = %118
  %121 = load i8, i8* %4, align 1
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %140, label %123

; <label>:123:                                    ; preds = %120
  %124 = tail call i16** @__ctype_b_loc() #1
  %125 = load i16*, i16** %124, align 8
  br label %126

; <label>:126:                                    ; preds = %123, %134
  %127 = phi i8 [ %121, %123 ], [ %136, %134 ]
  %128 = phi i8* [ %4, %123 ], [ %135, %134 ]
  %129 = zext i8 %127 to i64
  %130 = getelementptr inbounds i16, i16* %125, i64 %129
  %131 = load i16, i16* %130, align 2
  %132 = and i16 %131, 8192
  %133 = icmp eq i16 %132, 0
  br i1 %133, label %138, label %134

; <label>:134:                                    ; preds = %126
  %135 = getelementptr inbounds i8, i8* %128, i64 1
  %136 = load i8, i8* %135, align 1
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %138, label %126

; <label>:138:                                    ; preds = %126, %134
  %139 = phi i8* [ %128, %126 ], [ %135, %134 ]
  br label %140

; <label>:140:                                    ; preds = %138, %120
  %141 = phi i8* [ %4, %120 ], [ %139, %138 ]
  %142 = tail call i64 @strlen(i8* %141) #14
  %143 = add i64 %142, 1
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* nonnull %4, i8* %141, i64 %143, i32 1, i1 false)
  %144 = icmp eq i32 %1, 1
  br i1 %144, label %165, label %145

; <label>:145:                                    ; preds = %118, %140
  %146 = tail call i64 @strlen(i8* nonnull %4) #14
  %147 = getelementptr inbounds i8, i8* %4, i64 %146
  %148 = getelementptr inbounds i8, i8* %147, i64 -1
  %149 = icmp ult i8* %148, %4
  br i1 %149, label %165, label %150

; <label>:150:                                    ; preds = %145
  %151 = tail call i16** @__ctype_b_loc() #1
  br label %152

; <label>:152:                                    ; preds = %150, %161
  %153 = phi i8* [ %148, %150 ], [ %162, %161 ]
  %154 = load i16*, i16** %151, align 8
  %155 = load i8, i8* %153, align 1
  %156 = zext i8 %155 to i64
  %157 = getelementptr inbounds i16, i16* %154, i64 %156
  %158 = load i16, i16* %157, align 2
  %159 = and i16 %158, 8192
  %160 = icmp eq i16 %159, 0
  br i1 %160, label %164, label %161

; <label>:161:                                    ; preds = %152
  store i8 0, i8* %153, align 1
  %162 = getelementptr inbounds i8, i8* %153, i64 -1
  %163 = icmp ult i8* %162, %4
  br i1 %163, label %164, label %152

; <label>:164:                                    ; preds = %161, %152
  br label %165

; <label>:165:                                    ; preds = %164, %145, %140, %117
  ret i8* %4
}

; Function Attrs: nounwind
declare noalias i8* @__strdup(i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @iswspace(i32) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 {
  %7 = icmp eq i8* %1, null
  br i1 %7, label %10, label %8

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.139, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #11
  br label %12

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.140, i64 0, i64 0), i8* %2, i8* %3) #11
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.141, i64 0, i64 0), i32 5) #11
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #11
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.142, i64 0, i64 0), i32 5) #11
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #11
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
  tail call void @abort() #15
  unreachable

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.143, i64 0, i64 0), i32 5) #11
  %20 = load i8*, i8** %4, align 8
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #11
  br label %146

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.144, i64 0, i64 0), i32 5) #11
  %24 = load i8*, i8** %4, align 8
  %25 = getelementptr inbounds i8*, i8** %4, i64 1
  %26 = load i8*, i8** %25, align 8
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #11
  br label %146

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.145, i64 0, i64 0), i32 5) #11
  %30 = load i8*, i8** %4, align 8
  %31 = getelementptr inbounds i8*, i8** %4, i64 1
  %32 = load i8*, i8** %31, align 8
  %33 = getelementptr inbounds i8*, i8** %4, i64 2
  %34 = load i8*, i8** %33, align 8
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #11
  br label %146

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.146, i64 0, i64 0), i32 5) #11
  %38 = load i8*, i8** %4, align 8
  %39 = getelementptr inbounds i8*, i8** %4, i64 1
  %40 = load i8*, i8** %39, align 8
  %41 = getelementptr inbounds i8*, i8** %4, i64 2
  %42 = load i8*, i8** %41, align 8
  %43 = getelementptr inbounds i8*, i8** %4, i64 3
  %44 = load i8*, i8** %43, align 8
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #11
  br label %146

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.147, i64 0, i64 0), i32 5) #11
  %48 = load i8*, i8** %4, align 8
  %49 = getelementptr inbounds i8*, i8** %4, i64 1
  %50 = load i8*, i8** %49, align 8
  %51 = getelementptr inbounds i8*, i8** %4, i64 2
  %52 = load i8*, i8** %51, align 8
  %53 = getelementptr inbounds i8*, i8** %4, i64 3
  %54 = load i8*, i8** %53, align 8
  %55 = getelementptr inbounds i8*, i8** %4, i64 4
  %56 = load i8*, i8** %55, align 8
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #11
  br label %146

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.148, i64 0, i64 0), i32 5) #11
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
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #11
  br label %146

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.149, i64 0, i64 0), i32 5) #11
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
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #11
  br label %146

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.150, i64 0, i64 0), i32 5) #11
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
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #11
  br label %146

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.151, i64 0, i64 0), i32 5) #11
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
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #11
  br label %146

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.152, i64 0, i64 0), i32 5) #11
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
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #11
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
  call void @llvm.lifetime.start(i64 80, i8* nonnull %7) #11
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
  call void @llvm.lifetime.end(i64 80, i8* nonnull %7) #11
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
  call void @llvm.lifetime.start(i64 24, i8* nonnull %6) #11
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0
  call void @llvm.va_start(i8* nonnull %6)
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7)
  call void @llvm.va_end(i8* nonnull %6)
  call void @llvm.lifetime.end(i64 24, i8* nonnull %6) #11
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #11

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #11

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.155, i64 0, i64 0), i32 5) #11
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.156, i64 0, i64 0)) #11
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.157, i64 0, i64 0), i32 5) #11
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.158, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.159, i64 0, i64 0)) #11
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19.160, i64 0, i64 0), i32 5) #11
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #11
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #12 {
  %3 = udiv i64 9223372036854775807, %1
  %4 = icmp ult i64 %3, %0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15
  unreachable

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0
  %8 = tail call noalias i8* @malloc(i64 %7) #11
  %9 = icmp eq i8* %8, null
  %10 = icmp ne i64 %7, 0
  %11 = and i1 %10, %9
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15
  unreachable

; <label>:13:                                     ; preds = %6
  ret i8* %8
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 {
  %2 = tail call noalias i8* @malloc(i64 %0) #11
  %3 = icmp eq i8* %2, null
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3
  br i1 %5, label %6, label %7

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15
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
  tail call void @xalloc_die() #15
  unreachable

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1
  %9 = icmp eq i64 %8, 0
  %10 = icmp ne i8* %0, null
  %11 = and i1 %10, %9
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #11
  br label %19

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #11
  %15 = icmp eq i8* %14, null
  %16 = icmp ne i64 %8, 0
  %17 = and i1 %16, %15
  br i1 %17, label %18, label %19

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15
  unreachable

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 {
  %3 = icmp eq i64 %1, 0
  %4 = icmp ne i8* %0, null
  %5 = and i1 %4, %3
  br i1 %5, label %6, label %7

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #11
  br label %13

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #11
  %9 = icmp eq i8* %8, null
  %10 = icmp ne i64 %1, 0
  %11 = and i1 %10, %9
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15
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
  tail call void @xalloc_die() #15
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
  tail call void @free(i8* nonnull %0) #11
  br label %34

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #11
  %30 = icmp eq i8* %29, null
  %31 = icmp ne i64 %28, 0
  %32 = and i1 %31, %30
  br i1 %32, label %33, label %34

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #15
  unreachable

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #12 {
  %2 = tail call noalias i8* @malloc(i64 %0) #11
  %3 = icmp eq i8* %2, null
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3
  br i1 %5, label %6, label %7

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15
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
  tail call void @xalloc_die() #15
  unreachable

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1
  %13 = add i64 %3, 1
  %14 = add i64 %13, %12
  store i64 %14, i64* %1, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #11
  br label %24

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #11
  %20 = icmp eq i8* %19, null
  %21 = icmp ne i64 %18, 0
  %22 = and i1 %21, %20
  br i1 %22, label %23, label %24

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #15
  unreachable

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 {
  %2 = tail call noalias i8* @malloc(i64 %0) #11
  %3 = icmp eq i8* %2, null
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3
  br i1 %5, label %6, label %7

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15
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
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #11
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %9

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15
  unreachable

; <label>:9:                                      ; preds = %5
  ret i8* %6
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 {
  %3 = tail call noalias i8* @malloc(i64 %1) #11
  %4 = icmp eq i8* %3, null
  %5 = icmp ne i64 %1, 0
  %6 = and i1 %5, %4
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15
  unreachable

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false)
  ret i8* %3
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 {
  %2 = tail call i64 @strlen(i8* %0) #14
  %3 = add i64 %2, 1
  %4 = tail call noalias i8* @malloc(i64 %3) #11
  %5 = icmp eq i8* %4, null
  %6 = icmp ne i64 %3, 0
  %7 = and i1 %6, %5
  br i1 %7, label %8, label %9

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15
  unreachable

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #11
  ret i8* %4
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 {
  %1 = load volatile i32, i32* @exit_failure, align 4
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.171, i64 0, i64 0), i32 5) #11
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.172, i64 0, i64 0), i8* %2) #11
  tail call void @abort() #15
  unreachable
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @xmem_cd_iconv(i8*, i64, i8*, i8**, i64*) local_unnamed_addr #6 {
  %6 = tail call i32 @mem_cd_iconv(i8* %0, i64 %1, i8* %2, i8** %3, i64* %4) #11
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %13

; <label>:8:                                      ; preds = %5
  %9 = tail call i32* @__errno_location() #1
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %10, 12
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %8
  tail call void @xalloc_die() #15
  unreachable

; <label>:13:                                     ; preds = %8, %5
  ret i32 %6
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @xstr_cd_iconv(i8*, i8*) local_unnamed_addr #6 {
  %3 = tail call i8* @str_cd_iconv(i8* %0, i8* %1) #11
  %4 = icmp eq i8* %3, null
  br i1 %4, label %5, label %10

; <label>:5:                                      ; preds = %2
  %6 = tail call i32* @__errno_location() #1
  %7 = load i32, i32* %6, align 4
  %8 = icmp eq i32 %7, 12
  br i1 %8, label %9, label %10

; <label>:9:                                      ; preds = %5
  tail call void @xalloc_die() #15
  unreachable

; <label>:10:                                     ; preds = %5, %2
  ret i8* %3
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @xstr_iconv(i8*, i8*, i8*) local_unnamed_addr #6 {
  %4 = tail call i8* @str_iconv(i8* %0, i8* %1, i8* %2) #11
  %5 = icmp eq i8* %4, null
  br i1 %5, label %6, label %11

; <label>:6:                                      ; preds = %3
  %7 = tail call i32* @__errno_location() #1
  %8 = load i32, i32* %7, align 4
  %9 = icmp eq i32 %8, 12
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %6
  tail call void @xalloc_die() #15
  unreachable

; <label>:11:                                     ; preds = %6, %3
  ret i8* %4
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @xstrtoul(i8*, i8**, i32, i64* nocapture, i8* readonly) local_unnamed_addr #6 {
  %6 = alloca i8*, align 8
  %7 = bitcast i8** %6 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %7) #11
  %8 = icmp ult i32 %2, 37
  br i1 %8, label %10, label %9

; <label>:9:                                      ; preds = %5
  tail call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.177, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.178, i64 0, i64 0), i32 96, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @__PRETTY_FUNCTION__.xstrtoul, i64 0, i64 0)) #15
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
  %28 = call i64 @strtoul(i8* %0, i8** %25, i32 %2) #11
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
  %38 = tail call i8* @strchr(i8* nonnull %4, i32 %37) #11
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
  %54 = tail call i8* @strchr(i8* nonnull %4, i32 %53) #11
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
  %60 = tail call i8* @strchr(i8* nonnull %4, i32 48) #11
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
  call void @llvm.lifetime.end(i64 8, i8* nonnull %7) #11
  ret i32 %266
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #5

; Function Attrs: nounwind
declare i64 @strtoul(i8* readonly, i8** nocapture, i32) local_unnamed_addr #2

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
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #11
  br label %16

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 {
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %4, label %6

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0)
  br label %24

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #11
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #11
  %12 = icmp eq i64 %11, -1
  br i1 %12, label %16, label %13

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #11
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
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #11
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
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #11
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
define %struct._IO_FILE* @rpl_freopen(i8*, i8* nonnull, %struct._IO_FILE* nonnull) local_unnamed_addr #6 {
  %4 = tail call %struct._IO_FILE* @freopen(i8* %0, i8* nonnull %1, %struct._IO_FILE* nonnull %2) #11
  %5 = icmp ne %struct._IO_FILE* %4, null
  %6 = icmp ne i8* %0, null
  %7 = and i1 %6, %5
  br i1 %7, label %8, label %25

; <label>:8:                                      ; preds = %3
  %9 = tail call i32 @fileno(%struct._IO_FILE* nonnull %4) #11
  %10 = tail call i32 @dup2(i32 %9, i32 %9) #11
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %25

; <label>:12:                                     ; preds = %8
  %13 = tail call i32* @__errno_location() #1
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %14, 9
  br i1 %15, label %16, label %25

; <label>:16:                                     ; preds = %12
  %17 = tail call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.187, i64 0, i64 0), i32 524288) #11
  %18 = icmp eq i32 %17, %9
  br i1 %18, label %23, label %19

; <label>:19:                                     ; preds = %16
  %20 = tail call i32 @dup2(i32 %17, i32 %9) #11
  %21 = icmp slt i32 %20, 0
  %22 = tail call i32 @close(i32 %17) #11
  br i1 %21, label %25, label %23

; <label>:23:                                     ; preds = %19, %16
  %24 = tail call %struct._IO_FILE* @freopen(i8* nonnull %0, i8* nonnull %1, %struct._IO_FILE* nonnull %4) #11
  br label %25

; <label>:25:                                     ; preds = %19, %8, %12, %23, %3
  %26 = phi %struct._IO_FILE* [ %4, %3 ], [ %4, %12 ], [ %4, %8 ], [ %24, %23 ], [ %4, %19 ]
  ret %struct._IO_FILE* %26
}

declare %struct._IO_FILE* @freopen(i8*, i8*, %struct._IO_FILE*) local_unnamed_addr #3

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
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #11
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

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 {
  %5 = alloca i32, align 4
  %6 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start(i64 4, i8* nonnull %6) #11
  %7 = icmp eq i32* %0, null
  %8 = select i1 %7, i32* %5, i32* %0
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #11
  %10 = icmp ugt i64 %9, -3
  %11 = icmp ne i64 %2, 0
  %12 = and i1 %11, %10
  br i1 %12, label %13, label %18

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #11
  br i1 %14, label %18, label %15

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1
  %17 = zext i8 %16 to i32
  store i32 %17, i32* %8, align 4
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end(i64 4, i8* nonnull %6) #11
  ret i64 %19
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @c_strcasecmp(i8* readonly, i8* readonly) local_unnamed_addr #9 {
  %3 = icmp eq i8* %0, %1
  br i1 %3, label %34, label %4

; <label>:4:                                      ; preds = %2
  br label %5

; <label>:5:                                      ; preds = %4, %24
  %6 = phi i8* [ %26, %24 ], [ %1, %4 ]
  %7 = phi i8* [ %25, %24 ], [ %0, %4 ]
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i32
  %10 = add nsw i32 %9, -65
  %11 = icmp ult i32 %10, 26
  %12 = add nuw nsw i32 %9, 32
  %13 = select i1 %11, i32 %12, i32 %9
  %14 = load i8, i8* %6, align 1
  %15 = zext i8 %14 to i32
  %16 = add nsw i32 %15, -65
  %17 = icmp ult i32 %16, 26
  %18 = add nuw nsw i32 %15, 32
  %19 = select i1 %17, i32 %18, i32 %15
  %20 = and i32 %13, 255
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24

; <label>:22:                                     ; preds = %5
  %23 = and i32 %19, 255
  br label %30

; <label>:24:                                     ; preds = %5
  %25 = getelementptr inbounds i8, i8* %7, i64 1
  %26 = getelementptr inbounds i8, i8* %6, i64 1
  %27 = and i32 %19, 255
  %28 = icmp eq i32 %20, %27
  br i1 %28, label %5, label %29

; <label>:29:                                     ; preds = %24
  br label %30

; <label>:30:                                     ; preds = %29, %22
  %31 = phi i32 [ %23, %22 ], [ %27, %29 ]
  %32 = phi i32 [ 0, %22 ], [ %20, %29 ]
  %33 = sub nsw i32 %32, %31
  br label %34

; <label>:34:                                     ; preds = %2, %30
  %35 = phi i32 [ %33, %30 ], [ 0, %2 ]
  ret i32 %35
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 {
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #11
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0
  %4 = load i32, i32* %3, align 8
  %5 = and i32 %4, 32
  %6 = icmp eq i32 %5, 0
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #11
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
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #11
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
  %12 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.198, i64 0, i64 0)) #11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

; <label>:14:                                     ; preds = %11, %7
  br label %15

; <label>:15:                                     ; preds = %1, %11, %14
  %16 = phi i1 [ false, %14 ], [ true, %11 ], [ true, %1 ]
  ret i1 %16
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 {
  %1 = alloca [51 x i8], align 16
  %2 = alloca [51 x i8], align 16
  %3 = tail call i8* @nl_langinfo(i32 14) #11
  %4 = icmp eq i8* %3, null
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.201, i64 0, i64 0), i8* %3
  %6 = load volatile i8*, i8** @charset_aliases, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %127

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.202, i64 0, i64 0)) #11
  %10 = icmp eq i8* %9, null
  br i1 %10, label %14, label %11

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %15

; <label>:14:                                     ; preds = %11, %8
  br label %15

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.203, i64 0, i64 0), %14 ], [ %9, %11 ]
  %17 = tail call i64 @strlen(i8* nonnull %16) #14
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
  %29 = tail call noalias i8* @malloc(i64 %28) #11
  %30 = icmp eq i8* %29, null
  br i1 %30, label %125, label %31

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #11
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1
  %34 = getelementptr inbounds i8, i8* %32, i64 %26
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.204, i64 0, i64 0), i64 14, i32 1, i1 false) #11
  br label %37

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.204, i64 0, i64 0), i64 14, i32 1, i1 false) #11
  br label %37

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #11
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %123, label %40

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.205, i64 0, i64 0)) #11
  %42 = icmp eq %struct._IO_FILE* %41, null
  br i1 %42, label %48, label %43

; <label>:43:                                     ; preds = %40
  %44 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %45 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %46 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %47 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50

; <label>:48:                                     ; preds = %40
  %49 = tail call i32 @close(i32 %38) #11
  br label %123

; <label>:50:                                     ; preds = %111, %43
  %51 = phi i64 [ %112, %111 ], [ 0, %43 ]
  %52 = phi i8* [ %113, %111 ], [ null, %43 ]
  call void @llvm.lifetime.start(i64 51, i8* nonnull %44) #11
  call void @llvm.lifetime.start(i64 51, i8* nonnull %45) #11
  %53 = load i8*, i8** %46, align 8
  %54 = load i8*, i8** %47, align 8
  %55 = icmp ult i8* %53, %54
  br i1 %55, label %58, label %56

; <label>:56:                                     ; preds = %50
  %57 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #11
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
  %70 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #11
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
  %78 = call i32 @ungetc(i32 %63, %struct._IO_FILE* nonnull %41) #11
  %79 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.206, i64 0, i64 0), i8* nonnull %44, i8* nonnull %45) #11
  %80 = icmp slt i32 %79, 2
  br i1 %80, label %115, label %81

; <label>:81:                                     ; preds = %77
  %82 = call i64 @strlen(i8* nonnull %44) #14
  %83 = call i64 @strlen(i8* nonnull %45) #14
  %84 = icmp eq i64 %51, 0
  %85 = add i64 %82, 1
  %86 = add i64 %85, %83
  %87 = add i64 %86, 1
  br i1 %84, label %88, label %91

; <label>:88:                                     ; preds = %81
  %89 = add i64 %86, 2
  %90 = call noalias i8* @malloc(i64 %89) #11
  br label %95

; <label>:91:                                     ; preds = %81
  %92 = add i64 %87, %51
  %93 = add i64 %92, 1
  %94 = call i8* @realloc(i8* %52, i64 %93) #11
  br label %95

; <label>:95:                                     ; preds = %91, %88
  %96 = phi i64 [ %87, %88 ], [ %92, %91 ]
  %97 = phi i8* [ %90, %88 ], [ %94, %91 ]
  %98 = icmp eq i8* %97, null
  br i1 %98, label %99, label %100

; <label>:99:                                     ; preds = %95
  call void @free(i8* %52) #11
  br label %116

; <label>:100:                                    ; preds = %95
  %101 = getelementptr inbounds i8, i8* %97, i64 %96
  %102 = xor i64 %83, -1
  %103 = getelementptr inbounds i8, i8* %101, i64 %102
  %104 = xor i64 %82, -1
  %105 = getelementptr inbounds i8, i8* %103, i64 %104
  %106 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false) #11
  %107 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %44, i64 %106) #11
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %103, i1 false) #11
  %109 = call i8* @__strcpy_chk(i8* nonnull %103, i8* nonnull %45, i64 %108) #11
  br label %111

; <label>:110:                                    ; preds = %75
  br label %111

; <label>:111:                                    ; preds = %110, %100, %62, %62, %62
  %112 = phi i64 [ %96, %100 ], [ %51, %62 ], [ %51, %62 ], [ %51, %62 ], [ %51, %110 ]
  %113 = phi i8* [ %97, %100 ], [ %52, %62 ], [ %52, %62 ], [ %52, %62 ], [ %52, %110 ]
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #11
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #11
  br label %50

; <label>:114:                                    ; preds = %75
  br label %116

; <label>:115:                                    ; preds = %62, %77
  br label %116

; <label>:116:                                    ; preds = %115, %114, %99
  %117 = phi i64 [ 0, %99 ], [ %51, %114 ], [ %51, %115 ]
  %118 = phi i8* [ null, %99 ], [ %52, %114 ], [ %52, %115 ]
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #11
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #11
  %119 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #11
  %120 = icmp eq i64 %117, 0
  br i1 %120, label %123, label %121

; <label>:121:                                    ; preds = %116
  %122 = getelementptr inbounds i8, i8* %118, i64 %117
  store i8 0, i8* %122, align 1
  br label %123

; <label>:123:                                    ; preds = %121, %116, %48, %37
  %124 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.201, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.201, i64 0, i64 0), %48 ], [ %118, %121 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.201, i64 0, i64 0), %116 ]
  call void @free(i8* %29) #11
  br label %125

; <label>:125:                                    ; preds = %123, %24
  %126 = phi i8* [ %124, %123 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.201, i64 0, i64 0), %24 ]
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
  %135 = call i32 @strcmp(i8* %5, i8* %134) #11
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
  %144 = call i64 @strlen(i8* %134) #14
  %145 = getelementptr inbounds i8, i8* %134, i64 %144
  %146 = getelementptr inbounds i8, i8* %145, i64 1
  br label %157

; <label>:147:                                    ; preds = %137, %139
  %148 = call i64 @strlen(i8* %134) #14
  %149 = add i64 %148, 1
  %150 = getelementptr inbounds i8, i8* %134, i64 %149
  %151 = call i64 @strlen(i8* %150) #14
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
  %161 = select i1 %160, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.207, i64 0, i64 0), i8* %158
  ret i8* %161
}

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i8* @getenv(i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fdopen(i32, i8* nocapture readonly) local_unnamed_addr #2

declare i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @ungetc(i32, %struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @fscanf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @__strcpy_chk(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind sspstrong uwtable
define void @mbiter_multi_next(%struct.mbiter_multi*) local_unnamed_addr #12 {
  %2 = getelementptr inbounds %struct.mbiter_multi, %struct.mbiter_multi* %0, i64 0, i32 3
  %3 = load i8, i8* %2, align 4
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %76

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.mbiter_multi, %struct.mbiter_multi* %0, i64 0, i32 1
  %7 = load i8, i8* %6, align 8
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %14, label %9

; <label>:9:                                      ; preds = %5
  %10 = getelementptr inbounds %struct.mbiter_multi, %struct.mbiter_multi* %0, i64 0, i32 4
  %11 = getelementptr inbounds %struct.mbchar, %struct.mbchar* %10, i64 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = getelementptr inbounds %struct.mbiter_multi, %struct.mbiter_multi* %0, i64 0, i32 2
  br label %41

; <label>:14:                                     ; preds = %5
  %15 = getelementptr inbounds %struct.mbiter_multi, %struct.mbiter_multi* %0, i64 0, i32 4, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = load i8, i8* %16, align 1
  %18 = zext i8 %17 to i32
  %19 = lshr i32 %18, 5
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([8 x i32]* @is_basic_table to [0 x i32]*), i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %18, 31
  %24 = shl i32 1, %23
  %25 = and i32 %24, %22
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %33, label %27

; <label>:27:                                     ; preds = %14
  %28 = getelementptr inbounds %struct.mbiter_multi, %struct.mbiter_multi* %0, i64 0, i32 4, i32 1
  store i64 1, i64* %28, align 8
  %29 = load i8, i8* %16, align 1
  %30 = sext i8 %29 to i32
  %31 = getelementptr inbounds %struct.mbiter_multi, %struct.mbiter_multi* %0, i64 0, i32 4, i32 3
  store i32 %30, i32* %31, align 4
  %32 = getelementptr inbounds %struct.mbiter_multi, %struct.mbiter_multi* %0, i64 0, i32 4, i32 2
  store i8 1, i8* %32, align 8
  br label %75

; <label>:33:                                     ; preds = %14
  %34 = getelementptr inbounds %struct.mbiter_multi, %struct.mbiter_multi* %0, i64 0, i32 2
  %35 = tail call i32 @mbsinit(%struct.__mbstate_t* %34) #14
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38

; <label>:37:                                     ; preds = %33
  tail call void @__assert_fail(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.210, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1.211, i64 0, i64 0), i32 142, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__PRETTY_FUNCTION__.mbiter_multi_next, i64 0, i64 0)) #15
  unreachable

; <label>:38:                                     ; preds = %33
  store i8 1, i8* %6, align 8
  %39 = getelementptr inbounds %struct.mbiter_multi, %struct.mbiter_multi* %0, i64 0, i32 4
  %40 = getelementptr inbounds %struct.mbchar, %struct.mbchar* %39, i64 0, i32 0
  br label %41

; <label>:41:                                     ; preds = %9, %38
  %42 = phi %struct.__mbstate_t* [ %13, %9 ], [ %34, %38 ]
  %43 = phi i8** [ %11, %9 ], [ %40, %38 ]
  %44 = phi %struct.mbchar* [ %10, %9 ], [ %39, %38 ]
  %45 = phi i8* [ %12, %9 ], [ %16, %38 ]
  %46 = getelementptr inbounds %struct.mbiter_multi, %struct.mbiter_multi* %0, i64 0, i32 4, i32 3
  %47 = bitcast %struct.mbiter_multi* %0 to i64*
  %48 = load i64, i64* %47, align 8
  %49 = ptrtoint i8* %45 to i64
  %50 = sub i64 %48, %49
  %51 = tail call i64 @rpl_mbrtowc(i32* %46, i8* %45, i64 %50, %struct.__mbstate_t* %42) #11
  %52 = getelementptr inbounds %struct.mbiter_multi, %struct.mbiter_multi* %0, i64 0, i32 4, i32 1
  store i64 %51, i64* %52, align 8
  switch i64 %51, label %70 [
    i64 -1, label %53
    i64 -2, label %55
    i64 0, label %61
  ]

; <label>:53:                                     ; preds = %41
  store i64 1, i64* %52, align 8
  %54 = getelementptr inbounds %struct.mbiter_multi, %struct.mbiter_multi* %0, i64 0, i32 4, i32 2
  store i8 0, i8* %54, align 8
  br label %75

; <label>:55:                                     ; preds = %41
  %56 = load i64, i64* %47, align 8
  %57 = bitcast %struct.mbchar* %44 to i64*
  %58 = load i64, i64* %57, align 8
  %59 = sub i64 %56, %58
  store i64 %59, i64* %52, align 8
  %60 = getelementptr inbounds %struct.mbiter_multi, %struct.mbiter_multi* %0, i64 0, i32 4, i32 2
  store i8 0, i8* %60, align 8
  br label %75

; <label>:61:                                     ; preds = %41
  store i64 1, i64* %52, align 8
  %62 = load i8*, i8** %43, align 8
  %63 = load i8, i8* %62, align 1
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %66, label %65

; <label>:65:                                     ; preds = %61
  tail call void @__assert_fail(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2.212, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1.211, i64 0, i64 0), i32 169, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__PRETTY_FUNCTION__.mbiter_multi_next, i64 0, i64 0)) #15
  unreachable

; <label>:66:                                     ; preds = %61
  %67 = load i32, i32* %46, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %70, label %69

; <label>:69:                                     ; preds = %66
  tail call void @__assert_fail(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3.213, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1.211, i64 0, i64 0), i32 170, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__PRETTY_FUNCTION__.mbiter_multi_next, i64 0, i64 0)) #15
  unreachable

; <label>:70:                                     ; preds = %41, %66
  %71 = getelementptr inbounds %struct.mbiter_multi, %struct.mbiter_multi* %0, i64 0, i32 4, i32 2
  store i8 1, i8* %71, align 8
  %72 = tail call i32 @mbsinit(%struct.__mbstate_t* %42) #14
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %75, label %74

; <label>:74:                                     ; preds = %70
  store i8 0, i8* %6, align 8
  br label %75

; <label>:75:                                     ; preds = %70, %53, %74, %55, %27
  store i8 1, i8* %2, align 4
  br label %76

; <label>:76:                                     ; preds = %1, %75
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define void @mbiter_multi_reloc(%struct.mbiter_multi* nocapture, i64) local_unnamed_addr #12 {
  %3 = getelementptr inbounds %struct.mbiter_multi, %struct.mbiter_multi* %0, i64 0, i32 4, i32 0
  %4 = load i8*, i8** %3, align 8
  %5 = getelementptr inbounds i8, i8* %4, i64 %1
  store i8* %5, i8** %3, align 8
  %6 = getelementptr inbounds %struct.mbiter_multi, %struct.mbiter_multi* %0, i64 0, i32 0
  %7 = load i8*, i8** %6, align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 %1
  store i8* %8, i8** %6, align 8
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define void @mbiter_multi_copy(%struct.mbiter_multi*, %struct.mbiter_multi* readonly) local_unnamed_addr #12 {
  %3 = bitcast %struct.mbiter_multi* %1 to i64*
  %4 = load i64, i64* %3, align 8
  %5 = bitcast %struct.mbiter_multi* %0 to i64*
  store i64 %4, i64* %5, align 8
  %6 = getelementptr inbounds %struct.mbiter_multi, %struct.mbiter_multi* %1, i64 0, i32 1
  %7 = load i8, i8* %6, align 8
  %8 = icmp eq i8 %7, 0
  %9 = getelementptr inbounds %struct.mbiter_multi, %struct.mbiter_multi* %0, i64 0, i32 1
  store i8 %7, i8* %9, align 8
  %10 = getelementptr inbounds %struct.mbiter_multi, %struct.mbiter_multi* %0, i64 0, i32 2
  br i1 %8, label %16, label %11

; <label>:11:                                     ; preds = %2
  %12 = getelementptr inbounds %struct.mbiter_multi, %struct.mbiter_multi* %1, i64 0, i32 2
  %13 = bitcast %struct.__mbstate_t* %12 to i64*
  %14 = bitcast %struct.__mbstate_t* %10 to i64*
  %15 = load i64, i64* %13, align 4
  store i64 %15, i64* %14, align 4
  br label %18

; <label>:16:                                     ; preds = %2
  %17 = bitcast %struct.__mbstate_t* %10 to i64*
  store i64 0, i64* %17, align 4
  br label %18

; <label>:18:                                     ; preds = %16, %11
  %19 = getelementptr inbounds %struct.mbiter_multi, %struct.mbiter_multi* %1, i64 0, i32 3
  %20 = load i8, i8* %19, align 4
  %21 = getelementptr inbounds %struct.mbiter_multi, %struct.mbiter_multi* %0, i64 0, i32 3
  store i8 %20, i8* %21, align 4
  %22 = getelementptr inbounds %struct.mbiter_multi, %struct.mbiter_multi* %1, i64 0, i32 4, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = getelementptr inbounds %struct.mbiter_multi, %struct.mbiter_multi* %1, i64 0, i32 4, i32 4, i64 0
  %25 = icmp eq i8* %23, %24
  br i1 %25, label %28, label %26

; <label>:26:                                     ; preds = %18
  %27 = getelementptr inbounds %struct.mbiter_multi, %struct.mbiter_multi* %1, i64 0, i32 4, i32 1
  br label %32

; <label>:28:                                     ; preds = %18
  %29 = getelementptr inbounds %struct.mbiter_multi, %struct.mbiter_multi* %0, i64 0, i32 4, i32 4, i64 0
  %30 = getelementptr inbounds %struct.mbiter_multi, %struct.mbiter_multi* %1, i64 0, i32 4, i32 1
  %31 = load i64, i64* %30, align 8
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %29, i8* %23, i64 %31, i32 8, i1 false) #11
  br label %32

; <label>:32:                                     ; preds = %28, %26
  %33 = phi i64* [ %27, %26 ], [ %30, %28 ]
  %34 = phi i8* [ %23, %26 ], [ %29, %28 ]
  %35 = getelementptr inbounds %struct.mbiter_multi, %struct.mbiter_multi* %0, i64 0, i32 4, i32 0
  store i8* %34, i8** %35, align 8
  %36 = load i64, i64* %33, align 8
  %37 = getelementptr inbounds %struct.mbiter_multi, %struct.mbiter_multi* %0, i64 0, i32 4, i32 1
  store i64 %36, i64* %37, align 8
  %38 = getelementptr inbounds %struct.mbiter_multi, %struct.mbiter_multi* %1, i64 0, i32 4, i32 2
  %39 = load i8, i8* %38, align 8
  %40 = icmp eq i8 %39, 0
  %41 = getelementptr inbounds %struct.mbiter_multi, %struct.mbiter_multi* %0, i64 0, i32 4, i32 2
  store i8 %39, i8* %41, align 8
  br i1 %40, label %46, label %42

; <label>:42:                                     ; preds = %32
  %43 = getelementptr inbounds %struct.mbiter_multi, %struct.mbiter_multi* %1, i64 0, i32 4, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.mbiter_multi, %struct.mbiter_multi* %0, i64 0, i32 4, i32 3
  store i32 %44, i32* %45, align 4
  br label %46

; <label>:46:                                     ; preds = %32, %42
  ret void
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i8* @mbsstr(i8* nonnull, i8* nonnull) local_unnamed_addr #9 {
  %3 = alloca %struct.mbuiter_multi, align 8
  %4 = alloca %struct.mbuiter_multi, align 8
  %5 = alloca %struct.mbuiter_multi, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.mbuiter_multi, align 8
  %8 = alloca %struct.mbuiter_multi, align 8
  %9 = alloca i8*, align 8
  %10 = tail call i64 @__ctype_get_mb_cur_max() #11
  %11 = icmp ugt i64 %10, 1
  br i1 %11, label %12, label %212

; <label>:12:                                     ; preds = %2
  %13 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %3, i64 0, i32 0
  call void @llvm.lifetime.start(i64 64, i8* nonnull %13) #11
  %14 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %3, i64 0, i32 3, i32 0
  store i8* %1, i8** %14, align 8
  store i8 0, i8* %13, align 8
  %15 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %3, i64 0, i32 1
  %16 = bitcast %struct.__mbstate_t* %15 to i64*
  store i64 0, i64* %16, align 4
  %17 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %3, i64 0, i32 2
  store i8 0, i8* %17, align 4
  call void @mbuiter_multi_next(%struct.mbuiter_multi* nonnull %3)
  %18 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %3, i64 0, i32 3, i32 2
  %19 = load i8, i8* %18, align 8
  %20 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %3, i64 0, i32 3, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i8 %19, 0
  %23 = icmp ne i32 %21, 0
  %24 = or i1 %22, %23
  br i1 %24, label %25, label %210

; <label>:25:                                     ; preds = %12
  %26 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %4, i64 0, i32 0
  call void @llvm.lifetime.start(i64 64, i8* nonnull %26) #11
  %27 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %5, i64 0, i32 0
  call void @llvm.lifetime.start(i64 64, i8* nonnull %27) #11
  %28 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %4, i64 0, i32 3, i32 0
  store i8* %1, i8** %28, align 8
  store i8 0, i8* %26, align 8
  %29 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %4, i64 0, i32 1
  %30 = bitcast %struct.__mbstate_t* %29 to i64*
  store i64 0, i64* %30, align 4
  %31 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %4, i64 0, i32 2
  store i8 0, i8* %31, align 4
  %32 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %5, i64 0, i32 3, i32 0
  store i8* %0, i8** %32, align 8
  store i8 0, i8* %27, align 8
  %33 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %5, i64 0, i32 1
  %34 = bitcast %struct.__mbstate_t* %33 to i64*
  store i64 0, i64* %34, align 4
  %35 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %5, i64 0, i32 2
  store i8 0, i8* %35, align 4
  call void @mbuiter_multi_next(%struct.mbuiter_multi* nonnull %5)
  %36 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %5, i64 0, i32 3, i32 2
  %37 = load i8, i8* %36, align 8
  %38 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %5, i64 0, i32 3, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i8 %37, 0
  %41 = icmp ne i32 %39, 0
  %42 = or i1 %40, %41
  br i1 %42, label %43, label %208

; <label>:43:                                     ; preds = %25
  %44 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %5, i64 0, i32 3, i32 1
  %45 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %3, i64 0, i32 3, i32 1
  %46 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %7, i64 0, i32 0
  %47 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %8, i64 0, i32 0
  %48 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %7, i64 0, i32 3, i32 1
  %49 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %7, i64 0, i32 3, i32 0
  %50 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %7, i64 0, i32 2
  %51 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %8, i64 0, i32 3, i32 0
  %52 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %8, i64 0, i32 1
  %53 = bitcast %struct.__mbstate_t* %52 to i64*
  %54 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %8, i64 0, i32 2
  %55 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %8, i64 0, i32 3, i32 2
  %56 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %8, i64 0, i32 3, i32 3
  %57 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %8, i64 0, i32 3, i32 1
  %58 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %7, i64 0, i32 3, i32 2
  %59 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %7, i64 0, i32 3, i32 3
  %60 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %4, i64 0, i32 3, i32 2
  %61 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %4, i64 0, i32 3, i32 3
  %62 = bitcast i8** %6 to i8*
  %63 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %4, i64 0, i32 3, i32 1
  br label %64

; <label>:64:                                     ; preds = %43, %196
  %65 = phi i64 [ 0, %43 ], [ %105, %196 ]
  %66 = phi i64 [ 0, %43 ], [ %197, %196 ]
  %67 = phi i64 [ 0, %43 ], [ %106, %196 ]
  %68 = phi i8 [ 1, %43 ], [ %104, %196 ]
  %69 = and i8 %68, 1
  %70 = icmp eq i8 %69, 0
  %71 = icmp ult i64 %67, 10
  %72 = or i1 %71, %70
  %73 = mul i64 %67, 5
  %74 = icmp ult i64 %66, %73
  %75 = or i1 %72, %74
  br i1 %75, label %103, label %76

; <label>:76:                                     ; preds = %64
  %77 = sub i64 %66, %65
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %94, label %79

; <label>:79:                                     ; preds = %76
  br label %80

; <label>:80:                                     ; preds = %79, %87
  %81 = phi i64 [ %91, %87 ], [ %77, %79 ]
  call void @mbuiter_multi_next(%struct.mbuiter_multi* nonnull %4)
  %82 = load i8, i8* %60, align 8
  %83 = load i32, i32* %61, align 4
  %84 = icmp eq i8 %82, 0
  %85 = icmp ne i32 %83, 0
  %86 = or i1 %84, %85
  br i1 %86, label %87, label %93

; <label>:87:                                     ; preds = %80
  %88 = load i64, i64* %63, align 8
  %89 = load i8*, i8** %28, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 %88
  store i8* %90, i8** %28, align 8
  store i8 0, i8* %31, align 4
  %91 = add i64 %81, -1
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %80

; <label>:93:                                     ; preds = %87, %80
  br label %94

; <label>:94:                                     ; preds = %93, %76
  call void @mbuiter_multi_next(%struct.mbuiter_multi* nonnull %4)
  %95 = load i8, i8* %60, align 8
  %96 = load i32, i32* %61, align 4
  %97 = icmp eq i8 %95, 0
  %98 = icmp ne i32 %96, 0
  %99 = or i1 %97, %98
  br i1 %99, label %103, label %100

; <label>:100:                                    ; preds = %94
  call void @llvm.lifetime.start(i64 8, i8* nonnull %62) #11
  %101 = call fastcc zeroext i1 @knuth_morris_pratt_multibyte(i8* nonnull %0, i8* nonnull %1, i8** nonnull %6)
  %102 = load i8*, i8** %6, align 8
  call void @llvm.lifetime.end(i64 8, i8* nonnull %62) #11
  br i1 %101, label %206, label %103

; <label>:103:                                    ; preds = %100, %94, %64
  %104 = phi i8 [ %68, %64 ], [ %68, %94 ], [ 0, %100 ]
  %105 = phi i64 [ %65, %64 ], [ %66, %94 ], [ %66, %100 ]
  %106 = add i64 %67, 1
  %107 = add i64 %66, 1
  %108 = load i8, i8* %36, align 8
  %109 = icmp eq i8 %108, 0
  %110 = load i8, i8* %18, align 8
  %111 = icmp eq i8 %110, 0
  %112 = or i1 %109, %111
  br i1 %112, label %117, label %113

; <label>:113:                                    ; preds = %103
  %114 = load i32, i32* %38, align 4
  %115 = load i32, i32* %20, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %126, label %196

; <label>:117:                                    ; preds = %103
  %118 = load i64, i64* %44, align 8
  %119 = load i64, i64* %45, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %196

; <label>:121:                                    ; preds = %117
  %122 = load i8*, i8** %32, align 8
  %123 = load i8*, i8** %14, align 8
  %124 = call i32 @memcmp(i8* %122, i8* %123, i64 %118) #14
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %196

; <label>:126:                                    ; preds = %121, %113
  call void @llvm.lifetime.start(i64 64, i8* nonnull %46) #11
  call void @llvm.lifetime.start(i64 64, i8* nonnull %47) #11
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %46, i8* nonnull %27, i64 64, i32 8, i1 false)
  %127 = load i64, i64* %48, align 8
  %128 = load i8*, i8** %49, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 %127
  store i8* %129, i8** %49, align 8
  store i8 0, i8* %50, align 4
  store i8* %1, i8** %51, align 8
  store i8 0, i8* %47, align 8
  store i64 0, i64* %53, align 4
  store i8 0, i8* %54, align 4
  call void @mbuiter_multi_next(%struct.mbuiter_multi* nonnull %8)
  %130 = load i8, i8* %55, align 8
  %131 = load i32, i32* %56, align 4
  %132 = icmp eq i8 %130, 0
  %133 = icmp ne i32 %131, 0
  %134 = or i1 %132, %133
  br i1 %134, label %135, label %145

; <label>:135:                                    ; preds = %126
  %136 = load i64, i64* %57, align 8
  %137 = load i8*, i8** %51, align 8
  %138 = getelementptr inbounds i8, i8* %137, i64 %136
  store i8* %138, i8** %51, align 8
  store i8 0, i8* %54, align 4
  call void @mbuiter_multi_next(%struct.mbuiter_multi* nonnull %8)
  %139 = load i8, i8* %55, align 8
  %140 = load i32, i32* %56, align 4
  %141 = icmp eq i8 %139, 0
  %142 = icmp ne i32 %140, 0
  %143 = or i1 %141, %142
  br i1 %143, label %144, label %147

; <label>:144:                                    ; preds = %135
  br label %150

; <label>:145:                                    ; preds = %126
  call void @abort() #15
  unreachable

; <label>:146:                                    ; preds = %180
  br label %148

; <label>:147:                                    ; preds = %135
  br label %148

; <label>:148:                                    ; preds = %147, %146
  %149 = load i8*, i8** %32, align 8
  br label %194

; <label>:150:                                    ; preds = %144, %180
  %151 = phi i64 [ %158, %180 ], [ %107, %144 ]
  call void @mbuiter_multi_next(%struct.mbuiter_multi* nonnull %7)
  %152 = load i8, i8* %58, align 8
  %153 = icmp ne i8 %152, 0
  %154 = load i32, i32* %59, align 4
  %155 = icmp eq i32 %154, 0
  %156 = and i1 %153, %155
  br i1 %156, label %193, label %157

; <label>:157:                                    ; preds = %150
  %158 = add i64 %151, 1
  %159 = xor i1 %153, true
  %160 = load i8, i8* %55, align 8
  %161 = icmp eq i8 %160, 0
  %162 = or i1 %161, %159
  br i1 %162, label %171, label %163

; <label>:163:                                    ; preds = %157
  %164 = load i32, i32* %56, align 4
  %165 = icmp eq i32 %154, %164
  br i1 %165, label %166, label %192

; <label>:166:                                    ; preds = %163
  %167 = load i64, i64* %48, align 8
  %168 = load i8*, i8** %49, align 8
  %169 = load i64, i64* %57, align 8
  %170 = load i8*, i8** %51, align 8
  br label %180

; <label>:171:                                    ; preds = %157
  %172 = load i64, i64* %48, align 8
  %173 = load i64, i64* %57, align 8
  %174 = icmp eq i64 %172, %173
  br i1 %174, label %175, label %192

; <label>:175:                                    ; preds = %171
  %176 = load i8*, i8** %49, align 8
  %177 = load i8*, i8** %51, align 8
  %178 = call i32 @memcmp(i8* %176, i8* %177, i64 %172) #14
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %192

; <label>:180:                                    ; preds = %166, %175
  %181 = phi i8* [ %170, %166 ], [ %177, %175 ]
  %182 = phi i64 [ %169, %166 ], [ %172, %175 ]
  %183 = phi i8* [ %168, %166 ], [ %176, %175 ]
  %184 = phi i64 [ %167, %166 ], [ %172, %175 ]
  %185 = getelementptr inbounds i8, i8* %183, i64 %184
  store i8* %185, i8** %49, align 8
  store i8 0, i8* %50, align 4
  %186 = getelementptr inbounds i8, i8* %181, i64 %182
  store i8* %186, i8** %51, align 8
  store i8 0, i8* %54, align 4
  call void @mbuiter_multi_next(%struct.mbuiter_multi* nonnull %8)
  %187 = load i8, i8* %55, align 8
  %188 = load i32, i32* %56, align 4
  %189 = icmp eq i8 %187, 0
  %190 = icmp ne i32 %188, 0
  %191 = or i1 %189, %190
  br i1 %191, label %150, label %146

; <label>:192:                                    ; preds = %163, %171, %175
  call void @llvm.lifetime.end(i64 64, i8* nonnull %47) #11
  call void @llvm.lifetime.end(i64 64, i8* nonnull %46) #11
  br label %196

; <label>:193:                                    ; preds = %150
  br label %194

; <label>:194:                                    ; preds = %193, %148
  %195 = phi i8* [ %149, %148 ], [ null, %193 ]
  call void @llvm.lifetime.end(i64 64, i8* nonnull %47) #11
  call void @llvm.lifetime.end(i64 64, i8* nonnull %46) #11
  br label %208

; <label>:196:                                    ; preds = %192, %113, %117, %121
  %197 = phi i64 [ %107, %113 ], [ %107, %121 ], [ %107, %117 ], [ %158, %192 ]
  %198 = load i64, i64* %44, align 8
  %199 = load i8*, i8** %32, align 8
  %200 = getelementptr inbounds i8, i8* %199, i64 %198
  store i8* %200, i8** %32, align 8
  store i8 0, i8* %35, align 4
  call void @mbuiter_multi_next(%struct.mbuiter_multi* nonnull %5)
  %201 = load i8, i8* %36, align 8
  %202 = load i32, i32* %38, align 4
  %203 = icmp eq i8 %201, 0
  %204 = icmp ne i32 %202, 0
  %205 = or i1 %203, %204
  br i1 %205, label %64, label %206

; <label>:206:                                    ; preds = %100, %196
  %207 = phi i8* [ null, %196 ], [ %102, %100 ]
  br label %208

; <label>:208:                                    ; preds = %206, %25, %194
  %209 = phi i8* [ %195, %194 ], [ null, %25 ], [ %207, %206 ]
  call void @llvm.lifetime.end(i64 64, i8* nonnull %27) #11
  call void @llvm.lifetime.end(i64 64, i8* nonnull %26) #11
  br label %210

; <label>:210:                                    ; preds = %12, %208
  %211 = phi i8* [ %209, %208 ], [ %0, %12 ]
  call void @llvm.lifetime.end(i64 64, i8* nonnull %13) #11
  br label %285

; <label>:212:                                    ; preds = %2
  %213 = load i8, i8* %1, align 1
  %214 = icmp eq i8 %213, 0
  br i1 %214, label %285, label %215

; <label>:215:                                    ; preds = %212
  %216 = load i8, i8* %0, align 1
  %217 = icmp eq i8 %216, 0
  br i1 %217, label %285, label %218

; <label>:218:                                    ; preds = %215
  %219 = bitcast i8** %9 to i8*
  br label %220

; <label>:220:                                    ; preds = %218, %276
  %221 = phi i8 [ %216, %218 ], [ %279, %276 ]
  %222 = phi i8* [ %0, %218 ], [ %278, %276 ]
  %223 = phi i8* [ %1, %218 ], [ %256, %276 ]
  %224 = phi i64 [ 0, %218 ], [ %255, %276 ]
  %225 = phi i64 [ 0, %218 ], [ %277, %276 ]
  %226 = phi i64 [ 0, %218 ], [ %257, %276 ]
  %227 = phi i8 [ 1, %218 ], [ %254, %276 ]
  %228 = and i8 %227, 1
  %229 = icmp eq i8 %228, 0
  %230 = icmp ult i64 %226, 10
  %231 = or i1 %230, %229
  %232 = mul i64 %226, 5
  %233 = icmp ult i64 %225, %232
  %234 = or i1 %231, %233
  br i1 %234, label %252, label %235

; <label>:235:                                    ; preds = %220
  %236 = icmp eq i8* %223, null
  br i1 %236, label %245, label %237

; <label>:237:                                    ; preds = %235
  %238 = sub i64 %225, %224
  %239 = tail call i64 @strnlen(i8* nonnull %223, i64 %238) #14
  %240 = getelementptr inbounds i8, i8* %223, i64 %239
  %241 = load i8, i8* %240, align 1
  %242 = icmp eq i8 %241, 0
  %243 = icmp eq i8* %240, null
  %244 = or i1 %242, %243
  br i1 %244, label %245, label %252

; <label>:245:                                    ; preds = %237, %235
  %246 = phi i64 [ %224, %235 ], [ %225, %237 ]
  call void @llvm.lifetime.start(i64 8, i8* nonnull %219) #11
  %247 = tail call i64 @strlen(i8* nonnull %1) #14
  %248 = call fastcc zeroext i1 @knuth_morris_pratt(i8* %222, i8* nonnull %1, i64 %247, i8** nonnull %9)
  %249 = load i8*, i8** %9, align 8
  call void @llvm.lifetime.end(i64 8, i8* nonnull %219) #11
  br i1 %248, label %283, label %250

; <label>:250:                                    ; preds = %245
  %251 = load i8, i8* %222, align 1
  br label %252

; <label>:252:                                    ; preds = %250, %237, %220
  %253 = phi i8 [ %251, %250 ], [ %221, %220 ], [ %221, %237 ]
  %254 = phi i8 [ 0, %250 ], [ %227, %220 ], [ %227, %237 ]
  %255 = phi i64 [ %246, %250 ], [ %224, %220 ], [ %225, %237 ]
  %256 = phi i8* [ null, %250 ], [ %223, %220 ], [ %240, %237 ]
  %257 = add i64 %226, 1
  %258 = add i64 %225, 1
  %259 = icmp eq i8 %253, %213
  br i1 %259, label %260, label %276

; <label>:260:                                    ; preds = %252
  br label %261

; <label>:261:                                    ; preds = %260, %272
  %262 = phi i64 [ %273, %272 ], [ %258, %260 ]
  %263 = phi i8* [ %266, %272 ], [ %222, %260 ]
  %264 = phi i8* [ %265, %272 ], [ %1, %260 ]
  %265 = getelementptr inbounds i8, i8* %264, i64 1
  %266 = getelementptr inbounds i8, i8* %263, i64 1
  %267 = load i8, i8* %265, align 1
  %268 = icmp eq i8 %267, 0
  br i1 %268, label %281, label %269

; <label>:269:                                    ; preds = %261
  %270 = load i8, i8* %266, align 1
  %271 = icmp eq i8 %270, 0
  br i1 %271, label %281, label %272

; <label>:272:                                    ; preds = %269
  %273 = add i64 %262, 1
  %274 = icmp eq i8 %270, %267
  br i1 %274, label %261, label %275

; <label>:275:                                    ; preds = %272
  br label %276

; <label>:276:                                    ; preds = %275, %252
  %277 = phi i64 [ %258, %252 ], [ %273, %275 ]
  %278 = getelementptr inbounds i8, i8* %222, i64 1
  %279 = load i8, i8* %278, align 1
  %280 = icmp eq i8 %279, 0
  br i1 %280, label %283, label %220

; <label>:281:                                    ; preds = %261, %269
  %282 = phi i8* [ %222, %261 ], [ null, %269 ]
  br label %285

; <label>:283:                                    ; preds = %245, %276
  %284 = phi i8* [ null, %276 ], [ %249, %245 ]
  br label %285

; <label>:285:                                    ; preds = %283, %281, %215, %212, %210
  %286 = phi i8* [ %211, %210 ], [ %0, %212 ], [ null, %215 ], [ %282, %281 ], [ %284, %283 ]
  ret i8* %286
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @knuth_morris_pratt_multibyte(i8*, i8*, i8** nocapture) unnamed_addr #6 {
  %4 = alloca %struct.mbuiter_multi, align 8
  %5 = alloca %struct.mbuiter_multi, align 8
  %6 = alloca %struct.mbuiter_multi, align 8
  %7 = tail call i64 @mbslen(i8* %1) #14
  %8 = icmp ugt i64 %7, 164703072086692425
  br i1 %8, label %229, label %9

; <label>:9:                                      ; preds = %3
  %10 = mul i64 %7, 56
  %11 = icmp ult i64 %10, 4016
  br i1 %11, label %12, label %16

; <label>:12:                                     ; preds = %9
  %13 = add i64 %10, 16
  %14 = alloca i8, i64 %13, align 16
  %15 = getelementptr inbounds i8, i8* %14, i64 16
  br label %19

; <label>:16:                                     ; preds = %9
  %17 = tail call i8* @mmalloca(i64 %10) #11
  %18 = icmp eq i8* %17, null
  br i1 %18, label %229, label %19

; <label>:19:                                     ; preds = %12, %16
  %20 = phi i8* [ %15, %12 ], [ %17, %16 ]
  %21 = bitcast i8* %20 to %struct.mbchar*
  %22 = getelementptr inbounds %struct.mbchar, %struct.mbchar* %21, i64 %7
  %23 = bitcast %struct.mbchar* %22 to i64*
  %24 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %4, i64 0, i32 0
  call void @llvm.lifetime.start(i64 64, i8* nonnull %24) #11
  %25 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %4, i64 0, i32 3, i32 0
  store i8* %1, i8** %25, align 8
  store i8 0, i8* %24, align 8
  %26 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %4, i64 0, i32 1
  %27 = bitcast %struct.__mbstate_t* %26 to i64*
  store i64 0, i64* %27, align 4
  %28 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %4, i64 0, i32 2
  store i8 0, i8* %28, align 4
  call void @mbuiter_multi_next(%struct.mbuiter_multi* nonnull %4)
  %29 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %4, i64 0, i32 3, i32 2
  %30 = load i8, i8* %29, align 8
  %31 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %4, i64 0, i32 3, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i8 %30, 0
  %34 = icmp ne i32 %32, 0
  %35 = or i1 %33, %34
  br i1 %35, label %36, label %70

; <label>:36:                                     ; preds = %19
  %37 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %4, i64 0, i32 3, i32 4, i64 0
  %38 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %4, i64 0, i32 3, i32 1
  br label %39

; <label>:39:                                     ; preds = %36, %59
  %40 = phi i8 [ %30, %36 ], [ %64, %59 ]
  %41 = phi i64 [ 0, %36 ], [ %63, %59 ]
  %42 = load i8*, i8** %25, align 8
  %43 = icmp eq i8* %42, %37
  br i1 %43, label %44, label %48

; <label>:44:                                     ; preds = %39
  %45 = getelementptr inbounds %struct.mbchar, %struct.mbchar* %21, i64 %41, i32 4, i64 0
  %46 = load i64, i64* %38, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %45, i8* nonnull %37, i64 %46, i32 8, i1 false) #11
  %47 = load i8, i8* %29, align 8
  br label %48

; <label>:48:                                     ; preds = %39, %44
  %49 = phi i8 [ %47, %44 ], [ %40, %39 ]
  %50 = phi i8* [ %45, %44 ], [ %42, %39 ]
  %51 = getelementptr inbounds %struct.mbchar, %struct.mbchar* %21, i64 %41, i32 0
  store i8* %50, i8** %51, align 8
  %52 = load i64, i64* %38, align 8
  %53 = getelementptr inbounds %struct.mbchar, %struct.mbchar* %21, i64 %41, i32 1
  store i64 %52, i64* %53, align 8
  %54 = icmp eq i8 %49, 0
  %55 = getelementptr inbounds %struct.mbchar, %struct.mbchar* %21, i64 %41, i32 2
  store i8 %49, i8* %55, align 8
  br i1 %54, label %59, label %56

; <label>:56:                                     ; preds = %48
  %57 = load i32, i32* %31, align 4
  %58 = getelementptr inbounds %struct.mbchar, %struct.mbchar* %21, i64 %41, i32 3
  store i32 %57, i32* %58, align 4
  br label %59

; <label>:59:                                     ; preds = %48, %56
  %60 = load i64, i64* %38, align 8
  %61 = load i8*, i8** %25, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 %60
  store i8* %62, i8** %25, align 8
  store i8 0, i8* %28, align 4
  %63 = add i64 %41, 1
  call void @mbuiter_multi_next(%struct.mbuiter_multi* nonnull %4)
  %64 = load i8, i8* %29, align 8
  %65 = load i32, i32* %31, align 4
  %66 = icmp eq i8 %64, 0
  %67 = icmp ne i32 %65, 0
  %68 = or i1 %66, %67
  br i1 %68, label %39, label %69

; <label>:69:                                     ; preds = %59
  br label %70

; <label>:70:                                     ; preds = %69, %19
  call void @llvm.lifetime.end(i64 64, i8* nonnull %24) #11
  %71 = getelementptr inbounds %struct.mbchar, %struct.mbchar* %21, i64 %7, i32 1
  store i64 1, i64* %71, align 8
  %72 = icmp ugt i64 %7, 2
  br i1 %72, label %73, label %123

; <label>:73:                                     ; preds = %70
  br label %74

; <label>:74:                                     ; preds = %73, %116
  %75 = phi i64 [ %117, %116 ], [ 0, %73 ]
  %76 = phi i64 [ %120, %116 ], [ 2, %73 ]
  %77 = add i64 %76, -1
  %78 = getelementptr inbounds %struct.mbchar, %struct.mbchar* %21, i64 %77, i32 2
  %79 = load i8, i8* %78, align 8
  %80 = icmp eq i8 %79, 0
  %81 = getelementptr inbounds %struct.mbchar, %struct.mbchar* %21, i64 %77, i32 1
  %82 = getelementptr inbounds %struct.mbchar, %struct.mbchar* %21, i64 %77, i32 0
  %83 = getelementptr inbounds %struct.mbchar, %struct.mbchar* %21, i64 %77, i32 3
  br label %84

; <label>:84:                                     ; preds = %111, %74
  %85 = phi i64 [ %75, %74 ], [ %114, %111 ]
  br i1 %80, label %95, label %86

; <label>:86:                                     ; preds = %84
  %87 = getelementptr inbounds %struct.mbchar, %struct.mbchar* %21, i64 %85, i32 2
  %88 = load i8, i8* %87, align 8
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %95, label %90

; <label>:90:                                     ; preds = %86
  %91 = load i32, i32* %83, align 4
  %92 = getelementptr inbounds %struct.mbchar, %struct.mbchar* %21, i64 %85, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = icmp eq i32 %91, %93
  br i1 %94, label %106, label %109

; <label>:95:                                     ; preds = %86, %84
  %96 = load i64, i64* %81, align 8
  %97 = getelementptr inbounds %struct.mbchar, %struct.mbchar* %21, i64 %85, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = icmp eq i64 %96, %98
  br i1 %99, label %100, label %109

; <label>:100:                                    ; preds = %95
  %101 = load i8*, i8** %82, align 8
  %102 = getelementptr inbounds %struct.mbchar, %struct.mbchar* %21, i64 %85, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = call i32 @memcmp(i8* %101, i8* %103, i64 %96) #14
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %109

; <label>:106:                                    ; preds = %100, %90
  %107 = add i64 %85, 1
  %108 = sub i64 %76, %107
  br label %116

; <label>:109:                                    ; preds = %100, %95, %90
  %110 = icmp eq i64 %85, 0
  br i1 %110, label %115, label %111

; <label>:111:                                    ; preds = %109
  %112 = getelementptr inbounds i64, i64* %23, i64 %85
  %113 = load i64, i64* %112, align 8
  %114 = sub i64 %85, %113
  br label %84

; <label>:115:                                    ; preds = %109
  br label %116

; <label>:116:                                    ; preds = %115, %106
  %117 = phi i64 [ %107, %106 ], [ 0, %115 ]
  %118 = phi i64 [ %108, %106 ], [ %76, %115 ]
  %119 = getelementptr inbounds i64, i64* %23, i64 %76
  store i64 %118, i64* %119, align 8
  %120 = add nuw i64 %76, 1
  %121 = icmp eq i64 %120, %7
  br i1 %121, label %122, label %74

; <label>:122:                                    ; preds = %116
  br label %123

; <label>:123:                                    ; preds = %122, %70
  %124 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %5, i64 0, i32 0
  call void @llvm.lifetime.start(i64 64, i8* nonnull %124) #11
  %125 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %6, i64 0, i32 0
  call void @llvm.lifetime.start(i64 64, i8* nonnull %125) #11
  store i8* null, i8** %2, align 8
  %126 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %5, i64 0, i32 3, i32 0
  store i8* %0, i8** %126, align 8
  store i8 0, i8* %124, align 8
  %127 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %5, i64 0, i32 1
  %128 = bitcast %struct.__mbstate_t* %127 to i64*
  store i64 0, i64* %128, align 4
  %129 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %5, i64 0, i32 2
  store i8 0, i8* %129, align 4
  %130 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %6, i64 0, i32 3, i32 0
  store i8* %0, i8** %130, align 8
  store i8 0, i8* %125, align 8
  %131 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %6, i64 0, i32 1
  %132 = bitcast %struct.__mbstate_t* %131 to i64*
  store i64 0, i64* %132, align 4
  %133 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %6, i64 0, i32 2
  store i8 0, i8* %133, align 4
  call void @mbuiter_multi_next(%struct.mbuiter_multi* nonnull %6)
  %134 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %6, i64 0, i32 3, i32 2
  %135 = load i8, i8* %134, align 8
  %136 = icmp ne i8 %135, 0
  %137 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %6, i64 0, i32 3, i32 3
  %138 = load i32, i32* %137, align 4
  %139 = icmp eq i32 %138, 0
  %140 = and i1 %136, %139
  br i1 %140, label %228, label %141

; <label>:141:                                    ; preds = %123
  %142 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %6, i64 0, i32 3, i32 1
  %143 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %5, i64 0, i32 3, i32 2
  %144 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %5, i64 0, i32 3, i32 3
  %145 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %5, i64 0, i32 3, i32 1
  br label %146

; <label>:146:                                    ; preds = %141, %220
  %147 = phi i32 [ %138, %141 ], [ %224, %220 ]
  %148 = phi i1 [ %136, %141 ], [ %223, %220 ]
  %149 = phi i64 [ 0, %141 ], [ %221, %220 ]
  %150 = getelementptr inbounds %struct.mbchar, %struct.mbchar* %21, i64 %149, i32 2
  %151 = load i8, i8* %150, align 8
  %152 = icmp eq i8 %151, 0
  %153 = xor i1 %148, true
  %154 = or i1 %152, %153
  br i1 %154, label %162, label %155

; <label>:155:                                    ; preds = %146
  %156 = getelementptr inbounds %struct.mbchar, %struct.mbchar* %21, i64 %149, i32 3
  %157 = load i32, i32* %156, align 4
  %158 = icmp eq i32 %157, %147
  br i1 %158, label %159, label %183

; <label>:159:                                    ; preds = %155
  %160 = load i64, i64* %142, align 8
  %161 = load i8*, i8** %130, align 8
  br label %173

; <label>:162:                                    ; preds = %146
  %163 = getelementptr inbounds %struct.mbchar, %struct.mbchar* %21, i64 %149, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* %142, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %167, label %183

; <label>:167:                                    ; preds = %162
  %168 = getelementptr inbounds %struct.mbchar, %struct.mbchar* %21, i64 %149, i32 0
  %169 = load i8*, i8** %168, align 8
  %170 = load i8*, i8** %130, align 8
  %171 = call i32 @memcmp(i8* %169, i8* %170, i64 %164) #14
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %183

; <label>:173:                                    ; preds = %159, %167
  %174 = phi i8* [ %161, %159 ], [ %170, %167 ]
  %175 = phi i64 [ %160, %159 ], [ %164, %167 ]
  %176 = add i64 %149, 1
  %177 = getelementptr inbounds i8, i8* %174, i64 %175
  store i8* %177, i8** %130, align 8
  store i8 0, i8* %133, align 4
  %178 = icmp eq i64 %176, %7
  br i1 %178, label %179, label %220

; <label>:179:                                    ; preds = %173
  %180 = bitcast i8** %126 to i64*
  %181 = load i64, i64* %180, align 8
  %182 = bitcast i8** %2 to i64*
  store i64 %181, i64* %182, align 8
  br label %228

; <label>:183:                                    ; preds = %167, %162, %155
  %184 = icmp eq i64 %149, 0
  br i1 %184, label %205, label %185

; <label>:185:                                    ; preds = %183
  %186 = getelementptr inbounds i64, i64* %23, i64 %149
  %187 = load i64, i64* %186, align 8
  %188 = sub i64 %149, %187
  %189 = icmp eq i64 %187, 0
  br i1 %189, label %220, label %190

; <label>:190:                                    ; preds = %185
  br label %191

; <label>:191:                                    ; preds = %190, %199
  %192 = phi i64 [ %203, %199 ], [ %187, %190 ]
  call void @mbuiter_multi_next(%struct.mbuiter_multi* nonnull %5)
  %193 = load i8, i8* %143, align 8
  %194 = load i32, i32* %144, align 4
  %195 = icmp eq i8 %193, 0
  %196 = icmp ne i32 %194, 0
  %197 = or i1 %195, %196
  br i1 %197, label %199, label %198

; <label>:198:                                    ; preds = %191
  call void @abort() #15
  unreachable

; <label>:199:                                    ; preds = %191
  %200 = load i64, i64* %145, align 8
  %201 = load i8*, i8** %126, align 8
  %202 = getelementptr inbounds i8, i8* %201, i64 %200
  store i8* %202, i8** %126, align 8
  store i8 0, i8* %129, align 4
  %203 = add i64 %192, -1
  %204 = icmp eq i64 %203, 0
  br i1 %204, label %219, label %191

; <label>:205:                                    ; preds = %183
  call void @mbuiter_multi_next(%struct.mbuiter_multi* nonnull %5)
  %206 = load i8, i8* %143, align 8
  %207 = load i32, i32* %144, align 4
  %208 = icmp eq i8 %206, 0
  %209 = icmp ne i32 %207, 0
  %210 = or i1 %208, %209
  br i1 %210, label %212, label %211

; <label>:211:                                    ; preds = %205
  call void @abort() #15
  unreachable

; <label>:212:                                    ; preds = %205
  %213 = load i64, i64* %145, align 8
  %214 = load i8*, i8** %126, align 8
  %215 = getelementptr inbounds i8, i8* %214, i64 %213
  store i8* %215, i8** %126, align 8
  store i8 0, i8* %129, align 4
  %216 = load i64, i64* %142, align 8
  %217 = load i8*, i8** %130, align 8
  %218 = getelementptr inbounds i8, i8* %217, i64 %216
  store i8* %218, i8** %130, align 8
  store i8 0, i8* %133, align 4
  br label %220

; <label>:219:                                    ; preds = %199
  br label %220

; <label>:220:                                    ; preds = %219, %185, %212, %173
  %221 = phi i64 [ %176, %173 ], [ 0, %212 ], [ %188, %185 ], [ %188, %219 ]
  call void @mbuiter_multi_next(%struct.mbuiter_multi* nonnull %6)
  %222 = load i8, i8* %134, align 8
  %223 = icmp ne i8 %222, 0
  %224 = load i32, i32* %137, align 4
  %225 = icmp eq i32 %224, 0
  %226 = and i1 %223, %225
  br i1 %226, label %227, label %146

; <label>:227:                                    ; preds = %220
  br label %228

; <label>:228:                                    ; preds = %227, %123, %179
  call void @llvm.lifetime.end(i64 64, i8* nonnull %125) #11
  call void @llvm.lifetime.end(i64 64, i8* nonnull %124) #11
  call void @freea(i8* nonnull %20) #11
  br label %229

; <label>:229:                                    ; preds = %3, %16, %228
  %230 = phi i1 [ true, %228 ], [ false, %16 ], [ false, %3 ]
  ret i1 %230
}

; Function Attrs: nounwind readonly
declare i64 @strnlen(i8*, i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @knuth_morris_pratt(i8*, i8* nocapture readonly, i64, i8** nocapture) unnamed_addr #6 {
  %5 = icmp ugt i64 %2, 1152921504606846975
  br i1 %5, label %91, label %6

; <label>:6:                                      ; preds = %4
  %7 = shl i64 %2, 3
  %8 = icmp ult i64 %7, 4016
  br i1 %8, label %9, label %13

; <label>:9:                                      ; preds = %6
  %10 = add i64 %7, 16
  %11 = alloca i8, i64 %10, align 16
  %12 = getelementptr inbounds i8, i8* %11, i64 16
  br label %16

; <label>:13:                                     ; preds = %6
  %14 = tail call i8* @mmalloca(i64 %7) #11
  %15 = icmp eq i8* %14, null
  br i1 %15, label %91, label %16

; <label>:16:                                     ; preds = %9, %13
  %17 = phi i8* [ %12, %9 ], [ %14, %13 ]
  %18 = bitcast i8* %17 to i64*
  %19 = getelementptr inbounds i8, i8* %17, i64 8
  %20 = bitcast i8* %19 to i64*
  store i64 1, i64* %20, align 8
  %21 = icmp ugt i64 %2, 2
  br i1 %21, label %22, label %56

; <label>:22:                                     ; preds = %16
  br label %23

; <label>:23:                                     ; preds = %22, %49
  %24 = phi i64 [ %50, %49 ], [ 0, %22 ]
  %25 = phi i64 [ %53, %49 ], [ 2, %22 ]
  %26 = add i64 %25, -1
  %27 = getelementptr inbounds i8, i8* %1, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = getelementptr inbounds i8, i8* %1, i64 %24
  %30 = load i8, i8* %29, align 1
  %31 = icmp eq i8 %28, %30
  br i1 %31, label %34, label %32

; <label>:32:                                     ; preds = %23
  br label %38

; <label>:33:                                     ; preds = %41
  br label %34

; <label>:34:                                     ; preds = %33, %23
  %35 = phi i64 [ %24, %23 ], [ %44, %33 ]
  %36 = add i64 %35, 1
  %37 = sub i64 %25, %36
  br label %49

; <label>:38:                                     ; preds = %32, %41
  %39 = phi i64 [ %44, %41 ], [ %24, %32 ]
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %48, label %41

; <label>:41:                                     ; preds = %38
  %42 = getelementptr inbounds i64, i64* %18, i64 %39
  %43 = load i64, i64* %42, align 8
  %44 = sub i64 %39, %43
  %45 = getelementptr inbounds i8, i8* %1, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = icmp eq i8 %28, %46
  br i1 %47, label %33, label %38

; <label>:48:                                     ; preds = %38
  br label %49

; <label>:49:                                     ; preds = %48, %34
  %50 = phi i64 [ %36, %34 ], [ 0, %48 ]
  %51 = phi i64 [ %37, %34 ], [ %25, %48 ]
  %52 = getelementptr inbounds i64, i64* %18, i64 %25
  store i64 %51, i64* %52, align 8
  %53 = add nuw i64 %25, 1
  %54 = icmp eq i64 %53, %2
  br i1 %54, label %55, label %23

; <label>:55:                                     ; preds = %49
  br label %56

; <label>:56:                                     ; preds = %55, %16
  store i8* null, i8** %3, align 8
  br label %57

; <label>:57:                                     ; preds = %82, %56
  %58 = phi i64 [ 0, %56 ], [ %83, %82 ]
  %59 = phi i8* [ %0, %56 ], [ %84, %82 ]
  %60 = phi i8* [ %0, %56 ], [ %85, %82 ]
  br label %61

; <label>:61:                                     ; preds = %57, %70
  %62 = phi i64 [ %71, %70 ], [ %58, %57 ]
  %63 = phi i8* [ %72, %70 ], [ %60, %57 ]
  %64 = load i8, i8* %63, align 1
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %89, label %66

; <label>:66:                                     ; preds = %61
  %67 = getelementptr inbounds i8, i8* %1, i64 %62
  %68 = load i8, i8* %67, align 1
  %69 = icmp eq i8 %68, %64
  br i1 %69, label %70, label %75

; <label>:70:                                     ; preds = %66
  %71 = add i64 %62, 1
  %72 = getelementptr inbounds i8, i8* %63, i64 1
  %73 = icmp eq i64 %71, %2
  br i1 %73, label %74, label %61

; <label>:74:                                     ; preds = %70
  store i8* %59, i8** %3, align 8
  br label %90

; <label>:75:                                     ; preds = %66
  %76 = icmp eq i64 %62, 0
  br i1 %76, label %86, label %77

; <label>:77:                                     ; preds = %75
  %78 = getelementptr inbounds i64, i64* %18, i64 %62
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds i8, i8* %59, i64 %79
  %81 = sub i64 %62, %79
  br label %82

; <label>:82:                                     ; preds = %77, %86
  %83 = phi i64 [ 0, %86 ], [ %81, %77 ]
  %84 = phi i8* [ %87, %86 ], [ %80, %77 ]
  %85 = phi i8* [ %88, %86 ], [ %63, %77 ]
  br label %57

; <label>:86:                                     ; preds = %75
  %87 = getelementptr inbounds i8, i8* %59, i64 1
  %88 = getelementptr inbounds i8, i8* %63, i64 1
  br label %82

; <label>:89:                                     ; preds = %61
  br label %90

; <label>:90:                                     ; preds = %89, %74
  call void @freea(i8* nonnull %17) #11
  br label %91

; <label>:91:                                     ; preds = %4, %13, %90
  %92 = phi i1 [ true, %90 ], [ false, %13 ], [ false, %4 ]
  ret i1 %92
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define void @mbuiter_multi_next(%struct.mbuiter_multi*) local_unnamed_addr #12 {
  %2 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %0, i64 0, i32 2
  %3 = load i8, i8* %2, align 4
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %64

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %0, i64 0, i32 0
  %7 = load i8, i8* %6, align 8
  %8 = icmp eq i8 %7, 0
  %9 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %0, i64 0, i32 3, i32 0
  %10 = load i8*, i8** %9, align 8
  br i1 %8, label %13, label %11

; <label>:11:                                     ; preds = %5
  %12 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %0, i64 0, i32 1
  br label %36

; <label>:13:                                     ; preds = %5
  %14 = load i8, i8* %10, align 1
  %15 = zext i8 %14 to i32
  %16 = lshr i32 %15, 5
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([8 x i32]* @is_basic_table to [0 x i32]*), i64 0, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %15, 31
  %21 = shl i32 1, %20
  %22 = and i32 %21, %19
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %30, label %24

; <label>:24:                                     ; preds = %13
  %25 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %0, i64 0, i32 3, i32 1
  store i64 1, i64* %25, align 8
  %26 = load i8, i8* %10, align 1
  %27 = sext i8 %26 to i32
  %28 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %0, i64 0, i32 3, i32 3
  store i32 %27, i32* %28, align 4
  %29 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %0, i64 0, i32 3, i32 2
  store i8 1, i8* %29, align 8
  br label %63

; <label>:30:                                     ; preds = %13
  %31 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %0, i64 0, i32 1
  %32 = tail call i32 @mbsinit(%struct.__mbstate_t* %31) #14
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

; <label>:34:                                     ; preds = %30
  tail call void @__assert_fail(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.218, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.219, i64 0, i64 0), i32 150, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__PRETTY_FUNCTION__.mbuiter_multi_next, i64 0, i64 0)) #15
  unreachable

; <label>:35:                                     ; preds = %30
  store i8 1, i8* %6, align 8
  br label %36

; <label>:36:                                     ; preds = %11, %35
  %37 = phi %struct.__mbstate_t* [ %12, %11 ], [ %31, %35 ]
  %38 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %0, i64 0, i32 3, i32 3
  %39 = tail call i64 @__ctype_get_mb_cur_max() #11
  %40 = tail call i64 @strnlen1(i8* %10, i64 %39) #14
  %41 = tail call i64 @rpl_mbrtowc(i32* %38, i8* %10, i64 %40, %struct.__mbstate_t* %37) #11
  %42 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %0, i64 0, i32 3, i32 1
  store i64 %41, i64* %42, align 8
  switch i64 %41, label %58 [
    i64 -1, label %43
    i64 -2, label %45
    i64 0, label %49
  ]

; <label>:43:                                     ; preds = %36
  store i64 1, i64* %42, align 8
  %44 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %0, i64 0, i32 3, i32 2
  store i8 0, i8* %44, align 8
  br label %63

; <label>:45:                                     ; preds = %36
  %46 = load i8*, i8** %9, align 8
  %47 = tail call i64 @strlen(i8* %46) #14
  store i64 %47, i64* %42, align 8
  %48 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %0, i64 0, i32 3, i32 2
  store i8 0, i8* %48, align 8
  br label %63

; <label>:49:                                     ; preds = %36
  store i64 1, i64* %42, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = load i8, i8* %50, align 1
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %54, label %53

; <label>:53:                                     ; preds = %49
  tail call void @__assert_fail(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2.220, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.219, i64 0, i64 0), i32 178, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__PRETTY_FUNCTION__.mbuiter_multi_next, i64 0, i64 0)) #15
  unreachable

; <label>:54:                                     ; preds = %49
  %55 = load i32, i32* %38, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %58, label %57

; <label>:57:                                     ; preds = %54
  tail call void @__assert_fail(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3.221, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.219, i64 0, i64 0), i32 179, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__PRETTY_FUNCTION__.mbuiter_multi_next, i64 0, i64 0)) #15
  unreachable

; <label>:58:                                     ; preds = %36, %54
  %59 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %0, i64 0, i32 3, i32 2
  store i8 1, i8* %59, align 8
  %60 = tail call i32 @mbsinit(%struct.__mbstate_t* %37) #14
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %63, label %62

; <label>:62:                                     ; preds = %58
  store i8 0, i8* %6, align 8
  br label %63

; <label>:63:                                     ; preds = %58, %43, %62, %45, %24
  store i8 1, i8* %2, align 4
  br label %64

; <label>:64:                                     ; preds = %1, %63
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define void @mbuiter_multi_reloc(%struct.mbuiter_multi* nocapture, i64) local_unnamed_addr #12 {
  %3 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %0, i64 0, i32 3, i32 0
  %4 = load i8*, i8** %3, align 8
  %5 = getelementptr inbounds i8, i8* %4, i64 %1
  store i8* %5, i8** %3, align 8
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define void @mbuiter_multi_copy(%struct.mbuiter_multi*, %struct.mbuiter_multi* readonly) local_unnamed_addr #12 {
  %3 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %1, i64 0, i32 0
  %4 = load i8, i8* %3, align 8
  %5 = icmp eq i8 %4, 0
  %6 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %0, i64 0, i32 0
  store i8 %4, i8* %6, align 8
  %7 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %0, i64 0, i32 1
  br i1 %5, label %13, label %8

; <label>:8:                                      ; preds = %2
  %9 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %1, i64 0, i32 1
  %10 = bitcast %struct.__mbstate_t* %9 to i64*
  %11 = bitcast %struct.__mbstate_t* %7 to i64*
  %12 = load i64, i64* %10, align 4
  store i64 %12, i64* %11, align 4
  br label %15

; <label>:13:                                     ; preds = %2
  %14 = bitcast %struct.__mbstate_t* %7 to i64*
  store i64 0, i64* %14, align 4
  br label %15

; <label>:15:                                     ; preds = %13, %8
  %16 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %1, i64 0, i32 2
  %17 = load i8, i8* %16, align 4
  %18 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %0, i64 0, i32 2
  store i8 %17, i8* %18, align 4
  %19 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %1, i64 0, i32 3, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %1, i64 0, i32 3, i32 4, i64 0
  %22 = icmp eq i8* %20, %21
  br i1 %22, label %25, label %23

; <label>:23:                                     ; preds = %15
  %24 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %1, i64 0, i32 3, i32 1
  br label %29

; <label>:25:                                     ; preds = %15
  %26 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %0, i64 0, i32 3, i32 4, i64 0
  %27 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %1, i64 0, i32 3, i32 1
  %28 = load i64, i64* %27, align 8
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %20, i64 %28, i32 8, i1 false) #11
  br label %29

; <label>:29:                                     ; preds = %25, %23
  %30 = phi i64* [ %24, %23 ], [ %27, %25 ]
  %31 = phi i8* [ %20, %23 ], [ %26, %25 ]
  %32 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %0, i64 0, i32 3, i32 0
  store i8* %31, i8** %32, align 8
  %33 = load i64, i64* %30, align 8
  %34 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %0, i64 0, i32 3, i32 1
  store i64 %33, i64* %34, align 8
  %35 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %1, i64 0, i32 3, i32 2
  %36 = load i8, i8* %35, align 8
  %37 = icmp eq i8 %36, 0
  %38 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %0, i64 0, i32 3, i32 2
  store i8 %36, i8* %38, align 8
  br i1 %37, label %43, label %39

; <label>:39:                                     ; preds = %29
  %40 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %1, i64 0, i32 3, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %0, i64 0, i32 3, i32 3
  store i32 %41, i32* %42, align 4
  br label %43

; <label>:43:                                     ; preds = %29, %39
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @mem_cd_iconv(i8*, i64, i8*, i8** nocapture, i64* nocapture) local_unnamed_addr #6 {
  %6 = alloca %union.anon.43, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = tail call i64 @iconv(i8* %2, i8** null, i64* null, i8** null, i64* null) #11
  %18 = bitcast %union.anon.43* %6 to i8*
  call void @llvm.lifetime.start(i64 4096, i8* nonnull %18) #11
  %19 = bitcast i8** %7 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %19) #11
  store i8* %0, i8** %7, align 8
  %20 = bitcast i64* %8 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %20) #11
  store i64 %1, i64* %8, align 8
  %21 = icmp eq i64 %1, 0
  br i1 %21, label %48, label %22

; <label>:22:                                     ; preds = %5
  %23 = bitcast i8** %9 to i8*
  %24 = bitcast i8** %9 to %union.anon.43**
  %25 = bitcast i64* %10 to i8*
  %26 = bitcast i8** %9 to i64*
  %27 = ptrtoint %union.anon.43* %6 to i64
  br label %31

; <label>:28:                                     ; preds = %43
  %29 = load i64, i64* %8, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %47, label %31

; <label>:31:                                     ; preds = %22, %28
  %32 = phi i64 [ 0, %22 ], [ %45, %28 ]
  call void @llvm.lifetime.start(i64 8, i8* nonnull %23) #11
  store %union.anon.43* %6, %union.anon.43** %24, align 8
  call void @llvm.lifetime.start(i64 8, i8* nonnull %25) #11
  store i64 4096, i64* %10, align 8
  %33 = call i64 @iconv(i8* %2, i8** nonnull %7, i64* nonnull %8, i8** nonnull %9, i64* nonnull %10) #11
  %34 = icmp eq i64 %33, -1
  br i1 %34, label %35, label %39

; <label>:35:                                     ; preds = %31
  %36 = tail call i32* @__errno_location() #1
  %37 = load i32, i32* %36, align 4
  switch i32 %37, label %38 [
    i32 7, label %39
    i32 22, label %43
  ]

; <label>:38:                                     ; preds = %35
  br label %43

; <label>:39:                                     ; preds = %35, %31
  %40 = load i64, i64* %26, align 8
  %41 = sub i64 %32, %27
  %42 = add i64 %41, %40
  br label %43

; <label>:43:                                     ; preds = %35, %39, %38
  %44 = phi i32 [ 0, %39 ], [ 1, %38 ], [ 3, %35 ]
  %45 = phi i64 [ %42, %39 ], [ %32, %38 ], [ %32, %35 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %25) #11
  call void @llvm.lifetime.end(i64 8, i8* nonnull %23) #11
  %46 = trunc i32 %44 to i2
  switch i2 %46, label %64 [
    i2 0, label %28
    i2 -1, label %47
  ]

; <label>:47:                                     ; preds = %28, %43
  br label %48

; <label>:48:                                     ; preds = %47, %5
  %49 = phi i64 [ 0, %5 ], [ %45, %47 ]
  %50 = bitcast i8** %11 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %50) #11
  %51 = bitcast i8** %11 to %union.anon.43**
  store %union.anon.43* %6, %union.anon.43** %51, align 8
  %52 = bitcast i64* %12 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %52) #11
  store i64 4096, i64* %12, align 8
  %53 = call i64 @iconv(i8* %2, i8** null, i64* null, i8** nonnull %11, i64* nonnull %12) #11
  %54 = icmp eq i64 %53, -1
  br i1 %54, label %61, label %55

; <label>:55:                                     ; preds = %48
  %56 = bitcast i8** %11 to i64*
  %57 = load i64, i64* %56, align 8
  %58 = ptrtoint %union.anon.43* %6 to i64
  %59 = sub i64 %49, %58
  %60 = add i64 %59, %57
  br label %61

; <label>:61:                                     ; preds = %48, %55
  %62 = phi i32 [ 0, %55 ], [ 1, %48 ]
  %63 = phi i64 [ %60, %55 ], [ %49, %48 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %52) #11
  call void @llvm.lifetime.end(i64 8, i8* nonnull %50) #11
  br label %65

; <label>:64:                                     ; preds = %43
  br label %65

; <label>:65:                                     ; preds = %64, %61
  %66 = phi i32 [ %62, %61 ], [ %44, %64 ]
  %67 = phi i64 [ %63, %61 ], [ undef, %64 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %20) #11
  call void @llvm.lifetime.end(i64 8, i8* nonnull %19) #11
  call void @llvm.lifetime.end(i64 4096, i8* nonnull %18) #11
  %68 = icmp eq i32 %66, 0
  br i1 %68, label %69, label %123

; <label>:69:                                     ; preds = %65
  %70 = icmp eq i64 %67, 0
  br i1 %70, label %71, label %72

; <label>:71:                                     ; preds = %69
  store i64 0, i64* %4, align 8
  br label %123

; <label>:72:                                     ; preds = %69
  %73 = load i8*, i8** %3, align 8
  %74 = icmp eq i8* %73, null
  br i1 %74, label %78, label %75

; <label>:75:                                     ; preds = %72
  %76 = load i64, i64* %4, align 8
  %77 = icmp ult i64 %76, %67
  br i1 %77, label %78, label %83

; <label>:78:                                     ; preds = %75, %72
  %79 = call noalias i8* @malloc(i64 %67) #11
  %80 = icmp eq i8* %79, null
  br i1 %80, label %81, label %83

; <label>:81:                                     ; preds = %78
  %82 = tail call i32* @__errno_location() #1
  store i32 12, i32* %82, align 4
  br label %123

; <label>:83:                                     ; preds = %75, %78
  %84 = phi i8* [ %79, %78 ], [ %73, %75 ]
  %85 = call i64 @iconv(i8* %2, i8** null, i64* null, i8** null, i64* null) #11
  %86 = bitcast i8** %13 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %86) #11
  store i8* %0, i8** %13, align 8
  %87 = bitcast i64* %14 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %87) #11
  store i64 %1, i64* %14, align 8
  %88 = bitcast i8** %15 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %88) #11
  store i8* %84, i8** %15, align 8
  %89 = bitcast i64* %16 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %89) #11
  store i64 %67, i64* %16, align 8
  %90 = icmp eq i64 %1, 0
  br i1 %90, label %106, label %91

; <label>:91:                                     ; preds = %83
  br label %92

; <label>:92:                                     ; preds = %91, %102
  %93 = call i64 @iconv(i8* %2, i8** nonnull %13, i64* nonnull %14, i8** nonnull %15, i64* nonnull %16) #11
  %94 = icmp eq i64 %93, -1
  br i1 %94, label %95, label %100

; <label>:95:                                     ; preds = %92
  %96 = tail call i32* @__errno_location() #1
  %97 = load i32, i32* %96, align 4
  %98 = icmp eq i32 %97, 22
  %99 = select i1 %98, i3 -3, i3 -2
  br label %100

; <label>:100:                                    ; preds = %92, %95
  %101 = phi i3 [ %99, %95 ], [ 0, %92 ]
  switch i3 %101, label %115 [
    i3 0, label %102
    i3 -3, label %105
  ]

; <label>:102:                                    ; preds = %100
  %103 = load i64, i64* %14, align 8
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %105, label %92

; <label>:105:                                    ; preds = %102, %100
  br label %106

; <label>:106:                                    ; preds = %105, %83
  %107 = call i64 @iconv(i8* %2, i8** null, i64* null, i8** nonnull %15, i64* nonnull %16) #11
  %108 = icmp eq i64 %107, -1
  br i1 %108, label %109, label %110

; <label>:109:                                    ; preds = %106
  call void @llvm.lifetime.end(i64 8, i8* nonnull %89) #11
  call void @llvm.lifetime.end(i64 8, i8* nonnull %88) #11
  call void @llvm.lifetime.end(i64 8, i8* nonnull %87) #11
  call void @llvm.lifetime.end(i64 8, i8* nonnull %86) #11
  br label %117

; <label>:110:                                    ; preds = %106
  %111 = load i64, i64* %16, align 8
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %114

; <label>:113:                                    ; preds = %110
  call void @llvm.lifetime.end(i64 8, i8* nonnull %89) #11
  call void @llvm.lifetime.end(i64 8, i8* nonnull %88) #11
  call void @llvm.lifetime.end(i64 8, i8* nonnull %87) #11
  call void @llvm.lifetime.end(i64 8, i8* nonnull %86) #11
  store i8* %84, i8** %3, align 8
  store i64 %67, i64* %4, align 8
  br label %123

; <label>:114:                                    ; preds = %110
  call void @abort() #15
  unreachable

; <label>:115:                                    ; preds = %100
  call void @llvm.lifetime.end(i64 8, i8* nonnull %89) #11
  call void @llvm.lifetime.end(i64 8, i8* nonnull %88) #11
  call void @llvm.lifetime.end(i64 8, i8* nonnull %87) #11
  call void @llvm.lifetime.end(i64 8, i8* nonnull %86) #11
  %116 = icmp eq i3 %101, -2
  br i1 %116, label %117, label %123

; <label>:117:                                    ; preds = %115, %109
  %118 = load i8*, i8** %3, align 8
  %119 = icmp eq i8* %84, %118
  br i1 %119, label %123, label %120

; <label>:120:                                    ; preds = %117
  %121 = tail call i32* @__errno_location() #1
  %122 = load i32, i32* %121, align 4
  call void @free(i8* %84) #11
  store i32 %122, i32* %121, align 4
  br label %123

; <label>:123:                                    ; preds = %115, %120, %117, %65, %113, %81, %71
  %124 = phi i32 [ 0, %71 ], [ -1, %115 ], [ 0, %113 ], [ -1, %81 ], [ -1, %65 ], [ -1, %117 ], [ -1, %120 ]
  ret i32 %124
}

declare i64 @iconv(i8*, i8**, i64*, i8**, i64*) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define i8* @str_cd_iconv(i8*, i8*) local_unnamed_addr #6 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = bitcast i8** %3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %7) #11
  store i8* %0, i8** %3, align 8
  %8 = bitcast i64* %4 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %8) #11
  %9 = tail call i64 @strlen(i8* %0) #14
  store i64 %9, i64* %4, align 8
  %10 = icmp ult i64 %9, 268435456
  %11 = shl i64 %9, 4
  %12 = select i1 %10, i64 %11, i64 %9
  %13 = add i64 %12, 1
  %14 = tail call noalias i8* @malloc(i64 %13) #11
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %18

; <label>:16:                                     ; preds = %2
  %17 = tail call i32* @__errno_location() #1
  store i32 12, i32* %17, align 4
  br label %104

; <label>:18:                                     ; preds = %2
  %19 = tail call i64 @iconv(i8* %1, i8** null, i64* null, i8** null, i64* null) #11
  %20 = bitcast i8** %5 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %20) #11
  store i8* %14, i8** %5, align 8
  %21 = bitcast i64* %6 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %21) #11
  store i64 %12, i64* %6, align 8
  %22 = call i64 @iconv(i8* %1, i8** nonnull %3, i64* nonnull %4, i8** nonnull %5, i64* nonnull %6) #11
  %23 = icmp eq i64 %22, -1
  br i1 %23, label %24, label %30

; <label>:24:                                     ; preds = %18
  %25 = tail call i32* @__errno_location() #1
  %26 = bitcast i8** %5 to i64*
  br label %40

; <label>:27:                                     ; preds = %40, %55
  %28 = phi i64 [ %42, %40 ], [ %48, %55 ]
  %29 = phi i8* [ %41, %40 ], [ %52, %55 ]
  br label %30

; <label>:30:                                     ; preds = %27, %18
  %31 = phi i64 [ %13, %18 ], [ %28, %27 ]
  %32 = phi i8* [ %14, %18 ], [ %29, %27 ]
  %33 = call i64 @iconv(i8* %1, i8** null, i64* null, i8** nonnull %5, i64* nonnull %6) #11
  %34 = icmp eq i64 %33, -1
  br i1 %34, label %37, label %35

; <label>:35:                                     ; preds = %30
  %36 = bitcast i8** %5 to i64*
  br label %84

; <label>:37:                                     ; preds = %30
  %38 = tail call i32* @__errno_location() #1
  %39 = bitcast i8** %5 to i64*
  br label %61

; <label>:40:                                     ; preds = %24, %55
  %41 = phi i8* [ %14, %24 ], [ %52, %55 ]
  %42 = phi i64 [ %13, %24 ], [ %48, %55 ]
  %43 = load i32, i32* %25, align 4
  switch i32 %43, label %99 [
    i32 22, label %27
    i32 7, label %44
  ]

; <label>:44:                                     ; preds = %40
  %45 = load i64, i64* %26, align 8
  %46 = ptrtoint i8* %41 to i64
  %47 = sub i64 %45, %46
  %48 = shl i64 %42, 1
  %49 = icmp ugt i64 %48, %42
  br i1 %49, label %51, label %50

; <label>:50:                                     ; preds = %44
  store i32 12, i32* %25, align 4
  br label %100

; <label>:51:                                     ; preds = %44
  %52 = call i8* @realloc(i8* nonnull %41, i64 %48) #11
  %53 = icmp eq i8* %52, null
  br i1 %53, label %54, label %55

; <label>:54:                                     ; preds = %51
  store i32 12, i32* %25, align 4
  br label %100

; <label>:55:                                     ; preds = %51
  %56 = getelementptr inbounds i8, i8* %52, i64 %47
  store i8* %56, i8** %5, align 8
  %57 = add i64 %48, -1
  %58 = sub i64 %57, %47
  store i64 %58, i64* %6, align 8
  %59 = call i64 @iconv(i8* %1, i8** nonnull %3, i64* nonnull %4, i8** nonnull %5, i64* nonnull %6) #11
  %60 = icmp eq i64 %59, -1
  br i1 %60, label %40, label %27

; <label>:61:                                     ; preds = %37, %77
  %62 = phi i8* [ %32, %37 ], [ %74, %77 ]
  %63 = phi i64 [ %31, %37 ], [ %70, %77 ]
  %64 = load i32, i32* %38, align 4
  %65 = icmp eq i32 %64, 7
  br i1 %65, label %66, label %98

; <label>:66:                                     ; preds = %61
  %67 = load i64, i64* %39, align 8
  %68 = ptrtoint i8* %62 to i64
  %69 = sub i64 %67, %68
  %70 = shl i64 %63, 1
  %71 = icmp ugt i64 %70, %63
  br i1 %71, label %73, label %72

; <label>:72:                                     ; preds = %66
  store i32 12, i32* %38, align 4
  br label %100

; <label>:73:                                     ; preds = %66
  %74 = call i8* @realloc(i8* nonnull %62, i64 %70) #11
  %75 = icmp eq i8* %74, null
  br i1 %75, label %76, label %77

; <label>:76:                                     ; preds = %73
  store i32 12, i32* %38, align 4
  br label %100

; <label>:77:                                     ; preds = %73
  %78 = getelementptr inbounds i8, i8* %74, i64 %69
  store i8* %78, i8** %5, align 8
  %79 = add i64 %70, -1
  %80 = sub i64 %79, %69
  store i64 %80, i64* %6, align 8
  %81 = call i64 @iconv(i8* %1, i8** null, i64* null, i8** nonnull %5, i64* nonnull %6) #11
  %82 = icmp eq i64 %81, -1
  br i1 %82, label %61, label %83

; <label>:83:                                     ; preds = %77
  br label %84

; <label>:84:                                     ; preds = %83, %35
  %85 = phi i64* [ %36, %35 ], [ %39, %83 ]
  %86 = phi i64 [ %31, %35 ], [ %70, %83 ]
  %87 = phi i8* [ %32, %35 ], [ %74, %83 ]
  %88 = load i8*, i8** %5, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 1
  store i8* %89, i8** %5, align 8
  store i8 0, i8* %88, align 1
  %90 = load i64, i64* %85, align 8
  %91 = ptrtoint i8* %87 to i64
  %92 = sub i64 %90, %91
  call void @llvm.lifetime.end(i64 8, i8* nonnull %21) #11
  call void @llvm.lifetime.end(i64 8, i8* nonnull %20) #11
  %93 = icmp ult i64 %92, %86
  br i1 %93, label %94, label %104

; <label>:94:                                     ; preds = %84
  %95 = call i8* @realloc(i8* nonnull %87, i64 %92) #11
  %96 = icmp eq i8* %95, null
  %97 = select i1 %96, i8* %87, i8* %95
  br label %104

; <label>:98:                                     ; preds = %61
  br label %100

; <label>:99:                                     ; preds = %40
  br label %100

; <label>:100:                                    ; preds = %99, %98, %72, %76, %50, %54
  %101 = phi i32* [ %38, %72 ], [ %38, %76 ], [ %25, %50 ], [ %25, %54 ], [ %38, %98 ], [ %25, %99 ]
  %102 = phi i8* [ %62, %72 ], [ %62, %76 ], [ %41, %50 ], [ %41, %54 ], [ %62, %98 ], [ %41, %99 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %21) #11
  call void @llvm.lifetime.end(i64 8, i8* nonnull %20) #11
  %103 = load i32, i32* %101, align 4
  call void @free(i8* nonnull %102) #11
  store i32 %103, i32* %101, align 4
  br label %104

; <label>:104:                                    ; preds = %84, %94, %100, %16
  %105 = phi i8* [ null, %16 ], [ null, %100 ], [ %97, %94 ], [ %87, %84 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %8) #11
  call void @llvm.lifetime.end(i64 8, i8* nonnull %7) #11
  ret i8* %105
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @str_iconv(i8*, i8*, i8*) local_unnamed_addr #6 {
  %4 = load i8, i8* %0, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %9, label %6

; <label>:6:                                      ; preds = %3
  %7 = tail call i32 @c_strcasecmp(i8* %1, i8* %2) #14
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %14

; <label>:9:                                      ; preds = %6, %3
  %10 = tail call noalias i8* @__strdup(i8* nonnull %0) #11
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %30

; <label>:12:                                     ; preds = %9
  %13 = tail call i32* @__errno_location() #1
  store i32 12, i32* %13, align 4
  br label %30

; <label>:14:                                     ; preds = %6
  %15 = tail call i8* @iconv_open(i8* %2, i8* %1) #11
  %16 = icmp eq i8* %15, inttoptr (i64 -1 to i8*)
  br i1 %16, label %30, label %17

; <label>:17:                                     ; preds = %14
  %18 = tail call i8* @str_cd_iconv(i8* nonnull %0, i8* %15)
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %24

; <label>:20:                                     ; preds = %17
  %21 = tail call i32* @__errno_location() #1
  %22 = load i32, i32* %21, align 4
  %23 = tail call i32 @iconv_close(i8* %15) #11
  store i32 %22, i32* %21, align 4
  br label %30

; <label>:24:                                     ; preds = %17
  %25 = tail call i32 @iconv_close(i8* %15) #11
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %30

; <label>:27:                                     ; preds = %24
  %28 = tail call i32* @__errno_location() #1
  %29 = load i32, i32* %28, align 4
  tail call void @free(i8* nonnull %18) #11
  store i32 %29, i32* %28, align 4
  br label %30

; <label>:30:                                     ; preds = %27, %14, %24, %20, %9, %12
  %31 = phi i8* [ null, %12 ], [ %10, %9 ], [ null, %27 ], [ null, %14 ], [ %18, %24 ], [ null, %20 ]
  ret i8* %31
}

declare i8* @iconv_open(i8*, i8*) local_unnamed_addr #3

declare i32 @iconv_close(i8*) local_unnamed_addr #3

; Function Attrs: nounwind readonly sspstrong uwtable
define i64 @strnlen1(i8*, i64) local_unnamed_addr #9 {
  %3 = tail call i8* @memchr(i8* %0, i32 0, i64 %1) #14
  %4 = icmp eq i8* %3, null
  %5 = ptrtoint i8* %3 to i64
  %6 = ptrtoint i8* %0 to i64
  %7 = sub i64 1, %6
  %8 = add i64 %7, %5
  %9 = select i1 %4, i64 %1, i64 %8
  ret i64 %9
}

; Function Attrs: nounwind readonly
declare i8* @memchr(i8*, i32, i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @mmalloca(i64) local_unnamed_addr #6 {
  %2 = icmp ult i64 %0, -16
  br i1 %2, label %3, label %17

; <label>:3:                                      ; preds = %1
  %4 = add i64 %0, 16
  %5 = tail call noalias i8* @malloc(i64 %4) #11
  %6 = icmp eq i8* %5, null
  br i1 %6, label %17, label %7

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds i8, i8* %5, i64 16
  %9 = getelementptr inbounds i8, i8* %5, i64 12
  %10 = bitcast i8* %9 to i32*
  store i32 336984906, i32* %10, align 4
  %11 = ptrtoint i8* %8 to i64
  %12 = urem i64 %11, 257
  %13 = getelementptr inbounds [257 x i8*], [257 x i8*]* @mmalloca_results, i64 0, i64 %12
  %14 = bitcast i8** %13 to i64*
  %15 = load i64, i64* %14, align 8
  %16 = bitcast i8* %5 to i64*
  store i64 %15, i64* %16, align 8
  store i8* %8, i8** %13, align 8
  br label %17

; <label>:17:                                     ; preds = %3, %1, %7
  %18 = phi i8* [ %8, %7 ], [ null, %1 ], [ null, %3 ]
  ret i8* %18
}

; Function Attrs: nounwind sspstrong uwtable
define void @freea(i8*) local_unnamed_addr #6 {
  %2 = icmp eq i8* %0, null
  br i1 %2, label %30, label %3

; <label>:3:                                      ; preds = %1
  %4 = getelementptr inbounds i8, i8* %0, i64 -4
  %5 = bitcast i8* %4 to i32*
  %6 = load i32, i32* %5, align 4
  %7 = icmp eq i32 %6, 336984906
  br i1 %7, label %8, label %30

; <label>:8:                                      ; preds = %3
  %9 = ptrtoint i8* %0 to i64
  %10 = urem i64 %9, 257
  %11 = getelementptr inbounds [257 x i8*], [257 x i8*]* @mmalloca_results, i64 0, i64 %10
  %12 = load i8*, i8** %11, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %30, label %14

; <label>:14:                                     ; preds = %8
  br label %15

; <label>:15:                                     ; preds = %14, %19
  %16 = phi i8* [ %22, %19 ], [ %12, %14 ]
  %17 = phi i8** [ %21, %19 ], [ %11, %14 ]
  %18 = icmp eq i8* %16, %0
  br i1 %18, label %24, label %19

; <label>:19:                                     ; preds = %15
  %20 = getelementptr inbounds i8, i8* %16, i64 -16
  %21 = bitcast i8* %20 to i8**
  %22 = load i8*, i8** %21, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %29, label %15

; <label>:24:                                     ; preds = %15
  %25 = getelementptr inbounds i8, i8* %0, i64 -16
  %26 = bitcast i8* %25 to i64*
  %27 = load i64, i64* %26, align 8
  %28 = bitcast i8** %17 to i64*
  store i64 %27, i64* %28, align 8
  tail call void @free(i8* %25) #11
  br label %30

; <label>:29:                                     ; preds = %19
  br label %30

; <label>:30:                                     ; preds = %29, %8, %24, %3, %1
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define i32 @mb_width_aux(i32) local_unnamed_addr #12 {
  %2 = tail call i32 @wcwidth(i32 %0) #11
  %3 = icmp sgt i32 %2, -1
  br i1 %3, label %8, label %4

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @iswcntrl(i32 %0) #11
  %6 = icmp eq i32 %5, 0
  %7 = zext i1 %6 to i32
  br label %8

; <label>:8:                                      ; preds = %1, %4
  %9 = phi i32 [ %7, %4 ], [ %2, %1 ]
  ret i32 %9
}

; Function Attrs: nounwind
declare i32 @wcwidth(i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @iswcntrl(i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind sspstrong uwtable
define void @mb_copy(%struct.mbchar*, %struct.mbchar* readonly) local_unnamed_addr #12 {
  %3 = getelementptr inbounds %struct.mbchar, %struct.mbchar* %1, i64 0, i32 0
  %4 = load i8*, i8** %3, align 8
  %5 = getelementptr inbounds %struct.mbchar, %struct.mbchar* %1, i64 0, i32 4, i64 0
  %6 = icmp eq i8* %4, %5
  br i1 %6, label %9, label %7

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.mbchar, %struct.mbchar* %1, i64 0, i32 1
  br label %13

; <label>:9:                                      ; preds = %2
  %10 = getelementptr inbounds %struct.mbchar, %struct.mbchar* %0, i64 0, i32 4, i64 0
  %11 = getelementptr inbounds %struct.mbchar, %struct.mbchar* %1, i64 0, i32 1
  %12 = load i64, i64* %11, align 8
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %4, i64 %12, i32 8, i1 false)
  br label %13

; <label>:13:                                     ; preds = %7, %9
  %14 = phi i64* [ %8, %7 ], [ %11, %9 ]
  %15 = phi i8* [ %4, %7 ], [ %10, %9 ]
  %16 = getelementptr inbounds %struct.mbchar, %struct.mbchar* %0, i64 0, i32 0
  store i8* %15, i8** %16, align 8
  %17 = load i64, i64* %14, align 8
  %18 = getelementptr inbounds %struct.mbchar, %struct.mbchar* %0, i64 0, i32 1
  store i64 %17, i64* %18, align 8
  %19 = getelementptr inbounds %struct.mbchar, %struct.mbchar* %1, i64 0, i32 2
  %20 = load i8, i8* %19, align 8
  %21 = icmp eq i8 %20, 0
  %22 = getelementptr inbounds %struct.mbchar, %struct.mbchar* %0, i64 0, i32 2
  store i8 %20, i8* %22, align 8
  br i1 %21, label %27, label %23

; <label>:23:                                     ; preds = %13
  %24 = getelementptr inbounds %struct.mbchar, %struct.mbchar* %1, i64 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.mbchar, %struct.mbchar* %0, i64 0, i32 3
  store i32 %25, i32* %26, align 4
  br label %27

; <label>:27:                                     ; preds = %13, %23
  ret void
}

; Function Attrs: inlinehint nounwind readnone sspstrong uwtable
define zeroext i1 @is_basic(i8 signext) local_unnamed_addr #13 {
  %2 = zext i8 %0 to i32
  %3 = lshr i32 %2, 5
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* @is_basic_table, i64 0, i64 %4
  %6 = load i32, i32* %5, align 4
  %7 = and i32 %2, 31
  %8 = shl i32 1, %7
  %9 = and i32 %6, %8
  %10 = icmp ne i32 %9, 0
  ret i1 %10
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i64 @mbslen(i8* nonnull) local_unnamed_addr #9 {
  %2 = alloca %struct.mbuiter_multi, align 8
  %3 = tail call i64 @__ctype_get_mb_cur_max() #11
  %4 = icmp ugt i64 %3, 1
  br i1 %4, label %5, label %34

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %2, i64 0, i32 0
  call void @llvm.lifetime.start(i64 64, i8* nonnull %6) #11
  %7 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %2, i64 0, i32 3, i32 0
  store i8* %0, i8** %7, align 8
  store i8 0, i8* %6, align 8
  %8 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %2, i64 0, i32 1
  %9 = bitcast %struct.__mbstate_t* %8 to i64*
  store i64 0, i64* %9, align 4
  %10 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %2, i64 0, i32 2
  store i8 0, i8* %10, align 4
  call void @mbuiter_multi_next(%struct.mbuiter_multi* nonnull %2)
  %11 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %2, i64 0, i32 3, i32 2
  %12 = load i8, i8* %11, align 8
  %13 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %2, i64 0, i32 3, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i8 %12, 0
  %16 = icmp ne i32 %14, 0
  %17 = or i1 %15, %16
  br i1 %17, label %18, label %32

; <label>:18:                                     ; preds = %5
  %19 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %2, i64 0, i32 3, i32 1
  br label %20

; <label>:20:                                     ; preds = %18, %20
  %21 = phi i64 [ 0, %18 ], [ %22, %20 ]
  %22 = add i64 %21, 1
  %23 = load i64, i64* %19, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 %23
  store i8* %25, i8** %7, align 8
  store i8 0, i8* %10, align 4
  call void @mbuiter_multi_next(%struct.mbuiter_multi* nonnull %2)
  %26 = load i8, i8* %11, align 8
  %27 = load i32, i32* %13, align 4
  %28 = icmp eq i8 %26, 0
  %29 = icmp ne i32 %27, 0
  %30 = or i1 %28, %29
  br i1 %30, label %20, label %31

; <label>:31:                                     ; preds = %20
  br label %32

; <label>:32:                                     ; preds = %31, %5
  %33 = phi i64 [ 0, %5 ], [ %22, %31 ]
  call void @llvm.lifetime.end(i64 64, i8* nonnull %6) #11
  br label %36

; <label>:34:                                     ; preds = %1
  %35 = tail call i64 @strlen(i8* nonnull %0) #14
  br label %36

; <label>:36:                                     ; preds = %34, %32
  %37 = phi i64 [ %33, %32 ], [ %35, %34 ]
  ret i64 %37
}

attributes #0 = { noreturn nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { argmemonly nounwind }
attributes #8 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nounwind }
attributes #12 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { inlinehint nounwind readnone sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nounwind readonly }
attributes #15 = { noreturn nounwind }
attributes #16 = { noreturn }
attributes #17 = { cold }
