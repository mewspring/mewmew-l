; ModuleID = 'coreutils-8.27/src/nl.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.re_pattern_buffer = type { %struct.re_dfa_t*, i64, i64, i64, i8*, i8*, i64, i8 }
%struct.re_dfa_t = type opaque
%struct.linebuffer = type { i64, i64, i8* }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.re_registers = type { i32, i32*, i32* }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Usage: %s [OPTION]... [FILE]...\0A\00", align 1
@.str.2 = private unnamed_addr constant [62 x i8] c"Write each FILE to standard output, with line numbers added.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.30 = private unnamed_addr constant [56 x i8] c"\0AWith no FILE, or when FILE is -, read standard input.\0A\00", align 1
@.str.31 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@.str.3 = private unnamed_addr constant [210 x i8] c"  -b, --body-numbering=STYLE      use STYLE for numbering body lines\0A  -d, --section-delimiter=CC      use CC for logical page delimiters\0A  -f, --footer-numbering=STYLE    use STYLE for numbering footer lines\0A\00", align 1
@.str.4 = private unnamed_addr constant [443 x i8] c"  -h, --header-numbering=STYLE    use STYLE for numbering header lines\0A  -i, --line-increment=NUMBER     line number increment at each line\0A  -l, --join-blank-lines=NUMBER   group of NUMBER empty lines counted as one\0A  -n, --number-format=FORMAT      insert line numbers according to FORMAT\0A  -p, --no-renumber               do not reset line numbers for each section\0A  -s, --number-separator=STRING   add STRING after (possible) line number\0A\00", align 1
@.str.5 = private unnamed_addr constant [143 x i8] c"  -v, --starting-line-number=NUMBER  first line number for each section\0A  -w, --number-width=NUMBER       use NUMBER columns for line numbers\0A\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.7 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.8 = private unnamed_addr constant [209 x i8] c"\0ABy default, selects -v1 -i1 -l1 -sTAB -w6 -nrn -hn -bt -fn.\0ACC are two delimiter characters used to construct logical page delimiters,\0Aa missing second character implies :.  Type \5C\5C for \5C.  STYLE is one of:\0A\00", align 1
@.str.9 = private unnamed_addr constant [339 x i8] c"\0A  a         number all lines\0A  t         number only nonempty lines\0A  n         number no lines\0A  pBRE      number only lines that contain a match for the basic regular\0A            expression, BRE\0A\0AFORMAT is one of:\0A\0A  ln   left justified, no leading zeros\0A  rn   right justified, no leading zeros\0A  rz   right justified, leading zeros\0A\0A\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"nl\00", align 1
@.str.40 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.41 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.43 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.44 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.45 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@have_read_stdin = internal unnamed_addr global i1 false, align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"h:b:f:v:i:pl:s:w:n:d:\00", align 1
@longopts = internal constant [14 x %struct.option] [%struct.option { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.47, i32 0, i32 0), i32 1, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.48, i32 0, i32 0), i32 1, i32* null, i32 98 }, %struct.option { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.49, i32 0, i32 0), i32 1, i32* null, i32 102 }, %struct.option { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.50, i32 0, i32 0), i32 1, i32* null, i32 118 }, %struct.option { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.51, i32 0, i32 0), i32 1, i32* null, i32 105 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.52, i32 0, i32 0), i32 0, i32* null, i32 112 }, %struct.option { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.53, i32 0, i32 0), i32 1, i32* null, i32 108 }, %struct.option { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.54, i32 0, i32 0), i32 1, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.55, i32 0, i32 0), i32 1, i32* null, i32 119 }, %struct.option { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.56, i32 0, i32 0), i32 1, i32* null, i32 110 }, %struct.option { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.57, i32 0, i32 0), i32 1, i32* null, i32 100 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.58, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.59, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
@header_type = internal global i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.61, i64 0, i64 0), align 8, !dbg !144
@header_regex = internal global %struct.re_pattern_buffer zeroinitializer, align 8, !dbg !76
@header_fastmap = internal global [256 x i8] zeroinitializer, align 16, !dbg !85
@optarg = external local_unnamed_addr global i8*, align 8
@re_syntax_options = external local_unnamed_addr global i64, align 8
@.str.60 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.15 = private unnamed_addr constant [35 x i8] c"invalid header numbering style: %s\00", align 1
@body_type = internal global i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.62, i64 0, i64 0), align 8, !dbg !146
@body_regex = internal global %struct.re_pattern_buffer zeroinitializer, align 8, !dbg !51
@body_fastmap = internal global [256 x i8] zeroinitializer, align 16, !dbg !80
@.str.16 = private unnamed_addr constant [33 x i8] c"invalid body numbering style: %s\00", align 1
@footer_type = internal global i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.61, i64 0, i64 0), align 8, !dbg !148
@footer_regex = internal global %struct.re_pattern_buffer zeroinitializer, align 8, !dbg !78
@footer_fastmap = internal global [256 x i8] zeroinitializer, align 16, !dbg !87
@.str.17 = private unnamed_addr constant [35 x i8] c"invalid footer numbering style: %s\00", align 1
@.str.18 = private unnamed_addr constant [29 x i8] c"invalid starting line number\00", align 1
@starting_line_number = internal unnamed_addr global i64 1, align 8, !dbg !150
@.str.19 = private unnamed_addr constant [30 x i8] c"invalid line number increment\00", align 1
@page_incr = internal unnamed_addr global i64 1, align 8, !dbg !152
@reset_numbers = internal unnamed_addr global i1 false, align 1
@.str.20 = private unnamed_addr constant [35 x i8] c"invalid line number of blank lines\00", align 1
@blank_join = internal unnamed_addr global i64 1, align 8, !dbg !156
@separator_str = internal unnamed_addr global i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.63, i64 0, i64 0), align 8, !dbg !158
@.str.21 = private unnamed_addr constant [32 x i8] c"invalid line number field width\00", align 1
@lineno_width = internal unnamed_addr global i32 6, align 4, !dbg !160
@FORMAT_LEFT = internal constant [8 x i8] c"%-*ld%s\00", align 1, !dbg !162
@lineno_format = internal unnamed_addr global i8* getelementptr inbounds ([7 x i8], [7 x i8]* @FORMAT_RIGHT_NOLZ, i64 0, i64 0), align 8, !dbg !167
@FORMAT_RIGHT_NOLZ = internal constant [7 x i8] c"%*ld%s\00", align 1, !dbg !169
@FORMAT_RIGHT_LZ = internal constant [8 x i8] c"%0*ld%s\00", align 1, !dbg !172
@.str.25 = private unnamed_addr constant [34 x i8] c"invalid line numbering format: %s\00", align 1
@section_del = internal unnamed_addr global i8* getelementptr inbounds ([3 x i8], [3 x i8]* @DEFAULT_SECTION_DELIMITERS, i64 0, i64 0), align 8, !dbg !174
@.str.27 = private unnamed_addr constant [14 x i8] c"Scott Bartram\00", align 1
@.str.28 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@header_del_len = internal unnamed_addr global i64 0, align 8, !dbg !89
@header_del = internal unnamed_addr global i8* null, align 8, !dbg !181
@body_del_len = internal unnamed_addr global i64 0, align 8, !dbg !91
@body_del = internal unnamed_addr global i8* null, align 8, !dbg !183
@footer_del_len = internal unnamed_addr global i64 0, align 8, !dbg !93
@footer_del = internal unnamed_addr global i8* null, align 8, !dbg !185
@line_buf = internal global %struct.linebuffer zeroinitializer, align 8, !dbg !95
@print_no_line_fmt = internal unnamed_addr global i8* null, align 8, !dbg !187
@line_no = internal unnamed_addr global i64 0, align 8, !dbg !103
@current_type = internal unnamed_addr global i8* null, align 8, !dbg !49
@current_regex = internal unnamed_addr global %struct.re_pattern_buffer* null, align 8, !dbg !189
@optind = external local_unnamed_addr global i32, align 4
@.str.29 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdin = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.64 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@proc_text.blank_lines = internal unnamed_addr global i64 0, align 8, !dbg !192
@.str.66 = private unnamed_addr constant [21 x i8] c"line number overflow\00", align 1
@.str.65 = private unnamed_addr constant [35 x i8] c"error in regular expression search\00", align 1
@DEFAULT_SECTION_DELIMITERS = internal constant [3 x i8] c"\5C:\00", align 1, !dbg !176
@.str.63 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.61 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.62 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str.47 = private unnamed_addr constant [17 x i8] c"header-numbering\00", align 1
@.str.48 = private unnamed_addr constant [15 x i8] c"body-numbering\00", align 1
@.str.49 = private unnamed_addr constant [17 x i8] c"footer-numbering\00", align 1
@.str.50 = private unnamed_addr constant [21 x i8] c"starting-line-number\00", align 1
@.str.51 = private unnamed_addr constant [15 x i8] c"line-increment\00", align 1
@.str.52 = private unnamed_addr constant [12 x i8] c"no-renumber\00", align 1
@.str.53 = private unnamed_addr constant [17 x i8] c"join-blank-lines\00", align 1
@.str.54 = private unnamed_addr constant [17 x i8] c"number-separator\00", align 1
@.str.55 = private unnamed_addr constant [13 x i8] c"number-width\00", align 1
@.str.56 = private unnamed_addr constant [14 x i8] c"number-format\00", align 1
@.str.57 = private unnamed_addr constant [18 x i8] c"section-delimiter\00", align 1
@.str.58 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.59 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0), align 8, !dbg !210
@.str.22 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !215
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !220
@.str.32 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.33 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.34 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !223
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !230
@.str.67 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.68 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.69 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.71, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.72, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.73, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.74, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.75, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.76, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.77, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.78, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.79, i32 0, i32 0), i8* null], align 16, !dbg !237
@.str.70 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.71 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.72 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.73 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.74 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.75 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.76 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.77 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.78 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.79 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !265
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !272
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !282
@.str.11.80 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.81 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.82 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.83 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.84 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.85 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.86 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !286
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !293
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !284
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !295
@.str.93 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.94 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.95 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.96 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.97 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.98 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.99 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.100 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.101 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.102 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.103 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.104 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.105 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.106 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.109 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.110 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.111 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.112 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.113 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19.114 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !301
@.str.1.127 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.128 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.129 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.134 = private unnamed_addr constant [38 x i8] c"0 <= strtol_base && strtol_base <= 36\00", align 1
@.str.1.135 = private unnamed_addr constant [16 x i8] c"./lib/xstrtol.c\00", align 1
@__PRETTY_FUNCTION__.xstrtoimax = private unnamed_addr constant [78 x i8] c"strtol_error xstrtoimax(const char *, char **, int, intmax_t *, const char *)\00", align 1
@.str.1.150 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.153 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !310
@.str.3.154 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.155 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.156 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.157 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.158 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.159 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 !dbg !725 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !729, metadata !730), !dbg !731
  %2 = icmp eq i32 %0, 0, !dbg !732
  br i1 %2, label %8, label %3, !dbg !734

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !735, !tbaa !738
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #10, !dbg !735
  %6 = load i8*, i8** @program_name, align 8, !dbg !735, !tbaa !738
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #10, !dbg !742
  br label %57, !dbg !744

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 5) #10, !dbg !746
  %10 = load i8*, i8** @program_name, align 8, !dbg !746, !tbaa !738
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10) #10, !dbg !748
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0), i32 5) #10, !dbg !750
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !750, !tbaa !738
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #10, !dbg !751
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.30, i64 0, i64 0), i32 5) #10, !dbg !752
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !752, !tbaa !738
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #10, !dbg !755
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.31, i64 0, i64 0), i32 5) #10, !dbg !757
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !757, !tbaa !738
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #10, !dbg !760
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([210 x i8], [210 x i8]* @.str.3, i64 0, i64 0), i32 5) #10, !dbg !762
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !762, !tbaa !738
  %23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22) #10, !dbg !763
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([443 x i8], [443 x i8]* @.str.4, i64 0, i64 0), i32 5) #10, !dbg !764
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !764, !tbaa !738
  %26 = tail call i32 @fputs_unlocked(i8* %24, %struct._IO_FILE* %25) #10, !dbg !765
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([143 x i8], [143 x i8]* @.str.5, i64 0, i64 0), i32 5) #10, !dbg !766
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !766, !tbaa !738
  %29 = tail call i32 @fputs_unlocked(i8* %27, %struct._IO_FILE* %28) #10, !dbg !767
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0), i32 5) #10, !dbg !768
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !768, !tbaa !738
  %32 = tail call i32 @fputs_unlocked(i8* %30, %struct._IO_FILE* %31) #10, !dbg !769
  %33 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.7, i64 0, i64 0), i32 5) #10, !dbg !770
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !770, !tbaa !738
  %35 = tail call i32 @fputs_unlocked(i8* %33, %struct._IO_FILE* %34) #10, !dbg !771
  %36 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([209 x i8], [209 x i8]* @.str.8, i64 0, i64 0), i32 5) #10, !dbg !772
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !772, !tbaa !738
  %38 = tail call i32 @fputs_unlocked(i8* %36, %struct._IO_FILE* %37) #10, !dbg !773
  %39 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([339 x i8], [339 x i8]* @.str.9, i64 0, i64 0), i32 5) #10, !dbg !774
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !774, !tbaa !738
  %41 = tail call i32 @fputs_unlocked(i8* %39, %struct._IO_FILE* %40) #10, !dbg !775
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !121, metadata !730) #10, !dbg !776
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i64 0, metadata !121, metadata !730) #10, !dbg !776
  %42 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.40, i64 0, i64 0), i32 5) #10, !dbg !778
  %43 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %42, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.41, i64 0, i64 0)) #10, !dbg !779
  %44 = tail call i8* @setlocale(i32 5, i8* null) #10, !dbg !781
  tail call void @llvm.dbg.value(metadata i8* %44, i64 0, metadata !132, metadata !730) #10, !dbg !782
  %45 = icmp eq i8* %44, null, !dbg !783
  br i1 %45, label %52, label %46, !dbg !784

; <label>:46:                                     ; preds = %8
  %47 = tail call i32 @strncmp(i8* nonnull %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.42, i64 0, i64 0), i64 3) #13, !dbg !785
  %48 = icmp eq i32 %47, 0, !dbg !785
  br i1 %48, label %52, label %49, !dbg !787

; <label>:49:                                     ; preds = %46
  %50 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.43, i64 0, i64 0), i32 5) #10, !dbg !789
  %51 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %50, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0)) #10, !dbg !791
  br label %52, !dbg !793

; <label>:52:                                     ; preds = %8, %46, %49
  %53 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.44, i64 0, i64 0), i32 5) #10, !dbg !794
  %54 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %53, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.41, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0)) #10, !dbg !795
  %55 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.45, i64 0, i64 0), i32 5) #10, !dbg !796
  %56 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %55, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i64 0, i64 0)) #10, !dbg !797
  br label %57

; <label>:57:                                     ; preds = %52, %3
  tail call void @exit(i32 %0) #14, !dbg !798
  unreachable, !dbg !798
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
define i32 @main(i32, i8**) local_unnamed_addr #6 !dbg !799 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !804, metadata !730), !dbg !832
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !805, metadata !730), !dbg !833
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !808, metadata !730), !dbg !834
  %3 = load i8*, i8** %1, align 8, !dbg !835, !tbaa !738
  tail call void @set_program_name(i8* %3) #10, !dbg !836
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)) #10, !dbg !837
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0)) #10, !dbg !838
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0)) #10, !dbg !839
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #10, !dbg !840
  store i1 false, i1* @have_read_stdin, align 1
  br label %8, !dbg !841

; <label>:8:                                      ; preds = %91, %2
  %9 = phi i8 [ 1, %2 ], [ %92, %91 ]
  tail call void @llvm.dbg.value(metadata i8 %9, i64 0, metadata !808, metadata !730), !dbg !834
  %10 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0), %struct.option* getelementptr inbounds ([14 x %struct.option], [14 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #10, !dbg !842
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !806, metadata !730), !dbg !844
  switch i32 %10, label %91 [
    i32 -1, label %123
    i32 104, label %11
    i32 98, label %27
    i32 102, label %43
    i32 118, label %59
    i32 105, label %63
    i32 112, label %67
    i32 108, label %68
    i32 115, label %72
    i32 119, label %74
    i32 110, label %79
    i32 100, label %117
    i32 -130, label %119
    i32 -131, label %120
  ], !dbg !845

; <label>:11:                                     ; preds = %8
  tail call void @llvm.dbg.value(metadata i8** @header_type, i64 0, metadata !846, metadata !730) #10, !dbg !856
  tail call void @llvm.dbg.value(metadata %struct.re_pattern_buffer* @header_regex, i64 0, metadata !852, metadata !730) #10, !dbg !859
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([256 x i8], [256 x i8]* @header_fastmap, i64 0, i64 0), i64 0, metadata !853, metadata !730) #10, !dbg !860
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !855, metadata !730) #10, !dbg !861
  %12 = load i8*, i8** @optarg, align 8, !dbg !862, !tbaa !738
  %13 = load i8, i8* %12, align 1, !dbg !863, !tbaa !864
  %14 = sext i8 %13 to i32, !dbg !863
  switch i32 %14, label %23 [
    i32 97, label %15
    i32 116, label %15
    i32 110, label %15
    i32 112, label %17
  ], !dbg !865

; <label>:15:                                     ; preds = %11, %11, %11
  %16 = ptrtoint i8* %12 to i64, !dbg !865
  store i64 %16, i64* bitcast (i8** @header_type to i64*), align 8, !dbg !866, !tbaa !738
  br label %91, !dbg !868

; <label>:17:                                     ; preds = %11
  %18 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !869
  store i8* %18, i8** @optarg, align 8, !dbg !869, !tbaa !738
  store i8* %12, i8** @header_type, align 8, !dbg !870, !tbaa !738
  tail call void @llvm.memset.p0i8.i64(i8* bitcast (%struct.re_pattern_buffer* @header_regex to i8*), i8 0, i64 16, i32 8, i1 false) #10, !dbg !871
  store <2 x i8*> <i8* getelementptr inbounds ([256 x i8], [256 x i8]* @header_fastmap, i64 0, i64 0), i8* null>, <2 x i8*>* bitcast (i8** getelementptr inbounds (%struct.re_pattern_buffer, %struct.re_pattern_buffer* @header_regex, i64 0, i32 4) to <2 x i8*>*), align 8, !dbg !872, !tbaa !738
  store i64 710, i64* @re_syntax_options, align 8, !dbg !873, !tbaa !874
  %19 = tail call i64 @strlen(i8* %18) #13, !dbg !876
  %20 = tail call i8* @re_compile_pattern(i8* %18, i64 %19, %struct.re_pattern_buffer* nonnull @header_regex) #10, !dbg !877
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !854, metadata !730) #10, !dbg !879
  %21 = icmp eq i8* %20, null, !dbg !880
  br i1 %21, label %91, label %22, !dbg !882

; <label>:22:                                     ; preds = %17
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.60, i64 0, i64 0), i8* nonnull %20) #10, !dbg !883
  unreachable, !dbg !883

; <label>:23:                                     ; preds = %11
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.15, i64 0, i64 0), i32 5) #10, !dbg !884
  %25 = load i8*, i8** @optarg, align 8, !dbg !886, !tbaa !738
  %26 = tail call i8* @quote(i8* %25) #10, !dbg !887
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %24, i8* %26) #10, !dbg !888
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !808, metadata !730), !dbg !834
  br label %91, !dbg !890

; <label>:27:                                     ; preds = %8
  tail call void @llvm.dbg.value(metadata i8** @body_type, i64 0, metadata !846, metadata !730) #10, !dbg !891
  tail call void @llvm.dbg.value(metadata %struct.re_pattern_buffer* @body_regex, i64 0, metadata !852, metadata !730) #10, !dbg !894
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([256 x i8], [256 x i8]* @body_fastmap, i64 0, i64 0), i64 0, metadata !853, metadata !730) #10, !dbg !895
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !855, metadata !730) #10, !dbg !896
  %28 = load i8*, i8** @optarg, align 8, !dbg !897, !tbaa !738
  %29 = load i8, i8* %28, align 1, !dbg !898, !tbaa !864
  %30 = sext i8 %29 to i32, !dbg !898
  switch i32 %30, label %39 [
    i32 97, label %31
    i32 116, label %31
    i32 110, label %31
    i32 112, label %33
  ], !dbg !899

; <label>:31:                                     ; preds = %27, %27, %27
  %32 = ptrtoint i8* %28 to i64, !dbg !899
  store i64 %32, i64* bitcast (i8** @body_type to i64*), align 8, !dbg !900, !tbaa !738
  br label %91, !dbg !901

; <label>:33:                                     ; preds = %27
  %34 = getelementptr inbounds i8, i8* %28, i64 1, !dbg !902
  store i8* %34, i8** @optarg, align 8, !dbg !902, !tbaa !738
  store i8* %28, i8** @body_type, align 8, !dbg !903, !tbaa !738
  tail call void @llvm.memset.p0i8.i64(i8* bitcast (%struct.re_pattern_buffer* @body_regex to i8*), i8 0, i64 16, i32 8, i1 false) #10, !dbg !904
  store <2 x i8*> <i8* getelementptr inbounds ([256 x i8], [256 x i8]* @body_fastmap, i64 0, i64 0), i8* null>, <2 x i8*>* bitcast (i8** getelementptr inbounds (%struct.re_pattern_buffer, %struct.re_pattern_buffer* @body_regex, i64 0, i32 4) to <2 x i8*>*), align 8, !dbg !905, !tbaa !738
  store i64 710, i64* @re_syntax_options, align 8, !dbg !906, !tbaa !874
  %35 = tail call i64 @strlen(i8* %34) #13, !dbg !907
  %36 = tail call i8* @re_compile_pattern(i8* %34, i64 %35, %struct.re_pattern_buffer* nonnull @body_regex) #10, !dbg !908
  tail call void @llvm.dbg.value(metadata i8* %36, i64 0, metadata !854, metadata !730) #10, !dbg !909
  %37 = icmp eq i8* %36, null, !dbg !910
  br i1 %37, label %91, label %38, !dbg !911

; <label>:38:                                     ; preds = %33
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.60, i64 0, i64 0), i8* nonnull %36) #10, !dbg !912
  unreachable, !dbg !912

; <label>:39:                                     ; preds = %27
  %40 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.16, i64 0, i64 0), i32 5) #10, !dbg !913
  %41 = load i8*, i8** @optarg, align 8, !dbg !915, !tbaa !738
  %42 = tail call i8* @quote(i8* %41) #10, !dbg !916
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %40, i8* %42) #10, !dbg !917
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !808, metadata !730), !dbg !834
  br label %91, !dbg !919

; <label>:43:                                     ; preds = %8
  tail call void @llvm.dbg.value(metadata i8** @footer_type, i64 0, metadata !846, metadata !730) #10, !dbg !920
  tail call void @llvm.dbg.value(metadata %struct.re_pattern_buffer* @footer_regex, i64 0, metadata !852, metadata !730) #10, !dbg !923
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([256 x i8], [256 x i8]* @footer_fastmap, i64 0, i64 0), i64 0, metadata !853, metadata !730) #10, !dbg !924
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !855, metadata !730) #10, !dbg !925
  %44 = load i8*, i8** @optarg, align 8, !dbg !926, !tbaa !738
  %45 = load i8, i8* %44, align 1, !dbg !927, !tbaa !864
  %46 = sext i8 %45 to i32, !dbg !927
  switch i32 %46, label %55 [
    i32 97, label %47
    i32 116, label %47
    i32 110, label %47
    i32 112, label %49
  ], !dbg !928

; <label>:47:                                     ; preds = %43, %43, %43
  %48 = ptrtoint i8* %44 to i64, !dbg !928
  store i64 %48, i64* bitcast (i8** @footer_type to i64*), align 8, !dbg !929, !tbaa !738
  br label %91, !dbg !930

; <label>:49:                                     ; preds = %43
  %50 = getelementptr inbounds i8, i8* %44, i64 1, !dbg !931
  store i8* %50, i8** @optarg, align 8, !dbg !931, !tbaa !738
  store i8* %44, i8** @footer_type, align 8, !dbg !932, !tbaa !738
  tail call void @llvm.memset.p0i8.i64(i8* bitcast (%struct.re_pattern_buffer* @footer_regex to i8*), i8 0, i64 16, i32 8, i1 false) #10, !dbg !933
  store <2 x i8*> <i8* getelementptr inbounds ([256 x i8], [256 x i8]* @footer_fastmap, i64 0, i64 0), i8* null>, <2 x i8*>* bitcast (i8** getelementptr inbounds (%struct.re_pattern_buffer, %struct.re_pattern_buffer* @footer_regex, i64 0, i32 4) to <2 x i8*>*), align 8, !dbg !934, !tbaa !738
  store i64 710, i64* @re_syntax_options, align 8, !dbg !935, !tbaa !874
  %51 = tail call i64 @strlen(i8* %50) #13, !dbg !936
  %52 = tail call i8* @re_compile_pattern(i8* %50, i64 %51, %struct.re_pattern_buffer* nonnull @footer_regex) #10, !dbg !937
  tail call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !854, metadata !730) #10, !dbg !938
  %53 = icmp eq i8* %52, null, !dbg !939
  br i1 %53, label %91, label %54, !dbg !940

; <label>:54:                                     ; preds = %49
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.60, i64 0, i64 0), i8* nonnull %52) #10, !dbg !941
  unreachable, !dbg !941

; <label>:55:                                     ; preds = %43
  %56 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.17, i64 0, i64 0), i32 5) #10, !dbg !942
  %57 = load i8*, i8** @optarg, align 8, !dbg !944, !tbaa !738
  %58 = tail call i8* @quote(i8* %57) #10, !dbg !945
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %56, i8* %58) #10, !dbg !946
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !808, metadata !730), !dbg !834
  br label %91, !dbg !948

; <label>:59:                                     ; preds = %8
  %60 = load i8*, i8** @optarg, align 8, !dbg !949, !tbaa !738
  %61 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.18, i64 0, i64 0), i32 5) #10, !dbg !950
  %62 = tail call i64 @xdectoimax(i8* %60, i64 -9223372036854775808, i64 9223372036854775807, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0), i8* %61, i32 0) #10, !dbg !951
  store i64 %62, i64* @starting_line_number, align 8, !dbg !952, !tbaa !874
  br label %91, !dbg !953

; <label>:63:                                     ; preds = %8
  %64 = load i8*, i8** @optarg, align 8, !dbg !954, !tbaa !738
  %65 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.19, i64 0, i64 0), i32 5) #10, !dbg !955
  %66 = tail call i64 @xdectoimax(i8* %64, i64 1, i64 9223372036854775807, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0), i8* %65, i32 0) #10, !dbg !956
  store i64 %66, i64* @page_incr, align 8, !dbg !957, !tbaa !874
  br label %91, !dbg !958

; <label>:67:                                     ; preds = %8
  store i1 true, i1* @reset_numbers, align 1
  br label %91, !dbg !959

; <label>:68:                                     ; preds = %8
  %69 = load i8*, i8** @optarg, align 8, !dbg !960, !tbaa !738
  %70 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.20, i64 0, i64 0), i32 5) #10, !dbg !961
  %71 = tail call i64 @xdectoimax(i8* %69, i64 1, i64 9223372036854775807, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0), i8* %70, i32 0) #10, !dbg !962
  store i64 %71, i64* @blank_join, align 8, !dbg !963, !tbaa !874
  br label %91, !dbg !964

; <label>:72:                                     ; preds = %8
  %73 = load i64, i64* bitcast (i8** @optarg to i64*), align 8, !dbg !965, !tbaa !738
  store i64 %73, i64* bitcast (i8** @separator_str to i64*), align 8, !dbg !966, !tbaa !738
  br label %91, !dbg !967

; <label>:74:                                     ; preds = %8
  %75 = load i8*, i8** @optarg, align 8, !dbg !968, !tbaa !738
  %76 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.21, i64 0, i64 0), i32 5) #10, !dbg !969
  %77 = tail call i64 @xdectoimax(i8* %75, i64 1, i64 2147483647, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0), i8* %76, i32 0) #10, !dbg !970
  %78 = trunc i64 %77 to i32, !dbg !970
  store i32 %78, i32* @lineno_width, align 4, !dbg !971, !tbaa !972
  br label %91, !dbg !974

; <label>:79:                                     ; preds = %8
  tail call void @llvm.dbg.value(metadata i64 2, i64 0, metadata !814, metadata !730), !dbg !975
  %80 = load i8*, i8** @optarg, align 8, !dbg !976, !tbaa !738
  tail call void @llvm.dbg.value(metadata i8* %80, i64 0, metadata !815, metadata !730), !dbg !978
  %81 = load i8, i8* %80, align 1, !dbg !976, !tbaa !864
  switch i8 %81, label %113 [
    i8 108, label %82
    i8 114, label %95
  ], !dbg !979

; <label>:82:                                     ; preds = %79
  %83 = getelementptr inbounds i8, i8* %80, i64 1, !dbg !982
  %84 = load i8, i8* %83, align 1, !dbg !982, !tbaa !864
  %85 = icmp eq i8 %84, 110, !dbg !985
  br i1 %85, label %86, label %93, !dbg !988

; <label>:86:                                     ; preds = %82
  %87 = getelementptr inbounds i8, i8* %80, i64 2, !dbg !990
  %88 = load i8, i8* %87, align 1, !dbg !990, !tbaa !864
  %89 = icmp eq i8 %88, 0, !dbg !993
  br i1 %89, label %90, label %93, !dbg !995

; <label>:90:                                     ; preds = %86
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @FORMAT_LEFT, i64 0, i64 0), i8** @lineno_format, align 8, !dbg !997, !tbaa !738
  br label %91, !dbg !998

; <label>:91:                                     ; preds = %90, %112, %113, %103, %55, %39, %23, %117, %74, %72, %68, %67, %63, %59, %8, %17, %15, %33, %31, %49, %47
  %92 = phi i8 [ %9, %117 ], [ %9, %90 ], [ %9, %103 ], [ %9, %112 ], [ 0, %113 ], [ %9, %74 ], [ %9, %72 ], [ %9, %68 ], [ %9, %67 ], [ %9, %63 ], [ %9, %59 ], [ 0, %55 ], [ 0, %39 ], [ 0, %23 ], [ 0, %8 ], [ %9, %17 ], [ %9, %15 ], [ %9, %33 ], [ %9, %31 ], [ %9, %49 ], [ %9, %47 ]
  br label %8, !dbg !834, !llvm.loop !999

; <label>:93:                                     ; preds = %82, %86
  tail call void @llvm.dbg.value(metadata i64 2, i64 0, metadata !821, metadata !730), !dbg !1001
  tail call void @llvm.dbg.value(metadata i8* %80, i64 0, metadata !822, metadata !730), !dbg !1002
  %94 = icmp eq i8 %81, 114, !dbg !1003
  br i1 %94, label %95, label %113, !dbg !1006

; <label>:95:                                     ; preds = %79, %93
  %96 = getelementptr inbounds i8, i8* %80, i64 1, !dbg !1008
  %97 = load i8, i8* %96, align 1, !dbg !1008, !tbaa !864
  %98 = icmp eq i8 %97, 110, !dbg !1011
  br i1 %98, label %99, label %104, !dbg !1014

; <label>:99:                                     ; preds = %95
  %100 = getelementptr inbounds i8, i8* %80, i64 2, !dbg !1016
  %101 = load i8, i8* %100, align 1, !dbg !1016, !tbaa !864
  %102 = icmp eq i8 %101, 0, !dbg !1019
  br i1 %102, label %103, label %104, !dbg !1021

; <label>:103:                                    ; preds = %99
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @FORMAT_RIGHT_NOLZ, i64 0, i64 0), i8** @lineno_format, align 8, !dbg !1022, !tbaa !738
  br label %91, !dbg !1023

; <label>:104:                                    ; preds = %99, %95
  %105 = getelementptr inbounds i8, i8* %80, i64 1, !dbg !1024
  %106 = load i8, i8* %105, align 1, !dbg !1024, !tbaa !864
  %107 = icmp eq i8 %106, 122, !dbg !1028
  br i1 %107, label %108, label %113, !dbg !1031

; <label>:108:                                    ; preds = %104
  %109 = getelementptr inbounds i8, i8* %80, i64 2, !dbg !1033
  %110 = load i8, i8* %109, align 1, !dbg !1033, !tbaa !864
  %111 = icmp eq i8 %110, 0, !dbg !1036
  br i1 %111, label %112, label %113, !dbg !1038

; <label>:112:                                    ; preds = %108
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @FORMAT_RIGHT_LZ, i64 0, i64 0), i8** @lineno_format, align 8, !dbg !1039, !tbaa !738
  br label %91, !dbg !1040

; <label>:113:                                    ; preds = %79, %93, %104, %108
  %114 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.25, i64 0, i64 0), i32 5) #10, !dbg !1041
  %115 = load i8*, i8** @optarg, align 8, !dbg !1043, !tbaa !738
  %116 = tail call i8* @quote(i8* %115) #10, !dbg !1044
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %114, i8* %116) #10, !dbg !1045
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !808, metadata !730), !dbg !834
  br label %91

; <label>:117:                                    ; preds = %8
  %118 = load i64, i64* bitcast (i8** @optarg to i64*), align 8, !dbg !1047, !tbaa !738
  store i64 %118, i64* bitcast (i8** @section_del to i64*), align 8, !dbg !1048, !tbaa !738
  br label %91, !dbg !1049

; <label>:119:                                    ; preds = %8
  tail call void @usage(i32 0) #15, !dbg !1050
  unreachable, !dbg !1050

; <label>:120:                                    ; preds = %8
  %121 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1051, !tbaa !738
  %122 = load i8*, i8** @Version, align 8, !dbg !1051, !tbaa !738
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %121, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i64 0, i64 0), i8* %122, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i64 0, i64 0), i8* null) #10, !dbg !1051
  tail call void @exit(i32 0) #14, !dbg !1052
  unreachable, !dbg !1051

; <label>:123:                                    ; preds = %8
  %124 = icmp eq i8 %9, 0, !dbg !1054
  br i1 %124, label %125, label %126, !dbg !1056

; <label>:125:                                    ; preds = %123
  tail call void @usage(i32 1) #15, !dbg !1057
  unreachable, !dbg !1057

; <label>:126:                                    ; preds = %123
  %127 = load i8*, i8** @section_del, align 8, !dbg !1058, !tbaa !738
  %128 = tail call i64 @strlen(i8* %127) #13, !dbg !1059
  tail call void @llvm.dbg.value(metadata i64 %128, i64 0, metadata !807, metadata !730), !dbg !1060
  %129 = mul i64 %128, 3, !dbg !1061
  store i64 %129, i64* @header_del_len, align 8, !dbg !1062, !tbaa !874
  %130 = add i64 %129, 1, !dbg !1063
  %131 = tail call noalias i8* @xmalloc(i64 %130) #10, !dbg !1064
  store i8* %131, i8** @header_del, align 8, !dbg !1065, !tbaa !738
  %132 = load i8*, i8** @section_del, align 8, !dbg !1066, !tbaa !738
  tail call void @llvm.dbg.value(metadata i8* %131, i64 0, metadata !1067, metadata !730) #10, !dbg !1076
  tail call void @llvm.dbg.value(metadata i8* %132, i64 0, metadata !1075, metadata !730) #10, !dbg !1076
  %133 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %131, i1 false) #10, !dbg !1078
  %134 = tail call i8* @__stpcpy_chk(i8* nonnull %131, i8* nonnull %132, i64 %133) #10, !dbg !1079
  %135 = load i8*, i8** @section_del, align 8, !dbg !1080, !tbaa !738
  tail call void @llvm.dbg.value(metadata i8* %134, i64 0, metadata !1067, metadata !730) #10, !dbg !1081
  tail call void @llvm.dbg.value(metadata i8* %135, i64 0, metadata !1075, metadata !730) #10, !dbg !1081
  %136 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %134, i1 false) #10, !dbg !1083
  %137 = tail call i8* @__stpcpy_chk(i8* nonnull %134, i8* nonnull %135, i64 %136) #10, !dbg !1084
  %138 = load i8*, i8** @section_del, align 8, !dbg !1085, !tbaa !738
  tail call void @llvm.dbg.value(metadata i8* %137, i64 0, metadata !1067, metadata !730) #10, !dbg !1086
  tail call void @llvm.dbg.value(metadata i8* %138, i64 0, metadata !1075, metadata !730) #10, !dbg !1086
  %139 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %137, i1 false) #10, !dbg !1089
  %140 = tail call i8* @__stpcpy_chk(i8* nonnull %137, i8* nonnull %138, i64 %139) #10, !dbg !1090
  %141 = shl i64 %128, 1, !dbg !1091
  store i64 %141, i64* @body_del_len, align 8, !dbg !1092, !tbaa !874
  %142 = or i64 %141, 1, !dbg !1093
  %143 = tail call noalias i8* @xmalloc(i64 %142) #10, !dbg !1094
  store i8* %143, i8** @body_del, align 8, !dbg !1095, !tbaa !738
  %144 = load i8*, i8** @section_del, align 8, !dbg !1096, !tbaa !738
  tail call void @llvm.dbg.value(metadata i8* %143, i64 0, metadata !1067, metadata !730) #10, !dbg !1097
  tail call void @llvm.dbg.value(metadata i8* %144, i64 0, metadata !1075, metadata !730) #10, !dbg !1097
  %145 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %143, i1 false) #10, !dbg !1099
  %146 = tail call i8* @__stpcpy_chk(i8* nonnull %143, i8* nonnull %144, i64 %145) #10, !dbg !1100
  %147 = load i8*, i8** @section_del, align 8, !dbg !1101, !tbaa !738
  tail call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !1067, metadata !730) #10, !dbg !1102
  tail call void @llvm.dbg.value(metadata i8* %147, i64 0, metadata !1075, metadata !730) #10, !dbg !1102
  %148 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %146, i1 false) #10, !dbg !1104
  %149 = tail call i8* @__stpcpy_chk(i8* nonnull %146, i8* nonnull %147, i64 %148) #10, !dbg !1105
  store i64 %128, i64* @footer_del_len, align 8, !dbg !1106, !tbaa !874
  %150 = add i64 %128, 1, !dbg !1107
  %151 = tail call noalias i8* @xmalloc(i64 %150) #10, !dbg !1108
  store i8* %151, i8** @footer_del, align 8, !dbg !1109, !tbaa !738
  %152 = load i8*, i8** @section_del, align 8, !dbg !1110, !tbaa !738
  tail call void @llvm.dbg.value(metadata i8* %151, i64 0, metadata !1067, metadata !730) #10, !dbg !1111
  tail call void @llvm.dbg.value(metadata i8* %152, i64 0, metadata !1075, metadata !730) #10, !dbg !1111
  %153 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %151, i1 false) #10, !dbg !1113
  %154 = tail call i8* @__stpcpy_chk(i8* nonnull %151, i8* nonnull %152, i64 %153) #10, !dbg !1114
  tail call void @initbuffer(%struct.linebuffer* nonnull @line_buf) #10, !dbg !1115
  %155 = load i8*, i8** @separator_str, align 8, !dbg !1116, !tbaa !738
  %156 = tail call i64 @strlen(i8* %155) #13, !dbg !1117
  tail call void @llvm.dbg.value(metadata i64 %156, i64 0, metadata !807, metadata !730), !dbg !1060
  %157 = load i32, i32* @lineno_width, align 4, !dbg !1118, !tbaa !972
  %158 = sext i32 %157 to i64, !dbg !1118
  %159 = add i64 %156, 1, !dbg !1119
  %160 = add i64 %159, %158, !dbg !1120
  %161 = tail call noalias i8* @xmalloc(i64 %160) #10, !dbg !1121
  store i8* %161, i8** @print_no_line_fmt, align 8, !dbg !1122, !tbaa !738
  %162 = load i32, i32* @lineno_width, align 4, !dbg !1123, !tbaa !972
  %163 = sext i32 %162 to i64, !dbg !1123
  %164 = add i64 %163, %156, !dbg !1124
  tail call void @llvm.memset.p0i8.i64(i8* %161, i8 32, i64 %164, i32 1, i1 false), !dbg !1125
  %165 = getelementptr inbounds i8, i8* %161, i64 %164, !dbg !1126
  store i8 0, i8* %165, align 1, !dbg !1127, !tbaa !864
  %166 = load i64, i64* @starting_line_number, align 8, !dbg !1128, !tbaa !874
  store i64 %166, i64* @line_no, align 8, !dbg !1129, !tbaa !874
  %167 = load i64, i64* bitcast (i8** @body_type to i64*), align 8, !dbg !1130, !tbaa !738
  store i64 %167, i64* bitcast (i8** @current_type to i64*), align 8, !dbg !1131, !tbaa !738
  store %struct.re_pattern_buffer* @body_regex, %struct.re_pattern_buffer** @current_regex, align 8, !dbg !1132, !tbaa !738
  %168 = load i32, i32* @optind, align 4, !dbg !1133, !tbaa !972
  %169 = icmp eq i32 %168, %0, !dbg !1135
  br i1 %169, label %173, label %170, !dbg !1136

; <label>:170:                                    ; preds = %126
  tail call void @llvm.dbg.value(metadata i8 %9, i64 0, metadata !808, metadata !730), !dbg !834
  %171 = icmp slt i32 %168, %0, !dbg !1137
  br i1 %171, label %172, label %189, !dbg !1141

; <label>:172:                                    ; preds = %170
  br label %176, !dbg !1143

; <label>:173:                                    ; preds = %126
  %174 = tail call fastcc zeroext i1 @nl_file(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i64 0, i64 0)), !dbg !1144
  %175 = zext i1 %174 to i8, !dbg !1145
  tail call void @llvm.dbg.value(metadata i8 %175, i64 0, metadata !808, metadata !730), !dbg !834
  br label %189, !dbg !1146

; <label>:176:                                    ; preds = %172, %176
  %177 = phi i32 [ %186, %176 ], [ %168, %172 ]
  %178 = phi i8 [ %184, %176 ], [ %9, %172 ]
  %179 = sext i32 %177 to i64, !dbg !1143
  %180 = getelementptr inbounds i8*, i8** %1, i64 %179, !dbg !1143
  %181 = load i8*, i8** %180, align 8, !dbg !1143, !tbaa !738
  %182 = tail call fastcc zeroext i1 @nl_file(i8* %181), !dbg !1147
  %183 = zext i1 %182 to i8, !dbg !1147
  %184 = and i8 %183, %178, !dbg !1148
  tail call void @llvm.dbg.value(metadata i8 %184, i64 0, metadata !808, metadata !730), !dbg !834
  %185 = load i32, i32* @optind, align 4, !dbg !1149, !tbaa !972
  %186 = add nsw i32 %185, 1, !dbg !1149
  store i32 %186, i32* @optind, align 4, !dbg !1149, !tbaa !972
  tail call void @llvm.dbg.value(metadata i8 %184, i64 0, metadata !808, metadata !730), !dbg !834
  %187 = icmp slt i32 %186, %0, !dbg !1137
  br i1 %187, label %176, label %188, !dbg !1141, !llvm.loop !1151

; <label>:188:                                    ; preds = %176
  br label %189, !dbg !834

; <label>:189:                                    ; preds = %188, %170, %173
  %190 = phi i8 [ %175, %173 ], [ %9, %170 ], [ %184, %188 ]
  tail call void @llvm.dbg.value(metadata i8 %190, i64 0, metadata !808, metadata !730), !dbg !834
  %191 = load i1, i1* @have_read_stdin, align 1
  br i1 %191, label %192, label %199, !dbg !1154

; <label>:192:                                    ; preds = %189
  %193 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1156, !tbaa !738
  %194 = tail call i32 @rpl_fclose(%struct._IO_FILE* %193) #10, !dbg !1158
  %195 = icmp eq i32 %194, -1, !dbg !1159
  br i1 %195, label %196, label %199, !dbg !1160

; <label>:196:                                    ; preds = %192
  %197 = tail call i32* @__errno_location() #1, !dbg !1161
  %198 = load i32, i32* %197, align 4, !dbg !1161, !tbaa !972
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %198, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i64 0, i64 0)) #10, !dbg !1162
  unreachable, !dbg !1161

; <label>:199:                                    ; preds = %192, %189
  %200 = and i8 %190, 1, !dbg !1163
  %201 = xor i8 %200, 1, !dbg !1163
  %202 = zext i8 %201 to i32, !dbg !1163
  ret i32 %202, !dbg !1164
}

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #7

; Function Attrs: nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #4

declare i8* @re_compile_pattern(i8*, i64, %struct.re_pattern_buffer*) local_unnamed_addr #3

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #1

; Function Attrs: nounwind
declare i8* @__stpcpy_chk(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @nl_file(i8*) unnamed_addr #6 !dbg !1165 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1169, metadata !730), !dbg !1238
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1227, metadata !730), !dbg !1239
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1228, metadata !730), !dbg !1240
  %2 = load i8, i8* %0, align 1, !dbg !1241, !tbaa !864
  %3 = icmp eq i8 %2, 45, !dbg !1243
  br i1 %3, label %4, label %10, !dbg !1246

; <label>:4:                                      ; preds = %1
  %5 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1248
  %6 = load i8, i8* %5, align 1, !dbg !1248, !tbaa !864
  %7 = icmp eq i8 %6, 0, !dbg !1251
  br i1 %7, label %8, label %10, !dbg !1253

; <label>:8:                                      ; preds = %4
  store i1 true, i1* @have_read_stdin, align 1
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1255, !tbaa !738
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %9, i64 0, metadata !1170, metadata !730), !dbg !1257
  br label %17, !dbg !1258

; <label>:10:                                     ; preds = %1, %4
  %11 = tail call %struct._IO_FILE* @fopen(i8* nonnull %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i64 0, i64 0)), !dbg !1259
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %11, i64 0, metadata !1170, metadata !730), !dbg !1257
  %12 = icmp eq %struct._IO_FILE* %11, null, !dbg !1261
  br i1 %12, label %13, label %17, !dbg !1263

; <label>:13:                                     ; preds = %10
  %14 = tail call i32* @__errno_location() #1, !dbg !1264
  %15 = load i32, i32* %14, align 4, !dbg !1264, !tbaa !972
  %16 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* nonnull %0) #10, !dbg !1266
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.60, i64 0, i64 0), i8* %16) #10, !dbg !1268
  br label %226, !dbg !1270

; <label>:17:                                     ; preds = %10, %8
  %18 = phi %struct._IO_FILE* [ %9, %8 ], [ %11, %10 ]
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %18, i64 0, metadata !1170, metadata !730), !dbg !1257
  tail call void @fadvise(%struct._IO_FILE* %18, i32 2) #10, !dbg !1271
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %18, i64 0, metadata !1272, metadata !730) #10, !dbg !1277
  %19 = tail call %struct.linebuffer* @readlinebuffer(%struct.linebuffer* nonnull @line_buf, %struct._IO_FILE* %18) #10, !dbg !1279
  %20 = icmp eq %struct.linebuffer* %19, null, !dbg !1281
  br i1 %20, label %202, label %21, !dbg !1281

; <label>:21:                                     ; preds = %17
  br label %22, !dbg !1282

; <label>:22:                                     ; preds = %21, %198
  %23 = load i64, i64* getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @line_buf, i64 0, i32 1), align 8, !dbg !1282, !tbaa !1290
  %24 = add i64 %23, -1, !dbg !1292
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !1287, metadata !730) #10, !dbg !1293
  %25 = icmp ult i64 %24, 2, !dbg !1294
  br i1 %25, label %100, label %26, !dbg !1296

; <label>:26:                                     ; preds = %22
  %27 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @line_buf, i64 0, i32 2), align 8, !dbg !1297, !tbaa !1299
  %28 = load i8*, i8** @section_del, align 8, !dbg !1300, !tbaa !738
  %29 = tail call i32 @memcmp(i8* %27, i8* %28, i64 2) #13, !dbg !1301
  %30 = icmp eq i32 %29, 0, !dbg !1301
  br i1 %30, label %31, label %100, !dbg !1302

; <label>:31:                                     ; preds = %26
  %32 = load i64, i64* @header_del_len, align 8, !dbg !1304, !tbaa !874
  %33 = icmp eq i64 %24, %32, !dbg !1306
  br i1 %33, label %34, label %38, !dbg !1307

; <label>:34:                                     ; preds = %31
  %35 = load i8*, i8** @header_del, align 8, !dbg !1308, !tbaa !738
  %36 = tail call i32 @memcmp(i8* %27, i8* %35, i64 %24) #13, !dbg !1310
  %37 = icmp eq i32 %36, 0, !dbg !1310
  br i1 %37, label %52, label %38, !dbg !1311

; <label>:38:                                     ; preds = %34, %31
  %39 = load i64, i64* @body_del_len, align 8, !dbg !1312, !tbaa !874
  %40 = icmp eq i64 %24, %39, !dbg !1314
  br i1 %40, label %41, label %45, !dbg !1315

; <label>:41:                                     ; preds = %38
  %42 = load i8*, i8** @body_del, align 8, !dbg !1316, !tbaa !738
  %43 = tail call i32 @memcmp(i8* %27, i8* %42, i64 %24) #13, !dbg !1318
  %44 = icmp eq i32 %43, 0, !dbg !1318
  br i1 %44, label %68, label %45, !dbg !1319

; <label>:45:                                     ; preds = %41, %38
  %46 = load i64, i64* @footer_del_len, align 8, !dbg !1320, !tbaa !874
  %47 = icmp eq i64 %24, %46, !dbg !1322
  br i1 %47, label %48, label %100, !dbg !1323

; <label>:48:                                     ; preds = %45
  %49 = load i8*, i8** @footer_del, align 8, !dbg !1324, !tbaa !738
  %50 = tail call i32 @memcmp(i8* %27, i8* %49, i64 %24) #13, !dbg !1326
  %51 = icmp eq i32 %50, 0, !dbg !1326
  br i1 %51, label %84, label %100, !dbg !1327

; <label>:52:                                     ; preds = %34
  %53 = load i64, i64* bitcast (i8** @header_type to i64*), align 8, !dbg !1328, !tbaa !738
  store i64 %53, i64* bitcast (i8** @current_type to i64*), align 8, !dbg !1332, !tbaa !738
  store %struct.re_pattern_buffer* @header_regex, %struct.re_pattern_buffer** @current_regex, align 8, !dbg !1333, !tbaa !738
  %54 = load i1, i1* @reset_numbers, align 1
  br i1 %54, label %57, label %55, !dbg !1334

; <label>:55:                                     ; preds = %52
  %56 = load i64, i64* @starting_line_number, align 8, !dbg !1335, !tbaa !874
  store i64 %56, i64* @line_no, align 8, !dbg !1337, !tbaa !874
  br label %57, !dbg !1338

; <label>:57:                                     ; preds = %55, %52
  tail call void @llvm.dbg.value(metadata i32 10, i64 0, metadata !1339, metadata !730) #10, !dbg !1345
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1347, !tbaa !738
  %59 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %58, i64 0, i32 5, !dbg !1347
  %60 = load i8*, i8** %59, align 8, !dbg !1347, !tbaa !1348
  %61 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %58, i64 0, i32 6, !dbg !1347
  %62 = load i8*, i8** %61, align 8, !dbg !1347, !tbaa !1351
  %63 = icmp ult i8* %60, %62, !dbg !1347
  br i1 %63, label %66, label %64, !dbg !1347, !prof !1352

; <label>:64:                                     ; preds = %57
  %65 = tail call i32 @__overflow(%struct._IO_FILE* %58, i32 10) #10, !dbg !1353
  br label %198, !dbg !1353

; <label>:66:                                     ; preds = %57
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !1355
  store i8* %67, i8** %59, align 8, !dbg !1355, !tbaa !1348
  store i8 10, i8* %60, align 1, !dbg !1355, !tbaa !864
  br label %198, !dbg !1355

; <label>:68:                                     ; preds = %41
  %69 = load i64, i64* bitcast (i8** @body_type to i64*), align 8, !dbg !1357, !tbaa !738
  store i64 %69, i64* bitcast (i8** @current_type to i64*), align 8, !dbg !1360, !tbaa !738
  store %struct.re_pattern_buffer* @body_regex, %struct.re_pattern_buffer** @current_regex, align 8, !dbg !1361, !tbaa !738
  %70 = load i1, i1* @reset_numbers, align 1
  br i1 %70, label %73, label %71, !dbg !1362

; <label>:71:                                     ; preds = %68
  %72 = load i64, i64* @starting_line_number, align 8, !dbg !1363, !tbaa !874
  store i64 %72, i64* @line_no, align 8, !dbg !1365, !tbaa !874
  br label %73, !dbg !1366

; <label>:73:                                     ; preds = %71, %68
  tail call void @llvm.dbg.value(metadata i32 10, i64 0, metadata !1339, metadata !730) #10, !dbg !1367
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1369, !tbaa !738
  %75 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %74, i64 0, i32 5, !dbg !1369
  %76 = load i8*, i8** %75, align 8, !dbg !1369, !tbaa !1348
  %77 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %74, i64 0, i32 6, !dbg !1369
  %78 = load i8*, i8** %77, align 8, !dbg !1369, !tbaa !1351
  %79 = icmp ult i8* %76, %78, !dbg !1369
  br i1 %79, label %82, label %80, !dbg !1369, !prof !1352

; <label>:80:                                     ; preds = %73
  %81 = tail call i32 @__overflow(%struct._IO_FILE* %74, i32 10) #10, !dbg !1370
  br label %198, !dbg !1370

; <label>:82:                                     ; preds = %73
  %83 = getelementptr inbounds i8, i8* %76, i64 1, !dbg !1371
  store i8* %83, i8** %75, align 8, !dbg !1371, !tbaa !1348
  store i8 10, i8* %76, align 1, !dbg !1371, !tbaa !864
  br label %198, !dbg !1371

; <label>:84:                                     ; preds = %48
  %85 = load i64, i64* bitcast (i8** @footer_type to i64*), align 8, !dbg !1372, !tbaa !738
  store i64 %85, i64* bitcast (i8** @current_type to i64*), align 8, !dbg !1375, !tbaa !738
  store %struct.re_pattern_buffer* @footer_regex, %struct.re_pattern_buffer** @current_regex, align 8, !dbg !1376, !tbaa !738
  %86 = load i1, i1* @reset_numbers, align 1
  br i1 %86, label %89, label %87, !dbg !1377

; <label>:87:                                     ; preds = %84
  %88 = load i64, i64* @starting_line_number, align 8, !dbg !1378, !tbaa !874
  store i64 %88, i64* @line_no, align 8, !dbg !1380, !tbaa !874
  br label %89, !dbg !1381

; <label>:89:                                     ; preds = %87, %84
  tail call void @llvm.dbg.value(metadata i32 10, i64 0, metadata !1339, metadata !730) #10, !dbg !1382
  %90 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1384, !tbaa !738
  %91 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %90, i64 0, i32 5, !dbg !1384
  %92 = load i8*, i8** %91, align 8, !dbg !1384, !tbaa !1348
  %93 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %90, i64 0, i32 6, !dbg !1384
  %94 = load i8*, i8** %93, align 8, !dbg !1384, !tbaa !1351
  %95 = icmp ult i8* %92, %94, !dbg !1384
  br i1 %95, label %98, label %96, !dbg !1384, !prof !1352

; <label>:96:                                     ; preds = %89
  %97 = tail call i32 @__overflow(%struct._IO_FILE* %90, i32 10) #10, !dbg !1385
  br label %198, !dbg !1385

; <label>:98:                                     ; preds = %89
  %99 = getelementptr inbounds i8, i8* %92, i64 1, !dbg !1386
  store i8* %99, i8** %91, align 8, !dbg !1386, !tbaa !1348
  store i8 10, i8* %92, align 1, !dbg !1386, !tbaa !864
  br label %198, !dbg !1386

; <label>:100:                                    ; preds = %48, %45, %26, %22
  %101 = load i8*, i8** @current_type, align 8, !dbg !1387, !tbaa !738
  %102 = load i8, i8* %101, align 1, !dbg !1389, !tbaa !864
  %103 = sext i8 %102 to i32, !dbg !1389
  switch i32 %103, label %193 [
    i32 97, label %104
    i32 116, label %143
    i32 110, label %162
    i32 112, label %166
  ], !dbg !1390

; <label>:104:                                    ; preds = %100
  %105 = load i64, i64* @blank_join, align 8, !dbg !1391, !tbaa !874
  %106 = icmp sgt i64 %105, 1, !dbg !1394
  br i1 %106, label %107, label %130, !dbg !1395

; <label>:107:                                    ; preds = %104
  %108 = icmp ugt i64 %23, 1, !dbg !1396
  br i1 %108, label %113, label %109, !dbg !1399

; <label>:109:                                    ; preds = %107
  %110 = load i64, i64* @proc_text.blank_lines, align 8, !dbg !1400, !tbaa !874
  %111 = add nsw i64 %110, 1, !dbg !1400
  store i64 %111, i64* @proc_text.blank_lines, align 8, !dbg !1400, !tbaa !874
  %112 = icmp eq i64 %111, %105, !dbg !1402
  br i1 %112, label %113, label %126, !dbg !1403

; <label>:113:                                    ; preds = %109, %107
  %114 = load i8*, i8** @lineno_format, align 8, !dbg !1405, !tbaa !738
  %115 = load i32, i32* @lineno_width, align 4, !dbg !1405, !tbaa !972
  %116 = load i64, i64* @line_no, align 8, !dbg !1405, !tbaa !874
  %117 = load i8*, i8** @separator_str, align 8, !dbg !1405, !tbaa !738
  %118 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %114, i32 %115, i64 %116, i8* %117) #10, !dbg !1405
  %119 = load i64, i64* @page_incr, align 8, !dbg !1411, !tbaa !874
  %120 = icmp slt i64 %119, 0, !dbg !1412
  br i1 %120, label %121, label %123, !dbg !1414

; <label>:121:                                    ; preds = %113
  %122 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.66, i64 0, i64 0), i32 5) #10, !dbg !1415
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %122) #10, !dbg !1416
  unreachable, !dbg !1415

; <label>:123:                                    ; preds = %113
  %124 = load i64, i64* @line_no, align 8, !dbg !1418, !tbaa !874
  %125 = add nsw i64 %124, %119, !dbg !1419
  store i64 %125, i64* @line_no, align 8, !dbg !1420, !tbaa !874
  store i64 0, i64* @proc_text.blank_lines, align 8, !dbg !1421, !tbaa !874
  br label %193, !dbg !1422

; <label>:126:                                    ; preds = %109
  %127 = load i8*, i8** @print_no_line_fmt, align 8, !dbg !1423, !tbaa !738
  %128 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1423, !tbaa !738
  %129 = tail call i32 @fputs_unlocked(i8* %127, %struct._IO_FILE* %128) #10, !dbg !1423
  br label %193

; <label>:130:                                    ; preds = %104
  %131 = load i8*, i8** @lineno_format, align 8, !dbg !1424, !tbaa !738
  %132 = load i32, i32* @lineno_width, align 4, !dbg !1424, !tbaa !972
  %133 = load i64, i64* @line_no, align 8, !dbg !1424, !tbaa !874
  %134 = load i8*, i8** @separator_str, align 8, !dbg !1424, !tbaa !738
  %135 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %131, i32 %132, i64 %133, i8* %134) #10, !dbg !1424
  %136 = load i64, i64* @page_incr, align 8, !dbg !1426, !tbaa !874
  %137 = icmp slt i64 %136, 0, !dbg !1427
  br i1 %137, label %138, label %140, !dbg !1428

; <label>:138:                                    ; preds = %130
  %139 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.66, i64 0, i64 0), i32 5) #10, !dbg !1429
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %139) #10, !dbg !1430
  unreachable, !dbg !1429

; <label>:140:                                    ; preds = %130
  %141 = load i64, i64* @line_no, align 8, !dbg !1431, !tbaa !874
  %142 = add nsw i64 %141, %136, !dbg !1432
  store i64 %142, i64* @line_no, align 8, !dbg !1433, !tbaa !874
  br label %193

; <label>:143:                                    ; preds = %100
  %144 = icmp ugt i64 %23, 1, !dbg !1434
  br i1 %144, label %145, label %158, !dbg !1436

; <label>:145:                                    ; preds = %143
  %146 = load i8*, i8** @lineno_format, align 8, !dbg !1437, !tbaa !738
  %147 = load i32, i32* @lineno_width, align 4, !dbg !1437, !tbaa !972
  %148 = load i64, i64* @line_no, align 8, !dbg !1437, !tbaa !874
  %149 = load i8*, i8** @separator_str, align 8, !dbg !1437, !tbaa !738
  %150 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %146, i32 %147, i64 %148, i8* %149) #10, !dbg !1437
  %151 = load i64, i64* @page_incr, align 8, !dbg !1439, !tbaa !874
  %152 = icmp slt i64 %151, 0, !dbg !1440
  br i1 %152, label %153, label %155, !dbg !1441

; <label>:153:                                    ; preds = %145
  %154 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.66, i64 0, i64 0), i32 5) #10, !dbg !1442
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %154) #10, !dbg !1443
  unreachable, !dbg !1442

; <label>:155:                                    ; preds = %145
  %156 = load i64, i64* @line_no, align 8, !dbg !1444, !tbaa !874
  %157 = add nsw i64 %156, %151, !dbg !1445
  store i64 %157, i64* @line_no, align 8, !dbg !1446, !tbaa !874
  br label %193, !dbg !1447

; <label>:158:                                    ; preds = %143
  %159 = load i8*, i8** @print_no_line_fmt, align 8, !dbg !1448, !tbaa !738
  %160 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1448, !tbaa !738
  %161 = tail call i32 @fputs_unlocked(i8* %159, %struct._IO_FILE* %160) #10, !dbg !1448
  br label %193

; <label>:162:                                    ; preds = %100
  %163 = load i8*, i8** @print_no_line_fmt, align 8, !dbg !1449, !tbaa !738
  %164 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1449, !tbaa !738
  %165 = tail call i32 @fputs_unlocked(i8* %163, %struct._IO_FILE* %164) #10, !dbg !1449
  br label %193, !dbg !1450

; <label>:166:                                    ; preds = %100
  %167 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** @current_regex, align 8, !dbg !1451, !tbaa !738
  %168 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @line_buf, i64 0, i32 2), align 8, !dbg !1452, !tbaa !1299
  %169 = add i64 %23, 4294967295, !dbg !1453
  %170 = trunc i64 %169 to i32, !dbg !1454
  %171 = tail call i32 @re_search(%struct.re_pattern_buffer* %167, i8* %168, i32 %170, i32 0, i32 %170, %struct.re_registers* null) #10, !dbg !1455
  switch i32 %171, label %180 [
    i32 -2, label %172
    i32 -1, label %176
  ], !dbg !1456

; <label>:172:                                    ; preds = %166
  %173 = tail call i32* @__errno_location() #1, !dbg !1457
  %174 = load i32, i32* %173, align 4, !dbg !1457, !tbaa !972
  %175 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.65, i64 0, i64 0), i32 5) #10, !dbg !1459
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %174, i8* %175) #10, !dbg !1461
  unreachable, !dbg !1457

; <label>:176:                                    ; preds = %166
  %177 = load i8*, i8** @print_no_line_fmt, align 8, !dbg !1463, !tbaa !738
  %178 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1463, !tbaa !738
  %179 = tail call i32 @fputs_unlocked(i8* %177, %struct._IO_FILE* %178) #10, !dbg !1463
  br label %193, !dbg !1464

; <label>:180:                                    ; preds = %166
  %181 = load i8*, i8** @lineno_format, align 8, !dbg !1465, !tbaa !738
  %182 = load i32, i32* @lineno_width, align 4, !dbg !1465, !tbaa !972
  %183 = load i64, i64* @line_no, align 8, !dbg !1465, !tbaa !874
  %184 = load i8*, i8** @separator_str, align 8, !dbg !1465, !tbaa !738
  %185 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %181, i32 %182, i64 %183, i8* %184) #10, !dbg !1465
  %186 = load i64, i64* @page_incr, align 8, !dbg !1467, !tbaa !874
  %187 = icmp slt i64 %186, 0, !dbg !1468
  br i1 %187, label %188, label %190, !dbg !1469

; <label>:188:                                    ; preds = %180
  %189 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.66, i64 0, i64 0), i32 5) #10, !dbg !1470
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %189) #10, !dbg !1471
  unreachable, !dbg !1470

; <label>:190:                                    ; preds = %180
  %191 = load i64, i64* @line_no, align 8, !dbg !1472, !tbaa !874
  %192 = add nsw i64 %191, %186, !dbg !1473
  store i64 %192, i64* @line_no, align 8, !dbg !1474, !tbaa !874
  br label %193, !dbg !1475

; <label>:193:                                    ; preds = %190, %176, %162, %158, %155, %140, %126, %123, %100
  %194 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @line_buf, i64 0, i32 2), align 8, !dbg !1476, !tbaa !1299
  %195 = load i64, i64* getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @line_buf, i64 0, i32 1), align 8, !dbg !1476, !tbaa !1290
  %196 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1476, !tbaa !738
  %197 = tail call i64 @fwrite_unlocked(i8* %194, i64 1, i64 %195, %struct._IO_FILE* %196) #10, !dbg !1476
  br label %198, !dbg !1477

; <label>:198:                                    ; preds = %193, %98, %96, %82, %80, %66, %64
  %199 = tail call %struct.linebuffer* @readlinebuffer(%struct.linebuffer* nonnull @line_buf, %struct._IO_FILE* %18) #10, !dbg !1279
  %200 = icmp eq %struct.linebuffer* %199, null, !dbg !1281
  br i1 %200, label %201, label %22, !dbg !1281, !llvm.loop !1478

; <label>:201:                                    ; preds = %198
  br label %202, !dbg !1481

; <label>:202:                                    ; preds = %201, %17
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %18, i64 0, metadata !1486, metadata !730), !dbg !1481
  %203 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %18, i64 0, i32 0, !dbg !1489
  %204 = load i32, i32* %203, align 8, !dbg !1489, !tbaa !1490
  %205 = and i32 %204, 32, !dbg !1489
  %206 = icmp eq i32 %205, 0, !dbg !1491
  br i1 %206, label %211, label %207, !dbg !1492

; <label>:207:                                    ; preds = %202
  %208 = tail call i32* @__errno_location() #1, !dbg !1493
  %209 = load i32, i32* %208, align 4, !dbg !1493, !tbaa !972
  %210 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #10, !dbg !1495
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %209, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.60, i64 0, i64 0), i8* %210) #10, !dbg !1497
  br label %226, !dbg !1499

; <label>:211:                                    ; preds = %202
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1234, metadata !730), !dbg !1500
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1235, metadata !730), !dbg !1501
  %212 = load i8, i8* %0, align 1, !dbg !1502, !tbaa !864
  %213 = icmp eq i8 %212, 45, !dbg !1504
  br i1 %213, label %214, label %219, !dbg !1507

; <label>:214:                                    ; preds = %211
  %215 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1509
  %216 = load i8, i8* %215, align 1, !dbg !1509, !tbaa !864
  %217 = icmp eq i8 %216, 0, !dbg !1512
  br i1 %217, label %218, label %219, !dbg !1514

; <label>:218:                                    ; preds = %214
  tail call void @clearerr_unlocked(%struct._IO_FILE* nonnull %18) #10, !dbg !1515
  br label %226, !dbg !1515

; <label>:219:                                    ; preds = %211, %214
  %220 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %18) #10, !dbg !1516
  %221 = icmp eq i32 %220, -1, !dbg !1518
  br i1 %221, label %222, label %226, !dbg !1519

; <label>:222:                                    ; preds = %219
  %223 = tail call i32* @__errno_location() #1, !dbg !1520
  %224 = load i32, i32* %223, align 4, !dbg !1520, !tbaa !972
  %225 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* nonnull %0) #10, !dbg !1522
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %224, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.60, i64 0, i64 0), i8* %225) #10, !dbg !1524
  br label %226, !dbg !1526

; <label>:226:                                    ; preds = %218, %219, %222, %207, %13
  %227 = phi i1 [ false, %207 ], [ false, %222 ], [ false, %13 ], [ true, %219 ], [ true, %218 ]
  ret i1 %227, !dbg !1527
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #8

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

declare i32 @re_search(%struct.re_pattern_buffer*, i8*, i32, i32, i32, %struct.re_registers*) local_unnamed_addr #3

declare i64 @fwrite_unlocked(i8*, i64, i64, %struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @clearerr_unlocked(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !1528 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1530, metadata !730), !dbg !1531
  store i8* %0, i8** @file_name, align 8, !dbg !1532, !tbaa !738
  ret void, !dbg !1533
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !1534 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !1538, metadata !1539), !dbg !1540
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1541, !tbaa !1542
  ret void, !dbg !1544
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !1545 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1550, !tbaa !738
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #10, !dbg !1551
  %3 = icmp eq i32 %2, 0, !dbg !1552
  br i1 %3, label %21, label %4, !dbg !1553

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1554, !tbaa !1542, !range !1556
  %6 = icmp eq i8 %5, 0, !dbg !1554
  %7 = tail call i32* @__errno_location() #1, !dbg !1557
  br i1 %6, label %11, label %8, !dbg !1559

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !1560, !tbaa !972
  %10 = icmp eq i32 %9, 32, !dbg !1562
  br i1 %10, label %21, label %11, !dbg !1563

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i64 0, i64 0), i32 5) #10, !dbg !1565
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !1547, metadata !730), !dbg !1566
  %13 = load i8*, i8** @file_name, align 8, !dbg !1567, !tbaa !738
  %14 = icmp eq i8* %13, null, !dbg !1567
  %15 = load i32, i32* %7, align 4, !tbaa !972
  br i1 %14, label %18, label %16, !dbg !1568

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #10, !dbg !1569
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.33, i64 0, i64 0), i8* %17, i8* %12) #10, !dbg !1571
  br label %19, !dbg !1573

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.34, i64 0, i64 0), i8* %12) #10, !dbg !1574
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !1575, !tbaa !972
  tail call void @_exit(i32 %20) #14, !dbg !1576
  unreachable, !dbg !1576

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1577, !tbaa !738
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #10, !dbg !1579
  %24 = icmp eq i32 %23, 0, !dbg !1580
  br i1 %24, label %27, label %25, !dbg !1581

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !1582, !tbaa !972
  tail call void @_exit(i32 %26) #14, !dbg !1583
  unreachable, !dbg !1583

; <label>:27:                                     ; preds = %21
  ret void, !dbg !1584
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define void @fdadvise(i32, i64, i64, i32) local_unnamed_addr #6 !dbg !1585 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1592, metadata !730), !dbg !1598
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1593, metadata !730), !dbg !1599
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !1594, metadata !730), !dbg !1600
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1595, metadata !730), !dbg !1601
  %5 = tail call i32 @posix_fadvise(i32 %0, i64 %1, i64 %2, i32 %3) #10, !dbg !1602
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1596, metadata !730), !dbg !1602
  ret void, !dbg !1603
}

; Function Attrs: nounwind
declare i32 @posix_fadvise(i32, i64, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @fadvise(%struct._IO_FILE*, i32) local_unnamed_addr #6 !dbg !1604 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !1648, metadata !730), !dbg !1650
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1649, metadata !730), !dbg !1651
  %3 = icmp eq %struct._IO_FILE* %0, null, !dbg !1652
  br i1 %3, label %7, label %4, !dbg !1654

; <label>:4:                                      ; preds = %2
  %5 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !1655
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1592, metadata !730) #10, !dbg !1656
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1593, metadata !730) #10, !dbg !1659
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1594, metadata !730) #10, !dbg !1660
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1595, metadata !730) #10, !dbg !1661
  %6 = tail call i32 @posix_fadvise(i32 %5, i64 0, i64 0, i32 %1) #10, !dbg !1662
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1596, metadata !730) #10, !dbg !1662
  br label %7, !dbg !1663

; <label>:7:                                      ; preds = %2, %4
  ret void, !dbg !1664
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @initbuffer(%struct.linebuffer* nocapture) local_unnamed_addr #6 !dbg !1665 {
  tail call void @llvm.dbg.value(metadata %struct.linebuffer* %0, i64 0, metadata !1676, metadata !730), !dbg !1677
  %2 = bitcast %struct.linebuffer* %0 to i8*, !dbg !1678
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 24, i32 8, i1 false), !dbg !1678
  ret void, !dbg !1679
}

; Function Attrs: nounwind sspstrong uwtable
define %struct.linebuffer* @readlinebuffer(%struct.linebuffer*, %struct._IO_FILE*) local_unnamed_addr #6 !dbg !1680 {
  tail call void @llvm.dbg.value(metadata %struct.linebuffer* %0, i64 0, metadata !1724, metadata !730), !dbg !1726
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, i64 0, metadata !1725, metadata !730), !dbg !1727
  tail call void @llvm.dbg.value(metadata %struct.linebuffer* %0, i64 0, metadata !1728, metadata !730) #10, !dbg !1743
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, i64 0, metadata !1733, metadata !730) #10, !dbg !1745
  tail call void @llvm.dbg.value(metadata i8 10, i64 0, metadata !1734, metadata !730) #10, !dbg !1746
  %3 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 2, !dbg !1747
  %4 = load i8*, i8** %3, align 8, !dbg !1747, !tbaa !1299
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !1736, metadata !730) #10, !dbg !1748
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !1737, metadata !730) #10, !dbg !1749
  %5 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 0, !dbg !1750
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, i64 0, metadata !1751, metadata !730) #10, !dbg !1756
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1, i64 0, i32 0, !dbg !1759
  %7 = load i32, i32* %6, align 8, !dbg !1759, !tbaa !1490
  %8 = and i32 %7, 16, !dbg !1759
  %9 = icmp eq i32 %8, 0, !dbg !1760
  br i1 %9, label %10, label %63, !dbg !1761, !llvm.loop !1762

; <label>:10:                                     ; preds = %2
  %11 = load i64, i64* %5, align 8, !dbg !1750, !tbaa !1765
  %12 = getelementptr inbounds i8, i8* %4, i64 %11, !dbg !1766
  %13 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1, i64 0, i32 1
  %14 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1, i64 0, i32 2
  br label %15, !dbg !1767

; <label>:15:                                     ; preds = %48, %10
  %16 = phi i8* [ %49, %48 ], [ %4, %10 ]
  %17 = phi i8* [ %53, %48 ], [ %4, %10 ]
  %18 = phi i8* [ %51, %48 ], [ %12, %10 ]
  tail call void @llvm.dbg.value(metadata i8* %18, i64 0, metadata !1738, metadata !730) #10, !dbg !1767
  tail call void @llvm.dbg.value(metadata i8* %17, i64 0, metadata !1737, metadata !730) #10, !dbg !1749
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !1736, metadata !730) #10, !dbg !1748
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, i64 0, metadata !1768, metadata !730) #10, !dbg !1771
  %19 = load i8*, i8** %13, align 8, !dbg !1773, !tbaa !1774
  %20 = load i8*, i8** %14, align 8, !dbg !1773, !tbaa !1775
  %21 = icmp ult i8* %19, %20, !dbg !1773
  br i1 %21, label %22, label %26, !dbg !1773, !prof !1352

; <label>:22:                                     ; preds = %15
  %23 = getelementptr inbounds i8, i8* %19, i64 1, !dbg !1776
  store i8* %23, i8** %13, align 8, !dbg !1776, !tbaa !1774
  %24 = load i8, i8* %19, align 1, !dbg !1776, !tbaa !864
  %25 = zext i8 %24 to i32, !dbg !1776
  tail call void @llvm.dbg.value(metadata i32 %27, i64 0, metadata !1735, metadata !730) #10, !dbg !1778
  br label %39, !dbg !1779

; <label>:26:                                     ; preds = %15
  %27 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %1) #10, !dbg !1780
  tail call void @llvm.dbg.value(metadata i32 %27, i64 0, metadata !1735, metadata !730) #10, !dbg !1778
  %28 = icmp eq i32 %27, -1, !dbg !1782
  br i1 %28, label %29, label %39, !dbg !1779

; <label>:29:                                     ; preds = %26
  %30 = icmp eq i8* %17, %16, !dbg !1784
  br i1 %30, label %62, label %31, !dbg !1787

; <label>:31:                                     ; preds = %29
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, i64 0, metadata !1788, metadata !730) #10, !dbg !1791
  %32 = load i32, i32* %6, align 8, !dbg !1794, !tbaa !1490
  %33 = and i32 %32, 32, !dbg !1794
  %34 = icmp eq i32 %33, 0, !dbg !1795
  br i1 %34, label %35, label %62, !dbg !1796

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %17, i64 -1, !dbg !1798
  %37 = load i8, i8* %36, align 1, !dbg !1798, !tbaa !864
  %38 = icmp eq i8 %37, 10, !dbg !1800
  br i1 %38, label %55, label %39, !dbg !1801

; <label>:39:                                     ; preds = %35, %26, %22
  %40 = phi i32 [ %27, %26 ], [ %25, %22 ], [ 10, %35 ]
  tail call void @llvm.dbg.value(metadata i32 %40, i64 0, metadata !1735, metadata !730) #10, !dbg !1778
  %41 = icmp eq i8* %17, %18, !dbg !1802
  br i1 %41, label %42, label %48, !dbg !1803

; <label>:42:                                     ; preds = %39
  %43 = load i64, i64* %5, align 8, !dbg !1804, !tbaa !1765
  tail call void @llvm.dbg.value(metadata i64 %43, i64 0, metadata !1739, metadata !730) #10, !dbg !1805
  %44 = tail call i8* @x2realloc(i8* %16, i64* %5) #10, !dbg !1806
  tail call void @llvm.dbg.value(metadata i8* %44, i64 0, metadata !1736, metadata !730) #10, !dbg !1748
  %45 = getelementptr inbounds i8, i8* %44, i64 %43, !dbg !1807
  tail call void @llvm.dbg.value(metadata i8* %45, i64 0, metadata !1737, metadata !730) #10, !dbg !1749
  store i8* %44, i8** %3, align 8, !dbg !1808, !tbaa !1299
  %46 = load i64, i64* %5, align 8, !dbg !1809, !tbaa !1765
  %47 = getelementptr inbounds i8, i8* %44, i64 %46, !dbg !1810
  tail call void @llvm.dbg.value(metadata i8* %47, i64 0, metadata !1738, metadata !730) #10, !dbg !1767
  br label %48, !dbg !1811

; <label>:48:                                     ; preds = %42, %39
  %49 = phi i8* [ %44, %42 ], [ %16, %39 ]
  %50 = phi i8* [ %45, %42 ], [ %17, %39 ]
  %51 = phi i8* [ %47, %42 ], [ %18, %39 ]
  tail call void @llvm.dbg.value(metadata i8* %51, i64 0, metadata !1738, metadata !730) #10, !dbg !1767
  tail call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !1737, metadata !730) #10, !dbg !1749
  tail call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !1736, metadata !730) #10, !dbg !1748
  %52 = trunc i32 %40 to i8, !dbg !1812
  %53 = getelementptr inbounds i8, i8* %50, i64 1, !dbg !1813
  tail call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1737, metadata !730) #10, !dbg !1749
  store i8 %52, i8* %50, align 1, !dbg !1814, !tbaa !864
  %54 = icmp eq i32 %40, 10, !dbg !1815
  br i1 %54, label %55, label %15, !dbg !1816, !llvm.loop !1762

; <label>:55:                                     ; preds = %48, %35
  %56 = phi i8* [ %16, %35 ], [ %49, %48 ]
  %57 = phi i8* [ %17, %35 ], [ %53, %48 ]
  tail call void @llvm.dbg.value(metadata i8* %57, i64 0, metadata !1737, metadata !730) #10, !dbg !1749
  tail call void @llvm.dbg.value(metadata i8* %56, i64 0, metadata !1736, metadata !730) #10, !dbg !1748
  %58 = ptrtoint i8* %57 to i64, !dbg !1818
  %59 = ptrtoint i8* %56 to i64, !dbg !1818
  %60 = sub i64 %58, %59, !dbg !1818
  %61 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 1, !dbg !1819
  store i64 %60, i64* %61, align 8, !dbg !1820, !tbaa !1290
  br label %63, !dbg !1821

; <label>:62:                                     ; preds = %31, %29
  br label %63, !dbg !1822

; <label>:63:                                     ; preds = %62, %2, %55
  %64 = phi %struct.linebuffer* [ %0, %55 ], [ null, %2 ], [ null, %62 ]
  ret %struct.linebuffer* %64, !dbg !1822
}

declare i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define %struct.linebuffer* @readlinebuffer_delim(%struct.linebuffer*, %struct._IO_FILE*, i8 signext) local_unnamed_addr #6 !dbg !1729 {
  tail call void @llvm.dbg.value(metadata %struct.linebuffer* %0, i64 0, metadata !1728, metadata !730), !dbg !1823
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, i64 0, metadata !1733, metadata !730), !dbg !1824
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1734, metadata !730), !dbg !1825
  %4 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 2, !dbg !1826
  %5 = load i8*, i8** %4, align 8, !dbg !1826, !tbaa !1299
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !1736, metadata !730), !dbg !1827
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !1737, metadata !730), !dbg !1828
  %6 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 0, !dbg !1829
  tail call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !1738, metadata !730), !dbg !1830
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, i64 0, metadata !1751, metadata !730), !dbg !1831
  %7 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1, i64 0, i32 0, !dbg !1833
  %8 = load i32, i32* %7, align 8, !dbg !1833, !tbaa !1490
  %9 = and i32 %8, 16, !dbg !1833
  %10 = icmp eq i32 %9, 0, !dbg !1834
  br i1 %10, label %11, label %65, !dbg !1835, !llvm.loop !1762

; <label>:11:                                     ; preds = %3
  %12 = load i64, i64* %6, align 8, !dbg !1829, !tbaa !1765
  %13 = getelementptr inbounds i8, i8* %5, i64 %12, !dbg !1836
  %14 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1, i64 0, i32 1
  %15 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1, i64 0, i32 2
  %16 = sext i8 %2 to i32
  br label %17, !dbg !1830

; <label>:17:                                     ; preds = %11, %50
  %18 = phi i8* [ %51, %50 ], [ %5, %11 ]
  %19 = phi i8* [ %55, %50 ], [ %5, %11 ]
  %20 = phi i8* [ %53, %50 ], [ %13, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !1738, metadata !730), !dbg !1830
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !1737, metadata !730), !dbg !1828
  tail call void @llvm.dbg.value(metadata i8* %18, i64 0, metadata !1736, metadata !730), !dbg !1827
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, i64 0, metadata !1768, metadata !730) #10, !dbg !1837
  %21 = load i8*, i8** %14, align 8, !dbg !1839, !tbaa !1774
  %22 = load i8*, i8** %15, align 8, !dbg !1839, !tbaa !1775
  %23 = icmp ult i8* %21, %22, !dbg !1839
  br i1 %23, label %24, label %28, !dbg !1839, !prof !1352

; <label>:24:                                     ; preds = %17
  %25 = getelementptr inbounds i8, i8* %21, i64 1, !dbg !1840
  store i8* %25, i8** %14, align 8, !dbg !1840, !tbaa !1774
  %26 = load i8, i8* %21, align 1, !dbg !1840, !tbaa !864
  %27 = zext i8 %26 to i32, !dbg !1840
  tail call void @llvm.dbg.value(metadata i32 %29, i64 0, metadata !1735, metadata !730), !dbg !1841
  br label %41, !dbg !1842

; <label>:28:                                     ; preds = %17
  %29 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %1) #10, !dbg !1843
  tail call void @llvm.dbg.value(metadata i32 %29, i64 0, metadata !1735, metadata !730), !dbg !1841
  %30 = icmp eq i32 %29, -1, !dbg !1844
  br i1 %30, label %31, label %41, !dbg !1842

; <label>:31:                                     ; preds = %28
  %32 = icmp eq i8* %19, %18, !dbg !1845
  br i1 %32, label %64, label %33, !dbg !1846

; <label>:33:                                     ; preds = %31
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, i64 0, metadata !1788, metadata !730), !dbg !1847
  %34 = load i32, i32* %7, align 8, !dbg !1849, !tbaa !1490
  %35 = and i32 %34, 32, !dbg !1849
  %36 = icmp eq i32 %35, 0, !dbg !1850
  br i1 %36, label %37, label %64, !dbg !1851

; <label>:37:                                     ; preds = %33
  %38 = getelementptr inbounds i8, i8* %19, i64 -1, !dbg !1852
  %39 = load i8, i8* %38, align 1, !dbg !1852, !tbaa !864
  %40 = icmp eq i8 %39, %2, !dbg !1853
  br i1 %40, label %57, label %41, !dbg !1854

; <label>:41:                                     ; preds = %37, %24, %28
  %42 = phi i32 [ %29, %28 ], [ %27, %24 ], [ %16, %37 ]
  tail call void @llvm.dbg.value(metadata i32 %42, i64 0, metadata !1735, metadata !730), !dbg !1841
  %43 = icmp eq i8* %19, %20, !dbg !1855
  br i1 %43, label %44, label %50, !dbg !1856

; <label>:44:                                     ; preds = %41
  %45 = load i64, i64* %6, align 8, !dbg !1857, !tbaa !1765
  tail call void @llvm.dbg.value(metadata i64 %45, i64 0, metadata !1739, metadata !730), !dbg !1858
  %46 = tail call i8* @x2realloc(i8* %18, i64* %6) #10, !dbg !1859
  tail call void @llvm.dbg.value(metadata i8* %46, i64 0, metadata !1736, metadata !730), !dbg !1827
  %47 = getelementptr inbounds i8, i8* %46, i64 %45, !dbg !1860
  tail call void @llvm.dbg.value(metadata i8* %47, i64 0, metadata !1737, metadata !730), !dbg !1828
  store i8* %46, i8** %4, align 8, !dbg !1861, !tbaa !1299
  %48 = load i64, i64* %6, align 8, !dbg !1862, !tbaa !1765
  %49 = getelementptr inbounds i8, i8* %46, i64 %48, !dbg !1863
  tail call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !1738, metadata !730), !dbg !1830
  br label %50, !dbg !1864

; <label>:50:                                     ; preds = %44, %41
  %51 = phi i8* [ %46, %44 ], [ %18, %41 ]
  %52 = phi i8* [ %47, %44 ], [ %19, %41 ]
  %53 = phi i8* [ %49, %44 ], [ %20, %41 ]
  tail call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1738, metadata !730), !dbg !1830
  tail call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1737, metadata !730), !dbg !1828
  tail call void @llvm.dbg.value(metadata i8* %51, i64 0, metadata !1736, metadata !730), !dbg !1827
  %54 = trunc i32 %42 to i8, !dbg !1865
  %55 = getelementptr inbounds i8, i8* %52, i64 1, !dbg !1866
  tail call void @llvm.dbg.value(metadata i8* %55, i64 0, metadata !1737, metadata !730), !dbg !1828
  store i8 %54, i8* %52, align 1, !dbg !1867, !tbaa !864
  %56 = icmp eq i32 %42, %16, !dbg !1868
  br i1 %56, label %57, label %17, !dbg !1869, !llvm.loop !1762

; <label>:57:                                     ; preds = %50, %37
  %58 = phi i8* [ %18, %37 ], [ %51, %50 ]
  %59 = phi i8* [ %19, %37 ], [ %55, %50 ]
  tail call void @llvm.dbg.value(metadata i8* %59, i64 0, metadata !1737, metadata !730), !dbg !1828
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !1736, metadata !730), !dbg !1827
  %60 = ptrtoint i8* %59 to i64, !dbg !1870
  %61 = ptrtoint i8* %58 to i64, !dbg !1870
  %62 = sub i64 %60, %61, !dbg !1870
  %63 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 1, !dbg !1871
  store i64 %62, i64* %63, align 8, !dbg !1872, !tbaa !1290
  br label %65, !dbg !1873

; <label>:64:                                     ; preds = %33, %31
  br label %65, !dbg !1874

; <label>:65:                                     ; preds = %64, %3, %57
  %66 = phi %struct.linebuffer* [ %0, %57 ], [ null, %3 ], [ null, %64 ]
  ret %struct.linebuffer* %66, !dbg !1874
}

; Function Attrs: nounwind sspstrong uwtable
define void @freebuffer(%struct.linebuffer* nocapture readonly) local_unnamed_addr #6 !dbg !1875 {
  tail call void @llvm.dbg.value(metadata %struct.linebuffer* %0, i64 0, metadata !1877, metadata !730), !dbg !1878
  %2 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 2, !dbg !1879
  %3 = load i8*, i8** %2, align 8, !dbg !1879, !tbaa !1299
  tail call void @free(i8* %3) #10, !dbg !1880
  ret void, !dbg !1881
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !1882 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1884, metadata !730), !dbg !1887
  %2 = icmp eq i8* %0, null, !dbg !1888
  br i1 %2, label %3, label %6, !dbg !1890

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1891, !tbaa !738
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.67, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #16, !dbg !1893
  tail call void @abort() #14, !dbg !1894
  unreachable, !dbg !1894

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #13, !dbg !1895
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1885, metadata !730), !dbg !1896
  %8 = icmp ne i8* %7, null, !dbg !1897
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1898
  %10 = select i1 %8, i8* %9, i8* %0, !dbg !1900
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1886, metadata !730), !dbg !1901
  %11 = ptrtoint i8* %10 to i64, !dbg !1902
  %12 = ptrtoint i8* %0 to i64, !dbg !1902
  %13 = sub i64 %11, %12, !dbg !1902
  %14 = icmp sgt i64 %13, 6, !dbg !1904
  br i1 %14, label %15, label %24, !dbg !1905

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1906
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.68, i64 0, i64 0), i64 7) #13, !dbg !1906
  %18 = icmp eq i32 %17, 0, !dbg !1908
  br i1 %18, label %19, label %24, !dbg !1909

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1884, metadata !730), !dbg !1887
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.69, i64 0, i64 0), i64 3) #13, !dbg !1910
  %21 = icmp eq i32 %20, 0, !dbg !1913
  br i1 %21, label %22, label %24, !dbg !1914

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1915
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !1884, metadata !730), !dbg !1887
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1917, !tbaa !738
  br label %24, !dbg !1918

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !1884, metadata !730), !dbg !1887
  store i8* %25, i8** @program_name, align 8, !dbg !1919, !tbaa !738
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1920, !tbaa !738
  ret void, !dbg !1921
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #10

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !1922 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1927, metadata !730), !dbg !1930
  %2 = tail call i32* @__errno_location() #1, !dbg !1931
  %3 = load i32, i32* %2, align 4, !dbg !1931, !tbaa !972
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1928, metadata !730), !dbg !1932
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !1933
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !1934
  %6 = select i1 %4, i8* %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), !dbg !1934
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #10, !dbg !1936
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1936
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !1929, metadata !730), !dbg !1937
  store i32 %3, i32* %2, align 4, !dbg !1938, !tbaa !972
  ret %struct.quoting_options* %8, !dbg !1939
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #11 !dbg !1940 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1946, metadata !730), !dbg !1947
  %2 = icmp ne %struct.quoting_options* %0, null, !dbg !1948
  %3 = select i1 %2, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1948
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1949
  %5 = load i32, i32* %4, align 8, !dbg !1949, !tbaa !1951
  ret i32 %5, !dbg !1953
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1954 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1958, metadata !730), !dbg !1960
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1959, metadata !730), !dbg !1961
  %3 = icmp ne %struct.quoting_options* %0, null, !dbg !1962
  %4 = select i1 %3, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1962
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1963
  store i32 %1, i32* %5, align 8, !dbg !1965, !tbaa !1951
  ret void, !dbg !1966
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !1967 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1971, metadata !730), !dbg !1979
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1972, metadata !730), !dbg !1980
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !1973, metadata !730), !dbg !1981
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1974, metadata !730), !dbg !1982
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !1983
  %5 = select i1 %4, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1983
  %6 = lshr i8 %1, 5, !dbg !1984
  %7 = zext i8 %6 to i64, !dbg !1984
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1986
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1975, metadata !730), !dbg !1987
  %9 = and i8 %1, 31, !dbg !1988
  %10 = zext i8 %9 to i32, !dbg !1989
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1977, metadata !730), !dbg !1990
  %11 = load i32, i32* %8, align 4, !dbg !1991, !tbaa !972
  %12 = lshr i32 %11, %10, !dbg !1992
  %13 = and i32 %12, 1, !dbg !1993
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1978, metadata !730), !dbg !1994
  %14 = and i32 %2, 1, !dbg !1995
  %15 = xor i32 %13, %14, !dbg !1996
  %16 = shl i32 %15, %10, !dbg !1997
  %17 = xor i32 %16, %11, !dbg !1998
  store i32 %17, i32* %8, align 4, !dbg !1998, !tbaa !972
  ret i32 %13, !dbg !1999
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !2000 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2004, metadata !730), !dbg !2007
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2005, metadata !730), !dbg !2008
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2009
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2004, metadata !730), !dbg !2007
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2011
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2004, metadata !730), !dbg !2007
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2012
  %6 = load i32, i32* %5, align 4, !dbg !2012, !tbaa !2013
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !2006, metadata !730), !dbg !2014
  store i32 %1, i32* %5, align 4, !dbg !2015, !tbaa !2013
  ret i32 %6, !dbg !2016
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !2017 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2021, metadata !730), !dbg !2024
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2022, metadata !730), !dbg !2025
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2023, metadata !730), !dbg !2026
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2027
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2021, metadata !730), !dbg !2024
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2029
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2021, metadata !730), !dbg !2024
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2030
  store i32 10, i32* %6, align 8, !dbg !2031, !tbaa !1951
  %7 = icmp ne i8* %1, null, !dbg !2032
  %8 = icmp ne i8* %2, null, !dbg !2034
  %9 = and i1 %7, %8, !dbg !2036
  br i1 %9, label %11, label %10, !dbg !2036

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !2037
  unreachable, !dbg !2037

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2038
  store i8* %1, i8** %12, align 8, !dbg !2039, !tbaa !2040
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2041
  store i8* %2, i8** %13, align 8, !dbg !2042, !tbaa !2043
  ret void, !dbg !2044
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !2045 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2049, metadata !730), !dbg !2057
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2050, metadata !730), !dbg !2058
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2051, metadata !730), !dbg !2059
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2052, metadata !730), !dbg !2060
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2053, metadata !730), !dbg !2061
  %6 = icmp ne %struct.quoting_options* %4, null, !dbg !2062
  %7 = select i1 %6, %struct.quoting_options* %4, %struct.quoting_options* @default_quoting_options, !dbg !2062
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !2054, metadata !730), !dbg !2063
  %8 = tail call i32* @__errno_location() #1, !dbg !2064
  %9 = load i32, i32* %8, align 4, !dbg !2064, !tbaa !972
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !2055, metadata !730), !dbg !2065
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !2066
  %11 = load i32, i32* %10, align 8, !dbg !2066, !tbaa !1951
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !2067
  %13 = load i32, i32* %12, align 4, !dbg !2067, !tbaa !2013
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !2068
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !2069
  %16 = load i8*, i8** %15, align 8, !dbg !2069, !tbaa !2040
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !2070
  %18 = load i8*, i8** %17, align 8, !dbg !2070, !tbaa !2043
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !2071
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2056, metadata !730), !dbg !2072
  store i32 %9, i32* %8, align 4, !dbg !2073, !tbaa !972
  ret i64 %19, !dbg !2074
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !2075 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2081, metadata !730), !dbg !2144
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2082, metadata !730), !dbg !2145
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2083, metadata !730), !dbg !2146
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2084, metadata !730), !dbg !2147
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !2085, metadata !730), !dbg !2148
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !2086, metadata !730), !dbg !2149
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !2087, metadata !730), !dbg !2150
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !2088, metadata !730), !dbg !2151
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !2089, metadata !730), !dbg !2152
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2091, metadata !730), !dbg !2153
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2092, metadata !730), !dbg !2154
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2093, metadata !730), !dbg !2155
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2094, metadata !730), !dbg !2156
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2095, metadata !730), !dbg !2157
  %13 = tail call i64 @__ctype_get_mb_cur_max() #10, !dbg !2158
  %14 = icmp eq i64 %13, 1, !dbg !2159
  %15 = lshr i32 %5, 1, !dbg !2160
  %16 = trunc i32 %15 to i8, !dbg !2160
  %17 = and i8 %16, 1, !dbg !2160
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !2097, metadata !730), !dbg !2160
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2098, metadata !730), !dbg !2161
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2099, metadata !730), !dbg !2162
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2100, metadata !730), !dbg !2163
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !2164

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !2082, metadata !730), !dbg !2145
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !2100, metadata !730), !dbg !2163
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !2099, metadata !730), !dbg !2162
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !2098, metadata !730), !dbg !2161
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !2097, metadata !730), !dbg !2160
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !2084, metadata !730), !dbg !2147
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !2095, metadata !730), !dbg !2157
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !2094, metadata !730), !dbg !2156
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !2093, metadata !730), !dbg !2155
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !2092, metadata !730), !dbg !2154
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2091, metadata !730), !dbg !2153
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !2089, metadata !730), !dbg !2152
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !2088, metadata !730), !dbg !2151
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !2085, metadata !730), !dbg !2148
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
  ], !dbg !2165

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !2085, metadata !730), !dbg !2148
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2097, metadata !730), !dbg !2160
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !2097, metadata !730), !dbg !2160
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !2085, metadata !730), !dbg !2148
  br label %95, !dbg !2166

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !2097, metadata !730), !dbg !2160
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !2085, metadata !730), !dbg !2148
  %43 = and i8 %36, 1, !dbg !2168
  %44 = icmp eq i8 %43, 0, !dbg !2168
  br i1 %44, label %45, label %95, !dbg !2166

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !2170
  br i1 %46, label %95, label %47, !dbg !2174

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !2176, !tbaa !864
  br label %95, !dbg !2176

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.80, i64 0, i64 0), i32 %28), !dbg !2178
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !2088, metadata !730), !dbg !2151
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.81, i64 0, i64 0), i32 %28), !dbg !2182
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !2089, metadata !730), !dbg !2152
  br label %51, !dbg !2183

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !2089, metadata !730), !dbg !2152
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !2088, metadata !730), !dbg !2151
  %54 = and i8 %36, 1, !dbg !2184
  %55 = icmp eq i8 %54, 0, !dbg !2184
  br i1 %55, label %56, label %73, !dbg !2186

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !2093, metadata !730), !dbg !2155
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2091, metadata !730), !dbg !2153
  %57 = load i8, i8* %52, align 1, !dbg !2187, !tbaa !864
  %58 = icmp eq i8 %57, 0, !dbg !2191
  br i1 %58, label %73, label %59, !dbg !2191

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !2193

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  %64 = icmp ult i64 %63, %40, !dbg !2193
  br i1 %64, label %65, label %67, !dbg !2197

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !2199
  store i8 %61, i8* %66, align 1, !dbg !2199, !tbaa !864
  br label %67, !dbg !2199

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !2201
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !2091, metadata !730), !dbg !2153
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !2203
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !2093, metadata !730), !dbg !2155
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !2093, metadata !730), !dbg !2155
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !2091, metadata !730), !dbg !2153
  %70 = load i8, i8* %69, align 1, !dbg !2187, !tbaa !864
  %71 = icmp eq i8 %70, 0, !dbg !2191
  br i1 %71, label %72, label %60, !dbg !2191, !llvm.loop !2205

; <label>:72:                                     ; preds = %67
  br label %73, !dbg !2153

; <label>:73:                                     ; preds = %72, %56, %51
  %74 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %72 ]
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !2091, metadata !730), !dbg !2153
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2095, metadata !730), !dbg !2157
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !2093, metadata !730), !dbg !2155
  %75 = call i64 @strlen(i8* %53) #13, !dbg !2208
  call void @llvm.dbg.value(metadata i64 %75, i64 0, metadata !2094, metadata !730), !dbg !2156
  br label %95, !dbg !2209

; <label>:76:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2095, metadata !730), !dbg !2157
  br label %77, !dbg !2210

; <label>:77:                                     ; preds = %27, %76
  %78 = phi i8 [ %34, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %78, i64 0, metadata !2095, metadata !730), !dbg !2157
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2097, metadata !730), !dbg !2160
  br label %79, !dbg !2211

; <label>:79:                                     ; preds = %27, %77
  %80 = phi i8 [ %34, %27 ], [ %78, %77 ]
  %81 = phi i8 [ %36, %27 ], [ 1, %77 ]
  call void @llvm.dbg.value(metadata i8 %81, i64 0, metadata !2097, metadata !730), !dbg !2160
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !2095, metadata !730), !dbg !2157
  %82 = and i8 %81, 1, !dbg !2212
  %83 = icmp eq i8 %82, 0, !dbg !2212
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2095, metadata !730), !dbg !2157
  %84 = select i1 %83, i8 1, i8 %80, !dbg !2214
  br label %85, !dbg !2214

; <label>:85:                                     ; preds = %79, %27
  %86 = phi i8 [ %34, %27 ], [ %84, %79 ]
  %87 = phi i8 [ %36, %27 ], [ %81, %79 ]
  call void @llvm.dbg.value(metadata i8 %87, i64 0, metadata !2097, metadata !730), !dbg !2160
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !2095, metadata !730), !dbg !2157
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !2085, metadata !730), !dbg !2148
  %88 = and i8 %87, 1, !dbg !2215
  %89 = icmp eq i8 %88, 0, !dbg !2215
  br i1 %89, label %90, label %95, !dbg !2217

; <label>:90:                                     ; preds = %85
  %91 = icmp eq i64 %40, 0, !dbg !2218
  br i1 %91, label %95, label %92, !dbg !2222

; <label>:92:                                     ; preds = %90
  store i8 39, i8* %0, align 1, !dbg !2224, !tbaa !864
  br label %95, !dbg !2224

; <label>:93:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2097, metadata !730), !dbg !2160
  br label %95, !dbg !2226

; <label>:94:                                     ; preds = %27
  call void @abort() #14, !dbg !2227
  unreachable, !dbg !2227

; <label>:95:                                     ; preds = %41, %85, %90, %92, %27, %42, %45, %47, %93, %73
  %96 = phi i32 [ 0, %93 ], [ %28, %73 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %92 ], [ 2, %90 ], [ 2, %85 ], [ 5, %41 ]
  %97 = phi i8* [ %29, %93 ], [ %52, %73 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %92 ], [ %29, %90 ], [ %29, %85 ], [ %29, %41 ]
  %98 = phi i8* [ %30, %93 ], [ %53, %73 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %92 ], [ %30, %90 ], [ %30, %85 ], [ %30, %41 ]
  %99 = phi i64 [ 0, %93 ], [ %74, %73 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %92 ], [ 1, %90 ], [ 0, %85 ], [ 0, %41 ]
  %100 = phi i8* [ %32, %93 ], [ %53, %73 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.82, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.82, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.82, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.81, i64 0, i64 0), %92 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.81, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.81, i64 0, i64 0), %85 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.82, i64 0, i64 0), %41 ]
  %101 = phi i64 [ %33, %93 ], [ %75, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %92 ], [ 1, %90 ], [ 1, %85 ], [ 1, %41 ]
  %102 = phi i8 [ %34, %93 ], [ 1, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %86, %92 ], [ %86, %90 ], [ %86, %85 ], [ 1, %41 ]
  %103 = phi i8 [ 0, %93 ], [ %36, %73 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %87, %92 ], [ %87, %90 ], [ %87, %85 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %103, i64 0, metadata !2097, metadata !730), !dbg !2160
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !2095, metadata !730), !dbg !2157
  call void @llvm.dbg.value(metadata i64 %101, i64 0, metadata !2094, metadata !730), !dbg !2156
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !2093, metadata !730), !dbg !2155
  call void @llvm.dbg.value(metadata i64 %99, i64 0, metadata !2091, metadata !730), !dbg !2153
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !2089, metadata !730), !dbg !2152
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !2088, metadata !730), !dbg !2151
  call void @llvm.dbg.value(metadata i32 %96, i64 0, metadata !2085, metadata !730), !dbg !2148
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2090, metadata !730), !dbg !2228
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
  br label %123, !dbg !2229

; <label>:123:                                    ; preds = %587, %95
  %124 = phi i64 [ 0, %95 ], [ %596, %587 ]
  %125 = phi i64 [ %99, %95 ], [ %589, %587 ]
  %126 = phi i64 [ %31, %95 ], [ %590, %587 ]
  %127 = phi i64 [ %35, %95 ], [ %591, %587 ]
  %128 = phi i8 [ %37, %95 ], [ %592, %587 ]
  %129 = phi i8 [ %38, %95 ], [ %593, %587 ]
  %130 = phi i8 [ %39, %95 ], [ %594, %587 ]
  %131 = phi i64 [ %40, %95 ], [ %595, %587 ]
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !2082, metadata !730), !dbg !2145
  call void @llvm.dbg.value(metadata i8 %130, i64 0, metadata !2100, metadata !730), !dbg !2163
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !2099, metadata !730), !dbg !2162
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !2098, metadata !730), !dbg !2161
  call void @llvm.dbg.value(metadata i64 %127, i64 0, metadata !2084, metadata !730), !dbg !2147
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !2092, metadata !730), !dbg !2154
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !2091, metadata !730), !dbg !2153
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !2090, metadata !730), !dbg !2228
  %132 = icmp eq i64 %127, -1, !dbg !2230
  br i1 %132, label %135, label %133, !dbg !2232

; <label>:133:                                    ; preds = %123
  %134 = icmp eq i64 %124, %127, !dbg !2233
  br i1 %134, label %597, label %139, !dbg !2235

; <label>:135:                                    ; preds = %123
  %136 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !2237
  %137 = load i8, i8* %136, align 1, !dbg !2237, !tbaa !864
  %138 = icmp eq i8 %137, 0, !dbg !2239
  br i1 %138, label %597, label %139, !dbg !2235

; <label>:139:                                    ; preds = %133, %135
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2106, metadata !730), !dbg !2240
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2107, metadata !730), !dbg !2241
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2108, metadata !730), !dbg !2242
  br i1 %109, label %140, label %155, !dbg !2243

; <label>:140:                                    ; preds = %139
  %141 = add i64 %124, %101, !dbg !2245
  %142 = and i1 %110, %132, !dbg !2247
  br i1 %142, label %143, label %145, !dbg !2247

; <label>:143:                                    ; preds = %140
  %144 = call i64 @strlen(i8* %2) #13, !dbg !2248
  call void @llvm.dbg.value(metadata i64 %144, i64 0, metadata !2084, metadata !730), !dbg !2147
  br label %145, !dbg !2249

; <label>:145:                                    ; preds = %140, %143
  %146 = phi i64 [ %144, %143 ], [ %127, %140 ]
  call void @llvm.dbg.value(metadata i64 %146, i64 0, metadata !2084, metadata !730), !dbg !2147
  %147 = icmp ugt i64 %141, %146, !dbg !2251
  br i1 %147, label %155, label %148, !dbg !2253

; <label>:148:                                    ; preds = %145
  %149 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !2254
  %150 = call i32 @memcmp(i8* %149, i8* %100, i64 %101) #13, !dbg !2255
  %151 = icmp ne i32 %150, 0, !dbg !2256
  %152 = or i1 %151, %112, !dbg !2256
  %153 = xor i1 %151, true, !dbg !2256
  %154 = zext i1 %153 to i8, !dbg !2256
  br i1 %152, label %155, label %644, !dbg !2256

; <label>:155:                                    ; preds = %148, %145, %139
  %156 = phi i64 [ %146, %148 ], [ %146, %145 ], [ %127, %139 ]
  %157 = phi i8 [ %154, %148 ], [ 0, %145 ], [ 0, %139 ]
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !2106, metadata !730), !dbg !2240
  call void @llvm.dbg.value(metadata i64 %156, i64 0, metadata !2084, metadata !730), !dbg !2147
  %158 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !2258
  %159 = load i8, i8* %158, align 1, !dbg !2258, !tbaa !864
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !2101, metadata !730), !dbg !2259
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
  ], !dbg !2260

; <label>:160:                                    ; preds = %155
  br i1 %105, label %161, label %209, !dbg !2261

; <label>:161:                                    ; preds = %160
  br i1 %112, label %162, label %644, !dbg !2262

; <label>:162:                                    ; preds = %161
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2107, metadata !730), !dbg !2241
  %163 = and i8 %128, 1, !dbg !2267
  %164 = icmp eq i8 %163, 0, !dbg !2267
  %165 = and i1 %114, %164, !dbg !2270
  br i1 %165, label %166, label %182, !dbg !2270

; <label>:166:                                    ; preds = %162
  %167 = icmp ult i64 %125, %131, !dbg !2272
  br i1 %167, label %168, label %170, !dbg !2277

; <label>:168:                                    ; preds = %166
  %169 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !2279
  store i8 39, i8* %169, align 1, !dbg !2279, !tbaa !864
  br label %170, !dbg !2279

; <label>:170:                                    ; preds = %168, %166
  %171 = add i64 %125, 1, !dbg !2281
  call void @llvm.dbg.value(metadata i64 %171, i64 0, metadata !2091, metadata !730), !dbg !2153
  %172 = icmp ult i64 %171, %131, !dbg !2283
  br i1 %172, label %173, label %175, !dbg !2287

; <label>:173:                                    ; preds = %170
  %174 = getelementptr inbounds i8, i8* %0, i64 %171, !dbg !2289
  store i8 36, i8* %174, align 1, !dbg !2289, !tbaa !864
  br label %175, !dbg !2289

; <label>:175:                                    ; preds = %173, %170
  %176 = add i64 %125, 2, !dbg !2291
  call void @llvm.dbg.value(metadata i64 %176, i64 0, metadata !2091, metadata !730), !dbg !2153
  %177 = icmp ult i64 %176, %131, !dbg !2293
  br i1 %177, label %178, label %180, !dbg !2297

; <label>:178:                                    ; preds = %175
  %179 = getelementptr inbounds i8, i8* %0, i64 %176, !dbg !2299
  store i8 39, i8* %179, align 1, !dbg !2299, !tbaa !864
  br label %180, !dbg !2299

; <label>:180:                                    ; preds = %178, %175
  %181 = add i64 %125, 3, !dbg !2301
  call void @llvm.dbg.value(metadata i64 %181, i64 0, metadata !2091, metadata !730), !dbg !2153
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2098, metadata !730), !dbg !2161
  br label %182, !dbg !2303

; <label>:182:                                    ; preds = %162, %180
  %183 = phi i64 [ %181, %180 ], [ %125, %162 ]
  %184 = phi i8 [ 1, %180 ], [ %128, %162 ]
  call void @llvm.dbg.value(metadata i8 %184, i64 0, metadata !2098, metadata !730), !dbg !2161
  call void @llvm.dbg.value(metadata i64 %183, i64 0, metadata !2091, metadata !730), !dbg !2153
  %185 = icmp ult i64 %183, %131, !dbg !2305
  br i1 %185, label %186, label %188, !dbg !2309

; <label>:186:                                    ; preds = %182
  %187 = getelementptr inbounds i8, i8* %0, i64 %183, !dbg !2311
  store i8 92, i8* %187, align 1, !dbg !2311, !tbaa !864
  br label %188, !dbg !2311

; <label>:188:                                    ; preds = %186, %182
  %189 = add i64 %183, 1, !dbg !2313
  call void @llvm.dbg.value(metadata i64 %189, i64 0, metadata !2091, metadata !730), !dbg !2153
  br i1 %106, label %190, label %476, !dbg !2315

; <label>:190:                                    ; preds = %188
  %191 = add i64 %124, 1, !dbg !2317
  %192 = icmp ult i64 %191, %156, !dbg !2319
  br i1 %192, label %193, label %476, !dbg !2320

; <label>:193:                                    ; preds = %190
  %194 = getelementptr inbounds i8, i8* %2, i64 %191, !dbg !2321
  %195 = load i8, i8* %194, align 1, !dbg !2321, !tbaa !864
  %196 = add i8 %195, -48, !dbg !2323
  %197 = icmp ult i8 %196, 10, !dbg !2323
  br i1 %197, label %198, label %476, !dbg !2323

; <label>:198:                                    ; preds = %193
  %199 = icmp ult i64 %189, %131, !dbg !2324
  br i1 %199, label %200, label %202, !dbg !2329

; <label>:200:                                    ; preds = %198
  %201 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !2331
  store i8 48, i8* %201, align 1, !dbg !2331, !tbaa !864
  br label %202, !dbg !2331

; <label>:202:                                    ; preds = %200, %198
  %203 = add i64 %183, 2, !dbg !2333
  call void @llvm.dbg.value(metadata i64 %203, i64 0, metadata !2091, metadata !730), !dbg !2153
  %204 = icmp ult i64 %203, %131, !dbg !2335
  br i1 %204, label %205, label %207, !dbg !2339

; <label>:205:                                    ; preds = %202
  %206 = getelementptr inbounds i8, i8* %0, i64 %203, !dbg !2341
  store i8 48, i8* %206, align 1, !dbg !2341, !tbaa !864
  br label %207, !dbg !2341

; <label>:207:                                    ; preds = %205, %202
  %208 = add i64 %183, 3, !dbg !2343
  call void @llvm.dbg.value(metadata i64 %208, i64 0, metadata !2091, metadata !730), !dbg !2153
  br label %476, !dbg !2345

; <label>:209:                                    ; preds = %160
  br i1 %23, label %476, label %587, !dbg !2346

; <label>:210:                                    ; preds = %155
  switch i32 %96, label %476 [
    i32 2, label %211
    i32 5, label %212
  ], !dbg !2347

; <label>:211:                                    ; preds = %210
  br i1 %112, label %476, label %644, !dbg !2348

; <label>:212:                                    ; preds = %210
  br i1 %25, label %476, label %213, !dbg !2350

; <label>:213:                                    ; preds = %212
  %214 = add i64 %124, 2, !dbg !2352
  %215 = icmp ult i64 %214, %156, !dbg !2354
  br i1 %215, label %216, label %476, !dbg !2355

; <label>:216:                                    ; preds = %213
  %217 = add i64 %124, 1, !dbg !2356
  %218 = getelementptr inbounds i8, i8* %2, i64 %217, !dbg !2358
  %219 = load i8, i8* %218, align 1, !dbg !2358, !tbaa !864
  %220 = icmp eq i8 %219, 63, !dbg !2359
  br i1 %220, label %221, label %476, !dbg !2360

; <label>:221:                                    ; preds = %216
  %222 = getelementptr inbounds i8, i8* %2, i64 %214, !dbg !2362
  %223 = load i8, i8* %222, align 1, !dbg !2362, !tbaa !864
  %224 = sext i8 %223 to i32, !dbg !2362
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
  ], !dbg !2363

; <label>:225:                                    ; preds = %221, %221, %221, %221, %221, %221, %221, %221, %221
  br i1 %112, label %226, label %644, !dbg !2364

; <label>:226:                                    ; preds = %225
  call void @llvm.dbg.value(metadata i8 %223, i64 0, metadata !2101, metadata !730), !dbg !2259
  call void @llvm.dbg.value(metadata i64 %214, i64 0, metadata !2090, metadata !730), !dbg !2228
  %227 = icmp ult i64 %125, %131, !dbg !2366
  br i1 %227, label %228, label %230, !dbg !2370

; <label>:228:                                    ; preds = %226
  %229 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !2372
  store i8 63, i8* %229, align 1, !dbg !2372, !tbaa !864
  br label %230, !dbg !2372

; <label>:230:                                    ; preds = %228, %226
  %231 = add i64 %125, 1, !dbg !2374
  call void @llvm.dbg.value(metadata i64 %231, i64 0, metadata !2091, metadata !730), !dbg !2153
  %232 = icmp ult i64 %231, %131, !dbg !2376
  br i1 %232, label %233, label %235, !dbg !2380

; <label>:233:                                    ; preds = %230
  %234 = getelementptr inbounds i8, i8* %0, i64 %231, !dbg !2382
  store i8 34, i8* %234, align 1, !dbg !2382, !tbaa !864
  br label %235, !dbg !2382

; <label>:235:                                    ; preds = %233, %230
  %236 = add i64 %125, 2, !dbg !2384
  call void @llvm.dbg.value(metadata i64 %236, i64 0, metadata !2091, metadata !730), !dbg !2153
  %237 = icmp ult i64 %236, %131, !dbg !2386
  br i1 %237, label %238, label %240, !dbg !2390

; <label>:238:                                    ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !2392
  store i8 34, i8* %239, align 1, !dbg !2392, !tbaa !864
  br label %240, !dbg !2392

; <label>:240:                                    ; preds = %238, %235
  %241 = add i64 %125, 3, !dbg !2394
  call void @llvm.dbg.value(metadata i64 %241, i64 0, metadata !2091, metadata !730), !dbg !2153
  %242 = icmp ult i64 %241, %131, !dbg !2396
  br i1 %242, label %243, label %245, !dbg !2400

; <label>:243:                                    ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !2402
  store i8 63, i8* %244, align 1, !dbg !2402, !tbaa !864
  br label %245, !dbg !2402

; <label>:245:                                    ; preds = %243, %240
  %246 = add i64 %125, 4, !dbg !2404
  call void @llvm.dbg.value(metadata i64 %246, i64 0, metadata !2091, metadata !730), !dbg !2153
  br label %476, !dbg !2406

; <label>:247:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !2105, metadata !730), !dbg !2407
  br label %257, !dbg !2408

; <label>:248:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !2105, metadata !730), !dbg !2407
  br label %257, !dbg !2409

; <label>:249:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !2105, metadata !730), !dbg !2407
  br label %255, !dbg !2410

; <label>:250:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !2105, metadata !730), !dbg !2407
  br label %255, !dbg !2411

; <label>:251:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !2105, metadata !730), !dbg !2407
  br label %257, !dbg !2412

; <label>:252:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !2105, metadata !730), !dbg !2407
  br i1 %114, label %253, label %254, !dbg !2413

; <label>:253:                                    ; preds = %252
  br i1 %112, label %542, label %644, !dbg !2414

; <label>:254:                                    ; preds = %252
  br i1 %122, label %542, label %255, !dbg !2417

; <label>:255:                                    ; preds = %254, %155, %250, %249
  %256 = phi i8 [ 92, %254 ], [ 116, %250 ], [ 114, %249 ], [ 110, %155 ]
  call void @llvm.dbg.value(metadata i8 %256, i64 0, metadata !2105, metadata !730), !dbg !2407
  br i1 %118, label %257, label %644, !dbg !2419

; <label>:257:                                    ; preds = %255, %155, %251, %248, %247
  %258 = phi i8 [ %256, %255 ], [ 118, %251 ], [ 102, %248 ], [ 98, %247 ], [ 97, %155 ]
  call void @llvm.dbg.value(metadata i8 %258, i64 0, metadata !2105, metadata !730), !dbg !2407
  br i1 %105, label %503, label %476, !dbg !2421

; <label>:259:                                    ; preds = %155, %155
  %260 = icmp eq i64 %156, -1, !dbg !2422
  br i1 %260, label %261, label %266, !dbg !2424

; <label>:261:                                    ; preds = %259
  %262 = load i8, i8* %26, align 1, !dbg !2425, !tbaa !864
  %263 = icmp ne i8 %262, 0, !dbg !2427
  %264 = icmp ne i64 %124, 0, !dbg !2428
  %265 = or i1 %264, %263, !dbg !2430
  br i1 %265, label %476, label %272, !dbg !2430

; <label>:266:                                    ; preds = %259
  %267 = icmp ne i64 %156, 1, !dbg !2431
  %268 = icmp ne i64 %124, 0, !dbg !2428
  %269 = or i1 %268, %267, !dbg !2433
  br i1 %269, label %476, label %272, !dbg !2433

; <label>:270:                                    ; preds = %155, %155
  %271 = icmp eq i64 %124, 0, !dbg !2428
  br i1 %271, label %272, label %476, !dbg !2435

; <label>:272:                                    ; preds = %270, %266, %261, %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2108, metadata !730), !dbg !2242
  br label %273, !dbg !2436

; <label>:273:                                    ; preds = %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %272
  %274 = phi i8 [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 1, %272 ]
  call void @llvm.dbg.value(metadata i8 %274, i64 0, metadata !2108, metadata !730), !dbg !2242
  br i1 %118, label %476, label %644, !dbg !2437

; <label>:275:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2099, metadata !730), !dbg !2162
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2108, metadata !730), !dbg !2242
  br i1 %114, label %276, label %476, !dbg !2439

; <label>:276:                                    ; preds = %275
  br i1 %112, label %277, label %644, !dbg !2440

; <label>:277:                                    ; preds = %276
  %278 = icmp eq i64 %131, 0, !dbg !2443
  %279 = icmp ne i64 %126, 0, !dbg !2445
  %280 = or i1 %279, %278, !dbg !2447
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !2092, metadata !730), !dbg !2154
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2082, metadata !730), !dbg !2145
  %281 = select i1 %280, i64 %126, i64 %131, !dbg !2447
  %282 = select i1 %280, i64 %131, i64 0, !dbg !2447
  call void @llvm.dbg.value(metadata i64 %282, i64 0, metadata !2082, metadata !730), !dbg !2145
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !2092, metadata !730), !dbg !2154
  %283 = icmp ult i64 %125, %282, !dbg !2448
  br i1 %283, label %284, label %286, !dbg !2452

; <label>:284:                                    ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !2454
  store i8 39, i8* %285, align 1, !dbg !2454, !tbaa !864
  br label %286, !dbg !2454

; <label>:286:                                    ; preds = %284, %277
  %287 = add i64 %125, 1, !dbg !2456
  call void @llvm.dbg.value(metadata i64 %287, i64 0, metadata !2091, metadata !730), !dbg !2153
  %288 = icmp ult i64 %287, %282, !dbg !2458
  br i1 %288, label %289, label %291, !dbg !2462

; <label>:289:                                    ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !2464
  store i8 92, i8* %290, align 1, !dbg !2464, !tbaa !864
  br label %291, !dbg !2464

; <label>:291:                                    ; preds = %289, %286
  %292 = add i64 %125, 2, !dbg !2466
  call void @llvm.dbg.value(metadata i64 %292, i64 0, metadata !2091, metadata !730), !dbg !2153
  %293 = icmp ult i64 %292, %282, !dbg !2468
  br i1 %293, label %294, label %296, !dbg !2472

; <label>:294:                                    ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !2474
  store i8 39, i8* %295, align 1, !dbg !2474, !tbaa !864
  br label %296, !dbg !2474

; <label>:296:                                    ; preds = %294, %291
  %297 = add i64 %125, 3, !dbg !2476
  call void @llvm.dbg.value(metadata i64 %297, i64 0, metadata !2091, metadata !730), !dbg !2153
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2098, metadata !730), !dbg !2161
  br label %476, !dbg !2478

; <label>:298:                                    ; preds = %155
  br i1 %14, label %299, label %308, !dbg !2479

; <label>:299:                                    ; preds = %298
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2109, metadata !730), !dbg !2480
  %300 = tail call i16** @__ctype_b_loc() #1, !dbg !2481
  %301 = load i16*, i16** %300, align 8, !dbg !2481, !tbaa !738
  %302 = zext i8 %159 to i64, !dbg !2481
  %303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !2481
  %304 = load i16, i16* %303, align 2, !dbg !2481, !tbaa !2483
  %305 = lshr i16 %304, 14, !dbg !2484
  %306 = trunc i16 %305 to i8, !dbg !2484
  %307 = and i8 %306, 1, !dbg !2484
  call void @llvm.dbg.value(metadata i8 %307, i64 0, metadata !2112, metadata !730), !dbg !2485
  br label %368, !dbg !2486

; <label>:308:                                    ; preds = %298
  call void @llvm.lifetime.start(i64 8, i8* nonnull %18) #10, !dbg !2487
  store i64 0, i64* %10, align 8, !dbg !2488
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2109, metadata !730), !dbg !2480
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2112, metadata !730), !dbg !2485
  %309 = icmp eq i64 %156, -1, !dbg !2489
  br i1 %309, label %310, label %312, !dbg !2491, !llvm.loop !2492

; <label>:310:                                    ; preds = %308
  %311 = call i64 @strlen(i8* nonnull %2) #13, !dbg !2495
  call void @llvm.dbg.value(metadata i64 %311, i64 0, metadata !2084, metadata !730), !dbg !2147
  br label %312, !dbg !2496, !llvm.loop !2492

; <label>:312:                                    ; preds = %310, %308
  %313 = phi i64 [ %156, %308 ], [ %311, %310 ]
  br label %314, !dbg !2485

; <label>:314:                                    ; preds = %312, %355
  %315 = phi i64 [ %360, %355 ], [ 0, %312 ]
  %316 = phi i8 [ %359, %355 ], [ 1, %312 ]
  call void @llvm.dbg.value(metadata i8 %316, i64 0, metadata !2112, metadata !730), !dbg !2485
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !2109, metadata !730), !dbg !2480
  call void @llvm.dbg.value(metadata i64 %313, i64 0, metadata !2084, metadata !730), !dbg !2147
  call void @llvm.lifetime.start(i64 4, i8* nonnull %19) #10, !dbg !2497
  %317 = add i64 %315, %124, !dbg !2498
  %318 = getelementptr inbounds i8, i8* %2, i64 %317, !dbg !2499
  %319 = sub i64 %313, %317, !dbg !2500
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !2113, metadata !2501), !dbg !2502
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !2130, metadata !2501), !dbg !2503
  %320 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %318, i64 %319, %struct.__mbstate_t* nonnull %11) #10, !dbg !2504
  call void @llvm.dbg.value(metadata i64 %320, i64 0, metadata !2133, metadata !730), !dbg !2505
  switch i64 %320, label %334 [
    i64 0, label %350
    i64 -1, label %347
    i64 -2, label %321
  ], !dbg !2506

; <label>:321:                                    ; preds = %314
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !2109, metadata !730), !dbg !2480
  %322 = icmp ugt i64 %313, %317, !dbg !2507
  br i1 %322, label %323, label %351, !dbg !2510

; <label>:323:                                    ; preds = %321
  br label %324, !dbg !2511

; <label>:324:                                    ; preds = %323, %330
  %325 = phi i64 [ %332, %330 ], [ %317, %323 ]
  %326 = phi i64 [ %331, %330 ], [ %315, %323 ]
  %327 = getelementptr inbounds i8, i8* %2, i64 %325, !dbg !2511
  %328 = load i8, i8* %327, align 1, !dbg !2511, !tbaa !864
  %329 = icmp eq i8 %328, 0, !dbg !2513
  br i1 %329, label %348, label %330, !dbg !2514

; <label>:330:                                    ; preds = %324
  %331 = add i64 %326, 1, !dbg !2516
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !2109, metadata !730), !dbg !2480
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !2109, metadata !730), !dbg !2480
  %332 = add i64 %331, %124, !dbg !2517
  %333 = icmp ult i64 %332, %313, !dbg !2507
  br i1 %333, label %324, label %348, !dbg !2510, !llvm.loop !2518

; <label>:334:                                    ; preds = %314
  %335 = icmp ugt i64 %320, 1, !dbg !2520
  %336 = and i1 %116, %335, !dbg !2524
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2134, metadata !730), !dbg !2525
  br i1 %336, label %337, label %355, !dbg !2524

; <label>:337:                                    ; preds = %334
  br label %338, !dbg !2526

; <label>:338:                                    ; preds = %337, %344
  %339 = phi i64 [ %345, %344 ], [ 1, %337 ]
  %340 = add i64 %339, %317, !dbg !2526
  %341 = getelementptr inbounds i8, i8* %2, i64 %340, !dbg !2527
  %342 = load i8, i8* %341, align 1, !dbg !2527, !tbaa !864
  %343 = sext i8 %342 to i32, !dbg !2527
  switch i32 %343, label %344 [
    i32 91, label %367
    i32 92, label %367
    i32 94, label %367
    i32 96, label %367
    i32 124, label %367
  ], !dbg !2528

; <label>:344:                                    ; preds = %338
  %345 = add nuw i64 %339, 1, !dbg !2529
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !2134, metadata !730), !dbg !2525
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !2134, metadata !730), !dbg !2525
  %346 = icmp ult i64 %345, %320, !dbg !2520
  br i1 %346, label %338, label %354, !dbg !2531, !llvm.loop !2533

; <label>:347:                                    ; preds = %314
  br label %351, !dbg !2485

; <label>:348:                                    ; preds = %324, %330
  %349 = phi i64 [ %331, %330 ], [ %326, %324 ]
  br label %351, !dbg !2485

; <label>:350:                                    ; preds = %314
  br label %351, !dbg !2485

; <label>:351:                                    ; preds = %350, %348, %347, %321
  %352 = phi i64 [ %315, %321 ], [ %315, %347 ], [ %349, %348 ], [ %315, %350 ]
  %353 = phi i8 [ 0, %321 ], [ 0, %347 ], [ 0, %348 ], [ %316, %350 ]
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !2112, metadata !730), !dbg !2485
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !2109, metadata !730), !dbg !2480
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10, !dbg !2536
  br label %364

; <label>:354:                                    ; preds = %344
  br label %355, !dbg !2537

; <label>:355:                                    ; preds = %354, %334
  %356 = load i32, i32* %12, align 4, !dbg !2537, !tbaa !972
  call void @llvm.dbg.value(metadata i32 %356, i64 0, metadata !2130, metadata !730), !dbg !2503
  %357 = call i32 @iswprint(i32 %356) #10, !dbg !2539
  %358 = icmp eq i32 %357, 0, !dbg !2539
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2112, metadata !730), !dbg !2485
  %359 = select i1 %358, i8 0, i8 %316, !dbg !2540
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !2112, metadata !730), !dbg !2485
  %360 = add i64 %320, %315, !dbg !2541
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !2109, metadata !730), !dbg !2480
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !2112, metadata !730), !dbg !2485
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !2109, metadata !730), !dbg !2480
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10, !dbg !2536
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !2113, metadata !2501), !dbg !2502
  %361 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #13, !dbg !2542
  %362 = icmp eq i32 %361, 0, !dbg !2543
  br i1 %362, label %314, label %363, !dbg !2544, !llvm.loop !2492

; <label>:363:                                    ; preds = %355
  br label %364, !dbg !2546

; <label>:364:                                    ; preds = %363, %351
  %365 = phi i8 [ %353, %351 ], [ %359, %363 ]
  %366 = phi i64 [ %352, %351 ], [ %360, %363 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #10, !dbg !2546
  br label %368

; <label>:367:                                    ; preds = %338, %338, %338, %338, %338
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !2112, metadata !730), !dbg !2485
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !2109, metadata !730), !dbg !2480
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10, !dbg !2536
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #10, !dbg !2546
  br label %649

; <label>:368:                                    ; preds = %364, %299
  %369 = phi i64 [ %156, %299 ], [ %313, %364 ]
  %370 = phi i64 [ 1, %299 ], [ %366, %364 ]
  %371 = phi i8 [ %307, %299 ], [ %365, %364 ]
  call void @llvm.dbg.value(metadata i8 %371, i64 0, metadata !2112, metadata !730), !dbg !2485
  call void @llvm.dbg.value(metadata i64 %370, i64 0, metadata !2109, metadata !730), !dbg !2480
  call void @llvm.dbg.value(metadata i64 %369, i64 0, metadata !2084, metadata !730), !dbg !2147
  %372 = and i8 %371, 1, !dbg !2547
  %373 = icmp ne i8 %372, 0, !dbg !2547
  call void @llvm.dbg.value(metadata i8 %372, i64 0, metadata !2108, metadata !730), !dbg !2242
  %374 = icmp ult i64 %370, 2, !dbg !2548
  %375 = or i1 %373, %113, !dbg !2549
  %376 = and i1 %374, %375, !dbg !2551
  br i1 %376, label %476, label %377, !dbg !2551

; <label>:377:                                    ; preds = %368
  %378 = add i64 %370, %124, !dbg !2552
  call void @llvm.dbg.value(metadata i64 %378, i64 0, metadata !2141, metadata !730), !dbg !2553
  br label %379, !dbg !2554

; <label>:379:                                    ; preds = %472, %377
  %380 = phi i64 [ %124, %377 ], [ %447, %472 ]
  %381 = phi i64 [ %125, %377 ], [ %473, %472 ]
  %382 = phi i8 [ %128, %377 ], [ %468, %472 ]
  %383 = phi i8 [ %159, %377 ], [ %475, %472 ]
  %384 = phi i8 [ %157, %377 ], [ %445, %472 ]
  %385 = phi i8 [ 0, %377 ], [ %446, %472 ]
  call void @llvm.dbg.value(metadata i8 %385, i64 0, metadata !2107, metadata !730), !dbg !2241
  call void @llvm.dbg.value(metadata i8 %384, i64 0, metadata !2106, metadata !730), !dbg !2240
  call void @llvm.dbg.value(metadata i8 %383, i64 0, metadata !2101, metadata !730), !dbg !2259
  call void @llvm.dbg.value(metadata i8 %382, i64 0, metadata !2098, metadata !730), !dbg !2161
  call void @llvm.dbg.value(metadata i64 %381, i64 0, metadata !2091, metadata !730), !dbg !2153
  call void @llvm.dbg.value(metadata i64 %380, i64 0, metadata !2090, metadata !730), !dbg !2228
  br i1 %375, label %432, label %386, !dbg !2555

; <label>:386:                                    ; preds = %379
  br i1 %112, label %387, label %643, !dbg !2560

; <label>:387:                                    ; preds = %386
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2107, metadata !730), !dbg !2241
  %388 = and i8 %382, 1, !dbg !2564
  %389 = icmp eq i8 %388, 0, !dbg !2564
  %390 = and i1 %114, %389, !dbg !2567
  br i1 %390, label %391, label %407, !dbg !2567

; <label>:391:                                    ; preds = %387
  %392 = icmp ult i64 %381, %131, !dbg !2569
  br i1 %392, label %393, label %395, !dbg !2574

; <label>:393:                                    ; preds = %391
  %394 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !2576
  store i8 39, i8* %394, align 1, !dbg !2576, !tbaa !864
  br label %395, !dbg !2576

; <label>:395:                                    ; preds = %393, %391
  %396 = add i64 %381, 1, !dbg !2578
  call void @llvm.dbg.value(metadata i64 %396, i64 0, metadata !2091, metadata !730), !dbg !2153
  %397 = icmp ult i64 %396, %131, !dbg !2580
  br i1 %397, label %398, label %400, !dbg !2584

; <label>:398:                                    ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !2586
  store i8 36, i8* %399, align 1, !dbg !2586, !tbaa !864
  br label %400, !dbg !2586

; <label>:400:                                    ; preds = %398, %395
  %401 = add i64 %381, 2, !dbg !2588
  call void @llvm.dbg.value(metadata i64 %401, i64 0, metadata !2091, metadata !730), !dbg !2153
  %402 = icmp ult i64 %401, %131, !dbg !2590
  br i1 %402, label %403, label %405, !dbg !2594

; <label>:403:                                    ; preds = %400
  %404 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !2596
  store i8 39, i8* %404, align 1, !dbg !2596, !tbaa !864
  br label %405, !dbg !2596

; <label>:405:                                    ; preds = %403, %400
  %406 = add i64 %381, 3, !dbg !2598
  call void @llvm.dbg.value(metadata i64 %406, i64 0, metadata !2091, metadata !730), !dbg !2153
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2098, metadata !730), !dbg !2161
  br label %407, !dbg !2600

; <label>:407:                                    ; preds = %387, %405
  %408 = phi i64 [ %406, %405 ], [ %381, %387 ]
  %409 = phi i8 [ 1, %405 ], [ %382, %387 ]
  call void @llvm.dbg.value(metadata i8 %409, i64 0, metadata !2098, metadata !730), !dbg !2161
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !2091, metadata !730), !dbg !2153
  %410 = icmp ult i64 %408, %131, !dbg !2602
  br i1 %410, label %411, label %413, !dbg !2606

; <label>:411:                                    ; preds = %407
  %412 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !2608
  store i8 92, i8* %412, align 1, !dbg !2608, !tbaa !864
  br label %413, !dbg !2608

; <label>:413:                                    ; preds = %411, %407
  %414 = add i64 %408, 1, !dbg !2610
  call void @llvm.dbg.value(metadata i64 %414, i64 0, metadata !2091, metadata !730), !dbg !2153
  %415 = icmp ult i64 %414, %131, !dbg !2612
  br i1 %415, label %416, label %420, !dbg !2616

; <label>:416:                                    ; preds = %413
  %417 = lshr i8 %383, 6, !dbg !2618
  %418 = or i8 %417, 48, !dbg !2618
  %419 = getelementptr inbounds i8, i8* %0, i64 %414, !dbg !2618
  store i8 %418, i8* %419, align 1, !dbg !2618, !tbaa !864
  br label %420, !dbg !2618

; <label>:420:                                    ; preds = %416, %413
  %421 = add i64 %408, 2, !dbg !2620
  call void @llvm.dbg.value(metadata i64 %421, i64 0, metadata !2091, metadata !730), !dbg !2153
  %422 = icmp ult i64 %421, %131, !dbg !2622
  br i1 %422, label %423, label %428, !dbg !2626

; <label>:423:                                    ; preds = %420
  %424 = lshr i8 %383, 3, !dbg !2628
  %425 = and i8 %424, 7, !dbg !2628
  %426 = or i8 %425, 48, !dbg !2628
  %427 = getelementptr inbounds i8, i8* %0, i64 %421, !dbg !2628
  store i8 %426, i8* %427, align 1, !dbg !2628, !tbaa !864
  br label %428, !dbg !2628

; <label>:428:                                    ; preds = %423, %420
  %429 = add i64 %408, 3, !dbg !2630
  call void @llvm.dbg.value(metadata i64 %429, i64 0, metadata !2091, metadata !730), !dbg !2153
  %430 = and i8 %383, 7, !dbg !2632
  %431 = or i8 %430, 48, !dbg !2633
  call void @llvm.dbg.value(metadata i8 %431, i64 0, metadata !2101, metadata !730), !dbg !2259
  br label %441, !dbg !2634

; <label>:432:                                    ; preds = %379
  %433 = and i8 %384, 1, !dbg !2635
  %434 = icmp eq i8 %433, 0, !dbg !2635
  br i1 %434, label %441, label %435, !dbg !2637

; <label>:435:                                    ; preds = %432
  %436 = icmp ult i64 %381, %131, !dbg !2638
  br i1 %436, label %437, label %439, !dbg !2643

; <label>:437:                                    ; preds = %435
  %438 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !2645
  store i8 92, i8* %438, align 1, !dbg !2645, !tbaa !864
  br label %439, !dbg !2645

; <label>:439:                                    ; preds = %437, %435
  %440 = add i64 %381, 1, !dbg !2647
  call void @llvm.dbg.value(metadata i64 %440, i64 0, metadata !2091, metadata !730), !dbg !2153
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2106, metadata !730), !dbg !2240
  br label %441, !dbg !2649

; <label>:441:                                    ; preds = %432, %439, %428
  %442 = phi i64 [ %440, %439 ], [ %381, %432 ], [ %429, %428 ]
  %443 = phi i8 [ %382, %439 ], [ %382, %432 ], [ %409, %428 ]
  %444 = phi i8 [ %383, %439 ], [ %383, %432 ], [ %431, %428 ]
  %445 = phi i8 [ 0, %439 ], [ %384, %432 ], [ %384, %428 ]
  %446 = phi i8 [ %385, %439 ], [ %385, %432 ], [ 1, %428 ]
  call void @llvm.dbg.value(metadata i8 %446, i64 0, metadata !2107, metadata !730), !dbg !2241
  call void @llvm.dbg.value(metadata i8 %445, i64 0, metadata !2106, metadata !730), !dbg !2240
  call void @llvm.dbg.value(metadata i8 %444, i64 0, metadata !2101, metadata !730), !dbg !2259
  call void @llvm.dbg.value(metadata i8 %443, i64 0, metadata !2098, metadata !730), !dbg !2161
  call void @llvm.dbg.value(metadata i64 %442, i64 0, metadata !2091, metadata !730), !dbg !2153
  %447 = add i64 %380, 1, !dbg !2650
  %448 = icmp ugt i64 %378, %447, !dbg !2652
  br i1 %448, label %449, label %541, !dbg !2653

; <label>:449:                                    ; preds = %441
  %450 = and i8 %443, 1, !dbg !2654
  %451 = icmp ne i8 %450, 0, !dbg !2654
  %452 = and i8 %446, 1, !dbg !2658
  %453 = icmp eq i8 %452, 0, !dbg !2658
  %454 = and i1 %451, %453, !dbg !2654
  br i1 %454, label %455, label %466, !dbg !2654

; <label>:455:                                    ; preds = %449
  %456 = icmp ult i64 %442, %131, !dbg !2660
  br i1 %456, label %457, label %459, !dbg !2665

; <label>:457:                                    ; preds = %455
  %458 = getelementptr inbounds i8, i8* %0, i64 %442, !dbg !2667
  store i8 39, i8* %458, align 1, !dbg !2667, !tbaa !864
  br label %459, !dbg !2667

; <label>:459:                                    ; preds = %457, %455
  %460 = add i64 %442, 1, !dbg !2669
  call void @llvm.dbg.value(metadata i64 %460, i64 0, metadata !2091, metadata !730), !dbg !2153
  %461 = icmp ult i64 %460, %131, !dbg !2671
  br i1 %461, label %462, label %464, !dbg !2675

; <label>:462:                                    ; preds = %459
  %463 = getelementptr inbounds i8, i8* %0, i64 %460, !dbg !2677
  store i8 39, i8* %463, align 1, !dbg !2677, !tbaa !864
  br label %464, !dbg !2677

; <label>:464:                                    ; preds = %462, %459
  %465 = add i64 %442, 2, !dbg !2679
  call void @llvm.dbg.value(metadata i64 %465, i64 0, metadata !2091, metadata !730), !dbg !2153
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2098, metadata !730), !dbg !2161
  br label %466, !dbg !2681

; <label>:466:                                    ; preds = %449, %464
  %467 = phi i64 [ %465, %464 ], [ %442, %449 ]
  %468 = phi i8 [ 0, %464 ], [ %443, %449 ]
  call void @llvm.dbg.value(metadata i8 %468, i64 0, metadata !2098, metadata !730), !dbg !2161
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !2091, metadata !730), !dbg !2153
  %469 = icmp ult i64 %467, %131, !dbg !2683
  br i1 %469, label %470, label %472, !dbg !2687

; <label>:470:                                    ; preds = %466
  %471 = getelementptr inbounds i8, i8* %0, i64 %467, !dbg !2689
  store i8 %444, i8* %471, align 1, !dbg !2689, !tbaa !864
  br label %472, !dbg !2689

; <label>:472:                                    ; preds = %470, %466
  %473 = add i64 %467, 1, !dbg !2691
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !2091, metadata !730), !dbg !2153
  call void @llvm.dbg.value(metadata i64 %447, i64 0, metadata !2090, metadata !730), !dbg !2228
  %474 = getelementptr inbounds i8, i8* %2, i64 %447, !dbg !2693
  %475 = load i8, i8* %474, align 1, !dbg !2693, !tbaa !864
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !2101, metadata !730), !dbg !2259
  br label %379, !dbg !2694, !llvm.loop !2696

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
  call void @llvm.dbg.value(metadata i64 %486, i64 0, metadata !2082, metadata !730), !dbg !2145
  call void @llvm.dbg.value(metadata i8 %485, i64 0, metadata !2108, metadata !730), !dbg !2242
  call void @llvm.dbg.value(metadata i8 %484, i64 0, metadata !2107, metadata !730), !dbg !2241
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !2106, metadata !730), !dbg !2240
  call void @llvm.dbg.value(metadata i8 %483, i64 0, metadata !2101, metadata !730), !dbg !2259
  call void @llvm.dbg.value(metadata i8 %482, i64 0, metadata !2099, metadata !730), !dbg !2162
  call void @llvm.dbg.value(metadata i8 %481, i64 0, metadata !2098, metadata !730), !dbg !2161
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !2084, metadata !730), !dbg !2147
  call void @llvm.dbg.value(metadata i64 %479, i64 0, metadata !2092, metadata !730), !dbg !2154
  call void @llvm.dbg.value(metadata i64 %478, i64 0, metadata !2091, metadata !730), !dbg !2153
  call void @llvm.dbg.value(metadata i64 %477, i64 0, metadata !2090, metadata !730), !dbg !2228
  br i1 %107, label %488, label %487, !dbg !2699

; <label>:487:                                    ; preds = %476
  br i1 %117, label %489, label %501, !dbg !2701

; <label>:488:                                    ; preds = %476
  br i1 %20, label %501, label %489, !dbg !2702

; <label>:489:                                    ; preds = %488, %487
  %490 = lshr i8 %483, 5, !dbg !2703
  %491 = zext i8 %490 to i64, !dbg !2703
  %492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !2705
  %493 = load i32, i32* %492, align 4, !dbg !2705, !tbaa !972
  %494 = and i8 %483, 31, !dbg !2706
  %495 = zext i8 %494 to i32, !dbg !2707
  %496 = shl i32 1, %495, !dbg !2708
  %497 = and i32 %493, %496, !dbg !2708
  %498 = icmp eq i32 %497, 0, !dbg !2708
  %499 = icmp eq i8 %157, 0, !dbg !2709
  %500 = and i1 %499, %498, !dbg !2710
  br i1 %500, label %542, label %503, !dbg !2710

; <label>:501:                                    ; preds = %488, %487
  %502 = icmp eq i8 %157, 0, !dbg !2709
  br i1 %502, label %542, label %503, !dbg !2711

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
  call void @llvm.dbg.value(metadata i64 %512, i64 0, metadata !2082, metadata !730), !dbg !2145
  call void @llvm.dbg.value(metadata i8 %511, i64 0, metadata !2108, metadata !730), !dbg !2242
  call void @llvm.dbg.value(metadata i8 %510, i64 0, metadata !2101, metadata !730), !dbg !2259
  call void @llvm.dbg.value(metadata i8 %509, i64 0, metadata !2099, metadata !730), !dbg !2162
  call void @llvm.dbg.value(metadata i8 %508, i64 0, metadata !2098, metadata !730), !dbg !2161
  call void @llvm.dbg.value(metadata i64 %507, i64 0, metadata !2084, metadata !730), !dbg !2147
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !2092, metadata !730), !dbg !2154
  call void @llvm.dbg.value(metadata i64 %505, i64 0, metadata !2091, metadata !730), !dbg !2153
  call void @llvm.dbg.value(metadata i64 %504, i64 0, metadata !2090, metadata !730), !dbg !2228
  br i1 %112, label %513, label %644, !dbg !2713

; <label>:513:                                    ; preds = %503
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2107, metadata !730), !dbg !2241
  %514 = and i8 %508, 1, !dbg !2716
  %515 = icmp eq i8 %514, 0, !dbg !2716
  %516 = and i1 %114, %515, !dbg !2719
  br i1 %516, label %517, label %533, !dbg !2719

; <label>:517:                                    ; preds = %513
  %518 = icmp ult i64 %505, %512, !dbg !2721
  br i1 %518, label %519, label %521, !dbg !2726

; <label>:519:                                    ; preds = %517
  %520 = getelementptr inbounds i8, i8* %0, i64 %505, !dbg !2728
  store i8 39, i8* %520, align 1, !dbg !2728, !tbaa !864
  br label %521, !dbg !2728

; <label>:521:                                    ; preds = %519, %517
  %522 = add i64 %505, 1, !dbg !2730
  call void @llvm.dbg.value(metadata i64 %522, i64 0, metadata !2091, metadata !730), !dbg !2153
  %523 = icmp ult i64 %522, %512, !dbg !2732
  br i1 %523, label %524, label %526, !dbg !2736

; <label>:524:                                    ; preds = %521
  %525 = getelementptr inbounds i8, i8* %0, i64 %522, !dbg !2738
  store i8 36, i8* %525, align 1, !dbg !2738, !tbaa !864
  br label %526, !dbg !2738

; <label>:526:                                    ; preds = %524, %521
  %527 = add i64 %505, 2, !dbg !2740
  call void @llvm.dbg.value(metadata i64 %527, i64 0, metadata !2091, metadata !730), !dbg !2153
  %528 = icmp ult i64 %527, %512, !dbg !2742
  br i1 %528, label %529, label %531, !dbg !2746

; <label>:529:                                    ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !2748
  store i8 39, i8* %530, align 1, !dbg !2748, !tbaa !864
  br label %531, !dbg !2748

; <label>:531:                                    ; preds = %529, %526
  %532 = add i64 %505, 3, !dbg !2750
  call void @llvm.dbg.value(metadata i64 %532, i64 0, metadata !2091, metadata !730), !dbg !2153
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2098, metadata !730), !dbg !2161
  br label %533, !dbg !2752

; <label>:533:                                    ; preds = %513, %531
  %534 = phi i64 [ %532, %531 ], [ %505, %513 ]
  %535 = phi i8 [ 1, %531 ], [ %508, %513 ]
  call void @llvm.dbg.value(metadata i8 %535, i64 0, metadata !2098, metadata !730), !dbg !2161
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !2091, metadata !730), !dbg !2153
  %536 = icmp ult i64 %534, %512, !dbg !2754
  br i1 %536, label %537, label %539, !dbg !2758

; <label>:537:                                    ; preds = %533
  %538 = getelementptr inbounds i8, i8* %0, i64 %534, !dbg !2760
  store i8 92, i8* %538, align 1, !dbg !2760, !tbaa !864
  br label %539, !dbg !2760

; <label>:539:                                    ; preds = %533, %537
  %540 = add i64 %534, 1, !dbg !2762
  call void @llvm.dbg.value(metadata i64 %540, i64 0, metadata !2091, metadata !730), !dbg !2153
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !2082, metadata !730), !dbg !2145
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !2108, metadata !730), !dbg !2242
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !2107, metadata !730), !dbg !2241
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !2101, metadata !730), !dbg !2259
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !2099, metadata !730), !dbg !2162
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !2098, metadata !730), !dbg !2161
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !2084, metadata !730), !dbg !2147
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !2092, metadata !730), !dbg !2154
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !2091, metadata !730), !dbg !2153
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !2090, metadata !730), !dbg !2228
  br label %569, !dbg !2764

; <label>:541:                                    ; preds = %441
  br label %542, !dbg !2145

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
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !2082, metadata !730), !dbg !2145
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !2108, metadata !730), !dbg !2242
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !2107, metadata !730), !dbg !2241
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !2101, metadata !730), !dbg !2259
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !2099, metadata !730), !dbg !2162
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !2098, metadata !730), !dbg !2161
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !2084, metadata !730), !dbg !2147
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !2092, metadata !730), !dbg !2154
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !2091, metadata !730), !dbg !2153
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !2090, metadata !730), !dbg !2228
  %553 = and i8 %547, 1, !dbg !2764
  %554 = icmp ne i8 %553, 0, !dbg !2764
  %555 = and i8 %550, 1, !dbg !2768
  %556 = icmp eq i8 %555, 0, !dbg !2768
  %557 = and i1 %554, %556, !dbg !2764
  br i1 %557, label %558, label %569, !dbg !2764

; <label>:558:                                    ; preds = %542
  %559 = icmp ult i64 %544, %552, !dbg !2770
  br i1 %559, label %560, label %562, !dbg !2775

; <label>:560:                                    ; preds = %558
  %561 = getelementptr inbounds i8, i8* %0, i64 %544, !dbg !2777
  store i8 39, i8* %561, align 1, !dbg !2777, !tbaa !864
  br label %562, !dbg !2777

; <label>:562:                                    ; preds = %560, %558
  %563 = add i64 %544, 1, !dbg !2779
  call void @llvm.dbg.value(metadata i64 %563, i64 0, metadata !2091, metadata !730), !dbg !2153
  %564 = icmp ult i64 %563, %552, !dbg !2781
  br i1 %564, label %565, label %567, !dbg !2785

; <label>:565:                                    ; preds = %562
  %566 = getelementptr inbounds i8, i8* %0, i64 %563, !dbg !2787
  store i8 39, i8* %566, align 1, !dbg !2787, !tbaa !864
  br label %567, !dbg !2787

; <label>:567:                                    ; preds = %565, %562
  %568 = add i64 %544, 2, !dbg !2789
  call void @llvm.dbg.value(metadata i64 %568, i64 0, metadata !2091, metadata !730), !dbg !2153
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2098, metadata !730), !dbg !2161
  br label %569, !dbg !2791

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
  call void @llvm.dbg.value(metadata i8 %578, i64 0, metadata !2098, metadata !730), !dbg !2161
  call void @llvm.dbg.value(metadata i64 %577, i64 0, metadata !2091, metadata !730), !dbg !2153
  %579 = icmp ult i64 %577, %570, !dbg !2793
  br i1 %579, label %580, label %582, !dbg !2797

; <label>:580:                                    ; preds = %569
  %581 = getelementptr inbounds i8, i8* %0, i64 %577, !dbg !2799
  store i8 %572, i8* %581, align 1, !dbg !2799, !tbaa !864
  br label %582, !dbg !2799

; <label>:582:                                    ; preds = %580, %569
  %583 = add i64 %577, 1, !dbg !2801
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !2091, metadata !730), !dbg !2153
  %584 = and i8 %571, 1, !dbg !2803
  %585 = icmp eq i8 %584, 0, !dbg !2803
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2100, metadata !730), !dbg !2163
  %586 = select i1 %585, i8 0, i8 %130, !dbg !2805
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !2100, metadata !730), !dbg !2163
  br label %587, !dbg !2806

; <label>:587:                                    ; preds = %582, %209
  %588 = phi i64 [ %124, %209 ], [ %576, %582 ]
  %589 = phi i64 [ %125, %209 ], [ %583, %582 ]
  %590 = phi i64 [ %126, %209 ], [ %575, %582 ]
  %591 = phi i64 [ %156, %209 ], [ %574, %582 ]
  %592 = phi i8 [ %128, %209 ], [ %578, %582 ]
  %593 = phi i8 [ %129, %209 ], [ %573, %582 ]
  %594 = phi i8 [ %130, %209 ], [ %586, %582 ]
  %595 = phi i64 [ %131, %209 ], [ %570, %582 ]
  %596 = add i64 %588, 1, !dbg !2807
  call void @llvm.dbg.value(metadata i64 %596, i64 0, metadata !2090, metadata !730), !dbg !2228
  br label %123, !dbg !2809, !llvm.loop !2810

; <label>:597:                                    ; preds = %133, %135
  %598 = phi i64 [ %124, %133 ], [ -1, %135 ]
  %599 = icmp eq i64 %125, 0, !dbg !2813
  %600 = and i1 %114, %599, !dbg !2815
  %601 = xor i1 %600, true, !dbg !2815
  %602 = or i1 %112, %601, !dbg !2815
  br i1 %602, label %603, label %648, !dbg !2815

; <label>:603:                                    ; preds = %597
  %604 = and i1 %114, %112, !dbg !2816
  %605 = xor i1 %604, true, !dbg !2816
  %606 = and i8 %129, 1, !dbg !2818
  %607 = icmp eq i8 %606, 0, !dbg !2818
  %608 = or i1 %607, %605, !dbg !2816
  br i1 %608, label %618, label %609, !dbg !2816

; <label>:609:                                    ; preds = %603
  %610 = and i8 %130, 1, !dbg !2820
  %611 = icmp eq i8 %610, 0, !dbg !2820
  br i1 %611, label %614, label %612, !dbg !2823

; <label>:612:                                    ; preds = %609
  %613 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %126, i8* %2, i64 %598, i32 5, i32 %5, i32* %6, i8* %97, i8* %98), !dbg !2824
  br label %659, !dbg !2825

; <label>:614:                                    ; preds = %609
  %615 = icmp eq i64 %131, 0, !dbg !2826
  %616 = icmp ne i64 %126, 0, !dbg !2828
  %617 = and i1 %616, %615, !dbg !2830
  br i1 %617, label %27, label %618, !dbg !2830

; <label>:618:                                    ; preds = %603, %614
  %619 = icmp ne i8* %100, null, !dbg !2831
  %620 = and i1 %619, %112, !dbg !2833
  br i1 %620, label %621, label %638, !dbg !2833

; <label>:621:                                    ; preds = %618
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !2093, metadata !730), !dbg !2155
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !2091, metadata !730), !dbg !2153
  %622 = load i8, i8* %100, align 1, !dbg !2834, !tbaa !864
  %623 = icmp eq i8 %622, 0, !dbg !2838
  br i1 %623, label %638, label %624, !dbg !2838

; <label>:624:                                    ; preds = %621
  br label %625, !dbg !2840

; <label>:625:                                    ; preds = %624, %632
  %626 = phi i8 [ %635, %632 ], [ %622, %624 ]
  %627 = phi i8* [ %634, %632 ], [ %100, %624 ]
  %628 = phi i64 [ %633, %632 ], [ %125, %624 ]
  %629 = icmp ult i64 %628, %131, !dbg !2840
  br i1 %629, label %630, label %632, !dbg !2844

; <label>:630:                                    ; preds = %625
  %631 = getelementptr inbounds i8, i8* %0, i64 %628, !dbg !2846
  store i8 %626, i8* %631, align 1, !dbg !2846, !tbaa !864
  br label %632, !dbg !2846

; <label>:632:                                    ; preds = %630, %625
  %633 = add i64 %628, 1, !dbg !2848
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !2091, metadata !730), !dbg !2153
  %634 = getelementptr inbounds i8, i8* %627, i64 1, !dbg !2850
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !2093, metadata !730), !dbg !2155
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !2093, metadata !730), !dbg !2155
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !2091, metadata !730), !dbg !2153
  %635 = load i8, i8* %634, align 1, !dbg !2834, !tbaa !864
  %636 = icmp eq i8 %635, 0, !dbg !2838
  br i1 %636, label %637, label %625, !dbg !2838, !llvm.loop !2852

; <label>:637:                                    ; preds = %632
  br label %638, !dbg !2153

; <label>:638:                                    ; preds = %637, %621, %618
  %639 = phi i64 [ %125, %618 ], [ %125, %621 ], [ %633, %637 ]
  call void @llvm.dbg.value(metadata i64 %639, i64 0, metadata !2091, metadata !730), !dbg !2153
  %640 = icmp ult i64 %639, %131, !dbg !2855
  br i1 %640, label %641, label %659, !dbg !2857

; <label>:641:                                    ; preds = %638
  %642 = getelementptr inbounds i8, i8* %0, i64 %639, !dbg !2858
  store i8 0, i8* %642, align 1, !dbg !2859, !tbaa !864
  br label %659, !dbg !2858

; <label>:643:                                    ; preds = %386
  br label %649, !dbg !2145

; <label>:644:                                    ; preds = %148, %161, %211, %225, %253, %255, %273, %276, %503
  %645 = phi i32 [ %96, %148 ], [ %96, %161 ], [ 2, %211 ], [ 5, %225 ], [ 2, %253 ], [ 2, %255 ], [ 2, %273 ], [ 2, %276 ], [ %96, %503 ]
  %646 = phi i64 [ %146, %148 ], [ %156, %161 ], [ %156, %211 ], [ %156, %225 ], [ %156, %253 ], [ %156, %255 ], [ %156, %273 ], [ %156, %276 ], [ %507, %503 ]
  %647 = phi i64 [ %131, %148 ], [ %131, %161 ], [ %131, %211 ], [ %131, %225 ], [ %131, %253 ], [ %131, %255 ], [ %131, %273 ], [ %131, %276 ], [ %512, %503 ]
  br label %649, !dbg !2145

; <label>:648:                                    ; preds = %597
  br label %649, !dbg !2145

; <label>:649:                                    ; preds = %648, %644, %643, %367
  %650 = phi i32 [ 2, %367 ], [ %96, %643 ], [ %645, %644 ], [ %96, %648 ]
  %651 = phi i64 [ %313, %367 ], [ %369, %643 ], [ %646, %644 ], [ %598, %648 ]
  %652 = phi i64 [ %131, %367 ], [ %131, %643 ], [ %647, %644 ], [ %131, %648 ]
  call void @llvm.dbg.value(metadata i64 %652, i64 0, metadata !2082, metadata !730), !dbg !2145
  call void @llvm.dbg.value(metadata i64 %651, i64 0, metadata !2084, metadata !730), !dbg !2147
  %653 = icmp ne i32 %650, 2, !dbg !2860
  %654 = icmp eq i8 %104, 0, !dbg !2862
  %655 = or i1 %653, %654, !dbg !2864
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !2085, metadata !730), !dbg !2148
  %656 = select i1 %655, i32 %650, i32 4, !dbg !2864
  call void @llvm.dbg.value(metadata i32 %656, i64 0, metadata !2085, metadata !730), !dbg !2148
  %657 = and i32 %5, -3, !dbg !2865
  %658 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %652, i8* %2, i64 %651, i32 %656, i32 %657, i32* null, i8* %97, i8* %98), !dbg !2866
  br label %659, !dbg !2867

; <label>:659:                                    ; preds = %638, %641, %649, %612
  %660 = phi i64 [ %658, %649 ], [ %613, %612 ], [ %639, %641 ], [ %639, %638 ]
  ret i64 %660, !dbg !2868
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !2869 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2873, metadata !730), !dbg !2877
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2874, metadata !730), !dbg !2878
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #10, !dbg !2879
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2875, metadata !730), !dbg !2880
  %4 = icmp eq i8* %3, %0, !dbg !2881
  br i1 %4, label %5, label %75, !dbg !2883

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #10, !dbg !2884
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !2876, metadata !730), !dbg !2885
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2886, metadata !730), !dbg !2902
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2900, metadata !730), !dbg !2905
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2901, metadata !730), !dbg !2906
  %7 = load i8, i8* %6, align 1, !tbaa !864
  %8 = sext i8 %7 to i32
  %9 = and i32 %8, -33, !dbg !2907
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !2907

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2910, metadata !730), !dbg !2924
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2922, metadata !730), !dbg !2928
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2923, metadata !730), !dbg !2929
  %11 = getelementptr inbounds i8, i8* %6, i64 1
  %12 = load i8, i8* %11, align 1, !tbaa !864
  %13 = sext i8 %12 to i32
  %14 = and i32 %13, -33, !dbg !2930
  %15 = icmp eq i32 %14, 84, !dbg !2930
  br i1 %15, label %16, label %72, !dbg !2930

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2933, metadata !730), !dbg !2946
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2944, metadata !730), !dbg !2950
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2945, metadata !730), !dbg !2951
  %17 = getelementptr inbounds i8, i8* %6, i64 2
  %18 = load i8, i8* %17, align 1, !tbaa !864
  %19 = sext i8 %18 to i32
  %20 = and i32 %19, -33, !dbg !2952
  %21 = icmp eq i32 %20, 70, !dbg !2952
  br i1 %21, label %22, label %72, !dbg !2952

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2955, metadata !730), !dbg !2967
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2965, metadata !730), !dbg !2971
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2966, metadata !730), !dbg !2972
  %23 = getelementptr inbounds i8, i8* %6, i64 3
  %24 = load i8, i8* %23, align 1, !tbaa !864
  %25 = icmp eq i8 %24, 45, !dbg !2973
  br i1 %25, label %26, label %72, !dbg !2976

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2978, metadata !730), !dbg !2989
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2987, metadata !730), !dbg !2993
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2988, metadata !730), !dbg !2994
  %27 = getelementptr inbounds i8, i8* %6, i64 4
  %28 = load i8, i8* %27, align 1, !tbaa !864
  %29 = icmp eq i8 %28, 56, !dbg !2995
  br i1 %29, label %30, label %72, !dbg !2998

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3000, metadata !730), !dbg !3010
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3008, metadata !730), !dbg !3014
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3009, metadata !730), !dbg !3015
  %31 = getelementptr inbounds i8, i8* %6, i64 5
  %32 = load i8, i8* %31, align 1, !tbaa !864
  %33 = icmp eq i8 %32, 0, !dbg !3016
  br i1 %33, label %34, label %72, !dbg !3019

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !3021, !tbaa !864
  %36 = icmp eq i8 %35, 96, !dbg !3022
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.83, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.84, i64 0, i64 0), !dbg !3021
  br label %75, !dbg !3023

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2910, metadata !730), !dbg !3024
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2922, metadata !730), !dbg !3028
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2923, metadata !730), !dbg !3029
  %39 = getelementptr inbounds i8, i8* %6, i64 1
  %40 = load i8, i8* %39, align 1, !tbaa !864
  %41 = sext i8 %40 to i32
  %42 = and i32 %41, -33, !dbg !3030
  %43 = icmp eq i32 %42, 66, !dbg !3030
  br i1 %43, label %44, label %72, !dbg !3030

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2933, metadata !730), !dbg !3031
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2944, metadata !730), !dbg !3033
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2945, metadata !730), !dbg !3034
  %45 = getelementptr inbounds i8, i8* %6, i64 2
  %46 = load i8, i8* %45, align 1, !tbaa !864
  %47 = icmp eq i8 %46, 49, !dbg !3035
  br i1 %47, label %48, label %72, !dbg !3037

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2955, metadata !730), !dbg !3039
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2965, metadata !730), !dbg !3041
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2966, metadata !730), !dbg !3042
  %49 = getelementptr inbounds i8, i8* %6, i64 3
  %50 = load i8, i8* %49, align 1, !tbaa !864
  %51 = icmp eq i8 %50, 56, !dbg !3043
  br i1 %51, label %52, label %72, !dbg !3044

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2978, metadata !730), !dbg !3045
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2987, metadata !730), !dbg !3047
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2988, metadata !730), !dbg !3048
  %53 = getelementptr inbounds i8, i8* %6, i64 4
  %54 = load i8, i8* %53, align 1, !tbaa !864
  %55 = icmp eq i8 %54, 48, !dbg !3049
  br i1 %55, label %56, label %72, !dbg !3050

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3000, metadata !730), !dbg !3051
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3008, metadata !730), !dbg !3053
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3009, metadata !730), !dbg !3054
  %57 = getelementptr inbounds i8, i8* %6, i64 5
  %58 = load i8, i8* %57, align 1, !tbaa !864
  %59 = icmp eq i8 %58, 51, !dbg !3055
  br i1 %59, label %60, label %72, !dbg !3056

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3057, metadata !730), !dbg !3066
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3064, metadata !730), !dbg !3070
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3065, metadata !730), !dbg !3071
  %61 = getelementptr inbounds i8, i8* %6, i64 6
  %62 = load i8, i8* %61, align 1, !tbaa !864
  %63 = icmp eq i8 %62, 48, !dbg !3072
  br i1 %63, label %64, label %72, !dbg !3075

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3077, metadata !730), !dbg !3085
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3083, metadata !730), !dbg !3089
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3084, metadata !730), !dbg !3090
  %65 = getelementptr inbounds i8, i8* %6, i64 7
  %66 = load i8, i8* %65, align 1, !tbaa !864
  %67 = icmp eq i8 %66, 0, !dbg !3091
  br i1 %67, label %68, label %72, !dbg !3094

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !3095, !tbaa !864
  %70 = icmp eq i8 %69, 96, !dbg !3096
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.85, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.86, i64 0, i64 0), !dbg !3095
  br label %75, !dbg !3097

; <label>:72:                                     ; preds = %5, %30, %26, %22, %16, %10, %64, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !3098
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.82, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.81, i64 0, i64 0), !dbg !3099
  br label %75, !dbg !3100

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !3101
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #8

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #7

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #7

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !3102 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3106, metadata !730), !dbg !3109
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3107, metadata !730), !dbg !3110
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3108, metadata !730), !dbg !3111
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3112, metadata !730) #10, !dbg !3125
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3117, metadata !730) #10, !dbg !3127
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !3118, metadata !730) #10, !dbg !3128
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3119, metadata !730) #10, !dbg !3129
  %4 = icmp ne %struct.quoting_options* %2, null, !dbg !3130
  %5 = select i1 %4, %struct.quoting_options* %2, %struct.quoting_options* @default_quoting_options, !dbg !3130
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3120, metadata !730) #10, !dbg !3131
  %6 = tail call i32* @__errno_location() #1, !dbg !3132
  %7 = load i32, i32* %6, align 4, !dbg !3132, !tbaa !972
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !3121, metadata !730) #10, !dbg !3133
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3134
  %9 = load i32, i32* %8, align 4, !dbg !3134, !tbaa !2013
  %10 = or i32 %9, 1, !dbg !3135
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !3122, metadata !730) #10, !dbg !3136
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3137
  %12 = load i32, i32* %11, align 8, !dbg !3137, !tbaa !1951
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !3138
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3139
  %15 = load i8*, i8** %14, align 8, !dbg !3139, !tbaa !2040
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3140
  %17 = load i8*, i8** %16, align 8, !dbg !3140, !tbaa !2043
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #10, !dbg !3141
  %19 = add i64 %18, 1, !dbg !3142
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !3123, metadata !730) #10, !dbg !3143
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !3144, metadata !730) #10, !dbg !3149
  %20 = tail call noalias i8* @xmalloc(i64 %19) #10, !dbg !3151
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !3124, metadata !730) #10, !dbg !3152
  %21 = load i32, i32* %11, align 8, !dbg !3153, !tbaa !1951
  %22 = load i8*, i8** %14, align 8, !dbg !3154, !tbaa !2040
  %23 = load i8*, i8** %16, align 8, !dbg !3155, !tbaa !2043
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #10, !dbg !3156
  store i32 %7, i32* %6, align 4, !dbg !3157, !tbaa !972
  ret i8* %20, !dbg !3158
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !3113 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3112, metadata !730), !dbg !3159
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3117, metadata !730), !dbg !3160
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !3118, metadata !730), !dbg !3161
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3119, metadata !730), !dbg !3162
  %5 = icmp ne %struct.quoting_options* %3, null, !dbg !3163
  %6 = select i1 %5, %struct.quoting_options* %3, %struct.quoting_options* @default_quoting_options, !dbg !3163
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3120, metadata !730), !dbg !3164
  %7 = tail call i32* @__errno_location() #1, !dbg !3165
  %8 = load i32, i32* %7, align 4, !dbg !3165, !tbaa !972
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !3121, metadata !730), !dbg !3166
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3167
  %10 = load i32, i32* %9, align 4, !dbg !3167, !tbaa !2013
  %11 = icmp ne i64* %2, null, !dbg !3168
  %12 = xor i1 %11, true, !dbg !3168
  %13 = zext i1 %12 to i32, !dbg !3168
  %14 = or i32 %10, %13, !dbg !3169
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !3122, metadata !730), !dbg !3170
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3171
  %16 = load i32, i32* %15, align 8, !dbg !3171, !tbaa !1951
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !3172
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3173
  %19 = load i8*, i8** %18, align 8, !dbg !3173, !tbaa !2040
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3174
  %21 = load i8*, i8** %20, align 8, !dbg !3174, !tbaa !2043
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !3175
  %23 = add i64 %22, 1, !dbg !3176
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !3123, metadata !730), !dbg !3177
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !3144, metadata !730) #10, !dbg !3178
  %24 = tail call noalias i8* @xmalloc(i64 %23) #10, !dbg !3180
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !3124, metadata !730), !dbg !3181
  %25 = load i32, i32* %15, align 8, !dbg !3182, !tbaa !1951
  %26 = load i8*, i8** %18, align 8, !dbg !3183, !tbaa !2040
  %27 = load i8*, i8** %20, align 8, !dbg !3184, !tbaa !2043
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !3185
  store i32 %8, i32* %7, align 4, !dbg !3186, !tbaa !972
  br i1 %11, label %29, label %30, !dbg !3187

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !3188, !tbaa !874
  br label %30, !dbg !3190

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !3191
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !3192 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3196, !tbaa !738
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !3194, metadata !730), !dbg !3197
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3195, metadata !730), !dbg !3198
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3195, metadata !730), !dbg !3198
  %2 = load i32, i32* @nslots, align 4, !dbg !3199, !tbaa !972
  %3 = icmp sgt i32 %2, 1, !dbg !3203
  br i1 %3, label %4, label %14, !dbg !3204

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !3206

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !3206
  %8 = load i8*, i8** %7, align 8, !dbg !3206, !tbaa !3207
  tail call void @free(i8* %8) #10, !dbg !3209
  %9 = add nuw i64 %6, 1, !dbg !3210
  %10 = load i32, i32* @nslots, align 4, !dbg !3199, !tbaa !972
  %11 = sext i32 %10 to i64, !dbg !3203
  %12 = icmp slt i64 %9, %11, !dbg !3203
  br i1 %12, label %5, label %13, !dbg !3204, !llvm.loop !3212

; <label>:13:                                     ; preds = %5
  br label %14, !dbg !3215

; <label>:14:                                     ; preds = %13, %0
  %15 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !3215
  %16 = load i8*, i8** %15, align 8, !dbg !3215, !tbaa !3207
  %17 = icmp eq i8* %16, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3217
  br i1 %17, label %19, label %18, !dbg !3218

; <label>:18:                                     ; preds = %14
  tail call void @free(i8* %16) #10, !dbg !3219
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !3221, !tbaa !3222
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !3223, !tbaa !3207
  br label %19, !dbg !3224

; <label>:19:                                     ; preds = %14, %18
  %20 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !3225
  br i1 %20, label %23, label %21, !dbg !3227

; <label>:21:                                     ; preds = %19
  %22 = bitcast %struct.slotvec* %1 to i8*, !dbg !3228
  tail call void @free(i8* %22) #10, !dbg !3230
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !3231, !tbaa !738
  br label %23, !dbg !3232

; <label>:23:                                     ; preds = %19, %21
  store i32 1, i32* @nslots, align 4, !dbg !3233, !tbaa !972
  ret void, !dbg !3234
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !3235 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3239, metadata !730), !dbg !3241
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3240, metadata !730), !dbg !3242
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3243
  ret i8* %3, !dbg !3244
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !3245 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3249, metadata !730), !dbg !3263
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3250, metadata !730), !dbg !3264
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3251, metadata !730), !dbg !3265
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3252, metadata !730), !dbg !3266
  %5 = tail call i32* @__errno_location() #1, !dbg !3267
  %6 = load i32, i32* %5, align 4, !dbg !3267, !tbaa !972
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !3253, metadata !730), !dbg !3268
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3269, !tbaa !738
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !3254, metadata !730), !dbg !3270
  %8 = icmp slt i32 %0, 0, !dbg !3271
  br i1 %8, label %9, label %10, !dbg !3273

; <label>:9:                                      ; preds = %4
  tail call void @abort() #14, !dbg !3274
  unreachable, !dbg !3274

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !3275, !tbaa !972
  %12 = icmp sgt i32 %11, %0, !dbg !3276
  br i1 %12, label %34, label %13, !dbg !3277

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !3278
  %15 = icmp ugt i32 %0, 2147483646, !dbg !3279
  br i1 %15, label %16, label %17, !dbg !3281

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !3282
  unreachable, !dbg !3282

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !3283
  %19 = select i1 %14, i8* null, i8* %18, !dbg !3283
  %20 = add nsw i32 %0, 1, !dbg !3285
  %21 = sext i32 %20 to i64, !dbg !3286
  %22 = shl nsw i64 %21, 4, !dbg !3287
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #10, !dbg !3288
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !3288
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !3254, metadata !730), !dbg !3270
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !3289, !tbaa !738
  br i1 %14, label %25, label %26, !dbg !3290

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !3291, !tbaa.struct !3293
  br label %26, !dbg !3294

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !3295, !tbaa !972
  %28 = sext i32 %27 to i64, !dbg !3296
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !3296
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !3297
  %31 = sub nsw i32 %20, %27, !dbg !3298
  %32 = sext i32 %31 to i64, !dbg !3299
  %33 = shl nsw i64 %32, 4, !dbg !3300
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !3297
  store i32 %20, i32* @nslots, align 4, !dbg !3301, !tbaa !972
  br label %34, !dbg !3302

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !3254, metadata !730), !dbg !3270
  %36 = sext i32 %0 to i64, !dbg !3303
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !3304
  %38 = load i64, i64* %37, align 8, !dbg !3304, !tbaa !3222
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !3258, metadata !730), !dbg !3305
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !3306
  %40 = load i8*, i8** %39, align 8, !dbg !3306, !tbaa !3207
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !3260, metadata !730), !dbg !3307
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !3308
  %42 = load i32, i32* %41, align 4, !dbg !3308, !tbaa !2013
  %43 = or i32 %42, 1, !dbg !3309
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !3261, metadata !730), !dbg !3310
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3311
  %45 = load i32, i32* %44, align 8, !dbg !3311, !tbaa !1951
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !3312
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !3313
  %48 = load i8*, i8** %47, align 8, !dbg !3313, !tbaa !2040
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !3314
  %50 = load i8*, i8** %49, align 8, !dbg !3314, !tbaa !2043
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !3315
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !3262, metadata !730), !dbg !3316
  %52 = icmp ugt i64 %38, %51, !dbg !3317
  br i1 %52, label %63, label %53, !dbg !3319

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !3320
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !3258, metadata !730), !dbg !3305
  store i64 %54, i64* %37, align 8, !dbg !3322, !tbaa !3222
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3323
  br i1 %55, label %57, label %56, !dbg !3325

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #10, !dbg !3326
  br label %57, !dbg !3326

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !3144, metadata !730) #10, !dbg !3327
  %58 = tail call noalias i8* @xmalloc(i64 %54) #10, !dbg !3329
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !3260, metadata !730), !dbg !3307
  store i8* %58, i8** %39, align 8, !dbg !3330, !tbaa !3207
  %59 = load i32, i32* %44, align 8, !dbg !3331, !tbaa !1951
  %60 = load i8*, i8** %47, align 8, !dbg !3332, !tbaa !2040
  %61 = load i8*, i8** %49, align 8, !dbg !3333, !tbaa !2043
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !3334
  br label %63, !dbg !3335

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !3260, metadata !730), !dbg !3307
  store i32 %6, i32* %5, align 4, !dbg !3336, !tbaa !972
  ret i8* %64, !dbg !3337
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3338 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3342, metadata !730), !dbg !3345
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3343, metadata !730), !dbg !3346
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3344, metadata !730), !dbg !3347
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3348
  ret i8* %4, !dbg !3349
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !3350 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3354, metadata !730), !dbg !3355
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3239, metadata !730) #10, !dbg !3356
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3240, metadata !730) #10, !dbg !3358
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !3359
  ret i8* %2, !dbg !3360
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !3361 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3365, metadata !730), !dbg !3367
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3366, metadata !730), !dbg !3368
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3342, metadata !730) #10, !dbg !3369
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3343, metadata !730) #10, !dbg !3371
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3344, metadata !730) #10, !dbg !3372
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !3373
  ret i8* %3, !dbg !3374
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !3375 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !3383, metadata !3389), !dbg !3390
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3379, metadata !730), !dbg !3392
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3380, metadata !730), !dbg !3393
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3381, metadata !730), !dbg !3394
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3395
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !3395
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3382, metadata !2501), !dbg !3396
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3388, metadata !730) #10, !dbg !3397
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3398
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !3398
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3383, metadata !730) #10, !dbg !3390
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3383, metadata !3399) #10, !dbg !3390
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !3390
  %8 = icmp eq i32 %1, 10, !dbg !3400
  br i1 %8, label %9, label %10, !dbg !3402

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14, !dbg !3403, !noalias !3404
  unreachable, !dbg !3403

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3383, metadata !3399) #10, !dbg !3390
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3407
  store i32 %1, i32* %11, align 8, !dbg !3407, !alias.scope !3404
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3407
  %13 = bitcast i32* %12 to i8*, !dbg !3407
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !3407
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !3408
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3382, metadata !2501), !dbg !3396
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !3409
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !3410
  ret i8* %14, !dbg !3411
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !3412 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !3383, metadata !3389), !dbg !3421
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3416, metadata !730), !dbg !3423
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3417, metadata !730), !dbg !3424
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3418, metadata !730), !dbg !3425
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3419, metadata !730), !dbg !3426
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3427
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10, !dbg !3427
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3420, metadata !2501), !dbg !3428
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3388, metadata !730) #10, !dbg !3429
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !3430
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !3430
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3383, metadata !730) #10, !dbg !3421
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3383, metadata !3399) #10, !dbg !3421
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !3421
  %9 = icmp eq i32 %1, 10, !dbg !3431
  br i1 %9, label %10, label %11, !dbg !3432

; <label>:10:                                     ; preds = %4
  tail call void @abort() #14, !dbg !3433, !noalias !3434
  unreachable, !dbg !3433

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3383, metadata !3399) #10, !dbg !3421
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3437
  store i32 %1, i32* %12, align 8, !dbg !3437, !alias.scope !3434
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3437
  %14 = bitcast i32* %13 to i8*, !dbg !3437
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #10, !dbg !3437
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !3438
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3420, metadata !2501), !dbg !3428
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !3439
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10, !dbg !3440
  ret i8* %15, !dbg !3441
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !3442 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !3383, metadata !3389), !dbg !3448
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3446, metadata !730), !dbg !3451
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3447, metadata !730), !dbg !3452
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3379, metadata !730) #10, !dbg !3453
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3380, metadata !730) #10, !dbg !3454
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3381, metadata !730) #10, !dbg !3455
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3456
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10, !dbg !3456
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3382, metadata !2501) #10, !dbg !3457
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3388, metadata !730) #10, !dbg !3458
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !3459
  call void @llvm.lifetime.start(i64 52, i8* nonnull %6), !dbg !3459
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3383, metadata !730) #10, !dbg !3448
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3383, metadata !3399) #10, !dbg !3448
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !3448
  %7 = icmp eq i32 %0, 10, !dbg !3460
  br i1 %7, label %8, label %9, !dbg !3461

; <label>:8:                                      ; preds = %2
  tail call void @abort() #14, !dbg !3462, !noalias !3463
  unreachable, !dbg !3462

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3383, metadata !3399) #10, !dbg !3448
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3466
  store i32 %0, i32* %10, align 8, !dbg !3466, !alias.scope !3463
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3466
  %12 = bitcast i32* %11 to i8*, !dbg !3466
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #10, !dbg !3466
  call void @llvm.lifetime.end(i64 52, i8* nonnull %6), !dbg !3467
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3382, metadata !2501) #10, !dbg !3457
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !3468
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10, !dbg !3469
  ret i8* %13, !dbg !3470
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3471 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !3383, metadata !3389), !dbg !3478
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3475, metadata !730), !dbg !3481
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3476, metadata !730), !dbg !3482
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3477, metadata !730), !dbg !3483
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3416, metadata !730) #10, !dbg !3484
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3417, metadata !730) #10, !dbg !3485
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3418, metadata !730) #10, !dbg !3486
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3419, metadata !730) #10, !dbg !3487
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3488
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !3488
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3420, metadata !2501) #10, !dbg !3489
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3388, metadata !730) #10, !dbg !3490
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3491
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !3491
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3383, metadata !730) #10, !dbg !3478
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3383, metadata !3399) #10, !dbg !3478
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !3478
  %8 = icmp eq i32 %0, 10, !dbg !3492
  br i1 %8, label %9, label %10, !dbg !3493

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14, !dbg !3494, !noalias !3495
  unreachable, !dbg !3494

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3383, metadata !3399) #10, !dbg !3478
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3498
  store i32 %0, i32* %11, align 8, !dbg !3498, !alias.scope !3495
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3498
  %13 = bitcast i32* %12 to i8*, !dbg !3498
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !3498
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !3499
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3420, metadata !2501) #10, !dbg !3489
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #10, !dbg !3500
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !3501
  ret i8* %14, !dbg !3502
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !3503 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3507, metadata !730), !dbg !3511
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3508, metadata !730), !dbg !3512
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !3509, metadata !730), !dbg !3513
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3514
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10, !dbg !3514
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !3515, !tbaa.struct !3516
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3510, metadata !2501), !dbg !3517
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1971, metadata !730), !dbg !3518
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1972, metadata !730), !dbg !3520
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1973, metadata !730), !dbg !3521
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1974, metadata !730), !dbg !3522
  %6 = lshr i8 %2, 5, !dbg !3523
  %7 = zext i8 %6 to i64, !dbg !3523
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3524
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1975, metadata !730), !dbg !3525
  %9 = and i8 %2, 31, !dbg !3526
  %10 = zext i8 %9 to i32, !dbg !3527
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1977, metadata !730), !dbg !3528
  %11 = load i32, i32* %8, align 4, !dbg !3529, !tbaa !972
  %12 = lshr i32 %11, %10, !dbg !3530
  %13 = and i32 %12, 1, !dbg !3531
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1978, metadata !730), !dbg !3532
  %14 = xor i32 %13, 1, !dbg !3533
  %15 = shl i32 %14, %10, !dbg !3534
  %16 = xor i32 %15, %11, !dbg !3535
  store i32 %16, i32* %8, align 4, !dbg !3535, !tbaa !972
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3510, metadata !2501), !dbg !3517
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !3536
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10, !dbg !3537
  ret i8* %17, !dbg !3538
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !3539 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3543, metadata !730), !dbg !3545
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !3544, metadata !730), !dbg !3546
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3507, metadata !730) #10, !dbg !3547
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3508, metadata !730) #10, !dbg !3549
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !3509, metadata !730) #10, !dbg !3550
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3551
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #10, !dbg !3551
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3552, !tbaa.struct !3516
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3510, metadata !2501) #10, !dbg !3553
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1971, metadata !730) #10, !dbg !3554
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1972, metadata !730) #10, !dbg !3556
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1973, metadata !730) #10, !dbg !3557
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1974, metadata !730) #10, !dbg !3558
  %5 = lshr i8 %1, 5, !dbg !3559
  %6 = zext i8 %5 to i64, !dbg !3559
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3560
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !1975, metadata !730) #10, !dbg !3561
  %8 = and i8 %1, 31, !dbg !3562
  %9 = zext i8 %8 to i32, !dbg !3563
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1977, metadata !730) #10, !dbg !3564
  %10 = load i32, i32* %7, align 4, !dbg !3565, !tbaa !972
  %11 = lshr i32 %10, %9, !dbg !3566
  %12 = and i32 %11, 1, !dbg !3567
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !1978, metadata !730) #10, !dbg !3568
  %13 = xor i32 %12, 1, !dbg !3569
  %14 = shl i32 %13, %9, !dbg !3570
  %15 = xor i32 %14, %10, !dbg !3571
  store i32 %15, i32* %7, align 4, !dbg !3571, !tbaa !972
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3510, metadata !2501) #10, !dbg !3553
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !3572
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #10, !dbg !3573
  ret i8* %16, !dbg !3574
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !3575 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3577, metadata !730), !dbg !3578
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3543, metadata !730) #10, !dbg !3579
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3544, metadata !730) #10, !dbg !3581
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3507, metadata !730) #10, !dbg !3582
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3508, metadata !730) #10, !dbg !3584
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3509, metadata !730) #10, !dbg !3585
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3586
  call void @llvm.lifetime.start(i64 56, i8* nonnull %3) #10, !dbg !3586
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3587, !tbaa.struct !3516
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3510, metadata !2501) #10, !dbg !3588
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1971, metadata !730) #10, !dbg !3589
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1972, metadata !730) #10, !dbg !3591
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1973, metadata !730) #10, !dbg !3592
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1974, metadata !730) #10, !dbg !3593
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3594
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !1975, metadata !730) #10, !dbg !3595
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1977, metadata !730) #10, !dbg !3596
  %5 = load i32, i32* %4, align 4, !dbg !3597, !tbaa !972
  %6 = or i32 %5, 67108864, !dbg !3598
  store i32 %6, i32* %4, align 4, !dbg !3598, !tbaa !972
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3510, metadata !2501) #10, !dbg !3588
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #10, !dbg !3599
  call void @llvm.lifetime.end(i64 56, i8* nonnull %3) #10, !dbg !3600
  ret i8* %7, !dbg !3601
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !3602 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3604, metadata !730), !dbg !3606
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3605, metadata !730), !dbg !3607
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3507, metadata !730) #10, !dbg !3608
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3508, metadata !730) #10, !dbg !3610
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3509, metadata !730) #10, !dbg !3611
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3612
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #10, !dbg !3612
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3613, !tbaa.struct !3516
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3510, metadata !2501) #10, !dbg !3614
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1971, metadata !730) #10, !dbg !3615
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1972, metadata !730) #10, !dbg !3617
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1973, metadata !730) #10, !dbg !3618
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1974, metadata !730) #10, !dbg !3619
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3620
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !1975, metadata !730) #10, !dbg !3621
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1977, metadata !730) #10, !dbg !3622
  %6 = load i32, i32* %5, align 4, !dbg !3623, !tbaa !972
  %7 = or i32 %6, 67108864, !dbg !3624
  store i32 %7, i32* %5, align 4, !dbg !3624, !tbaa !972
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3510, metadata !2501) #10, !dbg !3614
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #10, !dbg !3625
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #10, !dbg !3626
  ret i8* %8, !dbg !3627
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !3628 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !3383, metadata !3389), !dbg !3634
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3630, metadata !730), !dbg !3636
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3631, metadata !730), !dbg !3637
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3632, metadata !730), !dbg !3638
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3639
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10, !dbg !3639
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3388, metadata !730) #10, !dbg !3640
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3641
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !3641
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3383, metadata !730) #10, !dbg !3634
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3383, metadata !3399) #10, !dbg !3634
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !3634
  %9 = icmp eq i32 %1, 10, !dbg !3642
  br i1 %9, label %10, label %11, !dbg !3643

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !3644, !noalias !3645
  unreachable, !dbg !3644

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3383, metadata !3399) #10, !dbg !3634
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !3648
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !3648
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !3649
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3650
  store i32 %1, i32* %13, align 8, !dbg !3650
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3650
  %15 = bitcast i32* %14 to i8*, !dbg !3650
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !3650
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3633, metadata !2501), !dbg !3651
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1971, metadata !730), !dbg !3652
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1972, metadata !730), !dbg !3654
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1973, metadata !730), !dbg !3655
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1974, metadata !730), !dbg !3656
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !3657
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !1975, metadata !730), !dbg !3658
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1977, metadata !730), !dbg !3659
  %17 = load i32, i32* %16, align 4, !dbg !3660, !tbaa !972
  %18 = or i32 %17, 67108864, !dbg !3661
  store i32 %18, i32* %16, align 4, !dbg !3661, !tbaa !972
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3633, metadata !2501), !dbg !3651
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !3662
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10, !dbg !3663
  ret i8* %19, !dbg !3664
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !3665 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3669, metadata !730), !dbg !3673
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3670, metadata !730), !dbg !3674
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3671, metadata !730), !dbg !3675
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3672, metadata !730), !dbg !3676
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3677, metadata !730) #10, !dbg !3687
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3682, metadata !730) #10, !dbg !3689
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3683, metadata !730) #10, !dbg !3690
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3684, metadata !730) #10, !dbg !3691
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3685, metadata !730) #10, !dbg !3692
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3693
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !3693
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3694, !tbaa.struct !3516
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3686, metadata !2501) #10, !dbg !3695
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2021, metadata !730) #10, !dbg !3696
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2022, metadata !730) #10, !dbg !3698
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2023, metadata !730) #10, !dbg !3699
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2021, metadata !730) #10, !dbg !3696
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2021, metadata !730) #10, !dbg !3696
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3700
  store i32 10, i32* %7, align 8, !dbg !3701, !tbaa !1951
  %8 = icmp ne i8* %1, null, !dbg !3702
  %9 = icmp ne i8* %2, null, !dbg !3703
  %10 = and i1 %8, %9, !dbg !3704
  br i1 %10, label %12, label %11, !dbg !3704

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !3705
  unreachable, !dbg !3705

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3706
  store i8* %1, i8** %13, align 8, !dbg !3707, !tbaa !2040
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3708
  store i8* %2, i8** %14, align 8, !dbg !3709, !tbaa !2043
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3686, metadata !2501) #10, !dbg !3695
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #10, !dbg !3710
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !3711
  ret i8* %15, !dbg !3712
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3678 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3677, metadata !730), !dbg !3713
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3682, metadata !730), !dbg !3714
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3683, metadata !730), !dbg !3715
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3684, metadata !730), !dbg !3716
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !3685, metadata !730), !dbg !3717
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3718
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10, !dbg !3718
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !3719, !tbaa.struct !3516
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3686, metadata !2501), !dbg !3720
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2021, metadata !730) #10, !dbg !3721
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2022, metadata !730) #10, !dbg !3723
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2023, metadata !730) #10, !dbg !3724
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2021, metadata !730) #10, !dbg !3721
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2021, metadata !730) #10, !dbg !3721
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3725
  store i32 10, i32* %8, align 8, !dbg !3726, !tbaa !1951
  %9 = icmp ne i8* %1, null, !dbg !3727
  %10 = icmp ne i8* %2, null, !dbg !3728
  %11 = and i1 %9, %10, !dbg !3729
  br i1 %11, label %13, label %12, !dbg !3729

; <label>:12:                                     ; preds = %5
  tail call void @abort() #14, !dbg !3730
  unreachable, !dbg !3730

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3731
  store i8* %1, i8** %14, align 8, !dbg !3732, !tbaa !2040
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3733
  store i8* %2, i8** %15, align 8, !dbg !3734, !tbaa !2043
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3686, metadata !2501), !dbg !3720
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3735
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10, !dbg !3736
  ret i8* %16, !dbg !3737
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !3738 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3742, metadata !730), !dbg !3745
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3743, metadata !730), !dbg !3746
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3744, metadata !730), !dbg !3747
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3669, metadata !730) #10, !dbg !3748
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3670, metadata !730) #10, !dbg !3750
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3671, metadata !730) #10, !dbg !3751
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3672, metadata !730) #10, !dbg !3752
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3677, metadata !730) #10, !dbg !3753
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3682, metadata !730) #10, !dbg !3755
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3683, metadata !730) #10, !dbg !3756
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3684, metadata !730) #10, !dbg !3757
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3685, metadata !730) #10, !dbg !3758
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3759
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10, !dbg !3759
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3760, !tbaa.struct !3516
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3686, metadata !2501) #10, !dbg !3761
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2021, metadata !730) #10, !dbg !3762
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2022, metadata !730) #10, !dbg !3764
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2023, metadata !730) #10, !dbg !3765
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2021, metadata !730) #10, !dbg !3762
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2021, metadata !730) #10, !dbg !3762
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3766
  store i32 10, i32* %6, align 8, !dbg !3767, !tbaa !1951
  %7 = icmp ne i8* %0, null, !dbg !3768
  %8 = icmp ne i8* %1, null, !dbg !3769
  %9 = and i1 %7, %8, !dbg !3770
  br i1 %9, label %11, label %10, !dbg !3770

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !3771
  unreachable, !dbg !3771

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3772
  store i8* %0, i8** %12, align 8, !dbg !3773, !tbaa !2040
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3774
  store i8* %1, i8** %13, align 8, !dbg !3775, !tbaa !2043
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3686, metadata !2501) #10, !dbg !3761
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !3776
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10, !dbg !3777
  ret i8* %14, !dbg !3778
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3779 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3783, metadata !730), !dbg !3787
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3784, metadata !730), !dbg !3788
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3785, metadata !730), !dbg !3789
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3786, metadata !730), !dbg !3790
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3677, metadata !730) #10, !dbg !3791
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3682, metadata !730) #10, !dbg !3793
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3683, metadata !730) #10, !dbg !3794
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3684, metadata !730) #10, !dbg !3795
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3685, metadata !730) #10, !dbg !3796
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3797
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !3797
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3798, !tbaa.struct !3516
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3686, metadata !2501) #10, !dbg !3799
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2021, metadata !730) #10, !dbg !3800
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2022, metadata !730) #10, !dbg !3802
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2023, metadata !730) #10, !dbg !3803
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2021, metadata !730) #10, !dbg !3800
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2021, metadata !730) #10, !dbg !3800
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3804
  store i32 10, i32* %7, align 8, !dbg !3805, !tbaa !1951
  %8 = icmp ne i8* %0, null, !dbg !3806
  %9 = icmp ne i8* %1, null, !dbg !3807
  %10 = and i1 %8, %9, !dbg !3808
  br i1 %10, label %12, label %11, !dbg !3808

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !3809
  unreachable, !dbg !3809

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3810
  store i8* %0, i8** %13, align 8, !dbg !3811, !tbaa !2040
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3812
  store i8* %1, i8** %14, align 8, !dbg !3813, !tbaa !2043
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3686, metadata !2501) #10, !dbg !3799
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #10, !dbg !3814
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !3815
  ret i8* %15, !dbg !3816
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3817 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3821, metadata !730), !dbg !3824
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3822, metadata !730), !dbg !3825
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3823, metadata !730), !dbg !3826
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3827
  ret i8* %4, !dbg !3828
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !3829 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3833, metadata !730), !dbg !3835
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3834, metadata !730), !dbg !3836
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3821, metadata !730) #10, !dbg !3837
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3822, metadata !730) #10, !dbg !3839
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3823, metadata !730) #10, !dbg !3840
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !3841
  ret i8* %3, !dbg !3842
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !3843 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3847, metadata !730), !dbg !3849
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3848, metadata !730), !dbg !3850
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3821, metadata !730) #10, !dbg !3851
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3822, metadata !730) #10, !dbg !3853
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3823, metadata !730) #10, !dbg !3854
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !3855
  ret i8* %3, !dbg !3856
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !3857 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3861, metadata !730), !dbg !3862
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3847, metadata !730) #10, !dbg !3863
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3848, metadata !730) #10, !dbg !3865
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3821, metadata !730) #10, !dbg !3866
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3822, metadata !730) #10, !dbg !3868
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3823, metadata !730) #10, !dbg !3869
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !3870
  ret i8* %2, !dbg !3871
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !3872 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3917, metadata !730), !dbg !3923
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3918, metadata !730), !dbg !3924
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3919, metadata !730), !dbg !3925
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3920, metadata !730), !dbg !3926
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3921, metadata !730), !dbg !3927
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !3922, metadata !730), !dbg !3928
  %7 = icmp eq i8* %1, null, !dbg !3929
  br i1 %7, label %10, label %8, !dbg !3931

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.93, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #10, !dbg !3932
  br label %12, !dbg !3932

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.94, i64 0, i64 0), i8* %2, i8* %3) #10, !dbg !3933
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.95, i64 0, i64 0), i32 5) #10, !dbg !3934
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #10, !dbg !3935
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.96, i64 0, i64 0), i32 5) #10, !dbg !3937
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #10, !dbg !3938
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
  ], !dbg !3939

; <label>:17:                                     ; preds = %12
  tail call void @abort() #14, !dbg !3940
  unreachable, !dbg !3940

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.97, i64 0, i64 0), i32 5) #10, !dbg !3942
  %20 = load i8*, i8** %4, align 8, !dbg !3942, !tbaa !738
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #10, !dbg !3943
  br label %146, !dbg !3945

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.98, i64 0, i64 0), i32 5) #10, !dbg !3946
  %24 = load i8*, i8** %4, align 8, !dbg !3946, !tbaa !738
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3946
  %26 = load i8*, i8** %25, align 8, !dbg !3946, !tbaa !738
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #10, !dbg !3947
  br label %146, !dbg !3948

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.99, i64 0, i64 0), i32 5) #10, !dbg !3949
  %30 = load i8*, i8** %4, align 8, !dbg !3949, !tbaa !738
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3949
  %32 = load i8*, i8** %31, align 8, !dbg !3949, !tbaa !738
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3949
  %34 = load i8*, i8** %33, align 8, !dbg !3949, !tbaa !738
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #10, !dbg !3950
  br label %146, !dbg !3951

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.100, i64 0, i64 0), i32 5) #10, !dbg !3952
  %38 = load i8*, i8** %4, align 8, !dbg !3952, !tbaa !738
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3952
  %40 = load i8*, i8** %39, align 8, !dbg !3952, !tbaa !738
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3952
  %42 = load i8*, i8** %41, align 8, !dbg !3952, !tbaa !738
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3952
  %44 = load i8*, i8** %43, align 8, !dbg !3952, !tbaa !738
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #10, !dbg !3953
  br label %146, !dbg !3954

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.101, i64 0, i64 0), i32 5) #10, !dbg !3955
  %48 = load i8*, i8** %4, align 8, !dbg !3955, !tbaa !738
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3955
  %50 = load i8*, i8** %49, align 8, !dbg !3955, !tbaa !738
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3955
  %52 = load i8*, i8** %51, align 8, !dbg !3955, !tbaa !738
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3955
  %54 = load i8*, i8** %53, align 8, !dbg !3955, !tbaa !738
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3955
  %56 = load i8*, i8** %55, align 8, !dbg !3955, !tbaa !738
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #10, !dbg !3956
  br label %146, !dbg !3957

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.102, i64 0, i64 0), i32 5) #10, !dbg !3958
  %60 = load i8*, i8** %4, align 8, !dbg !3958, !tbaa !738
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3958
  %62 = load i8*, i8** %61, align 8, !dbg !3958, !tbaa !738
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3958
  %64 = load i8*, i8** %63, align 8, !dbg !3958, !tbaa !738
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3958
  %66 = load i8*, i8** %65, align 8, !dbg !3958, !tbaa !738
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3958
  %68 = load i8*, i8** %67, align 8, !dbg !3958, !tbaa !738
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3958
  %70 = load i8*, i8** %69, align 8, !dbg !3958, !tbaa !738
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #10, !dbg !3959
  br label %146, !dbg !3960

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.103, i64 0, i64 0), i32 5) #10, !dbg !3961
  %74 = load i8*, i8** %4, align 8, !dbg !3961, !tbaa !738
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3961
  %76 = load i8*, i8** %75, align 8, !dbg !3961, !tbaa !738
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3961
  %78 = load i8*, i8** %77, align 8, !dbg !3961, !tbaa !738
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3961
  %80 = load i8*, i8** %79, align 8, !dbg !3961, !tbaa !738
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3961
  %82 = load i8*, i8** %81, align 8, !dbg !3961, !tbaa !738
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3961
  %84 = load i8*, i8** %83, align 8, !dbg !3961, !tbaa !738
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3961
  %86 = load i8*, i8** %85, align 8, !dbg !3961, !tbaa !738
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #10, !dbg !3962
  br label %146, !dbg !3963

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.104, i64 0, i64 0), i32 5) #10, !dbg !3964
  %90 = load i8*, i8** %4, align 8, !dbg !3964, !tbaa !738
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3964
  %92 = load i8*, i8** %91, align 8, !dbg !3964, !tbaa !738
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3964
  %94 = load i8*, i8** %93, align 8, !dbg !3964, !tbaa !738
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3964
  %96 = load i8*, i8** %95, align 8, !dbg !3964, !tbaa !738
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3964
  %98 = load i8*, i8** %97, align 8, !dbg !3964, !tbaa !738
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3964
  %100 = load i8*, i8** %99, align 8, !dbg !3964, !tbaa !738
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3964
  %102 = load i8*, i8** %101, align 8, !dbg !3964, !tbaa !738
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3964
  %104 = load i8*, i8** %103, align 8, !dbg !3964, !tbaa !738
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #10, !dbg !3965
  br label %146, !dbg !3966

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.105, i64 0, i64 0), i32 5) #10, !dbg !3967
  %108 = load i8*, i8** %4, align 8, !dbg !3967, !tbaa !738
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3967
  %110 = load i8*, i8** %109, align 8, !dbg !3967, !tbaa !738
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3967
  %112 = load i8*, i8** %111, align 8, !dbg !3967, !tbaa !738
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3967
  %114 = load i8*, i8** %113, align 8, !dbg !3967, !tbaa !738
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3967
  %116 = load i8*, i8** %115, align 8, !dbg !3967, !tbaa !738
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3967
  %118 = load i8*, i8** %117, align 8, !dbg !3967, !tbaa !738
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3967
  %120 = load i8*, i8** %119, align 8, !dbg !3967, !tbaa !738
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3967
  %122 = load i8*, i8** %121, align 8, !dbg !3967, !tbaa !738
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3967
  %124 = load i8*, i8** %123, align 8, !dbg !3967, !tbaa !738
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #10, !dbg !3968
  br label %146, !dbg !3969

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.106, i64 0, i64 0), i32 5) #10, !dbg !3970
  %128 = load i8*, i8** %4, align 8, !dbg !3970, !tbaa !738
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3970
  %130 = load i8*, i8** %129, align 8, !dbg !3970, !tbaa !738
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3970
  %132 = load i8*, i8** %131, align 8, !dbg !3970, !tbaa !738
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3970
  %134 = load i8*, i8** %133, align 8, !dbg !3970, !tbaa !738
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3970
  %136 = load i8*, i8** %135, align 8, !dbg !3970, !tbaa !738
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3970
  %138 = load i8*, i8** %137, align 8, !dbg !3970, !tbaa !738
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3970
  %140 = load i8*, i8** %139, align 8, !dbg !3970, !tbaa !738
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3970
  %142 = load i8*, i8** %141, align 8, !dbg !3970, !tbaa !738
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3970
  %144 = load i8*, i8** %143, align 8, !dbg !3970, !tbaa !738
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #10, !dbg !3971
  br label %146, !dbg !3972

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !3973
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !3974 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3978, metadata !730), !dbg !3984
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3979, metadata !730), !dbg !3985
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3980, metadata !730), !dbg !3986
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3981, metadata !730), !dbg !3987
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3982, metadata !730), !dbg !3988
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3983, metadata !730), !dbg !3989
  br label %6, !dbg !3990

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3983, metadata !730), !dbg !3989
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3992
  %9 = load i8*, i8** %8, align 8, !dbg !3992, !tbaa !738
  %10 = icmp eq i8* %9, null, !dbg !3995
  %11 = add i64 %7, 1, !dbg !3997
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !3983, metadata !730), !dbg !3989
  br i1 %10, label %12, label %6, !dbg !3995, !llvm.loop !3999

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !4002
  ret void, !dbg !4003
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !4004 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4015, metadata !730), !dbg !4023
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4016, metadata !730), !dbg !4024
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4017, metadata !730), !dbg !4025
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4018, metadata !730), !dbg !4026
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !4019, metadata !730), !dbg !4027
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !4028
  call void @llvm.lifetime.start(i64 80, i8* nonnull %7) #10, !dbg !4028
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !4021, metadata !730), !dbg !4029
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4020, metadata !730), !dbg !4030
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4020, metadata !730), !dbg !4030
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %11 = load i32, i32* %8, align 8, !dbg !4031
  %12 = icmp ult i32 %11, 41, !dbg !4031
  br i1 %12, label %13, label %18, !dbg !4031

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !4035
  %15 = sext i32 %11 to i64, !dbg !4035
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !4035
  %17 = add i32 %11, 8, !dbg !4035
  store i32 %17, i32* %8, align 8, !dbg !4035
  br label %21, !dbg !4035

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !4037
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !4037
  store i8* %20, i8** %10, align 8, !dbg !4037
  br label %21, !dbg !4037

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ], !dbg !4031
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !4039
  %25 = load i8*, i8** %24, align 8, !dbg !4039
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !4041
  store i8* %25, i8** %26, align 16, !dbg !4042, !tbaa !738
  %27 = icmp eq i8* %25, null, !dbg !4043
  br i1 %27, label %30, label %28, !dbg !4044

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4020, metadata !730), !dbg !4030
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4020, metadata !730), !dbg !4030
  %29 = icmp ult i32 %22, 41, !dbg !4031
  br i1 %29, label %35, label %32, !dbg !4031

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !4046
  call void @llvm.lifetime.end(i64 80, i8* nonnull %7) #10, !dbg !4047
  ret void, !dbg !4047

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !4037
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !4037
  store i8* %34, i8** %10, align 8, !dbg !4037
  br label %40, !dbg !4037

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !4035
  %37 = sext i32 %22 to i64, !dbg !4035
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !4035
  %39 = add i32 %22, 8, !dbg !4035
  store i32 %39, i32* %8, align 8, !dbg !4035
  br label %40, !dbg !4035

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ], !dbg !4031
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !4039
  %44 = load i8*, i8** %43, align 8, !dbg !4039
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !4041
  store i8* %44, i8** %45, align 8, !dbg !4042, !tbaa !738
  %46 = icmp eq i8* %44, null, !dbg !4043
  br i1 %46, label %30, label %47, !dbg !4044

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4020, metadata !730), !dbg !4030
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4020, metadata !730), !dbg !4030
  %48 = icmp ult i32 %41, 41, !dbg !4031
  br i1 %48, label %52, label %49, !dbg !4031

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !4037
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !4037
  store i8* %51, i8** %10, align 8, !dbg !4037
  br label %57, !dbg !4037

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !4035
  %54 = sext i32 %41 to i64, !dbg !4035
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !4035
  %56 = add i32 %41, 8, !dbg !4035
  store i32 %56, i32* %8, align 8, !dbg !4035
  br label %57, !dbg !4035

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ], !dbg !4031
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !4039
  %61 = load i8*, i8** %60, align 8, !dbg !4039
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !4041
  store i8* %61, i8** %62, align 16, !dbg !4042, !tbaa !738
  %63 = icmp eq i8* %61, null, !dbg !4043
  br i1 %63, label %30, label %64, !dbg !4044

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4020, metadata !730), !dbg !4030
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4020, metadata !730), !dbg !4030
  %65 = icmp ult i32 %58, 41, !dbg !4031
  br i1 %65, label %69, label %66, !dbg !4031

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !4037
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !4037
  store i8* %68, i8** %10, align 8, !dbg !4037
  br label %74, !dbg !4037

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !4035
  %71 = sext i32 %58 to i64, !dbg !4035
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !4035
  %73 = add i32 %58, 8, !dbg !4035
  store i32 %73, i32* %8, align 8, !dbg !4035
  br label %74, !dbg !4035

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ], !dbg !4031
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !4039
  %78 = load i8*, i8** %77, align 8, !dbg !4039
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !4041
  store i8* %78, i8** %79, align 8, !dbg !4042, !tbaa !738
  %80 = icmp eq i8* %78, null, !dbg !4043
  br i1 %80, label %30, label %81, !dbg !4044

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4020, metadata !730), !dbg !4030
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4020, metadata !730), !dbg !4030
  %82 = icmp ult i32 %75, 41, !dbg !4031
  br i1 %82, label %86, label %83, !dbg !4031

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !4037
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !4037
  store i8* %85, i8** %10, align 8, !dbg !4037
  br label %91, !dbg !4037

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !4035
  %88 = sext i32 %75 to i64, !dbg !4035
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !4035
  %90 = add i32 %75, 8, !dbg !4035
  store i32 %90, i32* %8, align 8, !dbg !4035
  br label %91, !dbg !4035

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ], !dbg !4031
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !4039
  %95 = load i8*, i8** %94, align 8, !dbg !4039
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !4041
  store i8* %95, i8** %96, align 16, !dbg !4042, !tbaa !738
  %97 = icmp eq i8* %95, null, !dbg !4043
  br i1 %97, label %30, label %98, !dbg !4044

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4020, metadata !730), !dbg !4030
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4020, metadata !730), !dbg !4030
  %99 = icmp ult i32 %92, 41, !dbg !4031
  br i1 %99, label %103, label %100, !dbg !4031

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !4037
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !4037
  store i8* %102, i8** %10, align 8, !dbg !4037
  br label %108, !dbg !4037

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !4035
  %105 = sext i32 %92 to i64, !dbg !4035
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !4035
  %107 = add i32 %92, 8, !dbg !4035
  store i32 %107, i32* %8, align 8, !dbg !4035
  br label %108, !dbg !4035

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !4039
  %111 = load i8*, i8** %110, align 8, !dbg !4039
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !4041
  store i8* %111, i8** %112, align 8, !dbg !4042, !tbaa !738
  %113 = icmp eq i8* %111, null, !dbg !4043
  br i1 %113, label %30, label %114, !dbg !4044

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4020, metadata !730), !dbg !4030
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4020, metadata !730), !dbg !4030
  %115 = load i8*, i8** %10, align 8, !dbg !4037
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !4037
  store i8* %116, i8** %10, align 8, !dbg !4037
  %117 = bitcast i8* %115 to i8**, !dbg !4039
  %118 = load i8*, i8** %117, align 8, !dbg !4039
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !4041
  store i8* %118, i8** %119, align 16, !dbg !4042, !tbaa !738
  %120 = icmp eq i8* %118, null, !dbg !4043
  br i1 %120, label %30, label %121, !dbg !4044

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4020, metadata !730), !dbg !4030
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4020, metadata !730), !dbg !4030
  %122 = load i8*, i8** %10, align 8, !dbg !4037
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !4037
  store i8* %123, i8** %10, align 8, !dbg !4037
  %124 = bitcast i8* %122 to i8**, !dbg !4039
  %125 = load i8*, i8** %124, align 8, !dbg !4039
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !4041
  store i8* %125, i8** %126, align 8, !dbg !4042, !tbaa !738
  %127 = icmp eq i8* %125, null, !dbg !4043
  br i1 %127, label %30, label %128, !dbg !4044

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4020, metadata !730), !dbg !4030
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4020, metadata !730), !dbg !4030
  %129 = load i8*, i8** %10, align 8, !dbg !4037
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !4037
  store i8* %130, i8** %10, align 8, !dbg !4037
  %131 = bitcast i8* %129 to i8**, !dbg !4039
  %132 = load i8*, i8** %131, align 8, !dbg !4039
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !4041
  store i8* %132, i8** %133, align 16, !dbg !4042, !tbaa !738
  %134 = icmp eq i8* %132, null, !dbg !4043
  br i1 %134, label %30, label %135, !dbg !4044

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4020, metadata !730), !dbg !4030
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4020, metadata !730), !dbg !4030
  %136 = load i8*, i8** %10, align 8, !dbg !4037
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !4037
  store i8* %137, i8** %10, align 8, !dbg !4037
  %138 = bitcast i8* %136 to i8**, !dbg !4039
  %139 = load i8*, i8** %138, align 8, !dbg !4039
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !4041
  store i8* %139, i8** %140, align 8, !dbg !4042, !tbaa !738
  %141 = icmp eq i8* %139, null, !dbg !4043
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4020, metadata !730), !dbg !4030
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4020, metadata !730), !dbg !4030
  %142 = select i1 %141, i64 9, i64 10, !dbg !4044
  br label %30, !dbg !4044
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !4048 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4052, metadata !730), !dbg !4062
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4053, metadata !730), !dbg !4063
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4054, metadata !730), !dbg !4064
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4055, metadata !730), !dbg !4065
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !4066
  call void @llvm.lifetime.start(i64 24, i8* nonnull %6) #10, !dbg !4066
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !4056, metadata !730), !dbg !4067
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !4068
  call void @llvm.va_start(i8* nonnull %6), !dbg !4068
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !4069
  call void @llvm.va_end(i8* nonnull %6), !dbg !4070
  call void @llvm.lifetime.end(i64 24, i8* nonnull %6) #10, !dbg !4071
  ret void, !dbg !4071
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #10

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !4072 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.109, i64 0, i64 0), i32 5) #10, !dbg !4073
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.110, i64 0, i64 0)) #10, !dbg !4074
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.111, i64 0, i64 0), i32 5) #10, !dbg !4076
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.112, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.113, i64 0, i64 0)) #10, !dbg !4077
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19.114, i64 0, i64 0), i32 5) #10, !dbg !4078
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !4078, !tbaa !738
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #10, !dbg !4079
  ret void, !dbg !4080
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #12 !dbg !4081 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4085, metadata !730), !dbg !4087
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4086, metadata !730), !dbg !4088
  %3 = udiv i64 9223372036854775807, %1, !dbg !4089
  %4 = icmp ult i64 %3, %0, !dbg !4089
  br i1 %4, label %5, label %6, !dbg !4091

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !4092
  unreachable, !dbg !4092

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4093
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !4094, metadata !730) #10, !dbg !4101
  %8 = tail call noalias i8* @malloc(i64 %7) #10, !dbg !4103
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !4100, metadata !730) #10, !dbg !4104
  %9 = icmp eq i8* %8, null, !dbg !4105
  %10 = icmp ne i64 %7, 0, !dbg !4107
  %11 = and i1 %10, %9, !dbg !4109
  br i1 %11, label %12, label %13, !dbg !4109

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #14, !dbg !4110
  unreachable, !dbg !4110

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !4111
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !4095 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4094, metadata !730), !dbg !4112
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !4113
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4100, metadata !730), !dbg !4114
  %3 = icmp eq i8* %2, null, !dbg !4115
  %4 = icmp ne i64 %0, 0, !dbg !4116
  %5 = and i1 %4, %3, !dbg !4117
  br i1 %5, label %6, label %7, !dbg !4117

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !4118
  unreachable, !dbg !4118

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !4119
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #12 !dbg !4120 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4124, metadata !730), !dbg !4127
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4125, metadata !730), !dbg !4128
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4126, metadata !730), !dbg !4129
  %4 = udiv i64 9223372036854775807, %2, !dbg !4130
  %5 = icmp ult i64 %4, %1, !dbg !4130
  br i1 %5, label %6, label %7, !dbg !4132

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #14, !dbg !4133
  unreachable, !dbg !4133

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !4134
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4135, metadata !730) #10, !dbg !4141
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !4140, metadata !730) #10, !dbg !4143
  %9 = icmp eq i64 %8, 0, !dbg !4144
  %10 = icmp ne i8* %0, null, !dbg !4146
  %11 = and i1 %10, %9, !dbg !4148
  br i1 %11, label %12, label %13, !dbg !4148

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #10, !dbg !4149
  br label %19, !dbg !4151

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #10, !dbg !4152
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !4135, metadata !730) #10, !dbg !4141
  %15 = icmp eq i8* %14, null, !dbg !4153
  %16 = icmp ne i64 %8, 0, !dbg !4155
  %17 = and i1 %16, %15, !dbg !4157
  br i1 %17, label %18, label %19, !dbg !4157

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !4158
  unreachable, !dbg !4158

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !4159
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !4136 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4135, metadata !730), !dbg !4160
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4140, metadata !730), !dbg !4161
  %3 = icmp eq i64 %1, 0, !dbg !4162
  %4 = icmp ne i8* %0, null, !dbg !4163
  %5 = and i1 %4, %3, !dbg !4164
  br i1 %5, label %6, label %7, !dbg !4164

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #10, !dbg !4165
  br label %13, !dbg !4166

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #10, !dbg !4167
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !4135, metadata !730), !dbg !4160
  %9 = icmp eq i8* %8, null, !dbg !4168
  %10 = icmp ne i64 %1, 0, !dbg !4169
  %11 = and i1 %10, %9, !dbg !4170
  br i1 %11, label %12, label %13, !dbg !4170

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #14, !dbg !4171
  unreachable, !dbg !4171

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !4172
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #12 !dbg !676 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !681, metadata !730), !dbg !4173
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !682, metadata !730), !dbg !4174
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !683, metadata !730), !dbg !4175
  %4 = load i64, i64* %1, align 8, !dbg !4176, !tbaa !874
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !684, metadata !730), !dbg !4177
  %5 = icmp eq i8* %0, null, !dbg !4178
  br i1 %5, label %6, label %13, !dbg !4180

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4181
  br i1 %7, label %8, label %17, !dbg !4184

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4185
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !684, metadata !730), !dbg !4177
  %10 = icmp ugt i64 %2, 128, !dbg !4187
  %11 = zext i1 %10 to i64, !dbg !4187
  %12 = add nuw nsw i64 %9, %11, !dbg !4188
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !684, metadata !730), !dbg !4177
  br label %17, !dbg !4189

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !4190
  %15 = icmp ugt i64 %14, %4, !dbg !4193
  br i1 %15, label %20, label %16, !dbg !4194

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !4195
  unreachable, !dbg !4195

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !684, metadata !730), !dbg !4177
  store i64 %18, i64* %1, align 8, !dbg !4196, !tbaa !874
  %19 = mul i64 %18, %2, !dbg !4197
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4135, metadata !730) #10, !dbg !4198
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !4140, metadata !730) #10, !dbg !4200
  br label %27, !dbg !4201

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !4202
  %22 = add i64 %4, 1, !dbg !4203
  %23 = add i64 %22, %21, !dbg !4204
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !684, metadata !730), !dbg !4177
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !684, metadata !730), !dbg !4177
  store i64 %23, i64* %1, align 8, !dbg !4196, !tbaa !874
  %24 = mul i64 %23, %2, !dbg !4197
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4135, metadata !730) #10, !dbg !4198
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !4140, metadata !730) #10, !dbg !4200
  %25 = icmp eq i64 %24, 0, !dbg !4205
  br i1 %25, label %26, label %27, !dbg !4201

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #10, !dbg !4206
  br label %34, !dbg !4207

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #10, !dbg !4208
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !4135, metadata !730) #10, !dbg !4198
  %30 = icmp eq i8* %29, null, !dbg !4209
  %31 = icmp ne i64 %28, 0, !dbg !4210
  %32 = and i1 %31, %30, !dbg !4211
  br i1 %32, label %33, label %34, !dbg !4211

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #14, !dbg !4212
  unreachable, !dbg !4212

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !4213
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #12 !dbg !4214 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4216, metadata !730), !dbg !4217
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4094, metadata !730) #10, !dbg !4218
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !4220
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4100, metadata !730) #10, !dbg !4221
  %3 = icmp eq i8* %2, null, !dbg !4222
  %4 = icmp ne i64 %0, 0, !dbg !4223
  %5 = and i1 %4, %3, !dbg !4224
  br i1 %5, label %6, label %7, !dbg !4224

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !4225
  unreachable, !dbg !4225

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !4226
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !4227 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4231, metadata !730), !dbg !4233
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !4232, metadata !730), !dbg !4234
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !681, metadata !730) #10, !dbg !4235
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !682, metadata !730) #10, !dbg !4237
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !683, metadata !730) #10, !dbg !4238
  %3 = load i64, i64* %1, align 8, !dbg !4239, !tbaa !874
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !684, metadata !730) #10, !dbg !4240
  %4 = icmp eq i8* %0, null, !dbg !4241
  br i1 %4, label %5, label %8, !dbg !4242

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4243
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !684, metadata !730) #10, !dbg !4240
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !684, metadata !730) #10, !dbg !4240
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4244
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !684, metadata !730) #10, !dbg !4240
  store i64 %7, i64* %1, align 8, !dbg !4245, !tbaa !874
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4135, metadata !730) #10, !dbg !4246
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4140, metadata !730) #10, !dbg !4248
  br label %17, !dbg !4249

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !4250
  br i1 %9, label %11, label %10, !dbg !4251

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #14, !dbg !4252
  unreachable, !dbg !4252

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !4253
  %13 = add i64 %3, 1, !dbg !4254
  %14 = add i64 %13, %12, !dbg !4255
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !684, metadata !730) #10, !dbg !4240
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !684, metadata !730) #10, !dbg !4240
  store i64 %14, i64* %1, align 8, !dbg !4245, !tbaa !874
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4135, metadata !730) #10, !dbg !4246
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4140, metadata !730) #10, !dbg !4248
  %15 = icmp eq i64 %14, 0, !dbg !4256
  br i1 %15, label %16, label %17, !dbg !4249

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #10, !dbg !4257
  br label %24, !dbg !4258

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #10, !dbg !4259
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !4135, metadata !730) #10, !dbg !4246
  %20 = icmp eq i8* %19, null, !dbg !4260
  %21 = icmp ne i64 %18, 0, !dbg !4261
  %22 = and i1 %21, %20, !dbg !4262
  br i1 %22, label %23, label %24, !dbg !4262

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #14, !dbg !4263
  unreachable, !dbg !4263

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !4264
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !4265 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4267, metadata !730), !dbg !4268
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4094, metadata !730) #10, !dbg !4269
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !4271
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4100, metadata !730) #10, !dbg !4272
  %3 = icmp eq i8* %2, null, !dbg !4273
  %4 = icmp ne i64 %0, 0, !dbg !4274
  %5 = and i1 %4, %3, !dbg !4275
  br i1 %5, label %6, label %7, !dbg !4275

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !4276
  unreachable, !dbg !4276

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !4277
  ret i8* %2, !dbg !4278
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !4279 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4281, metadata !730), !dbg !4284
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4282, metadata !730), !dbg !4285
  %3 = udiv i64 9223372036854775807, %1, !dbg !4286
  %4 = icmp ult i64 %3, %0, !dbg !4286
  br i1 %4, label %8, label %5, !dbg !4288

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #10, !dbg !4289
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !4283, metadata !730), !dbg !4291
  %7 = icmp eq i8* %6, null, !dbg !4292
  br i1 %7, label %8, label %9, !dbg !4293

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #14, !dbg !4295
  unreachable, !dbg !4295

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !4296
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !4297 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4301, metadata !730), !dbg !4303
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4302, metadata !730), !dbg !4304
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4094, metadata !730) #10, !dbg !4305
  %3 = tail call noalias i8* @malloc(i64 %1) #10, !dbg !4307
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4100, metadata !730) #10, !dbg !4308
  %4 = icmp eq i8* %3, null, !dbg !4309
  %5 = icmp ne i64 %1, 0, !dbg !4310
  %6 = and i1 %5, %4, !dbg !4311
  br i1 %6, label %7, label %8, !dbg !4311

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !4312
  unreachable, !dbg !4312

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !4313
  ret i8* %3, !dbg !4314
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !4315 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4317, metadata !730), !dbg !4318
  %2 = tail call i64 @strlen(i8* %0) #13, !dbg !4319
  %3 = add i64 %2, 1, !dbg !4320
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4301, metadata !730) #10, !dbg !4321
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4302, metadata !730) #10, !dbg !4324
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4094, metadata !730) #10, !dbg !4325
  %4 = tail call noalias i8* @malloc(i64 %3) #10, !dbg !4327
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !4100, metadata !730) #10, !dbg !4328
  %5 = icmp eq i8* %4, null, !dbg !4329
  %6 = icmp ne i64 %3, 0, !dbg !4330
  %7 = and i1 %6, %5, !dbg !4331
  br i1 %7, label %8, label %9, !dbg !4331

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !4332
  unreachable, !dbg !4332

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #10, !dbg !4333
  ret i8* %4, !dbg !4334
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !4335 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !4337, !tbaa !972
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.127, i64 0, i64 0), i32 5) #10, !dbg !4338
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.128, i64 0, i64 0), i8* %2) #10, !dbg !4339
  tail call void @abort() #14, !dbg !4341
  unreachable, !dbg !4341
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @xnumtoimax(i8*, i32, i64, i64, i8*, i8*, i32) local_unnamed_addr #6 !dbg !4342 {
  %8 = alloca i64, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4347, metadata !730), !dbg !4357
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4348, metadata !730), !dbg !4358
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4349, metadata !730), !dbg !4359
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4350, metadata !730), !dbg !4360
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !4351, metadata !730), !dbg !4361
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !4352, metadata !730), !dbg !4362
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !4353, metadata !730), !dbg !4363
  %9 = bitcast i64* %8 to i8*, !dbg !4364
  call void @llvm.lifetime.start(i64 8, i8* nonnull %9) #10, !dbg !4364
  tail call void @llvm.dbg.value(metadata i64* %8, i64 0, metadata !4356, metadata !2501), !dbg !4365
  %10 = call i32 @xstrtoimax(i8* %0, i8** null, i32 %1, i64* nonnull %8, i8* %4) #10, !dbg !4366
  call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !4354, metadata !730), !dbg !4367
  switch i32 %10, label %11 [
    i32 0, label %13
    i32 1, label %26
    i32 3, label %28
  ], !dbg !4368

; <label>:11:                                     ; preds = %7
  %12 = tail call i32* @__errno_location() #1, !dbg !4369
  br label %30, !dbg !4368

; <label>:13:                                     ; preds = %7
  %14 = load i64, i64* %8, align 8, !dbg !4373, !tbaa !874
  call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4356, metadata !730), !dbg !4365
  %15 = icmp slt i64 %14, %2, !dbg !4377
  %16 = icmp sgt i64 %14, %3, !dbg !4378
  %17 = or i1 %15, %16, !dbg !4380
  br i1 %17, label %18, label %39, !dbg !4380

; <label>:18:                                     ; preds = %13
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4354, metadata !730), !dbg !4367
  call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4356, metadata !730), !dbg !4365
  %19 = icmp sgt i64 %14, 1073741823, !dbg !4381
  br i1 %19, label %20, label %22, !dbg !4384

; <label>:20:                                     ; preds = %18
  %21 = tail call i32* @__errno_location() #1, !dbg !4385
  store i32 75, i32* %21, align 4, !dbg !4386, !tbaa !972
  br label %30, !dbg !4385

; <label>:22:                                     ; preds = %18
  %23 = icmp slt i64 %14, -1073741824, !dbg !4387
  %24 = tail call i32* @__errno_location() #1, !dbg !4389
  %25 = select i1 %23, i32 75, i32 34, !dbg !4390
  store i32 %25, i32* %24, align 4, !tbaa !972
  br label %30

; <label>:26:                                     ; preds = %7
  %27 = tail call i32* @__errno_location() #1, !dbg !4391
  store i32 75, i32* %27, align 4, !dbg !4393, !tbaa !972
  br label %30, !dbg !4391

; <label>:28:                                     ; preds = %7
  %29 = tail call i32* @__errno_location() #1, !dbg !4394
  store i32 0, i32* %29, align 4, !dbg !4396, !tbaa !972
  br label %30, !dbg !4394

; <label>:30:                                     ; preds = %11, %20, %22, %26, %28
  %31 = phi i32* [ %12, %11 ], [ %21, %20 ], [ %24, %22 ], [ %27, %26 ], [ %29, %28 ], !dbg !4369
  %32 = icmp ne i32 %6, 0, !dbg !4397
  %33 = select i1 %32, i32 %6, i32 1, !dbg !4397
  %34 = load i32, i32* %31, align 4, !dbg !4369, !tbaa !972
  %35 = icmp eq i32 %34, 22, !dbg !4398
  %36 = select i1 %35, i32 0, i32 %34, !dbg !4369
  %37 = call i8* @quote(i8* %0) #10, !dbg !4399
  call void (i32, i32, i8*, ...) @error(i32 %33, i32 %36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.129, i64 0, i64 0), i8* %5, i8* %37) #10, !dbg !4400
  %38 = load i64, i64* %8, align 8, !tbaa !874
  br label %39, !dbg !4402

; <label>:39:                                     ; preds = %13, %30
  %40 = phi i64 [ %14, %13 ], [ %38, %30 ], !dbg !4403
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !4356, metadata !730), !dbg !4365
  call void @llvm.lifetime.end(i64 8, i8* nonnull %9) #10, !dbg !4404
  ret i64 %40, !dbg !4405
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @xdectoimax(i8*, i64, i64, i8*, i8*, i32) local_unnamed_addr #6 !dbg !4406 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4410, metadata !730), !dbg !4416
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4411, metadata !730), !dbg !4417
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4412, metadata !730), !dbg !4418
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4413, metadata !730), !dbg !4419
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !4414, metadata !730), !dbg !4420
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !4415, metadata !730), !dbg !4421
  %7 = tail call i64 @xnumtoimax(i8* %0, i32 10, i64 %1, i64 %2, i8* %3, i8* %4, i32 %5), !dbg !4422
  ret i64 %7, !dbg !4423
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @xstrtoimax(i8*, i8**, i32, i64* nocapture, i8* readonly) local_unnamed_addr #6 !dbg !4424 {
  %6 = alloca i8*, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4430, metadata !730), !dbg !4444
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !4431, metadata !730), !dbg !4445
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4432, metadata !730), !dbg !4446
  tail call void @llvm.dbg.value(metadata i64* %3, i64 0, metadata !4433, metadata !730), !dbg !4447
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !4434, metadata !730), !dbg !4448
  %7 = bitcast i8** %6 to i8*, !dbg !4449
  call void @llvm.lifetime.start(i64 8, i8* nonnull %7) #10, !dbg !4449
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4438, metadata !730), !dbg !4450
  %8 = icmp ult i32 %2, 37, !dbg !4451
  br i1 %8, label %10, label %9, !dbg !4451

; <label>:9:                                      ; preds = %5
  tail call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.134, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.135, i64 0, i64 0), i32 96, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @__PRETTY_FUNCTION__.xstrtoimax, i64 0, i64 0)) #14, !dbg !4454
  unreachable, !dbg !4454

; <label>:10:                                     ; preds = %5
  %11 = icmp ne i8** %1, null, !dbg !4456
  %12 = select i1 %11, i8** %1, i8** %6, !dbg !4456
  tail call void @llvm.dbg.value(metadata i8** %12, i64 0, metadata !4436, metadata !730), !dbg !4457
  %13 = tail call i32* @__errno_location() #1, !dbg !4458
  store i32 0, i32* %13, align 4, !dbg !4459, !tbaa !972
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4460, metadata !730) #10, !dbg !4469
  tail call void @llvm.dbg.value(metadata i8** %12, i64 0, metadata !4467, metadata !730) #10, !dbg !4469
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4468, metadata !730) #10, !dbg !4469
  %14 = call i64 @__strtol_internal(i8* %0, i8** %12, i32 %2, i32 0) #10, !dbg !4471
  call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4437, metadata !730), !dbg !4472
  %15 = load i8*, i8** %12, align 8, !dbg !4473, !tbaa !738
  %16 = icmp eq i8* %15, %0, !dbg !4475
  br i1 %16, label %17, label %26, !dbg !4476

; <label>:17:                                     ; preds = %10
  %18 = icmp eq i8* %4, null, !dbg !4477
  br i1 %18, label %196, label %19, !dbg !4480

; <label>:19:                                     ; preds = %17
  %20 = load i8, i8* %0, align 1, !dbg !4481, !tbaa !864
  %21 = icmp eq i8 %20, 0, !dbg !4481
  br i1 %21, label %196, label %22, !dbg !4483

; <label>:22:                                     ; preds = %19
  %23 = sext i8 %20 to i32, !dbg !4481
  %24 = call i8* @strchr(i8* nonnull %4, i32 %23) #10, !dbg !4484
  %25 = icmp eq i8* %24, null, !dbg !4484
  br i1 %25, label %196, label %33, !dbg !4486

; <label>:26:                                     ; preds = %10
  %27 = load i32, i32* %13, align 4, !dbg !4488, !tbaa !972
  switch i32 %27, label %196 [
    i32 0, label %29
    i32 34, label %28
  ], !dbg !4490

; <label>:28:                                     ; preds = %26
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4438, metadata !730), !dbg !4450
  br label %29, !dbg !4491

; <label>:29:                                     ; preds = %26, %28
  %30 = phi i32 [ 1, %28 ], [ 0, %26 ]
  call void @llvm.dbg.value(metadata i32 %30, i64 0, metadata !4438, metadata !730), !dbg !4450
  %31 = icmp eq i8* %4, null, !dbg !4493
  br i1 %31, label %32, label %33, !dbg !4495

; <label>:32:                                     ; preds = %29
  call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4437, metadata !730), !dbg !4472
  store i64 %14, i64* %3, align 8, !dbg !4496, !tbaa !874
  br label %196, !dbg !4498

; <label>:33:                                     ; preds = %22, %29
  %34 = phi i32 [ %30, %29 ], [ 0, %22 ]
  %35 = phi i64 [ %14, %29 ], [ 1, %22 ]
  %36 = load i8, i8* %15, align 1, !dbg !4499, !tbaa !864
  %37 = icmp eq i8 %36, 0, !dbg !4500
  br i1 %37, label %193, label %38, !dbg !4501

; <label>:38:                                     ; preds = %33
  %39 = sext i8 %36 to i32, !dbg !4499
  call void @llvm.dbg.value(metadata i32 1024, i64 0, metadata !4439, metadata !730), !dbg !4502
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4442, metadata !730), !dbg !4503
  %40 = call i8* @strchr(i8* nonnull %4, i32 %39) #10, !dbg !4504
  %41 = icmp eq i8* %40, null, !dbg !4504
  br i1 %41, label %42, label %44, !dbg !4507

; <label>:42:                                     ; preds = %38
  call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4437, metadata !730), !dbg !4472
  store i64 %35, i64* %3, align 8, !dbg !4509, !tbaa !874
  %43 = or i32 %34, 2, !dbg !4511
  br label %196, !dbg !4512

; <label>:44:                                     ; preds = %38
  switch i32 %39, label %58 [
    i32 69, label %45
    i32 71, label %45
    i32 103, label %45
    i32 107, label %45
    i32 75, label %45
    i32 77, label %45
    i32 109, label %45
    i32 80, label %45
    i32 84, label %45
    i32 116, label %45
    i32 89, label %45
    i32 90, label %45
  ], !dbg !4513

; <label>:45:                                     ; preds = %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44
  %46 = call i8* @strchr(i8* nonnull %4, i32 48) #10, !dbg !4514
  %47 = icmp eq i8* %46, null, !dbg !4514
  br i1 %47, label %58, label %48, !dbg !4518

; <label>:48:                                     ; preds = %45
  %49 = getelementptr inbounds i8, i8* %15, i64 1, !dbg !4520
  %50 = load i8, i8* %49, align 1, !dbg !4520, !tbaa !864
  %51 = sext i8 %50 to i32, !dbg !4520
  switch i32 %51, label %58 [
    i32 105, label %52
    i32 66, label %57
    i32 68, label %57
  ], !dbg !4521

; <label>:52:                                     ; preds = %48
  %53 = getelementptr inbounds i8, i8* %15, i64 2, !dbg !4522
  %54 = load i8, i8* %53, align 1, !dbg !4522, !tbaa !864
  %55 = icmp eq i8 %54, 66, !dbg !4525
  call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4442, metadata !730), !dbg !4503
  %56 = select i1 %55, i64 3, i64 1, !dbg !4526
  br label %58, !dbg !4526

; <label>:57:                                     ; preds = %48, %48
  call void @llvm.dbg.value(metadata i32 1000, i64 0, metadata !4439, metadata !730), !dbg !4502
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4442, metadata !730), !dbg !4503
  br label %58, !dbg !4527

; <label>:58:                                     ; preds = %52, %45, %48, %57, %44
  %59 = phi i64 [ 1024, %44 ], [ 1024, %48 ], [ 1000, %57 ], [ 1024, %45 ], [ 1024, %52 ]
  %60 = phi i64 [ 1, %44 ], [ 1, %48 ], [ 2, %57 ], [ 1, %45 ], [ %56, %52 ]
  switch i32 %39, label %182 [
    i32 98, label %61
    i32 66, label %68
    i32 99, label %184
    i32 69, label %75
    i32 71, label %88
    i32 103, label %88
    i32 107, label %101
    i32 75, label %101
    i32 77, label %110
    i32 109, label %110
    i32 80, label %123
    i32 84, label %136
    i32 116, label %136
    i32 119, label %149
    i32 89, label %156
    i32 90, label %169
  ], !dbg !4528

; <label>:61:                                     ; preds = %58
  tail call void @llvm.dbg.value(metadata i32 512, i64 0, metadata !4529, metadata !730), !dbg !4535
  %62 = icmp slt i64 %35, -18014398509481984, !dbg !4538
  br i1 %62, label %184, label %63, !dbg !4540

; <label>:63:                                     ; preds = %61
  %64 = icmp sgt i64 %35, 18014398509481983, !dbg !4541
  %65 = shl nsw i64 %35, 9, !dbg !4543
  %66 = select i1 %64, i64 9223372036854775807, i64 %65, !dbg !4544
  %67 = zext i1 %64 to i32, !dbg !4544
  br label %184, !dbg !4544

; <label>:68:                                     ; preds = %58
  tail call void @llvm.dbg.value(metadata i32 1024, i64 0, metadata !4529, metadata !730), !dbg !4545
  %69 = icmp slt i64 %35, -9007199254740992, !dbg !4547
  br i1 %69, label %184, label %70, !dbg !4548

; <label>:70:                                     ; preds = %68
  %71 = icmp sgt i64 %35, 9007199254740991, !dbg !4549
  %72 = shl nsw i64 %35, 10, !dbg !4550
  %73 = select i1 %71, i64 9223372036854775807, i64 %72, !dbg !4551
  %74 = zext i1 %71 to i32, !dbg !4551
  br label %184, !dbg !4551

; <label>:75:                                     ; preds = %58
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4552, metadata !730), !dbg !4560
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4559, metadata !730), !dbg !4562
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4559, metadata !730), !dbg !4562
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4552, metadata !730), !dbg !4560
  %76 = sdiv i64 -9223372036854775808, %59
  %77 = icmp slt i64 %35, %76, !dbg !4563
  br i1 %77, label %84, label %78, !dbg !4565

; <label>:78:                                     ; preds = %75
  %79 = udiv i64 9223372036854775807, %59, !dbg !4566
  %80 = icmp slt i64 %79, %35, !dbg !4567
  %81 = mul nsw i64 %35, %59, !dbg !4568
  %82 = select i1 %80, i64 9223372036854775807, i64 %81, !dbg !4569
  %83 = zext i1 %80 to i32, !dbg !4569
  br label %84, !dbg !4569

; <label>:84:                                     ; preds = %78, %75
  %85 = phi i64 [ -9223372036854775808, %75 ], [ %82, %78 ]
  %86 = phi i32 [ 1, %75 ], [ %83, %78 ]
  tail call void @llvm.dbg.value(metadata i32 %86, i64 0, metadata !4559, metadata !730), !dbg !4562
  tail call void @llvm.dbg.value(metadata i32 %86, i64 0, metadata !4559, metadata !730), !dbg !4562
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4552, metadata !730), !dbg !4560
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4552, metadata !730), !dbg !4560
  %87 = icmp slt i64 %85, %76, !dbg !4563
  br i1 %87, label %204, label %198, !dbg !4565

; <label>:88:                                     ; preds = %58, %58
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4552, metadata !730), !dbg !4570
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4559, metadata !730), !dbg !4572
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4559, metadata !730), !dbg !4572
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4552, metadata !730), !dbg !4570
  %89 = sdiv i64 -9223372036854775808, %59
  %90 = icmp slt i64 %35, %89, !dbg !4573
  br i1 %90, label %97, label %91, !dbg !4575

; <label>:91:                                     ; preds = %88
  %92 = udiv i64 9223372036854775807, %59, !dbg !4576
  %93 = icmp slt i64 %92, %35, !dbg !4577
  %94 = mul nsw i64 %35, %59, !dbg !4578
  %95 = select i1 %93, i64 9223372036854775807, i64 %94, !dbg !4579
  %96 = zext i1 %93 to i32, !dbg !4579
  br label %97, !dbg !4579

; <label>:97:                                     ; preds = %91, %88
  %98 = phi i64 [ -9223372036854775808, %88 ], [ %95, %91 ]
  %99 = phi i32 [ 1, %88 ], [ %96, %91 ]
  tail call void @llvm.dbg.value(metadata i32 %99, i64 0, metadata !4559, metadata !730), !dbg !4572
  tail call void @llvm.dbg.value(metadata i32 %99, i64 0, metadata !4559, metadata !730), !dbg !4572
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4552, metadata !730), !dbg !4570
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4552, metadata !730), !dbg !4570
  %100 = icmp slt i64 %98, %89, !dbg !4573
  br i1 %100, label %258, label %252, !dbg !4575

; <label>:101:                                    ; preds = %58, %58
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4552, metadata !730), !dbg !4580
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4559, metadata !730), !dbg !4582
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4559, metadata !730), !dbg !4582
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4552, metadata !730), !dbg !4580
  %102 = sdiv i64 -9223372036854775808, %59
  %103 = icmp slt i64 %35, %102, !dbg !4583
  br i1 %103, label %184, label %104, !dbg !4585

; <label>:104:                                    ; preds = %101
  %105 = udiv i64 9223372036854775807, %59, !dbg !4586
  %106 = icmp slt i64 %105, %35, !dbg !4587
  %107 = mul nsw i64 %35, %59, !dbg !4588
  %108 = select i1 %106, i64 9223372036854775807, i64 %107, !dbg !4589
  %109 = zext i1 %106 to i32, !dbg !4589
  br label %184, !dbg !4589

; <label>:110:                                    ; preds = %58, %58
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4552, metadata !730), !dbg !4590
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4559, metadata !730), !dbg !4592
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4559, metadata !730), !dbg !4592
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4552, metadata !730), !dbg !4590
  %111 = sdiv i64 -9223372036854775808, %59
  %112 = icmp slt i64 %35, %111, !dbg !4593
  br i1 %112, label %119, label %113, !dbg !4595

; <label>:113:                                    ; preds = %110
  %114 = udiv i64 9223372036854775807, %59, !dbg !4596
  %115 = icmp slt i64 %114, %35, !dbg !4597
  %116 = mul nsw i64 %35, %59, !dbg !4598
  %117 = select i1 %115, i64 9223372036854775807, i64 %116, !dbg !4599
  %118 = zext i1 %115 to i32, !dbg !4599
  br label %119, !dbg !4599

; <label>:119:                                    ; preds = %113, %110
  %120 = phi i64 [ -9223372036854775808, %110 ], [ %117, %113 ]
  %121 = phi i32 [ 1, %110 ], [ %118, %113 ]
  tail call void @llvm.dbg.value(metadata i32 %121, i64 0, metadata !4559, metadata !730), !dbg !4592
  tail call void @llvm.dbg.value(metadata i32 %121, i64 0, metadata !4559, metadata !730), !dbg !4592
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4552, metadata !730), !dbg !4590
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4552, metadata !730), !dbg !4590
  %122 = icmp slt i64 %120, %111, !dbg !4593
  br i1 %122, label %279, label %273, !dbg !4595

; <label>:123:                                    ; preds = %58
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4552, metadata !730), !dbg !4600
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4559, metadata !730), !dbg !4602
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4559, metadata !730), !dbg !4602
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4552, metadata !730), !dbg !4600
  %124 = sdiv i64 -9223372036854775808, %59
  %125 = icmp slt i64 %35, %124, !dbg !4603
  br i1 %125, label %132, label %126, !dbg !4605

; <label>:126:                                    ; preds = %123
  %127 = udiv i64 9223372036854775807, %59, !dbg !4606
  %128 = icmp slt i64 %127, %35, !dbg !4607
  %129 = mul nsw i64 %35, %59, !dbg !4608
  %130 = select i1 %128, i64 9223372036854775807, i64 %129, !dbg !4609
  %131 = zext i1 %128 to i32, !dbg !4609
  br label %132, !dbg !4609

; <label>:132:                                    ; preds = %126, %123
  %133 = phi i64 [ -9223372036854775808, %123 ], [ %130, %126 ]
  %134 = phi i32 [ 1, %123 ], [ %131, %126 ]
  tail call void @llvm.dbg.value(metadata i32 %134, i64 0, metadata !4559, metadata !730), !dbg !4602
  tail call void @llvm.dbg.value(metadata i32 %134, i64 0, metadata !4559, metadata !730), !dbg !4602
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4552, metadata !730), !dbg !4600
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4552, metadata !730), !dbg !4600
  %135 = icmp slt i64 %133, %124, !dbg !4603
  br i1 %135, label %289, label %283, !dbg !4605

; <label>:136:                                    ; preds = %58, %58
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4552, metadata !730), !dbg !4610
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4559, metadata !730), !dbg !4612
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4559, metadata !730), !dbg !4612
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4552, metadata !730), !dbg !4610
  %137 = sdiv i64 -9223372036854775808, %59
  %138 = icmp slt i64 %35, %137, !dbg !4613
  br i1 %138, label %145, label %139, !dbg !4615

; <label>:139:                                    ; preds = %136
  %140 = udiv i64 9223372036854775807, %59, !dbg !4616
  %141 = icmp slt i64 %140, %35, !dbg !4617
  %142 = mul nsw i64 %35, %59, !dbg !4618
  %143 = select i1 %141, i64 9223372036854775807, i64 %142, !dbg !4619
  %144 = zext i1 %141 to i32, !dbg !4619
  br label %145, !dbg !4619

; <label>:145:                                    ; preds = %139, %136
  %146 = phi i64 [ -9223372036854775808, %136 ], [ %143, %139 ]
  %147 = phi i32 [ 1, %136 ], [ %144, %139 ]
  tail call void @llvm.dbg.value(metadata i32 %147, i64 0, metadata !4559, metadata !730), !dbg !4612
  tail call void @llvm.dbg.value(metadata i32 %147, i64 0, metadata !4559, metadata !730), !dbg !4612
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4552, metadata !730), !dbg !4610
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4552, metadata !730), !dbg !4610
  %148 = icmp slt i64 %146, %137, !dbg !4613
  br i1 %148, label %332, label %326, !dbg !4615

; <label>:149:                                    ; preds = %58
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4529, metadata !730), !dbg !4620
  %150 = icmp slt i64 %35, -4611686018427387904, !dbg !4622
  br i1 %150, label %184, label %151, !dbg !4623

; <label>:151:                                    ; preds = %149
  %152 = icmp sgt i64 %35, 4611686018427387903, !dbg !4624
  %153 = shl nsw i64 %35, 1, !dbg !4625
  %154 = select i1 %152, i64 9223372036854775807, i64 %153, !dbg !4626
  %155 = zext i1 %152 to i32, !dbg !4626
  br label %184, !dbg !4626

; <label>:156:                                    ; preds = %58
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !4552, metadata !730), !dbg !4627
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4559, metadata !730), !dbg !4629
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4559, metadata !730), !dbg !4629
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !4552, metadata !730), !dbg !4627
  %157 = sdiv i64 -9223372036854775808, %59
  %158 = icmp slt i64 %35, %157, !dbg !4630
  br i1 %158, label %165, label %159, !dbg !4632

; <label>:159:                                    ; preds = %156
  %160 = udiv i64 9223372036854775807, %59, !dbg !4633
  %161 = icmp slt i64 %160, %35, !dbg !4634
  %162 = mul nsw i64 %35, %59, !dbg !4635
  %163 = select i1 %161, i64 9223372036854775807, i64 %162, !dbg !4636
  %164 = zext i1 %161 to i32, !dbg !4636
  br label %165, !dbg !4636

; <label>:165:                                    ; preds = %159, %156
  %166 = phi i64 [ -9223372036854775808, %156 ], [ %163, %159 ]
  %167 = phi i32 [ 1, %156 ], [ %164, %159 ]
  tail call void @llvm.dbg.value(metadata i32 %167, i64 0, metadata !4559, metadata !730), !dbg !4629
  tail call void @llvm.dbg.value(metadata i32 %167, i64 0, metadata !4559, metadata !730), !dbg !4629
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4552, metadata !730), !dbg !4627
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4552, metadata !730), !dbg !4627
  %168 = icmp slt i64 %166, %157, !dbg !4630
  br i1 %168, label %364, label %358, !dbg !4632

; <label>:169:                                    ; preds = %58
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4552, metadata !730), !dbg !4637
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4559, metadata !730), !dbg !4639
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4559, metadata !730), !dbg !4639
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4552, metadata !730), !dbg !4637
  %170 = sdiv i64 -9223372036854775808, %59
  %171 = icmp slt i64 %35, %170, !dbg !4640
  br i1 %171, label %178, label %172, !dbg !4642

; <label>:172:                                    ; preds = %169
  %173 = udiv i64 9223372036854775807, %59, !dbg !4643
  %174 = icmp slt i64 %173, %35, !dbg !4644
  %175 = mul nsw i64 %35, %59, !dbg !4645
  %176 = select i1 %174, i64 9223372036854775807, i64 %175, !dbg !4646
  %177 = zext i1 %174 to i32, !dbg !4646
  br label %178, !dbg !4646

; <label>:178:                                    ; preds = %172, %169
  %179 = phi i64 [ -9223372036854775808, %169 ], [ %176, %172 ]
  %180 = phi i32 [ 1, %169 ], [ %177, %172 ]
  tail call void @llvm.dbg.value(metadata i32 %180, i64 0, metadata !4559, metadata !730), !dbg !4639
  tail call void @llvm.dbg.value(metadata i32 %180, i64 0, metadata !4559, metadata !730), !dbg !4639
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4552, metadata !730), !dbg !4637
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4552, metadata !730), !dbg !4637
  %181 = icmp slt i64 %179, %170, !dbg !4640
  br i1 %181, label %440, label %434, !dbg !4642

; <label>:182:                                    ; preds = %58
  call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4437, metadata !730), !dbg !4472
  store i64 %35, i64* %3, align 8, !dbg !4647, !tbaa !874
  %183 = or i32 %34, 2, !dbg !4648
  br label %196, !dbg !4649

; <label>:184:                                    ; preds = %101, %104, %495, %430, %354, %322, %279, %269, %248, %58, %61, %63, %68, %70, %149, %151
  %185 = phi i64 [ %35, %58 ], [ -9223372036854775808, %61 ], [ %66, %63 ], [ -9223372036854775808, %68 ], [ %73, %70 ], [ -9223372036854775808, %149 ], [ %154, %151 ], [ %249, %248 ], [ %270, %269 ], [ %280, %279 ], [ %323, %322 ], [ %355, %354 ], [ %431, %430 ], [ %496, %495 ], [ -9223372036854775808, %101 ], [ %108, %104 ]
  %186 = phi i32 [ 0, %58 ], [ 1, %61 ], [ %67, %63 ], [ 1, %68 ], [ %74, %70 ], [ 1, %149 ], [ %155, %151 ], [ %251, %248 ], [ %272, %269 ], [ %282, %279 ], [ %325, %322 ], [ %357, %354 ], [ %433, %430 ], [ %498, %495 ], [ 1, %101 ], [ %109, %104 ]
  call void @llvm.dbg.value(metadata i32 %186, i64 0, metadata !4443, metadata !730), !dbg !4650
  %187 = or i32 %186, %34, !dbg !4651
  call void @llvm.dbg.value(metadata i32 %187, i64 0, metadata !4438, metadata !730), !dbg !4450
  %188 = getelementptr inbounds i8, i8* %15, i64 %60, !dbg !4652
  store i8* %188, i8** %12, align 8, !dbg !4652, !tbaa !738
  %189 = load i8, i8* %188, align 1, !dbg !4653, !tbaa !864
  %190 = icmp eq i8 %189, 0, !dbg !4653
  %191 = or i32 %187, 2, !dbg !4655
  call void @llvm.dbg.value(metadata i32 %191, i64 0, metadata !4438, metadata !730), !dbg !4450
  %192 = select i1 %190, i32 %187, i32 %191, !dbg !4656
  call void @llvm.dbg.value(metadata i32 %192, i64 0, metadata !4438, metadata !730), !dbg !4450
  call void @llvm.dbg.value(metadata i32 %192, i64 0, metadata !4438, metadata !730), !dbg !4450
  br label %193

; <label>:193:                                    ; preds = %184, %33
  %194 = phi i64 [ %35, %33 ], [ %185, %184 ]
  %195 = phi i32 [ %34, %33 ], [ %192, %184 ]
  call void @llvm.dbg.value(metadata i32 %195, i64 0, metadata !4438, metadata !730), !dbg !4450
  call void @llvm.dbg.value(metadata i64 %194, i64 0, metadata !4437, metadata !730), !dbg !4472
  store i64 %194, i64* %3, align 8, !dbg !4657, !tbaa !874
  br label %196, !dbg !4658

; <label>:196:                                    ; preds = %42, %182, %26, %17, %19, %22, %193, %32
  %197 = phi i32 [ %195, %193 ], [ %30, %32 ], [ 4, %22 ], [ 4, %19 ], [ 4, %17 ], [ 4, %26 ], [ %43, %42 ], [ %183, %182 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %7) #10, !dbg !4659
  ret i32 %197, !dbg !4659

; <label>:198:                                    ; preds = %84
  %199 = udiv i64 9223372036854775807, %59, !dbg !4566
  %200 = icmp slt i64 %199, %85, !dbg !4567
  %201 = mul nsw i64 %85, %59, !dbg !4568
  %202 = select i1 %200, i64 9223372036854775807, i64 %201, !dbg !4569
  %203 = zext i1 %200 to i32, !dbg !4569
  br label %204, !dbg !4569

; <label>:204:                                    ; preds = %198, %84
  %205 = phi i64 [ -9223372036854775808, %84 ], [ %202, %198 ]
  %206 = phi i32 [ 1, %84 ], [ %203, %198 ]
  %207 = or i32 %206, %86, !dbg !4660
  tail call void @llvm.dbg.value(metadata i32 %86, i64 0, metadata !4559, metadata !730), !dbg !4562
  tail call void @llvm.dbg.value(metadata i32 %86, i64 0, metadata !4559, metadata !730), !dbg !4562
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4552, metadata !730), !dbg !4560
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4552, metadata !730), !dbg !4560
  %208 = icmp slt i64 %205, %76, !dbg !4563
  br i1 %208, label %215, label %209, !dbg !4565

; <label>:209:                                    ; preds = %204
  %210 = udiv i64 9223372036854775807, %59, !dbg !4566
  %211 = icmp slt i64 %210, %205, !dbg !4567
  %212 = mul nsw i64 %205, %59, !dbg !4568
  %213 = select i1 %211, i64 9223372036854775807, i64 %212, !dbg !4569
  %214 = zext i1 %211 to i32, !dbg !4569
  br label %215, !dbg !4569

; <label>:215:                                    ; preds = %209, %204
  %216 = phi i64 [ -9223372036854775808, %204 ], [ %213, %209 ]
  %217 = phi i32 [ 1, %204 ], [ %214, %209 ]
  %218 = or i32 %217, %207, !dbg !4660
  tail call void @llvm.dbg.value(metadata i32 %86, i64 0, metadata !4559, metadata !730), !dbg !4562
  tail call void @llvm.dbg.value(metadata i32 %86, i64 0, metadata !4559, metadata !730), !dbg !4562
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4552, metadata !730), !dbg !4560
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4552, metadata !730), !dbg !4560
  %219 = icmp slt i64 %216, %76, !dbg !4563
  br i1 %219, label %226, label %220, !dbg !4565

; <label>:220:                                    ; preds = %215
  %221 = udiv i64 9223372036854775807, %59, !dbg !4566
  %222 = icmp slt i64 %221, %216, !dbg !4567
  %223 = mul nsw i64 %216, %59, !dbg !4568
  %224 = select i1 %222, i64 9223372036854775807, i64 %223, !dbg !4569
  %225 = zext i1 %222 to i32, !dbg !4569
  br label %226, !dbg !4569

; <label>:226:                                    ; preds = %220, %215
  %227 = phi i64 [ -9223372036854775808, %215 ], [ %224, %220 ]
  %228 = phi i32 [ 1, %215 ], [ %225, %220 ]
  %229 = or i32 %228, %218, !dbg !4660
  tail call void @llvm.dbg.value(metadata i32 %86, i64 0, metadata !4559, metadata !730), !dbg !4562
  tail call void @llvm.dbg.value(metadata i32 %86, i64 0, metadata !4559, metadata !730), !dbg !4562
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4552, metadata !730), !dbg !4560
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4552, metadata !730), !dbg !4560
  %230 = icmp slt i64 %227, %76, !dbg !4563
  br i1 %230, label %237, label %231, !dbg !4565

; <label>:231:                                    ; preds = %226
  %232 = udiv i64 9223372036854775807, %59, !dbg !4566
  %233 = icmp slt i64 %232, %227, !dbg !4567
  %234 = mul nsw i64 %227, %59, !dbg !4568
  %235 = select i1 %233, i64 9223372036854775807, i64 %234, !dbg !4569
  %236 = zext i1 %233 to i32, !dbg !4569
  br label %237, !dbg !4569

; <label>:237:                                    ; preds = %231, %226
  %238 = phi i64 [ -9223372036854775808, %226 ], [ %235, %231 ]
  %239 = phi i32 [ 1, %226 ], [ %236, %231 ]
  %240 = or i32 %239, %229, !dbg !4660
  tail call void @llvm.dbg.value(metadata i32 %86, i64 0, metadata !4559, metadata !730), !dbg !4562
  tail call void @llvm.dbg.value(metadata i32 %86, i64 0, metadata !4559, metadata !730), !dbg !4562
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4552, metadata !730), !dbg !4560
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4552, metadata !730), !dbg !4560
  %241 = icmp slt i64 %238, %76, !dbg !4563
  br i1 %241, label %248, label %242, !dbg !4565

; <label>:242:                                    ; preds = %237
  %243 = udiv i64 9223372036854775807, %59, !dbg !4566
  %244 = icmp slt i64 %243, %238, !dbg !4567
  %245 = mul nsw i64 %238, %59, !dbg !4568
  %246 = select i1 %244, i64 9223372036854775807, i64 %245, !dbg !4569
  %247 = zext i1 %244 to i32, !dbg !4569
  br label %248, !dbg !4569

; <label>:248:                                    ; preds = %242, %237
  %249 = phi i64 [ -9223372036854775808, %237 ], [ %246, %242 ]
  %250 = phi i32 [ 1, %237 ], [ %247, %242 ]
  %251 = or i32 %250, %240, !dbg !4660
  tail call void @llvm.dbg.value(metadata i32 %86, i64 0, metadata !4559, metadata !730), !dbg !4562
  tail call void @llvm.dbg.value(metadata i32 %86, i64 0, metadata !4559, metadata !730), !dbg !4562
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4552, metadata !730), !dbg !4560
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4552, metadata !730), !dbg !4560
  br label %184, !dbg !4650

; <label>:252:                                    ; preds = %97
  %253 = udiv i64 9223372036854775807, %59, !dbg !4576
  %254 = icmp slt i64 %253, %98, !dbg !4577
  %255 = mul nsw i64 %98, %59, !dbg !4578
  %256 = select i1 %254, i64 9223372036854775807, i64 %255, !dbg !4579
  %257 = zext i1 %254 to i32, !dbg !4579
  br label %258, !dbg !4579

; <label>:258:                                    ; preds = %252, %97
  %259 = phi i64 [ -9223372036854775808, %97 ], [ %256, %252 ]
  %260 = phi i32 [ 1, %97 ], [ %257, %252 ]
  %261 = or i32 %260, %99, !dbg !4661
  tail call void @llvm.dbg.value(metadata i32 %99, i64 0, metadata !4559, metadata !730), !dbg !4572
  tail call void @llvm.dbg.value(metadata i32 %99, i64 0, metadata !4559, metadata !730), !dbg !4572
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4552, metadata !730), !dbg !4570
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4552, metadata !730), !dbg !4570
  %262 = icmp slt i64 %259, %89, !dbg !4573
  br i1 %262, label %269, label %263, !dbg !4575

; <label>:263:                                    ; preds = %258
  %264 = udiv i64 9223372036854775807, %59, !dbg !4576
  %265 = icmp slt i64 %264, %259, !dbg !4577
  %266 = mul nsw i64 %259, %59, !dbg !4578
  %267 = select i1 %265, i64 9223372036854775807, i64 %266, !dbg !4579
  %268 = zext i1 %265 to i32, !dbg !4579
  br label %269, !dbg !4579

; <label>:269:                                    ; preds = %263, %258
  %270 = phi i64 [ -9223372036854775808, %258 ], [ %267, %263 ]
  %271 = phi i32 [ 1, %258 ], [ %268, %263 ]
  %272 = or i32 %271, %261, !dbg !4661
  tail call void @llvm.dbg.value(metadata i32 %99, i64 0, metadata !4559, metadata !730), !dbg !4572
  tail call void @llvm.dbg.value(metadata i32 %99, i64 0, metadata !4559, metadata !730), !dbg !4572
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4552, metadata !730), !dbg !4570
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4552, metadata !730), !dbg !4570
  br label %184, !dbg !4650

; <label>:273:                                    ; preds = %119
  %274 = udiv i64 9223372036854775807, %59, !dbg !4596
  %275 = icmp slt i64 %274, %120, !dbg !4597
  %276 = mul nsw i64 %120, %59, !dbg !4598
  %277 = select i1 %275, i64 9223372036854775807, i64 %276, !dbg !4599
  %278 = zext i1 %275 to i32, !dbg !4599
  br label %279, !dbg !4599

; <label>:279:                                    ; preds = %273, %119
  %280 = phi i64 [ -9223372036854775808, %119 ], [ %277, %273 ]
  %281 = phi i32 [ 1, %119 ], [ %278, %273 ]
  %282 = or i32 %281, %121, !dbg !4662
  tail call void @llvm.dbg.value(metadata i32 %121, i64 0, metadata !4559, metadata !730), !dbg !4592
  tail call void @llvm.dbg.value(metadata i32 %121, i64 0, metadata !4559, metadata !730), !dbg !4592
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4552, metadata !730), !dbg !4590
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4552, metadata !730), !dbg !4590
  br label %184, !dbg !4650

; <label>:283:                                    ; preds = %132
  %284 = udiv i64 9223372036854775807, %59, !dbg !4606
  %285 = icmp slt i64 %284, %133, !dbg !4607
  %286 = mul nsw i64 %133, %59, !dbg !4608
  %287 = select i1 %285, i64 9223372036854775807, i64 %286, !dbg !4609
  %288 = zext i1 %285 to i32, !dbg !4609
  br label %289, !dbg !4609

; <label>:289:                                    ; preds = %283, %132
  %290 = phi i64 [ -9223372036854775808, %132 ], [ %287, %283 ]
  %291 = phi i32 [ 1, %132 ], [ %288, %283 ]
  %292 = or i32 %291, %134, !dbg !4663
  tail call void @llvm.dbg.value(metadata i32 %134, i64 0, metadata !4559, metadata !730), !dbg !4602
  tail call void @llvm.dbg.value(metadata i32 %134, i64 0, metadata !4559, metadata !730), !dbg !4602
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4552, metadata !730), !dbg !4600
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4552, metadata !730), !dbg !4600
  %293 = icmp slt i64 %290, %124, !dbg !4603
  br i1 %293, label %300, label %294, !dbg !4605

; <label>:294:                                    ; preds = %289
  %295 = udiv i64 9223372036854775807, %59, !dbg !4606
  %296 = icmp slt i64 %295, %290, !dbg !4607
  %297 = mul nsw i64 %290, %59, !dbg !4608
  %298 = select i1 %296, i64 9223372036854775807, i64 %297, !dbg !4609
  %299 = zext i1 %296 to i32, !dbg !4609
  br label %300, !dbg !4609

; <label>:300:                                    ; preds = %294, %289
  %301 = phi i64 [ -9223372036854775808, %289 ], [ %298, %294 ]
  %302 = phi i32 [ 1, %289 ], [ %299, %294 ]
  %303 = or i32 %302, %292, !dbg !4663
  tail call void @llvm.dbg.value(metadata i32 %134, i64 0, metadata !4559, metadata !730), !dbg !4602
  tail call void @llvm.dbg.value(metadata i32 %134, i64 0, metadata !4559, metadata !730), !dbg !4602
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4552, metadata !730), !dbg !4600
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4552, metadata !730), !dbg !4600
  %304 = icmp slt i64 %301, %124, !dbg !4603
  br i1 %304, label %311, label %305, !dbg !4605

; <label>:305:                                    ; preds = %300
  %306 = udiv i64 9223372036854775807, %59, !dbg !4606
  %307 = icmp slt i64 %306, %301, !dbg !4607
  %308 = mul nsw i64 %301, %59, !dbg !4608
  %309 = select i1 %307, i64 9223372036854775807, i64 %308, !dbg !4609
  %310 = zext i1 %307 to i32, !dbg !4609
  br label %311, !dbg !4609

; <label>:311:                                    ; preds = %305, %300
  %312 = phi i64 [ -9223372036854775808, %300 ], [ %309, %305 ]
  %313 = phi i32 [ 1, %300 ], [ %310, %305 ]
  %314 = or i32 %313, %303, !dbg !4663
  tail call void @llvm.dbg.value(metadata i32 %134, i64 0, metadata !4559, metadata !730), !dbg !4602
  tail call void @llvm.dbg.value(metadata i32 %134, i64 0, metadata !4559, metadata !730), !dbg !4602
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4552, metadata !730), !dbg !4600
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4552, metadata !730), !dbg !4600
  %315 = icmp slt i64 %312, %124, !dbg !4603
  br i1 %315, label %322, label %316, !dbg !4605

; <label>:316:                                    ; preds = %311
  %317 = udiv i64 9223372036854775807, %59, !dbg !4606
  %318 = icmp slt i64 %317, %312, !dbg !4607
  %319 = mul nsw i64 %312, %59, !dbg !4608
  %320 = select i1 %318, i64 9223372036854775807, i64 %319, !dbg !4609
  %321 = zext i1 %318 to i32, !dbg !4609
  br label %322, !dbg !4609

; <label>:322:                                    ; preds = %316, %311
  %323 = phi i64 [ -9223372036854775808, %311 ], [ %320, %316 ]
  %324 = phi i32 [ 1, %311 ], [ %321, %316 ]
  %325 = or i32 %324, %314, !dbg !4663
  tail call void @llvm.dbg.value(metadata i32 %134, i64 0, metadata !4559, metadata !730), !dbg !4602
  tail call void @llvm.dbg.value(metadata i32 %134, i64 0, metadata !4559, metadata !730), !dbg !4602
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4552, metadata !730), !dbg !4600
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4552, metadata !730), !dbg !4600
  br label %184, !dbg !4650

; <label>:326:                                    ; preds = %145
  %327 = udiv i64 9223372036854775807, %59, !dbg !4616
  %328 = icmp slt i64 %327, %146, !dbg !4617
  %329 = mul nsw i64 %146, %59, !dbg !4618
  %330 = select i1 %328, i64 9223372036854775807, i64 %329, !dbg !4619
  %331 = zext i1 %328 to i32, !dbg !4619
  br label %332, !dbg !4619

; <label>:332:                                    ; preds = %326, %145
  %333 = phi i64 [ -9223372036854775808, %145 ], [ %330, %326 ]
  %334 = phi i32 [ 1, %145 ], [ %331, %326 ]
  %335 = or i32 %334, %147, !dbg !4664
  tail call void @llvm.dbg.value(metadata i32 %147, i64 0, metadata !4559, metadata !730), !dbg !4612
  tail call void @llvm.dbg.value(metadata i32 %147, i64 0, metadata !4559, metadata !730), !dbg !4612
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4552, metadata !730), !dbg !4610
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4552, metadata !730), !dbg !4610
  %336 = icmp slt i64 %333, %137, !dbg !4613
  br i1 %336, label %343, label %337, !dbg !4615

; <label>:337:                                    ; preds = %332
  %338 = udiv i64 9223372036854775807, %59, !dbg !4616
  %339 = icmp slt i64 %338, %333, !dbg !4617
  %340 = mul nsw i64 %333, %59, !dbg !4618
  %341 = select i1 %339, i64 9223372036854775807, i64 %340, !dbg !4619
  %342 = zext i1 %339 to i32, !dbg !4619
  br label %343, !dbg !4619

; <label>:343:                                    ; preds = %337, %332
  %344 = phi i64 [ -9223372036854775808, %332 ], [ %341, %337 ]
  %345 = phi i32 [ 1, %332 ], [ %342, %337 ]
  %346 = or i32 %345, %335, !dbg !4664
  tail call void @llvm.dbg.value(metadata i32 %147, i64 0, metadata !4559, metadata !730), !dbg !4612
  tail call void @llvm.dbg.value(metadata i32 %147, i64 0, metadata !4559, metadata !730), !dbg !4612
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4552, metadata !730), !dbg !4610
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4552, metadata !730), !dbg !4610
  %347 = icmp slt i64 %344, %137, !dbg !4613
  br i1 %347, label %354, label %348, !dbg !4615

; <label>:348:                                    ; preds = %343
  %349 = udiv i64 9223372036854775807, %59, !dbg !4616
  %350 = icmp slt i64 %349, %344, !dbg !4617
  %351 = mul nsw i64 %344, %59, !dbg !4618
  %352 = select i1 %350, i64 9223372036854775807, i64 %351, !dbg !4619
  %353 = zext i1 %350 to i32, !dbg !4619
  br label %354, !dbg !4619

; <label>:354:                                    ; preds = %348, %343
  %355 = phi i64 [ -9223372036854775808, %343 ], [ %352, %348 ]
  %356 = phi i32 [ 1, %343 ], [ %353, %348 ]
  %357 = or i32 %356, %346, !dbg !4664
  tail call void @llvm.dbg.value(metadata i32 %147, i64 0, metadata !4559, metadata !730), !dbg !4612
  tail call void @llvm.dbg.value(metadata i32 %147, i64 0, metadata !4559, metadata !730), !dbg !4612
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4552, metadata !730), !dbg !4610
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4552, metadata !730), !dbg !4610
  br label %184, !dbg !4650

; <label>:358:                                    ; preds = %165
  %359 = udiv i64 9223372036854775807, %59, !dbg !4633
  %360 = icmp slt i64 %359, %166, !dbg !4634
  %361 = mul nsw i64 %166, %59, !dbg !4635
  %362 = select i1 %360, i64 9223372036854775807, i64 %361, !dbg !4636
  %363 = zext i1 %360 to i32, !dbg !4636
  br label %364, !dbg !4636

; <label>:364:                                    ; preds = %358, %165
  %365 = phi i64 [ -9223372036854775808, %165 ], [ %362, %358 ]
  %366 = phi i32 [ 1, %165 ], [ %363, %358 ]
  %367 = or i32 %366, %167, !dbg !4665
  tail call void @llvm.dbg.value(metadata i32 %167, i64 0, metadata !4559, metadata !730), !dbg !4629
  tail call void @llvm.dbg.value(metadata i32 %167, i64 0, metadata !4559, metadata !730), !dbg !4629
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4552, metadata !730), !dbg !4627
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4552, metadata !730), !dbg !4627
  %368 = icmp slt i64 %365, %157, !dbg !4630
  br i1 %368, label %375, label %369, !dbg !4632

; <label>:369:                                    ; preds = %364
  %370 = udiv i64 9223372036854775807, %59, !dbg !4633
  %371 = icmp slt i64 %370, %365, !dbg !4634
  %372 = mul nsw i64 %365, %59, !dbg !4635
  %373 = select i1 %371, i64 9223372036854775807, i64 %372, !dbg !4636
  %374 = zext i1 %371 to i32, !dbg !4636
  br label %375, !dbg !4636

; <label>:375:                                    ; preds = %369, %364
  %376 = phi i64 [ -9223372036854775808, %364 ], [ %373, %369 ]
  %377 = phi i32 [ 1, %364 ], [ %374, %369 ]
  %378 = or i32 %377, %367, !dbg !4665
  tail call void @llvm.dbg.value(metadata i32 %167, i64 0, metadata !4559, metadata !730), !dbg !4629
  tail call void @llvm.dbg.value(metadata i32 %167, i64 0, metadata !4559, metadata !730), !dbg !4629
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4552, metadata !730), !dbg !4627
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4552, metadata !730), !dbg !4627
  %379 = icmp slt i64 %376, %157, !dbg !4630
  br i1 %379, label %386, label %380, !dbg !4632

; <label>:380:                                    ; preds = %375
  %381 = udiv i64 9223372036854775807, %59, !dbg !4633
  %382 = icmp slt i64 %381, %376, !dbg !4634
  %383 = mul nsw i64 %376, %59, !dbg !4635
  %384 = select i1 %382, i64 9223372036854775807, i64 %383, !dbg !4636
  %385 = zext i1 %382 to i32, !dbg !4636
  br label %386, !dbg !4636

; <label>:386:                                    ; preds = %380, %375
  %387 = phi i64 [ -9223372036854775808, %375 ], [ %384, %380 ]
  %388 = phi i32 [ 1, %375 ], [ %385, %380 ]
  %389 = or i32 %388, %378, !dbg !4665
  tail call void @llvm.dbg.value(metadata i32 %167, i64 0, metadata !4559, metadata !730), !dbg !4629
  tail call void @llvm.dbg.value(metadata i32 %167, i64 0, metadata !4559, metadata !730), !dbg !4629
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4552, metadata !730), !dbg !4627
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4552, metadata !730), !dbg !4627
  %390 = icmp slt i64 %387, %157, !dbg !4630
  br i1 %390, label %397, label %391, !dbg !4632

; <label>:391:                                    ; preds = %386
  %392 = udiv i64 9223372036854775807, %59, !dbg !4633
  %393 = icmp slt i64 %392, %387, !dbg !4634
  %394 = mul nsw i64 %387, %59, !dbg !4635
  %395 = select i1 %393, i64 9223372036854775807, i64 %394, !dbg !4636
  %396 = zext i1 %393 to i32, !dbg !4636
  br label %397, !dbg !4636

; <label>:397:                                    ; preds = %391, %386
  %398 = phi i64 [ -9223372036854775808, %386 ], [ %395, %391 ]
  %399 = phi i32 [ 1, %386 ], [ %396, %391 ]
  %400 = or i32 %399, %389, !dbg !4665
  tail call void @llvm.dbg.value(metadata i32 %167, i64 0, metadata !4559, metadata !730), !dbg !4629
  tail call void @llvm.dbg.value(metadata i32 %167, i64 0, metadata !4559, metadata !730), !dbg !4629
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4552, metadata !730), !dbg !4627
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4552, metadata !730), !dbg !4627
  %401 = icmp slt i64 %398, %157, !dbg !4630
  br i1 %401, label %408, label %402, !dbg !4632

; <label>:402:                                    ; preds = %397
  %403 = udiv i64 9223372036854775807, %59, !dbg !4633
  %404 = icmp slt i64 %403, %398, !dbg !4634
  %405 = mul nsw i64 %398, %59, !dbg !4635
  %406 = select i1 %404, i64 9223372036854775807, i64 %405, !dbg !4636
  %407 = zext i1 %404 to i32, !dbg !4636
  br label %408, !dbg !4636

; <label>:408:                                    ; preds = %402, %397
  %409 = phi i64 [ -9223372036854775808, %397 ], [ %406, %402 ]
  %410 = phi i32 [ 1, %397 ], [ %407, %402 ]
  %411 = or i32 %410, %400, !dbg !4665
  tail call void @llvm.dbg.value(metadata i32 %167, i64 0, metadata !4559, metadata !730), !dbg !4629
  tail call void @llvm.dbg.value(metadata i32 %167, i64 0, metadata !4559, metadata !730), !dbg !4629
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4552, metadata !730), !dbg !4627
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4552, metadata !730), !dbg !4627
  %412 = icmp slt i64 %409, %157, !dbg !4630
  br i1 %412, label %419, label %413, !dbg !4632

; <label>:413:                                    ; preds = %408
  %414 = udiv i64 9223372036854775807, %59, !dbg !4633
  %415 = icmp slt i64 %414, %409, !dbg !4634
  %416 = mul nsw i64 %409, %59, !dbg !4635
  %417 = select i1 %415, i64 9223372036854775807, i64 %416, !dbg !4636
  %418 = zext i1 %415 to i32, !dbg !4636
  br label %419, !dbg !4636

; <label>:419:                                    ; preds = %413, %408
  %420 = phi i64 [ -9223372036854775808, %408 ], [ %417, %413 ]
  %421 = phi i32 [ 1, %408 ], [ %418, %413 ]
  %422 = or i32 %421, %411, !dbg !4665
  tail call void @llvm.dbg.value(metadata i32 %167, i64 0, metadata !4559, metadata !730), !dbg !4629
  tail call void @llvm.dbg.value(metadata i32 %167, i64 0, metadata !4559, metadata !730), !dbg !4629
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4552, metadata !730), !dbg !4627
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4552, metadata !730), !dbg !4627
  %423 = icmp slt i64 %420, %157, !dbg !4630
  br i1 %423, label %430, label %424, !dbg !4632

; <label>:424:                                    ; preds = %419
  %425 = udiv i64 9223372036854775807, %59, !dbg !4633
  %426 = icmp slt i64 %425, %420, !dbg !4634
  %427 = mul nsw i64 %420, %59, !dbg !4635
  %428 = select i1 %426, i64 9223372036854775807, i64 %427, !dbg !4636
  %429 = zext i1 %426 to i32, !dbg !4636
  br label %430, !dbg !4636

; <label>:430:                                    ; preds = %424, %419
  %431 = phi i64 [ -9223372036854775808, %419 ], [ %428, %424 ]
  %432 = phi i32 [ 1, %419 ], [ %429, %424 ]
  %433 = or i32 %432, %422, !dbg !4665
  tail call void @llvm.dbg.value(metadata i32 %167, i64 0, metadata !4559, metadata !730), !dbg !4629
  tail call void @llvm.dbg.value(metadata i32 %167, i64 0, metadata !4559, metadata !730), !dbg !4629
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4552, metadata !730), !dbg !4627
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4552, metadata !730), !dbg !4627
  br label %184, !dbg !4650

; <label>:434:                                    ; preds = %178
  %435 = udiv i64 9223372036854775807, %59, !dbg !4643
  %436 = icmp slt i64 %435, %179, !dbg !4644
  %437 = mul nsw i64 %179, %59, !dbg !4645
  %438 = select i1 %436, i64 9223372036854775807, i64 %437, !dbg !4646
  %439 = zext i1 %436 to i32, !dbg !4646
  br label %440, !dbg !4646

; <label>:440:                                    ; preds = %434, %178
  %441 = phi i64 [ -9223372036854775808, %178 ], [ %438, %434 ]
  %442 = phi i32 [ 1, %178 ], [ %439, %434 ]
  %443 = or i32 %442, %180, !dbg !4666
  tail call void @llvm.dbg.value(metadata i32 %180, i64 0, metadata !4559, metadata !730), !dbg !4639
  tail call void @llvm.dbg.value(metadata i32 %180, i64 0, metadata !4559, metadata !730), !dbg !4639
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4552, metadata !730), !dbg !4637
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4552, metadata !730), !dbg !4637
  %444 = icmp slt i64 %441, %170, !dbg !4640
  br i1 %444, label %451, label %445, !dbg !4642

; <label>:445:                                    ; preds = %440
  %446 = udiv i64 9223372036854775807, %59, !dbg !4643
  %447 = icmp slt i64 %446, %441, !dbg !4644
  %448 = mul nsw i64 %441, %59, !dbg !4645
  %449 = select i1 %447, i64 9223372036854775807, i64 %448, !dbg !4646
  %450 = zext i1 %447 to i32, !dbg !4646
  br label %451, !dbg !4646

; <label>:451:                                    ; preds = %445, %440
  %452 = phi i64 [ -9223372036854775808, %440 ], [ %449, %445 ]
  %453 = phi i32 [ 1, %440 ], [ %450, %445 ]
  %454 = or i32 %453, %443, !dbg !4666
  tail call void @llvm.dbg.value(metadata i32 %180, i64 0, metadata !4559, metadata !730), !dbg !4639
  tail call void @llvm.dbg.value(metadata i32 %180, i64 0, metadata !4559, metadata !730), !dbg !4639
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4552, metadata !730), !dbg !4637
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4552, metadata !730), !dbg !4637
  %455 = icmp slt i64 %452, %170, !dbg !4640
  br i1 %455, label %462, label %456, !dbg !4642

; <label>:456:                                    ; preds = %451
  %457 = udiv i64 9223372036854775807, %59, !dbg !4643
  %458 = icmp slt i64 %457, %452, !dbg !4644
  %459 = mul nsw i64 %452, %59, !dbg !4645
  %460 = select i1 %458, i64 9223372036854775807, i64 %459, !dbg !4646
  %461 = zext i1 %458 to i32, !dbg !4646
  br label %462, !dbg !4646

; <label>:462:                                    ; preds = %456, %451
  %463 = phi i64 [ -9223372036854775808, %451 ], [ %460, %456 ]
  %464 = phi i32 [ 1, %451 ], [ %461, %456 ]
  %465 = or i32 %464, %454, !dbg !4666
  tail call void @llvm.dbg.value(metadata i32 %180, i64 0, metadata !4559, metadata !730), !dbg !4639
  tail call void @llvm.dbg.value(metadata i32 %180, i64 0, metadata !4559, metadata !730), !dbg !4639
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4552, metadata !730), !dbg !4637
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4552, metadata !730), !dbg !4637
  %466 = icmp slt i64 %463, %170, !dbg !4640
  br i1 %466, label %473, label %467, !dbg !4642

; <label>:467:                                    ; preds = %462
  %468 = udiv i64 9223372036854775807, %59, !dbg !4643
  %469 = icmp slt i64 %468, %463, !dbg !4644
  %470 = mul nsw i64 %463, %59, !dbg !4645
  %471 = select i1 %469, i64 9223372036854775807, i64 %470, !dbg !4646
  %472 = zext i1 %469 to i32, !dbg !4646
  br label %473, !dbg !4646

; <label>:473:                                    ; preds = %467, %462
  %474 = phi i64 [ -9223372036854775808, %462 ], [ %471, %467 ]
  %475 = phi i32 [ 1, %462 ], [ %472, %467 ]
  %476 = or i32 %475, %465, !dbg !4666
  tail call void @llvm.dbg.value(metadata i32 %180, i64 0, metadata !4559, metadata !730), !dbg !4639
  tail call void @llvm.dbg.value(metadata i32 %180, i64 0, metadata !4559, metadata !730), !dbg !4639
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4552, metadata !730), !dbg !4637
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4552, metadata !730), !dbg !4637
  %477 = icmp slt i64 %474, %170, !dbg !4640
  br i1 %477, label %484, label %478, !dbg !4642

; <label>:478:                                    ; preds = %473
  %479 = udiv i64 9223372036854775807, %59, !dbg !4643
  %480 = icmp slt i64 %479, %474, !dbg !4644
  %481 = mul nsw i64 %474, %59, !dbg !4645
  %482 = select i1 %480, i64 9223372036854775807, i64 %481, !dbg !4646
  %483 = zext i1 %480 to i32, !dbg !4646
  br label %484, !dbg !4646

; <label>:484:                                    ; preds = %478, %473
  %485 = phi i64 [ -9223372036854775808, %473 ], [ %482, %478 ]
  %486 = phi i32 [ 1, %473 ], [ %483, %478 ]
  %487 = or i32 %486, %476, !dbg !4666
  tail call void @llvm.dbg.value(metadata i32 %180, i64 0, metadata !4559, metadata !730), !dbg !4639
  tail call void @llvm.dbg.value(metadata i32 %180, i64 0, metadata !4559, metadata !730), !dbg !4639
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4552, metadata !730), !dbg !4637
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4552, metadata !730), !dbg !4637
  %488 = icmp slt i64 %485, %170, !dbg !4640
  br i1 %488, label %495, label %489, !dbg !4642

; <label>:489:                                    ; preds = %484
  %490 = udiv i64 9223372036854775807, %59, !dbg !4643
  %491 = icmp slt i64 %490, %485, !dbg !4644
  %492 = mul nsw i64 %485, %59, !dbg !4645
  %493 = select i1 %491, i64 9223372036854775807, i64 %492, !dbg !4646
  %494 = zext i1 %491 to i32, !dbg !4646
  br label %495, !dbg !4646

; <label>:495:                                    ; preds = %489, %484
  %496 = phi i64 [ -9223372036854775808, %484 ], [ %493, %489 ]
  %497 = phi i32 [ 1, %484 ], [ %494, %489 ]
  %498 = or i32 %497, %487, !dbg !4666
  tail call void @llvm.dbg.value(metadata i32 %180, i64 0, metadata !4559, metadata !730), !dbg !4639
  tail call void @llvm.dbg.value(metadata i32 %180, i64 0, metadata !4559, metadata !730), !dbg !4639
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4552, metadata !730), !dbg !4637
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4552, metadata !730), !dbg !4637
  br label %184, !dbg !4650
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #5

; Function Attrs: nounwind
declare i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !4667 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4670, metadata !730), !dbg !4676
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4671, metadata !730), !dbg !4677
  %3 = icmp eq i64 %0, 0, !dbg !4678
  %4 = icmp eq i64 %1, 0, !dbg !4679
  %5 = or i1 %3, %4, !dbg !4681
  br i1 %5, label %12, label %6, !dbg !4681

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4682
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !4673, metadata !730), !dbg !4683
  %8 = udiv i64 %7, %1, !dbg !4684
  %9 = icmp eq i64 %8, %0, !dbg !4686
  br i1 %9, label %12, label %10, !dbg !4687

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #1, !dbg !4688
  store i32 12, i32* %11, align 4, !dbg !4690, !tbaa !972
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4670, metadata !730), !dbg !4676
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !4671, metadata !730), !dbg !4677
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #10, !dbg !4691
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !4672, metadata !730), !dbg !4692
  br label %16, !dbg !4693

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !4694
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !4695 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4740, metadata !730), !dbg !4744
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4741, metadata !730), !dbg !4745
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4743, metadata !730), !dbg !4746
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !4747
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4742, metadata !730), !dbg !4748
  %3 = icmp slt i32 %2, 0, !dbg !4749
  br i1 %3, label %4, label %6, !dbg !4751

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4752
  br label %24, !dbg !4753

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !4754
  %8 = icmp eq i32 %7, 0, !dbg !4754
  br i1 %8, label %13, label %9, !dbg !4756

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !4757
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #10, !dbg !4759
  %12 = icmp eq i64 %11, -1, !dbg !4761
  br i1 %12, label %16, label %13, !dbg !4762

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #10, !dbg !4763
  %15 = icmp eq i32 %14, 0, !dbg !4763
  br i1 %15, label %16, label %18, !dbg !4764

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4741, metadata !730), !dbg !4745
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4766
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4743, metadata !730), !dbg !4746
  br label %24, !dbg !4767

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #1, !dbg !4768
  %20 = load i32, i32* %19, align 4, !dbg !4768, !tbaa !972
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4741, metadata !730), !dbg !4745
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4741, metadata !730), !dbg !4745
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4766
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4743, metadata !730), !dbg !4746
  %22 = icmp eq i32 %20, 0, !dbg !4769
  br i1 %22, label %24, label %23, !dbg !4767

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4771, !tbaa !972
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !4743, metadata !730), !dbg !4746
  br label %24, !dbg !4773

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !4774
}

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !4775 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4820, metadata !730), !dbg !4821
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4822
  br i1 %2, label %6, label %3, !dbg !4824

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !4825
  %5 = icmp eq i32 %4, 0, !dbg !4825
  br i1 %5, label %6, label %8, !dbg !4827

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4829
  br label %17, !dbg !4830

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4831, metadata !730) #10, !dbg !4836
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4838
  %10 = load i32, i32* %9, align 8, !dbg !4838, !tbaa !1490
  %11 = and i32 %10, 256, !dbg !4840
  %12 = icmp eq i32 %11, 0, !dbg !4840
  br i1 %12, label %15, label %13, !dbg !4841

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #10, !dbg !4842
  br label %15, !dbg !4842

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4843
  br label %17, !dbg !4844

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !4845
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !4846 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4891, metadata !730), !dbg !4897
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4892, metadata !730), !dbg !4898
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4893, metadata !730), !dbg !4899
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4900
  %5 = load i8*, i8** %4, align 8, !dbg !4900, !tbaa !1775
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4901
  %7 = load i8*, i8** %6, align 8, !dbg !4901, !tbaa !1774
  %8 = icmp eq i8* %5, %7, !dbg !4902
  br i1 %8, label %9, label %28, !dbg !4903

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4904
  %11 = load i8*, i8** %10, align 8, !dbg !4904, !tbaa !1348
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4906
  %13 = load i8*, i8** %12, align 8, !dbg !4906, !tbaa !4907
  %14 = icmp eq i8* %11, %13, !dbg !4908
  br i1 %14, label %15, label %28, !dbg !4909

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4910
  %17 = load i8*, i8** %16, align 8, !dbg !4910, !tbaa !4911
  %18 = icmp eq i8* %17, null, !dbg !4912
  br i1 %18, label %19, label %28, !dbg !4913

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !4915
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #10, !dbg !4916
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !4894, metadata !730), !dbg !4918
  %22 = icmp eq i64 %21, -1, !dbg !4919
  br i1 %22, label %30, label %23, !dbg !4921

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4922
  %25 = load i32, i32* %24, align 8, !dbg !4923, !tbaa !1490
  %26 = and i32 %25, -17, !dbg !4923
  store i32 %26, i32* %24, align 8, !dbg !4923, !tbaa !1490
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4924
  store i64 %21, i64* %27, align 8, !dbg !4925, !tbaa !4926
  br label %30, !dbg !4927

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4928
  br label %30, !dbg !4929

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !4930
}

; Function Attrs: nounwind
declare i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !4931 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !4948, metadata !730), !dbg !4957
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4949, metadata !730), !dbg !4958
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4950, metadata !730), !dbg !4959
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !4951, metadata !730), !dbg !4960
  %6 = bitcast i32* %5 to i8*, !dbg !4961
  call void @llvm.lifetime.start(i64 4, i8* nonnull %6) #10, !dbg !4961
  %7 = icmp eq i32* %0, null, !dbg !4962
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !4948, metadata !730), !dbg !4957
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !4964
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !4948, metadata !730), !dbg !4957
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #10, !dbg !4965
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !4952, metadata !730), !dbg !4966
  %10 = icmp ugt i64 %9, -3, !dbg !4967
  %11 = icmp ne i64 %2, 0, !dbg !4968
  %12 = and i1 %11, %10, !dbg !4970
  br i1 %12, label %13, label %18, !dbg !4970

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #10, !dbg !4971
  br i1 %14, label %18, label %15, !dbg !4973

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4975, !tbaa !864
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !4954, metadata !730), !dbg !4976
  %17 = zext i8 %16 to i32, !dbg !4977
  store i32 %17, i32* %8, align 4, !dbg !4978, !tbaa !972
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end(i64 4, i8* nonnull %6) #10, !dbg !4979
  ret i64 %19, !dbg !4979
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !4980 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5025, metadata !730), !dbg !5030
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #10, !dbg !5031
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5032, metadata !730), !dbg !5035
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !5037
  %4 = load i32, i32* %3, align 8, !dbg !5037, !tbaa !1490
  %5 = and i32 %4, 32, !dbg !5037
  %6 = icmp eq i32 %5, 0, !dbg !5038
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #10, !dbg !5039
  %8 = icmp ne i32 %7, 0, !dbg !5040
  br i1 %6, label %9, label %19, !dbg !5041

; <label>:9:                                      ; preds = %1
  %10 = xor i1 %8, true, !dbg !5043
  %11 = icmp ne i64 %2, 0, !dbg !5043
  %12 = or i1 %11, %10, !dbg !5043
  %13 = sext i1 %8 to i32, !dbg !5043
  br i1 %12, label %22, label %14, !dbg !5043

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #1, !dbg !5045
  %16 = load i32, i32* %15, align 4, !dbg !5045, !tbaa !972
  %17 = icmp ne i32 %16, 9, !dbg !5047
  %18 = sext i1 %17 to i32, !dbg !5047
  br label %22, !dbg !5047

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !5049

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #1, !dbg !5051
  store i32 0, i32* %21, align 4, !dbg !5053, !tbaa !972
  br label %22, !dbg !5051

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !5054
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !5055 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !5060, metadata !730), !dbg !5080
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !5061, metadata !730), !dbg !5081
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #10, !dbg !5082
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !5062, metadata !730), !dbg !5083
  %3 = icmp eq i8* %2, null, !dbg !5084
  br i1 %3, label %15, label %4, !dbg !5085

; <label>:4:                                      ; preds = %1
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5070, metadata !730), !dbg !5086
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !5071, metadata !730), !dbg !5087
  %5 = load i8, i8* %2, align 1, !dbg !5088, !tbaa !864
  %6 = icmp eq i8 %5, 67, !dbg !5090
  br i1 %6, label %7, label %11, !dbg !5093

; <label>:7:                                      ; preds = %4
  %8 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !5095
  %9 = load i8, i8* %8, align 1, !dbg !5095, !tbaa !864
  %10 = icmp eq i8 %9, 0, !dbg !5098
  br i1 %10, label %14, label %11, !dbg !5100

; <label>:11:                                     ; preds = %4, %7
  tail call void @llvm.dbg.value(metadata i64 5, i64 0, metadata !5076, metadata !730), !dbg !5102
  %12 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.150, i64 0, i64 0)) #10, !dbg !5103
  %13 = icmp eq i32 %12, 0, !dbg !5105
  br i1 %13, label %14, label %15, !dbg !5107

; <label>:14:                                     ; preds = %11, %7
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !5061, metadata !730), !dbg !5081
  br label %15, !dbg !5109

; <label>:15:                                     ; preds = %1, %11, %14
  %16 = phi i1 [ false, %14 ], [ true, %11 ], [ true, %1 ]
  ret i1 %16, !dbg !5110
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !5111 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !5123, metadata !730), !dbg !5197
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !5190, metadata !730), !dbg !5199
  %3 = tail call i8* @nl_langinfo(i32 14) #10, !dbg !5200
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !5115, metadata !730), !dbg !5201
  %4 = icmp eq i8* %3, null, !dbg !5202
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.153, i64 0, i64 0), i8* %3, !dbg !5204
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !5115, metadata !730), !dbg !5201
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !5205, !tbaa !738
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !5137, metadata !730) #10, !dbg !5206
  %7 = icmp eq i8* %6, null, !dbg !5207
  br i1 %7, label %8, label %127, !dbg !5208

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.154, i64 0, i64 0)) #10, !dbg !5209
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !5138, metadata !730) #10, !dbg !5210
  %10 = icmp eq i8* %9, null, !dbg !5211
  br i1 %10, label %14, label %11, !dbg !5213

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !5214, !tbaa !864
  %13 = icmp eq i8 %12, 0, !dbg !5216
  br i1 %13, label %14, label %15, !dbg !5217

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !5219

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.155, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !5138, metadata !730) #10, !dbg !5210
  %17 = tail call i64 @strlen(i8* nonnull %16) #13, !dbg !5220
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !5141, metadata !730) #10, !dbg !5221
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !5143, metadata !730) #10, !dbg !5222
  %18 = icmp eq i64 %17, 0, !dbg !5223
  br i1 %18, label %24, label %19, !dbg !5224

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !5225
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !5225
  %22 = load i8, i8* %21, align 1, !dbg !5225, !tbaa !864
  %23 = icmp ne i8 %22, 47, !dbg !5227
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !5228
  %27 = add i64 %17, 14, !dbg !5229
  %28 = add i64 %27, %26, !dbg !5230
  %29 = tail call noalias i8* @malloc(i64 %28) #10, !dbg !5231
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !5140, metadata !730) #10, !dbg !5232
  %30 = icmp eq i8* %29, null, !dbg !5233
  br i1 %30, label %125, label %31, !dbg !5233

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #10, !dbg !5234
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !5237

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !5238, !tbaa !864
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !5240
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.156, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !5241
  br label %37, !dbg !5242

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !5240
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.156, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !5241
  br label %37, !dbg !5242

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #10, !dbg !5243
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !5145, metadata !730) #10, !dbg !5244
  %39 = icmp slt i32 %38, 0, !dbg !5245
  br i1 %39, label %123, label %40, !dbg !5246

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.157, i64 0, i64 0)) #10, !dbg !5247
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !5146, metadata !730) #10, !dbg !5248
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !5249
  br i1 %42, label %48, label %43, !dbg !5250

; <label>:43:                                     ; preds = %40
  %44 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %45 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %46 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %47 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !5251

; <label>:48:                                     ; preds = %40
  %49 = tail call i32 @close(i32 %38) #10, !dbg !5252
  br label %123, !dbg !5254

; <label>:50:                                     ; preds = %111, %43
  %51 = phi i64 [ %112, %111 ], [ 0, %43 ]
  %52 = phi i8* [ %113, %111 ], [ null, %43 ]
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !5187, metadata !730) #10, !dbg !5251
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !5188, metadata !730) #10, !dbg !5255
  call void @llvm.lifetime.start(i64 51, i8* nonnull %44) #10, !dbg !5256
  call void @llvm.lifetime.start(i64 51, i8* nonnull %45) #10, !dbg !5257
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !5258, metadata !730) #10, !dbg !5263
  %53 = load i8*, i8** %46, align 8, !dbg !5265, !tbaa !1774
  %54 = load i8*, i8** %47, align 8, !dbg !5265, !tbaa !1775
  %55 = icmp ult i8* %53, %54, !dbg !5265
  br i1 %55, label %58, label %56, !dbg !5265, !prof !1352

; <label>:56:                                     ; preds = %50
  %57 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !5266
  br label %62, !dbg !5266

; <label>:58:                                     ; preds = %50
  %59 = getelementptr inbounds i8, i8* %53, i64 1, !dbg !5268
  store i8* %59, i8** %46, align 8, !dbg !5268, !tbaa !1774
  %60 = load i8, i8* %53, align 1, !dbg !5268, !tbaa !864
  %61 = zext i8 %60 to i32, !dbg !5268
  br label %62, !dbg !5268

; <label>:62:                                     ; preds = %58, %56
  %63 = phi i32 [ %57, %56 ], [ %61, %58 ], !dbg !5270
  call void @llvm.dbg.value(metadata i32 %63, i64 0, metadata !5189, metadata !730) #10, !dbg !5272
  switch i32 %63, label %77 [
    i32 -1, label %115
    i32 32, label %111
    i32 10, label %111
    i32 9, label %111
    i32 35, label %64
  ], !dbg !5273

; <label>:64:                                     ; preds = %62
  br label %65, !dbg !5274

; <label>:65:                                     ; preds = %64, %75
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !5258, metadata !730) #10, !dbg !5274
  %66 = load i8*, i8** %46, align 8, !dbg !5278, !tbaa !1774
  %67 = load i8*, i8** %47, align 8, !dbg !5278, !tbaa !1775
  %68 = icmp ult i8* %66, %67, !dbg !5278
  br i1 %68, label %71, label %69, !dbg !5278, !prof !1352

; <label>:69:                                     ; preds = %65
  %70 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !5279
  br label %75, !dbg !5279

; <label>:71:                                     ; preds = %65
  %72 = getelementptr inbounds i8, i8* %66, i64 1, !dbg !5280
  store i8* %72, i8** %46, align 8, !dbg !5280, !tbaa !1774
  %73 = load i8, i8* %66, align 1, !dbg !5280, !tbaa !864
  %74 = zext i8 %73 to i32, !dbg !5280
  br label %75, !dbg !5280

; <label>:75:                                     ; preds = %71, %69
  %76 = phi i32 [ %70, %69 ], [ %74, %71 ], !dbg !5281
  call void @llvm.dbg.value(metadata i32 %76, i64 0, metadata !5189, metadata !730) #10, !dbg !5272
  switch i32 %76, label %65 [
    i32 -1, label %114
    i32 10, label %110
  ], !dbg !5282, !llvm.loop !5284

; <label>:77:                                     ; preds = %62
  %78 = call i32 @ungetc(i32 %63, %struct._IO_FILE* nonnull %41) #10, !dbg !5287
  %79 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.158, i64 0, i64 0), i8* nonnull %44, i8* nonnull %45) #10, !dbg !5288
  %80 = icmp slt i32 %79, 2, !dbg !5290
  br i1 %80, label %115, label %81, !dbg !5291

; <label>:81:                                     ; preds = %77
  %82 = call i64 @strlen(i8* nonnull %44) #13, !dbg !5292
  call void @llvm.dbg.value(metadata i64 %82, i64 0, metadata !5194, metadata !730) #10, !dbg !5293
  %83 = call i64 @strlen(i8* nonnull %45) #13, !dbg !5294
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !5195, metadata !730) #10, !dbg !5295
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !5196, metadata !730) #10, !dbg !5296
  %84 = icmp eq i64 %51, 0, !dbg !5297
  %85 = add i64 %82, 1
  %86 = add i64 %85, %83
  %87 = add i64 %86, 1
  br i1 %84, label %88, label %91, !dbg !5299

; <label>:88:                                     ; preds = %81
  call void @llvm.dbg.value(metadata i64 %87, i64 0, metadata !5188, metadata !730) #10, !dbg !5255
  %89 = add i64 %86, 2, !dbg !5300
  %90 = call noalias i8* @malloc(i64 %89) #10, !dbg !5302
  call void @llvm.dbg.value(metadata i8* %90, i64 0, metadata !5187, metadata !730) #10, !dbg !5251
  br label %95, !dbg !5303

; <label>:91:                                     ; preds = %81
  %92 = add i64 %87, %51, !dbg !5304
  call void @llvm.dbg.value(metadata i64 %92, i64 0, metadata !5188, metadata !730) #10, !dbg !5255
  %93 = add i64 %92, 1, !dbg !5306
  %94 = call i8* @realloc(i8* %52, i64 %93) #10, !dbg !5307
  call void @llvm.dbg.value(metadata i8* %94, i64 0, metadata !5187, metadata !730) #10, !dbg !5251
  br label %95

; <label>:95:                                     ; preds = %91, %88
  %96 = phi i64 [ %87, %88 ], [ %92, %91 ]
  %97 = phi i8* [ %90, %88 ], [ %94, %91 ]
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !5187, metadata !730) #10, !dbg !5251
  call void @llvm.dbg.value(metadata i64 %96, i64 0, metadata !5188, metadata !730) #10, !dbg !5255
  %98 = icmp eq i8* %97, null, !dbg !5308
  br i1 %98, label %99, label %100, !dbg !5310

; <label>:99:                                     ; preds = %95
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !5188, metadata !730) #10, !dbg !5255
  call void @free(i8* %52) #10, !dbg !5311
  br label %116, !dbg !5313

; <label>:100:                                    ; preds = %95
  %101 = getelementptr inbounds i8, i8* %97, i64 %96, !dbg !5314
  %102 = xor i64 %83, -1, !dbg !5315
  %103 = getelementptr inbounds i8, i8* %101, i64 %102, !dbg !5315
  %104 = xor i64 %82, -1, !dbg !5316
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !5316
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !5317, metadata !730) #10, !dbg !5321
  call void @llvm.dbg.value(metadata i8* %44, i64 0, metadata !5320, metadata !730) #10, !dbg !5321
  %106 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false) #10, !dbg !5323
  %107 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %44, i64 %106) #10, !dbg !5324
  call void @llvm.dbg.value(metadata i8* %103, i64 0, metadata !5317, metadata !730) #10, !dbg !5325
  call void @llvm.dbg.value(metadata i8* %45, i64 0, metadata !5320, metadata !730) #10, !dbg !5325
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %103, i1 false) #10, !dbg !5327
  %109 = call i8* @__strcpy_chk(i8* nonnull %103, i8* nonnull %45, i64 %108) #10, !dbg !5328
  br label %111, !dbg !5329

; <label>:110:                                    ; preds = %75
  br label %111, !dbg !5251

; <label>:111:                                    ; preds = %110, %100, %62, %62, %62
  %112 = phi i64 [ %96, %100 ], [ %51, %62 ], [ %51, %62 ], [ %51, %62 ], [ %51, %110 ]
  %113 = phi i8* [ %97, %100 ], [ %52, %62 ], [ %52, %62 ], [ %52, %62 ], [ %52, %110 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !5187, metadata !730) #10, !dbg !5251
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !5188, metadata !730) #10, !dbg !5255
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #10, !dbg !5329
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #10, !dbg !5329
  br label %50

; <label>:114:                                    ; preds = %75
  br label %116, !dbg !5251

; <label>:115:                                    ; preds = %62, %77
  br label %116, !dbg !5251

; <label>:116:                                    ; preds = %115, %114, %99
  %117 = phi i64 [ 0, %99 ], [ %51, %114 ], [ %51, %115 ]
  %118 = phi i8* [ null, %99 ], [ %52, %114 ], [ %52, %115 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !5187, metadata !730) #10, !dbg !5251
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !5188, metadata !730) #10, !dbg !5255
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #10, !dbg !5329
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #10, !dbg !5329
  %119 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #10, !dbg !5330
  %120 = icmp eq i64 %117, 0, !dbg !5331
  br i1 %120, label %123, label %121, !dbg !5333

; <label>:121:                                    ; preds = %116
  %122 = getelementptr inbounds i8, i8* %118, i64 %117, !dbg !5334
  store i8 0, i8* %122, align 1, !dbg !5336, !tbaa !864
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !5137, metadata !730) #10, !dbg !5206
  br label %123

; <label>:123:                                    ; preds = %121, %116, %48, %37
  %124 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.153, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.153, i64 0, i64 0), %48 ], [ %118, %121 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.153, i64 0, i64 0), %116 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !5137, metadata !730) #10, !dbg !5206
  call void @free(i8* %29) #10, !dbg !5337
  br label %125

; <label>:125:                                    ; preds = %123, %24
  %126 = phi i8* [ %124, %123 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.153, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %126, i64 0, metadata !5137, metadata !730) #10, !dbg !5206
  store volatile i8* %126, i8** @charset_aliases, align 8, !dbg !5338, !tbaa !738
  br label %127, !dbg !5339

; <label>:127:                                    ; preds = %0, %125
  %128 = phi i8* [ %6, %0 ], [ %126, %125 ]
  call void @llvm.dbg.value(metadata i8* %128, i64 0, metadata !5116, metadata !730), !dbg !5340
  %129 = load i8, i8* %128, align 1, !dbg !5341, !tbaa !864
  %130 = icmp eq i8 %129, 0, !dbg !5342
  br i1 %130, label %157, label %131, !dbg !5343

; <label>:131:                                    ; preds = %127
  br label %132, !dbg !5345

; <label>:132:                                    ; preds = %131, %147
  %133 = phi i8 [ %154, %147 ], [ %129, %131 ]
  %134 = phi i8* [ %153, %147 ], [ %128, %131 ]
  %135 = call i32 @strcmp(i8* %5, i8* %134) #10, !dbg !5345
  %136 = icmp eq i32 %135, 0, !dbg !5346
  br i1 %136, label %143, label %137, !dbg !5347

; <label>:137:                                    ; preds = %132
  %138 = icmp eq i8 %133, 42, !dbg !5348
  br i1 %138, label %139, label %147, !dbg !5350

; <label>:139:                                    ; preds = %137
  %140 = getelementptr inbounds i8, i8* %134, i64 1, !dbg !5351
  %141 = load i8, i8* %140, align 1, !dbg !5351, !tbaa !864
  %142 = icmp eq i8 %141, 0, !dbg !5353
  br i1 %142, label %143, label %147, !dbg !5354

; <label>:143:                                    ; preds = %139, %132
  %144 = call i64 @strlen(i8* %134) #13, !dbg !5356
  %145 = getelementptr inbounds i8, i8* %134, i64 %144, !dbg !5358
  %146 = getelementptr inbounds i8, i8* %145, i64 1, !dbg !5359
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !5115, metadata !730), !dbg !5201
  br label %157, !dbg !5360

; <label>:147:                                    ; preds = %137, %139
  %148 = call i64 @strlen(i8* %134) #13, !dbg !5361
  %149 = add i64 %148, 1, !dbg !5362
  %150 = getelementptr inbounds i8, i8* %134, i64 %149, !dbg !5363
  call void @llvm.dbg.value(metadata i8* %150, i64 0, metadata !5116, metadata !730), !dbg !5340
  %151 = call i64 @strlen(i8* %150) #13, !dbg !5364
  %152 = add i64 %151, 1, !dbg !5365
  %153 = getelementptr inbounds i8, i8* %150, i64 %152, !dbg !5366
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !5116, metadata !730), !dbg !5340
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !5116, metadata !730), !dbg !5340
  %154 = load i8, i8* %153, align 1, !dbg !5341, !tbaa !864
  %155 = icmp eq i8 %154, 0, !dbg !5342
  br i1 %155, label %156, label %132, !dbg !5343, !llvm.loop !5367

; <label>:156:                                    ; preds = %147
  br label %157, !dbg !5201

; <label>:157:                                    ; preds = %156, %127, %143
  %158 = phi i8* [ %146, %143 ], [ %5, %127 ], [ %5, %156 ]
  call void @llvm.dbg.value(metadata i8* %158, i64 0, metadata !5115, metadata !730), !dbg !5201
  %159 = load i8, i8* %158, align 1, !dbg !5370, !tbaa !864
  %160 = icmp eq i8 %159, 0, !dbg !5372
  %161 = select i1 %160, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.159, i64 0, i64 0), i8* %158, !dbg !5373
  call void @llvm.dbg.value(metadata i8* %161, i64 0, metadata !5115, metadata !730), !dbg !5201
  ret i8* %161, !dbg !5374
}

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i8* @getenv(i8* nocapture) local_unnamed_addr #4

declare i32 @open(i8* nocapture readonly, i32, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fdopen(i32, i8* nocapture readonly) local_unnamed_addr #2

declare i32 @close(i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @ungetc(i32, %struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @fscanf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @__strcpy_chk(i8*, i8*, i64) local_unnamed_addr #2

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

!llvm.dbg.cu = !{!2, !212, !217, !225, !657, !660, !232, !239, !663, !303, !671, !688, !690, !701, !704, !706, !708, !710, !712, !715, !717, !312}
!llvm.ident = !{!720, !720, !720, !720, !720, !720, !720, !720, !720, !720, !720, !720, !720, !720, !720, !720, !720, !720, !720, !720, !720, !720}
!llvm.module.flags = !{!721, !722, !723, !724}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 149, type: !198, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !34, globals: !48)
!3 = !DIFile(filename: "src/nl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4 = !{!5, !19, !28}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !6, line: 32, size: 32, elements: !7)
!6 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!7 = !{!8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18}
!8 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!9 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!10 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!11 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!12 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!13 = !DIEnumerator(name: "c_quoting_style", value: 5)
!14 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!15 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!16 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!17 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!18 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !20, line: 45, size: 32, elements: !21)
!20 = !DIFile(filename: "./lib/fadvise.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!21 = !{!22, !23, !24, !25, !26, !27}
!22 = !DIEnumerator(name: "FADVISE_NORMAL", value: 0)
!23 = !DIEnumerator(name: "FADVISE_SEQUENTIAL", value: 2)
!24 = !DIEnumerator(name: "FADVISE_NOREUSE", value: 5)
!25 = !DIEnumerator(name: "FADVISE_DONTNEED", value: 4)
!26 = !DIEnumerator(name: "FADVISE_WILLNEED", value: 3)
!27 = !DIEnumerator(name: "FADVISE_RANDOM", value: 1)
!28 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "section", file: !3, line: 61, size: 32, elements: !29)
!29 = !{!30, !31, !32, !33}
!30 = !DIEnumerator(name: "Header", value: 0)
!31 = !DIEnumerator(name: "Body", value: 1)
!32 = !DIEnumerator(name: "Footer", value: 2)
!33 = !DIEnumerator(name: "Text", value: 3)
!34 = !{!35, !38, !40, !43, !46, !47, !37, !42}
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !36, line: 62, baseType: !37)
!36 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!37 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!42 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!45 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!48 = !{!49, !51, !76, !78, !80, !85, !87, !89, !91, !93, !95, !103, !110, !113, !0, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !167, !169, !172, !174, !176, !181, !183, !185, !187, !189, !192}
!49 = !DIGlobalVariableExpression(var: !50)
!50 = distinct !DIGlobalVariable(name: "current_type", scope: !2, file: !3, line: 76, type: !43, isLocal: true, isDefinition: true)
!51 = !DIGlobalVariableExpression(var: !52)
!52 = distinct !DIGlobalVariable(name: "body_regex", scope: !2, file: !3, line: 79, type: !53, isLocal: true, isDefinition: true)
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "re_pattern_buffer", file: !54, line: 414, size: 512, elements: !55)
!54 = !DIFile(filename: "./lib/regex.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!55 = !{!56, !59, !61, !62, !64, !65, !67, !68, !70, !71, !72, !73, !74, !75}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !53, file: !54, line: 418, baseType: !57, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DICompositeType(tag: DW_TAG_structure_type, name: "re_dfa_t", file: !54, line: 418, flags: DIFlagFwdDecl)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !53, file: !54, line: 421, baseType: !60, size: 64, offset: 64)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "__re_long_size_t", file: !54, line: 57, baseType: !37)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !53, file: !54, line: 424, baseType: !60, size: 64, offset: 128)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "syntax", scope: !53, file: !54, line: 427, baseType: !63, size: 64, offset: 192)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_syntax_t", file: !54, line: 73, baseType: !37)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "fastmap", scope: !53, file: !54, line: 432, baseType: !46, size: 64, offset: 256)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !53, file: !54, line: 438, baseType: !66, size: 64, offset: 320)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "re_nsub", scope: !53, file: !54, line: 441, baseType: !35, size: 64, offset: 384)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "can_be_null", scope: !53, file: !54, line: 447, baseType: !69, size: 1, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!69 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "regs_allocated", scope: !53, file: !54, line: 458, baseType: !69, size: 2, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "fastmap_accurate", scope: !53, file: !54, line: 462, baseType: !69, size: 1, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "no_sub", scope: !53, file: !54, line: 466, baseType: !69, size: 1, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "not_bol", scope: !53, file: !54, line: 470, baseType: !69, size: 1, offset: 453, flags: DIFlagBitField, extraData: i64 448)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "not_eol", scope: !53, file: !54, line: 473, baseType: !69, size: 1, offset: 454, flags: DIFlagBitField, extraData: i64 448)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "newline_anchor", scope: !53, file: !54, line: 476, baseType: !69, size: 1, offset: 455, flags: DIFlagBitField, extraData: i64 448)
!76 = !DIGlobalVariableExpression(var: !77)
!77 = distinct !DIGlobalVariable(name: "header_regex", scope: !2, file: !3, line: 82, type: !53, isLocal: true, isDefinition: true)
!78 = !DIGlobalVariableExpression(var: !79)
!79 = distinct !DIGlobalVariable(name: "footer_regex", scope: !2, file: !3, line: 85, type: !53, isLocal: true, isDefinition: true)
!80 = !DIGlobalVariableExpression(var: !81)
!81 = distinct !DIGlobalVariable(name: "body_fastmap", scope: !2, file: !3, line: 88, type: !82, isLocal: true, isDefinition: true)
!82 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 2048, elements: !83)
!83 = !{!84}
!84 = !DISubrange(count: 256)
!85 = !DIGlobalVariableExpression(var: !86)
!86 = distinct !DIGlobalVariable(name: "header_fastmap", scope: !2, file: !3, line: 89, type: !82, isLocal: true, isDefinition: true)
!87 = !DIGlobalVariableExpression(var: !88)
!88 = distinct !DIGlobalVariable(name: "footer_fastmap", scope: !2, file: !3, line: 90, type: !82, isLocal: true, isDefinition: true)
!89 = !DIGlobalVariableExpression(var: !90)
!90 = distinct !DIGlobalVariable(name: "header_del_len", scope: !2, file: !3, line: 105, type: !35, isLocal: true, isDefinition: true)
!91 = !DIGlobalVariableExpression(var: !92)
!92 = distinct !DIGlobalVariable(name: "body_del_len", scope: !2, file: !3, line: 111, type: !35, isLocal: true, isDefinition: true)
!93 = !DIGlobalVariableExpression(var: !94)
!94 = distinct !DIGlobalVariable(name: "footer_del_len", scope: !2, file: !3, line: 117, type: !35, isLocal: true, isDefinition: true)
!95 = !DIGlobalVariableExpression(var: !96)
!96 = distinct !DIGlobalVariable(name: "line_buf", scope: !2, file: !3, line: 120, type: !97, isLocal: true, isDefinition: true)
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "linebuffer", file: !98, line: 26, size: 192, elements: !99)
!98 = !DIFile(filename: "./lib/linebuffer.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!99 = !{!100, !101, !102}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !97, file: !98, line: 28, baseType: !35, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !97, file: !98, line: 29, baseType: !35, size: 64, offset: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !97, file: !98, line: 30, baseType: !46, size: 64, offset: 128)
!103 = !DIGlobalVariableExpression(var: !104)
!104 = distinct !DIGlobalVariable(name: "line_no", scope: !2, file: !3, line: 144, type: !105, isLocal: true, isDefinition: true)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !106, line: 135, baseType: !107)
!106 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !108, line: 61, baseType: !109)
!108 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!109 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!110 = !DIGlobalVariableExpression(var: !111)
!111 = distinct !DIGlobalVariable(name: "have_read_stdin", scope: !2, file: !3, line: 147, type: !112, isLocal: true, isDefinition: true)
!112 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!113 = !DIGlobalVariableExpression(var: !114)
!114 = distinct !DIGlobalVariable(name: "infomap", scope: !115, file: !116, line: 632, type: !141, isLocal: true, isDefinition: true)
!115 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !116, file: !116, line: 630, type: !117, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !119)
!116 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!117 = !DISubroutineType(types: !118)
!118 = !{null, !43}
!119 = !{!120, !121, !122, !129, !131, !132, !133, !136, !137, !139}
!120 = !DILocalVariable(name: "program", arg: 1, scope: !115, file: !116, line: 630, type: !43)
!121 = !DILocalVariable(name: "node", scope: !115, file: !116, line: 642, type: !43)
!122 = !DILocalVariable(name: "map_prog", scope: !115, file: !116, line: 643, type: !123)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !125)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !115, file: !116, line: 632, size: 128, elements: !126)
!126 = !{!127, !128}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !125, file: !116, line: 632, baseType: !43, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !125, file: !116, line: 632, baseType: !43, size: 64, offset: 64)
!129 = !DILocalVariable(name: "__s1_len", scope: !130, file: !116, line: 645, type: !35)
!130 = distinct !DILexicalBlock(scope: !115, file: !116, line: 645, column: 33)
!131 = !DILocalVariable(name: "__s2_len", scope: !130, file: !116, line: 645, type: !35)
!132 = !DILocalVariable(name: "lc_messages", scope: !115, file: !116, line: 655, type: !43)
!133 = !DILocalVariable(name: "__s1_len", scope: !134, file: !116, line: 656, type: !35)
!134 = distinct !DILexicalBlock(scope: !135, file: !116, line: 656, column: 22)
!135 = distinct !DILexicalBlock(scope: !115, file: !116, line: 656, column: 7)
!136 = !DILocalVariable(name: "__s2_len", scope: !134, file: !116, line: 656, type: !35)
!137 = !DILocalVariable(name: "__s2", scope: !138, file: !116, line: 656, type: !40)
!138 = distinct !DILexicalBlock(scope: !134, file: !116, line: 656, column: 22)
!139 = !DILocalVariable(name: "__result", scope: !138, file: !116, line: 656, type: !140)
!140 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 896, elements: !142)
!142 = !{!143}
!143 = !DISubrange(count: 7)
!144 = !DIGlobalVariableExpression(var: !145)
!145 = distinct !DIGlobalVariable(name: "header_type", scope: !2, file: !3, line: 70, type: !43, isLocal: true, isDefinition: true)
!146 = !DIGlobalVariableExpression(var: !147)
!147 = distinct !DIGlobalVariable(name: "body_type", scope: !2, file: !3, line: 67, type: !43, isLocal: true, isDefinition: true)
!148 = !DIGlobalVariableExpression(var: !149)
!149 = distinct !DIGlobalVariable(name: "footer_type", scope: !2, file: !3, line: 73, type: !43, isLocal: true, isDefinition: true)
!150 = !DIGlobalVariableExpression(var: !151)
!151 = distinct !DIGlobalVariable(name: "starting_line_number", scope: !2, file: !3, line: 126, type: !105, isLocal: true, isDefinition: true)
!152 = !DIGlobalVariableExpression(var: !153)
!153 = distinct !DIGlobalVariable(name: "page_incr", scope: !2, file: !3, line: 129, type: !105, isLocal: true, isDefinition: true)
!154 = !DIGlobalVariableExpression(var: !155)
!155 = distinct !DIGlobalVariable(name: "reset_numbers", scope: !2, file: !3, line: 132, type: !112, isLocal: true, isDefinition: true)
!156 = !DIGlobalVariableExpression(var: !157)
!157 = distinct !DIGlobalVariable(name: "blank_join", scope: !2, file: !3, line: 135, type: !105, isLocal: true, isDefinition: true)
!158 = !DIGlobalVariableExpression(var: !159)
!159 = distinct !DIGlobalVariable(name: "separator_str", scope: !2, file: !3, line: 96, type: !43, isLocal: true, isDefinition: true)
!160 = !DIGlobalVariableExpression(var: !161)
!161 = distinct !DIGlobalVariable(name: "lineno_width", scope: !2, file: !3, line: 138, type: !140, isLocal: true, isDefinition: true)
!162 = !DIGlobalVariableExpression(var: !163)
!163 = distinct !DIGlobalVariable(name: "FORMAT_LEFT", scope: !2, file: !3, line: 54, type: !164, isLocal: true, isDefinition: true)
!164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 64, elements: !165)
!165 = !{!166}
!166 = !DISubrange(count: 8)
!167 = !DIGlobalVariableExpression(var: !168)
!168 = distinct !DIGlobalVariable(name: "lineno_format", scope: !2, file: !3, line: 141, type: !43, isLocal: true, isDefinition: true)
!169 = !DIGlobalVariableExpression(var: !170)
!170 = distinct !DIGlobalVariable(name: "FORMAT_RIGHT_NOLZ", scope: !2, file: !3, line: 48, type: !171, isLocal: true, isDefinition: true)
!171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 56, elements: !142)
!172 = !DIGlobalVariableExpression(var: !173)
!173 = distinct !DIGlobalVariable(name: "FORMAT_RIGHT_LZ", scope: !2, file: !3, line: 51, type: !164, isLocal: true, isDefinition: true)
!174 = !DIGlobalVariableExpression(var: !175)
!175 = distinct !DIGlobalVariable(name: "section_del", scope: !2, file: !3, line: 99, type: !43, isLocal: true, isDefinition: true)
!176 = !DIGlobalVariableExpression(var: !177)
!177 = distinct !DIGlobalVariable(name: "DEFAULT_SECTION_DELIMITERS", scope: !2, file: !3, line: 57, type: !178, isLocal: true, isDefinition: true)
!178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 24, elements: !179)
!179 = !{!180}
!180 = !DISubrange(count: 3)
!181 = !DIGlobalVariableExpression(var: !182)
!182 = distinct !DIGlobalVariable(name: "header_del", scope: !2, file: !3, line: 102, type: !46, isLocal: true, isDefinition: true)
!183 = !DIGlobalVariableExpression(var: !184)
!184 = distinct !DIGlobalVariable(name: "body_del", scope: !2, file: !3, line: 108, type: !46, isLocal: true, isDefinition: true)
!185 = !DIGlobalVariableExpression(var: !186)
!186 = distinct !DIGlobalVariable(name: "footer_del", scope: !2, file: !3, line: 114, type: !46, isLocal: true, isDefinition: true)
!187 = !DIGlobalVariableExpression(var: !188)
!188 = distinct !DIGlobalVariable(name: "print_no_line_fmt", scope: !2, file: !3, line: 123, type: !46, isLocal: true, isDefinition: true)
!189 = !DIGlobalVariableExpression(var: !190)
!190 = distinct !DIGlobalVariable(name: "current_regex", scope: !2, file: !3, line: 93, type: !191, isLocal: true, isDefinition: true)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!192 = !DIGlobalVariableExpression(var: !193)
!193 = distinct !DIGlobalVariable(name: "blank_lines", scope: !194, file: !3, line: 324, type: !105, isLocal: true, isDefinition: true)
!194 = distinct !DISubprogram(name: "proc_text", scope: !3, file: !3, line: 322, type: !195, isLocal: true, isDefinition: true, scopeLine: 323, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !197)
!195 = !DISubroutineType(types: !196)
!196 = !{null}
!197 = !{}
!198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !199, size: 3584, elements: !208)
!199 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !200)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !201, line: 104, size: 256, elements: !202)
!201 = !DIFile(filename: "/usr/include/getopt.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!202 = !{!203, !204, !205, !207}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !200, file: !201, line: 106, baseType: !43, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !200, file: !201, line: 109, baseType: !140, size: 32, offset: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !200, file: !201, line: 110, baseType: !206, size: 64, offset: 128)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !200, file: !201, line: 111, baseType: !140, size: 32, offset: 192)
!208 = !{!209}
!209 = !DISubrange(count: 14)
!210 = !DIGlobalVariableExpression(var: !211)
!211 = distinct !DIGlobalVariable(name: "Version", scope: !212, file: !213, line: 2, type: !43, isLocal: false, isDefinition: true)
!212 = distinct !DICompileUnit(language: DW_LANG_C99, file: !213, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !197, globals: !214)
!213 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!214 = !{!210}
!215 = !DIGlobalVariableExpression(var: !216)
!216 = distinct !DIGlobalVariable(name: "file_name", scope: !217, file: !222, line: 36, type: !43, isLocal: true, isDefinition: true)
!217 = distinct !DICompileUnit(language: DW_LANG_C99, file: !218, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !197, globals: !219)
!218 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!219 = !{!215, !220}
!220 = !DIGlobalVariableExpression(var: !221)
!221 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !217, file: !222, line: 46, type: !112, isLocal: true, isDefinition: true)
!222 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!223 = !DIGlobalVariableExpression(var: !224)
!224 = distinct !DIGlobalVariable(name: "exit_failure", scope: !225, file: !228, line: 24, type: !229, isLocal: false, isDefinition: true)
!225 = distinct !DICompileUnit(language: DW_LANG_C99, file: !226, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !197, globals: !227)
!226 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!227 = !{!223}
!228 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!229 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !140)
!230 = !DIGlobalVariableExpression(var: !231)
!231 = distinct !DIGlobalVariable(name: "program_name", scope: !232, file: !236, line: 33, type: !43, isLocal: false, isDefinition: true)
!232 = distinct !DICompileUnit(language: DW_LANG_C99, file: !233, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !197, retainedTypes: !234, globals: !235)
!233 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!234 = !{!47, !46}
!235 = !{!230}
!236 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!237 = !DIGlobalVariableExpression(var: !238)
!238 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !239, file: !267, line: 77, type: !297, isLocal: false, isDefinition: true)
!239 = distinct !DICompileUnit(language: DW_LANG_C99, file: !240, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !241, retainedTypes: !262, globals: !264)
!240 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!241 = !{!5, !242, !247}
!242 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !6, line: 242, size: 32, elements: !243)
!243 = !{!244, !245, !246}
!244 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!245 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!246 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!247 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !248, line: 46, size: 32, elements: !249)
!248 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!249 = !{!250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261}
!250 = !DIEnumerator(name: "_ISupper", value: 256)
!251 = !DIEnumerator(name: "_ISlower", value: 512)
!252 = !DIEnumerator(name: "_ISalpha", value: 1024)
!253 = !DIEnumerator(name: "_ISdigit", value: 2048)
!254 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!255 = !DIEnumerator(name: "_ISspace", value: 8192)
!256 = !DIEnumerator(name: "_ISprint", value: 16384)
!257 = !DIEnumerator(name: "_ISgraph", value: 32768)
!258 = !DIEnumerator(name: "_ISblank", value: 1)
!259 = !DIEnumerator(name: "_IScntrl", value: 2)
!260 = !DIEnumerator(name: "_ISpunct", value: 4)
!261 = !DIEnumerator(name: "_ISalnum", value: 8)
!262 = !{!140, !263, !35, !46}
!263 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!264 = !{!237, !265, !272, !282, !284, !286, !293, !295}
!265 = !DIGlobalVariableExpression(var: !266)
!266 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !239, file: !267, line: 93, type: !268, isLocal: false, isDefinition: true)
!267 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!268 = !DICompositeType(tag: DW_TAG_array_type, baseType: !269, size: 320, elements: !270)
!269 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!270 = !{!271}
!271 = !DISubrange(count: 10)
!272 = !DIGlobalVariableExpression(var: !273)
!273 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !239, file: !267, line: 1043, type: !274, isLocal: false, isDefinition: true)
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !267, line: 57, size: 448, elements: !275)
!275 = !{!276, !277, !278, !280, !281}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !274, file: !267, line: 60, baseType: !5, size: 32)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !274, file: !267, line: 63, baseType: !140, size: 32, offset: 32)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !274, file: !267, line: 67, baseType: !279, size: 256, offset: 64)
!279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 256, elements: !165)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !274, file: !267, line: 70, baseType: !43, size: 64, offset: 320)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !274, file: !267, line: 73, baseType: !43, size: 64, offset: 384)
!282 = !DIGlobalVariableExpression(var: !283)
!283 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !239, file: !267, line: 108, type: !274, isLocal: true, isDefinition: true)
!284 = !DIGlobalVariableExpression(var: !285)
!285 = distinct !DIGlobalVariable(name: "slot0", scope: !239, file: !267, line: 834, type: !82, isLocal: true, isDefinition: true)
!286 = !DIGlobalVariableExpression(var: !287)
!287 = distinct !DIGlobalVariable(name: "slotvec", scope: !239, file: !267, line: 837, type: !288, isLocal: true, isDefinition: true)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !267, line: 826, size: 128, elements: !290)
!290 = !{!291, !292}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !289, file: !267, line: 828, baseType: !35, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !289, file: !267, line: 829, baseType: !46, size: 64, offset: 64)
!293 = !DIGlobalVariableExpression(var: !294)
!294 = distinct !DIGlobalVariable(name: "nslots", scope: !239, file: !267, line: 835, type: !140, isLocal: true, isDefinition: true)
!295 = !DIGlobalVariableExpression(var: !296)
!296 = distinct !DIGlobalVariable(name: "slotvec0", scope: !239, file: !267, line: 836, type: !289, isLocal: true, isDefinition: true)
!297 = !DICompositeType(tag: DW_TAG_array_type, baseType: !298, size: 704, elements: !299)
!298 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!299 = !{!300}
!300 = !DISubrange(count: 11)
!301 = !DIGlobalVariableExpression(var: !302)
!302 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !303, file: !306, line: 26, type: !307, isLocal: false, isDefinition: true)
!303 = distinct !DICompileUnit(language: DW_LANG_C99, file: !304, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !197, globals: !305)
!304 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!305 = !{!301}
!306 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!307 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 376, elements: !308)
!308 = !{!309}
!309 = !DISubrange(count: 47)
!310 = !DIGlobalVariableExpression(var: !311)
!311 = distinct !DIGlobalVariable(name: "charset_aliases", scope: !312, file: !655, line: 120, type: !656, isLocal: true, isDefinition: true)
!312 = distinct !DICompileUnit(language: DW_LANG_C99, file: !313, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !314, retainedTypes: !653, globals: !654)
!313 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!314 = !{!315}
!315 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !316, line: 41, size: 32, elements: !317)
!316 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!317 = !{!318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652}
!318 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!319 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!320 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!321 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!322 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!323 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!324 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!325 = !DIEnumerator(name: "DAY_1", value: 131079)
!326 = !DIEnumerator(name: "DAY_2", value: 131080)
!327 = !DIEnumerator(name: "DAY_3", value: 131081)
!328 = !DIEnumerator(name: "DAY_4", value: 131082)
!329 = !DIEnumerator(name: "DAY_5", value: 131083)
!330 = !DIEnumerator(name: "DAY_6", value: 131084)
!331 = !DIEnumerator(name: "DAY_7", value: 131085)
!332 = !DIEnumerator(name: "ABMON_1", value: 131086)
!333 = !DIEnumerator(name: "ABMON_2", value: 131087)
!334 = !DIEnumerator(name: "ABMON_3", value: 131088)
!335 = !DIEnumerator(name: "ABMON_4", value: 131089)
!336 = !DIEnumerator(name: "ABMON_5", value: 131090)
!337 = !DIEnumerator(name: "ABMON_6", value: 131091)
!338 = !DIEnumerator(name: "ABMON_7", value: 131092)
!339 = !DIEnumerator(name: "ABMON_8", value: 131093)
!340 = !DIEnumerator(name: "ABMON_9", value: 131094)
!341 = !DIEnumerator(name: "ABMON_10", value: 131095)
!342 = !DIEnumerator(name: "ABMON_11", value: 131096)
!343 = !DIEnumerator(name: "ABMON_12", value: 131097)
!344 = !DIEnumerator(name: "MON_1", value: 131098)
!345 = !DIEnumerator(name: "MON_2", value: 131099)
!346 = !DIEnumerator(name: "MON_3", value: 131100)
!347 = !DIEnumerator(name: "MON_4", value: 131101)
!348 = !DIEnumerator(name: "MON_5", value: 131102)
!349 = !DIEnumerator(name: "MON_6", value: 131103)
!350 = !DIEnumerator(name: "MON_7", value: 131104)
!351 = !DIEnumerator(name: "MON_8", value: 131105)
!352 = !DIEnumerator(name: "MON_9", value: 131106)
!353 = !DIEnumerator(name: "MON_10", value: 131107)
!354 = !DIEnumerator(name: "MON_11", value: 131108)
!355 = !DIEnumerator(name: "MON_12", value: 131109)
!356 = !DIEnumerator(name: "AM_STR", value: 131110)
!357 = !DIEnumerator(name: "PM_STR", value: 131111)
!358 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!359 = !DIEnumerator(name: "D_FMT", value: 131113)
!360 = !DIEnumerator(name: "T_FMT", value: 131114)
!361 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!362 = !DIEnumerator(name: "ERA", value: 131116)
!363 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!364 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!365 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!366 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!367 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!368 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!369 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!370 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!371 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!372 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!373 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!374 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!375 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!376 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!377 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!378 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!379 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!380 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!381 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!382 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!383 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!384 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!385 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!386 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!387 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!388 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!389 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!390 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!391 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!392 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!393 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!394 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!395 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!396 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!397 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!398 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!399 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!400 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!401 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!402 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!403 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!404 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!405 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!406 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!407 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!408 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!409 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!410 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!411 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!412 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!413 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!414 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!415 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!416 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!417 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!418 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!419 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!420 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!421 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!422 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!423 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!424 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!425 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!426 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!427 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!428 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!429 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!430 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!431 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!432 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!433 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!434 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!435 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!436 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!437 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!438 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!439 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!440 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!441 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!442 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!443 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!444 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!445 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!446 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!447 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!448 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!449 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!450 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!451 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!452 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!453 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!454 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!455 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!456 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!457 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!458 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!459 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!460 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!461 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!462 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!463 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!464 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!465 = !DIEnumerator(name: "CODESET", value: 14)
!466 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!467 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!468 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!469 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!470 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!471 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!472 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!473 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!474 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!475 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!476 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!477 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!478 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!479 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!480 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!481 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!482 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!483 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!484 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!485 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!486 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!487 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!488 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!489 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!490 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!491 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!492 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!493 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!494 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!495 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!496 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!497 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!498 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!499 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!500 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!501 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!502 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!503 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!504 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!505 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!506 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!507 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!508 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!509 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!510 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!511 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!512 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!513 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!514 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!515 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!516 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!517 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!518 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!519 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!520 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!521 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!522 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!523 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!524 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!525 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!526 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!527 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!528 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!529 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!530 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!531 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!532 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!533 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!534 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!535 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!536 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!537 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!538 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!539 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!540 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!541 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!542 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!543 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!544 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!545 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!546 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!547 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!548 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!549 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!550 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!551 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!552 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!553 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!554 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!555 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!556 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!557 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!558 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!559 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!560 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!561 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!562 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!563 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!564 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!565 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!566 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!567 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!568 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!569 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!570 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!571 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!572 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!573 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!574 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!575 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!576 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!577 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!578 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!579 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!580 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!581 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!582 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!583 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!584 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!585 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!586 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!587 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!588 = !DIEnumerator(name: "THOUSEP", value: 65537)
!589 = !DIEnumerator(name: "__GROUPING", value: 65538)
!590 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!591 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!592 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!593 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!594 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!595 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!596 = !DIEnumerator(name: "__YESSTR", value: 327682)
!597 = !DIEnumerator(name: "__NOSTR", value: 327683)
!598 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!599 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!600 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!601 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!602 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!603 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!604 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!605 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!606 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!607 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!608 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!609 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!610 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!611 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!612 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!613 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!614 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!615 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!616 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!617 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!618 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!619 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!620 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!621 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!622 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!623 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!624 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!625 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!626 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!627 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!628 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!629 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!630 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!631 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!632 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!633 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!634 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!635 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!636 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!637 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!638 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!639 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!640 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!641 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!642 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!643 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!644 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!645 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!646 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!647 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!648 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!649 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!650 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!651 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!652 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!653 = !{!47, !46, !66}
!654 = !{!310}
!655 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!656 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !43)
!657 = distinct !DICompileUnit(language: DW_LANG_C99, file: !658, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !659)
!658 = !DIFile(filename: "./lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!659 = !{!19}
!660 = distinct !DICompileUnit(language: DW_LANG_C99, file: !661, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !197, retainedTypes: !662)
!661 = !DIFile(filename: "./lib/linebuffer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!662 = !{!66}
!663 = distinct !DICompileUnit(language: DW_LANG_C99, file: !664, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !665, retainedTypes: !670)
!664 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!665 = !{!666}
!666 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !667, line: 41, size: 32, elements: !668)
!667 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!668 = !{!669}
!669 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!670 = !{!47}
!671 = distinct !DICompileUnit(language: DW_LANG_C99, file: !672, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !673, retainedTypes: !687)
!672 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!673 = !{!674}
!674 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !676, file: !675, line: 192, size: 32, elements: !685)
!675 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!676 = distinct !DISubprogram(name: "x2nrealloc", scope: !675, file: !675, line: 180, type: !677, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !671, variables: !680)
!677 = !DISubroutineType(types: !678)
!678 = !{!47, !47, !679, !35}
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!680 = !{!681, !682, !683, !684}
!681 = !DILocalVariable(name: "p", arg: 1, scope: !676, file: !675, line: 180, type: !47)
!682 = !DILocalVariable(name: "pn", arg: 2, scope: !676, file: !675, line: 180, type: !679)
!683 = !DILocalVariable(name: "s", arg: 3, scope: !676, file: !675, line: 180, type: !35)
!684 = !DILocalVariable(name: "n", scope: !676, file: !675, line: 182, type: !35)
!685 = !{!686}
!686 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!687 = !{!35, !46, !47}
!688 = distinct !DICompileUnit(language: DW_LANG_C99, file: !689, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !197)
!689 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!690 = distinct !DICompileUnit(language: DW_LANG_C99, file: !691, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !692)
!691 = !DIFile(filename: "./lib/xdectoimax.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!692 = !{!693}
!693 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !694, line: 26, size: 32, elements: !695)
!694 = !DIFile(filename: "./lib/xstrtol.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!695 = !{!696, !697, !698, !699, !700}
!696 = !DIEnumerator(name: "LONGINT_OK", value: 0)
!697 = !DIEnumerator(name: "LONGINT_OVERFLOW", value: 1)
!698 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR", value: 2)
!699 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW", value: 3)
!700 = !DIEnumerator(name: "LONGINT_INVALID", value: 4)
!701 = distinct !DICompileUnit(language: DW_LANG_C99, file: !702, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !692, retainedTypes: !703)
!702 = !DIFile(filename: "./lib/xstrtoimax.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!703 = !{!46}
!704 = distinct !DICompileUnit(language: DW_LANG_C99, file: !705, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !197, retainedTypes: !670)
!705 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!706 = distinct !DICompileUnit(language: DW_LANG_C99, file: !707, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !197)
!707 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!708 = distinct !DICompileUnit(language: DW_LANG_C99, file: !709, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !197, retainedTypes: !670)
!709 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!710 = distinct !DICompileUnit(language: DW_LANG_C99, file: !711, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !197, retainedTypes: !670)
!711 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!712 = distinct !DICompileUnit(language: DW_LANG_C99, file: !713, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !197, retainedTypes: !714)
!713 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!714 = !{!35}
!715 = distinct !DICompileUnit(language: DW_LANG_C99, file: !716, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !197)
!716 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!717 = distinct !DICompileUnit(language: DW_LANG_C99, file: !718, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !197, retainedTypes: !719)
!718 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!719 = !{!35, !38, !40, !43}
!720 = !{!"clang version 4.0.1 (tags/RELEASE_401/final)"}
!721 = !{i32 2, !"Dwarf Version", i32 4}
!722 = !{i32 2, !"Debug Info Version", i32 3}
!723 = !{i32 1, !"PIC Level", i32 2}
!724 = !{i32 1, !"PIE Level", i32 2}
!725 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 170, type: !726, isLocal: false, isDefinition: true, scopeLine: 171, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !728)
!726 = !DISubroutineType(types: !727)
!727 = !{null, !140}
!728 = !{!729}
!729 = !DILocalVariable(name: "status", arg: 1, scope: !725, file: !3, line: 170, type: !140)
!730 = !DIExpression()
!731 = !DILocation(line: 170, column: 12, scope: !725)
!732 = !DILocation(line: 172, column: 14, scope: !733)
!733 = distinct !DILexicalBlock(scope: !725, file: !3, line: 172, column: 7)
!734 = !DILocation(line: 172, column: 7, scope: !725)
!735 = !DILocation(line: 173, column: 5, scope: !736)
!736 = !DILexicalBlockFile(scope: !737, file: !3, discriminator: 1)
!737 = distinct !DILexicalBlock(scope: !733, file: !3, line: 173, column: 5)
!738 = !{!739, !739, i64 0}
!739 = !{!"any pointer", !740, i64 0}
!740 = !{!"omnipotent char", !741, i64 0}
!741 = !{!"Simple C/C++ TBAA"}
!742 = !DILocation(line: 173, column: 5, scope: !743)
!743 = !DILexicalBlockFile(scope: !737, file: !3, discriminator: 3)
!744 = !DILocation(line: 173, column: 5, scope: !745)
!745 = !DILexicalBlockFile(scope: !737, file: !3, discriminator: 2)
!746 = !DILocation(line: 176, column: 7, scope: !747)
!747 = distinct !DILexicalBlock(scope: !733, file: !3, line: 175, column: 5)
!748 = !DILocation(line: 176, column: 7, scope: !749)
!749 = !DILexicalBlockFile(scope: !747, file: !3, discriminator: 1)
!750 = !DILocation(line: 180, column: 7, scope: !747)
!751 = !DILocation(line: 180, column: 7, scope: !749)
!752 = !DILocation(line: 580, column: 3, scope: !753, inlinedAt: !754)
!753 = distinct !DISubprogram(name: "emit_stdin_note", scope: !116, file: !116, line: 578, type: !195, isLocal: true, isDefinition: true, scopeLine: 579, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !197)
!754 = distinct !DILocation(line: 184, column: 7, scope: !747)
!755 = !DILocation(line: 580, column: 3, scope: !756, inlinedAt: !754)
!756 = !DILexicalBlockFile(scope: !753, file: !116, discriminator: 1)
!757 = !DILocation(line: 587, column: 3, scope: !758, inlinedAt: !759)
!758 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !116, file: !116, line: 585, type: !195, isLocal: true, isDefinition: true, scopeLine: 586, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !197)
!759 = distinct !DILocation(line: 185, column: 7, scope: !747)
!760 = !DILocation(line: 587, column: 3, scope: !761, inlinedAt: !759)
!761 = !DILexicalBlockFile(scope: !758, file: !116, discriminator: 1)
!762 = !DILocation(line: 187, column: 7, scope: !747)
!763 = !DILocation(line: 187, column: 7, scope: !749)
!764 = !DILocation(line: 192, column: 7, scope: !747)
!765 = !DILocation(line: 192, column: 7, scope: !749)
!766 = !DILocation(line: 200, column: 7, scope: !747)
!767 = !DILocation(line: 200, column: 7, scope: !749)
!768 = !DILocation(line: 204, column: 7, scope: !747)
!769 = !DILocation(line: 204, column: 7, scope: !749)
!770 = !DILocation(line: 205, column: 7, scope: !747)
!771 = !DILocation(line: 205, column: 7, scope: !749)
!772 = !DILocation(line: 206, column: 7, scope: !747)
!773 = !DILocation(line: 206, column: 7, scope: !749)
!774 = !DILocation(line: 212, column: 7, scope: !747)
!775 = !DILocation(line: 212, column: 7, scope: !749)
!776 = !DILocation(line: 642, column: 15, scope: !115, inlinedAt: !777)
!777 = distinct !DILocation(line: 227, column: 7, scope: !747)
!778 = !DILocation(line: 651, column: 3, scope: !115, inlinedAt: !777)
!779 = !DILocation(line: 651, column: 3, scope: !780, inlinedAt: !777)
!780 = !DILexicalBlockFile(scope: !115, file: !116, discriminator: 1)
!781 = !DILocation(line: 655, column: 29, scope: !115, inlinedAt: !777)
!782 = !DILocation(line: 655, column: 15, scope: !115, inlinedAt: !777)
!783 = !DILocation(line: 656, column: 7, scope: !135, inlinedAt: !777)
!784 = !DILocation(line: 656, column: 19, scope: !135, inlinedAt: !777)
!785 = !DILocation(line: 656, column: 22, scope: !786, inlinedAt: !777)
!786 = !DILexicalBlockFile(scope: !135, file: !116, discriminator: 16)
!787 = !DILocation(line: 656, column: 7, scope: !788, inlinedAt: !777)
!788 = !DILexicalBlockFile(scope: !115, file: !116, discriminator: 16)
!789 = !DILocation(line: 662, column: 7, scope: !790, inlinedAt: !777)
!790 = distinct !DILexicalBlock(scope: !135, file: !116, line: 657, column: 5)
!791 = !DILocation(line: 662, column: 7, scope: !792, inlinedAt: !777)
!792 = !DILexicalBlockFile(scope: !790, file: !116, discriminator: 1)
!793 = !DILocation(line: 664, column: 5, scope: !790, inlinedAt: !777)
!794 = !DILocation(line: 665, column: 3, scope: !115, inlinedAt: !777)
!795 = !DILocation(line: 665, column: 3, scope: !780, inlinedAt: !777)
!796 = !DILocation(line: 667, column: 3, scope: !115, inlinedAt: !777)
!797 = !DILocation(line: 667, column: 3, scope: !780, inlinedAt: !777)
!798 = !DILocation(line: 229, column: 3, scope: !725)
!799 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 459, type: !800, isLocal: false, isDefinition: true, scopeLine: 460, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !803)
!800 = !DISubroutineType(types: !801)
!801 = !{!140, !140, !802}
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!803 = !{!804, !805, !806, !807, !808, !809, !814, !815, !817, !818, !821, !822, !824, !825, !828, !829, !831}
!804 = !DILocalVariable(name: "argc", arg: 1, scope: !799, file: !3, line: 459, type: !140)
!805 = !DILocalVariable(name: "argv", arg: 2, scope: !799, file: !3, line: 459, type: !802)
!806 = !DILocalVariable(name: "c", scope: !799, file: !3, line: 461, type: !140)
!807 = !DILocalVariable(name: "len", scope: !799, file: !3, line: 462, type: !35)
!808 = !DILocalVariable(name: "ok", scope: !799, file: !3, line: 463, type: !112)
!809 = !DILocalVariable(name: "__s1_len", scope: !810, file: !3, line: 528, type: !35)
!810 = distinct !DILexicalBlock(scope: !811, file: !3, line: 528, column: 15)
!811 = distinct !DILexicalBlock(scope: !812, file: !3, line: 528, column: 15)
!812 = distinct !DILexicalBlock(scope: !813, file: !3, line: 479, column: 9)
!813 = distinct !DILexicalBlock(scope: !799, file: !3, line: 477, column: 5)
!814 = !DILocalVariable(name: "__s2_len", scope: !810, file: !3, line: 528, type: !35)
!815 = !DILocalVariable(name: "__s2", scope: !816, file: !3, line: 528, type: !40)
!816 = distinct !DILexicalBlock(scope: !810, file: !3, line: 528, column: 15)
!817 = !DILocalVariable(name: "__result", scope: !816, file: !3, line: 528, type: !140)
!818 = !DILocalVariable(name: "__s1_len", scope: !819, file: !3, line: 530, type: !35)
!819 = distinct !DILexicalBlock(scope: !820, file: !3, line: 530, column: 20)
!820 = distinct !DILexicalBlock(scope: !811, file: !3, line: 530, column: 20)
!821 = !DILocalVariable(name: "__s2_len", scope: !819, file: !3, line: 530, type: !35)
!822 = !DILocalVariable(name: "__s2", scope: !823, file: !3, line: 530, type: !40)
!823 = distinct !DILexicalBlock(scope: !819, file: !3, line: 530, column: 20)
!824 = !DILocalVariable(name: "__result", scope: !823, file: !3, line: 530, type: !140)
!825 = !DILocalVariable(name: "__s1_len", scope: !826, file: !3, line: 532, type: !35)
!826 = distinct !DILexicalBlock(scope: !827, file: !3, line: 532, column: 20)
!827 = distinct !DILexicalBlock(scope: !820, file: !3, line: 532, column: 20)
!828 = !DILocalVariable(name: "__s2_len", scope: !826, file: !3, line: 532, type: !35)
!829 = !DILocalVariable(name: "__s2", scope: !830, file: !3, line: 532, type: !40)
!830 = distinct !DILexicalBlock(scope: !826, file: !3, line: 532, column: 20)
!831 = !DILocalVariable(name: "__result", scope: !830, file: !3, line: 532, type: !140)
!832 = !DILocation(line: 459, column: 11, scope: !799)
!833 = !DILocation(line: 459, column: 24, scope: !799)
!834 = !DILocation(line: 463, column: 8, scope: !799)
!835 = !DILocation(line: 466, column: 21, scope: !799)
!836 = !DILocation(line: 466, column: 3, scope: !799)
!837 = !DILocation(line: 467, column: 3, scope: !799)
!838 = !DILocation(line: 468, column: 3, scope: !799)
!839 = !DILocation(line: 469, column: 3, scope: !799)
!840 = !DILocation(line: 471, column: 3, scope: !799)
!841 = !DILocation(line: 475, column: 3, scope: !799)
!842 = !DILocation(line: 475, column: 15, scope: !843)
!843 = !DILexicalBlockFile(scope: !799, file: !3, discriminator: 1)
!844 = !DILocation(line: 461, column: 7, scope: !799)
!845 = !DILocation(line: 475, column: 3, scope: !843)
!846 = !DILocalVariable(name: "typep", arg: 1, scope: !847, file: !3, line: 236, type: !850)
!847 = distinct !DISubprogram(name: "build_type_arg", scope: !3, file: !3, line: 236, type: !848, isLocal: true, isDefinition: true, scopeLine: 238, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !851)
!848 = !DISubroutineType(types: !849)
!849 = !{!112, !850, !191, !46}
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!851 = !{!846, !852, !853, !854, !855}
!852 = !DILocalVariable(name: "regexp", arg: 2, scope: !847, file: !3, line: 237, type: !191)
!853 = !DILocalVariable(name: "fastmap", arg: 3, scope: !847, file: !3, line: 237, type: !46)
!854 = !DILocalVariable(name: "errmsg", scope: !847, file: !3, line: 239, type: !43)
!855 = !DILocalVariable(name: "rval", scope: !847, file: !3, line: 240, type: !112)
!856 = !DILocation(line: 236, column: 30, scope: !847, inlinedAt: !857)
!857 = distinct !DILocation(line: 481, column: 17, scope: !858)
!858 = distinct !DILexicalBlock(scope: !812, file: !3, line: 481, column: 15)
!859 = !DILocation(line: 237, column: 43, scope: !847, inlinedAt: !857)
!860 = !DILocation(line: 237, column: 57, scope: !847, inlinedAt: !857)
!861 = !DILocation(line: 240, column: 8, scope: !847, inlinedAt: !857)
!862 = !DILocation(line: 242, column: 12, scope: !847, inlinedAt: !857)
!863 = !DILocation(line: 242, column: 11, scope: !847, inlinedAt: !857)
!864 = !{!740, !740, i64 0}
!865 = !DILocation(line: 242, column: 3, scope: !847, inlinedAt: !857)
!866 = !DILocation(line: 247, column: 14, scope: !867, inlinedAt: !857)
!867 = distinct !DILexicalBlock(scope: !847, file: !3, line: 243, column: 5)
!868 = !DILocation(line: 248, column: 7, scope: !867, inlinedAt: !857)
!869 = !DILocation(line: 250, column: 22, scope: !867, inlinedAt: !857)
!870 = !DILocation(line: 250, column: 14, scope: !867, inlinedAt: !857)
!871 = !DILocation(line: 252, column: 25, scope: !867, inlinedAt: !857)
!872 = !DILocation(line: 253, column: 23, scope: !867, inlinedAt: !857)
!873 = !DILocation(line: 255, column: 25, scope: !867, inlinedAt: !857)
!874 = !{!875, !875, i64 0}
!875 = !{!"long", !740, i64 0}
!876 = !DILocation(line: 257, column: 44, scope: !867, inlinedAt: !857)
!877 = !DILocation(line: 257, column: 16, scope: !878, inlinedAt: !857)
!878 = !DILexicalBlockFile(scope: !867, file: !3, discriminator: 1)
!879 = !DILocation(line: 239, column: 15, scope: !847, inlinedAt: !857)
!880 = !DILocation(line: 258, column: 11, scope: !881, inlinedAt: !857)
!881 = distinct !DILexicalBlock(scope: !867, file: !3, line: 258, column: 11)
!882 = !DILocation(line: 258, column: 11, scope: !867, inlinedAt: !857)
!883 = !DILocation(line: 259, column: 9, scope: !881, inlinedAt: !857)
!884 = !DILocation(line: 483, column: 28, scope: !885)
!885 = distinct !DILexicalBlock(scope: !858, file: !3, line: 482, column: 13)
!886 = !DILocation(line: 484, column: 29, scope: !885)
!887 = !DILocation(line: 484, column: 22, scope: !885)
!888 = !DILocation(line: 483, column: 15, scope: !889)
!889 = !DILexicalBlockFile(scope: !885, file: !3, discriminator: 1)
!890 = !DILocation(line: 486, column: 13, scope: !885)
!891 = !DILocation(line: 236, column: 30, scope: !847, inlinedAt: !892)
!892 = distinct !DILocation(line: 489, column: 17, scope: !893)
!893 = distinct !DILexicalBlock(scope: !812, file: !3, line: 489, column: 15)
!894 = !DILocation(line: 237, column: 43, scope: !847, inlinedAt: !892)
!895 = !DILocation(line: 237, column: 57, scope: !847, inlinedAt: !892)
!896 = !DILocation(line: 240, column: 8, scope: !847, inlinedAt: !892)
!897 = !DILocation(line: 242, column: 12, scope: !847, inlinedAt: !892)
!898 = !DILocation(line: 242, column: 11, scope: !847, inlinedAt: !892)
!899 = !DILocation(line: 242, column: 3, scope: !847, inlinedAt: !892)
!900 = !DILocation(line: 247, column: 14, scope: !867, inlinedAt: !892)
!901 = !DILocation(line: 248, column: 7, scope: !867, inlinedAt: !892)
!902 = !DILocation(line: 250, column: 22, scope: !867, inlinedAt: !892)
!903 = !DILocation(line: 250, column: 14, scope: !867, inlinedAt: !892)
!904 = !DILocation(line: 252, column: 25, scope: !867, inlinedAt: !892)
!905 = !DILocation(line: 253, column: 23, scope: !867, inlinedAt: !892)
!906 = !DILocation(line: 255, column: 25, scope: !867, inlinedAt: !892)
!907 = !DILocation(line: 257, column: 44, scope: !867, inlinedAt: !892)
!908 = !DILocation(line: 257, column: 16, scope: !878, inlinedAt: !892)
!909 = !DILocation(line: 239, column: 15, scope: !847, inlinedAt: !892)
!910 = !DILocation(line: 258, column: 11, scope: !881, inlinedAt: !892)
!911 = !DILocation(line: 258, column: 11, scope: !867, inlinedAt: !892)
!912 = !DILocation(line: 259, column: 9, scope: !881, inlinedAt: !892)
!913 = !DILocation(line: 491, column: 28, scope: !914)
!914 = distinct !DILexicalBlock(scope: !893, file: !3, line: 490, column: 13)
!915 = !DILocation(line: 492, column: 29, scope: !914)
!916 = !DILocation(line: 492, column: 22, scope: !914)
!917 = !DILocation(line: 491, column: 15, scope: !918)
!918 = !DILexicalBlockFile(scope: !914, file: !3, discriminator: 1)
!919 = !DILocation(line: 494, column: 13, scope: !914)
!920 = !DILocation(line: 236, column: 30, scope: !847, inlinedAt: !921)
!921 = distinct !DILocation(line: 497, column: 17, scope: !922)
!922 = distinct !DILexicalBlock(scope: !812, file: !3, line: 497, column: 15)
!923 = !DILocation(line: 237, column: 43, scope: !847, inlinedAt: !921)
!924 = !DILocation(line: 237, column: 57, scope: !847, inlinedAt: !921)
!925 = !DILocation(line: 240, column: 8, scope: !847, inlinedAt: !921)
!926 = !DILocation(line: 242, column: 12, scope: !847, inlinedAt: !921)
!927 = !DILocation(line: 242, column: 11, scope: !847, inlinedAt: !921)
!928 = !DILocation(line: 242, column: 3, scope: !847, inlinedAt: !921)
!929 = !DILocation(line: 247, column: 14, scope: !867, inlinedAt: !921)
!930 = !DILocation(line: 248, column: 7, scope: !867, inlinedAt: !921)
!931 = !DILocation(line: 250, column: 22, scope: !867, inlinedAt: !921)
!932 = !DILocation(line: 250, column: 14, scope: !867, inlinedAt: !921)
!933 = !DILocation(line: 252, column: 25, scope: !867, inlinedAt: !921)
!934 = !DILocation(line: 253, column: 23, scope: !867, inlinedAt: !921)
!935 = !DILocation(line: 255, column: 25, scope: !867, inlinedAt: !921)
!936 = !DILocation(line: 257, column: 44, scope: !867, inlinedAt: !921)
!937 = !DILocation(line: 257, column: 16, scope: !878, inlinedAt: !921)
!938 = !DILocation(line: 239, column: 15, scope: !847, inlinedAt: !921)
!939 = !DILocation(line: 258, column: 11, scope: !881, inlinedAt: !921)
!940 = !DILocation(line: 258, column: 11, scope: !867, inlinedAt: !921)
!941 = !DILocation(line: 259, column: 9, scope: !881, inlinedAt: !921)
!942 = !DILocation(line: 499, column: 28, scope: !943)
!943 = distinct !DILexicalBlock(scope: !922, file: !3, line: 498, column: 13)
!944 = !DILocation(line: 500, column: 29, scope: !943)
!945 = !DILocation(line: 500, column: 22, scope: !943)
!946 = !DILocation(line: 499, column: 15, scope: !947)
!947 = !DILexicalBlockFile(scope: !943, file: !3, discriminator: 1)
!948 = !DILocation(line: 502, column: 13, scope: !943)
!949 = !DILocation(line: 505, column: 46, scope: !812)
!950 = !DILocation(line: 506, column: 46, scope: !812)
!951 = !DILocation(line: 505, column: 34, scope: !812)
!952 = !DILocation(line: 505, column: 32, scope: !812)
!953 = !DILocation(line: 508, column: 11, scope: !812)
!954 = !DILocation(line: 510, column: 35, scope: !812)
!955 = !DILocation(line: 511, column: 35, scope: !812)
!956 = !DILocation(line: 510, column: 23, scope: !812)
!957 = !DILocation(line: 510, column: 21, scope: !812)
!958 = !DILocation(line: 512, column: 11, scope: !812)
!959 = !DILocation(line: 515, column: 11, scope: !812)
!960 = !DILocation(line: 517, column: 36, scope: !812)
!961 = !DILocation(line: 518, column: 36, scope: !812)
!962 = !DILocation(line: 517, column: 24, scope: !812)
!963 = !DILocation(line: 517, column: 22, scope: !812)
!964 = !DILocation(line: 519, column: 11, scope: !812)
!965 = !DILocation(line: 521, column: 27, scope: !812)
!966 = !DILocation(line: 521, column: 25, scope: !812)
!967 = !DILocation(line: 522, column: 11, scope: !812)
!968 = !DILocation(line: 524, column: 38, scope: !812)
!969 = !DILocation(line: 525, column: 38, scope: !812)
!970 = !DILocation(line: 524, column: 26, scope: !812)
!971 = !DILocation(line: 524, column: 24, scope: !812)
!972 = !{!973, !973, i64 0}
!973 = !{!"int", !740, i64 0}
!974 = !DILocation(line: 526, column: 11, scope: !812)
!975 = !DILocation(line: 528, column: 15, scope: !810)
!976 = !DILocation(line: 528, column: 15, scope: !977)
!977 = !DILexicalBlockFile(scope: !816, file: !3, discriminator: 2)
!978 = !DILocation(line: 528, column: 15, scope: !816)
!979 = !DILocation(line: 528, column: 15, scope: !980)
!980 = !DILexicalBlockFile(scope: !981, file: !3, discriminator: 2)
!981 = distinct !DILexicalBlock(scope: !816, file: !3, line: 528, column: 15)
!982 = !DILocation(line: 528, column: 15, scope: !983)
!983 = !DILexicalBlockFile(scope: !984, file: !3, discriminator: 4)
!984 = distinct !DILexicalBlock(scope: !981, file: !3, line: 528, column: 15)
!985 = !DILocation(line: 528, column: 15, scope: !986)
!986 = !DILexicalBlockFile(scope: !987, file: !3, discriminator: 5)
!987 = distinct !DILexicalBlock(scope: !984, file: !3, line: 528, column: 15)
!988 = !DILocation(line: 528, column: 15, scope: !989)
!989 = !DILexicalBlockFile(scope: !987, file: !3, discriminator: 4)
!990 = !DILocation(line: 528, column: 15, scope: !991)
!991 = !DILexicalBlockFile(scope: !992, file: !3, discriminator: 6)
!992 = distinct !DILexicalBlock(scope: !987, file: !3, line: 528, column: 15)
!993 = !DILocation(line: 528, column: 15, scope: !994)
!994 = !DILexicalBlockFile(scope: !811, file: !3, discriminator: 13)
!995 = !DILocation(line: 528, column: 15, scope: !996)
!996 = !DILexicalBlockFile(scope: !812, file: !3, discriminator: 13)
!997 = !DILocation(line: 529, column: 27, scope: !811)
!998 = !DILocation(line: 529, column: 13, scope: !811)
!999 = distinct !{!999, !841, !1000}
!1000 = !DILocation(line: 550, column: 5, scope: !799)
!1001 = !DILocation(line: 530, column: 20, scope: !819)
!1002 = !DILocation(line: 530, column: 20, scope: !823)
!1003 = !DILocation(line: 530, column: 20, scope: !1004)
!1004 = !DILexicalBlockFile(scope: !1005, file: !3, discriminator: 3)
!1005 = distinct !DILexicalBlock(scope: !823, file: !3, line: 530, column: 20)
!1006 = !DILocation(line: 530, column: 20, scope: !1007)
!1007 = !DILexicalBlockFile(scope: !1005, file: !3, discriminator: 2)
!1008 = !DILocation(line: 530, column: 20, scope: !1009)
!1009 = !DILexicalBlockFile(scope: !1010, file: !3, discriminator: 4)
!1010 = distinct !DILexicalBlock(scope: !1005, file: !3, line: 530, column: 20)
!1011 = !DILocation(line: 530, column: 20, scope: !1012)
!1012 = !DILexicalBlockFile(scope: !1013, file: !3, discriminator: 5)
!1013 = distinct !DILexicalBlock(scope: !1010, file: !3, line: 530, column: 20)
!1014 = !DILocation(line: 530, column: 20, scope: !1015)
!1015 = !DILexicalBlockFile(scope: !1013, file: !3, discriminator: 4)
!1016 = !DILocation(line: 530, column: 20, scope: !1017)
!1017 = !DILexicalBlockFile(scope: !1018, file: !3, discriminator: 6)
!1018 = distinct !DILexicalBlock(scope: !1013, file: !3, line: 530, column: 20)
!1019 = !DILocation(line: 530, column: 20, scope: !1020)
!1020 = !DILexicalBlockFile(scope: !820, file: !3, discriminator: 13)
!1021 = !DILocation(line: 530, column: 20, scope: !994)
!1022 = !DILocation(line: 531, column: 27, scope: !820)
!1023 = !DILocation(line: 531, column: 13, scope: !820)
!1024 = !DILocation(line: 532, column: 20, scope: !1025)
!1025 = !DILexicalBlockFile(scope: !1026, file: !3, discriminator: 4)
!1026 = distinct !DILexicalBlock(scope: !1027, file: !3, line: 532, column: 20)
!1027 = distinct !DILexicalBlock(scope: !830, file: !3, line: 532, column: 20)
!1028 = !DILocation(line: 532, column: 20, scope: !1029)
!1029 = !DILexicalBlockFile(scope: !1030, file: !3, discriminator: 5)
!1030 = distinct !DILexicalBlock(scope: !1026, file: !3, line: 532, column: 20)
!1031 = !DILocation(line: 532, column: 20, scope: !1032)
!1032 = !DILexicalBlockFile(scope: !1030, file: !3, discriminator: 4)
!1033 = !DILocation(line: 532, column: 20, scope: !1034)
!1034 = !DILexicalBlockFile(scope: !1035, file: !3, discriminator: 6)
!1035 = distinct !DILexicalBlock(scope: !1030, file: !3, line: 532, column: 20)
!1036 = !DILocation(line: 532, column: 20, scope: !1037)
!1037 = !DILexicalBlockFile(scope: !827, file: !3, discriminator: 13)
!1038 = !DILocation(line: 532, column: 20, scope: !1020)
!1039 = !DILocation(line: 533, column: 27, scope: !827)
!1040 = !DILocation(line: 533, column: 13, scope: !827)
!1041 = !DILocation(line: 536, column: 28, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !827, file: !3, line: 535, column: 13)
!1043 = !DILocation(line: 537, column: 29, scope: !1042)
!1044 = !DILocation(line: 537, column: 22, scope: !1042)
!1045 = !DILocation(line: 536, column: 15, scope: !1046)
!1046 = !DILexicalBlockFile(scope: !1042, file: !3, discriminator: 1)
!1047 = !DILocation(line: 542, column: 25, scope: !812)
!1048 = !DILocation(line: 542, column: 23, scope: !812)
!1049 = !DILocation(line: 543, column: 11, scope: !812)
!1050 = !DILocation(line: 544, column: 9, scope: !812)
!1051 = !DILocation(line: 545, column: 9, scope: !812)
!1052 = !DILocation(line: 545, column: 9, scope: !1053)
!1053 = !DILexicalBlockFile(scope: !812, file: !3, discriminator: 1)
!1054 = !DILocation(line: 552, column: 8, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !799, file: !3, line: 552, column: 7)
!1056 = !DILocation(line: 552, column: 7, scope: !799)
!1057 = !DILocation(line: 553, column: 5, scope: !1055)
!1058 = !DILocation(line: 556, column: 17, scope: !799)
!1059 = !DILocation(line: 556, column: 9, scope: !799)
!1060 = !DILocation(line: 462, column: 10, scope: !799)
!1061 = !DILocation(line: 558, column: 24, scope: !799)
!1062 = !DILocation(line: 558, column: 18, scope: !799)
!1063 = !DILocation(line: 559, column: 40, scope: !799)
!1064 = !DILocation(line: 559, column: 16, scope: !799)
!1065 = !DILocation(line: 559, column: 14, scope: !799)
!1066 = !DILocation(line: 560, column: 39, scope: !799)
!1067 = !DILocalVariable(name: "__dest", arg: 1, scope: !1068, file: !1069, line: 114, type: !1072)
!1068 = distinct !DISubprogram(name: "stpcpy", scope: !1069, file: !1069, line: 114, type: !1070, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1074)
!1069 = !DIFile(filename: "/usr/include/bits/string3.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1070 = !DISubroutineType(types: !1071)
!1071 = !{!46, !1072, !1073}
!1072 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !46)
!1073 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !43)
!1074 = !{!1067, !1075}
!1075 = !DILocalVariable(name: "__src", arg: 2, scope: !1068, file: !1069, line: 114, type: !1073)
!1076 = !DILocation(line: 114, column: 1, scope: !1068, inlinedAt: !1077)
!1077 = distinct !DILocation(line: 560, column: 19, scope: !799)
!1078 = !DILocation(line: 116, column: 49, scope: !1068, inlinedAt: !1077)
!1079 = !DILocation(line: 116, column: 10, scope: !1068, inlinedAt: !1077)
!1080 = !DILocation(line: 560, column: 53, scope: !799)
!1081 = !DILocation(line: 114, column: 1, scope: !1068, inlinedAt: !1082)
!1082 = distinct !DILocation(line: 560, column: 11, scope: !843)
!1083 = !DILocation(line: 116, column: 49, scope: !1068, inlinedAt: !1082)
!1084 = !DILocation(line: 116, column: 10, scope: !1068, inlinedAt: !1082)
!1085 = !DILocation(line: 560, column: 67, scope: !799)
!1086 = !DILocation(line: 114, column: 1, scope: !1068, inlinedAt: !1087)
!1087 = distinct !DILocation(line: 560, column: 3, scope: !1088)
!1088 = !DILexicalBlockFile(scope: !799, file: !3, discriminator: 2)
!1089 = !DILocation(line: 116, column: 49, scope: !1068, inlinedAt: !1087)
!1090 = !DILocation(line: 116, column: 10, scope: !1068, inlinedAt: !1087)
!1091 = !DILocation(line: 562, column: 22, scope: !799)
!1092 = !DILocation(line: 562, column: 16, scope: !799)
!1093 = !DILocation(line: 563, column: 36, scope: !799)
!1094 = !DILocation(line: 563, column: 14, scope: !799)
!1095 = !DILocation(line: 563, column: 12, scope: !799)
!1096 = !DILocation(line: 564, column: 29, scope: !799)
!1097 = !DILocation(line: 114, column: 1, scope: !1068, inlinedAt: !1098)
!1098 = distinct !DILocation(line: 564, column: 11, scope: !799)
!1099 = !DILocation(line: 116, column: 49, scope: !1068, inlinedAt: !1098)
!1100 = !DILocation(line: 116, column: 10, scope: !1068, inlinedAt: !1098)
!1101 = !DILocation(line: 564, column: 43, scope: !799)
!1102 = !DILocation(line: 114, column: 1, scope: !1068, inlinedAt: !1103)
!1103 = distinct !DILocation(line: 564, column: 3, scope: !843)
!1104 = !DILocation(line: 116, column: 49, scope: !1068, inlinedAt: !1103)
!1105 = !DILocation(line: 116, column: 10, scope: !1068, inlinedAt: !1103)
!1106 = !DILocation(line: 566, column: 18, scope: !799)
!1107 = !DILocation(line: 567, column: 40, scope: !799)
!1108 = !DILocation(line: 567, column: 16, scope: !799)
!1109 = !DILocation(line: 567, column: 14, scope: !799)
!1110 = !DILocation(line: 568, column: 23, scope: !799)
!1111 = !DILocation(line: 114, column: 1, scope: !1068, inlinedAt: !1112)
!1112 = distinct !DILocation(line: 568, column: 3, scope: !799)
!1113 = !DILocation(line: 116, column: 49, scope: !1068, inlinedAt: !1112)
!1114 = !DILocation(line: 116, column: 10, scope: !1068, inlinedAt: !1112)
!1115 = !DILocation(line: 571, column: 3, scope: !799)
!1116 = !DILocation(line: 574, column: 17, scope: !799)
!1117 = !DILocation(line: 574, column: 9, scope: !799)
!1118 = !DILocation(line: 575, column: 32, scope: !799)
!1119 = !DILocation(line: 575, column: 45, scope: !799)
!1120 = !DILocation(line: 575, column: 51, scope: !799)
!1121 = !DILocation(line: 575, column: 23, scope: !799)
!1122 = !DILocation(line: 575, column: 21, scope: !799)
!1123 = !DILocation(line: 576, column: 35, scope: !799)
!1124 = !DILocation(line: 576, column: 48, scope: !799)
!1125 = !DILocation(line: 576, column: 3, scope: !799)
!1126 = !DILocation(line: 577, column: 3, scope: !799)
!1127 = !DILocation(line: 577, column: 41, scope: !799)
!1128 = !DILocation(line: 579, column: 13, scope: !799)
!1129 = !DILocation(line: 579, column: 11, scope: !799)
!1130 = !DILocation(line: 580, column: 18, scope: !799)
!1131 = !DILocation(line: 580, column: 16, scope: !799)
!1132 = !DILocation(line: 581, column: 17, scope: !799)
!1133 = !DILocation(line: 585, column: 7, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !799, file: !3, line: 585, column: 7)
!1135 = !DILocation(line: 585, column: 14, scope: !1134)
!1136 = !DILocation(line: 585, column: 7, scope: !799)
!1137 = !DILocation(line: 588, column: 19, scope: !1138)
!1138 = !DILexicalBlockFile(scope: !1139, file: !3, discriminator: 1)
!1139 = distinct !DILexicalBlock(scope: !1140, file: !3, line: 588, column: 5)
!1140 = distinct !DILexicalBlock(scope: !1134, file: !3, line: 588, column: 5)
!1141 = !DILocation(line: 588, column: 5, scope: !1142)
!1142 = !DILexicalBlockFile(scope: !1140, file: !3, discriminator: 1)
!1143 = !DILocation(line: 589, column: 22, scope: !1139)
!1144 = !DILocation(line: 586, column: 10, scope: !1134)
!1145 = !DILocation(line: 586, column: 8, scope: !1134)
!1146 = !DILocation(line: 586, column: 5, scope: !1134)
!1147 = !DILocation(line: 589, column: 13, scope: !1139)
!1148 = !DILocation(line: 589, column: 10, scope: !1139)
!1149 = !DILocation(line: 588, column: 33, scope: !1150)
!1150 = !DILexicalBlockFile(scope: !1139, file: !3, discriminator: 2)
!1151 = distinct !{!1151, !1152, !1153}
!1152 = !DILocation(line: 588, column: 5, scope: !1140)
!1153 = !DILocation(line: 589, column: 34, scope: !1140)
!1154 = !DILocation(line: 591, column: 23, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !799, file: !3, line: 591, column: 7)
!1156 = !DILocation(line: 591, column: 34, scope: !1157)
!1157 = !DILexicalBlockFile(scope: !1155, file: !3, discriminator: 1)
!1158 = !DILocation(line: 591, column: 26, scope: !1157)
!1159 = !DILocation(line: 591, column: 41, scope: !1157)
!1160 = !DILocation(line: 591, column: 7, scope: !843)
!1161 = !DILocation(line: 592, column: 5, scope: !1155)
!1162 = !DILocation(line: 592, column: 5, scope: !1157)
!1163 = !DILocation(line: 594, column: 10, scope: !799)
!1164 = !DILocation(line: 594, column: 3, scope: !799)
!1165 = distinct !DISubprogram(name: "nl_file", scope: !3, file: !3, line: 420, type: !1166, isLocal: true, isDefinition: true, scopeLine: 421, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1168)
!1166 = !DISubroutineType(types: !1167)
!1167 = !{!112, !43}
!1168 = !{!1169, !1170, !1224, !1227, !1228, !1230, !1231, !1234, !1235, !1237}
!1169 = !DILocalVariable(name: "file", arg: 1, scope: !1165, file: !3, line: 420, type: !43)
!1170 = !DILocalVariable(name: "stream", scope: !1165, file: !3, line: 422, type: !1171)
!1171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1172, size: 64)
!1172 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1173, line: 49, baseType: !1174)
!1173 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1175, line: 241, size: 1728, elements: !1176)
!1175 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1176 = !{!1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1197, !1198, !1199, !1200, !1202, !1203, !1205, !1209, !1212, !1214, !1215, !1216, !1217, !1218, !1219, !1220}
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1174, file: !1175, line: 242, baseType: !140, size: 32)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1174, file: !1175, line: 247, baseType: !46, size: 64, offset: 64)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1174, file: !1175, line: 248, baseType: !46, size: 64, offset: 128)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1174, file: !1175, line: 249, baseType: !46, size: 64, offset: 192)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1174, file: !1175, line: 250, baseType: !46, size: 64, offset: 256)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1174, file: !1175, line: 251, baseType: !46, size: 64, offset: 320)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1174, file: !1175, line: 252, baseType: !46, size: 64, offset: 384)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1174, file: !1175, line: 253, baseType: !46, size: 64, offset: 448)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1174, file: !1175, line: 254, baseType: !46, size: 64, offset: 512)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1174, file: !1175, line: 256, baseType: !46, size: 64, offset: 576)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1174, file: !1175, line: 257, baseType: !46, size: 64, offset: 640)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1174, file: !1175, line: 258, baseType: !46, size: 64, offset: 704)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1174, file: !1175, line: 260, baseType: !1190, size: 64, offset: 768)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1175, line: 156, size: 192, elements: !1192)
!1192 = !{!1193, !1194, !1196}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !1191, file: !1175, line: 157, baseType: !1190, size: 64)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !1191, file: !1175, line: 158, baseType: !1195, size: 64, offset: 64)
!1195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !1191, file: !1175, line: 162, baseType: !140, size: 32, offset: 128)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1174, file: !1175, line: 262, baseType: !1195, size: 64, offset: 832)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1174, file: !1175, line: 264, baseType: !140, size: 32, offset: 896)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1174, file: !1175, line: 268, baseType: !140, size: 32, offset: 928)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1174, file: !1175, line: 270, baseType: !1201, size: 64, offset: 960)
!1201 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !108, line: 140, baseType: !109)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1174, file: !1175, line: 274, baseType: !263, size: 16, offset: 1024)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1174, file: !1175, line: 275, baseType: !1204, size: 8, offset: 1040)
!1204 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1174, file: !1175, line: 276, baseType: !1206, size: 8, offset: 1048)
!1206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 8, elements: !1207)
!1207 = !{!1208}
!1208 = !DISubrange(count: 1)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1174, file: !1175, line: 280, baseType: !1210, size: 64, offset: 1088)
!1210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1211, size: 64)
!1211 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1175, line: 150, baseType: null)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1174, file: !1175, line: 289, baseType: !1213, size: 64, offset: 1152)
!1213 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !108, line: 141, baseType: !109)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !1174, file: !1175, line: 297, baseType: !47, size: 64, offset: 1216)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !1174, file: !1175, line: 298, baseType: !47, size: 64, offset: 1280)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !1174, file: !1175, line: 299, baseType: !47, size: 64, offset: 1344)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !1174, file: !1175, line: 300, baseType: !47, size: 64, offset: 1408)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1174, file: !1175, line: 302, baseType: !35, size: 64, offset: 1472)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1174, file: !1175, line: 303, baseType: !140, size: 32, offset: 1536)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1174, file: !1175, line: 305, baseType: !1221, size: 160, offset: 1568)
!1221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 160, elements: !1222)
!1222 = !{!1223}
!1223 = !DISubrange(count: 20)
!1224 = !DILocalVariable(name: "__s1_len", scope: !1225, file: !3, line: 424, type: !35)
!1225 = distinct !DILexicalBlock(scope: !1226, file: !3, line: 424, column: 7)
!1226 = distinct !DILexicalBlock(scope: !1165, file: !3, line: 424, column: 7)
!1227 = !DILocalVariable(name: "__s2_len", scope: !1225, file: !3, line: 424, type: !35)
!1228 = !DILocalVariable(name: "__s2", scope: !1229, file: !3, line: 424, type: !40)
!1229 = distinct !DILexicalBlock(scope: !1225, file: !3, line: 424, column: 7)
!1230 = !DILocalVariable(name: "__result", scope: !1229, file: !3, line: 424, type: !140)
!1231 = !DILocalVariable(name: "__s1_len", scope: !1232, file: !3, line: 448, type: !35)
!1232 = distinct !DILexicalBlock(scope: !1233, file: !3, line: 448, column: 7)
!1233 = distinct !DILexicalBlock(scope: !1165, file: !3, line: 448, column: 7)
!1234 = !DILocalVariable(name: "__s2_len", scope: !1232, file: !3, line: 448, type: !35)
!1235 = !DILocalVariable(name: "__s2", scope: !1236, file: !3, line: 448, type: !40)
!1236 = distinct !DILexicalBlock(scope: !1232, file: !3, line: 448, column: 7)
!1237 = !DILocalVariable(name: "__result", scope: !1236, file: !3, line: 448, type: !140)
!1238 = !DILocation(line: 420, column: 22, scope: !1165)
!1239 = !DILocation(line: 424, column: 7, scope: !1225)
!1240 = !DILocation(line: 424, column: 7, scope: !1229)
!1241 = !DILocation(line: 424, column: 7, scope: !1242)
!1242 = !DILexicalBlockFile(scope: !1229, file: !3, discriminator: 2)
!1243 = !DILocation(line: 424, column: 7, scope: !1244)
!1244 = !DILexicalBlockFile(scope: !1245, file: !3, discriminator: 3)
!1245 = distinct !DILexicalBlock(scope: !1229, file: !3, line: 424, column: 7)
!1246 = !DILocation(line: 424, column: 7, scope: !1247)
!1247 = !DILexicalBlockFile(scope: !1245, file: !3, discriminator: 2)
!1248 = !DILocation(line: 424, column: 7, scope: !1249)
!1249 = !DILexicalBlockFile(scope: !1250, file: !3, discriminator: 4)
!1250 = distinct !DILexicalBlock(scope: !1245, file: !3, line: 424, column: 7)
!1251 = !DILocation(line: 424, column: 7, scope: !1252)
!1252 = !DILexicalBlockFile(scope: !1225, file: !3, discriminator: 11)
!1253 = !DILocation(line: 424, column: 7, scope: !1254)
!1254 = !DILexicalBlockFile(scope: !1165, file: !3, discriminator: 13)
!1255 = !DILocation(line: 427, column: 16, scope: !1256)
!1256 = distinct !DILexicalBlock(scope: !1226, file: !3, line: 425, column: 5)
!1257 = !DILocation(line: 422, column: 9, scope: !1165)
!1258 = !DILocation(line: 428, column: 5, scope: !1256)
!1259 = !DILocation(line: 431, column: 16, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !1226, file: !3, line: 430, column: 5)
!1261 = !DILocation(line: 432, column: 18, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !1260, file: !3, line: 432, column: 11)
!1263 = !DILocation(line: 432, column: 11, scope: !1260)
!1264 = !DILocation(line: 434, column: 21, scope: !1265)
!1265 = distinct !DILexicalBlock(scope: !1262, file: !3, line: 433, column: 9)
!1266 = !DILocation(line: 434, column: 34, scope: !1267)
!1267 = !DILexicalBlockFile(scope: !1265, file: !3, discriminator: 1)
!1268 = !DILocation(line: 434, column: 11, scope: !1269)
!1269 = !DILexicalBlockFile(scope: !1265, file: !3, discriminator: 2)
!1270 = !DILocation(line: 435, column: 11, scope: !1265)
!1271 = !DILocation(line: 439, column: 3, scope: !1165)
!1272 = !DILocalVariable(name: "fp", arg: 1, scope: !1273, file: !3, line: 394, type: !1171)
!1273 = distinct !DISubprogram(name: "process_file", scope: !3, file: !3, line: 394, type: !1274, isLocal: true, isDefinition: true, scopeLine: 395, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1276)
!1274 = !DISubroutineType(types: !1275)
!1275 = !{null, !1171}
!1276 = !{!1272}
!1277 = !DILocation(line: 394, column: 21, scope: !1273, inlinedAt: !1278)
!1278 = distinct !DILocation(line: 441, column: 3, scope: !1165)
!1279 = !DILocation(line: 396, column: 10, scope: !1280, inlinedAt: !1278)
!1280 = !DILexicalBlockFile(scope: !1273, file: !3, discriminator: 1)
!1281 = !DILocation(line: 396, column: 3, scope: !1280, inlinedAt: !1278)
!1282 = !DILocation(line: 375, column: 25, scope: !1283, inlinedAt: !1288)
!1283 = distinct !DISubprogram(name: "check_section", scope: !3, file: !3, line: 373, type: !1284, isLocal: true, isDefinition: true, scopeLine: 374, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1286)
!1284 = !DISubroutineType(types: !1285)
!1285 = !{!28}
!1286 = !{!1287}
!1287 = !DILocalVariable(name: "len", scope: !1283, file: !3, line: 375, type: !35)
!1288 = distinct !DILocation(line: 398, column: 15, scope: !1289, inlinedAt: !1278)
!1289 = distinct !DILexicalBlock(scope: !1273, file: !3, line: 397, column: 5)
!1290 = !{!1291, !875, i64 8}
!1291 = !{!"linebuffer", !875, i64 0, !875, i64 8, !739, i64 16}
!1292 = !DILocation(line: 375, column: 32, scope: !1283, inlinedAt: !1288)
!1293 = !DILocation(line: 375, column: 10, scope: !1283, inlinedAt: !1288)
!1294 = !DILocation(line: 377, column: 11, scope: !1295, inlinedAt: !1288)
!1295 = distinct !DILexicalBlock(scope: !1283, file: !3, line: 377, column: 7)
!1296 = !DILocation(line: 377, column: 15, scope: !1295, inlinedAt: !1288)
!1297 = !DILocation(line: 377, column: 35, scope: !1298, inlinedAt: !1288)
!1298 = !DILexicalBlockFile(scope: !1295, file: !3, discriminator: 1)
!1299 = !{!1291, !739, i64 16}
!1300 = !DILocation(line: 377, column: 43, scope: !1298, inlinedAt: !1288)
!1301 = !DILocation(line: 377, column: 18, scope: !1298, inlinedAt: !1288)
!1302 = !DILocation(line: 377, column: 7, scope: !1303, inlinedAt: !1288)
!1303 = !DILexicalBlockFile(scope: !1283, file: !3, discriminator: 1)
!1304 = !DILocation(line: 379, column: 14, scope: !1305, inlinedAt: !1288)
!1305 = distinct !DILexicalBlock(scope: !1283, file: !3, line: 379, column: 7)
!1306 = !DILocation(line: 379, column: 11, scope: !1305, inlinedAt: !1288)
!1307 = !DILocation(line: 380, column: 7, scope: !1305, inlinedAt: !1288)
!1308 = !DILocation(line: 380, column: 36, scope: !1309, inlinedAt: !1288)
!1309 = !DILexicalBlockFile(scope: !1305, file: !3, discriminator: 1)
!1310 = !DILocation(line: 380, column: 11, scope: !1309, inlinedAt: !1288)
!1311 = !DILocation(line: 379, column: 7, scope: !1303, inlinedAt: !1288)
!1312 = !DILocation(line: 382, column: 14, scope: !1313, inlinedAt: !1288)
!1313 = distinct !DILexicalBlock(scope: !1283, file: !3, line: 382, column: 7)
!1314 = !DILocation(line: 382, column: 11, scope: !1313, inlinedAt: !1288)
!1315 = !DILocation(line: 383, column: 7, scope: !1313, inlinedAt: !1288)
!1316 = !DILocation(line: 383, column: 36, scope: !1317, inlinedAt: !1288)
!1317 = !DILexicalBlockFile(scope: !1313, file: !3, discriminator: 1)
!1318 = !DILocation(line: 383, column: 11, scope: !1317, inlinedAt: !1288)
!1319 = !DILocation(line: 382, column: 7, scope: !1303, inlinedAt: !1288)
!1320 = !DILocation(line: 385, column: 14, scope: !1321, inlinedAt: !1288)
!1321 = distinct !DILexicalBlock(scope: !1283, file: !3, line: 385, column: 7)
!1322 = !DILocation(line: 385, column: 11, scope: !1321, inlinedAt: !1288)
!1323 = !DILocation(line: 386, column: 7, scope: !1321, inlinedAt: !1288)
!1324 = !DILocation(line: 386, column: 36, scope: !1325, inlinedAt: !1288)
!1325 = !DILexicalBlockFile(scope: !1321, file: !3, discriminator: 1)
!1326 = !DILocation(line: 386, column: 11, scope: !1325, inlinedAt: !1288)
!1327 = !DILocation(line: 385, column: 7, scope: !1303, inlinedAt: !1288)
!1328 = !DILocation(line: 288, column: 18, scope: !1329, inlinedAt: !1330)
!1329 = distinct !DISubprogram(name: "proc_header", scope: !3, file: !3, line: 286, type: !195, isLocal: true, isDefinition: true, scopeLine: 287, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !197)
!1330 = distinct !DILocation(line: 401, column: 11, scope: !1331, inlinedAt: !1278)
!1331 = distinct !DILexicalBlock(scope: !1289, file: !3, line: 399, column: 9)
!1332 = !DILocation(line: 288, column: 16, scope: !1329, inlinedAt: !1330)
!1333 = !DILocation(line: 289, column: 17, scope: !1329, inlinedAt: !1330)
!1334 = !DILocation(line: 290, column: 7, scope: !1329, inlinedAt: !1330)
!1335 = !DILocation(line: 291, column: 15, scope: !1336, inlinedAt: !1330)
!1336 = distinct !DILexicalBlock(scope: !1329, file: !3, line: 290, column: 7)
!1337 = !DILocation(line: 291, column: 13, scope: !1336, inlinedAt: !1330)
!1338 = !DILocation(line: 291, column: 5, scope: !1336, inlinedAt: !1330)
!1339 = !DILocalVariable(name: "__c", arg: 1, scope: !1340, file: !1341, line: 105, type: !140)
!1340 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1341, file: !1341, line: 105, type: !1342, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1344)
!1341 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1342 = !DISubroutineType(types: !1343)
!1343 = !{!140, !140}
!1344 = !{!1339}
!1345 = !DILocation(line: 105, column: 23, scope: !1340, inlinedAt: !1346)
!1346 = distinct !DILocation(line: 292, column: 3, scope: !1329, inlinedAt: !1330)
!1347 = !DILocation(line: 107, column: 10, scope: !1340, inlinedAt: !1346)
!1348 = !{!1349, !739, i64 40}
!1349 = !{!"_IO_FILE", !973, i64 0, !739, i64 8, !739, i64 16, !739, i64 24, !739, i64 32, !739, i64 40, !739, i64 48, !739, i64 56, !739, i64 64, !739, i64 72, !739, i64 80, !739, i64 88, !739, i64 96, !739, i64 104, !973, i64 112, !973, i64 116, !875, i64 120, !1350, i64 128, !740, i64 130, !740, i64 131, !739, i64 136, !875, i64 144, !739, i64 152, !739, i64 160, !739, i64 168, !739, i64 176, !875, i64 184, !973, i64 192, !740, i64 196}
!1350 = !{!"short", !740, i64 0}
!1351 = !{!1349, !739, i64 48}
!1352 = !{!"branch_weights", i32 2000, i32 1}
!1353 = !DILocation(line: 107, column: 10, scope: !1354, inlinedAt: !1346)
!1354 = !DILexicalBlockFile(scope: !1340, file: !1341, discriminator: 1)
!1355 = !DILocation(line: 107, column: 10, scope: !1356, inlinedAt: !1346)
!1356 = !DILexicalBlockFile(scope: !1340, file: !1341, discriminator: 2)
!1357 = !DILocation(line: 300, column: 18, scope: !1358, inlinedAt: !1359)
!1358 = distinct !DISubprogram(name: "proc_body", scope: !3, file: !3, line: 298, type: !195, isLocal: true, isDefinition: true, scopeLine: 299, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !197)
!1359 = distinct !DILocation(line: 404, column: 11, scope: !1331, inlinedAt: !1278)
!1360 = !DILocation(line: 300, column: 16, scope: !1358, inlinedAt: !1359)
!1361 = !DILocation(line: 301, column: 17, scope: !1358, inlinedAt: !1359)
!1362 = !DILocation(line: 302, column: 7, scope: !1358, inlinedAt: !1359)
!1363 = !DILocation(line: 303, column: 15, scope: !1364, inlinedAt: !1359)
!1364 = distinct !DILexicalBlock(scope: !1358, file: !3, line: 302, column: 7)
!1365 = !DILocation(line: 303, column: 13, scope: !1364, inlinedAt: !1359)
!1366 = !DILocation(line: 303, column: 5, scope: !1364, inlinedAt: !1359)
!1367 = !DILocation(line: 105, column: 23, scope: !1340, inlinedAt: !1368)
!1368 = distinct !DILocation(line: 304, column: 3, scope: !1358, inlinedAt: !1359)
!1369 = !DILocation(line: 107, column: 10, scope: !1340, inlinedAt: !1368)
!1370 = !DILocation(line: 107, column: 10, scope: !1354, inlinedAt: !1368)
!1371 = !DILocation(line: 107, column: 10, scope: !1356, inlinedAt: !1368)
!1372 = !DILocation(line: 312, column: 18, scope: !1373, inlinedAt: !1374)
!1373 = distinct !DISubprogram(name: "proc_footer", scope: !3, file: !3, line: 310, type: !195, isLocal: true, isDefinition: true, scopeLine: 311, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !197)
!1374 = distinct !DILocation(line: 407, column: 11, scope: !1331, inlinedAt: !1278)
!1375 = !DILocation(line: 312, column: 16, scope: !1373, inlinedAt: !1374)
!1376 = !DILocation(line: 313, column: 17, scope: !1373, inlinedAt: !1374)
!1377 = !DILocation(line: 314, column: 7, scope: !1373, inlinedAt: !1374)
!1378 = !DILocation(line: 315, column: 15, scope: !1379, inlinedAt: !1374)
!1379 = distinct !DILexicalBlock(scope: !1373, file: !3, line: 314, column: 7)
!1380 = !DILocation(line: 315, column: 13, scope: !1379, inlinedAt: !1374)
!1381 = !DILocation(line: 315, column: 5, scope: !1379, inlinedAt: !1374)
!1382 = !DILocation(line: 105, column: 23, scope: !1340, inlinedAt: !1383)
!1383 = distinct !DILocation(line: 316, column: 3, scope: !1373, inlinedAt: !1374)
!1384 = !DILocation(line: 107, column: 10, scope: !1340, inlinedAt: !1383)
!1385 = !DILocation(line: 107, column: 10, scope: !1354, inlinedAt: !1383)
!1386 = !DILocation(line: 107, column: 10, scope: !1356, inlinedAt: !1383)
!1387 = !DILocation(line: 326, column: 12, scope: !194, inlinedAt: !1388)
!1388 = distinct !DILocation(line: 410, column: 11, scope: !1331, inlinedAt: !1278)
!1389 = !DILocation(line: 326, column: 11, scope: !194, inlinedAt: !1388)
!1390 = !DILocation(line: 326, column: 3, scope: !194, inlinedAt: !1388)
!1391 = !DILocation(line: 329, column: 11, scope: !1392, inlinedAt: !1388)
!1392 = distinct !DILexicalBlock(scope: !1393, file: !3, line: 329, column: 11)
!1393 = distinct !DILexicalBlock(scope: !194, file: !3, line: 327, column: 5)
!1394 = !DILocation(line: 329, column: 22, scope: !1392, inlinedAt: !1388)
!1395 = !DILocation(line: 329, column: 11, scope: !1393, inlinedAt: !1388)
!1396 = !DILocation(line: 331, column: 17, scope: !1397, inlinedAt: !1388)
!1397 = distinct !DILexicalBlock(scope: !1398, file: !3, line: 331, column: 15)
!1398 = distinct !DILexicalBlock(scope: !1392, file: !3, line: 330, column: 9)
!1399 = !DILocation(line: 331, column: 35, scope: !1397, inlinedAt: !1388)
!1400 = !DILocation(line: 331, column: 38, scope: !1401, inlinedAt: !1388)
!1401 = !DILexicalBlockFile(scope: !1397, file: !3, discriminator: 1)
!1402 = !DILocation(line: 331, column: 52, scope: !1401, inlinedAt: !1388)
!1403 = !DILocation(line: 331, column: 15, scope: !1404, inlinedAt: !1388)
!1404 = !DILexicalBlockFile(scope: !1398, file: !3, discriminator: 1)
!1405 = !DILocation(line: 275, column: 3, scope: !1406, inlinedAt: !1409)
!1406 = distinct !DISubprogram(name: "print_lineno", scope: !3, file: !3, line: 271, type: !195, isLocal: true, isDefinition: true, scopeLine: 272, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1407)
!1407 = !{!1408}
!1408 = !DILocalVariable(name: "next_line_no", scope: !1406, file: !3, line: 273, type: !105)
!1409 = distinct !DILocation(line: 333, column: 15, scope: !1410, inlinedAt: !1388)
!1410 = distinct !DILexicalBlock(scope: !1397, file: !3, line: 332, column: 13)
!1411 = !DILocation(line: 277, column: 28, scope: !1406, inlinedAt: !1409)
!1412 = !DILocation(line: 278, column: 20, scope: !1413, inlinedAt: !1409)
!1413 = distinct !DILexicalBlock(scope: !1406, file: !3, line: 278, column: 7)
!1414 = !DILocation(line: 278, column: 7, scope: !1406, inlinedAt: !1409)
!1415 = !DILocation(line: 279, column: 5, scope: !1413, inlinedAt: !1409)
!1416 = !DILocation(line: 279, column: 5, scope: !1417, inlinedAt: !1409)
!1417 = !DILexicalBlockFile(scope: !1413, file: !3, discriminator: 1)
!1418 = !DILocation(line: 277, column: 18, scope: !1406, inlinedAt: !1409)
!1419 = !DILocation(line: 277, column: 26, scope: !1406, inlinedAt: !1409)
!1420 = !DILocation(line: 280, column: 11, scope: !1406, inlinedAt: !1409)
!1421 = !DILocation(line: 334, column: 27, scope: !1410, inlinedAt: !1388)
!1422 = !DILocation(line: 335, column: 13, scope: !1410, inlinedAt: !1388)
!1423 = !DILocation(line: 337, column: 13, scope: !1397, inlinedAt: !1388)
!1424 = !DILocation(line: 275, column: 3, scope: !1406, inlinedAt: !1425)
!1425 = distinct !DILocation(line: 340, column: 9, scope: !1392, inlinedAt: !1388)
!1426 = !DILocation(line: 277, column: 28, scope: !1406, inlinedAt: !1425)
!1427 = !DILocation(line: 278, column: 20, scope: !1413, inlinedAt: !1425)
!1428 = !DILocation(line: 278, column: 7, scope: !1406, inlinedAt: !1425)
!1429 = !DILocation(line: 279, column: 5, scope: !1413, inlinedAt: !1425)
!1430 = !DILocation(line: 279, column: 5, scope: !1417, inlinedAt: !1425)
!1431 = !DILocation(line: 277, column: 18, scope: !1406, inlinedAt: !1425)
!1432 = !DILocation(line: 277, column: 26, scope: !1406, inlinedAt: !1425)
!1433 = !DILocation(line: 280, column: 11, scope: !1406, inlinedAt: !1425)
!1434 = !DILocation(line: 343, column: 13, scope: !1435, inlinedAt: !1388)
!1435 = distinct !DILexicalBlock(scope: !1393, file: !3, line: 343, column: 11)
!1436 = !DILocation(line: 343, column: 11, scope: !1393, inlinedAt: !1388)
!1437 = !DILocation(line: 275, column: 3, scope: !1406, inlinedAt: !1438)
!1438 = distinct !DILocation(line: 344, column: 9, scope: !1435, inlinedAt: !1388)
!1439 = !DILocation(line: 277, column: 28, scope: !1406, inlinedAt: !1438)
!1440 = !DILocation(line: 278, column: 20, scope: !1413, inlinedAt: !1438)
!1441 = !DILocation(line: 278, column: 7, scope: !1406, inlinedAt: !1438)
!1442 = !DILocation(line: 279, column: 5, scope: !1413, inlinedAt: !1438)
!1443 = !DILocation(line: 279, column: 5, scope: !1417, inlinedAt: !1438)
!1444 = !DILocation(line: 277, column: 18, scope: !1406, inlinedAt: !1438)
!1445 = !DILocation(line: 277, column: 26, scope: !1406, inlinedAt: !1438)
!1446 = !DILocation(line: 280, column: 11, scope: !1406, inlinedAt: !1438)
!1447 = !DILocation(line: 344, column: 9, scope: !1435, inlinedAt: !1388)
!1448 = !DILocation(line: 346, column: 9, scope: !1435, inlinedAt: !1388)
!1449 = !DILocation(line: 349, column: 7, scope: !1393, inlinedAt: !1388)
!1450 = !DILocation(line: 350, column: 7, scope: !1393, inlinedAt: !1388)
!1451 = !DILocation(line: 352, column: 26, scope: !1393, inlinedAt: !1388)
!1452 = !DILocation(line: 352, column: 50, scope: !1393, inlinedAt: !1388)
!1453 = !DILocation(line: 352, column: 74, scope: !1393, inlinedAt: !1388)
!1454 = !DILocation(line: 352, column: 58, scope: !1393, inlinedAt: !1388)
!1455 = !DILocation(line: 352, column: 15, scope: !1393, inlinedAt: !1388)
!1456 = !DILocation(line: 352, column: 7, scope: !1393, inlinedAt: !1388)
!1457 = !DILocation(line: 356, column: 11, scope: !1458, inlinedAt: !1388)
!1458 = distinct !DILexicalBlock(scope: !1393, file: !3, line: 354, column: 9)
!1459 = !DILocation(line: 356, column: 11, scope: !1460, inlinedAt: !1388)
!1460 = !DILexicalBlockFile(scope: !1458, file: !3, discriminator: 1)
!1461 = !DILocation(line: 356, column: 11, scope: !1462, inlinedAt: !1388)
!1462 = !DILexicalBlockFile(scope: !1458, file: !3, discriminator: 2)
!1463 = !DILocation(line: 359, column: 11, scope: !1458, inlinedAt: !1388)
!1464 = !DILocation(line: 360, column: 11, scope: !1458, inlinedAt: !1388)
!1465 = !DILocation(line: 275, column: 3, scope: !1406, inlinedAt: !1466)
!1466 = distinct !DILocation(line: 363, column: 11, scope: !1458, inlinedAt: !1388)
!1467 = !DILocation(line: 277, column: 28, scope: !1406, inlinedAt: !1466)
!1468 = !DILocation(line: 278, column: 20, scope: !1413, inlinedAt: !1466)
!1469 = !DILocation(line: 278, column: 7, scope: !1406, inlinedAt: !1466)
!1470 = !DILocation(line: 279, column: 5, scope: !1413, inlinedAt: !1466)
!1471 = !DILocation(line: 279, column: 5, scope: !1417, inlinedAt: !1466)
!1472 = !DILocation(line: 277, column: 18, scope: !1406, inlinedAt: !1466)
!1473 = !DILocation(line: 277, column: 26, scope: !1406, inlinedAt: !1466)
!1474 = !DILocation(line: 280, column: 11, scope: !1406, inlinedAt: !1466)
!1475 = !DILocation(line: 364, column: 11, scope: !1458, inlinedAt: !1388)
!1476 = !DILocation(line: 367, column: 3, scope: !194, inlinedAt: !1388)
!1477 = !DILocation(line: 411, column: 11, scope: !1331, inlinedAt: !1278)
!1478 = distinct !{!1478, !1479, !1480}
!1479 = !DILocation(line: 396, column: 3, scope: !1273)
!1480 = !DILocation(line: 413, column: 5, scope: !1273)
!1481 = !DILocation(line: 132, column: 1, scope: !1482, inlinedAt: !1487)
!1482 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1341, file: !1341, line: 132, type: !1483, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1485)
!1483 = !DISubroutineType(types: !1484)
!1484 = !{!140, !1171}
!1485 = !{!1486}
!1486 = !DILocalVariable(name: "__stream", arg: 1, scope: !1482, file: !1341, line: 132, type: !1171)
!1487 = distinct !DILocation(line: 443, column: 7, scope: !1488)
!1488 = distinct !DILexicalBlock(scope: !1165, file: !3, line: 443, column: 7)
!1489 = !DILocation(line: 134, column: 10, scope: !1482, inlinedAt: !1487)
!1490 = !{!1349, !973, i64 0}
!1491 = !DILocation(line: 443, column: 7, scope: !1488)
!1492 = !DILocation(line: 443, column: 7, scope: !1165)
!1493 = !DILocation(line: 445, column: 17, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !1488, file: !3, line: 444, column: 5)
!1495 = !DILocation(line: 445, column: 30, scope: !1496)
!1496 = !DILexicalBlockFile(scope: !1494, file: !3, discriminator: 1)
!1497 = !DILocation(line: 445, column: 7, scope: !1498)
!1498 = !DILexicalBlockFile(scope: !1494, file: !3, discriminator: 2)
!1499 = !DILocation(line: 446, column: 7, scope: !1494)
!1500 = !DILocation(line: 448, column: 7, scope: !1232)
!1501 = !DILocation(line: 448, column: 7, scope: !1236)
!1502 = !DILocation(line: 448, column: 7, scope: !1503)
!1503 = !DILexicalBlockFile(scope: !1236, file: !3, discriminator: 2)
!1504 = !DILocation(line: 448, column: 7, scope: !1505)
!1505 = !DILexicalBlockFile(scope: !1506, file: !3, discriminator: 3)
!1506 = distinct !DILexicalBlock(scope: !1236, file: !3, line: 448, column: 7)
!1507 = !DILocation(line: 448, column: 7, scope: !1508)
!1508 = !DILexicalBlockFile(scope: !1506, file: !3, discriminator: 2)
!1509 = !DILocation(line: 448, column: 7, scope: !1510)
!1510 = !DILexicalBlockFile(scope: !1511, file: !3, discriminator: 4)
!1511 = distinct !DILexicalBlock(scope: !1506, file: !3, line: 448, column: 7)
!1512 = !DILocation(line: 448, column: 7, scope: !1513)
!1513 = !DILexicalBlockFile(scope: !1232, file: !3, discriminator: 11)
!1514 = !DILocation(line: 448, column: 7, scope: !1254)
!1515 = !DILocation(line: 449, column: 5, scope: !1233)
!1516 = !DILocation(line: 450, column: 12, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !1233, file: !3, line: 450, column: 12)
!1518 = !DILocation(line: 450, column: 28, scope: !1517)
!1519 = !DILocation(line: 450, column: 12, scope: !1233)
!1520 = !DILocation(line: 452, column: 17, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !1517, file: !3, line: 451, column: 5)
!1522 = !DILocation(line: 452, column: 30, scope: !1523)
!1523 = !DILexicalBlockFile(scope: !1521, file: !3, discriminator: 1)
!1524 = !DILocation(line: 452, column: 7, scope: !1525)
!1525 = !DILexicalBlockFile(scope: !1521, file: !3, discriminator: 2)
!1526 = !DILocation(line: 453, column: 7, scope: !1521)
!1527 = !DILocation(line: 456, column: 1, scope: !1165)
!1528 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !222, file: !222, line: 41, type: !117, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !217, variables: !1529)
!1529 = !{!1530}
!1530 = !DILocalVariable(name: "file", arg: 1, scope: !1528, file: !222, line: 41, type: !43)
!1531 = !DILocation(line: 41, column: 41, scope: !1528)
!1532 = !DILocation(line: 43, column: 13, scope: !1528)
!1533 = !DILocation(line: 44, column: 1, scope: !1528)
!1534 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !222, file: !222, line: 78, type: !1535, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !217, variables: !1537)
!1535 = !DISubroutineType(types: !1536)
!1536 = !{null, !112}
!1537 = !{!1538}
!1538 = !DILocalVariable(name: "ignore", arg: 1, scope: !1534, file: !222, line: 78, type: !112)
!1539 = !DIExpression(DW_OP_LLVM_fragment, 0, 1)
!1540 = !DILocation(line: 78, column: 37, scope: !1534)
!1541 = !DILocation(line: 80, column: 16, scope: !1534)
!1542 = !{!1543, !1543, i64 0}
!1543 = !{!"_Bool", !740, i64 0}
!1544 = !DILocation(line: 81, column: 1, scope: !1534)
!1545 = distinct !DISubprogram(name: "close_stdout", scope: !222, file: !222, line: 107, type: !195, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !217, variables: !1546)
!1546 = !{!1547}
!1547 = !DILocalVariable(name: "write_error", scope: !1548, file: !222, line: 112, type: !43)
!1548 = distinct !DILexicalBlock(scope: !1549, file: !222, line: 111, column: 5)
!1549 = distinct !DILexicalBlock(scope: !1545, file: !222, line: 109, column: 7)
!1550 = !DILocation(line: 109, column: 21, scope: !1549)
!1551 = !DILocation(line: 109, column: 7, scope: !1549)
!1552 = !DILocation(line: 109, column: 29, scope: !1549)
!1553 = !DILocation(line: 110, column: 7, scope: !1549)
!1554 = !DILocation(line: 110, column: 12, scope: !1555)
!1555 = !DILexicalBlockFile(scope: !1549, file: !222, discriminator: 1)
!1556 = !{i8 0, i8 2}
!1557 = !DILocation(line: 114, column: 19, scope: !1558)
!1558 = distinct !DILexicalBlock(scope: !1548, file: !222, line: 113, column: 11)
!1559 = !DILocation(line: 110, column: 25, scope: !1555)
!1560 = !DILocation(line: 110, column: 28, scope: !1561)
!1561 = !DILexicalBlockFile(scope: !1549, file: !222, discriminator: 2)
!1562 = !DILocation(line: 110, column: 34, scope: !1561)
!1563 = !DILocation(line: 109, column: 7, scope: !1564)
!1564 = !DILexicalBlockFile(scope: !1545, file: !222, discriminator: 1)
!1565 = !DILocation(line: 112, column: 33, scope: !1548)
!1566 = !DILocation(line: 112, column: 19, scope: !1548)
!1567 = !DILocation(line: 113, column: 11, scope: !1558)
!1568 = !DILocation(line: 113, column: 11, scope: !1548)
!1569 = !DILocation(line: 114, column: 36, scope: !1570)
!1570 = !DILexicalBlockFile(scope: !1558, file: !222, discriminator: 1)
!1571 = !DILocation(line: 114, column: 9, scope: !1572)
!1572 = !DILexicalBlockFile(scope: !1558, file: !222, discriminator: 2)
!1573 = !DILocation(line: 114, column: 9, scope: !1558)
!1574 = !DILocation(line: 117, column: 9, scope: !1570)
!1575 = !DILocation(line: 119, column: 14, scope: !1548)
!1576 = !DILocation(line: 119, column: 7, scope: !1548)
!1577 = !DILocation(line: 122, column: 22, scope: !1578)
!1578 = distinct !DILexicalBlock(scope: !1545, file: !222, line: 122, column: 8)
!1579 = !DILocation(line: 122, column: 8, scope: !1578)
!1580 = !DILocation(line: 122, column: 30, scope: !1578)
!1581 = !DILocation(line: 122, column: 8, scope: !1545)
!1582 = !DILocation(line: 123, column: 13, scope: !1578)
!1583 = !DILocation(line: 123, column: 6, scope: !1578)
!1584 = !DILocation(line: 124, column: 1, scope: !1545)
!1585 = distinct !DISubprogram(name: "fdadvise", scope: !1586, file: !1586, line: 31, type: !1587, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !657, variables: !1591)
!1586 = !DIFile(filename: "lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1587 = !DISubroutineType(types: !1588)
!1588 = !{null, !140, !1589, !1589, !1590}
!1589 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !1173, line: 91, baseType: !1201)
!1590 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !20, line: 52, baseType: !19)
!1591 = !{!1592, !1593, !1594, !1595, !1596}
!1592 = !DILocalVariable(name: "fd", arg: 1, scope: !1585, file: !1586, line: 31, type: !140)
!1593 = !DILocalVariable(name: "offset", arg: 2, scope: !1585, file: !1586, line: 31, type: !1589)
!1594 = !DILocalVariable(name: "len", arg: 3, scope: !1585, file: !1586, line: 31, type: !1589)
!1595 = !DILocalVariable(name: "advice", arg: 4, scope: !1585, file: !1586, line: 31, type: !1590)
!1596 = !DILocalVariable(name: "__x", scope: !1597, file: !1586, line: 34, type: !140)
!1597 = distinct !DILexicalBlock(scope: !1585, file: !1586, line: 34, column: 3)
!1598 = !DILocation(line: 31, column: 15, scope: !1585)
!1599 = !DILocation(line: 31, column: 25, scope: !1585)
!1600 = !DILocation(line: 31, column: 39, scope: !1585)
!1601 = !DILocation(line: 31, column: 54, scope: !1585)
!1602 = !DILocation(line: 34, column: 3, scope: !1597)
!1603 = !DILocation(line: 36, column: 1, scope: !1585)
!1604 = distinct !DISubprogram(name: "fadvise", scope: !1586, file: !1586, line: 39, type: !1605, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !657, variables: !1647)
!1605 = !DISubroutineType(types: !1606)
!1606 = !{null, !1607, !1590}
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1608, size: 64)
!1608 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1173, line: 49, baseType: !1609)
!1609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1175, line: 241, size: 1728, elements: !1610)
!1610 = !{!1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646}
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1609, file: !1175, line: 242, baseType: !140, size: 32)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1609, file: !1175, line: 247, baseType: !46, size: 64, offset: 64)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1609, file: !1175, line: 248, baseType: !46, size: 64, offset: 128)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1609, file: !1175, line: 249, baseType: !46, size: 64, offset: 192)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1609, file: !1175, line: 250, baseType: !46, size: 64, offset: 256)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1609, file: !1175, line: 251, baseType: !46, size: 64, offset: 320)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1609, file: !1175, line: 252, baseType: !46, size: 64, offset: 384)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1609, file: !1175, line: 253, baseType: !46, size: 64, offset: 448)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1609, file: !1175, line: 254, baseType: !46, size: 64, offset: 512)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1609, file: !1175, line: 256, baseType: !46, size: 64, offset: 576)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1609, file: !1175, line: 257, baseType: !46, size: 64, offset: 640)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1609, file: !1175, line: 258, baseType: !46, size: 64, offset: 704)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1609, file: !1175, line: 260, baseType: !1624, size: 64, offset: 768)
!1624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1625, size: 64)
!1625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1175, line: 156, size: 192, elements: !1626)
!1626 = !{!1627, !1628, !1630}
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !1625, file: !1175, line: 157, baseType: !1624, size: 64)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !1625, file: !1175, line: 158, baseType: !1629, size: 64, offset: 64)
!1629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1609, size: 64)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !1625, file: !1175, line: 162, baseType: !140, size: 32, offset: 128)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1609, file: !1175, line: 262, baseType: !1629, size: 64, offset: 832)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1609, file: !1175, line: 264, baseType: !140, size: 32, offset: 896)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1609, file: !1175, line: 268, baseType: !140, size: 32, offset: 928)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1609, file: !1175, line: 270, baseType: !1201, size: 64, offset: 960)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1609, file: !1175, line: 274, baseType: !263, size: 16, offset: 1024)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1609, file: !1175, line: 275, baseType: !1204, size: 8, offset: 1040)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1609, file: !1175, line: 276, baseType: !1206, size: 8, offset: 1048)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1609, file: !1175, line: 280, baseType: !1210, size: 64, offset: 1088)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1609, file: !1175, line: 289, baseType: !1213, size: 64, offset: 1152)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !1609, file: !1175, line: 297, baseType: !47, size: 64, offset: 1216)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !1609, file: !1175, line: 298, baseType: !47, size: 64, offset: 1280)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !1609, file: !1175, line: 299, baseType: !47, size: 64, offset: 1344)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !1609, file: !1175, line: 300, baseType: !47, size: 64, offset: 1408)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1609, file: !1175, line: 302, baseType: !35, size: 64, offset: 1472)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1609, file: !1175, line: 303, baseType: !140, size: 32, offset: 1536)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1609, file: !1175, line: 305, baseType: !1221, size: 160, offset: 1568)
!1647 = !{!1648, !1649}
!1648 = !DILocalVariable(name: "fp", arg: 1, scope: !1604, file: !1586, line: 39, type: !1607)
!1649 = !DILocalVariable(name: "advice", arg: 2, scope: !1604, file: !1586, line: 39, type: !1590)
!1650 = !DILocation(line: 39, column: 16, scope: !1604)
!1651 = !DILocation(line: 39, column: 30, scope: !1604)
!1652 = !DILocation(line: 41, column: 7, scope: !1653)
!1653 = distinct !DILexicalBlock(scope: !1604, file: !1586, line: 41, column: 7)
!1654 = !DILocation(line: 41, column: 7, scope: !1604)
!1655 = !DILocation(line: 42, column: 15, scope: !1653)
!1656 = !DILocation(line: 31, column: 15, scope: !1585, inlinedAt: !1657)
!1657 = distinct !DILocation(line: 42, column: 5, scope: !1658)
!1658 = !DILexicalBlockFile(scope: !1653, file: !1586, discriminator: 1)
!1659 = !DILocation(line: 31, column: 25, scope: !1585, inlinedAt: !1657)
!1660 = !DILocation(line: 31, column: 39, scope: !1585, inlinedAt: !1657)
!1661 = !DILocation(line: 31, column: 54, scope: !1585, inlinedAt: !1657)
!1662 = !DILocation(line: 34, column: 3, scope: !1597, inlinedAt: !1657)
!1663 = !DILocation(line: 42, column: 5, scope: !1653)
!1664 = !DILocation(line: 43, column: 1, scope: !1604)
!1665 = distinct !DISubprogram(name: "initbuffer", scope: !1666, file: !1666, line: 37, type: !1667, isLocal: false, isDefinition: true, scopeLine: 38, flags: DIFlagPrototyped, isOptimized: true, unit: !660, variables: !1675)
!1666 = !DIFile(filename: "lib/linebuffer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1667 = !DISubroutineType(types: !1668)
!1668 = !{null, !1669}
!1669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1670, size: 64)
!1670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "linebuffer", file: !98, line: 26, size: 192, elements: !1671)
!1671 = !{!1672, !1673, !1674}
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1670, file: !98, line: 28, baseType: !35, size: 64)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1670, file: !98, line: 29, baseType: !35, size: 64, offset: 64)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !1670, file: !98, line: 30, baseType: !46, size: 64, offset: 128)
!1675 = !{!1676}
!1676 = !DILocalVariable(name: "linebuffer", arg: 1, scope: !1665, file: !1666, line: 37, type: !1669)
!1677 = !DILocation(line: 37, column: 32, scope: !1665)
!1678 = !DILocation(line: 39, column: 3, scope: !1665)
!1679 = !DILocation(line: 40, column: 1, scope: !1665)
!1680 = distinct !DISubprogram(name: "readlinebuffer", scope: !1666, file: !1666, line: 43, type: !1681, isLocal: false, isDefinition: true, scopeLine: 44, flags: DIFlagPrototyped, isOptimized: true, unit: !660, variables: !1723)
!1681 = !DISubroutineType(types: !1682)
!1682 = !{!1669, !1669, !1683}
!1683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1684, size: 64)
!1684 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1173, line: 49, baseType: !1685)
!1685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1175, line: 241, size: 1728, elements: !1686)
!1686 = !{!1687, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1699, !1707, !1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1720, !1721, !1722}
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1685, file: !1175, line: 242, baseType: !140, size: 32)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1685, file: !1175, line: 247, baseType: !46, size: 64, offset: 64)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1685, file: !1175, line: 248, baseType: !46, size: 64, offset: 128)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1685, file: !1175, line: 249, baseType: !46, size: 64, offset: 192)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1685, file: !1175, line: 250, baseType: !46, size: 64, offset: 256)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1685, file: !1175, line: 251, baseType: !46, size: 64, offset: 320)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1685, file: !1175, line: 252, baseType: !46, size: 64, offset: 384)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1685, file: !1175, line: 253, baseType: !46, size: 64, offset: 448)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1685, file: !1175, line: 254, baseType: !46, size: 64, offset: 512)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1685, file: !1175, line: 256, baseType: !46, size: 64, offset: 576)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1685, file: !1175, line: 257, baseType: !46, size: 64, offset: 640)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1685, file: !1175, line: 258, baseType: !46, size: 64, offset: 704)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1685, file: !1175, line: 260, baseType: !1700, size: 64, offset: 768)
!1700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1701, size: 64)
!1701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1175, line: 156, size: 192, elements: !1702)
!1702 = !{!1703, !1704, !1706}
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !1701, file: !1175, line: 157, baseType: !1700, size: 64)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !1701, file: !1175, line: 158, baseType: !1705, size: 64, offset: 64)
!1705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1685, size: 64)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !1701, file: !1175, line: 162, baseType: !140, size: 32, offset: 128)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1685, file: !1175, line: 262, baseType: !1705, size: 64, offset: 832)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1685, file: !1175, line: 264, baseType: !140, size: 32, offset: 896)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1685, file: !1175, line: 268, baseType: !140, size: 32, offset: 928)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1685, file: !1175, line: 270, baseType: !1201, size: 64, offset: 960)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1685, file: !1175, line: 274, baseType: !263, size: 16, offset: 1024)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1685, file: !1175, line: 275, baseType: !1204, size: 8, offset: 1040)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1685, file: !1175, line: 276, baseType: !1206, size: 8, offset: 1048)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1685, file: !1175, line: 280, baseType: !1210, size: 64, offset: 1088)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1685, file: !1175, line: 289, baseType: !1213, size: 64, offset: 1152)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !1685, file: !1175, line: 297, baseType: !47, size: 64, offset: 1216)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !1685, file: !1175, line: 298, baseType: !47, size: 64, offset: 1280)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !1685, file: !1175, line: 299, baseType: !47, size: 64, offset: 1344)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !1685, file: !1175, line: 300, baseType: !47, size: 64, offset: 1408)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1685, file: !1175, line: 302, baseType: !35, size: 64, offset: 1472)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1685, file: !1175, line: 303, baseType: !140, size: 32, offset: 1536)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1685, file: !1175, line: 305, baseType: !1221, size: 160, offset: 1568)
!1723 = !{!1724, !1725}
!1724 = !DILocalVariable(name: "linebuffer", arg: 1, scope: !1680, file: !1666, line: 43, type: !1669)
!1725 = !DILocalVariable(name: "stream", arg: 2, scope: !1680, file: !1666, line: 43, type: !1683)
!1726 = !DILocation(line: 43, column: 36, scope: !1680)
!1727 = !DILocation(line: 43, column: 54, scope: !1680)
!1728 = !DILocalVariable(name: "linebuffer", arg: 1, scope: !1729, file: !1666, line: 59, type: !1669)
!1729 = distinct !DISubprogram(name: "readlinebuffer_delim", scope: !1666, file: !1666, line: 59, type: !1730, isLocal: false, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, unit: !660, variables: !1732)
!1730 = !DISubroutineType(types: !1731)
!1731 = !{!1669, !1669, !1683, !45}
!1732 = !{!1728, !1733, !1734, !1735, !1736, !1737, !1738, !1739}
!1733 = !DILocalVariable(name: "stream", arg: 2, scope: !1729, file: !1666, line: 59, type: !1683)
!1734 = !DILocalVariable(name: "delimiter", arg: 3, scope: !1729, file: !1666, line: 60, type: !45)
!1735 = !DILocalVariable(name: "c", scope: !1729, file: !1666, line: 62, type: !140)
!1736 = !DILocalVariable(name: "buffer", scope: !1729, file: !1666, line: 63, type: !46)
!1737 = !DILocalVariable(name: "p", scope: !1729, file: !1666, line: 64, type: !46)
!1738 = !DILocalVariable(name: "end", scope: !1729, file: !1666, line: 65, type: !46)
!1739 = !DILocalVariable(name: "oldsize", scope: !1740, file: !1666, line: 83, type: !35)
!1740 = distinct !DILexicalBlock(scope: !1741, file: !1666, line: 82, column: 9)
!1741 = distinct !DILexicalBlock(scope: !1742, file: !1666, line: 81, column: 11)
!1742 = distinct !DILexicalBlock(scope: !1729, file: !1666, line: 71, column: 5)
!1743 = !DILocation(line: 59, column: 42, scope: !1729, inlinedAt: !1744)
!1744 = distinct !DILocation(line: 45, column: 10, scope: !1680)
!1745 = !DILocation(line: 59, column: 60, scope: !1729, inlinedAt: !1744)
!1746 = !DILocation(line: 60, column: 28, scope: !1729, inlinedAt: !1744)
!1747 = !DILocation(line: 63, column: 30, scope: !1729, inlinedAt: !1744)
!1748 = !DILocation(line: 63, column: 9, scope: !1729, inlinedAt: !1744)
!1749 = !DILocation(line: 64, column: 9, scope: !1729, inlinedAt: !1744)
!1750 = !DILocation(line: 65, column: 36, scope: !1729, inlinedAt: !1744)
!1751 = !DILocalVariable(name: "__stream", arg: 1, scope: !1752, file: !1341, line: 125, type: !1683)
!1752 = distinct !DISubprogram(name: "feof_unlocked", scope: !1341, file: !1341, line: 125, type: !1753, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !660, variables: !1755)
!1753 = !DISubroutineType(types: !1754)
!1754 = !{!140, !1683}
!1755 = !{!1751}
!1756 = !DILocation(line: 125, column: 1, scope: !1752, inlinedAt: !1757)
!1757 = distinct !DILocation(line: 67, column: 7, scope: !1758, inlinedAt: !1744)
!1758 = distinct !DILexicalBlock(scope: !1729, file: !1666, line: 67, column: 7)
!1759 = !DILocation(line: 127, column: 10, scope: !1752, inlinedAt: !1757)
!1760 = !DILocation(line: 67, column: 7, scope: !1758, inlinedAt: !1744)
!1761 = !DILocation(line: 67, column: 7, scope: !1729, inlinedAt: !1744)
!1762 = distinct !{!1762, !1763, !1764}
!1763 = !DILocation(line: 70, column: 3, scope: !1729)
!1764 = !DILocation(line: 91, column: 24, scope: !1729)
!1765 = !{!1291, !875, i64 0}
!1766 = !DILocation(line: 65, column: 22, scope: !1729, inlinedAt: !1744)
!1767 = !DILocation(line: 65, column: 9, scope: !1729, inlinedAt: !1744)
!1768 = !DILocalVariable(name: "__fp", arg: 1, scope: !1769, file: !1341, line: 63, type: !1683)
!1769 = distinct !DISubprogram(name: "getc_unlocked", scope: !1341, file: !1341, line: 63, type: !1753, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !660, variables: !1770)
!1770 = !{!1768}
!1771 = !DILocation(line: 63, column: 22, scope: !1769, inlinedAt: !1772)
!1772 = distinct !DILocation(line: 72, column: 11, scope: !1742, inlinedAt: !1744)
!1773 = !DILocation(line: 65, column: 10, scope: !1769, inlinedAt: !1772)
!1774 = !{!1349, !739, i64 8}
!1775 = !{!1349, !739, i64 16}
!1776 = !DILocation(line: 65, column: 10, scope: !1777, inlinedAt: !1772)
!1777 = !DILexicalBlockFile(scope: !1769, file: !1341, discriminator: 2)
!1778 = !DILocation(line: 62, column: 7, scope: !1729, inlinedAt: !1744)
!1779 = !DILocation(line: 73, column: 11, scope: !1742, inlinedAt: !1744)
!1780 = !DILocation(line: 65, column: 10, scope: !1781, inlinedAt: !1772)
!1781 = !DILexicalBlockFile(scope: !1769, file: !1341, discriminator: 1)
!1782 = !DILocation(line: 73, column: 13, scope: !1783, inlinedAt: !1744)
!1783 = distinct !DILexicalBlock(scope: !1742, file: !1666, line: 73, column: 11)
!1784 = !DILocation(line: 75, column: 17, scope: !1785, inlinedAt: !1744)
!1785 = distinct !DILexicalBlock(scope: !1786, file: !1666, line: 75, column: 15)
!1786 = distinct !DILexicalBlock(scope: !1783, file: !1666, line: 74, column: 9)
!1787 = !DILocation(line: 75, column: 27, scope: !1785, inlinedAt: !1744)
!1788 = !DILocalVariable(name: "__stream", arg: 1, scope: !1789, file: !1341, line: 132, type: !1683)
!1789 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1341, file: !1341, line: 132, type: !1753, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !660, variables: !1790)
!1790 = !{!1788}
!1791 = !DILocation(line: 132, column: 1, scope: !1789, inlinedAt: !1792)
!1792 = distinct !DILocation(line: 75, column: 30, scope: !1793, inlinedAt: !1744)
!1793 = !DILexicalBlockFile(scope: !1785, file: !1666, discriminator: 1)
!1794 = !DILocation(line: 134, column: 10, scope: !1789, inlinedAt: !1792)
!1795 = !DILocation(line: 75, column: 30, scope: !1793, inlinedAt: !1744)
!1796 = !DILocation(line: 75, column: 15, scope: !1797, inlinedAt: !1744)
!1797 = !DILexicalBlockFile(scope: !1786, file: !1666, discriminator: 1)
!1798 = !DILocation(line: 77, column: 15, scope: !1799, inlinedAt: !1744)
!1799 = distinct !DILexicalBlock(scope: !1786, file: !1666, line: 77, column: 15)
!1800 = !DILocation(line: 77, column: 21, scope: !1799, inlinedAt: !1744)
!1801 = !DILocation(line: 77, column: 15, scope: !1786, inlinedAt: !1744)
!1802 = !DILocation(line: 81, column: 13, scope: !1741, inlinedAt: !1744)
!1803 = !DILocation(line: 81, column: 11, scope: !1742, inlinedAt: !1744)
!1804 = !DILocation(line: 83, column: 40, scope: !1740, inlinedAt: !1744)
!1805 = !DILocation(line: 83, column: 18, scope: !1740, inlinedAt: !1744)
!1806 = !DILocation(line: 84, column: 20, scope: !1740, inlinedAt: !1744)
!1807 = !DILocation(line: 85, column: 22, scope: !1740, inlinedAt: !1744)
!1808 = !DILocation(line: 86, column: 30, scope: !1740, inlinedAt: !1744)
!1809 = !DILocation(line: 87, column: 38, scope: !1740, inlinedAt: !1744)
!1810 = !DILocation(line: 87, column: 24, scope: !1740, inlinedAt: !1744)
!1811 = !DILocation(line: 88, column: 9, scope: !1740, inlinedAt: !1744)
!1812 = !DILocation(line: 89, column: 14, scope: !1742, inlinedAt: !1744)
!1813 = !DILocation(line: 89, column: 9, scope: !1742, inlinedAt: !1744)
!1814 = !DILocation(line: 89, column: 12, scope: !1742, inlinedAt: !1744)
!1815 = !DILocation(line: 91, column: 12, scope: !1729, inlinedAt: !1744)
!1816 = !DILocation(line: 90, column: 5, scope: !1817, inlinedAt: !1744)
!1817 = !DILexicalBlockFile(scope: !1742, file: !1666, discriminator: 1)
!1818 = !DILocation(line: 93, column: 26, scope: !1729, inlinedAt: !1744)
!1819 = !DILocation(line: 93, column: 15, scope: !1729, inlinedAt: !1744)
!1820 = !DILocation(line: 93, column: 22, scope: !1729, inlinedAt: !1744)
!1821 = !DILocation(line: 94, column: 3, scope: !1729, inlinedAt: !1744)
!1822 = !DILocation(line: 45, column: 3, scope: !1680)
!1823 = !DILocation(line: 59, column: 42, scope: !1729)
!1824 = !DILocation(line: 59, column: 60, scope: !1729)
!1825 = !DILocation(line: 60, column: 28, scope: !1729)
!1826 = !DILocation(line: 63, column: 30, scope: !1729)
!1827 = !DILocation(line: 63, column: 9, scope: !1729)
!1828 = !DILocation(line: 64, column: 9, scope: !1729)
!1829 = !DILocation(line: 65, column: 36, scope: !1729)
!1830 = !DILocation(line: 65, column: 9, scope: !1729)
!1831 = !DILocation(line: 125, column: 1, scope: !1752, inlinedAt: !1832)
!1832 = distinct !DILocation(line: 67, column: 7, scope: !1758)
!1833 = !DILocation(line: 127, column: 10, scope: !1752, inlinedAt: !1832)
!1834 = !DILocation(line: 67, column: 7, scope: !1758)
!1835 = !DILocation(line: 67, column: 7, scope: !1729)
!1836 = !DILocation(line: 65, column: 22, scope: !1729)
!1837 = !DILocation(line: 63, column: 22, scope: !1769, inlinedAt: !1838)
!1838 = distinct !DILocation(line: 72, column: 11, scope: !1742)
!1839 = !DILocation(line: 65, column: 10, scope: !1769, inlinedAt: !1838)
!1840 = !DILocation(line: 65, column: 10, scope: !1777, inlinedAt: !1838)
!1841 = !DILocation(line: 62, column: 7, scope: !1729)
!1842 = !DILocation(line: 73, column: 11, scope: !1742)
!1843 = !DILocation(line: 65, column: 10, scope: !1781, inlinedAt: !1838)
!1844 = !DILocation(line: 73, column: 13, scope: !1783)
!1845 = !DILocation(line: 75, column: 17, scope: !1785)
!1846 = !DILocation(line: 75, column: 27, scope: !1785)
!1847 = !DILocation(line: 132, column: 1, scope: !1789, inlinedAt: !1848)
!1848 = distinct !DILocation(line: 75, column: 30, scope: !1793)
!1849 = !DILocation(line: 134, column: 10, scope: !1789, inlinedAt: !1848)
!1850 = !DILocation(line: 75, column: 30, scope: !1793)
!1851 = !DILocation(line: 75, column: 15, scope: !1797)
!1852 = !DILocation(line: 77, column: 15, scope: !1799)
!1853 = !DILocation(line: 77, column: 21, scope: !1799)
!1854 = !DILocation(line: 77, column: 15, scope: !1786)
!1855 = !DILocation(line: 81, column: 13, scope: !1741)
!1856 = !DILocation(line: 81, column: 11, scope: !1742)
!1857 = !DILocation(line: 83, column: 40, scope: !1740)
!1858 = !DILocation(line: 83, column: 18, scope: !1740)
!1859 = !DILocation(line: 84, column: 20, scope: !1740)
!1860 = !DILocation(line: 85, column: 22, scope: !1740)
!1861 = !DILocation(line: 86, column: 30, scope: !1740)
!1862 = !DILocation(line: 87, column: 38, scope: !1740)
!1863 = !DILocation(line: 87, column: 24, scope: !1740)
!1864 = !DILocation(line: 88, column: 9, scope: !1740)
!1865 = !DILocation(line: 89, column: 14, scope: !1742)
!1866 = !DILocation(line: 89, column: 9, scope: !1742)
!1867 = !DILocation(line: 89, column: 12, scope: !1742)
!1868 = !DILocation(line: 91, column: 12, scope: !1729)
!1869 = !DILocation(line: 90, column: 5, scope: !1817)
!1870 = !DILocation(line: 93, column: 26, scope: !1729)
!1871 = !DILocation(line: 93, column: 15, scope: !1729)
!1872 = !DILocation(line: 93, column: 22, scope: !1729)
!1873 = !DILocation(line: 94, column: 3, scope: !1729)
!1874 = !DILocation(line: 95, column: 1, scope: !1729)
!1875 = distinct !DISubprogram(name: "freebuffer", scope: !1666, file: !1666, line: 100, type: !1667, isLocal: false, isDefinition: true, scopeLine: 101, flags: DIFlagPrototyped, isOptimized: true, unit: !660, variables: !1876)
!1876 = !{!1877}
!1877 = !DILocalVariable(name: "linebuffer", arg: 1, scope: !1875, file: !1666, line: 100, type: !1669)
!1878 = !DILocation(line: 100, column: 32, scope: !1875)
!1879 = !DILocation(line: 102, column: 21, scope: !1875)
!1880 = !DILocation(line: 102, column: 3, scope: !1875)
!1881 = !DILocation(line: 103, column: 1, scope: !1875)
!1882 = distinct !DISubprogram(name: "set_program_name", scope: !236, file: !236, line: 39, type: !117, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !232, variables: !1883)
!1883 = !{!1884, !1885, !1886}
!1884 = !DILocalVariable(name: "argv0", arg: 1, scope: !1882, file: !236, line: 39, type: !43)
!1885 = !DILocalVariable(name: "slash", scope: !1882, file: !236, line: 46, type: !43)
!1886 = !DILocalVariable(name: "base", scope: !1882, file: !236, line: 47, type: !43)
!1887 = !DILocation(line: 39, column: 31, scope: !1882)
!1888 = !DILocation(line: 51, column: 13, scope: !1889)
!1889 = distinct !DILexicalBlock(scope: !1882, file: !236, line: 51, column: 7)
!1890 = !DILocation(line: 51, column: 7, scope: !1882)
!1891 = !DILocation(line: 55, column: 14, scope: !1892)
!1892 = distinct !DILexicalBlock(scope: !1889, file: !236, line: 52, column: 5)
!1893 = !DILocation(line: 54, column: 7, scope: !1892)
!1894 = !DILocation(line: 56, column: 7, scope: !1892)
!1895 = !DILocation(line: 59, column: 11, scope: !1882)
!1896 = !DILocation(line: 46, column: 15, scope: !1882)
!1897 = !DILocation(line: 60, column: 17, scope: !1882)
!1898 = !DILocation(line: 60, column: 33, scope: !1899)
!1899 = !DILexicalBlockFile(scope: !1882, file: !236, discriminator: 1)
!1900 = !DILocation(line: 60, column: 11, scope: !1882)
!1901 = !DILocation(line: 47, column: 15, scope: !1882)
!1902 = !DILocation(line: 61, column: 12, scope: !1903)
!1903 = distinct !DILexicalBlock(scope: !1882, file: !236, line: 61, column: 7)
!1904 = !DILocation(line: 61, column: 20, scope: !1903)
!1905 = !DILocation(line: 61, column: 25, scope: !1903)
!1906 = !DILocation(line: 61, column: 28, scope: !1907)
!1907 = !DILexicalBlockFile(scope: !1903, file: !236, discriminator: 1)
!1908 = !DILocation(line: 61, column: 61, scope: !1907)
!1909 = !DILocation(line: 61, column: 7, scope: !1899)
!1910 = !DILocation(line: 64, column: 11, scope: !1911)
!1911 = distinct !DILexicalBlock(scope: !1912, file: !236, line: 64, column: 11)
!1912 = distinct !DILexicalBlock(scope: !1903, file: !236, line: 62, column: 5)
!1913 = !DILocation(line: 64, column: 36, scope: !1911)
!1914 = !DILocation(line: 64, column: 11, scope: !1912)
!1915 = !DILocation(line: 66, column: 24, scope: !1916)
!1916 = distinct !DILexicalBlock(scope: !1911, file: !236, line: 65, column: 9)
!1917 = !DILocation(line: 70, column: 41, scope: !1916)
!1918 = !DILocation(line: 72, column: 9, scope: !1916)
!1919 = !DILocation(line: 84, column: 16, scope: !1882)
!1920 = !DILocation(line: 90, column: 27, scope: !1882)
!1921 = !DILocation(line: 92, column: 1, scope: !1882)
!1922 = distinct !DISubprogram(name: "clone_quoting_options", scope: !267, file: !267, line: 114, type: !1923, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !239, variables: !1926)
!1923 = !DISubroutineType(types: !1924)
!1924 = !{!1925, !1925}
!1925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!1926 = !{!1927, !1928, !1929}
!1927 = !DILocalVariable(name: "o", arg: 1, scope: !1922, file: !267, line: 114, type: !1925)
!1928 = !DILocalVariable(name: "e", scope: !1922, file: !267, line: 116, type: !140)
!1929 = !DILocalVariable(name: "p", scope: !1922, file: !267, line: 117, type: !1925)
!1930 = !DILocation(line: 114, column: 48, scope: !1922)
!1931 = !DILocation(line: 116, column: 11, scope: !1922)
!1932 = !DILocation(line: 116, column: 7, scope: !1922)
!1933 = !DILocation(line: 117, column: 40, scope: !1922)
!1934 = !DILocation(line: 117, column: 40, scope: !1935)
!1935 = !DILexicalBlockFile(scope: !1922, file: !267, discriminator: 3)
!1936 = !DILocation(line: 117, column: 31, scope: !1935)
!1937 = !DILocation(line: 117, column: 27, scope: !1922)
!1938 = !DILocation(line: 119, column: 9, scope: !1922)
!1939 = !DILocation(line: 120, column: 3, scope: !1922)
!1940 = distinct !DISubprogram(name: "get_quoting_style", scope: !267, file: !267, line: 125, type: !1941, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !239, variables: !1945)
!1941 = !DISubroutineType(types: !1942)
!1942 = !{!5, !1943}
!1943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1944, size: 64)
!1944 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !274)
!1945 = !{!1946}
!1946 = !DILocalVariable(name: "o", arg: 1, scope: !1940, file: !267, line: 125, type: !1943)
!1947 = !DILocation(line: 125, column: 50, scope: !1940)
!1948 = !DILocation(line: 127, column: 11, scope: !1940)
!1949 = !DILocation(line: 127, column: 46, scope: !1950)
!1950 = !DILexicalBlockFile(scope: !1940, file: !267, discriminator: 3)
!1951 = !{!1952, !740, i64 0}
!1952 = !{!"quoting_options", !740, i64 0, !973, i64 4, !740, i64 8, !739, i64 40, !739, i64 48}
!1953 = !DILocation(line: 127, column: 3, scope: !1950)
!1954 = distinct !DISubprogram(name: "set_quoting_style", scope: !267, file: !267, line: 133, type: !1955, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !239, variables: !1957)
!1955 = !DISubroutineType(types: !1956)
!1956 = !{null, !1925, !5}
!1957 = !{!1958, !1959}
!1958 = !DILocalVariable(name: "o", arg: 1, scope: !1954, file: !267, line: 133, type: !1925)
!1959 = !DILocalVariable(name: "s", arg: 2, scope: !1954, file: !267, line: 133, type: !5)
!1960 = !DILocation(line: 133, column: 44, scope: !1954)
!1961 = !DILocation(line: 133, column: 66, scope: !1954)
!1962 = !DILocation(line: 135, column: 4, scope: !1954)
!1963 = !DILocation(line: 135, column: 39, scope: !1964)
!1964 = !DILexicalBlockFile(scope: !1954, file: !267, discriminator: 3)
!1965 = !DILocation(line: 135, column: 45, scope: !1964)
!1966 = !DILocation(line: 136, column: 1, scope: !1954)
!1967 = distinct !DISubprogram(name: "set_char_quoting", scope: !267, file: !267, line: 144, type: !1968, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !239, variables: !1970)
!1968 = !DISubroutineType(types: !1969)
!1969 = !{!140, !1925, !45, !140}
!1970 = !{!1971, !1972, !1973, !1974, !1975, !1977, !1978}
!1971 = !DILocalVariable(name: "o", arg: 1, scope: !1967, file: !267, line: 144, type: !1925)
!1972 = !DILocalVariable(name: "c", arg: 2, scope: !1967, file: !267, line: 144, type: !45)
!1973 = !DILocalVariable(name: "i", arg: 3, scope: !1967, file: !267, line: 144, type: !140)
!1974 = !DILocalVariable(name: "uc", scope: !1967, file: !267, line: 146, type: !42)
!1975 = !DILocalVariable(name: "p", scope: !1967, file: !267, line: 147, type: !1976)
!1976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!1977 = !DILocalVariable(name: "shift", scope: !1967, file: !267, line: 149, type: !140)
!1978 = !DILocalVariable(name: "r", scope: !1967, file: !267, line: 150, type: !140)
!1979 = !DILocation(line: 144, column: 43, scope: !1967)
!1980 = !DILocation(line: 144, column: 51, scope: !1967)
!1981 = !DILocation(line: 144, column: 58, scope: !1967)
!1982 = !DILocation(line: 146, column: 17, scope: !1967)
!1983 = !DILocation(line: 148, column: 6, scope: !1967)
!1984 = !DILocation(line: 148, column: 62, scope: !1985)
!1985 = !DILexicalBlockFile(scope: !1967, file: !267, discriminator: 3)
!1986 = !DILocation(line: 148, column: 57, scope: !1985)
!1987 = !DILocation(line: 147, column: 17, scope: !1967)
!1988 = !DILocation(line: 149, column: 18, scope: !1967)
!1989 = !DILocation(line: 149, column: 15, scope: !1967)
!1990 = !DILocation(line: 149, column: 7, scope: !1967)
!1991 = !DILocation(line: 150, column: 12, scope: !1967)
!1992 = !DILocation(line: 150, column: 15, scope: !1967)
!1993 = !DILocation(line: 150, column: 25, scope: !1967)
!1994 = !DILocation(line: 150, column: 7, scope: !1967)
!1995 = !DILocation(line: 151, column: 13, scope: !1967)
!1996 = !DILocation(line: 151, column: 18, scope: !1967)
!1997 = !DILocation(line: 151, column: 23, scope: !1967)
!1998 = !DILocation(line: 151, column: 6, scope: !1967)
!1999 = !DILocation(line: 152, column: 3, scope: !1967)
!2000 = distinct !DISubprogram(name: "set_quoting_flags", scope: !267, file: !267, line: 160, type: !2001, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !239, variables: !2003)
!2001 = !DISubroutineType(types: !2002)
!2002 = !{!140, !1925, !140}
!2003 = !{!2004, !2005, !2006}
!2004 = !DILocalVariable(name: "o", arg: 1, scope: !2000, file: !267, line: 160, type: !1925)
!2005 = !DILocalVariable(name: "i", arg: 2, scope: !2000, file: !267, line: 160, type: !140)
!2006 = !DILocalVariable(name: "r", scope: !2000, file: !267, line: 162, type: !140)
!2007 = !DILocation(line: 160, column: 44, scope: !2000)
!2008 = !DILocation(line: 160, column: 51, scope: !2000)
!2009 = !DILocation(line: 163, column: 8, scope: !2010)
!2010 = distinct !DILexicalBlock(scope: !2000, file: !267, line: 163, column: 7)
!2011 = !DILocation(line: 163, column: 7, scope: !2000)
!2012 = !DILocation(line: 165, column: 10, scope: !2000)
!2013 = !{!1952, !973, i64 4}
!2014 = !DILocation(line: 162, column: 7, scope: !2000)
!2015 = !DILocation(line: 166, column: 12, scope: !2000)
!2016 = !DILocation(line: 167, column: 3, scope: !2000)
!2017 = distinct !DISubprogram(name: "set_custom_quoting", scope: !267, file: !267, line: 171, type: !2018, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !239, variables: !2020)
!2018 = !DISubroutineType(types: !2019)
!2019 = !{null, !1925, !43, !43}
!2020 = !{!2021, !2022, !2023}
!2021 = !DILocalVariable(name: "o", arg: 1, scope: !2017, file: !267, line: 171, type: !1925)
!2022 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2017, file: !267, line: 172, type: !43)
!2023 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2017, file: !267, line: 172, type: !43)
!2024 = !DILocation(line: 171, column: 45, scope: !2017)
!2025 = !DILocation(line: 172, column: 33, scope: !2017)
!2026 = !DILocation(line: 172, column: 57, scope: !2017)
!2027 = !DILocation(line: 174, column: 8, scope: !2028)
!2028 = distinct !DILexicalBlock(scope: !2017, file: !267, line: 174, column: 7)
!2029 = !DILocation(line: 174, column: 7, scope: !2017)
!2030 = !DILocation(line: 176, column: 6, scope: !2017)
!2031 = !DILocation(line: 176, column: 12, scope: !2017)
!2032 = !DILocation(line: 177, column: 8, scope: !2033)
!2033 = distinct !DILexicalBlock(scope: !2017, file: !267, line: 177, column: 7)
!2034 = !DILocation(line: 177, column: 23, scope: !2035)
!2035 = !DILexicalBlockFile(scope: !2033, file: !267, discriminator: 1)
!2036 = !DILocation(line: 177, column: 19, scope: !2033)
!2037 = !DILocation(line: 178, column: 5, scope: !2033)
!2038 = !DILocation(line: 179, column: 6, scope: !2017)
!2039 = !DILocation(line: 179, column: 17, scope: !2017)
!2040 = !{!1952, !739, i64 40}
!2041 = !DILocation(line: 180, column: 6, scope: !2017)
!2042 = !DILocation(line: 180, column: 18, scope: !2017)
!2043 = !{!1952, !739, i64 48}
!2044 = !DILocation(line: 181, column: 1, scope: !2017)
!2045 = distinct !DISubprogram(name: "quotearg_buffer", scope: !267, file: !267, line: 776, type: !2046, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !239, variables: !2048)
!2046 = !DISubroutineType(types: !2047)
!2047 = !{!35, !46, !35, !43, !35, !1943}
!2048 = !{!2049, !2050, !2051, !2052, !2053, !2054, !2055, !2056}
!2049 = !DILocalVariable(name: "buffer", arg: 1, scope: !2045, file: !267, line: 776, type: !46)
!2050 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2045, file: !267, line: 776, type: !35)
!2051 = !DILocalVariable(name: "arg", arg: 3, scope: !2045, file: !267, line: 777, type: !43)
!2052 = !DILocalVariable(name: "argsize", arg: 4, scope: !2045, file: !267, line: 777, type: !35)
!2053 = !DILocalVariable(name: "o", arg: 5, scope: !2045, file: !267, line: 778, type: !1943)
!2054 = !DILocalVariable(name: "p", scope: !2045, file: !267, line: 780, type: !1943)
!2055 = !DILocalVariable(name: "e", scope: !2045, file: !267, line: 781, type: !140)
!2056 = !DILocalVariable(name: "r", scope: !2045, file: !267, line: 782, type: !35)
!2057 = !DILocation(line: 776, column: 24, scope: !2045)
!2058 = !DILocation(line: 776, column: 39, scope: !2045)
!2059 = !DILocation(line: 777, column: 30, scope: !2045)
!2060 = !DILocation(line: 777, column: 42, scope: !2045)
!2061 = !DILocation(line: 778, column: 48, scope: !2045)
!2062 = !DILocation(line: 780, column: 37, scope: !2045)
!2063 = !DILocation(line: 780, column: 33, scope: !2045)
!2064 = !DILocation(line: 781, column: 11, scope: !2045)
!2065 = !DILocation(line: 781, column: 7, scope: !2045)
!2066 = !DILocation(line: 783, column: 43, scope: !2045)
!2067 = !DILocation(line: 783, column: 53, scope: !2045)
!2068 = !DILocation(line: 783, column: 60, scope: !2045)
!2069 = !DILocation(line: 784, column: 43, scope: !2045)
!2070 = !DILocation(line: 784, column: 58, scope: !2045)
!2071 = !DILocation(line: 782, column: 14, scope: !2045)
!2072 = !DILocation(line: 782, column: 10, scope: !2045)
!2073 = !DILocation(line: 785, column: 9, scope: !2045)
!2074 = !DILocation(line: 786, column: 3, scope: !2045)
!2075 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !267, file: !267, line: 248, type: !2076, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !239, variables: !2080)
!2076 = !DISubroutineType(types: !2077)
!2077 = !{!35, !46, !35, !43, !35, !5, !140, !2078, !43, !43}
!2078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2079, size: 64)
!2079 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !69)
!2080 = !{!2081, !2082, !2083, !2084, !2085, !2086, !2087, !2088, !2089, !2090, !2091, !2092, !2093, !2094, !2095, !2096, !2097, !2098, !2099, !2100, !2101, !2105, !2106, !2107, !2108, !2109, !2112, !2113, !2130, !2133, !2134, !2141}
!2081 = !DILocalVariable(name: "buffer", arg: 1, scope: !2075, file: !267, line: 248, type: !46)
!2082 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2075, file: !267, line: 248, type: !35)
!2083 = !DILocalVariable(name: "arg", arg: 3, scope: !2075, file: !267, line: 249, type: !43)
!2084 = !DILocalVariable(name: "argsize", arg: 4, scope: !2075, file: !267, line: 249, type: !35)
!2085 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2075, file: !267, line: 250, type: !5)
!2086 = !DILocalVariable(name: "flags", arg: 6, scope: !2075, file: !267, line: 250, type: !140)
!2087 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2075, file: !267, line: 251, type: !2078)
!2088 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2075, file: !267, line: 252, type: !43)
!2089 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2075, file: !267, line: 253, type: !43)
!2090 = !DILocalVariable(name: "i", scope: !2075, file: !267, line: 255, type: !35)
!2091 = !DILocalVariable(name: "len", scope: !2075, file: !267, line: 256, type: !35)
!2092 = !DILocalVariable(name: "orig_buffersize", scope: !2075, file: !267, line: 257, type: !35)
!2093 = !DILocalVariable(name: "quote_string", scope: !2075, file: !267, line: 258, type: !43)
!2094 = !DILocalVariable(name: "quote_string_len", scope: !2075, file: !267, line: 259, type: !35)
!2095 = !DILocalVariable(name: "backslash_escapes", scope: !2075, file: !267, line: 260, type: !112)
!2096 = !DILocalVariable(name: "unibyte_locale", scope: !2075, file: !267, line: 261, type: !112)
!2097 = !DILocalVariable(name: "elide_outer_quotes", scope: !2075, file: !267, line: 262, type: !112)
!2098 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2075, file: !267, line: 263, type: !112)
!2099 = !DILocalVariable(name: "encountered_single_quote", scope: !2075, file: !267, line: 264, type: !112)
!2100 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2075, file: !267, line: 265, type: !112)
!2101 = !DILocalVariable(name: "c", scope: !2102, file: !267, line: 394, type: !42)
!2102 = distinct !DILexicalBlock(scope: !2103, file: !267, line: 393, column: 5)
!2103 = distinct !DILexicalBlock(scope: !2104, file: !267, line: 392, column: 3)
!2104 = distinct !DILexicalBlock(scope: !2075, file: !267, line: 392, column: 3)
!2105 = !DILocalVariable(name: "esc", scope: !2102, file: !267, line: 395, type: !42)
!2106 = !DILocalVariable(name: "is_right_quote", scope: !2102, file: !267, line: 396, type: !112)
!2107 = !DILocalVariable(name: "escaping", scope: !2102, file: !267, line: 397, type: !112)
!2108 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2102, file: !267, line: 398, type: !112)
!2109 = !DILocalVariable(name: "m", scope: !2110, file: !267, line: 602, type: !35)
!2110 = distinct !DILexicalBlock(scope: !2111, file: !267, line: 600, column: 11)
!2111 = distinct !DILexicalBlock(scope: !2102, file: !267, line: 418, column: 9)
!2112 = !DILocalVariable(name: "printable", scope: !2110, file: !267, line: 604, type: !112)
!2113 = !DILocalVariable(name: "mbstate", scope: !2114, file: !267, line: 613, type: !2116)
!2114 = distinct !DILexicalBlock(scope: !2115, file: !267, line: 612, column: 15)
!2115 = distinct !DILexicalBlock(scope: !2110, file: !267, line: 606, column: 17)
!2116 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2117, line: 107, baseType: !2118)
!2117 = !DIFile(filename: "/usr/include/wchar.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2118 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2117, line: 95, baseType: !2119)
!2119 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2117, line: 83, size: 64, elements: !2120)
!2120 = !{!2121, !2122}
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2119, file: !2117, line: 85, baseType: !140, size: 32)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2119, file: !2117, line: 94, baseType: !2123, size: 32, offset: 32)
!2123 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2119, file: !2117, line: 86, size: 32, elements: !2124)
!2124 = !{!2125, !2126}
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2123, file: !2117, line: 89, baseType: !69, size: 32)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2123, file: !2117, line: 93, baseType: !2127, size: 32)
!2127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 32, elements: !2128)
!2128 = !{!2129}
!2129 = !DISubrange(count: 4)
!2130 = !DILocalVariable(name: "w", scope: !2131, file: !267, line: 623, type: !2132)
!2131 = distinct !DILexicalBlock(scope: !2114, file: !267, line: 622, column: 19)
!2132 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !36, line: 90, baseType: !140)
!2133 = !DILocalVariable(name: "bytes", scope: !2131, file: !267, line: 624, type: !35)
!2134 = !DILocalVariable(name: "j", scope: !2135, file: !267, line: 649, type: !35)
!2135 = distinct !DILexicalBlock(scope: !2136, file: !267, line: 648, column: 27)
!2136 = distinct !DILexicalBlock(scope: !2137, file: !267, line: 646, column: 29)
!2137 = distinct !DILexicalBlock(scope: !2138, file: !267, line: 641, column: 23)
!2138 = distinct !DILexicalBlock(scope: !2139, file: !267, line: 633, column: 30)
!2139 = distinct !DILexicalBlock(scope: !2140, file: !267, line: 628, column: 30)
!2140 = distinct !DILexicalBlock(scope: !2131, file: !267, line: 626, column: 25)
!2141 = !DILocalVariable(name: "ilim", scope: !2142, file: !267, line: 676, type: !35)
!2142 = distinct !DILexicalBlock(scope: !2143, file: !267, line: 673, column: 15)
!2143 = distinct !DILexicalBlock(scope: !2110, file: !267, line: 672, column: 17)
!2144 = !DILocation(line: 248, column: 33, scope: !2075)
!2145 = !DILocation(line: 248, column: 48, scope: !2075)
!2146 = !DILocation(line: 249, column: 39, scope: !2075)
!2147 = !DILocation(line: 249, column: 51, scope: !2075)
!2148 = !DILocation(line: 250, column: 46, scope: !2075)
!2149 = !DILocation(line: 250, column: 65, scope: !2075)
!2150 = !DILocation(line: 251, column: 47, scope: !2075)
!2151 = !DILocation(line: 252, column: 39, scope: !2075)
!2152 = !DILocation(line: 253, column: 39, scope: !2075)
!2153 = !DILocation(line: 256, column: 10, scope: !2075)
!2154 = !DILocation(line: 257, column: 10, scope: !2075)
!2155 = !DILocation(line: 258, column: 15, scope: !2075)
!2156 = !DILocation(line: 259, column: 10, scope: !2075)
!2157 = !DILocation(line: 260, column: 8, scope: !2075)
!2158 = !DILocation(line: 261, column: 25, scope: !2075)
!2159 = !DILocation(line: 261, column: 36, scope: !2075)
!2160 = !DILocation(line: 262, column: 8, scope: !2075)
!2161 = !DILocation(line: 263, column: 8, scope: !2075)
!2162 = !DILocation(line: 264, column: 8, scope: !2075)
!2163 = !DILocation(line: 265, column: 8, scope: !2075)
!2164 = !DILocation(line: 265, column: 3, scope: !2075)
!2165 = !DILocation(line: 308, column: 3, scope: !2075)
!2166 = !DILocation(line: 315, column: 11, scope: !2167)
!2167 = distinct !DILexicalBlock(scope: !2075, file: !267, line: 309, column: 5)
!2168 = !DILocation(line: 315, column: 12, scope: !2169)
!2169 = distinct !DILexicalBlock(scope: !2167, file: !267, line: 315, column: 11)
!2170 = !DILocation(line: 316, column: 9, scope: !2171)
!2171 = !DILexicalBlockFile(scope: !2172, file: !267, discriminator: 1)
!2172 = distinct !DILexicalBlock(scope: !2173, file: !267, line: 316, column: 9)
!2173 = distinct !DILexicalBlock(scope: !2169, file: !267, line: 316, column: 9)
!2174 = !DILocation(line: 316, column: 9, scope: !2175)
!2175 = !DILexicalBlockFile(scope: !2173, file: !267, discriminator: 1)
!2176 = !DILocation(line: 316, column: 9, scope: !2177)
!2177 = !DILexicalBlockFile(scope: !2172, file: !267, discriminator: 2)
!2178 = !DILocation(line: 354, column: 26, scope: !2179)
!2179 = distinct !DILexicalBlock(scope: !2180, file: !267, line: 332, column: 11)
!2180 = distinct !DILexicalBlock(scope: !2181, file: !267, line: 331, column: 13)
!2181 = distinct !DILexicalBlock(scope: !2167, file: !267, line: 330, column: 7)
!2182 = !DILocation(line: 355, column: 27, scope: !2179)
!2183 = !DILocation(line: 356, column: 11, scope: !2179)
!2184 = !DILocation(line: 357, column: 14, scope: !2185)
!2185 = distinct !DILexicalBlock(scope: !2181, file: !267, line: 357, column: 13)
!2186 = !DILocation(line: 357, column: 13, scope: !2181)
!2187 = !DILocation(line: 358, column: 43, scope: !2188)
!2188 = !DILexicalBlockFile(scope: !2189, file: !267, discriminator: 1)
!2189 = distinct !DILexicalBlock(scope: !2190, file: !267, line: 358, column: 11)
!2190 = distinct !DILexicalBlock(scope: !2185, file: !267, line: 358, column: 11)
!2191 = !DILocation(line: 358, column: 11, scope: !2192)
!2192 = !DILexicalBlockFile(scope: !2190, file: !267, discriminator: 1)
!2193 = !DILocation(line: 359, column: 13, scope: !2194)
!2194 = !DILexicalBlockFile(scope: !2195, file: !267, discriminator: 1)
!2195 = distinct !DILexicalBlock(scope: !2196, file: !267, line: 359, column: 13)
!2196 = distinct !DILexicalBlock(scope: !2189, file: !267, line: 359, column: 13)
!2197 = !DILocation(line: 359, column: 13, scope: !2198)
!2198 = !DILexicalBlockFile(scope: !2196, file: !267, discriminator: 1)
!2199 = !DILocation(line: 359, column: 13, scope: !2200)
!2200 = !DILexicalBlockFile(scope: !2195, file: !267, discriminator: 2)
!2201 = !DILocation(line: 359, column: 13, scope: !2202)
!2202 = !DILexicalBlockFile(scope: !2196, file: !267, discriminator: 3)
!2203 = !DILocation(line: 358, column: 70, scope: !2204)
!2204 = !DILexicalBlockFile(scope: !2189, file: !267, discriminator: 2)
!2205 = distinct !{!2205, !2206, !2207}
!2206 = !DILocation(line: 358, column: 11, scope: !2190)
!2207 = !DILocation(line: 359, column: 13, scope: !2190)
!2208 = !DILocation(line: 362, column: 28, scope: !2181)
!2209 = !DILocation(line: 364, column: 7, scope: !2167)
!2210 = !DILocation(line: 367, column: 7, scope: !2167)
!2211 = !DILocation(line: 370, column: 7, scope: !2167)
!2212 = !DILocation(line: 373, column: 12, scope: !2213)
!2213 = distinct !DILexicalBlock(scope: !2167, file: !267, line: 373, column: 11)
!2214 = !DILocation(line: 373, column: 11, scope: !2167)
!2215 = !DILocation(line: 378, column: 12, scope: !2216)
!2216 = distinct !DILexicalBlock(scope: !2167, file: !267, line: 378, column: 11)
!2217 = !DILocation(line: 378, column: 11, scope: !2167)
!2218 = !DILocation(line: 379, column: 9, scope: !2219)
!2219 = !DILexicalBlockFile(scope: !2220, file: !267, discriminator: 1)
!2220 = distinct !DILexicalBlock(scope: !2221, file: !267, line: 379, column: 9)
!2221 = distinct !DILexicalBlock(scope: !2216, file: !267, line: 379, column: 9)
!2222 = !DILocation(line: 379, column: 9, scope: !2223)
!2223 = !DILexicalBlockFile(scope: !2221, file: !267, discriminator: 1)
!2224 = !DILocation(line: 379, column: 9, scope: !2225)
!2225 = !DILexicalBlockFile(scope: !2220, file: !267, discriminator: 2)
!2226 = !DILocation(line: 386, column: 7, scope: !2167)
!2227 = !DILocation(line: 389, column: 7, scope: !2167)
!2228 = !DILocation(line: 255, column: 10, scope: !2075)
!2229 = !DILocation(line: 392, column: 8, scope: !2104)
!2230 = !DILocation(line: 392, column: 27, scope: !2231)
!2231 = !DILexicalBlockFile(scope: !2103, file: !267, discriminator: 1)
!2232 = !DILocation(line: 392, column: 19, scope: !2231)
!2233 = !DILocation(line: 392, column: 60, scope: !2234)
!2234 = !DILexicalBlockFile(scope: !2103, file: !267, discriminator: 3)
!2235 = !DILocation(line: 392, column: 3, scope: !2236)
!2236 = !DILexicalBlockFile(scope: !2104, file: !267, discriminator: 4)
!2237 = !DILocation(line: 392, column: 41, scope: !2238)
!2238 = !DILexicalBlockFile(scope: !2103, file: !267, discriminator: 2)
!2239 = !DILocation(line: 392, column: 48, scope: !2238)
!2240 = !DILocation(line: 396, column: 12, scope: !2102)
!2241 = !DILocation(line: 397, column: 12, scope: !2102)
!2242 = !DILocation(line: 398, column: 12, scope: !2102)
!2243 = !DILocation(line: 401, column: 11, scope: !2244)
!2244 = distinct !DILexicalBlock(scope: !2102, file: !267, line: 400, column: 11)
!2245 = !DILocation(line: 403, column: 17, scope: !2246)
!2246 = !DILexicalBlockFile(scope: !2244, file: !267, discriminator: 1)
!2247 = !DILocation(line: 404, column: 39, scope: !2244)
!2248 = !DILocation(line: 408, column: 32, scope: !2244)
!2249 = !DILocation(line: 404, column: 19, scope: !2250)
!2250 = !DILexicalBlockFile(scope: !2244, file: !267, discriminator: 2)
!2251 = !DILocation(line: 404, column: 15, scope: !2252)
!2252 = !DILexicalBlockFile(scope: !2244, file: !267, discriminator: 4)
!2253 = !DILocation(line: 409, column: 11, scope: !2244)
!2254 = !DILocation(line: 409, column: 26, scope: !2246)
!2255 = !DILocation(line: 409, column: 14, scope: !2246)
!2256 = !DILocation(line: 400, column: 11, scope: !2257)
!2257 = !DILexicalBlockFile(scope: !2102, file: !267, discriminator: 1)
!2258 = !DILocation(line: 416, column: 11, scope: !2102)
!2259 = !DILocation(line: 394, column: 21, scope: !2102)
!2260 = !DILocation(line: 417, column: 7, scope: !2102)
!2261 = !DILocation(line: 420, column: 15, scope: !2111)
!2262 = !DILocation(line: 422, column: 15, scope: !2263)
!2263 = !DILexicalBlockFile(scope: !2264, file: !267, discriminator: 1)
!2264 = distinct !DILexicalBlock(scope: !2265, file: !267, line: 422, column: 15)
!2265 = distinct !DILexicalBlock(scope: !2266, file: !267, line: 421, column: 13)
!2266 = distinct !DILexicalBlock(scope: !2111, file: !267, line: 420, column: 15)
!2267 = !DILocation(line: 422, column: 15, scope: !2268)
!2268 = !DILexicalBlockFile(scope: !2269, file: !267, discriminator: 4)
!2269 = distinct !DILexicalBlock(scope: !2264, file: !267, line: 422, column: 15)
!2270 = !DILocation(line: 422, column: 15, scope: !2271)
!2271 = !DILexicalBlockFile(scope: !2269, file: !267, discriminator: 3)
!2272 = !DILocation(line: 422, column: 15, scope: !2273)
!2273 = !DILexicalBlockFile(scope: !2274, file: !267, discriminator: 6)
!2274 = distinct !DILexicalBlock(scope: !2275, file: !267, line: 422, column: 15)
!2275 = distinct !DILexicalBlock(scope: !2276, file: !267, line: 422, column: 15)
!2276 = distinct !DILexicalBlock(scope: !2269, file: !267, line: 422, column: 15)
!2277 = !DILocation(line: 422, column: 15, scope: !2278)
!2278 = !DILexicalBlockFile(scope: !2275, file: !267, discriminator: 6)
!2279 = !DILocation(line: 422, column: 15, scope: !2280)
!2280 = !DILexicalBlockFile(scope: !2274, file: !267, discriminator: 7)
!2281 = !DILocation(line: 422, column: 15, scope: !2282)
!2282 = !DILexicalBlockFile(scope: !2275, file: !267, discriminator: 8)
!2283 = !DILocation(line: 422, column: 15, scope: !2284)
!2284 = !DILexicalBlockFile(scope: !2285, file: !267, discriminator: 11)
!2285 = distinct !DILexicalBlock(scope: !2286, file: !267, line: 422, column: 15)
!2286 = distinct !DILexicalBlock(scope: !2276, file: !267, line: 422, column: 15)
!2287 = !DILocation(line: 422, column: 15, scope: !2288)
!2288 = !DILexicalBlockFile(scope: !2286, file: !267, discriminator: 11)
!2289 = !DILocation(line: 422, column: 15, scope: !2290)
!2290 = !DILexicalBlockFile(scope: !2285, file: !267, discriminator: 12)
!2291 = !DILocation(line: 422, column: 15, scope: !2292)
!2292 = !DILexicalBlockFile(scope: !2286, file: !267, discriminator: 13)
!2293 = !DILocation(line: 422, column: 15, scope: !2294)
!2294 = !DILexicalBlockFile(scope: !2295, file: !267, discriminator: 16)
!2295 = distinct !DILexicalBlock(scope: !2296, file: !267, line: 422, column: 15)
!2296 = distinct !DILexicalBlock(scope: !2276, file: !267, line: 422, column: 15)
!2297 = !DILocation(line: 422, column: 15, scope: !2298)
!2298 = !DILexicalBlockFile(scope: !2296, file: !267, discriminator: 16)
!2299 = !DILocation(line: 422, column: 15, scope: !2300)
!2300 = !DILexicalBlockFile(scope: !2295, file: !267, discriminator: 17)
!2301 = !DILocation(line: 422, column: 15, scope: !2302)
!2302 = !DILexicalBlockFile(scope: !2296, file: !267, discriminator: 18)
!2303 = !DILocation(line: 422, column: 15, scope: !2304)
!2304 = !DILexicalBlockFile(scope: !2276, file: !267, discriminator: 20)
!2305 = !DILocation(line: 422, column: 15, scope: !2306)
!2306 = !DILexicalBlockFile(scope: !2307, file: !267, discriminator: 22)
!2307 = distinct !DILexicalBlock(scope: !2308, file: !267, line: 422, column: 15)
!2308 = distinct !DILexicalBlock(scope: !2264, file: !267, line: 422, column: 15)
!2309 = !DILocation(line: 422, column: 15, scope: !2310)
!2310 = !DILexicalBlockFile(scope: !2308, file: !267, discriminator: 22)
!2311 = !DILocation(line: 422, column: 15, scope: !2312)
!2312 = !DILexicalBlockFile(scope: !2307, file: !267, discriminator: 23)
!2313 = !DILocation(line: 422, column: 15, scope: !2314)
!2314 = !DILexicalBlockFile(scope: !2308, file: !267, discriminator: 24)
!2315 = !DILocation(line: 430, column: 19, scope: !2316)
!2316 = distinct !DILexicalBlock(scope: !2265, file: !267, line: 429, column: 19)
!2317 = !DILocation(line: 430, column: 24, scope: !2318)
!2318 = !DILexicalBlockFile(scope: !2316, file: !267, discriminator: 1)
!2319 = !DILocation(line: 430, column: 28, scope: !2318)
!2320 = !DILocation(line: 430, column: 38, scope: !2318)
!2321 = !DILocation(line: 430, column: 48, scope: !2322)
!2322 = !DILexicalBlockFile(scope: !2316, file: !267, discriminator: 2)
!2323 = !DILocation(line: 430, column: 59, scope: !2322)
!2324 = !DILocation(line: 432, column: 19, scope: !2325)
!2325 = !DILexicalBlockFile(scope: !2326, file: !267, discriminator: 1)
!2326 = distinct !DILexicalBlock(scope: !2327, file: !267, line: 432, column: 19)
!2327 = distinct !DILexicalBlock(scope: !2328, file: !267, line: 432, column: 19)
!2328 = distinct !DILexicalBlock(scope: !2316, file: !267, line: 431, column: 17)
!2329 = !DILocation(line: 432, column: 19, scope: !2330)
!2330 = !DILexicalBlockFile(scope: !2327, file: !267, discriminator: 1)
!2331 = !DILocation(line: 432, column: 19, scope: !2332)
!2332 = !DILexicalBlockFile(scope: !2326, file: !267, discriminator: 2)
!2333 = !DILocation(line: 432, column: 19, scope: !2334)
!2334 = !DILexicalBlockFile(scope: !2327, file: !267, discriminator: 3)
!2335 = !DILocation(line: 433, column: 19, scope: !2336)
!2336 = !DILexicalBlockFile(scope: !2337, file: !267, discriminator: 1)
!2337 = distinct !DILexicalBlock(scope: !2338, file: !267, line: 433, column: 19)
!2338 = distinct !DILexicalBlock(scope: !2328, file: !267, line: 433, column: 19)
!2339 = !DILocation(line: 433, column: 19, scope: !2340)
!2340 = !DILexicalBlockFile(scope: !2338, file: !267, discriminator: 1)
!2341 = !DILocation(line: 433, column: 19, scope: !2342)
!2342 = !DILexicalBlockFile(scope: !2337, file: !267, discriminator: 2)
!2343 = !DILocation(line: 433, column: 19, scope: !2344)
!2344 = !DILexicalBlockFile(scope: !2338, file: !267, discriminator: 3)
!2345 = !DILocation(line: 434, column: 17, scope: !2328)
!2346 = !DILocation(line: 441, column: 20, scope: !2266)
!2347 = !DILocation(line: 446, column: 11, scope: !2111)
!2348 = !DILocation(line: 449, column: 19, scope: !2349)
!2349 = distinct !DILexicalBlock(scope: !2111, file: !267, line: 447, column: 13)
!2350 = !DILocation(line: 455, column: 19, scope: !2351)
!2351 = distinct !DILexicalBlock(scope: !2349, file: !267, line: 454, column: 19)
!2352 = !DILocation(line: 455, column: 24, scope: !2353)
!2353 = !DILexicalBlockFile(scope: !2351, file: !267, discriminator: 1)
!2354 = !DILocation(line: 455, column: 28, scope: !2353)
!2355 = !DILocation(line: 455, column: 38, scope: !2353)
!2356 = !DILocation(line: 455, column: 47, scope: !2357)
!2357 = !DILexicalBlockFile(scope: !2351, file: !267, discriminator: 2)
!2358 = !DILocation(line: 455, column: 41, scope: !2357)
!2359 = !DILocation(line: 455, column: 52, scope: !2357)
!2360 = !DILocation(line: 454, column: 19, scope: !2361)
!2361 = !DILexicalBlockFile(scope: !2349, file: !267, discriminator: 1)
!2362 = !DILocation(line: 456, column: 25, scope: !2351)
!2363 = !DILocation(line: 456, column: 17, scope: !2351)
!2364 = !DILocation(line: 463, column: 25, scope: !2365)
!2365 = distinct !DILexicalBlock(scope: !2351, file: !267, line: 457, column: 19)
!2366 = !DILocation(line: 467, column: 21, scope: !2367)
!2367 = !DILexicalBlockFile(scope: !2368, file: !267, discriminator: 1)
!2368 = distinct !DILexicalBlock(scope: !2369, file: !267, line: 467, column: 21)
!2369 = distinct !DILexicalBlock(scope: !2365, file: !267, line: 467, column: 21)
!2370 = !DILocation(line: 467, column: 21, scope: !2371)
!2371 = !DILexicalBlockFile(scope: !2369, file: !267, discriminator: 1)
!2372 = !DILocation(line: 467, column: 21, scope: !2373)
!2373 = !DILexicalBlockFile(scope: !2368, file: !267, discriminator: 2)
!2374 = !DILocation(line: 467, column: 21, scope: !2375)
!2375 = !DILexicalBlockFile(scope: !2369, file: !267, discriminator: 3)
!2376 = !DILocation(line: 468, column: 21, scope: !2377)
!2377 = !DILexicalBlockFile(scope: !2378, file: !267, discriminator: 1)
!2378 = distinct !DILexicalBlock(scope: !2379, file: !267, line: 468, column: 21)
!2379 = distinct !DILexicalBlock(scope: !2365, file: !267, line: 468, column: 21)
!2380 = !DILocation(line: 468, column: 21, scope: !2381)
!2381 = !DILexicalBlockFile(scope: !2379, file: !267, discriminator: 1)
!2382 = !DILocation(line: 468, column: 21, scope: !2383)
!2383 = !DILexicalBlockFile(scope: !2378, file: !267, discriminator: 2)
!2384 = !DILocation(line: 468, column: 21, scope: !2385)
!2385 = !DILexicalBlockFile(scope: !2379, file: !267, discriminator: 3)
!2386 = !DILocation(line: 469, column: 21, scope: !2387)
!2387 = !DILexicalBlockFile(scope: !2388, file: !267, discriminator: 1)
!2388 = distinct !DILexicalBlock(scope: !2389, file: !267, line: 469, column: 21)
!2389 = distinct !DILexicalBlock(scope: !2365, file: !267, line: 469, column: 21)
!2390 = !DILocation(line: 469, column: 21, scope: !2391)
!2391 = !DILexicalBlockFile(scope: !2389, file: !267, discriminator: 1)
!2392 = !DILocation(line: 469, column: 21, scope: !2393)
!2393 = !DILexicalBlockFile(scope: !2388, file: !267, discriminator: 2)
!2394 = !DILocation(line: 469, column: 21, scope: !2395)
!2395 = !DILexicalBlockFile(scope: !2389, file: !267, discriminator: 3)
!2396 = !DILocation(line: 470, column: 21, scope: !2397)
!2397 = !DILexicalBlockFile(scope: !2398, file: !267, discriminator: 1)
!2398 = distinct !DILexicalBlock(scope: !2399, file: !267, line: 470, column: 21)
!2399 = distinct !DILexicalBlock(scope: !2365, file: !267, line: 470, column: 21)
!2400 = !DILocation(line: 470, column: 21, scope: !2401)
!2401 = !DILexicalBlockFile(scope: !2399, file: !267, discriminator: 1)
!2402 = !DILocation(line: 470, column: 21, scope: !2403)
!2403 = !DILexicalBlockFile(scope: !2398, file: !267, discriminator: 2)
!2404 = !DILocation(line: 470, column: 21, scope: !2405)
!2405 = !DILexicalBlockFile(scope: !2399, file: !267, discriminator: 3)
!2406 = !DILocation(line: 471, column: 21, scope: !2365)
!2407 = !DILocation(line: 395, column: 21, scope: !2102)
!2408 = !DILocation(line: 484, column: 31, scope: !2111)
!2409 = !DILocation(line: 485, column: 31, scope: !2111)
!2410 = !DILocation(line: 487, column: 31, scope: !2111)
!2411 = !DILocation(line: 488, column: 31, scope: !2111)
!2412 = !DILocation(line: 489, column: 31, scope: !2111)
!2413 = !DILocation(line: 492, column: 15, scope: !2111)
!2414 = !DILocation(line: 494, column: 19, scope: !2415)
!2415 = distinct !DILexicalBlock(scope: !2416, file: !267, line: 493, column: 13)
!2416 = distinct !DILexicalBlock(scope: !2111, file: !267, line: 492, column: 15)
!2417 = !DILocation(line: 501, column: 33, scope: !2418)
!2418 = distinct !DILexicalBlock(scope: !2111, file: !267, line: 501, column: 15)
!2419 = !DILocation(line: 506, column: 15, scope: !2420)
!2420 = distinct !DILexicalBlock(scope: !2111, file: !267, line: 505, column: 15)
!2421 = !DILocation(line: 510, column: 15, scope: !2111)
!2422 = !DILocation(line: 518, column: 26, scope: !2423)
!2423 = distinct !DILexicalBlock(scope: !2111, file: !267, line: 518, column: 15)
!2424 = !DILocation(line: 518, column: 15, scope: !2111)
!2425 = !DILocation(line: 518, column: 40, scope: !2426)
!2426 = !DILexicalBlockFile(scope: !2423, file: !267, discriminator: 1)
!2427 = !DILocation(line: 518, column: 47, scope: !2426)
!2428 = !DILocation(line: 522, column: 17, scope: !2429)
!2429 = distinct !DILexicalBlock(scope: !2111, file: !267, line: 522, column: 15)
!2430 = !DILocation(line: 518, column: 18, scope: !2426)
!2431 = !DILocation(line: 518, column: 65, scope: !2432)
!2432 = !DILexicalBlockFile(scope: !2423, file: !267, discriminator: 2)
!2433 = !DILocation(line: 518, column: 15, scope: !2434)
!2434 = !DILexicalBlockFile(scope: !2111, file: !267, discriminator: 2)
!2435 = !DILocation(line: 522, column: 15, scope: !2111)
!2436 = !DILocation(line: 526, column: 11, scope: !2111)
!2437 = !DILocation(line: 541, column: 15, scope: !2438)
!2438 = distinct !DILexicalBlock(scope: !2111, file: !267, line: 540, column: 15)
!2439 = !DILocation(line: 548, column: 15, scope: !2111)
!2440 = !DILocation(line: 550, column: 19, scope: !2441)
!2441 = distinct !DILexicalBlock(scope: !2442, file: !267, line: 549, column: 13)
!2442 = distinct !DILexicalBlock(scope: !2111, file: !267, line: 548, column: 15)
!2443 = !DILocation(line: 553, column: 19, scope: !2444)
!2444 = distinct !DILexicalBlock(scope: !2441, file: !267, line: 553, column: 19)
!2445 = !DILocation(line: 553, column: 35, scope: !2446)
!2446 = !DILexicalBlockFile(scope: !2444, file: !267, discriminator: 1)
!2447 = !DILocation(line: 553, column: 30, scope: !2444)
!2448 = !DILocation(line: 562, column: 15, scope: !2449)
!2449 = !DILexicalBlockFile(scope: !2450, file: !267, discriminator: 1)
!2450 = distinct !DILexicalBlock(scope: !2451, file: !267, line: 562, column: 15)
!2451 = distinct !DILexicalBlock(scope: !2441, file: !267, line: 562, column: 15)
!2452 = !DILocation(line: 562, column: 15, scope: !2453)
!2453 = !DILexicalBlockFile(scope: !2451, file: !267, discriminator: 1)
!2454 = !DILocation(line: 562, column: 15, scope: !2455)
!2455 = !DILexicalBlockFile(scope: !2450, file: !267, discriminator: 2)
!2456 = !DILocation(line: 562, column: 15, scope: !2457)
!2457 = !DILexicalBlockFile(scope: !2451, file: !267, discriminator: 3)
!2458 = !DILocation(line: 563, column: 15, scope: !2459)
!2459 = !DILexicalBlockFile(scope: !2460, file: !267, discriminator: 1)
!2460 = distinct !DILexicalBlock(scope: !2461, file: !267, line: 563, column: 15)
!2461 = distinct !DILexicalBlock(scope: !2441, file: !267, line: 563, column: 15)
!2462 = !DILocation(line: 563, column: 15, scope: !2463)
!2463 = !DILexicalBlockFile(scope: !2461, file: !267, discriminator: 1)
!2464 = !DILocation(line: 563, column: 15, scope: !2465)
!2465 = !DILexicalBlockFile(scope: !2460, file: !267, discriminator: 2)
!2466 = !DILocation(line: 563, column: 15, scope: !2467)
!2467 = !DILexicalBlockFile(scope: !2461, file: !267, discriminator: 3)
!2468 = !DILocation(line: 564, column: 15, scope: !2469)
!2469 = !DILexicalBlockFile(scope: !2470, file: !267, discriminator: 1)
!2470 = distinct !DILexicalBlock(scope: !2471, file: !267, line: 564, column: 15)
!2471 = distinct !DILexicalBlock(scope: !2441, file: !267, line: 564, column: 15)
!2472 = !DILocation(line: 564, column: 15, scope: !2473)
!2473 = !DILexicalBlockFile(scope: !2471, file: !267, discriminator: 1)
!2474 = !DILocation(line: 564, column: 15, scope: !2475)
!2475 = !DILexicalBlockFile(scope: !2470, file: !267, discriminator: 2)
!2476 = !DILocation(line: 564, column: 15, scope: !2477)
!2477 = !DILexicalBlockFile(scope: !2471, file: !267, discriminator: 3)
!2478 = !DILocation(line: 566, column: 13, scope: !2441)
!2479 = !DILocation(line: 606, column: 17, scope: !2110)
!2480 = !DILocation(line: 602, column: 20, scope: !2110)
!2481 = !DILocation(line: 609, column: 29, scope: !2482)
!2482 = distinct !DILexicalBlock(scope: !2115, file: !267, line: 607, column: 15)
!2483 = !{!1350, !1350, i64 0}
!2484 = !DILocation(line: 609, column: 27, scope: !2482)
!2485 = !DILocation(line: 604, column: 18, scope: !2110)
!2486 = !DILocation(line: 610, column: 15, scope: !2482)
!2487 = !DILocation(line: 613, column: 17, scope: !2114)
!2488 = !DILocation(line: 614, column: 17, scope: !2114)
!2489 = !DILocation(line: 618, column: 29, scope: !2490)
!2490 = distinct !DILexicalBlock(scope: !2114, file: !267, line: 618, column: 21)
!2491 = !DILocation(line: 618, column: 21, scope: !2114)
!2492 = distinct !{!2492, !2493, !2494}
!2493 = !DILocation(line: 621, column: 17, scope: !2114)
!2494 = !DILocation(line: 667, column: 44, scope: !2114)
!2495 = !DILocation(line: 619, column: 29, scope: !2490)
!2496 = !DILocation(line: 619, column: 19, scope: !2490)
!2497 = !DILocation(line: 623, column: 21, scope: !2131)
!2498 = !DILocation(line: 624, column: 56, scope: !2131)
!2499 = !DILocation(line: 624, column: 50, scope: !2131)
!2500 = !DILocation(line: 625, column: 53, scope: !2131)
!2501 = !DIExpression(DW_OP_deref)
!2502 = !DILocation(line: 613, column: 27, scope: !2114)
!2503 = !DILocation(line: 623, column: 29, scope: !2131)
!2504 = !DILocation(line: 624, column: 36, scope: !2131)
!2505 = !DILocation(line: 624, column: 28, scope: !2131)
!2506 = !DILocation(line: 626, column: 25, scope: !2131)
!2507 = !DILocation(line: 636, column: 38, scope: !2508)
!2508 = !DILexicalBlockFile(scope: !2509, file: !267, discriminator: 1)
!2509 = distinct !DILexicalBlock(scope: !2138, file: !267, line: 634, column: 23)
!2510 = !DILocation(line: 636, column: 48, scope: !2508)
!2511 = !DILocation(line: 636, column: 51, scope: !2512)
!2512 = !DILexicalBlockFile(scope: !2509, file: !267, discriminator: 2)
!2513 = !DILocation(line: 636, column: 48, scope: !2512)
!2514 = !DILocation(line: 636, column: 25, scope: !2515)
!2515 = !DILexicalBlockFile(scope: !2509, file: !267, discriminator: 3)
!2516 = !DILocation(line: 637, column: 28, scope: !2509)
!2517 = !DILocation(line: 636, column: 34, scope: !2508)
!2518 = distinct !{!2518, !2519, !2516}
!2519 = !DILocation(line: 636, column: 25, scope: !2509)
!2520 = !DILocation(line: 650, column: 43, scope: !2521)
!2521 = !DILexicalBlockFile(scope: !2522, file: !267, discriminator: 1)
!2522 = distinct !DILexicalBlock(scope: !2523, file: !267, line: 650, column: 29)
!2523 = distinct !DILexicalBlock(scope: !2135, file: !267, line: 650, column: 29)
!2524 = !DILocation(line: 647, column: 29, scope: !2136)
!2525 = !DILocation(line: 649, column: 36, scope: !2135)
!2526 = !DILocation(line: 651, column: 49, scope: !2522)
!2527 = !DILocation(line: 651, column: 39, scope: !2522)
!2528 = !DILocation(line: 651, column: 31, scope: !2522)
!2529 = !DILocation(line: 650, column: 53, scope: !2530)
!2530 = !DILexicalBlockFile(scope: !2522, file: !267, discriminator: 2)
!2531 = !DILocation(line: 650, column: 29, scope: !2532)
!2532 = !DILexicalBlockFile(scope: !2523, file: !267, discriminator: 1)
!2533 = distinct !{!2533, !2534, !2535}
!2534 = !DILocation(line: 650, column: 29, scope: !2523)
!2535 = !DILocation(line: 659, column: 33, scope: !2523)
!2536 = !DILocation(line: 666, column: 19, scope: !2114)
!2537 = !DILocation(line: 662, column: 41, scope: !2538)
!2538 = distinct !DILexicalBlock(scope: !2137, file: !267, line: 662, column: 29)
!2539 = !DILocation(line: 662, column: 31, scope: !2538)
!2540 = !DILocation(line: 662, column: 29, scope: !2137)
!2541 = !DILocation(line: 664, column: 27, scope: !2137)
!2542 = !DILocation(line: 667, column: 26, scope: !2114)
!2543 = !DILocation(line: 667, column: 24, scope: !2114)
!2544 = !DILocation(line: 666, column: 19, scope: !2545)
!2545 = !DILexicalBlockFile(scope: !2131, file: !267, discriminator: 3)
!2546 = !DILocation(line: 668, column: 15, scope: !2115)
!2547 = !DILocation(line: 670, column: 40, scope: !2110)
!2548 = !DILocation(line: 672, column: 19, scope: !2143)
!2549 = !DILocation(line: 672, column: 45, scope: !2550)
!2550 = !DILexicalBlockFile(scope: !2143, file: !267, discriminator: 1)
!2551 = !DILocation(line: 672, column: 23, scope: !2143)
!2552 = !DILocation(line: 676, column: 33, scope: !2142)
!2553 = !DILocation(line: 676, column: 24, scope: !2142)
!2554 = !DILocation(line: 678, column: 17, scope: !2142)
!2555 = !DILocation(line: 680, column: 43, scope: !2556)
!2556 = distinct !DILexicalBlock(scope: !2557, file: !267, line: 680, column: 25)
!2557 = distinct !DILexicalBlock(scope: !2558, file: !267, line: 679, column: 19)
!2558 = distinct !DILexicalBlock(scope: !2559, file: !267, line: 678, column: 17)
!2559 = distinct !DILexicalBlock(scope: !2142, file: !267, line: 678, column: 17)
!2560 = !DILocation(line: 682, column: 25, scope: !2561)
!2561 = !DILexicalBlockFile(scope: !2562, file: !267, discriminator: 1)
!2562 = distinct !DILexicalBlock(scope: !2563, file: !267, line: 682, column: 25)
!2563 = distinct !DILexicalBlock(scope: !2556, file: !267, line: 681, column: 23)
!2564 = !DILocation(line: 682, column: 25, scope: !2565)
!2565 = !DILexicalBlockFile(scope: !2566, file: !267, discriminator: 4)
!2566 = distinct !DILexicalBlock(scope: !2562, file: !267, line: 682, column: 25)
!2567 = !DILocation(line: 682, column: 25, scope: !2568)
!2568 = !DILexicalBlockFile(scope: !2566, file: !267, discriminator: 3)
!2569 = !DILocation(line: 682, column: 25, scope: !2570)
!2570 = !DILexicalBlockFile(scope: !2571, file: !267, discriminator: 6)
!2571 = distinct !DILexicalBlock(scope: !2572, file: !267, line: 682, column: 25)
!2572 = distinct !DILexicalBlock(scope: !2573, file: !267, line: 682, column: 25)
!2573 = distinct !DILexicalBlock(scope: !2566, file: !267, line: 682, column: 25)
!2574 = !DILocation(line: 682, column: 25, scope: !2575)
!2575 = !DILexicalBlockFile(scope: !2572, file: !267, discriminator: 6)
!2576 = !DILocation(line: 682, column: 25, scope: !2577)
!2577 = !DILexicalBlockFile(scope: !2571, file: !267, discriminator: 7)
!2578 = !DILocation(line: 682, column: 25, scope: !2579)
!2579 = !DILexicalBlockFile(scope: !2572, file: !267, discriminator: 8)
!2580 = !DILocation(line: 682, column: 25, scope: !2581)
!2581 = !DILexicalBlockFile(scope: !2582, file: !267, discriminator: 11)
!2582 = distinct !DILexicalBlock(scope: !2583, file: !267, line: 682, column: 25)
!2583 = distinct !DILexicalBlock(scope: !2573, file: !267, line: 682, column: 25)
!2584 = !DILocation(line: 682, column: 25, scope: !2585)
!2585 = !DILexicalBlockFile(scope: !2583, file: !267, discriminator: 11)
!2586 = !DILocation(line: 682, column: 25, scope: !2587)
!2587 = !DILexicalBlockFile(scope: !2582, file: !267, discriminator: 12)
!2588 = !DILocation(line: 682, column: 25, scope: !2589)
!2589 = !DILexicalBlockFile(scope: !2583, file: !267, discriminator: 13)
!2590 = !DILocation(line: 682, column: 25, scope: !2591)
!2591 = !DILexicalBlockFile(scope: !2592, file: !267, discriminator: 16)
!2592 = distinct !DILexicalBlock(scope: !2593, file: !267, line: 682, column: 25)
!2593 = distinct !DILexicalBlock(scope: !2573, file: !267, line: 682, column: 25)
!2594 = !DILocation(line: 682, column: 25, scope: !2595)
!2595 = !DILexicalBlockFile(scope: !2593, file: !267, discriminator: 16)
!2596 = !DILocation(line: 682, column: 25, scope: !2597)
!2597 = !DILexicalBlockFile(scope: !2592, file: !267, discriminator: 17)
!2598 = !DILocation(line: 682, column: 25, scope: !2599)
!2599 = !DILexicalBlockFile(scope: !2593, file: !267, discriminator: 18)
!2600 = !DILocation(line: 682, column: 25, scope: !2601)
!2601 = !DILexicalBlockFile(scope: !2573, file: !267, discriminator: 20)
!2602 = !DILocation(line: 682, column: 25, scope: !2603)
!2603 = !DILexicalBlockFile(scope: !2604, file: !267, discriminator: 22)
!2604 = distinct !DILexicalBlock(scope: !2605, file: !267, line: 682, column: 25)
!2605 = distinct !DILexicalBlock(scope: !2562, file: !267, line: 682, column: 25)
!2606 = !DILocation(line: 682, column: 25, scope: !2607)
!2607 = !DILexicalBlockFile(scope: !2605, file: !267, discriminator: 22)
!2608 = !DILocation(line: 682, column: 25, scope: !2609)
!2609 = !DILexicalBlockFile(scope: !2604, file: !267, discriminator: 23)
!2610 = !DILocation(line: 682, column: 25, scope: !2611)
!2611 = !DILexicalBlockFile(scope: !2605, file: !267, discriminator: 24)
!2612 = !DILocation(line: 683, column: 25, scope: !2613)
!2613 = !DILexicalBlockFile(scope: !2614, file: !267, discriminator: 1)
!2614 = distinct !DILexicalBlock(scope: !2615, file: !267, line: 683, column: 25)
!2615 = distinct !DILexicalBlock(scope: !2563, file: !267, line: 683, column: 25)
!2616 = !DILocation(line: 683, column: 25, scope: !2617)
!2617 = !DILexicalBlockFile(scope: !2615, file: !267, discriminator: 1)
!2618 = !DILocation(line: 683, column: 25, scope: !2619)
!2619 = !DILexicalBlockFile(scope: !2614, file: !267, discriminator: 2)
!2620 = !DILocation(line: 683, column: 25, scope: !2621)
!2621 = !DILexicalBlockFile(scope: !2615, file: !267, discriminator: 3)
!2622 = !DILocation(line: 684, column: 25, scope: !2623)
!2623 = !DILexicalBlockFile(scope: !2624, file: !267, discriminator: 1)
!2624 = distinct !DILexicalBlock(scope: !2625, file: !267, line: 684, column: 25)
!2625 = distinct !DILexicalBlock(scope: !2563, file: !267, line: 684, column: 25)
!2626 = !DILocation(line: 684, column: 25, scope: !2627)
!2627 = !DILexicalBlockFile(scope: !2625, file: !267, discriminator: 1)
!2628 = !DILocation(line: 684, column: 25, scope: !2629)
!2629 = !DILexicalBlockFile(scope: !2624, file: !267, discriminator: 2)
!2630 = !DILocation(line: 684, column: 25, scope: !2631)
!2631 = !DILexicalBlockFile(scope: !2625, file: !267, discriminator: 3)
!2632 = !DILocation(line: 685, column: 38, scope: !2563)
!2633 = !DILocation(line: 685, column: 33, scope: !2563)
!2634 = !DILocation(line: 686, column: 23, scope: !2563)
!2635 = !DILocation(line: 687, column: 30, scope: !2636)
!2636 = distinct !DILexicalBlock(scope: !2556, file: !267, line: 687, column: 30)
!2637 = !DILocation(line: 687, column: 30, scope: !2556)
!2638 = !DILocation(line: 689, column: 25, scope: !2639)
!2639 = !DILexicalBlockFile(scope: !2640, file: !267, discriminator: 1)
!2640 = distinct !DILexicalBlock(scope: !2641, file: !267, line: 689, column: 25)
!2641 = distinct !DILexicalBlock(scope: !2642, file: !267, line: 689, column: 25)
!2642 = distinct !DILexicalBlock(scope: !2636, file: !267, line: 688, column: 23)
!2643 = !DILocation(line: 689, column: 25, scope: !2644)
!2644 = !DILexicalBlockFile(scope: !2641, file: !267, discriminator: 1)
!2645 = !DILocation(line: 689, column: 25, scope: !2646)
!2646 = !DILexicalBlockFile(scope: !2640, file: !267, discriminator: 2)
!2647 = !DILocation(line: 689, column: 25, scope: !2648)
!2648 = !DILexicalBlockFile(scope: !2641, file: !267, discriminator: 3)
!2649 = !DILocation(line: 691, column: 23, scope: !2642)
!2650 = !DILocation(line: 692, column: 35, scope: !2651)
!2651 = distinct !DILexicalBlock(scope: !2557, file: !267, line: 692, column: 25)
!2652 = !DILocation(line: 692, column: 30, scope: !2651)
!2653 = !DILocation(line: 692, column: 25, scope: !2557)
!2654 = !DILocation(line: 694, column: 21, scope: !2655)
!2655 = !DILexicalBlockFile(scope: !2656, file: !267, discriminator: 1)
!2656 = distinct !DILexicalBlock(scope: !2657, file: !267, line: 694, column: 21)
!2657 = distinct !DILexicalBlock(scope: !2557, file: !267, line: 694, column: 21)
!2658 = !DILocation(line: 694, column: 21, scope: !2659)
!2659 = !DILexicalBlockFile(scope: !2656, file: !267, discriminator: 2)
!2660 = !DILocation(line: 694, column: 21, scope: !2661)
!2661 = !DILexicalBlockFile(scope: !2662, file: !267, discriminator: 4)
!2662 = distinct !DILexicalBlock(scope: !2663, file: !267, line: 694, column: 21)
!2663 = distinct !DILexicalBlock(scope: !2664, file: !267, line: 694, column: 21)
!2664 = distinct !DILexicalBlock(scope: !2656, file: !267, line: 694, column: 21)
!2665 = !DILocation(line: 694, column: 21, scope: !2666)
!2666 = !DILexicalBlockFile(scope: !2663, file: !267, discriminator: 4)
!2667 = !DILocation(line: 694, column: 21, scope: !2668)
!2668 = !DILexicalBlockFile(scope: !2662, file: !267, discriminator: 5)
!2669 = !DILocation(line: 694, column: 21, scope: !2670)
!2670 = !DILexicalBlockFile(scope: !2663, file: !267, discriminator: 6)
!2671 = !DILocation(line: 694, column: 21, scope: !2672)
!2672 = !DILexicalBlockFile(scope: !2673, file: !267, discriminator: 9)
!2673 = distinct !DILexicalBlock(scope: !2674, file: !267, line: 694, column: 21)
!2674 = distinct !DILexicalBlock(scope: !2664, file: !267, line: 694, column: 21)
!2675 = !DILocation(line: 694, column: 21, scope: !2676)
!2676 = !DILexicalBlockFile(scope: !2674, file: !267, discriminator: 9)
!2677 = !DILocation(line: 694, column: 21, scope: !2678)
!2678 = !DILexicalBlockFile(scope: !2673, file: !267, discriminator: 10)
!2679 = !DILocation(line: 694, column: 21, scope: !2680)
!2680 = !DILexicalBlockFile(scope: !2674, file: !267, discriminator: 11)
!2681 = !DILocation(line: 694, column: 21, scope: !2682)
!2682 = !DILexicalBlockFile(scope: !2664, file: !267, discriminator: 13)
!2683 = !DILocation(line: 695, column: 21, scope: !2684)
!2684 = !DILexicalBlockFile(scope: !2685, file: !267, discriminator: 1)
!2685 = distinct !DILexicalBlock(scope: !2686, file: !267, line: 695, column: 21)
!2686 = distinct !DILexicalBlock(scope: !2557, file: !267, line: 695, column: 21)
!2687 = !DILocation(line: 695, column: 21, scope: !2688)
!2688 = !DILexicalBlockFile(scope: !2686, file: !267, discriminator: 1)
!2689 = !DILocation(line: 695, column: 21, scope: !2690)
!2690 = !DILexicalBlockFile(scope: !2685, file: !267, discriminator: 2)
!2691 = !DILocation(line: 695, column: 21, scope: !2692)
!2692 = !DILexicalBlockFile(scope: !2686, file: !267, discriminator: 3)
!2693 = !DILocation(line: 696, column: 25, scope: !2557)
!2694 = !DILocation(line: 678, column: 17, scope: !2695)
!2695 = !DILexicalBlockFile(scope: !2558, file: !267, discriminator: 1)
!2696 = distinct !{!2696, !2697, !2698}
!2697 = !DILocation(line: 678, column: 17, scope: !2559)
!2698 = !DILocation(line: 697, column: 19, scope: !2559)
!2699 = !DILocation(line: 704, column: 34, scope: !2700)
!2700 = distinct !DILexicalBlock(scope: !2102, file: !267, line: 704, column: 11)
!2701 = !DILocation(line: 706, column: 14, scope: !2700)
!2702 = !DILocation(line: 707, column: 14, scope: !2700)
!2703 = !DILocation(line: 707, column: 35, scope: !2704)
!2704 = !DILexicalBlockFile(scope: !2700, file: !267, discriminator: 1)
!2705 = !DILocation(line: 707, column: 17, scope: !2704)
!2706 = !DILocation(line: 707, column: 53, scope: !2704)
!2707 = !DILocation(line: 707, column: 47, scope: !2704)
!2708 = !DILocation(line: 707, column: 65, scope: !2704)
!2709 = !DILocation(line: 708, column: 15, scope: !2704)
!2710 = !DILocation(line: 708, column: 11, scope: !2700)
!2711 = !DILocation(line: 704, column: 11, scope: !2712)
!2712 = !DILexicalBlockFile(scope: !2102, file: !267, discriminator: 2)
!2713 = !DILocation(line: 712, column: 7, scope: !2714)
!2714 = !DILexicalBlockFile(scope: !2715, file: !267, discriminator: 1)
!2715 = distinct !DILexicalBlock(scope: !2102, file: !267, line: 712, column: 7)
!2716 = !DILocation(line: 712, column: 7, scope: !2717)
!2717 = !DILexicalBlockFile(scope: !2718, file: !267, discriminator: 4)
!2718 = distinct !DILexicalBlock(scope: !2715, file: !267, line: 712, column: 7)
!2719 = !DILocation(line: 712, column: 7, scope: !2720)
!2720 = !DILexicalBlockFile(scope: !2718, file: !267, discriminator: 3)
!2721 = !DILocation(line: 712, column: 7, scope: !2722)
!2722 = !DILexicalBlockFile(scope: !2723, file: !267, discriminator: 6)
!2723 = distinct !DILexicalBlock(scope: !2724, file: !267, line: 712, column: 7)
!2724 = distinct !DILexicalBlock(scope: !2725, file: !267, line: 712, column: 7)
!2725 = distinct !DILexicalBlock(scope: !2718, file: !267, line: 712, column: 7)
!2726 = !DILocation(line: 712, column: 7, scope: !2727)
!2727 = !DILexicalBlockFile(scope: !2724, file: !267, discriminator: 6)
!2728 = !DILocation(line: 712, column: 7, scope: !2729)
!2729 = !DILexicalBlockFile(scope: !2723, file: !267, discriminator: 7)
!2730 = !DILocation(line: 712, column: 7, scope: !2731)
!2731 = !DILexicalBlockFile(scope: !2724, file: !267, discriminator: 8)
!2732 = !DILocation(line: 712, column: 7, scope: !2733)
!2733 = !DILexicalBlockFile(scope: !2734, file: !267, discriminator: 11)
!2734 = distinct !DILexicalBlock(scope: !2735, file: !267, line: 712, column: 7)
!2735 = distinct !DILexicalBlock(scope: !2725, file: !267, line: 712, column: 7)
!2736 = !DILocation(line: 712, column: 7, scope: !2737)
!2737 = !DILexicalBlockFile(scope: !2735, file: !267, discriminator: 11)
!2738 = !DILocation(line: 712, column: 7, scope: !2739)
!2739 = !DILexicalBlockFile(scope: !2734, file: !267, discriminator: 12)
!2740 = !DILocation(line: 712, column: 7, scope: !2741)
!2741 = !DILexicalBlockFile(scope: !2735, file: !267, discriminator: 13)
!2742 = !DILocation(line: 712, column: 7, scope: !2743)
!2743 = !DILexicalBlockFile(scope: !2744, file: !267, discriminator: 16)
!2744 = distinct !DILexicalBlock(scope: !2745, file: !267, line: 712, column: 7)
!2745 = distinct !DILexicalBlock(scope: !2725, file: !267, line: 712, column: 7)
!2746 = !DILocation(line: 712, column: 7, scope: !2747)
!2747 = !DILexicalBlockFile(scope: !2745, file: !267, discriminator: 16)
!2748 = !DILocation(line: 712, column: 7, scope: !2749)
!2749 = !DILexicalBlockFile(scope: !2744, file: !267, discriminator: 17)
!2750 = !DILocation(line: 712, column: 7, scope: !2751)
!2751 = !DILexicalBlockFile(scope: !2745, file: !267, discriminator: 18)
!2752 = !DILocation(line: 712, column: 7, scope: !2753)
!2753 = !DILexicalBlockFile(scope: !2725, file: !267, discriminator: 20)
!2754 = !DILocation(line: 712, column: 7, scope: !2755)
!2755 = !DILexicalBlockFile(scope: !2756, file: !267, discriminator: 22)
!2756 = distinct !DILexicalBlock(scope: !2757, file: !267, line: 712, column: 7)
!2757 = distinct !DILexicalBlock(scope: !2715, file: !267, line: 712, column: 7)
!2758 = !DILocation(line: 712, column: 7, scope: !2759)
!2759 = !DILexicalBlockFile(scope: !2757, file: !267, discriminator: 22)
!2760 = !DILocation(line: 712, column: 7, scope: !2761)
!2761 = !DILexicalBlockFile(scope: !2756, file: !267, discriminator: 23)
!2762 = !DILocation(line: 712, column: 7, scope: !2763)
!2763 = !DILexicalBlockFile(scope: !2757, file: !267, discriminator: 24)
!2764 = !DILocation(line: 715, column: 7, scope: !2765)
!2765 = !DILexicalBlockFile(scope: !2766, file: !267, discriminator: 1)
!2766 = distinct !DILexicalBlock(scope: !2767, file: !267, line: 715, column: 7)
!2767 = distinct !DILexicalBlock(scope: !2102, file: !267, line: 715, column: 7)
!2768 = !DILocation(line: 715, column: 7, scope: !2769)
!2769 = !DILexicalBlockFile(scope: !2766, file: !267, discriminator: 2)
!2770 = !DILocation(line: 715, column: 7, scope: !2771)
!2771 = !DILexicalBlockFile(scope: !2772, file: !267, discriminator: 4)
!2772 = distinct !DILexicalBlock(scope: !2773, file: !267, line: 715, column: 7)
!2773 = distinct !DILexicalBlock(scope: !2774, file: !267, line: 715, column: 7)
!2774 = distinct !DILexicalBlock(scope: !2766, file: !267, line: 715, column: 7)
!2775 = !DILocation(line: 715, column: 7, scope: !2776)
!2776 = !DILexicalBlockFile(scope: !2773, file: !267, discriminator: 4)
!2777 = !DILocation(line: 715, column: 7, scope: !2778)
!2778 = !DILexicalBlockFile(scope: !2772, file: !267, discriminator: 5)
!2779 = !DILocation(line: 715, column: 7, scope: !2780)
!2780 = !DILexicalBlockFile(scope: !2773, file: !267, discriminator: 6)
!2781 = !DILocation(line: 715, column: 7, scope: !2782)
!2782 = !DILexicalBlockFile(scope: !2783, file: !267, discriminator: 9)
!2783 = distinct !DILexicalBlock(scope: !2784, file: !267, line: 715, column: 7)
!2784 = distinct !DILexicalBlock(scope: !2774, file: !267, line: 715, column: 7)
!2785 = !DILocation(line: 715, column: 7, scope: !2786)
!2786 = !DILexicalBlockFile(scope: !2784, file: !267, discriminator: 9)
!2787 = !DILocation(line: 715, column: 7, scope: !2788)
!2788 = !DILexicalBlockFile(scope: !2783, file: !267, discriminator: 10)
!2789 = !DILocation(line: 715, column: 7, scope: !2790)
!2790 = !DILexicalBlockFile(scope: !2784, file: !267, discriminator: 11)
!2791 = !DILocation(line: 715, column: 7, scope: !2792)
!2792 = !DILexicalBlockFile(scope: !2774, file: !267, discriminator: 13)
!2793 = !DILocation(line: 716, column: 7, scope: !2794)
!2794 = !DILexicalBlockFile(scope: !2795, file: !267, discriminator: 1)
!2795 = distinct !DILexicalBlock(scope: !2796, file: !267, line: 716, column: 7)
!2796 = distinct !DILexicalBlock(scope: !2102, file: !267, line: 716, column: 7)
!2797 = !DILocation(line: 716, column: 7, scope: !2798)
!2798 = !DILexicalBlockFile(scope: !2796, file: !267, discriminator: 1)
!2799 = !DILocation(line: 716, column: 7, scope: !2800)
!2800 = !DILexicalBlockFile(scope: !2795, file: !267, discriminator: 2)
!2801 = !DILocation(line: 716, column: 7, scope: !2802)
!2802 = !DILexicalBlockFile(scope: !2796, file: !267, discriminator: 3)
!2803 = !DILocation(line: 718, column: 13, scope: !2804)
!2804 = distinct !DILexicalBlock(scope: !2102, file: !267, line: 718, column: 11)
!2805 = !DILocation(line: 718, column: 11, scope: !2102)
!2806 = !DILocation(line: 720, column: 5, scope: !2103)
!2807 = !DILocation(line: 392, column: 75, scope: !2808)
!2808 = !DILexicalBlockFile(scope: !2103, file: !267, discriminator: 5)
!2809 = !DILocation(line: 392, column: 3, scope: !2808)
!2810 = distinct !{!2810, !2811, !2812}
!2811 = !DILocation(line: 392, column: 3, scope: !2104)
!2812 = !DILocation(line: 720, column: 5, scope: !2104)
!2813 = !DILocation(line: 722, column: 11, scope: !2814)
!2814 = distinct !DILexicalBlock(scope: !2075, file: !267, line: 722, column: 7)
!2815 = !DILocation(line: 722, column: 16, scope: !2814)
!2816 = !DILocation(line: 730, column: 51, scope: !2817)
!2817 = distinct !DILexicalBlock(scope: !2075, file: !267, line: 730, column: 7)
!2818 = !DILocation(line: 731, column: 10, scope: !2819)
!2819 = !DILexicalBlockFile(scope: !2817, file: !267, discriminator: 1)
!2820 = !DILocation(line: 733, column: 11, scope: !2821)
!2821 = distinct !DILexicalBlock(scope: !2822, file: !267, line: 733, column: 11)
!2822 = distinct !DILexicalBlock(scope: !2817, file: !267, line: 732, column: 5)
!2823 = !DILocation(line: 733, column: 11, scope: !2822)
!2824 = !DILocation(line: 734, column: 16, scope: !2821)
!2825 = !DILocation(line: 734, column: 9, scope: !2821)
!2826 = !DILocation(line: 738, column: 18, scope: !2827)
!2827 = distinct !DILexicalBlock(scope: !2821, file: !267, line: 738, column: 16)
!2828 = !DILocation(line: 738, column: 32, scope: !2829)
!2829 = !DILexicalBlockFile(scope: !2827, file: !267, discriminator: 1)
!2830 = !DILocation(line: 738, column: 29, scope: !2827)
!2831 = !DILocation(line: 747, column: 7, scope: !2832)
!2832 = distinct !DILexicalBlock(scope: !2075, file: !267, line: 747, column: 7)
!2833 = !DILocation(line: 747, column: 20, scope: !2832)
!2834 = !DILocation(line: 748, column: 12, scope: !2835)
!2835 = !DILexicalBlockFile(scope: !2836, file: !267, discriminator: 1)
!2836 = distinct !DILexicalBlock(scope: !2837, file: !267, line: 748, column: 5)
!2837 = distinct !DILexicalBlock(scope: !2832, file: !267, line: 748, column: 5)
!2838 = !DILocation(line: 748, column: 5, scope: !2839)
!2839 = !DILexicalBlockFile(scope: !2837, file: !267, discriminator: 1)
!2840 = !DILocation(line: 749, column: 7, scope: !2841)
!2841 = !DILexicalBlockFile(scope: !2842, file: !267, discriminator: 1)
!2842 = distinct !DILexicalBlock(scope: !2843, file: !267, line: 749, column: 7)
!2843 = distinct !DILexicalBlock(scope: !2836, file: !267, line: 749, column: 7)
!2844 = !DILocation(line: 749, column: 7, scope: !2845)
!2845 = !DILexicalBlockFile(scope: !2843, file: !267, discriminator: 1)
!2846 = !DILocation(line: 749, column: 7, scope: !2847)
!2847 = !DILexicalBlockFile(scope: !2842, file: !267, discriminator: 2)
!2848 = !DILocation(line: 749, column: 7, scope: !2849)
!2849 = !DILexicalBlockFile(scope: !2843, file: !267, discriminator: 3)
!2850 = !DILocation(line: 748, column: 39, scope: !2851)
!2851 = !DILexicalBlockFile(scope: !2836, file: !267, discriminator: 2)
!2852 = distinct !{!2852, !2853, !2854}
!2853 = !DILocation(line: 748, column: 5, scope: !2837)
!2854 = !DILocation(line: 749, column: 7, scope: !2837)
!2855 = !DILocation(line: 751, column: 11, scope: !2856)
!2856 = distinct !DILexicalBlock(scope: !2075, file: !267, line: 751, column: 7)
!2857 = !DILocation(line: 751, column: 7, scope: !2075)
!2858 = !DILocation(line: 752, column: 5, scope: !2856)
!2859 = !DILocation(line: 752, column: 17, scope: !2856)
!2860 = !DILocation(line: 758, column: 21, scope: !2861)
!2861 = distinct !DILexicalBlock(scope: !2075, file: !267, line: 758, column: 7)
!2862 = !DILocation(line: 758, column: 54, scope: !2863)
!2863 = !DILexicalBlockFile(scope: !2861, file: !267, discriminator: 1)
!2864 = !DILocation(line: 758, column: 51, scope: !2861)
!2865 = !DILocation(line: 762, column: 42, scope: !2075)
!2866 = !DILocation(line: 760, column: 10, scope: !2075)
!2867 = !DILocation(line: 760, column: 3, scope: !2075)
!2868 = !DILocation(line: 764, column: 1, scope: !2075)
!2869 = distinct !DISubprogram(name: "gettext_quote", scope: !267, file: !267, line: 199, type: !2870, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !239, variables: !2872)
!2870 = !DISubroutineType(types: !2871)
!2871 = !{!43, !43, !5}
!2872 = !{!2873, !2874, !2875, !2876}
!2873 = !DILocalVariable(name: "msgid", arg: 1, scope: !2869, file: !267, line: 199, type: !43)
!2874 = !DILocalVariable(name: "s", arg: 2, scope: !2869, file: !267, line: 199, type: !5)
!2875 = !DILocalVariable(name: "translation", scope: !2869, file: !267, line: 201, type: !43)
!2876 = !DILocalVariable(name: "locale_code", scope: !2869, file: !267, line: 202, type: !43)
!2877 = !DILocation(line: 199, column: 28, scope: !2869)
!2878 = !DILocation(line: 199, column: 54, scope: !2869)
!2879 = !DILocation(line: 201, column: 29, scope: !2869)
!2880 = !DILocation(line: 201, column: 15, scope: !2869)
!2881 = !DILocation(line: 204, column: 19, scope: !2882)
!2882 = distinct !DILexicalBlock(scope: !2869, file: !267, line: 204, column: 7)
!2883 = !DILocation(line: 204, column: 7, scope: !2869)
!2884 = !DILocation(line: 225, column: 17, scope: !2869)
!2885 = !DILocation(line: 202, column: 15, scope: !2869)
!2886 = !DILocalVariable(name: "s2", arg: 2, scope: !2887, file: !2888, line: 160, type: !43)
!2887 = distinct !DISubprogram(name: "strcaseeq0", scope: !2888, file: !2888, line: 160, type: !2889, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !239, variables: !2891)
!2888 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2889 = !DISubroutineType(types: !2890)
!2890 = !{!140, !43, !43, !45, !45, !45, !45, !45, !45, !45, !45, !45}
!2891 = !{!2892, !2886, !2893, !2894, !2895, !2896, !2897, !2898, !2899, !2900, !2901}
!2892 = !DILocalVariable(name: "s1", arg: 1, scope: !2887, file: !2888, line: 160, type: !43)
!2893 = !DILocalVariable(name: "s20", arg: 3, scope: !2887, file: !2888, line: 160, type: !45)
!2894 = !DILocalVariable(name: "s21", arg: 4, scope: !2887, file: !2888, line: 160, type: !45)
!2895 = !DILocalVariable(name: "s22", arg: 5, scope: !2887, file: !2888, line: 160, type: !45)
!2896 = !DILocalVariable(name: "s23", arg: 6, scope: !2887, file: !2888, line: 160, type: !45)
!2897 = !DILocalVariable(name: "s24", arg: 7, scope: !2887, file: !2888, line: 160, type: !45)
!2898 = !DILocalVariable(name: "s25", arg: 8, scope: !2887, file: !2888, line: 160, type: !45)
!2899 = !DILocalVariable(name: "s26", arg: 9, scope: !2887, file: !2888, line: 160, type: !45)
!2900 = !DILocalVariable(name: "s27", arg: 10, scope: !2887, file: !2888, line: 160, type: !45)
!2901 = !DILocalVariable(name: "s28", arg: 11, scope: !2887, file: !2888, line: 160, type: !45)
!2902 = !DILocation(line: 160, column: 41, scope: !2887, inlinedAt: !2903)
!2903 = distinct !DILocation(line: 226, column: 7, scope: !2904)
!2904 = distinct !DILexicalBlock(scope: !2869, file: !267, line: 226, column: 7)
!2905 = !DILocation(line: 160, column: 120, scope: !2887, inlinedAt: !2903)
!2906 = !DILocation(line: 160, column: 130, scope: !2887, inlinedAt: !2903)
!2907 = !DILocation(line: 162, column: 7, scope: !2908, inlinedAt: !2903)
!2908 = !DILexicalBlockFile(scope: !2909, file: !2888, discriminator: 1)
!2909 = distinct !DILexicalBlock(scope: !2887, file: !2888, line: 162, column: 7)
!2910 = !DILocalVariable(name: "s2", arg: 2, scope: !2911, file: !2888, line: 146, type: !43)
!2911 = distinct !DISubprogram(name: "strcaseeq1", scope: !2888, file: !2888, line: 146, type: !2912, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !239, variables: !2914)
!2912 = !DISubroutineType(types: !2913)
!2913 = !{!140, !43, !43, !45, !45, !45, !45, !45, !45, !45, !45}
!2914 = !{!2915, !2910, !2916, !2917, !2918, !2919, !2920, !2921, !2922, !2923}
!2915 = !DILocalVariable(name: "s1", arg: 1, scope: !2911, file: !2888, line: 146, type: !43)
!2916 = !DILocalVariable(name: "s21", arg: 3, scope: !2911, file: !2888, line: 146, type: !45)
!2917 = !DILocalVariable(name: "s22", arg: 4, scope: !2911, file: !2888, line: 146, type: !45)
!2918 = !DILocalVariable(name: "s23", arg: 5, scope: !2911, file: !2888, line: 146, type: !45)
!2919 = !DILocalVariable(name: "s24", arg: 6, scope: !2911, file: !2888, line: 146, type: !45)
!2920 = !DILocalVariable(name: "s25", arg: 7, scope: !2911, file: !2888, line: 146, type: !45)
!2921 = !DILocalVariable(name: "s26", arg: 8, scope: !2911, file: !2888, line: 146, type: !45)
!2922 = !DILocalVariable(name: "s27", arg: 9, scope: !2911, file: !2888, line: 146, type: !45)
!2923 = !DILocalVariable(name: "s28", arg: 10, scope: !2911, file: !2888, line: 146, type: !45)
!2924 = !DILocation(line: 146, column: 41, scope: !2911, inlinedAt: !2925)
!2925 = distinct !DILocation(line: 167, column: 16, scope: !2926, inlinedAt: !2903)
!2926 = distinct !DILexicalBlock(scope: !2927, file: !2888, line: 164, column: 11)
!2927 = distinct !DILexicalBlock(scope: !2909, file: !2888, line: 163, column: 5)
!2928 = !DILocation(line: 146, column: 110, scope: !2911, inlinedAt: !2925)
!2929 = !DILocation(line: 146, column: 120, scope: !2911, inlinedAt: !2925)
!2930 = !DILocation(line: 148, column: 7, scope: !2931, inlinedAt: !2925)
!2931 = !DILexicalBlockFile(scope: !2932, file: !2888, discriminator: 1)
!2932 = distinct !DILexicalBlock(scope: !2911, file: !2888, line: 148, column: 7)
!2933 = !DILocalVariable(name: "s2", arg: 2, scope: !2934, file: !2888, line: 132, type: !43)
!2934 = distinct !DISubprogram(name: "strcaseeq2", scope: !2888, file: !2888, line: 132, type: !2935, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !239, variables: !2937)
!2935 = !DISubroutineType(types: !2936)
!2936 = !{!140, !43, !43, !45, !45, !45, !45, !45, !45, !45}
!2937 = !{!2938, !2933, !2939, !2940, !2941, !2942, !2943, !2944, !2945}
!2938 = !DILocalVariable(name: "s1", arg: 1, scope: !2934, file: !2888, line: 132, type: !43)
!2939 = !DILocalVariable(name: "s22", arg: 3, scope: !2934, file: !2888, line: 132, type: !45)
!2940 = !DILocalVariable(name: "s23", arg: 4, scope: !2934, file: !2888, line: 132, type: !45)
!2941 = !DILocalVariable(name: "s24", arg: 5, scope: !2934, file: !2888, line: 132, type: !45)
!2942 = !DILocalVariable(name: "s25", arg: 6, scope: !2934, file: !2888, line: 132, type: !45)
!2943 = !DILocalVariable(name: "s26", arg: 7, scope: !2934, file: !2888, line: 132, type: !45)
!2944 = !DILocalVariable(name: "s27", arg: 8, scope: !2934, file: !2888, line: 132, type: !45)
!2945 = !DILocalVariable(name: "s28", arg: 9, scope: !2934, file: !2888, line: 132, type: !45)
!2946 = !DILocation(line: 132, column: 41, scope: !2934, inlinedAt: !2947)
!2947 = distinct !DILocation(line: 153, column: 16, scope: !2948, inlinedAt: !2925)
!2948 = distinct !DILexicalBlock(scope: !2949, file: !2888, line: 150, column: 11)
!2949 = distinct !DILexicalBlock(scope: !2932, file: !2888, line: 149, column: 5)
!2950 = !DILocation(line: 132, column: 100, scope: !2934, inlinedAt: !2947)
!2951 = !DILocation(line: 132, column: 110, scope: !2934, inlinedAt: !2947)
!2952 = !DILocation(line: 134, column: 7, scope: !2953, inlinedAt: !2947)
!2953 = !DILexicalBlockFile(scope: !2954, file: !2888, discriminator: 1)
!2954 = distinct !DILexicalBlock(scope: !2934, file: !2888, line: 134, column: 7)
!2955 = !DILocalVariable(name: "s2", arg: 2, scope: !2956, file: !2888, line: 118, type: !43)
!2956 = distinct !DISubprogram(name: "strcaseeq3", scope: !2888, file: !2888, line: 118, type: !2957, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !239, variables: !2959)
!2957 = !DISubroutineType(types: !2958)
!2958 = !{!140, !43, !43, !45, !45, !45, !45, !45, !45}
!2959 = !{!2960, !2955, !2961, !2962, !2963, !2964, !2965, !2966}
!2960 = !DILocalVariable(name: "s1", arg: 1, scope: !2956, file: !2888, line: 118, type: !43)
!2961 = !DILocalVariable(name: "s23", arg: 3, scope: !2956, file: !2888, line: 118, type: !45)
!2962 = !DILocalVariable(name: "s24", arg: 4, scope: !2956, file: !2888, line: 118, type: !45)
!2963 = !DILocalVariable(name: "s25", arg: 5, scope: !2956, file: !2888, line: 118, type: !45)
!2964 = !DILocalVariable(name: "s26", arg: 6, scope: !2956, file: !2888, line: 118, type: !45)
!2965 = !DILocalVariable(name: "s27", arg: 7, scope: !2956, file: !2888, line: 118, type: !45)
!2966 = !DILocalVariable(name: "s28", arg: 8, scope: !2956, file: !2888, line: 118, type: !45)
!2967 = !DILocation(line: 118, column: 41, scope: !2956, inlinedAt: !2968)
!2968 = distinct !DILocation(line: 139, column: 16, scope: !2969, inlinedAt: !2947)
!2969 = distinct !DILexicalBlock(scope: !2970, file: !2888, line: 136, column: 11)
!2970 = distinct !DILexicalBlock(scope: !2954, file: !2888, line: 135, column: 5)
!2971 = !DILocation(line: 118, column: 90, scope: !2956, inlinedAt: !2968)
!2972 = !DILocation(line: 118, column: 100, scope: !2956, inlinedAt: !2968)
!2973 = !DILocation(line: 120, column: 7, scope: !2974, inlinedAt: !2968)
!2974 = !DILexicalBlockFile(scope: !2975, file: !2888, discriminator: 2)
!2975 = distinct !DILexicalBlock(scope: !2956, file: !2888, line: 120, column: 7)
!2976 = !DILocation(line: 120, column: 7, scope: !2977, inlinedAt: !2968)
!2977 = !DILexicalBlockFile(scope: !2956, file: !2888, discriminator: 2)
!2978 = !DILocalVariable(name: "s2", arg: 2, scope: !2979, file: !2888, line: 104, type: !43)
!2979 = distinct !DISubprogram(name: "strcaseeq4", scope: !2888, file: !2888, line: 104, type: !2980, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !239, variables: !2982)
!2980 = !DISubroutineType(types: !2981)
!2981 = !{!140, !43, !43, !45, !45, !45, !45, !45}
!2982 = !{!2983, !2978, !2984, !2985, !2986, !2987, !2988}
!2983 = !DILocalVariable(name: "s1", arg: 1, scope: !2979, file: !2888, line: 104, type: !43)
!2984 = !DILocalVariable(name: "s24", arg: 3, scope: !2979, file: !2888, line: 104, type: !45)
!2985 = !DILocalVariable(name: "s25", arg: 4, scope: !2979, file: !2888, line: 104, type: !45)
!2986 = !DILocalVariable(name: "s26", arg: 5, scope: !2979, file: !2888, line: 104, type: !45)
!2987 = !DILocalVariable(name: "s27", arg: 6, scope: !2979, file: !2888, line: 104, type: !45)
!2988 = !DILocalVariable(name: "s28", arg: 7, scope: !2979, file: !2888, line: 104, type: !45)
!2989 = !DILocation(line: 104, column: 41, scope: !2979, inlinedAt: !2990)
!2990 = distinct !DILocation(line: 125, column: 16, scope: !2991, inlinedAt: !2968)
!2991 = distinct !DILexicalBlock(scope: !2992, file: !2888, line: 122, column: 11)
!2992 = distinct !DILexicalBlock(scope: !2975, file: !2888, line: 121, column: 5)
!2993 = !DILocation(line: 104, column: 80, scope: !2979, inlinedAt: !2990)
!2994 = !DILocation(line: 104, column: 90, scope: !2979, inlinedAt: !2990)
!2995 = !DILocation(line: 106, column: 7, scope: !2996, inlinedAt: !2990)
!2996 = !DILexicalBlockFile(scope: !2997, file: !2888, discriminator: 2)
!2997 = distinct !DILexicalBlock(scope: !2979, file: !2888, line: 106, column: 7)
!2998 = !DILocation(line: 106, column: 7, scope: !2999, inlinedAt: !2990)
!2999 = !DILexicalBlockFile(scope: !2979, file: !2888, discriminator: 2)
!3000 = !DILocalVariable(name: "s2", arg: 2, scope: !3001, file: !2888, line: 90, type: !43)
!3001 = distinct !DISubprogram(name: "strcaseeq5", scope: !2888, file: !2888, line: 90, type: !3002, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !239, variables: !3004)
!3002 = !DISubroutineType(types: !3003)
!3003 = !{!140, !43, !43, !45, !45, !45, !45}
!3004 = !{!3005, !3000, !3006, !3007, !3008, !3009}
!3005 = !DILocalVariable(name: "s1", arg: 1, scope: !3001, file: !2888, line: 90, type: !43)
!3006 = !DILocalVariable(name: "s25", arg: 3, scope: !3001, file: !2888, line: 90, type: !45)
!3007 = !DILocalVariable(name: "s26", arg: 4, scope: !3001, file: !2888, line: 90, type: !45)
!3008 = !DILocalVariable(name: "s27", arg: 5, scope: !3001, file: !2888, line: 90, type: !45)
!3009 = !DILocalVariable(name: "s28", arg: 6, scope: !3001, file: !2888, line: 90, type: !45)
!3010 = !DILocation(line: 90, column: 41, scope: !3001, inlinedAt: !3011)
!3011 = distinct !DILocation(line: 111, column: 16, scope: !3012, inlinedAt: !2990)
!3012 = distinct !DILexicalBlock(scope: !3013, file: !2888, line: 108, column: 11)
!3013 = distinct !DILexicalBlock(scope: !2997, file: !2888, line: 107, column: 5)
!3014 = !DILocation(line: 90, column: 70, scope: !3001, inlinedAt: !3011)
!3015 = !DILocation(line: 90, column: 80, scope: !3001, inlinedAt: !3011)
!3016 = !DILocation(line: 92, column: 7, scope: !3017, inlinedAt: !3011)
!3017 = !DILexicalBlockFile(scope: !3018, file: !2888, discriminator: 2)
!3018 = distinct !DILexicalBlock(scope: !3001, file: !2888, line: 92, column: 7)
!3019 = !DILocation(line: 92, column: 7, scope: !3020, inlinedAt: !3011)
!3020 = !DILexicalBlockFile(scope: !3001, file: !2888, discriminator: 2)
!3021 = !DILocation(line: 227, column: 12, scope: !2904)
!3022 = !DILocation(line: 227, column: 21, scope: !2904)
!3023 = !DILocation(line: 227, column: 5, scope: !2904)
!3024 = !DILocation(line: 146, column: 41, scope: !2911, inlinedAt: !3025)
!3025 = distinct !DILocation(line: 167, column: 16, scope: !2926, inlinedAt: !3026)
!3026 = distinct !DILocation(line: 228, column: 7, scope: !3027)
!3027 = distinct !DILexicalBlock(scope: !2869, file: !267, line: 228, column: 7)
!3028 = !DILocation(line: 146, column: 110, scope: !2911, inlinedAt: !3025)
!3029 = !DILocation(line: 146, column: 120, scope: !2911, inlinedAt: !3025)
!3030 = !DILocation(line: 148, column: 7, scope: !2931, inlinedAt: !3025)
!3031 = !DILocation(line: 132, column: 41, scope: !2934, inlinedAt: !3032)
!3032 = distinct !DILocation(line: 153, column: 16, scope: !2948, inlinedAt: !3025)
!3033 = !DILocation(line: 132, column: 100, scope: !2934, inlinedAt: !3032)
!3034 = !DILocation(line: 132, column: 110, scope: !2934, inlinedAt: !3032)
!3035 = !DILocation(line: 134, column: 7, scope: !3036, inlinedAt: !3032)
!3036 = !DILexicalBlockFile(scope: !2954, file: !2888, discriminator: 2)
!3037 = !DILocation(line: 134, column: 7, scope: !3038, inlinedAt: !3032)
!3038 = !DILexicalBlockFile(scope: !2934, file: !2888, discriminator: 2)
!3039 = !DILocation(line: 118, column: 41, scope: !2956, inlinedAt: !3040)
!3040 = distinct !DILocation(line: 139, column: 16, scope: !2969, inlinedAt: !3032)
!3041 = !DILocation(line: 118, column: 90, scope: !2956, inlinedAt: !3040)
!3042 = !DILocation(line: 118, column: 100, scope: !2956, inlinedAt: !3040)
!3043 = !DILocation(line: 120, column: 7, scope: !2974, inlinedAt: !3040)
!3044 = !DILocation(line: 120, column: 7, scope: !2977, inlinedAt: !3040)
!3045 = !DILocation(line: 104, column: 41, scope: !2979, inlinedAt: !3046)
!3046 = distinct !DILocation(line: 125, column: 16, scope: !2991, inlinedAt: !3040)
!3047 = !DILocation(line: 104, column: 80, scope: !2979, inlinedAt: !3046)
!3048 = !DILocation(line: 104, column: 90, scope: !2979, inlinedAt: !3046)
!3049 = !DILocation(line: 106, column: 7, scope: !2996, inlinedAt: !3046)
!3050 = !DILocation(line: 106, column: 7, scope: !2999, inlinedAt: !3046)
!3051 = !DILocation(line: 90, column: 41, scope: !3001, inlinedAt: !3052)
!3052 = distinct !DILocation(line: 111, column: 16, scope: !3012, inlinedAt: !3046)
!3053 = !DILocation(line: 90, column: 70, scope: !3001, inlinedAt: !3052)
!3054 = !DILocation(line: 90, column: 80, scope: !3001, inlinedAt: !3052)
!3055 = !DILocation(line: 92, column: 7, scope: !3017, inlinedAt: !3052)
!3056 = !DILocation(line: 92, column: 7, scope: !3020, inlinedAt: !3052)
!3057 = !DILocalVariable(name: "s2", arg: 2, scope: !3058, file: !2888, line: 76, type: !43)
!3058 = distinct !DISubprogram(name: "strcaseeq6", scope: !2888, file: !2888, line: 76, type: !3059, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !239, variables: !3061)
!3059 = !DISubroutineType(types: !3060)
!3060 = !{!140, !43, !43, !45, !45, !45}
!3061 = !{!3062, !3057, !3063, !3064, !3065}
!3062 = !DILocalVariable(name: "s1", arg: 1, scope: !3058, file: !2888, line: 76, type: !43)
!3063 = !DILocalVariable(name: "s26", arg: 3, scope: !3058, file: !2888, line: 76, type: !45)
!3064 = !DILocalVariable(name: "s27", arg: 4, scope: !3058, file: !2888, line: 76, type: !45)
!3065 = !DILocalVariable(name: "s28", arg: 5, scope: !3058, file: !2888, line: 76, type: !45)
!3066 = !DILocation(line: 76, column: 41, scope: !3058, inlinedAt: !3067)
!3067 = distinct !DILocation(line: 97, column: 16, scope: !3068, inlinedAt: !3052)
!3068 = distinct !DILexicalBlock(scope: !3069, file: !2888, line: 94, column: 11)
!3069 = distinct !DILexicalBlock(scope: !3018, file: !2888, line: 93, column: 5)
!3070 = !DILocation(line: 76, column: 60, scope: !3058, inlinedAt: !3067)
!3071 = !DILocation(line: 76, column: 70, scope: !3058, inlinedAt: !3067)
!3072 = !DILocation(line: 78, column: 7, scope: !3073, inlinedAt: !3067)
!3073 = !DILexicalBlockFile(scope: !3074, file: !2888, discriminator: 2)
!3074 = distinct !DILexicalBlock(scope: !3058, file: !2888, line: 78, column: 7)
!3075 = !DILocation(line: 78, column: 7, scope: !3076, inlinedAt: !3067)
!3076 = !DILexicalBlockFile(scope: !3058, file: !2888, discriminator: 2)
!3077 = !DILocalVariable(name: "s2", arg: 2, scope: !3078, file: !2888, line: 62, type: !43)
!3078 = distinct !DISubprogram(name: "strcaseeq7", scope: !2888, file: !2888, line: 62, type: !3079, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !239, variables: !3081)
!3079 = !DISubroutineType(types: !3080)
!3080 = !{!140, !43, !43, !45, !45}
!3081 = !{!3082, !3077, !3083, !3084}
!3082 = !DILocalVariable(name: "s1", arg: 1, scope: !3078, file: !2888, line: 62, type: !43)
!3083 = !DILocalVariable(name: "s27", arg: 3, scope: !3078, file: !2888, line: 62, type: !45)
!3084 = !DILocalVariable(name: "s28", arg: 4, scope: !3078, file: !2888, line: 62, type: !45)
!3085 = !DILocation(line: 62, column: 41, scope: !3078, inlinedAt: !3086)
!3086 = distinct !DILocation(line: 83, column: 16, scope: !3087, inlinedAt: !3067)
!3087 = distinct !DILexicalBlock(scope: !3088, file: !2888, line: 80, column: 11)
!3088 = distinct !DILexicalBlock(scope: !3074, file: !2888, line: 79, column: 5)
!3089 = !DILocation(line: 62, column: 50, scope: !3078, inlinedAt: !3086)
!3090 = !DILocation(line: 62, column: 60, scope: !3078, inlinedAt: !3086)
!3091 = !DILocation(line: 64, column: 7, scope: !3092, inlinedAt: !3086)
!3092 = !DILexicalBlockFile(scope: !3093, file: !2888, discriminator: 2)
!3093 = distinct !DILexicalBlock(scope: !3078, file: !2888, line: 64, column: 7)
!3094 = !DILocation(line: 228, column: 7, scope: !2869)
!3095 = !DILocation(line: 229, column: 12, scope: !3027)
!3096 = !DILocation(line: 229, column: 21, scope: !3027)
!3097 = !DILocation(line: 229, column: 5, scope: !3027)
!3098 = !DILocation(line: 231, column: 13, scope: !2869)
!3099 = !DILocation(line: 231, column: 11, scope: !2869)
!3100 = !DILocation(line: 231, column: 3, scope: !2869)
!3101 = !DILocation(line: 232, column: 1, scope: !2869)
!3102 = distinct !DISubprogram(name: "quotearg_alloc", scope: !267, file: !267, line: 791, type: !3103, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !239, variables: !3105)
!3103 = !DISubroutineType(types: !3104)
!3104 = !{!46, !43, !35, !1943}
!3105 = !{!3106, !3107, !3108}
!3106 = !DILocalVariable(name: "arg", arg: 1, scope: !3102, file: !267, line: 791, type: !43)
!3107 = !DILocalVariable(name: "argsize", arg: 2, scope: !3102, file: !267, line: 791, type: !35)
!3108 = !DILocalVariable(name: "o", arg: 3, scope: !3102, file: !267, line: 792, type: !1943)
!3109 = !DILocation(line: 791, column: 29, scope: !3102)
!3110 = !DILocation(line: 791, column: 41, scope: !3102)
!3111 = !DILocation(line: 792, column: 47, scope: !3102)
!3112 = !DILocalVariable(name: "arg", arg: 1, scope: !3113, file: !267, line: 804, type: !43)
!3113 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !267, file: !267, line: 804, type: !3114, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !239, variables: !3116)
!3114 = !DISubroutineType(types: !3115)
!3115 = !{!46, !43, !35, !679, !1943}
!3116 = !{!3112, !3117, !3118, !3119, !3120, !3121, !3122, !3123, !3124}
!3117 = !DILocalVariable(name: "argsize", arg: 2, scope: !3113, file: !267, line: 804, type: !35)
!3118 = !DILocalVariable(name: "size", arg: 3, scope: !3113, file: !267, line: 804, type: !679)
!3119 = !DILocalVariable(name: "o", arg: 4, scope: !3113, file: !267, line: 805, type: !1943)
!3120 = !DILocalVariable(name: "p", scope: !3113, file: !267, line: 807, type: !1943)
!3121 = !DILocalVariable(name: "e", scope: !3113, file: !267, line: 808, type: !140)
!3122 = !DILocalVariable(name: "flags", scope: !3113, file: !267, line: 810, type: !140)
!3123 = !DILocalVariable(name: "bufsize", scope: !3113, file: !267, line: 811, type: !35)
!3124 = !DILocalVariable(name: "buf", scope: !3113, file: !267, line: 815, type: !46)
!3125 = !DILocation(line: 804, column: 33, scope: !3113, inlinedAt: !3126)
!3126 = distinct !DILocation(line: 794, column: 10, scope: !3102)
!3127 = !DILocation(line: 804, column: 45, scope: !3113, inlinedAt: !3126)
!3128 = !DILocation(line: 804, column: 62, scope: !3113, inlinedAt: !3126)
!3129 = !DILocation(line: 805, column: 51, scope: !3113, inlinedAt: !3126)
!3130 = !DILocation(line: 807, column: 37, scope: !3113, inlinedAt: !3126)
!3131 = !DILocation(line: 807, column: 33, scope: !3113, inlinedAt: !3126)
!3132 = !DILocation(line: 808, column: 11, scope: !3113, inlinedAt: !3126)
!3133 = !DILocation(line: 808, column: 7, scope: !3113, inlinedAt: !3126)
!3134 = !DILocation(line: 810, column: 18, scope: !3113, inlinedAt: !3126)
!3135 = !DILocation(line: 810, column: 24, scope: !3113, inlinedAt: !3126)
!3136 = !DILocation(line: 810, column: 7, scope: !3113, inlinedAt: !3126)
!3137 = !DILocation(line: 811, column: 69, scope: !3113, inlinedAt: !3126)
!3138 = !DILocation(line: 812, column: 53, scope: !3113, inlinedAt: !3126)
!3139 = !DILocation(line: 813, column: 49, scope: !3113, inlinedAt: !3126)
!3140 = !DILocation(line: 814, column: 49, scope: !3113, inlinedAt: !3126)
!3141 = !DILocation(line: 811, column: 20, scope: !3113, inlinedAt: !3126)
!3142 = !DILocation(line: 814, column: 62, scope: !3113, inlinedAt: !3126)
!3143 = !DILocation(line: 811, column: 10, scope: !3113, inlinedAt: !3126)
!3144 = !DILocalVariable(name: "n", arg: 1, scope: !3145, file: !675, line: 220, type: !35)
!3145 = distinct !DISubprogram(name: "xcharalloc", scope: !675, file: !675, line: 220, type: !3146, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !239, variables: !3148)
!3146 = !DISubroutineType(types: !3147)
!3147 = !{!46, !35}
!3148 = !{!3144}
!3149 = !DILocation(line: 220, column: 20, scope: !3145, inlinedAt: !3150)
!3150 = distinct !DILocation(line: 815, column: 15, scope: !3113, inlinedAt: !3126)
!3151 = !DILocation(line: 222, column: 10, scope: !3145, inlinedAt: !3150)
!3152 = !DILocation(line: 815, column: 9, scope: !3113, inlinedAt: !3126)
!3153 = !DILocation(line: 816, column: 60, scope: !3113, inlinedAt: !3126)
!3154 = !DILocation(line: 818, column: 32, scope: !3113, inlinedAt: !3126)
!3155 = !DILocation(line: 818, column: 47, scope: !3113, inlinedAt: !3126)
!3156 = !DILocation(line: 816, column: 3, scope: !3113, inlinedAt: !3126)
!3157 = !DILocation(line: 819, column: 9, scope: !3113, inlinedAt: !3126)
!3158 = !DILocation(line: 794, column: 3, scope: !3102)
!3159 = !DILocation(line: 804, column: 33, scope: !3113)
!3160 = !DILocation(line: 804, column: 45, scope: !3113)
!3161 = !DILocation(line: 804, column: 62, scope: !3113)
!3162 = !DILocation(line: 805, column: 51, scope: !3113)
!3163 = !DILocation(line: 807, column: 37, scope: !3113)
!3164 = !DILocation(line: 807, column: 33, scope: !3113)
!3165 = !DILocation(line: 808, column: 11, scope: !3113)
!3166 = !DILocation(line: 808, column: 7, scope: !3113)
!3167 = !DILocation(line: 810, column: 18, scope: !3113)
!3168 = !DILocation(line: 810, column: 27, scope: !3113)
!3169 = !DILocation(line: 810, column: 24, scope: !3113)
!3170 = !DILocation(line: 810, column: 7, scope: !3113)
!3171 = !DILocation(line: 811, column: 69, scope: !3113)
!3172 = !DILocation(line: 812, column: 53, scope: !3113)
!3173 = !DILocation(line: 813, column: 49, scope: !3113)
!3174 = !DILocation(line: 814, column: 49, scope: !3113)
!3175 = !DILocation(line: 811, column: 20, scope: !3113)
!3176 = !DILocation(line: 814, column: 62, scope: !3113)
!3177 = !DILocation(line: 811, column: 10, scope: !3113)
!3178 = !DILocation(line: 220, column: 20, scope: !3145, inlinedAt: !3179)
!3179 = distinct !DILocation(line: 815, column: 15, scope: !3113)
!3180 = !DILocation(line: 222, column: 10, scope: !3145, inlinedAt: !3179)
!3181 = !DILocation(line: 815, column: 9, scope: !3113)
!3182 = !DILocation(line: 816, column: 60, scope: !3113)
!3183 = !DILocation(line: 818, column: 32, scope: !3113)
!3184 = !DILocation(line: 818, column: 47, scope: !3113)
!3185 = !DILocation(line: 816, column: 3, scope: !3113)
!3186 = !DILocation(line: 819, column: 9, scope: !3113)
!3187 = !DILocation(line: 820, column: 7, scope: !3113)
!3188 = !DILocation(line: 821, column: 11, scope: !3189)
!3189 = distinct !DILexicalBlock(scope: !3113, file: !267, line: 820, column: 7)
!3190 = !DILocation(line: 821, column: 5, scope: !3189)
!3191 = !DILocation(line: 822, column: 3, scope: !3113)
!3192 = distinct !DISubprogram(name: "quotearg_free", scope: !267, file: !267, line: 840, type: !195, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !239, variables: !3193)
!3193 = !{!3194, !3195}
!3194 = !DILocalVariable(name: "sv", scope: !3192, file: !267, line: 842, type: !288)
!3195 = !DILocalVariable(name: "i", scope: !3192, file: !267, line: 843, type: !140)
!3196 = !DILocation(line: 842, column: 24, scope: !3192)
!3197 = !DILocation(line: 842, column: 19, scope: !3192)
!3198 = !DILocation(line: 843, column: 7, scope: !3192)
!3199 = !DILocation(line: 844, column: 19, scope: !3200)
!3200 = !DILexicalBlockFile(scope: !3201, file: !267, discriminator: 1)
!3201 = distinct !DILexicalBlock(scope: !3202, file: !267, line: 844, column: 3)
!3202 = distinct !DILexicalBlock(scope: !3192, file: !267, line: 844, column: 3)
!3203 = !DILocation(line: 844, column: 17, scope: !3200)
!3204 = !DILocation(line: 844, column: 3, scope: !3205)
!3205 = !DILexicalBlockFile(scope: !3202, file: !267, discriminator: 1)
!3206 = !DILocation(line: 845, column: 17, scope: !3201)
!3207 = !{!3208, !739, i64 8}
!3208 = !{!"slotvec", !875, i64 0, !739, i64 8}
!3209 = !DILocation(line: 845, column: 5, scope: !3201)
!3210 = !DILocation(line: 844, column: 28, scope: !3211)
!3211 = !DILexicalBlockFile(scope: !3201, file: !267, discriminator: 2)
!3212 = distinct !{!3212, !3213, !3214}
!3213 = !DILocation(line: 844, column: 3, scope: !3202)
!3214 = !DILocation(line: 845, column: 20, scope: !3202)
!3215 = !DILocation(line: 846, column: 13, scope: !3216)
!3216 = distinct !DILexicalBlock(scope: !3192, file: !267, line: 846, column: 7)
!3217 = !DILocation(line: 846, column: 17, scope: !3216)
!3218 = !DILocation(line: 846, column: 7, scope: !3192)
!3219 = !DILocation(line: 848, column: 7, scope: !3220)
!3220 = distinct !DILexicalBlock(scope: !3216, file: !267, line: 847, column: 5)
!3221 = !DILocation(line: 849, column: 21, scope: !3220)
!3222 = !{!3208, !875, i64 0}
!3223 = !DILocation(line: 850, column: 20, scope: !3220)
!3224 = !DILocation(line: 851, column: 5, scope: !3220)
!3225 = !DILocation(line: 852, column: 10, scope: !3226)
!3226 = distinct !DILexicalBlock(scope: !3192, file: !267, line: 852, column: 7)
!3227 = !DILocation(line: 852, column: 7, scope: !3192)
!3228 = !DILocation(line: 854, column: 13, scope: !3229)
!3229 = distinct !DILexicalBlock(scope: !3226, file: !267, line: 853, column: 5)
!3230 = !DILocation(line: 854, column: 7, scope: !3229)
!3231 = !DILocation(line: 855, column: 15, scope: !3229)
!3232 = !DILocation(line: 856, column: 5, scope: !3229)
!3233 = !DILocation(line: 857, column: 10, scope: !3192)
!3234 = !DILocation(line: 858, column: 1, scope: !3192)
!3235 = distinct !DISubprogram(name: "quotearg_n", scope: !267, file: !267, line: 922, type: !3236, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !239, variables: !3238)
!3236 = !DISubroutineType(types: !3237)
!3237 = !{!46, !140, !43}
!3238 = !{!3239, !3240}
!3239 = !DILocalVariable(name: "n", arg: 1, scope: !3235, file: !267, line: 922, type: !140)
!3240 = !DILocalVariable(name: "arg", arg: 2, scope: !3235, file: !267, line: 922, type: !43)
!3241 = !DILocation(line: 922, column: 17, scope: !3235)
!3242 = !DILocation(line: 922, column: 32, scope: !3235)
!3243 = !DILocation(line: 924, column: 10, scope: !3235)
!3244 = !DILocation(line: 924, column: 3, scope: !3235)
!3245 = distinct !DISubprogram(name: "quotearg_n_options", scope: !267, file: !267, line: 869, type: !3246, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !239, variables: !3248)
!3246 = !DISubroutineType(types: !3247)
!3247 = !{!46, !140, !43, !35, !1943}
!3248 = !{!3249, !3250, !3251, !3252, !3253, !3254, !3255, !3258, !3260, !3261, !3262}
!3249 = !DILocalVariable(name: "n", arg: 1, scope: !3245, file: !267, line: 869, type: !140)
!3250 = !DILocalVariable(name: "arg", arg: 2, scope: !3245, file: !267, line: 869, type: !43)
!3251 = !DILocalVariable(name: "argsize", arg: 3, scope: !3245, file: !267, line: 869, type: !35)
!3252 = !DILocalVariable(name: "options", arg: 4, scope: !3245, file: !267, line: 870, type: !1943)
!3253 = !DILocalVariable(name: "e", scope: !3245, file: !267, line: 872, type: !140)
!3254 = !DILocalVariable(name: "sv", scope: !3245, file: !267, line: 874, type: !288)
!3255 = !DILocalVariable(name: "preallocated", scope: !3256, file: !267, line: 881, type: !112)
!3256 = distinct !DILexicalBlock(scope: !3257, file: !267, line: 880, column: 5)
!3257 = distinct !DILexicalBlock(scope: !3245, file: !267, line: 879, column: 7)
!3258 = !DILocalVariable(name: "size", scope: !3259, file: !267, line: 894, type: !35)
!3259 = distinct !DILexicalBlock(scope: !3245, file: !267, line: 893, column: 3)
!3260 = !DILocalVariable(name: "val", scope: !3259, file: !267, line: 895, type: !46)
!3261 = !DILocalVariable(name: "flags", scope: !3259, file: !267, line: 897, type: !140)
!3262 = !DILocalVariable(name: "qsize", scope: !3259, file: !267, line: 898, type: !35)
!3263 = !DILocation(line: 869, column: 25, scope: !3245)
!3264 = !DILocation(line: 869, column: 40, scope: !3245)
!3265 = !DILocation(line: 869, column: 52, scope: !3245)
!3266 = !DILocation(line: 870, column: 51, scope: !3245)
!3267 = !DILocation(line: 872, column: 11, scope: !3245)
!3268 = !DILocation(line: 872, column: 7, scope: !3245)
!3269 = !DILocation(line: 874, column: 24, scope: !3245)
!3270 = !DILocation(line: 874, column: 19, scope: !3245)
!3271 = !DILocation(line: 876, column: 9, scope: !3272)
!3272 = distinct !DILexicalBlock(scope: !3245, file: !267, line: 876, column: 7)
!3273 = !DILocation(line: 876, column: 7, scope: !3245)
!3274 = !DILocation(line: 877, column: 5, scope: !3272)
!3275 = !DILocation(line: 879, column: 7, scope: !3257)
!3276 = !DILocation(line: 879, column: 14, scope: !3257)
!3277 = !DILocation(line: 879, column: 7, scope: !3245)
!3278 = !DILocation(line: 881, column: 31, scope: !3256)
!3279 = !DILocation(line: 883, column: 67, scope: !3280)
!3280 = distinct !DILexicalBlock(scope: !3256, file: !267, line: 883, column: 11)
!3281 = !DILocation(line: 883, column: 11, scope: !3256)
!3282 = !DILocation(line: 884, column: 9, scope: !3280)
!3283 = !DILocation(line: 886, column: 32, scope: !3284)
!3284 = !DILexicalBlockFile(scope: !3256, file: !267, discriminator: 3)
!3285 = !DILocation(line: 886, column: 61, scope: !3284)
!3286 = !DILocation(line: 886, column: 58, scope: !3284)
!3287 = !DILocation(line: 886, column: 66, scope: !3284)
!3288 = !DILocation(line: 886, column: 22, scope: !3284)
!3289 = !DILocation(line: 886, column: 15, scope: !3284)
!3290 = !DILocation(line: 887, column: 11, scope: !3256)
!3291 = !DILocation(line: 888, column: 15, scope: !3292)
!3292 = distinct !DILexicalBlock(scope: !3256, file: !267, line: 887, column: 11)
!3293 = !{i64 0, i64 8, !874, i64 8, i64 8, !738}
!3294 = !DILocation(line: 888, column: 9, scope: !3292)
!3295 = !DILocation(line: 889, column: 20, scope: !3256)
!3296 = !DILocation(line: 889, column: 18, scope: !3256)
!3297 = !DILocation(line: 889, column: 7, scope: !3256)
!3298 = !DILocation(line: 889, column: 38, scope: !3256)
!3299 = !DILocation(line: 889, column: 31, scope: !3256)
!3300 = !DILocation(line: 889, column: 48, scope: !3256)
!3301 = !DILocation(line: 890, column: 14, scope: !3256)
!3302 = !DILocation(line: 891, column: 5, scope: !3256)
!3303 = !DILocation(line: 894, column: 19, scope: !3259)
!3304 = !DILocation(line: 894, column: 25, scope: !3259)
!3305 = !DILocation(line: 894, column: 12, scope: !3259)
!3306 = !DILocation(line: 895, column: 23, scope: !3259)
!3307 = !DILocation(line: 895, column: 11, scope: !3259)
!3308 = !DILocation(line: 897, column: 26, scope: !3259)
!3309 = !DILocation(line: 897, column: 32, scope: !3259)
!3310 = !DILocation(line: 897, column: 9, scope: !3259)
!3311 = !DILocation(line: 899, column: 55, scope: !3259)
!3312 = !DILocation(line: 900, column: 46, scope: !3259)
!3313 = !DILocation(line: 901, column: 55, scope: !3259)
!3314 = !DILocation(line: 902, column: 55, scope: !3259)
!3315 = !DILocation(line: 898, column: 20, scope: !3259)
!3316 = !DILocation(line: 898, column: 12, scope: !3259)
!3317 = !DILocation(line: 904, column: 14, scope: !3318)
!3318 = distinct !DILexicalBlock(scope: !3259, file: !267, line: 904, column: 9)
!3319 = !DILocation(line: 904, column: 9, scope: !3259)
!3320 = !DILocation(line: 906, column: 35, scope: !3321)
!3321 = distinct !DILexicalBlock(scope: !3318, file: !267, line: 905, column: 7)
!3322 = !DILocation(line: 906, column: 20, scope: !3321)
!3323 = !DILocation(line: 907, column: 17, scope: !3324)
!3324 = distinct !DILexicalBlock(scope: !3321, file: !267, line: 907, column: 13)
!3325 = !DILocation(line: 907, column: 13, scope: !3321)
!3326 = !DILocation(line: 908, column: 11, scope: !3324)
!3327 = !DILocation(line: 220, column: 20, scope: !3145, inlinedAt: !3328)
!3328 = distinct !DILocation(line: 909, column: 27, scope: !3321)
!3329 = !DILocation(line: 222, column: 10, scope: !3145, inlinedAt: !3328)
!3330 = !DILocation(line: 909, column: 19, scope: !3321)
!3331 = !DILocation(line: 910, column: 69, scope: !3321)
!3332 = !DILocation(line: 912, column: 44, scope: !3321)
!3333 = !DILocation(line: 913, column: 44, scope: !3321)
!3334 = !DILocation(line: 910, column: 9, scope: !3321)
!3335 = !DILocation(line: 914, column: 7, scope: !3321)
!3336 = !DILocation(line: 916, column: 11, scope: !3259)
!3337 = !DILocation(line: 917, column: 5, scope: !3259)
!3338 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !267, file: !267, line: 928, type: !3339, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !239, variables: !3341)
!3339 = !DISubroutineType(types: !3340)
!3340 = !{!46, !140, !43, !35}
!3341 = !{!3342, !3343, !3344}
!3342 = !DILocalVariable(name: "n", arg: 1, scope: !3338, file: !267, line: 928, type: !140)
!3343 = !DILocalVariable(name: "arg", arg: 2, scope: !3338, file: !267, line: 928, type: !43)
!3344 = !DILocalVariable(name: "argsize", arg: 3, scope: !3338, file: !267, line: 928, type: !35)
!3345 = !DILocation(line: 928, column: 21, scope: !3338)
!3346 = !DILocation(line: 928, column: 36, scope: !3338)
!3347 = !DILocation(line: 928, column: 48, scope: !3338)
!3348 = !DILocation(line: 930, column: 10, scope: !3338)
!3349 = !DILocation(line: 930, column: 3, scope: !3338)
!3350 = distinct !DISubprogram(name: "quotearg", scope: !267, file: !267, line: 934, type: !3351, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !239, variables: !3353)
!3351 = !DISubroutineType(types: !3352)
!3352 = !{!46, !43}
!3353 = !{!3354}
!3354 = !DILocalVariable(name: "arg", arg: 1, scope: !3350, file: !267, line: 934, type: !43)
!3355 = !DILocation(line: 934, column: 23, scope: !3350)
!3356 = !DILocation(line: 922, column: 17, scope: !3235, inlinedAt: !3357)
!3357 = distinct !DILocation(line: 936, column: 10, scope: !3350)
!3358 = !DILocation(line: 922, column: 32, scope: !3235, inlinedAt: !3357)
!3359 = !DILocation(line: 924, column: 10, scope: !3235, inlinedAt: !3357)
!3360 = !DILocation(line: 936, column: 3, scope: !3350)
!3361 = distinct !DISubprogram(name: "quotearg_mem", scope: !267, file: !267, line: 940, type: !3362, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !239, variables: !3364)
!3362 = !DISubroutineType(types: !3363)
!3363 = !{!46, !43, !35}
!3364 = !{!3365, !3366}
!3365 = !DILocalVariable(name: "arg", arg: 1, scope: !3361, file: !267, line: 940, type: !43)
!3366 = !DILocalVariable(name: "argsize", arg: 2, scope: !3361, file: !267, line: 940, type: !35)
!3367 = !DILocation(line: 940, column: 27, scope: !3361)
!3368 = !DILocation(line: 940, column: 39, scope: !3361)
!3369 = !DILocation(line: 928, column: 21, scope: !3338, inlinedAt: !3370)
!3370 = distinct !DILocation(line: 942, column: 10, scope: !3361)
!3371 = !DILocation(line: 928, column: 36, scope: !3338, inlinedAt: !3370)
!3372 = !DILocation(line: 928, column: 48, scope: !3338, inlinedAt: !3370)
!3373 = !DILocation(line: 930, column: 10, scope: !3338, inlinedAt: !3370)
!3374 = !DILocation(line: 942, column: 3, scope: !3361)
!3375 = distinct !DISubprogram(name: "quotearg_n_style", scope: !267, file: !267, line: 946, type: !3376, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !239, variables: !3378)
!3376 = !DISubroutineType(types: !3377)
!3377 = !{!46, !140, !5, !43}
!3378 = !{!3379, !3380, !3381, !3382}
!3379 = !DILocalVariable(name: "n", arg: 1, scope: !3375, file: !267, line: 946, type: !140)
!3380 = !DILocalVariable(name: "s", arg: 2, scope: !3375, file: !267, line: 946, type: !5)
!3381 = !DILocalVariable(name: "arg", arg: 3, scope: !3375, file: !267, line: 946, type: !43)
!3382 = !DILocalVariable(name: "o", scope: !3375, file: !267, line: 948, type: !1944)
!3383 = !DILocalVariable(name: "o", scope: !3384, file: !267, line: 187, type: !274)
!3384 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !267, file: !267, line: 185, type: !3385, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !239, variables: !3387)
!3385 = !DISubroutineType(types: !3386)
!3386 = !{!274, !5}
!3387 = !{!3388, !3383}
!3388 = !DILocalVariable(name: "style", arg: 1, scope: !3384, file: !267, line: 185, type: !5)
!3389 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!3390 = !DILocation(line: 187, column: 26, scope: !3384, inlinedAt: !3391)
!3391 = distinct !DILocation(line: 948, column: 36, scope: !3375)
!3392 = !DILocation(line: 946, column: 23, scope: !3375)
!3393 = !DILocation(line: 946, column: 45, scope: !3375)
!3394 = !DILocation(line: 946, column: 60, scope: !3375)
!3395 = !DILocation(line: 948, column: 3, scope: !3375)
!3396 = !DILocation(line: 948, column: 32, scope: !3375)
!3397 = !DILocation(line: 185, column: 48, scope: !3384, inlinedAt: !3391)
!3398 = !DILocation(line: 187, column: 3, scope: !3384, inlinedAt: !3391)
!3399 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!3400 = !DILocation(line: 188, column: 13, scope: !3401, inlinedAt: !3391)
!3401 = distinct !DILexicalBlock(scope: !3384, file: !267, line: 188, column: 7)
!3402 = !DILocation(line: 188, column: 7, scope: !3384, inlinedAt: !3391)
!3403 = !DILocation(line: 189, column: 5, scope: !3401, inlinedAt: !3391)
!3404 = !{!3405}
!3405 = distinct !{!3405, !3406, !"quoting_options_from_style: argument 0"}
!3406 = distinct !{!3406, !"quoting_options_from_style"}
!3407 = !DILocation(line: 191, column: 10, scope: !3384, inlinedAt: !3391)
!3408 = !DILocation(line: 192, column: 1, scope: !3384, inlinedAt: !3391)
!3409 = !DILocation(line: 949, column: 10, scope: !3375)
!3410 = !DILocation(line: 950, column: 1, scope: !3375)
!3411 = !DILocation(line: 949, column: 3, scope: !3375)
!3412 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !267, file: !267, line: 953, type: !3413, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !239, variables: !3415)
!3413 = !DISubroutineType(types: !3414)
!3414 = !{!46, !140, !5, !43, !35}
!3415 = !{!3416, !3417, !3418, !3419, !3420}
!3416 = !DILocalVariable(name: "n", arg: 1, scope: !3412, file: !267, line: 953, type: !140)
!3417 = !DILocalVariable(name: "s", arg: 2, scope: !3412, file: !267, line: 953, type: !5)
!3418 = !DILocalVariable(name: "arg", arg: 3, scope: !3412, file: !267, line: 954, type: !43)
!3419 = !DILocalVariable(name: "argsize", arg: 4, scope: !3412, file: !267, line: 954, type: !35)
!3420 = !DILocalVariable(name: "o", scope: !3412, file: !267, line: 956, type: !1944)
!3421 = !DILocation(line: 187, column: 26, scope: !3384, inlinedAt: !3422)
!3422 = distinct !DILocation(line: 956, column: 36, scope: !3412)
!3423 = !DILocation(line: 953, column: 27, scope: !3412)
!3424 = !DILocation(line: 953, column: 49, scope: !3412)
!3425 = !DILocation(line: 954, column: 35, scope: !3412)
!3426 = !DILocation(line: 954, column: 47, scope: !3412)
!3427 = !DILocation(line: 956, column: 3, scope: !3412)
!3428 = !DILocation(line: 956, column: 32, scope: !3412)
!3429 = !DILocation(line: 185, column: 48, scope: !3384, inlinedAt: !3422)
!3430 = !DILocation(line: 187, column: 3, scope: !3384, inlinedAt: !3422)
!3431 = !DILocation(line: 188, column: 13, scope: !3401, inlinedAt: !3422)
!3432 = !DILocation(line: 188, column: 7, scope: !3384, inlinedAt: !3422)
!3433 = !DILocation(line: 189, column: 5, scope: !3401, inlinedAt: !3422)
!3434 = !{!3435}
!3435 = distinct !{!3435, !3436, !"quoting_options_from_style: argument 0"}
!3436 = distinct !{!3436, !"quoting_options_from_style"}
!3437 = !DILocation(line: 191, column: 10, scope: !3384, inlinedAt: !3422)
!3438 = !DILocation(line: 192, column: 1, scope: !3384, inlinedAt: !3422)
!3439 = !DILocation(line: 957, column: 10, scope: !3412)
!3440 = !DILocation(line: 958, column: 1, scope: !3412)
!3441 = !DILocation(line: 957, column: 3, scope: !3412)
!3442 = distinct !DISubprogram(name: "quotearg_style", scope: !267, file: !267, line: 961, type: !3443, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !239, variables: !3445)
!3443 = !DISubroutineType(types: !3444)
!3444 = !{!46, !5, !43}
!3445 = !{!3446, !3447}
!3446 = !DILocalVariable(name: "s", arg: 1, scope: !3442, file: !267, line: 961, type: !5)
!3447 = !DILocalVariable(name: "arg", arg: 2, scope: !3442, file: !267, line: 961, type: !43)
!3448 = !DILocation(line: 187, column: 26, scope: !3384, inlinedAt: !3449)
!3449 = distinct !DILocation(line: 948, column: 36, scope: !3375, inlinedAt: !3450)
!3450 = distinct !DILocation(line: 963, column: 10, scope: !3442)
!3451 = !DILocation(line: 961, column: 36, scope: !3442)
!3452 = !DILocation(line: 961, column: 51, scope: !3442)
!3453 = !DILocation(line: 946, column: 23, scope: !3375, inlinedAt: !3450)
!3454 = !DILocation(line: 946, column: 45, scope: !3375, inlinedAt: !3450)
!3455 = !DILocation(line: 946, column: 60, scope: !3375, inlinedAt: !3450)
!3456 = !DILocation(line: 948, column: 3, scope: !3375, inlinedAt: !3450)
!3457 = !DILocation(line: 948, column: 32, scope: !3375, inlinedAt: !3450)
!3458 = !DILocation(line: 185, column: 48, scope: !3384, inlinedAt: !3449)
!3459 = !DILocation(line: 187, column: 3, scope: !3384, inlinedAt: !3449)
!3460 = !DILocation(line: 188, column: 13, scope: !3401, inlinedAt: !3449)
!3461 = !DILocation(line: 188, column: 7, scope: !3384, inlinedAt: !3449)
!3462 = !DILocation(line: 189, column: 5, scope: !3401, inlinedAt: !3449)
!3463 = !{!3464}
!3464 = distinct !{!3464, !3465, !"quoting_options_from_style: argument 0"}
!3465 = distinct !{!3465, !"quoting_options_from_style"}
!3466 = !DILocation(line: 191, column: 10, scope: !3384, inlinedAt: !3449)
!3467 = !DILocation(line: 192, column: 1, scope: !3384, inlinedAt: !3449)
!3468 = !DILocation(line: 949, column: 10, scope: !3375, inlinedAt: !3450)
!3469 = !DILocation(line: 950, column: 1, scope: !3375, inlinedAt: !3450)
!3470 = !DILocation(line: 963, column: 3, scope: !3442)
!3471 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !267, file: !267, line: 967, type: !3472, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !239, variables: !3474)
!3472 = !DISubroutineType(types: !3473)
!3473 = !{!46, !5, !43, !35}
!3474 = !{!3475, !3476, !3477}
!3475 = !DILocalVariable(name: "s", arg: 1, scope: !3471, file: !267, line: 967, type: !5)
!3476 = !DILocalVariable(name: "arg", arg: 2, scope: !3471, file: !267, line: 967, type: !43)
!3477 = !DILocalVariable(name: "argsize", arg: 3, scope: !3471, file: !267, line: 967, type: !35)
!3478 = !DILocation(line: 187, column: 26, scope: !3384, inlinedAt: !3479)
!3479 = distinct !DILocation(line: 956, column: 36, scope: !3412, inlinedAt: !3480)
!3480 = distinct !DILocation(line: 969, column: 10, scope: !3471)
!3481 = !DILocation(line: 967, column: 40, scope: !3471)
!3482 = !DILocation(line: 967, column: 55, scope: !3471)
!3483 = !DILocation(line: 967, column: 67, scope: !3471)
!3484 = !DILocation(line: 953, column: 27, scope: !3412, inlinedAt: !3480)
!3485 = !DILocation(line: 953, column: 49, scope: !3412, inlinedAt: !3480)
!3486 = !DILocation(line: 954, column: 35, scope: !3412, inlinedAt: !3480)
!3487 = !DILocation(line: 954, column: 47, scope: !3412, inlinedAt: !3480)
!3488 = !DILocation(line: 956, column: 3, scope: !3412, inlinedAt: !3480)
!3489 = !DILocation(line: 956, column: 32, scope: !3412, inlinedAt: !3480)
!3490 = !DILocation(line: 185, column: 48, scope: !3384, inlinedAt: !3479)
!3491 = !DILocation(line: 187, column: 3, scope: !3384, inlinedAt: !3479)
!3492 = !DILocation(line: 188, column: 13, scope: !3401, inlinedAt: !3479)
!3493 = !DILocation(line: 188, column: 7, scope: !3384, inlinedAt: !3479)
!3494 = !DILocation(line: 189, column: 5, scope: !3401, inlinedAt: !3479)
!3495 = !{!3496}
!3496 = distinct !{!3496, !3497, !"quoting_options_from_style: argument 0"}
!3497 = distinct !{!3497, !"quoting_options_from_style"}
!3498 = !DILocation(line: 191, column: 10, scope: !3384, inlinedAt: !3479)
!3499 = !DILocation(line: 192, column: 1, scope: !3384, inlinedAt: !3479)
!3500 = !DILocation(line: 957, column: 10, scope: !3412, inlinedAt: !3480)
!3501 = !DILocation(line: 958, column: 1, scope: !3412, inlinedAt: !3480)
!3502 = !DILocation(line: 969, column: 3, scope: !3471)
!3503 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !267, file: !267, line: 973, type: !3504, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !239, variables: !3506)
!3504 = !DISubroutineType(types: !3505)
!3505 = !{!46, !43, !35, !45}
!3506 = !{!3507, !3508, !3509, !3510}
!3507 = !DILocalVariable(name: "arg", arg: 1, scope: !3503, file: !267, line: 973, type: !43)
!3508 = !DILocalVariable(name: "argsize", arg: 2, scope: !3503, file: !267, line: 973, type: !35)
!3509 = !DILocalVariable(name: "ch", arg: 3, scope: !3503, file: !267, line: 973, type: !45)
!3510 = !DILocalVariable(name: "options", scope: !3503, file: !267, line: 975, type: !274)
!3511 = !DILocation(line: 973, column: 32, scope: !3503)
!3512 = !DILocation(line: 973, column: 44, scope: !3503)
!3513 = !DILocation(line: 973, column: 58, scope: !3503)
!3514 = !DILocation(line: 975, column: 3, scope: !3503)
!3515 = !DILocation(line: 976, column: 13, scope: !3503)
!3516 = !{i64 0, i64 4, !864, i64 4, i64 4, !972, i64 8, i64 32, !864, i64 40, i64 8, !738, i64 48, i64 8, !738}
!3517 = !DILocation(line: 975, column: 26, scope: !3503)
!3518 = !DILocation(line: 144, column: 43, scope: !1967, inlinedAt: !3519)
!3519 = distinct !DILocation(line: 977, column: 3, scope: !3503)
!3520 = !DILocation(line: 144, column: 51, scope: !1967, inlinedAt: !3519)
!3521 = !DILocation(line: 144, column: 58, scope: !1967, inlinedAt: !3519)
!3522 = !DILocation(line: 146, column: 17, scope: !1967, inlinedAt: !3519)
!3523 = !DILocation(line: 148, column: 62, scope: !1985, inlinedAt: !3519)
!3524 = !DILocation(line: 148, column: 57, scope: !1985, inlinedAt: !3519)
!3525 = !DILocation(line: 147, column: 17, scope: !1967, inlinedAt: !3519)
!3526 = !DILocation(line: 149, column: 18, scope: !1967, inlinedAt: !3519)
!3527 = !DILocation(line: 149, column: 15, scope: !1967, inlinedAt: !3519)
!3528 = !DILocation(line: 149, column: 7, scope: !1967, inlinedAt: !3519)
!3529 = !DILocation(line: 150, column: 12, scope: !1967, inlinedAt: !3519)
!3530 = !DILocation(line: 150, column: 15, scope: !1967, inlinedAt: !3519)
!3531 = !DILocation(line: 150, column: 25, scope: !1967, inlinedAt: !3519)
!3532 = !DILocation(line: 150, column: 7, scope: !1967, inlinedAt: !3519)
!3533 = !DILocation(line: 151, column: 18, scope: !1967, inlinedAt: !3519)
!3534 = !DILocation(line: 151, column: 23, scope: !1967, inlinedAt: !3519)
!3535 = !DILocation(line: 151, column: 6, scope: !1967, inlinedAt: !3519)
!3536 = !DILocation(line: 978, column: 10, scope: !3503)
!3537 = !DILocation(line: 979, column: 1, scope: !3503)
!3538 = !DILocation(line: 978, column: 3, scope: !3503)
!3539 = distinct !DISubprogram(name: "quotearg_char", scope: !267, file: !267, line: 982, type: !3540, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !239, variables: !3542)
!3540 = !DISubroutineType(types: !3541)
!3541 = !{!46, !43, !45}
!3542 = !{!3543, !3544}
!3543 = !DILocalVariable(name: "arg", arg: 1, scope: !3539, file: !267, line: 982, type: !43)
!3544 = !DILocalVariable(name: "ch", arg: 2, scope: !3539, file: !267, line: 982, type: !45)
!3545 = !DILocation(line: 982, column: 28, scope: !3539)
!3546 = !DILocation(line: 982, column: 38, scope: !3539)
!3547 = !DILocation(line: 973, column: 32, scope: !3503, inlinedAt: !3548)
!3548 = distinct !DILocation(line: 984, column: 10, scope: !3539)
!3549 = !DILocation(line: 973, column: 44, scope: !3503, inlinedAt: !3548)
!3550 = !DILocation(line: 973, column: 58, scope: !3503, inlinedAt: !3548)
!3551 = !DILocation(line: 975, column: 3, scope: !3503, inlinedAt: !3548)
!3552 = !DILocation(line: 976, column: 13, scope: !3503, inlinedAt: !3548)
!3553 = !DILocation(line: 975, column: 26, scope: !3503, inlinedAt: !3548)
!3554 = !DILocation(line: 144, column: 43, scope: !1967, inlinedAt: !3555)
!3555 = distinct !DILocation(line: 977, column: 3, scope: !3503, inlinedAt: !3548)
!3556 = !DILocation(line: 144, column: 51, scope: !1967, inlinedAt: !3555)
!3557 = !DILocation(line: 144, column: 58, scope: !1967, inlinedAt: !3555)
!3558 = !DILocation(line: 146, column: 17, scope: !1967, inlinedAt: !3555)
!3559 = !DILocation(line: 148, column: 62, scope: !1985, inlinedAt: !3555)
!3560 = !DILocation(line: 148, column: 57, scope: !1985, inlinedAt: !3555)
!3561 = !DILocation(line: 147, column: 17, scope: !1967, inlinedAt: !3555)
!3562 = !DILocation(line: 149, column: 18, scope: !1967, inlinedAt: !3555)
!3563 = !DILocation(line: 149, column: 15, scope: !1967, inlinedAt: !3555)
!3564 = !DILocation(line: 149, column: 7, scope: !1967, inlinedAt: !3555)
!3565 = !DILocation(line: 150, column: 12, scope: !1967, inlinedAt: !3555)
!3566 = !DILocation(line: 150, column: 15, scope: !1967, inlinedAt: !3555)
!3567 = !DILocation(line: 150, column: 25, scope: !1967, inlinedAt: !3555)
!3568 = !DILocation(line: 150, column: 7, scope: !1967, inlinedAt: !3555)
!3569 = !DILocation(line: 151, column: 18, scope: !1967, inlinedAt: !3555)
!3570 = !DILocation(line: 151, column: 23, scope: !1967, inlinedAt: !3555)
!3571 = !DILocation(line: 151, column: 6, scope: !1967, inlinedAt: !3555)
!3572 = !DILocation(line: 978, column: 10, scope: !3503, inlinedAt: !3548)
!3573 = !DILocation(line: 979, column: 1, scope: !3503, inlinedAt: !3548)
!3574 = !DILocation(line: 984, column: 3, scope: !3539)
!3575 = distinct !DISubprogram(name: "quotearg_colon", scope: !267, file: !267, line: 988, type: !3351, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !239, variables: !3576)
!3576 = !{!3577}
!3577 = !DILocalVariable(name: "arg", arg: 1, scope: !3575, file: !267, line: 988, type: !43)
!3578 = !DILocation(line: 988, column: 29, scope: !3575)
!3579 = !DILocation(line: 982, column: 28, scope: !3539, inlinedAt: !3580)
!3580 = distinct !DILocation(line: 990, column: 10, scope: !3575)
!3581 = !DILocation(line: 982, column: 38, scope: !3539, inlinedAt: !3580)
!3582 = !DILocation(line: 973, column: 32, scope: !3503, inlinedAt: !3583)
!3583 = distinct !DILocation(line: 984, column: 10, scope: !3539, inlinedAt: !3580)
!3584 = !DILocation(line: 973, column: 44, scope: !3503, inlinedAt: !3583)
!3585 = !DILocation(line: 973, column: 58, scope: !3503, inlinedAt: !3583)
!3586 = !DILocation(line: 975, column: 3, scope: !3503, inlinedAt: !3583)
!3587 = !DILocation(line: 976, column: 13, scope: !3503, inlinedAt: !3583)
!3588 = !DILocation(line: 975, column: 26, scope: !3503, inlinedAt: !3583)
!3589 = !DILocation(line: 144, column: 43, scope: !1967, inlinedAt: !3590)
!3590 = distinct !DILocation(line: 977, column: 3, scope: !3503, inlinedAt: !3583)
!3591 = !DILocation(line: 144, column: 51, scope: !1967, inlinedAt: !3590)
!3592 = !DILocation(line: 144, column: 58, scope: !1967, inlinedAt: !3590)
!3593 = !DILocation(line: 146, column: 17, scope: !1967, inlinedAt: !3590)
!3594 = !DILocation(line: 148, column: 57, scope: !1985, inlinedAt: !3590)
!3595 = !DILocation(line: 147, column: 17, scope: !1967, inlinedAt: !3590)
!3596 = !DILocation(line: 149, column: 7, scope: !1967, inlinedAt: !3590)
!3597 = !DILocation(line: 150, column: 12, scope: !1967, inlinedAt: !3590)
!3598 = !DILocation(line: 151, column: 6, scope: !1967, inlinedAt: !3590)
!3599 = !DILocation(line: 978, column: 10, scope: !3503, inlinedAt: !3583)
!3600 = !DILocation(line: 979, column: 1, scope: !3503, inlinedAt: !3583)
!3601 = !DILocation(line: 990, column: 3, scope: !3575)
!3602 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !267, file: !267, line: 994, type: !3362, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !239, variables: !3603)
!3603 = !{!3604, !3605}
!3604 = !DILocalVariable(name: "arg", arg: 1, scope: !3602, file: !267, line: 994, type: !43)
!3605 = !DILocalVariable(name: "argsize", arg: 2, scope: !3602, file: !267, line: 994, type: !35)
!3606 = !DILocation(line: 994, column: 33, scope: !3602)
!3607 = !DILocation(line: 994, column: 45, scope: !3602)
!3608 = !DILocation(line: 973, column: 32, scope: !3503, inlinedAt: !3609)
!3609 = distinct !DILocation(line: 996, column: 10, scope: !3602)
!3610 = !DILocation(line: 973, column: 44, scope: !3503, inlinedAt: !3609)
!3611 = !DILocation(line: 973, column: 58, scope: !3503, inlinedAt: !3609)
!3612 = !DILocation(line: 975, column: 3, scope: !3503, inlinedAt: !3609)
!3613 = !DILocation(line: 976, column: 13, scope: !3503, inlinedAt: !3609)
!3614 = !DILocation(line: 975, column: 26, scope: !3503, inlinedAt: !3609)
!3615 = !DILocation(line: 144, column: 43, scope: !1967, inlinedAt: !3616)
!3616 = distinct !DILocation(line: 977, column: 3, scope: !3503, inlinedAt: !3609)
!3617 = !DILocation(line: 144, column: 51, scope: !1967, inlinedAt: !3616)
!3618 = !DILocation(line: 144, column: 58, scope: !1967, inlinedAt: !3616)
!3619 = !DILocation(line: 146, column: 17, scope: !1967, inlinedAt: !3616)
!3620 = !DILocation(line: 148, column: 57, scope: !1985, inlinedAt: !3616)
!3621 = !DILocation(line: 147, column: 17, scope: !1967, inlinedAt: !3616)
!3622 = !DILocation(line: 149, column: 7, scope: !1967, inlinedAt: !3616)
!3623 = !DILocation(line: 150, column: 12, scope: !1967, inlinedAt: !3616)
!3624 = !DILocation(line: 151, column: 6, scope: !1967, inlinedAt: !3616)
!3625 = !DILocation(line: 978, column: 10, scope: !3503, inlinedAt: !3609)
!3626 = !DILocation(line: 979, column: 1, scope: !3503, inlinedAt: !3609)
!3627 = !DILocation(line: 996, column: 3, scope: !3602)
!3628 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !267, file: !267, line: 1000, type: !3376, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !239, variables: !3629)
!3629 = !{!3630, !3631, !3632, !3633}
!3630 = !DILocalVariable(name: "n", arg: 1, scope: !3628, file: !267, line: 1000, type: !140)
!3631 = !DILocalVariable(name: "s", arg: 2, scope: !3628, file: !267, line: 1000, type: !5)
!3632 = !DILocalVariable(name: "arg", arg: 3, scope: !3628, file: !267, line: 1000, type: !43)
!3633 = !DILocalVariable(name: "options", scope: !3628, file: !267, line: 1002, type: !274)
!3634 = !DILocation(line: 187, column: 26, scope: !3384, inlinedAt: !3635)
!3635 = distinct !DILocation(line: 1003, column: 13, scope: !3628)
!3636 = !DILocation(line: 1000, column: 29, scope: !3628)
!3637 = !DILocation(line: 1000, column: 51, scope: !3628)
!3638 = !DILocation(line: 1000, column: 66, scope: !3628)
!3639 = !DILocation(line: 1002, column: 3, scope: !3628)
!3640 = !DILocation(line: 185, column: 48, scope: !3384, inlinedAt: !3635)
!3641 = !DILocation(line: 187, column: 3, scope: !3384, inlinedAt: !3635)
!3642 = !DILocation(line: 188, column: 13, scope: !3401, inlinedAt: !3635)
!3643 = !DILocation(line: 188, column: 7, scope: !3384, inlinedAt: !3635)
!3644 = !DILocation(line: 189, column: 5, scope: !3401, inlinedAt: !3635)
!3645 = !{!3646}
!3646 = distinct !{!3646, !3647, !"quoting_options_from_style: argument 0"}
!3647 = distinct !{!3647, !"quoting_options_from_style"}
!3648 = !DILocation(line: 191, column: 10, scope: !3384, inlinedAt: !3635)
!3649 = !DILocation(line: 192, column: 1, scope: !3384, inlinedAt: !3635)
!3650 = !DILocation(line: 1003, column: 13, scope: !3628)
!3651 = !DILocation(line: 1002, column: 26, scope: !3628)
!3652 = !DILocation(line: 144, column: 43, scope: !1967, inlinedAt: !3653)
!3653 = distinct !DILocation(line: 1004, column: 3, scope: !3628)
!3654 = !DILocation(line: 144, column: 51, scope: !1967, inlinedAt: !3653)
!3655 = !DILocation(line: 144, column: 58, scope: !1967, inlinedAt: !3653)
!3656 = !DILocation(line: 146, column: 17, scope: !1967, inlinedAt: !3653)
!3657 = !DILocation(line: 148, column: 57, scope: !1985, inlinedAt: !3653)
!3658 = !DILocation(line: 147, column: 17, scope: !1967, inlinedAt: !3653)
!3659 = !DILocation(line: 149, column: 7, scope: !1967, inlinedAt: !3653)
!3660 = !DILocation(line: 150, column: 12, scope: !1967, inlinedAt: !3653)
!3661 = !DILocation(line: 151, column: 6, scope: !1967, inlinedAt: !3653)
!3662 = !DILocation(line: 1005, column: 10, scope: !3628)
!3663 = !DILocation(line: 1006, column: 1, scope: !3628)
!3664 = !DILocation(line: 1005, column: 3, scope: !3628)
!3665 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !267, file: !267, line: 1009, type: !3666, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !239, variables: !3668)
!3666 = !DISubroutineType(types: !3667)
!3667 = !{!46, !140, !43, !43, !43}
!3668 = !{!3669, !3670, !3671, !3672}
!3669 = !DILocalVariable(name: "n", arg: 1, scope: !3665, file: !267, line: 1009, type: !140)
!3670 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3665, file: !267, line: 1009, type: !43)
!3671 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3665, file: !267, line: 1010, type: !43)
!3672 = !DILocalVariable(name: "arg", arg: 4, scope: !3665, file: !267, line: 1010, type: !43)
!3673 = !DILocation(line: 1009, column: 24, scope: !3665)
!3674 = !DILocation(line: 1009, column: 39, scope: !3665)
!3675 = !DILocation(line: 1010, column: 32, scope: !3665)
!3676 = !DILocation(line: 1010, column: 57, scope: !3665)
!3677 = !DILocalVariable(name: "n", arg: 1, scope: !3678, file: !267, line: 1017, type: !140)
!3678 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !267, file: !267, line: 1017, type: !3679, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !239, variables: !3681)
!3679 = !DISubroutineType(types: !3680)
!3680 = !{!46, !140, !43, !43, !43, !35}
!3681 = !{!3677, !3682, !3683, !3684, !3685, !3686}
!3682 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3678, file: !267, line: 1017, type: !43)
!3683 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3678, file: !267, line: 1018, type: !43)
!3684 = !DILocalVariable(name: "arg", arg: 4, scope: !3678, file: !267, line: 1019, type: !43)
!3685 = !DILocalVariable(name: "argsize", arg: 5, scope: !3678, file: !267, line: 1019, type: !35)
!3686 = !DILocalVariable(name: "o", scope: !3678, file: !267, line: 1021, type: !274)
!3687 = !DILocation(line: 1017, column: 28, scope: !3678, inlinedAt: !3688)
!3688 = distinct !DILocation(line: 1012, column: 10, scope: !3665)
!3689 = !DILocation(line: 1017, column: 43, scope: !3678, inlinedAt: !3688)
!3690 = !DILocation(line: 1018, column: 36, scope: !3678, inlinedAt: !3688)
!3691 = !DILocation(line: 1019, column: 36, scope: !3678, inlinedAt: !3688)
!3692 = !DILocation(line: 1019, column: 48, scope: !3678, inlinedAt: !3688)
!3693 = !DILocation(line: 1021, column: 3, scope: !3678, inlinedAt: !3688)
!3694 = !DILocation(line: 1021, column: 30, scope: !3678, inlinedAt: !3688)
!3695 = !DILocation(line: 1021, column: 26, scope: !3678, inlinedAt: !3688)
!3696 = !DILocation(line: 171, column: 45, scope: !2017, inlinedAt: !3697)
!3697 = distinct !DILocation(line: 1022, column: 3, scope: !3678, inlinedAt: !3688)
!3698 = !DILocation(line: 172, column: 33, scope: !2017, inlinedAt: !3697)
!3699 = !DILocation(line: 172, column: 57, scope: !2017, inlinedAt: !3697)
!3700 = !DILocation(line: 176, column: 6, scope: !2017, inlinedAt: !3697)
!3701 = !DILocation(line: 176, column: 12, scope: !2017, inlinedAt: !3697)
!3702 = !DILocation(line: 177, column: 8, scope: !2033, inlinedAt: !3697)
!3703 = !DILocation(line: 177, column: 23, scope: !2035, inlinedAt: !3697)
!3704 = !DILocation(line: 177, column: 19, scope: !2033, inlinedAt: !3697)
!3705 = !DILocation(line: 178, column: 5, scope: !2033, inlinedAt: !3697)
!3706 = !DILocation(line: 179, column: 6, scope: !2017, inlinedAt: !3697)
!3707 = !DILocation(line: 179, column: 17, scope: !2017, inlinedAt: !3697)
!3708 = !DILocation(line: 180, column: 6, scope: !2017, inlinedAt: !3697)
!3709 = !DILocation(line: 180, column: 18, scope: !2017, inlinedAt: !3697)
!3710 = !DILocation(line: 1023, column: 10, scope: !3678, inlinedAt: !3688)
!3711 = !DILocation(line: 1024, column: 1, scope: !3678, inlinedAt: !3688)
!3712 = !DILocation(line: 1012, column: 3, scope: !3665)
!3713 = !DILocation(line: 1017, column: 28, scope: !3678)
!3714 = !DILocation(line: 1017, column: 43, scope: !3678)
!3715 = !DILocation(line: 1018, column: 36, scope: !3678)
!3716 = !DILocation(line: 1019, column: 36, scope: !3678)
!3717 = !DILocation(line: 1019, column: 48, scope: !3678)
!3718 = !DILocation(line: 1021, column: 3, scope: !3678)
!3719 = !DILocation(line: 1021, column: 30, scope: !3678)
!3720 = !DILocation(line: 1021, column: 26, scope: !3678)
!3721 = !DILocation(line: 171, column: 45, scope: !2017, inlinedAt: !3722)
!3722 = distinct !DILocation(line: 1022, column: 3, scope: !3678)
!3723 = !DILocation(line: 172, column: 33, scope: !2017, inlinedAt: !3722)
!3724 = !DILocation(line: 172, column: 57, scope: !2017, inlinedAt: !3722)
!3725 = !DILocation(line: 176, column: 6, scope: !2017, inlinedAt: !3722)
!3726 = !DILocation(line: 176, column: 12, scope: !2017, inlinedAt: !3722)
!3727 = !DILocation(line: 177, column: 8, scope: !2033, inlinedAt: !3722)
!3728 = !DILocation(line: 177, column: 23, scope: !2035, inlinedAt: !3722)
!3729 = !DILocation(line: 177, column: 19, scope: !2033, inlinedAt: !3722)
!3730 = !DILocation(line: 178, column: 5, scope: !2033, inlinedAt: !3722)
!3731 = !DILocation(line: 179, column: 6, scope: !2017, inlinedAt: !3722)
!3732 = !DILocation(line: 179, column: 17, scope: !2017, inlinedAt: !3722)
!3733 = !DILocation(line: 180, column: 6, scope: !2017, inlinedAt: !3722)
!3734 = !DILocation(line: 180, column: 18, scope: !2017, inlinedAt: !3722)
!3735 = !DILocation(line: 1023, column: 10, scope: !3678)
!3736 = !DILocation(line: 1024, column: 1, scope: !3678)
!3737 = !DILocation(line: 1023, column: 3, scope: !3678)
!3738 = distinct !DISubprogram(name: "quotearg_custom", scope: !267, file: !267, line: 1027, type: !3739, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !239, variables: !3741)
!3739 = !DISubroutineType(types: !3740)
!3740 = !{!46, !43, !43, !43}
!3741 = !{!3742, !3743, !3744}
!3742 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3738, file: !267, line: 1027, type: !43)
!3743 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3738, file: !267, line: 1027, type: !43)
!3744 = !DILocalVariable(name: "arg", arg: 3, scope: !3738, file: !267, line: 1028, type: !43)
!3745 = !DILocation(line: 1027, column: 30, scope: !3738)
!3746 = !DILocation(line: 1027, column: 54, scope: !3738)
!3747 = !DILocation(line: 1028, column: 30, scope: !3738)
!3748 = !DILocation(line: 1009, column: 24, scope: !3665, inlinedAt: !3749)
!3749 = distinct !DILocation(line: 1030, column: 10, scope: !3738)
!3750 = !DILocation(line: 1009, column: 39, scope: !3665, inlinedAt: !3749)
!3751 = !DILocation(line: 1010, column: 32, scope: !3665, inlinedAt: !3749)
!3752 = !DILocation(line: 1010, column: 57, scope: !3665, inlinedAt: !3749)
!3753 = !DILocation(line: 1017, column: 28, scope: !3678, inlinedAt: !3754)
!3754 = distinct !DILocation(line: 1012, column: 10, scope: !3665, inlinedAt: !3749)
!3755 = !DILocation(line: 1017, column: 43, scope: !3678, inlinedAt: !3754)
!3756 = !DILocation(line: 1018, column: 36, scope: !3678, inlinedAt: !3754)
!3757 = !DILocation(line: 1019, column: 36, scope: !3678, inlinedAt: !3754)
!3758 = !DILocation(line: 1019, column: 48, scope: !3678, inlinedAt: !3754)
!3759 = !DILocation(line: 1021, column: 3, scope: !3678, inlinedAt: !3754)
!3760 = !DILocation(line: 1021, column: 30, scope: !3678, inlinedAt: !3754)
!3761 = !DILocation(line: 1021, column: 26, scope: !3678, inlinedAt: !3754)
!3762 = !DILocation(line: 171, column: 45, scope: !2017, inlinedAt: !3763)
!3763 = distinct !DILocation(line: 1022, column: 3, scope: !3678, inlinedAt: !3754)
!3764 = !DILocation(line: 172, column: 33, scope: !2017, inlinedAt: !3763)
!3765 = !DILocation(line: 172, column: 57, scope: !2017, inlinedAt: !3763)
!3766 = !DILocation(line: 176, column: 6, scope: !2017, inlinedAt: !3763)
!3767 = !DILocation(line: 176, column: 12, scope: !2017, inlinedAt: !3763)
!3768 = !DILocation(line: 177, column: 8, scope: !2033, inlinedAt: !3763)
!3769 = !DILocation(line: 177, column: 23, scope: !2035, inlinedAt: !3763)
!3770 = !DILocation(line: 177, column: 19, scope: !2033, inlinedAt: !3763)
!3771 = !DILocation(line: 178, column: 5, scope: !2033, inlinedAt: !3763)
!3772 = !DILocation(line: 179, column: 6, scope: !2017, inlinedAt: !3763)
!3773 = !DILocation(line: 179, column: 17, scope: !2017, inlinedAt: !3763)
!3774 = !DILocation(line: 180, column: 6, scope: !2017, inlinedAt: !3763)
!3775 = !DILocation(line: 180, column: 18, scope: !2017, inlinedAt: !3763)
!3776 = !DILocation(line: 1023, column: 10, scope: !3678, inlinedAt: !3754)
!3777 = !DILocation(line: 1024, column: 1, scope: !3678, inlinedAt: !3754)
!3778 = !DILocation(line: 1030, column: 3, scope: !3738)
!3779 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !267, file: !267, line: 1034, type: !3780, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !239, variables: !3782)
!3780 = !DISubroutineType(types: !3781)
!3781 = !{!46, !43, !43, !43, !35}
!3782 = !{!3783, !3784, !3785, !3786}
!3783 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3779, file: !267, line: 1034, type: !43)
!3784 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3779, file: !267, line: 1034, type: !43)
!3785 = !DILocalVariable(name: "arg", arg: 3, scope: !3779, file: !267, line: 1035, type: !43)
!3786 = !DILocalVariable(name: "argsize", arg: 4, scope: !3779, file: !267, line: 1035, type: !35)
!3787 = !DILocation(line: 1034, column: 34, scope: !3779)
!3788 = !DILocation(line: 1034, column: 58, scope: !3779)
!3789 = !DILocation(line: 1035, column: 34, scope: !3779)
!3790 = !DILocation(line: 1035, column: 46, scope: !3779)
!3791 = !DILocation(line: 1017, column: 28, scope: !3678, inlinedAt: !3792)
!3792 = distinct !DILocation(line: 1037, column: 10, scope: !3779)
!3793 = !DILocation(line: 1017, column: 43, scope: !3678, inlinedAt: !3792)
!3794 = !DILocation(line: 1018, column: 36, scope: !3678, inlinedAt: !3792)
!3795 = !DILocation(line: 1019, column: 36, scope: !3678, inlinedAt: !3792)
!3796 = !DILocation(line: 1019, column: 48, scope: !3678, inlinedAt: !3792)
!3797 = !DILocation(line: 1021, column: 3, scope: !3678, inlinedAt: !3792)
!3798 = !DILocation(line: 1021, column: 30, scope: !3678, inlinedAt: !3792)
!3799 = !DILocation(line: 1021, column: 26, scope: !3678, inlinedAt: !3792)
!3800 = !DILocation(line: 171, column: 45, scope: !2017, inlinedAt: !3801)
!3801 = distinct !DILocation(line: 1022, column: 3, scope: !3678, inlinedAt: !3792)
!3802 = !DILocation(line: 172, column: 33, scope: !2017, inlinedAt: !3801)
!3803 = !DILocation(line: 172, column: 57, scope: !2017, inlinedAt: !3801)
!3804 = !DILocation(line: 176, column: 6, scope: !2017, inlinedAt: !3801)
!3805 = !DILocation(line: 176, column: 12, scope: !2017, inlinedAt: !3801)
!3806 = !DILocation(line: 177, column: 8, scope: !2033, inlinedAt: !3801)
!3807 = !DILocation(line: 177, column: 23, scope: !2035, inlinedAt: !3801)
!3808 = !DILocation(line: 177, column: 19, scope: !2033, inlinedAt: !3801)
!3809 = !DILocation(line: 178, column: 5, scope: !2033, inlinedAt: !3801)
!3810 = !DILocation(line: 179, column: 6, scope: !2017, inlinedAt: !3801)
!3811 = !DILocation(line: 179, column: 17, scope: !2017, inlinedAt: !3801)
!3812 = !DILocation(line: 180, column: 6, scope: !2017, inlinedAt: !3801)
!3813 = !DILocation(line: 180, column: 18, scope: !2017, inlinedAt: !3801)
!3814 = !DILocation(line: 1023, column: 10, scope: !3678, inlinedAt: !3792)
!3815 = !DILocation(line: 1024, column: 1, scope: !3678, inlinedAt: !3792)
!3816 = !DILocation(line: 1037, column: 3, scope: !3779)
!3817 = distinct !DISubprogram(name: "quote_n_mem", scope: !267, file: !267, line: 1052, type: !3818, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !239, variables: !3820)
!3818 = !DISubroutineType(types: !3819)
!3819 = !{!43, !140, !43, !35}
!3820 = !{!3821, !3822, !3823}
!3821 = !DILocalVariable(name: "n", arg: 1, scope: !3817, file: !267, line: 1052, type: !140)
!3822 = !DILocalVariable(name: "arg", arg: 2, scope: !3817, file: !267, line: 1052, type: !43)
!3823 = !DILocalVariable(name: "argsize", arg: 3, scope: !3817, file: !267, line: 1052, type: !35)
!3824 = !DILocation(line: 1052, column: 18, scope: !3817)
!3825 = !DILocation(line: 1052, column: 33, scope: !3817)
!3826 = !DILocation(line: 1052, column: 45, scope: !3817)
!3827 = !DILocation(line: 1054, column: 10, scope: !3817)
!3828 = !DILocation(line: 1054, column: 3, scope: !3817)
!3829 = distinct !DISubprogram(name: "quote_mem", scope: !267, file: !267, line: 1058, type: !3830, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !239, variables: !3832)
!3830 = !DISubroutineType(types: !3831)
!3831 = !{!43, !43, !35}
!3832 = !{!3833, !3834}
!3833 = !DILocalVariable(name: "arg", arg: 1, scope: !3829, file: !267, line: 1058, type: !43)
!3834 = !DILocalVariable(name: "argsize", arg: 2, scope: !3829, file: !267, line: 1058, type: !35)
!3835 = !DILocation(line: 1058, column: 24, scope: !3829)
!3836 = !DILocation(line: 1058, column: 36, scope: !3829)
!3837 = !DILocation(line: 1052, column: 18, scope: !3817, inlinedAt: !3838)
!3838 = distinct !DILocation(line: 1060, column: 10, scope: !3829)
!3839 = !DILocation(line: 1052, column: 33, scope: !3817, inlinedAt: !3838)
!3840 = !DILocation(line: 1052, column: 45, scope: !3817, inlinedAt: !3838)
!3841 = !DILocation(line: 1054, column: 10, scope: !3817, inlinedAt: !3838)
!3842 = !DILocation(line: 1060, column: 3, scope: !3829)
!3843 = distinct !DISubprogram(name: "quote_n", scope: !267, file: !267, line: 1064, type: !3844, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !239, variables: !3846)
!3844 = !DISubroutineType(types: !3845)
!3845 = !{!43, !140, !43}
!3846 = !{!3847, !3848}
!3847 = !DILocalVariable(name: "n", arg: 1, scope: !3843, file: !267, line: 1064, type: !140)
!3848 = !DILocalVariable(name: "arg", arg: 2, scope: !3843, file: !267, line: 1064, type: !43)
!3849 = !DILocation(line: 1064, column: 14, scope: !3843)
!3850 = !DILocation(line: 1064, column: 29, scope: !3843)
!3851 = !DILocation(line: 1052, column: 18, scope: !3817, inlinedAt: !3852)
!3852 = distinct !DILocation(line: 1066, column: 10, scope: !3843)
!3853 = !DILocation(line: 1052, column: 33, scope: !3817, inlinedAt: !3852)
!3854 = !DILocation(line: 1052, column: 45, scope: !3817, inlinedAt: !3852)
!3855 = !DILocation(line: 1054, column: 10, scope: !3817, inlinedAt: !3852)
!3856 = !DILocation(line: 1066, column: 3, scope: !3843)
!3857 = distinct !DISubprogram(name: "quote", scope: !267, file: !267, line: 1070, type: !3858, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !239, variables: !3860)
!3858 = !DISubroutineType(types: !3859)
!3859 = !{!43, !43}
!3860 = !{!3861}
!3861 = !DILocalVariable(name: "arg", arg: 1, scope: !3857, file: !267, line: 1070, type: !43)
!3862 = !DILocation(line: 1070, column: 20, scope: !3857)
!3863 = !DILocation(line: 1064, column: 14, scope: !3843, inlinedAt: !3864)
!3864 = distinct !DILocation(line: 1072, column: 10, scope: !3857)
!3865 = !DILocation(line: 1064, column: 29, scope: !3843, inlinedAt: !3864)
!3866 = !DILocation(line: 1052, column: 18, scope: !3817, inlinedAt: !3867)
!3867 = distinct !DILocation(line: 1066, column: 10, scope: !3843, inlinedAt: !3864)
!3868 = !DILocation(line: 1052, column: 33, scope: !3817, inlinedAt: !3867)
!3869 = !DILocation(line: 1052, column: 45, scope: !3817, inlinedAt: !3867)
!3870 = !DILocation(line: 1054, column: 10, scope: !3817, inlinedAt: !3867)
!3871 = !DILocation(line: 1072, column: 3, scope: !3857)
!3872 = distinct !DISubprogram(name: "version_etc_arn", scope: !667, file: !667, line: 62, type: !3873, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !663, variables: !3916)
!3873 = !DISubroutineType(types: !3874)
!3874 = !{null, !3875, !43, !43, !43, !3915, !35}
!3875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3876, size: 64)
!3876 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1173, line: 49, baseType: !3877)
!3877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1175, line: 241, size: 1728, elements: !3878)
!3878 = !{!3879, !3880, !3881, !3882, !3883, !3884, !3885, !3886, !3887, !3888, !3889, !3890, !3891, !3899, !3900, !3901, !3902, !3903, !3904, !3905, !3906, !3907, !3908, !3909, !3910, !3911, !3912, !3913, !3914}
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3877, file: !1175, line: 242, baseType: !140, size: 32)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3877, file: !1175, line: 247, baseType: !46, size: 64, offset: 64)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3877, file: !1175, line: 248, baseType: !46, size: 64, offset: 128)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3877, file: !1175, line: 249, baseType: !46, size: 64, offset: 192)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3877, file: !1175, line: 250, baseType: !46, size: 64, offset: 256)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3877, file: !1175, line: 251, baseType: !46, size: 64, offset: 320)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3877, file: !1175, line: 252, baseType: !46, size: 64, offset: 384)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3877, file: !1175, line: 253, baseType: !46, size: 64, offset: 448)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3877, file: !1175, line: 254, baseType: !46, size: 64, offset: 512)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3877, file: !1175, line: 256, baseType: !46, size: 64, offset: 576)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3877, file: !1175, line: 257, baseType: !46, size: 64, offset: 640)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3877, file: !1175, line: 258, baseType: !46, size: 64, offset: 704)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3877, file: !1175, line: 260, baseType: !3892, size: 64, offset: 768)
!3892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3893, size: 64)
!3893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1175, line: 156, size: 192, elements: !3894)
!3894 = !{!3895, !3896, !3898}
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3893, file: !1175, line: 157, baseType: !3892, size: 64)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3893, file: !1175, line: 158, baseType: !3897, size: 64, offset: 64)
!3897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3877, size: 64)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3893, file: !1175, line: 162, baseType: !140, size: 32, offset: 128)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3877, file: !1175, line: 262, baseType: !3897, size: 64, offset: 832)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3877, file: !1175, line: 264, baseType: !140, size: 32, offset: 896)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3877, file: !1175, line: 268, baseType: !140, size: 32, offset: 928)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3877, file: !1175, line: 270, baseType: !1201, size: 64, offset: 960)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3877, file: !1175, line: 274, baseType: !263, size: 16, offset: 1024)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3877, file: !1175, line: 275, baseType: !1204, size: 8, offset: 1040)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3877, file: !1175, line: 276, baseType: !1206, size: 8, offset: 1048)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3877, file: !1175, line: 280, baseType: !1210, size: 64, offset: 1088)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3877, file: !1175, line: 289, baseType: !1213, size: 64, offset: 1152)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3877, file: !1175, line: 297, baseType: !47, size: 64, offset: 1216)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3877, file: !1175, line: 298, baseType: !47, size: 64, offset: 1280)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3877, file: !1175, line: 299, baseType: !47, size: 64, offset: 1344)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3877, file: !1175, line: 300, baseType: !47, size: 64, offset: 1408)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3877, file: !1175, line: 302, baseType: !35, size: 64, offset: 1472)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3877, file: !1175, line: 303, baseType: !140, size: 32, offset: 1536)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3877, file: !1175, line: 305, baseType: !1221, size: 160, offset: 1568)
!3915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!3916 = !{!3917, !3918, !3919, !3920, !3921, !3922}
!3917 = !DILocalVariable(name: "stream", arg: 1, scope: !3872, file: !667, line: 62, type: !3875)
!3918 = !DILocalVariable(name: "command_name", arg: 2, scope: !3872, file: !667, line: 63, type: !43)
!3919 = !DILocalVariable(name: "package", arg: 3, scope: !3872, file: !667, line: 63, type: !43)
!3920 = !DILocalVariable(name: "version", arg: 4, scope: !3872, file: !667, line: 64, type: !43)
!3921 = !DILocalVariable(name: "authors", arg: 5, scope: !3872, file: !667, line: 65, type: !3915)
!3922 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3872, file: !667, line: 65, type: !35)
!3923 = !DILocation(line: 62, column: 24, scope: !3872)
!3924 = !DILocation(line: 63, column: 30, scope: !3872)
!3925 = !DILocation(line: 63, column: 56, scope: !3872)
!3926 = !DILocation(line: 64, column: 30, scope: !3872)
!3927 = !DILocation(line: 65, column: 39, scope: !3872)
!3928 = !DILocation(line: 65, column: 55, scope: !3872)
!3929 = !DILocation(line: 67, column: 7, scope: !3930)
!3930 = distinct !DILexicalBlock(scope: !3872, file: !667, line: 67, column: 7)
!3931 = !DILocation(line: 67, column: 7, scope: !3872)
!3932 = !DILocation(line: 68, column: 5, scope: !3930)
!3933 = !DILocation(line: 70, column: 5, scope: !3930)
!3934 = !DILocation(line: 84, column: 3, scope: !3872)
!3935 = !DILocation(line: 84, column: 3, scope: !3936)
!3936 = !DILexicalBlockFile(scope: !3872, file: !667, discriminator: 1)
!3937 = !DILocation(line: 86, column: 3, scope: !3872)
!3938 = !DILocation(line: 86, column: 3, scope: !3936)
!3939 = !DILocation(line: 95, column: 3, scope: !3872)
!3940 = !DILocation(line: 99, column: 7, scope: !3941)
!3941 = distinct !DILexicalBlock(scope: !3872, file: !667, line: 96, column: 5)
!3942 = !DILocation(line: 102, column: 7, scope: !3941)
!3943 = !DILocation(line: 102, column: 7, scope: !3944)
!3944 = !DILexicalBlockFile(scope: !3941, file: !667, discriminator: 1)
!3945 = !DILocation(line: 103, column: 7, scope: !3941)
!3946 = !DILocation(line: 106, column: 7, scope: !3941)
!3947 = !DILocation(line: 106, column: 7, scope: !3944)
!3948 = !DILocation(line: 107, column: 7, scope: !3941)
!3949 = !DILocation(line: 110, column: 7, scope: !3941)
!3950 = !DILocation(line: 110, column: 7, scope: !3944)
!3951 = !DILocation(line: 112, column: 7, scope: !3941)
!3952 = !DILocation(line: 117, column: 7, scope: !3941)
!3953 = !DILocation(line: 117, column: 7, scope: !3944)
!3954 = !DILocation(line: 119, column: 7, scope: !3941)
!3955 = !DILocation(line: 124, column: 7, scope: !3941)
!3956 = !DILocation(line: 124, column: 7, scope: !3944)
!3957 = !DILocation(line: 126, column: 7, scope: !3941)
!3958 = !DILocation(line: 131, column: 7, scope: !3941)
!3959 = !DILocation(line: 131, column: 7, scope: !3944)
!3960 = !DILocation(line: 134, column: 7, scope: !3941)
!3961 = !DILocation(line: 139, column: 7, scope: !3941)
!3962 = !DILocation(line: 139, column: 7, scope: !3944)
!3963 = !DILocation(line: 142, column: 7, scope: !3941)
!3964 = !DILocation(line: 147, column: 7, scope: !3941)
!3965 = !DILocation(line: 147, column: 7, scope: !3944)
!3966 = !DILocation(line: 151, column: 7, scope: !3941)
!3967 = !DILocation(line: 156, column: 7, scope: !3941)
!3968 = !DILocation(line: 156, column: 7, scope: !3944)
!3969 = !DILocation(line: 160, column: 7, scope: !3941)
!3970 = !DILocation(line: 167, column: 7, scope: !3941)
!3971 = !DILocation(line: 167, column: 7, scope: !3944)
!3972 = !DILocation(line: 171, column: 7, scope: !3941)
!3973 = !DILocation(line: 173, column: 1, scope: !3872)
!3974 = distinct !DISubprogram(name: "version_etc_ar", scope: !667, file: !667, line: 180, type: !3975, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !663, variables: !3977)
!3975 = !DISubroutineType(types: !3976)
!3976 = !{null, !3875, !43, !43, !43, !3915}
!3977 = !{!3978, !3979, !3980, !3981, !3982, !3983}
!3978 = !DILocalVariable(name: "stream", arg: 1, scope: !3974, file: !667, line: 180, type: !3875)
!3979 = !DILocalVariable(name: "command_name", arg: 2, scope: !3974, file: !667, line: 181, type: !43)
!3980 = !DILocalVariable(name: "package", arg: 3, scope: !3974, file: !667, line: 181, type: !43)
!3981 = !DILocalVariable(name: "version", arg: 4, scope: !3974, file: !667, line: 182, type: !43)
!3982 = !DILocalVariable(name: "authors", arg: 5, scope: !3974, file: !667, line: 182, type: !3915)
!3983 = !DILocalVariable(name: "n_authors", scope: !3974, file: !667, line: 184, type: !35)
!3984 = !DILocation(line: 180, column: 23, scope: !3974)
!3985 = !DILocation(line: 181, column: 29, scope: !3974)
!3986 = !DILocation(line: 181, column: 55, scope: !3974)
!3987 = !DILocation(line: 182, column: 29, scope: !3974)
!3988 = !DILocation(line: 182, column: 59, scope: !3974)
!3989 = !DILocation(line: 184, column: 10, scope: !3974)
!3990 = !DILocation(line: 186, column: 8, scope: !3991)
!3991 = distinct !DILexicalBlock(scope: !3974, file: !667, line: 186, column: 3)
!3992 = !DILocation(line: 186, column: 23, scope: !3993)
!3993 = !DILexicalBlockFile(scope: !3994, file: !667, discriminator: 1)
!3994 = distinct !DILexicalBlock(scope: !3991, file: !667, line: 186, column: 3)
!3995 = !DILocation(line: 186, column: 3, scope: !3996)
!3996 = !DILexicalBlockFile(scope: !3991, file: !667, discriminator: 1)
!3997 = !DILocation(line: 186, column: 52, scope: !3998)
!3998 = !DILexicalBlockFile(scope: !3994, file: !667, discriminator: 3)
!3999 = distinct !{!3999, !4000, !4001}
!4000 = !DILocation(line: 186, column: 3, scope: !3991)
!4001 = !DILocation(line: 187, column: 5, scope: !3991)
!4002 = !DILocation(line: 188, column: 3, scope: !3974)
!4003 = !DILocation(line: 189, column: 1, scope: !3974)
!4004 = distinct !DISubprogram(name: "version_etc_va", scope: !667, file: !667, line: 196, type: !4005, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !663, variables: !4014)
!4005 = !DISubroutineType(types: !4006)
!4006 = !{null, !3875, !43, !43, !43, !4007}
!4007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4008, size: 64)
!4008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !664, line: 189, size: 192, elements: !4009)
!4009 = !{!4010, !4011, !4012, !4013}
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4008, file: !664, line: 189, baseType: !69, size: 32)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4008, file: !664, line: 189, baseType: !69, size: 32, offset: 32)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4008, file: !664, line: 189, baseType: !47, size: 64, offset: 64)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4008, file: !664, line: 189, baseType: !47, size: 64, offset: 128)
!4014 = !{!4015, !4016, !4017, !4018, !4019, !4020, !4021}
!4015 = !DILocalVariable(name: "stream", arg: 1, scope: !4004, file: !667, line: 196, type: !3875)
!4016 = !DILocalVariable(name: "command_name", arg: 2, scope: !4004, file: !667, line: 197, type: !43)
!4017 = !DILocalVariable(name: "package", arg: 3, scope: !4004, file: !667, line: 197, type: !43)
!4018 = !DILocalVariable(name: "version", arg: 4, scope: !4004, file: !667, line: 198, type: !43)
!4019 = !DILocalVariable(name: "authors", arg: 5, scope: !4004, file: !667, line: 198, type: !4007)
!4020 = !DILocalVariable(name: "n_authors", scope: !4004, file: !667, line: 200, type: !35)
!4021 = !DILocalVariable(name: "authtab", scope: !4004, file: !667, line: 201, type: !4022)
!4022 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 640, elements: !270)
!4023 = !DILocation(line: 196, column: 23, scope: !4004)
!4024 = !DILocation(line: 197, column: 29, scope: !4004)
!4025 = !DILocation(line: 197, column: 55, scope: !4004)
!4026 = !DILocation(line: 198, column: 29, scope: !4004)
!4027 = !DILocation(line: 198, column: 46, scope: !4004)
!4028 = !DILocation(line: 201, column: 3, scope: !4004)
!4029 = !DILocation(line: 201, column: 15, scope: !4004)
!4030 = !DILocation(line: 200, column: 10, scope: !4004)
!4031 = !DILocation(line: 205, column: 35, scope: !4032)
!4032 = !DILexicalBlockFile(scope: !4033, file: !667, discriminator: 1)
!4033 = distinct !DILexicalBlock(scope: !4034, file: !667, line: 203, column: 3)
!4034 = distinct !DILexicalBlock(scope: !4004, file: !667, line: 203, column: 3)
!4035 = !DILocation(line: 205, column: 35, scope: !4036)
!4036 = !DILexicalBlockFile(scope: !4033, file: !667, discriminator: 2)
!4037 = !DILocation(line: 205, column: 35, scope: !4038)
!4038 = !DILexicalBlockFile(scope: !4033, file: !667, discriminator: 3)
!4039 = !DILocation(line: 205, column: 35, scope: !4040)
!4040 = !DILexicalBlockFile(scope: !4033, file: !667, discriminator: 4)
!4041 = !DILocation(line: 205, column: 14, scope: !4040)
!4042 = !DILocation(line: 205, column: 33, scope: !4040)
!4043 = !DILocation(line: 205, column: 67, scope: !4040)
!4044 = !DILocation(line: 203, column: 3, scope: !4045)
!4045 = !DILexicalBlockFile(scope: !4034, file: !667, discriminator: 1)
!4046 = !DILocation(line: 208, column: 3, scope: !4004)
!4047 = !DILocation(line: 210, column: 1, scope: !4004)
!4048 = distinct !DISubprogram(name: "version_etc", scope: !667, file: !667, line: 227, type: !4049, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !663, variables: !4051)
!4049 = !DISubroutineType(types: !4050)
!4050 = !{null, !3875, !43, !43, !43, null}
!4051 = !{!4052, !4053, !4054, !4055, !4056}
!4052 = !DILocalVariable(name: "stream", arg: 1, scope: !4048, file: !667, line: 227, type: !3875)
!4053 = !DILocalVariable(name: "command_name", arg: 2, scope: !4048, file: !667, line: 228, type: !43)
!4054 = !DILocalVariable(name: "package", arg: 3, scope: !4048, file: !667, line: 228, type: !43)
!4055 = !DILocalVariable(name: "version", arg: 4, scope: !4048, file: !667, line: 229, type: !43)
!4056 = !DILocalVariable(name: "authors", scope: !4048, file: !667, line: 231, type: !4057)
!4057 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1173, line: 80, baseType: !4058)
!4058 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !4059, line: 50, baseType: !4060)
!4059 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4060 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !664, line: 231, baseType: !4061)
!4061 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4008, size: 192, elements: !1207)
!4062 = !DILocation(line: 227, column: 20, scope: !4048)
!4063 = !DILocation(line: 228, column: 26, scope: !4048)
!4064 = !DILocation(line: 228, column: 52, scope: !4048)
!4065 = !DILocation(line: 229, column: 26, scope: !4048)
!4066 = !DILocation(line: 231, column: 3, scope: !4048)
!4067 = !DILocation(line: 231, column: 11, scope: !4048)
!4068 = !DILocation(line: 233, column: 3, scope: !4048)
!4069 = !DILocation(line: 234, column: 3, scope: !4048)
!4070 = !DILocation(line: 235, column: 3, scope: !4048)
!4071 = !DILocation(line: 236, column: 1, scope: !4048)
!4072 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !667, file: !667, line: 239, type: !195, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !663, variables: !197)
!4073 = !DILocation(line: 245, column: 3, scope: !4072)
!4074 = !DILocation(line: 245, column: 3, scope: !4075)
!4075 = !DILexicalBlockFile(scope: !4072, file: !667, discriminator: 1)
!4076 = !DILocation(line: 251, column: 3, scope: !4072)
!4077 = !DILocation(line: 251, column: 3, scope: !4075)
!4078 = !DILocation(line: 256, column: 3, scope: !4072)
!4079 = !DILocation(line: 256, column: 3, scope: !4075)
!4080 = !DILocation(line: 258, column: 1, scope: !4072)
!4081 = distinct !DISubprogram(name: "xnmalloc", scope: !675, file: !675, line: 105, type: !4082, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !671, variables: !4084)
!4082 = !DISubroutineType(types: !4083)
!4083 = !{!47, !35, !35}
!4084 = !{!4085, !4086}
!4085 = !DILocalVariable(name: "n", arg: 1, scope: !4081, file: !675, line: 105, type: !35)
!4086 = !DILocalVariable(name: "s", arg: 2, scope: !4081, file: !675, line: 105, type: !35)
!4087 = !DILocation(line: 105, column: 18, scope: !4081)
!4088 = !DILocation(line: 105, column: 28, scope: !4081)
!4089 = !DILocation(line: 107, column: 7, scope: !4090)
!4090 = distinct !DILexicalBlock(scope: !4081, file: !675, line: 107, column: 7)
!4091 = !DILocation(line: 107, column: 7, scope: !4081)
!4092 = !DILocation(line: 108, column: 5, scope: !4090)
!4093 = !DILocation(line: 109, column: 21, scope: !4081)
!4094 = !DILocalVariable(name: "n", arg: 1, scope: !4095, file: !4096, line: 39, type: !35)
!4095 = distinct !DISubprogram(name: "xmalloc", scope: !4096, file: !4096, line: 39, type: !4097, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !671, variables: !4099)
!4096 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4097 = !DISubroutineType(types: !4098)
!4098 = !{!47, !35}
!4099 = !{!4094, !4100}
!4100 = !DILocalVariable(name: "p", scope: !4095, file: !4096, line: 41, type: !47)
!4101 = !DILocation(line: 39, column: 17, scope: !4095, inlinedAt: !4102)
!4102 = distinct !DILocation(line: 109, column: 10, scope: !4081)
!4103 = !DILocation(line: 41, column: 13, scope: !4095, inlinedAt: !4102)
!4104 = !DILocation(line: 41, column: 9, scope: !4095, inlinedAt: !4102)
!4105 = !DILocation(line: 42, column: 8, scope: !4106, inlinedAt: !4102)
!4106 = distinct !DILexicalBlock(scope: !4095, file: !4096, line: 42, column: 7)
!4107 = !DILocation(line: 42, column: 15, scope: !4108, inlinedAt: !4102)
!4108 = !DILexicalBlockFile(scope: !4106, file: !4096, discriminator: 1)
!4109 = !DILocation(line: 42, column: 10, scope: !4106, inlinedAt: !4102)
!4110 = !DILocation(line: 43, column: 5, scope: !4106, inlinedAt: !4102)
!4111 = !DILocation(line: 109, column: 3, scope: !4081)
!4112 = !DILocation(line: 39, column: 17, scope: !4095)
!4113 = !DILocation(line: 41, column: 13, scope: !4095)
!4114 = !DILocation(line: 41, column: 9, scope: !4095)
!4115 = !DILocation(line: 42, column: 8, scope: !4106)
!4116 = !DILocation(line: 42, column: 15, scope: !4108)
!4117 = !DILocation(line: 42, column: 10, scope: !4106)
!4118 = !DILocation(line: 43, column: 5, scope: !4106)
!4119 = !DILocation(line: 44, column: 3, scope: !4095)
!4120 = distinct !DISubprogram(name: "xnrealloc", scope: !675, file: !675, line: 118, type: !4121, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !671, variables: !4123)
!4121 = !DISubroutineType(types: !4122)
!4122 = !{!47, !47, !35, !35}
!4123 = !{!4124, !4125, !4126}
!4124 = !DILocalVariable(name: "p", arg: 1, scope: !4120, file: !675, line: 118, type: !47)
!4125 = !DILocalVariable(name: "n", arg: 2, scope: !4120, file: !675, line: 118, type: !35)
!4126 = !DILocalVariable(name: "s", arg: 3, scope: !4120, file: !675, line: 118, type: !35)
!4127 = !DILocation(line: 118, column: 18, scope: !4120)
!4128 = !DILocation(line: 118, column: 28, scope: !4120)
!4129 = !DILocation(line: 118, column: 38, scope: !4120)
!4130 = !DILocation(line: 120, column: 7, scope: !4131)
!4131 = distinct !DILexicalBlock(scope: !4120, file: !675, line: 120, column: 7)
!4132 = !DILocation(line: 120, column: 7, scope: !4120)
!4133 = !DILocation(line: 121, column: 5, scope: !4131)
!4134 = !DILocation(line: 122, column: 25, scope: !4120)
!4135 = !DILocalVariable(name: "p", arg: 1, scope: !4136, file: !4096, line: 51, type: !47)
!4136 = distinct !DISubprogram(name: "xrealloc", scope: !4096, file: !4096, line: 51, type: !4137, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !671, variables: !4139)
!4137 = !DISubroutineType(types: !4138)
!4138 = !{!47, !47, !35}
!4139 = !{!4135, !4140}
!4140 = !DILocalVariable(name: "n", arg: 2, scope: !4136, file: !4096, line: 51, type: !35)
!4141 = !DILocation(line: 51, column: 17, scope: !4136, inlinedAt: !4142)
!4142 = distinct !DILocation(line: 122, column: 10, scope: !4120)
!4143 = !DILocation(line: 51, column: 27, scope: !4136, inlinedAt: !4142)
!4144 = !DILocation(line: 53, column: 8, scope: !4145, inlinedAt: !4142)
!4145 = distinct !DILexicalBlock(scope: !4136, file: !4096, line: 53, column: 7)
!4146 = !DILocation(line: 53, column: 13, scope: !4147, inlinedAt: !4142)
!4147 = !DILexicalBlockFile(scope: !4145, file: !4096, discriminator: 1)
!4148 = !DILocation(line: 53, column: 10, scope: !4145, inlinedAt: !4142)
!4149 = !DILocation(line: 57, column: 7, scope: !4150, inlinedAt: !4142)
!4150 = distinct !DILexicalBlock(scope: !4145, file: !4096, line: 54, column: 5)
!4151 = !DILocation(line: 58, column: 7, scope: !4150, inlinedAt: !4142)
!4152 = !DILocation(line: 61, column: 7, scope: !4136, inlinedAt: !4142)
!4153 = !DILocation(line: 62, column: 8, scope: !4154, inlinedAt: !4142)
!4154 = distinct !DILexicalBlock(scope: !4136, file: !4096, line: 62, column: 7)
!4155 = !DILocation(line: 62, column: 13, scope: !4156, inlinedAt: !4142)
!4156 = !DILexicalBlockFile(scope: !4154, file: !4096, discriminator: 1)
!4157 = !DILocation(line: 62, column: 10, scope: !4154, inlinedAt: !4142)
!4158 = !DILocation(line: 63, column: 5, scope: !4154, inlinedAt: !4142)
!4159 = !DILocation(line: 122, column: 3, scope: !4120)
!4160 = !DILocation(line: 51, column: 17, scope: !4136)
!4161 = !DILocation(line: 51, column: 27, scope: !4136)
!4162 = !DILocation(line: 53, column: 8, scope: !4145)
!4163 = !DILocation(line: 53, column: 13, scope: !4147)
!4164 = !DILocation(line: 53, column: 10, scope: !4145)
!4165 = !DILocation(line: 57, column: 7, scope: !4150)
!4166 = !DILocation(line: 58, column: 7, scope: !4150)
!4167 = !DILocation(line: 61, column: 7, scope: !4136)
!4168 = !DILocation(line: 62, column: 8, scope: !4154)
!4169 = !DILocation(line: 62, column: 13, scope: !4156)
!4170 = !DILocation(line: 62, column: 10, scope: !4154)
!4171 = !DILocation(line: 63, column: 5, scope: !4154)
!4172 = !DILocation(line: 65, column: 1, scope: !4136)
!4173 = !DILocation(line: 180, column: 19, scope: !676)
!4174 = !DILocation(line: 180, column: 30, scope: !676)
!4175 = !DILocation(line: 180, column: 41, scope: !676)
!4176 = !DILocation(line: 182, column: 14, scope: !676)
!4177 = !DILocation(line: 182, column: 10, scope: !676)
!4178 = !DILocation(line: 184, column: 9, scope: !4179)
!4179 = distinct !DILexicalBlock(scope: !676, file: !675, line: 184, column: 7)
!4180 = !DILocation(line: 184, column: 7, scope: !676)
!4181 = !DILocation(line: 186, column: 13, scope: !4182)
!4182 = distinct !DILexicalBlock(scope: !4183, file: !675, line: 186, column: 11)
!4183 = distinct !DILexicalBlock(scope: !4179, file: !675, line: 185, column: 5)
!4184 = !DILocation(line: 186, column: 11, scope: !4183)
!4185 = !DILocation(line: 194, column: 30, scope: !4186)
!4186 = distinct !DILexicalBlock(scope: !4182, file: !675, line: 187, column: 9)
!4187 = !DILocation(line: 195, column: 16, scope: !4186)
!4188 = !DILocation(line: 195, column: 13, scope: !4186)
!4189 = !DILocation(line: 196, column: 9, scope: !4186)
!4190 = !DILocation(line: 204, column: 69, scope: !4191)
!4191 = distinct !DILexicalBlock(scope: !4192, file: !675, line: 204, column: 11)
!4192 = distinct !DILexicalBlock(scope: !4179, file: !675, line: 199, column: 5)
!4193 = !DILocation(line: 205, column: 11, scope: !4191)
!4194 = !DILocation(line: 204, column: 11, scope: !4192)
!4195 = !DILocation(line: 206, column: 9, scope: !4191)
!4196 = !DILocation(line: 210, column: 7, scope: !676)
!4197 = !DILocation(line: 211, column: 25, scope: !676)
!4198 = !DILocation(line: 51, column: 17, scope: !4136, inlinedAt: !4199)
!4199 = distinct !DILocation(line: 211, column: 10, scope: !676)
!4200 = !DILocation(line: 51, column: 27, scope: !4136, inlinedAt: !4199)
!4201 = !DILocation(line: 53, column: 10, scope: !4145, inlinedAt: !4199)
!4202 = !DILocation(line: 207, column: 14, scope: !4192)
!4203 = !DILocation(line: 207, column: 18, scope: !4192)
!4204 = !DILocation(line: 207, column: 9, scope: !4192)
!4205 = !DILocation(line: 53, column: 8, scope: !4145, inlinedAt: !4199)
!4206 = !DILocation(line: 57, column: 7, scope: !4150, inlinedAt: !4199)
!4207 = !DILocation(line: 58, column: 7, scope: !4150, inlinedAt: !4199)
!4208 = !DILocation(line: 61, column: 7, scope: !4136, inlinedAt: !4199)
!4209 = !DILocation(line: 62, column: 8, scope: !4154, inlinedAt: !4199)
!4210 = !DILocation(line: 62, column: 13, scope: !4156, inlinedAt: !4199)
!4211 = !DILocation(line: 62, column: 10, scope: !4154, inlinedAt: !4199)
!4212 = !DILocation(line: 63, column: 5, scope: !4154, inlinedAt: !4199)
!4213 = !DILocation(line: 211, column: 3, scope: !676)
!4214 = distinct !DISubprogram(name: "xcharalloc", scope: !675, file: !675, line: 220, type: !3146, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !671, variables: !4215)
!4215 = !{!4216}
!4216 = !DILocalVariable(name: "n", arg: 1, scope: !4214, file: !675, line: 220, type: !35)
!4217 = !DILocation(line: 220, column: 20, scope: !4214)
!4218 = !DILocation(line: 39, column: 17, scope: !4095, inlinedAt: !4219)
!4219 = distinct !DILocation(line: 222, column: 10, scope: !4214)
!4220 = !DILocation(line: 41, column: 13, scope: !4095, inlinedAt: !4219)
!4221 = !DILocation(line: 41, column: 9, scope: !4095, inlinedAt: !4219)
!4222 = !DILocation(line: 42, column: 8, scope: !4106, inlinedAt: !4219)
!4223 = !DILocation(line: 42, column: 15, scope: !4108, inlinedAt: !4219)
!4224 = !DILocation(line: 42, column: 10, scope: !4106, inlinedAt: !4219)
!4225 = !DILocation(line: 43, column: 5, scope: !4106, inlinedAt: !4219)
!4226 = !DILocation(line: 222, column: 3, scope: !4214)
!4227 = distinct !DISubprogram(name: "x2realloc", scope: !4096, file: !4096, line: 74, type: !4228, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !671, variables: !4230)
!4228 = !DISubroutineType(types: !4229)
!4229 = !{!47, !47, !679}
!4230 = !{!4231, !4232}
!4231 = !DILocalVariable(name: "p", arg: 1, scope: !4227, file: !4096, line: 74, type: !47)
!4232 = !DILocalVariable(name: "pn", arg: 2, scope: !4227, file: !4096, line: 74, type: !679)
!4233 = !DILocation(line: 74, column: 18, scope: !4227)
!4234 = !DILocation(line: 74, column: 29, scope: !4227)
!4235 = !DILocation(line: 180, column: 19, scope: !676, inlinedAt: !4236)
!4236 = distinct !DILocation(line: 76, column: 10, scope: !4227)
!4237 = !DILocation(line: 180, column: 30, scope: !676, inlinedAt: !4236)
!4238 = !DILocation(line: 180, column: 41, scope: !676, inlinedAt: !4236)
!4239 = !DILocation(line: 182, column: 14, scope: !676, inlinedAt: !4236)
!4240 = !DILocation(line: 182, column: 10, scope: !676, inlinedAt: !4236)
!4241 = !DILocation(line: 184, column: 9, scope: !4179, inlinedAt: !4236)
!4242 = !DILocation(line: 184, column: 7, scope: !676, inlinedAt: !4236)
!4243 = !DILocation(line: 186, column: 13, scope: !4182, inlinedAt: !4236)
!4244 = !DILocation(line: 186, column: 11, scope: !4183, inlinedAt: !4236)
!4245 = !DILocation(line: 210, column: 7, scope: !676, inlinedAt: !4236)
!4246 = !DILocation(line: 51, column: 17, scope: !4136, inlinedAt: !4247)
!4247 = distinct !DILocation(line: 211, column: 10, scope: !676, inlinedAt: !4236)
!4248 = !DILocation(line: 51, column: 27, scope: !4136, inlinedAt: !4247)
!4249 = !DILocation(line: 53, column: 10, scope: !4145, inlinedAt: !4247)
!4250 = !DILocation(line: 205, column: 11, scope: !4191, inlinedAt: !4236)
!4251 = !DILocation(line: 204, column: 11, scope: !4192, inlinedAt: !4236)
!4252 = !DILocation(line: 206, column: 9, scope: !4191, inlinedAt: !4236)
!4253 = !DILocation(line: 207, column: 14, scope: !4192, inlinedAt: !4236)
!4254 = !DILocation(line: 207, column: 18, scope: !4192, inlinedAt: !4236)
!4255 = !DILocation(line: 207, column: 9, scope: !4192, inlinedAt: !4236)
!4256 = !DILocation(line: 53, column: 8, scope: !4145, inlinedAt: !4247)
!4257 = !DILocation(line: 57, column: 7, scope: !4150, inlinedAt: !4247)
!4258 = !DILocation(line: 58, column: 7, scope: !4150, inlinedAt: !4247)
!4259 = !DILocation(line: 61, column: 7, scope: !4136, inlinedAt: !4247)
!4260 = !DILocation(line: 62, column: 8, scope: !4154, inlinedAt: !4247)
!4261 = !DILocation(line: 62, column: 13, scope: !4156, inlinedAt: !4247)
!4262 = !DILocation(line: 62, column: 10, scope: !4154, inlinedAt: !4247)
!4263 = !DILocation(line: 63, column: 5, scope: !4154, inlinedAt: !4247)
!4264 = !DILocation(line: 76, column: 3, scope: !4227)
!4265 = distinct !DISubprogram(name: "xzalloc", scope: !4096, file: !4096, line: 84, type: !4097, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !671, variables: !4266)
!4266 = !{!4267}
!4267 = !DILocalVariable(name: "s", arg: 1, scope: !4265, file: !4096, line: 84, type: !35)
!4268 = !DILocation(line: 84, column: 17, scope: !4265)
!4269 = !DILocation(line: 39, column: 17, scope: !4095, inlinedAt: !4270)
!4270 = distinct !DILocation(line: 86, column: 18, scope: !4265)
!4271 = !DILocation(line: 41, column: 13, scope: !4095, inlinedAt: !4270)
!4272 = !DILocation(line: 41, column: 9, scope: !4095, inlinedAt: !4270)
!4273 = !DILocation(line: 42, column: 8, scope: !4106, inlinedAt: !4270)
!4274 = !DILocation(line: 42, column: 15, scope: !4108, inlinedAt: !4270)
!4275 = !DILocation(line: 42, column: 10, scope: !4106, inlinedAt: !4270)
!4276 = !DILocation(line: 43, column: 5, scope: !4106, inlinedAt: !4270)
!4277 = !DILocation(line: 86, column: 10, scope: !4265)
!4278 = !DILocation(line: 86, column: 3, scope: !4265)
!4279 = distinct !DISubprogram(name: "xcalloc", scope: !4096, file: !4096, line: 93, type: !4082, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !671, variables: !4280)
!4280 = !{!4281, !4282, !4283}
!4281 = !DILocalVariable(name: "n", arg: 1, scope: !4279, file: !4096, line: 93, type: !35)
!4282 = !DILocalVariable(name: "s", arg: 2, scope: !4279, file: !4096, line: 93, type: !35)
!4283 = !DILocalVariable(name: "p", scope: !4279, file: !4096, line: 95, type: !47)
!4284 = !DILocation(line: 93, column: 17, scope: !4279)
!4285 = !DILocation(line: 93, column: 27, scope: !4279)
!4286 = !DILocation(line: 100, column: 7, scope: !4287)
!4287 = distinct !DILexicalBlock(scope: !4279, file: !4096, line: 100, column: 7)
!4288 = !DILocation(line: 101, column: 7, scope: !4287)
!4289 = !DILocation(line: 101, column: 18, scope: !4290)
!4290 = !DILexicalBlockFile(scope: !4287, file: !4096, discriminator: 1)
!4291 = !DILocation(line: 95, column: 9, scope: !4279)
!4292 = !DILocation(line: 101, column: 16, scope: !4290)
!4293 = !DILocation(line: 100, column: 7, scope: !4294)
!4294 = !DILexicalBlockFile(scope: !4279, file: !4096, discriminator: 1)
!4295 = !DILocation(line: 102, column: 5, scope: !4287)
!4296 = !DILocation(line: 103, column: 3, scope: !4279)
!4297 = distinct !DISubprogram(name: "xmemdup", scope: !4096, file: !4096, line: 111, type: !4298, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !671, variables: !4300)
!4298 = !DISubroutineType(types: !4299)
!4299 = !{!47, !38, !35}
!4300 = !{!4301, !4302}
!4301 = !DILocalVariable(name: "p", arg: 1, scope: !4297, file: !4096, line: 111, type: !38)
!4302 = !DILocalVariable(name: "s", arg: 2, scope: !4297, file: !4096, line: 111, type: !35)
!4303 = !DILocation(line: 111, column: 22, scope: !4297)
!4304 = !DILocation(line: 111, column: 32, scope: !4297)
!4305 = !DILocation(line: 39, column: 17, scope: !4095, inlinedAt: !4306)
!4306 = distinct !DILocation(line: 113, column: 18, scope: !4297)
!4307 = !DILocation(line: 41, column: 13, scope: !4095, inlinedAt: !4306)
!4308 = !DILocation(line: 41, column: 9, scope: !4095, inlinedAt: !4306)
!4309 = !DILocation(line: 42, column: 8, scope: !4106, inlinedAt: !4306)
!4310 = !DILocation(line: 42, column: 15, scope: !4108, inlinedAt: !4306)
!4311 = !DILocation(line: 42, column: 10, scope: !4106, inlinedAt: !4306)
!4312 = !DILocation(line: 43, column: 5, scope: !4106, inlinedAt: !4306)
!4313 = !DILocation(line: 113, column: 10, scope: !4297)
!4314 = !DILocation(line: 113, column: 3, scope: !4297)
!4315 = distinct !DISubprogram(name: "xstrdup", scope: !4096, file: !4096, line: 119, type: !3351, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !671, variables: !4316)
!4316 = !{!4317}
!4317 = !DILocalVariable(name: "string", arg: 1, scope: !4315, file: !4096, line: 119, type: !43)
!4318 = !DILocation(line: 119, column: 22, scope: !4315)
!4319 = !DILocation(line: 121, column: 27, scope: !4315)
!4320 = !DILocation(line: 121, column: 43, scope: !4315)
!4321 = !DILocation(line: 111, column: 22, scope: !4297, inlinedAt: !4322)
!4322 = distinct !DILocation(line: 121, column: 10, scope: !4323)
!4323 = !DILexicalBlockFile(scope: !4315, file: !4096, discriminator: 1)
!4324 = !DILocation(line: 111, column: 32, scope: !4297, inlinedAt: !4322)
!4325 = !DILocation(line: 39, column: 17, scope: !4095, inlinedAt: !4326)
!4326 = distinct !DILocation(line: 113, column: 18, scope: !4297, inlinedAt: !4322)
!4327 = !DILocation(line: 41, column: 13, scope: !4095, inlinedAt: !4326)
!4328 = !DILocation(line: 41, column: 9, scope: !4095, inlinedAt: !4326)
!4329 = !DILocation(line: 42, column: 8, scope: !4106, inlinedAt: !4326)
!4330 = !DILocation(line: 42, column: 15, scope: !4108, inlinedAt: !4326)
!4331 = !DILocation(line: 42, column: 10, scope: !4106, inlinedAt: !4326)
!4332 = !DILocation(line: 43, column: 5, scope: !4106, inlinedAt: !4326)
!4333 = !DILocation(line: 113, column: 10, scope: !4297, inlinedAt: !4322)
!4334 = !DILocation(line: 121, column: 3, scope: !4315)
!4335 = distinct !DISubprogram(name: "xalloc_die", scope: !4336, file: !4336, line: 32, type: !195, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !688, variables: !197)
!4336 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4337 = !DILocation(line: 34, column: 10, scope: !4335)
!4338 = !DILocation(line: 34, column: 33, scope: !4335)
!4339 = !DILocation(line: 34, column: 3, scope: !4340)
!4340 = !DILexicalBlockFile(scope: !4335, file: !4336, discriminator: 1)
!4341 = !DILocation(line: 40, column: 3, scope: !4335)
!4342 = distinct !DISubprogram(name: "xnumtoimax", scope: !4343, file: !4343, line: 36, type: !4344, isLocal: false, isDefinition: true, scopeLine: 38, flags: DIFlagPrototyped, isOptimized: true, unit: !690, variables: !4346)
!4343 = !DIFile(filename: "./lib/xdectoint.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4344 = !DISubroutineType(types: !4345)
!4345 = !{!105, !43, !140, !105, !105, !43, !43, !140}
!4346 = !{!4347, !4348, !4349, !4350, !4351, !4352, !4353, !4354, !4356}
!4347 = !DILocalVariable(name: "n_str", arg: 1, scope: !4342, file: !4343, line: 36, type: !43)
!4348 = !DILocalVariable(name: "base", arg: 2, scope: !4342, file: !4343, line: 36, type: !140)
!4349 = !DILocalVariable(name: "min", arg: 3, scope: !4342, file: !4343, line: 36, type: !105)
!4350 = !DILocalVariable(name: "max", arg: 4, scope: !4342, file: !4343, line: 36, type: !105)
!4351 = !DILocalVariable(name: "suffixes", arg: 5, scope: !4342, file: !4343, line: 37, type: !43)
!4352 = !DILocalVariable(name: "err", arg: 6, scope: !4342, file: !4343, line: 37, type: !43)
!4353 = !DILocalVariable(name: "err_exit", arg: 7, scope: !4342, file: !4343, line: 37, type: !140)
!4354 = !DILocalVariable(name: "s_err", scope: !4342, file: !4343, line: 39, type: !4355)
!4355 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !694, line: 39, baseType: !693)
!4356 = !DILocalVariable(name: "tnum", scope: !4342, file: !4343, line: 41, type: !105)
!4357 = !DILocation(line: 36, column: 26, scope: !4342)
!4358 = !DILocation(line: 36, column: 37, scope: !4342)
!4359 = !DILocation(line: 36, column: 57, scope: !4342)
!4360 = !DILocation(line: 36, column: 76, scope: !4342)
!4361 = !DILocation(line: 37, column: 26, scope: !4342)
!4362 = !DILocation(line: 37, column: 48, scope: !4342)
!4363 = !DILocation(line: 37, column: 57, scope: !4342)
!4364 = !DILocation(line: 41, column: 3, scope: !4342)
!4365 = !DILocation(line: 41, column: 17, scope: !4342)
!4366 = !DILocation(line: 42, column: 11, scope: !4342)
!4367 = !DILocation(line: 39, column: 16, scope: !4342)
!4368 = !DILocation(line: 44, column: 7, scope: !4342)
!4369 = !DILocation(line: 69, column: 50, scope: !4370)
!4370 = !DILexicalBlockFile(scope: !4371, file: !4343, discriminator: 3)
!4371 = distinct !DILexicalBlock(scope: !4372, file: !4343, line: 67, column: 5)
!4372 = distinct !DILexicalBlock(scope: !4342, file: !4343, line: 66, column: 7)
!4373 = !DILocation(line: 46, column: 11, scope: !4374)
!4374 = distinct !DILexicalBlock(scope: !4375, file: !4343, line: 46, column: 11)
!4375 = distinct !DILexicalBlock(scope: !4376, file: !4343, line: 45, column: 5)
!4376 = distinct !DILexicalBlock(scope: !4342, file: !4343, line: 44, column: 7)
!4377 = !DILocation(line: 46, column: 16, scope: !4374)
!4378 = !DILocation(line: 46, column: 29, scope: !4379)
!4379 = !DILexicalBlockFile(scope: !4374, file: !4343, discriminator: 1)
!4380 = !DILocation(line: 46, column: 22, scope: !4374)
!4381 = !DILocation(line: 51, column: 20, scope: !4382)
!4382 = distinct !DILexicalBlock(scope: !4383, file: !4343, line: 51, column: 15)
!4383 = distinct !DILexicalBlock(scope: !4374, file: !4343, line: 47, column: 9)
!4384 = !DILocation(line: 51, column: 15, scope: !4383)
!4385 = !DILocation(line: 52, column: 13, scope: !4382)
!4386 = !DILocation(line: 52, column: 19, scope: !4382)
!4387 = !DILocation(line: 54, column: 25, scope: !4388)
!4388 = distinct !DILexicalBlock(scope: !4382, file: !4343, line: 54, column: 20)
!4389 = !DILocation(line: 55, column: 13, scope: !4388)
!4390 = !DILocation(line: 54, column: 20, scope: !4382)
!4391 = !DILocation(line: 62, column: 5, scope: !4392)
!4392 = distinct !DILexicalBlock(scope: !4376, file: !4343, line: 61, column: 12)
!4393 = !DILocation(line: 62, column: 11, scope: !4392)
!4394 = !DILocation(line: 64, column: 5, scope: !4395)
!4395 = distinct !DILexicalBlock(scope: !4392, file: !4343, line: 63, column: 12)
!4396 = !DILocation(line: 64, column: 11, scope: !4395)
!4397 = !DILocation(line: 69, column: 14, scope: !4371)
!4398 = !DILocation(line: 69, column: 56, scope: !4370)
!4399 = !DILocation(line: 70, column: 29, scope: !4371)
!4400 = !DILocation(line: 69, column: 7, scope: !4401)
!4401 = !DILexicalBlockFile(scope: !4371, file: !4343, discriminator: 6)
!4402 = !DILocation(line: 71, column: 5, scope: !4371)
!4403 = !DILocation(line: 73, column: 10, scope: !4342)
!4404 = !DILocation(line: 74, column: 1, scope: !4342)
!4405 = !DILocation(line: 73, column: 3, scope: !4342)
!4406 = distinct !DISubprogram(name: "xdectoimax", scope: !4343, file: !4343, line: 82, type: !4407, isLocal: false, isDefinition: true, scopeLine: 84, flags: DIFlagPrototyped, isOptimized: true, unit: !690, variables: !4409)
!4407 = !DISubroutineType(types: !4408)
!4408 = !{!105, !43, !105, !105, !43, !43, !140}
!4409 = !{!4410, !4411, !4412, !4413, !4414, !4415}
!4410 = !DILocalVariable(name: "n_str", arg: 1, scope: !4406, file: !4343, line: 82, type: !43)
!4411 = !DILocalVariable(name: "min", arg: 2, scope: !4406, file: !4343, line: 82, type: !105)
!4412 = !DILocalVariable(name: "max", arg: 3, scope: !4406, file: !4343, line: 82, type: !105)
!4413 = !DILocalVariable(name: "suffixes", arg: 4, scope: !4406, file: !4343, line: 83, type: !43)
!4414 = !DILocalVariable(name: "err", arg: 5, scope: !4406, file: !4343, line: 83, type: !43)
!4415 = !DILocalVariable(name: "err_exit", arg: 6, scope: !4406, file: !4343, line: 83, type: !140)
!4416 = !DILocation(line: 82, column: 26, scope: !4406)
!4417 = !DILocation(line: 82, column: 47, scope: !4406)
!4418 = !DILocation(line: 82, column: 66, scope: !4406)
!4419 = !DILocation(line: 83, column: 26, scope: !4406)
!4420 = !DILocation(line: 83, column: 48, scope: !4406)
!4421 = !DILocation(line: 83, column: 57, scope: !4406)
!4422 = !DILocation(line: 85, column: 10, scope: !4406)
!4423 = !DILocation(line: 85, column: 3, scope: !4406)
!4424 = distinct !DISubprogram(name: "xstrtoimax", scope: !4425, file: !4425, line: 88, type: !4426, isLocal: false, isDefinition: true, scopeLine: 90, flags: DIFlagPrototyped, isOptimized: true, unit: !701, variables: !4429)
!4425 = !DIFile(filename: "./lib/xstrtol.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4426 = !DISubroutineType(types: !4427)
!4427 = !{!4355, !43, !802, !140, !4428, !43}
!4428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!4429 = !{!4430, !4431, !4432, !4433, !4434, !4435, !4436, !4437, !4438, !4439, !4442, !4443}
!4430 = !DILocalVariable(name: "s", arg: 1, scope: !4424, file: !4425, line: 88, type: !43)
!4431 = !DILocalVariable(name: "ptr", arg: 2, scope: !4424, file: !4425, line: 88, type: !802)
!4432 = !DILocalVariable(name: "strtol_base", arg: 3, scope: !4424, file: !4425, line: 88, type: !140)
!4433 = !DILocalVariable(name: "val", arg: 4, scope: !4424, file: !4425, line: 89, type: !4428)
!4434 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !4424, file: !4425, line: 89, type: !43)
!4435 = !DILocalVariable(name: "t_ptr", scope: !4424, file: !4425, line: 91, type: !46)
!4436 = !DILocalVariable(name: "p", scope: !4424, file: !4425, line: 92, type: !802)
!4437 = !DILocalVariable(name: "tmp", scope: !4424, file: !4425, line: 93, type: !105)
!4438 = !DILocalVariable(name: "err", scope: !4424, file: !4425, line: 94, type: !4355)
!4439 = !DILocalVariable(name: "base", scope: !4440, file: !4425, line: 141, type: !140)
!4440 = distinct !DILexicalBlock(scope: !4441, file: !4425, line: 140, column: 5)
!4441 = distinct !DILexicalBlock(scope: !4424, file: !4425, line: 139, column: 7)
!4442 = !DILocalVariable(name: "suffixes", scope: !4440, file: !4425, line: 142, type: !140)
!4443 = !DILocalVariable(name: "overflow", scope: !4440, file: !4425, line: 143, type: !4355)
!4444 = !DILocation(line: 88, column: 24, scope: !4424)
!4445 = !DILocation(line: 88, column: 34, scope: !4424)
!4446 = !DILocation(line: 88, column: 43, scope: !4424)
!4447 = !DILocation(line: 89, column: 24, scope: !4424)
!4448 = !DILocation(line: 89, column: 41, scope: !4424)
!4449 = !DILocation(line: 91, column: 3, scope: !4424)
!4450 = !DILocation(line: 94, column: 16, scope: !4424)
!4451 = !DILocation(line: 96, column: 3, scope: !4452)
!4452 = distinct !DILexicalBlock(scope: !4453, file: !4425, line: 96, column: 3)
!4453 = distinct !DILexicalBlock(scope: !4424, file: !4425, line: 96, column: 3)
!4454 = !DILocation(line: 96, column: 3, scope: !4455)
!4455 = !DILexicalBlockFile(scope: !4452, file: !4425, discriminator: 3)
!4456 = !DILocation(line: 98, column: 8, scope: !4424)
!4457 = !DILocation(line: 92, column: 10, scope: !4424)
!4458 = !DILocation(line: 100, column: 3, scope: !4424)
!4459 = !DILocation(line: 100, column: 9, scope: !4424)
!4460 = !DILocalVariable(name: "nptr", arg: 1, scope: !4461, file: !4462, line: 324, type: !1073)
!4461 = distinct !DISubprogram(name: "strtoimax", scope: !4462, file: !4462, line: 324, type: !4463, isLocal: false, isDefinition: true, scopeLine: 326, flags: DIFlagPrototyped, isOptimized: true, unit: !701, variables: !4466)
!4462 = !DIFile(filename: "/usr/include/inttypes.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4463 = !DISubroutineType(types: !4464)
!4464 = !{!105, !1073, !4465, !140}
!4465 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !802)
!4466 = !{!4460, !4467, !4468}
!4467 = !DILocalVariable(name: "endptr", arg: 2, scope: !4461, file: !4462, line: 324, type: !4465)
!4468 = !DILocalVariable(name: "base", arg: 3, scope: !4461, file: !4462, line: 324, type: !140)
!4469 = !DILocation(line: 324, column: 1, scope: !4461, inlinedAt: !4470)
!4470 = distinct !DILocation(line: 112, column: 9, scope: !4424)
!4471 = !DILocation(line: 327, column: 10, scope: !4461, inlinedAt: !4470)
!4472 = !DILocation(line: 93, column: 14, scope: !4424)
!4473 = !DILocation(line: 114, column: 7, scope: !4474)
!4474 = distinct !DILexicalBlock(scope: !4424, file: !4425, line: 114, column: 7)
!4475 = !DILocation(line: 114, column: 10, scope: !4474)
!4476 = !DILocation(line: 114, column: 7, scope: !4424)
!4477 = !DILocation(line: 118, column: 11, scope: !4478)
!4478 = distinct !DILexicalBlock(scope: !4479, file: !4425, line: 118, column: 11)
!4479 = distinct !DILexicalBlock(scope: !4474, file: !4425, line: 115, column: 5)
!4480 = !DILocation(line: 118, column: 26, scope: !4478)
!4481 = !DILocation(line: 118, column: 29, scope: !4482)
!4482 = !DILexicalBlockFile(scope: !4478, file: !4425, discriminator: 1)
!4483 = !DILocation(line: 118, column: 33, scope: !4482)
!4484 = !DILocation(line: 118, column: 36, scope: !4485)
!4485 = !DILexicalBlockFile(scope: !4478, file: !4425, discriminator: 5)
!4486 = !DILocation(line: 118, column: 11, scope: !4487)
!4487 = !DILexicalBlockFile(scope: !4479, file: !4425, discriminator: 5)
!4488 = !DILocation(line: 123, column: 12, scope: !4489)
!4489 = distinct !DILexicalBlock(scope: !4474, file: !4425, line: 123, column: 12)
!4490 = !DILocation(line: 123, column: 12, scope: !4474)
!4491 = !DILocation(line: 128, column: 5, scope: !4492)
!4492 = distinct !DILexicalBlock(scope: !4489, file: !4425, line: 124, column: 5)
!4493 = !DILocation(line: 133, column: 8, scope: !4494)
!4494 = distinct !DILexicalBlock(scope: !4424, file: !4425, line: 133, column: 7)
!4495 = !DILocation(line: 133, column: 7, scope: !4424)
!4496 = !DILocation(line: 135, column: 12, scope: !4497)
!4497 = distinct !DILexicalBlock(scope: !4494, file: !4425, line: 134, column: 5)
!4498 = !DILocation(line: 136, column: 7, scope: !4497)
!4499 = !DILocation(line: 139, column: 7, scope: !4441)
!4500 = !DILocation(line: 139, column: 11, scope: !4441)
!4501 = !DILocation(line: 139, column: 7, scope: !4424)
!4502 = !DILocation(line: 141, column: 11, scope: !4440)
!4503 = !DILocation(line: 142, column: 11, scope: !4440)
!4504 = !DILocation(line: 145, column: 12, scope: !4505)
!4505 = !DILexicalBlockFile(scope: !4506, file: !4425, discriminator: 3)
!4506 = distinct !DILexicalBlock(scope: !4440, file: !4425, line: 145, column: 11)
!4507 = !DILocation(line: 145, column: 11, scope: !4508)
!4508 = !DILexicalBlockFile(scope: !4440, file: !4425, discriminator: 3)
!4509 = !DILocation(line: 147, column: 16, scope: !4510)
!4510 = distinct !DILexicalBlock(scope: !4506, file: !4425, line: 146, column: 9)
!4511 = !DILocation(line: 148, column: 22, scope: !4510)
!4512 = !DILocation(line: 148, column: 11, scope: !4510)
!4513 = !DILocation(line: 151, column: 7, scope: !4440)
!4514 = !DILocation(line: 163, column: 15, scope: !4515)
!4515 = !DILexicalBlockFile(scope: !4516, file: !4425, discriminator: 2)
!4516 = distinct !DILexicalBlock(scope: !4517, file: !4425, line: 163, column: 15)
!4517 = distinct !DILexicalBlock(scope: !4440, file: !4425, line: 152, column: 9)
!4518 = !DILocation(line: 163, column: 15, scope: !4519)
!4519 = !DILexicalBlockFile(scope: !4517, file: !4425, discriminator: 2)
!4520 = !DILocation(line: 164, column: 21, scope: !4516)
!4521 = !DILocation(line: 164, column: 13, scope: !4516)
!4522 = !DILocation(line: 167, column: 21, scope: !4523)
!4523 = distinct !DILexicalBlock(scope: !4524, file: !4425, line: 167, column: 21)
!4524 = distinct !DILexicalBlock(scope: !4516, file: !4425, line: 165, column: 15)
!4525 = !DILocation(line: 167, column: 29, scope: !4523)
!4526 = !DILocation(line: 167, column: 21, scope: !4524)
!4527 = !DILocation(line: 175, column: 17, scope: !4524)
!4528 = !DILocation(line: 179, column: 7, scope: !4440)
!4529 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !4530, file: !4425, line: 60, type: !140)
!4530 = distinct !DISubprogram(name: "bkm_scale", scope: !4425, file: !4425, line: 60, type: !4531, isLocal: true, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, unit: !701, variables: !4533)
!4531 = !DISubroutineType(types: !4532)
!4532 = !{!4355, !4428, !140}
!4533 = !{!4534, !4529}
!4534 = !DILocalVariable(name: "x", arg: 1, scope: !4530, file: !4425, line: 60, type: !4428)
!4535 = !DILocation(line: 60, column: 31, scope: !4530, inlinedAt: !4536)
!4536 = distinct !DILocation(line: 182, column: 22, scope: !4537)
!4537 = distinct !DILexicalBlock(scope: !4440, file: !4425, line: 180, column: 9)
!4538 = !DILocation(line: 62, column: 38, scope: !4539, inlinedAt: !4536)
!4539 = distinct !DILexicalBlock(scope: !4530, file: !4425, line: 62, column: 7)
!4540 = !DILocation(line: 62, column: 7, scope: !4530, inlinedAt: !4536)
!4541 = !DILocation(line: 67, column: 39, scope: !4542, inlinedAt: !4536)
!4542 = distinct !DILexicalBlock(scope: !4530, file: !4425, line: 67, column: 7)
!4543 = !DILocation(line: 72, column: 6, scope: !4530, inlinedAt: !4536)
!4544 = !DILocation(line: 67, column: 7, scope: !4530, inlinedAt: !4536)
!4545 = !DILocation(line: 60, column: 31, scope: !4530, inlinedAt: !4546)
!4546 = distinct !DILocation(line: 189, column: 22, scope: !4537)
!4547 = !DILocation(line: 62, column: 38, scope: !4539, inlinedAt: !4546)
!4548 = !DILocation(line: 62, column: 7, scope: !4530, inlinedAt: !4546)
!4549 = !DILocation(line: 67, column: 39, scope: !4542, inlinedAt: !4546)
!4550 = !DILocation(line: 72, column: 6, scope: !4530, inlinedAt: !4546)
!4551 = !DILocation(line: 67, column: 7, scope: !4530, inlinedAt: !4546)
!4552 = !DILocalVariable(name: "power", arg: 3, scope: !4553, file: !4425, line: 77, type: !140)
!4553 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !4425, file: !4425, line: 77, type: !4554, isLocal: true, isDefinition: true, scopeLine: 78, flags: DIFlagPrototyped, isOptimized: true, unit: !701, variables: !4556)
!4554 = !DISubroutineType(types: !4555)
!4555 = !{!4355, !4428, !140, !140}
!4556 = !{!4557, !4558, !4552, !4559}
!4557 = !DILocalVariable(name: "x", arg: 1, scope: !4553, file: !4425, line: 77, type: !4428)
!4558 = !DILocalVariable(name: "base", arg: 2, scope: !4553, file: !4425, line: 77, type: !140)
!4559 = !DILocalVariable(name: "err", scope: !4553, file: !4425, line: 79, type: !4355)
!4560 = !DILocation(line: 77, column: 50, scope: !4553, inlinedAt: !4561)
!4561 = distinct !DILocation(line: 197, column: 22, scope: !4537)
!4562 = !DILocation(line: 79, column: 16, scope: !4553, inlinedAt: !4561)
!4563 = !DILocation(line: 62, column: 38, scope: !4539, inlinedAt: !4564)
!4564 = distinct !DILocation(line: 81, column: 12, scope: !4553, inlinedAt: !4561)
!4565 = !DILocation(line: 62, column: 7, scope: !4530, inlinedAt: !4564)
!4566 = !DILocation(line: 67, column: 24, scope: !4542, inlinedAt: !4564)
!4567 = !DILocation(line: 67, column: 39, scope: !4542, inlinedAt: !4564)
!4568 = !DILocation(line: 72, column: 6, scope: !4530, inlinedAt: !4564)
!4569 = !DILocation(line: 67, column: 7, scope: !4530, inlinedAt: !4564)
!4570 = !DILocation(line: 77, column: 50, scope: !4553, inlinedAt: !4571)
!4571 = distinct !DILocation(line: 202, column: 22, scope: !4537)
!4572 = !DILocation(line: 79, column: 16, scope: !4553, inlinedAt: !4571)
!4573 = !DILocation(line: 62, column: 38, scope: !4539, inlinedAt: !4574)
!4574 = distinct !DILocation(line: 81, column: 12, scope: !4553, inlinedAt: !4571)
!4575 = !DILocation(line: 62, column: 7, scope: !4530, inlinedAt: !4574)
!4576 = !DILocation(line: 67, column: 24, scope: !4542, inlinedAt: !4574)
!4577 = !DILocation(line: 67, column: 39, scope: !4542, inlinedAt: !4574)
!4578 = !DILocation(line: 72, column: 6, scope: !4530, inlinedAt: !4574)
!4579 = !DILocation(line: 67, column: 7, scope: !4530, inlinedAt: !4574)
!4580 = !DILocation(line: 77, column: 50, scope: !4553, inlinedAt: !4581)
!4581 = distinct !DILocation(line: 207, column: 22, scope: !4537)
!4582 = !DILocation(line: 79, column: 16, scope: !4553, inlinedAt: !4581)
!4583 = !DILocation(line: 62, column: 38, scope: !4539, inlinedAt: !4584)
!4584 = distinct !DILocation(line: 81, column: 12, scope: !4553, inlinedAt: !4581)
!4585 = !DILocation(line: 62, column: 7, scope: !4530, inlinedAt: !4584)
!4586 = !DILocation(line: 67, column: 24, scope: !4542, inlinedAt: !4584)
!4587 = !DILocation(line: 67, column: 39, scope: !4542, inlinedAt: !4584)
!4588 = !DILocation(line: 72, column: 6, scope: !4530, inlinedAt: !4584)
!4589 = !DILocation(line: 67, column: 7, scope: !4530, inlinedAt: !4584)
!4590 = !DILocation(line: 77, column: 50, scope: !4553, inlinedAt: !4591)
!4591 = distinct !DILocation(line: 212, column: 22, scope: !4537)
!4592 = !DILocation(line: 79, column: 16, scope: !4553, inlinedAt: !4591)
!4593 = !DILocation(line: 62, column: 38, scope: !4539, inlinedAt: !4594)
!4594 = distinct !DILocation(line: 81, column: 12, scope: !4553, inlinedAt: !4591)
!4595 = !DILocation(line: 62, column: 7, scope: !4530, inlinedAt: !4594)
!4596 = !DILocation(line: 67, column: 24, scope: !4542, inlinedAt: !4594)
!4597 = !DILocation(line: 67, column: 39, scope: !4542, inlinedAt: !4594)
!4598 = !DILocation(line: 72, column: 6, scope: !4530, inlinedAt: !4594)
!4599 = !DILocation(line: 67, column: 7, scope: !4530, inlinedAt: !4594)
!4600 = !DILocation(line: 77, column: 50, scope: !4553, inlinedAt: !4601)
!4601 = distinct !DILocation(line: 216, column: 22, scope: !4537)
!4602 = !DILocation(line: 79, column: 16, scope: !4553, inlinedAt: !4601)
!4603 = !DILocation(line: 62, column: 38, scope: !4539, inlinedAt: !4604)
!4604 = distinct !DILocation(line: 81, column: 12, scope: !4553, inlinedAt: !4601)
!4605 = !DILocation(line: 62, column: 7, scope: !4530, inlinedAt: !4604)
!4606 = !DILocation(line: 67, column: 24, scope: !4542, inlinedAt: !4604)
!4607 = !DILocation(line: 67, column: 39, scope: !4542, inlinedAt: !4604)
!4608 = !DILocation(line: 72, column: 6, scope: !4530, inlinedAt: !4604)
!4609 = !DILocation(line: 67, column: 7, scope: !4530, inlinedAt: !4604)
!4610 = !DILocation(line: 77, column: 50, scope: !4553, inlinedAt: !4611)
!4611 = distinct !DILocation(line: 221, column: 22, scope: !4537)
!4612 = !DILocation(line: 79, column: 16, scope: !4553, inlinedAt: !4611)
!4613 = !DILocation(line: 62, column: 38, scope: !4539, inlinedAt: !4614)
!4614 = distinct !DILocation(line: 81, column: 12, scope: !4553, inlinedAt: !4611)
!4615 = !DILocation(line: 62, column: 7, scope: !4530, inlinedAt: !4614)
!4616 = !DILocation(line: 67, column: 24, scope: !4542, inlinedAt: !4614)
!4617 = !DILocation(line: 67, column: 39, scope: !4542, inlinedAt: !4614)
!4618 = !DILocation(line: 72, column: 6, scope: !4530, inlinedAt: !4614)
!4619 = !DILocation(line: 67, column: 7, scope: !4530, inlinedAt: !4614)
!4620 = !DILocation(line: 60, column: 31, scope: !4530, inlinedAt: !4621)
!4621 = distinct !DILocation(line: 225, column: 22, scope: !4537)
!4622 = !DILocation(line: 62, column: 38, scope: !4539, inlinedAt: !4621)
!4623 = !DILocation(line: 62, column: 7, scope: !4530, inlinedAt: !4621)
!4624 = !DILocation(line: 67, column: 39, scope: !4542, inlinedAt: !4621)
!4625 = !DILocation(line: 72, column: 6, scope: !4530, inlinedAt: !4621)
!4626 = !DILocation(line: 67, column: 7, scope: !4530, inlinedAt: !4621)
!4627 = !DILocation(line: 77, column: 50, scope: !4553, inlinedAt: !4628)
!4628 = distinct !DILocation(line: 229, column: 22, scope: !4537)
!4629 = !DILocation(line: 79, column: 16, scope: !4553, inlinedAt: !4628)
!4630 = !DILocation(line: 62, column: 38, scope: !4539, inlinedAt: !4631)
!4631 = distinct !DILocation(line: 81, column: 12, scope: !4553, inlinedAt: !4628)
!4632 = !DILocation(line: 62, column: 7, scope: !4530, inlinedAt: !4631)
!4633 = !DILocation(line: 67, column: 24, scope: !4542, inlinedAt: !4631)
!4634 = !DILocation(line: 67, column: 39, scope: !4542, inlinedAt: !4631)
!4635 = !DILocation(line: 72, column: 6, scope: !4530, inlinedAt: !4631)
!4636 = !DILocation(line: 67, column: 7, scope: !4530, inlinedAt: !4631)
!4637 = !DILocation(line: 77, column: 50, scope: !4553, inlinedAt: !4638)
!4638 = distinct !DILocation(line: 233, column: 22, scope: !4537)
!4639 = !DILocation(line: 79, column: 16, scope: !4553, inlinedAt: !4638)
!4640 = !DILocation(line: 62, column: 38, scope: !4539, inlinedAt: !4641)
!4641 = distinct !DILocation(line: 81, column: 12, scope: !4553, inlinedAt: !4638)
!4642 = !DILocation(line: 62, column: 7, scope: !4530, inlinedAt: !4641)
!4643 = !DILocation(line: 67, column: 24, scope: !4542, inlinedAt: !4641)
!4644 = !DILocation(line: 67, column: 39, scope: !4542, inlinedAt: !4641)
!4645 = !DILocation(line: 72, column: 6, scope: !4530, inlinedAt: !4641)
!4646 = !DILocation(line: 67, column: 7, scope: !4530, inlinedAt: !4641)
!4647 = !DILocation(line: 237, column: 16, scope: !4537)
!4648 = !DILocation(line: 238, column: 22, scope: !4537)
!4649 = !DILocation(line: 238, column: 11, scope: !4537)
!4650 = !DILocation(line: 143, column: 20, scope: !4440)
!4651 = !DILocation(line: 241, column: 11, scope: !4440)
!4652 = !DILocation(line: 242, column: 10, scope: !4440)
!4653 = !DILocation(line: 243, column: 11, scope: !4654)
!4654 = distinct !DILexicalBlock(scope: !4440, file: !4425, line: 243, column: 11)
!4655 = !DILocation(line: 244, column: 13, scope: !4654)
!4656 = !DILocation(line: 243, column: 11, scope: !4440)
!4657 = !DILocation(line: 247, column: 8, scope: !4424)
!4658 = !DILocation(line: 248, column: 3, scope: !4424)
!4659 = !DILocation(line: 249, column: 1, scope: !4424)
!4660 = !DILocation(line: 81, column: 9, scope: !4553, inlinedAt: !4561)
!4661 = !DILocation(line: 81, column: 9, scope: !4553, inlinedAt: !4571)
!4662 = !DILocation(line: 81, column: 9, scope: !4553, inlinedAt: !4591)
!4663 = !DILocation(line: 81, column: 9, scope: !4553, inlinedAt: !4601)
!4664 = !DILocation(line: 81, column: 9, scope: !4553, inlinedAt: !4611)
!4665 = !DILocation(line: 81, column: 9, scope: !4553, inlinedAt: !4628)
!4666 = !DILocation(line: 81, column: 9, scope: !4553, inlinedAt: !4638)
!4667 = distinct !DISubprogram(name: "rpl_calloc", scope: !4668, file: !4668, line: 42, type: !4082, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !704, variables: !4669)
!4668 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4669 = !{!4670, !4671, !4672, !4673}
!4670 = !DILocalVariable(name: "n", arg: 1, scope: !4667, file: !4668, line: 42, type: !35)
!4671 = !DILocalVariable(name: "s", arg: 2, scope: !4667, file: !4668, line: 42, type: !35)
!4672 = !DILocalVariable(name: "result", scope: !4667, file: !4668, line: 44, type: !47)
!4673 = !DILocalVariable(name: "bytes", scope: !4674, file: !4668, line: 56, type: !35)
!4674 = distinct !DILexicalBlock(scope: !4675, file: !4668, line: 53, column: 5)
!4675 = distinct !DILexicalBlock(scope: !4667, file: !4668, line: 47, column: 7)
!4676 = !DILocation(line: 42, column: 20, scope: !4667)
!4677 = !DILocation(line: 42, column: 30, scope: !4667)
!4678 = !DILocation(line: 47, column: 9, scope: !4675)
!4679 = !DILocation(line: 47, column: 19, scope: !4680)
!4680 = !DILexicalBlockFile(scope: !4675, file: !4668, discriminator: 1)
!4681 = !DILocation(line: 47, column: 14, scope: !4675)
!4682 = !DILocation(line: 56, column: 24, scope: !4674)
!4683 = !DILocation(line: 56, column: 14, scope: !4674)
!4684 = !DILocation(line: 57, column: 17, scope: !4685)
!4685 = distinct !DILexicalBlock(scope: !4674, file: !4668, line: 57, column: 11)
!4686 = !DILocation(line: 57, column: 21, scope: !4685)
!4687 = !DILocation(line: 57, column: 11, scope: !4674)
!4688 = !DILocation(line: 59, column: 11, scope: !4689)
!4689 = distinct !DILexicalBlock(scope: !4685, file: !4668, line: 58, column: 9)
!4690 = !DILocation(line: 59, column: 17, scope: !4689)
!4691 = !DILocation(line: 65, column: 12, scope: !4667)
!4692 = !DILocation(line: 44, column: 9, scope: !4667)
!4693 = !DILocation(line: 72, column: 3, scope: !4667)
!4694 = !DILocation(line: 73, column: 1, scope: !4667)
!4695 = distinct !DISubprogram(name: "rpl_fclose", scope: !4696, file: !4696, line: 56, type: !4697, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !706, variables: !4739)
!4696 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4697 = !DISubroutineType(types: !4698)
!4698 = !{!140, !4699}
!4699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4700, size: 64)
!4700 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1173, line: 49, baseType: !4701)
!4701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1175, line: 241, size: 1728, elements: !4702)
!4702 = !{!4703, !4704, !4705, !4706, !4707, !4708, !4709, !4710, !4711, !4712, !4713, !4714, !4715, !4723, !4724, !4725, !4726, !4727, !4728, !4729, !4730, !4731, !4732, !4733, !4734, !4735, !4736, !4737, !4738}
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4701, file: !1175, line: 242, baseType: !140, size: 32)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4701, file: !1175, line: 247, baseType: !46, size: 64, offset: 64)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4701, file: !1175, line: 248, baseType: !46, size: 64, offset: 128)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4701, file: !1175, line: 249, baseType: !46, size: 64, offset: 192)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4701, file: !1175, line: 250, baseType: !46, size: 64, offset: 256)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4701, file: !1175, line: 251, baseType: !46, size: 64, offset: 320)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4701, file: !1175, line: 252, baseType: !46, size: 64, offset: 384)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4701, file: !1175, line: 253, baseType: !46, size: 64, offset: 448)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4701, file: !1175, line: 254, baseType: !46, size: 64, offset: 512)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4701, file: !1175, line: 256, baseType: !46, size: 64, offset: 576)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4701, file: !1175, line: 257, baseType: !46, size: 64, offset: 640)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4701, file: !1175, line: 258, baseType: !46, size: 64, offset: 704)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4701, file: !1175, line: 260, baseType: !4716, size: 64, offset: 768)
!4716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4717, size: 64)
!4717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1175, line: 156, size: 192, elements: !4718)
!4718 = !{!4719, !4720, !4722}
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4717, file: !1175, line: 157, baseType: !4716, size: 64)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4717, file: !1175, line: 158, baseType: !4721, size: 64, offset: 64)
!4721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4701, size: 64)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4717, file: !1175, line: 162, baseType: !140, size: 32, offset: 128)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4701, file: !1175, line: 262, baseType: !4721, size: 64, offset: 832)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4701, file: !1175, line: 264, baseType: !140, size: 32, offset: 896)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4701, file: !1175, line: 268, baseType: !140, size: 32, offset: 928)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4701, file: !1175, line: 270, baseType: !1201, size: 64, offset: 960)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4701, file: !1175, line: 274, baseType: !263, size: 16, offset: 1024)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4701, file: !1175, line: 275, baseType: !1204, size: 8, offset: 1040)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4701, file: !1175, line: 276, baseType: !1206, size: 8, offset: 1048)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4701, file: !1175, line: 280, baseType: !1210, size: 64, offset: 1088)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4701, file: !1175, line: 289, baseType: !1213, size: 64, offset: 1152)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4701, file: !1175, line: 297, baseType: !47, size: 64, offset: 1216)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4701, file: !1175, line: 298, baseType: !47, size: 64, offset: 1280)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4701, file: !1175, line: 299, baseType: !47, size: 64, offset: 1344)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4701, file: !1175, line: 300, baseType: !47, size: 64, offset: 1408)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4701, file: !1175, line: 302, baseType: !35, size: 64, offset: 1472)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4701, file: !1175, line: 303, baseType: !140, size: 32, offset: 1536)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4701, file: !1175, line: 305, baseType: !1221, size: 160, offset: 1568)
!4739 = !{!4740, !4741, !4742, !4743}
!4740 = !DILocalVariable(name: "fp", arg: 1, scope: !4695, file: !4696, line: 56, type: !4699)
!4741 = !DILocalVariable(name: "saved_errno", scope: !4695, file: !4696, line: 58, type: !140)
!4742 = !DILocalVariable(name: "fd", scope: !4695, file: !4696, line: 59, type: !140)
!4743 = !DILocalVariable(name: "result", scope: !4695, file: !4696, line: 60, type: !140)
!4744 = !DILocation(line: 56, column: 19, scope: !4695)
!4745 = !DILocation(line: 58, column: 7, scope: !4695)
!4746 = !DILocation(line: 60, column: 7, scope: !4695)
!4747 = !DILocation(line: 63, column: 8, scope: !4695)
!4748 = !DILocation(line: 59, column: 7, scope: !4695)
!4749 = !DILocation(line: 64, column: 10, scope: !4750)
!4750 = distinct !DILexicalBlock(scope: !4695, file: !4696, line: 64, column: 7)
!4751 = !DILocation(line: 64, column: 7, scope: !4695)
!4752 = !DILocation(line: 65, column: 12, scope: !4750)
!4753 = !DILocation(line: 65, column: 5, scope: !4750)
!4754 = !DILocation(line: 70, column: 9, scope: !4755)
!4755 = distinct !DILexicalBlock(scope: !4695, file: !4696, line: 70, column: 7)
!4756 = !DILocation(line: 70, column: 23, scope: !4755)
!4757 = !DILocation(line: 70, column: 33, scope: !4758)
!4758 = !DILexicalBlockFile(scope: !4755, file: !4696, discriminator: 1)
!4759 = !DILocation(line: 70, column: 26, scope: !4760)
!4760 = !DILexicalBlockFile(scope: !4755, file: !4696, discriminator: 3)
!4761 = !DILocation(line: 70, column: 59, scope: !4758)
!4762 = !DILocation(line: 71, column: 7, scope: !4755)
!4763 = !DILocation(line: 71, column: 10, scope: !4758)
!4764 = !DILocation(line: 70, column: 7, scope: !4765)
!4765 = !DILexicalBlockFile(scope: !4695, file: !4696, discriminator: 2)
!4766 = !DILocation(line: 98, column: 12, scope: !4695)
!4767 = !DILocation(line: 103, column: 7, scope: !4695)
!4768 = !DILocation(line: 72, column: 19, scope: !4755)
!4769 = !DILocation(line: 103, column: 19, scope: !4770)
!4770 = distinct !DILexicalBlock(scope: !4695, file: !4696, line: 103, column: 7)
!4771 = !DILocation(line: 105, column: 13, scope: !4772)
!4772 = distinct !DILexicalBlock(scope: !4770, file: !4696, line: 104, column: 5)
!4773 = !DILocation(line: 107, column: 5, scope: !4772)
!4774 = !DILocation(line: 110, column: 1, scope: !4695)
!4775 = distinct !DISubprogram(name: "rpl_fflush", scope: !4776, file: !4776, line: 127, type: !4777, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !708, variables: !4819)
!4776 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4777 = !DISubroutineType(types: !4778)
!4778 = !{!140, !4779}
!4779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4780, size: 64)
!4780 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1173, line: 49, baseType: !4781)
!4781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1175, line: 241, size: 1728, elements: !4782)
!4782 = !{!4783, !4784, !4785, !4786, !4787, !4788, !4789, !4790, !4791, !4792, !4793, !4794, !4795, !4803, !4804, !4805, !4806, !4807, !4808, !4809, !4810, !4811, !4812, !4813, !4814, !4815, !4816, !4817, !4818}
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4781, file: !1175, line: 242, baseType: !140, size: 32)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4781, file: !1175, line: 247, baseType: !46, size: 64, offset: 64)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4781, file: !1175, line: 248, baseType: !46, size: 64, offset: 128)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4781, file: !1175, line: 249, baseType: !46, size: 64, offset: 192)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4781, file: !1175, line: 250, baseType: !46, size: 64, offset: 256)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4781, file: !1175, line: 251, baseType: !46, size: 64, offset: 320)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4781, file: !1175, line: 252, baseType: !46, size: 64, offset: 384)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4781, file: !1175, line: 253, baseType: !46, size: 64, offset: 448)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4781, file: !1175, line: 254, baseType: !46, size: 64, offset: 512)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4781, file: !1175, line: 256, baseType: !46, size: 64, offset: 576)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4781, file: !1175, line: 257, baseType: !46, size: 64, offset: 640)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4781, file: !1175, line: 258, baseType: !46, size: 64, offset: 704)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4781, file: !1175, line: 260, baseType: !4796, size: 64, offset: 768)
!4796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4797, size: 64)
!4797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1175, line: 156, size: 192, elements: !4798)
!4798 = !{!4799, !4800, !4802}
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4797, file: !1175, line: 157, baseType: !4796, size: 64)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4797, file: !1175, line: 158, baseType: !4801, size: 64, offset: 64)
!4801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4781, size: 64)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4797, file: !1175, line: 162, baseType: !140, size: 32, offset: 128)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4781, file: !1175, line: 262, baseType: !4801, size: 64, offset: 832)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4781, file: !1175, line: 264, baseType: !140, size: 32, offset: 896)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4781, file: !1175, line: 268, baseType: !140, size: 32, offset: 928)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4781, file: !1175, line: 270, baseType: !1201, size: 64, offset: 960)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4781, file: !1175, line: 274, baseType: !263, size: 16, offset: 1024)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4781, file: !1175, line: 275, baseType: !1204, size: 8, offset: 1040)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4781, file: !1175, line: 276, baseType: !1206, size: 8, offset: 1048)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4781, file: !1175, line: 280, baseType: !1210, size: 64, offset: 1088)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4781, file: !1175, line: 289, baseType: !1213, size: 64, offset: 1152)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4781, file: !1175, line: 297, baseType: !47, size: 64, offset: 1216)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4781, file: !1175, line: 298, baseType: !47, size: 64, offset: 1280)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4781, file: !1175, line: 299, baseType: !47, size: 64, offset: 1344)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4781, file: !1175, line: 300, baseType: !47, size: 64, offset: 1408)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4781, file: !1175, line: 302, baseType: !35, size: 64, offset: 1472)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4781, file: !1175, line: 303, baseType: !140, size: 32, offset: 1536)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4781, file: !1175, line: 305, baseType: !1221, size: 160, offset: 1568)
!4819 = !{!4820}
!4820 = !DILocalVariable(name: "stream", arg: 1, scope: !4775, file: !4776, line: 127, type: !4779)
!4821 = !DILocation(line: 127, column: 19, scope: !4775)
!4822 = !DILocation(line: 148, column: 14, scope: !4823)
!4823 = distinct !DILexicalBlock(scope: !4775, file: !4776, line: 148, column: 7)
!4824 = !DILocation(line: 148, column: 22, scope: !4823)
!4825 = !DILocation(line: 148, column: 27, scope: !4826)
!4826 = !DILexicalBlockFile(scope: !4823, file: !4776, discriminator: 1)
!4827 = !DILocation(line: 148, column: 7, scope: !4828)
!4828 = !DILexicalBlockFile(scope: !4775, file: !4776, discriminator: 1)
!4829 = !DILocation(line: 149, column: 12, scope: !4823)
!4830 = !DILocation(line: 149, column: 5, scope: !4823)
!4831 = !DILocalVariable(name: "fp", arg: 1, scope: !4832, file: !4776, line: 40, type: !4779)
!4832 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !4776, file: !4776, line: 40, type: !4833, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !708, variables: !4835)
!4833 = !DISubroutineType(types: !4834)
!4834 = !{null, !4779}
!4835 = !{!4831}
!4836 = !DILocation(line: 40, column: 48, scope: !4832, inlinedAt: !4837)
!4837 = distinct !DILocation(line: 153, column: 3, scope: !4775)
!4838 = !DILocation(line: 42, column: 11, scope: !4839, inlinedAt: !4837)
!4839 = distinct !DILexicalBlock(scope: !4832, file: !4776, line: 42, column: 7)
!4840 = !DILocation(line: 42, column: 18, scope: !4839, inlinedAt: !4837)
!4841 = !DILocation(line: 42, column: 7, scope: !4832, inlinedAt: !4837)
!4842 = !DILocation(line: 44, column: 5, scope: !4839, inlinedAt: !4837)
!4843 = !DILocation(line: 155, column: 10, scope: !4775)
!4844 = !DILocation(line: 155, column: 3, scope: !4775)
!4845 = !DILocation(line: 229, column: 1, scope: !4775)
!4846 = distinct !DISubprogram(name: "rpl_fseeko", scope: !4847, file: !4847, line: 28, type: !4848, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !710, variables: !4890)
!4847 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4848 = !DISubroutineType(types: !4849)
!4849 = !{!140, !4850, !1589, !140}
!4850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4851, size: 64)
!4851 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1173, line: 49, baseType: !4852)
!4852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1175, line: 241, size: 1728, elements: !4853)
!4853 = !{!4854, !4855, !4856, !4857, !4858, !4859, !4860, !4861, !4862, !4863, !4864, !4865, !4866, !4874, !4875, !4876, !4877, !4878, !4879, !4880, !4881, !4882, !4883, !4884, !4885, !4886, !4887, !4888, !4889}
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4852, file: !1175, line: 242, baseType: !140, size: 32)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4852, file: !1175, line: 247, baseType: !46, size: 64, offset: 64)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4852, file: !1175, line: 248, baseType: !46, size: 64, offset: 128)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4852, file: !1175, line: 249, baseType: !46, size: 64, offset: 192)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4852, file: !1175, line: 250, baseType: !46, size: 64, offset: 256)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4852, file: !1175, line: 251, baseType: !46, size: 64, offset: 320)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4852, file: !1175, line: 252, baseType: !46, size: 64, offset: 384)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4852, file: !1175, line: 253, baseType: !46, size: 64, offset: 448)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4852, file: !1175, line: 254, baseType: !46, size: 64, offset: 512)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4852, file: !1175, line: 256, baseType: !46, size: 64, offset: 576)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4852, file: !1175, line: 257, baseType: !46, size: 64, offset: 640)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4852, file: !1175, line: 258, baseType: !46, size: 64, offset: 704)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4852, file: !1175, line: 260, baseType: !4867, size: 64, offset: 768)
!4867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4868, size: 64)
!4868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1175, line: 156, size: 192, elements: !4869)
!4869 = !{!4870, !4871, !4873}
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4868, file: !1175, line: 157, baseType: !4867, size: 64)
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4868, file: !1175, line: 158, baseType: !4872, size: 64, offset: 64)
!4872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4852, size: 64)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4868, file: !1175, line: 162, baseType: !140, size: 32, offset: 128)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4852, file: !1175, line: 262, baseType: !4872, size: 64, offset: 832)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4852, file: !1175, line: 264, baseType: !140, size: 32, offset: 896)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4852, file: !1175, line: 268, baseType: !140, size: 32, offset: 928)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4852, file: !1175, line: 270, baseType: !1201, size: 64, offset: 960)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4852, file: !1175, line: 274, baseType: !263, size: 16, offset: 1024)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4852, file: !1175, line: 275, baseType: !1204, size: 8, offset: 1040)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4852, file: !1175, line: 276, baseType: !1206, size: 8, offset: 1048)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4852, file: !1175, line: 280, baseType: !1210, size: 64, offset: 1088)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4852, file: !1175, line: 289, baseType: !1213, size: 64, offset: 1152)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4852, file: !1175, line: 297, baseType: !47, size: 64, offset: 1216)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4852, file: !1175, line: 298, baseType: !47, size: 64, offset: 1280)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4852, file: !1175, line: 299, baseType: !47, size: 64, offset: 1344)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4852, file: !1175, line: 300, baseType: !47, size: 64, offset: 1408)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4852, file: !1175, line: 302, baseType: !35, size: 64, offset: 1472)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4852, file: !1175, line: 303, baseType: !140, size: 32, offset: 1536)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4852, file: !1175, line: 305, baseType: !1221, size: 160, offset: 1568)
!4890 = !{!4891, !4892, !4893, !4894}
!4891 = !DILocalVariable(name: "fp", arg: 1, scope: !4846, file: !4847, line: 28, type: !4850)
!4892 = !DILocalVariable(name: "offset", arg: 2, scope: !4846, file: !4847, line: 28, type: !1589)
!4893 = !DILocalVariable(name: "whence", arg: 3, scope: !4846, file: !4847, line: 28, type: !140)
!4894 = !DILocalVariable(name: "pos", scope: !4895, file: !4847, line: 116, type: !1589)
!4895 = distinct !DILexicalBlock(scope: !4896, file: !4847, line: 112, column: 5)
!4896 = distinct !DILexicalBlock(scope: !4846, file: !4847, line: 51, column: 7)
!4897 = !DILocation(line: 28, column: 15, scope: !4846)
!4898 = !DILocation(line: 28, column: 25, scope: !4846)
!4899 = !DILocation(line: 28, column: 37, scope: !4846)
!4900 = !DILocation(line: 51, column: 11, scope: !4896)
!4901 = !DILocation(line: 51, column: 31, scope: !4896)
!4902 = !DILocation(line: 51, column: 24, scope: !4896)
!4903 = !DILocation(line: 52, column: 7, scope: !4896)
!4904 = !DILocation(line: 52, column: 14, scope: !4905)
!4905 = !DILexicalBlockFile(scope: !4896, file: !4847, discriminator: 1)
!4906 = !DILocation(line: 52, column: 35, scope: !4905)
!4907 = !{!1349, !739, i64 32}
!4908 = !DILocation(line: 52, column: 28, scope: !4905)
!4909 = !DILocation(line: 53, column: 7, scope: !4896)
!4910 = !DILocation(line: 53, column: 14, scope: !4905)
!4911 = !{!1349, !739, i64 72}
!4912 = !DILocation(line: 53, column: 28, scope: !4905)
!4913 = !DILocation(line: 51, column: 7, scope: !4914)
!4914 = !DILexicalBlockFile(scope: !4846, file: !4847, discriminator: 1)
!4915 = !DILocation(line: 116, column: 26, scope: !4895)
!4916 = !DILocation(line: 116, column: 19, scope: !4917)
!4917 = !DILexicalBlockFile(scope: !4895, file: !4847, discriminator: 1)
!4918 = !DILocation(line: 116, column: 13, scope: !4895)
!4919 = !DILocation(line: 117, column: 15, scope: !4920)
!4920 = distinct !DILexicalBlock(scope: !4895, file: !4847, line: 117, column: 11)
!4921 = !DILocation(line: 117, column: 11, scope: !4895)
!4922 = !DILocation(line: 127, column: 11, scope: !4895)
!4923 = !DILocation(line: 127, column: 18, scope: !4895)
!4924 = !DILocation(line: 128, column: 11, scope: !4895)
!4925 = !DILocation(line: 128, column: 19, scope: !4895)
!4926 = !{!1349, !875, i64 144}
!4927 = !DILocation(line: 159, column: 7, scope: !4895)
!4928 = !DILocation(line: 161, column: 10, scope: !4846)
!4929 = !DILocation(line: 161, column: 3, scope: !4846)
!4930 = !DILocation(line: 162, column: 1, scope: !4846)
!4931 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !4932, file: !4932, line: 334, type: !4933, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !712, variables: !4947)
!4932 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4933 = !DISubroutineType(types: !4934)
!4934 = !{!35, !4935, !43, !35, !4936}
!4935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2132, size: 64)
!4936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4937, size: 64)
!4937 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2117, line: 107, baseType: !4938)
!4938 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2117, line: 95, baseType: !4939)
!4939 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2117, line: 83, size: 64, elements: !4940)
!4940 = !{!4941, !4942}
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !4939, file: !2117, line: 85, baseType: !140, size: 32)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !4939, file: !2117, line: 94, baseType: !4943, size: 32, offset: 32)
!4943 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4939, file: !2117, line: 86, size: 32, elements: !4944)
!4944 = !{!4945, !4946}
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !4943, file: !2117, line: 89, baseType: !69, size: 32)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !4943, file: !2117, line: 93, baseType: !2127, size: 32)
!4947 = !{!4948, !4949, !4950, !4951, !4952, !4953, !4954}
!4948 = !DILocalVariable(name: "pwc", arg: 1, scope: !4931, file: !4932, line: 334, type: !4935)
!4949 = !DILocalVariable(name: "s", arg: 2, scope: !4931, file: !4932, line: 334, type: !43)
!4950 = !DILocalVariable(name: "n", arg: 3, scope: !4931, file: !4932, line: 334, type: !35)
!4951 = !DILocalVariable(name: "ps", arg: 4, scope: !4931, file: !4932, line: 334, type: !4936)
!4952 = !DILocalVariable(name: "ret", scope: !4931, file: !4932, line: 336, type: !35)
!4953 = !DILocalVariable(name: "wc", scope: !4931, file: !4932, line: 337, type: !2132)
!4954 = !DILocalVariable(name: "uc", scope: !4955, file: !4932, line: 398, type: !42)
!4955 = distinct !DILexicalBlock(scope: !4956, file: !4932, line: 397, column: 5)
!4956 = distinct !DILexicalBlock(scope: !4931, file: !4932, line: 396, column: 7)
!4957 = !DILocation(line: 334, column: 23, scope: !4931)
!4958 = !DILocation(line: 334, column: 40, scope: !4931)
!4959 = !DILocation(line: 334, column: 50, scope: !4931)
!4960 = !DILocation(line: 334, column: 64, scope: !4931)
!4961 = !DILocation(line: 337, column: 3, scope: !4931)
!4962 = !DILocation(line: 353, column: 9, scope: !4963)
!4963 = distinct !DILexicalBlock(scope: !4931, file: !4932, line: 353, column: 7)
!4964 = !DILocation(line: 353, column: 7, scope: !4931)
!4965 = !DILocation(line: 388, column: 9, scope: !4931)
!4966 = !DILocation(line: 336, column: 10, scope: !4931)
!4967 = !DILocation(line: 396, column: 19, scope: !4956)
!4968 = !DILocation(line: 396, column: 31, scope: !4969)
!4969 = !DILexicalBlockFile(scope: !4956, file: !4932, discriminator: 1)
!4970 = !DILocation(line: 396, column: 26, scope: !4956)
!4971 = !DILocation(line: 396, column: 41, scope: !4972)
!4972 = !DILexicalBlockFile(scope: !4956, file: !4932, discriminator: 2)
!4973 = !DILocation(line: 396, column: 7, scope: !4974)
!4974 = !DILexicalBlockFile(scope: !4931, file: !4932, discriminator: 2)
!4975 = !DILocation(line: 398, column: 26, scope: !4955)
!4976 = !DILocation(line: 398, column: 21, scope: !4955)
!4977 = !DILocation(line: 399, column: 14, scope: !4955)
!4978 = !DILocation(line: 399, column: 12, scope: !4955)
!4979 = !DILocation(line: 405, column: 1, scope: !4931)
!4980 = distinct !DISubprogram(name: "close_stream", scope: !4981, file: !4981, line: 56, type: !4982, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !715, variables: !5024)
!4981 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4982 = !DISubroutineType(types: !4983)
!4983 = !{!140, !4984}
!4984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4985, size: 64)
!4985 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1173, line: 49, baseType: !4986)
!4986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1175, line: 241, size: 1728, elements: !4987)
!4987 = !{!4988, !4989, !4990, !4991, !4992, !4993, !4994, !4995, !4996, !4997, !4998, !4999, !5000, !5008, !5009, !5010, !5011, !5012, !5013, !5014, !5015, !5016, !5017, !5018, !5019, !5020, !5021, !5022, !5023}
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4986, file: !1175, line: 242, baseType: !140, size: 32)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4986, file: !1175, line: 247, baseType: !46, size: 64, offset: 64)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4986, file: !1175, line: 248, baseType: !46, size: 64, offset: 128)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4986, file: !1175, line: 249, baseType: !46, size: 64, offset: 192)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4986, file: !1175, line: 250, baseType: !46, size: 64, offset: 256)
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4986, file: !1175, line: 251, baseType: !46, size: 64, offset: 320)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4986, file: !1175, line: 252, baseType: !46, size: 64, offset: 384)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4986, file: !1175, line: 253, baseType: !46, size: 64, offset: 448)
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4986, file: !1175, line: 254, baseType: !46, size: 64, offset: 512)
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4986, file: !1175, line: 256, baseType: !46, size: 64, offset: 576)
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4986, file: !1175, line: 257, baseType: !46, size: 64, offset: 640)
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4986, file: !1175, line: 258, baseType: !46, size: 64, offset: 704)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4986, file: !1175, line: 260, baseType: !5001, size: 64, offset: 768)
!5001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5002, size: 64)
!5002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1175, line: 156, size: 192, elements: !5003)
!5003 = !{!5004, !5005, !5007}
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !5002, file: !1175, line: 157, baseType: !5001, size: 64)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !5002, file: !1175, line: 158, baseType: !5006, size: 64, offset: 64)
!5006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4986, size: 64)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !5002, file: !1175, line: 162, baseType: !140, size: 32, offset: 128)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4986, file: !1175, line: 262, baseType: !5006, size: 64, offset: 832)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4986, file: !1175, line: 264, baseType: !140, size: 32, offset: 896)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4986, file: !1175, line: 268, baseType: !140, size: 32, offset: 928)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4986, file: !1175, line: 270, baseType: !1201, size: 64, offset: 960)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4986, file: !1175, line: 274, baseType: !263, size: 16, offset: 1024)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4986, file: !1175, line: 275, baseType: !1204, size: 8, offset: 1040)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4986, file: !1175, line: 276, baseType: !1206, size: 8, offset: 1048)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4986, file: !1175, line: 280, baseType: !1210, size: 64, offset: 1088)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4986, file: !1175, line: 289, baseType: !1213, size: 64, offset: 1152)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4986, file: !1175, line: 297, baseType: !47, size: 64, offset: 1216)
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4986, file: !1175, line: 298, baseType: !47, size: 64, offset: 1280)
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4986, file: !1175, line: 299, baseType: !47, size: 64, offset: 1344)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4986, file: !1175, line: 300, baseType: !47, size: 64, offset: 1408)
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4986, file: !1175, line: 302, baseType: !35, size: 64, offset: 1472)
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4986, file: !1175, line: 303, baseType: !140, size: 32, offset: 1536)
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4986, file: !1175, line: 305, baseType: !1221, size: 160, offset: 1568)
!5024 = !{!5025, !5026, !5028, !5029}
!5025 = !DILocalVariable(name: "stream", arg: 1, scope: !4980, file: !4981, line: 56, type: !4984)
!5026 = !DILocalVariable(name: "some_pending", scope: !4980, file: !4981, line: 58, type: !5027)
!5027 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !112)
!5028 = !DILocalVariable(name: "prev_fail", scope: !4980, file: !4981, line: 59, type: !5027)
!5029 = !DILocalVariable(name: "fclose_fail", scope: !4980, file: !4981, line: 60, type: !5027)
!5030 = !DILocation(line: 56, column: 21, scope: !4980)
!5031 = !DILocation(line: 58, column: 30, scope: !4980)
!5032 = !DILocalVariable(name: "__stream", arg: 1, scope: !5033, file: !1341, line: 132, type: !4984)
!5033 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1341, file: !1341, line: 132, type: !4982, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !715, variables: !5034)
!5034 = !{!5032}
!5035 = !DILocation(line: 132, column: 1, scope: !5033, inlinedAt: !5036)
!5036 = distinct !DILocation(line: 59, column: 27, scope: !4980)
!5037 = !DILocation(line: 134, column: 10, scope: !5033, inlinedAt: !5036)
!5038 = !DILocation(line: 59, column: 43, scope: !4980)
!5039 = !DILocation(line: 60, column: 29, scope: !4980)
!5040 = !DILocation(line: 60, column: 45, scope: !4980)
!5041 = !DILocation(line: 70, column: 17, scope: !5042)
!5042 = distinct !DILexicalBlock(scope: !4980, file: !4981, line: 70, column: 7)
!5043 = !DILocation(line: 70, column: 33, scope: !5044)
!5044 = !DILexicalBlockFile(scope: !5042, file: !4981, discriminator: 1)
!5045 = !DILocation(line: 70, column: 53, scope: !5046)
!5046 = !DILexicalBlockFile(scope: !5042, file: !4981, discriminator: 3)
!5047 = !DILocation(line: 70, column: 7, scope: !5048)
!5048 = !DILexicalBlockFile(scope: !4980, file: !4981, discriminator: 3)
!5049 = !DILocation(line: 72, column: 11, scope: !5050)
!5050 = distinct !DILexicalBlock(scope: !5042, file: !4981, line: 71, column: 5)
!5051 = !DILocation(line: 73, column: 9, scope: !5052)
!5052 = distinct !DILexicalBlock(scope: !5050, file: !4981, line: 72, column: 11)
!5053 = !DILocation(line: 73, column: 15, scope: !5052)
!5054 = !DILocation(line: 78, column: 1, scope: !4980)
!5055 = distinct !DISubprogram(name: "hard_locale", scope: !5056, file: !5056, line: 38, type: !5057, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !717, variables: !5059)
!5056 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5057 = !DISubroutineType(types: !5058)
!5058 = !{!112, !140}
!5059 = !{!5060, !5061, !5062, !5063, !5070, !5071, !5073, !5074, !5076, !5077, !5079}
!5060 = !DILocalVariable(name: "category", arg: 1, scope: !5055, file: !5056, line: 38, type: !140)
!5061 = !DILocalVariable(name: "hard", scope: !5055, file: !5056, line: 40, type: !112)
!5062 = !DILocalVariable(name: "p", scope: !5055, file: !5056, line: 41, type: !43)
!5063 = !DILocalVariable(name: "__s1_len", scope: !5064, file: !5056, line: 47, type: !35)
!5064 = distinct !DILexicalBlock(scope: !5065, file: !5056, line: 47, column: 15)
!5065 = distinct !DILexicalBlock(scope: !5066, file: !5056, line: 47, column: 15)
!5066 = distinct !DILexicalBlock(scope: !5067, file: !5056, line: 46, column: 9)
!5067 = distinct !DILexicalBlock(scope: !5068, file: !5056, line: 45, column: 11)
!5068 = distinct !DILexicalBlock(scope: !5069, file: !5056, line: 44, column: 5)
!5069 = distinct !DILexicalBlock(scope: !5055, file: !5056, line: 43, column: 7)
!5070 = !DILocalVariable(name: "__s2_len", scope: !5064, file: !5056, line: 47, type: !35)
!5071 = !DILocalVariable(name: "__s2", scope: !5072, file: !5056, line: 47, type: !40)
!5072 = distinct !DILexicalBlock(scope: !5064, file: !5056, line: 47, column: 15)
!5073 = !DILocalVariable(name: "__result", scope: !5072, file: !5056, line: 47, type: !140)
!5074 = !DILocalVariable(name: "__s1_len", scope: !5075, file: !5056, line: 47, type: !35)
!5075 = distinct !DILexicalBlock(scope: !5065, file: !5056, line: 47, column: 39)
!5076 = !DILocalVariable(name: "__s2_len", scope: !5075, file: !5056, line: 47, type: !35)
!5077 = !DILocalVariable(name: "__s2", scope: !5078, file: !5056, line: 47, type: !40)
!5078 = distinct !DILexicalBlock(scope: !5075, file: !5056, line: 47, column: 39)
!5079 = !DILocalVariable(name: "__result", scope: !5078, file: !5056, line: 47, type: !140)
!5080 = !DILocation(line: 38, column: 18, scope: !5055)
!5081 = !DILocation(line: 40, column: 8, scope: !5055)
!5082 = !DILocation(line: 41, column: 19, scope: !5055)
!5083 = !DILocation(line: 41, column: 15, scope: !5055)
!5084 = !DILocation(line: 43, column: 7, scope: !5069)
!5085 = !DILocation(line: 43, column: 7, scope: !5055)
!5086 = !DILocation(line: 47, column: 15, scope: !5064)
!5087 = !DILocation(line: 47, column: 15, scope: !5072)
!5088 = !DILocation(line: 47, column: 15, scope: !5089)
!5089 = !DILexicalBlockFile(scope: !5072, file: !5056, discriminator: 2)
!5090 = !DILocation(line: 47, column: 15, scope: !5091)
!5091 = !DILexicalBlockFile(scope: !5092, file: !5056, discriminator: 3)
!5092 = distinct !DILexicalBlock(scope: !5072, file: !5056, line: 47, column: 15)
!5093 = !DILocation(line: 47, column: 15, scope: !5094)
!5094 = !DILexicalBlockFile(scope: !5092, file: !5056, discriminator: 2)
!5095 = !DILocation(line: 47, column: 15, scope: !5096)
!5096 = !DILexicalBlockFile(scope: !5097, file: !5056, discriminator: 4)
!5097 = distinct !DILexicalBlock(scope: !5092, file: !5056, line: 47, column: 15)
!5098 = !DILocation(line: 47, column: 15, scope: !5099)
!5099 = !DILexicalBlockFile(scope: !5064, file: !5056, discriminator: 11)
!5100 = !DILocation(line: 47, column: 36, scope: !5101)
!5101 = !DILexicalBlockFile(scope: !5065, file: !5056, discriminator: 13)
!5102 = !DILocation(line: 47, column: 39, scope: !5075)
!5103 = !DILocation(line: 47, column: 39, scope: !5104)
!5104 = !DILexicalBlockFile(scope: !5075, file: !5056, discriminator: 26)
!5105 = !DILocation(line: 47, column: 59, scope: !5106)
!5106 = !DILexicalBlockFile(scope: !5065, file: !5056, discriminator: 27)
!5107 = !DILocation(line: 47, column: 15, scope: !5108)
!5108 = !DILexicalBlockFile(scope: !5066, file: !5056, discriminator: 27)
!5109 = !DILocation(line: 48, column: 13, scope: !5065)
!5110 = !DILocation(line: 71, column: 3, scope: !5055)
!5111 = distinct !DISubprogram(name: "locale_charset", scope: !655, file: !655, line: 393, type: !5112, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !312, variables: !5114)
!5112 = !DISubroutineType(types: !5113)
!5113 = !{!43}
!5114 = !{!5115, !5116, !5117, !5122}
!5115 = !DILocalVariable(name: "codeset", scope: !5111, file: !655, line: 395, type: !43)
!5116 = !DILocalVariable(name: "aliases", scope: !5111, file: !655, line: 396, type: !43)
!5117 = !DILocalVariable(name: "__s1_len", scope: !5118, file: !655, line: 592, type: !35)
!5118 = distinct !DILexicalBlock(scope: !5119, file: !655, line: 592, column: 9)
!5119 = distinct !DILexicalBlock(scope: !5120, file: !655, line: 592, column: 9)
!5120 = distinct !DILexicalBlock(scope: !5121, file: !655, line: 589, column: 3)
!5121 = distinct !DILexicalBlock(scope: !5111, file: !655, line: 589, column: 3)
!5122 = !DILocalVariable(name: "__s2_len", scope: !5118, file: !655, line: 592, type: !35)
!5123 = !DILocalVariable(name: "buf1", scope: !5124, file: !655, line: 196, type: !5191)
!5124 = distinct !DILexicalBlock(scope: !5125, file: !655, line: 194, column: 21)
!5125 = distinct !DILexicalBlock(scope: !5126, file: !655, line: 193, column: 19)
!5126 = distinct !DILexicalBlock(scope: !5127, file: !655, line: 193, column: 19)
!5127 = distinct !DILexicalBlock(scope: !5128, file: !655, line: 188, column: 17)
!5128 = distinct !DILexicalBlock(scope: !5129, file: !655, line: 181, column: 19)
!5129 = distinct !DILexicalBlock(scope: !5130, file: !655, line: 177, column: 13)
!5130 = distinct !DILexicalBlock(scope: !5131, file: !655, line: 173, column: 15)
!5131 = distinct !DILexicalBlock(scope: !5132, file: !655, line: 161, column: 9)
!5132 = distinct !DILexicalBlock(scope: !5133, file: !655, line: 157, column: 11)
!5133 = distinct !DILexicalBlock(scope: !5134, file: !655, line: 130, column: 5)
!5134 = distinct !DILexicalBlock(scope: !5135, file: !655, line: 129, column: 7)
!5135 = distinct !DISubprogram(name: "get_charset_aliases", scope: !655, file: !655, line: 124, type: !5112, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !312, variables: !5136)
!5136 = !{!5137, !5138, !5139, !5140, !5141, !5143, !5144, !5145, !5146, !5187, !5188, !5189, !5123, !5190, !5194, !5195, !5196}
!5137 = !DILocalVariable(name: "cp", scope: !5135, file: !655, line: 126, type: !43)
!5138 = !DILocalVariable(name: "dir", scope: !5133, file: !655, line: 132, type: !43)
!5139 = !DILocalVariable(name: "base", scope: !5133, file: !655, line: 133, type: !43)
!5140 = !DILocalVariable(name: "file_name", scope: !5133, file: !655, line: 134, type: !46)
!5141 = !DILocalVariable(name: "dir_len", scope: !5142, file: !655, line: 144, type: !35)
!5142 = distinct !DILexicalBlock(scope: !5133, file: !655, line: 143, column: 7)
!5143 = !DILocalVariable(name: "base_len", scope: !5142, file: !655, line: 145, type: !35)
!5144 = !DILocalVariable(name: "add_slash", scope: !5142, file: !655, line: 146, type: !140)
!5145 = !DILocalVariable(name: "fd", scope: !5131, file: !655, line: 162, type: !140)
!5146 = !DILocalVariable(name: "fp", scope: !5129, file: !655, line: 178, type: !5147)
!5147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5148, size: 64)
!5148 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1173, line: 49, baseType: !5149)
!5149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1175, line: 241, size: 1728, elements: !5150)
!5150 = !{!5151, !5152, !5153, !5154, !5155, !5156, !5157, !5158, !5159, !5160, !5161, !5162, !5163, !5171, !5172, !5173, !5174, !5175, !5176, !5177, !5178, !5179, !5180, !5181, !5182, !5183, !5184, !5185, !5186}
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5149, file: !1175, line: 242, baseType: !140, size: 32)
!5152 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5149, file: !1175, line: 247, baseType: !46, size: 64, offset: 64)
!5153 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5149, file: !1175, line: 248, baseType: !46, size: 64, offset: 128)
!5154 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5149, file: !1175, line: 249, baseType: !46, size: 64, offset: 192)
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5149, file: !1175, line: 250, baseType: !46, size: 64, offset: 256)
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5149, file: !1175, line: 251, baseType: !46, size: 64, offset: 320)
!5157 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5149, file: !1175, line: 252, baseType: !46, size: 64, offset: 384)
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5149, file: !1175, line: 253, baseType: !46, size: 64, offset: 448)
!5159 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5149, file: !1175, line: 254, baseType: !46, size: 64, offset: 512)
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5149, file: !1175, line: 256, baseType: !46, size: 64, offset: 576)
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5149, file: !1175, line: 257, baseType: !46, size: 64, offset: 640)
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5149, file: !1175, line: 258, baseType: !46, size: 64, offset: 704)
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5149, file: !1175, line: 260, baseType: !5164, size: 64, offset: 768)
!5164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5165, size: 64)
!5165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1175, line: 156, size: 192, elements: !5166)
!5166 = !{!5167, !5168, !5170}
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !5165, file: !1175, line: 157, baseType: !5164, size: 64)
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !5165, file: !1175, line: 158, baseType: !5169, size: 64, offset: 64)
!5169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5149, size: 64)
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !5165, file: !1175, line: 162, baseType: !140, size: 32, offset: 128)
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5149, file: !1175, line: 262, baseType: !5169, size: 64, offset: 832)
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5149, file: !1175, line: 264, baseType: !140, size: 32, offset: 896)
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5149, file: !1175, line: 268, baseType: !140, size: 32, offset: 928)
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5149, file: !1175, line: 270, baseType: !1201, size: 64, offset: 960)
!5175 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5149, file: !1175, line: 274, baseType: !263, size: 16, offset: 1024)
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5149, file: !1175, line: 275, baseType: !1204, size: 8, offset: 1040)
!5177 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5149, file: !1175, line: 276, baseType: !1206, size: 8, offset: 1048)
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5149, file: !1175, line: 280, baseType: !1210, size: 64, offset: 1088)
!5179 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5149, file: !1175, line: 289, baseType: !1213, size: 64, offset: 1152)
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !5149, file: !1175, line: 297, baseType: !47, size: 64, offset: 1216)
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !5149, file: !1175, line: 298, baseType: !47, size: 64, offset: 1280)
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !5149, file: !1175, line: 299, baseType: !47, size: 64, offset: 1344)
!5183 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !5149, file: !1175, line: 300, baseType: !47, size: 64, offset: 1408)
!5184 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5149, file: !1175, line: 302, baseType: !35, size: 64, offset: 1472)
!5185 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5149, file: !1175, line: 303, baseType: !140, size: 32, offset: 1536)
!5186 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5149, file: !1175, line: 305, baseType: !1221, size: 160, offset: 1568)
!5187 = !DILocalVariable(name: "res_ptr", scope: !5127, file: !655, line: 190, type: !46)
!5188 = !DILocalVariable(name: "res_size", scope: !5127, file: !655, line: 191, type: !35)
!5189 = !DILocalVariable(name: "c", scope: !5124, file: !655, line: 195, type: !140)
!5190 = !DILocalVariable(name: "buf2", scope: !5124, file: !655, line: 197, type: !5191)
!5191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 408, elements: !5192)
!5192 = !{!5193}
!5193 = !DISubrange(count: 51)
!5194 = !DILocalVariable(name: "l1", scope: !5124, file: !655, line: 198, type: !35)
!5195 = !DILocalVariable(name: "l2", scope: !5124, file: !655, line: 198, type: !35)
!5196 = !DILocalVariable(name: "old_res_ptr", scope: !5124, file: !655, line: 199, type: !46)
!5197 = !DILocation(line: 196, column: 28, scope: !5124, inlinedAt: !5198)
!5198 = distinct !DILocation(line: 589, column: 18, scope: !5121)
!5199 = !DILocation(line: 197, column: 28, scope: !5124, inlinedAt: !5198)
!5200 = !DILocation(line: 403, column: 13, scope: !5111)
!5201 = !DILocation(line: 395, column: 15, scope: !5111)
!5202 = !DILocation(line: 584, column: 15, scope: !5203)
!5203 = distinct !DILexicalBlock(scope: !5111, file: !655, line: 584, column: 7)
!5204 = !DILocation(line: 584, column: 7, scope: !5111)
!5205 = !DILocation(line: 128, column: 8, scope: !5135, inlinedAt: !5198)
!5206 = !DILocation(line: 126, column: 15, scope: !5135, inlinedAt: !5198)
!5207 = !DILocation(line: 129, column: 10, scope: !5134, inlinedAt: !5198)
!5208 = !DILocation(line: 129, column: 7, scope: !5135, inlinedAt: !5198)
!5209 = !DILocation(line: 138, column: 13, scope: !5133, inlinedAt: !5198)
!5210 = !DILocation(line: 132, column: 19, scope: !5133, inlinedAt: !5198)
!5211 = !DILocation(line: 139, column: 15, scope: !5212, inlinedAt: !5198)
!5212 = distinct !DILexicalBlock(scope: !5133, file: !655, line: 139, column: 11)
!5213 = !DILocation(line: 139, column: 23, scope: !5212, inlinedAt: !5198)
!5214 = !DILocation(line: 139, column: 26, scope: !5215, inlinedAt: !5198)
!5215 = !DILexicalBlockFile(scope: !5212, file: !655, discriminator: 1)
!5216 = !DILocation(line: 139, column: 33, scope: !5215, inlinedAt: !5198)
!5217 = !DILocation(line: 139, column: 11, scope: !5218, inlinedAt: !5198)
!5218 = !DILexicalBlockFile(scope: !5133, file: !655, discriminator: 1)
!5219 = !DILocation(line: 140, column: 9, scope: !5212, inlinedAt: !5198)
!5220 = !DILocation(line: 144, column: 26, scope: !5142, inlinedAt: !5198)
!5221 = !DILocation(line: 144, column: 16, scope: !5142, inlinedAt: !5198)
!5222 = !DILocation(line: 145, column: 16, scope: !5142, inlinedAt: !5198)
!5223 = !DILocation(line: 146, column: 34, scope: !5142, inlinedAt: !5198)
!5224 = !DILocation(line: 146, column: 38, scope: !5142, inlinedAt: !5198)
!5225 = !DILocation(line: 146, column: 42, scope: !5226, inlinedAt: !5198)
!5226 = !DILexicalBlockFile(scope: !5142, file: !655, discriminator: 1)
!5227 = !DILocation(line: 146, column: 41, scope: !5226, inlinedAt: !5198)
!5228 = !DILocation(line: 147, column: 48, scope: !5142, inlinedAt: !5198)
!5229 = !DILocation(line: 147, column: 46, scope: !5142, inlinedAt: !5198)
!5230 = !DILocation(line: 147, column: 69, scope: !5142, inlinedAt: !5198)
!5231 = !DILocation(line: 147, column: 30, scope: !5142, inlinedAt: !5198)
!5232 = !DILocation(line: 134, column: 13, scope: !5133, inlinedAt: !5198)
!5233 = !DILocation(line: 148, column: 13, scope: !5142, inlinedAt: !5198)
!5234 = !DILocation(line: 150, column: 13, scope: !5235, inlinedAt: !5198)
!5235 = distinct !DILexicalBlock(scope: !5236, file: !655, line: 149, column: 11)
!5236 = distinct !DILexicalBlock(scope: !5142, file: !655, line: 148, column: 13)
!5237 = !DILocation(line: 151, column: 17, scope: !5235, inlinedAt: !5198)
!5238 = !DILocation(line: 152, column: 34, scope: !5239, inlinedAt: !5198)
!5239 = distinct !DILexicalBlock(scope: !5235, file: !655, line: 151, column: 17)
!5240 = !DILocation(line: 153, column: 41, scope: !5235, inlinedAt: !5198)
!5241 = !DILocation(line: 153, column: 13, scope: !5235, inlinedAt: !5198)
!5242 = !DILocation(line: 157, column: 11, scope: !5133, inlinedAt: !5198)
!5243 = !DILocation(line: 171, column: 16, scope: !5131, inlinedAt: !5198)
!5244 = !DILocation(line: 162, column: 15, scope: !5131, inlinedAt: !5198)
!5245 = !DILocation(line: 173, column: 18, scope: !5130, inlinedAt: !5198)
!5246 = !DILocation(line: 173, column: 15, scope: !5131, inlinedAt: !5198)
!5247 = !DILocation(line: 180, column: 20, scope: !5129, inlinedAt: !5198)
!5248 = !DILocation(line: 178, column: 21, scope: !5129, inlinedAt: !5198)
!5249 = !DILocation(line: 181, column: 22, scope: !5128, inlinedAt: !5198)
!5250 = !DILocation(line: 181, column: 19, scope: !5129, inlinedAt: !5198)
!5251 = !DILocation(line: 190, column: 25, scope: !5127, inlinedAt: !5198)
!5252 = !DILocation(line: 184, column: 19, scope: !5253, inlinedAt: !5198)
!5253 = distinct !DILexicalBlock(scope: !5128, file: !655, line: 182, column: 17)
!5254 = !DILocation(line: 186, column: 17, scope: !5253, inlinedAt: !5198)
!5255 = !DILocation(line: 191, column: 26, scope: !5127, inlinedAt: !5198)
!5256 = !DILocation(line: 196, column: 23, scope: !5124, inlinedAt: !5198)
!5257 = !DILocation(line: 197, column: 23, scope: !5124, inlinedAt: !5198)
!5258 = !DILocalVariable(name: "__fp", arg: 1, scope: !5259, file: !1341, line: 63, type: !5147)
!5259 = distinct !DISubprogram(name: "getc_unlocked", scope: !1341, file: !1341, line: 63, type: !5260, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !312, variables: !5262)
!5260 = !DISubroutineType(types: !5261)
!5261 = !{!140, !5147}
!5262 = !{!5258}
!5263 = !DILocation(line: 63, column: 22, scope: !5259, inlinedAt: !5264)
!5264 = distinct !DILocation(line: 201, column: 27, scope: !5124, inlinedAt: !5198)
!5265 = !DILocation(line: 65, column: 10, scope: !5259, inlinedAt: !5264)
!5266 = !DILocation(line: 65, column: 10, scope: !5267, inlinedAt: !5264)
!5267 = !DILexicalBlockFile(scope: !5259, file: !1341, discriminator: 1)
!5268 = !DILocation(line: 65, column: 10, scope: !5269, inlinedAt: !5264)
!5269 = !DILexicalBlockFile(scope: !5259, file: !1341, discriminator: 2)
!5270 = !DILocation(line: 65, column: 10, scope: !5271, inlinedAt: !5264)
!5271 = !DILexicalBlockFile(scope: !5259, file: !1341, discriminator: 3)
!5272 = !DILocation(line: 195, column: 27, scope: !5124, inlinedAt: !5198)
!5273 = !DILocation(line: 202, column: 27, scope: !5124, inlinedAt: !5198)
!5274 = !DILocation(line: 63, column: 22, scope: !5259, inlinedAt: !5275)
!5275 = distinct !DILocation(line: 210, column: 33, scope: !5276, inlinedAt: !5198)
!5276 = distinct !DILexicalBlock(scope: !5277, file: !655, line: 207, column: 25)
!5277 = distinct !DILexicalBlock(scope: !5124, file: !655, line: 206, column: 27)
!5278 = !DILocation(line: 65, column: 10, scope: !5259, inlinedAt: !5275)
!5279 = !DILocation(line: 65, column: 10, scope: !5267, inlinedAt: !5275)
!5280 = !DILocation(line: 65, column: 10, scope: !5269, inlinedAt: !5275)
!5281 = !DILocation(line: 65, column: 10, scope: !5271, inlinedAt: !5275)
!5282 = !DILocation(line: 210, column: 29, scope: !5283, inlinedAt: !5198)
!5283 = !DILexicalBlockFile(scope: !5276, file: !655, discriminator: 1)
!5284 = distinct !{!5284, !5285, !5286}
!5285 = !DILocation(line: 193, column: 19, scope: !5126)
!5286 = !DILocation(line: 241, column: 21, scope: !5126)
!5287 = !DILocation(line: 216, column: 23, scope: !5124, inlinedAt: !5198)
!5288 = !DILocation(line: 217, column: 27, scope: !5289, inlinedAt: !5198)
!5289 = distinct !DILexicalBlock(scope: !5124, file: !655, line: 217, column: 27)
!5290 = !DILocation(line: 217, column: 64, scope: !5289, inlinedAt: !5198)
!5291 = !DILocation(line: 217, column: 27, scope: !5124, inlinedAt: !5198)
!5292 = !DILocation(line: 219, column: 28, scope: !5124, inlinedAt: !5198)
!5293 = !DILocation(line: 198, column: 30, scope: !5124, inlinedAt: !5198)
!5294 = !DILocation(line: 220, column: 28, scope: !5124, inlinedAt: !5198)
!5295 = !DILocation(line: 198, column: 34, scope: !5124, inlinedAt: !5198)
!5296 = !DILocation(line: 199, column: 29, scope: !5124, inlinedAt: !5198)
!5297 = !DILocation(line: 222, column: 36, scope: !5298, inlinedAt: !5198)
!5298 = distinct !DILexicalBlock(scope: !5124, file: !655, line: 222, column: 27)
!5299 = !DILocation(line: 222, column: 27, scope: !5124, inlinedAt: !5198)
!5300 = !DILocation(line: 225, column: 63, scope: !5301, inlinedAt: !5198)
!5301 = distinct !DILexicalBlock(scope: !5298, file: !655, line: 223, column: 25)
!5302 = !DILocation(line: 225, column: 46, scope: !5301, inlinedAt: !5198)
!5303 = !DILocation(line: 226, column: 25, scope: !5301, inlinedAt: !5198)
!5304 = !DILocation(line: 229, column: 36, scope: !5305, inlinedAt: !5198)
!5305 = distinct !DILexicalBlock(scope: !5298, file: !655, line: 228, column: 25)
!5306 = !DILocation(line: 230, column: 73, scope: !5305, inlinedAt: !5198)
!5307 = !DILocation(line: 230, column: 46, scope: !5305, inlinedAt: !5198)
!5308 = !DILocation(line: 232, column: 35, scope: !5309, inlinedAt: !5198)
!5309 = distinct !DILexicalBlock(scope: !5124, file: !655, line: 232, column: 27)
!5310 = !DILocation(line: 232, column: 27, scope: !5124, inlinedAt: !5198)
!5311 = !DILocation(line: 236, column: 27, scope: !5312, inlinedAt: !5198)
!5312 = distinct !DILexicalBlock(scope: !5309, file: !655, line: 233, column: 25)
!5313 = !DILocation(line: 237, column: 27, scope: !5312, inlinedAt: !5198)
!5314 = !DILocation(line: 239, column: 39, scope: !5124, inlinedAt: !5198)
!5315 = !DILocation(line: 239, column: 50, scope: !5124, inlinedAt: !5198)
!5316 = !DILocation(line: 239, column: 61, scope: !5124, inlinedAt: !5198)
!5317 = !DILocalVariable(name: "__dest", arg: 1, scope: !5318, file: !1069, line: 107, type: !1072)
!5318 = distinct !DISubprogram(name: "strcpy", scope: !1069, file: !1069, line: 107, type: !1070, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !312, variables: !5319)
!5319 = !{!5317, !5320}
!5320 = !DILocalVariable(name: "__src", arg: 2, scope: !5318, file: !1069, line: 107, type: !1073)
!5321 = !DILocation(line: 107, column: 1, scope: !5318, inlinedAt: !5322)
!5322 = distinct !DILocation(line: 239, column: 23, scope: !5124, inlinedAt: !5198)
!5323 = !DILocation(line: 109, column: 49, scope: !5318, inlinedAt: !5322)
!5324 = !DILocation(line: 109, column: 10, scope: !5318, inlinedAt: !5322)
!5325 = !DILocation(line: 107, column: 1, scope: !5318, inlinedAt: !5326)
!5326 = distinct !DILocation(line: 240, column: 23, scope: !5124, inlinedAt: !5198)
!5327 = !DILocation(line: 109, column: 49, scope: !5318, inlinedAt: !5326)
!5328 = !DILocation(line: 109, column: 10, scope: !5318, inlinedAt: !5326)
!5329 = !DILocation(line: 241, column: 21, scope: !5125, inlinedAt: !5198)
!5330 = !DILocation(line: 242, column: 19, scope: !5127, inlinedAt: !5198)
!5331 = !DILocation(line: 243, column: 32, scope: !5332, inlinedAt: !5198)
!5332 = distinct !DILexicalBlock(scope: !5127, file: !655, line: 243, column: 23)
!5333 = !DILocation(line: 243, column: 23, scope: !5127, inlinedAt: !5198)
!5334 = !DILocation(line: 247, column: 33, scope: !5335, inlinedAt: !5198)
!5335 = distinct !DILexicalBlock(scope: !5332, file: !655, line: 246, column: 21)
!5336 = !DILocation(line: 247, column: 45, scope: !5335, inlinedAt: !5198)
!5337 = !DILocation(line: 253, column: 11, scope: !5131, inlinedAt: !5198)
!5338 = !DILocation(line: 377, column: 23, scope: !5133, inlinedAt: !5198)
!5339 = !DILocation(line: 378, column: 5, scope: !5133, inlinedAt: !5198)
!5340 = !DILocation(line: 396, column: 15, scope: !5111)
!5341 = !DILocation(line: 590, column: 8, scope: !5120)
!5342 = !DILocation(line: 590, column: 17, scope: !5120)
!5343 = !DILocation(line: 589, column: 3, scope: !5344)
!5344 = !DILexicalBlockFile(scope: !5121, file: !655, discriminator: 1)
!5345 = !DILocation(line: 592, column: 9, scope: !5118)
!5346 = !DILocation(line: 592, column: 35, scope: !5119)
!5347 = !DILocation(line: 593, column: 9, scope: !5119)
!5348 = !DILocation(line: 593, column: 24, scope: !5349)
!5349 = !DILexicalBlockFile(scope: !5119, file: !655, discriminator: 1)
!5350 = !DILocation(line: 593, column: 31, scope: !5349)
!5351 = !DILocation(line: 593, column: 34, scope: !5352)
!5352 = !DILexicalBlockFile(scope: !5119, file: !655, discriminator: 2)
!5353 = !DILocation(line: 593, column: 45, scope: !5352)
!5354 = !DILocation(line: 592, column: 9, scope: !5355)
!5355 = !DILexicalBlockFile(scope: !5120, file: !655, discriminator: 1)
!5356 = !DILocation(line: 595, column: 29, scope: !5357)
!5357 = distinct !DILexicalBlock(scope: !5119, file: !655, line: 594, column: 7)
!5358 = !DILocation(line: 595, column: 27, scope: !5357)
!5359 = !DILocation(line: 595, column: 46, scope: !5357)
!5360 = !DILocation(line: 596, column: 9, scope: !5357)
!5361 = !DILocation(line: 591, column: 19, scope: !5120)
!5362 = !DILocation(line: 591, column: 36, scope: !5120)
!5363 = !DILocation(line: 591, column: 16, scope: !5120)
!5364 = !DILocation(line: 591, column: 52, scope: !5355)
!5365 = !DILocation(line: 591, column: 69, scope: !5120)
!5366 = !DILocation(line: 591, column: 49, scope: !5120)
!5367 = distinct !{!5367, !5368, !5369}
!5368 = !DILocation(line: 589, column: 3, scope: !5121)
!5369 = !DILocation(line: 597, column: 7, scope: !5121)
!5370 = !DILocation(line: 602, column: 7, scope: !5371)
!5371 = distinct !DILexicalBlock(scope: !5111, file: !655, line: 602, column: 7)
!5372 = !DILocation(line: 602, column: 18, scope: !5371)
!5373 = !DILocation(line: 602, column: 7, scope: !5111)
!5374 = !DILocation(line: 612, column: 3, scope: !5111)
