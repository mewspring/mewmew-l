source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"
%struct.__sigset_t = type { [16 x i64] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.control = type { i64, i64, i64, i32, i8, i8, i8, %struct.re_pattern_buffer }
%struct.re_pattern_buffer = type { %struct.re_dfa_t*, i64, i64, i64, i8*, i8*, i64, i8 }
%struct.re_dfa_t = type opaque
%struct.option = type { i8*, i32, i32*, i32 }
%struct.buffer_record = type { i64, i64, i64, i64, i64, i8*, %struct.line*, %struct.line*, %struct.buffer_record* }
%struct.line = type { i64, i64, i64, [80 x %struct.cstring], %struct.line* }
%struct.cstring = type { i64, i8* }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.sigaction = type { %union.anon, %struct.__sigset_t, i32, void ()* }
%union.anon = type { void (i32)* }
%struct.re_registers = type { i32, i32*, i32* }
%struct.__mbstate_t = type { i32, %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
@.str.1 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@caught_signals = internal global %struct.__sigset_t zeroinitializer, align 8, !dbg !0
@remove_files = internal global i8 0, align 1, !dbg !207
@files_created = internal global i32 0, align 4, !dbg !315
@filename_space = internal global i8* null, align 8, !dbg !339
@prefix = internal global i8* null, align 8, !dbg !318
@suffix = internal global i8* null, align 8, !dbg !333
@digits = internal global i32 2, align 4, !dbg !336
@.str.27 = private unnamed_addr constant [5 x i8] c"%0*u\00", align 1
@output_stream = internal unnamed_addr global %struct._IO_FILE* null, align 8, !dbg !256
@.str.25 = private unnamed_addr constant [19 x i8] c"write error for %s\00", align 1
@output_filename = internal unnamed_addr global i8* null, align 8, !dbg !311
@bytes_written = internal unnamed_addr global i64 0, align 8, !dbg !313
@elide_empty_files = internal unnamed_addr global i1 false, align 1
@suppress_count = internal unnamed_addr global i1 false, align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.26 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@global_argv = internal unnamed_addr global i8** null, align 8, !dbg !202
@controls = internal unnamed_addr global %struct.control* null, align 8, !dbg !214
@control_used = internal unnamed_addr global i64 0, align 8, !dbg !254
@suppress_matched = internal unnamed_addr global i1 false, align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"xx\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"f:b:kn:sqz\00", align 1
@longopts = internal constant [11 x %struct.option] [%struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i32 0, i32 0), i32 1, i32* null, i32 110 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0), i32 0, i32* null, i32 113 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i32 0, i32 0), i32 0, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i32 0, i32 0), i32 0, i32* null, i32 107 }, %struct.option { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.32, i32 0, i32 0), i32 0, i32* null, i32 122 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i32 0, i32 0), i32 1, i32* null, i32 102 }, %struct.option { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.34, i32 0, i32 0), i32 1, i32* null, i32 98 }, %struct.option { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.35, i32 0, i32 0), i32 0, i32* null, i32 128 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !321
@optarg = external local_unnamed_addr global i8*, align 8
@.str.7 = private unnamed_addr constant [15 x i8] c"invalid number\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"csplit\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"Stuart Kemp\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.12 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"missing operand after %s\00", align 1
@.str.38 = private unnamed_addr constant [48 x i8] c"too many %% conversion specifications in suffix\00", align 1
@.str.40 = private unnamed_addr constant [39 x i8] c"missing conversion specifier in suffix\00", align 1
@.str.41 = private unnamed_addr constant [43 x i8] c"invalid conversion specifier in suffix: %c\00", align 1
@.str.42 = private unnamed_addr constant [46 x i8] c"invalid conversion specifier in suffix: \5C%.3o\00", align 1
@.str.43 = private unnamed_addr constant [50 x i8] c"invalid flags in conversion specification: %%%c%c\00", align 1
@.str.39 = private unnamed_addr constant [46 x i8] c"missing %% conversion specification in suffix\00", align 1
@.str.45 = private unnamed_addr constant [27 x i8] c"cannot open %s for reading\00", align 1
@.str.50 = private unnamed_addr constant [35 x i8] c"%s: closing delimiter '%c' missing\00", align 1
@new_control_record.control_allocated = internal global i64 0, align 8, !dbg !364
@re_syntax_options = external local_unnamed_addr global i64, align 8
@.str.51 = private unnamed_addr constant [35 x i8] c"%s: invalid regular expression: %s\00", align 1
@.str.52 = private unnamed_addr constant [37 x i8] c"%s: integer expected after delimiter\00", align 1
@.str.46 = private unnamed_addr constant [20 x i8] c"%s: invalid pattern\00", align 1
@.str.47 = private unnamed_addr constant [42 x i8] c"%s: line number must be greater than zero\00", align 1
@parse_patterns.last_val = internal unnamed_addr global i64 0, align 8, !dbg !341
@.str.48 = private unnamed_addr constant [57 x i8] c"line number %s is smaller than preceding line number, %s\00", align 1
@.str.49 = private unnamed_addr constant [61 x i8] c"warning: line number %s is the same as preceding line number\00", align 1
@.str.53 = private unnamed_addr constant [36 x i8] c"%s: '}' is required in repeat count\00", align 1
@.str.54 = private unnamed_addr constant [42 x i8] c"%s}: integer required between '{' and '}'\00", align 1
@main.sig = internal unnamed_addr constant [11 x i32] [i32 14, i32 1, i32 2, i32 13, i32 3, i32 15, i32 29, i32 27, i32 26, i32 24, i32 25], align 16, !dbg !196
@current_line = internal unnamed_addr global i64 0, align 8, !dbg !371
@.str.55 = private unnamed_addr constant [35 x i8] c"error in regular expression search\00", align 1
@head = internal unnamed_addr global %struct.buffer_record* null, align 8, !dbg !409
@.str.62 = private unnamed_addr constant [18 x i8] c"input disappeared\00", align 1
@.str.61 = private unnamed_addr constant [29 x i8] c"%s: line number out of range\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"read error\00", align 1
@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.63 = private unnamed_addr constant [33 x i8] c"%s: %s: line number out of range\00", align 1
@.str.59 = private unnamed_addr constant [19 x i8] c" on repetition %s\0A\00", align 1
@.str.60 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@have_read_eof = internal unnamed_addr global i1 false, align 1
@hold_count = internal unnamed_addr global i64 0, align 8, !dbg !413
@last_line_number = internal unnamed_addr global i64 0, align 8, !dbg !415
@hold_area = internal unnamed_addr global i8* null, align 8, !dbg !417
@.str.58 = private unnamed_addr constant [24 x i8] c"%s: %s: match not found\00", align 1
@.str.56 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.57 = private unnamed_addr constant [13 x i8] c"src/csplit.c\00", align 1
@__PRETTY_FUNCTION__.find_line = private unnamed_addr constant [37 x i8] c"struct cstring *find_line(uintmax_t)\00", align 1
@remove_line.prev_buf = internal unnamed_addr global %struct.buffer_record* null, align 8, !dbg !373
@.str.64 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.15 = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.16 = private unnamed_addr constant [39 x i8] c"Usage: %s [OPTION]... FILE PATTERN...\0A\00", align 1
@.str.17 = private unnamed_addr constant [134 x i8] c"Output pieces of FILE separated by PATTERN(s) to files 'xx00', 'xx01', ...,\0Aand output byte counts of each piece to standard output.\0A\00", align 1
@.str.18 = private unnamed_addr constant [35 x i8] c"\0ARead standard input if FILE is -\0A\00", align 1
@.str.65 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@.str.19 = private unnamed_addr constant [188 x i8] c"  -b, --suffix-format=FORMAT  use sprintf FORMAT instead of %02d\0A  -f, --prefix=PREFIX        use PREFIX instead of 'xx'\0A  -k, --keep-files           do not remove output files on errors\0A\00", align 1
@.str.20 = private unnamed_addr constant [66 x i8] c"      --suppress-matched     suppress the lines matching PATTERN\0A\00", align 1
@.str.21 = private unnamed_addr constant [199 x i8] c"  -n, --digits=DIGITS        use specified number of digits instead of 2\0A  -s, --quiet, --silent      do not print counts of output file sizes\0A  -z, --elide-empty-files    remove empty output files\0A\00", align 1
@.str.22 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.23 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.24 = private unnamed_addr constant [447 x i8] c"\0AEach PATTERN may be:\0A  INTEGER            copy up to but not including specified line number\0A  /REGEXP/[OFFSET]   copy up to but not including a matching line\0A  %REGEXP%[OFFSET]   skip to, but not including a matching line\0A  {INTEGER}          repeat the previous pattern specified number of times\0A  {*}                repeat the previous pattern as many times as possible\0A\0AA line OFFSET is a required '+' or '-' followed by a positive integer.\0A\00", align 1
@.str.74 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.75 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.76 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.77 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.78 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.79 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.80 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"digits\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"quiet\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"silent\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"keep-files\00", align 1
@.str.32 = private unnamed_addr constant [18 x i8] c"elide-empty-files\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"prefix\00", align 1
@.str.34 = private unnamed_addr constant [14 x i8] c"suffix-format\00", align 1
@.str.35 = private unnamed_addr constant [17 x i8] c"suppress-matched\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i64 0, i64 0), align 8, !dbg !451
@.str.44 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !457
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !462
@.str.66 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.67 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.68 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !465
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !471
@.str.81 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.82 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.83 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.85, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.86, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.87, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.88, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.89, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.90, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.91, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.92, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.93, i32 0, i32 0), i8* null], align 16, !dbg !478
@.str.84 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.85 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.86 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.87 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.88 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.89 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.90 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.91 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.92 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.93 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !490
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !497
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !509
@.str.11.94 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.95 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.96 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.97 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.98 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.99 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.100 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.cstring* @slotvec0, align 8, !dbg !516
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !523
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !511
@slotvec0 = internal global %struct.cstring { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !525
@.str.113 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.114 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.115 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.116 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.117 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.118 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.119 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.120 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.121 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.122 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.123 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.124 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.125 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.126 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.129 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.130 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.131 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.132 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.133 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19.134 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !529
@.str.143 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.148 = private unnamed_addr constant [38 x i8] c"0 <= strtol_base && strtol_base <= 36\00", align 1
@.str.1.149 = private unnamed_addr constant [16 x i8] c"./lib/xstrtol.c\00", align 1
@__PRETTY_FUNCTION__.xstrtoimax = private unnamed_addr constant [78 x i8] c"strtol_error xstrtoimax(const char *, char **, int, intmax_t *, const char *)\00", align 1
@.str.152 = private unnamed_addr constant [38 x i8] c"0 <= strtol_base && strtol_base <= 36\00", align 1
@.str.1.153 = private unnamed_addr constant [16 x i8] c"./lib/xstrtol.c\00", align 1
@__PRETTY_FUNCTION__.xstrtoumax = private unnamed_addr constant [79 x i8] c"strtol_error xstrtoumax(const char *, char **, int, uintmax_t *, const char *)\00", align 1
@rpl_fcntl.have_dupfd_cloexec = internal unnamed_addr global i32 0, align 4, !dbg !538
@.str.1.170 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.173 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !573
@.str.3.174 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.175 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.176 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.177 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.178 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.179 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1
define void @xalloc_die() local_unnamed_addr #0 !dbg !999 {
	%1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 5) #10, !dbg !1000
	tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %1) #10, !dbg !1001
	tail call fastcc void @cleanup_fatal() #13, !dbg !1003
	unreachable, !dbg !1003
}
declare i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #1
declare void @error(i32, i32, i8*, ...) local_unnamed_addr #2
define internal fastcc void @cleanup_fatal() unnamed_addr #0 !dbg !1004 {
	%1 = alloca %struct.__sigset_t, align 8
	%2 = bitcast %struct.__sigset_t* %1 to i8*, !dbg !1005
	call void @llvm.lifetime.start(i64 128, i8* nonnull %2) #10, !dbg !1005
	tail call fastcc void @close_output_file() #10, !dbg !1010
	tail call void @llvm.dbg.value(metadata %struct.__sigset_t* %1, i64 0, metadata !1008, metadata !1011) #10, !dbg !1012
	%3 = call i32 @sigprocmask(i32 0, %struct.__sigset_t* nonnull @caught_signals, %struct.__sigset_t* nonnull %1) #10, !dbg !1013
	call fastcc void @delete_all_files(i1 zeroext false) #10, !dbg !1014
	call void @llvm.dbg.value(metadata %struct.__sigset_t* %1, i64 0, metadata !1008, metadata !1011) #10, !dbg !1012
	%4 = call i32 @sigprocmask(i32 2, %struct.__sigset_t* nonnull %1, %struct.__sigset_t* null) #10, !dbg !1015
	call void @llvm.lifetime.end(i64 128, i8* nonnull %2) #10, !dbg !1016
	call void @exit(i32 1) #14, !dbg !1017
	unreachable, !dbg !1017
}
declare void @llvm.lifetime.start(i64, i8* nocapture) #3
define internal fastcc void @close_output_file() unnamed_addr #4 !dbg !1018 {
	%1 = alloca %struct.__sigset_t, align 8
	%2 = alloca [21 x i8], align 16
	%3 = load %struct._IO_FILE*, %struct._IO_FILE** @output_stream, align 8, !dbg !1031, !tbaa !1032
	%4 = icmp eq %struct._IO_FILE* %3, null, !dbg !1031
	br i1 %4, label %51, label %5, !dbg !1036
	tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %3, i64 0, metadata !1037, metadata !1043), !dbg !1044
	%6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %3, i64 0, i32 0, !dbg !1047
	%7 = load i32, i32* %6, align 8, !dbg !1047, !tbaa !1048
	%8 = and i32 %7, 32, !dbg !1047
	%9 = icmp eq i32 %8, 0, !dbg !1053
	br i1 %9, label %14, label %10, !dbg !1054
	%11 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.25, i64 0, i64 0), i32 5) #10, !dbg !1055
	%12 = load i8*, i8** @output_filename, align 8, !dbg !1057, !tbaa !1032
	%13 = tail call i8* @quotearg_style(i32 4, i8* %12) #10, !dbg !1058
	tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %11, i8* %13) #10, !dbg !1060
	store %struct._IO_FILE* null, %struct._IO_FILE** @output_stream, align 8, !dbg !1062, !tbaa !1032
	tail call fastcc void @cleanup_fatal() #13, !dbg !1063
	unreachable, !dbg !1063
	%15 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %3) #10, !dbg !1064
	%16 = icmp eq i32 %15, 0, !dbg !1066
	br i1 %16, label %22, label %17, !dbg !1067
	%18 = tail call i32* @__errno_location() #5, !dbg !1068
	%19 = load i32, i32* %18, align 4, !dbg !1068, !tbaa !1070
	%20 = load i8*, i8** @output_filename, align 8, !dbg !1071, !tbaa !1032
	%21 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %20) #10, !dbg !1072
	tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %21) #10, !dbg !1074
	store %struct._IO_FILE* null, %struct._IO_FILE** @output_stream, align 8, !dbg !1076, !tbaa !1032
	tail call fastcc void @cleanup_fatal() #13, !dbg !1077
	unreachable, !dbg !1077
	%23 = load i64, i64* @bytes_written, align 8, !dbg !1078, !tbaa !1079
	%24 = icmp eq i64 %23, 0, !dbg !1080
	br i1 %24, label %25, label %43, !dbg !1081
	%26 = load i1, i1* @elide_empty_files, align 1
	br i1 %26, label %27, label %43, !dbg !1082
	%28 = bitcast %struct.__sigset_t* %1 to i8*, !dbg !1084
	call void @llvm.lifetime.start(i64 128, i8* nonnull %28) #10, !dbg !1084
	tail call void @llvm.dbg.value(metadata %struct.__sigset_t* %1, i64 0, metadata !1020, metadata !1011), !dbg !1085
	%29 = call i32 @sigprocmask(i32 0, %struct.__sigset_t* nonnull @caught_signals, %struct.__sigset_t* nonnull %1) #10, !dbg !1086
	%30 = load i8*, i8** @output_filename, align 8, !dbg !1087, !tbaa !1032
	%31 = call i32 @unlink(i8* %30) #10, !dbg !1088
	%32 = icmp eq i32 %31, 0, !dbg !1089
	%33 = tail call i32* @__errno_location() #5, !dbg !1090
	%34 = load i32, i32* %33, align 4, !dbg !1090, !tbaa !1070
	call void @llvm.dbg.value(metadata i32 %34, i64 0, metadata !1026, metadata !1043), !dbg !1091
	%35 = zext i1 %32 to i32, !dbg !1092
	%36 = load volatile i32, i32* @files_created, align 4, !dbg !1093, !tbaa !1070
	%37 = sub i32 %36, %35, !dbg !1093
	store volatile i32 %37, i32* @files_created, align 4, !dbg !1093, !tbaa !1070
	call void @llvm.dbg.value(metadata %struct.__sigset_t* %1, i64 0, metadata !1020, metadata !1011), !dbg !1085
	%38 = call i32 @sigprocmask(i32 2, %struct.__sigset_t* nonnull %1, %struct.__sigset_t* null) #10, !dbg !1094
	br i1 %32, label %42, label %39, !dbg !1095
	%40 = load i8*, i8** @output_filename, align 8, !dbg !1096, !tbaa !1032
	%41 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %40) #10, !dbg !1096
	call void (i32, i32, i8*, ...) @error(i32 0, i32 %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %41) #10, !dbg !1098
	br label %42, !dbg !1100
	call void @llvm.lifetime.end(i64 128, i8* nonnull %28) #10, !dbg !1101
	br label %50, !dbg !1102
	%44 = load i1, i1* @suppress_count, align 1
	br i1 %44, label %50, label %45, !dbg !1103
	%46 = getelementptr inbounds [21 x i8], [21 x i8]* %2, i64 0, i64 0, !dbg !1104
	call void @llvm.lifetime.start(i64 21, i8* nonnull %46) #10, !dbg !1104
	tail call void @llvm.dbg.declare(metadata [21 x i8]* %2, metadata !1027, metadata !1043), !dbg !1105
	%47 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1106, !tbaa !1032
	%48 = call i8* @umaxtostr(i64 %23, i8* nonnull %46) #10, !dbg !1106
	%49 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %47, i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0), i8* %48) #10, !dbg !1107
	call void @llvm.lifetime.end(i64 21, i8* nonnull %46) #10, !dbg !1109
	br label %50, !dbg !1110
	store %struct._IO_FILE* null, %struct._IO_FILE** @output_stream, align 8, !dbg !1111, !tbaa !1032
	br label %51, !dbg !1112
	ret void, !dbg !1113
}
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #5
declare i32 @sigprocmask(i32, %struct.__sigset_t*, %struct.__sigset_t*) local_unnamed_addr #1
define internal fastcc void @delete_all_files(i1 zeroext) unnamed_addr #4 !dbg !1114 {
	tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !1118, metadata !1124), !dbg !1125
	%2 = load volatile i8, i8* @remove_files, align 1, !dbg !1126, !tbaa !1128, !range !1130
	%3 = icmp eq i8 %2, 0, !dbg !1126
	br i1 %3, label %24, label %4, !dbg !1131
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1119, metadata !1043), !dbg !1132
	%5 = load volatile i32, i32* @files_created, align 4, !dbg !1133, !tbaa !1070
	%6 = icmp eq i32 %5, 0, !dbg !1135
	br i1 %6, label %23, label %7, !dbg !1136
	br label %8, !dbg !1138
	%9 = phi i32 [ %19, %18 ], [ 0, %7 ]
	%10 = tail call fastcc i8* @make_filename(i32 %9), !dbg !1138
	tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1120, metadata !1043), !dbg !1139
	%11 = tail call i32 @unlink(i8* %10) #10, !dbg !1140
	%12 = icmp eq i32 %11, 0, !dbg !1142
	%13 = or i1 %12, %0, !dbg !1143
	br i1 %13, label %18, label %14, !dbg !1143
	%15 = tail call i32* @__errno_location() #5, !dbg !1144
	%16 = load i32, i32* %15, align 4, !dbg !1144, !tbaa !1070
	%17 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %10) #10, !dbg !1145
	tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %17) #10, !dbg !1147
	br label %18, !dbg !1149
	%19 = add i32 %9, 1, !dbg !1150
	tail call void @llvm.dbg.value(metadata i32 %19, i64 0, metadata !1119, metadata !1043), !dbg !1132
	tail call void @llvm.dbg.value(metadata i32 %19, i64 0, metadata !1119, metadata !1043), !dbg !1132
	%20 = load volatile i32, i32* @files_created, align 4, !dbg !1133, !tbaa !1070
	%21 = icmp ult i32 %19, %20, !dbg !1135
	br i1 %21, label %8, label %22, !dbg !1136, !llvm.loop !1152
	br label %23, !dbg !1155
	store volatile i32 0, i32* @files_created, align 4, !dbg !1155, !tbaa !1070
	br label %24, !dbg !1156
	ret void, !dbg !1157
}
declare void @llvm.lifetime.end(i64, i8* nocapture) #3
declare void @exit(i32) local_unnamed_addr #6
define internal fastcc i8* @make_filename(i32) unnamed_addr #4 !dbg !1159 {
	tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1163, metadata !1043), !dbg !1164
	%2 = load volatile i8*, i8** @filename_space, align 8, !dbg !1165, !tbaa !1032
	%3 = load volatile i8*, i8** @prefix, align 8, !dbg !1166, !tbaa !1032
	tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1167, metadata !1043) #10, !dbg !1176
	tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !1175, metadata !1043) #10, !dbg !1176
	%4 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %2, i1 false) #10, !dbg !1178
	%5 = tail call i8* @__strcpy_chk(i8* nonnull %2, i8* nonnull %3, i64 %4) #10, !dbg !1179
	%6 = load volatile i8*, i8** @suffix, align 8, !dbg !1180, !tbaa !1032
	%7 = icmp eq i8* %6, null, !dbg !1180
	%8 = load volatile i8*, i8** @filename_space, align 8, !tbaa !1032
	%9 = load volatile i8*, i8** @prefix, align 8, !tbaa !1032
	%10 = tail call i64 @strlen(i8* %9) #15, !dbg !1182
	%11 = getelementptr inbounds i8, i8* %8, i64 %10
	br i1 %7, label %15, label %12, !dbg !1183
	%13 = load volatile i8*, i8** @suffix, align 8, !dbg !1182, !tbaa !1032
	%14 = tail call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %11, i32 1, i64 -1, i8* %13, i32 %0) #10, !dbg !1184
	br label %18, !dbg !1182
	%16 = load volatile i32, i32* @digits, align 4, !dbg !1186, !tbaa !1070
	%17 = tail call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %11, i32 1, i64 -1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), i32 %16, i32 %0) #10, !dbg !1187
	br label %18
	%19 = load volatile i8*, i8** @filename_space, align 8, !dbg !1188, !tbaa !1032
	ret i8* %19, !dbg !1189
}
declare i32 @unlink(i8* nocapture readonly) local_unnamed_addr #1
declare i32* @__errno_location() local_unnamed_addr #7
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #5
declare i8* @__strcpy_chk(i8*, i8*, i64) local_unnamed_addr #1
declare i64 @strlen(i8* nocapture) local_unnamed_addr #8
declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) local_unnamed_addr #2
declare void @llvm.dbg.declare(metadata, metadata, metadata) #5
declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #2
define i32 @main(i32, i8**) local_unnamed_addr #4 !dbg !6 {
	%3 = alloca i64, align 8
	%4 = alloca i64, align 8
	%5 = alloca [21 x i8], align 16
	tail call void @llvm.dbg.declare(metadata [21 x i8]* %5, metadata !353, metadata !1043), !dbg !1190
	%6 = alloca %struct.sigaction, align 8
	tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !14, metadata !1043), !dbg !1192
	tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !15, metadata !1043), !dbg !1193
	%7 = load i8*, i8** %1, align 8, !dbg !1194, !tbaa !1032
	tail call void @set_program_name(i8* %7) #10, !dbg !1195
	%8 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)) #10, !dbg !1196
	%9 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0)) #10, !dbg !1197
	%10 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0)) #10, !dbg !1198
	%11 = tail call i32 @atexit(void ()* nonnull @close_stdout) #10, !dbg !1199
	store i8** %1, i8*** @global_argv, align 8, !dbg !1200, !tbaa !1032
	store %struct.control* null, %struct.control** @controls, align 8, !dbg !1201, !tbaa !1032
	store i64 0, i64* @control_used, align 8, !dbg !1202, !tbaa !1079
	store i1 false, i1* @suppress_count, align 1
	store volatile i8 1, i8* @remove_files, align 1, !dbg !1203, !tbaa !1128
	store i1 false, i1* @suppress_matched, align 1
	store volatile i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8** @prefix, align 8, !dbg !1204, !tbaa !1032
	br label %12, !dbg !1205
	%13 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), %struct.option* getelementptr inbounds ([11 x %struct.option], [11 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #10, !dbg !1206
	tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !16, metadata !1043), !dbg !1208
	switch i32 %13, label %32 [
		i32 -1, label %33
		i32 102, label %14
		i32 98, label %16
		i32 107, label %18
		i32 110, label %19
		i32 115, label %24
		i32 113, label %24
		i32 122, label %25
		i32 128, label %26
		i32 -130, label %28
		i32 -131, label %29
	], !dbg !1209
	%15 = load i64, i64* bitcast (i8** @optarg to i64*), align 8, !dbg !1210, !tbaa !1032
	store volatile i64 %15, i64* bitcast (i8** @prefix to i64*), align 8, !dbg !1212, !tbaa !1032
	br label %27, !dbg !1213
	%17 = load i64, i64* bitcast (i8** @optarg to i64*), align 8, !dbg !1214, !tbaa !1032
	store volatile i64 %17, i64* bitcast (i8** @suffix to i64*), align 8, !dbg !1215, !tbaa !1032
	br label %27, !dbg !1216
	store volatile i8 0, i8* @remove_files, align 1, !dbg !1217, !tbaa !1128
	br label %27, !dbg !1218
	%20 = load i8*, i8** @optarg, align 8, !dbg !1219, !tbaa !1032
	%21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i32 5) #10, !dbg !1220
	%22 = tail call i64 @xdectoimax(i8* %20, i64 0, i64 2147483647, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* %21, i32 0) #10, !dbg !1221
	%23 = trunc i64 %22 to i32, !dbg !1221
	store volatile i32 %23, i32* @digits, align 4, !dbg !1222, !tbaa !1070
	br label %27, !dbg !1223
	store i1 true, i1* @suppress_count, align 1
	br label %27, !dbg !1224
	store i1 true, i1* @elide_empty_files, align 1
	br label %27, !dbg !1225
	store i1 true, i1* @suppress_matched, align 1
	br label %27, !dbg !1226
	br label %12, !dbg !1206, !llvm.loop !1227
	tail call void @usage(i32 0) #13, !dbg !1229
	unreachable, !dbg !1229
	%30 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1230, !tbaa !1032
	%31 = load i8*, i8** @Version, align 8, !dbg !1230, !tbaa !1032
	tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* %31, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i8* null) #10, !dbg !1230
	tail call void @exit(i32 0) #14, !dbg !1231
	unreachable, !dbg !1230
	tail call void @usage(i32 1) #13, !dbg !1233
	unreachable, !dbg !1233
	%34 = load i32, i32* @optind, align 4, !dbg !1234, !tbaa !1070
	%35 = sub nsw i32 %0, %34, !dbg !1236
	%36 = icmp slt i32 %35, 2, !dbg !1237
	br i1 %36, label %37, label %49, !dbg !1238
	%38 = icmp slt i32 %34, %0, !dbg !1239
	br i1 %38, label %41, label %39, !dbg !1242
	%40 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), i32 5) #10, !dbg !1243
	tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %40) #10, !dbg !1244
	br label %48, !dbg !1246
	%42 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i64 0, i64 0), i32 5) #10, !dbg !1247
	%43 = add nsw i32 %0, -1, !dbg !1248
	%44 = sext i32 %43 to i64, !dbg !1249
	%45 = getelementptr inbounds i8*, i8** %1, i64 %44, !dbg !1249
	%46 = load i8*, i8** %45, align 8, !dbg !1249, !tbaa !1032
	%47 = tail call i8* @quote(i8* %46) #10, !dbg !1250
	tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %42, i8* %47) #10, !dbg !1251
	br label %48
	tail call void @usage(i32 1) #13, !dbg !1253
	unreachable, !dbg !1253
	%50 = load volatile i8*, i8** @prefix, align 8, !dbg !1254, !tbaa !1032
	%51 = tail call i64 @strlen(i8* %50) #15, !dbg !1255
	tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !17, metadata !1043), !dbg !1256
	%52 = load volatile i8*, i8** @suffix, align 8, !dbg !1257, !tbaa !1032
	%53 = icmp eq i8* %52, null, !dbg !1257
	br i1 %53, label %155, label %54, !dbg !1257
	%55 = load volatile i8*, i8** @suffix, align 8, !dbg !1258, !tbaa !1032
	tail call void @llvm.dbg.value(metadata i8* %55, i64 0, metadata !1259, metadata !1043) #10, !dbg !1272
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1264, metadata !1043) #10, !dbg !1274
	tail call void @llvm.dbg.value(metadata i8* %55, i64 0, metadata !1265, metadata !1043) #10, !dbg !1275
	br label %56, !dbg !1276
	%57 = phi i8* [ %55, %54 ], [ %146, %143 ]
	%58 = phi i8 [ 0, %54 ], [ %145, %143 ]
	tail call void @llvm.dbg.value(metadata i8 %58, i64 0, metadata !1264, metadata !1043) #10, !dbg !1274
	tail call void @llvm.dbg.value(metadata i8* %57, i64 0, metadata !1265, metadata !1043) #10, !dbg !1275
	%59 = load i8, i8* %57, align 1, !dbg !1277, !tbaa !1279
	switch i8 %59, label %143 [
		i8 0, label %60
		i8 37, label %63
	], !dbg !1280
	%61 = and i8 %58, 1, !dbg !1282
	%62 = icmp eq i8 %61, 0, !dbg !1282
	br i1 %62, label %147, label %149, !dbg !1284
	%64 = getelementptr inbounds i8, i8* %57, i64 1, !dbg !1285
	tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !1265, metadata !1043) #10, !dbg !1275
	%65 = load i8, i8* %64, align 1, !dbg !1287, !tbaa !1279
	%66 = icmp eq i8 %65, 37, !dbg !1288
	br i1 %66, label %143, label %67, !dbg !1289
	%68 = and i8 %58, 1, !dbg !1290
	%69 = icmp eq i8 %68, 0, !dbg !1290
	br i1 %69, label %70, label %71, !dbg !1292
	br label %73, !dbg !1293
	%72 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.38, i64 0, i64 0), i32 5) #10, !dbg !1304
	tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %72) #10, !dbg !1305
	unreachable, !dbg !1304
	%74 = phi i8 [ %91, %87 ], [ %65, %70 ], !dbg !1307
	%75 = phi i32 [ %88, %87 ], [ 0, %70 ]
	%76 = phi i64 [ %89, %87 ], [ 0, %70 ]
	tail call void @llvm.dbg.value(metadata i64 %76, i64 0, metadata !1302, metadata !1043) #10, !dbg !1293
	tail call void @llvm.dbg.value(metadata i32 %75, i64 0, metadata !1301, metadata !1043) #10, !dbg !1310
	%77 = sext i8 %74 to i32, !dbg !1307
	switch i32 %77, label %78 [
		i32 45, label %87
		i32 48, label %87
		i32 39, label %83
		i32 35, label %85
	], !dbg !1311
	%79 = getelementptr inbounds i8, i8* %64, i64 %76, !dbg !1307
	tail call void @llvm.dbg.value(metadata i8* %79, i64 0, metadata !1265, metadata !1043) #10, !dbg !1275
	%80 = add nsw i32 %77, -48, !dbg !1312
	%81 = icmp ult i32 %80, 10, !dbg !1312
	br i1 %81, label %82, label %100, !dbg !1314, !llvm.loop !1315
	br label %92, !dbg !1318
	%84 = or i32 %75, 1, !dbg !1319
	tail call void @llvm.dbg.value(metadata i32 %84, i64 0, metadata !1301, metadata !1043) #10, !dbg !1310
	br label %87, !dbg !1321
	%86 = or i32 %75, 2, !dbg !1322
	tail call void @llvm.dbg.value(metadata i32 %86, i64 0, metadata !1301, metadata !1043) #10, !dbg !1310
	br label %87, !dbg !1323
	%88 = phi i32 [ %86, %85 ], [ %84, %83 ], [ %75, %73 ], [ %75, %73 ]
	tail call void @llvm.dbg.value(metadata i32 %88, i64 0, metadata !1301, metadata !1043) #10, !dbg !1310
	%89 = add i64 %76, 1, !dbg !1324
	tail call void @llvm.dbg.value(metadata i64 %89, i64 0, metadata !1302, metadata !1043) #10, !dbg !1293
	%90 = getelementptr inbounds i8, i8* %64, i64 %89
	%91 = load i8, i8* %90, align 1, !tbaa !1279
	br label %73, !dbg !1326, !llvm.loop !1327
	%93 = phi i8* [ %94, %92 ], [ %79, %82 ]
	%94 = getelementptr inbounds i8, i8* %93, i64 1, !dbg !1318
	%95 = load i8, i8* %94, align 1, !tbaa !1279
	tail call void @llvm.dbg.value(metadata i8* %94, i64 0, metadata !1265, metadata !1043) #10, !dbg !1275
	%96 = sext i8 %95 to i32, !dbg !1312
	%97 = add nsw i32 %96, -48, !dbg !1312
	%98 = icmp ult i32 %97, 10, !dbg !1312
	br i1 %98, label %92, label %99, !dbg !1314, !llvm.loop !1315
	br label %100, !dbg !1330
	%101 = phi i8 [ %74, %78 ], [ %95, %99 ]
	%102 = phi i8* [ %79, %78 ], [ %94, %99 ]
	%103 = icmp eq i8 %101, 46, !dbg !1330
	br i1 %103, label %104, label %113, !dbg !1332
	br label %105, !dbg !1275
	%106 = phi i8* [ %107, %105 ], [ %102, %104 ]
	tail call void @llvm.dbg.value(metadata i8* %106, i64 0, metadata !1265, metadata !1043) #10, !dbg !1275
	%107 = getelementptr inbounds i8, i8* %106, i64 1, !dbg !1333
	tail call void @llvm.dbg.value(metadata i8* %107, i64 0, metadata !1265, metadata !1043) #10, !dbg !1275
	%108 = load i8, i8* %107, align 1, !dbg !1333, !tbaa !1279
	%109 = sext i8 %108 to i32, !dbg !1333
	%110 = add nsw i32 %109, -48, !dbg !1333
	%111 = icmp ult i32 %110, 10, !dbg !1333
	br i1 %111, label %105, label %112, !dbg !1335, !llvm.loop !1336
	br label %113, !dbg !1275
	%114 = phi i8 [ %101, %100 ], [ %108, %112 ], !dbg !1339
	%115 = phi i8* [ %102, %100 ], [ %107, %112 ]
	tail call void @llvm.dbg.value(metadata i8* %115, i64 0, metadata !1265, metadata !1043) #10, !dbg !1275
	tail call void @llvm.dbg.value(metadata i32 %75, i64 0, metadata !1267, metadata !1043) #10, !dbg !1349
	tail call void @llvm.dbg.value(metadata i8* %115, i64 0, metadata !1344, metadata !1043) #10, !dbg !1350
	tail call void @llvm.dbg.value(metadata i32 %75, i64 0, metadata !1345, metadata !1043) #10, !dbg !1351
	tail call void @llvm.dbg.value(metadata i8 %114, i64 0, metadata !1346, metadata !1043) #10, !dbg !1352
	tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1347, metadata !1043) #10, !dbg !1353
	switch i8 %114, label %120 [
		i8 100, label %116
		i8 105, label %116
		i8 117, label %133
		i8 111, label %117
		i8 120, label %117
		i8 88, label %117
		i8 0, label %118
	], !dbg !1354
	store i8 117, i8* %115, align 1, !dbg !1355, !tbaa !1279
	br label %133, !dbg !1357
	tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !1347, metadata !1043) #10, !dbg !1353
	br label %133, !dbg !1358
	%119 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.40, i64 0, i64 0), i32 5) #10, !dbg !1359
	tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %119) #10, !dbg !1360
	unreachable, !dbg !1359
	%121 = zext i8 %114 to i32, !dbg !1362
	%122 = tail call i16** @__ctype_b_loc() #5, !dbg !1363
	%123 = load i16*, i16** %122, align 8, !dbg !1363, !tbaa !1032
	%124 = zext i8 %114 to i64, !dbg !1363
	%125 = getelementptr inbounds i16, i16* %123, i64 %124, !dbg !1363
	%126 = load i16, i16* %125, align 2, !dbg !1363, !tbaa !1365
	%127 = and i16 %126, 16384, !dbg !1363
	%128 = icmp eq i16 %127, 0, !dbg !1363
	br i1 %128, label %131, label %129, !dbg !1366
	%130 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.41, i64 0, i64 0), i32 5) #10, !dbg !1367
	tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %130, i32 %121) #10, !dbg !1368
	unreachable, !dbg !1367
	%132 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.42, i64 0, i64 0), i32 5) #10, !dbg !1370
	tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %132, i32 %121) #10, !dbg !1371
	unreachable, !dbg !1370
	%134 = phi i32 [ -3, %117 ], [ -2, %113 ], [ -2, %116 ]
	%135 = and i32 %134, %75, !dbg !1372
	%136 = icmp eq i32 %135, 0, !dbg !1372
	br i1 %136, label %143, label %137, !dbg !1374
	%138 = zext i8 %114 to i32, !dbg !1362
	%139 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.43, i64 0, i64 0), i32 5) #10, !dbg !1375
	%140 = shl i32 %135, 1, !dbg !1375
	%141 = and i32 %140, 4, !dbg !1375
	%142 = xor i32 %141, 39, !dbg !1375
	tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %139, i32 %142, i32 %138) #10, !dbg !1376
	unreachable, !dbg !1375
	%144 = phi i8* [ %64, %63 ], [ %57, %56 ], [ %115, %133 ]
	%145 = phi i8 [ %58, %63 ], [ %58, %56 ], [ 1, %133 ]
	tail call void @llvm.dbg.value(metadata i8 %145, i64 0, metadata !1264, metadata !1043) #10, !dbg !1274
	tail call void @llvm.dbg.value(metadata i8* %144, i64 0, metadata !1265, metadata !1043) #10, !dbg !1275
	%146 = getelementptr inbounds i8, i8* %144, i64 1, !dbg !1378
	tail call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !1265, metadata !1043) #10, !dbg !1275
	br label %56, !dbg !1380, !llvm.loop !1381
	%148 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.39, i64 0, i64 0), i32 5) #10, !dbg !1384
	tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %148) #10, !dbg !1385
	unreachable, !dbg !1384
	%150 = tail call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* null, i64 0, i32 1, i64 0, i8* %55, i32 -1) #10, !dbg !1387
	tail call void @llvm.dbg.value(metadata i32 %150, i64 0, metadata !1271, metadata !1043) #10, !dbg !1388
	%151 = icmp sgt i32 %150, -1, !dbg !1389
	br i1 %151, label %153, label %152, !dbg !1391
	tail call void @xalloc_die() #14, !dbg !1392
	unreachable, !dbg !1392
	%154 = sext i32 %150 to i64, !dbg !1393
	br label %161, !dbg !1395
	%156 = load volatile i32, i32* @digits, align 4, !dbg !1396, !tbaa !1070
	%157 = icmp ult i32 %156, 10, !dbg !1396
	br i1 %157, label %161, label %158, !dbg !1396
	%159 = load volatile i32, i32* @digits, align 4, !dbg !1397, !tbaa !1070
	%160 = sext i32 %159 to i64, !dbg !1397
	br label %161, !dbg !1397
	%162 = phi i64 [ %154, %153 ], [ %160, %158 ], [ 10, %155 ], !dbg !1399
	tail call void @llvm.dbg.value(metadata i64 %162, i64 0, metadata !21, metadata !1043), !dbg !1401
	%163 = sub i64 -2, %51, !dbg !1402
	%164 = icmp ult i64 %163, %162, !dbg !1404
	br i1 %164, label %165, label %166, !dbg !1405
	tail call void @xalloc_die() #13, !dbg !1406
	unreachable, !dbg !1406
	%167 = add i64 %51, 1, !dbg !1407
	%168 = add i64 %167, %162, !dbg !1408
	%169 = tail call noalias i8* @xmalloc(i64 %168) #10, !dbg !1409
	store volatile i8* %169, i8** @filename_space, align 8, !dbg !1410, !tbaa !1032
	%170 = load i32, i32* @optind, align 4, !dbg !1411, !tbaa !1070
	%171 = add nsw i32 %170, 1, !dbg !1411
	store i32 %171, i32* @optind, align 4, !dbg !1411, !tbaa !1070
	%172 = sext i32 %170 to i64, !dbg !1412
	%173 = getelementptr inbounds i8*, i8** %1, i64 %172, !dbg !1412
	%174 = load i8*, i8** %173, align 8, !dbg !1412, !tbaa !1032
	tail call void @llvm.dbg.value(metadata i8* %174, i64 0, metadata !1413, metadata !1043) #10, !dbg !1423
	tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1419, metadata !1043) #10, !dbg !1425
	tail call void @llvm.dbg.value(metadata i8* %174, i64 0, metadata !1420, metadata !1043) #10, !dbg !1426
	%175 = load i8, i8* %174, align 1, !dbg !1427, !tbaa !1279
	%176 = icmp eq i8 %175, 45, !dbg !1429
	br i1 %176, label %177, label %181, !dbg !1432
	%178 = getelementptr inbounds i8, i8* %174, i64 1, !dbg !1434
	%179 = load i8, i8* %178, align 1, !dbg !1434, !tbaa !1279
	%180 = icmp eq i8 %179, 0, !dbg !1437
	br i1 %180, label %191, label %181, !dbg !1439
	%182 = tail call i32 @fd_reopen(i32 0, i8* nonnull %174, i32 0, i32 0) #10, !dbg !1441
	%183 = icmp slt i32 %182, 0, !dbg !1443
	br i1 %183, label %186, label %184, !dbg !1444
	%185 = load i32, i32* @optind, align 4, !tbaa !1070
	br label %191, !dbg !1444
	%187 = tail call i32* @__errno_location() #5, !dbg !1446
	%188 = load i32, i32* %187, align 4, !dbg !1446, !tbaa !1070
	%189 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.45, i64 0, i64 0), i32 5) #10, !dbg !1447
	%190 = tail call i8* @quotearg_style(i32 4, i8* nonnull %174) #10, !dbg !1449
	tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %188, i8* %189, i8* %190) #10, !dbg !1451
	unreachable, !dbg !1446
	%192 = phi i32 [ %185, %184 ], [ %171, %177 ], !dbg !1453
	tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !347, metadata !1043) #10, !dbg !1454
	tail call void @llvm.dbg.value(metadata i32 %192, i64 0, metadata !348, metadata !1043) #10, !dbg !1455
	tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !349, metadata !1043) #10, !dbg !1456
	%193 = bitcast i64* %4 to i8*, !dbg !1457
	call void @llvm.lifetime.start(i64 8, i8* nonnull %193) #10, !dbg !1457
	tail call void @llvm.dbg.value(metadata i32 %192, i64 0, metadata !350, metadata !1043) #10, !dbg !1458
	tail call void @llvm.dbg.value(metadata i32 %192, i64 0, metadata !350, metadata !1043) #10, !dbg !1458
	%194 = icmp slt i32 %192, %0, !dbg !1459
	br i1 %194, label %195, label %384, !dbg !1461
	%196 = bitcast i64* %3 to i8*
	br label %197, !dbg !1461
	%198 = phi i32 [ %192, %195 ], [ %381, %379 ]
	%199 = sext i32 %198 to i64, !dbg !1463
	%200 = getelementptr inbounds i8*, i8** %1, i64 %199, !dbg !1463
	%201 = load i8*, i8** %200, align 8, !dbg !1463, !tbaa !1032
	%202 = load i8, i8* %201, align 1, !dbg !1464, !tbaa !1279
	switch i8 %202, label %272 [
		i8 47, label %203
		i8 37, label %203
	], !dbg !1465
	call void @llvm.dbg.value(metadata i32 %198, i64 0, metadata !1466, metadata !1043) #10, !dbg !1478
	call void @llvm.dbg.value(metadata i8* %201, i64 0, metadata !1472, metadata !1043) #10, !dbg !1481
	call void @llvm.dbg.value(metadata i8 %202, i64 0, metadata !1474, metadata !1043) #10, !dbg !1482
	%204 = getelementptr inbounds i8, i8* %201, i64 1, !dbg !1483
	%205 = sext i8 %202 to i32, !dbg !1484
	%206 = call i8* @strrchr(i8* %204, i32 %205) #15, !dbg !1485
	call void @llvm.dbg.value(metadata i8* %206, i64 0, metadata !1475, metadata !1043) #10, !dbg !1486
	%207 = icmp eq i8* %206, null, !dbg !1487
	br i1 %207, label %208, label %210, !dbg !1489
	%209 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.50, i64 0, i64 0), i32 5) #10, !dbg !1490
	call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %209, i8* nonnull %201, i32 %205) #10, !dbg !1491
	unreachable, !dbg !1490
	%211 = icmp eq i8 %202, 37, !dbg !1493
	%212 = zext i1 %211 to i8
	%213 = ptrtoint i8* %206 to i64, !dbg !1494
	%214 = ptrtoint i8* %201 to i64, !dbg !1494
	%215 = xor i64 %214, -1, !dbg !1494
	%216 = add i64 %213, %215, !dbg !1495
	call void @llvm.dbg.value(metadata i64 %216, i64 0, metadata !1473, metadata !1043) #10, !dbg !1496
	%217 = load i64, i64* @control_used, align 8, !dbg !1497, !tbaa !1079
	%218 = load i64, i64* @new_control_record.control_allocated, align 8, !dbg !1500, !tbaa !1079
	%219 = icmp eq i64 %217, %218, !dbg !1501
	br i1 %219, label %222, label %220, !dbg !1502
	%221 = load %struct.control*, %struct.control** @controls, align 8, !tbaa !1032
	br label %241, !dbg !1502
	%223 = load i8*, i8** bitcast (%struct.control** @controls to i8**), align 8, !dbg !1503, !tbaa !1032
	call void @llvm.dbg.value(metadata i8* %223, i64 0, metadata !180, metadata !1043) #10, !dbg !1504
	call void @llvm.dbg.value(metadata i64* @new_control_record.control_allocated, i64 0, metadata !181, metadata !1043) #10, !dbg !1506
	call void @llvm.dbg.value(metadata i64 96, i64 0, metadata !182, metadata !1043) #10, !dbg !1507
	call void @llvm.dbg.value(metadata i64 %218, i64 0, metadata !183, metadata !1043) #10, !dbg !1508
	%224 = icmp eq i8* %223, null, !dbg !1509
	br i1 %224, label %225, label %228, !dbg !1511
	%226 = icmp eq i64 %217, 0, !dbg !1512
	call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !183, metadata !1043) #10, !dbg !1508
	call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !183, metadata !1043) #10, !dbg !1508
	%227 = select i1 %226, i64 1, i64 %217, !dbg !1515
	br label %235, !dbg !1515
	%229 = icmp ult i64 %217, 64051194700380387, !dbg !1516
	br i1 %229, label %231, label %230, !dbg !1519
	call void @xalloc_die() #14, !dbg !1520
	unreachable, !dbg !1520
	%232 = lshr i64 %217, 1, !dbg !1521
	%233 = add i64 %217, 1, !dbg !1522
	%234 = add i64 %233, %232, !dbg !1523
	call void @llvm.dbg.value(metadata i64 %234, i64 0, metadata !183, metadata !1043) #10, !dbg !1508
	br label %235
	%236 = phi i64 [ %234, %231 ], [ %227, %225 ]
	call void @llvm.dbg.value(metadata i64 %236, i64 0, metadata !183, metadata !1043) #10, !dbg !1508
	store i64 %236, i64* @new_control_record.control_allocated, align 8, !dbg !1524, !tbaa !1079
	%237 = mul i64 %236, 96, !dbg !1525
	%238 = call i8* @xrealloc(i8* %223, i64 %237) #10, !dbg !1526
	store i8* %238, i8** bitcast (%struct.control** @controls to i8**), align 8, !dbg !1527, !tbaa !1032
	%239 = bitcast i8* %238 to %struct.control*, !dbg !1528
	%240 = load i64, i64* @control_used, align 8, !tbaa !1079
	br label %241, !dbg !1528
	%242 = phi i64 [ %217, %220 ], [ %240, %235 ], !dbg !1529
	%243 = phi %struct.control* [ %221, %220 ], [ %239, %235 ], !dbg !1530
	%244 = add i64 %242, 1, !dbg !1529
	store i64 %244, i64* @control_used, align 8, !dbg !1529, !tbaa !1079
	%245 = getelementptr inbounds %struct.control, %struct.control* %243, i64 %242, !dbg !1530
	call void @llvm.dbg.value(metadata %struct.control* %245, i64 0, metadata !370, metadata !1043) #10, !dbg !1531
	%246 = getelementptr inbounds %struct.control, %struct.control* %243, i64 %242, i32 6, !dbg !1532
	%247 = getelementptr inbounds %struct.control, %struct.control* %243, i64 %242, i32 4, !dbg !1533
	store i8 0, i8* %247, align 4, !dbg !1534, !tbaa !1535
	%248 = bitcast %struct.control* %245 to i8*, !dbg !1538
	call void @llvm.memset.p0i8.i64(i8* %248, i8 0, i64 24, i32 8, i1 false) #10, !dbg !1539
	call void @llvm.dbg.value(metadata %struct.control* %245, i64 0, metadata !1476, metadata !1043) #10, !dbg !1540
	%249 = getelementptr inbounds %struct.control, %struct.control* %243, i64 %242, i32 3, !dbg !1541
	store i32 %198, i32* %249, align 8, !dbg !1542, !tbaa !1543
	%250 = getelementptr inbounds %struct.control, %struct.control* %243, i64 %242, i32 5, !dbg !1544
	store i8 %212, i8* %250, align 1, !dbg !1545, !tbaa !1546
	store i8 1, i8* %246, align 2, !dbg !1547, !tbaa !1548
	%251 = getelementptr inbounds %struct.control, %struct.control* %243, i64 %242, i32 7, !dbg !1549
	%252 = bitcast %struct.re_pattern_buffer* %251 to i8*, !dbg !1550
	call void @llvm.memset.p0i8.i64(i8* %252, i8 0, i64 16, i32 8, i1 false) #10, !dbg !1551
	%253 = call noalias i8* @xmalloc(i64 256) #10, !dbg !1550
	%254 = getelementptr inbounds %struct.control, %struct.control* %243, i64 %242, i32 7, i32 4, !dbg !1552
	store i8* %253, i8** %254, align 8, !dbg !1553, !tbaa !1554
	%255 = getelementptr inbounds %struct.control, %struct.control* %243, i64 %242, i32 7, i32 5, !dbg !1555
	store i8* null, i8** %255, align 8, !dbg !1556, !tbaa !1557
	store i64 710, i64* @re_syntax_options, align 8, !dbg !1558, !tbaa !1079
	%256 = call i8* @re_compile_pattern(i8* %204, i64 %216, %struct.re_pattern_buffer* %251) #10, !dbg !1559
	call void @llvm.dbg.value(metadata i8* %256, i64 0, metadata !1477, metadata !1043) #10, !dbg !1560
	%257 = icmp eq i8* %256, null, !dbg !1561
	br i1 %257, label %261, label %258, !dbg !1563
	%259 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.51, i64 0, i64 0), i32 5) #10, !dbg !1564
	%260 = call i8* @quote(i8* nonnull %201) #10, !dbg !1566
	call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %259, i8* %260, i8* nonnull %256) #10, !dbg !1568
	call fastcc void @cleanup_fatal() #14, !dbg !1570
	unreachable, !dbg !1570
	%262 = getelementptr inbounds i8, i8* %206, i64 1, !dbg !1571
	%263 = load i8, i8* %262, align 1, !dbg !1571, !tbaa !1279
	%264 = icmp eq i8 %263, 0, !dbg !1571
	br i1 %264, label %339, label %265, !dbg !1573
	call void @llvm.dbg.value(metadata %struct.control* %245, i64 0, metadata !1574, metadata !1043) #10, !dbg !1581
	call void @llvm.dbg.value(metadata i8* %201, i64 0, metadata !1579, metadata !1043) #10, !dbg !1583
	call void @llvm.dbg.value(metadata i8* %262, i64 0, metadata !1580, metadata !1043) #10, !dbg !1584
	%266 = getelementptr inbounds %struct.control, %struct.control* %245, i64 0, i32 0, !dbg !1585
	%267 = call i32 @xstrtoimax(i8* %262, i8** null, i32 10, i64* %266, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)) #10, !dbg !1587
	%268 = icmp eq i32 %267, 0, !dbg !1588
	br i1 %268, label %339, label %269, !dbg !1589
	%270 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.52, i64 0, i64 0), i32 5) #10, !dbg !1590
	%271 = call i8* @quote(i8* nonnull %201) #10, !dbg !1591
	call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %270, i8* %271) #10, !dbg !1593
	unreachable, !dbg !1590
	%273 = load i64, i64* @control_used, align 8, !dbg !1595, !tbaa !1079
	%274 = load i64, i64* @new_control_record.control_allocated, align 8, !dbg !1597, !tbaa !1079
	%275 = icmp eq i64 %273, %274, !dbg !1598
	br i1 %275, label %278, label %276, !dbg !1599
	%277 = load %struct.control*, %struct.control** @controls, align 8, !tbaa !1032
	br label %297, !dbg !1599
	%279 = load i8*, i8** bitcast (%struct.control** @controls to i8**), align 8, !dbg !1600, !tbaa !1032
	call void @llvm.dbg.value(metadata i8* %279, i64 0, metadata !180, metadata !1043) #10, !dbg !1601
	call void @llvm.dbg.value(metadata i64* @new_control_record.control_allocated, i64 0, metadata !181, metadata !1043) #10, !dbg !1603
	call void @llvm.dbg.value(metadata i64 96, i64 0, metadata !182, metadata !1043) #10, !dbg !1604
	call void @llvm.dbg.value(metadata i64 %274, i64 0, metadata !183, metadata !1043) #10, !dbg !1605
	%280 = icmp eq i8* %279, null, !dbg !1606
	br i1 %280, label %281, label %284, !dbg !1607
	%282 = icmp eq i64 %273, 0, !dbg !1608
	call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !183, metadata !1043) #10, !dbg !1605
	call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !183, metadata !1043) #10, !dbg !1605
	%283 = select i1 %282, i64 1, i64 %273, !dbg !1609
	br label %291, !dbg !1609
	%285 = icmp ult i64 %273, 64051194700380387, !dbg !1610
	br i1 %285, label %287, label %286, !dbg !1611
	call void @xalloc_die() #14, !dbg !1612
	unreachable, !dbg !1612
	%288 = lshr i64 %273, 1, !dbg !1613
	%289 = add i64 %273, 1, !dbg !1614
	%290 = add i64 %289, %288, !dbg !1615
	call void @llvm.dbg.value(metadata i64 %290, i64 0, metadata !183, metadata !1043) #10, !dbg !1605
	br label %291
	%292 = phi i64 [ %290, %287 ], [ %283, %281 ]
	call void @llvm.dbg.value(metadata i64 %292, i64 0, metadata !183, metadata !1043) #10, !dbg !1605
	store i64 %292, i64* @new_control_record.control_allocated, align 8, !dbg !1616, !tbaa !1079
	%293 = mul i64 %292, 96, !dbg !1617
	%294 = call i8* @xrealloc(i8* %279, i64 %293) #10, !dbg !1618
	store i8* %294, i8** bitcast (%struct.control** @controls to i8**), align 8, !dbg !1619, !tbaa !1032
	%295 = bitcast i8* %294 to %struct.control*, !dbg !1620
	%296 = load i64, i64* @control_used, align 8, !tbaa !1079
	br label %297, !dbg !1620
	%298 = phi i64 [ %273, %276 ], [ %296, %291 ], !dbg !1621
	%299 = phi %struct.control* [ %277, %276 ], [ %295, %291 ], !dbg !1622
	%300 = add i64 %298, 1, !dbg !1621
	store i64 %300, i64* @control_used, align 8, !dbg !1621, !tbaa !1079
	%301 = getelementptr inbounds %struct.control, %struct.control* %299, i64 %298, !dbg !1622
	call void @llvm.dbg.value(metadata %struct.control* %301, i64 0, metadata !370, metadata !1043) #10, !dbg !1623
	%302 = getelementptr inbounds %struct.control, %struct.control* %299, i64 %298, i32 6, !dbg !1624
	store i8 0, i8* %302, align 2, !dbg !1625, !tbaa !1548
	%303 = getelementptr inbounds %struct.control, %struct.control* %299, i64 %298, i32 4, !dbg !1626
	store i8 0, i8* %303, align 4, !dbg !1627, !tbaa !1535
	%304 = bitcast %struct.control* %301 to i8*, !dbg !1628
	call void @llvm.memset.p0i8.i64(i8* %304, i8 0, i64 24, i32 8, i1 false) #10, !dbg !1629
	call void @llvm.dbg.value(metadata %struct.control* %301, i64 0, metadata !351, metadata !1043) #10, !dbg !1630
	%305 = getelementptr inbounds %struct.control, %struct.control* %299, i64 %298, i32 3, !dbg !1631
	store i32 %198, i32* %305, align 8, !dbg !1632, !tbaa !1543
	%306 = load i8*, i8** %200, align 8, !dbg !1633, !tbaa !1032
	call void @llvm.dbg.value(metadata i64* %4, i64 0, metadata !352, metadata !1011) #10, !dbg !1635
	%307 = call i32 @xstrtoumax(i8* %306, i8** null, i32 10, i64* nonnull %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)) #10, !dbg !1636
	%308 = icmp eq i32 %307, 0, !dbg !1637
	br i1 %308, label %313, label %309, !dbg !1638
	%310 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.46, i64 0, i64 0), i32 5) #10, !dbg !1639
	%311 = load i8*, i8** %200, align 8, !dbg !1639, !tbaa !1032
	%312 = call i8* @quote(i8* %311) #10, !dbg !1640
	call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %310, i8* %312) #10, !dbg !1642
	unreachable, !dbg !1639
	%314 = load i64, i64* %4, align 8, !dbg !1644, !tbaa !1079
	call void @llvm.dbg.value(metadata i64 %314, i64 0, metadata !352, metadata !1043) #10, !dbg !1635
	%315 = icmp eq i64 %314, 0, !dbg !1646
	br i1 %315, label %316, label %319, !dbg !1647
	%317 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.47, i64 0, i64 0), i32 5) #10, !dbg !1648
	%318 = load i8*, i8** %200, align 8, !dbg !1648, !tbaa !1032
	call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %317, i8* %318) #10, !dbg !1649
	unreachable, !dbg !1648
	%320 = load i64, i64* @parse_patterns.last_val, align 8, !dbg !1651, !tbaa !1079
	%321 = icmp ult i64 %314, %320, !dbg !1652
	br i1 %321, label %322, label %329, !dbg !1653
	%323 = getelementptr inbounds [21 x i8], [21 x i8]* %5, i64 0, i64 0, !dbg !1654
	call void @llvm.lifetime.start(i64 21, i8* nonnull %323) #10, !dbg !1654
	%324 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.48, i64 0, i64 0), i32 5) #10, !dbg !1655
	%325 = load i8*, i8** %200, align 8, !dbg !1655, !tbaa !1032
	%326 = call i8* @quote(i8* %325) #10, !dbg !1656
	%327 = load i64, i64* @parse_patterns.last_val, align 8, !dbg !1655, !tbaa !1079
	%328 = call i8* @umaxtostr(i64 %327, i8* nonnull %323) #10, !dbg !1658
	call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %324, i8* %326, i8* %328) #10, !dbg !1660
	unreachable, !dbg !1655
	%330 = icmp eq i64 %314, %320, !dbg !1662
	br i1 %330, label %331, label %336, !dbg !1664
	%332 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.49, i64 0, i64 0), i32 5) #10, !dbg !1665
	%333 = load i8*, i8** %200, align 8, !dbg !1666, !tbaa !1032
	%334 = call i8* @quote(i8* %333) #10, !dbg !1667
	call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %332, i8* %334) #10, !dbg !1668
	%335 = load i64, i64* %4, align 8, !tbaa !1079
	br label %336, !dbg !1668
	%337 = phi i64 [ %335, %331 ], [ %314, %329 ], !dbg !1669
	call void @llvm.dbg.value(metadata i64 %337, i64 0, metadata !352, metadata !1043) #10, !dbg !1635
	store i64 %337, i64* @parse_patterns.last_val, align 8, !dbg !1670, !tbaa !1079
	call void @llvm.dbg.value(metadata i64 %337, i64 0, metadata !352, metadata !1043) #10, !dbg !1635
	%338 = getelementptr inbounds %struct.control, %struct.control* %299, i64 %298, i32 1, !dbg !1671
	store i64 %337, i64* %338, align 8, !dbg !1672, !tbaa !1673
	br label %339
	%340 = phi %struct.control* [ %301, %336 ], [ %245, %261 ], [ %245, %265 ]
	call void @llvm.dbg.value(metadata %struct.control* %340, i64 0, metadata !351, metadata !1043) #10, !dbg !1630
	%341 = add nsw i32 %198, 1, !dbg !1674
	%342 = icmp slt i32 %341, %0, !dbg !1676
	br i1 %342, label %343, label %379, !dbg !1677
	%344 = sext i32 %341 to i64, !dbg !1678
	%345 = getelementptr inbounds i8*, i8** %1, i64 %344, !dbg !1678
	%346 = load i8*, i8** %345, align 8, !dbg !1678, !tbaa !1032
	%347 = load i8, i8* %346, align 1, !dbg !1680, !tbaa !1279
	%348 = icmp eq i8 %347, 123, !dbg !1681
	br i1 %348, label %349, label %379, !dbg !1682
	call void @llvm.dbg.value(metadata i32 %341, i64 0, metadata !350, metadata !1043) #10, !dbg !1458
	call void @llvm.dbg.value(metadata i32 %341, i64 0, metadata !1684, metadata !1043) #10, !dbg !1693
	call void @llvm.dbg.value(metadata %struct.control* %340, i64 0, metadata !1689, metadata !1043) #10, !dbg !1696
	call void @llvm.dbg.value(metadata i8* %346, i64 0, metadata !1690, metadata !1043) #10, !dbg !1697
	call void @llvm.lifetime.start(i64 8, i8* nonnull %196) #10, !dbg !1698
	%350 = call i64 @strlen(i8* %346) #15, !dbg !1699
	%351 = add nsw i64 %350, -1, !dbg !1700
	%352 = getelementptr inbounds i8, i8* %346, i64 %351, !dbg !1701
	call void @llvm.dbg.value(metadata i8* %352, i64 0, metadata !1692, metadata !1043) #10, !dbg !1701
	%353 = load i8, i8* %352, align 1, !dbg !1702, !tbaa !1279
	%354 = icmp eq i8 %353, 125, !dbg !1704
	br i1 %354, label %358, label %355, !dbg !1705
	%356 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.53, i64 0, i64 0), i32 5) #10, !dbg !1706
	%357 = call i8* @quote(i8* nonnull %346) #10, !dbg !1707
	call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %356, i8* %357) #10, !dbg !1709
	unreachable, !dbg !1706
	store i8 0, i8* %352, align 1, !dbg !1711, !tbaa !1279
	%359 = getelementptr inbounds i8, i8* %346, i64 1, !dbg !1712
	%360 = icmp eq i64 %350, 3, !dbg !1714
	br i1 %360, label %361, label %366, !dbg !1715
	%362 = load i8, i8* %359, align 1, !dbg !1716, !tbaa !1279
	%363 = icmp eq i8 %362, 42, !dbg !1718
	br i1 %363, label %364, label %366, !dbg !1719
	%365 = getelementptr inbounds %struct.control, %struct.control* %340, i64 0, i32 4, !dbg !1721
	store i8 1, i8* %365, align 4, !dbg !1722, !tbaa !1535
	br label %378, !dbg !1723
	call void @llvm.dbg.value(metadata i64* %3, i64 0, metadata !1691, metadata !1011) #10, !dbg !1724
	%367 = call i32 @xstrtoumax(i8* %359, i8** null, i32 10, i64* nonnull %3, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)) #10, !dbg !1725
	%368 = icmp eq i32 %367, 0, !dbg !1728
	br i1 %368, label %375, label %369, !dbg !1729
	%370 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.54, i64 0, i64 0), i32 5) #10, !dbg !1730
	%371 = load i8**, i8*** @global_argv, align 8, !dbg !1730, !tbaa !1032
	%372 = getelementptr inbounds i8*, i8** %371, i64 %344, !dbg !1730
	%373 = load i8*, i8** %372, align 8, !dbg !1730, !tbaa !1032
	%374 = call i8* @quote(i8* %373) #10, !dbg !1732
	call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %370, i8* %374) #10, !dbg !1734
	unreachable, !dbg !1730
	%376 = load i64, i64* %3, align 8, !dbg !1736, !tbaa !1079
	call void @llvm.dbg.value(metadata i64 %376, i64 0, metadata !1691, metadata !1043) #10, !dbg !1724
	%377 = getelementptr inbounds %struct.control, %struct.control* %340, i64 0, i32 2, !dbg !1737
	store i64 %376, i64* %377, align 8, !dbg !1738, !tbaa !1739
	br label %378
	store i8 125, i8* %352, align 1, !dbg !1740, !tbaa !1279
	call void @llvm.lifetime.end(i64 8, i8* nonnull %196) #10, !dbg !1741
	br label %379, !dbg !1742
	%380 = phi i32 [ %341, %378 ], [ %198, %343 ], [ %198, %339 ]
	call void @llvm.dbg.value(metadata i32 %380, i64 0, metadata !350, metadata !1043) #10, !dbg !1458
	%381 = add nsw i32 %380, 1, !dbg !1743
	call void @llvm.dbg.value(metadata i32 %381, i64 0, metadata !350, metadata !1043) #10, !dbg !1458
	call void @llvm.dbg.value(metadata i32 %381, i64 0, metadata !350, metadata !1043) #10, !dbg !1458
	%382 = icmp slt i32 %381, %0, !dbg !1459
	br i1 %382, label %197, label %383, !dbg !1461, !llvm.loop !1745
	br label %384, !dbg !1748
	call void @llvm.lifetime.end(i64 8, i8* nonnull %193) #10, !dbg !1748
	%385 = bitcast %struct.sigaction* %6 to i8*, !dbg !1749
	call void @llvm.lifetime.start(i64 152, i8* nonnull %385) #10, !dbg !1749
	%386 = call i32 @sigemptyset(%struct.__sigset_t* nonnull @caught_signals) #10, !dbg !1750
	call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !22, metadata !1043), !dbg !1751
	call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !22, metadata !1043), !dbg !1751
	%387 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %6, i64 0, i32 0, i32 0
	br label %388, !dbg !1752
	%389 = phi i64 [ 0, %384 ], [ %398, %397 ]
	%390 = getelementptr inbounds [11 x i32], [11 x i32]* @main.sig, i64 0, i64 %389, !dbg !1755
	%391 = load i32, i32* %390, align 4, !dbg !1755, !tbaa !1070
	call void @llvm.dbg.value(metadata %struct.sigaction* %6, i64 0, metadata !24, metadata !1011), !dbg !1758
	%392 = call i32 @sigaction(i32 %391, %struct.sigaction* null, %struct.sigaction* nonnull %6) #10, !dbg !1759
	%393 = load void (i32)*, void (i32)** %387, align 8, !dbg !1760, !tbaa !1032
	%394 = icmp eq void (i32)* %393, inttoptr (i64 1 to void (i32)*), !dbg !1762
	br i1 %394, label %397, label %395, !dbg !1763
	%396 = call i32 @sigaddset(%struct.__sigset_t* nonnull @caught_signals, i32 %391) #10, !dbg !1764
	br label %397, !dbg !1764
	%398 = add nuw nsw i64 %389, 1, !dbg !1765
	%399 = icmp eq i64 %398, 11, !dbg !1767
	br i1 %399, label %400, label %388, !dbg !1752, !llvm.loop !1769
	store void (i32)* @interrupt_handler, void (i32)** %387, align 8, !dbg !1772, !tbaa !1032
	%401 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %6, i64 0, i32 1, !dbg !1773
	%402 = bitcast %struct.__sigset_t* %401 to i8*, !dbg !1774
	call void @llvm.memcpy.p0i8.p0i8.i64(i8* %402, i8* bitcast (%struct.__sigset_t* @caught_signals to i8*), i64 128, i32 8, i1 false), !dbg !1774, !tbaa.struct !1775
	%403 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %6, i64 0, i32 2, !dbg !1776
	store i32 0, i32* %403, align 8, !dbg !1777, !tbaa !1778
	call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !22, metadata !1043), !dbg !1751
	call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !22, metadata !1043), !dbg !1751
	br label %404, !dbg !1781
	%405 = call i32 @sigismember(%struct.__sigset_t* nonnull @caught_signals, i32 14) #10, !dbg !1784
	%406 = icmp eq i32 %405, 0, !dbg !1784
	br i1 %406, label %409, label %407, !dbg !1787
	call void @llvm.dbg.value(metadata %struct.sigaction* %6, i64 0, metadata !24, metadata !1011), !dbg !1758
	%408 = call i32 @sigaction(i32 14, %struct.sigaction* nonnull %6, %struct.sigaction* null) #10, !dbg !1788
	br label %409, !dbg !1788
	%410 = call i32 @sigismember(%struct.__sigset_t* nonnull @caught_signals, i32 1) #10, !dbg !1784
	%411 = icmp eq i32 %410, 0, !dbg !1784
	br i1 %411, label %686, label %684, !dbg !1787
	%413 = load %struct.control*, %struct.control** @controls, align 8, !tbaa !1032
	br label %414, !dbg !1789
	%415 = phi %struct.control* [ %662, %661 ], [ %413, %412 ], !dbg !1789
	%416 = phi i64 [ %663, %661 ], [ 0, %412 ]
	%417 = getelementptr inbounds %struct.control, %struct.control* %415, i64 %416, i32 6, !dbg !1799
	%418 = load i8, i8* %417, align 2, !dbg !1799, !tbaa !1548, !range !1130
	%419 = icmp eq i8 %418, 0, !dbg !1799
	call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1797, metadata !1043) #10, !dbg !1800
	br i1 %419, label %421, label %420, !dbg !1801
	br label %422, !dbg !1800
	br label %594, !dbg !1800
	%423 = phi %struct.control* [ %593, %591 ], [ %415, %420 ], !dbg !1802
	%424 = phi i64 [ %592, %591 ], [ 0, %420 ]
	call void @llvm.dbg.value(metadata i64 %424, i64 0, metadata !1797, metadata !1043) #10, !dbg !1800
	%425 = getelementptr inbounds %struct.control, %struct.control* %423, i64 %416, i32 4, !dbg !1806
	%426 = load i8, i8* %425, align 4, !dbg !1806, !tbaa !1535, !range !1130
	%427 = icmp eq i8 %426, 0, !dbg !1806
	br i1 %427, label %428, label %432, !dbg !1808
	%429 = getelementptr inbounds %struct.control, %struct.control* %423, i64 %416, i32 2, !dbg !1809
	%430 = load i64, i64* %429, align 8, !dbg !1809, !tbaa !1739
	%431 = icmp ugt i64 %424, %430, !dbg !1810
	br i1 %431, label %660, label %432, !dbg !1811
	%433 = getelementptr inbounds %struct.control, %struct.control* %423, i64 %416, !dbg !1802
	call void @llvm.dbg.value(metadata %struct.control* %433, i64 0, metadata !1813, metadata !1043) #10, !dbg !1825
	call void @llvm.dbg.value(metadata i64 %424, i64 0, metadata !1818, metadata !1043) #10, !dbg !1827
	%434 = getelementptr inbounds %struct.control, %struct.control* %423, i64 %416, i32 5, !dbg !1828
	%435 = load i8, i8* %434, align 1, !dbg !1828, !tbaa !1546, !range !1130
	%436 = icmp ne i8 %435, 0, !dbg !1828
	br i1 %436, label %438, label %437, !dbg !1829
	call fastcc void @create_output_file() #10, !dbg !1830
	br label %438, !dbg !1830
	%439 = load i1, i1* @suppress_matched, align 1
	%440 = load i64, i64* @current_line, align 8, !dbg !1832
	%441 = icmp ne i64 %440, 0, !dbg !1835
	%442 = and i1 %439, %441, !dbg !1836
	br i1 %442, label %443, label %445, !dbg !1836
	%444 = call fastcc %struct.cstring* @remove_line() #10, !dbg !1837
	br label %445, !dbg !1837
	%446 = getelementptr inbounds %struct.control, %struct.control* %433, i64 0, i32 0, !dbg !1838
	%447 = load i64, i64* %446, align 8, !dbg !1838, !tbaa !1840
	%448 = icmp sgt i64 %447, -1, !dbg !1841
	br i1 %448, label %451, label %449, !dbg !1842
	%450 = getelementptr inbounds %struct.control, %struct.control* %423, i64 %416, i32 7
	br label %499, !dbg !1843
	%452 = load i64, i64* @current_line, align 8, !dbg !1846, !tbaa !1079
	%453 = add i64 %452, 1, !dbg !1846
	store i64 %453, i64* @current_line, align 8, !dbg !1846, !tbaa !1079
	%454 = call fastcc %struct.cstring* @find_line(i64 %453) #10, !dbg !1849
	call void @llvm.dbg.value(metadata %struct.cstring* %454, i64 0, metadata !1819, metadata !1043) #10, !dbg !1850
	%455 = icmp eq %struct.cstring* %454, null, !dbg !1851
	br i1 %455, label %459, label %456, !dbg !1853
	%457 = getelementptr inbounds %struct.control, %struct.control* %423, i64 %416, i32 7
	br label %476, !dbg !1853
	br label %460, !dbg !1854
	br label %460, !dbg !1854
	%461 = load i8, i8* %425, align 4, !dbg !1854, !tbaa !1535, !range !1130
	%462 = icmp eq i8 %461, 0, !dbg !1854
	br i1 %462, label %475, label %463, !dbg !1857
	br i1 %436, label %474, label %464, !dbg !1858
	%465 = call fastcc %struct.cstring* @remove_line() #10, !dbg !1860
	call void @llvm.dbg.value(metadata %struct.cstring* %465, i64 0, metadata !1864, metadata !1043) #10, !dbg !1868
	%466 = icmp eq %struct.cstring* %465, null, !dbg !1869
	br i1 %466, label %473, label %467, !dbg !1870
	br label %468, !dbg !1871
	%469 = phi %struct.cstring* [ %470, %468 ], [ %465, %467 ]
	call fastcc void @save_line_to_file(%struct.cstring* nonnull %469) #10, !dbg !1871
	%470 = call fastcc %struct.cstring* @remove_line() #10, !dbg !1860
	call void @llvm.dbg.value(metadata %struct.cstring* %470, i64 0, metadata !1864, metadata !1043) #10, !dbg !1868
	%471 = icmp eq %struct.cstring* %470, null, !dbg !1869
	br i1 %471, label %472, label %468, !dbg !1870, !llvm.loop !1872
	br label %473, !dbg !1875
	call fastcc void @close_output_file() #10, !dbg !1875
	br label %474, !dbg !1876
	call void @exit(i32 0) #14, !dbg !1877
	unreachable, !dbg !1877
	call fastcc void @regexp_error(%struct.control* nonnull %433, i64 %424, i1 zeroext %436) #14, !dbg !1878
	unreachable, !dbg !1878
	%477 = phi %struct.cstring* [ %454, %456 ], [ %496, %493 ]
	%478 = getelementptr inbounds %struct.cstring, %struct.cstring* %477, i64 0, i32 0, !dbg !1879
	%479 = load i64, i64* %478, align 8, !dbg !1879, !tbaa !1880
	call void @llvm.dbg.value(metadata i64 %479, i64 0, metadata !1820, metadata !1043) #10, !dbg !1882
	%480 = getelementptr inbounds %struct.cstring, %struct.cstring* %477, i64 0, i32 1, !dbg !1883
	%481 = load i8*, i8** %480, align 8, !dbg !1883, !tbaa !1885
	%482 = add i64 %479, -1, !dbg !1886
	%483 = getelementptr inbounds i8, i8* %481, i64 %482, !dbg !1887
	%484 = load i8, i8* %483, align 1, !dbg !1887, !tbaa !1279
	%485 = icmp eq i8 %484, 10, !dbg !1888
	call void @llvm.dbg.value(metadata i64 %482, i64 0, metadata !1820, metadata !1043) #10, !dbg !1882
	%486 = select i1 %485, i64 %482, i64 %479, !dbg !1889
	call void @llvm.dbg.value(metadata i64 %486, i64 0, metadata !1820, metadata !1043) #10, !dbg !1882
	%487 = trunc i64 %486 to i32, !dbg !1890
	%488 = call i32 @re_search(%struct.re_pattern_buffer* %457, i8* %481, i32 %487, i32 0, i32 %487, %struct.re_registers* null) #10, !dbg !1891
	call void @llvm.dbg.value(metadata i32 %488, i64 0, metadata !1823, metadata !1043) #10, !dbg !1892
	switch i32 %488, label %534 [
		i32 -2, label %489
		i32 -1, label %491
	], !dbg !1893
	%490 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.55, i64 0, i64 0), i32 5) #10, !dbg !1894
	call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %490) #10, !dbg !1897
	call fastcc void @cleanup_fatal() #14, !dbg !1899
	unreachable, !dbg !1899
	%492 = call fastcc %struct.cstring* @remove_line() #10, !dbg !1900
	call void @llvm.dbg.value(metadata %struct.cstring* %492, i64 0, metadata !1819, metadata !1043) #10, !dbg !1850
	br i1 %436, label %493, label %498, !dbg !1903
	%494 = load i64, i64* @current_line, align 8, !dbg !1846, !tbaa !1079
	%495 = add i64 %494, 1, !dbg !1846
	store i64 %495, i64* @current_line, align 8, !dbg !1846, !tbaa !1079
	%496 = call fastcc %struct.cstring* @find_line(i64 %495) #10, !dbg !1849
	call void @llvm.dbg.value(metadata %struct.cstring* %496, i64 0, metadata !1819, metadata !1043) #10, !dbg !1850
	%497 = icmp eq %struct.cstring* %496, null, !dbg !1851
	br i1 %497, label %458, label %476, !dbg !1853, !llvm.loop !1904
	call fastcc void @save_line_to_file(%struct.cstring* %492) #10, !dbg !1907
	br label %493, !dbg !1907
	%500 = load i64, i64* @current_line, align 8, !dbg !1843, !tbaa !1079
	%501 = add i64 %500, 1, !dbg !1843
	store i64 %501, i64* @current_line, align 8, !dbg !1843, !tbaa !1079
	%502 = call fastcc %struct.cstring* @find_line(i64 %501) #10, !dbg !1909
	call void @llvm.dbg.value(metadata %struct.cstring* %502, i64 0, metadata !1819, metadata !1043) #10, !dbg !1850
	%503 = icmp eq %struct.cstring* %502, null, !dbg !1910
	br i1 %503, label %504, label %520, !dbg !1912
	%505 = load i8, i8* %425, align 4, !dbg !1913, !tbaa !1535, !range !1130
	%506 = icmp eq i8 %505, 0, !dbg !1913
	br i1 %506, label %519, label %507, !dbg !1916
	br i1 %436, label %518, label %508, !dbg !1917
	%509 = call fastcc %struct.cstring* @remove_line() #10, !dbg !1919
	call void @llvm.dbg.value(metadata %struct.cstring* %509, i64 0, metadata !1864, metadata !1043) #10, !dbg !1923
	%510 = icmp eq %struct.cstring* %509, null, !dbg !1924
	br i1 %510, label %517, label %511, !dbg !1925
	br label %512, !dbg !1926
	%513 = phi %struct.cstring* [ %514, %512 ], [ %509, %511 ]
	call fastcc void @save_line_to_file(%struct.cstring* nonnull %513) #10, !dbg !1926
	%514 = call fastcc %struct.cstring* @remove_line() #10, !dbg !1919
	call void @llvm.dbg.value(metadata %struct.cstring* %514, i64 0, metadata !1864, metadata !1043) #10, !dbg !1923
	%515 = icmp eq %struct.cstring* %514, null, !dbg !1924
	br i1 %515, label %516, label %512, !dbg !1925, !llvm.loop !1872
	br label %517, !dbg !1927
	call fastcc void @close_output_file() #10, !dbg !1927
	br label %518, !dbg !1928
	call void @exit(i32 0) #14, !dbg !1929
	unreachable, !dbg !1929
	call fastcc void @regexp_error(%struct.control* nonnull %433, i64 %424, i1 zeroext %436) #14, !dbg !1930
	unreachable, !dbg !1930
	%521 = getelementptr inbounds %struct.cstring, %struct.cstring* %502, i64 0, i32 0, !dbg !1931
	%522 = load i64, i64* %521, align 8, !dbg !1931, !tbaa !1880
	call void @llvm.dbg.value(metadata i64 %522, i64 0, metadata !1820, metadata !1043) #10, !dbg !1882
	%523 = getelementptr inbounds %struct.cstring, %struct.cstring* %502, i64 0, i32 1, !dbg !1932
	%524 = load i8*, i8** %523, align 8, !dbg !1932, !tbaa !1885
	%525 = add i64 %522, -1, !dbg !1934
	%526 = getelementptr inbounds i8, i8* %524, i64 %525, !dbg !1935
	%527 = load i8, i8* %526, align 1, !dbg !1935, !tbaa !1279
	%528 = icmp eq i8 %527, 10, !dbg !1936
	call void @llvm.dbg.value(metadata i64 %525, i64 0, metadata !1820, metadata !1043) #10, !dbg !1882
	%529 = select i1 %528, i64 %525, i64 %522, !dbg !1937
	call void @llvm.dbg.value(metadata i64 %529, i64 0, metadata !1820, metadata !1043) #10, !dbg !1882
	%530 = trunc i64 %529 to i32, !dbg !1938
	%531 = call i32 @re_search(%struct.re_pattern_buffer* %450, i8* %524, i32 %530, i32 0, i32 %530, %struct.re_registers* null) #10, !dbg !1939
	call void @llvm.dbg.value(metadata i32 %531, i64 0, metadata !1823, metadata !1043) #10, !dbg !1892
	switch i32 %531, label %535 [
		i32 -2, label %532
		i32 -1, label %499
	], !dbg !1940
	%533 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.55, i64 0, i64 0), i32 5) #10, !dbg !1941
	call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %533) #10, !dbg !1944
	call fastcc void @cleanup_fatal() #14, !dbg !1946
	unreachable, !dbg !1946
	br label %536, !dbg !1947
	br label %536, !dbg !1947
	%537 = load i64, i64* @current_line, align 8, !dbg !1947, !tbaa !1079
	%538 = load i64, i64* %446, align 8, !dbg !1948, !tbaa !1840
	%539 = add i64 %538, %537, !dbg !1949
	call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !1821, metadata !1043) #10, !dbg !1950
	%540 = getelementptr inbounds %struct.control, %struct.control* %423, i64 %416, i32 3, !dbg !1951
	%541 = load i32, i32* %540, align 8, !dbg !1951, !tbaa !1543
	call void @llvm.dbg.value(metadata i64 %539, i64 0, metadata !1952, metadata !1043) #10, !dbg !1963
	call void @llvm.dbg.value(metadata i1 %436, i64 0, metadata !1957, metadata !1124) #10, !dbg !1965
	call void @llvm.dbg.value(metadata i32 %541, i64 0, metadata !1958, metadata !1043) #10, !dbg !1966
	%542 = load %struct.buffer_record*, %struct.buffer_record** @head, align 8, !dbg !1967, !tbaa !1032
	%543 = icmp eq %struct.buffer_record* %542, null, !dbg !1972
	br i1 %543, label %544, label %552, !dbg !1973
	%545 = call fastcc zeroext i1 @load_buffer() #10, !dbg !1974
	br i1 %545, label %546, label %548, !dbg !1976
	%547 = load %struct.buffer_record*, %struct.buffer_record** @head, align 8, !tbaa !1032
	br label %552, !dbg !1976
	%549 = tail call i32* @__errno_location() #5, !dbg !1978
	%550 = load i32, i32* %549, align 4, !dbg !1978, !tbaa !1070
	%551 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.62, i64 0, i64 0), i32 5) #10, !dbg !1979
	call void (i32, i32, i8*, ...) @error(i32 1, i32 %550, i8* %551) #10, !dbg !1980
	unreachable, !dbg !1978
	%553 = phi %struct.buffer_record* [ %547, %546 ], [ %542, %536 ], !dbg !1982
	%554 = getelementptr inbounds %struct.buffer_record, %struct.buffer_record* %553, i64 0, i32 3, !dbg !1983
	%555 = load i64, i64* %554, align 8, !dbg !1983, !tbaa !1984
	call void @llvm.dbg.value(metadata i64 %555, i64 0, metadata !1960, metadata !1043) #10, !dbg !1986
	%556 = icmp ult i64 %539, %555, !dbg !1987
	br i1 %556, label %557, label %564, !dbg !1989
	%558 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.61, i64 0, i64 0), i32 5) #10, !dbg !1990
	%559 = load i8**, i8*** @global_argv, align 8, !dbg !1992, !tbaa !1032
	%560 = sext i32 %541 to i64, !dbg !1992
	%561 = getelementptr inbounds i8*, i8** %559, i64 %560, !dbg !1992
	%562 = load i8*, i8** %561, align 8, !dbg !1992, !tbaa !1032
	%563 = call i8* @quote(i8* %562) #10, !dbg !1993
	call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %558, i8* %563) #10, !dbg !1994
	call fastcc void @cleanup_fatal() #14, !dbg !1996
	unreachable, !dbg !1996
	%565 = sub i64 %539, %555, !dbg !1997
	call void @llvm.dbg.value(metadata i64 %565, i64 0, metadata !1961, metadata !1043) #10, !dbg !1998
	call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1962, metadata !1043) #10, !dbg !1999
	call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1962, metadata !1043) #10, !dbg !1999
	%566 = icmp eq i64 %565, 0, !dbg !2000
	br i1 %566, label %585, label %567, !dbg !2004
	br label %568, !dbg !2006
	%569 = phi i64 [ %582, %581 ], [ 0, %567 ]
	%570 = call fastcc %struct.cstring* @remove_line() #10, !dbg !2006
	call void @llvm.dbg.value(metadata %struct.cstring* %570, i64 0, metadata !1959, metadata !1043) #10, !dbg !2008
	%571 = icmp eq %struct.cstring* %570, null, !dbg !2009
	br i1 %571, label %572, label %579, !dbg !2011
	%573 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.61, i64 0, i64 0), i32 5) #10, !dbg !2012
	%574 = load i8**, i8*** @global_argv, align 8, !dbg !2014, !tbaa !1032
	%575 = sext i32 %541 to i64, !dbg !2014
	%576 = getelementptr inbounds i8*, i8** %574, i64 %575, !dbg !2014
	%577 = load i8*, i8** %576, align 8, !dbg !2014, !tbaa !1032
	%578 = call i8* @quote(i8* %577) #10, !dbg !2015
	call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %573, i8* %578) #10, !dbg !2016
	call fastcc void @cleanup_fatal() #14, !dbg !2018
	unreachable, !dbg !2018
	br i1 %436, label %581, label %580, !dbg !2019
	call fastcc void @save_line_to_file(%struct.cstring* nonnull %570) #10, !dbg !2020
	br label %581, !dbg !2020
	%582 = add nuw i64 %569, 1, !dbg !2022
	call void @llvm.dbg.value(metadata i64 %582, i64 0, metadata !1962, metadata !1043) #10, !dbg !1999
	call void @llvm.dbg.value(metadata i64 %582, i64 0, metadata !1962, metadata !1043) #10, !dbg !1999
	%583 = icmp ult i64 %582, %565, !dbg !2000
	br i1 %583, label %568, label %584, !dbg !2004, !llvm.loop !2024
	br label %585, !dbg !2027
	br i1 %436, label %587, label %586, !dbg !2027
	call fastcc void @close_output_file() #10, !dbg !2028
	br label %587, !dbg !2028
	%588 = load i64, i64* %446, align 8, !dbg !2030, !tbaa !1840
	%589 = icmp sgt i64 %588, 0, !dbg !2032
	br i1 %589, label %590, label %591, !dbg !2033
	store i64 %539, i64* @current_line, align 8, !dbg !2034, !tbaa !1079
	br label %591, !dbg !2035
	%592 = add i64 %424, 1, !dbg !2036
	call void @llvm.dbg.value(metadata i64 %592, i64 0, metadata !1797, metadata !1043) #10, !dbg !1800
	%593 = load %struct.control*, %struct.control** @controls, align 8, !tbaa !1032
	br label %422, !dbg !2038, !llvm.loop !2040
	%595 = phi %struct.control* [ %654, %653 ], [ %415, %421 ], !dbg !2043
	%596 = phi i64 [ %607, %653 ], [ 0, %421 ]
	call void @llvm.dbg.value(metadata i64 %596, i64 0, metadata !1797, metadata !1043) #10, !dbg !1800
	%597 = getelementptr inbounds %struct.control, %struct.control* %595, i64 %416, i32 4, !dbg !2047
	%598 = load i8, i8* %597, align 4, !dbg !2047, !tbaa !1535, !range !1130
	%599 = icmp eq i8 %598, 0, !dbg !2047
	br i1 %599, label %600, label %604, !dbg !2049
	%601 = getelementptr inbounds %struct.control, %struct.control* %595, i64 %416, i32 2, !dbg !2050
	%602 = load i64, i64* %601, align 8, !dbg !2050, !tbaa !1739
	%603 = icmp ugt i64 %596, %602, !dbg !2051
	br i1 %603, label %659, label %604, !dbg !2052
	call void @llvm.dbg.value(metadata i64 %596, i64 0, metadata !2054, metadata !1043) #10, !dbg !2066
	%605 = getelementptr inbounds %struct.control, %struct.control* %595, i64 %416, i32 1, !dbg !2068
	%606 = load i64, i64* %605, align 8, !dbg !2068, !tbaa !1673
	%607 = add i64 %596, 1, !dbg !2069
	%608 = mul i64 %606, %607, !dbg !2070
	call void @llvm.dbg.value(metadata i64 %608, i64 0, metadata !2063, metadata !1043) #10, !dbg !2071
	call fastcc void @create_output_file() #10, !dbg !2072
	%609 = load i64, i64* @current_line, align 8, !dbg !2073, !tbaa !1079
	%610 = add i64 %609, 1, !dbg !2079
	%611 = call fastcc %struct.cstring* @find_line(i64 %610) #10, !dbg !2080
	%612 = icmp eq %struct.cstring* %611, null, !dbg !2081
	br i1 %612, label %613, label %617, !dbg !2082
	%614 = load i1, i1* @suppress_matched, align 1
	br i1 %614, label %615, label %617, !dbg !2083
	%616 = getelementptr inbounds %struct.control, %struct.control* %595, i64 %416, !dbg !2043
	call fastcc void @handle_line_error(%struct.control* nonnull %616, i64 %596) #14, !dbg !2085
	unreachable, !dbg !2085
	%618 = load %struct.buffer_record*, %struct.buffer_record** @head, align 8, !dbg !2086, !tbaa !1032
	%619 = icmp eq %struct.buffer_record* %618, null, !dbg !2088
	br i1 %619, label %620, label %628, !dbg !2089
	%621 = call fastcc zeroext i1 @load_buffer() #10, !dbg !2090
	br i1 %621, label %622, label %624, !dbg !2091
	%623 = load %struct.buffer_record*, %struct.buffer_record** @head, align 8, !tbaa !1032
	br label %628, !dbg !2091
	%625 = tail call i32* @__errno_location() #5, !dbg !2092
	%626 = load i32, i32* %625, align 4, !dbg !2092, !tbaa !1070
	%627 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.62, i64 0, i64 0), i32 5) #10, !dbg !2093
	call void (i32, i32, i8*, ...) @error(i32 1, i32 %626, i8* %627) #10, !dbg !2094
	unreachable, !dbg !2092
	%629 = phi %struct.buffer_record* [ %623, %622 ], [ %618, %617 ], !dbg !2095
	%630 = getelementptr inbounds %struct.buffer_record, %struct.buffer_record* %629, i64 0, i32 3, !dbg !2096
	%631 = load i64, i64* %630, align 8, !dbg !2096, !tbaa !1984
	call void @llvm.dbg.value(metadata i64 %631, i64 0, metadata !2062, metadata !1043) #10, !dbg !2097
	call void @llvm.dbg.value(metadata i64 %631, i64 0, metadata !2062, metadata !1043) #10, !dbg !2097
	%632 = icmp ult i64 %631, %608, !dbg !2098
	br i1 %632, label %633, label %644, !dbg !2099
	br label %634, !dbg !2100
	%635 = phi i64 [ %636, %641 ], [ %631, %633 ]
	%636 = add nuw i64 %635, 1, !dbg !2100
	%637 = call fastcc %struct.cstring* @remove_line() #10, !dbg !2101
	call void @llvm.dbg.value(metadata %struct.cstring* %637, i64 0, metadata !2064, metadata !1043) #10, !dbg !2102
	%638 = icmp eq %struct.cstring* %637, null, !dbg !2103
	br i1 %638, label %639, label %641, !dbg !2105
	%640 = getelementptr inbounds %struct.control, %struct.control* %595, i64 %416, !dbg !2043
	call fastcc void @handle_line_error(%struct.control* %640, i64 %596) #14, !dbg !2106
	unreachable, !dbg !2106
	call fastcc void @save_line_to_file(%struct.cstring* nonnull %637) #10, !dbg !2107
	call void @llvm.dbg.value(metadata i64 %636, i64 0, metadata !2062, metadata !1043) #10, !dbg !2097
	%642 = icmp ult i64 %636, %608, !dbg !2098
	br i1 %642, label %634, label %643, !dbg !2099, !llvm.loop !2108
	br label %644, !dbg !2111
	call fastcc void @close_output_file() #10, !dbg !2111
	%645 = load i1, i1* @suppress_matched, align 1
	br i1 %645, label %646, label %648, !dbg !2112
	%647 = call fastcc %struct.cstring* @remove_line() #10, !dbg !2113
	br label %648, !dbg !2113
	%649 = load i64, i64* @current_line, align 8, !dbg !2115, !tbaa !1079
	%650 = add i64 %649, 1, !dbg !2118
	%651 = call fastcc %struct.cstring* @find_line(i64 %650) #10, !dbg !2119
	%652 = icmp eq %struct.cstring* %651, null, !dbg !2120
	br i1 %652, label %655, label %653, !dbg !2121
	%654 = load %struct.control*, %struct.control** @controls, align 8, !tbaa !1032
	br label %594, !dbg !1800, !llvm.loop !2122
	%656 = load i1, i1* @suppress_matched, align 1
	br i1 %656, label %653, label %657, !dbg !2125
	%658 = getelementptr inbounds %struct.control, %struct.control* %595, i64 %416, !dbg !2043
	call fastcc void @handle_line_error(%struct.control* %658, i64 %596) #14, !dbg !2126
	unreachable, !dbg !2126
	br label %661, !dbg !2127
	br label %661, !dbg !2127
	%662 = phi %struct.control* [ %595, %659 ], [ %423, %660 ]
	%663 = add i64 %416, 1, !dbg !2127
	call void @llvm.dbg.value(metadata i64 %663, i64 0, metadata !1796, metadata !1043) #10, !dbg !2129
	call void @llvm.dbg.value(metadata i64 %663, i64 0, metadata !1796, metadata !1043) #10, !dbg !2129
	%664 = load i64, i64* @control_used, align 8, !dbg !2130, !tbaa !1079
	%665 = icmp ult i64 %663, %664, !dbg !2132
	br i1 %665, label %414, label %666, !dbg !2133, !llvm.loop !2135
	br label %667, !dbg !2138
	call fastcc void @create_output_file() #10, !dbg !2138
	%668 = call fastcc %struct.cstring* @remove_line() #10, !dbg !2139
	call void @llvm.dbg.value(metadata %struct.cstring* %668, i64 0, metadata !1864, metadata !1043) #10, !dbg !2141
	%669 = icmp eq %struct.cstring* %668, null, !dbg !2142
	br i1 %669, label %676, label %670, !dbg !2143
	br label %671, !dbg !2144
	%672 = phi %struct.cstring* [ %673, %671 ], [ %668, %670 ]
	call fastcc void @save_line_to_file(%struct.cstring* nonnull %672) #10, !dbg !2144
	%673 = call fastcc %struct.cstring* @remove_line() #10, !dbg !2139
	call void @llvm.dbg.value(metadata %struct.cstring* %673, i64 0, metadata !1864, metadata !1043) #10, !dbg !2141
	%674 = icmp eq %struct.cstring* %673, null, !dbg !2142
	br i1 %674, label %675, label %671, !dbg !2143, !llvm.loop !1872
	br label %676, !dbg !2145
	call fastcc void @close_output_file() #10, !dbg !2145
	%677 = call i32 @close(i32 0) #10, !dbg !2146
	%678 = icmp eq i32 %677, 0, !dbg !2148
	br i1 %678, label %683, label %679, !dbg !2149
	%680 = tail call i32* @__errno_location() #5, !dbg !2150
	%681 = load i32, i32* %680, align 4, !dbg !2150, !tbaa !1070
	%682 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i32 5) #10, !dbg !2152
	call void (i32, i32, i8*, ...) @error(i32 0, i32 %681, i8* %682) #10, !dbg !2154
	call fastcc void @cleanup_fatal() #13, !dbg !2156
	unreachable, !dbg !2156
	ret i32 0, !dbg !2157
	call void @llvm.dbg.value(metadata %struct.sigaction* %6, i64 0, metadata !24, metadata !1011), !dbg !1758
	%685 = call i32 @sigaction(i32 1, %struct.sigaction* nonnull %6, %struct.sigaction* null) #10, !dbg !1788
	br label %686, !dbg !1788
	%687 = call i32 @sigismember(%struct.__sigset_t* nonnull @caught_signals, i32 2) #10, !dbg !1784
	%688 = icmp eq i32 %687, 0, !dbg !1784
	br i1 %688, label %691, label %689, !dbg !1787
	call void @llvm.dbg.value(metadata %struct.sigaction* %6, i64 0, metadata !24, metadata !1011), !dbg !1758
	%690 = call i32 @sigaction(i32 2, %struct.sigaction* nonnull %6, %struct.sigaction* null) #10, !dbg !1788
	br label %691, !dbg !1788
	%692 = call i32 @sigismember(%struct.__sigset_t* nonnull @caught_signals, i32 13) #10, !dbg !1784
	%693 = icmp eq i32 %692, 0, !dbg !1784
	br i1 %693, label %696, label %694, !dbg !1787
	call void @llvm.dbg.value(metadata %struct.sigaction* %6, i64 0, metadata !24, metadata !1011), !dbg !1758
	%695 = call i32 @sigaction(i32 13, %struct.sigaction* nonnull %6, %struct.sigaction* null) #10, !dbg !1788
	br label %696, !dbg !1788
	%697 = call i32 @sigismember(%struct.__sigset_t* nonnull @caught_signals, i32 3) #10, !dbg !1784
	%698 = icmp eq i32 %697, 0, !dbg !1784
	br i1 %698, label %701, label %699, !dbg !1787
	call void @llvm.dbg.value(metadata %struct.sigaction* %6, i64 0, metadata !24, metadata !1011), !dbg !1758
	%700 = call i32 @sigaction(i32 3, %struct.sigaction* nonnull %6, %struct.sigaction* null) #10, !dbg !1788
	br label %701, !dbg !1788
	%702 = call i32 @sigismember(%struct.__sigset_t* nonnull @caught_signals, i32 15) #10, !dbg !1784
	%703 = icmp eq i32 %702, 0, !dbg !1784
	br i1 %703, label %706, label %704, !dbg !1787
	call void @llvm.dbg.value(metadata %struct.sigaction* %6, i64 0, metadata !24, metadata !1011), !dbg !1758
	%705 = call i32 @sigaction(i32 15, %struct.sigaction* nonnull %6, %struct.sigaction* null) #10, !dbg !1788
	br label %706, !dbg !1788
	%707 = call i32 @sigismember(%struct.__sigset_t* nonnull @caught_signals, i32 29) #10, !dbg !1784
	%708 = icmp eq i32 %707, 0, !dbg !1784
	br i1 %708, label %711, label %709, !dbg !1787
	call void @llvm.dbg.value(metadata %struct.sigaction* %6, i64 0, metadata !24, metadata !1011), !dbg !1758
	%710 = call i32 @sigaction(i32 29, %struct.sigaction* nonnull %6, %struct.sigaction* null) #10, !dbg !1788
	br label %711, !dbg !1788
	%712 = call i32 @sigismember(%struct.__sigset_t* nonnull @caught_signals, i32 27) #10, !dbg !1784
	%713 = icmp eq i32 %712, 0, !dbg !1784
	br i1 %713, label %716, label %714, !dbg !1787
	call void @llvm.dbg.value(metadata %struct.sigaction* %6, i64 0, metadata !24, metadata !1011), !dbg !1758
	%715 = call i32 @sigaction(i32 27, %struct.sigaction* nonnull %6, %struct.sigaction* null) #10, !dbg !1788
	br label %716, !dbg !1788
	%717 = call i32 @sigismember(%struct.__sigset_t* nonnull @caught_signals, i32 26) #10, !dbg !1784
	%718 = icmp eq i32 %717, 0, !dbg !1784
	br i1 %718, label %721, label %719, !dbg !1787
	call void @llvm.dbg.value(metadata %struct.sigaction* %6, i64 0, metadata !24, metadata !1011), !dbg !1758
	%720 = call i32 @sigaction(i32 26, %struct.sigaction* nonnull %6, %struct.sigaction* null) #10, !dbg !1788
	br label %721, !dbg !1788
	%722 = call i32 @sigismember(%struct.__sigset_t* nonnull @caught_signals, i32 24) #10, !dbg !1784
	%723 = icmp eq i32 %722, 0, !dbg !1784
	br i1 %723, label %726, label %724, !dbg !1787
	call void @llvm.dbg.value(metadata %struct.sigaction* %6, i64 0, metadata !24, metadata !1011), !dbg !1758
	%725 = call i32 @sigaction(i32 24, %struct.sigaction* nonnull %6, %struct.sigaction* null) #10, !dbg !1788
	br label %726, !dbg !1788
	%727 = call i32 @sigismember(%struct.__sigset_t* nonnull @caught_signals, i32 25) #10, !dbg !1784
	%728 = icmp eq i32 %727, 0, !dbg !1784
	br i1 %728, label %731, label %729, !dbg !1787
	call void @llvm.dbg.value(metadata %struct.sigaction* %6, i64 0, metadata !24, metadata !1011), !dbg !1758
	%730 = call i32 @sigaction(i32 25, %struct.sigaction* nonnull %6, %struct.sigaction* null) #10, !dbg !1788
	br label %731, !dbg !1788
	call void @llvm.lifetime.end(i64 152, i8* nonnull %385) #10, !dbg !2158
	call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1796, metadata !1043) #10, !dbg !2129
	call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1796, metadata !1043) #10, !dbg !2129
	%732 = load i64, i64* @control_used, align 8, !dbg !2130, !tbaa !1079
	%733 = icmp eq i64 %732, 0, !dbg !2132
	br i1 %733, label %667, label %412, !dbg !2133
}
declare i8* @setlocale(i32, i8*) local_unnamed_addr #1
declare i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #1
declare i8* @textdomain(i8*) local_unnamed_addr #1
declare i32 @atexit(void ()*) local_unnamed_addr #1
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #1
define void @usage(i32) local_unnamed_addr #0 !dbg !2159 {
	tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2161, metadata !1043), !dbg !2162
	%2 = icmp eq i32 %0, 0, !dbg !2163
	br i1 %2, label %8, label %3, !dbg !2165
	%4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2166, !tbaa !1032
	%5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.15, i64 0, i64 0), i32 5) #10, !dbg !2166
	%6 = load i8*, i8** @program_name, align 8, !dbg !2166, !tbaa !1032
	%7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #10, !dbg !2169
	br label %54, !dbg !2171
	%9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.16, i64 0, i64 0), i32 5) #10, !dbg !2173
	%10 = load i8*, i8** @program_name, align 8, !dbg !2173, !tbaa !1032
	%11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10) #10, !dbg !2175
	%12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([134 x i8], [134 x i8]* @.str.17, i64 0, i64 0), i32 5) #10, !dbg !2177
	%13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2177, !tbaa !1032
	%14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #10, !dbg !2178
	%15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.18, i64 0, i64 0), i32 5) #10, !dbg !2179
	%16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2179, !tbaa !1032
	%17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #10, !dbg !2180
	%18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.65, i64 0, i64 0), i32 5) #10, !dbg !2181
	%19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2181, !tbaa !1032
	%20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #10, !dbg !2184
	%21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([188 x i8], [188 x i8]* @.str.19, i64 0, i64 0), i32 5) #10, !dbg !2186
	%22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2186, !tbaa !1032
	%23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22) #10, !dbg !2187
	%24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.20, i64 0, i64 0), i32 5) #10, !dbg !2188
	%25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2188, !tbaa !1032
	%26 = tail call i32 @fputs_unlocked(i8* %24, %struct._IO_FILE* %25) #10, !dbg !2189
	%27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([199 x i8], [199 x i8]* @.str.21, i64 0, i64 0), i32 5) #10, !dbg !2190
	%28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2190, !tbaa !1032
	%29 = tail call i32 @fputs_unlocked(i8* %27, %struct._IO_FILE* %28) #10, !dbg !2191
	%30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.22, i64 0, i64 0), i32 5) #10, !dbg !2192
	%31 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2192, !tbaa !1032
	%32 = tail call i32 @fputs_unlocked(i8* %30, %struct._IO_FILE* %31) #10, !dbg !2193
	%33 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.23, i64 0, i64 0), i32 5) #10, !dbg !2194
	%34 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2194, !tbaa !1032
	%35 = tail call i32 @fputs_unlocked(i8* %33, %struct._IO_FILE* %34) #10, !dbg !2195
	%36 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([447 x i8], [447 x i8]* @.str.24, i64 0, i64 0), i32 5) #10, !dbg !2196
	%37 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2196, !tbaa !1032
	%38 = tail call i32 @fputs_unlocked(i8* %36, %struct._IO_FILE* %37) #10, !dbg !2197
	tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !427, metadata !1043) #10, !dbg !2198
	tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i64 0, metadata !427, metadata !1043) #10, !dbg !2198
	%39 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.74, i64 0, i64 0), i32 5) #10, !dbg !2200
	%40 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %39, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.75, i64 0, i64 0)) #10, !dbg !2201
	%41 = tail call i8* @setlocale(i32 5, i8* null) #10, !dbg !2203
	tail call void @llvm.dbg.value(metadata i8* %41, i64 0, metadata !438, metadata !1043) #10, !dbg !2204
	%42 = icmp eq i8* %41, null, !dbg !2205
	br i1 %42, label %49, label %43, !dbg !2206
	%44 = tail call i32 @strncmp(i8* nonnull %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.76, i64 0, i64 0), i64 3) #15, !dbg !2207
	%45 = icmp eq i32 %44, 0, !dbg !2207
	br i1 %45, label %49, label %46, !dbg !2209
	%47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.77, i64 0, i64 0), i32 5) #10, !dbg !2211
	%48 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %47, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0)) #10, !dbg !2213
	br label %49, !dbg !2215
	%50 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.78, i64 0, i64 0), i32 5) #10, !dbg !2216
	%51 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %50, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.75, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0)) #10, !dbg !2217
	%52 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.79, i64 0, i64 0), i32 5) #10, !dbg !2218
	%53 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %52, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.80, i64 0, i64 0)) #10, !dbg !2219
	br label %54
	tail call void @exit(i32 %0) #14, !dbg !2220
	unreachable, !dbg !2220
}
declare i16** @__ctype_b_loc() local_unnamed_addr #7
declare i32 @__snprintf_chk(i8*, i64, i32, i64, i8*, ...) local_unnamed_addr #2
declare i8* @strrchr(i8*, i32) local_unnamed_addr #8
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #3
declare i8* @re_compile_pattern(i8*, i64, %struct.re_pattern_buffer*) local_unnamed_addr #2
declare i32 @sigemptyset(%struct.__sigset_t*) local_unnamed_addr #1
declare i32 @sigaction(i32, %struct.sigaction*, %struct.sigaction*) local_unnamed_addr #1
declare i32 @sigaddset(%struct.__sigset_t*, i32) local_unnamed_addr #1
define internal void @interrupt_handler(i32) #4 !dbg !2221 {
	tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2223, metadata !1043), !dbg !2224
	tail call void @llvm.dbg.value(metadata i1 true, i64 0, metadata !1118, metadata !1124) #10, !dbg !2225
	%2 = load volatile i8, i8* @remove_files, align 1, !dbg !2227, !tbaa !1128, !range !1130
	%3 = icmp eq i8 %2, 0, !dbg !2227
	br i1 %3, label %34, label %4, !dbg !2228
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1119, metadata !1043) #10, !dbg !2229
	%5 = load volatile i32, i32* @files_created, align 4, !dbg !2230, !tbaa !1070
	%6 = icmp eq i32 %5, 0, !dbg !2231
	br i1 %6, label %33, label %7, !dbg !2232
	br label %8, !dbg !2233
	%9 = phi i32 [ %29, %26 ], [ 0, %7 ]
	tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1163, metadata !1043) #10, !dbg !2233
	%10 = load volatile i8*, i8** @filename_space, align 8, !dbg !2235, !tbaa !1032
	%11 = load volatile i8*, i8** @prefix, align 8, !dbg !2236, !tbaa !1032
	tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1167, metadata !1043) #10, !dbg !2237
	tail call void @llvm.dbg.value(metadata i8* %11, i64 0, metadata !1175, metadata !1043) #10, !dbg !2237
	%12 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %10, i1 false) #10, !dbg !2239
	%13 = tail call i8* @__strcpy_chk(i8* nonnull %10, i8* nonnull %11, i64 %12) #10, !dbg !2240
	%14 = load volatile i8*, i8** @suffix, align 8, !dbg !2241, !tbaa !1032
	%15 = icmp eq i8* %14, null, !dbg !2241
	%16 = load volatile i8*, i8** @filename_space, align 8, !tbaa !1032
	%17 = load volatile i8*, i8** @prefix, align 8, !tbaa !1032
	%18 = tail call i64 @strlen(i8* %17) #15, !dbg !2242
	%19 = getelementptr inbounds i8, i8* %16, i64 %18
	br i1 %15, label %23, label %20, !dbg !2243
	%21 = load volatile i8*, i8** @suffix, align 8, !dbg !2242, !tbaa !1032
	%22 = tail call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %19, i32 1, i64 -1, i8* %21, i32 %9) #10, !dbg !2244
	br label %26, !dbg !2242
	%24 = load volatile i32, i32* @digits, align 4, !dbg !2245, !tbaa !1070
	%25 = tail call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %19, i32 1, i64 -1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), i32 %24, i32 %9) #10, !dbg !2246
	br label %26
	%27 = load volatile i8*, i8** @filename_space, align 8, !dbg !2247, !tbaa !1032
	tail call void @llvm.dbg.value(metadata i8* %27, i64 0, metadata !1120, metadata !1043) #10, !dbg !2248
	%28 = tail call i32 @unlink(i8* %27) #10, !dbg !2249
	%29 = add i32 %9, 1, !dbg !2250
	tail call void @llvm.dbg.value(metadata i32 %29, i64 0, metadata !1119, metadata !1043) #10, !dbg !2229
	tail call void @llvm.dbg.value(metadata i32 %29, i64 0, metadata !1119, metadata !1043) #10, !dbg !2229
	%30 = load volatile i32, i32* @files_created, align 4, !dbg !2230, !tbaa !1070
	%31 = icmp ult i32 %29, %30, !dbg !2231
	br i1 %31, label %8, label %32, !dbg !2232, !llvm.loop !1152
	br label %33, !dbg !2251
	store volatile i32 0, i32* @files_created, align 4, !dbg !2251, !tbaa !1070
	br label %34, !dbg !2252
	%35 = tail call void (i32)* @signal(i32 %0, void (i32)* null) #10, !dbg !2253
	%36 = tail call i32 @raise(i32 %0) #10, !dbg !2254
	ret void, !dbg !2255
}
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #3
declare i32 @sigismember(%struct.__sigset_t*, i32) local_unnamed_addr #1
define internal fastcc void @create_output_file() unnamed_addr #4 !dbg !2256 {
	%1 = alloca %struct.__sigset_t, align 8
	%2 = load volatile i32, i32* @files_created, align 4, !dbg !2263, !tbaa !1070
	tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !1163, metadata !1043) #10, !dbg !2264
	%3 = load volatile i8*, i8** @filename_space, align 8, !dbg !2266, !tbaa !1032
	%4 = load volatile i8*, i8** @prefix, align 8, !dbg !2267, !tbaa !1032
	tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !1167, metadata !1043) #10, !dbg !2268
	tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !1175, metadata !1043) #10, !dbg !2268
	%5 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %3, i1 false) #10, !dbg !2270
	%6 = tail call i8* @__strcpy_chk(i8* nonnull %3, i8* nonnull %4, i64 %5) #10, !dbg !2271
	%7 = load volatile i8*, i8** @suffix, align 8, !dbg !2272, !tbaa !1032
	%8 = icmp eq i8* %7, null, !dbg !2272
	%9 = load volatile i8*, i8** @filename_space, align 8, !tbaa !1032
	%10 = load volatile i8*, i8** @prefix, align 8, !tbaa !1032
	%11 = tail call i64 @strlen(i8* %10) #15, !dbg !2273
	%12 = getelementptr inbounds i8, i8* %9, i64 %11
	br i1 %8, label %16, label %13, !dbg !2274
	%14 = load volatile i8*, i8** @suffix, align 8, !dbg !2273, !tbaa !1032
	%15 = tail call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %12, i32 1, i64 -1, i8* %14, i32 %2) #10, !dbg !2275
	br label %19, !dbg !2273
	%17 = load volatile i32, i32* @digits, align 4, !dbg !2276, !tbaa !1070
	%18 = tail call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %12, i32 1, i64 -1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), i32 %17, i32 %2) #10, !dbg !2277
	br label %19
	%20 = load volatile i8*, i8** @filename_space, align 8, !dbg !2278, !tbaa !1032
	store i8* %20, i8** @output_filename, align 8, !dbg !2279, !tbaa !1032
	%21 = load volatile i32, i32* @files_created, align 4, !dbg !2280, !tbaa !1070
	%22 = icmp eq i32 %21, -1, !dbg !2281
	br i1 %22, label %37, label %23, !dbg !2282
	%24 = bitcast %struct.__sigset_t* %1 to i8*, !dbg !2283
	call void @llvm.lifetime.start(i64 128, i8* nonnull %24) #10, !dbg !2283
	tail call void @llvm.dbg.value(metadata %struct.__sigset_t* %1, i64 0, metadata !2260, metadata !1011), !dbg !2284
	%25 = call i32 @sigprocmask(i32 0, %struct.__sigset_t* nonnull @caught_signals, %struct.__sigset_t* nonnull %1) #10, !dbg !2285
	%26 = load i8*, i8** @output_filename, align 8, !dbg !2286, !tbaa !1032
	%27 = call %struct._IO_FILE* @fopen_safer(i8* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i64 0, i64 0)) #10, !dbg !2287
	store %struct._IO_FILE* %27, %struct._IO_FILE** @output_stream, align 8, !dbg !2288, !tbaa !1032
	%28 = icmp ne %struct._IO_FILE* %27, null, !dbg !2289
	%29 = tail call i32* @__errno_location() #5, !dbg !2290
	%30 = load i32, i32* %29, align 4, !dbg !2290, !tbaa !1070
	call void @llvm.dbg.value(metadata i32 %30, i64 0, metadata !2259, metadata !1043), !dbg !2291
	%31 = zext i1 %28 to i32, !dbg !2292
	%32 = load volatile i32, i32* @files_created, align 4, !dbg !2293, !tbaa !1070
	%33 = add i32 %32, %31, !dbg !2293
	store volatile i32 %33, i32* @files_created, align 4, !dbg !2293, !tbaa !1070
	call void @llvm.dbg.value(metadata %struct.__sigset_t* %1, i64 0, metadata !2260, metadata !1011), !dbg !2284
	%34 = call i32 @sigprocmask(i32 2, %struct.__sigset_t* nonnull %1, %struct.__sigset_t* null) #10, !dbg !2294
	call void @llvm.lifetime.end(i64 128, i8* nonnull %24) #10, !dbg !2295
	call void @llvm.dbg.value(metadata i32 %30, i64 0, metadata !2259, metadata !1043), !dbg !2291
	br i1 %28, label %41, label %35, !dbg !2296
	%36 = load i8*, i8** @output_filename, align 8, !tbaa !1032
	br label %37, !dbg !2296
	%38 = phi i8* [ %36, %35 ], [ %20, %19 ], !dbg !2297
	%39 = phi i32 [ %30, %35 ], [ 75, %19 ]
	%40 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %38) #10, !dbg !2297
	call void (i32, i32, i8*, ...) @error(i32 0, i32 %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %40) #10, !dbg !2300
	call fastcc void @cleanup_fatal() #13, !dbg !2302
	unreachable, !dbg !2302
	store i64 0, i64* @bytes_written, align 8, !dbg !2303, !tbaa !1079
	ret void, !dbg !2304
}
define internal fastcc %struct.cstring* @remove_line() unnamed_addr #4 !dbg !375 {
	%1 = load %struct.buffer_record*, %struct.buffer_record** @remove_line.prev_buf, align 8, !dbg !2305, !tbaa !1032
	%2 = icmp eq %struct.buffer_record* %1, null, !dbg !2305
	br i1 %2, label %19, label %3, !dbg !2307
	tail call void @llvm.dbg.value(metadata %struct.buffer_record* %1, i64 0, metadata !2308, metadata !1043) #10, !dbg !2318
	%4 = getelementptr inbounds %struct.buffer_record, %struct.buffer_record* %1, i64 0, i32 6, !dbg !2321
	%5 = load %struct.line*, %struct.line** %4, align 8, !dbg !2321, !tbaa !2322
	tail call void @llvm.dbg.value(metadata %struct.line* %5, i64 0, metadata !2313, metadata !1043) #10, !dbg !2323
	tail call void @llvm.dbg.value(metadata %struct.line* %5, i64 0, metadata !2313, metadata !1043) #10, !dbg !2323
	%6 = icmp eq %struct.line* %5, null, !dbg !2324
	br i1 %6, label %15, label %7, !dbg !2324
	br label %8
	%9 = phi %struct.line* [ %12, %8 ], [ %5, %7 ]
	%10 = bitcast %struct.line* %9 to i8*
	%11 = getelementptr inbounds %struct.line, %struct.line* %9, i64 0, i32 4, !dbg !2326
	%12 = load %struct.line*, %struct.line** %11, align 8, !dbg !2326, !tbaa !2327
	tail call void @llvm.dbg.value(metadata %struct.line* %12, i64 0, metadata !2314, metadata !1043) #10, !dbg !2329
	tail call void @free(i8* %10) #10, !dbg !2330
	tail call void @llvm.dbg.value(metadata %struct.line* %12, i64 0, metadata !2313, metadata !1043) #10, !dbg !2323
	tail call void @llvm.dbg.value(metadata %struct.line* %12, i64 0, metadata !2313, metadata !1043) #10, !dbg !2323
	%13 = icmp eq %struct.line* %12, null, !dbg !2324
	br i1 %13, label %14, label %8, !dbg !2324, !llvm.loop !2331
	br label %15, !dbg !2334
	store %struct.line* null, %struct.line** %4, align 8, !dbg !2334, !tbaa !2322
	%16 = getelementptr inbounds %struct.buffer_record, %struct.buffer_record* %1, i64 0, i32 5, !dbg !2335
	%17 = load i8*, i8** %16, align 8, !dbg !2335, !tbaa !2336
	tail call void @free(i8* %17) #10, !dbg !2337
	store i8* null, i8** %16, align 8, !dbg !2338, !tbaa !2336
	%18 = load i8*, i8** bitcast (%struct.buffer_record** @remove_line.prev_buf to i8**), align 8, !dbg !2339, !tbaa !1032
	tail call void @free(i8* %18) #10, !dbg !2340
	store %struct.buffer_record* null, %struct.buffer_record** @remove_line.prev_buf, align 8, !dbg !2341, !tbaa !1032
	br label %19, !dbg !2342
	%20 = load %struct.buffer_record*, %struct.buffer_record** @head, align 8, !dbg !2343, !tbaa !1032
	%21 = icmp eq %struct.buffer_record* %20, null, !dbg !2345
	br i1 %21, label %22, label %26, !dbg !2346
	%23 = tail call fastcc zeroext i1 @load_buffer(), !dbg !2347
	br i1 %23, label %24, label %60, !dbg !2349
	%25 = load %struct.buffer_record*, %struct.buffer_record** @head, align 8, !tbaa !1032
	br label %26, !dbg !2349
	%27 = phi %struct.buffer_record* [ %25, %24 ], [ %20, %19 ]
	%28 = ptrtoint %struct.buffer_record* %27 to i64, !dbg !2351
	%29 = load i64, i64* @current_line, align 8, !dbg !2356, !tbaa !1079
	%30 = getelementptr inbounds %struct.buffer_record, %struct.buffer_record* %27, i64 0, i32 3, !dbg !2358
	%31 = load i64, i64* %30, align 8, !dbg !2358, !tbaa !1984
	%32 = icmp ult i64 %29, %31, !dbg !2359
	br i1 %32, label %33, label %34, !dbg !2360
	store i64 %31, i64* @current_line, align 8, !dbg !2361, !tbaa !1079
	br label %34, !dbg !2362
	%35 = add i64 %31, 1, !dbg !2363
	store i64 %35, i64* %30, align 8, !dbg !2363, !tbaa !1984
	%36 = getelementptr inbounds %struct.buffer_record, %struct.buffer_record* %27, i64 0, i32 7, !dbg !2364
	%37 = load %struct.line*, %struct.line** %36, align 8, !dbg !2364, !tbaa !2365
	tail call void @llvm.dbg.value(metadata %struct.line* %37, i64 0, metadata !385, metadata !1043), !dbg !2366
	%38 = getelementptr inbounds %struct.line, %struct.line* %37, i64 0, i32 2, !dbg !2367
	%39 = load i64, i64* %38, align 8, !dbg !2367, !tbaa !2368
	%40 = getelementptr inbounds %struct.line, %struct.line* %37, i64 0, i32 3, i64 %39, !dbg !2369
	tail call void @llvm.dbg.value(metadata %struct.cstring* %40, i64 0, metadata !384, metadata !1043), !dbg !2370
	%41 = add i64 %39, 1, !dbg !2371
	store i64 %41, i64* %38, align 8, !dbg !2371, !tbaa !2368
	%42 = getelementptr inbounds %struct.line, %struct.line* %37, i64 0, i32 0, !dbg !2372
	%43 = load i64, i64* %42, align 8, !dbg !2372, !tbaa !2373
	%44 = icmp eq i64 %41, %43, !dbg !2374
	br i1 %44, label %45, label %60, !dbg !2375
	%46 = getelementptr inbounds %struct.line, %struct.line* %37, i64 0, i32 4, !dbg !2376
	%47 = bitcast %struct.line** %46 to i64*, !dbg !2376
	%48 = load i64, i64* %47, align 8, !dbg !2376, !tbaa !2327
	%49 = bitcast %struct.line** %36 to i64*, !dbg !2377
	store i64 %48, i64* %49, align 8, !dbg !2377, !tbaa !2365
	%50 = icmp eq i64 %48, 0, !dbg !2378
	br i1 %50, label %56, label %51, !dbg !2379
	%52 = inttoptr i64 %48 to %struct.line*, !dbg !2380
	%53 = getelementptr inbounds %struct.line, %struct.line* %52, i64 0, i32 0, !dbg !2381
	%54 = load i64, i64* %53, align 8, !dbg !2381, !tbaa !2373
	%55 = icmp eq i64 %54, 0, !dbg !2383
	br i1 %55, label %56, label %60, !dbg !2384
	store i64 %28, i64* bitcast (%struct.buffer_record** @remove_line.prev_buf to i64*), align 8, !dbg !2386, !tbaa !1032
	%57 = getelementptr inbounds %struct.buffer_record, %struct.buffer_record* %27, i64 0, i32 8, !dbg !2387
	%58 = bitcast %struct.buffer_record** %57 to i64*, !dbg !2387
	%59 = load i64, i64* %58, align 8, !dbg !2387, !tbaa !2388
	store i64 %59, i64* bitcast (%struct.buffer_record** @head to i64*), align 8, !dbg !2389, !tbaa !1032
	br label %60, !dbg !2390
	%61 = phi %struct.cstring* [ null, %22 ], [ %40, %51 ], [ %40, %56 ], [ %40, %34 ]
	ret %struct.cstring* %61, !dbg !2391
}
define internal fastcc %struct.cstring* @find_line(i64) unnamed_addr #4 !dbg !2392 {
	tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2396, metadata !1043), !dbg !2405
	%2 = load %struct.buffer_record*, %struct.buffer_record** @head, align 8, !dbg !2406, !tbaa !1032
	%3 = icmp eq %struct.buffer_record* %2, null, !dbg !2408
	br i1 %3, label %4, label %8, !dbg !2409
	%5 = tail call fastcc zeroext i1 @load_buffer(), !dbg !2410
	br i1 %5, label %6, label %63, !dbg !2412
	%7 = load %struct.buffer_record*, %struct.buffer_record** @head, align 8, !tbaa !1032
	br label %8, !dbg !2412
	%9 = phi %struct.buffer_record* [ %7, %6 ], [ %2, %1 ], !dbg !2414
	%10 = getelementptr inbounds %struct.buffer_record, %struct.buffer_record* %9, i64 0, i32 2, !dbg !2416
	%11 = load i64, i64* %10, align 8, !dbg !2416, !tbaa !2417
	%12 = icmp ugt i64 %11, %0, !dbg !2418
	br i1 %12, label %63, label %13, !dbg !2419
	tail call void @llvm.dbg.value(metadata %struct.buffer_record* %9, i64 0, metadata !2397, metadata !1043), !dbg !2420
	%14 = icmp eq %struct.buffer_record* %9, null, !dbg !2421
	br i1 %14, label %22, label %15, !dbg !2424
	%16 = getelementptr inbounds %struct.buffer_record, %struct.buffer_record* %9, i64 0, i32 4, !dbg !2425
	%17 = load i64, i64* %16, align 8, !dbg !2425, !tbaa !2426
	%18 = add i64 %17, %11, !dbg !2427
	%19 = icmp ugt i64 %18, %0, !dbg !2428
	br i1 %19, label %24, label %20, !dbg !2429
	br label %44, !dbg !2430
	br label %22, !dbg !2432
	tail call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.57, i64 0, i64 0), i32 618, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__PRETTY_FUNCTION__.find_line, i64 0, i64 0)) #14, !dbg !2432
	unreachable, !dbg !2432
	br label %24, !dbg !2434
	%25 = phi i64 [ %11, %15 ], [ %57, %23 ]
	%26 = phi %struct.buffer_record* [ %9, %15 ], [ %55, %23 ]
	%27 = getelementptr inbounds %struct.buffer_record, %struct.buffer_record* %26, i64 0, i32 6, !dbg !2434
	%28 = sub i64 %0, %25, !dbg !2435
	tail call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !2404, metadata !1043), !dbg !2436
	%29 = load %struct.line*, %struct.line** %27, align 8, !tbaa !1032
	tail call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !2404, metadata !1043), !dbg !2436
	tail call void @llvm.dbg.value(metadata %struct.line* %29, i64 0, metadata !2398, metadata !1043), !dbg !2437
	%30 = icmp ugt i64 %28, 79, !dbg !2438
	br i1 %30, label %31, label %40, !dbg !2440
	br label %32, !dbg !2441
	%33 = phi %struct.line* [ %37, %32 ], [ %29, %31 ]
	%34 = phi i64 [ %36, %32 ], [ %28, %31 ]
	%35 = getelementptr inbounds %struct.line, %struct.line* %33, i64 0, i32 4, !dbg !2441
	%36 = add i64 %34, -80, !dbg !2443
	tail call void @llvm.dbg.value(metadata i64 %36, i64 0, metadata !2404, metadata !1043), !dbg !2436
	%37 = load %struct.line*, %struct.line** %35, align 8, !tbaa !1032
	tail call void @llvm.dbg.value(metadata i64 %36, i64 0, metadata !2404, metadata !1043), !dbg !2436
	tail call void @llvm.dbg.value(metadata %struct.line* %37, i64 0, metadata !2398, metadata !1043), !dbg !2437
	%38 = icmp ugt i64 %36, 79, !dbg !2438
	br i1 %38, label %32, label %39, !dbg !2440, !llvm.loop !2444
	br label %40, !dbg !2447
	%41 = phi i64 [ %28, %24 ], [ %36, %39 ]
	%42 = phi %struct.line* [ %29, %24 ], [ %37, %39 ]
	%43 = getelementptr inbounds %struct.line, %struct.line* %42, i64 0, i32 3, i64 %41, !dbg !2447
	br label %63
	%45 = phi %struct.buffer_record* [ %55, %54 ], [ %9, %20 ]
	%46 = getelementptr inbounds %struct.buffer_record, %struct.buffer_record* %45, i64 0, i32 8, !dbg !2430
	%47 = load %struct.buffer_record*, %struct.buffer_record** %46, align 8, !dbg !2430, !tbaa !2388
	%48 = icmp eq %struct.buffer_record* %47, null, !dbg !2448
	br i1 %48, label %49, label %54, !dbg !2449
	%50 = tail call fastcc zeroext i1 @load_buffer(), !dbg !2450
	br i1 %50, label %51, label %62, !dbg !2452
	%52 = load %struct.buffer_record*, %struct.buffer_record** %46, align 8, !tbaa !2388
	tail call void @llvm.dbg.value(metadata %struct.buffer_record* %52, i64 0, metadata !2397, metadata !1043), !dbg !2420
	tail call void @llvm.dbg.value(metadata %struct.buffer_record* %52, i64 0, metadata !2397, metadata !1043), !dbg !2420
	%53 = icmp eq %struct.buffer_record* %52, null, !dbg !2421
	br i1 %53, label %21, label %54, !dbg !2424, !llvm.loop !2454
	%55 = phi %struct.buffer_record* [ %52, %51 ], [ %47, %44 ]
	%56 = getelementptr inbounds %struct.buffer_record, %struct.buffer_record* %55, i64 0, i32 2
	%57 = load i64, i64* %56, align 8, !tbaa !2417
	%58 = getelementptr inbounds %struct.buffer_record, %struct.buffer_record* %55, i64 0, i32 4, !dbg !2425
	%59 = load i64, i64* %58, align 8, !dbg !2425, !tbaa !2426
	%60 = add i64 %59, %57, !dbg !2427
	%61 = icmp ugt i64 %60, %0, !dbg !2428
	br i1 %61, label %23, label %44, !dbg !2429
	br label %63, !dbg !2457
	%64 = phi %struct.cstring* [ %43, %40 ], [ null, %4 ], [ null, %8 ], [ null, %62 ]
	ret %struct.cstring* %64, !dbg !2457
}
define internal fastcc void @save_line_to_file(%struct.cstring* nocapture readonly) unnamed_addr #4 !dbg !2458 {
	tail call void @llvm.dbg.value(metadata %struct.cstring* %0, i64 0, metadata !2464, metadata !1043), !dbg !2466
	%2 = getelementptr inbounds %struct.cstring, %struct.cstring* %0, i64 0, i32 1, !dbg !2467
	%3 = load i8*, i8** %2, align 8, !dbg !2467, !tbaa !1885
	%4 = getelementptr inbounds %struct.cstring, %struct.cstring* %0, i64 0, i32 0, !dbg !2467
	%5 = load i64, i64* %4, align 8, !dbg !2467, !tbaa !1880
	%6 = load %struct._IO_FILE*, %struct._IO_FILE** @output_stream, align 8, !dbg !2467, !tbaa !1032
	%7 = tail call i64 @fwrite_unlocked(i8* %3, i64 1, i64 %5, %struct._IO_FILE* %6) #10, !dbg !2467
	tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !2465, metadata !1043), !dbg !2468
	%8 = load i64, i64* %4, align 8, !dbg !2469, !tbaa !1880
	%9 = icmp eq i64 %7, %8, !dbg !2471
	br i1 %9, label %16, label %10, !dbg !2472
	%11 = tail call i32* @__errno_location() #5, !dbg !2473
	%12 = load i32, i32* %11, align 4, !dbg !2473, !tbaa !1070
	%13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.25, i64 0, i64 0), i32 5) #10, !dbg !2475
	%14 = load i8*, i8** @output_filename, align 8, !dbg !2477, !tbaa !1032
	%15 = tail call i8* @quotearg_style(i32 4, i8* %14) #10, !dbg !2478
	tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %12, i8* %13, i8* %15) #10, !dbg !2480
	store %struct._IO_FILE* null, %struct._IO_FILE** @output_stream, align 8, !dbg !2482, !tbaa !1032
	tail call fastcc void @cleanup_fatal() #13, !dbg !2483
	unreachable, !dbg !2483
	%17 = load i64, i64* @bytes_written, align 8, !dbg !2484, !tbaa !1079
	%18 = add i64 %17, %7, !dbg !2484
	store i64 %18, i64* @bytes_written, align 8, !dbg !2484, !tbaa !1079
	ret void, !dbg !2485
}
define internal fastcc void @regexp_error(%struct.control* nocapture readonly, i64, i1 zeroext) unnamed_addr #0 !dbg !2486 {
	%4 = alloca [21 x i8], align 16
	tail call void @llvm.dbg.value(metadata %struct.control* %0, i64 0, metadata !2490, metadata !1043), !dbg !2496
	tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2491, metadata !1043), !dbg !2497
	tail call void @llvm.dbg.value(metadata i1 %2, i64 0, metadata !2492, metadata !1124), !dbg !2498
	%5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2499, !tbaa !1032
	%6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.58, i64 0, i64 0), i32 5) #10, !dbg !2499
	%7 = load i8*, i8** @program_name, align 8, !dbg !2499, !tbaa !1032
	%8 = load i8**, i8*** @global_argv, align 8, !dbg !2499, !tbaa !1032
	%9 = getelementptr inbounds %struct.control, %struct.control* %0, i64 0, i32 3, !dbg !2499
	%10 = load i32, i32* %9, align 8, !dbg !2499, !tbaa !1543
	%11 = sext i32 %10 to i64, !dbg !2499
	%12 = getelementptr inbounds i8*, i8** %8, i64 %11, !dbg !2499
	%13 = load i8*, i8** %12, align 8, !dbg !2499, !tbaa !1032
	%14 = tail call i8* @quote(i8* %13) #10, !dbg !2500
	%15 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7, i8* %14) #10, !dbg !2502
	%16 = icmp eq i64 %1, 0, !dbg !2504
	br i1 %16, label %23, label %17, !dbg !2505
	%18 = getelementptr inbounds [21 x i8], [21 x i8]* %4, i64 0, i64 0, !dbg !2506
	call void @llvm.lifetime.start(i64 21, i8* nonnull %18) #10, !dbg !2506
	tail call void @llvm.dbg.declare(metadata [21 x i8]* %4, metadata !2493, metadata !1043), !dbg !2507
	%19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2508, !tbaa !1032
	%20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.59, i64 0, i64 0), i32 5) #10, !dbg !2508
	%21 = call i8* @umaxtostr(i64 %1, i8* nonnull %18) #10, !dbg !2509
	%22 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %19, i32 1, i8* %20, i8* %21) #10, !dbg !2511
	call void @llvm.lifetime.end(i64 21, i8* nonnull %18) #10, !dbg !2513
	br label %26, !dbg !2514
	%24 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2515, !tbaa !1032
	%25 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %24, i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.60, i64 0, i64 0)) #10, !dbg !2515
	br label %26
	br i1 %2, label %37, label %27, !dbg !2516
	%28 = call fastcc %struct.cstring* @remove_line() #10, !dbg !2517
	call void @llvm.dbg.value(metadata %struct.cstring* %28, i64 0, metadata !1864, metadata !1043) #10, !dbg !2521
	%29 = icmp eq %struct.cstring* %28, null, !dbg !2522
	br i1 %29, label %36, label %30, !dbg !2523
	br label %31, !dbg !2524
	%32 = phi %struct.cstring* [ %33, %31 ], [ %28, %30 ]
	call fastcc void @save_line_to_file(%struct.cstring* nonnull %32) #10, !dbg !2524
	%33 = call fastcc %struct.cstring* @remove_line() #10, !dbg !2517
	call void @llvm.dbg.value(metadata %struct.cstring* %33, i64 0, metadata !1864, metadata !1043) #10, !dbg !2521
	%34 = icmp eq %struct.cstring* %33, null, !dbg !2522
	br i1 %34, label %35, label %31, !dbg !2523, !llvm.loop !1872
	br label %36, !dbg !2525
	call fastcc void @close_output_file(), !dbg !2525
	br label %37, !dbg !2526
	call fastcc void @cleanup_fatal() #13, !dbg !2527
	unreachable, !dbg !2527
}
declare i32 @re_search(%struct.re_pattern_buffer*, i8*, i32, i32, i32, %struct.re_registers*) local_unnamed_addr #2
define internal fastcc zeroext i1 @load_buffer() unnamed_addr #4 !dbg !2528 {
	tail call void @llvm.dbg.value(metadata i64 8191, i64 0, metadata !2531, metadata !1043), !dbg !2535
	%1 = load i1, i1* @have_read_eof, align 1
	br i1 %1, label %225, label %2, !dbg !2536
	%3 = load i64, i64* @hold_count, align 8, !dbg !2537, !tbaa !1079
	%4 = icmp ugt i64 %3, 8191, !dbg !2539
	tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2531, metadata !1043), !dbg !2535
	%5 = select i1 %4, i64 %3, i64 8191
	br label %6, !dbg !2535
	%7 = phi i64 [ %180, %192 ], [ %5, %2 ]
	tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !2531, metadata !1043), !dbg !2535
	tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !2540, metadata !1043) #10, !dbg !2550
	tail call void @llvm.dbg.value(metadata i64 8191, i64 0, metadata !2546, metadata !1043) #10, !dbg !2553
	%8 = icmp ugt i64 %7, 8191, !dbg !2554
	br i1 %8, label %9, label %13, !dbg !2555
	%10 = add i64 %7, -6144, !dbg !2556
	tail call void @llvm.dbg.value(metadata i64 %10, i64 0, metadata !2547, metadata !1043) #10, !dbg !2557
	%11 = and i64 %10, -2048, !dbg !2558
	%12 = add i64 %11, 8191, !dbg !2559
	tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !2546, metadata !1043) #10, !dbg !2553
	br label %13, !dbg !2560
	%14 = phi i64 [ %12, %9 ], [ 8191, %6 ]
	tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !2546, metadata !1043) #10, !dbg !2553
	tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !2561, metadata !1043) #10, !dbg !2565
	%15 = tail call noalias i8* @xmalloc(i64 72) #10, !dbg !2567
	%16 = add i64 %14, 1, !dbg !2568
	%17 = tail call noalias i8* @xmalloc(i64 %16) #10, !dbg !2569
	%18 = getelementptr inbounds i8, i8* %15, i64 40, !dbg !2570
	%19 = bitcast i8* %18 to i8**, !dbg !2570
	store i8* %17, i8** %19, align 8, !dbg !2571, !tbaa !2336
	%20 = bitcast i8* %15 to i64*, !dbg !2572
	store i64 %14, i64* %20, align 8, !dbg !2573, !tbaa !2574
	%21 = getelementptr inbounds i8, i8* %15, i64 48, !dbg !2575
	tail call void @llvm.memset.p0i8.i64(i8* %21, i8 0, i64 16, i32 8, i1 false) #10, !dbg !2576
	%22 = getelementptr inbounds i8, i8* %15, i64 32, !dbg !2577
	%23 = bitcast i8* %22 to i64*, !dbg !2577
	store i64 0, i64* %23, align 8, !dbg !2578, !tbaa !2426
	%24 = getelementptr inbounds i8, i8* %15, i64 8, !dbg !2579
	%25 = bitcast i8* %24 to i64*, !dbg !2579
	store i64 0, i64* %25, align 8, !dbg !2580, !tbaa !2581
	%26 = load i64, i64* @last_line_number, align 8, !dbg !2582, !tbaa !1079
	%27 = add i64 %26, 1, !dbg !2583
	%28 = getelementptr inbounds i8, i8* %15, i64 24, !dbg !2584
	%29 = bitcast i8* %28 to i64*, !dbg !2584
	store i64 %27, i64* %29, align 8, !dbg !2585, !tbaa !1984
	%30 = getelementptr inbounds i8, i8* %15, i64 16, !dbg !2586
	%31 = bitcast i8* %30 to i64*, !dbg !2586
	store i64 %27, i64* %31, align 8, !dbg !2587, !tbaa !2417
	%32 = getelementptr inbounds i8, i8* %15, i64 64, !dbg !2588
	%33 = bitcast i8* %32 to %struct.buffer_record**, !dbg !2588
	store %struct.buffer_record* null, %struct.buffer_record** %33, align 8, !dbg !2589, !tbaa !2388
	tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !2532, metadata !1043), !dbg !2590
	tail call void @llvm.dbg.value(metadata i8* %17, i64 0, metadata !2534, metadata !1043), !dbg !2591
	%34 = load i64, i64* @hold_count, align 8, !dbg !2592, !tbaa !1079
	%35 = icmp eq i64 %34, 0, !dbg !2592
	br i1 %35, label %41, label %36, !dbg !2594
	%37 = load i8*, i8** @hold_area, align 8, !dbg !2595, !tbaa !1032
	tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %37, i64 %34, i32 1, i1 false), !dbg !2597
	%38 = getelementptr inbounds i8, i8* %17, i64 %34, !dbg !2598
	tail call void @llvm.dbg.value(metadata i8* %38, i64 0, metadata !2534, metadata !1043), !dbg !2591
	store i64 %34, i64* %25, align 8, !dbg !2599, !tbaa !2581
	%39 = sub i64 %14, %34, !dbg !2600
	tail call void @llvm.dbg.value(metadata i64 %39, i64 0, metadata !2532, metadata !1043), !dbg !2590
	store i64 0, i64* @hold_count, align 8, !dbg !2601, !tbaa !1079
	tail call void @llvm.dbg.value(metadata i8* %38, i64 0, metadata !2534, metadata !1043), !dbg !2591
	tail call void @llvm.dbg.value(metadata i64 %39, i64 0, metadata !2532, metadata !1043), !dbg !2590
	tail call void @llvm.dbg.value(metadata i8* %38, i64 0, metadata !2602, metadata !1043) #10, !dbg !2609
	tail call void @llvm.dbg.value(metadata i64 %39, i64 0, metadata !2607, metadata !1043) #10, !dbg !2611
	%40 = icmp eq i64 %39, 0, !dbg !2612
	br i1 %40, label %50, label %41, !dbg !2614
	%42 = phi i8* [ %38, %36 ], [ %17, %13 ]
	%43 = phi i64 [ %39, %36 ], [ %14, %13 ]
	%44 = tail call i64 @safe_read(i32 0, i8* %42, i64 %43) #10, !dbg !2615
	tail call void @llvm.dbg.value(metadata i64 %44, i64 0, metadata !2608, metadata !1043) #10, !dbg !2616
	switch i64 %44, label %50 [
		i64 0, label %45
		i64 -1, label %46
	], !dbg !2617
	store i1 true, i1* @have_read_eof, align 1
	br label %50, !dbg !2618
	%47 = tail call i32* @__errno_location() #5, !dbg !2619
	%48 = load i32, i32* %47, align 4, !dbg !2619, !tbaa !1070
	%49 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i32 5) #10, !dbg !2622
	tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %48, i8* %49) #10, !dbg !2624
	tail call fastcc void @cleanup_fatal() #14, !dbg !2626
	unreachable, !dbg !2626
	%51 = phi i64 [ 0, %36 ], [ %44, %41 ], [ 0, %45 ]
	%52 = load i64, i64* %25, align 8, !dbg !2627, !tbaa !2581
	%53 = add i64 %52, %51, !dbg !2627
	store i64 %53, i64* %25, align 8, !dbg !2627, !tbaa !2581
	%54 = icmp eq i64 %53, 0, !dbg !2628
	br i1 %54, label %173, label %55, !dbg !2641
	tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2638, metadata !1043) #10, !dbg !2642
	%56 = load i8*, i8** %19, align 8, !dbg !2643, !tbaa !2336
	tail call void @llvm.dbg.value(metadata i8* %56, i64 0, metadata !2635, metadata !1043) #10, !dbg !2644
	tail call void @llvm.dbg.value(metadata i64 %53, i64 0, metadata !2637, metadata !1043) #10, !dbg !2645
	tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2638, metadata !1043) #10, !dbg !2642
	tail call void @llvm.dbg.value(metadata i64 %53, i64 0, metadata !2637, metadata !1043) #10, !dbg !2645
	tail call void @llvm.dbg.value(metadata i8* %56, i64 0, metadata !2635, metadata !1043) #10, !dbg !2644
	%57 = tail call i8* @memchr(i8* %56, i32 10, i64 %53) #15, !dbg !2646
	tail call void @llvm.dbg.value(metadata i8* %57, i64 0, metadata !2636, metadata !1043) #10, !dbg !2648
	%58 = icmp eq i8* %57, null, !dbg !2649
	br i1 %58, label %115, label %59, !dbg !2651
	%60 = bitcast i8* %21 to %struct.line**
	%61 = getelementptr inbounds i8, i8* %15, i64 56
	%62 = bitcast i8* %61 to %struct.line**
	%63 = bitcast i8* %61 to i8**
	%64 = bitcast i8* %21 to i8**
	%65 = bitcast i8* %61 to i64*
	br label %66, !dbg !2651
	%67 = phi i8* [ %57, %59 ], [ %111, %98 ]
	%68 = phi i64 [ 0, %59 ], [ %110, %98 ]
	%69 = phi i64 [ %53, %59 ], [ %108, %98 ]
	%70 = phi i8* [ %56, %59 ], [ %109, %98 ]
	%71 = ptrtoint i8* %67 to i64, !dbg !2652
	%72 = ptrtoint i8* %70 to i64, !dbg !2652
	%73 = sub i64 %71, %72, !dbg !2652
	%74 = add nsw i64 %73, 1, !dbg !2653
	tail call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !2639, metadata !1043) #10, !dbg !2654
	tail call void @llvm.dbg.value(metadata i8* %70, i64 0, metadata !2655, metadata !1043) #10, !dbg !2663
	tail call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !2661, metadata !1043) #10, !dbg !2665
	%75 = load %struct.line*, %struct.line** %60, align 8, !dbg !2666, !tbaa !2322
	%76 = icmp eq %struct.line* %75, null, !dbg !2668
	br i1 %76, label %79, label %77, !dbg !2669
	%78 = load %struct.line*, %struct.line** %62, align 8, !tbaa !2365
	br label %84, !dbg !2669
	%80 = tail call noalias i8* @xmalloc(i64 1312) #10, !dbg !2670
	%81 = getelementptr inbounds i8, i8* %80, i64 1304, !dbg !2677
	%82 = bitcast i8* %81 to %struct.line**, !dbg !2677
	store %struct.line* null, %struct.line** %82, align 8, !dbg !2678, !tbaa !2327
	tail call void @llvm.memset.p0i8.i64(i8* %80, i8 0, i64 24, i32 8, i1 false) #10, !dbg !2679
	store i8* %80, i8** %63, align 8, !dbg !2686, !tbaa !2365
	store i8* %80, i8** %64, align 8, !dbg !2687, !tbaa !2322
	%83 = bitcast i8* %80 to %struct.line*, !dbg !2688
	br label %84, !dbg !2688
	%85 = phi %struct.line* [ %78, %77 ], [ %83, %79 ]
	%86 = getelementptr inbounds %struct.line, %struct.line* %85, i64 0, i32 0, !dbg !2689
	%87 = load i64, i64* %86, align 8, !dbg !2689, !tbaa !2373
	%88 = icmp eq i64 %87, 80, !dbg !2691
	br i1 %88, label %89, label %98, !dbg !2692
	%90 = tail call noalias i8* @xmalloc(i64 1312) #10, !dbg !2693
	%91 = getelementptr inbounds i8, i8* %90, i64 1304, !dbg !2696
	%92 = bitcast i8* %91 to %struct.line**, !dbg !2696
	store %struct.line* null, %struct.line** %92, align 8, !dbg !2697, !tbaa !2327
	tail call void @llvm.memset.p0i8.i64(i8* %90, i8 0, i64 24, i32 8, i1 false) #10, !dbg !2698
	%93 = load %struct.line*, %struct.line** %62, align 8, !dbg !2700, !tbaa !2365
	%94 = getelementptr inbounds %struct.line, %struct.line* %93, i64 0, i32 4, !dbg !2701
	%95 = bitcast %struct.line** %94 to i8**, !dbg !2702
	store i8* %90, i8** %95, align 8, !dbg !2702, !tbaa !2327
	%96 = ptrtoint i8* %90 to i64, !dbg !2703
	store i64 %96, i64* %65, align 8, !dbg !2704, !tbaa !2365
	%97 = bitcast i8* %90 to %struct.line*, !dbg !2705
	br label %98, !dbg !2705
	%99 = phi %struct.line* [ %97, %89 ], [ %85, %84 ], !dbg !2706
	tail call void @llvm.dbg.value(metadata %struct.line* %99, i64 0, metadata !2662, metadata !1043) #10, !dbg !2707
	%100 = getelementptr inbounds %struct.line, %struct.line* %99, i64 0, i32 1, !dbg !2708
	%101 = load i64, i64* %100, align 8, !dbg !2708, !tbaa !2709
	%102 = getelementptr inbounds %struct.line, %struct.line* %99, i64 0, i32 3, i64 %101, i32 1, !dbg !2710
	store i8* %70, i8** %102, align 8, !dbg !2711, !tbaa !1885
	%103 = getelementptr inbounds %struct.line, %struct.line* %99, i64 0, i32 3, i64 %101, i32 0, !dbg !2712
	store i64 %74, i64* %103, align 8, !dbg !2713, !tbaa !1880
	%104 = bitcast %struct.line* %99 to <2 x i64>*, !dbg !2714
	%105 = load <2 x i64>, <2 x i64>* %104, align 8, !dbg !2714, !tbaa !1079
	%106 = add <2 x i64> %105, <i64 1, i64 1>, !dbg !2714
	%107 = bitcast %struct.line* %99 to <2 x i64>*, !dbg !2714
	store <2 x i64> %106, <2 x i64>* %107, align 8, !dbg !2714, !tbaa !1079
	%108 = sub i64 %69, %74, !dbg !2715
	tail call void @llvm.dbg.value(metadata i64 %108, i64 0, metadata !2637, metadata !1043) #10, !dbg !2645
	%109 = getelementptr inbounds i8, i8* %67, i64 1, !dbg !2716
	tail call void @llvm.dbg.value(metadata i8* %109, i64 0, metadata !2635, metadata !1043) #10, !dbg !2644
	%110 = add i64 %68, 1, !dbg !2717
	tail call void @llvm.dbg.value(metadata i64 %110, i64 0, metadata !2638, metadata !1043) #10, !dbg !2642
	tail call void @llvm.dbg.value(metadata i64 %110, i64 0, metadata !2638, metadata !1043) #10, !dbg !2642
	tail call void @llvm.dbg.value(metadata i64 %108, i64 0, metadata !2637, metadata !1043) #10, !dbg !2645
	tail call void @llvm.dbg.value(metadata i8* %109, i64 0, metadata !2635, metadata !1043) #10, !dbg !2644
	%111 = tail call i8* @memchr(i8* %109, i32 10, i64 %108) #15, !dbg !2646
	tail call void @llvm.dbg.value(metadata i8* %111, i64 0, metadata !2636, metadata !1043) #10, !dbg !2648
	%112 = icmp eq i8* %111, null, !dbg !2649
	br i1 %112, label %113, label %66, !dbg !2651, !llvm.loop !2718
	%114 = icmp eq i64 %108, 0, !dbg !2721
	br i1 %114, label %167, label %115, !dbg !2723
	%116 = phi i64 [ %110, %113 ], [ 0, %55 ]
	%117 = phi i64 [ %108, %113 ], [ %53, %55 ]
	%118 = phi i8* [ %109, %113 ], [ %56, %55 ]
	%119 = load i1, i1* @have_read_eof, align 1
	br i1 %119, label %120, label %164, !dbg !2724
	tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !2655, metadata !1043) #10, !dbg !2726
	tail call void @llvm.dbg.value(metadata i64 undef, i64 0, metadata !2661, metadata !1043) #10, !dbg !2730
	%121 = bitcast i8* %21 to %struct.line**, !dbg !2731
	%122 = load %struct.line*, %struct.line** %121, align 8, !dbg !2731, !tbaa !2322
	%123 = icmp eq %struct.line* %122, null, !dbg !2732
	br i1 %123, label %128, label %124, !dbg !2733
	%125 = getelementptr inbounds i8, i8* %15, i64 56
	%126 = bitcast i8* %125 to %struct.line**
	%127 = load %struct.line*, %struct.line** %126, align 8, !tbaa !2365
	br label %137, !dbg !2733
	%129 = tail call noalias i8* @xmalloc(i64 1312) #10, !dbg !2734
	%130 = getelementptr inbounds i8, i8* %129, i64 1304, !dbg !2736
	%131 = bitcast i8* %130 to %struct.line**, !dbg !2736
	store %struct.line* null, %struct.line** %131, align 8, !dbg !2737, !tbaa !2327
	tail call void @llvm.memset.p0i8.i64(i8* %129, i8 0, i64 24, i32 8, i1 false) #10, !dbg !2738
	%132 = getelementptr inbounds i8, i8* %15, i64 56, !dbg !2740
	%133 = bitcast i8* %132 to %struct.line**, !dbg !2740
	%134 = bitcast i8* %132 to i8**, !dbg !2741
	store i8* %129, i8** %134, align 8, !dbg !2741, !tbaa !2365
	%135 = bitcast i8* %21 to i8**, !dbg !2742
	store i8* %129, i8** %135, align 8, !dbg !2742, !tbaa !2322
	%136 = bitcast i8* %129 to %struct.line*, !dbg !2743
	br label %137, !dbg !2743
	%138 = phi %struct.line** [ %126, %124 ], [ %133, %128 ], !dbg !2744
	%139 = phi %struct.line* [ %127, %124 ], [ %136, %128 ]
	%140 = getelementptr inbounds %struct.line, %struct.line* %139, i64 0, i32 0, !dbg !2745
	%141 = load i64, i64* %140, align 8, !dbg !2745, !tbaa !2373
	%142 = icmp eq i64 %141, 80, !dbg !2746
	br i1 %142, label %143, label %153, !dbg !2747
	%144 = tail call noalias i8* @xmalloc(i64 1312) #10, !dbg !2748
	%145 = getelementptr inbounds i8, i8* %144, i64 1304, !dbg !2750
	%146 = bitcast i8* %145 to %struct.line**, !dbg !2750
	store %struct.line* null, %struct.line** %146, align 8, !dbg !2751, !tbaa !2327
	tail call void @llvm.memset.p0i8.i64(i8* %144, i8 0, i64 24, i32 8, i1 false) #10, !dbg !2752
	%147 = load %struct.line*, %struct.line** %138, align 8, !dbg !2754, !tbaa !2365
	%148 = getelementptr inbounds %struct.line, %struct.line* %147, i64 0, i32 4, !dbg !2755
	%149 = bitcast %struct.line** %148 to i8**, !dbg !2756
	store i8* %144, i8** %149, align 8, !dbg !2756, !tbaa !2327
	%150 = ptrtoint i8* %144 to i64, !dbg !2757
	%151 = bitcast %struct.line** %138 to i64*, !dbg !2758
	store i64 %150, i64* %151, align 8, !dbg !2758, !tbaa !2365
	%152 = bitcast i8* %144 to %struct.line*, !dbg !2759
	br label %153, !dbg !2759
	%154 = phi %struct.line* [ %152, %143 ], [ %139, %137 ], !dbg !2760
	tail call void @llvm.dbg.value(metadata %struct.line* %154, i64 0, metadata !2662, metadata !1043) #10, !dbg !2761
	%155 = getelementptr inbounds %struct.line, %struct.line* %154, i64 0, i32 1, !dbg !2762
	%156 = load i64, i64* %155, align 8, !dbg !2762, !tbaa !2709
	%157 = getelementptr inbounds %struct.line, %struct.line* %154, i64 0, i32 3, i64 %156, i32 1, !dbg !2763
	store i8* %118, i8** %157, align 8, !dbg !2764, !tbaa !1885
	%158 = getelementptr inbounds %struct.line, %struct.line* %154, i64 0, i32 3, i64 %156, i32 0, !dbg !2765
	store i64 %117, i64* %158, align 8, !dbg !2766, !tbaa !1880
	%159 = bitcast %struct.line* %154 to <2 x i64>*, !dbg !2767
	%160 = load <2 x i64>, <2 x i64>* %159, align 8, !dbg !2767, !tbaa !1079
	%161 = add <2 x i64> %160, <i64 1, i64 1>, !dbg !2767
	%162 = bitcast %struct.line* %154 to <2 x i64>*, !dbg !2767
	store <2 x i64> %161, <2 x i64>* %162, align 8, !dbg !2767, !tbaa !1079
	%163 = add i64 %116, 1, !dbg !2768
	tail call void @llvm.dbg.value(metadata i64 %163, i64 0, metadata !2638, metadata !1043) #10, !dbg !2642
	br label %167, !dbg !2769
	%165 = tail call i8* @xmemdup(i8* %118, i64 %117) #10, !dbg !2770
	tail call void @llvm.dbg.value(metadata i8* %165, i64 0, metadata !2771, metadata !1043) #10, !dbg !2777
	tail call void @llvm.dbg.value(metadata i64 undef, i64 0, metadata !2776, metadata !1043) #10, !dbg !2780
	%166 = load i8*, i8** @hold_area, align 8, !dbg !2781, !tbaa !1032
	tail call void @free(i8* %166) #10, !dbg !2782
	store i8* %165, i8** @hold_area, align 8, !dbg !2783, !tbaa !1032
	store i64 %117, i64* @hold_count, align 8, !dbg !2784, !tbaa !1079
	br label %167
	%168 = phi i64 [ %163, %153 ], [ %116, %164 ], [ %110, %113 ]
	tail call void @llvm.dbg.value(metadata i64 %168, i64 0, metadata !2638, metadata !1043) #10, !dbg !2642
	store i64 %168, i64* %23, align 8, !dbg !2785, !tbaa !2426
	%169 = load i64, i64* @last_line_number, align 8, !dbg !2786, !tbaa !1079
	%170 = add i64 %169, 1, !dbg !2787
	store i64 %170, i64* %31, align 8, !dbg !2788, !tbaa !2417
	store i64 %170, i64* %29, align 8, !dbg !2789, !tbaa !1984
	%171 = add i64 %169, %168, !dbg !2790
	store i64 %171, i64* @last_line_number, align 8, !dbg !2790, !tbaa !1079
	tail call void @llvm.dbg.value(metadata i64 %168, i64 0, metadata !2533, metadata !1043), !dbg !2791
	%172 = icmp eq i64 %168, 0, !dbg !2792
	br i1 %172, label %173, label %194, !dbg !2794
	%174 = load i1, i1* @have_read_eof, align 1
	br i1 %174, label %211, label %175, !dbg !2795
	%176 = load i64, i64* %20, align 8, !dbg !2797, !tbaa !2574
	%177 = icmp ugt i64 %176, 4611686018427387903, !dbg !2797
	br i1 %177, label %178, label %179, !dbg !2799
	tail call void @xalloc_die() #13, !dbg !2800
	unreachable, !dbg !2800
	%180 = shl i64 %176, 1, !dbg !2801
	tail call void @llvm.dbg.value(metadata i64 %180, i64 0, metadata !2531, metadata !1043), !dbg !2535
	%181 = bitcast i8* %21 to %struct.line**, !dbg !2802
	%182 = load %struct.line*, %struct.line** %181, align 8, !dbg !2802, !tbaa !2322
	tail call void @llvm.dbg.value(metadata %struct.line* %182, i64 0, metadata !2313, metadata !1043) #10, !dbg !2804
	tail call void @llvm.dbg.value(metadata %struct.line* %182, i64 0, metadata !2313, metadata !1043) #10, !dbg !2804
	%183 = icmp eq %struct.line* %182, null, !dbg !2805
	br i1 %183, label %192, label %184, !dbg !2805
	br label %185
	%186 = phi %struct.line* [ %189, %185 ], [ %182, %184 ]
	%187 = bitcast %struct.line* %186 to i8*
	%188 = getelementptr inbounds %struct.line, %struct.line* %186, i64 0, i32 4, !dbg !2806
	%189 = load %struct.line*, %struct.line** %188, align 8, !dbg !2806, !tbaa !2327
	tail call void @llvm.dbg.value(metadata %struct.line* %189, i64 0, metadata !2314, metadata !1043) #10, !dbg !2807
	tail call void @free(i8* %187) #10, !dbg !2808
	tail call void @llvm.dbg.value(metadata %struct.line* %189, i64 0, metadata !2313, metadata !1043) #10, !dbg !2804
	tail call void @llvm.dbg.value(metadata %struct.line* %189, i64 0, metadata !2313, metadata !1043) #10, !dbg !2804
	%190 = icmp eq %struct.line* %189, null, !dbg !2805
	br i1 %190, label %191, label %185, !dbg !2805, !llvm.loop !2331
	br label %192, !dbg !2809
	store %struct.line* null, %struct.line** %181, align 8, !dbg !2809, !tbaa !2322
	%193 = load i8*, i8** %19, align 8, !dbg !2810, !tbaa !2336
	tail call void @free(i8* %193) #10, !dbg !2811
	tail call void @free(i8* %15) #10, !dbg !2812
	br label %6, !dbg !2813, !llvm.loop !2815
	store %struct.buffer_record* null, %struct.buffer_record** %33, align 8, !dbg !2818, !tbaa !2388
	%195 = bitcast i8* %21 to i64*, !dbg !2825
	%196 = load i64, i64* %195, align 8, !dbg !2825, !tbaa !2322
	%197 = getelementptr inbounds i8, i8* %15, i64 56, !dbg !2826
	%198 = bitcast i8* %197 to i64*, !dbg !2827
	store i64 %196, i64* %198, align 8, !dbg !2827, !tbaa !2365
	%199 = load %struct.buffer_record*, %struct.buffer_record** @head, align 8, !dbg !2828, !tbaa !1032
	%200 = icmp eq %struct.buffer_record* %199, null, !dbg !2830
	br i1 %200, label %209, label %201, !dbg !2831
	br label %202, !dbg !2832
	%203 = phi %struct.buffer_record* [ %205, %202 ], [ %199, %201 ]
	tail call void @llvm.dbg.value(metadata %struct.buffer_record* %203, i64 0, metadata !2822, metadata !1043), !dbg !2832
	%204 = getelementptr inbounds %struct.buffer_record, %struct.buffer_record* %203, i64 0, i32 8, !dbg !2833
	%205 = load %struct.buffer_record*, %struct.buffer_record** %204, align 8, !dbg !2833, !tbaa !2388
	%206 = icmp eq %struct.buffer_record* %205, null, !dbg !2838
	br i1 %206, label %207, label %202, !dbg !2838, !llvm.loop !2840
	%208 = bitcast %struct.buffer_record** %204 to i8**
	br label %209
	%210 = phi i8** [ bitcast (%struct.buffer_record** @head to i8**), %194 ], [ %208, %207 ]
	store i8* %15, i8** %210, align 8, !tbaa !1032
	br label %225, !dbg !2843
	%212 = bitcast i8* %21 to %struct.line**, !dbg !2844
	%213 = load %struct.line*, %struct.line** %212, align 8, !dbg !2844, !tbaa !2322
	tail call void @llvm.dbg.value(metadata %struct.line* %213, i64 0, metadata !2313, metadata !1043) #10, !dbg !2847
	tail call void @llvm.dbg.value(metadata %struct.line* %213, i64 0, metadata !2313, metadata !1043) #10, !dbg !2847
	%214 = icmp eq %struct.line* %213, null, !dbg !2848
	br i1 %214, label %223, label %215, !dbg !2848
	br label %216
	%217 = phi %struct.line* [ %220, %216 ], [ %213, %215 ]
	%218 = bitcast %struct.line* %217 to i8*
	%219 = getelementptr inbounds %struct.line, %struct.line* %217, i64 0, i32 4, !dbg !2849
	%220 = load %struct.line*, %struct.line** %219, align 8, !dbg !2849, !tbaa !2327
	tail call void @llvm.dbg.value(metadata %struct.line* %220, i64 0, metadata !2314, metadata !1043) #10, !dbg !2850
	tail call void @free(i8* %218) #10, !dbg !2851
	tail call void @llvm.dbg.value(metadata %struct.line* %220, i64 0, metadata !2313, metadata !1043) #10, !dbg !2847
	tail call void @llvm.dbg.value(metadata %struct.line* %220, i64 0, metadata !2313, metadata !1043) #10, !dbg !2847
	%221 = icmp eq %struct.line* %220, null, !dbg !2848
	br i1 %221, label %222, label %216, !dbg !2848, !llvm.loop !2331
	br label %223, !dbg !2852
	store %struct.line* null, %struct.line** %212, align 8, !dbg !2852, !tbaa !2322
	%224 = load i8*, i8** %19, align 8, !dbg !2853, !tbaa !2336
	tail call void @free(i8* %224) #10, !dbg !2854
	tail call void @free(i8* %15) #10, !dbg !2855
	br label %225
	%226 = phi i1 [ false, %0 ], [ false, %223 ], [ true, %209 ]
	ret i1 %226, !dbg !2856
}
define internal fastcc void @handle_line_error(%struct.control* nocapture readonly, i64) unnamed_addr #0 !dbg !2857 {
	%3 = alloca [21 x i8], align 16
	tail call void @llvm.dbg.value(metadata %struct.control* %0, i64 0, metadata !2859, metadata !1043), !dbg !2862
	tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2860, metadata !1043), !dbg !2863
	%4 = getelementptr inbounds [21 x i8], [21 x i8]* %3, i64 0, i64 0, !dbg !2864
	call void @llvm.lifetime.start(i64 21, i8* nonnull %4) #10, !dbg !2864
	tail call void @llvm.dbg.declare(metadata [21 x i8]* %3, metadata !2861, metadata !1043), !dbg !2865
	%5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2866, !tbaa !1032
	%6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.63, i64 0, i64 0), i32 5) #10, !dbg !2866
	%7 = load i8*, i8** @program_name, align 8, !dbg !2866, !tbaa !1032
	%8 = getelementptr inbounds %struct.control, %struct.control* %0, i64 0, i32 1, !dbg !2866
	%9 = load i64, i64* %8, align 8, !dbg !2866, !tbaa !1673
	%10 = call i8* @umaxtostr(i64 %9, i8* nonnull %4) #10, !dbg !2867
	%11 = call i8* @quote(i8* %10) #10, !dbg !2869
	%12 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7, i8* %11) #10, !dbg !2871
	%13 = icmp eq i64 %1, 0, !dbg !2873
	%14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1032
	br i1 %13, label %19, label %15, !dbg !2875
	%16 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.59, i64 0, i64 0), i32 5) #10, !dbg !2876
	%17 = call i8* @umaxtostr(i64 %1, i8* nonnull %4) #10, !dbg !2877
	%18 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %14, i32 1, i8* %16, i8* %17) #10, !dbg !2879
	br label %21, !dbg !2876
	%20 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %14, i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.60, i64 0, i64 0)) #10, !dbg !2881
	br label %21
	call fastcc void @cleanup_fatal() #13, !dbg !2882
	unreachable, !dbg !2882
}
declare i32 @close(i32) local_unnamed_addr #2
declare i8* @memchr(i8*, i32, i64) local_unnamed_addr #8
declare void @free(i8* nocapture) local_unnamed_addr #1
declare i64 @fwrite_unlocked(i8*, i64, i64, %struct._IO_FILE*) local_unnamed_addr #2
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #6
declare void (i32)* @signal(i32, void (i32)*) local_unnamed_addr #1
declare i32 @raise(i32) local_unnamed_addr #1
declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #2
declare i32 @fputs_unlocked(i8*, %struct._IO_FILE*) local_unnamed_addr #2
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #8
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #4 !dbg !2883 {
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2885, metadata !1043), !dbg !2886
	store i8* %0, i8** @file_name, align 8, !dbg !2887, !tbaa !1032
	ret void, !dbg !2888
}
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #4 !dbg !2889 {
	%2 = zext i1 %0 to i8
	tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !2891, metadata !1124), !dbg !2892
	store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !2893, !tbaa !1128
	ret void, !dbg !2894
}
define void @close_stdout() #4 !dbg !2895 {
	%1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2900, !tbaa !1032
	%2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #10, !dbg !2901
	%3 = icmp eq i32 %2, 0, !dbg !2902
	br i1 %3, label %21, label %4, !dbg !2903
	%5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !2904, !tbaa !1128, !range !1130
	%6 = icmp eq i8 %5, 0, !dbg !2904
	%7 = tail call i32* @__errno_location() #5, !dbg !2906
	br i1 %6, label %11, label %8, !dbg !2908
	%9 = load i32, i32* %7, align 4, !dbg !2909, !tbaa !1070
	%10 = icmp eq i32 %9, 32, !dbg !2911
	br i1 %10, label %21, label %11, !dbg !2912
	%12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.66, i64 0, i64 0), i32 5) #10, !dbg !2914
	tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !2897, metadata !1043), !dbg !2915
	%13 = load i8*, i8** @file_name, align 8, !dbg !2916, !tbaa !1032
	%14 = icmp eq i8* %13, null, !dbg !2916
	%15 = load i32, i32* %7, align 4, !tbaa !1070
	br i1 %14, label %18, label %16, !dbg !2917
	%17 = tail call i8* @quotearg_colon(i8* nonnull %13) #10, !dbg !2918
	tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.67, i64 0, i64 0), i8* %17, i8* %12) #10, !dbg !2920
	br label %19, !dbg !2922
	tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.68, i64 0, i64 0), i8* %12) #10, !dbg !2923
	br label %19
	%20 = load volatile i32, i32* @exit_failure, align 4, !dbg !2924, !tbaa !1070
	tail call void @_exit(i32 %20) #14, !dbg !2925
	unreachable, !dbg !2925
	%22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2926, !tbaa !1032
	%23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #10, !dbg !2928
	%24 = icmp eq i32 %23, 0, !dbg !2929
	br i1 %24, label %27, label %25, !dbg !2930
	%26 = load volatile i32, i32* @exit_failure, align 4, !dbg !2931, !tbaa !1070
	tail call void @_exit(i32 %26) #14, !dbg !2932
	unreachable, !dbg !2932
	ret void, !dbg !2933
}
declare void @_exit(i32) local_unnamed_addr #9
define i32 @fd_reopen(i32, i8* nocapture readonly, i32, i32) local_unnamed_addr #4 !dbg !2934 {
	tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2941, metadata !1043), !dbg !2950
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2942, metadata !1043), !dbg !2951
	tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !2943, metadata !1043), !dbg !2952
	tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !2944, metadata !1043), !dbg !2953
	%5 = tail call i32 (i8*, i32, ...) @open(i8* %1, i32 %2, i32 %3) #10, !dbg !2954
	tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !2945, metadata !1043), !dbg !2955
	%6 = icmp eq i32 %5, %0, !dbg !2956
	%7 = icmp slt i32 %5, 0, !dbg !2957
	%8 = or i1 %6, %7, !dbg !2959
	br i1 %8, label %14, label %9, !dbg !2959
	%10 = tail call i32 @dup2(i32 %5, i32 %0) #10, !dbg !2960
	tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2946, metadata !1043), !dbg !2961
	%11 = tail call i32* @__errno_location() #5, !dbg !2962
	%12 = load i32, i32* %11, align 4, !dbg !2962, !tbaa !1070
	tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !2949, metadata !1043), !dbg !2963
	%13 = tail call i32 @close(i32 %5) #10, !dbg !2964
	store i32 %12, i32* %11, align 4, !dbg !2965, !tbaa !1070
	br label %14
	%15 = phi i32 [ %10, %9 ], [ %5, %4 ]
	ret i32 %15, !dbg !2966
}
declare i32 @open(i8* nocapture readonly, i32, ...) local_unnamed_addr #2
declare i32 @dup2(i32, i32) local_unnamed_addr #1
define %struct._IO_FILE* @fopen_safer(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #4 !dbg !2967 {
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3012, metadata !1043), !dbg !3027
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3013, metadata !1043), !dbg !3028
	%3 = tail call %struct._IO_FILE* @fopen(i8* %0, i8* %1), !dbg !3029
	tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %3, i64 0, metadata !3014, metadata !1043), !dbg !3030
	%4 = icmp eq %struct._IO_FILE* %3, null, !dbg !3031
	br i1 %4, label %25, label %5, !dbg !3032
	%6 = tail call i32 @fileno(%struct._IO_FILE* nonnull %3) #10, !dbg !3033
	tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !3015, metadata !1043), !dbg !3034
	%7 = icmp ult i32 %6, 3, !dbg !3035
	br i1 %7, label %8, label %25, !dbg !3035
	%9 = tail call i32 @dup_safer(i32 %6) #10, !dbg !3036
	tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !3018, metadata !1043), !dbg !3037
	%10 = icmp slt i32 %9, 0, !dbg !3038
	br i1 %10, label %11, label %15, !dbg !3039
	%12 = tail call i32* @__errno_location() #5, !dbg !3040
	%13 = load i32, i32* %12, align 4, !dbg !3040, !tbaa !1070
	tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !3021, metadata !1043), !dbg !3041
	%14 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %3) #10, !dbg !3042
	store i32 %13, i32* %12, align 4, !dbg !3043, !tbaa !1070
	br label %25
	%16 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %3) #10, !dbg !3044
	%17 = icmp eq i32 %16, 0, !dbg !3045
	br i1 %17, label %18, label %21, !dbg !3046
	%19 = tail call %struct._IO_FILE* @fdopen(i32 %9, i8* %1) #10, !dbg !3047
	tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %19, i64 0, metadata !3014, metadata !1043), !dbg !3030
	%20 = icmp eq %struct._IO_FILE* %19, null, !dbg !3049
	br i1 %20, label %21, label %25, !dbg !3050
	%22 = tail call i32* @__errno_location() #5, !dbg !3052
	%23 = load i32, i32* %22, align 4, !dbg !3052, !tbaa !1070
	tail call void @llvm.dbg.value(metadata i32 %23, i64 0, metadata !3024, metadata !1043), !dbg !3053
	%24 = tail call i32 @close(i32 %9) #10, !dbg !3054
	store i32 %23, i32* %22, align 4, !dbg !3055, !tbaa !1070
	br label %25
	%26 = phi %struct._IO_FILE* [ null, %11 ], [ null, %21 ], [ null, %2 ], [ %19, %18 ], [ %3, %5 ]
	ret %struct._IO_FILE* %26, !dbg !3056
}
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #1
declare i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #1
declare noalias %struct._IO_FILE* @fdopen(i32, i8* nocapture readonly) local_unnamed_addr #1
define i8* @umaxtostr(i64, i8*) local_unnamed_addr #4 !dbg !3057 {
	tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !3062, metadata !1043), !dbg !3065
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3063, metadata !1043), !dbg !3066
	%3 = getelementptr inbounds i8, i8* %1, i64 20, !dbg !3067
	tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3064, metadata !1043), !dbg !3068
	store i8 0, i8* %3, align 1, !dbg !3069, !tbaa !1279
	br label %4, !dbg !3070
	%5 = phi i64 [ %0, %2 ], [ %11, %4 ]
	%6 = phi i8* [ %3, %2 ], [ %10, %4 ]
	tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3064, metadata !1043), !dbg !3068
	tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !3062, metadata !1043), !dbg !3065
	%7 = urem i64 %5, 10, !dbg !3071
	%8 = trunc i64 %7 to i8, !dbg !3074
	%9 = or i8 %8, 48, !dbg !3074
	%10 = getelementptr inbounds i8, i8* %6, i64 -1, !dbg !3075
	tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !3064, metadata !1043), !dbg !3068
	store i8 %9, i8* %10, align 1, !dbg !3076, !tbaa !1279
	%11 = udiv i64 %5, 10, !dbg !3077
	tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !3062, metadata !1043), !dbg !3065
	%12 = icmp ugt i64 %5, 9, !dbg !3078
	br i1 %12, label %4, label %13, !dbg !3079, !llvm.loop !3081
	tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !3064, metadata !1043), !dbg !3068
	ret i8* %10, !dbg !3084
}
define void @set_program_name(i8*) local_unnamed_addr #4 !dbg !3085 {
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3087, metadata !1043), !dbg !3090
	%2 = icmp eq i8* %0, null, !dbg !3091
	br i1 %2, label %3, label %6, !dbg !3093
	%4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3094, !tbaa !1032
	%5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.81, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #16, !dbg !3096
	tail call void @abort() #14, !dbg !3097
	unreachable, !dbg !3097
	%7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #15, !dbg !3098
	tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !3088, metadata !1043), !dbg !3099
	%8 = icmp ne i8* %7, null, !dbg !3100
	%9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !3101
	%10 = select i1 %8, i8* %9, i8* %0, !dbg !3103
	tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !3089, metadata !1043), !dbg !3104
	%11 = ptrtoint i8* %10 to i64, !dbg !3105
	%12 = ptrtoint i8* %0 to i64, !dbg !3105
	%13 = sub i64 %11, %12, !dbg !3105
	%14 = icmp sgt i64 %13, 6, !dbg !3107
	br i1 %14, label %15, label %24, !dbg !3108
	%16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !3109
	%17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.82, i64 0, i64 0), i64 7) #15, !dbg !3109
	%18 = icmp eq i32 %17, 0, !dbg !3111
	br i1 %18, label %19, label %24, !dbg !3112
	tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !3087, metadata !1043), !dbg !3090
	%20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.83, i64 0, i64 0), i64 3) #15, !dbg !3113
	%21 = icmp eq i32 %20, 0, !dbg !3116
	br i1 %21, label %22, label %24, !dbg !3117
	%23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !3118
	tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !3087, metadata !1043), !dbg !3090
	store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !3120, !tbaa !1032
	br label %24, !dbg !3121
	%25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
	tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !3087, metadata !1043), !dbg !3090
	store i8* %25, i8** @program_name, align 8, !dbg !3122, !tbaa !1032
	store i8* %25, i8** @program_invocation_name, align 8, !dbg !3123, !tbaa !1032
	ret void, !dbg !3124
}
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #10
declare void @abort() local_unnamed_addr #6
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #4 !dbg !3125 {
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !3130, metadata !1043), !dbg !3133
	%2 = tail call i32* @__errno_location() #5, !dbg !3134
	%3 = load i32, i32* %2, align 4, !dbg !3134, !tbaa !1070
	tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !3131, metadata !1043), !dbg !3135
	%4 = icmp ne %struct.quoting_options* %0, null, !dbg !3136
	%5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !3137
	%6 = select i1 %4, i8* %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), !dbg !3137
	%7 = tail call i8* @xmemdup(i8* %6, i64 56) #10, !dbg !3139
	%8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !3139
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !3132, metadata !1043), !dbg !3140
	store i32 %3, i32* %2, align 4, !dbg !3141, !tbaa !1070
	ret %struct.quoting_options* %8, !dbg !3142
}
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #11 !dbg !3143 {
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !3149, metadata !1043), !dbg !3150
	%2 = icmp ne %struct.quoting_options* %0, null, !dbg !3151
	%3 = select i1 %2, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !3151
	%4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3152
	%5 = load i32, i32* %4, align 8, !dbg !3152, !tbaa !3154
	ret i32 %5, !dbg !3156
}
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #4 !dbg !3157 {
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !3161, metadata !1043), !dbg !3163
	tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3162, metadata !1043), !dbg !3164
	%3 = icmp ne %struct.quoting_options* %0, null, !dbg !3165
	%4 = select i1 %3, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !3165
	%5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3166
	store i32 %1, i32* %5, align 8, !dbg !3168, !tbaa !3154
	ret void, !dbg !3169
}
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #4 !dbg !3170 {
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !3174, metadata !1043), !dbg !3182
	tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !3175, metadata !1043), !dbg !3183
	tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !3176, metadata !1043), !dbg !3184
	tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !3177, metadata !1043), !dbg !3185
	%4 = icmp ne %struct.quoting_options* %0, null, !dbg !3186
	%5 = select i1 %4, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !3186
	%6 = lshr i8 %1, 5, !dbg !3187
	%7 = zext i8 %6 to i64, !dbg !3187
	%8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !3189
	tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !3178, metadata !1043), !dbg !3190
	%9 = and i8 %1, 31, !dbg !3191
	%10 = zext i8 %9 to i32, !dbg !3192
	tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !3180, metadata !1043), !dbg !3193
	%11 = load i32, i32* %8, align 4, !dbg !3194, !tbaa !1070
	%12 = lshr i32 %11, %10, !dbg !3195
	%13 = and i32 %12, 1, !dbg !3196
	tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !3181, metadata !1043), !dbg !3197
	%14 = and i32 %2, 1, !dbg !3198
	%15 = xor i32 %13, %14, !dbg !3199
	%16 = shl i32 %15, %10, !dbg !3200
	%17 = xor i32 %16, %11, !dbg !3201
	store i32 %17, i32* %8, align 4, !dbg !3201, !tbaa !1070
	ret i32 %13, !dbg !3202
}
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #4 !dbg !3203 {
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !3207, metadata !1043), !dbg !3210
	tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3208, metadata !1043), !dbg !3211
	%3 = icmp eq %struct.quoting_options* %0, null, !dbg !3212
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !3207, metadata !1043), !dbg !3210
	%4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !3214
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3207, metadata !1043), !dbg !3210
	%5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3215
	%6 = load i32, i32* %5, align 4, !dbg !3215, !tbaa !3216
	tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !3209, metadata !1043), !dbg !3217
	store i32 %1, i32* %5, align 4, !dbg !3218, !tbaa !3216
	ret i32 %6, !dbg !3219
}
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #4 !dbg !3220 {
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !3224, metadata !1043), !dbg !3227
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3225, metadata !1043), !dbg !3228
	tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3226, metadata !1043), !dbg !3229
	%4 = icmp eq %struct.quoting_options* %0, null, !dbg !3230
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !3224, metadata !1043), !dbg !3227
	%5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !3232
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3224, metadata !1043), !dbg !3227
	%6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3233
	store i32 10, i32* %6, align 8, !dbg !3234, !tbaa !3154
	%7 = icmp ne i8* %1, null, !dbg !3235
	%8 = icmp ne i8* %2, null, !dbg !3237
	%9 = and i1 %7, %8, !dbg !3239
	br i1 %9, label %11, label %10, !dbg !3239
	tail call void @abort() #14, !dbg !3240
	unreachable, !dbg !3240
	%12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3241
	store i8* %1, i8** %12, align 8, !dbg !3242, !tbaa !3243
	%13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3244
	store i8* %2, i8** %13, align 8, !dbg !3245, !tbaa !3246
	ret void, !dbg !3247
}
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #4 !dbg !3248 {
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3252, metadata !1043), !dbg !3260
	tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3253, metadata !1043), !dbg !3261
	tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3254, metadata !1043), !dbg !3262
	tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3255, metadata !1043), !dbg !3263
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3256, metadata !1043), !dbg !3264
	%6 = icmp ne %struct.quoting_options* %4, null, !dbg !3265
	%7 = select i1 %6, %struct.quoting_options* %4, %struct.quoting_options* @default_quoting_options, !dbg !3265
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !3257, metadata !1043), !dbg !3266
	%8 = tail call i32* @__errno_location() #5, !dbg !3267
	%9 = load i32, i32* %8, align 4, !dbg !3267, !tbaa !1070
	tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !3258, metadata !1043), !dbg !3268
	%10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !3269
	%11 = load i32, i32* %10, align 8, !dbg !3269, !tbaa !3154
	%12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !3270
	%13 = load i32, i32* %12, align 4, !dbg !3270, !tbaa !3216
	%14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !3271
	%15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !3272
	%16 = load i8*, i8** %15, align 8, !dbg !3272, !tbaa !3243
	%17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !3273
	%18 = load i8*, i8** %17, align 8, !dbg !3273, !tbaa !3246
	%19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !3274
	tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !3259, metadata !1043), !dbg !3275
	store i32 %9, i32* %8, align 4, !dbg !3276, !tbaa !1070
	ret i64 %19, !dbg !3277
}
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #4 !dbg !3278 {
	%10 = alloca i64, align 8
	%11 = bitcast i64* %10 to %struct.__mbstate_t*
	%12 = alloca i32, align 4
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3284, metadata !1043), !dbg !3347
	tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3285, metadata !1043), !dbg !3348
	tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3286, metadata !1043), !dbg !3349
	tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3287, metadata !1043), !dbg !3350
	tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !3288, metadata !1043), !dbg !3351
	tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !3289, metadata !1043), !dbg !3352
	tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !3290, metadata !1043), !dbg !3353
	tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !3291, metadata !1043), !dbg !3354
	tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !3292, metadata !1043), !dbg !3355
	tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3294, metadata !1043), !dbg !3356
	tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3295, metadata !1043), !dbg !3357
	tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3296, metadata !1043), !dbg !3358
	tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3297, metadata !1043), !dbg !3359
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3298, metadata !1043), !dbg !3360
	%13 = tail call i64 @__ctype_get_mb_cur_max() #10, !dbg !3361
	%14 = icmp eq i64 %13, 1, !dbg !3362
	%15 = lshr i32 %5, 1, !dbg !3363
	%16 = trunc i32 %15 to i8, !dbg !3363
	%17 = and i8 %16, 1, !dbg !3363
	tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !3300, metadata !1043), !dbg !3363
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3301, metadata !1043), !dbg !3364
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3302, metadata !1043), !dbg !3365
	tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3303, metadata !1043), !dbg !3366
	%18 = bitcast i64* %10 to i8*
	%19 = bitcast i32* %12 to i8*
	%20 = icmp eq i32* %6, null
	%21 = icmp ne i32* %6, null
	%22 = and i32 %5, 1
	%23 = icmp eq i32 %22, 0
	%24 = and i32 %5, 4
	%25 = icmp eq i32 %24, 0
	%26 = getelementptr inbounds i8, i8* %2, i64 1
	br label %27, !dbg !3367
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
	call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !3285, metadata !1043), !dbg !3348
	call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !3303, metadata !1043), !dbg !3366
	call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !3302, metadata !1043), !dbg !3365
	call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !3301, metadata !1043), !dbg !3364
	call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !3300, metadata !1043), !dbg !3363
	call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !3287, metadata !1043), !dbg !3350
	call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !3298, metadata !1043), !dbg !3360
	call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !3297, metadata !1043), !dbg !3359
	call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !3296, metadata !1043), !dbg !3358
	call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !3295, metadata !1043), !dbg !3357
	call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3294, metadata !1043), !dbg !3356
	call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !3292, metadata !1043), !dbg !3355
	call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !3291, metadata !1043), !dbg !3354
	call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !3288, metadata !1043), !dbg !3351
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
	], !dbg !3368
	call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3288, metadata !1043), !dbg !3351
	call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3300, metadata !1043), !dbg !3363
	call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !3300, metadata !1043), !dbg !3363
	call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3288, metadata !1043), !dbg !3351
	br label %95, !dbg !3369
	call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !3300, metadata !1043), !dbg !3363
	call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !3288, metadata !1043), !dbg !3351
	%43 = and i8 %36, 1, !dbg !3371
	%44 = icmp eq i8 %43, 0, !dbg !3371
	br i1 %44, label %45, label %95, !dbg !3369
	%46 = icmp eq i64 %40, 0, !dbg !3373
	br i1 %46, label %95, label %47, !dbg !3377
	store i8 34, i8* %0, align 1, !dbg !3379, !tbaa !1279
	br label %95, !dbg !3379
	%49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.94, i64 0, i64 0), i32 %28), !dbg !3381
	call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !3291, metadata !1043), !dbg !3354
	%50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.95, i64 0, i64 0), i32 %28), !dbg !3385
	call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !3292, metadata !1043), !dbg !3355
	br label %51, !dbg !3386
	%52 = phi i8* [ %49, %48 ], [ %29, %27 ]
	%53 = phi i8* [ %50, %48 ], [ %30, %27 ]
	call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !3292, metadata !1043), !dbg !3355
	call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3291, metadata !1043), !dbg !3354
	%54 = and i8 %36, 1, !dbg !3387
	%55 = icmp eq i8 %54, 0, !dbg !3387
	br i1 %55, label %56, label %73, !dbg !3389
	call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !3296, metadata !1043), !dbg !3358
	call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3294, metadata !1043), !dbg !3356
	%57 = load i8, i8* %52, align 1, !dbg !3390, !tbaa !1279
	%58 = icmp eq i8 %57, 0, !dbg !3394
	br i1 %58, label %73, label %59, !dbg !3394
	br label %60, !dbg !3396
	%61 = phi i8 [ %70, %67 ], [ %57, %59 ]
	%62 = phi i8* [ %69, %67 ], [ %52, %59 ]
	%63 = phi i64 [ %68, %67 ], [ 0, %59 ]
	%64 = icmp ult i64 %63, %40, !dbg !3396
	br i1 %64, label %65, label %67, !dbg !3400
	%66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !3402
	store i8 %61, i8* %66, align 1, !dbg !3402, !tbaa !1279
	br label %67, !dbg !3402
	%68 = add i64 %63, 1, !dbg !3404
	call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !3294, metadata !1043), !dbg !3356
	%69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !3406
	call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !3296, metadata !1043), !dbg !3358
	call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !3296, metadata !1043), !dbg !3358
	call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !3294, metadata !1043), !dbg !3356
	%70 = load i8, i8* %69, align 1, !dbg !3390, !tbaa !1279
	%71 = icmp eq i8 %70, 0, !dbg !3394
	br i1 %71, label %72, label %60, !dbg !3394, !llvm.loop !3408
	br label %73, !dbg !3356
	%74 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %72 ]
	call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !3294, metadata !1043), !dbg !3356
	call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3298, metadata !1043), !dbg !3360
	call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !3296, metadata !1043), !dbg !3358
	%75 = call i64 @strlen(i8* %53) #15, !dbg !3411
	call void @llvm.dbg.value(metadata i64 %75, i64 0, metadata !3297, metadata !1043), !dbg !3359
	br label %95, !dbg !3412
	call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3298, metadata !1043), !dbg !3360
	br label %77, !dbg !3413
	%78 = phi i8 [ %34, %27 ], [ 1, %76 ]
	call void @llvm.dbg.value(metadata i8 %78, i64 0, metadata !3298, metadata !1043), !dbg !3360
	call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3300, metadata !1043), !dbg !3363
	br label %79, !dbg !3414
	%80 = phi i8 [ %34, %27 ], [ %78, %77 ]
	%81 = phi i8 [ %36, %27 ], [ 1, %77 ]
	call void @llvm.dbg.value(metadata i8 %81, i64 0, metadata !3300, metadata !1043), !dbg !3363
	call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !3298, metadata !1043), !dbg !3360
	%82 = and i8 %81, 1, !dbg !3415
	%83 = icmp eq i8 %82, 0, !dbg !3415
	call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3298, metadata !1043), !dbg !3360
	%84 = select i1 %83, i8 1, i8 %80, !dbg !3417
	br label %85, !dbg !3417
	%86 = phi i8 [ %34, %27 ], [ %84, %79 ]
	%87 = phi i8 [ %36, %27 ], [ %81, %79 ]
	call void @llvm.dbg.value(metadata i8 %87, i64 0, metadata !3300, metadata !1043), !dbg !3363
	call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !3298, metadata !1043), !dbg !3360
	call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !3288, metadata !1043), !dbg !3351
	%88 = and i8 %87, 1, !dbg !3418
	%89 = icmp eq i8 %88, 0, !dbg !3418
	br i1 %89, label %90, label %95, !dbg !3420
	%91 = icmp eq i64 %40, 0, !dbg !3421
	br i1 %91, label %95, label %92, !dbg !3425
	store i8 39, i8* %0, align 1, !dbg !3427, !tbaa !1279
	br label %95, !dbg !3427
	call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3300, metadata !1043), !dbg !3363
	br label %95, !dbg !3429
	call void @abort() #14, !dbg !3430
	unreachable, !dbg !3430
	%96 = phi i32 [ 0, %93 ], [ %28, %73 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %92 ], [ 2, %90 ], [ 2, %85 ], [ 5, %41 ]
	%97 = phi i8* [ %29, %93 ], [ %52, %73 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %92 ], [ %29, %90 ], [ %29, %85 ], [ %29, %41 ]
	%98 = phi i8* [ %30, %93 ], [ %53, %73 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %92 ], [ %30, %90 ], [ %30, %85 ], [ %30, %41 ]
	%99 = phi i64 [ 0, %93 ], [ %74, %73 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %92 ], [ 1, %90 ], [ 0, %85 ], [ 0, %41 ]
	%100 = phi i8* [ %32, %93 ], [ %53, %73 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.96, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.96, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.96, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.95, i64 0, i64 0), %92 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.95, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.95, i64 0, i64 0), %85 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.96, i64 0, i64 0), %41 ]
	%101 = phi i64 [ %33, %93 ], [ %75, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %92 ], [ 1, %90 ], [ 1, %85 ], [ 1, %41 ]
	%102 = phi i8 [ %34, %93 ], [ 1, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %86, %92 ], [ %86, %90 ], [ %86, %85 ], [ 1, %41 ]
	%103 = phi i8 [ 0, %93 ], [ %36, %73 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %87, %92 ], [ %87, %90 ], [ %87, %85 ], [ 1, %41 ]
	call void @llvm.dbg.value(metadata i8 %103, i64 0, metadata !3300, metadata !1043), !dbg !3363
	call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !3298, metadata !1043), !dbg !3360
	call void @llvm.dbg.value(metadata i64 %101, i64 0, metadata !3297, metadata !1043), !dbg !3359
	call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !3296, metadata !1043), !dbg !3358
	call void @llvm.dbg.value(metadata i64 %99, i64 0, metadata !3294, metadata !1043), !dbg !3356
	call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !3292, metadata !1043), !dbg !3355
	call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !3291, metadata !1043), !dbg !3354
	call void @llvm.dbg.value(metadata i32 %96, i64 0, metadata !3288, metadata !1043), !dbg !3351
	call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3293, metadata !1043), !dbg !3431
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
	br label %123, !dbg !3432
	%124 = phi i64 [ 0, %95 ], [ %596, %587 ]
	%125 = phi i64 [ %99, %95 ], [ %589, %587 ]
	%126 = phi i64 [ %31, %95 ], [ %590, %587 ]
	%127 = phi i64 [ %35, %95 ], [ %591, %587 ]
	%128 = phi i8 [ %37, %95 ], [ %592, %587 ]
	%129 = phi i8 [ %38, %95 ], [ %593, %587 ]
	%130 = phi i8 [ %39, %95 ], [ %594, %587 ]
	%131 = phi i64 [ %40, %95 ], [ %595, %587 ]
	call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !3285, metadata !1043), !dbg !3348
	call void @llvm.dbg.value(metadata i8 %130, i64 0, metadata !3303, metadata !1043), !dbg !3366
	call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !3302, metadata !1043), !dbg !3365
	call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !3301, metadata !1043), !dbg !3364
	call void @llvm.dbg.value(metadata i64 %127, i64 0, metadata !3287, metadata !1043), !dbg !3350
	call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !3295, metadata !1043), !dbg !3357
	call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !3294, metadata !1043), !dbg !3356
	call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !3293, metadata !1043), !dbg !3431
	%132 = icmp eq i64 %127, -1, !dbg !3433
	br i1 %132, label %135, label %133, !dbg !3435
	%134 = icmp eq i64 %124, %127, !dbg !3436
	br i1 %134, label %597, label %139, !dbg !3438
	%136 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !3440
	%137 = load i8, i8* %136, align 1, !dbg !3440, !tbaa !1279
	%138 = icmp eq i8 %137, 0, !dbg !3442
	br i1 %138, label %597, label %139, !dbg !3438
	call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3309, metadata !1043), !dbg !3443
	call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3310, metadata !1043), !dbg !3444
	call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3311, metadata !1043), !dbg !3445
	br i1 %109, label %140, label %155, !dbg !3446
	%141 = add i64 %124, %101, !dbg !3448
	%142 = and i1 %110, %132, !dbg !3450
	br i1 %142, label %143, label %145, !dbg !3450
	%144 = call i64 @strlen(i8* %2) #15, !dbg !3451
	call void @llvm.dbg.value(metadata i64 %144, i64 0, metadata !3287, metadata !1043), !dbg !3350
	br label %145, !dbg !3452
	%146 = phi i64 [ %144, %143 ], [ %127, %140 ]
	call void @llvm.dbg.value(metadata i64 %146, i64 0, metadata !3287, metadata !1043), !dbg !3350
	%147 = icmp ugt i64 %141, %146, !dbg !3454
	br i1 %147, label %155, label %148, !dbg !3456
	%149 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !3457
	%150 = call i32 @memcmp(i8* %149, i8* %100, i64 %101) #15, !dbg !3458
	%151 = icmp ne i32 %150, 0, !dbg !3459
	%152 = or i1 %151, %112, !dbg !3459
	%153 = xor i1 %151, true, !dbg !3459
	%154 = zext i1 %153 to i8, !dbg !3459
	br i1 %152, label %155, label %644, !dbg !3459
	%156 = phi i64 [ %146, %148 ], [ %146, %145 ], [ %127, %139 ]
	%157 = phi i8 [ %154, %148 ], [ 0, %145 ], [ 0, %139 ]
	call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !3309, metadata !1043), !dbg !3443
	call void @llvm.dbg.value(metadata i64 %156, i64 0, metadata !3287, metadata !1043), !dbg !3350
	%158 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !3461
	%159 = load i8, i8* %158, align 1, !dbg !3461, !tbaa !1279
	call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !3304, metadata !1043), !dbg !3462
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
	], !dbg !3463
	br i1 %105, label %161, label %209, !dbg !3464
	br i1 %112, label %162, label %644, !dbg !3465
	call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3310, metadata !1043), !dbg !3444
	%163 = and i8 %128, 1, !dbg !3470
	%164 = icmp eq i8 %163, 0, !dbg !3470
	%165 = and i1 %114, %164, !dbg !3473
	br i1 %165, label %166, label %182, !dbg !3473
	%167 = icmp ult i64 %125, %131, !dbg !3475
	br i1 %167, label %168, label %170, !dbg !3480
	%169 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !3482
	store i8 39, i8* %169, align 1, !dbg !3482, !tbaa !1279
	br label %170, !dbg !3482
	%171 = add i64 %125, 1, !dbg !3484
	call void @llvm.dbg.value(metadata i64 %171, i64 0, metadata !3294, metadata !1043), !dbg !3356
	%172 = icmp ult i64 %171, %131, !dbg !3486
	br i1 %172, label %173, label %175, !dbg !3490
	%174 = getelementptr inbounds i8, i8* %0, i64 %171, !dbg !3492
	store i8 36, i8* %174, align 1, !dbg !3492, !tbaa !1279
	br label %175, !dbg !3492
	%176 = add i64 %125, 2, !dbg !3494
	call void @llvm.dbg.value(metadata i64 %176, i64 0, metadata !3294, metadata !1043), !dbg !3356
	%177 = icmp ult i64 %176, %131, !dbg !3496
	br i1 %177, label %178, label %180, !dbg !3500
	%179 = getelementptr inbounds i8, i8* %0, i64 %176, !dbg !3502
	store i8 39, i8* %179, align 1, !dbg !3502, !tbaa !1279
	br label %180, !dbg !3502
	%181 = add i64 %125, 3, !dbg !3504
	call void @llvm.dbg.value(metadata i64 %181, i64 0, metadata !3294, metadata !1043), !dbg !3356
	call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3301, metadata !1043), !dbg !3364
	br label %182, !dbg !3506
	%183 = phi i64 [ %181, %180 ], [ %125, %162 ]
	%184 = phi i8 [ 1, %180 ], [ %128, %162 ]
	call void @llvm.dbg.value(metadata i8 %184, i64 0, metadata !3301, metadata !1043), !dbg !3364
	call void @llvm.dbg.value(metadata i64 %183, i64 0, metadata !3294, metadata !1043), !dbg !3356
	%185 = icmp ult i64 %183, %131, !dbg !3508
	br i1 %185, label %186, label %188, !dbg !3512
	%187 = getelementptr inbounds i8, i8* %0, i64 %183, !dbg !3514
	store i8 92, i8* %187, align 1, !dbg !3514, !tbaa !1279
	br label %188, !dbg !3514
	%189 = add i64 %183, 1, !dbg !3516
	call void @llvm.dbg.value(metadata i64 %189, i64 0, metadata !3294, metadata !1043), !dbg !3356
	br i1 %106, label %190, label %476, !dbg !3518
	%191 = add i64 %124, 1, !dbg !3520
	%192 = icmp ult i64 %191, %156, !dbg !3522
	br i1 %192, label %193, label %476, !dbg !3523
	%194 = getelementptr inbounds i8, i8* %2, i64 %191, !dbg !3524
	%195 = load i8, i8* %194, align 1, !dbg !3524, !tbaa !1279
	%196 = add i8 %195, -48, !dbg !3526
	%197 = icmp ult i8 %196, 10, !dbg !3526
	br i1 %197, label %198, label %476, !dbg !3526
	%199 = icmp ult i64 %189, %131, !dbg !3527
	br i1 %199, label %200, label %202, !dbg !3532
	%201 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !3534
	store i8 48, i8* %201, align 1, !dbg !3534, !tbaa !1279
	br label %202, !dbg !3534
	%203 = add i64 %183, 2, !dbg !3536
	call void @llvm.dbg.value(metadata i64 %203, i64 0, metadata !3294, metadata !1043), !dbg !3356
	%204 = icmp ult i64 %203, %131, !dbg !3538
	br i1 %204, label %205, label %207, !dbg !3542
	%206 = getelementptr inbounds i8, i8* %0, i64 %203, !dbg !3544
	store i8 48, i8* %206, align 1, !dbg !3544, !tbaa !1279
	br label %207, !dbg !3544
	%208 = add i64 %183, 3, !dbg !3546
	call void @llvm.dbg.value(metadata i64 %208, i64 0, metadata !3294, metadata !1043), !dbg !3356
	br label %476, !dbg !3548
	br i1 %23, label %476, label %587, !dbg !3549
	switch i32 %96, label %476 [
		i32 2, label %211
		i32 5, label %212
	], !dbg !3550
	br i1 %112, label %476, label %644, !dbg !3551
	br i1 %25, label %476, label %213, !dbg !3553
	%214 = add i64 %124, 2, !dbg !3555
	%215 = icmp ult i64 %214, %156, !dbg !3557
	br i1 %215, label %216, label %476, !dbg !3558
	%217 = add i64 %124, 1, !dbg !3559
	%218 = getelementptr inbounds i8, i8* %2, i64 %217, !dbg !3561
	%219 = load i8, i8* %218, align 1, !dbg !3561, !tbaa !1279
	%220 = icmp eq i8 %219, 63, !dbg !3562
	br i1 %220, label %221, label %476, !dbg !3563
	%222 = getelementptr inbounds i8, i8* %2, i64 %214, !dbg !3565
	%223 = load i8, i8* %222, align 1, !dbg !3565, !tbaa !1279
	%224 = sext i8 %223 to i32, !dbg !3565
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
	], !dbg !3566
	br i1 %112, label %226, label %644, !dbg !3567
	call void @llvm.dbg.value(metadata i8 %223, i64 0, metadata !3304, metadata !1043), !dbg !3462
	call void @llvm.dbg.value(metadata i64 %214, i64 0, metadata !3293, metadata !1043), !dbg !3431
	%227 = icmp ult i64 %125, %131, !dbg !3569
	br i1 %227, label %228, label %230, !dbg !3573
	%229 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !3575
	store i8 63, i8* %229, align 1, !dbg !3575, !tbaa !1279
	br label %230, !dbg !3575
	%231 = add i64 %125, 1, !dbg !3577
	call void @llvm.dbg.value(metadata i64 %231, i64 0, metadata !3294, metadata !1043), !dbg !3356
	%232 = icmp ult i64 %231, %131, !dbg !3579
	br i1 %232, label %233, label %235, !dbg !3583
	%234 = getelementptr inbounds i8, i8* %0, i64 %231, !dbg !3585
	store i8 34, i8* %234, align 1, !dbg !3585, !tbaa !1279
	br label %235, !dbg !3585
	%236 = add i64 %125, 2, !dbg !3587
	call void @llvm.dbg.value(metadata i64 %236, i64 0, metadata !3294, metadata !1043), !dbg !3356
	%237 = icmp ult i64 %236, %131, !dbg !3589
	br i1 %237, label %238, label %240, !dbg !3593
	%239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !3595
	store i8 34, i8* %239, align 1, !dbg !3595, !tbaa !1279
	br label %240, !dbg !3595
	%241 = add i64 %125, 3, !dbg !3597
	call void @llvm.dbg.value(metadata i64 %241, i64 0, metadata !3294, metadata !1043), !dbg !3356
	%242 = icmp ult i64 %241, %131, !dbg !3599
	br i1 %242, label %243, label %245, !dbg !3603
	%244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !3605
	store i8 63, i8* %244, align 1, !dbg !3605, !tbaa !1279
	br label %245, !dbg !3605
	%246 = add i64 %125, 4, !dbg !3607
	call void @llvm.dbg.value(metadata i64 %246, i64 0, metadata !3294, metadata !1043), !dbg !3356
	br label %476, !dbg !3609
	call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !3308, metadata !1043), !dbg !3610
	br label %257, !dbg !3611
	call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !3308, metadata !1043), !dbg !3610
	br label %257, !dbg !3612
	call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !3308, metadata !1043), !dbg !3610
	br label %255, !dbg !3613
	call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !3308, metadata !1043), !dbg !3610
	br label %255, !dbg !3614
	call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !3308, metadata !1043), !dbg !3610
	br label %257, !dbg !3615
	call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !3308, metadata !1043), !dbg !3610
	br i1 %114, label %253, label %254, !dbg !3616
	br i1 %112, label %542, label %644, !dbg !3617
	br i1 %122, label %542, label %255, !dbg !3620
	%256 = phi i8 [ 92, %254 ], [ 116, %250 ], [ 114, %249 ], [ 110, %155 ]
	call void @llvm.dbg.value(metadata i8 %256, i64 0, metadata !3308, metadata !1043), !dbg !3610
	br i1 %118, label %257, label %644, !dbg !3622
	%258 = phi i8 [ %256, %255 ], [ 118, %251 ], [ 102, %248 ], [ 98, %247 ], [ 97, %155 ]
	call void @llvm.dbg.value(metadata i8 %258, i64 0, metadata !3308, metadata !1043), !dbg !3610
	br i1 %105, label %503, label %476, !dbg !3624
	%260 = icmp eq i64 %156, -1, !dbg !3625
	br i1 %260, label %261, label %266, !dbg !3627
	%262 = load i8, i8* %26, align 1, !dbg !3628, !tbaa !1279
	%263 = icmp ne i8 %262, 0, !dbg !3630
	%264 = icmp ne i64 %124, 0, !dbg !3631
	%265 = or i1 %264, %263, !dbg !3633
	br i1 %265, label %476, label %272, !dbg !3633
	%267 = icmp ne i64 %156, 1, !dbg !3634
	%268 = icmp ne i64 %124, 0, !dbg !3631
	%269 = or i1 %268, %267, !dbg !3636
	br i1 %269, label %476, label %272, !dbg !3636
	%271 = icmp eq i64 %124, 0, !dbg !3631
	br i1 %271, label %272, label %476, !dbg !3638
	call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3311, metadata !1043), !dbg !3445
	br label %273, !dbg !3639
	%274 = phi i8 [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 1, %272 ]
	call void @llvm.dbg.value(metadata i8 %274, i64 0, metadata !3311, metadata !1043), !dbg !3445
	br i1 %118, label %476, label %644, !dbg !3640
	call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3302, metadata !1043), !dbg !3365
	call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3311, metadata !1043), !dbg !3445
	br i1 %114, label %276, label %476, !dbg !3642
	br i1 %112, label %277, label %644, !dbg !3643
	%278 = icmp eq i64 %131, 0, !dbg !3646
	%279 = icmp ne i64 %126, 0, !dbg !3648
	%280 = or i1 %279, %278, !dbg !3650
	call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !3295, metadata !1043), !dbg !3357
	call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3285, metadata !1043), !dbg !3348
	%281 = select i1 %280, i64 %126, i64 %131, !dbg !3650
	%282 = select i1 %280, i64 %131, i64 0, !dbg !3650
	call void @llvm.dbg.value(metadata i64 %282, i64 0, metadata !3285, metadata !1043), !dbg !3348
	call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !3295, metadata !1043), !dbg !3357
	%283 = icmp ult i64 %125, %282, !dbg !3651
	br i1 %283, label %284, label %286, !dbg !3655
	%285 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !3657
	store i8 39, i8* %285, align 1, !dbg !3657, !tbaa !1279
	br label %286, !dbg !3657
	%287 = add i64 %125, 1, !dbg !3659
	call void @llvm.dbg.value(metadata i64 %287, i64 0, metadata !3294, metadata !1043), !dbg !3356
	%288 = icmp ult i64 %287, %282, !dbg !3661
	br i1 %288, label %289, label %291, !dbg !3665
	%290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !3667
	store i8 92, i8* %290, align 1, !dbg !3667, !tbaa !1279
	br label %291, !dbg !3667
	%292 = add i64 %125, 2, !dbg !3669
	call void @llvm.dbg.value(metadata i64 %292, i64 0, metadata !3294, metadata !1043), !dbg !3356
	%293 = icmp ult i64 %292, %282, !dbg !3671
	br i1 %293, label %294, label %296, !dbg !3675
	%295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !3677
	store i8 39, i8* %295, align 1, !dbg !3677, !tbaa !1279
	br label %296, !dbg !3677
	%297 = add i64 %125, 3, !dbg !3679
	call void @llvm.dbg.value(metadata i64 %297, i64 0, metadata !3294, metadata !1043), !dbg !3356
	call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3301, metadata !1043), !dbg !3364
	br label %476, !dbg !3681
	br i1 %14, label %299, label %308, !dbg !3682
	call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3312, metadata !1043), !dbg !3683
	%300 = tail call i16** @__ctype_b_loc() #5, !dbg !3684
	%301 = load i16*, i16** %300, align 8, !dbg !3684, !tbaa !1032
	%302 = zext i8 %159 to i64, !dbg !3684
	%303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !3684
	%304 = load i16, i16* %303, align 2, !dbg !3684, !tbaa !1365
	%305 = lshr i16 %304, 14, !dbg !3686
	%306 = trunc i16 %305 to i8, !dbg !3686
	%307 = and i8 %306, 1, !dbg !3686
	call void @llvm.dbg.value(metadata i8 %307, i64 0, metadata !3315, metadata !1043), !dbg !3687
	br label %368, !dbg !3688
	call void @llvm.lifetime.start(i64 8, i8* nonnull %18) #10, !dbg !3689
	store i64 0, i64* %10, align 8, !dbg !3690
	call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3312, metadata !1043), !dbg !3683
	call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3315, metadata !1043), !dbg !3687
	%309 = icmp eq i64 %156, -1, !dbg !3691
	br i1 %309, label %310, label %312, !dbg !3693, !llvm.loop !3694
	%311 = call i64 @strlen(i8* nonnull %2) #15, !dbg !3697
	call void @llvm.dbg.value(metadata i64 %311, i64 0, metadata !3287, metadata !1043), !dbg !3350
	br label %312, !dbg !3698, !llvm.loop !3694
	%313 = phi i64 [ %156, %308 ], [ %311, %310 ]
	br label %314, !dbg !3687
	%315 = phi i64 [ %360, %355 ], [ 0, %312 ]
	%316 = phi i8 [ %359, %355 ], [ 1, %312 ]
	call void @llvm.dbg.value(metadata i8 %316, i64 0, metadata !3315, metadata !1043), !dbg !3687
	call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !3312, metadata !1043), !dbg !3683
	call void @llvm.dbg.value(metadata i64 %313, i64 0, metadata !3287, metadata !1043), !dbg !3350
	call void @llvm.lifetime.start(i64 4, i8* nonnull %19) #10, !dbg !3699
	%317 = add i64 %315, %124, !dbg !3700
	%318 = getelementptr inbounds i8, i8* %2, i64 %317, !dbg !3701
	%319 = sub i64 %313, %317, !dbg !3702
	call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !3316, metadata !1011), !dbg !3703
	call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !3333, metadata !1011), !dbg !3704
	%320 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %318, i64 %319, %struct.__mbstate_t* nonnull %11) #10, !dbg !3705
	call void @llvm.dbg.value(metadata i64 %320, i64 0, metadata !3336, metadata !1043), !dbg !3706
	switch i64 %320, label %334 [
		i64 0, label %350
		i64 -1, label %347
		i64 -2, label %321
	], !dbg !3707
	call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !3312, metadata !1043), !dbg !3683
	%322 = icmp ugt i64 %313, %317, !dbg !3708
	br i1 %322, label %323, label %351, !dbg !3711
	br label %324, !dbg !3712
	%325 = phi i64 [ %332, %330 ], [ %317, %323 ]
	%326 = phi i64 [ %331, %330 ], [ %315, %323 ]
	%327 = getelementptr inbounds i8, i8* %2, i64 %325, !dbg !3712
	%328 = load i8, i8* %327, align 1, !dbg !3712, !tbaa !1279
	%329 = icmp eq i8 %328, 0, !dbg !3714
	br i1 %329, label %348, label %330, !dbg !3715
	%331 = add i64 %326, 1, !dbg !3717
	call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !3312, metadata !1043), !dbg !3683
	call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !3312, metadata !1043), !dbg !3683
	%332 = add i64 %331, %124, !dbg !3718
	%333 = icmp ult i64 %332, %313, !dbg !3708
	br i1 %333, label %324, label %348, !dbg !3711, !llvm.loop !3719
	%335 = icmp ugt i64 %320, 1, !dbg !3721
	%336 = and i1 %116, %335, !dbg !3725
	call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3337, metadata !1043), !dbg !3726
	br i1 %336, label %337, label %355, !dbg !3725
	br label %338, !dbg !3727
	%339 = phi i64 [ %345, %344 ], [ 1, %337 ]
	%340 = add i64 %339, %317, !dbg !3727
	%341 = getelementptr inbounds i8, i8* %2, i64 %340, !dbg !3728
	%342 = load i8, i8* %341, align 1, !dbg !3728, !tbaa !1279
	%343 = sext i8 %342 to i32, !dbg !3728
	switch i32 %343, label %344 [
		i32 91, label %367
		i32 92, label %367
		i32 94, label %367
		i32 96, label %367
		i32 124, label %367
	], !dbg !3729
	%345 = add nuw i64 %339, 1, !dbg !3730
	call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !3337, metadata !1043), !dbg !3726
	call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !3337, metadata !1043), !dbg !3726
	%346 = icmp ult i64 %345, %320, !dbg !3721
	br i1 %346, label %338, label %354, !dbg !3732, !llvm.loop !3734
	br label %351, !dbg !3687
	%349 = phi i64 [ %331, %330 ], [ %326, %324 ]
	br label %351, !dbg !3687
	br label %351, !dbg !3687
	%352 = phi i64 [ %315, %321 ], [ %315, %347 ], [ %349, %348 ], [ %315, %350 ]
	%353 = phi i8 [ 0, %321 ], [ 0, %347 ], [ 0, %348 ], [ %316, %350 ]
	call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !3315, metadata !1043), !dbg !3687
	call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !3312, metadata !1043), !dbg !3683
	call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10, !dbg !3737
	br label %364
	br label %355, !dbg !3738
	%356 = load i32, i32* %12, align 4, !dbg !3738, !tbaa !1070
	call void @llvm.dbg.value(metadata i32 %356, i64 0, metadata !3333, metadata !1043), !dbg !3704
	%357 = call i32 @iswprint(i32 %356) #10, !dbg !3740
	%358 = icmp eq i32 %357, 0, !dbg !3740
	call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3315, metadata !1043), !dbg !3687
	%359 = select i1 %358, i8 0, i8 %316, !dbg !3741
	call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !3315, metadata !1043), !dbg !3687
	%360 = add i64 %320, %315, !dbg !3742
	call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !3312, metadata !1043), !dbg !3683
	call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !3315, metadata !1043), !dbg !3687
	call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !3312, metadata !1043), !dbg !3683
	call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10, !dbg !3737
	call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !3316, metadata !1011), !dbg !3703
	%361 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #15, !dbg !3743
	%362 = icmp eq i32 %361, 0, !dbg !3744
	br i1 %362, label %314, label %363, !dbg !3745, !llvm.loop !3694
	br label %364, !dbg !3747
	%365 = phi i8 [ %353, %351 ], [ %359, %363 ]
	%366 = phi i64 [ %352, %351 ], [ %360, %363 ]
	call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #10, !dbg !3747
	br label %368
	call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !3315, metadata !1043), !dbg !3687
	call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !3312, metadata !1043), !dbg !3683
	call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10, !dbg !3737
	call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #10, !dbg !3747
	br label %649
	%369 = phi i64 [ %156, %299 ], [ %313, %364 ]
	%370 = phi i64 [ 1, %299 ], [ %366, %364 ]
	%371 = phi i8 [ %307, %299 ], [ %365, %364 ]
	call void @llvm.dbg.value(metadata i8 %371, i64 0, metadata !3315, metadata !1043), !dbg !3687
	call void @llvm.dbg.value(metadata i64 %370, i64 0, metadata !3312, metadata !1043), !dbg !3683
	call void @llvm.dbg.value(metadata i64 %369, i64 0, metadata !3287, metadata !1043), !dbg !3350
	%372 = and i8 %371, 1, !dbg !3748
	%373 = icmp ne i8 %372, 0, !dbg !3748
	call void @llvm.dbg.value(metadata i8 %372, i64 0, metadata !3311, metadata !1043), !dbg !3445
	%374 = icmp ult i64 %370, 2, !dbg !3749
	%375 = or i1 %373, %113, !dbg !3750
	%376 = and i1 %374, %375, !dbg !3752
	br i1 %376, label %476, label %377, !dbg !3752
	%378 = add i64 %370, %124, !dbg !3753
	call void @llvm.dbg.value(metadata i64 %378, i64 0, metadata !3344, metadata !1043), !dbg !3754
	br label %379, !dbg !3755
	%380 = phi i64 [ %124, %377 ], [ %447, %472 ]
	%381 = phi i64 [ %125, %377 ], [ %473, %472 ]
	%382 = phi i8 [ %128, %377 ], [ %468, %472 ]
	%383 = phi i8 [ %159, %377 ], [ %475, %472 ]
	%384 = phi i8 [ %157, %377 ], [ %445, %472 ]
	%385 = phi i8 [ 0, %377 ], [ %446, %472 ]
	call void @llvm.dbg.value(metadata i8 %385, i64 0, metadata !3310, metadata !1043), !dbg !3444
	call void @llvm.dbg.value(metadata i8 %384, i64 0, metadata !3309, metadata !1043), !dbg !3443
	call void @llvm.dbg.value(metadata i8 %383, i64 0, metadata !3304, metadata !1043), !dbg !3462
	call void @llvm.dbg.value(metadata i8 %382, i64 0, metadata !3301, metadata !1043), !dbg !3364
	call void @llvm.dbg.value(metadata i64 %381, i64 0, metadata !3294, metadata !1043), !dbg !3356
	call void @llvm.dbg.value(metadata i64 %380, i64 0, metadata !3293, metadata !1043), !dbg !3431
	br i1 %375, label %432, label %386, !dbg !3756
	br i1 %112, label %387, label %643, !dbg !3761
	call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3310, metadata !1043), !dbg !3444
	%388 = and i8 %382, 1, !dbg !3765
	%389 = icmp eq i8 %388, 0, !dbg !3765
	%390 = and i1 %114, %389, !dbg !3768
	br i1 %390, label %391, label %407, !dbg !3768
	%392 = icmp ult i64 %381, %131, !dbg !3770
	br i1 %392, label %393, label %395, !dbg !3775
	%394 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !3777
	store i8 39, i8* %394, align 1, !dbg !3777, !tbaa !1279
	br label %395, !dbg !3777
	%396 = add i64 %381, 1, !dbg !3779
	call void @llvm.dbg.value(metadata i64 %396, i64 0, metadata !3294, metadata !1043), !dbg !3356
	%397 = icmp ult i64 %396, %131, !dbg !3781
	br i1 %397, label %398, label %400, !dbg !3785
	%399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !3787
	store i8 36, i8* %399, align 1, !dbg !3787, !tbaa !1279
	br label %400, !dbg !3787
	%401 = add i64 %381, 2, !dbg !3789
	call void @llvm.dbg.value(metadata i64 %401, i64 0, metadata !3294, metadata !1043), !dbg !3356
	%402 = icmp ult i64 %401, %131, !dbg !3791
	br i1 %402, label %403, label %405, !dbg !3795
	%404 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !3797
	store i8 39, i8* %404, align 1, !dbg !3797, !tbaa !1279
	br label %405, !dbg !3797
	%406 = add i64 %381, 3, !dbg !3799
	call void @llvm.dbg.value(metadata i64 %406, i64 0, metadata !3294, metadata !1043), !dbg !3356
	call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3301, metadata !1043), !dbg !3364
	br label %407, !dbg !3801
	%408 = phi i64 [ %406, %405 ], [ %381, %387 ]
	%409 = phi i8 [ 1, %405 ], [ %382, %387 ]
	call void @llvm.dbg.value(metadata i8 %409, i64 0, metadata !3301, metadata !1043), !dbg !3364
	call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !3294, metadata !1043), !dbg !3356
	%410 = icmp ult i64 %408, %131, !dbg !3803
	br i1 %410, label %411, label %413, !dbg !3807
	%412 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !3809
	store i8 92, i8* %412, align 1, !dbg !3809, !tbaa !1279
	br label %413, !dbg !3809
	%414 = add i64 %408, 1, !dbg !3811
	call void @llvm.dbg.value(metadata i64 %414, i64 0, metadata !3294, metadata !1043), !dbg !3356
	%415 = icmp ult i64 %414, %131, !dbg !3813
	br i1 %415, label %416, label %420, !dbg !3817
	%417 = lshr i8 %383, 6, !dbg !3819
	%418 = or i8 %417, 48, !dbg !3819
	%419 = getelementptr inbounds i8, i8* %0, i64 %414, !dbg !3819
	store i8 %418, i8* %419, align 1, !dbg !3819, !tbaa !1279
	br label %420, !dbg !3819
	%421 = add i64 %408, 2, !dbg !3821
	call void @llvm.dbg.value(metadata i64 %421, i64 0, metadata !3294, metadata !1043), !dbg !3356
	%422 = icmp ult i64 %421, %131, !dbg !3823
	br i1 %422, label %423, label %428, !dbg !3827
	%424 = lshr i8 %383, 3, !dbg !3829
	%425 = and i8 %424, 7, !dbg !3829
	%426 = or i8 %425, 48, !dbg !3829
	%427 = getelementptr inbounds i8, i8* %0, i64 %421, !dbg !3829
	store i8 %426, i8* %427, align 1, !dbg !3829, !tbaa !1279
	br label %428, !dbg !3829
	%429 = add i64 %408, 3, !dbg !3831
	call void @llvm.dbg.value(metadata i64 %429, i64 0, metadata !3294, metadata !1043), !dbg !3356
	%430 = and i8 %383, 7, !dbg !3833
	%431 = or i8 %430, 48, !dbg !3834
	call void @llvm.dbg.value(metadata i8 %431, i64 0, metadata !3304, metadata !1043), !dbg !3462
	br label %441, !dbg !3835
	%433 = and i8 %384, 1, !dbg !3836
	%434 = icmp eq i8 %433, 0, !dbg !3836
	br i1 %434, label %441, label %435, !dbg !3838
	%436 = icmp ult i64 %381, %131, !dbg !3839
	br i1 %436, label %437, label %439, !dbg !3844
	%438 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !3846
	store i8 92, i8* %438, align 1, !dbg !3846, !tbaa !1279
	br label %439, !dbg !3846
	%440 = add i64 %381, 1, !dbg !3848
	call void @llvm.dbg.value(metadata i64 %440, i64 0, metadata !3294, metadata !1043), !dbg !3356
	call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3309, metadata !1043), !dbg !3443
	br label %441, !dbg !3850
	%442 = phi i64 [ %440, %439 ], [ %381, %432 ], [ %429, %428 ]
	%443 = phi i8 [ %382, %439 ], [ %382, %432 ], [ %409, %428 ]
	%444 = phi i8 [ %383, %439 ], [ %383, %432 ], [ %431, %428 ]
	%445 = phi i8 [ 0, %439 ], [ %384, %432 ], [ %384, %428 ]
	%446 = phi i8 [ %385, %439 ], [ %385, %432 ], [ 1, %428 ]
	call void @llvm.dbg.value(metadata i8 %446, i64 0, metadata !3310, metadata !1043), !dbg !3444
	call void @llvm.dbg.value(metadata i8 %445, i64 0, metadata !3309, metadata !1043), !dbg !3443
	call void @llvm.dbg.value(metadata i8 %444, i64 0, metadata !3304, metadata !1043), !dbg !3462
	call void @llvm.dbg.value(metadata i8 %443, i64 0, metadata !3301, metadata !1043), !dbg !3364
	call void @llvm.dbg.value(metadata i64 %442, i64 0, metadata !3294, metadata !1043), !dbg !3356
	%447 = add i64 %380, 1, !dbg !3851
	%448 = icmp ugt i64 %378, %447, !dbg !3853
	br i1 %448, label %449, label %541, !dbg !3854
	%450 = and i8 %443, 1, !dbg !3855
	%451 = icmp ne i8 %450, 0, !dbg !3855
	%452 = and i8 %446, 1, !dbg !3859
	%453 = icmp eq i8 %452, 0, !dbg !3859
	%454 = and i1 %451, %453, !dbg !3855
	br i1 %454, label %455, label %466, !dbg !3855
	%456 = icmp ult i64 %442, %131, !dbg !3861
	br i1 %456, label %457, label %459, !dbg !3866
	%458 = getelementptr inbounds i8, i8* %0, i64 %442, !dbg !3868
	store i8 39, i8* %458, align 1, !dbg !3868, !tbaa !1279
	br label %459, !dbg !3868
	%460 = add i64 %442, 1, !dbg !3870
	call void @llvm.dbg.value(metadata i64 %460, i64 0, metadata !3294, metadata !1043), !dbg !3356
	%461 = icmp ult i64 %460, %131, !dbg !3872
	br i1 %461, label %462, label %464, !dbg !3876
	%463 = getelementptr inbounds i8, i8* %0, i64 %460, !dbg !3878
	store i8 39, i8* %463, align 1, !dbg !3878, !tbaa !1279
	br label %464, !dbg !3878
	%465 = add i64 %442, 2, !dbg !3880
	call void @llvm.dbg.value(metadata i64 %465, i64 0, metadata !3294, metadata !1043), !dbg !3356
	call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3301, metadata !1043), !dbg !3364
	br label %466, !dbg !3882
	%467 = phi i64 [ %465, %464 ], [ %442, %449 ]
	%468 = phi i8 [ 0, %464 ], [ %443, %449 ]
	call void @llvm.dbg.value(metadata i8 %468, i64 0, metadata !3301, metadata !1043), !dbg !3364
	call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !3294, metadata !1043), !dbg !3356
	%469 = icmp ult i64 %467, %131, !dbg !3884
	br i1 %469, label %470, label %472, !dbg !3888
	%471 = getelementptr inbounds i8, i8* %0, i64 %467, !dbg !3890
	store i8 %444, i8* %471, align 1, !dbg !3890, !tbaa !1279
	br label %472, !dbg !3890
	%473 = add i64 %467, 1, !dbg !3892
	call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !3294, metadata !1043), !dbg !3356
	call void @llvm.dbg.value(metadata i64 %447, i64 0, metadata !3293, metadata !1043), !dbg !3431
	%474 = getelementptr inbounds i8, i8* %2, i64 %447, !dbg !3894
	%475 = load i8, i8* %474, align 1, !dbg !3894, !tbaa !1279
	call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !3304, metadata !1043), !dbg !3462
	br label %379, !dbg !3895, !llvm.loop !3897
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
	call void @llvm.dbg.value(metadata i64 %486, i64 0, metadata !3285, metadata !1043), !dbg !3348
	call void @llvm.dbg.value(metadata i8 %485, i64 0, metadata !3311, metadata !1043), !dbg !3445
	call void @llvm.dbg.value(metadata i8 %484, i64 0, metadata !3310, metadata !1043), !dbg !3444
	call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !3309, metadata !1043), !dbg !3443
	call void @llvm.dbg.value(metadata i8 %483, i64 0, metadata !3304, metadata !1043), !dbg !3462
	call void @llvm.dbg.value(metadata i8 %482, i64 0, metadata !3302, metadata !1043), !dbg !3365
	call void @llvm.dbg.value(metadata i8 %481, i64 0, metadata !3301, metadata !1043), !dbg !3364
	call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !3287, metadata !1043), !dbg !3350
	call void @llvm.dbg.value(metadata i64 %479, i64 0, metadata !3295, metadata !1043), !dbg !3357
	call void @llvm.dbg.value(metadata i64 %478, i64 0, metadata !3294, metadata !1043), !dbg !3356
	call void @llvm.dbg.value(metadata i64 %477, i64 0, metadata !3293, metadata !1043), !dbg !3431
	br i1 %107, label %488, label %487, !dbg !3900
	br i1 %117, label %489, label %501, !dbg !3902
	br i1 %20, label %501, label %489, !dbg !3903
	%490 = lshr i8 %483, 5, !dbg !3904
	%491 = zext i8 %490 to i64, !dbg !3904
	%492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !3906
	%493 = load i32, i32* %492, align 4, !dbg !3906, !tbaa !1070
	%494 = and i8 %483, 31, !dbg !3907
	%495 = zext i8 %494 to i32, !dbg !3908
	%496 = shl i32 1, %495, !dbg !3909
	%497 = and i32 %493, %496, !dbg !3909
	%498 = icmp eq i32 %497, 0, !dbg !3909
	%499 = icmp eq i8 %157, 0, !dbg !3910
	%500 = and i1 %499, %498, !dbg !3911
	br i1 %500, label %542, label %503, !dbg !3911
	%502 = icmp eq i8 %157, 0, !dbg !3910
	br i1 %502, label %542, label %503, !dbg !3912
	%504 = phi i64 [ %477, %489 ], [ %477, %501 ], [ %124, %257 ]
	%505 = phi i64 [ %478, %489 ], [ %478, %501 ], [ %125, %257 ]
	%506 = phi i64 [ %479, %489 ], [ %479, %501 ], [ %126, %257 ]
	%507 = phi i64 [ %480, %489 ], [ %480, %501 ], [ %156, %257 ]
	%508 = phi i8 [ %481, %489 ], [ %481, %501 ], [ %128, %257 ]
	%509 = phi i8 [ %482, %489 ], [ %482, %501 ], [ %129, %257 ]
	%510 = phi i8 [ %483, %489 ], [ %483, %501 ], [ %258, %257 ]
	%511 = phi i8 [ %485, %489 ], [ %485, %501 ], [ 0, %257 ]
	%512 = phi i64 [ %486, %489 ], [ %486, %501 ], [ %131, %257 ]
	call void @llvm.dbg.value(metadata i64 %512, i64 0, metadata !3285, metadata !1043), !dbg !3348
	call void @llvm.dbg.value(metadata i8 %511, i64 0, metadata !3311, metadata !1043), !dbg !3445
	call void @llvm.dbg.value(metadata i8 %510, i64 0, metadata !3304, metadata !1043), !dbg !3462
	call void @llvm.dbg.value(metadata i8 %509, i64 0, metadata !3302, metadata !1043), !dbg !3365
	call void @llvm.dbg.value(metadata i8 %508, i64 0, metadata !3301, metadata !1043), !dbg !3364
	call void @llvm.dbg.value(metadata i64 %507, i64 0, metadata !3287, metadata !1043), !dbg !3350
	call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !3295, metadata !1043), !dbg !3357
	call void @llvm.dbg.value(metadata i64 %505, i64 0, metadata !3294, metadata !1043), !dbg !3356
	call void @llvm.dbg.value(metadata i64 %504, i64 0, metadata !3293, metadata !1043), !dbg !3431
	br i1 %112, label %513, label %644, !dbg !3914
	call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3310, metadata !1043), !dbg !3444
	%514 = and i8 %508, 1, !dbg !3917
	%515 = icmp eq i8 %514, 0, !dbg !3917
	%516 = and i1 %114, %515, !dbg !3920
	br i1 %516, label %517, label %533, !dbg !3920
	%518 = icmp ult i64 %505, %512, !dbg !3922
	br i1 %518, label %519, label %521, !dbg !3927
	%520 = getelementptr inbounds i8, i8* %0, i64 %505, !dbg !3929
	store i8 39, i8* %520, align 1, !dbg !3929, !tbaa !1279
	br label %521, !dbg !3929
	%522 = add i64 %505, 1, !dbg !3931
	call void @llvm.dbg.value(metadata i64 %522, i64 0, metadata !3294, metadata !1043), !dbg !3356
	%523 = icmp ult i64 %522, %512, !dbg !3933
	br i1 %523, label %524, label %526, !dbg !3937
	%525 = getelementptr inbounds i8, i8* %0, i64 %522, !dbg !3939
	store i8 36, i8* %525, align 1, !dbg !3939, !tbaa !1279
	br label %526, !dbg !3939
	%527 = add i64 %505, 2, !dbg !3941
	call void @llvm.dbg.value(metadata i64 %527, i64 0, metadata !3294, metadata !1043), !dbg !3356
	%528 = icmp ult i64 %527, %512, !dbg !3943
	br i1 %528, label %529, label %531, !dbg !3947
	%530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !3949
	store i8 39, i8* %530, align 1, !dbg !3949, !tbaa !1279
	br label %531, !dbg !3949
	%532 = add i64 %505, 3, !dbg !3951
	call void @llvm.dbg.value(metadata i64 %532, i64 0, metadata !3294, metadata !1043), !dbg !3356
	call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !3301, metadata !1043), !dbg !3364
	br label %533, !dbg !3953
	%534 = phi i64 [ %532, %531 ], [ %505, %513 ]
	%535 = phi i8 [ 1, %531 ], [ %508, %513 ]
	call void @llvm.dbg.value(metadata i8 %535, i64 0, metadata !3301, metadata !1043), !dbg !3364
	call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !3294, metadata !1043), !dbg !3356
	%536 = icmp ult i64 %534, %512, !dbg !3955
	br i1 %536, label %537, label %539, !dbg !3959
	%538 = getelementptr inbounds i8, i8* %0, i64 %534, !dbg !3961
	store i8 92, i8* %538, align 1, !dbg !3961, !tbaa !1279
	br label %539, !dbg !3961
	%540 = add i64 %534, 1, !dbg !3963
	call void @llvm.dbg.value(metadata i64 %540, i64 0, metadata !3294, metadata !1043), !dbg !3356
	call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !3285, metadata !1043), !dbg !3348
	call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !3311, metadata !1043), !dbg !3445
	call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !3310, metadata !1043), !dbg !3444
	call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !3304, metadata !1043), !dbg !3462
	call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !3302, metadata !1043), !dbg !3365
	call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !3301, metadata !1043), !dbg !3364
	call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !3287, metadata !1043), !dbg !3350
	call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !3295, metadata !1043), !dbg !3357
	call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !3294, metadata !1043), !dbg !3356
	call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !3293, metadata !1043), !dbg !3431
	br label %569, !dbg !3965
	br label %542, !dbg !3348
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
	call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !3285, metadata !1043), !dbg !3348
	call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !3311, metadata !1043), !dbg !3445
	call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !3310, metadata !1043), !dbg !3444
	call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !3304, metadata !1043), !dbg !3462
	call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !3302, metadata !1043), !dbg !3365
	call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !3301, metadata !1043), !dbg !3364
	call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !3287, metadata !1043), !dbg !3350
	call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !3295, metadata !1043), !dbg !3357
	call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !3294, metadata !1043), !dbg !3356
	call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !3293, metadata !1043), !dbg !3431
	%553 = and i8 %547, 1, !dbg !3965
	%554 = icmp ne i8 %553, 0, !dbg !3965
	%555 = and i8 %550, 1, !dbg !3969
	%556 = icmp eq i8 %555, 0, !dbg !3969
	%557 = and i1 %554, %556, !dbg !3965
	br i1 %557, label %558, label %569, !dbg !3965
	%559 = icmp ult i64 %544, %552, !dbg !3971
	br i1 %559, label %560, label %562, !dbg !3976
	%561 = getelementptr inbounds i8, i8* %0, i64 %544, !dbg !3978
	store i8 39, i8* %561, align 1, !dbg !3978, !tbaa !1279
	br label %562, !dbg !3978
	%563 = add i64 %544, 1, !dbg !3980
	call void @llvm.dbg.value(metadata i64 %563, i64 0, metadata !3294, metadata !1043), !dbg !3356
	%564 = icmp ult i64 %563, %552, !dbg !3982
	br i1 %564, label %565, label %567, !dbg !3986
	%566 = getelementptr inbounds i8, i8* %0, i64 %563, !dbg !3988
	store i8 39, i8* %566, align 1, !dbg !3988, !tbaa !1279
	br label %567, !dbg !3988
	%568 = add i64 %544, 2, !dbg !3990
	call void @llvm.dbg.value(metadata i64 %568, i64 0, metadata !3294, metadata !1043), !dbg !3356
	call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3301, metadata !1043), !dbg !3364
	br label %569, !dbg !3992
	%570 = phi i64 [ %552, %567 ], [ %552, %542 ], [ %512, %539 ]
	%571 = phi i8 [ %551, %567 ], [ %551, %542 ], [ %511, %539 ]
	%572 = phi i8 [ %549, %567 ], [ %549, %542 ], [ %510, %539 ]
	%573 = phi i8 [ %548, %567 ], [ %548, %542 ], [ %509, %539 ]
	%574 = phi i64 [ %546, %567 ], [ %546, %542 ], [ %507, %539 ]
	%575 = phi i64 [ %545, %567 ], [ %545, %542 ], [ %506, %539 ]
	%576 = phi i64 [ %543, %567 ], [ %543, %542 ], [ %504, %539 ]
	%577 = phi i64 [ %568, %567 ], [ %544, %542 ], [ %540, %539 ]
	%578 = phi i8 [ 0, %567 ], [ %547, %542 ], [ %535, %539 ]
	call void @llvm.dbg.value(metadata i8 %578, i64 0, metadata !3301, metadata !1043), !dbg !3364
	call void @llvm.dbg.value(metadata i64 %577, i64 0, metadata !3294, metadata !1043), !dbg !3356
	%579 = icmp ult i64 %577, %570, !dbg !3994
	br i1 %579, label %580, label %582, !dbg !3998
	%581 = getelementptr inbounds i8, i8* %0, i64 %577, !dbg !4000
	store i8 %572, i8* %581, align 1, !dbg !4000, !tbaa !1279
	br label %582, !dbg !4000
	%583 = add i64 %577, 1, !dbg !4002
	call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !3294, metadata !1043), !dbg !3356
	%584 = and i8 %571, 1, !dbg !4004
	%585 = icmp eq i8 %584, 0, !dbg !4004
	call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3303, metadata !1043), !dbg !3366
	%586 = select i1 %585, i8 0, i8 %130, !dbg !4006
	call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !3303, metadata !1043), !dbg !3366
	br label %587, !dbg !4007
	%588 = phi i64 [ %124, %209 ], [ %576, %582 ]
	%589 = phi i64 [ %125, %209 ], [ %583, %582 ]
	%590 = phi i64 [ %126, %209 ], [ %575, %582 ]
	%591 = phi i64 [ %156, %209 ], [ %574, %582 ]
	%592 = phi i8 [ %128, %209 ], [ %578, %582 ]
	%593 = phi i8 [ %129, %209 ], [ %573, %582 ]
	%594 = phi i8 [ %130, %209 ], [ %586, %582 ]
	%595 = phi i64 [ %131, %209 ], [ %570, %582 ]
	%596 = add i64 %588, 1, !dbg !4008
	call void @llvm.dbg.value(metadata i64 %596, i64 0, metadata !3293, metadata !1043), !dbg !3431
	br label %123, !dbg !4010, !llvm.loop !4011
	%598 = phi i64 [ %124, %133 ], [ -1, %135 ]
	%599 = icmp eq i64 %125, 0, !dbg !4014
	%600 = and i1 %114, %599, !dbg !4016
	%601 = xor i1 %600, true, !dbg !4016
	%602 = or i1 %112, %601, !dbg !4016
	br i1 %602, label %603, label %648, !dbg !4016
	%604 = and i1 %114, %112, !dbg !4017
	%605 = xor i1 %604, true, !dbg !4017
	%606 = and i8 %129, 1, !dbg !4019
	%607 = icmp eq i8 %606, 0, !dbg !4019
	%608 = or i1 %607, %605, !dbg !4017
	br i1 %608, label %618, label %609, !dbg !4017
	%610 = and i8 %130, 1, !dbg !4021
	%611 = icmp eq i8 %610, 0, !dbg !4021
	br i1 %611, label %614, label %612, !dbg !4024
	%613 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %126, i8* %2, i64 %598, i32 5, i32 %5, i32* %6, i8* %97, i8* %98), !dbg !4025
	br label %659, !dbg !4026
	%615 = icmp eq i64 %131, 0, !dbg !4027
	%616 = icmp ne i64 %126, 0, !dbg !4029
	%617 = and i1 %616, %615, !dbg !4031
	br i1 %617, label %27, label %618, !dbg !4031
	%619 = icmp ne i8* %100, null, !dbg !4032
	%620 = and i1 %619, %112, !dbg !4034
	br i1 %620, label %621, label %638, !dbg !4034
	call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !3296, metadata !1043), !dbg !3358
	call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !3294, metadata !1043), !dbg !3356
	%622 = load i8, i8* %100, align 1, !dbg !4035, !tbaa !1279
	%623 = icmp eq i8 %622, 0, !dbg !4039
	br i1 %623, label %638, label %624, !dbg !4039
	br label %625, !dbg !4041
	%626 = phi i8 [ %635, %632 ], [ %622, %624 ]
	%627 = phi i8* [ %634, %632 ], [ %100, %624 ]
	%628 = phi i64 [ %633, %632 ], [ %125, %624 ]
	%629 = icmp ult i64 %628, %131, !dbg !4041
	br i1 %629, label %630, label %632, !dbg !4045
	%631 = getelementptr inbounds i8, i8* %0, i64 %628, !dbg !4047
	store i8 %626, i8* %631, align 1, !dbg !4047, !tbaa !1279
	br label %632, !dbg !4047
	%633 = add i64 %628, 1, !dbg !4049
	call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !3294, metadata !1043), !dbg !3356
	%634 = getelementptr inbounds i8, i8* %627, i64 1, !dbg !4051
	call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !3296, metadata !1043), !dbg !3358
	call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !3296, metadata !1043), !dbg !3358
	call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !3294, metadata !1043), !dbg !3356
	%635 = load i8, i8* %634, align 1, !dbg !4035, !tbaa !1279
	%636 = icmp eq i8 %635, 0, !dbg !4039
	br i1 %636, label %637, label %625, !dbg !4039, !llvm.loop !4053
	br label %638, !dbg !3356
	%639 = phi i64 [ %125, %618 ], [ %125, %621 ], [ %633, %637 ]
	call void @llvm.dbg.value(metadata i64 %639, i64 0, metadata !3294, metadata !1043), !dbg !3356
	%640 = icmp ult i64 %639, %131, !dbg !4056
	br i1 %640, label %641, label %659, !dbg !4058
	%642 = getelementptr inbounds i8, i8* %0, i64 %639, !dbg !4059
	store i8 0, i8* %642, align 1, !dbg !4060, !tbaa !1279
	br label %659, !dbg !4059
	br label %649, !dbg !3348
	%645 = phi i32 [ %96, %148 ], [ %96, %161 ], [ 2, %211 ], [ 5, %225 ], [ 2, %253 ], [ 2, %255 ], [ 2, %273 ], [ 2, %276 ], [ %96, %503 ]
	%646 = phi i64 [ %146, %148 ], [ %156, %161 ], [ %156, %211 ], [ %156, %225 ], [ %156, %253 ], [ %156, %255 ], [ %156, %273 ], [ %156, %276 ], [ %507, %503 ]
	%647 = phi i64 [ %131, %148 ], [ %131, %161 ], [ %131, %211 ], [ %131, %225 ], [ %131, %253 ], [ %131, %255 ], [ %131, %273 ], [ %131, %276 ], [ %512, %503 ]
	br label %649, !dbg !3348
	br label %649, !dbg !3348
	%650 = phi i32 [ 2, %367 ], [ %96, %643 ], [ %645, %644 ], [ %96, %648 ]
	%651 = phi i64 [ %313, %367 ], [ %369, %643 ], [ %646, %644 ], [ %598, %648 ]
	%652 = phi i64 [ %131, %367 ], [ %131, %643 ], [ %647, %644 ], [ %131, %648 ]
	call void @llvm.dbg.value(metadata i64 %652, i64 0, metadata !3285, metadata !1043), !dbg !3348
	call void @llvm.dbg.value(metadata i64 %651, i64 0, metadata !3287, metadata !1043), !dbg !3350
	%653 = icmp ne i32 %650, 2, !dbg !4061
	%654 = icmp eq i8 %104, 0, !dbg !4063
	%655 = or i1 %653, %654, !dbg !4065
	call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !3288, metadata !1043), !dbg !3351
	%656 = select i1 %655, i32 %650, i32 4, !dbg !4065
	call void @llvm.dbg.value(metadata i32 %656, i64 0, metadata !3288, metadata !1043), !dbg !3351
	%657 = and i32 %5, -3, !dbg !4066
	%658 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %652, i8* %2, i64 %651, i32 %656, i32 %657, i32* null, i8* %97, i8* %98), !dbg !4067
	br label %659, !dbg !4068
	%660 = phi i64 [ %658, %649 ], [ %613, %612 ], [ %639, %641 ], [ %639, %638 ]
	ret i64 %660, !dbg !4069
}
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #1
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #4 !dbg !4070 {
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4074, metadata !1043), !dbg !4078
	tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4075, metadata !1043), !dbg !4079
	%3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #10, !dbg !4080
	tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4076, metadata !1043), !dbg !4081
	%4 = icmp eq i8* %3, %0, !dbg !4082
	br i1 %4, label %5, label %75, !dbg !4084
	%6 = tail call i8* @locale_charset() #10, !dbg !4085
	tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !4077, metadata !1043), !dbg !4086
	tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !4087, metadata !1043), !dbg !4103
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4101, metadata !1043), !dbg !4106
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4102, metadata !1043), !dbg !4107
	%7 = load i8, i8* %6, align 1, !tbaa !1279
	%8 = sext i8 %7 to i32
	%9 = and i32 %8, -33, !dbg !4108
	switch i32 %9, label %72 [
		i32 85, label %10
		i32 71, label %38
	], !dbg !4108
	tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !4111, metadata !1043), !dbg !4125
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4123, metadata !1043), !dbg !4129
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4124, metadata !1043), !dbg !4130
	%11 = getelementptr inbounds i8, i8* %6, i64 1
	%12 = load i8, i8* %11, align 1, !tbaa !1279
	%13 = sext i8 %12 to i32
	%14 = and i32 %13, -33, !dbg !4131
	%15 = icmp eq i32 %14, 84, !dbg !4131
	br i1 %15, label %16, label %72, !dbg !4131
	tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !4134, metadata !1043), !dbg !4147
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4145, metadata !1043), !dbg !4151
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4146, metadata !1043), !dbg !4152
	%17 = getelementptr inbounds i8, i8* %6, i64 2
	%18 = load i8, i8* %17, align 1, !tbaa !1279
	%19 = sext i8 %18 to i32
	%20 = and i32 %19, -33, !dbg !4153
	%21 = icmp eq i32 %20, 70, !dbg !4153
	br i1 %21, label %22, label %72, !dbg !4153
	tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !4156, metadata !1043), !dbg !4168
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4166, metadata !1043), !dbg !4172
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4167, metadata !1043), !dbg !4173
	%23 = getelementptr inbounds i8, i8* %6, i64 3
	%24 = load i8, i8* %23, align 1, !tbaa !1279
	%25 = icmp eq i8 %24, 45, !dbg !4174
	br i1 %25, label %26, label %72, !dbg !4177
	tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !4179, metadata !1043), !dbg !4190
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4188, metadata !1043), !dbg !4194
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4189, metadata !1043), !dbg !4195
	%27 = getelementptr inbounds i8, i8* %6, i64 4
	%28 = load i8, i8* %27, align 1, !tbaa !1279
	%29 = icmp eq i8 %28, 56, !dbg !4196
	br i1 %29, label %30, label %72, !dbg !4199
	tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !4201, metadata !1043), !dbg !4211
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4209, metadata !1043), !dbg !4215
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4210, metadata !1043), !dbg !4216
	%31 = getelementptr inbounds i8, i8* %6, i64 5
	%32 = load i8, i8* %31, align 1, !tbaa !1279
	%33 = icmp eq i8 %32, 0, !dbg !4217
	br i1 %33, label %34, label %72, !dbg !4220
	%35 = load i8, i8* %0, align 1, !dbg !4222, !tbaa !1279
	%36 = icmp eq i8 %35, 96, !dbg !4223
	%37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.97, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.98, i64 0, i64 0), !dbg !4222
	br label %75, !dbg !4224
	tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !4111, metadata !1043), !dbg !4225
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4123, metadata !1043), !dbg !4229
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4124, metadata !1043), !dbg !4230
	%39 = getelementptr inbounds i8, i8* %6, i64 1
	%40 = load i8, i8* %39, align 1, !tbaa !1279
	%41 = sext i8 %40 to i32
	%42 = and i32 %41, -33, !dbg !4231
	%43 = icmp eq i32 %42, 66, !dbg !4231
	br i1 %43, label %44, label %72, !dbg !4231
	tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !4134, metadata !1043), !dbg !4232
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4145, metadata !1043), !dbg !4234
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4146, metadata !1043), !dbg !4235
	%45 = getelementptr inbounds i8, i8* %6, i64 2
	%46 = load i8, i8* %45, align 1, !tbaa !1279
	%47 = icmp eq i8 %46, 49, !dbg !4236
	br i1 %47, label %48, label %72, !dbg !4238
	tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !4156, metadata !1043), !dbg !4240
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4166, metadata !1043), !dbg !4242
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4167, metadata !1043), !dbg !4243
	%49 = getelementptr inbounds i8, i8* %6, i64 3
	%50 = load i8, i8* %49, align 1, !tbaa !1279
	%51 = icmp eq i8 %50, 56, !dbg !4244
	br i1 %51, label %52, label %72, !dbg !4245
	tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !4179, metadata !1043), !dbg !4246
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4188, metadata !1043), !dbg !4248
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4189, metadata !1043), !dbg !4249
	%53 = getelementptr inbounds i8, i8* %6, i64 4
	%54 = load i8, i8* %53, align 1, !tbaa !1279
	%55 = icmp eq i8 %54, 48, !dbg !4250
	br i1 %55, label %56, label %72, !dbg !4251
	tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !4201, metadata !1043), !dbg !4252
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4209, metadata !1043), !dbg !4254
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4210, metadata !1043), !dbg !4255
	%57 = getelementptr inbounds i8, i8* %6, i64 5
	%58 = load i8, i8* %57, align 1, !tbaa !1279
	%59 = icmp eq i8 %58, 51, !dbg !4256
	br i1 %59, label %60, label %72, !dbg !4257
	tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !4258, metadata !1043), !dbg !4267
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4265, metadata !1043), !dbg !4271
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4266, metadata !1043), !dbg !4272
	%61 = getelementptr inbounds i8, i8* %6, i64 6
	%62 = load i8, i8* %61, align 1, !tbaa !1279
	%63 = icmp eq i8 %62, 48, !dbg !4273
	br i1 %63, label %64, label %72, !dbg !4276
	tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !4278, metadata !1043), !dbg !4286
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4284, metadata !1043), !dbg !4290
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4285, metadata !1043), !dbg !4291
	%65 = getelementptr inbounds i8, i8* %6, i64 7
	%66 = load i8, i8* %65, align 1, !tbaa !1279
	%67 = icmp eq i8 %66, 0, !dbg !4292
	br i1 %67, label %68, label %72, !dbg !4295
	%69 = load i8, i8* %0, align 1, !dbg !4296, !tbaa !1279
	%70 = icmp eq i8 %69, 96, !dbg !4297
	%71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.99, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.100, i64 0, i64 0), !dbg !4296
	br label %75, !dbg !4298
	%73 = icmp eq i32 %1, 9, !dbg !4299
	%74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.96, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.95, i64 0, i64 0), !dbg !4300
	br label %75, !dbg !4301
	%76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
	ret i8* %76, !dbg !4302
}
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #8
declare i32 @iswprint(i32) local_unnamed_addr #1
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #8
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #4 !dbg !4303 {
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4307, metadata !1043), !dbg !4310
	tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4308, metadata !1043), !dbg !4311
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !4309, metadata !1043), !dbg !4312
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4313, metadata !1043) #10, !dbg !4326
	tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4318, metadata !1043) #10, !dbg !4328
	tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !4319, metadata !1043) #10, !dbg !4329
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !4320, metadata !1043) #10, !dbg !4330
	%4 = icmp ne %struct.quoting_options* %2, null, !dbg !4331
	%5 = select i1 %4, %struct.quoting_options* %2, %struct.quoting_options* @default_quoting_options, !dbg !4331
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4321, metadata !1043) #10, !dbg !4332
	%6 = tail call i32* @__errno_location() #5, !dbg !4333
	%7 = load i32, i32* %6, align 4, !dbg !4333, !tbaa !1070
	tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !4322, metadata !1043) #10, !dbg !4334
	%8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !4335
	%9 = load i32, i32* %8, align 4, !dbg !4335, !tbaa !3216
	%10 = or i32 %9, 1, !dbg !4336
	tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !4323, metadata !1043) #10, !dbg !4337
	%11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !4338
	%12 = load i32, i32* %11, align 8, !dbg !4338, !tbaa !3154
	%13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !4339
	%14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !4340
	%15 = load i8*, i8** %14, align 8, !dbg !4340, !tbaa !3243
	%16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !4341
	%17 = load i8*, i8** %16, align 8, !dbg !4341, !tbaa !3246
	%18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #10, !dbg !4342
	%19 = add i64 %18, 1, !dbg !4343
	tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !4324, metadata !1043) #10, !dbg !4344
	tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !4345, metadata !1043) #10, !dbg !4350
	%20 = tail call noalias i8* @xmalloc(i64 %19) #10, !dbg !4352
	tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !4325, metadata !1043) #10, !dbg !4353
	%21 = load i32, i32* %11, align 8, !dbg !4354, !tbaa !3154
	%22 = load i8*, i8** %14, align 8, !dbg !4355, !tbaa !3243
	%23 = load i8*, i8** %16, align 8, !dbg !4356, !tbaa !3246
	%24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #10, !dbg !4357
	store i32 %7, i32* %6, align 4, !dbg !4358, !tbaa !1070
	ret i8* %20, !dbg !4359
}
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #4 !dbg !4314 {
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4313, metadata !1043), !dbg !4360
	tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4318, metadata !1043), !dbg !4361
	tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !4319, metadata !1043), !dbg !4362
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !4320, metadata !1043), !dbg !4363
	%5 = icmp ne %struct.quoting_options* %3, null, !dbg !4364
	%6 = select i1 %5, %struct.quoting_options* %3, %struct.quoting_options* @default_quoting_options, !dbg !4364
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !4321, metadata !1043), !dbg !4365
	%7 = tail call i32* @__errno_location() #5, !dbg !4366
	%8 = load i32, i32* %7, align 4, !dbg !4366, !tbaa !1070
	tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !4322, metadata !1043), !dbg !4367
	%9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !4368
	%10 = load i32, i32* %9, align 4, !dbg !4368, !tbaa !3216
	%11 = icmp ne i64* %2, null, !dbg !4369
	%12 = xor i1 %11, true, !dbg !4369
	%13 = zext i1 %12 to i32, !dbg !4369
	%14 = or i32 %10, %13, !dbg !4370
	tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !4323, metadata !1043), !dbg !4371
	%15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !4372
	%16 = load i32, i32* %15, align 8, !dbg !4372, !tbaa !3154
	%17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !4373
	%18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !4374
	%19 = load i8*, i8** %18, align 8, !dbg !4374, !tbaa !3243
	%20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !4375
	%21 = load i8*, i8** %20, align 8, !dbg !4375, !tbaa !3246
	%22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !4376
	%23 = add i64 %22, 1, !dbg !4377
	tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !4324, metadata !1043), !dbg !4378
	tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !4345, metadata !1043) #10, !dbg !4379
	%24 = tail call noalias i8* @xmalloc(i64 %23) #10, !dbg !4381
	tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !4325, metadata !1043), !dbg !4382
	%25 = load i32, i32* %15, align 8, !dbg !4383, !tbaa !3154
	%26 = load i8*, i8** %18, align 8, !dbg !4384, !tbaa !3243
	%27 = load i8*, i8** %20, align 8, !dbg !4385, !tbaa !3246
	%28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !4386
	store i32 %8, i32* %7, align 4, !dbg !4387, !tbaa !1070
	br i1 %11, label %29, label %30, !dbg !4388
	store i64 %22, i64* %2, align 8, !dbg !4389, !tbaa !1079
	br label %30, !dbg !4391
	ret i8* %24, !dbg !4392
}
define void @quotearg_free() local_unnamed_addr #4 !dbg !4393 {
	%1 = load %struct.cstring*, %struct.cstring** @slotvec, align 8, !dbg !4397, !tbaa !1032
	tail call void @llvm.dbg.value(metadata %struct.cstring* %1, i64 0, metadata !4395, metadata !1043), !dbg !4398
	tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4396, metadata !1043), !dbg !4399
	tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4396, metadata !1043), !dbg !4399
	%2 = load i32, i32* @nslots, align 4, !dbg !4400, !tbaa !1070
	%3 = icmp sgt i32 %2, 1, !dbg !4404
	br i1 %3, label %4, label %14, !dbg !4405
	br label %5, !dbg !4407
	%6 = phi i64 [ %9, %5 ], [ 1, %4 ]
	%7 = getelementptr inbounds %struct.cstring, %struct.cstring* %1, i64 %6, i32 1, !dbg !4407
	%8 = load i8*, i8** %7, align 8, !dbg !4407, !tbaa !4408
	tail call void @free(i8* %8) #10, !dbg !4410
	%9 = add nuw i64 %6, 1, !dbg !4411
	%10 = load i32, i32* @nslots, align 4, !dbg !4400, !tbaa !1070
	%11 = sext i32 %10 to i64, !dbg !4404
	%12 = icmp slt i64 %9, %11, !dbg !4404
	br i1 %12, label %5, label %13, !dbg !4405, !llvm.loop !4413
	br label %14, !dbg !4416
	%15 = getelementptr inbounds %struct.cstring, %struct.cstring* %1, i64 0, i32 1, !dbg !4416
	%16 = load i8*, i8** %15, align 8, !dbg !4416, !tbaa !4408
	%17 = icmp eq i8* %16, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !4418
	br i1 %17, label %19, label %18, !dbg !4419
	tail call void @free(i8* %16) #10, !dbg !4420
	store i64 256, i64* getelementptr inbounds (%struct.cstring, %struct.cstring* @slotvec0, i64 0, i32 0), align 8, !dbg !4422, !tbaa !4423
	store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.cstring, %struct.cstring* @slotvec0, i64 0, i32 1), align 8, !dbg !4424, !tbaa !4408
	br label %19, !dbg !4425
	%20 = icmp eq %struct.cstring* %1, @slotvec0, !dbg !4426
	br i1 %20, label %23, label %21, !dbg !4428
	%22 = bitcast %struct.cstring* %1 to i8*, !dbg !4429
	tail call void @free(i8* %22) #10, !dbg !4431
	store %struct.cstring* @slotvec0, %struct.cstring** @slotvec, align 8, !dbg !4432, !tbaa !1032
	br label %23, !dbg !4433
	store i32 1, i32* @nslots, align 4, !dbg !4434, !tbaa !1070
	ret void, !dbg !4435
}
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #4 !dbg !4436 {
	tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4440, metadata !1043), !dbg !4442
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4441, metadata !1043), !dbg !4443
	%3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !4444
	ret i8* %3, !dbg !4445
}
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #4 !dbg !4446 {
	tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4450, metadata !1043), !dbg !4464
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4451, metadata !1043), !dbg !4465
	tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4452, metadata !1043), !dbg !4466
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !4453, metadata !1043), !dbg !4467
	%5 = tail call i32* @__errno_location() #5, !dbg !4468
	%6 = load i32, i32* %5, align 4, !dbg !4468, !tbaa !1070
	tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !4454, metadata !1043), !dbg !4469
	%7 = load %struct.cstring*, %struct.cstring** @slotvec, align 8, !dbg !4470, !tbaa !1032
	tail call void @llvm.dbg.value(metadata %struct.cstring* %7, i64 0, metadata !4455, metadata !1043), !dbg !4471
	%8 = icmp slt i32 %0, 0, !dbg !4472
	br i1 %8, label %9, label %10, !dbg !4474
	tail call void @abort() #14, !dbg !4475
	unreachable, !dbg !4475
	%11 = load i32, i32* @nslots, align 4, !dbg !4476, !tbaa !1070
	%12 = icmp sgt i32 %11, %0, !dbg !4477
	br i1 %12, label %34, label %13, !dbg !4478
	%14 = icmp eq %struct.cstring* %7, @slotvec0, !dbg !4479
	%15 = icmp ugt i32 %0, 2147483646, !dbg !4480
	br i1 %15, label %16, label %17, !dbg !4482
	tail call void @xalloc_die() #14, !dbg !4483
	unreachable, !dbg !4483
	%18 = bitcast %struct.cstring* %7 to i8*, !dbg !4484
	%19 = select i1 %14, i8* null, i8* %18, !dbg !4484
	%20 = add nsw i32 %0, 1, !dbg !4486
	%21 = sext i32 %20 to i64, !dbg !4487
	%22 = shl nsw i64 %21, 4, !dbg !4488
	%23 = tail call i8* @xrealloc(i8* %19, i64 %22) #10, !dbg !4489
	%24 = bitcast i8* %23 to %struct.cstring*, !dbg !4489
	tail call void @llvm.dbg.value(metadata %struct.cstring* %24, i64 0, metadata !4455, metadata !1043), !dbg !4471
	store i8* %23, i8** bitcast (%struct.cstring** @slotvec to i8**), align 8, !dbg !4490, !tbaa !1032
	br i1 %14, label %25, label %26, !dbg !4491
	tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.cstring* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !4492, !tbaa.struct !4494
	br label %26, !dbg !4495
	%27 = load i32, i32* @nslots, align 4, !dbg !4496, !tbaa !1070
	%28 = sext i32 %27 to i64, !dbg !4497
	%29 = getelementptr inbounds %struct.cstring, %struct.cstring* %24, i64 %28, !dbg !4497
	%30 = bitcast %struct.cstring* %29 to i8*, !dbg !4498
	%31 = sub nsw i32 %20, %27, !dbg !4499
	%32 = sext i32 %31 to i64, !dbg !4500
	%33 = shl nsw i64 %32, 4, !dbg !4501
	tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !4498
	store i32 %20, i32* @nslots, align 4, !dbg !4502, !tbaa !1070
	br label %34, !dbg !4503
	%35 = phi %struct.cstring* [ %24, %26 ], [ %7, %10 ]
	tail call void @llvm.dbg.value(metadata %struct.cstring* %35, i64 0, metadata !4455, metadata !1043), !dbg !4471
	%36 = sext i32 %0 to i64, !dbg !4504
	%37 = getelementptr inbounds %struct.cstring, %struct.cstring* %35, i64 %36, i32 0, !dbg !4505
	%38 = load i64, i64* %37, align 8, !dbg !4505, !tbaa !4423
	tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !4459, metadata !1043), !dbg !4506
	%39 = getelementptr inbounds %struct.cstring, %struct.cstring* %35, i64 %36, i32 1, !dbg !4507
	%40 = load i8*, i8** %39, align 8, !dbg !4507, !tbaa !4408
	tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !4461, metadata !1043), !dbg !4508
	%41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !4509
	%42 = load i32, i32* %41, align 4, !dbg !4509, !tbaa !3216
	%43 = or i32 %42, 1, !dbg !4510
	tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !4462, metadata !1043), !dbg !4511
	%44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !4512
	%45 = load i32, i32* %44, align 8, !dbg !4512, !tbaa !3154
	%46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !4513
	%47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !4514
	%48 = load i8*, i8** %47, align 8, !dbg !4514, !tbaa !3243
	%49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !4515
	%50 = load i8*, i8** %49, align 8, !dbg !4515, !tbaa !3246
	%51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !4516
	tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !4463, metadata !1043), !dbg !4517
	%52 = icmp ugt i64 %38, %51, !dbg !4518
	br i1 %52, label %63, label %53, !dbg !4520
	%54 = add i64 %51, 1, !dbg !4521
	tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !4459, metadata !1043), !dbg !4506
	store i64 %54, i64* %37, align 8, !dbg !4523, !tbaa !4423
	%55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !4524
	br i1 %55, label %57, label %56, !dbg !4526
	tail call void @free(i8* %40) #10, !dbg !4527
	br label %57, !dbg !4527
	tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !4345, metadata !1043) #10, !dbg !4528
	%58 = tail call noalias i8* @xmalloc(i64 %54) #10, !dbg !4530
	tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !4461, metadata !1043), !dbg !4508
	store i8* %58, i8** %39, align 8, !dbg !4531, !tbaa !4408
	%59 = load i32, i32* %44, align 8, !dbg !4532, !tbaa !3154
	%60 = load i8*, i8** %47, align 8, !dbg !4533, !tbaa !3243
	%61 = load i8*, i8** %49, align 8, !dbg !4534, !tbaa !3246
	%62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !4535
	br label %63, !dbg !4536
	%64 = phi i8* [ %58, %57 ], [ %40, %34 ]
	tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !4461, metadata !1043), !dbg !4508
	store i32 %6, i32* %5, align 4, !dbg !4537, !tbaa !1070
	ret i8* %64, !dbg !4538
}
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #4 !dbg !4539 {
	tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4543, metadata !1043), !dbg !4546
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4544, metadata !1043), !dbg !4547
	tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4545, metadata !1043), !dbg !4548
	%4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !4549
	ret i8* %4, !dbg !4550
}
define i8* @quotearg(i8*) local_unnamed_addr #4 !dbg !4551 {
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4555, metadata !1043), !dbg !4556
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4440, metadata !1043) #10, !dbg !4557
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4441, metadata !1043) #10, !dbg !4559
	%2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !4560
	ret i8* %2, !dbg !4561
}
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #4 !dbg !4562 {
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4566, metadata !1043), !dbg !4568
	tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4567, metadata !1043), !dbg !4569
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4543, metadata !1043) #10, !dbg !4570
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4544, metadata !1043) #10, !dbg !4572
	tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4545, metadata !1043) #10, !dbg !4573
	%3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !4574
	ret i8* %3, !dbg !4575
}
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #4 !dbg !4576 {
	%4 = alloca [52 x i8], align 4
	tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !4584, metadata !4590), !dbg !4591
	%5 = alloca %struct.quoting_options, align 8
	tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4580, metadata !1043), !dbg !4593
	tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4581, metadata !1043), !dbg !4594
	tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4582, metadata !1043), !dbg !4595
	%6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !4596
	call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !4596
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4583, metadata !1011), !dbg !4597
	tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4589, metadata !1043) #10, !dbg !4598
	%7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !4599
	call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !4599
	tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !4584, metadata !1043) #10, !dbg !4591
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4584, metadata !4600) #10, !dbg !4591
	call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !4591
	%8 = icmp eq i32 %1, 10, !dbg !4601
	br i1 %8, label %9, label %10, !dbg !4603
	tail call void @abort() #14, !dbg !4604, !noalias !4605
	unreachable, !dbg !4604
	tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4584, metadata !4600) #10, !dbg !4591
	%11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !4608
	store i32 %1, i32* %11, align 8, !dbg !4608, !alias.scope !4605
	%12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !4608
	%13 = bitcast i32* %12 to i8*, !dbg !4608
	call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !4608
	call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !4609
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4583, metadata !1011), !dbg !4597
	%14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !4610
	call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !4611
	ret i8* %14, !dbg !4612
}
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #4 !dbg !4613 {
	%5 = alloca [52 x i8], align 4
	tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !4584, metadata !4590), !dbg !4622
	%6 = alloca %struct.quoting_options, align 8
	tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4617, metadata !1043), !dbg !4624
	tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4618, metadata !1043), !dbg !4625
	tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4619, metadata !1043), !dbg !4626
	tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4620, metadata !1043), !dbg !4627
	%7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !4628
	call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10, !dbg !4628
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !4621, metadata !1011), !dbg !4629
	tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4589, metadata !1043) #10, !dbg !4630
	%8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !4631
	call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !4631
	tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !4584, metadata !1043) #10, !dbg !4622
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4584, metadata !4600) #10, !dbg !4622
	call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !4622
	%9 = icmp eq i32 %1, 10, !dbg !4632
	br i1 %9, label %10, label %11, !dbg !4633
	tail call void @abort() #14, !dbg !4634, !noalias !4635
	unreachable, !dbg !4634
	tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4584, metadata !4600) #10, !dbg !4622
	%12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !4638
	store i32 %1, i32* %12, align 8, !dbg !4638, !alias.scope !4635
	%13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !4638
	%14 = bitcast i32* %13 to i8*, !dbg !4638
	call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #10, !dbg !4638
	call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !4639
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !4621, metadata !1011), !dbg !4629
	%15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !4640
	call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10, !dbg !4641
	ret i8* %15, !dbg !4642
}
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #4 !dbg !4643 {
	%3 = alloca [52 x i8], align 4
	tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !4584, metadata !4590), !dbg !4649
	%4 = alloca %struct.quoting_options, align 8
	tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4647, metadata !1043), !dbg !4652
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4648, metadata !1043), !dbg !4653
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4580, metadata !1043) #10, !dbg !4654
	tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4581, metadata !1043) #10, !dbg !4655
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4582, metadata !1043) #10, !dbg !4656
	%5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !4657
	call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10, !dbg !4657
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !4583, metadata !1011) #10, !dbg !4658
	tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4589, metadata !1043) #10, !dbg !4659
	%6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !4660
	call void @llvm.lifetime.start(i64 52, i8* nonnull %6), !dbg !4660
	tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !4584, metadata !1043) #10, !dbg !4649
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4584, metadata !4600) #10, !dbg !4649
	call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !4649
	%7 = icmp eq i32 %0, 10, !dbg !4661
	br i1 %7, label %8, label %9, !dbg !4662
	tail call void @abort() #14, !dbg !4663, !noalias !4664
	unreachable, !dbg !4663
	tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4584, metadata !4600) #10, !dbg !4649
	%10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !4667
	store i32 %0, i32* %10, align 8, !dbg !4667, !alias.scope !4664
	%11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !4667
	%12 = bitcast i32* %11 to i8*, !dbg !4667
	call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #10, !dbg !4667
	call void @llvm.lifetime.end(i64 52, i8* nonnull %6), !dbg !4668
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !4583, metadata !1011) #10, !dbg !4658
	%13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !4669
	call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10, !dbg !4670
	ret i8* %13, !dbg !4671
}
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #4 !dbg !4672 {
	%4 = alloca [52 x i8], align 4
	tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !4584, metadata !4590), !dbg !4679
	%5 = alloca %struct.quoting_options, align 8
	tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4676, metadata !1043), !dbg !4682
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4677, metadata !1043), !dbg !4683
	tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4678, metadata !1043), !dbg !4684
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4617, metadata !1043) #10, !dbg !4685
	tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4618, metadata !1043) #10, !dbg !4686
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4619, metadata !1043) #10, !dbg !4687
	tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4620, metadata !1043) #10, !dbg !4688
	%6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !4689
	call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !4689
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4621, metadata !1011) #10, !dbg !4690
	tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4589, metadata !1043) #10, !dbg !4691
	%7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !4692
	call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !4692
	tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !4584, metadata !1043) #10, !dbg !4679
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4584, metadata !4600) #10, !dbg !4679
	call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !4679
	%8 = icmp eq i32 %0, 10, !dbg !4693
	br i1 %8, label %9, label %10, !dbg !4694
	tail call void @abort() #14, !dbg !4695, !noalias !4696
	unreachable, !dbg !4695
	tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4584, metadata !4600) #10, !dbg !4679
	%11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !4699
	store i32 %0, i32* %11, align 8, !dbg !4699, !alias.scope !4696
	%12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !4699
	%13 = bitcast i32* %12 to i8*, !dbg !4699
	call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !4699
	call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !4700
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4621, metadata !1011) #10, !dbg !4690
	%14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #10, !dbg !4701
	call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !4702
	ret i8* %14, !dbg !4703
}
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #4 !dbg !4704 {
	%4 = alloca %struct.quoting_options, align 8
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4708, metadata !1043), !dbg !4712
	tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4709, metadata !1043), !dbg !4713
	tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !4710, metadata !1043), !dbg !4714
	%5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !4715
	call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10, !dbg !4715
	call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !4716, !tbaa.struct !4717
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !4711, metadata !1011), !dbg !4718
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3174, metadata !1043), !dbg !4719
	tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !3175, metadata !1043), !dbg !4721
	tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3176, metadata !1043), !dbg !4722
	tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !3177, metadata !1043), !dbg !4723
	%6 = lshr i8 %2, 5, !dbg !4724
	%7 = zext i8 %6 to i64, !dbg !4724
	%8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !4725
	tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !3178, metadata !1043), !dbg !4726
	%9 = and i8 %2, 31, !dbg !4727
	%10 = zext i8 %9 to i32, !dbg !4728
	tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !3180, metadata !1043), !dbg !4729
	%11 = load i32, i32* %8, align 4, !dbg !4730, !tbaa !1070
	%12 = lshr i32 %11, %10, !dbg !4731
	%13 = and i32 %12, 1, !dbg !4732
	tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !3181, metadata !1043), !dbg !4733
	%14 = xor i32 %13, 1, !dbg !4734
	%15 = shl i32 %14, %10, !dbg !4735
	%16 = xor i32 %15, %11, !dbg !4736
	store i32 %16, i32* %8, align 4, !dbg !4736, !tbaa !1070
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !4711, metadata !1011), !dbg !4718
	%17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !4737
	call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10, !dbg !4738
	ret i8* %17, !dbg !4739
}
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #4 !dbg !4740 {
	%3 = alloca %struct.quoting_options, align 8
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4744, metadata !1043), !dbg !4746
	tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !4745, metadata !1043), !dbg !4747
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4708, metadata !1043) #10, !dbg !4748
	tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !4709, metadata !1043) #10, !dbg !4750
	tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !4710, metadata !1043) #10, !dbg !4751
	%4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !4752
	call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #10, !dbg !4752
	call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !4753, !tbaa.struct !4717
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !4711, metadata !1011) #10, !dbg !4754
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3174, metadata !1043) #10, !dbg !4755
	tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !3175, metadata !1043) #10, !dbg !4757
	tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3176, metadata !1043) #10, !dbg !4758
	tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !3177, metadata !1043) #10, !dbg !4759
	%5 = lshr i8 %1, 5, !dbg !4760
	%6 = zext i8 %5 to i64, !dbg !4760
	%7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !4761
	tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !3178, metadata !1043) #10, !dbg !4762
	%8 = and i8 %1, 31, !dbg !4763
	%9 = zext i8 %8 to i32, !dbg !4764
	tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !3180, metadata !1043) #10, !dbg !4765
	%10 = load i32, i32* %7, align 4, !dbg !4766, !tbaa !1070
	%11 = lshr i32 %10, %9, !dbg !4767
	%12 = and i32 %11, 1, !dbg !4768
	tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !3181, metadata !1043) #10, !dbg !4769
	%13 = xor i32 %12, 1, !dbg !4770
	%14 = shl i32 %13, %9, !dbg !4771
	%15 = xor i32 %14, %10, !dbg !4772
	store i32 %15, i32* %7, align 4, !dbg !4772, !tbaa !1070
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !4711, metadata !1011) #10, !dbg !4754
	%16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !4773
	call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #10, !dbg !4774
	ret i8* %16, !dbg !4775
}
define i8* @quotearg_colon(i8*) local_unnamed_addr #4 !dbg !4776 {
	%2 = alloca %struct.quoting_options, align 8
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4778, metadata !1043), !dbg !4779
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4744, metadata !1043) #10, !dbg !4780
	tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !4745, metadata !1043) #10, !dbg !4782
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4708, metadata !1043) #10, !dbg !4783
	tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !4709, metadata !1043) #10, !dbg !4785
	tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !4710, metadata !1043) #10, !dbg !4786
	%3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !4787
	call void @llvm.lifetime.start(i64 56, i8* nonnull %3) #10, !dbg !4787
	call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !4788, !tbaa.struct !4717
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !4711, metadata !1011) #10, !dbg !4789
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3174, metadata !1043) #10, !dbg !4790
	tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3175, metadata !1043) #10, !dbg !4792
	tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3176, metadata !1043) #10, !dbg !4793
	tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3177, metadata !1043) #10, !dbg !4794
	%4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !4795
	tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !3178, metadata !1043) #10, !dbg !4796
	tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !3180, metadata !1043) #10, !dbg !4797
	%5 = load i32, i32* %4, align 4, !dbg !4798, !tbaa !1070
	%6 = or i32 %5, 67108864, !dbg !4799
	store i32 %6, i32* %4, align 4, !dbg !4799, !tbaa !1070
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !4711, metadata !1011) #10, !dbg !4789
	%7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #10, !dbg !4800
	call void @llvm.lifetime.end(i64 56, i8* nonnull %3) #10, !dbg !4801
	ret i8* %7, !dbg !4802
}
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #4 !dbg !4803 {
	%3 = alloca %struct.quoting_options, align 8
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4805, metadata !1043), !dbg !4807
	tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4806, metadata !1043), !dbg !4808
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4708, metadata !1043) #10, !dbg !4809
	tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4709, metadata !1043) #10, !dbg !4811
	tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !4710, metadata !1043) #10, !dbg !4812
	%4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !4813
	call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #10, !dbg !4813
	call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !4814, !tbaa.struct !4717
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !4711, metadata !1011) #10, !dbg !4815
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3174, metadata !1043) #10, !dbg !4816
	tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3175, metadata !1043) #10, !dbg !4818
	tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3176, metadata !1043) #10, !dbg !4819
	tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3177, metadata !1043) #10, !dbg !4820
	%5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !4821
	tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !3178, metadata !1043) #10, !dbg !4822
	tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !3180, metadata !1043) #10, !dbg !4823
	%6 = load i32, i32* %5, align 4, !dbg !4824, !tbaa !1070
	%7 = or i32 %6, 67108864, !dbg !4825
	store i32 %7, i32* %5, align 4, !dbg !4825, !tbaa !1070
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !4711, metadata !1011) #10, !dbg !4815
	%8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #10, !dbg !4826
	call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #10, !dbg !4827
	ret i8* %8, !dbg !4828
}
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #4 !dbg !4829 {
	%4 = alloca [52 x i8], align 4
	tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !4584, metadata !4590), !dbg !4835
	%5 = alloca %struct.quoting_options, align 8
	%6 = alloca [52 x i8], align 4
	tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4831, metadata !1043), !dbg !4837
	tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4832, metadata !1043), !dbg !4838
	tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4833, metadata !1043), !dbg !4839
	%7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !4840
	call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10, !dbg !4840
	tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4589, metadata !1043) #10, !dbg !4841
	%8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !4842
	call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !4842
	tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !4584, metadata !1043) #10, !dbg !4835
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4584, metadata !4600) #10, !dbg !4835
	call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !4835
	%9 = icmp eq i32 %1, 10, !dbg !4843
	br i1 %9, label %10, label %11, !dbg !4844
	tail call void @abort() #14, !dbg !4845, !noalias !4846
	unreachable, !dbg !4845
	tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4584, metadata !4600) #10, !dbg !4835
	%12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !4849
	call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !4849
	call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !4850
	%13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !4851
	store i32 %1, i32* %13, align 8, !dbg !4851
	%14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !4851
	%15 = bitcast i32* %14 to i8*, !dbg !4851
	call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !4851
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4834, metadata !1011), !dbg !4852
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3174, metadata !1043), !dbg !4853
	tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3175, metadata !1043), !dbg !4855
	tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3176, metadata !1043), !dbg !4856
	tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3177, metadata !1043), !dbg !4857
	%16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !4858
	tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !3178, metadata !1043), !dbg !4859
	tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !3180, metadata !1043), !dbg !4860
	%17 = load i32, i32* %16, align 4, !dbg !4861, !tbaa !1070
	%18 = or i32 %17, 67108864, !dbg !4862
	store i32 %18, i32* %16, align 4, !dbg !4862, !tbaa !1070
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4834, metadata !1011), !dbg !4852
	%19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !4863
	call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10, !dbg !4864
	ret i8* %19, !dbg !4865
}
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #4 !dbg !4866 {
	%5 = alloca %struct.quoting_options, align 8
	tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4870, metadata !1043), !dbg !4874
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4871, metadata !1043), !dbg !4875
	tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4872, metadata !1043), !dbg !4876
	tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4873, metadata !1043), !dbg !4877
	tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4878, metadata !1043) #10, !dbg !4888
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4883, metadata !1043) #10, !dbg !4890
	tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4884, metadata !1043) #10, !dbg !4891
	tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4885, metadata !1043) #10, !dbg !4892
	tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !4886, metadata !1043) #10, !dbg !4893
	%6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !4894
	call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !4894
	call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !4895, !tbaa.struct !4717
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4887, metadata !1011) #10, !dbg !4896
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3224, metadata !1043) #10, !dbg !4897
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3225, metadata !1043) #10, !dbg !4899
	tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3226, metadata !1043) #10, !dbg !4900
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !3224, metadata !1043) #10, !dbg !4897
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3224, metadata !1043) #10, !dbg !4897
	%7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !4901
	store i32 10, i32* %7, align 8, !dbg !4902, !tbaa !3154
	%8 = icmp ne i8* %1, null, !dbg !4903
	%9 = icmp ne i8* %2, null, !dbg !4904
	%10 = and i1 %8, %9, !dbg !4905
	br i1 %10, label %12, label %11, !dbg !4905
	tail call void @abort() #14, !dbg !4906
	unreachable, !dbg !4906
	%13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !4907
	store i8* %1, i8** %13, align 8, !dbg !4908, !tbaa !3243
	%14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !4909
	store i8* %2, i8** %14, align 8, !dbg !4910, !tbaa !3246
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4887, metadata !1011) #10, !dbg !4896
	%15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #10, !dbg !4911
	call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !4912
	ret i8* %15, !dbg !4913
}
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #4 !dbg !4879 {
	%6 = alloca %struct.quoting_options, align 8
	tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4878, metadata !1043), !dbg !4914
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4883, metadata !1043), !dbg !4915
	tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4884, metadata !1043), !dbg !4916
	tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4885, metadata !1043), !dbg !4917
	tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !4886, metadata !1043), !dbg !4918
	%7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !4919
	call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10, !dbg !4919
	call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !4920, !tbaa.struct !4717
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !4887, metadata !1011), !dbg !4921
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3224, metadata !1043) #10, !dbg !4922
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3225, metadata !1043) #10, !dbg !4924
	tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3226, metadata !1043) #10, !dbg !4925
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !3224, metadata !1043) #10, !dbg !4922
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3224, metadata !1043) #10, !dbg !4922
	%8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !4926
	store i32 10, i32* %8, align 8, !dbg !4927, !tbaa !3154
	%9 = icmp ne i8* %1, null, !dbg !4928
	%10 = icmp ne i8* %2, null, !dbg !4929
	%11 = and i1 %9, %10, !dbg !4930
	br i1 %11, label %13, label %12, !dbg !4930
	tail call void @abort() #14, !dbg !4931
	unreachable, !dbg !4931
	%14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !4932
	store i8* %1, i8** %14, align 8, !dbg !4933, !tbaa !3243
	%15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !4934
	store i8* %2, i8** %15, align 8, !dbg !4935, !tbaa !3246
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !4887, metadata !1011), !dbg !4921
	%16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !4936
	call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10, !dbg !4937
	ret i8* %16, !dbg !4938
}
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #4 !dbg !4939 {
	%4 = alloca %struct.quoting_options, align 8
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4943, metadata !1043), !dbg !4946
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4944, metadata !1043), !dbg !4947
	tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4945, metadata !1043), !dbg !4948
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4870, metadata !1043) #10, !dbg !4949
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4871, metadata !1043) #10, !dbg !4951
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4872, metadata !1043) #10, !dbg !4952
	tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4873, metadata !1043) #10, !dbg !4953
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4878, metadata !1043) #10, !dbg !4954
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4883, metadata !1043) #10, !dbg !4956
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4884, metadata !1043) #10, !dbg !4957
	tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4885, metadata !1043) #10, !dbg !4958
	tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !4886, metadata !1043) #10, !dbg !4959
	%5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !4960
	call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10, !dbg !4960
	call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !4961, !tbaa.struct !4717
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !4887, metadata !1011) #10, !dbg !4962
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3224, metadata !1043) #10, !dbg !4963
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3225, metadata !1043) #10, !dbg !4965
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3226, metadata !1043) #10, !dbg !4966
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !3224, metadata !1043) #10, !dbg !4963
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3224, metadata !1043) #10, !dbg !4963
	%6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !4967
	store i32 10, i32* %6, align 8, !dbg !4968, !tbaa !3154
	%7 = icmp ne i8* %0, null, !dbg !4969
	%8 = icmp ne i8* %1, null, !dbg !4970
	%9 = and i1 %7, %8, !dbg !4971
	br i1 %9, label %11, label %10, !dbg !4971
	tail call void @abort() #14, !dbg !4972
	unreachable, !dbg !4972
	%12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !4973
	store i8* %0, i8** %12, align 8, !dbg !4974, !tbaa !3243
	%13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !4975
	store i8* %1, i8** %13, align 8, !dbg !4976, !tbaa !3246
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !4887, metadata !1011) #10, !dbg !4962
	%14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !4977
	call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10, !dbg !4978
	ret i8* %14, !dbg !4979
}
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #4 !dbg !4980 {
	%5 = alloca %struct.quoting_options, align 8
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4984, metadata !1043), !dbg !4988
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4985, metadata !1043), !dbg !4989
	tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4986, metadata !1043), !dbg !4990
	tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4987, metadata !1043), !dbg !4991
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4878, metadata !1043) #10, !dbg !4992
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4883, metadata !1043) #10, !dbg !4994
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4884, metadata !1043) #10, !dbg !4995
	tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4885, metadata !1043) #10, !dbg !4996
	tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4886, metadata !1043) #10, !dbg !4997
	%6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !4998
	call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !4998
	call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !4999, !tbaa.struct !4717
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4887, metadata !1011) #10, !dbg !5000
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3224, metadata !1043) #10, !dbg !5001
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3225, metadata !1043) #10, !dbg !5003
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3226, metadata !1043) #10, !dbg !5004
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !3224, metadata !1043) #10, !dbg !5001
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3224, metadata !1043) #10, !dbg !5001
	%7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !5005
	store i32 10, i32* %7, align 8, !dbg !5006, !tbaa !3154
	%8 = icmp ne i8* %0, null, !dbg !5007
	%9 = icmp ne i8* %1, null, !dbg !5008
	%10 = and i1 %8, %9, !dbg !5009
	br i1 %10, label %12, label %11, !dbg !5009
	tail call void @abort() #14, !dbg !5010
	unreachable, !dbg !5010
	%13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !5011
	store i8* %0, i8** %13, align 8, !dbg !5012, !tbaa !3243
	%14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !5013
	store i8* %1, i8** %14, align 8, !dbg !5014, !tbaa !3246
	tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4887, metadata !1011) #10, !dbg !5000
	%15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #10, !dbg !5015
	call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !5016
	ret i8* %15, !dbg !5017
}
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #4 !dbg !5018 {
	tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !5022, metadata !1043), !dbg !5025
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !5023, metadata !1043), !dbg !5026
	tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !5024, metadata !1043), !dbg !5027
	%4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !5028
	ret i8* %4, !dbg !5029
}
define i8* @quote_mem(i8*, i64) local_unnamed_addr #4 !dbg !5030 {
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5034, metadata !1043), !dbg !5036
	tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !5035, metadata !1043), !dbg !5037
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !5022, metadata !1043) #10, !dbg !5038
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5023, metadata !1043) #10, !dbg !5040
	tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !5024, metadata !1043) #10, !dbg !5041
	%3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !5042
	ret i8* %3, !dbg !5043
}
define i8* @quote_n(i32, i8*) local_unnamed_addr #4 !dbg !5044 {
	tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !5048, metadata !1043), !dbg !5050
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !5049, metadata !1043), !dbg !5051
	tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !5022, metadata !1043) #10, !dbg !5052
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !5023, metadata !1043) #10, !dbg !5054
	tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !5024, metadata !1043) #10, !dbg !5055
	%3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !5056
	ret i8* %3, !dbg !5057
}
define i8* @quote(i8*) local_unnamed_addr #4 !dbg !5058 {
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5062, metadata !1043), !dbg !5063
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !5048, metadata !1043) #10, !dbg !5064
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5049, metadata !1043) #10, !dbg !5066
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !5022, metadata !1043) #10, !dbg !5067
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5023, metadata !1043) #10, !dbg !5069
	tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !5024, metadata !1043) #10, !dbg !5070
	%2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !5071
	ret i8* %2, !dbg !5072
}
define i64 @safe_read(i32, i8* nocapture, i64) local_unnamed_addr #4 !dbg !931 {
	tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !935, metadata !1043), !dbg !5073
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !936, metadata !1043), !dbg !5074
	tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !937, metadata !1043), !dbg !5075
	br label %4, !dbg !5076
	%5 = phi i64 [ 2147475456, %13 ], [ %2, %3 ]
	br label %6, !dbg !5075
	tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !937, metadata !1043), !dbg !5075
	%7 = tail call i64 @read(i32 %0, i8* %1, i64 %5) #10, !dbg !5077
	tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !938, metadata !1043), !dbg !5078
	%8 = icmp sgt i64 %7, -1, !dbg !5079
	br i1 %8, label %17, label %9, !dbg !5081
	%10 = tail call i32* @__errno_location() #5, !dbg !5082
	%11 = load i32, i32* %10, align 4, !dbg !5082, !tbaa !1070
	%12 = icmp eq i32 %11, 4, !dbg !5082
	br i1 %12, label %6, label %13, !dbg !5084, !llvm.loop !5085
	%14 = icmp eq i32 %11, 22, !dbg !5088
	%15 = icmp ugt i64 %5, 2147475456, !dbg !5090
	%16 = and i1 %15, %14, !dbg !5092
	br i1 %16, label %4, label %18
	br label %19, !dbg !5093
	br label %19, !dbg !5093
	ret i64 %7, !dbg !5093
}
declare i64 @read(i32, i8* nocapture, i64) local_unnamed_addr #2
define i32 @dup_safer(i32) local_unnamed_addr #4 !dbg !5094 {
	tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !5099, metadata !1043), !dbg !5100
	%2 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 0, i32 3) #10, !dbg !5101
	ret i32 %2, !dbg !5102
}
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #4 !dbg !5103 {
	tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5148, metadata !1043), !dbg !5154
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !5149, metadata !1043), !dbg !5155
	tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !5150, metadata !1043), !dbg !5156
	tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !5151, metadata !1043), !dbg !5157
	tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !5152, metadata !1043), !dbg !5158
	tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !5153, metadata !1043), !dbg !5159
	%7 = icmp eq i8* %1, null, !dbg !5160
	br i1 %7, label %10, label %8, !dbg !5162
	%9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.113, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #10, !dbg !5163
	br label %12, !dbg !5163
	%11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.114, i64 0, i64 0), i8* %2, i8* %3) #10, !dbg !5164
	br label %12
	%13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.115, i64 0, i64 0), i32 5) #10, !dbg !5165
	%14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #10, !dbg !5166
	%15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.116, i64 0, i64 0), i32 5) #10, !dbg !5168
	%16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #10, !dbg !5169
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
	], !dbg !5170
	tail call void @abort() #14, !dbg !5171
	unreachable, !dbg !5171
	%19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.117, i64 0, i64 0), i32 5) #10, !dbg !5173
	%20 = load i8*, i8** %4, align 8, !dbg !5173, !tbaa !1032
	%21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #10, !dbg !5174
	br label %146, !dbg !5176
	%23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.118, i64 0, i64 0), i32 5) #10, !dbg !5177
	%24 = load i8*, i8** %4, align 8, !dbg !5177, !tbaa !1032
	%25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !5177
	%26 = load i8*, i8** %25, align 8, !dbg !5177, !tbaa !1032
	%27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #10, !dbg !5178
	br label %146, !dbg !5179
	%29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.119, i64 0, i64 0), i32 5) #10, !dbg !5180
	%30 = load i8*, i8** %4, align 8, !dbg !5180, !tbaa !1032
	%31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !5180
	%32 = load i8*, i8** %31, align 8, !dbg !5180, !tbaa !1032
	%33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !5180
	%34 = load i8*, i8** %33, align 8, !dbg !5180, !tbaa !1032
	%35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #10, !dbg !5181
	br label %146, !dbg !5182
	%37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.120, i64 0, i64 0), i32 5) #10, !dbg !5183
	%38 = load i8*, i8** %4, align 8, !dbg !5183, !tbaa !1032
	%39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !5183
	%40 = load i8*, i8** %39, align 8, !dbg !5183, !tbaa !1032
	%41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !5183
	%42 = load i8*, i8** %41, align 8, !dbg !5183, !tbaa !1032
	%43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !5183
	%44 = load i8*, i8** %43, align 8, !dbg !5183, !tbaa !1032
	%45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #10, !dbg !5184
	br label %146, !dbg !5185
	%47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.121, i64 0, i64 0), i32 5) #10, !dbg !5186
	%48 = load i8*, i8** %4, align 8, !dbg !5186, !tbaa !1032
	%49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !5186
	%50 = load i8*, i8** %49, align 8, !dbg !5186, !tbaa !1032
	%51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !5186
	%52 = load i8*, i8** %51, align 8, !dbg !5186, !tbaa !1032
	%53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !5186
	%54 = load i8*, i8** %53, align 8, !dbg !5186, !tbaa !1032
	%55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !5186
	%56 = load i8*, i8** %55, align 8, !dbg !5186, !tbaa !1032
	%57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #10, !dbg !5187
	br label %146, !dbg !5188
	%59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.122, i64 0, i64 0), i32 5) #10, !dbg !5189
	%60 = load i8*, i8** %4, align 8, !dbg !5189, !tbaa !1032
	%61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !5189
	%62 = load i8*, i8** %61, align 8, !dbg !5189, !tbaa !1032
	%63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !5189
	%64 = load i8*, i8** %63, align 8, !dbg !5189, !tbaa !1032
	%65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !5189
	%66 = load i8*, i8** %65, align 8, !dbg !5189, !tbaa !1032
	%67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !5189
	%68 = load i8*, i8** %67, align 8, !dbg !5189, !tbaa !1032
	%69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !5189
	%70 = load i8*, i8** %69, align 8, !dbg !5189, !tbaa !1032
	%71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #10, !dbg !5190
	br label %146, !dbg !5191
	%73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.123, i64 0, i64 0), i32 5) #10, !dbg !5192
	%74 = load i8*, i8** %4, align 8, !dbg !5192, !tbaa !1032
	%75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !5192
	%76 = load i8*, i8** %75, align 8, !dbg !5192, !tbaa !1032
	%77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !5192
	%78 = load i8*, i8** %77, align 8, !dbg !5192, !tbaa !1032
	%79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !5192
	%80 = load i8*, i8** %79, align 8, !dbg !5192, !tbaa !1032
	%81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !5192
	%82 = load i8*, i8** %81, align 8, !dbg !5192, !tbaa !1032
	%83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !5192
	%84 = load i8*, i8** %83, align 8, !dbg !5192, !tbaa !1032
	%85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !5192
	%86 = load i8*, i8** %85, align 8, !dbg !5192, !tbaa !1032
	%87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #10, !dbg !5193
	br label %146, !dbg !5194
	%89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.124, i64 0, i64 0), i32 5) #10, !dbg !5195
	%90 = load i8*, i8** %4, align 8, !dbg !5195, !tbaa !1032
	%91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !5195
	%92 = load i8*, i8** %91, align 8, !dbg !5195, !tbaa !1032
	%93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !5195
	%94 = load i8*, i8** %93, align 8, !dbg !5195, !tbaa !1032
	%95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !5195
	%96 = load i8*, i8** %95, align 8, !dbg !5195, !tbaa !1032
	%97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !5195
	%98 = load i8*, i8** %97, align 8, !dbg !5195, !tbaa !1032
	%99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !5195
	%100 = load i8*, i8** %99, align 8, !dbg !5195, !tbaa !1032
	%101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !5195
	%102 = load i8*, i8** %101, align 8, !dbg !5195, !tbaa !1032
	%103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !5195
	%104 = load i8*, i8** %103, align 8, !dbg !5195, !tbaa !1032
	%105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #10, !dbg !5196
	br label %146, !dbg !5197
	%107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.125, i64 0, i64 0), i32 5) #10, !dbg !5198
	%108 = load i8*, i8** %4, align 8, !dbg !5198, !tbaa !1032
	%109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !5198
	%110 = load i8*, i8** %109, align 8, !dbg !5198, !tbaa !1032
	%111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !5198
	%112 = load i8*, i8** %111, align 8, !dbg !5198, !tbaa !1032
	%113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !5198
	%114 = load i8*, i8** %113, align 8, !dbg !5198, !tbaa !1032
	%115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !5198
	%116 = load i8*, i8** %115, align 8, !dbg !5198, !tbaa !1032
	%117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !5198
	%118 = load i8*, i8** %117, align 8, !dbg !5198, !tbaa !1032
	%119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !5198
	%120 = load i8*, i8** %119, align 8, !dbg !5198, !tbaa !1032
	%121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !5198
	%122 = load i8*, i8** %121, align 8, !dbg !5198, !tbaa !1032
	%123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !5198
	%124 = load i8*, i8** %123, align 8, !dbg !5198, !tbaa !1032
	%125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #10, !dbg !5199
	br label %146, !dbg !5200
	%127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.126, i64 0, i64 0), i32 5) #10, !dbg !5201
	%128 = load i8*, i8** %4, align 8, !dbg !5201, !tbaa !1032
	%129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !5201
	%130 = load i8*, i8** %129, align 8, !dbg !5201, !tbaa !1032
	%131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !5201
	%132 = load i8*, i8** %131, align 8, !dbg !5201, !tbaa !1032
	%133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !5201
	%134 = load i8*, i8** %133, align 8, !dbg !5201, !tbaa !1032
	%135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !5201
	%136 = load i8*, i8** %135, align 8, !dbg !5201, !tbaa !1032
	%137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !5201
	%138 = load i8*, i8** %137, align 8, !dbg !5201, !tbaa !1032
	%139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !5201
	%140 = load i8*, i8** %139, align 8, !dbg !5201, !tbaa !1032
	%141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !5201
	%142 = load i8*, i8** %141, align 8, !dbg !5201, !tbaa !1032
	%143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !5201
	%144 = load i8*, i8** %143, align 8, !dbg !5201, !tbaa !1032
	%145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #10, !dbg !5202
	br label %146, !dbg !5203
	ret void, !dbg !5204
}
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #4 !dbg !5205 {
	tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5209, metadata !1043), !dbg !5215
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !5210, metadata !1043), !dbg !5216
	tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !5211, metadata !1043), !dbg !5217
	tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !5212, metadata !1043), !dbg !5218
	tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !5213, metadata !1043), !dbg !5219
	tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !5214, metadata !1043), !dbg !5220
	br label %6, !dbg !5221
	%7 = phi i64 [ 0, %5 ], [ %11, %6 ]
	tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !5214, metadata !1043), !dbg !5220
	%8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !5223
	%9 = load i8*, i8** %8, align 8, !dbg !5223, !tbaa !1032
	%10 = icmp eq i8* %9, null, !dbg !5226
	%11 = add i64 %7, 1, !dbg !5228
	tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !5214, metadata !1043), !dbg !5220
	br i1 %10, label %12, label %6, !dbg !5226, !llvm.loop !5230
	tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !5233
	ret void, !dbg !5234
}
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #4 !dbg !5235 {
	%6 = alloca [10 x i8*], align 16
	tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5246, metadata !1043), !dbg !5254
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !5247, metadata !1043), !dbg !5255
	tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !5248, metadata !1043), !dbg !5256
	tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !5249, metadata !1043), !dbg !5257
	tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !5250, metadata !1043), !dbg !5258
	%7 = bitcast [10 x i8*]* %6 to i8*, !dbg !5259
	call void @llvm.lifetime.start(i64 80, i8* nonnull %7) #10, !dbg !5259
	tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !5252, metadata !1043), !dbg !5260
	tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !5251, metadata !1043), !dbg !5261
	tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !5251, metadata !1043), !dbg !5261
	%8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
	%9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
	%10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
	%11 = load i32, i32* %8, align 8, !dbg !5262
	%12 = icmp ult i32 %11, 41, !dbg !5262
	br i1 %12, label %13, label %18, !dbg !5262
	%14 = load i8*, i8** %9, align 8, !dbg !5266
	%15 = sext i32 %11 to i64, !dbg !5266
	%16 = getelementptr i8, i8* %14, i64 %15, !dbg !5266
	%17 = add i32 %11, 8, !dbg !5266
	store i32 %17, i32* %8, align 8, !dbg !5266
	br label %21, !dbg !5266
	%19 = load i8*, i8** %10, align 8, !dbg !5268
	%20 = getelementptr i8, i8* %19, i64 8, !dbg !5268
	store i8* %20, i8** %10, align 8, !dbg !5268
	br label %21, !dbg !5268
	%22 = phi i32 [ %17, %13 ], [ %11, %18 ], !dbg !5262
	%23 = phi i8* [ %16, %13 ], [ %19, %18 ]
	%24 = bitcast i8* %23 to i8**, !dbg !5270
	%25 = load i8*, i8** %24, align 8, !dbg !5270
	%26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !5272
	store i8* %25, i8** %26, align 16, !dbg !5273, !tbaa !1032
	%27 = icmp eq i8* %25, null, !dbg !5274
	br i1 %27, label %30, label %28, !dbg !5275
	tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5251, metadata !1043), !dbg !5261
	tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5251, metadata !1043), !dbg !5261
	%29 = icmp ult i32 %22, 41, !dbg !5262
	br i1 %29, label %35, label %32, !dbg !5262
	%31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
	call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !5277
	call void @llvm.lifetime.end(i64 80, i8* nonnull %7) #10, !dbg !5278
	ret void, !dbg !5278
	%33 = load i8*, i8** %10, align 8, !dbg !5268
	%34 = getelementptr i8, i8* %33, i64 8, !dbg !5268
	store i8* %34, i8** %10, align 8, !dbg !5268
	br label %40, !dbg !5268
	%36 = load i8*, i8** %9, align 8, !dbg !5266
	%37 = sext i32 %22 to i64, !dbg !5266
	%38 = getelementptr i8, i8* %36, i64 %37, !dbg !5266
	%39 = add i32 %22, 8, !dbg !5266
	store i32 %39, i32* %8, align 8, !dbg !5266
	br label %40, !dbg !5266
	%41 = phi i32 [ %39, %35 ], [ %22, %32 ], !dbg !5262
	%42 = phi i8* [ %38, %35 ], [ %33, %32 ]
	%43 = bitcast i8* %42 to i8**, !dbg !5270
	%44 = load i8*, i8** %43, align 8, !dbg !5270
	%45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !5272
	store i8* %44, i8** %45, align 8, !dbg !5273, !tbaa !1032
	%46 = icmp eq i8* %44, null, !dbg !5274
	br i1 %46, label %30, label %47, !dbg !5275
	tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5251, metadata !1043), !dbg !5261
	tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5251, metadata !1043), !dbg !5261
	%48 = icmp ult i32 %41, 41, !dbg !5262
	br i1 %48, label %52, label %49, !dbg !5262
	%50 = load i8*, i8** %10, align 8, !dbg !5268
	%51 = getelementptr i8, i8* %50, i64 8, !dbg !5268
	store i8* %51, i8** %10, align 8, !dbg !5268
	br label %57, !dbg !5268
	%53 = load i8*, i8** %9, align 8, !dbg !5266
	%54 = sext i32 %41 to i64, !dbg !5266
	%55 = getelementptr i8, i8* %53, i64 %54, !dbg !5266
	%56 = add i32 %41, 8, !dbg !5266
	store i32 %56, i32* %8, align 8, !dbg !5266
	br label %57, !dbg !5266
	%58 = phi i32 [ %56, %52 ], [ %41, %49 ], !dbg !5262
	%59 = phi i8* [ %55, %52 ], [ %50, %49 ]
	%60 = bitcast i8* %59 to i8**, !dbg !5270
	%61 = load i8*, i8** %60, align 8, !dbg !5270
	%62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !5272
	store i8* %61, i8** %62, align 16, !dbg !5273, !tbaa !1032
	%63 = icmp eq i8* %61, null, !dbg !5274
	br i1 %63, label %30, label %64, !dbg !5275
	tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5251, metadata !1043), !dbg !5261
	tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5251, metadata !1043), !dbg !5261
	%65 = icmp ult i32 %58, 41, !dbg !5262
	br i1 %65, label %69, label %66, !dbg !5262
	%67 = load i8*, i8** %10, align 8, !dbg !5268
	%68 = getelementptr i8, i8* %67, i64 8, !dbg !5268
	store i8* %68, i8** %10, align 8, !dbg !5268
	br label %74, !dbg !5268
	%70 = load i8*, i8** %9, align 8, !dbg !5266
	%71 = sext i32 %58 to i64, !dbg !5266
	%72 = getelementptr i8, i8* %70, i64 %71, !dbg !5266
	%73 = add i32 %58, 8, !dbg !5266
	store i32 %73, i32* %8, align 8, !dbg !5266
	br label %74, !dbg !5266
	%75 = phi i32 [ %73, %69 ], [ %58, %66 ], !dbg !5262
	%76 = phi i8* [ %72, %69 ], [ %67, %66 ]
	%77 = bitcast i8* %76 to i8**, !dbg !5270
	%78 = load i8*, i8** %77, align 8, !dbg !5270
	%79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !5272
	store i8* %78, i8** %79, align 8, !dbg !5273, !tbaa !1032
	%80 = icmp eq i8* %78, null, !dbg !5274
	br i1 %80, label %30, label %81, !dbg !5275
	tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5251, metadata !1043), !dbg !5261
	tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5251, metadata !1043), !dbg !5261
	%82 = icmp ult i32 %75, 41, !dbg !5262
	br i1 %82, label %86, label %83, !dbg !5262
	%84 = load i8*, i8** %10, align 8, !dbg !5268
	%85 = getelementptr i8, i8* %84, i64 8, !dbg !5268
	store i8* %85, i8** %10, align 8, !dbg !5268
	br label %91, !dbg !5268
	%87 = load i8*, i8** %9, align 8, !dbg !5266
	%88 = sext i32 %75 to i64, !dbg !5266
	%89 = getelementptr i8, i8* %87, i64 %88, !dbg !5266
	%90 = add i32 %75, 8, !dbg !5266
	store i32 %90, i32* %8, align 8, !dbg !5266
	br label %91, !dbg !5266
	%92 = phi i32 [ %90, %86 ], [ %75, %83 ], !dbg !5262
	%93 = phi i8* [ %89, %86 ], [ %84, %83 ]
	%94 = bitcast i8* %93 to i8**, !dbg !5270
	%95 = load i8*, i8** %94, align 8, !dbg !5270
	%96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !5272
	store i8* %95, i8** %96, align 16, !dbg !5273, !tbaa !1032
	%97 = icmp eq i8* %95, null, !dbg !5274
	br i1 %97, label %30, label %98, !dbg !5275
	tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5251, metadata !1043), !dbg !5261
	tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5251, metadata !1043), !dbg !5261
	%99 = icmp ult i32 %92, 41, !dbg !5262
	br i1 %99, label %103, label %100, !dbg !5262
	%101 = load i8*, i8** %10, align 8, !dbg !5268
	%102 = getelementptr i8, i8* %101, i64 8, !dbg !5268
	store i8* %102, i8** %10, align 8, !dbg !5268
	br label %108, !dbg !5268
	%104 = load i8*, i8** %9, align 8, !dbg !5266
	%105 = sext i32 %92 to i64, !dbg !5266
	%106 = getelementptr i8, i8* %104, i64 %105, !dbg !5266
	%107 = add i32 %92, 8, !dbg !5266
	store i32 %107, i32* %8, align 8, !dbg !5266
	br label %108, !dbg !5266
	%109 = phi i8* [ %106, %103 ], [ %101, %100 ]
	%110 = bitcast i8* %109 to i8**, !dbg !5270
	%111 = load i8*, i8** %110, align 8, !dbg !5270
	%112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !5272
	store i8* %111, i8** %112, align 8, !dbg !5273, !tbaa !1032
	%113 = icmp eq i8* %111, null, !dbg !5274
	br i1 %113, label %30, label %114, !dbg !5275
	tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5251, metadata !1043), !dbg !5261
	tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5251, metadata !1043), !dbg !5261
	%115 = load i8*, i8** %10, align 8, !dbg !5268
	%116 = getelementptr i8, i8* %115, i64 8, !dbg !5268
	store i8* %116, i8** %10, align 8, !dbg !5268
	%117 = bitcast i8* %115 to i8**, !dbg !5270
	%118 = load i8*, i8** %117, align 8, !dbg !5270
	%119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !5272
	store i8* %118, i8** %119, align 16, !dbg !5273, !tbaa !1032
	%120 = icmp eq i8* %118, null, !dbg !5274
	br i1 %120, label %30, label %121, !dbg !5275
	tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5251, metadata !1043), !dbg !5261
	tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5251, metadata !1043), !dbg !5261
	%122 = load i8*, i8** %10, align 8, !dbg !5268
	%123 = getelementptr i8, i8* %122, i64 8, !dbg !5268
	store i8* %123, i8** %10, align 8, !dbg !5268
	%124 = bitcast i8* %122 to i8**, !dbg !5270
	%125 = load i8*, i8** %124, align 8, !dbg !5270
	%126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !5272
	store i8* %125, i8** %126, align 8, !dbg !5273, !tbaa !1032
	%127 = icmp eq i8* %125, null, !dbg !5274
	br i1 %127, label %30, label %128, !dbg !5275
	tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5251, metadata !1043), !dbg !5261
	tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5251, metadata !1043), !dbg !5261
	%129 = load i8*, i8** %10, align 8, !dbg !5268
	%130 = getelementptr i8, i8* %129, i64 8, !dbg !5268
	store i8* %130, i8** %10, align 8, !dbg !5268
	%131 = bitcast i8* %129 to i8**, !dbg !5270
	%132 = load i8*, i8** %131, align 8, !dbg !5270
	%133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !5272
	store i8* %132, i8** %133, align 16, !dbg !5273, !tbaa !1032
	%134 = icmp eq i8* %132, null, !dbg !5274
	br i1 %134, label %30, label %135, !dbg !5275
	tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5251, metadata !1043), !dbg !5261
	tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5251, metadata !1043), !dbg !5261
	%136 = load i8*, i8** %10, align 8, !dbg !5268
	%137 = getelementptr i8, i8* %136, i64 8, !dbg !5268
	store i8* %137, i8** %10, align 8, !dbg !5268
	%138 = bitcast i8* %136 to i8**, !dbg !5270
	%139 = load i8*, i8** %138, align 8, !dbg !5270
	%140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !5272
	store i8* %139, i8** %140, align 8, !dbg !5273, !tbaa !1032
	%141 = icmp eq i8* %139, null, !dbg !5274
	tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5251, metadata !1043), !dbg !5261
	tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5251, metadata !1043), !dbg !5261
	%142 = select i1 %141, i64 9, i64 10, !dbg !5275
	br label %30, !dbg !5275
}
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #4 !dbg !5279 {
	%5 = alloca [1 x %struct.__va_list_tag], align 16
	tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5283, metadata !1043), !dbg !5292
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !5284, metadata !1043), !dbg !5293
	tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !5285, metadata !1043), !dbg !5294
	tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !5286, metadata !1043), !dbg !5295
	%6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !5296
	call void @llvm.lifetime.start(i64 24, i8* nonnull %6) #10, !dbg !5296
	tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !5287, metadata !1043), !dbg !5297
	%7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !5298
	call void @llvm.va_start(i8* nonnull %6), !dbg !5298
	call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !5299
	call void @llvm.va_end(i8* nonnull %6), !dbg !5300
	call void @llvm.lifetime.end(i64 24, i8* nonnull %6) #10, !dbg !5301
	ret void, !dbg !5301
}
declare void @llvm.va_start(i8*) #10
declare void @llvm.va_end(i8*) #10
define void @emit_bug_reporting_address() local_unnamed_addr #4 !dbg !5302 {
	%1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.129, i64 0, i64 0), i32 5) #10, !dbg !5303
	%2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.130, i64 0, i64 0)) #10, !dbg !5304
	%3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.131, i64 0, i64 0), i32 5) #10, !dbg !5306
	%4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.132, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.133, i64 0, i64 0)) #10, !dbg !5307
	%5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19.134, i64 0, i64 0), i32 5) #10, !dbg !5308
	%6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !5308, !tbaa !1032
	%7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #10, !dbg !5309
	ret void, !dbg !5310
}
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #12 !dbg !5311 {
	tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !5315, metadata !1043), !dbg !5317
	tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !5316, metadata !1043), !dbg !5318
	%3 = udiv i64 9223372036854775807, %1, !dbg !5319
	%4 = icmp ult i64 %3, %0, !dbg !5319
	br i1 %4, label %5, label %6, !dbg !5321
	tail call void @xalloc_die() #14, !dbg !5322
	unreachable, !dbg !5322
	%7 = mul i64 %1, %0, !dbg !5323
	tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !5324, metadata !1043) #10, !dbg !5331
	%8 = tail call noalias i8* @malloc(i64 %7) #10, !dbg !5333
	tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !5330, metadata !1043) #10, !dbg !5334
	%9 = icmp eq i8* %8, null, !dbg !5335
	%10 = icmp ne i64 %7, 0, !dbg !5337
	%11 = and i1 %10, %9, !dbg !5339
	br i1 %11, label %12, label %13, !dbg !5339
	tail call void @xalloc_die() #14, !dbg !5340
	unreachable, !dbg !5340
	ret i8* %8, !dbg !5341
}
declare noalias i8* @malloc(i64) local_unnamed_addr #1
define noalias i8* @xmalloc(i64) local_unnamed_addr #4 !dbg !5325 {
	tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !5324, metadata !1043), !dbg !5342
	%2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !5343
	tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !5330, metadata !1043), !dbg !5344
	%3 = icmp eq i8* %2, null, !dbg !5345
	%4 = icmp ne i64 %0, 0, !dbg !5346
	%5 = and i1 %4, %3, !dbg !5347
	br i1 %5, label %6, label %7, !dbg !5347
	tail call void @xalloc_die() #14, !dbg !5348
	unreachable, !dbg !5348
	ret i8* %2, !dbg !5349
}
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #12 !dbg !5350 {
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5354, metadata !1043), !dbg !5357
	tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !5355, metadata !1043), !dbg !5358
	tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !5356, metadata !1043), !dbg !5359
	%4 = udiv i64 9223372036854775807, %2, !dbg !5360
	%5 = icmp ult i64 %4, %1, !dbg !5360
	br i1 %5, label %6, label %7, !dbg !5362
	tail call void @xalloc_die() #14, !dbg !5363
	unreachable, !dbg !5363
	%8 = mul i64 %2, %1, !dbg !5364
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5365, metadata !1043) #10, !dbg !5371
	tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !5370, metadata !1043) #10, !dbg !5373
	%9 = icmp eq i64 %8, 0, !dbg !5374
	%10 = icmp ne i8* %0, null, !dbg !5376
	%11 = and i1 %10, %9, !dbg !5378
	br i1 %11, label %12, label %13, !dbg !5378
	tail call void @free(i8* nonnull %0) #10, !dbg !5379
	br label %19, !dbg !5381
	%14 = tail call i8* @realloc(i8* %0, i64 %8) #10, !dbg !5382
	tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !5365, metadata !1043) #10, !dbg !5371
	%15 = icmp eq i8* %14, null, !dbg !5383
	%16 = icmp ne i64 %8, 0, !dbg !5385
	%17 = and i1 %16, %15, !dbg !5387
	br i1 %17, label %18, label %19, !dbg !5387
	tail call void @xalloc_die() #14, !dbg !5388
	unreachable, !dbg !5388
	%20 = phi i8* [ null, %12 ], [ %14, %13 ]
	ret i8* %20, !dbg !5389
}
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #1
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #4 !dbg !5366 {
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5365, metadata !1043), !dbg !5390
	tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !5370, metadata !1043), !dbg !5391
	%3 = icmp eq i64 %1, 0, !dbg !5392
	%4 = icmp ne i8* %0, null, !dbg !5393
	%5 = and i1 %4, %3, !dbg !5394
	br i1 %5, label %6, label %7, !dbg !5394
	tail call void @free(i8* nonnull %0) #10, !dbg !5395
	br label %13, !dbg !5396
	%8 = tail call i8* @realloc(i8* %0, i64 %1) #10, !dbg !5397
	tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !5365, metadata !1043), !dbg !5390
	%9 = icmp eq i8* %8, null, !dbg !5398
	%10 = icmp ne i64 %1, 0, !dbg !5399
	%11 = and i1 %10, %9, !dbg !5400
	br i1 %11, label %12, label %13, !dbg !5400
	tail call void @xalloc_die() #14, !dbg !5401
	unreachable, !dbg !5401
	%14 = phi i8* [ null, %6 ], [ %8, %7 ]
	ret i8* %14, !dbg !5402
}
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #12 !dbg !961 {
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !963, metadata !1043), !dbg !5403
	tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !964, metadata !1043), !dbg !5404
	tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !965, metadata !1043), !dbg !5405
	%4 = load i64, i64* %1, align 8, !dbg !5406, !tbaa !1079
	tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !966, metadata !1043), !dbg !5407
	%5 = icmp eq i8* %0, null, !dbg !5408
	br i1 %5, label %6, label %13, !dbg !5410
	%7 = icmp eq i64 %4, 0, !dbg !5411
	br i1 %7, label %8, label %17, !dbg !5414
	%9 = udiv i64 128, %2, !dbg !5415
	tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !966, metadata !1043), !dbg !5407
	%10 = icmp ugt i64 %2, 128, !dbg !5417
	%11 = zext i1 %10 to i64, !dbg !5417
	%12 = add nuw nsw i64 %9, %11, !dbg !5418
	tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !966, metadata !1043), !dbg !5407
	br label %17, !dbg !5419
	%14 = udiv i64 6148914691236517204, %2, !dbg !5420
	%15 = icmp ugt i64 %14, %4, !dbg !5423
	br i1 %15, label %20, label %16, !dbg !5424
	tail call void @xalloc_die() #14, !dbg !5425
	unreachable, !dbg !5425
	%18 = phi i64 [ %12, %8 ], [ %4, %6 ]
	tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !966, metadata !1043), !dbg !5407
	store i64 %18, i64* %1, align 8, !dbg !5426, !tbaa !1079
	%19 = mul i64 %18, %2, !dbg !5427
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5365, metadata !1043) #10, !dbg !5428
	tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !5370, metadata !1043) #10, !dbg !5430
	br label %27, !dbg !5431
	%21 = lshr i64 %4, 1, !dbg !5432
	%22 = add i64 %4, 1, !dbg !5433
	%23 = add i64 %22, %21, !dbg !5434
	tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !966, metadata !1043), !dbg !5407
	tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !966, metadata !1043), !dbg !5407
	store i64 %23, i64* %1, align 8, !dbg !5426, !tbaa !1079
	%24 = mul i64 %23, %2, !dbg !5427
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5365, metadata !1043) #10, !dbg !5428
	tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !5370, metadata !1043) #10, !dbg !5430
	%25 = icmp eq i64 %24, 0, !dbg !5435
	br i1 %25, label %26, label %27, !dbg !5431
	tail call void @free(i8* nonnull %0) #10, !dbg !5436
	br label %34, !dbg !5437
	%28 = phi i64 [ %19, %17 ], [ %24, %20 ]
	%29 = tail call i8* @realloc(i8* %0, i64 %28) #10, !dbg !5438
	tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !5365, metadata !1043) #10, !dbg !5428
	%30 = icmp eq i8* %29, null, !dbg !5439
	%31 = icmp ne i64 %28, 0, !dbg !5440
	%32 = and i1 %31, %30, !dbg !5441
	br i1 %32, label %33, label %34, !dbg !5441
	tail call void @xalloc_die() #14, !dbg !5442
	unreachable, !dbg !5442
	%35 = phi i8* [ null, %26 ], [ %29, %27 ]
	ret i8* %35, !dbg !5443
}
define noalias i8* @xcharalloc(i64) local_unnamed_addr #12 !dbg !5444 {
	tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !5446, metadata !1043), !dbg !5447
	tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !5324, metadata !1043) #10, !dbg !5448
	%2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !5450
	tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !5330, metadata !1043) #10, !dbg !5451
	%3 = icmp eq i8* %2, null, !dbg !5452
	%4 = icmp ne i64 %0, 0, !dbg !5453
	%5 = and i1 %4, %3, !dbg !5454
	br i1 %5, label %6, label %7, !dbg !5454
	tail call void @xalloc_die() #14, !dbg !5455
	unreachable, !dbg !5455
	ret i8* %2, !dbg !5456
}
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #4 !dbg !5457 {
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5461, metadata !1043), !dbg !5463
	tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !5462, metadata !1043), !dbg !5464
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !963, metadata !1043) #10, !dbg !5465
	tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !964, metadata !1043) #10, !dbg !5467
	tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !965, metadata !1043) #10, !dbg !5468
	%3 = load i64, i64* %1, align 8, !dbg !5469, !tbaa !1079
	tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !966, metadata !1043) #10, !dbg !5470
	%4 = icmp eq i8* %0, null, !dbg !5471
	br i1 %4, label %5, label %8, !dbg !5472
	%6 = icmp eq i64 %3, 0, !dbg !5473
	tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !966, metadata !1043) #10, !dbg !5470
	tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !966, metadata !1043) #10, !dbg !5470
	%7 = select i1 %6, i64 128, i64 %3, !dbg !5474
	tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !966, metadata !1043) #10, !dbg !5470
	store i64 %7, i64* %1, align 8, !dbg !5475, !tbaa !1079
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5365, metadata !1043) #10, !dbg !5476
	tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !5370, metadata !1043) #10, !dbg !5478
	br label %17, !dbg !5479
	%9 = icmp ult i64 %3, 6148914691236517204, !dbg !5480
	br i1 %9, label %11, label %10, !dbg !5481
	tail call void @xalloc_die() #14, !dbg !5482
	unreachable, !dbg !5482
	%12 = lshr i64 %3, 1, !dbg !5483
	%13 = add i64 %3, 1, !dbg !5484
	%14 = add i64 %13, %12, !dbg !5485
	tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !966, metadata !1043) #10, !dbg !5470
	tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !966, metadata !1043) #10, !dbg !5470
	store i64 %14, i64* %1, align 8, !dbg !5475, !tbaa !1079
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5365, metadata !1043) #10, !dbg !5476
	tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !5370, metadata !1043) #10, !dbg !5478
	%15 = icmp eq i64 %14, 0, !dbg !5486
	br i1 %15, label %16, label %17, !dbg !5479
	tail call void @free(i8* nonnull %0) #10, !dbg !5487
	br label %24, !dbg !5488
	%18 = phi i64 [ %7, %5 ], [ %14, %11 ]
	%19 = tail call i8* @realloc(i8* %0, i64 %18) #10, !dbg !5489
	tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !5365, metadata !1043) #10, !dbg !5476
	%20 = icmp eq i8* %19, null, !dbg !5490
	%21 = icmp ne i64 %18, 0, !dbg !5491
	%22 = and i1 %21, %20, !dbg !5492
	br i1 %22, label %23, label %24, !dbg !5492
	tail call void @xalloc_die() #14, !dbg !5493
	unreachable, !dbg !5493
	%25 = phi i8* [ null, %16 ], [ %19, %17 ]
	ret i8* %25, !dbg !5494
}
define noalias i8* @xzalloc(i64) local_unnamed_addr #4 !dbg !5495 {
	tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !5497, metadata !1043), !dbg !5498
	tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !5324, metadata !1043) #10, !dbg !5499
	%2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !5501
	tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !5330, metadata !1043) #10, !dbg !5502
	%3 = icmp eq i8* %2, null, !dbg !5503
	%4 = icmp ne i64 %0, 0, !dbg !5504
	%5 = and i1 %4, %3, !dbg !5505
	br i1 %5, label %6, label %7, !dbg !5505
	tail call void @xalloc_die() #14, !dbg !5506
	unreachable, !dbg !5506
	tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !5507
	ret i8* %2, !dbg !5508
}
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #4 !dbg !5509 {
	tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !5511, metadata !1043), !dbg !5514
	tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !5512, metadata !1043), !dbg !5515
	%3 = udiv i64 9223372036854775807, %1, !dbg !5516
	%4 = icmp ult i64 %3, %0, !dbg !5516
	br i1 %4, label %8, label %5, !dbg !5518
	%6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #10, !dbg !5519
	tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !5513, metadata !1043), !dbg !5521
	%7 = icmp eq i8* %6, null, !dbg !5522
	br i1 %7, label %8, label %9, !dbg !5523
	tail call void @xalloc_die() #14, !dbg !5525
	unreachable, !dbg !5525
	ret i8* %6, !dbg !5526
}
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #4 !dbg !5527 {
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5531, metadata !1043), !dbg !5533
	tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !5532, metadata !1043), !dbg !5534
	tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !5324, metadata !1043) #10, !dbg !5535
	%3 = tail call noalias i8* @malloc(i64 %1) #10, !dbg !5537
	tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !5330, metadata !1043) #10, !dbg !5538
	%4 = icmp eq i8* %3, null, !dbg !5539
	%5 = icmp ne i64 %1, 0, !dbg !5540
	%6 = and i1 %5, %4, !dbg !5541
	br i1 %6, label %7, label %8, !dbg !5541
	tail call void @xalloc_die() #14, !dbg !5542
	unreachable, !dbg !5542
	tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !5543
	ret i8* %3, !dbg !5544
}
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #4 !dbg !5545 {
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5547, metadata !1043), !dbg !5548
	%2 = tail call i64 @strlen(i8* %0) #15, !dbg !5549
	%3 = add i64 %2, 1, !dbg !5550
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5531, metadata !1043) #10, !dbg !5551
	tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !5532, metadata !1043) #10, !dbg !5554
	tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !5324, metadata !1043) #10, !dbg !5555
	%4 = tail call noalias i8* @malloc(i64 %3) #10, !dbg !5557
	tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !5330, metadata !1043) #10, !dbg !5558
	%5 = icmp eq i8* %4, null, !dbg !5559
	%6 = icmp ne i64 %3, 0, !dbg !5560
	%7 = and i1 %6, %5, !dbg !5561
	br i1 %7, label %8, label %9, !dbg !5561
	tail call void @xalloc_die() #14, !dbg !5562
	unreachable, !dbg !5562
	tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #10, !dbg !5563
	ret i8* %4, !dbg !5564
}
define i64 @xnumtoimax(i8*, i32, i64, i64, i8*, i8*, i32) local_unnamed_addr #4 !dbg !5565 {
	%8 = alloca i64, align 8
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5570, metadata !1043), !dbg !5580
	tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !5571, metadata !1043), !dbg !5581
	tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !5572, metadata !1043), !dbg !5582
	tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !5573, metadata !1043), !dbg !5583
	tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !5574, metadata !1043), !dbg !5584
	tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !5575, metadata !1043), !dbg !5585
	tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !5576, metadata !1043), !dbg !5586
	%9 = bitcast i64* %8 to i8*, !dbg !5587
	call void @llvm.lifetime.start(i64 8, i8* nonnull %9) #10, !dbg !5587
	tail call void @llvm.dbg.value(metadata i64* %8, i64 0, metadata !5579, metadata !1011), !dbg !5588
	%10 = call i32 @xstrtoimax(i8* %0, i8** null, i32 %1, i64* nonnull %8, i8* %4) #10, !dbg !5589
	call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !5577, metadata !1043), !dbg !5590
	switch i32 %10, label %11 [
		i32 0, label %13
		i32 1, label %26
		i32 3, label %28
	], !dbg !5591
	%12 = tail call i32* @__errno_location() #5, !dbg !5592
	br label %30, !dbg !5591
	%14 = load i64, i64* %8, align 8, !dbg !5596, !tbaa !1079
	call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !5579, metadata !1043), !dbg !5588
	%15 = icmp slt i64 %14, %2, !dbg !5600
	%16 = icmp sgt i64 %14, %3, !dbg !5601
	%17 = or i1 %15, %16, !dbg !5603
	br i1 %17, label %18, label %39, !dbg !5603
	call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !5577, metadata !1043), !dbg !5590
	call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !5579, metadata !1043), !dbg !5588
	%19 = icmp sgt i64 %14, 1073741823, !dbg !5604
	br i1 %19, label %20, label %22, !dbg !5607
	%21 = tail call i32* @__errno_location() #5, !dbg !5608
	store i32 75, i32* %21, align 4, !dbg !5609, !tbaa !1070
	br label %30, !dbg !5608
	%23 = icmp slt i64 %14, -1073741824, !dbg !5610
	%24 = tail call i32* @__errno_location() #5, !dbg !5612
	%25 = select i1 %23, i32 75, i32 34, !dbg !5613
	store i32 %25, i32* %24, align 4, !tbaa !1070
	br label %30
	%27 = tail call i32* @__errno_location() #5, !dbg !5614
	store i32 75, i32* %27, align 4, !dbg !5616, !tbaa !1070
	br label %30, !dbg !5614
	%29 = tail call i32* @__errno_location() #5, !dbg !5617
	store i32 0, i32* %29, align 4, !dbg !5619, !tbaa !1070
	br label %30, !dbg !5617
	%31 = phi i32* [ %12, %11 ], [ %21, %20 ], [ %24, %22 ], [ %27, %26 ], [ %29, %28 ], !dbg !5592
	%32 = icmp ne i32 %6, 0, !dbg !5620
	%33 = select i1 %32, i32 %6, i32 1, !dbg !5620
	%34 = load i32, i32* %31, align 4, !dbg !5592, !tbaa !1070
	%35 = icmp eq i32 %34, 22, !dbg !5621
	%36 = select i1 %35, i32 0, i32 %34, !dbg !5592
	%37 = call i8* @quote(i8* %0) #10, !dbg !5622
	call void (i32, i32, i8*, ...) @error(i32 %33, i32 %36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.143, i64 0, i64 0), i8* %5, i8* %37) #10, !dbg !5623
	%38 = load i64, i64* %8, align 8, !tbaa !1079
	br label %39, !dbg !5625
	%40 = phi i64 [ %14, %13 ], [ %38, %30 ], !dbg !5626
	call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !5579, metadata !1043), !dbg !5588
	call void @llvm.lifetime.end(i64 8, i8* nonnull %9) #10, !dbg !5627
	ret i64 %40, !dbg !5628
}
define i64 @xdectoimax(i8*, i64, i64, i8*, i8*, i32) local_unnamed_addr #4 !dbg !5629 {
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5633, metadata !1043), !dbg !5639
	tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !5634, metadata !1043), !dbg !5640
	tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !5635, metadata !1043), !dbg !5641
	tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !5636, metadata !1043), !dbg !5642
	tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !5637, metadata !1043), !dbg !5643
	tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !5638, metadata !1043), !dbg !5644
	%7 = tail call i64 @xnumtoimax(i8* %0, i32 10, i64 %1, i64 %2, i8* %3, i8* %4, i32 %5), !dbg !5645
	ret i64 %7, !dbg !5646
}
define i32 @xstrtoimax(i8*, i8**, i32, i64* nocapture, i8* readonly) local_unnamed_addr #4 !dbg !5647 {
	%6 = alloca i8*, align 8
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5653, metadata !1043), !dbg !5667
	tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !5654, metadata !1043), !dbg !5668
	tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !5655, metadata !1043), !dbg !5669
	tail call void @llvm.dbg.value(metadata i64* %3, i64 0, metadata !5656, metadata !1043), !dbg !5670
	tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !5657, metadata !1043), !dbg !5671
	%7 = bitcast i8** %6 to i8*, !dbg !5672
	call void @llvm.lifetime.start(i64 8, i8* nonnull %7) #10, !dbg !5672
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !5661, metadata !1043), !dbg !5673
	%8 = icmp ult i32 %2, 37, !dbg !5674
	br i1 %8, label %10, label %9, !dbg !5674
	tail call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.148, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.149, i64 0, i64 0), i32 96, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @__PRETTY_FUNCTION__.xstrtoimax, i64 0, i64 0)) #14, !dbg !5677
	unreachable, !dbg !5677
	%11 = icmp ne i8** %1, null, !dbg !5679
	%12 = select i1 %11, i8** %1, i8** %6, !dbg !5679
	tail call void @llvm.dbg.value(metadata i8** %12, i64 0, metadata !5659, metadata !1043), !dbg !5680
	%13 = tail call i32* @__errno_location() #5, !dbg !5681
	store i32 0, i32* %13, align 4, !dbg !5682, !tbaa !1070
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5683, metadata !1043) #10, !dbg !5692
	tail call void @llvm.dbg.value(metadata i8** %12, i64 0, metadata !5690, metadata !1043) #10, !dbg !5692
	tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !5691, metadata !1043) #10, !dbg !5692
	%14 = call i64 @__strtol_internal(i8* %0, i8** %12, i32 %2, i32 0) #10, !dbg !5694
	call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !5660, metadata !1043), !dbg !5695
	%15 = load i8*, i8** %12, align 8, !dbg !5696, !tbaa !1032
	%16 = icmp eq i8* %15, %0, !dbg !5698
	br i1 %16, label %17, label %26, !dbg !5699
	%18 = icmp eq i8* %4, null, !dbg !5700
	br i1 %18, label %196, label %19, !dbg !5703
	%20 = load i8, i8* %0, align 1, !dbg !5704, !tbaa !1279
	%21 = icmp eq i8 %20, 0, !dbg !5704
	br i1 %21, label %196, label %22, !dbg !5706
	%23 = sext i8 %20 to i32, !dbg !5704
	%24 = call i8* @strchr(i8* nonnull %4, i32 %23) #10, !dbg !5707
	%25 = icmp eq i8* %24, null, !dbg !5707
	br i1 %25, label %196, label %33, !dbg !5709
	%27 = load i32, i32* %13, align 4, !dbg !5711, !tbaa !1070
	switch i32 %27, label %196 [
		i32 0, label %29
		i32 34, label %28
	], !dbg !5713
	call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !5661, metadata !1043), !dbg !5673
	br label %29, !dbg !5714
	%30 = phi i32 [ 1, %28 ], [ 0, %26 ]
	call void @llvm.dbg.value(metadata i32 %30, i64 0, metadata !5661, metadata !1043), !dbg !5673
	%31 = icmp eq i8* %4, null, !dbg !5716
	br i1 %31, label %32, label %33, !dbg !5718
	call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !5660, metadata !1043), !dbg !5695
	store i64 %14, i64* %3, align 8, !dbg !5719, !tbaa !1079
	br label %196, !dbg !5721
	%34 = phi i32 [ %30, %29 ], [ 0, %22 ]
	%35 = phi i64 [ %14, %29 ], [ 1, %22 ]
	%36 = load i8, i8* %15, align 1, !dbg !5722, !tbaa !1279
	%37 = icmp eq i8 %36, 0, !dbg !5723
	br i1 %37, label %193, label %38, !dbg !5724
	%39 = sext i8 %36 to i32, !dbg !5722
	call void @llvm.dbg.value(metadata i32 1024, i64 0, metadata !5662, metadata !1043), !dbg !5725
	call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !5665, metadata !1043), !dbg !5726
	%40 = call i8* @strchr(i8* nonnull %4, i32 %39) #10, !dbg !5727
	%41 = icmp eq i8* %40, null, !dbg !5727
	br i1 %41, label %42, label %44, !dbg !5730
	call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !5660, metadata !1043), !dbg !5695
	store i64 %35, i64* %3, align 8, !dbg !5732, !tbaa !1079
	%43 = or i32 %34, 2, !dbg !5734
	br label %196, !dbg !5735
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
	], !dbg !5736
	%46 = call i8* @strchr(i8* nonnull %4, i32 48) #10, !dbg !5737
	%47 = icmp eq i8* %46, null, !dbg !5737
	br i1 %47, label %58, label %48, !dbg !5741
	%49 = getelementptr inbounds i8, i8* %15, i64 1, !dbg !5743
	%50 = load i8, i8* %49, align 1, !dbg !5743, !tbaa !1279
	%51 = sext i8 %50 to i32, !dbg !5743
	switch i32 %51, label %58 [
		i32 105, label %52
		i32 66, label %57
		i32 68, label %57
	], !dbg !5744
	%53 = getelementptr inbounds i8, i8* %15, i64 2, !dbg !5745
	%54 = load i8, i8* %53, align 1, !dbg !5745, !tbaa !1279
	%55 = icmp eq i8 %54, 66, !dbg !5748
	call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !5665, metadata !1043), !dbg !5726
	%56 = select i1 %55, i64 3, i64 1, !dbg !5749
	br label %58, !dbg !5749
	call void @llvm.dbg.value(metadata i32 1000, i64 0, metadata !5662, metadata !1043), !dbg !5725
	call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !5665, metadata !1043), !dbg !5726
	br label %58, !dbg !5750
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
	], !dbg !5751
	tail call void @llvm.dbg.value(metadata i32 512, i64 0, metadata !5752, metadata !1043), !dbg !5758
	%62 = icmp slt i64 %35, -18014398509481984, !dbg !5761
	br i1 %62, label %184, label %63, !dbg !5763
	%64 = icmp sgt i64 %35, 18014398509481983, !dbg !5764
	%65 = shl nsw i64 %35, 9, !dbg !5766
	%66 = select i1 %64, i64 9223372036854775807, i64 %65, !dbg !5767
	%67 = zext i1 %64 to i32, !dbg !5767
	br label %184, !dbg !5767
	tail call void @llvm.dbg.value(metadata i32 1024, i64 0, metadata !5752, metadata !1043), !dbg !5768
	%69 = icmp slt i64 %35, -9007199254740992, !dbg !5770
	br i1 %69, label %184, label %70, !dbg !5771
	%71 = icmp sgt i64 %35, 9007199254740991, !dbg !5772
	%72 = shl nsw i64 %35, 10, !dbg !5773
	%73 = select i1 %71, i64 9223372036854775807, i64 %72, !dbg !5774
	%74 = zext i1 %71 to i32, !dbg !5774
	br label %184, !dbg !5774
	tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !5775, metadata !1043), !dbg !5783
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !5782, metadata !1043), !dbg !5785
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !5782, metadata !1043), !dbg !5785
	tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !5775, metadata !1043), !dbg !5783
	%76 = sdiv i64 -9223372036854775808, %59
	%77 = icmp slt i64 %35, %76, !dbg !5786
	br i1 %77, label %84, label %78, !dbg !5788
	%79 = udiv i64 9223372036854775807, %59, !dbg !5789
	%80 = icmp slt i64 %79, %35, !dbg !5790
	%81 = mul nsw i64 %35, %59, !dbg !5791
	%82 = select i1 %80, i64 9223372036854775807, i64 %81, !dbg !5792
	%83 = zext i1 %80 to i32, !dbg !5792
	br label %84, !dbg !5792
	%85 = phi i64 [ -9223372036854775808, %75 ], [ %82, %78 ]
	%86 = phi i32 [ 1, %75 ], [ %83, %78 ]
	tail call void @llvm.dbg.value(metadata i32 %86, i64 0, metadata !5782, metadata !1043), !dbg !5785
	tail call void @llvm.dbg.value(metadata i32 %86, i64 0, metadata !5782, metadata !1043), !dbg !5785
	tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !5775, metadata !1043), !dbg !5783
	tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !5775, metadata !1043), !dbg !5783
	%87 = icmp slt i64 %85, %76, !dbg !5786
	br i1 %87, label %204, label %198, !dbg !5788
	tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !5775, metadata !1043), !dbg !5793
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !5782, metadata !1043), !dbg !5795
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !5782, metadata !1043), !dbg !5795
	tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !5775, metadata !1043), !dbg !5793
	%89 = sdiv i64 -9223372036854775808, %59
	%90 = icmp slt i64 %35, %89, !dbg !5796
	br i1 %90, label %97, label %91, !dbg !5798
	%92 = udiv i64 9223372036854775807, %59, !dbg !5799
	%93 = icmp slt i64 %92, %35, !dbg !5800
	%94 = mul nsw i64 %35, %59, !dbg !5801
	%95 = select i1 %93, i64 9223372036854775807, i64 %94, !dbg !5802
	%96 = zext i1 %93 to i32, !dbg !5802
	br label %97, !dbg !5802
	%98 = phi i64 [ -9223372036854775808, %88 ], [ %95, %91 ]
	%99 = phi i32 [ 1, %88 ], [ %96, %91 ]
	tail call void @llvm.dbg.value(metadata i32 %99, i64 0, metadata !5782, metadata !1043), !dbg !5795
	tail call void @llvm.dbg.value(metadata i32 %99, i64 0, metadata !5782, metadata !1043), !dbg !5795
	tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !5775, metadata !1043), !dbg !5793
	tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !5775, metadata !1043), !dbg !5793
	%100 = icmp slt i64 %98, %89, !dbg !5796
	br i1 %100, label %258, label %252, !dbg !5798
	tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !5775, metadata !1043), !dbg !5803
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !5782, metadata !1043), !dbg !5805
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !5782, metadata !1043), !dbg !5805
	tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !5775, metadata !1043), !dbg !5803
	%102 = sdiv i64 -9223372036854775808, %59
	%103 = icmp slt i64 %35, %102, !dbg !5806
	br i1 %103, label %184, label %104, !dbg !5808
	%105 = udiv i64 9223372036854775807, %59, !dbg !5809
	%106 = icmp slt i64 %105, %35, !dbg !5810
	%107 = mul nsw i64 %35, %59, !dbg !5811
	%108 = select i1 %106, i64 9223372036854775807, i64 %107, !dbg !5812
	%109 = zext i1 %106 to i32, !dbg !5812
	br label %184, !dbg !5812
	tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !5775, metadata !1043), !dbg !5813
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !5782, metadata !1043), !dbg !5815
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !5782, metadata !1043), !dbg !5815
	tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !5775, metadata !1043), !dbg !5813
	%111 = sdiv i64 -9223372036854775808, %59
	%112 = icmp slt i64 %35, %111, !dbg !5816
	br i1 %112, label %119, label %113, !dbg !5818
	%114 = udiv i64 9223372036854775807, %59, !dbg !5819
	%115 = icmp slt i64 %114, %35, !dbg !5820
	%116 = mul nsw i64 %35, %59, !dbg !5821
	%117 = select i1 %115, i64 9223372036854775807, i64 %116, !dbg !5822
	%118 = zext i1 %115 to i32, !dbg !5822
	br label %119, !dbg !5822
	%120 = phi i64 [ -9223372036854775808, %110 ], [ %117, %113 ]
	%121 = phi i32 [ 1, %110 ], [ %118, %113 ]
	tail call void @llvm.dbg.value(metadata i32 %121, i64 0, metadata !5782, metadata !1043), !dbg !5815
	tail call void @llvm.dbg.value(metadata i32 %121, i64 0, metadata !5782, metadata !1043), !dbg !5815
	tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !5775, metadata !1043), !dbg !5813
	tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !5775, metadata !1043), !dbg !5813
	%122 = icmp slt i64 %120, %111, !dbg !5816
	br i1 %122, label %279, label %273, !dbg !5818
	tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !5775, metadata !1043), !dbg !5823
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !5782, metadata !1043), !dbg !5825
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !5782, metadata !1043), !dbg !5825
	tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !5775, metadata !1043), !dbg !5823
	%124 = sdiv i64 -9223372036854775808, %59
	%125 = icmp slt i64 %35, %124, !dbg !5826
	br i1 %125, label %132, label %126, !dbg !5828
	%127 = udiv i64 9223372036854775807, %59, !dbg !5829
	%128 = icmp slt i64 %127, %35, !dbg !5830
	%129 = mul nsw i64 %35, %59, !dbg !5831
	%130 = select i1 %128, i64 9223372036854775807, i64 %129, !dbg !5832
	%131 = zext i1 %128 to i32, !dbg !5832
	br label %132, !dbg !5832
	%133 = phi i64 [ -9223372036854775808, %123 ], [ %130, %126 ]
	%134 = phi i32 [ 1, %123 ], [ %131, %126 ]
	tail call void @llvm.dbg.value(metadata i32 %134, i64 0, metadata !5782, metadata !1043), !dbg !5825
	tail call void @llvm.dbg.value(metadata i32 %134, i64 0, metadata !5782, metadata !1043), !dbg !5825
	tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !5775, metadata !1043), !dbg !5823
	tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !5775, metadata !1043), !dbg !5823
	%135 = icmp slt i64 %133, %124, !dbg !5826
	br i1 %135, label %289, label %283, !dbg !5828
	tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !5775, metadata !1043), !dbg !5833
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !5782, metadata !1043), !dbg !5835
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !5782, metadata !1043), !dbg !5835
	tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !5775, metadata !1043), !dbg !5833
	%137 = sdiv i64 -9223372036854775808, %59
	%138 = icmp slt i64 %35, %137, !dbg !5836
	br i1 %138, label %145, label %139, !dbg !5838
	%140 = udiv i64 9223372036854775807, %59, !dbg !5839
	%141 = icmp slt i64 %140, %35, !dbg !5840
	%142 = mul nsw i64 %35, %59, !dbg !5841
	%143 = select i1 %141, i64 9223372036854775807, i64 %142, !dbg !5842
	%144 = zext i1 %141 to i32, !dbg !5842
	br label %145, !dbg !5842
	%146 = phi i64 [ -9223372036854775808, %136 ], [ %143, %139 ]
	%147 = phi i32 [ 1, %136 ], [ %144, %139 ]
	tail call void @llvm.dbg.value(metadata i32 %147, i64 0, metadata !5782, metadata !1043), !dbg !5835
	tail call void @llvm.dbg.value(metadata i32 %147, i64 0, metadata !5782, metadata !1043), !dbg !5835
	tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !5775, metadata !1043), !dbg !5833
	tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !5775, metadata !1043), !dbg !5833
	%148 = icmp slt i64 %146, %137, !dbg !5836
	br i1 %148, label %332, label %326, !dbg !5838
	tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !5752, metadata !1043), !dbg !5843
	%150 = icmp slt i64 %35, -4611686018427387904, !dbg !5845
	br i1 %150, label %184, label %151, !dbg !5846
	%152 = icmp sgt i64 %35, 4611686018427387903, !dbg !5847
	%153 = shl nsw i64 %35, 1, !dbg !5848
	%154 = select i1 %152, i64 9223372036854775807, i64 %153, !dbg !5849
	%155 = zext i1 %152 to i32, !dbg !5849
	br label %184, !dbg !5849
	tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !5775, metadata !1043), !dbg !5850
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !5782, metadata !1043), !dbg !5852
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !5782, metadata !1043), !dbg !5852
	tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !5775, metadata !1043), !dbg !5850
	%157 = sdiv i64 -9223372036854775808, %59
	%158 = icmp slt i64 %35, %157, !dbg !5853
	br i1 %158, label %165, label %159, !dbg !5855
	%160 = udiv i64 9223372036854775807, %59, !dbg !5856
	%161 = icmp slt i64 %160, %35, !dbg !5857
	%162 = mul nsw i64 %35, %59, !dbg !5858
	%163 = select i1 %161, i64 9223372036854775807, i64 %162, !dbg !5859
	%164 = zext i1 %161 to i32, !dbg !5859
	br label %165, !dbg !5859
	%166 = phi i64 [ -9223372036854775808, %156 ], [ %163, %159 ]
	%167 = phi i32 [ 1, %156 ], [ %164, %159 ]
	tail call void @llvm.dbg.value(metadata i32 %167, i64 0, metadata !5782, metadata !1043), !dbg !5852
	tail call void @llvm.dbg.value(metadata i32 %167, i64 0, metadata !5782, metadata !1043), !dbg !5852
	tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !5775, metadata !1043), !dbg !5850
	tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !5775, metadata !1043), !dbg !5850
	%168 = icmp slt i64 %166, %157, !dbg !5853
	br i1 %168, label %364, label %358, !dbg !5855
	tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !5775, metadata !1043), !dbg !5860
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !5782, metadata !1043), !dbg !5862
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !5782, metadata !1043), !dbg !5862
	tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !5775, metadata !1043), !dbg !5860
	%170 = sdiv i64 -9223372036854775808, %59
	%171 = icmp slt i64 %35, %170, !dbg !5863
	br i1 %171, label %178, label %172, !dbg !5865
	%173 = udiv i64 9223372036854775807, %59, !dbg !5866
	%174 = icmp slt i64 %173, %35, !dbg !5867
	%175 = mul nsw i64 %35, %59, !dbg !5868
	%176 = select i1 %174, i64 9223372036854775807, i64 %175, !dbg !5869
	%177 = zext i1 %174 to i32, !dbg !5869
	br label %178, !dbg !5869
	%179 = phi i64 [ -9223372036854775808, %169 ], [ %176, %172 ]
	%180 = phi i32 [ 1, %169 ], [ %177, %172 ]
	tail call void @llvm.dbg.value(metadata i32 %180, i64 0, metadata !5782, metadata !1043), !dbg !5862
	tail call void @llvm.dbg.value(metadata i32 %180, i64 0, metadata !5782, metadata !1043), !dbg !5862
	tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !5775, metadata !1043), !dbg !5860
	tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !5775, metadata !1043), !dbg !5860
	%181 = icmp slt i64 %179, %170, !dbg !5863
	br i1 %181, label %440, label %434, !dbg !5865
	call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !5660, metadata !1043), !dbg !5695
	store i64 %35, i64* %3, align 8, !dbg !5870, !tbaa !1079
	%183 = or i32 %34, 2, !dbg !5871
	br label %196, !dbg !5872
	%185 = phi i64 [ %35, %58 ], [ -9223372036854775808, %61 ], [ %66, %63 ], [ -9223372036854775808, %68 ], [ %73, %70 ], [ -9223372036854775808, %149 ], [ %154, %151 ], [ %249, %248 ], [ %270, %269 ], [ %280, %279 ], [ %323, %322 ], [ %355, %354 ], [ %431, %430 ], [ %496, %495 ], [ -9223372036854775808, %101 ], [ %108, %104 ]
	%186 = phi i32 [ 0, %58 ], [ 1, %61 ], [ %67, %63 ], [ 1, %68 ], [ %74, %70 ], [ 1, %149 ], [ %155, %151 ], [ %251, %248 ], [ %272, %269 ], [ %282, %279 ], [ %325, %322 ], [ %357, %354 ], [ %433, %430 ], [ %498, %495 ], [ 1, %101 ], [ %109, %104 ]
	call void @llvm.dbg.value(metadata i32 %186, i64 0, metadata !5666, metadata !1043), !dbg !5873
	%187 = or i32 %186, %34, !dbg !5874
	call void @llvm.dbg.value(metadata i32 %187, i64 0, metadata !5661, metadata !1043), !dbg !5673
	%188 = getelementptr inbounds i8, i8* %15, i64 %60, !dbg !5875
	store i8* %188, i8** %12, align 8, !dbg !5875, !tbaa !1032
	%189 = load i8, i8* %188, align 1, !dbg !5876, !tbaa !1279
	%190 = icmp eq i8 %189, 0, !dbg !5876
	%191 = or i32 %187, 2, !dbg !5878
	call void @llvm.dbg.value(metadata i32 %191, i64 0, metadata !5661, metadata !1043), !dbg !5673
	%192 = select i1 %190, i32 %187, i32 %191, !dbg !5879
	call void @llvm.dbg.value(metadata i32 %192, i64 0, metadata !5661, metadata !1043), !dbg !5673
	call void @llvm.dbg.value(metadata i32 %192, i64 0, metadata !5661, metadata !1043), !dbg !5673
	br label %193
	%194 = phi i64 [ %35, %33 ], [ %185, %184 ]
	%195 = phi i32 [ %34, %33 ], [ %192, %184 ]
	call void @llvm.dbg.value(metadata i32 %195, i64 0, metadata !5661, metadata !1043), !dbg !5673
	call void @llvm.dbg.value(metadata i64 %194, i64 0, metadata !5660, metadata !1043), !dbg !5695
	store i64 %194, i64* %3, align 8, !dbg !5880, !tbaa !1079
	br label %196, !dbg !5881
	%197 = phi i32 [ %195, %193 ], [ %30, %32 ], [ 4, %22 ], [ 4, %19 ], [ 4, %17 ], [ 4, %26 ], [ %43, %42 ], [ %183, %182 ]
	call void @llvm.lifetime.end(i64 8, i8* nonnull %7) #10, !dbg !5882
	ret i32 %197, !dbg !5882
	%199 = udiv i64 9223372036854775807, %59, !dbg !5789
	%200 = icmp slt i64 %199, %85, !dbg !5790
	%201 = mul nsw i64 %85, %59, !dbg !5791
	%202 = select i1 %200, i64 9223372036854775807, i64 %201, !dbg !5792
	%203 = zext i1 %200 to i32, !dbg !5792
	br label %204, !dbg !5792
	%205 = phi i64 [ -9223372036854775808, %84 ], [ %202, %198 ]
	%206 = phi i32 [ 1, %84 ], [ %203, %198 ]
	%207 = or i32 %206, %86, !dbg !5883
	tail call void @llvm.dbg.value(metadata i32 %86, i64 0, metadata !5782, metadata !1043), !dbg !5785
	tail call void @llvm.dbg.value(metadata i32 %86, i64 0, metadata !5782, metadata !1043), !dbg !5785
	tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !5775, metadata !1043), !dbg !5783
	tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !5775, metadata !1043), !dbg !5783
	%208 = icmp slt i64 %205, %76, !dbg !5786
	br i1 %208, label %215, label %209, !dbg !5788
	%210 = udiv i64 9223372036854775807, %59, !dbg !5789
	%211 = icmp slt i64 %210, %205, !dbg !5790
	%212 = mul nsw i64 %205, %59, !dbg !5791
	%213 = select i1 %211, i64 9223372036854775807, i64 %212, !dbg !5792
	%214 = zext i1 %211 to i32, !dbg !5792
	br label %215, !dbg !5792
	%216 = phi i64 [ -9223372036854775808, %204 ], [ %213, %209 ]
	%217 = phi i32 [ 1, %204 ], [ %214, %209 ]
	%218 = or i32 %217, %207, !dbg !5883
	tail call void @llvm.dbg.value(metadata i32 %86, i64 0, metadata !5782, metadata !1043), !dbg !5785
	tail call void @llvm.dbg.value(metadata i32 %86, i64 0, metadata !5782, metadata !1043), !dbg !5785
	tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !5775, metadata !1043), !dbg !5783
	tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !5775, metadata !1043), !dbg !5783
	%219 = icmp slt i64 %216, %76, !dbg !5786
	br i1 %219, label %226, label %220, !dbg !5788
	%221 = udiv i64 9223372036854775807, %59, !dbg !5789
	%222 = icmp slt i64 %221, %216, !dbg !5790
	%223 = mul nsw i64 %216, %59, !dbg !5791
	%224 = select i1 %222, i64 9223372036854775807, i64 %223, !dbg !5792
	%225 = zext i1 %222 to i32, !dbg !5792
	br label %226, !dbg !5792
	%227 = phi i64 [ -9223372036854775808, %215 ], [ %224, %220 ]
	%228 = phi i32 [ 1, %215 ], [ %225, %220 ]
	%229 = or i32 %228, %218, !dbg !5883
	tail call void @llvm.dbg.value(metadata i32 %86, i64 0, metadata !5782, metadata !1043), !dbg !5785
	tail call void @llvm.dbg.value(metadata i32 %86, i64 0, metadata !5782, metadata !1043), !dbg !5785
	tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !5775, metadata !1043), !dbg !5783
	tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !5775, metadata !1043), !dbg !5783
	%230 = icmp slt i64 %227, %76, !dbg !5786
	br i1 %230, label %237, label %231, !dbg !5788
	%232 = udiv i64 9223372036854775807, %59, !dbg !5789
	%233 = icmp slt i64 %232, %227, !dbg !5790
	%234 = mul nsw i64 %227, %59, !dbg !5791
	%235 = select i1 %233, i64 9223372036854775807, i64 %234, !dbg !5792
	%236 = zext i1 %233 to i32, !dbg !5792
	br label %237, !dbg !5792
	%238 = phi i64 [ -9223372036854775808, %226 ], [ %235, %231 ]
	%239 = phi i32 [ 1, %226 ], [ %236, %231 ]
	%240 = or i32 %239, %229, !dbg !5883
	tail call void @llvm.dbg.value(metadata i32 %86, i64 0, metadata !5782, metadata !1043), !dbg !5785
	tail call void @llvm.dbg.value(metadata i32 %86, i64 0, metadata !5782, metadata !1043), !dbg !5785
	tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !5775, metadata !1043), !dbg !5783
	tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !5775, metadata !1043), !dbg !5783
	%241 = icmp slt i64 %238, %76, !dbg !5786
	br i1 %241, label %248, label %242, !dbg !5788
	%243 = udiv i64 9223372036854775807, %59, !dbg !5789
	%244 = icmp slt i64 %243, %238, !dbg !5790
	%245 = mul nsw i64 %238, %59, !dbg !5791
	%246 = select i1 %244, i64 9223372036854775807, i64 %245, !dbg !5792
	%247 = zext i1 %244 to i32, !dbg !5792
	br label %248, !dbg !5792
	%249 = phi i64 [ -9223372036854775808, %237 ], [ %246, %242 ]
	%250 = phi i32 [ 1, %237 ], [ %247, %242 ]
	%251 = or i32 %250, %240, !dbg !5883
	tail call void @llvm.dbg.value(metadata i32 %86, i64 0, metadata !5782, metadata !1043), !dbg !5785
	tail call void @llvm.dbg.value(metadata i32 %86, i64 0, metadata !5782, metadata !1043), !dbg !5785
	tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !5775, metadata !1043), !dbg !5783
	tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !5775, metadata !1043), !dbg !5783
	br label %184, !dbg !5873
	%253 = udiv i64 9223372036854775807, %59, !dbg !5799
	%254 = icmp slt i64 %253, %98, !dbg !5800
	%255 = mul nsw i64 %98, %59, !dbg !5801
	%256 = select i1 %254, i64 9223372036854775807, i64 %255, !dbg !5802
	%257 = zext i1 %254 to i32, !dbg !5802
	br label %258, !dbg !5802
	%259 = phi i64 [ -9223372036854775808, %97 ], [ %256, %252 ]
	%260 = phi i32 [ 1, %97 ], [ %257, %252 ]
	%261 = or i32 %260, %99, !dbg !5884
	tail call void @llvm.dbg.value(metadata i32 %99, i64 0, metadata !5782, metadata !1043), !dbg !5795
	tail call void @llvm.dbg.value(metadata i32 %99, i64 0, metadata !5782, metadata !1043), !dbg !5795
	tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !5775, metadata !1043), !dbg !5793
	tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !5775, metadata !1043), !dbg !5793
	%262 = icmp slt i64 %259, %89, !dbg !5796
	br i1 %262, label %269, label %263, !dbg !5798
	%264 = udiv i64 9223372036854775807, %59, !dbg !5799
	%265 = icmp slt i64 %264, %259, !dbg !5800
	%266 = mul nsw i64 %259, %59, !dbg !5801
	%267 = select i1 %265, i64 9223372036854775807, i64 %266, !dbg !5802
	%268 = zext i1 %265 to i32, !dbg !5802
	br label %269, !dbg !5802
	%270 = phi i64 [ -9223372036854775808, %258 ], [ %267, %263 ]
	%271 = phi i32 [ 1, %258 ], [ %268, %263 ]
	%272 = or i32 %271, %261, !dbg !5884
	tail call void @llvm.dbg.value(metadata i32 %99, i64 0, metadata !5782, metadata !1043), !dbg !5795
	tail call void @llvm.dbg.value(metadata i32 %99, i64 0, metadata !5782, metadata !1043), !dbg !5795
	tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !5775, metadata !1043), !dbg !5793
	tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !5775, metadata !1043), !dbg !5793
	br label %184, !dbg !5873
	%274 = udiv i64 9223372036854775807, %59, !dbg !5819
	%275 = icmp slt i64 %274, %120, !dbg !5820
	%276 = mul nsw i64 %120, %59, !dbg !5821
	%277 = select i1 %275, i64 9223372036854775807, i64 %276, !dbg !5822
	%278 = zext i1 %275 to i32, !dbg !5822
	br label %279, !dbg !5822
	%280 = phi i64 [ -9223372036854775808, %119 ], [ %277, %273 ]
	%281 = phi i32 [ 1, %119 ], [ %278, %273 ]
	%282 = or i32 %281, %121, !dbg !5885
	tail call void @llvm.dbg.value(metadata i32 %121, i64 0, metadata !5782, metadata !1043), !dbg !5815
	tail call void @llvm.dbg.value(metadata i32 %121, i64 0, metadata !5782, metadata !1043), !dbg !5815
	tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !5775, metadata !1043), !dbg !5813
	tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !5775, metadata !1043), !dbg !5813
	br label %184, !dbg !5873
	%284 = udiv i64 9223372036854775807, %59, !dbg !5829
	%285 = icmp slt i64 %284, %133, !dbg !5830
	%286 = mul nsw i64 %133, %59, !dbg !5831
	%287 = select i1 %285, i64 9223372036854775807, i64 %286, !dbg !5832
	%288 = zext i1 %285 to i32, !dbg !5832
	br label %289, !dbg !5832
	%290 = phi i64 [ -9223372036854775808, %132 ], [ %287, %283 ]
	%291 = phi i32 [ 1, %132 ], [ %288, %283 ]
	%292 = or i32 %291, %134, !dbg !5886
	tail call void @llvm.dbg.value(metadata i32 %134, i64 0, metadata !5782, metadata !1043), !dbg !5825
	tail call void @llvm.dbg.value(metadata i32 %134, i64 0, metadata !5782, metadata !1043), !dbg !5825
	tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !5775, metadata !1043), !dbg !5823
	tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !5775, metadata !1043), !dbg !5823
	%293 = icmp slt i64 %290, %124, !dbg !5826
	br i1 %293, label %300, label %294, !dbg !5828
	%295 = udiv i64 9223372036854775807, %59, !dbg !5829
	%296 = icmp slt i64 %295, %290, !dbg !5830
	%297 = mul nsw i64 %290, %59, !dbg !5831
	%298 = select i1 %296, i64 9223372036854775807, i64 %297, !dbg !5832
	%299 = zext i1 %296 to i32, !dbg !5832
	br label %300, !dbg !5832
	%301 = phi i64 [ -9223372036854775808, %289 ], [ %298, %294 ]
	%302 = phi i32 [ 1, %289 ], [ %299, %294 ]
	%303 = or i32 %302, %292, !dbg !5886
	tail call void @llvm.dbg.value(metadata i32 %134, i64 0, metadata !5782, metadata !1043), !dbg !5825
	tail call void @llvm.dbg.value(metadata i32 %134, i64 0, metadata !5782, metadata !1043), !dbg !5825
	tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !5775, metadata !1043), !dbg !5823
	tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !5775, metadata !1043), !dbg !5823
	%304 = icmp slt i64 %301, %124, !dbg !5826
	br i1 %304, label %311, label %305, !dbg !5828
	%306 = udiv i64 9223372036854775807, %59, !dbg !5829
	%307 = icmp slt i64 %306, %301, !dbg !5830
	%308 = mul nsw i64 %301, %59, !dbg !5831
	%309 = select i1 %307, i64 9223372036854775807, i64 %308, !dbg !5832
	%310 = zext i1 %307 to i32, !dbg !5832
	br label %311, !dbg !5832
	%312 = phi i64 [ -9223372036854775808, %300 ], [ %309, %305 ]
	%313 = phi i32 [ 1, %300 ], [ %310, %305 ]
	%314 = or i32 %313, %303, !dbg !5886
	tail call void @llvm.dbg.value(metadata i32 %134, i64 0, metadata !5782, metadata !1043), !dbg !5825
	tail call void @llvm.dbg.value(metadata i32 %134, i64 0, metadata !5782, metadata !1043), !dbg !5825
	tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !5775, metadata !1043), !dbg !5823
	tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !5775, metadata !1043), !dbg !5823
	%315 = icmp slt i64 %312, %124, !dbg !5826
	br i1 %315, label %322, label %316, !dbg !5828
	%317 = udiv i64 9223372036854775807, %59, !dbg !5829
	%318 = icmp slt i64 %317, %312, !dbg !5830
	%319 = mul nsw i64 %312, %59, !dbg !5831
	%320 = select i1 %318, i64 9223372036854775807, i64 %319, !dbg !5832
	%321 = zext i1 %318 to i32, !dbg !5832
	br label %322, !dbg !5832
	%323 = phi i64 [ -9223372036854775808, %311 ], [ %320, %316 ]
	%324 = phi i32 [ 1, %311 ], [ %321, %316 ]
	%325 = or i32 %324, %314, !dbg !5886
	tail call void @llvm.dbg.value(metadata i32 %134, i64 0, metadata !5782, metadata !1043), !dbg !5825
	tail call void @llvm.dbg.value(metadata i32 %134, i64 0, metadata !5782, metadata !1043), !dbg !5825
	tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !5775, metadata !1043), !dbg !5823
	tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !5775, metadata !1043), !dbg !5823
	br label %184, !dbg !5873
	%327 = udiv i64 9223372036854775807, %59, !dbg !5839
	%328 = icmp slt i64 %327, %146, !dbg !5840
	%329 = mul nsw i64 %146, %59, !dbg !5841
	%330 = select i1 %328, i64 9223372036854775807, i64 %329, !dbg !5842
	%331 = zext i1 %328 to i32, !dbg !5842
	br label %332, !dbg !5842
	%333 = phi i64 [ -9223372036854775808, %145 ], [ %330, %326 ]
	%334 = phi i32 [ 1, %145 ], [ %331, %326 ]
	%335 = or i32 %334, %147, !dbg !5887
	tail call void @llvm.dbg.value(metadata i32 %147, i64 0, metadata !5782, metadata !1043), !dbg !5835
	tail call void @llvm.dbg.value(metadata i32 %147, i64 0, metadata !5782, metadata !1043), !dbg !5835
	tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !5775, metadata !1043), !dbg !5833
	tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !5775, metadata !1043), !dbg !5833
	%336 = icmp slt i64 %333, %137, !dbg !5836
	br i1 %336, label %343, label %337, !dbg !5838
	%338 = udiv i64 9223372036854775807, %59, !dbg !5839
	%339 = icmp slt i64 %338, %333, !dbg !5840
	%340 = mul nsw i64 %333, %59, !dbg !5841
	%341 = select i1 %339, i64 9223372036854775807, i64 %340, !dbg !5842
	%342 = zext i1 %339 to i32, !dbg !5842
	br label %343, !dbg !5842
	%344 = phi i64 [ -9223372036854775808, %332 ], [ %341, %337 ]
	%345 = phi i32 [ 1, %332 ], [ %342, %337 ]
	%346 = or i32 %345, %335, !dbg !5887
	tail call void @llvm.dbg.value(metadata i32 %147, i64 0, metadata !5782, metadata !1043), !dbg !5835
	tail call void @llvm.dbg.value(metadata i32 %147, i64 0, metadata !5782, metadata !1043), !dbg !5835
	tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !5775, metadata !1043), !dbg !5833
	tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !5775, metadata !1043), !dbg !5833
	%347 = icmp slt i64 %344, %137, !dbg !5836
	br i1 %347, label %354, label %348, !dbg !5838
	%349 = udiv i64 9223372036854775807, %59, !dbg !5839
	%350 = icmp slt i64 %349, %344, !dbg !5840
	%351 = mul nsw i64 %344, %59, !dbg !5841
	%352 = select i1 %350, i64 9223372036854775807, i64 %351, !dbg !5842
	%353 = zext i1 %350 to i32, !dbg !5842
	br label %354, !dbg !5842
	%355 = phi i64 [ -9223372036854775808, %343 ], [ %352, %348 ]
	%356 = phi i32 [ 1, %343 ], [ %353, %348 ]
	%357 = or i32 %356, %346, !dbg !5887
	tail call void @llvm.dbg.value(metadata i32 %147, i64 0, metadata !5782, metadata !1043), !dbg !5835
	tail call void @llvm.dbg.value(metadata i32 %147, i64 0, metadata !5782, metadata !1043), !dbg !5835
	tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !5775, metadata !1043), !dbg !5833
	tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !5775, metadata !1043), !dbg !5833
	br label %184, !dbg !5873
	%359 = udiv i64 9223372036854775807, %59, !dbg !5856
	%360 = icmp slt i64 %359, %166, !dbg !5857
	%361 = mul nsw i64 %166, %59, !dbg !5858
	%362 = select i1 %360, i64 9223372036854775807, i64 %361, !dbg !5859
	%363 = zext i1 %360 to i32, !dbg !5859
	br label %364, !dbg !5859
	%365 = phi i64 [ -9223372036854775808, %165 ], [ %362, %358 ]
	%366 = phi i32 [ 1, %165 ], [ %363, %358 ]
	%367 = or i32 %366, %167, !dbg !5888
	tail call void @llvm.dbg.value(metadata i32 %167, i64 0, metadata !5782, metadata !1043), !dbg !5852
	tail call void @llvm.dbg.value(metadata i32 %167, i64 0, metadata !5782, metadata !1043), !dbg !5852
	tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !5775, metadata !1043), !dbg !5850
	tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !5775, metadata !1043), !dbg !5850
	%368 = icmp slt i64 %365, %157, !dbg !5853
	br i1 %368, label %375, label %369, !dbg !5855
	%370 = udiv i64 9223372036854775807, %59, !dbg !5856
	%371 = icmp slt i64 %370, %365, !dbg !5857
	%372 = mul nsw i64 %365, %59, !dbg !5858
	%373 = select i1 %371, i64 9223372036854775807, i64 %372, !dbg !5859
	%374 = zext i1 %371 to i32, !dbg !5859
	br label %375, !dbg !5859
	%376 = phi i64 [ -9223372036854775808, %364 ], [ %373, %369 ]
	%377 = phi i32 [ 1, %364 ], [ %374, %369 ]
	%378 = or i32 %377, %367, !dbg !5888
	tail call void @llvm.dbg.value(metadata i32 %167, i64 0, metadata !5782, metadata !1043), !dbg !5852
	tail call void @llvm.dbg.value(metadata i32 %167, i64 0, metadata !5782, metadata !1043), !dbg !5852
	tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !5775, metadata !1043), !dbg !5850
	tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !5775, metadata !1043), !dbg !5850
	%379 = icmp slt i64 %376, %157, !dbg !5853
	br i1 %379, label %386, label %380, !dbg !5855
	%381 = udiv i64 9223372036854775807, %59, !dbg !5856
	%382 = icmp slt i64 %381, %376, !dbg !5857
	%383 = mul nsw i64 %376, %59, !dbg !5858
	%384 = select i1 %382, i64 9223372036854775807, i64 %383, !dbg !5859
	%385 = zext i1 %382 to i32, !dbg !5859
	br label %386, !dbg !5859
	%387 = phi i64 [ -9223372036854775808, %375 ], [ %384, %380 ]
	%388 = phi i32 [ 1, %375 ], [ %385, %380 ]
	%389 = or i32 %388, %378, !dbg !5888
	tail call void @llvm.dbg.value(metadata i32 %167, i64 0, metadata !5782, metadata !1043), !dbg !5852
	tail call void @llvm.dbg.value(metadata i32 %167, i64 0, metadata !5782, metadata !1043), !dbg !5852
	tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !5775, metadata !1043), !dbg !5850
	tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !5775, metadata !1043), !dbg !5850
	%390 = icmp slt i64 %387, %157, !dbg !5853
	br i1 %390, label %397, label %391, !dbg !5855
	%392 = udiv i64 9223372036854775807, %59, !dbg !5856
	%393 = icmp slt i64 %392, %387, !dbg !5857
	%394 = mul nsw i64 %387, %59, !dbg !5858
	%395 = select i1 %393, i64 9223372036854775807, i64 %394, !dbg !5859
	%396 = zext i1 %393 to i32, !dbg !5859
	br label %397, !dbg !5859
	%398 = phi i64 [ -9223372036854775808, %386 ], [ %395, %391 ]
	%399 = phi i32 [ 1, %386 ], [ %396, %391 ]
	%400 = or i32 %399, %389, !dbg !5888
	tail call void @llvm.dbg.value(metadata i32 %167, i64 0, metadata !5782, metadata !1043), !dbg !5852
	tail call void @llvm.dbg.value(metadata i32 %167, i64 0, metadata !5782, metadata !1043), !dbg !5852
	tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !5775, metadata !1043), !dbg !5850
	tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !5775, metadata !1043), !dbg !5850
	%401 = icmp slt i64 %398, %157, !dbg !5853
	br i1 %401, label %408, label %402, !dbg !5855
	%403 = udiv i64 9223372036854775807, %59, !dbg !5856
	%404 = icmp slt i64 %403, %398, !dbg !5857
	%405 = mul nsw i64 %398, %59, !dbg !5858
	%406 = select i1 %404, i64 9223372036854775807, i64 %405, !dbg !5859
	%407 = zext i1 %404 to i32, !dbg !5859
	br label %408, !dbg !5859
	%409 = phi i64 [ -9223372036854775808, %397 ], [ %406, %402 ]
	%410 = phi i32 [ 1, %397 ], [ %407, %402 ]
	%411 = or i32 %410, %400, !dbg !5888
	tail call void @llvm.dbg.value(metadata i32 %167, i64 0, metadata !5782, metadata !1043), !dbg !5852
	tail call void @llvm.dbg.value(metadata i32 %167, i64 0, metadata !5782, metadata !1043), !dbg !5852
	tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !5775, metadata !1043), !dbg !5850
	tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !5775, metadata !1043), !dbg !5850
	%412 = icmp slt i64 %409, %157, !dbg !5853
	br i1 %412, label %419, label %413, !dbg !5855
	%414 = udiv i64 9223372036854775807, %59, !dbg !5856
	%415 = icmp slt i64 %414, %409, !dbg !5857
	%416 = mul nsw i64 %409, %59, !dbg !5858
	%417 = select i1 %415, i64 9223372036854775807, i64 %416, !dbg !5859
	%418 = zext i1 %415 to i32, !dbg !5859
	br label %419, !dbg !5859
	%420 = phi i64 [ -9223372036854775808, %408 ], [ %417, %413 ]
	%421 = phi i32 [ 1, %408 ], [ %418, %413 ]
	%422 = or i32 %421, %411, !dbg !5888
	tail call void @llvm.dbg.value(metadata i32 %167, i64 0, metadata !5782, metadata !1043), !dbg !5852
	tail call void @llvm.dbg.value(metadata i32 %167, i64 0, metadata !5782, metadata !1043), !dbg !5852
	tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !5775, metadata !1043), !dbg !5850
	tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !5775, metadata !1043), !dbg !5850
	%423 = icmp slt i64 %420, %157, !dbg !5853
	br i1 %423, label %430, label %424, !dbg !5855
	%425 = udiv i64 9223372036854775807, %59, !dbg !5856
	%426 = icmp slt i64 %425, %420, !dbg !5857
	%427 = mul nsw i64 %420, %59, !dbg !5858
	%428 = select i1 %426, i64 9223372036854775807, i64 %427, !dbg !5859
	%429 = zext i1 %426 to i32, !dbg !5859
	br label %430, !dbg !5859
	%431 = phi i64 [ -9223372036854775808, %419 ], [ %428, %424 ]
	%432 = phi i32 [ 1, %419 ], [ %429, %424 ]
	%433 = or i32 %432, %422, !dbg !5888
	tail call void @llvm.dbg.value(metadata i32 %167, i64 0, metadata !5782, metadata !1043), !dbg !5852
	tail call void @llvm.dbg.value(metadata i32 %167, i64 0, metadata !5782, metadata !1043), !dbg !5852
	tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !5775, metadata !1043), !dbg !5850
	tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !5775, metadata !1043), !dbg !5850
	br label %184, !dbg !5873
	%435 = udiv i64 9223372036854775807, %59, !dbg !5866
	%436 = icmp slt i64 %435, %179, !dbg !5867
	%437 = mul nsw i64 %179, %59, !dbg !5868
	%438 = select i1 %436, i64 9223372036854775807, i64 %437, !dbg !5869
	%439 = zext i1 %436 to i32, !dbg !5869
	br label %440, !dbg !5869
	%441 = phi i64 [ -9223372036854775808, %178 ], [ %438, %434 ]
	%442 = phi i32 [ 1, %178 ], [ %439, %434 ]
	%443 = or i32 %442, %180, !dbg !5889
	tail call void @llvm.dbg.value(metadata i32 %180, i64 0, metadata !5782, metadata !1043), !dbg !5862
	tail call void @llvm.dbg.value(metadata i32 %180, i64 0, metadata !5782, metadata !1043), !dbg !5862
	tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !5775, metadata !1043), !dbg !5860
	tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !5775, metadata !1043), !dbg !5860
	%444 = icmp slt i64 %441, %170, !dbg !5863
	br i1 %444, label %451, label %445, !dbg !5865
	%446 = udiv i64 9223372036854775807, %59, !dbg !5866
	%447 = icmp slt i64 %446, %441, !dbg !5867
	%448 = mul nsw i64 %441, %59, !dbg !5868
	%449 = select i1 %447, i64 9223372036854775807, i64 %448, !dbg !5869
	%450 = zext i1 %447 to i32, !dbg !5869
	br label %451, !dbg !5869
	%452 = phi i64 [ -9223372036854775808, %440 ], [ %449, %445 ]
	%453 = phi i32 [ 1, %440 ], [ %450, %445 ]
	%454 = or i32 %453, %443, !dbg !5889
	tail call void @llvm.dbg.value(metadata i32 %180, i64 0, metadata !5782, metadata !1043), !dbg !5862
	tail call void @llvm.dbg.value(metadata i32 %180, i64 0, metadata !5782, metadata !1043), !dbg !5862
	tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !5775, metadata !1043), !dbg !5860
	tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !5775, metadata !1043), !dbg !5860
	%455 = icmp slt i64 %452, %170, !dbg !5863
	br i1 %455, label %462, label %456, !dbg !5865
	%457 = udiv i64 9223372036854775807, %59, !dbg !5866
	%458 = icmp slt i64 %457, %452, !dbg !5867
	%459 = mul nsw i64 %452, %59, !dbg !5868
	%460 = select i1 %458, i64 9223372036854775807, i64 %459, !dbg !5869
	%461 = zext i1 %458 to i32, !dbg !5869
	br label %462, !dbg !5869
	%463 = phi i64 [ -9223372036854775808, %451 ], [ %460, %456 ]
	%464 = phi i32 [ 1, %451 ], [ %461, %456 ]
	%465 = or i32 %464, %454, !dbg !5889
	tail call void @llvm.dbg.value(metadata i32 %180, i64 0, metadata !5782, metadata !1043), !dbg !5862
	tail call void @llvm.dbg.value(metadata i32 %180, i64 0, metadata !5782, metadata !1043), !dbg !5862
	tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !5775, metadata !1043), !dbg !5860
	tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !5775, metadata !1043), !dbg !5860
	%466 = icmp slt i64 %463, %170, !dbg !5863
	br i1 %466, label %473, label %467, !dbg !5865
	%468 = udiv i64 9223372036854775807, %59, !dbg !5866
	%469 = icmp slt i64 %468, %463, !dbg !5867
	%470 = mul nsw i64 %463, %59, !dbg !5868
	%471 = select i1 %469, i64 9223372036854775807, i64 %470, !dbg !5869
	%472 = zext i1 %469 to i32, !dbg !5869
	br label %473, !dbg !5869
	%474 = phi i64 [ -9223372036854775808, %462 ], [ %471, %467 ]
	%475 = phi i32 [ 1, %462 ], [ %472, %467 ]
	%476 = or i32 %475, %465, !dbg !5889
	tail call void @llvm.dbg.value(metadata i32 %180, i64 0, metadata !5782, metadata !1043), !dbg !5862
	tail call void @llvm.dbg.value(metadata i32 %180, i64 0, metadata !5782, metadata !1043), !dbg !5862
	tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !5775, metadata !1043), !dbg !5860
	tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !5775, metadata !1043), !dbg !5860
	%477 = icmp slt i64 %474, %170, !dbg !5863
	br i1 %477, label %484, label %478, !dbg !5865
	%479 = udiv i64 9223372036854775807, %59, !dbg !5866
	%480 = icmp slt i64 %479, %474, !dbg !5867
	%481 = mul nsw i64 %474, %59, !dbg !5868
	%482 = select i1 %480, i64 9223372036854775807, i64 %481, !dbg !5869
	%483 = zext i1 %480 to i32, !dbg !5869
	br label %484, !dbg !5869
	%485 = phi i64 [ -9223372036854775808, %473 ], [ %482, %478 ]
	%486 = phi i32 [ 1, %473 ], [ %483, %478 ]
	%487 = or i32 %486, %476, !dbg !5889
	tail call void @llvm.dbg.value(metadata i32 %180, i64 0, metadata !5782, metadata !1043), !dbg !5862
	tail call void @llvm.dbg.value(metadata i32 %180, i64 0, metadata !5782, metadata !1043), !dbg !5862
	tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !5775, metadata !1043), !dbg !5860
	tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !5775, metadata !1043), !dbg !5860
	%488 = icmp slt i64 %485, %170, !dbg !5863
	br i1 %488, label %495, label %489, !dbg !5865
	%490 = udiv i64 9223372036854775807, %59, !dbg !5866
	%491 = icmp slt i64 %490, %485, !dbg !5867
	%492 = mul nsw i64 %485, %59, !dbg !5868
	%493 = select i1 %491, i64 9223372036854775807, i64 %492, !dbg !5869
	%494 = zext i1 %491 to i32, !dbg !5869
	br label %495, !dbg !5869
	%496 = phi i64 [ -9223372036854775808, %484 ], [ %493, %489 ]
	%497 = phi i32 [ 1, %484 ], [ %494, %489 ]
	%498 = or i32 %497, %487, !dbg !5889
	tail call void @llvm.dbg.value(metadata i32 %180, i64 0, metadata !5782, metadata !1043), !dbg !5862
	tail call void @llvm.dbg.value(metadata i32 %180, i64 0, metadata !5782, metadata !1043), !dbg !5862
	tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !5775, metadata !1043), !dbg !5860
	tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !5775, metadata !1043), !dbg !5860
	br label %184, !dbg !5873
}
declare i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #1
declare i8* @strchr(i8*, i32) local_unnamed_addr #8
define i32 @xstrtoumax(i8*, i8**, i32, i64* nocapture, i8* readonly) local_unnamed_addr #4 !dbg !5890 {
	%6 = alloca i8*, align 8
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5895, metadata !1043), !dbg !5913
	tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !5896, metadata !1043), !dbg !5914
	tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !5897, metadata !1043), !dbg !5915
	tail call void @llvm.dbg.value(metadata i64* %3, i64 0, metadata !5898, metadata !1043), !dbg !5916
	tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !5899, metadata !1043), !dbg !5917
	%7 = bitcast i8** %6 to i8*, !dbg !5918
	call void @llvm.lifetime.start(i64 8, i8* nonnull %7) #10, !dbg !5918
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !5903, metadata !1043), !dbg !5919
	%8 = icmp ult i32 %2, 37, !dbg !5920
	br i1 %8, label %10, label %9, !dbg !5920
	tail call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.152, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.153, i64 0, i64 0), i32 96, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @__PRETTY_FUNCTION__.xstrtoumax, i64 0, i64 0)) #14, !dbg !5923
	unreachable, !dbg !5923
	%11 = icmp ne i8** %1, null, !dbg !5925
	tail call void @llvm.dbg.value(metadata i8** %25, i64 0, metadata !5901, metadata !1043), !dbg !5926
	%12 = tail call i32* @__errno_location() #5, !dbg !5927
	store i32 0, i32* %12, align 4, !dbg !5928, !tbaa !1070
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5904, metadata !1043), !dbg !5929
	%13 = tail call i16** @__ctype_b_loc() #5, !dbg !5930
	%14 = load i16*, i16** %13, align 8, !tbaa !1032
	br label %15, !dbg !5932
	%16 = phi i8* [ %0, %10 ], [ %23, %15 ]
	%17 = load i8, i8* %16, align 1, !tbaa !1279
	tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !5907, metadata !1043), !dbg !5933
	tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !5904, metadata !1043), !dbg !5929
	%18 = zext i8 %17 to i64, !dbg !5930
	%19 = getelementptr inbounds i16, i16* %14, i64 %18, !dbg !5930
	%20 = load i16, i16* %19, align 2, !dbg !5930, !tbaa !1365
	%21 = and i16 %20, 8192, !dbg !5930
	%22 = icmp eq i16 %21, 0, !dbg !5934
	%23 = getelementptr inbounds i8, i8* %16, i64 1, !dbg !5935
	tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !5904, metadata !1043), !dbg !5929
	br i1 %22, label %24, label %15, !dbg !5934, !llvm.loop !5936
	%25 = select i1 %11, i8** %1, i8** %6, !dbg !5925
	%26 = icmp eq i8 %17, 45, !dbg !5938
	br i1 %26, label %265, label %27
	tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5940, metadata !1043) #10, !dbg !5947
	tail call void @llvm.dbg.value(metadata i8** %25, i64 0, metadata !5945, metadata !1043) #10, !dbg !5947
	tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !5946, metadata !1043) #10, !dbg !5947
	%28 = call i64 @__strtoul_internal(i8* %0, i8** %25, i32 %2, i32 0) #10, !dbg !5949
	call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !5902, metadata !1043), !dbg !5950
	%29 = load i8*, i8** %25, align 8, !dbg !5951, !tbaa !1032
	%30 = icmp eq i8* %29, %0, !dbg !5953
	br i1 %30, label %31, label %40, !dbg !5954
	%32 = icmp eq i8* %4, null, !dbg !5955
	br i1 %32, label %265, label %33, !dbg !5958
	%34 = load i8, i8* %0, align 1, !dbg !5959, !tbaa !1279
	%35 = icmp eq i8 %34, 0, !dbg !5959
	br i1 %35, label %265, label %36, !dbg !5961
	%37 = sext i8 %34 to i32, !dbg !5959
	%38 = call i8* @strchr(i8* nonnull %4, i32 %37) #10, !dbg !5962
	%39 = icmp eq i8* %38, null, !dbg !5962
	br i1 %39, label %265, label %47, !dbg !5964
	%41 = load i32, i32* %12, align 4, !dbg !5966, !tbaa !1070
	switch i32 %41, label %265 [
		i32 0, label %43
		i32 34, label %42
	], !dbg !5968
	call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !5903, metadata !1043), !dbg !5919
	br label %43, !dbg !5969
	%44 = phi i32 [ 1, %42 ], [ 0, %40 ]
	call void @llvm.dbg.value(metadata i32 %44, i64 0, metadata !5903, metadata !1043), !dbg !5919
	%45 = icmp eq i8* %4, null, !dbg !5971
	br i1 %45, label %46, label %47, !dbg !5973
	call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !5902, metadata !1043), !dbg !5950
	store i64 %28, i64* %3, align 8, !dbg !5974, !tbaa !1079
	br label %265, !dbg !5976
	%48 = phi i32 [ %44, %43 ], [ 0, %36 ]
	%49 = phi i64 [ %28, %43 ], [ 1, %36 ]
	%50 = load i8, i8* %29, align 1, !dbg !5977, !tbaa !1279
	%51 = icmp eq i8 %50, 0, !dbg !5978
	br i1 %51, label %262, label %52, !dbg !5979
	%53 = sext i8 %50 to i32, !dbg !5977
	call void @llvm.dbg.value(metadata i32 1024, i64 0, metadata !5908, metadata !1043), !dbg !5980
	call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !5911, metadata !1043), !dbg !5981
	%54 = call i8* @strchr(i8* nonnull %4, i32 %53) #10, !dbg !5982
	%55 = icmp eq i8* %54, null, !dbg !5982
	br i1 %55, label %56, label %58, !dbg !5985
	call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !5902, metadata !1043), !dbg !5950
	store i64 %49, i64* %3, align 8, !dbg !5987, !tbaa !1079
	%57 = or i32 %48, 2, !dbg !5989
	br label %265, !dbg !5990
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
	], !dbg !5991
	%60 = call i8* @strchr(i8* nonnull %4, i32 48) #10, !dbg !5992
	%61 = icmp eq i8* %60, null, !dbg !5992
	br i1 %61, label %72, label %62, !dbg !5996
	%63 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !5998
	%64 = load i8, i8* %63, align 1, !dbg !5998, !tbaa !1279
	%65 = sext i8 %64 to i32, !dbg !5998
	switch i32 %65, label %72 [
		i32 105, label %66
		i32 66, label %71
		i32 68, label %71
	], !dbg !5999
	%67 = getelementptr inbounds i8, i8* %29, i64 2, !dbg !6000
	%68 = load i8, i8* %67, align 1, !dbg !6000, !tbaa !1279
	%69 = icmp eq i8 %68, 66, !dbg !6003
	call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !5911, metadata !1043), !dbg !5981
	%70 = select i1 %69, i64 3, i64 1, !dbg !6004
	br label %72, !dbg !6004
	call void @llvm.dbg.value(metadata i32 1000, i64 0, metadata !5908, metadata !1043), !dbg !5980
	call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !5911, metadata !1043), !dbg !5981
	br label %72, !dbg !6005
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
	], !dbg !6006
	tail call void @llvm.dbg.value(metadata i32 512, i64 0, metadata !6007, metadata !1043), !dbg !6013
	%76 = icmp ugt i64 %49, 36028797018963967, !dbg !6016
	%77 = shl i64 %49, 9, !dbg !6018
	%78 = select i1 %76, i64 -1, i64 %77, !dbg !6019
	%79 = zext i1 %76 to i32, !dbg !6019
	call void @llvm.dbg.value(metadata i32 %79, i64 0, metadata !5912, metadata !1043), !dbg !6020
	br label %253, !dbg !6021
	tail call void @llvm.dbg.value(metadata i32 1024, i64 0, metadata !6007, metadata !1043), !dbg !6022
	%81 = icmp ugt i64 %49, 18014398509481983, !dbg !6024
	%82 = shl i64 %49, 10, !dbg !6025
	%83 = select i1 %81, i64 -1, i64 %82, !dbg !6026
	%84 = zext i1 %81 to i32, !dbg !6026
	call void @llvm.dbg.value(metadata i32 %84, i64 0, metadata !5912, metadata !1043), !dbg !6020
	br label %253, !dbg !6027
	tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !6028, metadata !1043), !dbg !6036
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !6035, metadata !1043), !dbg !6038
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !6035, metadata !1043), !dbg !6038
	tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !6028, metadata !1043), !dbg !6036
	%86 = udiv i64 -1, %73
	%87 = icmp ult i64 %86, %49, !dbg !6039
	%88 = mul i64 %49, %73, !dbg !6041
	%89 = select i1 %87, i64 -1, i64 %88, !dbg !6042
	tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !6028, metadata !1043), !dbg !6036
	tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !6028, metadata !1043), !dbg !6036
	%90 = icmp ult i64 %86, %89, !dbg !6039
	%91 = mul i64 %89, %73, !dbg !6041
	%92 = select i1 %90, i64 -1, i64 %91, !dbg !6042
	%93 = or i1 %90, %87, !dbg !6043
	tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !6028, metadata !1043), !dbg !6036
	tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !6028, metadata !1043), !dbg !6036
	%94 = icmp ult i64 %86, %92, !dbg !6039
	%95 = mul i64 %92, %73, !dbg !6041
	%96 = select i1 %94, i64 -1, i64 %95, !dbg !6042
	%97 = or i1 %94, %93, !dbg !6043
	tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !6028, metadata !1043), !dbg !6036
	tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !6028, metadata !1043), !dbg !6036
	%98 = icmp ult i64 %86, %96, !dbg !6039
	%99 = mul i64 %96, %73, !dbg !6041
	%100 = select i1 %98, i64 -1, i64 %99, !dbg !6042
	%101 = or i1 %98, %97, !dbg !6043
	tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !6028, metadata !1043), !dbg !6036
	tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !6028, metadata !1043), !dbg !6036
	%102 = icmp ult i64 %86, %100, !dbg !6039
	%103 = mul i64 %100, %73, !dbg !6041
	%104 = select i1 %102, i64 -1, i64 %103, !dbg !6042
	%105 = or i1 %102, %101, !dbg !6043
	tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !6028, metadata !1043), !dbg !6036
	tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !6028, metadata !1043), !dbg !6036
	%106 = icmp ult i64 %86, %104, !dbg !6039
	%107 = mul i64 %104, %73, !dbg !6041
	%108 = select i1 %106, i64 -1, i64 %107, !dbg !6042
	%109 = or i1 %106, %105, !dbg !6043
	%110 = zext i1 %109 to i32, !dbg !6043
	tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !6028, metadata !1043), !dbg !6036
	tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !6028, metadata !1043), !dbg !6036
	br label %253, !dbg !6020
	tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !6028, metadata !1043), !dbg !6044
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !6035, metadata !1043), !dbg !6046
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !6035, metadata !1043), !dbg !6046
	tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !6028, metadata !1043), !dbg !6044
	%112 = udiv i64 -1, %73
	%113 = icmp ult i64 %112, %49, !dbg !6047
	%114 = mul i64 %49, %73, !dbg !6049
	%115 = select i1 %113, i64 -1, i64 %114, !dbg !6050
	tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !6028, metadata !1043), !dbg !6044
	tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !6028, metadata !1043), !dbg !6044
	%116 = icmp ult i64 %112, %115, !dbg !6047
	%117 = mul i64 %115, %73, !dbg !6049
	%118 = select i1 %116, i64 -1, i64 %117, !dbg !6050
	%119 = or i1 %116, %113, !dbg !6051
	tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !6028, metadata !1043), !dbg !6044
	tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !6028, metadata !1043), !dbg !6044
	%120 = icmp ult i64 %112, %118, !dbg !6047
	%121 = mul i64 %118, %73, !dbg !6049
	%122 = select i1 %120, i64 -1, i64 %121, !dbg !6050
	%123 = or i1 %120, %119, !dbg !6051
	%124 = zext i1 %123 to i32, !dbg !6051
	tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !6028, metadata !1043), !dbg !6044
	tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !6028, metadata !1043), !dbg !6044
	br label %253, !dbg !6020
	tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !6028, metadata !1043), !dbg !6052
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !6035, metadata !1043), !dbg !6054
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !6035, metadata !1043), !dbg !6054
	tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !6028, metadata !1043), !dbg !6052
	%126 = udiv i64 -1, %73
	%127 = icmp ult i64 %126, %49, !dbg !6055
	%128 = mul i64 %49, %73, !dbg !6057
	%129 = select i1 %127, i64 -1, i64 %128, !dbg !6058
	%130 = zext i1 %127 to i32, !dbg !6058
	tail call void @llvm.dbg.value(metadata i32 %130, i64 0, metadata !6035, metadata !1043), !dbg !6054
	tail call void @llvm.dbg.value(metadata i32 %130, i64 0, metadata !6035, metadata !1043), !dbg !6054
	br label %253, !dbg !6020
	tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !6028, metadata !1043), !dbg !6059
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !6035, metadata !1043), !dbg !6061
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !6035, metadata !1043), !dbg !6061
	tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !6028, metadata !1043), !dbg !6059
	%132 = udiv i64 -1, %73
	%133 = icmp ult i64 %132, %49, !dbg !6062
	%134 = mul i64 %49, %73, !dbg !6064
	%135 = select i1 %133, i64 -1, i64 %134, !dbg !6065
	tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !6028, metadata !1043), !dbg !6059
	tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !6028, metadata !1043), !dbg !6059
	%136 = icmp ult i64 %132, %135, !dbg !6062
	%137 = mul i64 %135, %73, !dbg !6064
	%138 = select i1 %136, i64 -1, i64 %137, !dbg !6065
	%139 = or i1 %136, %133, !dbg !6066
	%140 = zext i1 %139 to i32, !dbg !6066
	tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !6028, metadata !1043), !dbg !6059
	tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !6028, metadata !1043), !dbg !6059
	br label %253, !dbg !6020
	tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !6028, metadata !1043), !dbg !6067
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !6035, metadata !1043), !dbg !6069
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !6035, metadata !1043), !dbg !6069
	tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !6028, metadata !1043), !dbg !6067
	%142 = udiv i64 -1, %73
	%143 = icmp ult i64 %142, %49, !dbg !6070
	%144 = mul i64 %49, %73, !dbg !6072
	%145 = select i1 %143, i64 -1, i64 %144, !dbg !6073
	tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !6028, metadata !1043), !dbg !6067
	tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !6028, metadata !1043), !dbg !6067
	%146 = icmp ult i64 %142, %145, !dbg !6070
	%147 = mul i64 %145, %73, !dbg !6072
	%148 = select i1 %146, i64 -1, i64 %147, !dbg !6073
	%149 = or i1 %146, %143, !dbg !6074
	tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !6028, metadata !1043), !dbg !6067
	tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !6028, metadata !1043), !dbg !6067
	%150 = icmp ult i64 %142, %148, !dbg !6070
	%151 = mul i64 %148, %73, !dbg !6072
	%152 = select i1 %150, i64 -1, i64 %151, !dbg !6073
	%153 = or i1 %150, %149, !dbg !6074
	tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !6028, metadata !1043), !dbg !6067
	tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !6028, metadata !1043), !dbg !6067
	%154 = icmp ult i64 %142, %152, !dbg !6070
	%155 = mul i64 %152, %73, !dbg !6072
	%156 = select i1 %154, i64 -1, i64 %155, !dbg !6073
	%157 = or i1 %154, %153, !dbg !6074
	tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !6028, metadata !1043), !dbg !6067
	tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !6028, metadata !1043), !dbg !6067
	%158 = icmp ult i64 %142, %156, !dbg !6070
	%159 = mul i64 %156, %73, !dbg !6072
	%160 = select i1 %158, i64 -1, i64 %159, !dbg !6073
	%161 = or i1 %158, %157, !dbg !6074
	%162 = zext i1 %161 to i32, !dbg !6074
	tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !6028, metadata !1043), !dbg !6067
	tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !6028, metadata !1043), !dbg !6067
	br label %253, !dbg !6020
	tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !6028, metadata !1043), !dbg !6075
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !6035, metadata !1043), !dbg !6077
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !6035, metadata !1043), !dbg !6077
	tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !6028, metadata !1043), !dbg !6075
	%164 = udiv i64 -1, %73
	%165 = icmp ult i64 %164, %49, !dbg !6078
	%166 = mul i64 %49, %73, !dbg !6080
	%167 = select i1 %165, i64 -1, i64 %166, !dbg !6081
	tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !6028, metadata !1043), !dbg !6075
	tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !6028, metadata !1043), !dbg !6075
	%168 = icmp ult i64 %164, %167, !dbg !6078
	%169 = mul i64 %167, %73, !dbg !6080
	%170 = select i1 %168, i64 -1, i64 %169, !dbg !6081
	%171 = or i1 %168, %165, !dbg !6082
	tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !6028, metadata !1043), !dbg !6075
	tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !6028, metadata !1043), !dbg !6075
	%172 = icmp ult i64 %164, %170, !dbg !6078
	%173 = mul i64 %170, %73, !dbg !6080
	%174 = select i1 %172, i64 -1, i64 %173, !dbg !6081
	%175 = or i1 %172, %171, !dbg !6082
	tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !6028, metadata !1043), !dbg !6075
	tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !6028, metadata !1043), !dbg !6075
	%176 = icmp ult i64 %164, %174, !dbg !6078
	%177 = mul i64 %174, %73, !dbg !6080
	%178 = select i1 %176, i64 -1, i64 %177, !dbg !6081
	%179 = or i1 %176, %175, !dbg !6082
	%180 = zext i1 %179 to i32, !dbg !6082
	tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !6028, metadata !1043), !dbg !6075
	tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !6028, metadata !1043), !dbg !6075
	br label %253, !dbg !6020
	tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !6007, metadata !1043), !dbg !6083
	%182 = icmp slt i64 %49, 0, !dbg !6085
	%183 = shl i64 %49, 1, !dbg !6086
	%184 = select i1 %182, i64 -1, i64 %183, !dbg !6087
	%185 = lshr i64 %49, 63, !dbg !6087
	%186 = trunc i64 %185 to i32, !dbg !6087
	call void @llvm.dbg.value(metadata i32 %186, i64 0, metadata !5912, metadata !1043), !dbg !6020
	br label %253, !dbg !6088
	tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !6028, metadata !1043), !dbg !6089
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !6035, metadata !1043), !dbg !6091
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !6035, metadata !1043), !dbg !6091
	tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !6028, metadata !1043), !dbg !6089
	%188 = udiv i64 -1, %73
	%189 = icmp ult i64 %188, %49, !dbg !6092
	%190 = mul i64 %49, %73, !dbg !6094
	%191 = select i1 %189, i64 -1, i64 %190, !dbg !6095
	tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !6028, metadata !1043), !dbg !6089
	tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !6028, metadata !1043), !dbg !6089
	%192 = icmp ult i64 %188, %191, !dbg !6092
	%193 = mul i64 %191, %73, !dbg !6094
	%194 = select i1 %192, i64 -1, i64 %193, !dbg !6095
	%195 = or i1 %192, %189, !dbg !6096
	tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !6028, metadata !1043), !dbg !6089
	tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !6028, metadata !1043), !dbg !6089
	%196 = icmp ult i64 %188, %194, !dbg !6092
	%197 = mul i64 %194, %73, !dbg !6094
	%198 = select i1 %196, i64 -1, i64 %197, !dbg !6095
	%199 = or i1 %196, %195, !dbg !6096
	tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !6028, metadata !1043), !dbg !6089
	tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !6028, metadata !1043), !dbg !6089
	%200 = icmp ult i64 %188, %198, !dbg !6092
	%201 = mul i64 %198, %73, !dbg !6094
	%202 = select i1 %200, i64 -1, i64 %201, !dbg !6095
	%203 = or i1 %200, %199, !dbg !6096
	tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !6028, metadata !1043), !dbg !6089
	tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !6028, metadata !1043), !dbg !6089
	%204 = icmp ult i64 %188, %202, !dbg !6092
	%205 = mul i64 %202, %73, !dbg !6094
	%206 = select i1 %204, i64 -1, i64 %205, !dbg !6095
	%207 = or i1 %204, %203, !dbg !6096
	tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !6028, metadata !1043), !dbg !6089
	tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !6028, metadata !1043), !dbg !6089
	%208 = icmp ult i64 %188, %206, !dbg !6092
	%209 = mul i64 %206, %73, !dbg !6094
	%210 = select i1 %208, i64 -1, i64 %209, !dbg !6095
	%211 = or i1 %208, %207, !dbg !6096
	tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !6028, metadata !1043), !dbg !6089
	tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !6028, metadata !1043), !dbg !6089
	%212 = icmp ult i64 %188, %210, !dbg !6092
	%213 = mul i64 %210, %73, !dbg !6094
	%214 = select i1 %212, i64 -1, i64 %213, !dbg !6095
	%215 = or i1 %212, %211, !dbg !6096
	tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !6028, metadata !1043), !dbg !6089
	tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !6028, metadata !1043), !dbg !6089
	%216 = icmp ult i64 %188, %214, !dbg !6092
	%217 = mul i64 %214, %73, !dbg !6094
	%218 = select i1 %216, i64 -1, i64 %217, !dbg !6095
	%219 = or i1 %216, %215, !dbg !6096
	%220 = zext i1 %219 to i32, !dbg !6096
	tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !6028, metadata !1043), !dbg !6089
	tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !6028, metadata !1043), !dbg !6089
	br label %253, !dbg !6020
	tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !6028, metadata !1043), !dbg !6097
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !6035, metadata !1043), !dbg !6099
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !6035, metadata !1043), !dbg !6099
	tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !6028, metadata !1043), !dbg !6097
	%222 = udiv i64 -1, %73
	%223 = icmp ult i64 %222, %49, !dbg !6100
	%224 = mul i64 %49, %73, !dbg !6102
	%225 = select i1 %223, i64 -1, i64 %224, !dbg !6103
	tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !6028, metadata !1043), !dbg !6097
	tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !6028, metadata !1043), !dbg !6097
	%226 = icmp ult i64 %222, %225, !dbg !6100
	%227 = mul i64 %225, %73, !dbg !6102
	%228 = select i1 %226, i64 -1, i64 %227, !dbg !6103
	%229 = or i1 %226, %223, !dbg !6104
	tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !6028, metadata !1043), !dbg !6097
	tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !6028, metadata !1043), !dbg !6097
	%230 = icmp ult i64 %222, %228, !dbg !6100
	%231 = mul i64 %228, %73, !dbg !6102
	%232 = select i1 %230, i64 -1, i64 %231, !dbg !6103
	%233 = or i1 %230, %229, !dbg !6104
	tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !6028, metadata !1043), !dbg !6097
	tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !6028, metadata !1043), !dbg !6097
	%234 = icmp ult i64 %222, %232, !dbg !6100
	%235 = mul i64 %232, %73, !dbg !6102
	%236 = select i1 %234, i64 -1, i64 %235, !dbg !6103
	%237 = or i1 %234, %233, !dbg !6104
	tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !6028, metadata !1043), !dbg !6097
	tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !6028, metadata !1043), !dbg !6097
	%238 = icmp ult i64 %222, %236, !dbg !6100
	%239 = mul i64 %236, %73, !dbg !6102
	%240 = select i1 %238, i64 -1, i64 %239, !dbg !6103
	%241 = or i1 %238, %237, !dbg !6104
	tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !6028, metadata !1043), !dbg !6097
	tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !6028, metadata !1043), !dbg !6097
	%242 = icmp ult i64 %222, %240, !dbg !6100
	%243 = mul i64 %240, %73, !dbg !6102
	%244 = select i1 %242, i64 -1, i64 %243, !dbg !6103
	%245 = or i1 %242, %241, !dbg !6104
	tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !6028, metadata !1043), !dbg !6097
	tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !6028, metadata !1043), !dbg !6097
	%246 = icmp ult i64 %222, %244, !dbg !6100
	%247 = mul i64 %244, %73, !dbg !6102
	%248 = select i1 %246, i64 -1, i64 %247, !dbg !6103
	%249 = or i1 %246, %245, !dbg !6104
	%250 = zext i1 %249 to i32, !dbg !6104
	tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !6028, metadata !1043), !dbg !6097
	tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !6028, metadata !1043), !dbg !6097
	br label %253, !dbg !6020
	call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !5902, metadata !1043), !dbg !5950
	store i64 %49, i64* %3, align 8, !dbg !6105, !tbaa !1079
	%252 = or i32 %48, 2, !dbg !6106
	br label %265, !dbg !6107
	%254 = phi i64 [ %184, %181 ], [ %49, %72 ], [ %83, %80 ], [ %78, %75 ], [ %108, %85 ], [ %122, %111 ], [ %129, %125 ], [ %138, %131 ], [ %160, %141 ], [ %178, %163 ], [ %218, %187 ], [ %248, %221 ]
	%255 = phi i32 [ %186, %181 ], [ 0, %72 ], [ %84, %80 ], [ %79, %75 ], [ %110, %85 ], [ %124, %111 ], [ %130, %125 ], [ %140, %131 ], [ %162, %141 ], [ %180, %163 ], [ %220, %187 ], [ %250, %221 ]
	call void @llvm.dbg.value(metadata i32 %255, i64 0, metadata !5912, metadata !1043), !dbg !6020
	%256 = or i32 %255, %48, !dbg !6108
	call void @llvm.dbg.value(metadata i32 %256, i64 0, metadata !5903, metadata !1043), !dbg !5919
	%257 = getelementptr inbounds i8, i8* %29, i64 %74, !dbg !6109
	store i8* %257, i8** %25, align 8, !dbg !6109, !tbaa !1032
	%258 = load i8, i8* %257, align 1, !dbg !6110, !tbaa !1279
	%259 = icmp eq i8 %258, 0, !dbg !6110
	%260 = or i32 %256, 2, !dbg !6112
	call void @llvm.dbg.value(metadata i32 %260, i64 0, metadata !5903, metadata !1043), !dbg !5919
	%261 = select i1 %259, i32 %256, i32 %260, !dbg !6113
	call void @llvm.dbg.value(metadata i32 %261, i64 0, metadata !5903, metadata !1043), !dbg !5919
	call void @llvm.dbg.value(metadata i32 %261, i64 0, metadata !5903, metadata !1043), !dbg !5919
	br label %262
	%263 = phi i64 [ %49, %47 ], [ %254, %253 ]
	%264 = phi i32 [ %48, %47 ], [ %261, %253 ]
	call void @llvm.dbg.value(metadata i32 %264, i64 0, metadata !5903, metadata !1043), !dbg !5919
	call void @llvm.dbg.value(metadata i64 %263, i64 0, metadata !5902, metadata !1043), !dbg !5950
	store i64 %263, i64* %3, align 8, !dbg !6114, !tbaa !1079
	br label %265, !dbg !6115
	%266 = phi i32 [ %264, %262 ], [ %44, %46 ], [ 4, %24 ], [ 4, %36 ], [ 4, %33 ], [ 4, %31 ], [ 4, %40 ], [ %57, %56 ], [ %252, %251 ]
	call void @llvm.lifetime.end(i64 8, i8* nonnull %7) #10, !dbg !6116
	ret i32 %266, !dbg !6116
}
declare i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #1
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #4 !dbg !6117 {
	tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !6120, metadata !1043), !dbg !6126
	tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !6121, metadata !1043), !dbg !6127
	%3 = icmp eq i64 %0, 0, !dbg !6128
	%4 = icmp eq i64 %1, 0, !dbg !6129
	%5 = or i1 %3, %4, !dbg !6131
	br i1 %5, label %12, label %6, !dbg !6131
	%7 = mul i64 %1, %0, !dbg !6132
	tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !6123, metadata !1043), !dbg !6133
	%8 = udiv i64 %7, %1, !dbg !6134
	%9 = icmp eq i64 %8, %0, !dbg !6136
	br i1 %9, label %12, label %10, !dbg !6137
	%11 = tail call i32* @__errno_location() #5, !dbg !6138
	store i32 12, i32* %11, align 4, !dbg !6140, !tbaa !1070
	br label %16
	%13 = phi i64 [ 1, %2 ], [ %1, %6 ]
	%14 = phi i64 [ 1, %2 ], [ %0, %6 ]
	tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !6120, metadata !1043), !dbg !6126
	tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !6121, metadata !1043), !dbg !6127
	%15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #10, !dbg !6141
	tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !6122, metadata !1043), !dbg !6142
	br label %16, !dbg !6143
	%17 = phi i8* [ %15, %12 ], [ null, %10 ]
	ret i8* %17, !dbg !6144
}
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #1
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #4 !dbg !6145 {
	tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !6190, metadata !1043), !dbg !6194
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !6191, metadata !1043), !dbg !6195
	tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !6193, metadata !1043), !dbg !6196
	%2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !6197
	tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !6192, metadata !1043), !dbg !6198
	%3 = icmp slt i32 %2, 0, !dbg !6199
	br i1 %3, label %4, label %6, !dbg !6201
	%5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !6202
	br label %24, !dbg !6203
	%7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !6204
	%8 = icmp eq i32 %7, 0, !dbg !6204
	br i1 %8, label %13, label %9, !dbg !6206
	%10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !6207
	%11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #10, !dbg !6209
	%12 = icmp eq i64 %11, -1, !dbg !6211
	br i1 %12, label %16, label %13, !dbg !6212
	%14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #10, !dbg !6213
	%15 = icmp eq i32 %14, 0, !dbg !6213
	br i1 %15, label %16, label %18, !dbg !6214
	tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !6191, metadata !1043), !dbg !6195
	%17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !6216
	tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !6193, metadata !1043), !dbg !6196
	br label %24, !dbg !6217
	%19 = tail call i32* @__errno_location() #5, !dbg !6218
	%20 = load i32, i32* %19, align 4, !dbg !6218, !tbaa !1070
	tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !6191, metadata !1043), !dbg !6195
	tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !6191, metadata !1043), !dbg !6195
	%21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !6216
	tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !6193, metadata !1043), !dbg !6196
	%22 = icmp eq i32 %20, 0, !dbg !6219
	br i1 %22, label %24, label %23, !dbg !6217
	store i32 %20, i32* %19, align 4, !dbg !6221, !tbaa !1070
	tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !6193, metadata !1043), !dbg !6196
	br label %24, !dbg !6223
	%25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
	ret i32 %25, !dbg !6224
}
declare i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #1
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #1
declare i64 @lseek(i32, i64, i32) local_unnamed_addr #1
define i32 @rpl_fcntl(i32, i32, ...) local_unnamed_addr #4 !dbg !540 {
	%3 = alloca [1 x %struct.__va_list_tag], align 16
	tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !548, metadata !1043), !dbg !6225
	tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !549, metadata !1043), !dbg !6226
	%4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !6227
	call void @llvm.lifetime.start(i64 24, i8* nonnull %4) #10, !dbg !6227
	tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %3, metadata !550, metadata !1043), !dbg !6228
	tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !561, metadata !1043), !dbg !6229
	call void @llvm.va_start(i8* nonnull %4), !dbg !6230
	%5 = icmp eq i32 %1, 1030, !dbg !6231
	%6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0
	%7 = load i32, i32* %6, align 16
	%8 = icmp ult i32 %7, 41
	br i1 %5, label %9, label %59, !dbg !6231
	br i1 %8, label %10, label %16, !dbg !6232
	%11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !6233
	%12 = load i8*, i8** %11, align 16, !dbg !6233
	%13 = sext i32 %7 to i64, !dbg !6233
	%14 = getelementptr i8, i8* %12, i64 %13, !dbg !6233
	%15 = add i32 %7, 8, !dbg !6233
	store i32 %15, i32* %6, align 16, !dbg !6233
	br label %20, !dbg !6233
	%17 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !6235
	%18 = load i8*, i8** %17, align 8, !dbg !6235
	%19 = getelementptr i8, i8* %18, i64 8, !dbg !6235
	store i8* %19, i8** %17, align 8, !dbg !6235
	br label %20, !dbg !6235
	%21 = phi i8* [ %14, %10 ], [ %18, %16 ]
	%22 = bitcast i8* %21 to i32*, !dbg !6237
	%23 = load i32, i32* %22, align 4, !dbg !6237
	call void @llvm.dbg.value(metadata i32 %23, i64 0, metadata !562, metadata !1043), !dbg !6239
	%24 = load i32, i32* @rpl_fcntl.have_dupfd_cloexec, align 4, !dbg !6240, !tbaa !1070
	%25 = icmp sgt i32 %24, -1, !dbg !6242
	br i1 %25, label %26, label %39, !dbg !6243
	%27 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 1030, i32 %23) #10, !dbg !6244
	call void @llvm.dbg.value(metadata i32 %27, i64 0, metadata !561, metadata !1043), !dbg !6229
	%28 = icmp sgt i32 %27, -1, !dbg !6246
	br i1 %28, label %36, label %29, !dbg !6248
	%30 = tail call i32* @__errno_location() #5, !dbg !6249
	%31 = load i32, i32* %30, align 4, !dbg !6249, !tbaa !1070
	%32 = icmp eq i32 %31, 22, !dbg !6251
	br i1 %32, label %33, label %36, !dbg !6252
	%34 = call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 0, i32 %23), !dbg !6254
	call void @llvm.dbg.value(metadata i32 %34, i64 0, metadata !561, metadata !1043), !dbg !6229
	%35 = icmp slt i32 %34, 0, !dbg !6256
	br i1 %35, label %75, label %36, !dbg !6258
	%37 = phi i32 [ %27, %26 ], [ %27, %29 ], [ %34, %33 ]
	%38 = phi i32 [ 1, %26 ], [ 1, %29 ], [ -1, %33 ]
	call void @llvm.dbg.value(metadata i32 %37, i64 0, metadata !561, metadata !1043), !dbg !6229
	store i32 %38, i32* @rpl_fcntl.have_dupfd_cloexec, align 4, !tbaa !1070
	br label %42, !dbg !6259
	%40 = call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 0, i32 %23), !dbg !6260
	call void @llvm.dbg.value(metadata i32 %40, i64 0, metadata !561, metadata !1043), !dbg !6229
	%41 = load i32, i32* @rpl_fcntl.have_dupfd_cloexec, align 4
	br label %42
	%43 = phi i32 [ %38, %36 ], [ %41, %39 ], !dbg !6261
	%44 = phi i32 [ %37, %36 ], [ %40, %39 ]
	call void @llvm.dbg.value(metadata i32 %44, i64 0, metadata !561, metadata !1043), !dbg !6229
	%45 = icmp sgt i32 %44, -1, !dbg !6263
	%46 = icmp eq i32 %43, -1, !dbg !6264
	%47 = and i1 %45, %46, !dbg !6265
	br i1 %47, label %48, label %75, !dbg !6265
	%49 = call i32 (i32, i32, ...) @fcntl(i32 %44, i32 1) #10, !dbg !6266
	call void @llvm.dbg.value(metadata i32 %49, i64 0, metadata !565, metadata !1043), !dbg !6267
	%50 = icmp slt i32 %49, 0, !dbg !6268
	br i1 %50, label %55, label %51, !dbg !6269
	%52 = or i32 %49, 1, !dbg !6270
	%53 = call i32 (i32, i32, ...) @fcntl(i32 %44, i32 2, i32 %52) #10, !dbg !6272
	%54 = icmp eq i32 %53, -1, !dbg !6273
	br i1 %54, label %55, label %75, !dbg !6274
	%56 = tail call i32* @__errno_location() #5, !dbg !6276
	%57 = load i32, i32* %56, align 4, !dbg !6276, !tbaa !1070
	call void @llvm.dbg.value(metadata i32 %57, i64 0, metadata !568, metadata !1043), !dbg !6277
	%58 = call i32 @close(i32 %44) #10, !dbg !6278
	store i32 %57, i32* %56, align 4, !dbg !6279, !tbaa !1070
	call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !561, metadata !1043), !dbg !6229
	br label %75, !dbg !6280
	br i1 %8, label %60, label %66, !dbg !6281
	%61 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !6282
	%62 = load i8*, i8** %61, align 16, !dbg !6282
	%63 = sext i32 %7 to i64, !dbg !6282
	%64 = getelementptr i8, i8* %62, i64 %63, !dbg !6282
	%65 = add i32 %7, 8, !dbg !6282
	store i32 %65, i32* %6, align 16, !dbg !6282
	br label %70, !dbg !6282
	%67 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !6284
	%68 = load i8*, i8** %67, align 8, !dbg !6284
	%69 = getelementptr i8, i8* %68, i64 8, !dbg !6284
	store i8* %69, i8** %67, align 8, !dbg !6284
	br label %70, !dbg !6284
	%71 = phi i8* [ %64, %60 ], [ %68, %66 ]
	%72 = bitcast i8* %71 to i8**, !dbg !6286
	%73 = load i8*, i8** %72, align 8, !dbg !6286
	call void @llvm.dbg.value(metadata i8* %73, i64 0, metadata !571, metadata !1043), !dbg !6288
	%74 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 %1, i8* %73) #10, !dbg !6289
	call void @llvm.dbg.value(metadata i32 %74, i64 0, metadata !561, metadata !1043), !dbg !6229
	br label %75
	%76 = phi i32 [ %74, %70 ], [ %34, %33 ], [ %44, %42 ], [ -1, %55 ], [ %44, %51 ]
	call void @llvm.dbg.value(metadata i32 %76, i64 0, metadata !561, metadata !1043), !dbg !6229
	call void @llvm.va_end(i8* nonnull %4), !dbg !6290
	call void @llvm.lifetime.end(i64 24, i8* nonnull %4) #10, !dbg !6291
	ret i32 %76, !dbg !6292
}
declare i32 @fcntl(i32, i32, ...) local_unnamed_addr #2
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #4 !dbg !6293 {
	tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !6338, metadata !1043), !dbg !6339
	%2 = icmp eq %struct._IO_FILE* %0, null, !dbg !6340
	br i1 %2, label %6, label %3, !dbg !6342
	%4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !6343
	%5 = icmp eq i32 %4, 0, !dbg !6343
	br i1 %5, label %6, label %8, !dbg !6345
	%7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !6347
	br label %17, !dbg !6348
	tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !6349, metadata !1043) #10, !dbg !6354
	%9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !6356
	%10 = load i32, i32* %9, align 8, !dbg !6356, !tbaa !1048
	%11 = and i32 %10, 256, !dbg !6358
	%12 = icmp eq i32 %11, 0, !dbg !6358
	br i1 %12, label %15, label %13, !dbg !6359
	%14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #10, !dbg !6360
	br label %15, !dbg !6360
	%16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !6361
	br label %17, !dbg !6362
	%18 = phi i32 [ %7, %6 ], [ %16, %15 ]
	ret i32 %18, !dbg !6363
}
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #1
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #4 !dbg !6364 {
	tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !6410, metadata !1043), !dbg !6416
	tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !6411, metadata !1043), !dbg !6417
	tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !6412, metadata !1043), !dbg !6418
	%4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !6419
	%5 = load i8*, i8** %4, align 8, !dbg !6419, !tbaa !6420
	%6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !6421
	%7 = load i8*, i8** %6, align 8, !dbg !6421, !tbaa !6422
	%8 = icmp eq i8* %5, %7, !dbg !6423
	br i1 %8, label %9, label %28, !dbg !6424
	%10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !6425
	%11 = load i8*, i8** %10, align 8, !dbg !6425, !tbaa !6427
	%12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !6428
	%13 = load i8*, i8** %12, align 8, !dbg !6428, !tbaa !6429
	%14 = icmp eq i8* %11, %13, !dbg !6430
	br i1 %14, label %15, label %28, !dbg !6431
	%16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !6432
	%17 = load i8*, i8** %16, align 8, !dbg !6432, !tbaa !6433
	%18 = icmp eq i8* %17, null, !dbg !6434
	br i1 %18, label %19, label %28, !dbg !6435
	%20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !6437
	%21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #10, !dbg !6438
	tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !6413, metadata !1043), !dbg !6440
	%22 = icmp eq i64 %21, -1, !dbg !6441
	br i1 %22, label %30, label %23, !dbg !6443
	%24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !6444
	%25 = load i32, i32* %24, align 8, !dbg !6445, !tbaa !1048
	%26 = and i32 %25, -17, !dbg !6445
	store i32 %26, i32* %24, align 8, !dbg !6445, !tbaa !1048
	%27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !6446
	store i64 %21, i64* %27, align 8, !dbg !6447, !tbaa !6448
	br label %30, !dbg !6449
	%29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !6450
	br label %30, !dbg !6451
	%31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
	ret i32 %31, !dbg !6452
}
declare i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #1
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #4 !dbg !6453 {
	%5 = alloca i32, align 4
	tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !6470, metadata !1043), !dbg !6479
	tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !6471, metadata !1043), !dbg !6480
	tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !6472, metadata !1043), !dbg !6481
	tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !6473, metadata !1043), !dbg !6482
	%6 = bitcast i32* %5 to i8*, !dbg !6483
	call void @llvm.lifetime.start(i64 4, i8* nonnull %6) #10, !dbg !6483
	%7 = icmp eq i32* %0, null, !dbg !6484
	tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !6470, metadata !1043), !dbg !6479
	%8 = select i1 %7, i32* %5, i32* %0, !dbg !6486
	tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !6470, metadata !1043), !dbg !6479
	%9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #10, !dbg !6487
	call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !6474, metadata !1043), !dbg !6488
	%10 = icmp ugt i64 %9, -3, !dbg !6489
	%11 = icmp ne i64 %2, 0, !dbg !6490
	%12 = and i1 %11, %10, !dbg !6492
	br i1 %12, label %13, label %18, !dbg !6492
	%14 = call zeroext i1 @hard_locale(i32 0) #10, !dbg !6493
	br i1 %14, label %18, label %15, !dbg !6495
	%16 = load i8, i8* %1, align 1, !dbg !6497, !tbaa !1279
	call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !6476, metadata !1043), !dbg !6498
	%17 = zext i8 %16 to i32, !dbg !6499
	store i32 %17, i32* %8, align 4, !dbg !6500, !tbaa !1070
	br label %18
	%19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
	call void @llvm.lifetime.end(i64 4, i8* nonnull %6) #10, !dbg !6501
	ret i64 %19, !dbg !6501
}
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #1
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #4 !dbg !6502 {
	tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !6547, metadata !1043), !dbg !6552
	%2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #10, !dbg !6553
	tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !6554, metadata !1043), !dbg !6557
	%3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !6559
	%4 = load i32, i32* %3, align 8, !dbg !6559, !tbaa !1048
	%5 = and i32 %4, 32, !dbg !6559
	%6 = icmp eq i32 %5, 0, !dbg !6560
	%7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #10, !dbg !6561
	%8 = icmp ne i32 %7, 0, !dbg !6562
	br i1 %6, label %9, label %19, !dbg !6563
	%10 = xor i1 %8, true, !dbg !6565
	%11 = icmp ne i64 %2, 0, !dbg !6565
	%12 = or i1 %11, %10, !dbg !6565
	%13 = sext i1 %8 to i32, !dbg !6565
	br i1 %12, label %22, label %14, !dbg !6565
	%15 = tail call i32* @__errno_location() #5, !dbg !6567
	%16 = load i32, i32* %15, align 4, !dbg !6567, !tbaa !1070
	%17 = icmp ne i32 %16, 9, !dbg !6569
	%18 = sext i1 %17 to i32, !dbg !6569
	br label %22, !dbg !6569
	br i1 %8, label %22, label %20, !dbg !6571
	%21 = tail call i32* @__errno_location() #5, !dbg !6573
	store i32 0, i32* %21, align 4, !dbg !6575, !tbaa !1070
	br label %22, !dbg !6573
	%23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
	ret i32 %23, !dbg !6576
}
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #1
define zeroext i1 @hard_locale(i32) local_unnamed_addr #4 !dbg !6577 {
	tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !6582, metadata !1043), !dbg !6602
	tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !6583, metadata !1043), !dbg !6603
	%2 = tail call i8* @setlocale(i32 %0, i8* null) #10, !dbg !6604
	tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !6584, metadata !1043), !dbg !6605
	%3 = icmp eq i8* %2, null, !dbg !6606
	br i1 %3, label %15, label %4, !dbg !6607
	tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !6592, metadata !1043), !dbg !6608
	tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !6593, metadata !1043), !dbg !6609
	%5 = load i8, i8* %2, align 1, !dbg !6610, !tbaa !1279
	%6 = icmp eq i8 %5, 67, !dbg !6612
	br i1 %6, label %7, label %11, !dbg !6615
	%8 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !6617
	%9 = load i8, i8* %8, align 1, !dbg !6617, !tbaa !1279
	%10 = icmp eq i8 %9, 0, !dbg !6620
	br i1 %10, label %14, label %11, !dbg !6622
	tail call void @llvm.dbg.value(metadata i64 5, i64 0, metadata !6598, metadata !1043), !dbg !6624
	%12 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.170, i64 0, i64 0)) #10, !dbg !6625
	%13 = icmp eq i32 %12, 0, !dbg !6627
	br i1 %13, label %14, label %15, !dbg !6629
	tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !6583, metadata !1043), !dbg !6603
	br label %15, !dbg !6631
	%16 = phi i1 [ false, %14 ], [ true, %11 ], [ true, %1 ]
	ret i1 %16, !dbg !6632
}
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #8
define i8* @locale_charset() local_unnamed_addr #4 !dbg !6633 {
	%1 = alloca [51 x i8], align 16
	tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !6645, metadata !1043), !dbg !6719
	%2 = alloca [51 x i8], align 16
	tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !6712, metadata !1043), !dbg !6721
	%3 = tail call i8* @nl_langinfo(i32 14) #10, !dbg !6722
	tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !6637, metadata !1043), !dbg !6723
	%4 = icmp eq i8* %3, null, !dbg !6724
	%5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.173, i64 0, i64 0), i8* %3, !dbg !6726
	tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !6637, metadata !1043), !dbg !6723
	%6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !6727, !tbaa !1032
	tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !6659, metadata !1043) #10, !dbg !6728
	%7 = icmp eq i8* %6, null, !dbg !6729
	br i1 %7, label %8, label %127, !dbg !6730
	%9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.174, i64 0, i64 0)) #10, !dbg !6731
	tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !6660, metadata !1043) #10, !dbg !6732
	%10 = icmp eq i8* %9, null, !dbg !6733
	br i1 %10, label %14, label %11, !dbg !6735
	%12 = load i8, i8* %9, align 1, !dbg !6736, !tbaa !1279
	%13 = icmp eq i8 %12, 0, !dbg !6738
	br i1 %13, label %14, label %15, !dbg !6739
	br label %15, !dbg !6741
	%16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.175, i64 0, i64 0), %14 ], [ %9, %11 ]
	tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !6660, metadata !1043) #10, !dbg !6732
	%17 = tail call i64 @strlen(i8* nonnull %16) #15, !dbg !6742
	tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !6663, metadata !1043) #10, !dbg !6743
	tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !6665, metadata !1043) #10, !dbg !6744
	%18 = icmp eq i64 %17, 0, !dbg !6745
	br i1 %18, label %24, label %19, !dbg !6746
	%20 = add i64 %17, -1, !dbg !6747
	%21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !6747
	%22 = load i8, i8* %21, align 1, !dbg !6747, !tbaa !1279
	%23 = icmp ne i8 %22, 47, !dbg !6749
	br label %24
	%25 = phi i1 [ false, %15 ], [ %23, %19 ]
	%26 = zext i1 %25 to i64, !dbg !6750
	%27 = add i64 %17, 14, !dbg !6751
	%28 = add i64 %27, %26, !dbg !6752
	%29 = tail call noalias i8* @malloc(i64 %28) #10, !dbg !6753
	tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !6662, metadata !1043) #10, !dbg !6754
	%30 = icmp eq i8* %29, null, !dbg !6755
	br i1 %30, label %125, label %31, !dbg !6755
	tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #10, !dbg !6756
	%32 = getelementptr inbounds i8, i8* %29, i64 %17
	br i1 %25, label %33, label %35, !dbg !6759
	store i8 47, i8* %32, align 1, !dbg !6760, !tbaa !1279
	%34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !6762
	tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.176, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !6763
	br label %37, !dbg !6764
	%36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !6762
	tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.176, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !6763
	br label %37, !dbg !6764
	%38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #10, !dbg !6765
	tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !6667, metadata !1043) #10, !dbg !6766
	%39 = icmp slt i32 %38, 0, !dbg !6767
	br i1 %39, label %123, label %40, !dbg !6768
	%41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.177, i64 0, i64 0)) #10, !dbg !6769
	tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !6668, metadata !1043) #10, !dbg !6770
	%42 = icmp eq %struct._IO_FILE* %41, null, !dbg !6771
	br i1 %42, label %48, label %43, !dbg !6772
	%44 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
	%45 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
	%46 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
	%47 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
	br label %50, !dbg !6773
	%49 = tail call i32 @close(i32 %38) #10, !dbg !6774
	br label %123, !dbg !6776
	%51 = phi i64 [ %112, %111 ], [ 0, %43 ]
	%52 = phi i8* [ %113, %111 ], [ null, %43 ]
	call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !6709, metadata !1043) #10, !dbg !6773
	call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !6710, metadata !1043) #10, !dbg !6777
	call void @llvm.lifetime.start(i64 51, i8* nonnull %44) #10, !dbg !6778
	call void @llvm.lifetime.start(i64 51, i8* nonnull %45) #10, !dbg !6779
	call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !6780, metadata !1043) #10, !dbg !6785
	%53 = load i8*, i8** %46, align 8, !dbg !6787, !tbaa !6422
	%54 = load i8*, i8** %47, align 8, !dbg !6787, !tbaa !6420
	%55 = icmp ult i8* %53, %54, !dbg !6787
	br i1 %55, label %58, label %56, !dbg !6787, !prof !6788
	%57 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !6789
	br label %62, !dbg !6789
	%59 = getelementptr inbounds i8, i8* %53, i64 1, !dbg !6791
	store i8* %59, i8** %46, align 8, !dbg !6791, !tbaa !6422
	%60 = load i8, i8* %53, align 1, !dbg !6791, !tbaa !1279
	%61 = zext i8 %60 to i32, !dbg !6791
	br label %62, !dbg !6791
	%63 = phi i32 [ %57, %56 ], [ %61, %58 ], !dbg !6793
	call void @llvm.dbg.value(metadata i32 %63, i64 0, metadata !6711, metadata !1043) #10, !dbg !6795
	switch i32 %63, label %77 [
		i32 -1, label %115
		i32 32, label %111
		i32 10, label %111
		i32 9, label %111
		i32 35, label %64
	], !dbg !6796
	br label %65, !dbg !6797
	call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !6780, metadata !1043) #10, !dbg !6797
	%66 = load i8*, i8** %46, align 8, !dbg !6801, !tbaa !6422
	%67 = load i8*, i8** %47, align 8, !dbg !6801, !tbaa !6420
	%68 = icmp ult i8* %66, %67, !dbg !6801
	br i1 %68, label %71, label %69, !dbg !6801, !prof !6788
	%70 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !6802
	br label %75, !dbg !6802
	%72 = getelementptr inbounds i8, i8* %66, i64 1, !dbg !6803
	store i8* %72, i8** %46, align 8, !dbg !6803, !tbaa !6422
	%73 = load i8, i8* %66, align 1, !dbg !6803, !tbaa !1279
	%74 = zext i8 %73 to i32, !dbg !6803
	br label %75, !dbg !6803
	%76 = phi i32 [ %70, %69 ], [ %74, %71 ], !dbg !6804
	call void @llvm.dbg.value(metadata i32 %76, i64 0, metadata !6711, metadata !1043) #10, !dbg !6795
	switch i32 %76, label %65 [
		i32 -1, label %114
		i32 10, label %110
	], !dbg !6805, !llvm.loop !6807
	%78 = call i32 @ungetc(i32 %63, %struct._IO_FILE* nonnull %41) #10, !dbg !6810
	%79 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.178, i64 0, i64 0), i8* nonnull %44, i8* nonnull %45) #10, !dbg !6811
	%80 = icmp slt i32 %79, 2, !dbg !6813
	br i1 %80, label %115, label %81, !dbg !6814
	%82 = call i64 @strlen(i8* nonnull %44) #15, !dbg !6815
	call void @llvm.dbg.value(metadata i64 %82, i64 0, metadata !6716, metadata !1043) #10, !dbg !6816
	%83 = call i64 @strlen(i8* nonnull %45) #15, !dbg !6817
	call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !6717, metadata !1043) #10, !dbg !6818
	call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !6718, metadata !1043) #10, !dbg !6819
	%84 = icmp eq i64 %51, 0, !dbg !6820
	%85 = add i64 %82, 1
	%86 = add i64 %85, %83
	%87 = add i64 %86, 1
	br i1 %84, label %88, label %91, !dbg !6822
	call void @llvm.dbg.value(metadata i64 %87, i64 0, metadata !6710, metadata !1043) #10, !dbg !6777
	%89 = add i64 %86, 2, !dbg !6823
	%90 = call noalias i8* @malloc(i64 %89) #10, !dbg !6825
	call void @llvm.dbg.value(metadata i8* %90, i64 0, metadata !6709, metadata !1043) #10, !dbg !6773
	br label %95, !dbg !6826
	%92 = add i64 %87, %51, !dbg !6827
	call void @llvm.dbg.value(metadata i64 %92, i64 0, metadata !6710, metadata !1043) #10, !dbg !6777
	%93 = add i64 %92, 1, !dbg !6829
	%94 = call i8* @realloc(i8* %52, i64 %93) #10, !dbg !6830
	call void @llvm.dbg.value(metadata i8* %94, i64 0, metadata !6709, metadata !1043) #10, !dbg !6773
	br label %95
	%96 = phi i64 [ %87, %88 ], [ %92, %91 ]
	%97 = phi i8* [ %90, %88 ], [ %94, %91 ]
	call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !6709, metadata !1043) #10, !dbg !6773
	call void @llvm.dbg.value(metadata i64 %96, i64 0, metadata !6710, metadata !1043) #10, !dbg !6777
	%98 = icmp eq i8* %97, null, !dbg !6831
	br i1 %98, label %99, label %100, !dbg !6833
	call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !6710, metadata !1043) #10, !dbg !6777
	call void @free(i8* %52) #10, !dbg !6834
	br label %116, !dbg !6836
	%101 = getelementptr inbounds i8, i8* %97, i64 %96, !dbg !6837
	%102 = xor i64 %83, -1, !dbg !6838
	%103 = getelementptr inbounds i8, i8* %101, i64 %102, !dbg !6838
	%104 = xor i64 %82, -1, !dbg !6839
	%105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !6839
	call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !6840, metadata !1043) #10, !dbg !6844
	call void @llvm.dbg.value(metadata i8* %44, i64 0, metadata !6843, metadata !1043) #10, !dbg !6844
	%106 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false) #10, !dbg !6846
	%107 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %44, i64 %106) #10, !dbg !6847
	call void @llvm.dbg.value(metadata i8* %103, i64 0, metadata !6840, metadata !1043) #10, !dbg !6848
	call void @llvm.dbg.value(metadata i8* %45, i64 0, metadata !6843, metadata !1043) #10, !dbg !6848
	%108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %103, i1 false) #10, !dbg !6850
	%109 = call i8* @__strcpy_chk(i8* nonnull %103, i8* nonnull %45, i64 %108) #10, !dbg !6851
	br label %111, !dbg !6852
	br label %111, !dbg !6773
	%112 = phi i64 [ %96, %100 ], [ %51, %62 ], [ %51, %62 ], [ %51, %62 ], [ %51, %110 ]
	%113 = phi i8* [ %97, %100 ], [ %52, %62 ], [ %52, %62 ], [ %52, %62 ], [ %52, %110 ]
	call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !6709, metadata !1043) #10, !dbg !6773
	call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !6710, metadata !1043) #10, !dbg !6777
	call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #10, !dbg !6852
	call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #10, !dbg !6852
	br label %50
	br label %116, !dbg !6773
	br label %116, !dbg !6773
	%117 = phi i64 [ 0, %99 ], [ %51, %114 ], [ %51, %115 ]
	%118 = phi i8* [ null, %99 ], [ %52, %114 ], [ %52, %115 ]
	call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !6709, metadata !1043) #10, !dbg !6773
	call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !6710, metadata !1043) #10, !dbg !6777
	call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #10, !dbg !6852
	call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #10, !dbg !6852
	%119 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #10, !dbg !6853
	%120 = icmp eq i64 %117, 0, !dbg !6854
	br i1 %120, label %123, label %121, !dbg !6856
	%122 = getelementptr inbounds i8, i8* %118, i64 %117, !dbg !6857
	store i8 0, i8* %122, align 1, !dbg !6859, !tbaa !1279
	call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !6659, metadata !1043) #10, !dbg !6728
	br label %123
	%124 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.173, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.173, i64 0, i64 0), %48 ], [ %118, %121 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.173, i64 0, i64 0), %116 ]
	call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !6659, metadata !1043) #10, !dbg !6728
	call void @free(i8* %29) #10, !dbg !6860
	br label %125
	%126 = phi i8* [ %124, %123 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.173, i64 0, i64 0), %24 ]
	call void @llvm.dbg.value(metadata i8* %126, i64 0, metadata !6659, metadata !1043) #10, !dbg !6728
	store volatile i8* %126, i8** @charset_aliases, align 8, !dbg !6861, !tbaa !1032
	br label %127, !dbg !6862
	%128 = phi i8* [ %6, %0 ], [ %126, %125 ]
	call void @llvm.dbg.value(metadata i8* %128, i64 0, metadata !6638, metadata !1043), !dbg !6863
	%129 = load i8, i8* %128, align 1, !dbg !6864, !tbaa !1279
	%130 = icmp eq i8 %129, 0, !dbg !6865
	br i1 %130, label %157, label %131, !dbg !6866
	br label %132, !dbg !6868
	%133 = phi i8 [ %154, %147 ], [ %129, %131 ]
	%134 = phi i8* [ %153, %147 ], [ %128, %131 ]
	%135 = call i32 @strcmp(i8* %5, i8* %134) #10, !dbg !6868
	%136 = icmp eq i32 %135, 0, !dbg !6869
	br i1 %136, label %143, label %137, !dbg !6870
	%138 = icmp eq i8 %133, 42, !dbg !6871
	br i1 %138, label %139, label %147, !dbg !6873
	%140 = getelementptr inbounds i8, i8* %134, i64 1, !dbg !6874
	%141 = load i8, i8* %140, align 1, !dbg !6874, !tbaa !1279
	%142 = icmp eq i8 %141, 0, !dbg !6876
	br i1 %142, label %143, label %147, !dbg !6877
	%144 = call i64 @strlen(i8* %134) #15, !dbg !6879
	%145 = getelementptr inbounds i8, i8* %134, i64 %144, !dbg !6881
	%146 = getelementptr inbounds i8, i8* %145, i64 1, !dbg !6882
	call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !6637, metadata !1043), !dbg !6723
	br label %157, !dbg !6883
	%148 = call i64 @strlen(i8* %134) #15, !dbg !6884
	%149 = add i64 %148, 1, !dbg !6885
	%150 = getelementptr inbounds i8, i8* %134, i64 %149, !dbg !6886
	call void @llvm.dbg.value(metadata i8* %150, i64 0, metadata !6638, metadata !1043), !dbg !6863
	%151 = call i64 @strlen(i8* %150) #15, !dbg !6887
	%152 = add i64 %151, 1, !dbg !6888
	%153 = getelementptr inbounds i8, i8* %150, i64 %152, !dbg !6889
	call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !6638, metadata !1043), !dbg !6863
	call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !6638, metadata !1043), !dbg !6863
	%154 = load i8, i8* %153, align 1, !dbg !6864, !tbaa !1279
	%155 = icmp eq i8 %154, 0, !dbg !6865
	br i1 %155, label %156, label %132, !dbg !6866, !llvm.loop !6890
	br label %157, !dbg !6723
	%158 = phi i8* [ %146, %143 ], [ %5, %127 ], [ %5, %156 ]
	call void @llvm.dbg.value(metadata i8* %158, i64 0, metadata !6637, metadata !1043), !dbg !6723
	%159 = load i8, i8* %158, align 1, !dbg !6893, !tbaa !1279
	%160 = icmp eq i8 %159, 0, !dbg !6895
	%161 = select i1 %160, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.179, i64 0, i64 0), i8* %158, !dbg !6896
	call void @llvm.dbg.value(metadata i8* %161, i64 0, metadata !6637, metadata !1043), !dbg !6723
	ret i8* %161, !dbg !6897
}
declare i8* @nl_langinfo(i32) local_unnamed_addr #1
declare i8* @getenv(i8* nocapture) local_unnamed_addr #8
declare i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #2
declare i32 @ungetc(i32, %struct._IO_FILE* nocapture) local_unnamed_addr #1
declare i32 @fscanf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) local_unnamed_addr #1
attributes #0 = { noreturn nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind }
attributes #11 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { noreturn }
attributes #14 = { noreturn nounwind }
attributes #15 = { nounwind readonly }
attributes #16 = { cold }
!llvm.dbg.cu = !{!2, !453, !459, !467, !919, !921, !923, !473, !480, !926, !947, !949, !531, !957, !968, !971, !974, !978, !980, !544, !982, !984, !986, !989, !991, !575}
!llvm.ident = !{!994, !994, !994, !994, !994, !994, !994, !994, !994, !994, !994, !994, !994, !994, !994, !994, !994, !994, !994, !994, !994, !994, !994, !994, !994, !994}
!llvm.module.flags = !{!995, !996, !997, !998}
!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "caught_signals", scope: !2, file: !3, line: 183, type: !449, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, emissionKind: FullDebug, enums: !4, retainedTypes: !186, globals: !195)
!3 = !DIFile(filename: "src/csplit.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4 = !{!5, !132, !146, !150, !165, !173}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !6, file: !3, line: 1448, size: 32, elements: !130)
!6 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 1343, type: !7, isDefinition: true, scopeLine: 1344, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !13)
!7 = !DISubroutineType(types: !8)
!8 = !{!9, !9, !10}
!9 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!13 = !{!14, !15, !16, !17, !21, !22, !24}
!14 = !DILocalVariable(name: "argc", arg: 1, scope: !6, file: !3, line: 1343, type: !9)
!15 = !DILocalVariable(name: "argv", arg: 2, scope: !6, file: !3, line: 1343, type: !10)
!16 = !DILocalVariable(name: "optc", scope: !6, file: !3, line: 1345, type: !9)
!17 = !DILocalVariable(name: "prefix_len", scope: !6, file: !3, line: 1413, type: !18)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !19, line: 62, baseType: !20)
!19 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!20 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!21 = !DILocalVariable(name: "max_digit_string_len", scope: !6, file: !3, line: 1414, type: !18)
!22 = !DILocalVariable(name: "i", scope: !23, file: !3, line: 1427, type: !9)
!23 = distinct !DILexicalBlock(scope: !6, file: !3, line: 1426, column: 3)
!24 = !DILocalVariable(name: "act", scope: !23, file: !3, line: 1450, type: !25)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !26, line: 24, size: 1216, elements: !27)
!26 = !DIFile(filename: "/usr/include/bits/sigaction.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!27 = !{!28, !116, !125, !126}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "__sigaction_handler", scope: !25, file: !26, line: 35, baseType: !29, size: 64)
!29 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !25, file: !26, line: 28, size: 64, elements: !30)
!30 = !{!31, !37}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !29, file: !26, line: 31, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !33, line: 84, baseType: !34)
!33 = !DIFile(filename: "/usr/include/signal.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DISubroutineType(types: !36)
!36 = !{null, !9}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "sa_sigaction", scope: !29, file: !26, line: 33, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DISubroutineType(types: !40)
!40 = !{null, !9, !41, !76}
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "siginfo_t", file: !43, line: 133, baseType: !44)
!43 = !DIFile(filename: "/usr/include/bits/siginfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !43, line: 62, size: 1024, elements: !45)
!45 = !{!46, !47, !48, !49}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !44, file: !43, line: 64, baseType: !9, size: 32)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !44, file: !43, line: 65, baseType: !9, size: 32, offset: 32)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !44, file: !43, line: 67, baseType: !9, size: 32, offset: 64)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !44, file: !43, line: 132, baseType: !50, size: 896, offset: 128)
!50 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !44, file: !43, line: 69, size: 896, elements: !51)
!51 = !{!52, !56, !65, !77, !83, !94, !105, !110}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_pad", scope: !50, file: !43, line: 71, baseType: !53, size: 896)
!53 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 896, elements: !54)
!54 = !{!55}
!55 = !DISubrange(count: 28)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !50, file: !43, line: 78, baseType: !57, size: 64)
!57 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !50, file: !43, line: 74, size: 64, elements: !58)
!58 = !{!59, !62}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !57, file: !43, line: 76, baseType: !60, size: 32)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !61, line: 142, baseType: !9)
!61 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!62 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !57, file: !43, line: 77, baseType: !63, size: 32, offset: 32)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !61, line: 134, baseType: !64)
!64 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !50, file: !43, line: 86, baseType: !66, size: 128)
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !50, file: !43, line: 81, size: 128, elements: !67)
!67 = !{!68, !69, !70}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "si_tid", scope: !66, file: !43, line: 83, baseType: !9, size: 32)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "si_overrun", scope: !66, file: !43, line: 84, baseType: !9, size: 32, offset: 32)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "si_sigval", scope: !66, file: !43, line: 85, baseType: !71, size: 64, offset: 64)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !43, line: 36, baseType: !72)
!72 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !43, line: 32, size: 64, elements: !73)
!73 = !{!74, !75}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !72, file: !43, line: 34, baseType: !9, size: 32)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !72, file: !43, line: 35, baseType: !76, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !50, file: !43, line: 94, baseType: !78, size: 128)
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !50, file: !43, line: 89, size: 128, elements: !79)
!79 = !{!80, !81, !82}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !78, file: !43, line: 91, baseType: !60, size: 32)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !78, file: !43, line: 92, baseType: !63, size: 32, offset: 32)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "si_sigval", scope: !78, file: !43, line: 93, baseType: !71, size: 64, offset: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !50, file: !43, line: 104, baseType: !84, size: 256)
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !50, file: !43, line: 97, size: 256, elements: !85)
!85 = !{!86, !87, !88, !89, !93}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !84, file: !43, line: 99, baseType: !60, size: 32)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !84, file: !43, line: 100, baseType: !63, size: 32, offset: 32)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "si_status", scope: !84, file: !43, line: 101, baseType: !9, size: 32, offset: 64)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "si_utime", scope: !84, file: !43, line: 102, baseType: !90, size: 64, offset: 128)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigchld_clock_t", file: !43, line: 58, baseType: !91)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "__clock_t", file: !61, line: 144, baseType: !92)
!92 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "si_stime", scope: !84, file: !43, line: 103, baseType: !90, size: 64, offset: 192)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !50, file: !43, line: 116, baseType: !95, size: 256)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !50, file: !43, line: 107, size: 256, elements: !96)
!96 = !{!97, !98, !100}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "si_addr", scope: !95, file: !43, line: 109, baseType: !76, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "si_addr_lsb", scope: !95, file: !43, line: 110, baseType: !99, size: 16, offset: 64)
!99 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "si_addr_bnd", scope: !95, file: !43, line: 115, baseType: !101, size: 128, offset: 128)
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !95, file: !43, line: 111, size: 128, elements: !102)
!102 = !{!103, !104}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !101, file: !43, line: 113, baseType: !76, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !101, file: !43, line: 114, baseType: !76, size: 64, offset: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !50, file: !43, line: 123, baseType: !106, size: 128)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !50, file: !43, line: 119, size: 128, elements: !107)
!107 = !{!108, !109}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "si_band", scope: !106, file: !43, line: 121, baseType: !92, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "si_fd", scope: !106, file: !43, line: 122, baseType: !9, size: 32, offset: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !50, file: !43, line: 131, baseType: !111, size: 128)
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !50, file: !43, line: 126, size: 128, elements: !112)
!112 = !{!113, !114, !115}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !111, file: !43, line: 128, baseType: !76, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !111, file: !43, line: 129, baseType: !9, size: 32, offset: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !111, file: !43, line: 130, baseType: !64, size: 32, offset: 96)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !25, file: !26, line: 43, baseType: !117, size: 1024, offset: 64)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigset_t", file: !118, line: 30, baseType: !119)
!118 = !DIFile(filename: "/usr/include/bits/sigset.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !118, line: 27, size: 1024, elements: !120)
!120 = !{!121}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "__val", scope: !119, file: !118, line: 29, baseType: !122, size: 1024)
!122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 1024, elements: !123)
!123 = !{!124}
!124 = !DISubrange(count: 16)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !25, file: !26, line: 46, baseType: !9, size: 32, offset: 1088)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !25, file: !26, line: 49, baseType: !127, size: 64, offset: 1152)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = !DISubroutineType(types: !129)
!129 = !{null}
!130 = !{!131}
!131 = !DIEnumerator(name: "nsigs", value: 11)
!132 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !133, line: 32, size: 32, elements: !134)
!133 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!134 = !{!135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145}
!135 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!136 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!137 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!138 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!139 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!140 = !DIEnumerator(name: "c_quoting_style", value: 5)
!141 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!142 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!143 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!144 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!145 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!146 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !3, line: 1232, size: 32, elements: !147)
!147 = !{!148, !149}
!148 = !DIEnumerator(name: "FLAG_THOUSANDS", value: 1)
!149 = !DIEnumerator(name: "FLAG_ALTERNATIVE", value: 2)
!150 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !151, line: 46, size: 32, elements: !152)
!151 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!152 = !{!153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164}
!153 = !DIEnumerator(name: "_ISupper", value: 256)
!154 = !DIEnumerator(name: "_ISlower", value: 512)
!155 = !DIEnumerator(name: "_ISalpha", value: 1024)
!156 = !DIEnumerator(name: "_ISdigit", value: 2048)
!157 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!158 = !DIEnumerator(name: "_ISspace", value: 8192)
!159 = !DIEnumerator(name: "_ISprint", value: 16384)
!160 = !DIEnumerator(name: "_ISgraph", value: 32768)
!161 = !DIEnumerator(name: "_ISblank", value: 1)
!162 = !DIEnumerator(name: "_IScntrl", value: 2)
!163 = !DIEnumerator(name: "_ISpunct", value: 4)
!164 = !DIEnumerator(name: "_ISalnum", value: 8)
!165 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !166, line: 26, size: 32, elements: !167)
!166 = !DIFile(filename: "./lib/xstrtol.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!167 = !{!168, !169, !170, !171, !172}
!168 = !DIEnumerator(name: "LONGINT_OK", value: 0)
!169 = !DIEnumerator(name: "LONGINT_OVERFLOW", value: 1)
!170 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR", value: 2)
!171 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW", value: 3)
!172 = !DIEnumerator(name: "LONGINT_INVALID", value: 4)
!173 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !175, file: !174, line: 192, size: 32, elements: !184)
!174 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!175 = distinct !DISubprogram(name: "x2nrealloc", scope: !174, file: !174, line: 180, type: !176, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !179)
!176 = !DISubroutineType(types: !177)
!177 = !{!76, !76, !178, !18}
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!179 = !{!180, !181, !182, !183}
!180 = !DILocalVariable(name: "p", arg: 1, scope: !175, file: !174, line: 180, type: !76)
!181 = !DILocalVariable(name: "pn", arg: 2, scope: !175, file: !174, line: 180, type: !178)
!182 = !DILocalVariable(name: "s", arg: 3, scope: !175, file: !174, line: 180, type: !18)
!183 = !DILocalVariable(name: "n", scope: !175, file: !174, line: 182, type: !18)
!184 = !{!185}
!185 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!186 = !{!11, !76, !64, !32, !9, !187, !18, !188, !190, !193, !20}
!187 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !192)
!192 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!195 = !{!196, !202, !204, !207, !210, !212, !214, !254, !0, !256, !311, !313, !315, !318, !321, !333, !336, !339, !341, !364, !371, !373, !409, !411, !413, !415, !417, !419}
!196 = !DIGlobalVariableExpression(var: !197)
!197 = distinct !DIGlobalVariable(name: "sig", scope: !6, file: !3, line: 1428, type: !198, isLocal: true, isDefinition: true)
!198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !199, size: 352, elements: !200)
!199 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!200 = !{!201}
!201 = !DISubrange(count: 11)
!202 = !DIGlobalVariableExpression(var: !203)
!203 = distinct !DIGlobalVariable(name: "global_argv", scope: !2, file: !3, line: 161, type: !10, isLocal: true, isDefinition: true)
!204 = !DIGlobalVariableExpression(var: !205)
!205 = distinct !DIGlobalVariable(name: "suppress_count", scope: !2, file: !3, line: 164, type: !206, isLocal: true, isDefinition: true)
!206 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!207 = !DIGlobalVariableExpression(var: !208)
!208 = distinct !DIGlobalVariable(name: "remove_files", scope: !2, file: !3, line: 167, type: !209, isLocal: true, isDefinition: true)
!209 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !206)
!210 = !DIGlobalVariableExpression(var: !211)
!211 = distinct !DIGlobalVariable(name: "elide_empty_files", scope: !2, file: !3, line: 170, type: !206, isLocal: true, isDefinition: true)
!212 = !DIGlobalVariableExpression(var: !213)
!213 = distinct !DIGlobalVariable(name: "suppress_matched", scope: !2, file: !3, line: 173, type: !206, isLocal: true, isDefinition: true)
!214 = !DIGlobalVariableExpression(var: !215)
!215 = distinct !DIGlobalVariable(name: "controls", scope: !2, file: !3, line: 177, type: !216, isLocal: true, isDefinition: true)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control", file: !3, line: 51, size: 768, elements: !218)
!218 = !{!219, !223, !226, !227, !228, !229, !230, !231}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !217, file: !3, line: 53, baseType: !220, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !221, line: 135, baseType: !222)
!221 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !61, line: 61, baseType: !92)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "lines_required", scope: !217, file: !3, line: 54, baseType: !224, size: 64, offset: 64)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !221, line: 136, baseType: !225)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !61, line: 62, baseType: !20)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "repeat", scope: !217, file: !3, line: 55, baseType: !224, size: 64, offset: 128)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "argnum", scope: !217, file: !3, line: 56, baseType: !9, size: 32, offset: 192)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "repeat_forever", scope: !217, file: !3, line: 57, baseType: !206, size: 8, offset: 224)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "ignore", scope: !217, file: !3, line: 58, baseType: !206, size: 8, offset: 232)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "regexpr", scope: !217, file: !3, line: 59, baseType: !206, size: 8, offset: 240)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "re_compiled", scope: !217, file: !3, line: 60, baseType: !232, size: 512, offset: 256)
!232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "re_pattern_buffer", file: !233, line: 414, size: 512, elements: !234)
!233 = !DIFile(filename: "./lib/regex.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!234 = !{!235, !238, !240, !241, !243, !244, !246, !247, !248, !249, !250, !251, !252, !253}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !232, file: !233, line: 418, baseType: !236, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = !DICompositeType(tag: DW_TAG_structure_type, name: "re_dfa_t", file: !233, line: 418, flags: DIFlagFwdDecl)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !232, file: !233, line: 421, baseType: !239, size: 64, offset: 64)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "__re_long_size_t", file: !233, line: 57, baseType: !20)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !232, file: !233, line: 424, baseType: !239, size: 64, offset: 128)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "syntax", scope: !232, file: !233, line: 427, baseType: !242, size: 64, offset: 192)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_syntax_t", file: !233, line: 73, baseType: !20)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "fastmap", scope: !232, file: !233, line: 432, baseType: !11, size: 64, offset: 256)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !232, file: !233, line: 438, baseType: !245, size: 64, offset: 320)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "re_nsub", scope: !232, file: !233, line: 441, baseType: !18, size: 64, offset: 384)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "can_be_null", scope: !232, file: !233, line: 447, baseType: !64, size: 1, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "regs_allocated", scope: !232, file: !233, line: 458, baseType: !64, size: 2, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "fastmap_accurate", scope: !232, file: !233, line: 462, baseType: !64, size: 1, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "no_sub", scope: !232, file: !233, line: 466, baseType: !64, size: 1, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "not_bol", scope: !232, file: !233, line: 470, baseType: !64, size: 1, offset: 453, flags: DIFlagBitField, extraData: i64 448)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "not_eol", scope: !232, file: !233, line: 473, baseType: !64, size: 1, offset: 454, flags: DIFlagBitField, extraData: i64 448)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "newline_anchor", scope: !232, file: !233, line: 476, baseType: !64, size: 1, offset: 455, flags: DIFlagBitField, extraData: i64 448)
!254 = !DIGlobalVariableExpression(var: !255)
!255 = distinct !DIGlobalVariable(name: "control_used", scope: !2, file: !3, line: 180, type: !18, isLocal: true, isDefinition: true)
!256 = !DIGlobalVariableExpression(var: !257)
!257 = distinct !DIGlobalVariable(name: "output_stream", scope: !2, file: !3, line: 155, type: !258, isLocal: true, isDefinition: true)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !260, line: 49, baseType: !261)
!260 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !262, line: 241, size: 1728, elements: !263)
!262 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!263 = !{!264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !284, !285, !286, !287, !289, !290, !292, !296, !299, !301, !302, !303, !304, !305, !306, !307}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !261, file: !262, line: 242, baseType: !9, size: 32)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !261, file: !262, line: 247, baseType: !11, size: 64, offset: 64)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !261, file: !262, line: 248, baseType: !11, size: 64, offset: 128)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !261, file: !262, line: 249, baseType: !11, size: 64, offset: 192)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !261, file: !262, line: 250, baseType: !11, size: 64, offset: 256)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !261, file: !262, line: 251, baseType: !11, size: 64, offset: 320)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !261, file: !262, line: 252, baseType: !11, size: 64, offset: 384)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !261, file: !262, line: 253, baseType: !11, size: 64, offset: 448)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !261, file: !262, line: 254, baseType: !11, size: 64, offset: 512)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !261, file: !262, line: 256, baseType: !11, size: 64, offset: 576)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !261, file: !262, line: 257, baseType: !11, size: 64, offset: 640)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !261, file: !262, line: 258, baseType: !11, size: 64, offset: 704)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !261, file: !262, line: 260, baseType: !277, size: 64, offset: 768)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !262, line: 156, size: 192, elements: !279)
!279 = !{!280, !281, !283}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !278, file: !262, line: 157, baseType: !277, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !278, file: !262, line: 158, baseType: !282, size: 64, offset: 64)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !278, file: !262, line: 162, baseType: !9, size: 32, offset: 128)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !261, file: !262, line: 262, baseType: !282, size: 64, offset: 832)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !261, file: !262, line: 264, baseType: !9, size: 32, offset: 896)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !261, file: !262, line: 268, baseType: !9, size: 32, offset: 928)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !261, file: !262, line: 270, baseType: !288, size: 64, offset: 960)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !61, line: 140, baseType: !92)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !261, file: !262, line: 274, baseType: !187, size: 16, offset: 1024)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !261, file: !262, line: 275, baseType: !291, size: 8, offset: 1040)
!291 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !261, file: !262, line: 276, baseType: !293, size: 8, offset: 1048)
!293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 8, elements: !294)
!294 = !{!295}
!295 = !DISubrange(count: 1)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !261, file: !262, line: 280, baseType: !297, size: 64, offset: 1088)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !262, line: 150, baseType: null)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !261, file: !262, line: 289, baseType: !300, size: 64, offset: 1152)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !61, line: 141, baseType: !92)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !261, file: !262, line: 297, baseType: !76, size: 64, offset: 1216)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !261, file: !262, line: 298, baseType: !76, size: 64, offset: 1280)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !261, file: !262, line: 299, baseType: !76, size: 64, offset: 1344)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !261, file: !262, line: 300, baseType: !76, size: 64, offset: 1408)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !261, file: !262, line: 302, baseType: !18, size: 64, offset: 1472)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !261, file: !262, line: 303, baseType: !9, size: 32, offset: 1536)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !261, file: !262, line: 305, baseType: !308, size: 160, offset: 1568)
!308 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 160, elements: !309)
!309 = !{!310}
!310 = !DISubrange(count: 20)
!311 = !DIGlobalVariableExpression(var: !312)
!312 = distinct !DIGlobalVariable(name: "output_filename", scope: !2, file: !3, line: 158, type: !11, isLocal: true, isDefinition: true)
!313 = !DIGlobalVariableExpression(var: !314)
!314 = distinct !DIGlobalVariable(name: "bytes_written", scope: !2, file: !3, line: 152, type: !224, isLocal: true, isDefinition: true)
!315 = !DIGlobalVariableExpression(var: !316)
!316 = distinct !DIGlobalVariable(name: "files_created", scope: !2, file: !3, line: 149, type: !317, isLocal: true, isDefinition: true)
!317 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !64)
!318 = !DIGlobalVariableExpression(var: !319)
!319 = distinct !DIGlobalVariable(name: "prefix", scope: !2, file: !3, line: 140, type: !320, isLocal: true, isDefinition: true)
!320 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !193)
!321 = !DIGlobalVariableExpression(var: !322)
!322 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 192, type: !323, isLocal: true, isDefinition: true)
!323 = !DICompositeType(tag: DW_TAG_array_type, baseType: !324, size: 2816, elements: !200)
!324 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !325)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !326, line: 104, size: 256, elements: !327)
!326 = !DIFile(filename: "/usr/include/getopt.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!327 = !{!328, !329, !330, !332}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !325, file: !326, line: 106, baseType: !193, size: 64)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !325, file: !326, line: 109, baseType: !9, size: 32, offset: 64)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !325, file: !326, line: 110, baseType: !331, size: 64, offset: 128)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !325, file: !326, line: 111, baseType: !9, size: 32, offset: 192)
!333 = !DIGlobalVariableExpression(var: !334)
!334 = distinct !DIGlobalVariable(name: "suffix", scope: !2, file: !3, line: 143, type: !335, isLocal: true, isDefinition: true)
!335 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !11)
!336 = !DIGlobalVariableExpression(var: !337)
!337 = distinct !DIGlobalVariable(name: "digits", scope: !2, file: !3, line: 146, type: !338, isLocal: true, isDefinition: true)
!338 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !9)
!339 = !DIGlobalVariableExpression(var: !340)
!340 = distinct !DIGlobalVariable(name: "filename_space", scope: !2, file: !3, line: 137, type: !335, isLocal: true, isDefinition: true)
!341 = !DIGlobalVariableExpression(var: !342)
!342 = distinct !DIGlobalVariable(name: "last_val", scope: !343, file: !3, line: 1184, type: !224, isLocal: true, isDefinition: true)
!343 = distinct !DISubprogram(name: "parse_patterns", scope: !3, file: !3, line: 1179, type: !344, isLocal: true, isDefinition: true, scopeLine: 1180, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !346)
!344 = !DISubroutineType(types: !345)
!345 = !{null, !9, !9, !10}
!346 = !{!347, !348, !349, !350, !351, !352, !353}
!347 = !DILocalVariable(name: "argc", arg: 1, scope: !343, file: !3, line: 1179, type: !9)
!348 = !DILocalVariable(name: "start", arg: 2, scope: !343, file: !3, line: 1179, type: !9)
!349 = !DILocalVariable(name: "argv", arg: 3, scope: !343, file: !3, line: 1179, type: !10)
!350 = !DILocalVariable(name: "i", scope: !343, file: !3, line: 1181, type: !9)
!351 = !DILocalVariable(name: "p", scope: !343, file: !3, line: 1182, type: !216)
!352 = !DILocalVariable(name: "val", scope: !343, file: !3, line: 1183, type: !224)
!353 = !DILocalVariable(name: "buf", scope: !354, file: !3, line: 1204, type: !361)
!354 = distinct !DILexicalBlock(scope: !355, file: !3, line: 1203, column: 13)
!355 = distinct !DILexicalBlock(scope: !356, file: !3, line: 1202, column: 15)
!356 = distinct !DILexicalBlock(scope: !357, file: !3, line: 1193, column: 9)
!357 = distinct !DILexicalBlock(scope: !358, file: !3, line: 1188, column: 11)
!358 = distinct !DILexicalBlock(scope: !359, file: !3, line: 1187, column: 5)
!359 = distinct !DILexicalBlock(scope: !360, file: !3, line: 1186, column: 3)
!360 = distinct !DILexicalBlock(scope: !343, file: !3, line: 1186, column: 3)
!361 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 168, elements: !362)
!362 = !{!363}
!363 = !DISubrange(count: 21)
!364 = !DIGlobalVariableExpression(var: !365)
!365 = distinct !DIGlobalVariable(name: "control_allocated", scope: !366, file: !3, line: 1070, type: !18, isLocal: true, isDefinition: true)
!366 = distinct !DISubprogram(name: "new_control_record", scope: !3, file: !3, line: 1068, type: !367, isLocal: true, isDefinition: true, scopeLine: 1069, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !369)
!367 = !DISubroutineType(types: !368)
!368 = !{!216}
!369 = !{!370}
!370 = !DILocalVariable(name: "p", scope: !366, file: !3, line: 1071, type: !216)
!371 = !DIGlobalVariableExpression(var: !372)
!372 = distinct !DIGlobalVariable(name: "current_line", scope: !2, file: !3, line: 131, type: !224, isLocal: true, isDefinition: true)
!373 = !DIGlobalVariableExpression(var: !374)
!374 = distinct !DIGlobalVariable(name: "prev_buf", scope: !375, file: !3, line: 560, type: !397, isLocal: true, isDefinition: true)
!375 = distinct !DISubprogram(name: "remove_line", scope: !3, file: !3, line: 555, type: !376, isLocal: true, isDefinition: true, scopeLine: 556, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !383)
!376 = !DISubroutineType(types: !377)
!377 = !{!378}
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cstring", file: !3, line: 80, size: 128, elements: !380)
!380 = !{!381, !382}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !379, file: !3, line: 82, baseType: !18, size: 64)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !379, file: !3, line: 83, baseType: !11, size: 64, offset: 64)
!383 = !{!384, !385}
!384 = !DILocalVariable(name: "line", scope: !375, file: !3, line: 562, type: !378)
!385 = !DILocalVariable(name: "l", scope: !375, file: !3, line: 563, type: !386)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "line", file: !3, line: 88, size: 10496, elements: !388)
!388 = !{!389, !390, !391, !392, !396}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !387, file: !3, line: 90, baseType: !18, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "insert_index", scope: !387, file: !3, line: 91, baseType: !18, size: 64, offset: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "retrieve_index", scope: !387, file: !3, line: 92, baseType: !18, size: 64, offset: 128)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "starts", scope: !387, file: !3, line: 93, baseType: !393, size: 10240, offset: 192)
!393 = !DICompositeType(tag: DW_TAG_array_type, baseType: !379, size: 10240, elements: !394)
!394 = !{!395}
!395 = !DISubrange(count: 80)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !387, file: !3, line: 94, baseType: !386, size: 64, offset: 10432)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "buffer_record", file: !3, line: 100, size: 576, elements: !399)
!399 = !{!400, !401, !402, !403, !404, !405, !406, !407, !408}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_alloc", scope: !398, file: !3, line: 102, baseType: !18, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_used", scope: !398, file: !3, line: 103, baseType: !18, size: 64, offset: 64)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "start_line", scope: !398, file: !3, line: 104, baseType: !224, size: 64, offset: 128)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "first_available", scope: !398, file: !3, line: 105, baseType: !224, size: 64, offset: 192)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "num_lines", scope: !398, file: !3, line: 106, baseType: !18, size: 64, offset: 256)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !398, file: !3, line: 107, baseType: !11, size: 64, offset: 320)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "line_start", scope: !398, file: !3, line: 108, baseType: !386, size: 64, offset: 384)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "curr_line", scope: !398, file: !3, line: 109, baseType: !386, size: 64, offset: 448)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !398, file: !3, line: 110, baseType: !397, size: 64, offset: 512)
!409 = !DIGlobalVariableExpression(var: !410)
!410 = distinct !DIGlobalVariable(name: "head", scope: !2, file: !3, line: 119, type: !397, isLocal: true, isDefinition: true)
!411 = !DIGlobalVariableExpression(var: !412)
!412 = distinct !DIGlobalVariable(name: "have_read_eof", scope: !2, file: !3, line: 134, type: !206, isLocal: true, isDefinition: true)
!413 = !DIGlobalVariableExpression(var: !414)
!414 = distinct !DIGlobalVariable(name: "hold_count", scope: !2, file: !3, line: 125, type: !18, isLocal: true, isDefinition: true)
!415 = !DIGlobalVariableExpression(var: !416)
!416 = distinct !DIGlobalVariable(name: "last_line_number", scope: !2, file: !3, line: 128, type: !224, isLocal: true, isDefinition: true)
!417 = !DIGlobalVariableExpression(var: !418)
!418 = distinct !DIGlobalVariable(name: "hold_area", scope: !2, file: !3, line: 122, type: !11, isLocal: true, isDefinition: true)
!419 = !DIGlobalVariableExpression(var: !420)
!420 = distinct !DIGlobalVariable(name: "infomap", scope: !421, file: !422, line: 632, type: !446, isLocal: true, isDefinition: true)
!421 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !422, file: !422, line: 630, type: !423, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !425)
!422 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!423 = !DISubroutineType(types: !424)
!424 = !{null, !193}
!425 = !{!426, !427, !428, !435, !437, !438, !439, !442, !443, !445}
!426 = !DILocalVariable(name: "program", arg: 1, scope: !421, file: !422, line: 630, type: !193)
!427 = !DILocalVariable(name: "node", scope: !421, file: !422, line: 642, type: !193)
!428 = !DILocalVariable(name: "map_prog", scope: !421, file: !422, line: 643, type: !429)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !431)
!431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !421, file: !422, line: 632, size: 128, elements: !432)
!432 = !{!433, !434}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !431, file: !422, line: 632, baseType: !193, size: 64)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !431, file: !422, line: 632, baseType: !193, size: 64, offset: 64)
!435 = !DILocalVariable(name: "__s1_len", scope: !436, file: !422, line: 645, type: !18)
!436 = distinct !DILexicalBlock(scope: !421, file: !422, line: 645, column: 33)
!437 = !DILocalVariable(name: "__s2_len", scope: !436, file: !422, line: 645, type: !18)
!438 = !DILocalVariable(name: "lc_messages", scope: !421, file: !422, line: 655, type: !193)
!439 = !DILocalVariable(name: "__s1_len", scope: !440, file: !422, line: 656, type: !18)
!440 = distinct !DILexicalBlock(scope: !441, file: !422, line: 656, column: 22)
!441 = distinct !DILexicalBlock(scope: !421, file: !422, line: 656, column: 7)
!442 = !DILocalVariable(name: "__s2_len", scope: !440, file: !422, line: 656, type: !18)
!443 = !DILocalVariable(name: "__s2", scope: !444, file: !422, line: 656, type: !190)
!444 = distinct !DILexicalBlock(scope: !440, file: !422, line: 656, column: 22)
!445 = !DILocalVariable(name: "__result", scope: !444, file: !422, line: 656, type: !9)
!446 = !DICompositeType(tag: DW_TAG_array_type, baseType: !430, size: 896, elements: !447)
!447 = !{!448}
!448 = !DISubrange(count: 7)
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !450, line: 37, baseType: !117)
!450 = !DIFile(filename: "/usr/include/sys/select.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!451 = !DIGlobalVariableExpression(var: !452)
!452 = distinct !DIGlobalVariable(name: "Version", scope: !453, file: !454, line: 2, type: !193, isDefinition: true)
!453 = distinct !DICompileUnit(language: DW_LANG_C99, file: !454, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, emissionKind: FullDebug, enums: !455, globals: !456)
!454 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!455 = !{}
!456 = !{!451}
!457 = !DIGlobalVariableExpression(var: !458)
!458 = distinct !DIGlobalVariable(name: "file_name", scope: !459, file: !464, line: 36, type: !193, isLocal: true, isDefinition: true)
!459 = distinct !DICompileUnit(language: DW_LANG_C99, file: !460, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, emissionKind: FullDebug, enums: !455, globals: !461)
!460 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!461 = !{!457, !462}
!462 = !DIGlobalVariableExpression(var: !463)
!463 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !459, file: !464, line: 46, type: !206, isLocal: true, isDefinition: true)
!464 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!465 = !DIGlobalVariableExpression(var: !466)
!466 = distinct !DIGlobalVariable(name: "exit_failure", scope: !467, file: !470, line: 24, type: !338, isDefinition: true)
!467 = distinct !DICompileUnit(language: DW_LANG_C99, file: !468, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, emissionKind: FullDebug, enums: !455, globals: !469)
!468 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!469 = !{!465}
!470 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!471 = !DIGlobalVariableExpression(var: !472)
!472 = distinct !DIGlobalVariable(name: "program_name", scope: !473, file: !477, line: 33, type: !193, isDefinition: true)
!473 = distinct !DICompileUnit(language: DW_LANG_C99, file: !474, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, emissionKind: FullDebug, enums: !455, retainedTypes: !475, globals: !476)
!474 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!475 = !{!76, !11}
!476 = !{!471}
!477 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!478 = !DIGlobalVariableExpression(var: !479)
!479 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !480, file: !492, line: 77, type: !527, isDefinition: true)
!480 = distinct !DICompileUnit(language: DW_LANG_C99, file: !481, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, emissionKind: FullDebug, enums: !482, retainedTypes: !488, globals: !489)
!481 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!482 = !{!132, !483, !150}
!483 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !133, line: 242, size: 32, elements: !484)
!484 = !{!485, !486, !487}
!485 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!486 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!487 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!488 = !{!9, !187, !18, !11}
!489 = !{!478, !490, !497, !509, !511, !516, !523, !525}
!490 = !DIGlobalVariableExpression(var: !491)
!491 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !480, file: !492, line: 93, type: !493, isDefinition: true)
!492 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!493 = !DICompositeType(tag: DW_TAG_array_type, baseType: !494, size: 320, elements: !495)
!494 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !132)
!495 = !{!496}
!496 = !DISubrange(count: 10)
!497 = !DIGlobalVariableExpression(var: !498)
!498 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !480, file: !492, line: 1043, type: !499, isDefinition: true)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !492, line: 57, size: 448, elements: !500)
!500 = !{!501, !502, !503, !507, !508}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !499, file: !492, line: 60, baseType: !132, size: 32)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !499, file: !492, line: 63, baseType: !9, size: 32, offset: 32)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !499, file: !492, line: 67, baseType: !504, size: 256, offset: 64)
!504 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 256, elements: !505)
!505 = !{!506}
!506 = !DISubrange(count: 8)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !499, file: !492, line: 70, baseType: !193, size: 64, offset: 320)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !499, file: !492, line: 73, baseType: !193, size: 64, offset: 384)
!509 = !DIGlobalVariableExpression(var: !510)
!510 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !480, file: !492, line: 108, type: !499, isLocal: true, isDefinition: true)
!511 = !DIGlobalVariableExpression(var: !512)
!512 = distinct !DIGlobalVariable(name: "slot0", scope: !480, file: !492, line: 834, type: !513, isLocal: true, isDefinition: true)
!513 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 2048, elements: !514)
!514 = !{!515}
!515 = !DISubrange(count: 256)
!516 = !DIGlobalVariableExpression(var: !517)
!517 = distinct !DIGlobalVariable(name: "slotvec", scope: !480, file: !492, line: 837, type: !518, isLocal: true, isDefinition: true)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !492, line: 826, size: 128, elements: !520)
!520 = !{!521, !522}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !519, file: !492, line: 828, baseType: !18, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !519, file: !492, line: 829, baseType: !11, size: 64, offset: 64)
!523 = !DIGlobalVariableExpression(var: !524)
!524 = distinct !DIGlobalVariable(name: "nslots", scope: !480, file: !492, line: 835, type: !9, isLocal: true, isDefinition: true)
!525 = !DIGlobalVariableExpression(var: !526)
!526 = distinct !DIGlobalVariable(name: "slotvec0", scope: !480, file: !492, line: 836, type: !519, isLocal: true, isDefinition: true)
!527 = !DICompositeType(tag: DW_TAG_array_type, baseType: !528, size: 704, elements: !200)
!528 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !193)
!529 = !DIGlobalVariableExpression(var: !530)
!530 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !531, file: !534, line: 26, type: !535, isDefinition: true)
!531 = distinct !DICompileUnit(language: DW_LANG_C99, file: !532, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, emissionKind: FullDebug, enums: !455, globals: !533)
!532 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!533 = !{!529}
!534 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!535 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, size: 376, elements: !536)
!536 = !{!537}
!537 = !DISubrange(count: 47)
!538 = !DIGlobalVariableExpression(var: !539)
!539 = distinct !DIGlobalVariable(name: "have_dupfd_cloexec", scope: !540, file: !541, line: 335, type: !9, isLocal: true, isDefinition: true)
!540 = distinct !DISubprogram(name: "rpl_fcntl", scope: !541, file: !541, line: 272, type: !542, isDefinition: true, scopeLine: 273, flags: DIFlagPrototyped, isOptimized: true, unit: !544, variables: !547)
!541 = !DIFile(filename: "lib/fcntl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!542 = !DISubroutineType(types: !543)
!543 = !{!9, !9, !9, null}
!544 = distinct !DICompileUnit(language: DW_LANG_C99, file: !545, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, emissionKind: FullDebug, enums: !455, globals: !546)
!545 = !DIFile(filename: "./lib/fcntl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!546 = !{!538}
!547 = !{!548, !549, !550, !561, !562, !565, !568, !571}
!548 = !DILocalVariable(name: "fd", arg: 1, scope: !540, file: !541, line: 272, type: !9)
!549 = !DILocalVariable(name: "action", arg: 2, scope: !540, file: !541, line: 272, type: !9)
!550 = !DILocalVariable(name: "arg", scope: !540, file: !541, line: 274, type: !551)
!551 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !552, line: 30, baseType: !553)
!552 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!553 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !545, line: 274, baseType: !554)
!554 = !DICompositeType(tag: DW_TAG_array_type, baseType: !555, size: 192, elements: !294)
!555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !545, line: 274, size: 192, elements: !556)
!556 = !{!557, !558, !559, !560}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !555, file: !545, line: 274, baseType: !64, size: 32)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !555, file: !545, line: 274, baseType: !64, size: 32, offset: 32)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !555, file: !545, line: 274, baseType: !76, size: 64, offset: 64)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !555, file: !545, line: 274, baseType: !76, size: 64, offset: 128)
!561 = !DILocalVariable(name: "result", scope: !540, file: !541, line: 275, type: !9)
!562 = !DILocalVariable(name: "target", scope: !563, file: !541, line: 322, type: !9)
!563 = distinct !DILexicalBlock(scope: !564, file: !541, line: 321, column: 7)
!564 = distinct !DILexicalBlock(scope: !540, file: !541, line: 278, column: 5)
!565 = !DILocalVariable(name: "flags", scope: !566, file: !541, line: 359, type: !9)
!566 = distinct !DILexicalBlock(scope: !567, file: !541, line: 358, column: 11)
!567 = distinct !DILexicalBlock(scope: !563, file: !541, line: 357, column: 13)
!568 = !DILocalVariable(name: "saved_errno", scope: !569, file: !541, line: 362, type: !9)
!569 = distinct !DILexicalBlock(scope: !570, file: !541, line: 361, column: 15)
!570 = distinct !DILexicalBlock(scope: !566, file: !541, line: 360, column: 17)
!571 = !DILocalVariable(name: "p", scope: !572, file: !541, line: 404, type: !76)
!572 = distinct !DILexicalBlock(scope: !564, file: !541, line: 402, column: 7)
!573 = !DIGlobalVariableExpression(var: !574)
!574 = distinct !DIGlobalVariable(name: "charset_aliases", scope: !575, file: !918, line: 120, type: !320, isLocal: true, isDefinition: true)
!575 = distinct !DICompileUnit(language: DW_LANG_C99, file: !576, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, emissionKind: FullDebug, enums: !577, retainedTypes: !916, globals: !917)
!576 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!577 = !{!578}
!578 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !579, line: 41, size: 32, elements: !580)
!579 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!580 = !{!581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915}
!581 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!582 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!583 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!584 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!585 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!586 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!587 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!588 = !DIEnumerator(name: "DAY_1", value: 131079)
!589 = !DIEnumerator(name: "DAY_2", value: 131080)
!590 = !DIEnumerator(name: "DAY_3", value: 131081)
!591 = !DIEnumerator(name: "DAY_4", value: 131082)
!592 = !DIEnumerator(name: "DAY_5", value: 131083)
!593 = !DIEnumerator(name: "DAY_6", value: 131084)
!594 = !DIEnumerator(name: "DAY_7", value: 131085)
!595 = !DIEnumerator(name: "ABMON_1", value: 131086)
!596 = !DIEnumerator(name: "ABMON_2", value: 131087)
!597 = !DIEnumerator(name: "ABMON_3", value: 131088)
!598 = !DIEnumerator(name: "ABMON_4", value: 131089)
!599 = !DIEnumerator(name: "ABMON_5", value: 131090)
!600 = !DIEnumerator(name: "ABMON_6", value: 131091)
!601 = !DIEnumerator(name: "ABMON_7", value: 131092)
!602 = !DIEnumerator(name: "ABMON_8", value: 131093)
!603 = !DIEnumerator(name: "ABMON_9", value: 131094)
!604 = !DIEnumerator(name: "ABMON_10", value: 131095)
!605 = !DIEnumerator(name: "ABMON_11", value: 131096)
!606 = !DIEnumerator(name: "ABMON_12", value: 131097)
!607 = !DIEnumerator(name: "MON_1", value: 131098)
!608 = !DIEnumerator(name: "MON_2", value: 131099)
!609 = !DIEnumerator(name: "MON_3", value: 131100)
!610 = !DIEnumerator(name: "MON_4", value: 131101)
!611 = !DIEnumerator(name: "MON_5", value: 131102)
!612 = !DIEnumerator(name: "MON_6", value: 131103)
!613 = !DIEnumerator(name: "MON_7", value: 131104)
!614 = !DIEnumerator(name: "MON_8", value: 131105)
!615 = !DIEnumerator(name: "MON_9", value: 131106)
!616 = !DIEnumerator(name: "MON_10", value: 131107)
!617 = !DIEnumerator(name: "MON_11", value: 131108)
!618 = !DIEnumerator(name: "MON_12", value: 131109)
!619 = !DIEnumerator(name: "AM_STR", value: 131110)
!620 = !DIEnumerator(name: "PM_STR", value: 131111)
!621 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!622 = !DIEnumerator(name: "D_FMT", value: 131113)
!623 = !DIEnumerator(name: "T_FMT", value: 131114)
!624 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!625 = !DIEnumerator(name: "ERA", value: 131116)
!626 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!627 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!628 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!629 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!630 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!631 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!632 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!633 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!634 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!635 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!636 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!637 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!638 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!639 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!640 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!641 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!642 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!643 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!644 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!645 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!646 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!647 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!648 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!649 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!650 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!651 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!652 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!653 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!654 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!655 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!656 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!657 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!658 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!659 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!660 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!661 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!662 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!663 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!664 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!665 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!666 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!667 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!668 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!669 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!670 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!671 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!672 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!673 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!674 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!675 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!676 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!677 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!678 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!679 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!680 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!681 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!682 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!683 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!684 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!685 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!686 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!687 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!688 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!689 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!690 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!691 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!692 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!693 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!694 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!695 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!696 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!697 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!698 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!699 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!700 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!701 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!702 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!703 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!704 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!705 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!706 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!707 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!708 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!709 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!710 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!711 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!712 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!713 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!714 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!715 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!716 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!717 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!718 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!719 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!720 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!721 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!722 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!723 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!724 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!725 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!726 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!727 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!728 = !DIEnumerator(name: "CODESET", value: 14)
!729 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!730 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!731 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!732 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!733 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!734 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!735 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!736 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!737 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!738 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!739 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!740 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!741 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!742 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!743 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!744 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!745 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!746 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!747 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!748 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!749 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!750 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!751 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!752 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!753 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!754 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!755 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!756 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!757 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!758 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!759 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!760 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!761 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!762 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!763 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!764 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!765 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!766 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!767 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!768 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!769 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!770 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!771 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!772 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!773 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!774 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!775 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!776 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!777 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!778 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!779 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!780 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!781 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!782 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!783 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!784 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!785 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!786 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!787 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!788 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!789 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!790 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!791 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!792 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!793 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!794 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!795 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!796 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!797 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!798 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!799 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!800 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!801 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!802 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!803 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!804 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!805 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!806 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!807 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!808 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!809 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!810 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!811 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!812 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!813 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!814 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!815 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!816 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!817 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!818 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!819 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!820 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!821 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!822 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!823 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!824 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!825 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!826 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!827 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!828 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!829 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!830 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!831 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!832 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!833 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!834 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!835 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!836 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!837 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!838 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!839 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!840 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!841 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!842 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!843 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!844 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!845 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!846 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!847 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!848 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!849 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!850 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!851 = !DIEnumerator(name: "THOUSEP", value: 65537)
!852 = !DIEnumerator(name: "__GROUPING", value: 65538)
!853 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!854 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!855 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!856 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!857 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!858 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!859 = !DIEnumerator(name: "__YESSTR", value: 327682)
!860 = !DIEnumerator(name: "__NOSTR", value: 327683)
!861 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!862 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!863 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!864 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!865 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!866 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!867 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!868 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!869 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!870 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!871 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!872 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!873 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!874 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!875 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!876 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!877 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!878 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!879 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!880 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!881 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!882 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!883 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!884 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!885 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!886 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!887 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!888 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!889 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!890 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!891 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!892 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!893 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!894 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!895 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!896 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!897 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!898 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!899 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!900 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!901 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!902 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!903 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!904 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!905 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!906 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!907 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!908 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!909 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!910 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!911 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!912 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!913 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!914 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!915 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!916 = !{!76, !11, !245}
!917 = !{!573}
!918 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!919 = distinct !DICompileUnit(language: DW_LANG_C99, file: !920, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, emissionKind: FullDebug, enums: !455)
!920 = !DIFile(filename: "./lib/fd-reopen.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!921 = distinct !DICompileUnit(language: DW_LANG_C99, file: !922, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, emissionKind: FullDebug, enums: !455)
!922 = !DIFile(filename: "./lib/fopen-safer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!923 = distinct !DICompileUnit(language: DW_LANG_C99, file: !924, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, emissionKind: FullDebug, enums: !455, retainedTypes: !925)
!924 = !DIFile(filename: "./lib/umaxtostr.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!925 = !{!224}
!926 = distinct !DICompileUnit(language: DW_LANG_C99, file: !927, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, emissionKind: FullDebug, enums: !928)
!927 = !DIFile(filename: "./lib/safe-read.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!928 = !{!929}
!929 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !931, file: !930, line: 62, size: 32, elements: !945)
!930 = !DIFile(filename: "lib/safe-read.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!931 = distinct !DISubprogram(name: "safe_read", scope: !930, file: !930, line: 56, type: !932, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !926, variables: !934)
!932 = !DISubroutineType(types: !933)
!933 = !{!18, !9, !76, !18}
!934 = !{!935, !936, !937, !938}
!935 = !DILocalVariable(name: "fd", arg: 1, scope: !931, file: !930, line: 56, type: !9)
!936 = !DILocalVariable(name: "buf", arg: 2, scope: !931, file: !930, line: 56, type: !76)
!937 = !DILocalVariable(name: "count", arg: 3, scope: !931, file: !930, line: 56, type: !18)
!938 = !DILocalVariable(name: "result", scope: !939, file: !930, line: 66, type: !942)
!939 = distinct !DILexicalBlock(scope: !940, file: !930, line: 65, column: 5)
!940 = distinct !DILexicalBlock(scope: !941, file: !930, line: 64, column: 3)
!941 = distinct !DILexicalBlock(scope: !931, file: !930, line: 64, column: 3)
!942 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !943, line: 109, baseType: !944)
!943 = !DIFile(filename: "/usr/include/sys/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!944 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !61, line: 181, baseType: !92)
!945 = !{!946}
!946 = !DIEnumerator(name: "BUGGY_READ_MAXIMUM", value: 2147475456)
!947 = distinct !DICompileUnit(language: DW_LANG_C99, file: !948, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, emissionKind: FullDebug, enums: !455)
!948 = !DIFile(filename: "./lib/dup-safer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!949 = distinct !DICompileUnit(language: DW_LANG_C99, file: !950, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, emissionKind: FullDebug, enums: !951, retainedTypes: !956)
!950 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!951 = !{!952}
!952 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !953, line: 41, size: 32, elements: !954)
!953 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!954 = !{!955}
!955 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!956 = !{!76}
!957 = distinct !DICompileUnit(language: DW_LANG_C99, file: !958, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, emissionKind: FullDebug, enums: !959, retainedTypes: !967)
!958 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!959 = !{!960}
!960 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !961, file: !174, line: 192, size: 32, elements: !184)
!961 = distinct !DISubprogram(name: "x2nrealloc", scope: !174, file: !174, line: 180, type: !176, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !957, variables: !962)
!962 = !{!963, !964, !965, !966}
!963 = !DILocalVariable(name: "p", arg: 1, scope: !961, file: !174, line: 180, type: !76)
!964 = !DILocalVariable(name: "pn", arg: 2, scope: !961, file: !174, line: 180, type: !178)
!965 = !DILocalVariable(name: "s", arg: 3, scope: !961, file: !174, line: 180, type: !18)
!966 = !DILocalVariable(name: "n", scope: !961, file: !174, line: 182, type: !18)
!967 = !{!18, !11, !76}
!968 = distinct !DICompileUnit(language: DW_LANG_C99, file: !969, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, emissionKind: FullDebug, enums: !970)
!969 = !DIFile(filename: "./lib/xdectoimax.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!970 = !{!165}
!971 = distinct !DICompileUnit(language: DW_LANG_C99, file: !972, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, emissionKind: FullDebug, enums: !970, retainedTypes: !973)
!972 = !DIFile(filename: "./lib/xstrtoimax.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!973 = !{!11}
!974 = distinct !DICompileUnit(language: DW_LANG_C99, file: !975, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, emissionKind: FullDebug, enums: !976, retainedTypes: !977)
!975 = !DIFile(filename: "./lib/xstrtoumax.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!976 = !{!165, !150}
!977 = !{!9, !187, !11}
!978 = distinct !DICompileUnit(language: DW_LANG_C99, file: !979, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, emissionKind: FullDebug, enums: !455, retainedTypes: !956)
!979 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!980 = distinct !DICompileUnit(language: DW_LANG_C99, file: !981, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, emissionKind: FullDebug, enums: !455)
!981 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!982 = distinct !DICompileUnit(language: DW_LANG_C99, file: !983, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, emissionKind: FullDebug, enums: !455, retainedTypes: !956)
!983 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!984 = distinct !DICompileUnit(language: DW_LANG_C99, file: !985, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, emissionKind: FullDebug, enums: !455, retainedTypes: !956)
!985 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!986 = distinct !DICompileUnit(language: DW_LANG_C99, file: !987, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, emissionKind: FullDebug, enums: !455, retainedTypes: !988)
!987 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!988 = !{!18}
!989 = distinct !DICompileUnit(language: DW_LANG_C99, file: !990, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, emissionKind: FullDebug, enums: !455)
!990 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!991 = distinct !DICompileUnit(language: DW_LANG_C99, file: !992, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, emissionKind: FullDebug, enums: !455, retainedTypes: !993)
!992 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!993 = !{!18, !188, !190, !193}
!994 = !{!"clang version 4.0.1 (tags/RELEASE_401/final)"}
!995 = !{i32 2, !"Dwarf Version", i32 4}
!996 = !{i32 2, !"Debug Info Version", i32 3}
!997 = !{i32 1, !"PIC Level", i32 2}
!998 = !{i32 1, !"PIE Level", i32 2}
!999 = distinct !DISubprogram(name: "xalloc_die", scope: !3, file: !3, line: 231, type: !128, isDefinition: true, scopeLine: 232, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !455)
!1000 = !DILocation(line: 233, column: 22, scope: !999)
!1001 = !DILocation(line: 233, column: 3, scope: !1002)
!1002 = !DILexicalBlockFile(scope: !999, file: !3, discriminator: 1)
!1003 = !DILocation(line: 234, column: 3, scope: !999)
!1004 = distinct !DISubprogram(name: "cleanup_fatal", scope: !3, file: !3, line: 224, type: !128, isLocal: true, isDefinition: true, scopeLine: 225, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !455)
!1005 = !DILocation(line: 213, column: 3, scope: !1006, inlinedAt: !1009)
!1006 = distinct !DISubprogram(name: "cleanup", scope: !3, file: !3, line: 211, type: !128, isLocal: true, isDefinition: true, scopeLine: 212, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1007)
!1007 = !{!1008}
!1008 = !DILocalVariable(name: "oldset", scope: !1006, file: !3, line: 213, type: !449)
!1009 = distinct !DILocation(line: 226, column: 3, scope: !1004)
!1010 = !DILocation(line: 215, column: 3, scope: !1006, inlinedAt: !1009)
!1011 = !DIExpression(DW_OP_deref)
!1012 = !DILocation(line: 213, column: 12, scope: !1006, inlinedAt: !1009)
!1013 = !DILocation(line: 217, column: 3, scope: !1006, inlinedAt: !1009)
!1014 = !DILocation(line: 218, column: 3, scope: !1006, inlinedAt: !1009)
!1015 = !DILocation(line: 219, column: 3, scope: !1006, inlinedAt: !1009)
!1016 = !DILocation(line: 220, column: 1, scope: !1006, inlinedAt: !1009)
!1017 = !DILocation(line: 227, column: 3, scope: !1004)
!1018 = distinct !DISubprogram(name: "close_output_file", scope: !3, file: !3, line: 1005, type: !128, isLocal: true, isDefinition: true, scopeLine: 1006, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1019)
!1019 = !{!1020, !1025, !1026, !1027}
!1020 = !DILocalVariable(name: "oldset", scope: !1021, file: !3, line: 1023, type: !449)
!1021 = distinct !DILexicalBlock(scope: !1022, file: !3, line: 1022, column: 9)
!1022 = distinct !DILexicalBlock(scope: !1023, file: !3, line: 1021, column: 11)
!1023 = distinct !DILexicalBlock(scope: !1024, file: !3, line: 1008, column: 5)
!1024 = distinct !DILexicalBlock(scope: !1018, file: !3, line: 1007, column: 7)
!1025 = !DILocalVariable(name: "unlink_ok", scope: !1021, file: !3, line: 1024, type: !206)
!1026 = !DILocalVariable(name: "unlink_errno", scope: !1021, file: !3, line: 1025, type: !9)
!1027 = !DILocalVariable(name: "buf", scope: !1028, file: !3, line: 1041, type: !361)
!1028 = distinct !DILexicalBlock(scope: !1029, file: !3, line: 1040, column: 13)
!1029 = distinct !DILexicalBlock(scope: !1030, file: !3, line: 1039, column: 15)
!1030 = distinct !DILexicalBlock(scope: !1022, file: !3, line: 1038, column: 9)
!1031 = !DILocation(line: 1007, column: 7, scope: !1024)
!1032 = !{!1033, !1033, i64 0}
!1033 = !{!"any pointer", !1034, i64 0}
!1034 = !{!"omnipotent char", !1035, i64 0}
!1035 = !{!"Simple C/C++ TBAA"}
!1036 = !DILocation(line: 1007, column: 7, scope: !1018)
!1037 = !DILocalVariable(name: "__stream", arg: 1, scope: !1038, file: !1039, line: 132, type: !258)
!1038 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1039, file: !1039, line: 132, type: !1040, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1042)
!1039 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1040 = !DISubroutineType(types: !1041)
!1041 = !{!9, !258}
!1042 = !{!1037}
!1043 = !DIExpression()
!1044 = !DILocation(line: 132, column: 1, scope: !1038, inlinedAt: !1045)
!1045 = distinct !DILocation(line: 1009, column: 11, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !1023, file: !3, line: 1009, column: 11)
!1047 = !DILocation(line: 134, column: 10, scope: !1038, inlinedAt: !1045)
!1048 = !{!1049, !1050, i64 0}
!1049 = !{!"_IO_FILE", !1050, i64 0, !1033, i64 8, !1033, i64 16, !1033, i64 24, !1033, i64 32, !1033, i64 40, !1033, i64 48, !1033, i64 56, !1033, i64 64, !1033, i64 72, !1033, i64 80, !1033, i64 88, !1033, i64 96, !1033, i64 104, !1050, i64 112, !1050, i64 116, !1051, i64 120, !1052, i64 128, !1034, i64 130, !1034, i64 131, !1033, i64 136, !1051, i64 144, !1033, i64 152, !1033, i64 160, !1033, i64 168, !1033, i64 176, !1051, i64 184, !1050, i64 192, !1034, i64 196}
!1050 = !{!"int", !1034, i64 0}
!1051 = !{!"long", !1034, i64 0}
!1052 = !{!"short", !1034, i64 0}
!1053 = !DILocation(line: 1009, column: 11, scope: !1046)
!1054 = !DILocation(line: 1009, column: 11, scope: !1023)
!1055 = !DILocation(line: 1011, column: 24, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !1046, file: !3, line: 1010, column: 9)
!1057 = !DILocation(line: 1011, column: 49, scope: !1056)
!1058 = !DILocation(line: 1011, column: 49, scope: !1059)
!1059 = !DILexicalBlockFile(scope: !1056, file: !3, discriminator: 1)
!1060 = !DILocation(line: 1011, column: 11, scope: !1061)
!1061 = !DILexicalBlockFile(scope: !1056, file: !3, discriminator: 2)
!1062 = !DILocation(line: 1012, column: 25, scope: !1056)
!1063 = !DILocation(line: 1013, column: 11, scope: !1056)
!1064 = !DILocation(line: 1015, column: 11, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !1023, file: !3, line: 1015, column: 11)
!1066 = !DILocation(line: 1015, column: 34, scope: !1065)
!1067 = !DILocation(line: 1015, column: 11, scope: !1023)
!1068 = !DILocation(line: 1017, column: 21, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !1065, file: !3, line: 1016, column: 9)
!1070 = !{!1050, !1050, i64 0}
!1071 = !DILocation(line: 1017, column: 34, scope: !1069)
!1072 = !DILocation(line: 1017, column: 34, scope: !1073)
!1073 = !DILexicalBlockFile(scope: !1069, file: !3, discriminator: 1)
!1074 = !DILocation(line: 1017, column: 11, scope: !1075)
!1075 = !DILexicalBlockFile(scope: !1069, file: !3, discriminator: 2)
!1076 = !DILocation(line: 1018, column: 25, scope: !1069)
!1077 = !DILocation(line: 1019, column: 11, scope: !1069)
!1078 = !DILocation(line: 1021, column: 11, scope: !1022)
!1079 = !{!1051, !1051, i64 0}
!1080 = !DILocation(line: 1021, column: 25, scope: !1022)
!1081 = !DILocation(line: 1021, column: 30, scope: !1022)
!1082 = !DILocation(line: 1021, column: 11, scope: !1083)
!1083 = !DILexicalBlockFile(scope: !1023, file: !3, discriminator: 1)
!1084 = !DILocation(line: 1023, column: 11, scope: !1021)
!1085 = !DILocation(line: 1023, column: 20, scope: !1021)
!1086 = !DILocation(line: 1028, column: 11, scope: !1021)
!1087 = !DILocation(line: 1029, column: 32, scope: !1021)
!1088 = !DILocation(line: 1029, column: 24, scope: !1021)
!1089 = !DILocation(line: 1029, column: 49, scope: !1021)
!1090 = !DILocation(line: 1030, column: 26, scope: !1021)
!1091 = !DILocation(line: 1025, column: 15, scope: !1021)
!1092 = !DILocation(line: 1031, column: 28, scope: !1021)
!1093 = !DILocation(line: 1031, column: 25, scope: !1021)
!1094 = !DILocation(line: 1032, column: 11, scope: !1021)
!1095 = !DILocation(line: 1034, column: 15, scope: !1021)
!1096 = !DILocation(line: 1035, column: 43, scope: !1097)
!1097 = distinct !DILexicalBlock(scope: !1021, file: !3, line: 1034, column: 15)
!1098 = !DILocation(line: 1035, column: 13, scope: !1099)
!1099 = !DILexicalBlockFile(scope: !1097, file: !3, discriminator: 1)
!1100 = !DILocation(line: 1035, column: 13, scope: !1097)
!1101 = !DILocation(line: 1036, column: 9, scope: !1022)
!1102 = !DILocation(line: 1036, column: 9, scope: !1021)
!1103 = !DILocation(line: 1039, column: 15, scope: !1030)
!1104 = !DILocation(line: 1041, column: 15, scope: !1028)
!1105 = !DILocation(line: 1041, column: 20, scope: !1028)
!1106 = !DILocation(line: 1042, column: 15, scope: !1028)
!1107 = !DILocation(line: 1042, column: 15, scope: !1108)
!1108 = !DILexicalBlockFile(scope: !1028, file: !3, discriminator: 1)
!1109 = !DILocation(line: 1043, column: 13, scope: !1029)
!1110 = !DILocation(line: 1043, column: 13, scope: !1028)
!1111 = !DILocation(line: 1045, column: 21, scope: !1023)
!1112 = !DILocation(line: 1046, column: 5, scope: !1023)
!1113 = !DILocation(line: 1047, column: 1, scope: !1018)
!1114 = distinct !DISubprogram(name: "delete_all_files", scope: !3, file: !3, line: 984, type: !1115, isLocal: true, isDefinition: true, scopeLine: 985, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1117)
!1115 = !DISubroutineType(types: !1116)
!1116 = !{null, !206}
!1117 = !{!1118, !1119, !1120}
!1118 = !DILocalVariable(name: "in_signal_handler", arg: 1, scope: !1114, file: !3, line: 984, type: !206)
!1119 = !DILocalVariable(name: "i", scope: !1114, file: !3, line: 986, type: !64)
!1120 = !DILocalVariable(name: "name", scope: !1121, file: !3, line: 993, type: !193)
!1121 = distinct !DILexicalBlock(scope: !1122, file: !3, line: 992, column: 5)
!1122 = distinct !DILexicalBlock(scope: !1123, file: !3, line: 991, column: 3)
!1123 = distinct !DILexicalBlock(scope: !1114, file: !3, line: 991, column: 3)
!1124 = !DIExpression(DW_OP_LLVM_fragment, 0, 1)
!1125 = !DILocation(line: 984, column: 24, scope: !1114)
!1126 = !DILocation(line: 988, column: 9, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !1114, file: !3, line: 988, column: 7)
!1128 = !{!1129, !1129, i64 0}
!1129 = !{!"_Bool", !1034, i64 0}
!1130 = !{i8 0, i8 2}
!1131 = !DILocation(line: 988, column: 7, scope: !1114)
!1132 = !DILocation(line: 986, column: 16, scope: !1114)
!1133 = !DILocation(line: 991, column: 19, scope: !1134)
!1134 = !DILexicalBlockFile(scope: !1122, file: !3, discriminator: 1)
!1135 = !DILocation(line: 991, column: 17, scope: !1134)
!1136 = !DILocation(line: 991, column: 3, scope: !1137)
!1137 = !DILexicalBlockFile(scope: !1123, file: !3, discriminator: 1)
!1138 = !DILocation(line: 993, column: 26, scope: !1121)
!1139 = !DILocation(line: 993, column: 19, scope: !1121)
!1140 = !DILocation(line: 994, column: 11, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !1121, file: !3, line: 994, column: 11)
!1142 = !DILocation(line: 994, column: 25, scope: !1141)
!1143 = !DILocation(line: 994, column: 30, scope: !1141)
!1144 = !DILocation(line: 995, column: 19, scope: !1141)
!1145 = !DILocation(line: 995, column: 32, scope: !1146)
!1146 = !DILexicalBlockFile(scope: !1141, file: !3, discriminator: 1)
!1147 = !DILocation(line: 995, column: 9, scope: !1148)
!1148 = !DILexicalBlockFile(scope: !1141, file: !3, discriminator: 2)
!1149 = !DILocation(line: 995, column: 9, scope: !1141)
!1150 = !DILocation(line: 991, column: 35, scope: !1151)
!1151 = !DILexicalBlockFile(scope: !1122, file: !3, discriminator: 2)
!1152 = distinct !{!1152, !1153, !1154}
!1153 = !DILocation(line: 991, column: 3, scope: !1123)
!1154 = !DILocation(line: 996, column: 5, scope: !1123)
!1155 = !DILocation(line: 998, column: 17, scope: !1114)
!1156 = !DILocation(line: 999, column: 1, scope: !1114)
!1157 = !DILocation(line: 999, column: 1, scope: !1158)
!1158 = !DILexicalBlockFile(scope: !1114, file: !3, discriminator: 2)
!1159 = distinct !DISubprogram(name: "make_filename", scope: !3, file: !3, line: 935, type: !1160, isLocal: true, isDefinition: true, scopeLine: 936, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1162)
!1160 = !DISubroutineType(types: !1161)
!1161 = !{!11, !64}
!1162 = !{!1163}
!1163 = !DILocalVariable(name: "num", arg: 1, scope: !1159, file: !3, line: 935, type: !64)
!1164 = !DILocation(line: 935, column: 29, scope: !1159)
!1165 = !DILocation(line: 937, column: 11, scope: !1159)
!1166 = !DILocation(line: 937, column: 27, scope: !1159)
!1167 = !DILocalVariable(name: "__dest", arg: 1, scope: !1168, file: !1169, line: 107, type: !1172)
!1168 = distinct !DISubprogram(name: "strcpy", scope: !1169, file: !1169, line: 107, type: !1170, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1174)
!1169 = !DIFile(filename: "/usr/include/bits/string3.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1170 = !DISubroutineType(types: !1171)
!1171 = !{!11, !1172, !1173}
!1172 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !11)
!1173 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !193)
!1174 = !{!1167, !1175}
!1175 = !DILocalVariable(name: "__src", arg: 2, scope: !1168, file: !1169, line: 107, type: !1173)
!1176 = !DILocation(line: 107, column: 1, scope: !1168, inlinedAt: !1177)
!1177 = distinct !DILocation(line: 937, column: 3, scope: !1159)
!1178 = !DILocation(line: 109, column: 49, scope: !1168, inlinedAt: !1177)
!1179 = !DILocation(line: 109, column: 10, scope: !1168, inlinedAt: !1177)
!1180 = !DILocation(line: 938, column: 7, scope: !1181)
!1181 = distinct !DILexicalBlock(scope: !1159, file: !3, line: 938, column: 7)
!1182 = !DILocation(line: 939, column: 5, scope: !1181)
!1183 = !DILocation(line: 938, column: 7, scope: !1159)
!1184 = !DILocation(line: 939, column: 5, scope: !1185)
!1185 = !DILexicalBlockFile(scope: !1181, file: !3, discriminator: 1)
!1186 = !DILocation(line: 941, column: 5, scope: !1181)
!1187 = !DILocation(line: 941, column: 5, scope: !1185)
!1188 = !DILocation(line: 942, column: 10, scope: !1159)
!1189 = !DILocation(line: 942, column: 3, scope: !1159)
!1190 = !DILocation(line: 1204, column: 20, scope: !354, inlinedAt: !1191)
!1191 = distinct !DILocation(line: 1424, column: 3, scope: !6)
!1192 = !DILocation(line: 1343, column: 11, scope: !6)
!1193 = !DILocation(line: 1343, column: 24, scope: !6)
!1194 = !DILocation(line: 1348, column: 21, scope: !6)
!1195 = !DILocation(line: 1348, column: 3, scope: !6)
!1196 = !DILocation(line: 1349, column: 3, scope: !6)
!1197 = !DILocation(line: 1350, column: 3, scope: !6)
!1198 = !DILocation(line: 1351, column: 3, scope: !6)
!1199 = !DILocation(line: 1353, column: 3, scope: !6)
!1200 = !DILocation(line: 1355, column: 15, scope: !6)
!1201 = !DILocation(line: 1356, column: 12, scope: !6)
!1202 = !DILocation(line: 1357, column: 16, scope: !6)
!1203 = !DILocation(line: 1359, column: 16, scope: !6)
!1204 = !DILocation(line: 1361, column: 10, scope: !6)
!1205 = !DILocation(line: 1363, column: 3, scope: !6)
!1206 = !DILocation(line: 1363, column: 18, scope: !1207)
!1207 = !DILexicalBlockFile(scope: !6, file: !3, discriminator: 1)
!1208 = !DILocation(line: 1345, column: 7, scope: !6)
!1209 = !DILocation(line: 1363, column: 3, scope: !1207)
!1210 = !DILocation(line: 1367, column: 18, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !6, file: !3, line: 1365, column: 7)
!1212 = !DILocation(line: 1367, column: 16, scope: !1211)
!1213 = !DILocation(line: 1368, column: 9, scope: !1211)
!1214 = !DILocation(line: 1371, column: 18, scope: !1211)
!1215 = !DILocation(line: 1371, column: 16, scope: !1211)
!1216 = !DILocation(line: 1372, column: 9, scope: !1211)
!1217 = !DILocation(line: 1375, column: 22, scope: !1211)
!1218 = !DILocation(line: 1376, column: 9, scope: !1211)
!1219 = !DILocation(line: 1379, column: 30, scope: !1211)
!1220 = !DILocation(line: 1380, column: 30, scope: !1211)
!1221 = !DILocation(line: 1379, column: 18, scope: !1211)
!1222 = !DILocation(line: 1379, column: 16, scope: !1211)
!1223 = !DILocation(line: 1381, column: 9, scope: !1211)
!1224 = !DILocation(line: 1386, column: 9, scope: !1211)
!1225 = !DILocation(line: 1390, column: 9, scope: !1211)
!1226 = !DILocation(line: 1394, column: 9, scope: !1211)
!1227 = distinct !{!1227, !1205, !1228}
!1228 = !DILocation(line: 1402, column: 7, scope: !6)
!1229 = !DILocation(line: 1396, column: 7, scope: !1211)
!1230 = !DILocation(line: 1398, column: 7, scope: !1211)
!1231 = !DILocation(line: 1398, column: 7, scope: !1232)
!1232 = !DILexicalBlockFile(scope: !1211, file: !3, discriminator: 1)
!1233 = !DILocation(line: 1401, column: 9, scope: !1211)
!1234 = !DILocation(line: 1404, column: 14, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !6, file: !3, line: 1404, column: 7)
!1236 = !DILocation(line: 1404, column: 12, scope: !1235)
!1237 = !DILocation(line: 1404, column: 21, scope: !1235)
!1238 = !DILocation(line: 1404, column: 7, scope: !6)
!1239 = !DILocation(line: 1406, column: 16, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !1241, file: !3, line: 1406, column: 11)
!1241 = distinct !DILexicalBlock(scope: !1235, file: !3, line: 1405, column: 5)
!1242 = !DILocation(line: 1406, column: 11, scope: !1241)
!1243 = !DILocation(line: 1407, column: 22, scope: !1240)
!1244 = !DILocation(line: 1407, column: 9, scope: !1245)
!1245 = !DILexicalBlockFile(scope: !1240, file: !3, discriminator: 1)
!1246 = !DILocation(line: 1407, column: 9, scope: !1240)
!1247 = !DILocation(line: 1409, column: 22, scope: !1240)
!1248 = !DILocation(line: 1409, column: 70, scope: !1240)
!1249 = !DILocation(line: 1409, column: 60, scope: !1240)
!1250 = !DILocation(line: 1409, column: 53, scope: !1245)
!1251 = !DILocation(line: 1409, column: 9, scope: !1252)
!1252 = !DILexicalBlockFile(scope: !1240, file: !3, discriminator: 2)
!1253 = !DILocation(line: 1410, column: 7, scope: !1241)
!1254 = !DILocation(line: 1413, column: 31, scope: !6)
!1255 = !DILocation(line: 1413, column: 23, scope: !6)
!1256 = !DILocation(line: 1413, column: 10, scope: !6)
!1257 = !DILocation(line: 1415, column: 8, scope: !6)
!1258 = !DILocation(line: 1416, column: 19, scope: !6)
!1259 = !DILocalVariable(name: "format", arg: 1, scope: !1260, file: !3, line: 1311, type: !11)
!1260 = distinct !DISubprogram(name: "max_out", scope: !3, file: !3, line: 1311, type: !1261, isLocal: true, isDefinition: true, scopeLine: 1312, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1263)
!1261 = !DISubroutineType(types: !1262)
!1262 = !{!18, !11}
!1263 = !{!1259, !1264, !1265, !1267, !1271}
!1264 = !DILocalVariable(name: "percent", scope: !1260, file: !3, line: 1313, type: !206)
!1265 = !DILocalVariable(name: "f", scope: !1266, file: !3, line: 1315, type: !11)
!1266 = distinct !DILexicalBlock(scope: !1260, file: !3, line: 1315, column: 3)
!1267 = !DILocalVariable(name: "flags", scope: !1268, file: !3, line: 1322, type: !9)
!1268 = distinct !DILexicalBlock(scope: !1269, file: !3, line: 1317, column: 7)
!1269 = distinct !DILexicalBlock(scope: !1270, file: !3, line: 1316, column: 9)
!1270 = distinct !DILexicalBlock(scope: !1266, file: !3, line: 1315, column: 3)
!1271 = !DILocalVariable(name: "maxlen", scope: !1260, file: !3, line: 1336, type: !9)
!1272 = !DILocation(line: 1311, column: 16, scope: !1260, inlinedAt: !1273)
!1273 = distinct !DILocation(line: 1416, column: 10, scope: !6)
!1274 = !DILocation(line: 1313, column: 8, scope: !1260, inlinedAt: !1273)
!1275 = !DILocation(line: 1315, column: 14, scope: !1266, inlinedAt: !1273)
!1276 = !DILocation(line: 1315, column: 8, scope: !1266, inlinedAt: !1273)
!1277 = !DILocation(line: 1315, column: 26, scope: !1278, inlinedAt: !1273)
!1278 = !DILexicalBlockFile(scope: !1270, file: !3, discriminator: 1)
!1279 = !{!1034, !1034, i64 0}
!1280 = !DILocation(line: 1315, column: 3, scope: !1281, inlinedAt: !1273)
!1281 = !DILexicalBlockFile(scope: !1266, file: !3, discriminator: 1)
!1282 = !DILocation(line: 1332, column: 9, scope: !1283, inlinedAt: !1273)
!1283 = distinct !DILexicalBlock(scope: !1260, file: !3, line: 1332, column: 7)
!1284 = !DILocation(line: 1332, column: 7, scope: !1260, inlinedAt: !1273)
!1285 = !DILocation(line: 1316, column: 23, scope: !1286, inlinedAt: !1273)
!1286 = !DILexicalBlockFile(scope: !1269, file: !3, discriminator: 1)
!1287 = !DILocation(line: 1316, column: 22, scope: !1286, inlinedAt: !1273)
!1288 = !DILocation(line: 1316, column: 27, scope: !1286, inlinedAt: !1273)
!1289 = !DILocation(line: 1316, column: 9, scope: !1278, inlinedAt: !1273)
!1290 = !DILocation(line: 1318, column: 13, scope: !1291, inlinedAt: !1273)
!1291 = distinct !DILexicalBlock(scope: !1268, file: !3, line: 1318, column: 13)
!1292 = !DILocation(line: 1318, column: 13, scope: !1268, inlinedAt: !1273)
!1293 = !DILocation(line: 1241, column: 15, scope: !1294, inlinedAt: !1303)
!1294 = distinct !DILexicalBlock(scope: !1295, file: !3, line: 1241, column: 3)
!1295 = distinct !DISubprogram(name: "get_format_flags", scope: !3, file: !3, line: 1237, type: !1296, isLocal: true, isDefinition: true, scopeLine: 1238, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1298)
!1296 = !DISubroutineType(types: !1297)
!1297 = !{!18, !193, !331}
!1298 = !{!1299, !1300, !1301, !1302}
!1299 = !DILocalVariable(name: "format", arg: 1, scope: !1295, file: !3, line: 1237, type: !193)
!1300 = !DILocalVariable(name: "flags_ptr", arg: 2, scope: !1295, file: !3, line: 1237, type: !331)
!1301 = !DILocalVariable(name: "flags", scope: !1295, file: !3, line: 1239, type: !9)
!1302 = !DILocalVariable(name: "count", scope: !1294, file: !3, line: 1241, type: !18)
!1303 = distinct !DILocation(line: 1323, column: 14, scope: !1268, inlinedAt: !1273)
!1304 = !DILocation(line: 1319, column: 11, scope: !1291, inlinedAt: !1273)
!1305 = !DILocation(line: 1319, column: 11, scope: !1306, inlinedAt: !1273)
!1306 = !DILexicalBlockFile(scope: !1291, file: !3, discriminator: 1)
!1307 = !DILocation(line: 1243, column: 15, scope: !1308, inlinedAt: !1303)
!1308 = distinct !DILexicalBlock(scope: !1309, file: !3, line: 1242, column: 5)
!1309 = distinct !DILexicalBlock(scope: !1294, file: !3, line: 1241, column: 3)
!1310 = !DILocation(line: 1239, column: 7, scope: !1295, inlinedAt: !1303)
!1311 = !DILocation(line: 1243, column: 7, scope: !1308, inlinedAt: !1303)
!1312 = !DILocation(line: 1324, column: 16, scope: !1313, inlinedAt: !1273)
!1313 = !DILexicalBlockFile(scope: !1268, file: !3, discriminator: 1)
!1314 = !DILocation(line: 1324, column: 9, scope: !1313, inlinedAt: !1273)
!1315 = distinct !{!1315, !1316, !1317}
!1316 = !DILocation(line: 1324, column: 9, scope: !1268)
!1317 = !DILocation(line: 1325, column: 12, scope: !1268)
!1318 = !DILocation(line: 1325, column: 12, scope: !1268, inlinedAt: !1273)
!1319 = !DILocation(line: 1250, column: 17, scope: !1320, inlinedAt: !1303)
!1320 = distinct !DILexicalBlock(scope: !1308, file: !3, line: 1244, column: 9)
!1321 = !DILocation(line: 1251, column: 11, scope: !1320, inlinedAt: !1303)
!1322 = !DILocation(line: 1254, column: 17, scope: !1320, inlinedAt: !1303)
!1323 = !DILocation(line: 1255, column: 11, scope: !1320, inlinedAt: !1303)
!1324 = !DILocation(line: 1241, column: 33, scope: !1325, inlinedAt: !1303)
!1325 = !DILexicalBlockFile(scope: !1309, file: !3, discriminator: 2)
!1326 = !DILocation(line: 1241, column: 3, scope: !1325, inlinedAt: !1303)
!1327 = distinct !{!1327, !1328, !1329}
!1328 = !DILocation(line: 1241, column: 3, scope: !1294)
!1329 = !DILocation(line: 1261, column: 5, scope: !1294)
!1330 = !DILocation(line: 1326, column: 16, scope: !1331, inlinedAt: !1273)
!1331 = distinct !DILexicalBlock(scope: !1268, file: !3, line: 1326, column: 13)
!1332 = !DILocation(line: 1326, column: 13, scope: !1268, inlinedAt: !1273)
!1333 = !DILocation(line: 1327, column: 18, scope: !1334, inlinedAt: !1273)
!1334 = !DILexicalBlockFile(scope: !1331, file: !3, discriminator: 1)
!1335 = !DILocation(line: 1327, column: 11, scope: !1334, inlinedAt: !1273)
!1336 = distinct !{!1336, !1337, !1338}
!1337 = !DILocation(line: 1327, column: 11, scope: !1331)
!1338 = !DILocation(line: 1328, column: 13, scope: !1331)
!1339 = !DILocation(line: 1270, column: 22, scope: !1340, inlinedAt: !1348)
!1340 = distinct !DISubprogram(name: "check_format_conv_type", scope: !3, file: !3, line: 1268, type: !1341, isLocal: true, isDefinition: true, scopeLine: 1269, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1343)
!1341 = !DISubroutineType(types: !1342)
!1342 = !{null, !11, !9}
!1343 = !{!1344, !1345, !1346, !1347}
!1344 = !DILocalVariable(name: "format", arg: 1, scope: !1340, file: !3, line: 1268, type: !11)
!1345 = !DILocalVariable(name: "flags", arg: 2, scope: !1340, file: !3, line: 1268, type: !9)
!1346 = !DILocalVariable(name: "ch", scope: !1340, file: !3, line: 1270, type: !192)
!1347 = !DILocalVariable(name: "compatible_flags", scope: !1340, file: !3, line: 1271, type: !9)
!1348 = distinct !DILocation(line: 1329, column: 9, scope: !1268, inlinedAt: !1273)
!1349 = !DILocation(line: 1322, column: 13, scope: !1268, inlinedAt: !1273)
!1350 = !DILocation(line: 1268, column: 31, scope: !1340, inlinedAt: !1348)
!1351 = !DILocation(line: 1268, column: 43, scope: !1340, inlinedAt: !1348)
!1352 = !DILocation(line: 1270, column: 17, scope: !1340, inlinedAt: !1348)
!1353 = !DILocation(line: 1271, column: 7, scope: !1340, inlinedAt: !1348)
!1354 = !DILocation(line: 1273, column: 3, scope: !1340, inlinedAt: !1348)
!1355 = !DILocation(line: 1277, column: 15, scope: !1356, inlinedAt: !1348)
!1356 = distinct !DILexicalBlock(scope: !1340, file: !3, line: 1274, column: 5)
!1357 = !DILocation(line: 1278, column: 7, scope: !1356, inlinedAt: !1348)
!1358 = !DILocation(line: 1287, column: 7, scope: !1356, inlinedAt: !1348)
!1359 = !DILocation(line: 1290, column: 7, scope: !1356, inlinedAt: !1348)
!1360 = !DILocation(line: 1290, column: 7, scope: !1361, inlinedAt: !1348)
!1361 = !DILexicalBlockFile(scope: !1356, file: !3, discriminator: 1)
!1362 = !DILocation(line: 1273, column: 11, scope: !1340, inlinedAt: !1348)
!1363 = !DILocation(line: 1293, column: 11, scope: !1364, inlinedAt: !1348)
!1364 = distinct !DILexicalBlock(scope: !1356, file: !3, line: 1293, column: 11)
!1365 = !{!1052, !1052, i64 0}
!1366 = !DILocation(line: 1293, column: 11, scope: !1356, inlinedAt: !1348)
!1367 = !DILocation(line: 1294, column: 9, scope: !1364, inlinedAt: !1348)
!1368 = !DILocation(line: 1294, column: 9, scope: !1369, inlinedAt: !1348)
!1369 = !DILexicalBlockFile(scope: !1364, file: !3, discriminator: 1)
!1370 = !DILocation(line: 1297, column: 9, scope: !1364, inlinedAt: !1348)
!1371 = !DILocation(line: 1297, column: 9, scope: !1369, inlinedAt: !1348)
!1372 = !DILocation(line: 1301, column: 13, scope: !1373, inlinedAt: !1348)
!1373 = distinct !DILexicalBlock(scope: !1340, file: !3, line: 1301, column: 7)
!1374 = !DILocation(line: 1301, column: 7, scope: !1340, inlinedAt: !1348)
!1375 = !DILocation(line: 1302, column: 5, scope: !1373, inlinedAt: !1348)
!1376 = !DILocation(line: 1302, column: 5, scope: !1377, inlinedAt: !1348)
!1377 = !DILexicalBlockFile(scope: !1373, file: !3, discriminator: 1)
!1378 = !DILocation(line: 1315, column: 31, scope: !1379, inlinedAt: !1273)
!1379 = !DILexicalBlockFile(scope: !1270, file: !3, discriminator: 3)
!1380 = !DILocation(line: 1315, column: 3, scope: !1379, inlinedAt: !1273)
!1381 = distinct !{!1381, !1382, !1383}
!1382 = !DILocation(line: 1315, column: 3, scope: !1266)
!1383 = !DILocation(line: 1330, column: 7, scope: !1266)
!1384 = !DILocation(line: 1333, column: 5, scope: !1283, inlinedAt: !1273)
!1385 = !DILocation(line: 1333, column: 5, scope: !1386, inlinedAt: !1273)
!1386 = !DILexicalBlockFile(scope: !1283, file: !3, discriminator: 1)
!1387 = !DILocation(line: 1336, column: 16, scope: !1260, inlinedAt: !1273)
!1388 = !DILocation(line: 1336, column: 7, scope: !1260, inlinedAt: !1273)
!1389 = !DILocation(line: 1337, column: 12, scope: !1390, inlinedAt: !1273)
!1390 = distinct !DILexicalBlock(scope: !1260, file: !3, line: 1337, column: 7)
!1391 = !DILocation(line: 1337, column: 22, scope: !1390, inlinedAt: !1273)
!1392 = !DILocation(line: 1338, column: 5, scope: !1390, inlinedAt: !1273)
!1393 = !DILocation(line: 1337, column: 25, scope: !1394, inlinedAt: !1273)
!1394 = !DILexicalBlockFile(scope: !1390, file: !3, discriminator: 1)
!1395 = !DILocation(line: 1415, column: 8, scope: !1207)
!1396 = !DILocation(line: 1417, column: 10, scope: !6)
!1397 = !DILocation(line: 1417, column: 10, scope: !1398)
!1398 = !DILexicalBlockFile(scope: !6, file: !3, discriminator: 2)
!1399 = !DILocation(line: 1415, column: 8, scope: !1400)
!1400 = !DILexicalBlockFile(scope: !6, file: !3, discriminator: 3)
!1401 = !DILocation(line: 1414, column: 10, scope: !6)
!1402 = !DILocation(line: 1418, column: 20, scope: !1403)
!1403 = distinct !DILexicalBlock(scope: !6, file: !3, line: 1418, column: 7)
!1404 = !DILocation(line: 1418, column: 33, scope: !1403)
!1405 = !DILocation(line: 1418, column: 7, scope: !6)
!1406 = !DILocation(line: 1419, column: 5, scope: !1403)
!1407 = !DILocation(line: 1420, column: 40, scope: !6)
!1408 = !DILocation(line: 1420, column: 63, scope: !6)
!1409 = !DILocation(line: 1420, column: 20, scope: !6)
!1410 = !DILocation(line: 1420, column: 18, scope: !6)
!1411 = !DILocation(line: 1422, column: 30, scope: !6)
!1412 = !DILocation(line: 1422, column: 19, scope: !6)
!1413 = !DILocalVariable(name: "name", arg: 1, scope: !1414, file: !3, line: 652, type: !193)
!1414 = distinct !DISubprogram(name: "set_input_file", scope: !3, file: !3, line: 652, type: !423, isLocal: true, isDefinition: true, scopeLine: 653, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1415)
!1415 = !{!1413, !1416, !1419, !1420, !1422}
!1416 = !DILocalVariable(name: "__s1_len", scope: !1417, file: !3, line: 654, type: !18)
!1417 = distinct !DILexicalBlock(scope: !1418, file: !3, line: 654, column: 9)
!1418 = distinct !DILexicalBlock(scope: !1414, file: !3, line: 654, column: 7)
!1419 = !DILocalVariable(name: "__s2_len", scope: !1417, file: !3, line: 654, type: !18)
!1420 = !DILocalVariable(name: "__s2", scope: !1421, file: !3, line: 654, type: !190)
!1421 = distinct !DILexicalBlock(scope: !1417, file: !3, line: 654, column: 9)
!1422 = !DILocalVariable(name: "__result", scope: !1421, file: !3, line: 654, type: !9)
!1423 = !DILocation(line: 652, column: 29, scope: !1414, inlinedAt: !1424)
!1424 = distinct !DILocation(line: 1422, column: 3, scope: !6)
!1425 = !DILocation(line: 654, column: 9, scope: !1417, inlinedAt: !1424)
!1426 = !DILocation(line: 654, column: 9, scope: !1421, inlinedAt: !1424)
!1427 = !DILocation(line: 654, column: 9, scope: !1428, inlinedAt: !1424)
!1428 = !DILexicalBlockFile(scope: !1421, file: !3, discriminator: 2)
!1429 = !DILocation(line: 654, column: 9, scope: !1430, inlinedAt: !1424)
!1430 = !DILexicalBlockFile(scope: !1431, file: !3, discriminator: 3)
!1431 = distinct !DILexicalBlock(scope: !1421, file: !3, line: 654, column: 9)
!1432 = !DILocation(line: 654, column: 9, scope: !1433, inlinedAt: !1424)
!1433 = !DILexicalBlockFile(scope: !1431, file: !3, discriminator: 2)
!1434 = !DILocation(line: 654, column: 9, scope: !1435, inlinedAt: !1424)
!1435 = !DILexicalBlockFile(scope: !1436, file: !3, discriminator: 4)
!1436 = distinct !DILexicalBlock(scope: !1431, file: !3, line: 654, column: 9)
!1437 = !DILocation(line: 654, column: 9, scope: !1438, inlinedAt: !1424)
!1438 = !DILexicalBlockFile(scope: !1417, file: !3, discriminator: 11)
!1439 = !DILocation(line: 654, column: 27, scope: !1440, inlinedAt: !1424)
!1440 = !DILexicalBlockFile(scope: !1418, file: !3, discriminator: 13)
!1441 = !DILocation(line: 654, column: 30, scope: !1442, inlinedAt: !1424)
!1442 = !DILexicalBlockFile(scope: !1418, file: !3, discriminator: 14)
!1443 = !DILocation(line: 654, column: 74, scope: !1442, inlinedAt: !1424)
!1444 = !DILocation(line: 654, column: 7, scope: !1445, inlinedAt: !1424)
!1445 = !DILexicalBlockFile(scope: !1414, file: !3, discriminator: 14)
!1446 = !DILocation(line: 655, column: 5, scope: !1418, inlinedAt: !1424)
!1447 = !DILocation(line: 655, column: 5, scope: !1448, inlinedAt: !1424)
!1448 = !DILexicalBlockFile(scope: !1418, file: !3, discriminator: 1)
!1449 = !DILocation(line: 655, column: 5, scope: !1450, inlinedAt: !1424)
!1450 = !DILexicalBlockFile(scope: !1418, file: !3, discriminator: 2)
!1451 = !DILocation(line: 655, column: 5, scope: !1452, inlinedAt: !1424)
!1452 = !DILexicalBlockFile(scope: !1418, file: !3, discriminator: 3)
!1453 = !DILocation(line: 1424, column: 25, scope: !6)
!1454 = !DILocation(line: 1179, column: 21, scope: !343, inlinedAt: !1191)
!1455 = !DILocation(line: 1179, column: 31, scope: !343, inlinedAt: !1191)
!1456 = !DILocation(line: 1179, column: 45, scope: !343, inlinedAt: !1191)
!1457 = !DILocation(line: 1183, column: 3, scope: !343, inlinedAt: !1191)
!1458 = !DILocation(line: 1181, column: 7, scope: !343, inlinedAt: !1191)
!1459 = !DILocation(line: 1186, column: 21, scope: !1460, inlinedAt: !1191)
!1460 = !DILexicalBlockFile(scope: !359, file: !3, discriminator: 1)
!1461 = !DILocation(line: 1186, column: 3, scope: !1462, inlinedAt: !1191)
!1462 = !DILexicalBlockFile(scope: !360, file: !3, discriminator: 1)
!1463 = !DILocation(line: 1188, column: 12, scope: !357, inlinedAt: !1191)
!1464 = !DILocation(line: 1188, column: 11, scope: !357, inlinedAt: !1191)
!1465 = !DILocation(line: 1188, column: 27, scope: !357, inlinedAt: !1191)
!1466 = !DILocalVariable(name: "argnum", arg: 1, scope: !1467, file: !3, line: 1137, type: !9)
!1467 = distinct !DISubprogram(name: "extract_regexp", scope: !3, file: !3, line: 1137, type: !1468, isLocal: true, isDefinition: true, scopeLine: 1138, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1470)
!1468 = !DISubroutineType(types: !1469)
!1469 = !{!216, !9, !206, !193}
!1470 = !{!1466, !1471, !1472, !1473, !1474, !1475, !1476, !1477}
!1471 = !DILocalVariable(name: "ignore", arg: 2, scope: !1467, file: !3, line: 1137, type: !206)
!1472 = !DILocalVariable(name: "str", arg: 3, scope: !1467, file: !3, line: 1137, type: !193)
!1473 = !DILocalVariable(name: "len", scope: !1467, file: !3, line: 1139, type: !18)
!1474 = !DILocalVariable(name: "delim", scope: !1467, file: !3, line: 1140, type: !12)
!1475 = !DILocalVariable(name: "closing_delim", scope: !1467, file: !3, line: 1141, type: !193)
!1476 = !DILocalVariable(name: "p", scope: !1467, file: !3, line: 1142, type: !216)
!1477 = !DILocalVariable(name: "err", scope: !1467, file: !3, line: 1143, type: !193)
!1478 = !DILocation(line: 1137, column: 21, scope: !1467, inlinedAt: !1479)
!1479 = distinct !DILocation(line: 1190, column: 15, scope: !1480, inlinedAt: !1191)
!1480 = distinct !DILexicalBlock(scope: !357, file: !3, line: 1189, column: 9)
!1481 = !DILocation(line: 1137, column: 54, scope: !1467, inlinedAt: !1479)
!1482 = !DILocation(line: 1140, column: 8, scope: !1467, inlinedAt: !1479)
!1483 = !DILocation(line: 1145, column: 32, scope: !1467, inlinedAt: !1479)
!1484 = !DILocation(line: 1145, column: 37, scope: !1467, inlinedAt: !1479)
!1485 = !DILocation(line: 1145, column: 19, scope: !1467, inlinedAt: !1479)
!1486 = !DILocation(line: 1141, column: 15, scope: !1467, inlinedAt: !1479)
!1487 = !DILocation(line: 1146, column: 21, scope: !1488, inlinedAt: !1479)
!1488 = distinct !DILexicalBlock(scope: !1467, file: !3, line: 1146, column: 7)
!1489 = !DILocation(line: 1146, column: 7, scope: !1467, inlinedAt: !1479)
!1490 = !DILocation(line: 1147, column: 5, scope: !1488, inlinedAt: !1479)
!1491 = !DILocation(line: 1147, column: 5, scope: !1492, inlinedAt: !1479)
!1492 = !DILexicalBlockFile(scope: !1488, file: !3, discriminator: 1)
!1493 = !DILocation(line: 1190, column: 43, scope: !1480, inlinedAt: !1191)
!1494 = !DILocation(line: 1150, column: 23, scope: !1467, inlinedAt: !1479)
!1495 = !DILocation(line: 1150, column: 29, scope: !1467, inlinedAt: !1479)
!1496 = !DILocation(line: 1139, column: 10, scope: !1467, inlinedAt: !1479)
!1497 = !DILocation(line: 1073, column: 7, scope: !1498, inlinedAt: !1499)
!1498 = distinct !DILexicalBlock(scope: !366, file: !3, line: 1073, column: 7)
!1499 = distinct !DILocation(line: 1151, column: 7, scope: !1467, inlinedAt: !1479)
!1500 = !DILocation(line: 1073, column: 23, scope: !1498, inlinedAt: !1499)
!1501 = !DILocation(line: 1073, column: 20, scope: !1498, inlinedAt: !1499)
!1502 = !DILocation(line: 1073, column: 7, scope: !366, inlinedAt: !1499)
!1503 = !DILocation(line: 1074, column: 16, scope: !1498, inlinedAt: !1499)
!1504 = !DILocation(line: 180, column: 19, scope: !175, inlinedAt: !1505)
!1505 = distinct !DILocation(line: 1074, column: 16, scope: !1498, inlinedAt: !1499)
!1506 = !DILocation(line: 180, column: 30, scope: !175, inlinedAt: !1505)
!1507 = !DILocation(line: 180, column: 41, scope: !175, inlinedAt: !1505)
!1508 = !DILocation(line: 182, column: 10, scope: !175, inlinedAt: !1505)
!1509 = !DILocation(line: 184, column: 9, scope: !1510, inlinedAt: !1505)
!1510 = distinct !DILexicalBlock(scope: !175, file: !174, line: 184, column: 7)
!1511 = !DILocation(line: 184, column: 7, scope: !175, inlinedAt: !1505)
!1512 = !DILocation(line: 186, column: 13, scope: !1513, inlinedAt: !1505)
!1513 = distinct !DILexicalBlock(scope: !1514, file: !174, line: 186, column: 11)
!1514 = distinct !DILexicalBlock(scope: !1510, file: !174, line: 185, column: 5)
!1515 = !DILocation(line: 186, column: 11, scope: !1514, inlinedAt: !1505)
!1516 = !DILocation(line: 205, column: 11, scope: !1517, inlinedAt: !1505)
!1517 = distinct !DILexicalBlock(scope: !1518, file: !174, line: 204, column: 11)
!1518 = distinct !DILexicalBlock(scope: !1510, file: !174, line: 199, column: 5)
!1519 = !DILocation(line: 204, column: 11, scope: !1518, inlinedAt: !1505)
!1520 = !DILocation(line: 206, column: 9, scope: !1517, inlinedAt: !1505)
!1521 = !DILocation(line: 207, column: 14, scope: !1518, inlinedAt: !1505)
!1522 = !DILocation(line: 207, column: 18, scope: !1518, inlinedAt: !1505)
!1523 = !DILocation(line: 207, column: 9, scope: !1518, inlinedAt: !1505)
!1524 = !DILocation(line: 210, column: 7, scope: !175, inlinedAt: !1505)
!1525 = !DILocation(line: 211, column: 25, scope: !175, inlinedAt: !1505)
!1526 = !DILocation(line: 211, column: 10, scope: !175, inlinedAt: !1505)
!1527 = !DILocation(line: 1074, column: 14, scope: !1498, inlinedAt: !1499)
!1528 = !DILocation(line: 1074, column: 5, scope: !1498, inlinedAt: !1499)
!1529 = !DILocation(line: 1075, column: 29, scope: !366, inlinedAt: !1499)
!1530 = !DILocation(line: 1075, column: 8, scope: !366, inlinedAt: !1499)
!1531 = !DILocation(line: 1071, column: 19, scope: !366, inlinedAt: !1499)
!1532 = !DILocation(line: 1076, column: 6, scope: !366, inlinedAt: !1499)
!1533 = !DILocation(line: 1078, column: 6, scope: !366, inlinedAt: !1499)
!1534 = !DILocation(line: 1078, column: 21, scope: !366, inlinedAt: !1499)
!1535 = !{!1536, !1129, i64 28}
!1536 = !{!"control", !1051, i64 0, !1051, i64 8, !1051, i64 16, !1050, i64 24, !1129, i64 28, !1129, i64 29, !1129, i64 30, !1537, i64 32}
!1537 = !{!"re_pattern_buffer", !1033, i64 0, !1051, i64 8, !1051, i64 16, !1051, i64 24, !1033, i64 32, !1033, i64 40, !1051, i64 48, !1050, i64 56, !1050, i64 56, !1050, i64 56, !1050, i64 56, !1050, i64 56, !1050, i64 56, !1050, i64 56}
!1538 = !DILocation(line: 1081, column: 3, scope: !366, inlinedAt: !1499)
!1539 = !DILocation(line: 1077, column: 13, scope: !366, inlinedAt: !1499)
!1540 = !DILocation(line: 1142, column: 19, scope: !1467, inlinedAt: !1479)
!1541 = !DILocation(line: 1152, column: 6, scope: !1467, inlinedAt: !1479)
!1542 = !DILocation(line: 1152, column: 13, scope: !1467, inlinedAt: !1479)
!1543 = !{!1536, !1050, i64 24}
!1544 = !DILocation(line: 1153, column: 6, scope: !1467, inlinedAt: !1479)
!1545 = !DILocation(line: 1153, column: 13, scope: !1467, inlinedAt: !1479)
!1546 = !{!1536, !1129, i64 29}
!1547 = !DILocation(line: 1155, column: 14, scope: !1467, inlinedAt: !1479)
!1548 = !{!1536, !1129, i64 30}
!1549 = !DILocation(line: 1156, column: 6, scope: !1467, inlinedAt: !1479)
!1550 = !DILocation(line: 1158, column: 28, scope: !1467, inlinedAt: !1479)
!1551 = !DILocation(line: 1157, column: 28, scope: !1467, inlinedAt: !1479)
!1552 = !DILocation(line: 1158, column: 18, scope: !1467, inlinedAt: !1479)
!1553 = !DILocation(line: 1158, column: 26, scope: !1467, inlinedAt: !1479)
!1554 = !{!1536, !1033, i64 64}
!1555 = !DILocation(line: 1159, column: 18, scope: !1467, inlinedAt: !1479)
!1556 = !DILocation(line: 1159, column: 28, scope: !1467, inlinedAt: !1479)
!1557 = !{!1536, !1033, i64 72}
!1558 = !DILocation(line: 1160, column: 21, scope: !1467, inlinedAt: !1479)
!1559 = !DILocation(line: 1162, column: 9, scope: !1467, inlinedAt: !1479)
!1560 = !DILocation(line: 1143, column: 15, scope: !1467, inlinedAt: !1479)
!1561 = !DILocation(line: 1163, column: 7, scope: !1562, inlinedAt: !1479)
!1562 = distinct !DILexicalBlock(scope: !1467, file: !3, line: 1163, column: 7)
!1563 = !DILocation(line: 1163, column: 7, scope: !1467, inlinedAt: !1479)
!1564 = !DILocation(line: 1165, column: 20, scope: !1565, inlinedAt: !1479)
!1565 = distinct !DILexicalBlock(scope: !1562, file: !3, line: 1164, column: 5)
!1566 = !DILocation(line: 1165, column: 61, scope: !1567, inlinedAt: !1479)
!1567 = !DILexicalBlockFile(scope: !1565, file: !3, discriminator: 1)
!1568 = !DILocation(line: 1165, column: 7, scope: !1569, inlinedAt: !1479)
!1569 = !DILexicalBlockFile(scope: !1565, file: !3, discriminator: 2)
!1570 = !DILocation(line: 1166, column: 7, scope: !1565, inlinedAt: !1479)
!1571 = !DILocation(line: 1169, column: 7, scope: !1572, inlinedAt: !1479)
!1572 = distinct !DILexicalBlock(scope: !1467, file: !3, line: 1169, column: 7)
!1573 = !DILocation(line: 1169, column: 7, scope: !1467, inlinedAt: !1479)
!1574 = !DILocalVariable(name: "p", arg: 1, scope: !1575, file: !3, line: 1090, type: !216)
!1575 = distinct !DISubprogram(name: "check_for_offset", scope: !3, file: !3, line: 1090, type: !1576, isLocal: true, isDefinition: true, scopeLine: 1091, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1578)
!1576 = !DISubroutineType(types: !1577)
!1577 = !{null, !216, !193, !193}
!1578 = !{!1574, !1579, !1580}
!1579 = !DILocalVariable(name: "str", arg: 2, scope: !1575, file: !3, line: 1090, type: !193)
!1580 = !DILocalVariable(name: "num", arg: 3, scope: !1575, file: !3, line: 1090, type: !193)
!1581 = !DILocation(line: 1090, column: 35, scope: !1575, inlinedAt: !1582)
!1582 = distinct !DILocation(line: 1170, column: 5, scope: !1572, inlinedAt: !1479)
!1583 = !DILocation(line: 1090, column: 50, scope: !1575, inlinedAt: !1582)
!1584 = !DILocation(line: 1090, column: 67, scope: !1575, inlinedAt: !1582)
!1585 = !DILocation(line: 1092, column: 38, scope: !1586, inlinedAt: !1582)
!1586 = distinct !DILexicalBlock(scope: !1575, file: !3, line: 1092, column: 7)
!1587 = !DILocation(line: 1092, column: 7, scope: !1586, inlinedAt: !1582)
!1588 = !DILocation(line: 1092, column: 50, scope: !1586, inlinedAt: !1582)
!1589 = !DILocation(line: 1092, column: 7, scope: !1575, inlinedAt: !1582)
!1590 = !DILocation(line: 1093, column: 5, scope: !1586, inlinedAt: !1582)
!1591 = !DILocation(line: 1093, column: 5, scope: !1592, inlinedAt: !1582)
!1592 = !DILexicalBlockFile(scope: !1586, file: !3, discriminator: 1)
!1593 = !DILocation(line: 1093, column: 5, scope: !1594, inlinedAt: !1582)
!1594 = !DILexicalBlockFile(scope: !1586, file: !3, discriminator: 2)
!1595 = !DILocation(line: 1073, column: 7, scope: !1498, inlinedAt: !1596)
!1596 = distinct !DILocation(line: 1194, column: 15, scope: !356, inlinedAt: !1191)
!1597 = !DILocation(line: 1073, column: 23, scope: !1498, inlinedAt: !1596)
!1598 = !DILocation(line: 1073, column: 20, scope: !1498, inlinedAt: !1596)
!1599 = !DILocation(line: 1073, column: 7, scope: !366, inlinedAt: !1596)
!1600 = !DILocation(line: 1074, column: 16, scope: !1498, inlinedAt: !1596)
!1601 = !DILocation(line: 180, column: 19, scope: !175, inlinedAt: !1602)
!1602 = distinct !DILocation(line: 1074, column: 16, scope: !1498, inlinedAt: !1596)
!1603 = !DILocation(line: 180, column: 30, scope: !175, inlinedAt: !1602)
!1604 = !DILocation(line: 180, column: 41, scope: !175, inlinedAt: !1602)
!1605 = !DILocation(line: 182, column: 10, scope: !175, inlinedAt: !1602)
!1606 = !DILocation(line: 184, column: 9, scope: !1510, inlinedAt: !1602)
!1607 = !DILocation(line: 184, column: 7, scope: !175, inlinedAt: !1602)
!1608 = !DILocation(line: 186, column: 13, scope: !1513, inlinedAt: !1602)
!1609 = !DILocation(line: 186, column: 11, scope: !1514, inlinedAt: !1602)
!1610 = !DILocation(line: 205, column: 11, scope: !1517, inlinedAt: !1602)
!1611 = !DILocation(line: 204, column: 11, scope: !1518, inlinedAt: !1602)
!1612 = !DILocation(line: 206, column: 9, scope: !1517, inlinedAt: !1602)
!1613 = !DILocation(line: 207, column: 14, scope: !1518, inlinedAt: !1602)
!1614 = !DILocation(line: 207, column: 18, scope: !1518, inlinedAt: !1602)
!1615 = !DILocation(line: 207, column: 9, scope: !1518, inlinedAt: !1602)
!1616 = !DILocation(line: 210, column: 7, scope: !175, inlinedAt: !1602)
!1617 = !DILocation(line: 211, column: 25, scope: !175, inlinedAt: !1602)
!1618 = !DILocation(line: 211, column: 10, scope: !175, inlinedAt: !1602)
!1619 = !DILocation(line: 1074, column: 14, scope: !1498, inlinedAt: !1596)
!1620 = !DILocation(line: 1074, column: 5, scope: !1498, inlinedAt: !1596)
!1621 = !DILocation(line: 1075, column: 29, scope: !366, inlinedAt: !1596)
!1622 = !DILocation(line: 1075, column: 8, scope: !366, inlinedAt: !1596)
!1623 = !DILocation(line: 1071, column: 19, scope: !366, inlinedAt: !1596)
!1624 = !DILocation(line: 1076, column: 6, scope: !366, inlinedAt: !1596)
!1625 = !DILocation(line: 1076, column: 14, scope: !366, inlinedAt: !1596)
!1626 = !DILocation(line: 1078, column: 6, scope: !366, inlinedAt: !1596)
!1627 = !DILocation(line: 1078, column: 21, scope: !366, inlinedAt: !1596)
!1628 = !DILocation(line: 1081, column: 3, scope: !366, inlinedAt: !1596)
!1629 = !DILocation(line: 1077, column: 13, scope: !366, inlinedAt: !1596)
!1630 = !DILocation(line: 1182, column: 19, scope: !343, inlinedAt: !1191)
!1631 = !DILocation(line: 1195, column: 14, scope: !356, inlinedAt: !1191)
!1632 = !DILocation(line: 1195, column: 21, scope: !356, inlinedAt: !1191)
!1633 = !DILocation(line: 1197, column: 27, scope: !1634, inlinedAt: !1191)
!1634 = distinct !DILexicalBlock(scope: !356, file: !3, line: 1197, column: 15)
!1635 = !DILocation(line: 1183, column: 13, scope: !343, inlinedAt: !1191)
!1636 = !DILocation(line: 1197, column: 15, scope: !1634, inlinedAt: !1191)
!1637 = !DILocation(line: 1197, column: 56, scope: !1634, inlinedAt: !1191)
!1638 = !DILocation(line: 1197, column: 15, scope: !356, inlinedAt: !1191)
!1639 = !DILocation(line: 1198, column: 13, scope: !1634, inlinedAt: !1191)
!1640 = !DILocation(line: 1198, column: 13, scope: !1641, inlinedAt: !1191)
!1641 = !DILexicalBlockFile(scope: !1634, file: !3, discriminator: 1)
!1642 = !DILocation(line: 1198, column: 13, scope: !1643, inlinedAt: !1191)
!1643 = !DILexicalBlockFile(scope: !1634, file: !3, discriminator: 2)
!1644 = !DILocation(line: 1199, column: 15, scope: !1645, inlinedAt: !1191)
!1645 = distinct !DILexicalBlock(scope: !356, file: !3, line: 1199, column: 15)
!1646 = !DILocation(line: 1199, column: 19, scope: !1645, inlinedAt: !1191)
!1647 = !DILocation(line: 1199, column: 15, scope: !356, inlinedAt: !1191)
!1648 = !DILocation(line: 1200, column: 13, scope: !1645, inlinedAt: !1191)
!1649 = !DILocation(line: 1200, column: 13, scope: !1650, inlinedAt: !1191)
!1650 = !DILexicalBlockFile(scope: !1645, file: !3, discriminator: 1)
!1651 = !DILocation(line: 1202, column: 21, scope: !355, inlinedAt: !1191)
!1652 = !DILocation(line: 1202, column: 19, scope: !355, inlinedAt: !1191)
!1653 = !DILocation(line: 1202, column: 15, scope: !356, inlinedAt: !1191)
!1654 = !DILocation(line: 1204, column: 15, scope: !354, inlinedAt: !1191)
!1655 = !DILocation(line: 1205, column: 15, scope: !354, inlinedAt: !1191)
!1656 = !DILocation(line: 1205, column: 15, scope: !1657, inlinedAt: !1191)
!1657 = !DILexicalBlockFile(scope: !354, file: !3, discriminator: 1)
!1658 = !DILocation(line: 1205, column: 15, scope: !1659, inlinedAt: !1191)
!1659 = !DILexicalBlockFile(scope: !354, file: !3, discriminator: 2)
!1660 = !DILocation(line: 1205, column: 15, scope: !1661, inlinedAt: !1191)
!1661 = !DILexicalBlockFile(scope: !354, file: !3, discriminator: 3)
!1662 = !DILocation(line: 1210, column: 19, scope: !1663, inlinedAt: !1191)
!1663 = distinct !DILexicalBlock(scope: !356, file: !3, line: 1210, column: 15)
!1664 = !DILocation(line: 1210, column: 15, scope: !356, inlinedAt: !1191)
!1665 = !DILocation(line: 1212, column: 12, scope: !1663, inlinedAt: !1191)
!1666 = !DILocation(line: 1213, column: 27, scope: !1663, inlinedAt: !1191)
!1667 = !DILocation(line: 1213, column: 20, scope: !1663, inlinedAt: !1191)
!1668 = !DILocation(line: 1211, column: 13, scope: !1663, inlinedAt: !1191)
!1669 = !DILocation(line: 1215, column: 22, scope: !356, inlinedAt: !1191)
!1670 = !DILocation(line: 1215, column: 20, scope: !356, inlinedAt: !1191)
!1671 = !DILocation(line: 1217, column: 14, scope: !356, inlinedAt: !1191)
!1672 = !DILocation(line: 1217, column: 29, scope: !356, inlinedAt: !1191)
!1673 = !{!1536, !1051, i64 8}
!1674 = !DILocation(line: 1220, column: 13, scope: !1675, inlinedAt: !1191)
!1675 = distinct !DILexicalBlock(scope: !358, file: !3, line: 1220, column: 11)
!1676 = !DILocation(line: 1220, column: 17, scope: !1675, inlinedAt: !1191)
!1677 = !DILocation(line: 1220, column: 24, scope: !1675, inlinedAt: !1191)
!1678 = !DILocation(line: 1220, column: 28, scope: !1679, inlinedAt: !1191)
!1679 = !DILexicalBlockFile(scope: !1675, file: !3, discriminator: 1)
!1680 = !DILocation(line: 1220, column: 27, scope: !1679, inlinedAt: !1191)
!1681 = !DILocation(line: 1220, column: 40, scope: !1679, inlinedAt: !1191)
!1682 = !DILocation(line: 1220, column: 11, scope: !1683, inlinedAt: !1191)
!1683 = !DILexicalBlockFile(scope: !358, file: !3, discriminator: 1)
!1684 = !DILocalVariable(name: "argnum", arg: 1, scope: !1685, file: !3, line: 1103, type: !9)
!1685 = distinct !DISubprogram(name: "parse_repeat_count", scope: !3, file: !3, line: 1103, type: !1686, isLocal: true, isDefinition: true, scopeLine: 1104, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1688)
!1686 = !DISubroutineType(types: !1687)
!1687 = !{null, !9, !216, !11}
!1688 = !{!1684, !1689, !1690, !1691, !1692}
!1689 = !DILocalVariable(name: "p", arg: 2, scope: !1685, file: !3, line: 1103, type: !216)
!1690 = !DILocalVariable(name: "str", arg: 3, scope: !1685, file: !3, line: 1103, type: !11)
!1691 = !DILocalVariable(name: "val", scope: !1685, file: !3, line: 1105, type: !224)
!1692 = !DILocalVariable(name: "end", scope: !1685, file: !3, line: 1106, type: !11)
!1693 = !DILocation(line: 1103, column: 25, scope: !1685, inlinedAt: !1694)
!1694 = distinct !DILocation(line: 1224, column: 11, scope: !1695, inlinedAt: !1191)
!1695 = distinct !DILexicalBlock(scope: !1675, file: !3, line: 1221, column: 9)
!1696 = !DILocation(line: 1103, column: 49, scope: !1685, inlinedAt: !1694)
!1697 = !DILocation(line: 1103, column: 58, scope: !1685, inlinedAt: !1694)
!1698 = !DILocation(line: 1105, column: 3, scope: !1685, inlinedAt: !1694)
!1699 = !DILocation(line: 1108, column: 15, scope: !1685, inlinedAt: !1694)
!1700 = !DILocation(line: 1108, column: 28, scope: !1685, inlinedAt: !1694)
!1701 = !DILocation(line: 1106, column: 9, scope: !1685, inlinedAt: !1694)
!1702 = !DILocation(line: 1109, column: 7, scope: !1703, inlinedAt: !1694)
!1703 = distinct !DILexicalBlock(scope: !1685, file: !3, line: 1109, column: 7)
!1704 = !DILocation(line: 1109, column: 12, scope: !1703, inlinedAt: !1694)
!1705 = !DILocation(line: 1109, column: 7, scope: !1685, inlinedAt: !1694)
!1706 = !DILocation(line: 1110, column: 5, scope: !1703, inlinedAt: !1694)
!1707 = !DILocation(line: 1110, column: 5, scope: !1708, inlinedAt: !1694)
!1708 = !DILexicalBlockFile(scope: !1703, file: !3, discriminator: 1)
!1709 = !DILocation(line: 1110, column: 5, scope: !1710, inlinedAt: !1694)
!1710 = !DILexicalBlockFile(scope: !1703, file: !3, discriminator: 2)
!1711 = !DILocation(line: 1112, column: 8, scope: !1685, inlinedAt: !1694)
!1712 = !DILocation(line: 1114, column: 10, scope: !1713, inlinedAt: !1694)
!1713 = distinct !DILexicalBlock(scope: !1685, file: !3, line: 1114, column: 7)
!1714 = !DILocation(line: 1114, column: 13, scope: !1713, inlinedAt: !1694)
!1715 = !DILocation(line: 1114, column: 22, scope: !1713, inlinedAt: !1694)
!1716 = !DILocation(line: 1114, column: 25, scope: !1717, inlinedAt: !1694)
!1717 = !DILexicalBlockFile(scope: !1713, file: !3, discriminator: 1)
!1718 = !DILocation(line: 1114, column: 34, scope: !1717, inlinedAt: !1694)
!1719 = !DILocation(line: 1114, column: 7, scope: !1720, inlinedAt: !1694)
!1720 = !DILexicalBlockFile(scope: !1685, file: !3, discriminator: 1)
!1721 = !DILocation(line: 1115, column: 8, scope: !1713, inlinedAt: !1694)
!1722 = !DILocation(line: 1115, column: 23, scope: !1713, inlinedAt: !1694)
!1723 = !DILocation(line: 1115, column: 5, scope: !1713, inlinedAt: !1694)
!1724 = !DILocation(line: 1105, column: 13, scope: !1685, inlinedAt: !1694)
!1725 = !DILocation(line: 1118, column: 11, scope: !1726, inlinedAt: !1694)
!1726 = distinct !DILexicalBlock(scope: !1727, file: !3, line: 1118, column: 11)
!1727 = distinct !DILexicalBlock(scope: !1713, file: !3, line: 1117, column: 5)
!1728 = !DILocation(line: 1118, column: 52, scope: !1726, inlinedAt: !1694)
!1729 = !DILocation(line: 1118, column: 11, scope: !1727, inlinedAt: !1694)
!1730 = !DILocation(line: 1120, column: 11, scope: !1731, inlinedAt: !1694)
!1731 = distinct !DILexicalBlock(scope: !1726, file: !3, line: 1119, column: 9)
!1732 = !DILocation(line: 1120, column: 11, scope: !1733, inlinedAt: !1694)
!1733 = !DILexicalBlockFile(scope: !1731, file: !3, discriminator: 1)
!1734 = !DILocation(line: 1120, column: 11, scope: !1735, inlinedAt: !1694)
!1735 = !DILexicalBlockFile(scope: !1731, file: !3, discriminator: 2)
!1736 = !DILocation(line: 1124, column: 19, scope: !1727, inlinedAt: !1694)
!1737 = !DILocation(line: 1124, column: 10, scope: !1727, inlinedAt: !1694)
!1738 = !DILocation(line: 1124, column: 17, scope: !1727, inlinedAt: !1694)
!1739 = !{!1536, !1051, i64 16}
!1740 = !DILocation(line: 1127, column: 8, scope: !1685, inlinedAt: !1694)
!1741 = !DILocation(line: 1128, column: 1, scope: !1685, inlinedAt: !1694)
!1742 = !DILocation(line: 1225, column: 9, scope: !1695, inlinedAt: !1191)
!1743 = !DILocation(line: 1186, column: 30, scope: !1744, inlinedAt: !1191)
!1744 = !DILexicalBlockFile(scope: !359, file: !3, discriminator: 2)
!1745 = distinct !{!1745, !1746, !1747}
!1746 = !DILocation(line: 1186, column: 3, scope: !360)
!1747 = !DILocation(line: 1226, column: 5, scope: !360)
!1748 = !DILocation(line: 1227, column: 1, scope: !343, inlinedAt: !1191)
!1749 = !DILocation(line: 1450, column: 5, scope: !23)
!1750 = !DILocation(line: 1452, column: 5, scope: !23)
!1751 = !DILocation(line: 1427, column: 9, scope: !23)
!1752 = !DILocation(line: 1453, column: 5, scope: !1753)
!1753 = !DILexicalBlockFile(scope: !1754, file: !3, discriminator: 1)
!1754 = distinct !DILexicalBlock(scope: !23, file: !3, line: 1453, column: 5)
!1755 = !DILocation(line: 1455, column: 20, scope: !1756)
!1756 = distinct !DILexicalBlock(scope: !1757, file: !3, line: 1454, column: 7)
!1757 = distinct !DILexicalBlock(scope: !1754, file: !3, line: 1453, column: 5)
!1758 = !DILocation(line: 1450, column: 22, scope: !23)
!1759 = !DILocation(line: 1455, column: 9, scope: !1756)
!1760 = !DILocation(line: 1456, column: 17, scope: !1761)
!1761 = distinct !DILexicalBlock(scope: !1756, file: !3, line: 1456, column: 13)
!1762 = !DILocation(line: 1456, column: 28, scope: !1761)
!1763 = !DILocation(line: 1456, column: 13, scope: !1756)
!1764 = !DILocation(line: 1457, column: 11, scope: !1761)
!1765 = !DILocation(line: 1453, column: 29, scope: !1766)
!1766 = !DILexicalBlockFile(scope: !1757, file: !3, discriminator: 2)
!1767 = !DILocation(line: 1453, column: 19, scope: !1768)
!1768 = !DILexicalBlockFile(scope: !1757, file: !3, discriminator: 1)
!1769 = distinct !{!1769, !1770, !1771}
!1770 = !DILocation(line: 1453, column: 5, scope: !1754)
!1771 = !DILocation(line: 1458, column: 7, scope: !1754)
!1772 = !DILocation(line: 1460, column: 20, scope: !23)
!1773 = !DILocation(line: 1461, column: 9, scope: !23)
!1774 = !DILocation(line: 1461, column: 19, scope: !23)
!1775 = !{i64 0, i64 128, !1279}
!1776 = !DILocation(line: 1462, column: 9, scope: !23)
!1777 = !DILocation(line: 1462, column: 18, scope: !23)
!1778 = !{!1779, !1050, i64 136}
!1779 = !{!"sigaction", !1034, i64 0, !1780, i64 8, !1050, i64 136, !1033, i64 144}
!1780 = !{!"", !1034, i64 0}
!1781 = !DILocation(line: 1464, column: 5, scope: !1782)
!1782 = !DILexicalBlockFile(scope: !1783, file: !3, discriminator: 1)
!1783 = distinct !DILexicalBlock(scope: !23, file: !3, line: 1464, column: 5)
!1784 = !DILocation(line: 1465, column: 11, scope: !1785)
!1785 = distinct !DILexicalBlock(scope: !1786, file: !3, line: 1465, column: 11)
!1786 = distinct !DILexicalBlock(scope: !1783, file: !3, line: 1464, column: 5)
!1787 = !DILocation(line: 1465, column: 11, scope: !1786)
!1788 = !DILocation(line: 1466, column: 9, scope: !1785)
!1789 = !DILocation(line: 908, column: 11, scope: !1790, inlinedAt: !1798)
!1790 = distinct !DILexicalBlock(scope: !1791, file: !3, line: 908, column: 11)
!1791 = distinct !DILexicalBlock(scope: !1792, file: !3, line: 906, column: 5)
!1792 = distinct !DILexicalBlock(scope: !1793, file: !3, line: 905, column: 3)
!1793 = distinct !DILexicalBlock(scope: !1794, file: !3, line: 905, column: 3)
!1794 = distinct !DISubprogram(name: "split_file", scope: !3, file: !3, line: 901, type: !128, isLocal: true, isDefinition: true, scopeLine: 902, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1795)
!1795 = !{!1796, !1797}
!1796 = !DILocalVariable(name: "i", scope: !1794, file: !3, line: 903, type: !18)
!1797 = !DILocalVariable(name: "j", scope: !1791, file: !3, line: 907, type: !224)
!1798 = distinct !DILocation(line: 1469, column: 3, scope: !6)
!1799 = !DILocation(line: 908, column: 23, scope: !1790, inlinedAt: !1798)
!1800 = !DILocation(line: 907, column: 17, scope: !1791, inlinedAt: !1798)
!1801 = !DILocation(line: 908, column: 11, scope: !1791, inlinedAt: !1798)
!1802 = !DILocation(line: 912, column: 30, scope: !1803, inlinedAt: !1798)
!1803 = distinct !DILexicalBlock(scope: !1804, file: !3, line: 910, column: 11)
!1804 = distinct !DILexicalBlock(scope: !1805, file: !3, line: 910, column: 11)
!1805 = distinct !DILexicalBlock(scope: !1790, file: !3, line: 909, column: 9)
!1806 = !DILocation(line: 910, column: 36, scope: !1807, inlinedAt: !1798)
!1807 = !DILexicalBlockFile(scope: !1803, file: !3, discriminator: 1)
!1808 = !DILocation(line: 911, column: 24, scope: !1803, inlinedAt: !1798)
!1809 = !DILocation(line: 911, column: 44, scope: !1807, inlinedAt: !1798)
!1810 = !DILocation(line: 911, column: 29, scope: !1807, inlinedAt: !1798)
!1811 = !DILocation(line: 910, column: 11, scope: !1812, inlinedAt: !1798)
!1812 = !DILexicalBlockFile(scope: !1804, file: !3, discriminator: 2)
!1813 = !DILocalVariable(name: "p", arg: 1, scope: !1814, file: !3, line: 795, type: !216)
!1814 = distinct !DISubprogram(name: "process_regexp", scope: !3, file: !3, line: 795, type: !1815, isLocal: true, isDefinition: true, scopeLine: 796, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1817)
!1815 = !DISubroutineType(types: !1816)
!1816 = !{null, !216, !224}
!1817 = !{!1813, !1818, !1819, !1820, !1821, !1822, !1823}
!1818 = !DILocalVariable(name: "repetition", arg: 2, scope: !1814, file: !3, line: 795, type: !224)
!1819 = !DILocalVariable(name: "line", scope: !1814, file: !3, line: 797, type: !378)
!1820 = !DILocalVariable(name: "line_len", scope: !1814, file: !3, line: 798, type: !18)
!1821 = !DILocalVariable(name: "break_line", scope: !1814, file: !3, line: 799, type: !224)
!1822 = !DILocalVariable(name: "ignore", scope: !1814, file: !3, line: 800, type: !206)
!1823 = !DILocalVariable(name: "ret", scope: !1814, file: !3, line: 801, type: !1824)
!1824 = !DIDerivedType(tag: DW_TAG_typedef, name: "regoff_t", file: !233, line: 491, baseType: !9)
!1825 = !DILocation(line: 795, column: 33, scope: !1814, inlinedAt: !1826)
!1826 = distinct !DILocation(line: 912, column: 13, scope: !1803, inlinedAt: !1798)
!1827 = !DILocation(line: 795, column: 46, scope: !1814, inlinedAt: !1826)
!1828 = !DILocation(line: 800, column: 20, scope: !1814, inlinedAt: !1826)
!1829 = !DILocation(line: 803, column: 7, scope: !1814, inlinedAt: !1826)
!1830 = !DILocation(line: 804, column: 5, scope: !1831, inlinedAt: !1826)
!1831 = distinct !DILexicalBlock(scope: !1814, file: !3, line: 803, column: 7)
!1832 = !DILocation(line: 806, column: 27, scope: !1833, inlinedAt: !1826)
!1833 = !DILexicalBlockFile(scope: !1834, file: !3, discriminator: 1)
!1834 = distinct !DILexicalBlock(scope: !1814, file: !3, line: 806, column: 7)
!1835 = !DILocation(line: 806, column: 40, scope: !1833, inlinedAt: !1826)
!1836 = !DILocation(line: 806, column: 24, scope: !1834, inlinedAt: !1826)
!1837 = !DILocation(line: 807, column: 5, scope: !1834, inlinedAt: !1826)
!1838 = !DILocation(line: 812, column: 10, scope: !1839, inlinedAt: !1826)
!1839 = distinct !DILexicalBlock(scope: !1814, file: !3, line: 812, column: 7)
!1840 = !{!1536, !1051, i64 0}
!1841 = !DILocation(line: 812, column: 17, scope: !1839, inlinedAt: !1826)
!1842 = !DILocation(line: 812, column: 7, scope: !1814, inlinedAt: !1826)
!1843 = !DILocation(line: 856, column: 29, scope: !1844, inlinedAt: !1826)
!1844 = distinct !DILexicalBlock(scope: !1845, file: !3, line: 855, column: 9)
!1845 = distinct !DILexicalBlock(scope: !1839, file: !3, line: 852, column: 5)
!1846 = !DILocation(line: 816, column: 29, scope: !1847, inlinedAt: !1826)
!1847 = distinct !DILexicalBlock(scope: !1848, file: !3, line: 815, column: 9)
!1848 = distinct !DILexicalBlock(scope: !1839, file: !3, line: 813, column: 5)
!1849 = !DILocation(line: 816, column: 18, scope: !1847, inlinedAt: !1826)
!1850 = !DILocation(line: 797, column: 19, scope: !1814, inlinedAt: !1826)
!1851 = !DILocation(line: 817, column: 20, scope: !1852, inlinedAt: !1826)
!1852 = distinct !DILexicalBlock(scope: !1847, file: !3, line: 817, column: 15)
!1853 = !DILocation(line: 817, column: 15, scope: !1847, inlinedAt: !1826)
!1854 = !DILocation(line: 819, column: 22, scope: !1855, inlinedAt: !1826)
!1855 = distinct !DILexicalBlock(scope: !1856, file: !3, line: 819, column: 19)
!1856 = distinct !DILexicalBlock(scope: !1852, file: !3, line: 818, column: 13)
!1857 = !DILocation(line: 819, column: 19, scope: !1856, inlinedAt: !1826)
!1858 = !DILocation(line: 821, column: 23, scope: !1859, inlinedAt: !1826)
!1859 = distinct !DILexicalBlock(scope: !1855, file: !3, line: 820, column: 17)
!1860 = !DILocation(line: 704, column: 18, scope: !1861, inlinedAt: !1865)
!1861 = !DILexicalBlockFile(scope: !1862, file: !3, discriminator: 1)
!1862 = distinct !DISubprogram(name: "dump_rest_of_file", scope: !3, file: !3, line: 700, type: !128, isLocal: true, isDefinition: true, scopeLine: 701, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1863)
!1863 = !{!1864}
!1864 = !DILocalVariable(name: "line", scope: !1862, file: !3, line: 702, type: !378)
!1865 = distinct !DILocation(line: 823, column: 23, scope: !1866, inlinedAt: !1826)
!1866 = distinct !DILexicalBlock(scope: !1867, file: !3, line: 822, column: 21)
!1867 = distinct !DILexicalBlock(scope: !1859, file: !3, line: 821, column: 23)
!1868 = !DILocation(line: 702, column: 19, scope: !1862, inlinedAt: !1865)
!1869 = !DILocation(line: 704, column: 34, scope: !1861, inlinedAt: !1865)
!1870 = !DILocation(line: 704, column: 3, scope: !1861, inlinedAt: !1865)
!1871 = !DILocation(line: 705, column: 5, scope: !1862, inlinedAt: !1865)
!1872 = distinct !{!1872, !1873, !1874}
!1873 = !DILocation(line: 704, column: 3, scope: !1862)
!1874 = !DILocation(line: 705, column: 28, scope: !1862)
!1875 = !DILocation(line: 824, column: 23, scope: !1866, inlinedAt: !1826)
!1876 = !DILocation(line: 825, column: 21, scope: !1866, inlinedAt: !1826)
!1877 = !DILocation(line: 826, column: 19, scope: !1859, inlinedAt: !1826)
!1878 = !DILocation(line: 829, column: 17, scope: !1855, inlinedAt: !1826)
!1879 = !DILocation(line: 831, column: 28, scope: !1847, inlinedAt: !1826)
!1880 = !{!1881, !1051, i64 0}
!1881 = !{!"cstring", !1051, i64 0, !1033, i64 8}
!1882 = !DILocation(line: 798, column: 10, scope: !1814, inlinedAt: !1826)
!1883 = !DILocation(line: 832, column: 21, scope: !1884, inlinedAt: !1826)
!1884 = distinct !DILexicalBlock(scope: !1847, file: !3, line: 832, column: 15)
!1885 = !{!1881, !1033, i64 8}
!1886 = !DILocation(line: 832, column: 34, scope: !1884, inlinedAt: !1826)
!1887 = !DILocation(line: 832, column: 15, scope: !1884, inlinedAt: !1826)
!1888 = !DILocation(line: 832, column: 39, scope: !1884, inlinedAt: !1826)
!1889 = !DILocation(line: 832, column: 15, scope: !1847, inlinedAt: !1826)
!1890 = !DILocation(line: 834, column: 56, scope: !1847, inlinedAt: !1826)
!1891 = !DILocation(line: 834, column: 17, scope: !1847, inlinedAt: !1826)
!1892 = !DILocation(line: 801, column: 12, scope: !1814, inlinedAt: !1826)
!1893 = !DILocation(line: 836, column: 15, scope: !1847, inlinedAt: !1826)
!1894 = !DILocation(line: 838, column: 28, scope: !1895, inlinedAt: !1826)
!1895 = distinct !DILexicalBlock(scope: !1896, file: !3, line: 837, column: 13)
!1896 = distinct !DILexicalBlock(scope: !1847, file: !3, line: 836, column: 15)
!1897 = !DILocation(line: 838, column: 15, scope: !1898, inlinedAt: !1826)
!1898 = !DILexicalBlockFile(scope: !1895, file: !3, discriminator: 1)
!1899 = !DILocation(line: 839, column: 15, scope: !1895, inlinedAt: !1826)
!1900 = !DILocation(line: 843, column: 22, scope: !1901, inlinedAt: !1826)
!1901 = distinct !DILexicalBlock(scope: !1902, file: !3, line: 842, column: 13)
!1902 = distinct !DILexicalBlock(scope: !1847, file: !3, line: 841, column: 15)
!1903 = !DILocation(line: 844, column: 19, scope: !1901, inlinedAt: !1826)
!1904 = distinct !{!1904, !1905, !1906}
!1905 = !DILocation(line: 814, column: 7, scope: !1848)
!1906 = !DILocation(line: 849, column: 9, scope: !1848)
!1907 = !DILocation(line: 845, column: 17, scope: !1908, inlinedAt: !1826)
!1908 = distinct !DILexicalBlock(scope: !1901, file: !3, line: 844, column: 19)
!1909 = !DILocation(line: 856, column: 18, scope: !1844, inlinedAt: !1826)
!1910 = !DILocation(line: 857, column: 20, scope: !1911, inlinedAt: !1826)
!1911 = distinct !DILexicalBlock(scope: !1844, file: !3, line: 857, column: 15)
!1912 = !DILocation(line: 857, column: 15, scope: !1844, inlinedAt: !1826)
!1913 = !DILocation(line: 859, column: 22, scope: !1914, inlinedAt: !1826)
!1914 = distinct !DILexicalBlock(scope: !1915, file: !3, line: 859, column: 19)
!1915 = distinct !DILexicalBlock(scope: !1911, file: !3, line: 858, column: 13)
!1916 = !DILocation(line: 859, column: 19, scope: !1915, inlinedAt: !1826)
!1917 = !DILocation(line: 861, column: 23, scope: !1918, inlinedAt: !1826)
!1918 = distinct !DILexicalBlock(scope: !1914, file: !3, line: 860, column: 17)
!1919 = !DILocation(line: 704, column: 18, scope: !1861, inlinedAt: !1920)
!1920 = distinct !DILocation(line: 863, column: 23, scope: !1921, inlinedAt: !1826)
!1921 = distinct !DILexicalBlock(scope: !1922, file: !3, line: 862, column: 21)
!1922 = distinct !DILexicalBlock(scope: !1918, file: !3, line: 861, column: 23)
!1923 = !DILocation(line: 702, column: 19, scope: !1862, inlinedAt: !1920)
!1924 = !DILocation(line: 704, column: 34, scope: !1861, inlinedAt: !1920)
!1925 = !DILocation(line: 704, column: 3, scope: !1861, inlinedAt: !1920)
!1926 = !DILocation(line: 705, column: 5, scope: !1862, inlinedAt: !1920)
!1927 = !DILocation(line: 864, column: 23, scope: !1921, inlinedAt: !1826)
!1928 = !DILocation(line: 865, column: 21, scope: !1921, inlinedAt: !1826)
!1929 = !DILocation(line: 866, column: 19, scope: !1918, inlinedAt: !1826)
!1930 = !DILocation(line: 869, column: 17, scope: !1914, inlinedAt: !1826)
!1931 = !DILocation(line: 871, column: 28, scope: !1844, inlinedAt: !1826)
!1932 = !DILocation(line: 872, column: 21, scope: !1933, inlinedAt: !1826)
!1933 = distinct !DILexicalBlock(scope: !1844, file: !3, line: 872, column: 15)
!1934 = !DILocation(line: 872, column: 34, scope: !1933, inlinedAt: !1826)
!1935 = !DILocation(line: 872, column: 15, scope: !1933, inlinedAt: !1826)
!1936 = !DILocation(line: 872, column: 39, scope: !1933, inlinedAt: !1826)
!1937 = !DILocation(line: 872, column: 15, scope: !1844, inlinedAt: !1826)
!1938 = !DILocation(line: 874, column: 56, scope: !1844, inlinedAt: !1826)
!1939 = !DILocation(line: 874, column: 17, scope: !1844, inlinedAt: !1826)
!1940 = !DILocation(line: 876, column: 15, scope: !1844, inlinedAt: !1826)
!1941 = !DILocation(line: 878, column: 28, scope: !1942, inlinedAt: !1826)
!1942 = distinct !DILexicalBlock(scope: !1943, file: !3, line: 877, column: 13)
!1943 = distinct !DILexicalBlock(scope: !1844, file: !3, line: 876, column: 15)
!1944 = !DILocation(line: 878, column: 15, scope: !1945, inlinedAt: !1826)
!1945 = !DILexicalBlockFile(scope: !1942, file: !3, discriminator: 1)
!1946 = !DILocation(line: 879, column: 15, scope: !1942, inlinedAt: !1826)
!1947 = !DILocation(line: 887, column: 16, scope: !1814, inlinedAt: !1826)
!1948 = !DILocation(line: 887, column: 34, scope: !1814, inlinedAt: !1826)
!1949 = !DILocation(line: 887, column: 29, scope: !1814, inlinedAt: !1826)
!1950 = !DILocation(line: 799, column: 13, scope: !1814, inlinedAt: !1826)
!1951 = !DILocation(line: 889, column: 41, scope: !1814, inlinedAt: !1826)
!1952 = !DILocalVariable(name: "last_line", arg: 1, scope: !1953, file: !3, line: 665, type: !224)
!1953 = distinct !DISubprogram(name: "write_to_file", scope: !3, file: !3, line: 665, type: !1954, isLocal: true, isDefinition: true, scopeLine: 666, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1956)
!1954 = !DISubroutineType(types: !1955)
!1955 = !{null, !224, !206, !9}
!1956 = !{!1952, !1957, !1958, !1959, !1960, !1961, !1962}
!1957 = !DILocalVariable(name: "ignore", arg: 2, scope: !1953, file: !3, line: 665, type: !206)
!1958 = !DILocalVariable(name: "argnum", arg: 3, scope: !1953, file: !3, line: 665, type: !9)
!1959 = !DILocalVariable(name: "line", scope: !1953, file: !3, line: 667, type: !378)
!1960 = !DILocalVariable(name: "first_line", scope: !1953, file: !3, line: 668, type: !224)
!1961 = !DILocalVariable(name: "lines", scope: !1953, file: !3, line: 669, type: !224)
!1962 = !DILocalVariable(name: "i", scope: !1953, file: !3, line: 670, type: !224)
!1963 = !DILocation(line: 665, column: 26, scope: !1953, inlinedAt: !1964)
!1964 = distinct !DILocation(line: 889, column: 3, scope: !1814, inlinedAt: !1826)
!1965 = !DILocation(line: 665, column: 42, scope: !1953, inlinedAt: !1964)
!1966 = !DILocation(line: 665, column: 54, scope: !1953, inlinedAt: !1964)
!1967 = !DILocation(line: 544, column: 7, scope: !1968, inlinedAt: !1971)
!1968 = distinct !DILexicalBlock(scope: !1969, file: !3, line: 544, column: 7)
!1969 = distinct !DISubprogram(name: "get_first_line_in_buffer", scope: !3, file: !3, line: 542, type: !1970, isLocal: true, isDefinition: true, scopeLine: 543, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !455)
!1970 = !DISubroutineType(types: !925)
!1971 = distinct !DILocation(line: 672, column: 16, scope: !1953, inlinedAt: !1964)
!1972 = !DILocation(line: 544, column: 12, scope: !1968, inlinedAt: !1971)
!1973 = !DILocation(line: 544, column: 20, scope: !1968, inlinedAt: !1971)
!1974 = !DILocation(line: 544, column: 24, scope: !1975, inlinedAt: !1971)
!1975 = !DILexicalBlockFile(scope: !1968, file: !3, discriminator: 1)
!1976 = !DILocation(line: 544, column: 7, scope: !1977, inlinedAt: !1971)
!1977 = !DILexicalBlockFile(scope: !1969, file: !3, discriminator: 1)
!1978 = !DILocation(line: 545, column: 5, scope: !1968, inlinedAt: !1971)
!1979 = !DILocation(line: 545, column: 5, scope: !1975, inlinedAt: !1971)
!1980 = !DILocation(line: 545, column: 5, scope: !1981, inlinedAt: !1971)
!1981 = !DILexicalBlockFile(scope: !1968, file: !3, discriminator: 2)
!1982 = !DILocation(line: 547, column: 10, scope: !1969, inlinedAt: !1971)
!1983 = !DILocation(line: 547, column: 16, scope: !1969, inlinedAt: !1971)
!1984 = !{!1985, !1051, i64 24}
!1985 = !{!"buffer_record", !1051, i64 0, !1051, i64 8, !1051, i64 16, !1051, i64 24, !1051, i64 32, !1033, i64 40, !1033, i64 48, !1033, i64 56, !1033, i64 64}
!1986 = !DILocation(line: 668, column: 13, scope: !1953, inlinedAt: !1964)
!1987 = !DILocation(line: 674, column: 18, scope: !1988, inlinedAt: !1964)
!1988 = distinct !DILexicalBlock(scope: !1953, file: !3, line: 674, column: 7)
!1989 = !DILocation(line: 674, column: 7, scope: !1953, inlinedAt: !1964)
!1990 = !DILocation(line: 676, column: 20, scope: !1991, inlinedAt: !1964)
!1991 = distinct !DILexicalBlock(scope: !1988, file: !3, line: 675, column: 5)
!1992 = !DILocation(line: 677, column: 21, scope: !1991, inlinedAt: !1964)
!1993 = !DILocation(line: 677, column: 14, scope: !1991, inlinedAt: !1964)
!1994 = !DILocation(line: 676, column: 7, scope: !1995, inlinedAt: !1964)
!1995 = !DILexicalBlockFile(scope: !1991, file: !3, discriminator: 1)
!1996 = !DILocation(line: 678, column: 7, scope: !1991, inlinedAt: !1964)
!1997 = !DILocation(line: 681, column: 21, scope: !1953, inlinedAt: !1964)
!1998 = !DILocation(line: 669, column: 13, scope: !1953, inlinedAt: !1964)
!1999 = !DILocation(line: 670, column: 13, scope: !1953, inlinedAt: !1964)
!2000 = !DILocation(line: 683, column: 17, scope: !2001, inlinedAt: !1964)
!2001 = !DILexicalBlockFile(scope: !2002, file: !3, discriminator: 1)
!2002 = distinct !DILexicalBlock(scope: !2003, file: !3, line: 683, column: 3)
!2003 = distinct !DILexicalBlock(scope: !1953, file: !3, line: 683, column: 3)
!2004 = !DILocation(line: 683, column: 3, scope: !2005, inlinedAt: !1964)
!2005 = !DILexicalBlockFile(scope: !2003, file: !3, discriminator: 1)
!2006 = !DILocation(line: 685, column: 14, scope: !2007, inlinedAt: !1964)
!2007 = distinct !DILexicalBlock(scope: !2002, file: !3, line: 684, column: 5)
!2008 = !DILocation(line: 667, column: 19, scope: !1953, inlinedAt: !1964)
!2009 = !DILocation(line: 686, column: 16, scope: !2010, inlinedAt: !1964)
!2010 = distinct !DILexicalBlock(scope: !2007, file: !3, line: 686, column: 11)
!2011 = !DILocation(line: 686, column: 11, scope: !2007, inlinedAt: !1964)
!2012 = !DILocation(line: 688, column: 24, scope: !2013, inlinedAt: !1964)
!2013 = distinct !DILexicalBlock(scope: !2010, file: !3, line: 687, column: 9)
!2014 = !DILocation(line: 689, column: 25, scope: !2013, inlinedAt: !1964)
!2015 = !DILocation(line: 689, column: 18, scope: !2013, inlinedAt: !1964)
!2016 = !DILocation(line: 688, column: 11, scope: !2017, inlinedAt: !1964)
!2017 = !DILexicalBlockFile(scope: !2013, file: !3, discriminator: 1)
!2018 = !DILocation(line: 690, column: 11, scope: !2013, inlinedAt: !1964)
!2019 = !DILocation(line: 692, column: 11, scope: !2007, inlinedAt: !1964)
!2020 = !DILocation(line: 693, column: 9, scope: !2021, inlinedAt: !1964)
!2021 = distinct !DILexicalBlock(scope: !2007, file: !3, line: 692, column: 11)
!2022 = !DILocation(line: 683, column: 27, scope: !2023, inlinedAt: !1964)
!2023 = !DILexicalBlockFile(scope: !2002, file: !3, discriminator: 2)
!2024 = distinct !{!2024, !2025, !2026}
!2025 = !DILocation(line: 683, column: 3, scope: !2003)
!2026 = !DILocation(line: 694, column: 5, scope: !2003)
!2027 = !DILocation(line: 891, column: 7, scope: !1814, inlinedAt: !1826)
!2028 = !DILocation(line: 892, column: 5, scope: !2029, inlinedAt: !1826)
!2029 = distinct !DILexicalBlock(scope: !1814, file: !3, line: 891, column: 7)
!2030 = !DILocation(line: 894, column: 10, scope: !2031, inlinedAt: !1826)
!2031 = distinct !DILexicalBlock(scope: !1814, file: !3, line: 894, column: 7)
!2032 = !DILocation(line: 894, column: 17, scope: !2031, inlinedAt: !1826)
!2033 = !DILocation(line: 894, column: 7, scope: !1814, inlinedAt: !1826)
!2034 = !DILocation(line: 895, column: 18, scope: !2031, inlinedAt: !1826)
!2035 = !DILocation(line: 895, column: 5, scope: !2031, inlinedAt: !1826)
!2036 = !DILocation(line: 911, column: 54, scope: !2037, inlinedAt: !1798)
!2037 = !DILexicalBlockFile(scope: !1803, file: !3, discriminator: 2)
!2038 = !DILocation(line: 910, column: 11, scope: !2039, inlinedAt: !1798)
!2039 = !DILexicalBlockFile(scope: !1803, file: !3, discriminator: 3)
!2040 = distinct !{!2040, !2041, !2042}
!2041 = !DILocation(line: 910, column: 11, scope: !1804)
!2042 = !DILocation(line: 912, column: 44, scope: !1804)
!2043 = !DILocation(line: 918, column: 34, scope: !2044, inlinedAt: !1798)
!2044 = distinct !DILexicalBlock(scope: !2045, file: !3, line: 916, column: 11)
!2045 = distinct !DILexicalBlock(scope: !2046, file: !3, line: 916, column: 11)
!2046 = distinct !DILexicalBlock(scope: !1790, file: !3, line: 915, column: 9)
!2047 = !DILocation(line: 916, column: 36, scope: !2048, inlinedAt: !1798)
!2048 = !DILexicalBlockFile(scope: !2044, file: !3, discriminator: 1)
!2049 = !DILocation(line: 917, column: 24, scope: !2044, inlinedAt: !1798)
!2050 = !DILocation(line: 917, column: 44, scope: !2048, inlinedAt: !1798)
!2051 = !DILocation(line: 917, column: 29, scope: !2048, inlinedAt: !1798)
!2052 = !DILocation(line: 916, column: 11, scope: !2053, inlinedAt: !1798)
!2053 = !DILexicalBlockFile(scope: !2045, file: !3, discriminator: 2)
!2054 = !DILocalVariable(name: "repetition", arg: 2, scope: !2055, file: !3, line: 734, type: !224)
!2055 = distinct !DISubprogram(name: "process_line_count", scope: !3, file: !3, line: 734, type: !2056, isLocal: true, isDefinition: true, scopeLine: 735, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2060)
!2056 = !DISubroutineType(types: !2057)
!2057 = !{null, !2058, !224}
!2058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2059, size: 64)
!2059 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !217)
!2060 = !{!2061, !2054, !2062, !2063, !2064}
!2061 = !DILocalVariable(name: "p", arg: 1, scope: !2055, file: !3, line: 734, type: !2058)
!2062 = !DILocalVariable(name: "linenum", scope: !2055, file: !3, line: 736, type: !224)
!2063 = !DILocalVariable(name: "last_line_to_save", scope: !2055, file: !3, line: 737, type: !224)
!2064 = !DILocalVariable(name: "line", scope: !2065, file: !3, line: 750, type: !378)
!2065 = distinct !DILexicalBlock(scope: !2055, file: !3, line: 749, column: 5)
!2066 = !DILocation(line: 734, column: 56, scope: !2055, inlinedAt: !2067)
!2067 = distinct !DILocation(line: 918, column: 13, scope: !2044, inlinedAt: !1798)
!2068 = !DILocation(line: 737, column: 36, scope: !2055, inlinedAt: !2067)
!2069 = !DILocation(line: 737, column: 65, scope: !2055, inlinedAt: !2067)
!2070 = !DILocation(line: 737, column: 51, scope: !2055, inlinedAt: !2067)
!2071 = !DILocation(line: 737, column: 13, scope: !2055, inlinedAt: !2067)
!2072 = !DILocation(line: 739, column: 3, scope: !2055, inlinedAt: !2067)
!2073 = !DILocation(line: 646, column: 21, scope: !2074, inlinedAt: !2077)
!2074 = distinct !DISubprogram(name: "no_more_lines", scope: !3, file: !3, line: 644, type: !2075, isLocal: true, isDefinition: true, scopeLine: 645, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !455)
!2075 = !DISubroutineType(types: !2076)
!2076 = !{!206}
!2077 = distinct !DILocation(line: 744, column: 7, scope: !2078, inlinedAt: !2067)
!2078 = distinct !DILexicalBlock(scope: !2055, file: !3, line: 744, column: 7)
!2079 = !DILocation(line: 646, column: 34, scope: !2074, inlinedAt: !2077)
!2080 = !DILocation(line: 646, column: 10, scope: !2074, inlinedAt: !2077)
!2081 = !DILocation(line: 646, column: 39, scope: !2074, inlinedAt: !2077)
!2082 = !DILocation(line: 744, column: 24, scope: !2078, inlinedAt: !2067)
!2083 = !DILocation(line: 744, column: 7, scope: !2084, inlinedAt: !2067)
!2084 = !DILexicalBlockFile(scope: !2055, file: !3, discriminator: 1)
!2085 = !DILocation(line: 745, column: 5, scope: !2078, inlinedAt: !2067)
!2086 = !DILocation(line: 544, column: 7, scope: !1968, inlinedAt: !2087)
!2087 = distinct !DILocation(line: 747, column: 13, scope: !2055, inlinedAt: !2067)
!2088 = !DILocation(line: 544, column: 12, scope: !1968, inlinedAt: !2087)
!2089 = !DILocation(line: 544, column: 20, scope: !1968, inlinedAt: !2087)
!2090 = !DILocation(line: 544, column: 24, scope: !1975, inlinedAt: !2087)
!2091 = !DILocation(line: 544, column: 7, scope: !1977, inlinedAt: !2087)
!2092 = !DILocation(line: 545, column: 5, scope: !1968, inlinedAt: !2087)
!2093 = !DILocation(line: 545, column: 5, scope: !1975, inlinedAt: !2087)
!2094 = !DILocation(line: 545, column: 5, scope: !1981, inlinedAt: !2087)
!2095 = !DILocation(line: 547, column: 10, scope: !1969, inlinedAt: !2087)
!2096 = !DILocation(line: 547, column: 16, scope: !1969, inlinedAt: !2087)
!2097 = !DILocation(line: 736, column: 13, scope: !2055, inlinedAt: !2067)
!2098 = !DILocation(line: 748, column: 20, scope: !2084, inlinedAt: !2067)
!2099 = !DILocation(line: 748, column: 3, scope: !2084, inlinedAt: !2067)
!2100 = !DILocation(line: 748, column: 17, scope: !2084, inlinedAt: !2067)
!2101 = !DILocation(line: 750, column: 30, scope: !2065, inlinedAt: !2067)
!2102 = !DILocation(line: 750, column: 23, scope: !2065, inlinedAt: !2067)
!2103 = !DILocation(line: 751, column: 16, scope: !2104, inlinedAt: !2067)
!2104 = distinct !DILexicalBlock(scope: !2065, file: !3, line: 751, column: 11)
!2105 = !DILocation(line: 751, column: 11, scope: !2065, inlinedAt: !2067)
!2106 = !DILocation(line: 752, column: 9, scope: !2104, inlinedAt: !2067)
!2107 = !DILocation(line: 753, column: 7, scope: !2065, inlinedAt: !2067)
!2108 = distinct !{!2108, !2109, !2110}
!2109 = !DILocation(line: 748, column: 3, scope: !2055)
!2110 = !DILocation(line: 754, column: 5, scope: !2055)
!2111 = !DILocation(line: 756, column: 3, scope: !2055, inlinedAt: !2067)
!2112 = !DILocation(line: 758, column: 7, scope: !2055, inlinedAt: !2067)
!2113 = !DILocation(line: 759, column: 5, scope: !2114, inlinedAt: !2067)
!2114 = distinct !DILexicalBlock(scope: !2055, file: !3, line: 758, column: 7)
!2115 = !DILocation(line: 646, column: 21, scope: !2074, inlinedAt: !2116)
!2116 = distinct !DILocation(line: 763, column: 7, scope: !2117, inlinedAt: !2067)
!2117 = distinct !DILexicalBlock(scope: !2055, file: !3, line: 763, column: 7)
!2118 = !DILocation(line: 646, column: 34, scope: !2074, inlinedAt: !2116)
!2119 = !DILocation(line: 646, column: 10, scope: !2074, inlinedAt: !2116)
!2120 = !DILocation(line: 646, column: 39, scope: !2074, inlinedAt: !2116)
!2121 = !DILocation(line: 763, column: 24, scope: !2117, inlinedAt: !2067)
!2122 = distinct !{!2122, !2123, !2124}
!2123 = !DILocation(line: 916, column: 11, scope: !2045)
!2124 = !DILocation(line: 918, column: 48, scope: !2045)
!2125 = !DILocation(line: 763, column: 7, scope: !2084, inlinedAt: !2067)
!2126 = !DILocation(line: 764, column: 5, scope: !2117, inlinedAt: !2067)
!2127 = !DILocation(line: 905, column: 34, scope: !2128, inlinedAt: !1798)
!2128 = !DILexicalBlockFile(scope: !1792, file: !3, discriminator: 2)
!2129 = !DILocation(line: 903, column: 10, scope: !1794, inlinedAt: !1798)
!2130 = !DILocation(line: 905, column: 19, scope: !2131, inlinedAt: !1798)
!2131 = !DILexicalBlockFile(scope: !1792, file: !3, discriminator: 1)
!2132 = !DILocation(line: 905, column: 17, scope: !2131, inlinedAt: !1798)
!2133 = !DILocation(line: 905, column: 3, scope: !2134, inlinedAt: !1798)
!2134 = !DILexicalBlockFile(scope: !1793, file: !3, discriminator: 1)
!2135 = distinct !{!2135, !2136, !2137}
!2136 = !DILocation(line: 905, column: 3, scope: !1793)
!2137 = !DILocation(line: 920, column: 5, scope: !1793)
!2138 = !DILocation(line: 922, column: 3, scope: !1794, inlinedAt: !1798)
!2139 = !DILocation(line: 704, column: 18, scope: !1861, inlinedAt: !2140)
!2140 = distinct !DILocation(line: 923, column: 3, scope: !1794, inlinedAt: !1798)
!2141 = !DILocation(line: 702, column: 19, scope: !1862, inlinedAt: !2140)
!2142 = !DILocation(line: 704, column: 34, scope: !1861, inlinedAt: !2140)
!2143 = !DILocation(line: 704, column: 3, scope: !1861, inlinedAt: !2140)
!2144 = !DILocation(line: 705, column: 5, scope: !1862, inlinedAt: !2140)
!2145 = !DILocation(line: 924, column: 3, scope: !1794, inlinedAt: !1798)
!2146 = !DILocation(line: 1471, column: 7, scope: !2147)
!2147 = distinct !DILexicalBlock(scope: !6, file: !3, line: 1471, column: 7)
!2148 = !DILocation(line: 1471, column: 28, scope: !2147)
!2149 = !DILocation(line: 1471, column: 7, scope: !6)
!2150 = !DILocation(line: 1473, column: 17, scope: !2151)
!2151 = distinct !DILexicalBlock(scope: !2147, file: !3, line: 1472, column: 5)
!2152 = !DILocation(line: 1473, column: 24, scope: !2153)
!2153 = !DILexicalBlockFile(scope: !2151, file: !3, discriminator: 1)
!2154 = !DILocation(line: 1473, column: 7, scope: !2155)
!2155 = !DILexicalBlockFile(scope: !2151, file: !3, discriminator: 2)
!2156 = !DILocation(line: 1474, column: 7, scope: !2151)
!2157 = !DILocation(line: 1477, column: 3, scope: !6)
!2158 = !DILocation(line: 1467, column: 3, scope: !6)
!2159 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 1481, type: !35, isDefinition: true, scopeLine: 1482, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !2160)
!2160 = !{!2161}
!2161 = !DILocalVariable(name: "status", arg: 1, scope: !2159, file: !3, line: 1481, type: !9)
!2162 = !DILocation(line: 1481, column: 12, scope: !2159)
!2163 = !DILocation(line: 1483, column: 14, scope: !2164)
!2164 = distinct !DILexicalBlock(scope: !2159, file: !3, line: 1483, column: 7)
!2165 = !DILocation(line: 1483, column: 7, scope: !2159)
!2166 = !DILocation(line: 1484, column: 5, scope: !2167)
!2167 = !DILexicalBlockFile(scope: !2168, file: !3, discriminator: 1)
!2168 = distinct !DILexicalBlock(scope: !2164, file: !3, line: 1484, column: 5)
!2169 = !DILocation(line: 1484, column: 5, scope: !2170)
!2170 = !DILexicalBlockFile(scope: !2168, file: !3, discriminator: 3)
!2171 = !DILocation(line: 1484, column: 5, scope: !2172)
!2172 = !DILexicalBlockFile(scope: !2168, file: !3, discriminator: 2)
!2173 = !DILocation(line: 1487, column: 7, scope: !2174)
!2174 = distinct !DILexicalBlock(scope: !2164, file: !3, line: 1486, column: 5)
!2175 = !DILocation(line: 1487, column: 7, scope: !2176)
!2176 = !DILexicalBlockFile(scope: !2174, file: !3, discriminator: 1)
!2177 = !DILocation(line: 1491, column: 7, scope: !2174)
!2178 = !DILocation(line: 1491, column: 7, scope: !2176)
!2179 = !DILocation(line: 1495, column: 8, scope: !2174)
!2180 = !DILocation(line: 1495, column: 8, scope: !2176)
!2181 = !DILocation(line: 587, column: 3, scope: !2182, inlinedAt: !2183)
!2182 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !422, file: !422, line: 585, type: !128, isLocal: true, isDefinition: true, scopeLine: 586, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !455)
!2183 = distinct !DILocation(line: 1500, column: 7, scope: !2174)
!2184 = !DILocation(line: 587, column: 3, scope: !2185, inlinedAt: !2183)
!2185 = !DILexicalBlockFile(scope: !2182, file: !422, discriminator: 1)
!2186 = !DILocation(line: 1502, column: 7, scope: !2174)
!2187 = !DILocation(line: 1502, column: 7, scope: !2176)
!2188 = !DILocation(line: 1507, column: 7, scope: !2174)
!2189 = !DILocation(line: 1507, column: 7, scope: !2176)
!2190 = !DILocation(line: 1510, column: 7, scope: !2174)
!2191 = !DILocation(line: 1510, column: 7, scope: !2176)
!2192 = !DILocation(line: 1515, column: 7, scope: !2174)
!2193 = !DILocation(line: 1515, column: 7, scope: !2176)
!2194 = !DILocation(line: 1516, column: 7, scope: !2174)
!2195 = !DILocation(line: 1516, column: 7, scope: !2176)
!2196 = !DILocation(line: 1517, column: 7, scope: !2174)
!2197 = !DILocation(line: 1517, column: 7, scope: !2176)
!2198 = !DILocation(line: 642, column: 15, scope: !421, inlinedAt: !2199)
!2199 = distinct !DILocation(line: 1528, column: 7, scope: !2174)
!2200 = !DILocation(line: 651, column: 3, scope: !421, inlinedAt: !2199)
!2201 = !DILocation(line: 651, column: 3, scope: !2202, inlinedAt: !2199)
!2202 = !DILexicalBlockFile(scope: !421, file: !422, discriminator: 1)
!2203 = !DILocation(line: 655, column: 29, scope: !421, inlinedAt: !2199)
!2204 = !DILocation(line: 655, column: 15, scope: !421, inlinedAt: !2199)
!2205 = !DILocation(line: 656, column: 7, scope: !441, inlinedAt: !2199)
!2206 = !DILocation(line: 656, column: 19, scope: !441, inlinedAt: !2199)
!2207 = !DILocation(line: 656, column: 22, scope: !2208, inlinedAt: !2199)
!2208 = !DILexicalBlockFile(scope: !441, file: !422, discriminator: 16)
!2209 = !DILocation(line: 656, column: 7, scope: !2210, inlinedAt: !2199)
!2210 = !DILexicalBlockFile(scope: !421, file: !422, discriminator: 16)
!2211 = !DILocation(line: 662, column: 7, scope: !2212, inlinedAt: !2199)
!2212 = distinct !DILexicalBlock(scope: !441, file: !422, line: 657, column: 5)
!2213 = !DILocation(line: 662, column: 7, scope: !2214, inlinedAt: !2199)
!2214 = !DILexicalBlockFile(scope: !2212, file: !422, discriminator: 1)
!2215 = !DILocation(line: 664, column: 5, scope: !2212, inlinedAt: !2199)
!2216 = !DILocation(line: 665, column: 3, scope: !421, inlinedAt: !2199)
!2217 = !DILocation(line: 665, column: 3, scope: !2202, inlinedAt: !2199)
!2218 = !DILocation(line: 667, column: 3, scope: !421, inlinedAt: !2199)
!2219 = !DILocation(line: 667, column: 3, scope: !2202, inlinedAt: !2199)
!2220 = !DILocation(line: 1530, column: 3, scope: !2159)
!2221 = distinct !DISubprogram(name: "interrupt_handler", scope: !3, file: !3, line: 238, type: !35, isLocal: true, isDefinition: true, scopeLine: 239, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2222)
!2222 = !{!2223}
!2223 = !DILocalVariable(name: "sig", arg: 1, scope: !2221, file: !3, line: 238, type: !9)
!2224 = !DILocation(line: 238, column: 24, scope: !2221)
!2225 = !DILocation(line: 984, column: 24, scope: !1114, inlinedAt: !2226)
!2226 = distinct !DILocation(line: 240, column: 3, scope: !2221)
!2227 = !DILocation(line: 988, column: 9, scope: !1127, inlinedAt: !2226)
!2228 = !DILocation(line: 988, column: 7, scope: !1114, inlinedAt: !2226)
!2229 = !DILocation(line: 986, column: 16, scope: !1114, inlinedAt: !2226)
!2230 = !DILocation(line: 991, column: 19, scope: !1134, inlinedAt: !2226)
!2231 = !DILocation(line: 991, column: 17, scope: !1134, inlinedAt: !2226)
!2232 = !DILocation(line: 991, column: 3, scope: !1137, inlinedAt: !2226)
!2233 = !DILocation(line: 935, column: 29, scope: !1159, inlinedAt: !2234)
!2234 = distinct !DILocation(line: 993, column: 26, scope: !1121, inlinedAt: !2226)
!2235 = !DILocation(line: 937, column: 11, scope: !1159, inlinedAt: !2234)
!2236 = !DILocation(line: 937, column: 27, scope: !1159, inlinedAt: !2234)
!2237 = !DILocation(line: 107, column: 1, scope: !1168, inlinedAt: !2238)
!2238 = distinct !DILocation(line: 937, column: 3, scope: !1159, inlinedAt: !2234)
!2239 = !DILocation(line: 109, column: 49, scope: !1168, inlinedAt: !2238)
!2240 = !DILocation(line: 109, column: 10, scope: !1168, inlinedAt: !2238)
!2241 = !DILocation(line: 938, column: 7, scope: !1181, inlinedAt: !2234)
!2242 = !DILocation(line: 939, column: 5, scope: !1181, inlinedAt: !2234)
!2243 = !DILocation(line: 938, column: 7, scope: !1159, inlinedAt: !2234)
!2244 = !DILocation(line: 939, column: 5, scope: !1185, inlinedAt: !2234)
!2245 = !DILocation(line: 941, column: 5, scope: !1181, inlinedAt: !2234)
!2246 = !DILocation(line: 941, column: 5, scope: !1185, inlinedAt: !2234)
!2247 = !DILocation(line: 942, column: 10, scope: !1159, inlinedAt: !2234)
!2248 = !DILocation(line: 993, column: 19, scope: !1121, inlinedAt: !2226)
!2249 = !DILocation(line: 994, column: 11, scope: !1141, inlinedAt: !2226)
!2250 = !DILocation(line: 991, column: 35, scope: !1151, inlinedAt: !2226)
!2251 = !DILocation(line: 998, column: 17, scope: !1114, inlinedAt: !2226)
!2252 = !DILocation(line: 999, column: 1, scope: !1114, inlinedAt: !2226)
!2253 = !DILocation(line: 241, column: 3, scope: !2221)
!2254 = !DILocation(line: 245, column: 3, scope: !2221)
!2255 = !DILocation(line: 246, column: 1, scope: !2221)
!2256 = distinct !DISubprogram(name: "create_output_file", scope: !3, file: !3, line: 948, type: !128, isLocal: true, isDefinition: true, scopeLine: 949, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2257)
!2257 = !{!2258, !2259, !2260}
!2258 = !DILocalVariable(name: "fopen_ok", scope: !2256, file: !3, line: 950, type: !206)
!2259 = !DILocalVariable(name: "fopen_errno", scope: !2256, file: !3, line: 951, type: !9)
!2260 = !DILocalVariable(name: "oldset", scope: !2261, file: !3, line: 963, type: !449)
!2261 = distinct !DILexicalBlock(scope: !2262, file: !3, line: 961, column: 5)
!2262 = distinct !DILexicalBlock(scope: !2256, file: !3, line: 955, column: 7)
!2263 = !DILocation(line: 953, column: 36, scope: !2256)
!2264 = !DILocation(line: 935, column: 29, scope: !1159, inlinedAt: !2265)
!2265 = distinct !DILocation(line: 953, column: 21, scope: !2256)
!2266 = !DILocation(line: 937, column: 11, scope: !1159, inlinedAt: !2265)
!2267 = !DILocation(line: 937, column: 27, scope: !1159, inlinedAt: !2265)
!2268 = !DILocation(line: 107, column: 1, scope: !1168, inlinedAt: !2269)
!2269 = distinct !DILocation(line: 937, column: 3, scope: !1159, inlinedAt: !2265)
!2270 = !DILocation(line: 109, column: 49, scope: !1168, inlinedAt: !2269)
!2271 = !DILocation(line: 109, column: 10, scope: !1168, inlinedAt: !2269)
!2272 = !DILocation(line: 938, column: 7, scope: !1181, inlinedAt: !2265)
!2273 = !DILocation(line: 939, column: 5, scope: !1181, inlinedAt: !2265)
!2274 = !DILocation(line: 938, column: 7, scope: !1159, inlinedAt: !2265)
!2275 = !DILocation(line: 939, column: 5, scope: !1185, inlinedAt: !2265)
!2276 = !DILocation(line: 941, column: 5, scope: !1181, inlinedAt: !2265)
!2277 = !DILocation(line: 941, column: 5, scope: !1185, inlinedAt: !2265)
!2278 = !DILocation(line: 942, column: 10, scope: !1159, inlinedAt: !2265)
!2279 = !DILocation(line: 953, column: 19, scope: !2256)
!2280 = !DILocation(line: 955, column: 7, scope: !2262)
!2281 = !DILocation(line: 955, column: 21, scope: !2262)
!2282 = !DILocation(line: 955, column: 7, scope: !2256)
!2283 = !DILocation(line: 963, column: 7, scope: !2261)
!2284 = !DILocation(line: 963, column: 16, scope: !2261)
!2285 = !DILocation(line: 964, column: 7, scope: !2261)
!2286 = !DILocation(line: 965, column: 30, scope: !2261)
!2287 = !DILocation(line: 965, column: 23, scope: !2261)
!2288 = !DILocation(line: 965, column: 21, scope: !2261)
!2289 = !DILocation(line: 966, column: 33, scope: !2261)
!2290 = !DILocation(line: 967, column: 21, scope: !2261)
!2291 = !DILocation(line: 951, column: 7, scope: !2256)
!2292 = !DILocation(line: 968, column: 24, scope: !2261)
!2293 = !DILocation(line: 968, column: 21, scope: !2261)
!2294 = !DILocation(line: 969, column: 7, scope: !2261)
!2295 = !DILocation(line: 970, column: 5, scope: !2262)
!2296 = !DILocation(line: 972, column: 7, scope: !2256)
!2297 = !DILocation(line: 974, column: 36, scope: !2298)
!2298 = distinct !DILexicalBlock(scope: !2299, file: !3, line: 973, column: 5)
!2299 = distinct !DILexicalBlock(scope: !2256, file: !3, line: 972, column: 7)
!2300 = !DILocation(line: 974, column: 7, scope: !2301)
!2301 = !DILexicalBlockFile(scope: !2298, file: !3, discriminator: 1)
!2302 = !DILocation(line: 975, column: 7, scope: !2298)
!2303 = !DILocation(line: 977, column: 17, scope: !2256)
!2304 = !DILocation(line: 978, column: 1, scope: !2256)
!2305 = !DILocation(line: 565, column: 7, scope: !2306)
!2306 = distinct !DILexicalBlock(scope: !375, file: !3, line: 565, column: 7)
!2307 = !DILocation(line: 565, column: 7, scope: !375)
!2308 = !DILocalVariable(name: "buf", arg: 1, scope: !2309, file: !3, line: 433, type: !397)
!2309 = distinct !DISubprogram(name: "free_buffer", scope: !3, file: !3, line: 433, type: !2310, isLocal: true, isDefinition: true, scopeLine: 434, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2312)
!2310 = !DISubroutineType(types: !2311)
!2311 = !{null, !397}
!2312 = !{!2308, !2313, !2314}
!2313 = !DILocalVariable(name: "l", scope: !2309, file: !3, line: 435, type: !386)
!2314 = !DILocalVariable(name: "n", scope: !2315, file: !3, line: 438, type: !386)
!2315 = distinct !DILexicalBlock(scope: !2316, file: !3, line: 437, column: 5)
!2316 = distinct !DILexicalBlock(scope: !2317, file: !3, line: 436, column: 3)
!2317 = distinct !DILexicalBlock(scope: !2309, file: !3, line: 436, column: 3)
!2318 = !DILocation(line: 433, column: 36, scope: !2309, inlinedAt: !2319)
!2319 = distinct !DILocation(line: 567, column: 7, scope: !2320)
!2320 = distinct !DILexicalBlock(scope: !2306, file: !3, line: 566, column: 5)
!2321 = !DILocation(line: 436, column: 17, scope: !2317, inlinedAt: !2319)
!2322 = !{!1985, !1033, i64 48}
!2323 = !DILocation(line: 435, column: 16, scope: !2309, inlinedAt: !2319)
!2324 = !DILocation(line: 436, column: 3, scope: !2325, inlinedAt: !2319)
!2325 = !DILexicalBlockFile(scope: !2317, file: !3, discriminator: 1)
!2326 = !DILocation(line: 438, column: 27, scope: !2315, inlinedAt: !2319)
!2327 = !{!2328, !1033, i64 1304}
!2328 = !{!"line", !1051, i64 0, !1051, i64 8, !1051, i64 16, !1034, i64 24, !1033, i64 1304}
!2329 = !DILocation(line: 438, column: 20, scope: !2315, inlinedAt: !2319)
!2330 = !DILocation(line: 439, column: 7, scope: !2315, inlinedAt: !2319)
!2331 = distinct !{!2331, !2332, !2333}
!2332 = !DILocation(line: 436, column: 3, scope: !2317)
!2333 = !DILocation(line: 441, column: 5, scope: !2317)
!2334 = !DILocation(line: 442, column: 19, scope: !2309, inlinedAt: !2319)
!2335 = !DILocation(line: 443, column: 14, scope: !2309, inlinedAt: !2319)
!2336 = !{!1985, !1033, i64 40}
!2337 = !DILocation(line: 443, column: 3, scope: !2309, inlinedAt: !2319)
!2338 = !DILocation(line: 444, column: 15, scope: !2309, inlinedAt: !2319)
!2339 = !DILocation(line: 568, column: 13, scope: !2320)
!2340 = !DILocation(line: 568, column: 7, scope: !2320)
!2341 = !DILocation(line: 569, column: 16, scope: !2320)
!2342 = !DILocation(line: 570, column: 5, scope: !2320)
!2343 = !DILocation(line: 572, column: 7, scope: !2344)
!2344 = distinct !DILexicalBlock(scope: !375, file: !3, line: 572, column: 7)
!2345 = !DILocation(line: 572, column: 12, scope: !2344)
!2346 = !DILocation(line: 572, column: 20, scope: !2344)
!2347 = !DILocation(line: 572, column: 24, scope: !2348)
!2348 = !DILexicalBlockFile(scope: !2344, file: !3, discriminator: 1)
!2349 = !DILocation(line: 572, column: 7, scope: !2350)
!2350 = !DILexicalBlockFile(scope: !375, file: !3, discriminator: 1)
!2351 = !DILocation(line: 594, column: 22, scope: !2352)
!2352 = distinct !DILexicalBlock(scope: !2353, file: !3, line: 590, column: 9)
!2353 = distinct !DILexicalBlock(scope: !2354, file: !3, line: 589, column: 11)
!2354 = distinct !DILexicalBlock(scope: !2355, file: !3, line: 586, column: 5)
!2355 = distinct !DILexicalBlock(scope: !375, file: !3, line: 585, column: 7)
!2356 = !DILocation(line: 575, column: 7, scope: !2357)
!2357 = distinct !DILexicalBlock(scope: !375, file: !3, line: 575, column: 7)
!2358 = !DILocation(line: 575, column: 28, scope: !2357)
!2359 = !DILocation(line: 575, column: 20, scope: !2357)
!2360 = !DILocation(line: 575, column: 7, scope: !375)
!2361 = !DILocation(line: 576, column: 18, scope: !2357)
!2362 = !DILocation(line: 576, column: 5, scope: !2357)
!2363 = !DILocation(line: 578, column: 3, scope: !375)
!2364 = !DILocation(line: 580, column: 13, scope: !375)
!2365 = !{!1985, !1033, i64 56}
!2366 = !DILocation(line: 563, column: 16, scope: !375)
!2367 = !DILocation(line: 582, column: 24, scope: !375)
!2368 = !{!2328, !1051, i64 16}
!2369 = !DILocation(line: 582, column: 11, scope: !375)
!2370 = !DILocation(line: 562, column: 19, scope: !375)
!2371 = !DILocation(line: 585, column: 7, scope: !2355)
!2372 = !DILocation(line: 585, column: 33, scope: !2355)
!2373 = !{!2328, !1051, i64 0}
!2374 = !DILocation(line: 585, column: 27, scope: !2355)
!2375 = !DILocation(line: 585, column: 7, scope: !375)
!2376 = !DILocation(line: 588, column: 28, scope: !2354)
!2377 = !DILocation(line: 588, column: 23, scope: !2354)
!2378 = !DILocation(line: 589, column: 27, scope: !2353)
!2379 = !DILocation(line: 589, column: 35, scope: !2353)
!2380 = !DILocation(line: 589, column: 17, scope: !2353)
!2381 = !DILocation(line: 589, column: 55, scope: !2382)
!2382 = !DILexicalBlockFile(scope: !2353, file: !3, discriminator: 1)
!2383 = !DILocation(line: 589, column: 60, scope: !2382)
!2384 = !DILocation(line: 589, column: 11, scope: !2385)
!2385 = !DILexicalBlockFile(scope: !2354, file: !3, discriminator: 1)
!2386 = !DILocation(line: 594, column: 20, scope: !2352)
!2387 = !DILocation(line: 595, column: 24, scope: !2352)
!2388 = !{!1985, !1033, i64 64}
!2389 = !DILocation(line: 595, column: 16, scope: !2352)
!2390 = !DILocation(line: 596, column: 9, scope: !2352)
!2391 = !DILocation(line: 600, column: 1, scope: !375)
!2392 = distinct !DISubprogram(name: "find_line", scope: !3, file: !3, line: 606, type: !2393, isLocal: true, isDefinition: true, scopeLine: 607, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2395)
!2393 = !DISubroutineType(types: !2394)
!2394 = !{!378, !224}
!2395 = !{!2396, !2397, !2398, !2404}
!2396 = !DILocalVariable(name: "linenum", arg: 1, scope: !2392, file: !3, line: 606, type: !224)
!2397 = !DILocalVariable(name: "b", scope: !2392, file: !3, line: 608, type: !397)
!2398 = !DILocalVariable(name: "l", scope: !2399, file: !3, line: 622, type: !386)
!2399 = distinct !DILexicalBlock(scope: !2400, file: !3, line: 620, column: 9)
!2400 = distinct !DILexicalBlock(scope: !2401, file: !3, line: 619, column: 11)
!2401 = distinct !DILexicalBlock(scope: !2402, file: !3, line: 617, column: 5)
!2402 = distinct !DILexicalBlock(scope: !2403, file: !3, line: 616, column: 3)
!2403 = distinct !DILexicalBlock(scope: !2392, file: !3, line: 616, column: 3)
!2404 = !DILocalVariable(name: "offset", scope: !2399, file: !3, line: 623, type: !18)
!2405 = !DILocation(line: 606, column: 22, scope: !2392)
!2406 = !DILocation(line: 610, column: 7, scope: !2407)
!2407 = distinct !DILexicalBlock(scope: !2392, file: !3, line: 610, column: 7)
!2408 = !DILocation(line: 610, column: 12, scope: !2407)
!2409 = !DILocation(line: 610, column: 20, scope: !2407)
!2410 = !DILocation(line: 610, column: 24, scope: !2411)
!2411 = !DILexicalBlockFile(scope: !2407, file: !3, discriminator: 1)
!2412 = !DILocation(line: 610, column: 7, scope: !2413)
!2413 = !DILexicalBlockFile(scope: !2392, file: !3, discriminator: 1)
!2414 = !DILocation(line: 613, column: 17, scope: !2415)
!2415 = distinct !DILexicalBlock(scope: !2392, file: !3, line: 613, column: 7)
!2416 = !DILocation(line: 613, column: 23, scope: !2415)
!2417 = !{!1985, !1051, i64 16}
!2418 = !DILocation(line: 613, column: 15, scope: !2415)
!2419 = !DILocation(line: 613, column: 7, scope: !2392)
!2420 = !DILocation(line: 608, column: 25, scope: !2392)
!2421 = !DILocation(line: 618, column: 7, scope: !2422)
!2422 = distinct !DILexicalBlock(scope: !2423, file: !3, line: 618, column: 7)
!2423 = distinct !DILexicalBlock(scope: !2401, file: !3, line: 618, column: 7)
!2424 = !DILocation(line: 618, column: 7, scope: !2423)
!2425 = !DILocation(line: 619, column: 40, scope: !2400)
!2426 = !{!1985, !1051, i64 32}
!2427 = !DILocation(line: 619, column: 35, scope: !2400)
!2428 = !DILocation(line: 619, column: 19, scope: !2400)
!2429 = !DILocation(line: 619, column: 11, scope: !2401)
!2430 = !DILocation(line: 635, column: 14, scope: !2431)
!2431 = distinct !DILexicalBlock(scope: !2401, file: !3, line: 635, column: 11)
!2432 = !DILocation(line: 618, column: 7, scope: !2433)
!2433 = !DILexicalBlockFile(scope: !2422, file: !3, discriminator: 2)
!2434 = !DILocation(line: 625, column: 18, scope: !2399)
!2435 = !DILocation(line: 626, column: 28, scope: !2399)
!2436 = !DILocation(line: 623, column: 18, scope: !2399)
!2437 = !DILocation(line: 622, column: 24, scope: !2399)
!2438 = !DILocation(line: 628, column: 25, scope: !2439)
!2439 = !DILexicalBlockFile(scope: !2399, file: !3, discriminator: 1)
!2440 = !DILocation(line: 628, column: 11, scope: !2439)
!2441 = !DILocation(line: 630, column: 22, scope: !2442)
!2442 = distinct !DILexicalBlock(scope: !2399, file: !3, line: 629, column: 13)
!2443 = !DILocation(line: 631, column: 22, scope: !2442)
!2444 = distinct !{!2444, !2445, !2446}
!2445 = !DILocation(line: 628, column: 11, scope: !2399)
!2446 = !DILocation(line: 632, column: 13, scope: !2399)
!2447 = !DILocation(line: 633, column: 19, scope: !2399)
!2448 = !DILocation(line: 635, column: 19, scope: !2431)
!2449 = !DILocation(line: 635, column: 27, scope: !2431)
!2450 = !DILocation(line: 635, column: 31, scope: !2451)
!2451 = !DILexicalBlockFile(scope: !2431, file: !3, discriminator: 1)
!2452 = !DILocation(line: 635, column: 11, scope: !2453)
!2453 = !DILexicalBlockFile(scope: !2401, file: !3, discriminator: 1)
!2454 = distinct !{!2454, !2455, !2456}
!2455 = !DILocation(line: 616, column: 3, scope: !2403)
!2456 = !DILocation(line: 638, column: 5, scope: !2403)
!2457 = !DILocation(line: 639, column: 1, scope: !2392)
!2458 = distinct !DISubprogram(name: "save_line_to_file", scope: !3, file: !3, line: 1053, type: !2459, isLocal: true, isDefinition: true, scopeLine: 1054, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2463)
!2459 = !DISubroutineType(types: !2460)
!2460 = !{null, !2461}
!2461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2462, size: 64)
!2462 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !379)
!2463 = !{!2464, !2465}
!2464 = !DILocalVariable(name: "line", arg: 1, scope: !2458, file: !3, line: 1053, type: !2461)
!2465 = !DILocalVariable(name: "l", scope: !2458, file: !3, line: 1055, type: !18)
!2466 = !DILocation(line: 1053, column: 42, scope: !2458)
!2467 = !DILocation(line: 1055, column: 14, scope: !2458)
!2468 = !DILocation(line: 1055, column: 10, scope: !2458)
!2469 = !DILocation(line: 1056, column: 18, scope: !2470)
!2470 = distinct !DILexicalBlock(scope: !2458, file: !3, line: 1056, column: 7)
!2471 = !DILocation(line: 1056, column: 9, scope: !2470)
!2472 = !DILocation(line: 1056, column: 7, scope: !2458)
!2473 = !DILocation(line: 1058, column: 17, scope: !2474)
!2474 = distinct !DILexicalBlock(scope: !2470, file: !3, line: 1057, column: 5)
!2475 = !DILocation(line: 1058, column: 24, scope: !2476)
!2476 = !DILexicalBlockFile(scope: !2474, file: !3, discriminator: 1)
!2477 = !DILocation(line: 1058, column: 49, scope: !2474)
!2478 = !DILocation(line: 1058, column: 49, scope: !2479)
!2479 = !DILexicalBlockFile(scope: !2474, file: !3, discriminator: 2)
!2480 = !DILocation(line: 1058, column: 7, scope: !2481)
!2481 = !DILexicalBlockFile(scope: !2474, file: !3, discriminator: 3)
!2482 = !DILocation(line: 1059, column: 21, scope: !2474)
!2483 = !DILocation(line: 1060, column: 7, scope: !2474)
!2484 = !DILocation(line: 1062, column: 17, scope: !2458)
!2485 = !DILocation(line: 1063, column: 1, scope: !2458)
!2486 = distinct !DISubprogram(name: "regexp_error", scope: !3, file: !3, line: 769, type: !2487, isLocal: true, isDefinition: true, scopeLine: 770, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !2489)
!2487 = !DISubroutineType(types: !2488)
!2488 = !{null, !216, !224, !206}
!2489 = !{!2490, !2491, !2492, !2493}
!2490 = !DILocalVariable(name: "p", arg: 1, scope: !2486, file: !3, line: 769, type: !216)
!2491 = !DILocalVariable(name: "repetition", arg: 2, scope: !2486, file: !3, line: 769, type: !224)
!2492 = !DILocalVariable(name: "ignore", arg: 3, scope: !2486, file: !3, line: 769, type: !206)
!2493 = !DILocalVariable(name: "buf", scope: !2494, file: !3, line: 776, type: !361)
!2494 = distinct !DILexicalBlock(scope: !2495, file: !3, line: 775, column: 5)
!2495 = distinct !DILexicalBlock(scope: !2486, file: !3, line: 774, column: 7)
!2496 = !DILocation(line: 769, column: 31, scope: !2486)
!2497 = !DILocation(line: 769, column: 44, scope: !2486)
!2498 = !DILocation(line: 769, column: 61, scope: !2486)
!2499 = !DILocation(line: 771, column: 3, scope: !2486)
!2500 = !DILocation(line: 771, column: 3, scope: !2501)
!2501 = !DILexicalBlockFile(scope: !2486, file: !3, discriminator: 1)
!2502 = !DILocation(line: 771, column: 3, scope: !2503)
!2503 = !DILexicalBlockFile(scope: !2486, file: !3, discriminator: 2)
!2504 = !DILocation(line: 774, column: 7, scope: !2495)
!2505 = !DILocation(line: 774, column: 7, scope: !2486)
!2506 = !DILocation(line: 776, column: 7, scope: !2494)
!2507 = !DILocation(line: 776, column: 12, scope: !2494)
!2508 = !DILocation(line: 777, column: 7, scope: !2494)
!2509 = !DILocation(line: 777, column: 7, scope: !2510)
!2510 = !DILexicalBlockFile(scope: !2494, file: !3, discriminator: 1)
!2511 = !DILocation(line: 777, column: 7, scope: !2512)
!2512 = !DILexicalBlockFile(scope: !2494, file: !3, discriminator: 2)
!2513 = !DILocation(line: 778, column: 5, scope: !2495)
!2514 = !DILocation(line: 778, column: 5, scope: !2494)
!2515 = !DILocation(line: 780, column: 5, scope: !2495)
!2516 = !DILocation(line: 782, column: 7, scope: !2486)
!2517 = !DILocation(line: 704, column: 18, scope: !1861, inlinedAt: !2518)
!2518 = distinct !DILocation(line: 784, column: 7, scope: !2519)
!2519 = distinct !DILexicalBlock(scope: !2520, file: !3, line: 783, column: 5)
!2520 = distinct !DILexicalBlock(scope: !2486, file: !3, line: 782, column: 7)
!2521 = !DILocation(line: 702, column: 19, scope: !1862, inlinedAt: !2518)
!2522 = !DILocation(line: 704, column: 34, scope: !1861, inlinedAt: !2518)
!2523 = !DILocation(line: 704, column: 3, scope: !1861, inlinedAt: !2518)
!2524 = !DILocation(line: 705, column: 5, scope: !1862, inlinedAt: !2518)
!2525 = !DILocation(line: 785, column: 7, scope: !2519)
!2526 = !DILocation(line: 786, column: 5, scope: !2519)
!2527 = !DILocation(line: 787, column: 3, scope: !2486)
!2528 = distinct !DISubprogram(name: "load_buffer", scope: !3, file: !3, line: 482, type: !2075, isLocal: true, isDefinition: true, scopeLine: 483, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2529)
!2529 = !{!2530, !2531, !2532, !2533, !2534}
!2530 = !DILocalVariable(name: "b", scope: !2528, file: !3, line: 484, type: !397)
!2531 = !DILocalVariable(name: "bytes_wanted", scope: !2528, file: !3, line: 485, type: !18)
!2532 = !DILocalVariable(name: "bytes_avail", scope: !2528, file: !3, line: 486, type: !18)
!2533 = !DILocalVariable(name: "lines_found", scope: !2528, file: !3, line: 487, type: !18)
!2534 = !DILocalVariable(name: "p", scope: !2528, file: !3, line: 488, type: !11)
!2535 = !DILocation(line: 485, column: 10, scope: !2528)
!2536 = !DILocation(line: 490, column: 7, scope: !2528)
!2537 = !DILocation(line: 495, column: 22, scope: !2538)
!2538 = distinct !DILexicalBlock(scope: !2528, file: !3, line: 495, column: 7)
!2539 = !DILocation(line: 495, column: 20, scope: !2538)
!2540 = !DILocalVariable(name: "min_size", arg: 1, scope: !2541, file: !3, line: 410, type: !18)
!2541 = distinct !DISubprogram(name: "get_new_buffer", scope: !3, file: !3, line: 410, type: !2542, isLocal: true, isDefinition: true, scopeLine: 411, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2544)
!2542 = !DISubroutineType(types: !2543)
!2543 = !{!397, !18}
!2544 = !{!2540, !2545, !2546, !2547}
!2545 = !DILocalVariable(name: "new_buffer", scope: !2541, file: !3, line: 412, type: !397)
!2546 = !DILocalVariable(name: "alloc_size", scope: !2541, file: !3, line: 413, type: !18)
!2547 = !DILocalVariable(name: "s", scope: !2548, file: !3, line: 418, type: !18)
!2548 = distinct !DILexicalBlock(scope: !2549, file: !3, line: 417, column: 5)
!2549 = distinct !DILexicalBlock(scope: !2541, file: !3, line: 416, column: 7)
!2550 = !DILocation(line: 410, column: 24, scope: !2541, inlinedAt: !2551)
!2551 = distinct !DILocation(line: 500, column: 11, scope: !2552)
!2552 = distinct !DILexicalBlock(scope: !2528, file: !3, line: 499, column: 5)
!2553 = !DILocation(line: 413, column: 10, scope: !2541, inlinedAt: !2551)
!2554 = !DILocation(line: 416, column: 18, scope: !2549, inlinedAt: !2551)
!2555 = !DILocation(line: 416, column: 7, scope: !2541, inlinedAt: !2551)
!2556 = !DILocation(line: 418, column: 52, scope: !2548, inlinedAt: !2551)
!2557 = !DILocation(line: 418, column: 14, scope: !2548, inlinedAt: !2551)
!2558 = !DILocation(line: 419, column: 23, scope: !2548, inlinedAt: !2551)
!2559 = !DILocation(line: 419, column: 18, scope: !2548, inlinedAt: !2551)
!2560 = !DILocation(line: 420, column: 5, scope: !2548, inlinedAt: !2551)
!2561 = !DILocalVariable(name: "size", arg: 1, scope: !2562, file: !3, line: 394, type: !18)
!2562 = distinct !DISubprogram(name: "create_new_buffer", scope: !3, file: !3, line: 394, type: !2542, isLocal: true, isDefinition: true, scopeLine: 395, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2563)
!2563 = !{!2561, !2564}
!2564 = !DILocalVariable(name: "new_buffer", scope: !2562, file: !3, line: 396, type: !397)
!2565 = !DILocation(line: 394, column: 27, scope: !2562, inlinedAt: !2566)
!2566 = distinct !DILocation(line: 422, column: 16, scope: !2541, inlinedAt: !2551)
!2567 = !DILocation(line: 396, column: 38, scope: !2562, inlinedAt: !2566)
!2568 = !DILocation(line: 398, column: 38, scope: !2562, inlinedAt: !2566)
!2569 = !DILocation(line: 398, column: 24, scope: !2562, inlinedAt: !2566)
!2570 = !DILocation(line: 398, column: 15, scope: !2562, inlinedAt: !2566)
!2571 = !DILocation(line: 398, column: 22, scope: !2562, inlinedAt: !2566)
!2572 = !DILocation(line: 400, column: 15, scope: !2562, inlinedAt: !2566)
!2573 = !DILocation(line: 400, column: 27, scope: !2562, inlinedAt: !2566)
!2574 = !{!1985, !1051, i64 0}
!2575 = !DILocation(line: 401, column: 15, scope: !2562, inlinedAt: !2566)
!2576 = !DILocation(line: 401, column: 26, scope: !2562, inlinedAt: !2566)
!2577 = !DILocation(line: 424, column: 15, scope: !2541, inlinedAt: !2551)
!2578 = !DILocation(line: 424, column: 25, scope: !2541, inlinedAt: !2551)
!2579 = !DILocation(line: 425, column: 15, scope: !2541, inlinedAt: !2551)
!2580 = !DILocation(line: 425, column: 26, scope: !2541, inlinedAt: !2551)
!2581 = !{!1985, !1051, i64 8}
!2582 = !DILocation(line: 426, column: 58, scope: !2541, inlinedAt: !2551)
!2583 = !DILocation(line: 426, column: 75, scope: !2541, inlinedAt: !2551)
!2584 = !DILocation(line: 426, column: 40, scope: !2541, inlinedAt: !2551)
!2585 = !DILocation(line: 426, column: 56, scope: !2541, inlinedAt: !2551)
!2586 = !DILocation(line: 426, column: 15, scope: !2541, inlinedAt: !2551)
!2587 = !DILocation(line: 426, column: 26, scope: !2541, inlinedAt: !2551)
!2588 = !DILocation(line: 427, column: 15, scope: !2541, inlinedAt: !2551)
!2589 = !DILocation(line: 427, column: 20, scope: !2541, inlinedAt: !2551)
!2590 = !DILocation(line: 486, column: 10, scope: !2528)
!2591 = !DILocation(line: 488, column: 9, scope: !2528)
!2592 = !DILocation(line: 505, column: 11, scope: !2593)
!2593 = distinct !DILexicalBlock(scope: !2552, file: !3, line: 505, column: 11)
!2594 = !DILocation(line: 505, column: 11, scope: !2552)
!2595 = !DILocation(line: 507, column: 22, scope: !2596)
!2596 = distinct !DILexicalBlock(scope: !2593, file: !3, line: 506, column: 9)
!2597 = !DILocation(line: 507, column: 11, scope: !2596)
!2598 = !DILocation(line: 508, column: 13, scope: !2596)
!2599 = !DILocation(line: 509, column: 25, scope: !2596)
!2600 = !DILocation(line: 510, column: 23, scope: !2596)
!2601 = !DILocation(line: 511, column: 22, scope: !2596)
!2602 = !DILocalVariable(name: "dest", arg: 1, scope: !2603, file: !3, line: 263, type: !11)
!2603 = distinct !DISubprogram(name: "read_input", scope: !3, file: !3, line: 263, type: !2604, isLocal: true, isDefinition: true, scopeLine: 264, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2606)
!2604 = !DISubroutineType(types: !2605)
!2605 = !{!18, !11, !18}
!2606 = !{!2602, !2607, !2608}
!2607 = !DILocalVariable(name: "max_n_bytes", arg: 2, scope: !2603, file: !3, line: 263, type: !18)
!2608 = !DILocalVariable(name: "bytes_read", scope: !2603, file: !3, line: 265, type: !18)
!2609 = !DILocation(line: 263, column: 19, scope: !2603, inlinedAt: !2610)
!2610 = distinct !DILocation(line: 514, column: 24, scope: !2552)
!2611 = !DILocation(line: 263, column: 32, scope: !2603, inlinedAt: !2610)
!2612 = !DILocation(line: 267, column: 19, scope: !2613, inlinedAt: !2610)
!2613 = distinct !DILexicalBlock(scope: !2603, file: !3, line: 267, column: 7)
!2614 = !DILocation(line: 267, column: 7, scope: !2603, inlinedAt: !2610)
!2615 = !DILocation(line: 270, column: 16, scope: !2603, inlinedAt: !2610)
!2616 = !DILocation(line: 265, column: 10, scope: !2603, inlinedAt: !2610)
!2617 = !DILocation(line: 272, column: 7, scope: !2603, inlinedAt: !2610)
!2618 = !DILocation(line: 275, column: 7, scope: !2603, inlinedAt: !2610)
!2619 = !DILocation(line: 277, column: 17, scope: !2620, inlinedAt: !2610)
!2620 = distinct !DILexicalBlock(scope: !2621, file: !3, line: 276, column: 5)
!2621 = distinct !DILexicalBlock(scope: !2603, file: !3, line: 275, column: 7)
!2622 = !DILocation(line: 277, column: 24, scope: !2623, inlinedAt: !2610)
!2623 = !DILexicalBlockFile(scope: !2620, file: !3, discriminator: 1)
!2624 = !DILocation(line: 277, column: 7, scope: !2625, inlinedAt: !2610)
!2625 = !DILexicalBlockFile(scope: !2620, file: !3, discriminator: 2)
!2626 = !DILocation(line: 278, column: 7, scope: !2620, inlinedAt: !2610)
!2627 = !DILocation(line: 514, column: 21, scope: !2552)
!2628 = !DILocation(line: 352, column: 21, scope: !2629, inlinedAt: !2640)
!2629 = distinct !DILexicalBlock(scope: !2630, file: !3, line: 352, column: 7)
!2630 = distinct !DISubprogram(name: "record_line_starts", scope: !3, file: !3, line: 344, type: !2631, isLocal: true, isDefinition: true, scopeLine: 345, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2633)
!2631 = !DISubroutineType(types: !2632)
!2632 = !{!18, !397}
!2633 = !{!2634, !2635, !2636, !2637, !2638, !2639}
!2634 = !DILocalVariable(name: "b", arg: 1, scope: !2630, file: !3, line: 344, type: !397)
!2635 = !DILocalVariable(name: "line_start", scope: !2630, file: !3, line: 346, type: !11)
!2636 = !DILocalVariable(name: "line_end", scope: !2630, file: !3, line: 347, type: !11)
!2637 = !DILocalVariable(name: "bytes_left", scope: !2630, file: !3, line: 348, type: !18)
!2638 = !DILocalVariable(name: "lines", scope: !2630, file: !3, line: 349, type: !18)
!2639 = !DILocalVariable(name: "line_length", scope: !2630, file: !3, line: 350, type: !18)
!2640 = distinct !DILocation(line: 516, column: 21, scope: !2552)
!2641 = !DILocation(line: 352, column: 7, scope: !2630, inlinedAt: !2640)
!2642 = !DILocation(line: 349, column: 10, scope: !2630, inlinedAt: !2640)
!2643 = !DILocation(line: 356, column: 19, scope: !2630, inlinedAt: !2640)
!2644 = !DILocation(line: 346, column: 9, scope: !2630, inlinedAt: !2640)
!2645 = !DILocation(line: 348, column: 10, scope: !2630, inlinedAt: !2640)
!2646 = !DILocation(line: 361, column: 18, scope: !2647, inlinedAt: !2640)
!2647 = distinct !DILexicalBlock(scope: !2630, file: !3, line: 360, column: 5)
!2648 = !DILocation(line: 347, column: 9, scope: !2630, inlinedAt: !2640)
!2649 = !DILocation(line: 362, column: 20, scope: !2650, inlinedAt: !2640)
!2650 = distinct !DILexicalBlock(scope: !2647, file: !3, line: 362, column: 11)
!2651 = !DILocation(line: 362, column: 11, scope: !2647, inlinedAt: !2640)
!2652 = !DILocation(line: 364, column: 30, scope: !2647, inlinedAt: !2640)
!2653 = !DILocation(line: 364, column: 43, scope: !2647, inlinedAt: !2640)
!2654 = !DILocation(line: 350, column: 10, scope: !2630, inlinedAt: !2640)
!2655 = !DILocalVariable(name: "line_start", arg: 2, scope: !2656, file: !3, line: 311, type: !11)
!2656 = distinct !DISubprogram(name: "keep_new_line", scope: !3, file: !3, line: 311, type: !2657, isLocal: true, isDefinition: true, scopeLine: 312, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2659)
!2657 = !DISubroutineType(types: !2658)
!2658 = !{null, !397, !11, !18}
!2659 = !{!2660, !2655, !2661, !2662}
!2660 = !DILocalVariable(name: "b", arg: 1, scope: !2656, file: !3, line: 311, type: !397)
!2661 = !DILocalVariable(name: "line_len", arg: 3, scope: !2656, file: !3, line: 311, type: !18)
!2662 = !DILocalVariable(name: "l", scope: !2656, file: !3, line: 313, type: !386)
!2663 = !DILocation(line: 311, column: 47, scope: !2656, inlinedAt: !2664)
!2664 = distinct !DILocation(line: 365, column: 7, scope: !2647, inlinedAt: !2640)
!2665 = !DILocation(line: 311, column: 66, scope: !2656, inlinedAt: !2664)
!2666 = !DILocation(line: 316, column: 10, scope: !2667, inlinedAt: !2664)
!2667 = distinct !DILexicalBlock(scope: !2656, file: !3, line: 316, column: 7)
!2668 = !DILocation(line: 316, column: 21, scope: !2667, inlinedAt: !2664)
!2669 = !DILocation(line: 316, column: 7, scope: !2656, inlinedAt: !2664)
!2670 = !DILocation(line: 299, column: 20, scope: !2671, inlinedAt: !2676)
!2671 = distinct !DISubprogram(name: "new_line_control", scope: !3, file: !3, line: 297, type: !2672, isLocal: true, isDefinition: true, scopeLine: 298, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2674)
!2672 = !DISubroutineType(types: !2673)
!2673 = !{!386}
!2674 = !{!2675}
!2675 = !DILocalVariable(name: "p", scope: !2671, file: !3, line: 299, type: !386)
!2676 = distinct !DILocation(line: 317, column: 36, scope: !2667, inlinedAt: !2664)
!2677 = !DILocation(line: 301, column: 6, scope: !2671, inlinedAt: !2676)
!2678 = !DILocation(line: 301, column: 11, scope: !2671, inlinedAt: !2676)
!2679 = !DILocation(line: 290, column: 19, scope: !2680, inlinedAt: !2685)
!2680 = distinct !DISubprogram(name: "clear_line_control", scope: !3, file: !3, line: 287, type: !2681, isLocal: true, isDefinition: true, scopeLine: 288, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2683)
!2681 = !DISubroutineType(types: !2682)
!2682 = !{null, !386}
!2683 = !{!2684}
!2684 = !DILocalVariable(name: "p", arg: 1, scope: !2680, file: !3, line: 287, type: !386)
!2685 = distinct !DILocation(line: 302, column: 3, scope: !2671, inlinedAt: !2676)
!2686 = !DILocation(line: 317, column: 34, scope: !2667, inlinedAt: !2664)
!2687 = !DILocation(line: 317, column: 19, scope: !2667, inlinedAt: !2664)
!2688 = !DILocation(line: 317, column: 5, scope: !2667, inlinedAt: !2664)
!2689 = !DILocation(line: 320, column: 21, scope: !2690, inlinedAt: !2664)
!2690 = distinct !DILexicalBlock(scope: !2656, file: !3, line: 320, column: 7)
!2691 = !DILocation(line: 320, column: 26, scope: !2690, inlinedAt: !2664)
!2692 = !DILocation(line: 320, column: 7, scope: !2656, inlinedAt: !2664)
!2693 = !DILocation(line: 299, column: 20, scope: !2671, inlinedAt: !2694)
!2694 = distinct !DILocation(line: 322, column: 28, scope: !2695, inlinedAt: !2664)
!2695 = distinct !DILexicalBlock(scope: !2690, file: !3, line: 321, column: 5)
!2696 = !DILocation(line: 301, column: 6, scope: !2671, inlinedAt: !2694)
!2697 = !DILocation(line: 301, column: 11, scope: !2671, inlinedAt: !2694)
!2698 = !DILocation(line: 290, column: 19, scope: !2680, inlinedAt: !2699)
!2699 = distinct !DILocation(line: 302, column: 3, scope: !2671, inlinedAt: !2694)
!2700 = !DILocation(line: 322, column: 10, scope: !2695, inlinedAt: !2664)
!2701 = !DILocation(line: 322, column: 21, scope: !2695, inlinedAt: !2664)
!2702 = !DILocation(line: 322, column: 26, scope: !2695, inlinedAt: !2664)
!2703 = !DILocation(line: 323, column: 36, scope: !2695, inlinedAt: !2664)
!2704 = !DILocation(line: 323, column: 20, scope: !2695, inlinedAt: !2664)
!2705 = !DILocation(line: 324, column: 5, scope: !2695, inlinedAt: !2664)
!2706 = !DILocation(line: 326, column: 10, scope: !2656, inlinedAt: !2664)
!2707 = !DILocation(line: 313, column: 16, scope: !2656, inlinedAt: !2664)
!2708 = !DILocation(line: 329, column: 16, scope: !2656, inlinedAt: !2664)
!2709 = !{!2328, !1051, i64 8}
!2710 = !DILocation(line: 329, column: 30, scope: !2656, inlinedAt: !2664)
!2711 = !DILocation(line: 329, column: 34, scope: !2656, inlinedAt: !2664)
!2712 = !DILocation(line: 330, column: 30, scope: !2656, inlinedAt: !2664)
!2713 = !DILocation(line: 330, column: 34, scope: !2656, inlinedAt: !2664)
!2714 = !DILocation(line: 331, column: 10, scope: !2656, inlinedAt: !2664)
!2715 = !DILocation(line: 366, column: 18, scope: !2647, inlinedAt: !2640)
!2716 = !DILocation(line: 367, column: 29, scope: !2647, inlinedAt: !2640)
!2717 = !DILocation(line: 368, column: 12, scope: !2647, inlinedAt: !2640)
!2718 = distinct !{!2718, !2719, !2720}
!2719 = !DILocation(line: 359, column: 3, scope: !2630)
!2720 = !DILocation(line: 369, column: 5, scope: !2630)
!2721 = !DILocation(line: 372, column: 7, scope: !2722, inlinedAt: !2640)
!2722 = distinct !DILexicalBlock(scope: !2630, file: !3, line: 372, column: 7)
!2723 = !DILocation(line: 372, column: 7, scope: !2630, inlinedAt: !2640)
!2724 = !DILocation(line: 374, column: 11, scope: !2725, inlinedAt: !2640)
!2725 = distinct !DILexicalBlock(scope: !2722, file: !3, line: 373, column: 5)
!2726 = !DILocation(line: 311, column: 47, scope: !2656, inlinedAt: !2727)
!2727 = distinct !DILocation(line: 376, column: 11, scope: !2728, inlinedAt: !2640)
!2728 = distinct !DILexicalBlock(scope: !2729, file: !3, line: 375, column: 9)
!2729 = distinct !DILexicalBlock(scope: !2725, file: !3, line: 374, column: 11)
!2730 = !DILocation(line: 311, column: 66, scope: !2656, inlinedAt: !2727)
!2731 = !DILocation(line: 316, column: 10, scope: !2667, inlinedAt: !2727)
!2732 = !DILocation(line: 316, column: 21, scope: !2667, inlinedAt: !2727)
!2733 = !DILocation(line: 316, column: 7, scope: !2656, inlinedAt: !2727)
!2734 = !DILocation(line: 299, column: 20, scope: !2671, inlinedAt: !2735)
!2735 = distinct !DILocation(line: 317, column: 36, scope: !2667, inlinedAt: !2727)
!2736 = !DILocation(line: 301, column: 6, scope: !2671, inlinedAt: !2735)
!2737 = !DILocation(line: 301, column: 11, scope: !2671, inlinedAt: !2735)
!2738 = !DILocation(line: 290, column: 19, scope: !2680, inlinedAt: !2739)
!2739 = distinct !DILocation(line: 302, column: 3, scope: !2671, inlinedAt: !2735)
!2740 = !DILocation(line: 317, column: 24, scope: !2667, inlinedAt: !2727)
!2741 = !DILocation(line: 317, column: 34, scope: !2667, inlinedAt: !2727)
!2742 = !DILocation(line: 317, column: 19, scope: !2667, inlinedAt: !2727)
!2743 = !DILocation(line: 317, column: 5, scope: !2667, inlinedAt: !2727)
!2744 = !DILocation(line: 320, column: 10, scope: !2690, inlinedAt: !2727)
!2745 = !DILocation(line: 320, column: 21, scope: !2690, inlinedAt: !2727)
!2746 = !DILocation(line: 320, column: 26, scope: !2690, inlinedAt: !2727)
!2747 = !DILocation(line: 320, column: 7, scope: !2656, inlinedAt: !2727)
!2748 = !DILocation(line: 299, column: 20, scope: !2671, inlinedAt: !2749)
!2749 = distinct !DILocation(line: 322, column: 28, scope: !2695, inlinedAt: !2727)
!2750 = !DILocation(line: 301, column: 6, scope: !2671, inlinedAt: !2749)
!2751 = !DILocation(line: 301, column: 11, scope: !2671, inlinedAt: !2749)
!2752 = !DILocation(line: 290, column: 19, scope: !2680, inlinedAt: !2753)
!2753 = distinct !DILocation(line: 302, column: 3, scope: !2671, inlinedAt: !2749)
!2754 = !DILocation(line: 322, column: 10, scope: !2695, inlinedAt: !2727)
!2755 = !DILocation(line: 322, column: 21, scope: !2695, inlinedAt: !2727)
!2756 = !DILocation(line: 322, column: 26, scope: !2695, inlinedAt: !2727)
!2757 = !DILocation(line: 323, column: 36, scope: !2695, inlinedAt: !2727)
!2758 = !DILocation(line: 323, column: 20, scope: !2695, inlinedAt: !2727)
!2759 = !DILocation(line: 324, column: 5, scope: !2695, inlinedAt: !2727)
!2760 = !DILocation(line: 326, column: 10, scope: !2656, inlinedAt: !2727)
!2761 = !DILocation(line: 313, column: 16, scope: !2656, inlinedAt: !2727)
!2762 = !DILocation(line: 329, column: 16, scope: !2656, inlinedAt: !2727)
!2763 = !DILocation(line: 329, column: 30, scope: !2656, inlinedAt: !2727)
!2764 = !DILocation(line: 329, column: 34, scope: !2656, inlinedAt: !2727)
!2765 = !DILocation(line: 330, column: 30, scope: !2656, inlinedAt: !2727)
!2766 = !DILocation(line: 330, column: 34, scope: !2656, inlinedAt: !2727)
!2767 = !DILocation(line: 331, column: 10, scope: !2656, inlinedAt: !2727)
!2768 = !DILocation(line: 377, column: 16, scope: !2728, inlinedAt: !2640)
!2769 = !DILocation(line: 378, column: 9, scope: !2728, inlinedAt: !2640)
!2770 = !DILocation(line: 380, column: 28, scope: !2729, inlinedAt: !2640)
!2771 = !DILocalVariable(name: "start", arg: 1, scope: !2772, file: !3, line: 252, type: !11)
!2772 = distinct !DISubprogram(name: "save_to_hold_area", scope: !3, file: !3, line: 252, type: !2773, isLocal: true, isDefinition: true, scopeLine: 253, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2775)
!2773 = !DISubroutineType(types: !2774)
!2774 = !{null, !11, !18}
!2775 = !{!2771, !2776}
!2776 = !DILocalVariable(name: "num", arg: 2, scope: !2772, file: !3, line: 252, type: !18)
!2777 = !DILocation(line: 252, column: 26, scope: !2772, inlinedAt: !2778)
!2778 = distinct !DILocation(line: 380, column: 9, scope: !2779, inlinedAt: !2640)
!2779 = !DILexicalBlockFile(scope: !2729, file: !3, discriminator: 1)
!2780 = !DILocation(line: 252, column: 40, scope: !2772, inlinedAt: !2778)
!2781 = !DILocation(line: 254, column: 9, scope: !2772, inlinedAt: !2778)
!2782 = !DILocation(line: 254, column: 3, scope: !2772, inlinedAt: !2778)
!2783 = !DILocation(line: 255, column: 13, scope: !2772, inlinedAt: !2778)
!2784 = !DILocation(line: 256, column: 14, scope: !2772, inlinedAt: !2778)
!2785 = !DILocation(line: 383, column: 16, scope: !2630, inlinedAt: !2640)
!2786 = !DILocation(line: 384, column: 40, scope: !2630, inlinedAt: !2640)
!2787 = !DILocation(line: 384, column: 57, scope: !2630, inlinedAt: !2640)
!2788 = !DILocation(line: 384, column: 38, scope: !2630, inlinedAt: !2640)
!2789 = !DILocation(line: 384, column: 22, scope: !2630, inlinedAt: !2640)
!2790 = !DILocation(line: 385, column: 20, scope: !2630, inlinedAt: !2640)
!2791 = !DILocation(line: 487, column: 10, scope: !2528)
!2792 = !DILocation(line: 518, column: 11, scope: !2793)
!2793 = distinct !DILexicalBlock(scope: !2552, file: !3, line: 518, column: 11)
!2794 = !DILocation(line: 518, column: 23, scope: !2793)
!2795 = !DILocation(line: 518, column: 11, scope: !2796)
!2796 = !DILexicalBlockFile(scope: !2552, file: !3, discriminator: 1)
!2797 = !DILocation(line: 521, column: 11, scope: !2798)
!2798 = distinct !DILexicalBlock(scope: !2552, file: !3, line: 521, column: 11)
!2799 = !DILocation(line: 521, column: 11, scope: !2552)
!2800 = !DILocation(line: 522, column: 9, scope: !2798)
!2801 = !DILocation(line: 523, column: 24, scope: !2552)
!2802 = !DILocation(line: 436, column: 17, scope: !2317, inlinedAt: !2803)
!2803 = distinct !DILocation(line: 524, column: 7, scope: !2552)
!2804 = !DILocation(line: 435, column: 16, scope: !2309, inlinedAt: !2803)
!2805 = !DILocation(line: 436, column: 3, scope: !2325, inlinedAt: !2803)
!2806 = !DILocation(line: 438, column: 27, scope: !2315, inlinedAt: !2803)
!2807 = !DILocation(line: 438, column: 20, scope: !2315, inlinedAt: !2803)
!2808 = !DILocation(line: 439, column: 7, scope: !2315, inlinedAt: !2803)
!2809 = !DILocation(line: 442, column: 19, scope: !2309, inlinedAt: !2803)
!2810 = !DILocation(line: 443, column: 14, scope: !2309, inlinedAt: !2803)
!2811 = !DILocation(line: 443, column: 3, scope: !2309, inlinedAt: !2803)
!2812 = !DILocation(line: 525, column: 7, scope: !2552)
!2813 = !DILocation(line: 498, column: 3, scope: !2814)
!2814 = !DILexicalBlockFile(scope: !2528, file: !3, discriminator: 2)
!2815 = distinct !{!2815, !2816, !2817}
!2816 = !DILocation(line: 498, column: 3, scope: !2528)
!2817 = !DILocation(line: 526, column: 5, scope: !2528)
!2818 = !DILocation(line: 455, column: 13, scope: !2819, inlinedAt: !2823)
!2819 = distinct !DISubprogram(name: "save_buffer", scope: !3, file: !3, line: 451, type: !2310, isLocal: true, isDefinition: true, scopeLine: 452, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2820)
!2820 = !{!2821, !2822}
!2821 = !DILocalVariable(name: "buf", arg: 1, scope: !2819, file: !3, line: 451, type: !397)
!2822 = !DILocalVariable(name: "p", scope: !2819, file: !3, line: 453, type: !397)
!2823 = distinct !DILocation(line: 529, column: 5, scope: !2824)
!2824 = distinct !DILexicalBlock(scope: !2528, file: !3, line: 528, column: 7)
!2825 = !DILocation(line: 456, column: 25, scope: !2819, inlinedAt: !2823)
!2826 = !DILocation(line: 456, column: 8, scope: !2819, inlinedAt: !2823)
!2827 = !DILocation(line: 456, column: 18, scope: !2819, inlinedAt: !2823)
!2828 = !DILocation(line: 458, column: 7, scope: !2829, inlinedAt: !2823)
!2829 = distinct !DILexicalBlock(scope: !2819, file: !3, line: 458, column: 7)
!2830 = !DILocation(line: 458, column: 12, scope: !2829, inlinedAt: !2823)
!2831 = !DILocation(line: 458, column: 7, scope: !2819, inlinedAt: !2823)
!2832 = !DILocation(line: 453, column: 25, scope: !2819, inlinedAt: !2823)
!2833 = !DILocation(line: 462, column: 25, scope: !2834, inlinedAt: !2823)
!2834 = !DILexicalBlockFile(scope: !2835, file: !3, discriminator: 1)
!2835 = distinct !DILexicalBlock(scope: !2836, file: !3, line: 462, column: 7)
!2836 = distinct !DILexicalBlock(scope: !2837, file: !3, line: 462, column: 7)
!2837 = distinct !DILexicalBlock(scope: !2829, file: !3, line: 461, column: 5)
!2838 = !DILocation(line: 462, column: 7, scope: !2839, inlinedAt: !2823)
!2839 = !DILexicalBlockFile(scope: !2836, file: !3, discriminator: 1)
!2840 = distinct !{!2840, !2841, !2842}
!2841 = !DILocation(line: 462, column: 7, scope: !2836)
!2842 = !DILocation(line: 463, column: 27, scope: !2836)
!2843 = !DILocation(line: 529, column: 5, scope: !2824)
!2844 = !DILocation(line: 436, column: 17, scope: !2317, inlinedAt: !2845)
!2845 = distinct !DILocation(line: 532, column: 7, scope: !2846)
!2846 = distinct !DILexicalBlock(scope: !2824, file: !3, line: 531, column: 5)
!2847 = !DILocation(line: 435, column: 16, scope: !2309, inlinedAt: !2845)
!2848 = !DILocation(line: 436, column: 3, scope: !2325, inlinedAt: !2845)
!2849 = !DILocation(line: 438, column: 27, scope: !2315, inlinedAt: !2845)
!2850 = !DILocation(line: 438, column: 20, scope: !2315, inlinedAt: !2845)
!2851 = !DILocation(line: 439, column: 7, scope: !2315, inlinedAt: !2845)
!2852 = !DILocation(line: 442, column: 19, scope: !2309, inlinedAt: !2845)
!2853 = !DILocation(line: 443, column: 14, scope: !2309, inlinedAt: !2845)
!2854 = !DILocation(line: 443, column: 3, scope: !2309, inlinedAt: !2845)
!2855 = !DILocation(line: 533, column: 7, scope: !2846)
!2856 = !DILocation(line: 537, column: 1, scope: !2528)
!2857 = distinct !DISubprogram(name: "handle_line_error", scope: !3, file: !3, line: 714, type: !2056, isLocal: true, isDefinition: true, scopeLine: 715, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !2858)
!2858 = !{!2859, !2860, !2861}
!2859 = !DILocalVariable(name: "p", arg: 1, scope: !2857, file: !3, line: 714, type: !2058)
!2860 = !DILocalVariable(name: "repetition", arg: 2, scope: !2857, file: !3, line: 714, type: !224)
!2861 = !DILocalVariable(name: "buf", scope: !2857, file: !3, line: 716, type: !361)
!2862 = !DILocation(line: 714, column: 42, scope: !2857)
!2863 = !DILocation(line: 714, column: 55, scope: !2857)
!2864 = !DILocation(line: 716, column: 3, scope: !2857)
!2865 = !DILocation(line: 716, column: 8, scope: !2857)
!2866 = !DILocation(line: 718, column: 3, scope: !2857)
!2867 = !DILocation(line: 718, column: 3, scope: !2868)
!2868 = !DILexicalBlockFile(scope: !2857, file: !3, discriminator: 1)
!2869 = !DILocation(line: 718, column: 3, scope: !2870)
!2870 = !DILexicalBlockFile(scope: !2857, file: !3, discriminator: 2)
!2871 = !DILocation(line: 718, column: 3, scope: !2872)
!2872 = !DILexicalBlockFile(scope: !2857, file: !3, discriminator: 3)
!2873 = !DILocation(line: 720, column: 7, scope: !2874)
!2874 = distinct !DILexicalBlock(scope: !2857, file: !3, line: 720, column: 7)
!2875 = !DILocation(line: 720, column: 7, scope: !2857)
!2876 = !DILocation(line: 721, column: 5, scope: !2874)
!2877 = !DILocation(line: 721, column: 5, scope: !2878)
!2878 = !DILexicalBlockFile(scope: !2874, file: !3, discriminator: 1)
!2879 = !DILocation(line: 721, column: 5, scope: !2880)
!2880 = !DILexicalBlockFile(scope: !2874, file: !3, discriminator: 2)
!2881 = !DILocation(line: 723, column: 5, scope: !2874)
!2882 = !DILocation(line: 725, column: 3, scope: !2857)
!2883 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !464, file: !464, line: 41, type: !423, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !459, variables: !2884)
!2884 = !{!2885}
!2885 = !DILocalVariable(name: "file", arg: 1, scope: !2883, file: !464, line: 41, type: !193)
!2886 = !DILocation(line: 41, column: 41, scope: !2883)
!2887 = !DILocation(line: 43, column: 13, scope: !2883)
!2888 = !DILocation(line: 44, column: 1, scope: !2883)
!2889 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !464, file: !464, line: 78, type: !1115, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !459, variables: !2890)
!2890 = !{!2891}
!2891 = !DILocalVariable(name: "ignore", arg: 1, scope: !2889, file: !464, line: 78, type: !206)
!2892 = !DILocation(line: 78, column: 37, scope: !2889)
!2893 = !DILocation(line: 80, column: 16, scope: !2889)
!2894 = !DILocation(line: 81, column: 1, scope: !2889)
!2895 = distinct !DISubprogram(name: "close_stdout", scope: !464, file: !464, line: 107, type: !128, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !459, variables: !2896)
!2896 = !{!2897}
!2897 = !DILocalVariable(name: "write_error", scope: !2898, file: !464, line: 112, type: !193)
!2898 = distinct !DILexicalBlock(scope: !2899, file: !464, line: 111, column: 5)
!2899 = distinct !DILexicalBlock(scope: !2895, file: !464, line: 109, column: 7)
!2900 = !DILocation(line: 109, column: 21, scope: !2899)
!2901 = !DILocation(line: 109, column: 7, scope: !2899)
!2902 = !DILocation(line: 109, column: 29, scope: !2899)
!2903 = !DILocation(line: 110, column: 7, scope: !2899)
!2904 = !DILocation(line: 110, column: 12, scope: !2905)
!2905 = !DILexicalBlockFile(scope: !2899, file: !464, discriminator: 1)
!2906 = !DILocation(line: 114, column: 19, scope: !2907)
!2907 = distinct !DILexicalBlock(scope: !2898, file: !464, line: 113, column: 11)
!2908 = !DILocation(line: 110, column: 25, scope: !2905)
!2909 = !DILocation(line: 110, column: 28, scope: !2910)
!2910 = !DILexicalBlockFile(scope: !2899, file: !464, discriminator: 2)
!2911 = !DILocation(line: 110, column: 34, scope: !2910)
!2912 = !DILocation(line: 109, column: 7, scope: !2913)
!2913 = !DILexicalBlockFile(scope: !2895, file: !464, discriminator: 1)
!2914 = !DILocation(line: 112, column: 33, scope: !2898)
!2915 = !DILocation(line: 112, column: 19, scope: !2898)
!2916 = !DILocation(line: 113, column: 11, scope: !2907)
!2917 = !DILocation(line: 113, column: 11, scope: !2898)
!2918 = !DILocation(line: 114, column: 36, scope: !2919)
!2919 = !DILexicalBlockFile(scope: !2907, file: !464, discriminator: 1)
!2920 = !DILocation(line: 114, column: 9, scope: !2921)
!2921 = !DILexicalBlockFile(scope: !2907, file: !464, discriminator: 2)
!2922 = !DILocation(line: 114, column: 9, scope: !2907)
!2923 = !DILocation(line: 117, column: 9, scope: !2919)
!2924 = !DILocation(line: 119, column: 14, scope: !2898)
!2925 = !DILocation(line: 119, column: 7, scope: !2898)
!2926 = !DILocation(line: 122, column: 22, scope: !2927)
!2927 = distinct !DILexicalBlock(scope: !2895, file: !464, line: 122, column: 8)
!2928 = !DILocation(line: 122, column: 8, scope: !2927)
!2929 = !DILocation(line: 122, column: 30, scope: !2927)
!2930 = !DILocation(line: 122, column: 8, scope: !2895)
!2931 = !DILocation(line: 123, column: 13, scope: !2927)
!2932 = !DILocation(line: 123, column: 6, scope: !2927)
!2933 = !DILocation(line: 124, column: 1, scope: !2895)
!2934 = distinct !DISubprogram(name: "fd_reopen", scope: !2935, file: !2935, line: 32, type: !2936, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped, isOptimized: true, unit: !919, variables: !2940)
!2935 = !DIFile(filename: "lib/fd-reopen.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2936 = !DISubroutineType(types: !2937)
!2937 = !{!9, !9, !193, !9, !2938}
!2938 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !943, line: 70, baseType: !2939)
!2939 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !61, line: 138, baseType: !64)
!2940 = !{!2941, !2942, !2943, !2944, !2945, !2946, !2949}
!2941 = !DILocalVariable(name: "desired_fd", arg: 1, scope: !2934, file: !2935, line: 32, type: !9)
!2942 = !DILocalVariable(name: "file", arg: 2, scope: !2934, file: !2935, line: 32, type: !193)
!2943 = !DILocalVariable(name: "flags", arg: 3, scope: !2934, file: !2935, line: 32, type: !9)
!2944 = !DILocalVariable(name: "mode", arg: 4, scope: !2934, file: !2935, line: 32, type: !2938)
!2945 = !DILocalVariable(name: "fd", scope: !2934, file: !2935, line: 34, type: !9)
!2946 = !DILocalVariable(name: "fd2", scope: !2947, file: !2935, line: 40, type: !9)
!2947 = distinct !DILexicalBlock(scope: !2948, file: !2935, line: 39, column: 5)
!2948 = distinct !DILexicalBlock(scope: !2934, file: !2935, line: 36, column: 7)
!2949 = !DILocalVariable(name: "saved_errno", scope: !2947, file: !2935, line: 41, type: !9)
!2950 = !DILocation(line: 32, column: 16, scope: !2934)
!2951 = !DILocation(line: 32, column: 40, scope: !2934)
!2952 = !DILocation(line: 32, column: 50, scope: !2934)
!2953 = !DILocation(line: 32, column: 64, scope: !2934)
!2954 = !DILocation(line: 34, column: 12, scope: !2934)
!2955 = !DILocation(line: 34, column: 7, scope: !2934)
!2956 = !DILocation(line: 36, column: 10, scope: !2948)
!2957 = !DILocation(line: 36, column: 30, scope: !2958)
!2958 = !DILexicalBlockFile(scope: !2948, file: !2935, discriminator: 1)
!2959 = !DILocation(line: 36, column: 24, scope: !2948)
!2960 = !DILocation(line: 40, column: 17, scope: !2947)
!2961 = !DILocation(line: 40, column: 11, scope: !2947)
!2962 = !DILocation(line: 41, column: 25, scope: !2947)
!2963 = !DILocation(line: 41, column: 11, scope: !2947)
!2964 = !DILocation(line: 42, column: 7, scope: !2947)
!2965 = !DILocation(line: 43, column: 13, scope: !2947)
!2966 = !DILocation(line: 46, column: 1, scope: !2934)
!2967 = distinct !DISubprogram(name: "fopen_safer", scope: !2968, file: !2968, line: 31, type: !2969, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !921, variables: !3011)
!2968 = !DIFile(filename: "lib/fopen-safer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2969 = !DISubroutineType(types: !2970)
!2970 = !{!2971, !193, !193}
!2971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2972, size: 64)
!2972 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !260, line: 49, baseType: !2973)
!2973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !262, line: 241, size: 1728, elements: !2974)
!2974 = !{!2975, !2976, !2977, !2978, !2979, !2980, !2981, !2982, !2983, !2984, !2985, !2986, !2987, !2995, !2996, !2997, !2998, !2999, !3000, !3001, !3002, !3003, !3004, !3005, !3006, !3007, !3008, !3009, !3010}
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2973, file: !262, line: 242, baseType: !9, size: 32)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2973, file: !262, line: 247, baseType: !11, size: 64, offset: 64)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2973, file: !262, line: 248, baseType: !11, size: 64, offset: 128)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2973, file: !262, line: 249, baseType: !11, size: 64, offset: 192)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2973, file: !262, line: 250, baseType: !11, size: 64, offset: 256)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2973, file: !262, line: 251, baseType: !11, size: 64, offset: 320)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2973, file: !262, line: 252, baseType: !11, size: 64, offset: 384)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2973, file: !262, line: 253, baseType: !11, size: 64, offset: 448)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2973, file: !262, line: 254, baseType: !11, size: 64, offset: 512)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2973, file: !262, line: 256, baseType: !11, size: 64, offset: 576)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2973, file: !262, line: 257, baseType: !11, size: 64, offset: 640)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2973, file: !262, line: 258, baseType: !11, size: 64, offset: 704)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2973, file: !262, line: 260, baseType: !2988, size: 64, offset: 768)
!2988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2989, size: 64)
!2989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !262, line: 156, size: 192, elements: !2990)
!2990 = !{!2991, !2992, !2994}
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !2989, file: !262, line: 157, baseType: !2988, size: 64)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !2989, file: !262, line: 158, baseType: !2993, size: 64, offset: 64)
!2993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2973, size: 64)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !2989, file: !262, line: 162, baseType: !9, size: 32, offset: 128)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2973, file: !262, line: 262, baseType: !2993, size: 64, offset: 832)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2973, file: !262, line: 264, baseType: !9, size: 32, offset: 896)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2973, file: !262, line: 268, baseType: !9, size: 32, offset: 928)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2973, file: !262, line: 270, baseType: !288, size: 64, offset: 960)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2973, file: !262, line: 274, baseType: !187, size: 16, offset: 1024)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2973, file: !262, line: 275, baseType: !291, size: 8, offset: 1040)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2973, file: !262, line: 276, baseType: !293, size: 8, offset: 1048)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2973, file: !262, line: 280, baseType: !297, size: 64, offset: 1088)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2973, file: !262, line: 289, baseType: !300, size: 64, offset: 1152)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !2973, file: !262, line: 297, baseType: !76, size: 64, offset: 1216)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !2973, file: !262, line: 298, baseType: !76, size: 64, offset: 1280)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !2973, file: !262, line: 299, baseType: !76, size: 64, offset: 1344)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !2973, file: !262, line: 300, baseType: !76, size: 64, offset: 1408)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2973, file: !262, line: 302, baseType: !18, size: 64, offset: 1472)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2973, file: !262, line: 303, baseType: !9, size: 32, offset: 1536)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2973, file: !262, line: 305, baseType: !308, size: 160, offset: 1568)
!3011 = !{!3012, !3013, !3014, !3015, !3018, !3021, !3024}
!3012 = !DILocalVariable(name: "file", arg: 1, scope: !2967, file: !2968, line: 31, type: !193)
!3013 = !DILocalVariable(name: "mode", arg: 2, scope: !2967, file: !2968, line: 31, type: !193)
!3014 = !DILocalVariable(name: "fp", scope: !2967, file: !2968, line: 33, type: !2971)
!3015 = !DILocalVariable(name: "fd", scope: !3016, file: !2968, line: 37, type: !9)
!3016 = distinct !DILexicalBlock(scope: !3017, file: !2968, line: 36, column: 5)
!3017 = distinct !DILexicalBlock(scope: !2967, file: !2968, line: 35, column: 7)
!3018 = !DILocalVariable(name: "f", scope: !3019, file: !2968, line: 41, type: !9)
!3019 = distinct !DILexicalBlock(scope: !3020, file: !2968, line: 40, column: 9)
!3020 = distinct !DILexicalBlock(scope: !3016, file: !2968, line: 39, column: 11)
!3021 = !DILocalVariable(name: "e", scope: !3022, file: !2968, line: 45, type: !9)
!3022 = distinct !DILexicalBlock(scope: !3023, file: !2968, line: 44, column: 13)
!3023 = distinct !DILexicalBlock(scope: !3019, file: !2968, line: 43, column: 15)
!3024 = !DILocalVariable(name: "e", scope: !3025, file: !2968, line: 54, type: !9)
!3025 = distinct !DILexicalBlock(scope: !3026, file: !2968, line: 53, column: 13)
!3026 = distinct !DILexicalBlock(scope: !3019, file: !2968, line: 51, column: 15)
!3027 = !DILocation(line: 31, column: 26, scope: !2967)
!3028 = !DILocation(line: 31, column: 44, scope: !2967)
!3029 = !DILocation(line: 33, column: 14, scope: !2967)
!3030 = !DILocation(line: 33, column: 9, scope: !2967)
!3031 = !DILocation(line: 35, column: 7, scope: !3017)
!3032 = !DILocation(line: 35, column: 7, scope: !2967)
!3033 = !DILocation(line: 37, column: 16, scope: !3016)
!3034 = !DILocation(line: 37, column: 11, scope: !3016)
!3035 = !DILocation(line: 39, column: 19, scope: !3020)
!3036 = !DILocation(line: 41, column: 19, scope: !3019)
!3037 = !DILocation(line: 41, column: 15, scope: !3019)
!3038 = !DILocation(line: 43, column: 17, scope: !3023)
!3039 = !DILocation(line: 43, column: 15, scope: !3019)
!3040 = !DILocation(line: 45, column: 23, scope: !3022)
!3041 = !DILocation(line: 45, column: 19, scope: !3022)
!3042 = !DILocation(line: 46, column: 15, scope: !3022)
!3043 = !DILocation(line: 47, column: 21, scope: !3022)
!3044 = !DILocation(line: 51, column: 15, scope: !3026)
!3045 = !DILocation(line: 51, column: 27, scope: !3026)
!3046 = !DILocation(line: 52, column: 15, scope: !3026)
!3047 = !DILocation(line: 52, column: 26, scope: !3048)
!3048 = !DILexicalBlockFile(scope: !3026, file: !2968, discriminator: 1)
!3049 = !DILocation(line: 52, column: 24, scope: !3048)
!3050 = !DILocation(line: 51, column: 15, scope: !3051)
!3051 = !DILexicalBlockFile(scope: !3019, file: !2968, discriminator: 1)
!3052 = !DILocation(line: 54, column: 23, scope: !3025)
!3053 = !DILocation(line: 54, column: 19, scope: !3025)
!3054 = !DILocation(line: 55, column: 15, scope: !3025)
!3055 = !DILocation(line: 56, column: 21, scope: !3025)
!3056 = !DILocation(line: 63, column: 1, scope: !2967)
!3057 = distinct !DISubprogram(name: "umaxtostr", scope: !3058, file: !3058, line: 36, type: !3059, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: true, unit: !923, variables: !3061)
!3058 = !DIFile(filename: "./lib/anytostr.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3059 = !DISubroutineType(types: !3060)
!3060 = !{!11, !224, !11}
!3061 = !{!3062, !3063, !3064}
!3062 = !DILocalVariable(name: "i", arg: 1, scope: !3057, file: !3058, line: 36, type: !224)
!3063 = !DILocalVariable(name: "buf", arg: 2, scope: !3057, file: !3058, line: 36, type: !11)
!3064 = !DILocalVariable(name: "p", scope: !3057, file: !3058, line: 38, type: !11)
!3065 = !DILocation(line: 36, column: 19, scope: !3057)
!3066 = !DILocation(line: 36, column: 28, scope: !3057)
!3067 = !DILocation(line: 38, column: 17, scope: !3057)
!3068 = !DILocation(line: 38, column: 9, scope: !3057)
!3069 = !DILocation(line: 39, column: 6, scope: !3057)
!3070 = !DILocation(line: 41, column: 7, scope: !3057)
!3071 = !DILocation(line: 52, column: 24, scope: !3072)
!3072 = distinct !DILexicalBlock(scope: !3073, file: !3058, line: 50, column: 5)
!3073 = distinct !DILexicalBlock(scope: !3057, file: !3058, line: 41, column: 7)
!3074 = !DILocation(line: 52, column: 16, scope: !3072)
!3075 = !DILocation(line: 52, column: 10, scope: !3072)
!3076 = !DILocation(line: 52, column: 14, scope: !3072)
!3077 = !DILocation(line: 53, column: 17, scope: !3072)
!3078 = !DILocation(line: 53, column: 24, scope: !3072)
!3079 = !DILocation(line: 52, column: 9, scope: !3080)
!3080 = !DILexicalBlockFile(scope: !3072, file: !3058, discriminator: 1)
!3081 = distinct !{!3081, !3082, !3083}
!3082 = !DILocation(line: 51, column: 7, scope: !3072)
!3083 = !DILocation(line: 53, column: 28, scope: !3072)
!3084 = !DILocation(line: 56, column: 3, scope: !3057)
!3085 = distinct !DISubprogram(name: "set_program_name", scope: !477, file: !477, line: 39, type: !423, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !473, variables: !3086)
!3086 = !{!3087, !3088, !3089}
!3087 = !DILocalVariable(name: "argv0", arg: 1, scope: !3085, file: !477, line: 39, type: !193)
!3088 = !DILocalVariable(name: "slash", scope: !3085, file: !477, line: 46, type: !193)
!3089 = !DILocalVariable(name: "base", scope: !3085, file: !477, line: 47, type: !193)
!3090 = !DILocation(line: 39, column: 31, scope: !3085)
!3091 = !DILocation(line: 51, column: 13, scope: !3092)
!3092 = distinct !DILexicalBlock(scope: !3085, file: !477, line: 51, column: 7)
!3093 = !DILocation(line: 51, column: 7, scope: !3085)
!3094 = !DILocation(line: 55, column: 14, scope: !3095)
!3095 = distinct !DILexicalBlock(scope: !3092, file: !477, line: 52, column: 5)
!3096 = !DILocation(line: 54, column: 7, scope: !3095)
!3097 = !DILocation(line: 56, column: 7, scope: !3095)
!3098 = !DILocation(line: 59, column: 11, scope: !3085)
!3099 = !DILocation(line: 46, column: 15, scope: !3085)
!3100 = !DILocation(line: 60, column: 17, scope: !3085)
!3101 = !DILocation(line: 60, column: 33, scope: !3102)
!3102 = !DILexicalBlockFile(scope: !3085, file: !477, discriminator: 1)
!3103 = !DILocation(line: 60, column: 11, scope: !3085)
!3104 = !DILocation(line: 47, column: 15, scope: !3085)
!3105 = !DILocation(line: 61, column: 12, scope: !3106)
!3106 = distinct !DILexicalBlock(scope: !3085, file: !477, line: 61, column: 7)
!3107 = !DILocation(line: 61, column: 20, scope: !3106)
!3108 = !DILocation(line: 61, column: 25, scope: !3106)
!3109 = !DILocation(line: 61, column: 28, scope: !3110)
!3110 = !DILexicalBlockFile(scope: !3106, file: !477, discriminator: 1)
!3111 = !DILocation(line: 61, column: 61, scope: !3110)
!3112 = !DILocation(line: 61, column: 7, scope: !3102)
!3113 = !DILocation(line: 64, column: 11, scope: !3114)
!3114 = distinct !DILexicalBlock(scope: !3115, file: !477, line: 64, column: 11)
!3115 = distinct !DILexicalBlock(scope: !3106, file: !477, line: 62, column: 5)
!3116 = !DILocation(line: 64, column: 36, scope: !3114)
!3117 = !DILocation(line: 64, column: 11, scope: !3115)
!3118 = !DILocation(line: 66, column: 24, scope: !3119)
!3119 = distinct !DILexicalBlock(scope: !3114, file: !477, line: 65, column: 9)
!3120 = !DILocation(line: 70, column: 41, scope: !3119)
!3121 = !DILocation(line: 72, column: 9, scope: !3119)
!3122 = !DILocation(line: 84, column: 16, scope: !3085)
!3123 = !DILocation(line: 90, column: 27, scope: !3085)
!3124 = !DILocation(line: 92, column: 1, scope: !3085)
!3125 = distinct !DISubprogram(name: "clone_quoting_options", scope: !492, file: !492, line: 114, type: !3126, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !480, variables: !3129)
!3126 = !DISubroutineType(types: !3127)
!3127 = !{!3128, !3128}
!3128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!3129 = !{!3130, !3131, !3132}
!3130 = !DILocalVariable(name: "o", arg: 1, scope: !3125, file: !492, line: 114, type: !3128)
!3131 = !DILocalVariable(name: "e", scope: !3125, file: !492, line: 116, type: !9)
!3132 = !DILocalVariable(name: "p", scope: !3125, file: !492, line: 117, type: !3128)
!3133 = !DILocation(line: 114, column: 48, scope: !3125)
!3134 = !DILocation(line: 116, column: 11, scope: !3125)
!3135 = !DILocation(line: 116, column: 7, scope: !3125)
!3136 = !DILocation(line: 117, column: 40, scope: !3125)
!3137 = !DILocation(line: 117, column: 40, scope: !3138)
!3138 = !DILexicalBlockFile(scope: !3125, file: !492, discriminator: 3)
!3139 = !DILocation(line: 117, column: 31, scope: !3138)
!3140 = !DILocation(line: 117, column: 27, scope: !3125)
!3141 = !DILocation(line: 119, column: 9, scope: !3125)
!3142 = !DILocation(line: 120, column: 3, scope: !3125)
!3143 = distinct !DISubprogram(name: "get_quoting_style", scope: !492, file: !492, line: 125, type: !3144, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !480, variables: !3148)
!3144 = !DISubroutineType(types: !3145)
!3145 = !{!132, !3146}
!3146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3147, size: 64)
!3147 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !499)
!3148 = !{!3149}
!3149 = !DILocalVariable(name: "o", arg: 1, scope: !3143, file: !492, line: 125, type: !3146)
!3150 = !DILocation(line: 125, column: 50, scope: !3143)
!3151 = !DILocation(line: 127, column: 11, scope: !3143)
!3152 = !DILocation(line: 127, column: 46, scope: !3153)
!3153 = !DILexicalBlockFile(scope: !3143, file: !492, discriminator: 3)
!3154 = !{!3155, !1034, i64 0}
!3155 = !{!"quoting_options", !1034, i64 0, !1050, i64 4, !1034, i64 8, !1033, i64 40, !1033, i64 48}
!3156 = !DILocation(line: 127, column: 3, scope: !3153)
!3157 = distinct !DISubprogram(name: "set_quoting_style", scope: !492, file: !492, line: 133, type: !3158, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !480, variables: !3160)
!3158 = !DISubroutineType(types: !3159)
!3159 = !{null, !3128, !132}
!3160 = !{!3161, !3162}
!3161 = !DILocalVariable(name: "o", arg: 1, scope: !3157, file: !492, line: 133, type: !3128)
!3162 = !DILocalVariable(name: "s", arg: 2, scope: !3157, file: !492, line: 133, type: !132)
!3163 = !DILocation(line: 133, column: 44, scope: !3157)
!3164 = !DILocation(line: 133, column: 66, scope: !3157)
!3165 = !DILocation(line: 135, column: 4, scope: !3157)
!3166 = !DILocation(line: 135, column: 39, scope: !3167)
!3167 = !DILexicalBlockFile(scope: !3157, file: !492, discriminator: 3)
!3168 = !DILocation(line: 135, column: 45, scope: !3167)
!3169 = !DILocation(line: 136, column: 1, scope: !3157)
!3170 = distinct !DISubprogram(name: "set_char_quoting", scope: !492, file: !492, line: 144, type: !3171, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !480, variables: !3173)
!3171 = !DISubroutineType(types: !3172)
!3172 = !{!9, !3128, !12, !9}
!3173 = !{!3174, !3175, !3176, !3177, !3178, !3180, !3181}
!3174 = !DILocalVariable(name: "o", arg: 1, scope: !3170, file: !492, line: 144, type: !3128)
!3175 = !DILocalVariable(name: "c", arg: 2, scope: !3170, file: !492, line: 144, type: !12)
!3176 = !DILocalVariable(name: "i", arg: 3, scope: !3170, file: !492, line: 144, type: !9)
!3177 = !DILocalVariable(name: "uc", scope: !3170, file: !492, line: 146, type: !192)
!3178 = !DILocalVariable(name: "p", scope: !3170, file: !492, line: 147, type: !3179)
!3179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!3180 = !DILocalVariable(name: "shift", scope: !3170, file: !492, line: 149, type: !9)
!3181 = !DILocalVariable(name: "r", scope: !3170, file: !492, line: 150, type: !9)
!3182 = !DILocation(line: 144, column: 43, scope: !3170)
!3183 = !DILocation(line: 144, column: 51, scope: !3170)
!3184 = !DILocation(line: 144, column: 58, scope: !3170)
!3185 = !DILocation(line: 146, column: 17, scope: !3170)
!3186 = !DILocation(line: 148, column: 6, scope: !3170)
!3187 = !DILocation(line: 148, column: 62, scope: !3188)
!3188 = !DILexicalBlockFile(scope: !3170, file: !492, discriminator: 3)
!3189 = !DILocation(line: 148, column: 57, scope: !3188)
!3190 = !DILocation(line: 147, column: 17, scope: !3170)
!3191 = !DILocation(line: 149, column: 18, scope: !3170)
!3192 = !DILocation(line: 149, column: 15, scope: !3170)
!3193 = !DILocation(line: 149, column: 7, scope: !3170)
!3194 = !DILocation(line: 150, column: 12, scope: !3170)
!3195 = !DILocation(line: 150, column: 15, scope: !3170)
!3196 = !DILocation(line: 150, column: 25, scope: !3170)
!3197 = !DILocation(line: 150, column: 7, scope: !3170)
!3198 = !DILocation(line: 151, column: 13, scope: !3170)
!3199 = !DILocation(line: 151, column: 18, scope: !3170)
!3200 = !DILocation(line: 151, column: 23, scope: !3170)
!3201 = !DILocation(line: 151, column: 6, scope: !3170)
!3202 = !DILocation(line: 152, column: 3, scope: !3170)
!3203 = distinct !DISubprogram(name: "set_quoting_flags", scope: !492, file: !492, line: 160, type: !3204, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !480, variables: !3206)
!3204 = !DISubroutineType(types: !3205)
!3205 = !{!9, !3128, !9}
!3206 = !{!3207, !3208, !3209}
!3207 = !DILocalVariable(name: "o", arg: 1, scope: !3203, file: !492, line: 160, type: !3128)
!3208 = !DILocalVariable(name: "i", arg: 2, scope: !3203, file: !492, line: 160, type: !9)
!3209 = !DILocalVariable(name: "r", scope: !3203, file: !492, line: 162, type: !9)
!3210 = !DILocation(line: 160, column: 44, scope: !3203)
!3211 = !DILocation(line: 160, column: 51, scope: !3203)
!3212 = !DILocation(line: 163, column: 8, scope: !3213)
!3213 = distinct !DILexicalBlock(scope: !3203, file: !492, line: 163, column: 7)
!3214 = !DILocation(line: 163, column: 7, scope: !3203)
!3215 = !DILocation(line: 165, column: 10, scope: !3203)
!3216 = !{!3155, !1050, i64 4}
!3217 = !DILocation(line: 162, column: 7, scope: !3203)
!3218 = !DILocation(line: 166, column: 12, scope: !3203)
!3219 = !DILocation(line: 167, column: 3, scope: !3203)
!3220 = distinct !DISubprogram(name: "set_custom_quoting", scope: !492, file: !492, line: 171, type: !3221, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !480, variables: !3223)
!3221 = !DISubroutineType(types: !3222)
!3222 = !{null, !3128, !193, !193}
!3223 = !{!3224, !3225, !3226}
!3224 = !DILocalVariable(name: "o", arg: 1, scope: !3220, file: !492, line: 171, type: !3128)
!3225 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3220, file: !492, line: 172, type: !193)
!3226 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3220, file: !492, line: 172, type: !193)
!3227 = !DILocation(line: 171, column: 45, scope: !3220)
!3228 = !DILocation(line: 172, column: 33, scope: !3220)
!3229 = !DILocation(line: 172, column: 57, scope: !3220)
!3230 = !DILocation(line: 174, column: 8, scope: !3231)
!3231 = distinct !DILexicalBlock(scope: !3220, file: !492, line: 174, column: 7)
!3232 = !DILocation(line: 174, column: 7, scope: !3220)
!3233 = !DILocation(line: 176, column: 6, scope: !3220)
!3234 = !DILocation(line: 176, column: 12, scope: !3220)
!3235 = !DILocation(line: 177, column: 8, scope: !3236)
!3236 = distinct !DILexicalBlock(scope: !3220, file: !492, line: 177, column: 7)
!3237 = !DILocation(line: 177, column: 23, scope: !3238)
!3238 = !DILexicalBlockFile(scope: !3236, file: !492, discriminator: 1)
!3239 = !DILocation(line: 177, column: 19, scope: !3236)
!3240 = !DILocation(line: 178, column: 5, scope: !3236)
!3241 = !DILocation(line: 179, column: 6, scope: !3220)
!3242 = !DILocation(line: 179, column: 17, scope: !3220)
!3243 = !{!3155, !1033, i64 40}
!3244 = !DILocation(line: 180, column: 6, scope: !3220)
!3245 = !DILocation(line: 180, column: 18, scope: !3220)
!3246 = !{!3155, !1033, i64 48}
!3247 = !DILocation(line: 181, column: 1, scope: !3220)
!3248 = distinct !DISubprogram(name: "quotearg_buffer", scope: !492, file: !492, line: 776, type: !3249, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !480, variables: !3251)
!3249 = !DISubroutineType(types: !3250)
!3250 = !{!18, !11, !18, !193, !18, !3146}
!3251 = !{!3252, !3253, !3254, !3255, !3256, !3257, !3258, !3259}
!3252 = !DILocalVariable(name: "buffer", arg: 1, scope: !3248, file: !492, line: 776, type: !11)
!3253 = !DILocalVariable(name: "buffersize", arg: 2, scope: !3248, file: !492, line: 776, type: !18)
!3254 = !DILocalVariable(name: "arg", arg: 3, scope: !3248, file: !492, line: 777, type: !193)
!3255 = !DILocalVariable(name: "argsize", arg: 4, scope: !3248, file: !492, line: 777, type: !18)
!3256 = !DILocalVariable(name: "o", arg: 5, scope: !3248, file: !492, line: 778, type: !3146)
!3257 = !DILocalVariable(name: "p", scope: !3248, file: !492, line: 780, type: !3146)
!3258 = !DILocalVariable(name: "e", scope: !3248, file: !492, line: 781, type: !9)
!3259 = !DILocalVariable(name: "r", scope: !3248, file: !492, line: 782, type: !18)
!3260 = !DILocation(line: 776, column: 24, scope: !3248)
!3261 = !DILocation(line: 776, column: 39, scope: !3248)
!3262 = !DILocation(line: 777, column: 30, scope: !3248)
!3263 = !DILocation(line: 777, column: 42, scope: !3248)
!3264 = !DILocation(line: 778, column: 48, scope: !3248)
!3265 = !DILocation(line: 780, column: 37, scope: !3248)
!3266 = !DILocation(line: 780, column: 33, scope: !3248)
!3267 = !DILocation(line: 781, column: 11, scope: !3248)
!3268 = !DILocation(line: 781, column: 7, scope: !3248)
!3269 = !DILocation(line: 783, column: 43, scope: !3248)
!3270 = !DILocation(line: 783, column: 53, scope: !3248)
!3271 = !DILocation(line: 783, column: 60, scope: !3248)
!3272 = !DILocation(line: 784, column: 43, scope: !3248)
!3273 = !DILocation(line: 784, column: 58, scope: !3248)
!3274 = !DILocation(line: 782, column: 14, scope: !3248)
!3275 = !DILocation(line: 782, column: 10, scope: !3248)
!3276 = !DILocation(line: 785, column: 9, scope: !3248)
!3277 = !DILocation(line: 786, column: 3, scope: !3248)
!3278 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !492, file: !492, line: 248, type: !3279, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !480, variables: !3283)
!3279 = !DISubroutineType(types: !3280)
!3280 = !{!18, !11, !18, !193, !18, !132, !9, !3281, !193, !193}
!3281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3282, size: 64)
!3282 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !64)
!3283 = !{!3284, !3285, !3286, !3287, !3288, !3289, !3290, !3291, !3292, !3293, !3294, !3295, !3296, !3297, !3298, !3299, !3300, !3301, !3302, !3303, !3304, !3308, !3309, !3310, !3311, !3312, !3315, !3316, !3333, !3336, !3337, !3344}
!3284 = !DILocalVariable(name: "buffer", arg: 1, scope: !3278, file: !492, line: 248, type: !11)
!3285 = !DILocalVariable(name: "buffersize", arg: 2, scope: !3278, file: !492, line: 248, type: !18)
!3286 = !DILocalVariable(name: "arg", arg: 3, scope: !3278, file: !492, line: 249, type: !193)
!3287 = !DILocalVariable(name: "argsize", arg: 4, scope: !3278, file: !492, line: 249, type: !18)
!3288 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !3278, file: !492, line: 250, type: !132)
!3289 = !DILocalVariable(name: "flags", arg: 6, scope: !3278, file: !492, line: 250, type: !9)
!3290 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !3278, file: !492, line: 251, type: !3281)
!3291 = !DILocalVariable(name: "left_quote", arg: 8, scope: !3278, file: !492, line: 252, type: !193)
!3292 = !DILocalVariable(name: "right_quote", arg: 9, scope: !3278, file: !492, line: 253, type: !193)
!3293 = !DILocalVariable(name: "i", scope: !3278, file: !492, line: 255, type: !18)
!3294 = !DILocalVariable(name: "len", scope: !3278, file: !492, line: 256, type: !18)
!3295 = !DILocalVariable(name: "orig_buffersize", scope: !3278, file: !492, line: 257, type: !18)
!3296 = !DILocalVariable(name: "quote_string", scope: !3278, file: !492, line: 258, type: !193)
!3297 = !DILocalVariable(name: "quote_string_len", scope: !3278, file: !492, line: 259, type: !18)
!3298 = !DILocalVariable(name: "backslash_escapes", scope: !3278, file: !492, line: 260, type: !206)
!3299 = !DILocalVariable(name: "unibyte_locale", scope: !3278, file: !492, line: 261, type: !206)
!3300 = !DILocalVariable(name: "elide_outer_quotes", scope: !3278, file: !492, line: 262, type: !206)
!3301 = !DILocalVariable(name: "pending_shell_escape_end", scope: !3278, file: !492, line: 263, type: !206)
!3302 = !DILocalVariable(name: "encountered_single_quote", scope: !3278, file: !492, line: 264, type: !206)
!3303 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !3278, file: !492, line: 265, type: !206)
!3304 = !DILocalVariable(name: "c", scope: !3305, file: !492, line: 394, type: !192)
!3305 = distinct !DILexicalBlock(scope: !3306, file: !492, line: 393, column: 5)
!3306 = distinct !DILexicalBlock(scope: !3307, file: !492, line: 392, column: 3)
!3307 = distinct !DILexicalBlock(scope: !3278, file: !492, line: 392, column: 3)
!3308 = !DILocalVariable(name: "esc", scope: !3305, file: !492, line: 395, type: !192)
!3309 = !DILocalVariable(name: "is_right_quote", scope: !3305, file: !492, line: 396, type: !206)
!3310 = !DILocalVariable(name: "escaping", scope: !3305, file: !492, line: 397, type: !206)
!3311 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !3305, file: !492, line: 398, type: !206)
!3312 = !DILocalVariable(name: "m", scope: !3313, file: !492, line: 602, type: !18)
!3313 = distinct !DILexicalBlock(scope: !3314, file: !492, line: 600, column: 11)
!3314 = distinct !DILexicalBlock(scope: !3305, file: !492, line: 418, column: 9)
!3315 = !DILocalVariable(name: "printable", scope: !3313, file: !492, line: 604, type: !206)
!3316 = !DILocalVariable(name: "mbstate", scope: !3317, file: !492, line: 613, type: !3319)
!3317 = distinct !DILexicalBlock(scope: !3318, file: !492, line: 612, column: 15)
!3318 = distinct !DILexicalBlock(scope: !3313, file: !492, line: 606, column: 17)
!3319 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !3320, line: 107, baseType: !3321)
!3320 = !DIFile(filename: "/usr/include/wchar.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3321 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !3320, line: 95, baseType: !3322)
!3322 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3320, line: 83, size: 64, elements: !3323)
!3323 = !{!3324, !3325}
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3322, file: !3320, line: 85, baseType: !9, size: 32)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3322, file: !3320, line: 94, baseType: !3326, size: 32, offset: 32)
!3326 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3322, file: !3320, line: 86, size: 32, elements: !3327)
!3327 = !{!3328, !3329}
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3326, file: !3320, line: 89, baseType: !64, size: 32)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3326, file: !3320, line: 93, baseType: !3330, size: 32)
!3330 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 32, elements: !3331)
!3331 = !{!3332}
!3332 = !DISubrange(count: 4)
!3333 = !DILocalVariable(name: "w", scope: !3334, file: !492, line: 623, type: !3335)
!3334 = distinct !DILexicalBlock(scope: !3317, file: !492, line: 622, column: 19)
!3335 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !19, line: 90, baseType: !9)
!3336 = !DILocalVariable(name: "bytes", scope: !3334, file: !492, line: 624, type: !18)
!3337 = !DILocalVariable(name: "j", scope: !3338, file: !492, line: 649, type: !18)
!3338 = distinct !DILexicalBlock(scope: !3339, file: !492, line: 648, column: 27)
!3339 = distinct !DILexicalBlock(scope: !3340, file: !492, line: 646, column: 29)
!3340 = distinct !DILexicalBlock(scope: !3341, file: !492, line: 641, column: 23)
!3341 = distinct !DILexicalBlock(scope: !3342, file: !492, line: 633, column: 30)
!3342 = distinct !DILexicalBlock(scope: !3343, file: !492, line: 628, column: 30)
!3343 = distinct !DILexicalBlock(scope: !3334, file: !492, line: 626, column: 25)
!3344 = !DILocalVariable(name: "ilim", scope: !3345, file: !492, line: 676, type: !18)
!3345 = distinct !DILexicalBlock(scope: !3346, file: !492, line: 673, column: 15)
!3346 = distinct !DILexicalBlock(scope: !3313, file: !492, line: 672, column: 17)
!3347 = !DILocation(line: 248, column: 33, scope: !3278)
!3348 = !DILocation(line: 248, column: 48, scope: !3278)
!3349 = !DILocation(line: 249, column: 39, scope: !3278)
!3350 = !DILocation(line: 249, column: 51, scope: !3278)
!3351 = !DILocation(line: 250, column: 46, scope: !3278)
!3352 = !DILocation(line: 250, column: 65, scope: !3278)
!3353 = !DILocation(line: 251, column: 47, scope: !3278)
!3354 = !DILocation(line: 252, column: 39, scope: !3278)
!3355 = !DILocation(line: 253, column: 39, scope: !3278)
!3356 = !DILocation(line: 256, column: 10, scope: !3278)
!3357 = !DILocation(line: 257, column: 10, scope: !3278)
!3358 = !DILocation(line: 258, column: 15, scope: !3278)
!3359 = !DILocation(line: 259, column: 10, scope: !3278)
!3360 = !DILocation(line: 260, column: 8, scope: !3278)
!3361 = !DILocation(line: 261, column: 25, scope: !3278)
!3362 = !DILocation(line: 261, column: 36, scope: !3278)
!3363 = !DILocation(line: 262, column: 8, scope: !3278)
!3364 = !DILocation(line: 263, column: 8, scope: !3278)
!3365 = !DILocation(line: 264, column: 8, scope: !3278)
!3366 = !DILocation(line: 265, column: 8, scope: !3278)
!3367 = !DILocation(line: 265, column: 3, scope: !3278)
!3368 = !DILocation(line: 308, column: 3, scope: !3278)
!3369 = !DILocation(line: 315, column: 11, scope: !3370)
!3370 = distinct !DILexicalBlock(scope: !3278, file: !492, line: 309, column: 5)
!3371 = !DILocation(line: 315, column: 12, scope: !3372)
!3372 = distinct !DILexicalBlock(scope: !3370, file: !492, line: 315, column: 11)
!3373 = !DILocation(line: 316, column: 9, scope: !3374)
!3374 = !DILexicalBlockFile(scope: !3375, file: !492, discriminator: 1)
!3375 = distinct !DILexicalBlock(scope: !3376, file: !492, line: 316, column: 9)
!3376 = distinct !DILexicalBlock(scope: !3372, file: !492, line: 316, column: 9)
!3377 = !DILocation(line: 316, column: 9, scope: !3378)
!3378 = !DILexicalBlockFile(scope: !3376, file: !492, discriminator: 1)
!3379 = !DILocation(line: 316, column: 9, scope: !3380)
!3380 = !DILexicalBlockFile(scope: !3375, file: !492, discriminator: 2)
!3381 = !DILocation(line: 354, column: 26, scope: !3382)
!3382 = distinct !DILexicalBlock(scope: !3383, file: !492, line: 332, column: 11)
!3383 = distinct !DILexicalBlock(scope: !3384, file: !492, line: 331, column: 13)
!3384 = distinct !DILexicalBlock(scope: !3370, file: !492, line: 330, column: 7)
!3385 = !DILocation(line: 355, column: 27, scope: !3382)
!3386 = !DILocation(line: 356, column: 11, scope: !3382)
!3387 = !DILocation(line: 357, column: 14, scope: !3388)
!3388 = distinct !DILexicalBlock(scope: !3384, file: !492, line: 357, column: 13)
!3389 = !DILocation(line: 357, column: 13, scope: !3384)
!3390 = !DILocation(line: 358, column: 43, scope: !3391)
!3391 = !DILexicalBlockFile(scope: !3392, file: !492, discriminator: 1)
!3392 = distinct !DILexicalBlock(scope: !3393, file: !492, line: 358, column: 11)
!3393 = distinct !DILexicalBlock(scope: !3388, file: !492, line: 358, column: 11)
!3394 = !DILocation(line: 358, column: 11, scope: !3395)
!3395 = !DILexicalBlockFile(scope: !3393, file: !492, discriminator: 1)
!3396 = !DILocation(line: 359, column: 13, scope: !3397)
!3397 = !DILexicalBlockFile(scope: !3398, file: !492, discriminator: 1)
!3398 = distinct !DILexicalBlock(scope: !3399, file: !492, line: 359, column: 13)
!3399 = distinct !DILexicalBlock(scope: !3392, file: !492, line: 359, column: 13)
!3400 = !DILocation(line: 359, column: 13, scope: !3401)
!3401 = !DILexicalBlockFile(scope: !3399, file: !492, discriminator: 1)
!3402 = !DILocation(line: 359, column: 13, scope: !3403)
!3403 = !DILexicalBlockFile(scope: !3398, file: !492, discriminator: 2)
!3404 = !DILocation(line: 359, column: 13, scope: !3405)
!3405 = !DILexicalBlockFile(scope: !3399, file: !492, discriminator: 3)
!3406 = !DILocation(line: 358, column: 70, scope: !3407)
!3407 = !DILexicalBlockFile(scope: !3392, file: !492, discriminator: 2)
!3408 = distinct !{!3408, !3409, !3410}
!3409 = !DILocation(line: 358, column: 11, scope: !3393)
!3410 = !DILocation(line: 359, column: 13, scope: !3393)
!3411 = !DILocation(line: 362, column: 28, scope: !3384)
!3412 = !DILocation(line: 364, column: 7, scope: !3370)
!3413 = !DILocation(line: 367, column: 7, scope: !3370)
!3414 = !DILocation(line: 370, column: 7, scope: !3370)
!3415 = !DILocation(line: 373, column: 12, scope: !3416)
!3416 = distinct !DILexicalBlock(scope: !3370, file: !492, line: 373, column: 11)
!3417 = !DILocation(line: 373, column: 11, scope: !3370)
!3418 = !DILocation(line: 378, column: 12, scope: !3419)
!3419 = distinct !DILexicalBlock(scope: !3370, file: !492, line: 378, column: 11)
!3420 = !DILocation(line: 378, column: 11, scope: !3370)
!3421 = !DILocation(line: 379, column: 9, scope: !3422)
!3422 = !DILexicalBlockFile(scope: !3423, file: !492, discriminator: 1)
!3423 = distinct !DILexicalBlock(scope: !3424, file: !492, line: 379, column: 9)
!3424 = distinct !DILexicalBlock(scope: !3419, file: !492, line: 379, column: 9)
!3425 = !DILocation(line: 379, column: 9, scope: !3426)
!3426 = !DILexicalBlockFile(scope: !3424, file: !492, discriminator: 1)
!3427 = !DILocation(line: 379, column: 9, scope: !3428)
!3428 = !DILexicalBlockFile(scope: !3423, file: !492, discriminator: 2)
!3429 = !DILocation(line: 386, column: 7, scope: !3370)
!3430 = !DILocation(line: 389, column: 7, scope: !3370)
!3431 = !DILocation(line: 255, column: 10, scope: !3278)
!3432 = !DILocation(line: 392, column: 8, scope: !3307)
!3433 = !DILocation(line: 392, column: 27, scope: !3434)
!3434 = !DILexicalBlockFile(scope: !3306, file: !492, discriminator: 1)
!3435 = !DILocation(line: 392, column: 19, scope: !3434)
!3436 = !DILocation(line: 392, column: 60, scope: !3437)
!3437 = !DILexicalBlockFile(scope: !3306, file: !492, discriminator: 3)
!3438 = !DILocation(line: 392, column: 3, scope: !3439)
!3439 = !DILexicalBlockFile(scope: !3307, file: !492, discriminator: 4)
!3440 = !DILocation(line: 392, column: 41, scope: !3441)
!3441 = !DILexicalBlockFile(scope: !3306, file: !492, discriminator: 2)
!3442 = !DILocation(line: 392, column: 48, scope: !3441)
!3443 = !DILocation(line: 396, column: 12, scope: !3305)
!3444 = !DILocation(line: 397, column: 12, scope: !3305)
!3445 = !DILocation(line: 398, column: 12, scope: !3305)
!3446 = !DILocation(line: 401, column: 11, scope: !3447)
!3447 = distinct !DILexicalBlock(scope: !3305, file: !492, line: 400, column: 11)
!3448 = !DILocation(line: 403, column: 17, scope: !3449)
!3449 = !DILexicalBlockFile(scope: !3447, file: !492, discriminator: 1)
!3450 = !DILocation(line: 404, column: 39, scope: !3447)
!3451 = !DILocation(line: 408, column: 32, scope: !3447)
!3452 = !DILocation(line: 404, column: 19, scope: !3453)
!3453 = !DILexicalBlockFile(scope: !3447, file: !492, discriminator: 2)
!3454 = !DILocation(line: 404, column: 15, scope: !3455)
!3455 = !DILexicalBlockFile(scope: !3447, file: !492, discriminator: 4)
!3456 = !DILocation(line: 409, column: 11, scope: !3447)
!3457 = !DILocation(line: 409, column: 26, scope: !3449)
!3458 = !DILocation(line: 409, column: 14, scope: !3449)
!3459 = !DILocation(line: 400, column: 11, scope: !3460)
!3460 = !DILexicalBlockFile(scope: !3305, file: !492, discriminator: 1)
!3461 = !DILocation(line: 416, column: 11, scope: !3305)
!3462 = !DILocation(line: 394, column: 21, scope: !3305)
!3463 = !DILocation(line: 417, column: 7, scope: !3305)
!3464 = !DILocation(line: 420, column: 15, scope: !3314)
!3465 = !DILocation(line: 422, column: 15, scope: !3466)
!3466 = !DILexicalBlockFile(scope: !3467, file: !492, discriminator: 1)
!3467 = distinct !DILexicalBlock(scope: !3468, file: !492, line: 422, column: 15)
!3468 = distinct !DILexicalBlock(scope: !3469, file: !492, line: 421, column: 13)
!3469 = distinct !DILexicalBlock(scope: !3314, file: !492, line: 420, column: 15)
!3470 = !DILocation(line: 422, column: 15, scope: !3471)
!3471 = !DILexicalBlockFile(scope: !3472, file: !492, discriminator: 4)
!3472 = distinct !DILexicalBlock(scope: !3467, file: !492, line: 422, column: 15)
!3473 = !DILocation(line: 422, column: 15, scope: !3474)
!3474 = !DILexicalBlockFile(scope: !3472, file: !492, discriminator: 3)
!3475 = !DILocation(line: 422, column: 15, scope: !3476)
!3476 = !DILexicalBlockFile(scope: !3477, file: !492, discriminator: 6)
!3477 = distinct !DILexicalBlock(scope: !3478, file: !492, line: 422, column: 15)
!3478 = distinct !DILexicalBlock(scope: !3479, file: !492, line: 422, column: 15)
!3479 = distinct !DILexicalBlock(scope: !3472, file: !492, line: 422, column: 15)
!3480 = !DILocation(line: 422, column: 15, scope: !3481)
!3481 = !DILexicalBlockFile(scope: !3478, file: !492, discriminator: 6)
!3482 = !DILocation(line: 422, column: 15, scope: !3483)
!3483 = !DILexicalBlockFile(scope: !3477, file: !492, discriminator: 7)
!3484 = !DILocation(line: 422, column: 15, scope: !3485)
!3485 = !DILexicalBlockFile(scope: !3478, file: !492, discriminator: 8)
!3486 = !DILocation(line: 422, column: 15, scope: !3487)
!3487 = !DILexicalBlockFile(scope: !3488, file: !492, discriminator: 11)
!3488 = distinct !DILexicalBlock(scope: !3489, file: !492, line: 422, column: 15)
!3489 = distinct !DILexicalBlock(scope: !3479, file: !492, line: 422, column: 15)
!3490 = !DILocation(line: 422, column: 15, scope: !3491)
!3491 = !DILexicalBlockFile(scope: !3489, file: !492, discriminator: 11)
!3492 = !DILocation(line: 422, column: 15, scope: !3493)
!3493 = !DILexicalBlockFile(scope: !3488, file: !492, discriminator: 12)
!3494 = !DILocation(line: 422, column: 15, scope: !3495)
!3495 = !DILexicalBlockFile(scope: !3489, file: !492, discriminator: 13)
!3496 = !DILocation(line: 422, column: 15, scope: !3497)
!3497 = !DILexicalBlockFile(scope: !3498, file: !492, discriminator: 16)
!3498 = distinct !DILexicalBlock(scope: !3499, file: !492, line: 422, column: 15)
!3499 = distinct !DILexicalBlock(scope: !3479, file: !492, line: 422, column: 15)
!3500 = !DILocation(line: 422, column: 15, scope: !3501)
!3501 = !DILexicalBlockFile(scope: !3499, file: !492, discriminator: 16)
!3502 = !DILocation(line: 422, column: 15, scope: !3503)
!3503 = !DILexicalBlockFile(scope: !3498, file: !492, discriminator: 17)
!3504 = !DILocation(line: 422, column: 15, scope: !3505)
!3505 = !DILexicalBlockFile(scope: !3499, file: !492, discriminator: 18)
!3506 = !DILocation(line: 422, column: 15, scope: !3507)
!3507 = !DILexicalBlockFile(scope: !3479, file: !492, discriminator: 20)
!3508 = !DILocation(line: 422, column: 15, scope: !3509)
!3509 = !DILexicalBlockFile(scope: !3510, file: !492, discriminator: 22)
!3510 = distinct !DILexicalBlock(scope: !3511, file: !492, line: 422, column: 15)
!3511 = distinct !DILexicalBlock(scope: !3467, file: !492, line: 422, column: 15)
!3512 = !DILocation(line: 422, column: 15, scope: !3513)
!3513 = !DILexicalBlockFile(scope: !3511, file: !492, discriminator: 22)
!3514 = !DILocation(line: 422, column: 15, scope: !3515)
!3515 = !DILexicalBlockFile(scope: !3510, file: !492, discriminator: 23)
!3516 = !DILocation(line: 422, column: 15, scope: !3517)
!3517 = !DILexicalBlockFile(scope: !3511, file: !492, discriminator: 24)
!3518 = !DILocation(line: 430, column: 19, scope: !3519)
!3519 = distinct !DILexicalBlock(scope: !3468, file: !492, line: 429, column: 19)
!3520 = !DILocation(line: 430, column: 24, scope: !3521)
!3521 = !DILexicalBlockFile(scope: !3519, file: !492, discriminator: 1)
!3522 = !DILocation(line: 430, column: 28, scope: !3521)
!3523 = !DILocation(line: 430, column: 38, scope: !3521)
!3524 = !DILocation(line: 430, column: 48, scope: !3525)
!3525 = !DILexicalBlockFile(scope: !3519, file: !492, discriminator: 2)
!3526 = !DILocation(line: 430, column: 59, scope: !3525)
!3527 = !DILocation(line: 432, column: 19, scope: !3528)
!3528 = !DILexicalBlockFile(scope: !3529, file: !492, discriminator: 1)
!3529 = distinct !DILexicalBlock(scope: !3530, file: !492, line: 432, column: 19)
!3530 = distinct !DILexicalBlock(scope: !3531, file: !492, line: 432, column: 19)
!3531 = distinct !DILexicalBlock(scope: !3519, file: !492, line: 431, column: 17)
!3532 = !DILocation(line: 432, column: 19, scope: !3533)
!3533 = !DILexicalBlockFile(scope: !3530, file: !492, discriminator: 1)
!3534 = !DILocation(line: 432, column: 19, scope: !3535)
!3535 = !DILexicalBlockFile(scope: !3529, file: !492, discriminator: 2)
!3536 = !DILocation(line: 432, column: 19, scope: !3537)
!3537 = !DILexicalBlockFile(scope: !3530, file: !492, discriminator: 3)
!3538 = !DILocation(line: 433, column: 19, scope: !3539)
!3539 = !DILexicalBlockFile(scope: !3540, file: !492, discriminator: 1)
!3540 = distinct !DILexicalBlock(scope: !3541, file: !492, line: 433, column: 19)
!3541 = distinct !DILexicalBlock(scope: !3531, file: !492, line: 433, column: 19)
!3542 = !DILocation(line: 433, column: 19, scope: !3543)
!3543 = !DILexicalBlockFile(scope: !3541, file: !492, discriminator: 1)
!3544 = !DILocation(line: 433, column: 19, scope: !3545)
!3545 = !DILexicalBlockFile(scope: !3540, file: !492, discriminator: 2)
!3546 = !DILocation(line: 433, column: 19, scope: !3547)
!3547 = !DILexicalBlockFile(scope: !3541, file: !492, discriminator: 3)
!3548 = !DILocation(line: 434, column: 17, scope: !3531)
!3549 = !DILocation(line: 441, column: 20, scope: !3469)
!3550 = !DILocation(line: 446, column: 11, scope: !3314)
!3551 = !DILocation(line: 449, column: 19, scope: !3552)
!3552 = distinct !DILexicalBlock(scope: !3314, file: !492, line: 447, column: 13)
!3553 = !DILocation(line: 455, column: 19, scope: !3554)
!3554 = distinct !DILexicalBlock(scope: !3552, file: !492, line: 454, column: 19)
!3555 = !DILocation(line: 455, column: 24, scope: !3556)
!3556 = !DILexicalBlockFile(scope: !3554, file: !492, discriminator: 1)
!3557 = !DILocation(line: 455, column: 28, scope: !3556)
!3558 = !DILocation(line: 455, column: 38, scope: !3556)
!3559 = !DILocation(line: 455, column: 47, scope: !3560)
!3560 = !DILexicalBlockFile(scope: !3554, file: !492, discriminator: 2)
!3561 = !DILocation(line: 455, column: 41, scope: !3560)
!3562 = !DILocation(line: 455, column: 52, scope: !3560)
!3563 = !DILocation(line: 454, column: 19, scope: !3564)
!3564 = !DILexicalBlockFile(scope: !3552, file: !492, discriminator: 1)
!3565 = !DILocation(line: 456, column: 25, scope: !3554)
!3566 = !DILocation(line: 456, column: 17, scope: !3554)
!3567 = !DILocation(line: 463, column: 25, scope: !3568)
!3568 = distinct !DILexicalBlock(scope: !3554, file: !492, line: 457, column: 19)
!3569 = !DILocation(line: 467, column: 21, scope: !3570)
!3570 = !DILexicalBlockFile(scope: !3571, file: !492, discriminator: 1)
!3571 = distinct !DILexicalBlock(scope: !3572, file: !492, line: 467, column: 21)
!3572 = distinct !DILexicalBlock(scope: !3568, file: !492, line: 467, column: 21)
!3573 = !DILocation(line: 467, column: 21, scope: !3574)
!3574 = !DILexicalBlockFile(scope: !3572, file: !492, discriminator: 1)
!3575 = !DILocation(line: 467, column: 21, scope: !3576)
!3576 = !DILexicalBlockFile(scope: !3571, file: !492, discriminator: 2)
!3577 = !DILocation(line: 467, column: 21, scope: !3578)
!3578 = !DILexicalBlockFile(scope: !3572, file: !492, discriminator: 3)
!3579 = !DILocation(line: 468, column: 21, scope: !3580)
!3580 = !DILexicalBlockFile(scope: !3581, file: !492, discriminator: 1)
!3581 = distinct !DILexicalBlock(scope: !3582, file: !492, line: 468, column: 21)
!3582 = distinct !DILexicalBlock(scope: !3568, file: !492, line: 468, column: 21)
!3583 = !DILocation(line: 468, column: 21, scope: !3584)
!3584 = !DILexicalBlockFile(scope: !3582, file: !492, discriminator: 1)
!3585 = !DILocation(line: 468, column: 21, scope: !3586)
!3586 = !DILexicalBlockFile(scope: !3581, file: !492, discriminator: 2)
!3587 = !DILocation(line: 468, column: 21, scope: !3588)
!3588 = !DILexicalBlockFile(scope: !3582, file: !492, discriminator: 3)
!3589 = !DILocation(line: 469, column: 21, scope: !3590)
!3590 = !DILexicalBlockFile(scope: !3591, file: !492, discriminator: 1)
!3591 = distinct !DILexicalBlock(scope: !3592, file: !492, line: 469, column: 21)
!3592 = distinct !DILexicalBlock(scope: !3568, file: !492, line: 469, column: 21)
!3593 = !DILocation(line: 469, column: 21, scope: !3594)
!3594 = !DILexicalBlockFile(scope: !3592, file: !492, discriminator: 1)
!3595 = !DILocation(line: 469, column: 21, scope: !3596)
!3596 = !DILexicalBlockFile(scope: !3591, file: !492, discriminator: 2)
!3597 = !DILocation(line: 469, column: 21, scope: !3598)
!3598 = !DILexicalBlockFile(scope: !3592, file: !492, discriminator: 3)
!3599 = !DILocation(line: 470, column: 21, scope: !3600)
!3600 = !DILexicalBlockFile(scope: !3601, file: !492, discriminator: 1)
!3601 = distinct !DILexicalBlock(scope: !3602, file: !492, line: 470, column: 21)
!3602 = distinct !DILexicalBlock(scope: !3568, file: !492, line: 470, column: 21)
!3603 = !DILocation(line: 470, column: 21, scope: !3604)
!3604 = !DILexicalBlockFile(scope: !3602, file: !492, discriminator: 1)
!3605 = !DILocation(line: 470, column: 21, scope: !3606)
!3606 = !DILexicalBlockFile(scope: !3601, file: !492, discriminator: 2)
!3607 = !DILocation(line: 470, column: 21, scope: !3608)
!3608 = !DILexicalBlockFile(scope: !3602, file: !492, discriminator: 3)
!3609 = !DILocation(line: 471, column: 21, scope: !3568)
!3610 = !DILocation(line: 395, column: 21, scope: !3305)
!3611 = !DILocation(line: 484, column: 31, scope: !3314)
!3612 = !DILocation(line: 485, column: 31, scope: !3314)
!3613 = !DILocation(line: 487, column: 31, scope: !3314)
!3614 = !DILocation(line: 488, column: 31, scope: !3314)
!3615 = !DILocation(line: 489, column: 31, scope: !3314)
!3616 = !DILocation(line: 492, column: 15, scope: !3314)
!3617 = !DILocation(line: 494, column: 19, scope: !3618)
!3618 = distinct !DILexicalBlock(scope: !3619, file: !492, line: 493, column: 13)
!3619 = distinct !DILexicalBlock(scope: !3314, file: !492, line: 492, column: 15)
!3620 = !DILocation(line: 501, column: 33, scope: !3621)
!3621 = distinct !DILexicalBlock(scope: !3314, file: !492, line: 501, column: 15)
!3622 = !DILocation(line: 506, column: 15, scope: !3623)
!3623 = distinct !DILexicalBlock(scope: !3314, file: !492, line: 505, column: 15)
!3624 = !DILocation(line: 510, column: 15, scope: !3314)
!3625 = !DILocation(line: 518, column: 26, scope: !3626)
!3626 = distinct !DILexicalBlock(scope: !3314, file: !492, line: 518, column: 15)
!3627 = !DILocation(line: 518, column: 15, scope: !3314)
!3628 = !DILocation(line: 518, column: 40, scope: !3629)
!3629 = !DILexicalBlockFile(scope: !3626, file: !492, discriminator: 1)
!3630 = !DILocation(line: 518, column: 47, scope: !3629)
!3631 = !DILocation(line: 522, column: 17, scope: !3632)
!3632 = distinct !DILexicalBlock(scope: !3314, file: !492, line: 522, column: 15)
!3633 = !DILocation(line: 518, column: 18, scope: !3629)
!3634 = !DILocation(line: 518, column: 65, scope: !3635)
!3635 = !DILexicalBlockFile(scope: !3626, file: !492, discriminator: 2)
!3636 = !DILocation(line: 518, column: 15, scope: !3637)
!3637 = !DILexicalBlockFile(scope: !3314, file: !492, discriminator: 2)
!3638 = !DILocation(line: 522, column: 15, scope: !3314)
!3639 = !DILocation(line: 526, column: 11, scope: !3314)
!3640 = !DILocation(line: 541, column: 15, scope: !3641)
!3641 = distinct !DILexicalBlock(scope: !3314, file: !492, line: 540, column: 15)
!3642 = !DILocation(line: 548, column: 15, scope: !3314)
!3643 = !DILocation(line: 550, column: 19, scope: !3644)
!3644 = distinct !DILexicalBlock(scope: !3645, file: !492, line: 549, column: 13)
!3645 = distinct !DILexicalBlock(scope: !3314, file: !492, line: 548, column: 15)
!3646 = !DILocation(line: 553, column: 19, scope: !3647)
!3647 = distinct !DILexicalBlock(scope: !3644, file: !492, line: 553, column: 19)
!3648 = !DILocation(line: 553, column: 35, scope: !3649)
!3649 = !DILexicalBlockFile(scope: !3647, file: !492, discriminator: 1)
!3650 = !DILocation(line: 553, column: 30, scope: !3647)
!3651 = !DILocation(line: 562, column: 15, scope: !3652)
!3652 = !DILexicalBlockFile(scope: !3653, file: !492, discriminator: 1)
!3653 = distinct !DILexicalBlock(scope: !3654, file: !492, line: 562, column: 15)
!3654 = distinct !DILexicalBlock(scope: !3644, file: !492, line: 562, column: 15)
!3655 = !DILocation(line: 562, column: 15, scope: !3656)
!3656 = !DILexicalBlockFile(scope: !3654, file: !492, discriminator: 1)
!3657 = !DILocation(line: 562, column: 15, scope: !3658)
!3658 = !DILexicalBlockFile(scope: !3653, file: !492, discriminator: 2)
!3659 = !DILocation(line: 562, column: 15, scope: !3660)
!3660 = !DILexicalBlockFile(scope: !3654, file: !492, discriminator: 3)
!3661 = !DILocation(line: 563, column: 15, scope: !3662)
!3662 = !DILexicalBlockFile(scope: !3663, file: !492, discriminator: 1)
!3663 = distinct !DILexicalBlock(scope: !3664, file: !492, line: 563, column: 15)
!3664 = distinct !DILexicalBlock(scope: !3644, file: !492, line: 563, column: 15)
!3665 = !DILocation(line: 563, column: 15, scope: !3666)
!3666 = !DILexicalBlockFile(scope: !3664, file: !492, discriminator: 1)
!3667 = !DILocation(line: 563, column: 15, scope: !3668)
!3668 = !DILexicalBlockFile(scope: !3663, file: !492, discriminator: 2)
!3669 = !DILocation(line: 563, column: 15, scope: !3670)
!3670 = !DILexicalBlockFile(scope: !3664, file: !492, discriminator: 3)
!3671 = !DILocation(line: 564, column: 15, scope: !3672)
!3672 = !DILexicalBlockFile(scope: !3673, file: !492, discriminator: 1)
!3673 = distinct !DILexicalBlock(scope: !3674, file: !492, line: 564, column: 15)
!3674 = distinct !DILexicalBlock(scope: !3644, file: !492, line: 564, column: 15)
!3675 = !DILocation(line: 564, column: 15, scope: !3676)
!3676 = !DILexicalBlockFile(scope: !3674, file: !492, discriminator: 1)
!3677 = !DILocation(line: 564, column: 15, scope: !3678)
!3678 = !DILexicalBlockFile(scope: !3673, file: !492, discriminator: 2)
!3679 = !DILocation(line: 564, column: 15, scope: !3680)
!3680 = !DILexicalBlockFile(scope: !3674, file: !492, discriminator: 3)
!3681 = !DILocation(line: 566, column: 13, scope: !3644)
!3682 = !DILocation(line: 606, column: 17, scope: !3313)
!3683 = !DILocation(line: 602, column: 20, scope: !3313)
!3684 = !DILocation(line: 609, column: 29, scope: !3685)
!3685 = distinct !DILexicalBlock(scope: !3318, file: !492, line: 607, column: 15)
!3686 = !DILocation(line: 609, column: 27, scope: !3685)
!3687 = !DILocation(line: 604, column: 18, scope: !3313)
!3688 = !DILocation(line: 610, column: 15, scope: !3685)
!3689 = !DILocation(line: 613, column: 17, scope: !3317)
!3690 = !DILocation(line: 614, column: 17, scope: !3317)
!3691 = !DILocation(line: 618, column: 29, scope: !3692)
!3692 = distinct !DILexicalBlock(scope: !3317, file: !492, line: 618, column: 21)
!3693 = !DILocation(line: 618, column: 21, scope: !3317)
!3694 = distinct !{!3694, !3695, !3696}
!3695 = !DILocation(line: 621, column: 17, scope: !3317)
!3696 = !DILocation(line: 667, column: 44, scope: !3317)
!3697 = !DILocation(line: 619, column: 29, scope: !3692)
!3698 = !DILocation(line: 619, column: 19, scope: !3692)
!3699 = !DILocation(line: 623, column: 21, scope: !3334)
!3700 = !DILocation(line: 624, column: 56, scope: !3334)
!3701 = !DILocation(line: 624, column: 50, scope: !3334)
!3702 = !DILocation(line: 625, column: 53, scope: !3334)
!3703 = !DILocation(line: 613, column: 27, scope: !3317)
!3704 = !DILocation(line: 623, column: 29, scope: !3334)
!3705 = !DILocation(line: 624, column: 36, scope: !3334)
!3706 = !DILocation(line: 624, column: 28, scope: !3334)
!3707 = !DILocation(line: 626, column: 25, scope: !3334)
!3708 = !DILocation(line: 636, column: 38, scope: !3709)
!3709 = !DILexicalBlockFile(scope: !3710, file: !492, discriminator: 1)
!3710 = distinct !DILexicalBlock(scope: !3341, file: !492, line: 634, column: 23)
!3711 = !DILocation(line: 636, column: 48, scope: !3709)
!3712 = !DILocation(line: 636, column: 51, scope: !3713)
!3713 = !DILexicalBlockFile(scope: !3710, file: !492, discriminator: 2)
!3714 = !DILocation(line: 636, column: 48, scope: !3713)
!3715 = !DILocation(line: 636, column: 25, scope: !3716)
!3716 = !DILexicalBlockFile(scope: !3710, file: !492, discriminator: 3)
!3717 = !DILocation(line: 637, column: 28, scope: !3710)
!3718 = !DILocation(line: 636, column: 34, scope: !3709)
!3719 = distinct !{!3719, !3720, !3717}
!3720 = !DILocation(line: 636, column: 25, scope: !3710)
!3721 = !DILocation(line: 650, column: 43, scope: !3722)
!3722 = !DILexicalBlockFile(scope: !3723, file: !492, discriminator: 1)
!3723 = distinct !DILexicalBlock(scope: !3724, file: !492, line: 650, column: 29)
!3724 = distinct !DILexicalBlock(scope: !3338, file: !492, line: 650, column: 29)
!3725 = !DILocation(line: 647, column: 29, scope: !3339)
!3726 = !DILocation(line: 649, column: 36, scope: !3338)
!3727 = !DILocation(line: 651, column: 49, scope: !3723)
!3728 = !DILocation(line: 651, column: 39, scope: !3723)
!3729 = !DILocation(line: 651, column: 31, scope: !3723)
!3730 = !DILocation(line: 650, column: 53, scope: !3731)
!3731 = !DILexicalBlockFile(scope: !3723, file: !492, discriminator: 2)
!3732 = !DILocation(line: 650, column: 29, scope: !3733)
!3733 = !DILexicalBlockFile(scope: !3724, file: !492, discriminator: 1)
!3734 = distinct !{!3734, !3735, !3736}
!3735 = !DILocation(line: 650, column: 29, scope: !3724)
!3736 = !DILocation(line: 659, column: 33, scope: !3724)
!3737 = !DILocation(line: 666, column: 19, scope: !3317)
!3738 = !DILocation(line: 662, column: 41, scope: !3739)
!3739 = distinct !DILexicalBlock(scope: !3340, file: !492, line: 662, column: 29)
!3740 = !DILocation(line: 662, column: 31, scope: !3739)
!3741 = !DILocation(line: 662, column: 29, scope: !3340)
!3742 = !DILocation(line: 664, column: 27, scope: !3340)
!3743 = !DILocation(line: 667, column: 26, scope: !3317)
!3744 = !DILocation(line: 667, column: 24, scope: !3317)
!3745 = !DILocation(line: 666, column: 19, scope: !3746)
!3746 = !DILexicalBlockFile(scope: !3334, file: !492, discriminator: 3)
!3747 = !DILocation(line: 668, column: 15, scope: !3318)
!3748 = !DILocation(line: 670, column: 40, scope: !3313)
!3749 = !DILocation(line: 672, column: 19, scope: !3346)
!3750 = !DILocation(line: 672, column: 45, scope: !3751)
!3751 = !DILexicalBlockFile(scope: !3346, file: !492, discriminator: 1)
!3752 = !DILocation(line: 672, column: 23, scope: !3346)
!3753 = !DILocation(line: 676, column: 33, scope: !3345)
!3754 = !DILocation(line: 676, column: 24, scope: !3345)
!3755 = !DILocation(line: 678, column: 17, scope: !3345)
!3756 = !DILocation(line: 680, column: 43, scope: !3757)
!3757 = distinct !DILexicalBlock(scope: !3758, file: !492, line: 680, column: 25)
!3758 = distinct !DILexicalBlock(scope: !3759, file: !492, line: 679, column: 19)
!3759 = distinct !DILexicalBlock(scope: !3760, file: !492, line: 678, column: 17)
!3760 = distinct !DILexicalBlock(scope: !3345, file: !492, line: 678, column: 17)
!3761 = !DILocation(line: 682, column: 25, scope: !3762)
!3762 = !DILexicalBlockFile(scope: !3763, file: !492, discriminator: 1)
!3763 = distinct !DILexicalBlock(scope: !3764, file: !492, line: 682, column: 25)
!3764 = distinct !DILexicalBlock(scope: !3757, file: !492, line: 681, column: 23)
!3765 = !DILocation(line: 682, column: 25, scope: !3766)
!3766 = !DILexicalBlockFile(scope: !3767, file: !492, discriminator: 4)
!3767 = distinct !DILexicalBlock(scope: !3763, file: !492, line: 682, column: 25)
!3768 = !DILocation(line: 682, column: 25, scope: !3769)
!3769 = !DILexicalBlockFile(scope: !3767, file: !492, discriminator: 3)
!3770 = !DILocation(line: 682, column: 25, scope: !3771)
!3771 = !DILexicalBlockFile(scope: !3772, file: !492, discriminator: 6)
!3772 = distinct !DILexicalBlock(scope: !3773, file: !492, line: 682, column: 25)
!3773 = distinct !DILexicalBlock(scope: !3774, file: !492, line: 682, column: 25)
!3774 = distinct !DILexicalBlock(scope: !3767, file: !492, line: 682, column: 25)
!3775 = !DILocation(line: 682, column: 25, scope: !3776)
!3776 = !DILexicalBlockFile(scope: !3773, file: !492, discriminator: 6)
!3777 = !DILocation(line: 682, column: 25, scope: !3778)
!3778 = !DILexicalBlockFile(scope: !3772, file: !492, discriminator: 7)
!3779 = !DILocation(line: 682, column: 25, scope: !3780)
!3780 = !DILexicalBlockFile(scope: !3773, file: !492, discriminator: 8)
!3781 = !DILocation(line: 682, column: 25, scope: !3782)
!3782 = !DILexicalBlockFile(scope: !3783, file: !492, discriminator: 11)
!3783 = distinct !DILexicalBlock(scope: !3784, file: !492, line: 682, column: 25)
!3784 = distinct !DILexicalBlock(scope: !3774, file: !492, line: 682, column: 25)
!3785 = !DILocation(line: 682, column: 25, scope: !3786)
!3786 = !DILexicalBlockFile(scope: !3784, file: !492, discriminator: 11)
!3787 = !DILocation(line: 682, column: 25, scope: !3788)
!3788 = !DILexicalBlockFile(scope: !3783, file: !492, discriminator: 12)
!3789 = !DILocation(line: 682, column: 25, scope: !3790)
!3790 = !DILexicalBlockFile(scope: !3784, file: !492, discriminator: 13)
!3791 = !DILocation(line: 682, column: 25, scope: !3792)
!3792 = !DILexicalBlockFile(scope: !3793, file: !492, discriminator: 16)
!3793 = distinct !DILexicalBlock(scope: !3794, file: !492, line: 682, column: 25)
!3794 = distinct !DILexicalBlock(scope: !3774, file: !492, line: 682, column: 25)
!3795 = !DILocation(line: 682, column: 25, scope: !3796)
!3796 = !DILexicalBlockFile(scope: !3794, file: !492, discriminator: 16)
!3797 = !DILocation(line: 682, column: 25, scope: !3798)
!3798 = !DILexicalBlockFile(scope: !3793, file: !492, discriminator: 17)
!3799 = !DILocation(line: 682, column: 25, scope: !3800)
!3800 = !DILexicalBlockFile(scope: !3794, file: !492, discriminator: 18)
!3801 = !DILocation(line: 682, column: 25, scope: !3802)
!3802 = !DILexicalBlockFile(scope: !3774, file: !492, discriminator: 20)
!3803 = !DILocation(line: 682, column: 25, scope: !3804)
!3804 = !DILexicalBlockFile(scope: !3805, file: !492, discriminator: 22)
!3805 = distinct !DILexicalBlock(scope: !3806, file: !492, line: 682, column: 25)
!3806 = distinct !DILexicalBlock(scope: !3763, file: !492, line: 682, column: 25)
!3807 = !DILocation(line: 682, column: 25, scope: !3808)
!3808 = !DILexicalBlockFile(scope: !3806, file: !492, discriminator: 22)
!3809 = !DILocation(line: 682, column: 25, scope: !3810)
!3810 = !DILexicalBlockFile(scope: !3805, file: !492, discriminator: 23)
!3811 = !DILocation(line: 682, column: 25, scope: !3812)
!3812 = !DILexicalBlockFile(scope: !3806, file: !492, discriminator: 24)
!3813 = !DILocation(line: 683, column: 25, scope: !3814)
!3814 = !DILexicalBlockFile(scope: !3815, file: !492, discriminator: 1)
!3815 = distinct !DILexicalBlock(scope: !3816, file: !492, line: 683, column: 25)
!3816 = distinct !DILexicalBlock(scope: !3764, file: !492, line: 683, column: 25)
!3817 = !DILocation(line: 683, column: 25, scope: !3818)
!3818 = !DILexicalBlockFile(scope: !3816, file: !492, discriminator: 1)
!3819 = !DILocation(line: 683, column: 25, scope: !3820)
!3820 = !DILexicalBlockFile(scope: !3815, file: !492, discriminator: 2)
!3821 = !DILocation(line: 683, column: 25, scope: !3822)
!3822 = !DILexicalBlockFile(scope: !3816, file: !492, discriminator: 3)
!3823 = !DILocation(line: 684, column: 25, scope: !3824)
!3824 = !DILexicalBlockFile(scope: !3825, file: !492, discriminator: 1)
!3825 = distinct !DILexicalBlock(scope: !3826, file: !492, line: 684, column: 25)
!3826 = distinct !DILexicalBlock(scope: !3764, file: !492, line: 684, column: 25)
!3827 = !DILocation(line: 684, column: 25, scope: !3828)
!3828 = !DILexicalBlockFile(scope: !3826, file: !492, discriminator: 1)
!3829 = !DILocation(line: 684, column: 25, scope: !3830)
!3830 = !DILexicalBlockFile(scope: !3825, file: !492, discriminator: 2)
!3831 = !DILocation(line: 684, column: 25, scope: !3832)
!3832 = !DILexicalBlockFile(scope: !3826, file: !492, discriminator: 3)
!3833 = !DILocation(line: 685, column: 38, scope: !3764)
!3834 = !DILocation(line: 685, column: 33, scope: !3764)
!3835 = !DILocation(line: 686, column: 23, scope: !3764)
!3836 = !DILocation(line: 687, column: 30, scope: !3837)
!3837 = distinct !DILexicalBlock(scope: !3757, file: !492, line: 687, column: 30)
!3838 = !DILocation(line: 687, column: 30, scope: !3757)
!3839 = !DILocation(line: 689, column: 25, scope: !3840)
!3840 = !DILexicalBlockFile(scope: !3841, file: !492, discriminator: 1)
!3841 = distinct !DILexicalBlock(scope: !3842, file: !492, line: 689, column: 25)
!3842 = distinct !DILexicalBlock(scope: !3843, file: !492, line: 689, column: 25)
!3843 = distinct !DILexicalBlock(scope: !3837, file: !492, line: 688, column: 23)
!3844 = !DILocation(line: 689, column: 25, scope: !3845)
!3845 = !DILexicalBlockFile(scope: !3842, file: !492, discriminator: 1)
!3846 = !DILocation(line: 689, column: 25, scope: !3847)
!3847 = !DILexicalBlockFile(scope: !3841, file: !492, discriminator: 2)
!3848 = !DILocation(line: 689, column: 25, scope: !3849)
!3849 = !DILexicalBlockFile(scope: !3842, file: !492, discriminator: 3)
!3850 = !DILocation(line: 691, column: 23, scope: !3843)
!3851 = !DILocation(line: 692, column: 35, scope: !3852)
!3852 = distinct !DILexicalBlock(scope: !3758, file: !492, line: 692, column: 25)
!3853 = !DILocation(line: 692, column: 30, scope: !3852)
!3854 = !DILocation(line: 692, column: 25, scope: !3758)
!3855 = !DILocation(line: 694, column: 21, scope: !3856)
!3856 = !DILexicalBlockFile(scope: !3857, file: !492, discriminator: 1)
!3857 = distinct !DILexicalBlock(scope: !3858, file: !492, line: 694, column: 21)
!3858 = distinct !DILexicalBlock(scope: !3758, file: !492, line: 694, column: 21)
!3859 = !DILocation(line: 694, column: 21, scope: !3860)
!3860 = !DILexicalBlockFile(scope: !3857, file: !492, discriminator: 2)
!3861 = !DILocation(line: 694, column: 21, scope: !3862)
!3862 = !DILexicalBlockFile(scope: !3863, file: !492, discriminator: 4)
!3863 = distinct !DILexicalBlock(scope: !3864, file: !492, line: 694, column: 21)
!3864 = distinct !DILexicalBlock(scope: !3865, file: !492, line: 694, column: 21)
!3865 = distinct !DILexicalBlock(scope: !3857, file: !492, line: 694, column: 21)
!3866 = !DILocation(line: 694, column: 21, scope: !3867)
!3867 = !DILexicalBlockFile(scope: !3864, file: !492, discriminator: 4)
!3868 = !DILocation(line: 694, column: 21, scope: !3869)
!3869 = !DILexicalBlockFile(scope: !3863, file: !492, discriminator: 5)
!3870 = !DILocation(line: 694, column: 21, scope: !3871)
!3871 = !DILexicalBlockFile(scope: !3864, file: !492, discriminator: 6)
!3872 = !DILocation(line: 694, column: 21, scope: !3873)
!3873 = !DILexicalBlockFile(scope: !3874, file: !492, discriminator: 9)
!3874 = distinct !DILexicalBlock(scope: !3875, file: !492, line: 694, column: 21)
!3875 = distinct !DILexicalBlock(scope: !3865, file: !492, line: 694, column: 21)
!3876 = !DILocation(line: 694, column: 21, scope: !3877)
!3877 = !DILexicalBlockFile(scope: !3875, file: !492, discriminator: 9)
!3878 = !DILocation(line: 694, column: 21, scope: !3879)
!3879 = !DILexicalBlockFile(scope: !3874, file: !492, discriminator: 10)
!3880 = !DILocation(line: 694, column: 21, scope: !3881)
!3881 = !DILexicalBlockFile(scope: !3875, file: !492, discriminator: 11)
!3882 = !DILocation(line: 694, column: 21, scope: !3883)
!3883 = !DILexicalBlockFile(scope: !3865, file: !492, discriminator: 13)
!3884 = !DILocation(line: 695, column: 21, scope: !3885)
!3885 = !DILexicalBlockFile(scope: !3886, file: !492, discriminator: 1)
!3886 = distinct !DILexicalBlock(scope: !3887, file: !492, line: 695, column: 21)
!3887 = distinct !DILexicalBlock(scope: !3758, file: !492, line: 695, column: 21)
!3888 = !DILocation(line: 695, column: 21, scope: !3889)
!3889 = !DILexicalBlockFile(scope: !3887, file: !492, discriminator: 1)
!3890 = !DILocation(line: 695, column: 21, scope: !3891)
!3891 = !DILexicalBlockFile(scope: !3886, file: !492, discriminator: 2)
!3892 = !DILocation(line: 695, column: 21, scope: !3893)
!3893 = !DILexicalBlockFile(scope: !3887, file: !492, discriminator: 3)
!3894 = !DILocation(line: 696, column: 25, scope: !3758)
!3895 = !DILocation(line: 678, column: 17, scope: !3896)
!3896 = !DILexicalBlockFile(scope: !3759, file: !492, discriminator: 1)
!3897 = distinct !{!3897, !3898, !3899}
!3898 = !DILocation(line: 678, column: 17, scope: !3760)
!3899 = !DILocation(line: 697, column: 19, scope: !3760)
!3900 = !DILocation(line: 704, column: 34, scope: !3901)
!3901 = distinct !DILexicalBlock(scope: !3305, file: !492, line: 704, column: 11)
!3902 = !DILocation(line: 706, column: 14, scope: !3901)
!3903 = !DILocation(line: 707, column: 14, scope: !3901)
!3904 = !DILocation(line: 707, column: 35, scope: !3905)
!3905 = !DILexicalBlockFile(scope: !3901, file: !492, discriminator: 1)
!3906 = !DILocation(line: 707, column: 17, scope: !3905)
!3907 = !DILocation(line: 707, column: 53, scope: !3905)
!3908 = !DILocation(line: 707, column: 47, scope: !3905)
!3909 = !DILocation(line: 707, column: 65, scope: !3905)
!3910 = !DILocation(line: 708, column: 15, scope: !3905)
!3911 = !DILocation(line: 708, column: 11, scope: !3901)
!3912 = !DILocation(line: 704, column: 11, scope: !3913)
!3913 = !DILexicalBlockFile(scope: !3305, file: !492, discriminator: 2)
!3914 = !DILocation(line: 712, column: 7, scope: !3915)
!3915 = !DILexicalBlockFile(scope: !3916, file: !492, discriminator: 1)
!3916 = distinct !DILexicalBlock(scope: !3305, file: !492, line: 712, column: 7)
!3917 = !DILocation(line: 712, column: 7, scope: !3918)
!3918 = !DILexicalBlockFile(scope: !3919, file: !492, discriminator: 4)
!3919 = distinct !DILexicalBlock(scope: !3916, file: !492, line: 712, column: 7)
!3920 = !DILocation(line: 712, column: 7, scope: !3921)
!3921 = !DILexicalBlockFile(scope: !3919, file: !492, discriminator: 3)
!3922 = !DILocation(line: 712, column: 7, scope: !3923)
!3923 = !DILexicalBlockFile(scope: !3924, file: !492, discriminator: 6)
!3924 = distinct !DILexicalBlock(scope: !3925, file: !492, line: 712, column: 7)
!3925 = distinct !DILexicalBlock(scope: !3926, file: !492, line: 712, column: 7)
!3926 = distinct !DILexicalBlock(scope: !3919, file: !492, line: 712, column: 7)
!3927 = !DILocation(line: 712, column: 7, scope: !3928)
!3928 = !DILexicalBlockFile(scope: !3925, file: !492, discriminator: 6)
!3929 = !DILocation(line: 712, column: 7, scope: !3930)
!3930 = !DILexicalBlockFile(scope: !3924, file: !492, discriminator: 7)
!3931 = !DILocation(line: 712, column: 7, scope: !3932)
!3932 = !DILexicalBlockFile(scope: !3925, file: !492, discriminator: 8)
!3933 = !DILocation(line: 712, column: 7, scope: !3934)
!3934 = !DILexicalBlockFile(scope: !3935, file: !492, discriminator: 11)
!3935 = distinct !DILexicalBlock(scope: !3936, file: !492, line: 712, column: 7)
!3936 = distinct !DILexicalBlock(scope: !3926, file: !492, line: 712, column: 7)
!3937 = !DILocation(line: 712, column: 7, scope: !3938)
!3938 = !DILexicalBlockFile(scope: !3936, file: !492, discriminator: 11)
!3939 = !DILocation(line: 712, column: 7, scope: !3940)
!3940 = !DILexicalBlockFile(scope: !3935, file: !492, discriminator: 12)
!3941 = !DILocation(line: 712, column: 7, scope: !3942)
!3942 = !DILexicalBlockFile(scope: !3936, file: !492, discriminator: 13)
!3943 = !DILocation(line: 712, column: 7, scope: !3944)
!3944 = !DILexicalBlockFile(scope: !3945, file: !492, discriminator: 16)
!3945 = distinct !DILexicalBlock(scope: !3946, file: !492, line: 712, column: 7)
!3946 = distinct !DILexicalBlock(scope: !3926, file: !492, line: 712, column: 7)
!3947 = !DILocation(line: 712, column: 7, scope: !3948)
!3948 = !DILexicalBlockFile(scope: !3946, file: !492, discriminator: 16)
!3949 = !DILocation(line: 712, column: 7, scope: !3950)
!3950 = !DILexicalBlockFile(scope: !3945, file: !492, discriminator: 17)
!3951 = !DILocation(line: 712, column: 7, scope: !3952)
!3952 = !DILexicalBlockFile(scope: !3946, file: !492, discriminator: 18)
!3953 = !DILocation(line: 712, column: 7, scope: !3954)
!3954 = !DILexicalBlockFile(scope: !3926, file: !492, discriminator: 20)
!3955 = !DILocation(line: 712, column: 7, scope: !3956)
!3956 = !DILexicalBlockFile(scope: !3957, file: !492, discriminator: 22)
!3957 = distinct !DILexicalBlock(scope: !3958, file: !492, line: 712, column: 7)
!3958 = distinct !DILexicalBlock(scope: !3916, file: !492, line: 712, column: 7)
!3959 = !DILocation(line: 712, column: 7, scope: !3960)
!3960 = !DILexicalBlockFile(scope: !3958, file: !492, discriminator: 22)
!3961 = !DILocation(line: 712, column: 7, scope: !3962)
!3962 = !DILexicalBlockFile(scope: !3957, file: !492, discriminator: 23)
!3963 = !DILocation(line: 712, column: 7, scope: !3964)
!3964 = !DILexicalBlockFile(scope: !3958, file: !492, discriminator: 24)
!3965 = !DILocation(line: 715, column: 7, scope: !3966)
!3966 = !DILexicalBlockFile(scope: !3967, file: !492, discriminator: 1)
!3967 = distinct !DILexicalBlock(scope: !3968, file: !492, line: 715, column: 7)
!3968 = distinct !DILexicalBlock(scope: !3305, file: !492, line: 715, column: 7)
!3969 = !DILocation(line: 715, column: 7, scope: !3970)
!3970 = !DILexicalBlockFile(scope: !3967, file: !492, discriminator: 2)
!3971 = !DILocation(line: 715, column: 7, scope: !3972)
!3972 = !DILexicalBlockFile(scope: !3973, file: !492, discriminator: 4)
!3973 = distinct !DILexicalBlock(scope: !3974, file: !492, line: 715, column: 7)
!3974 = distinct !DILexicalBlock(scope: !3975, file: !492, line: 715, column: 7)
!3975 = distinct !DILexicalBlock(scope: !3967, file: !492, line: 715, column: 7)
!3976 = !DILocation(line: 715, column: 7, scope: !3977)
!3977 = !DILexicalBlockFile(scope: !3974, file: !492, discriminator: 4)
!3978 = !DILocation(line: 715, column: 7, scope: !3979)
!3979 = !DILexicalBlockFile(scope: !3973, file: !492, discriminator: 5)
!3980 = !DILocation(line: 715, column: 7, scope: !3981)
!3981 = !DILexicalBlockFile(scope: !3974, file: !492, discriminator: 6)
!3982 = !DILocation(line: 715, column: 7, scope: !3983)
!3983 = !DILexicalBlockFile(scope: !3984, file: !492, discriminator: 9)
!3984 = distinct !DILexicalBlock(scope: !3985, file: !492, line: 715, column: 7)
!3985 = distinct !DILexicalBlock(scope: !3975, file: !492, line: 715, column: 7)
!3986 = !DILocation(line: 715, column: 7, scope: !3987)
!3987 = !DILexicalBlockFile(scope: !3985, file: !492, discriminator: 9)
!3988 = !DILocation(line: 715, column: 7, scope: !3989)
!3989 = !DILexicalBlockFile(scope: !3984, file: !492, discriminator: 10)
!3990 = !DILocation(line: 715, column: 7, scope: !3991)
!3991 = !DILexicalBlockFile(scope: !3985, file: !492, discriminator: 11)
!3992 = !DILocation(line: 715, column: 7, scope: !3993)
!3993 = !DILexicalBlockFile(scope: !3975, file: !492, discriminator: 13)
!3994 = !DILocation(line: 716, column: 7, scope: !3995)
!3995 = !DILexicalBlockFile(scope: !3996, file: !492, discriminator: 1)
!3996 = distinct !DILexicalBlock(scope: !3997, file: !492, line: 716, column: 7)
!3997 = distinct !DILexicalBlock(scope: !3305, file: !492, line: 716, column: 7)
!3998 = !DILocation(line: 716, column: 7, scope: !3999)
!3999 = !DILexicalBlockFile(scope: !3997, file: !492, discriminator: 1)
!4000 = !DILocation(line: 716, column: 7, scope: !4001)
!4001 = !DILexicalBlockFile(scope: !3996, file: !492, discriminator: 2)
!4002 = !DILocation(line: 716, column: 7, scope: !4003)
!4003 = !DILexicalBlockFile(scope: !3997, file: !492, discriminator: 3)
!4004 = !DILocation(line: 718, column: 13, scope: !4005)
!4005 = distinct !DILexicalBlock(scope: !3305, file: !492, line: 718, column: 11)
!4006 = !DILocation(line: 718, column: 11, scope: !3305)
!4007 = !DILocation(line: 720, column: 5, scope: !3306)
!4008 = !DILocation(line: 392, column: 75, scope: !4009)
!4009 = !DILexicalBlockFile(scope: !3306, file: !492, discriminator: 5)
!4010 = !DILocation(line: 392, column: 3, scope: !4009)
!4011 = distinct !{!4011, !4012, !4013}
!4012 = !DILocation(line: 392, column: 3, scope: !3307)
!4013 = !DILocation(line: 720, column: 5, scope: !3307)
!4014 = !DILocation(line: 722, column: 11, scope: !4015)
!4015 = distinct !DILexicalBlock(scope: !3278, file: !492, line: 722, column: 7)
!4016 = !DILocation(line: 722, column: 16, scope: !4015)
!4017 = !DILocation(line: 730, column: 51, scope: !4018)
!4018 = distinct !DILexicalBlock(scope: !3278, file: !492, line: 730, column: 7)
!4019 = !DILocation(line: 731, column: 10, scope: !4020)
!4020 = !DILexicalBlockFile(scope: !4018, file: !492, discriminator: 1)
!4021 = !DILocation(line: 733, column: 11, scope: !4022)
!4022 = distinct !DILexicalBlock(scope: !4023, file: !492, line: 733, column: 11)
!4023 = distinct !DILexicalBlock(scope: !4018, file: !492, line: 732, column: 5)
!4024 = !DILocation(line: 733, column: 11, scope: !4023)
!4025 = !DILocation(line: 734, column: 16, scope: !4022)
!4026 = !DILocation(line: 734, column: 9, scope: !4022)
!4027 = !DILocation(line: 738, column: 18, scope: !4028)
!4028 = distinct !DILexicalBlock(scope: !4022, file: !492, line: 738, column: 16)
!4029 = !DILocation(line: 738, column: 32, scope: !4030)
!4030 = !DILexicalBlockFile(scope: !4028, file: !492, discriminator: 1)
!4031 = !DILocation(line: 738, column: 29, scope: !4028)
!4032 = !DILocation(line: 747, column: 7, scope: !4033)
!4033 = distinct !DILexicalBlock(scope: !3278, file: !492, line: 747, column: 7)
!4034 = !DILocation(line: 747, column: 20, scope: !4033)
!4035 = !DILocation(line: 748, column: 12, scope: !4036)
!4036 = !DILexicalBlockFile(scope: !4037, file: !492, discriminator: 1)
!4037 = distinct !DILexicalBlock(scope: !4038, file: !492, line: 748, column: 5)
!4038 = distinct !DILexicalBlock(scope: !4033, file: !492, line: 748, column: 5)
!4039 = !DILocation(line: 748, column: 5, scope: !4040)
!4040 = !DILexicalBlockFile(scope: !4038, file: !492, discriminator: 1)
!4041 = !DILocation(line: 749, column: 7, scope: !4042)
!4042 = !DILexicalBlockFile(scope: !4043, file: !492, discriminator: 1)
!4043 = distinct !DILexicalBlock(scope: !4044, file: !492, line: 749, column: 7)
!4044 = distinct !DILexicalBlock(scope: !4037, file: !492, line: 749, column: 7)
!4045 = !DILocation(line: 749, column: 7, scope: !4046)
!4046 = !DILexicalBlockFile(scope: !4044, file: !492, discriminator: 1)
!4047 = !DILocation(line: 749, column: 7, scope: !4048)
!4048 = !DILexicalBlockFile(scope: !4043, file: !492, discriminator: 2)
!4049 = !DILocation(line: 749, column: 7, scope: !4050)
!4050 = !DILexicalBlockFile(scope: !4044, file: !492, discriminator: 3)
!4051 = !DILocation(line: 748, column: 39, scope: !4052)
!4052 = !DILexicalBlockFile(scope: !4037, file: !492, discriminator: 2)
!4053 = distinct !{!4053, !4054, !4055}
!4054 = !DILocation(line: 748, column: 5, scope: !4038)
!4055 = !DILocation(line: 749, column: 7, scope: !4038)
!4056 = !DILocation(line: 751, column: 11, scope: !4057)
!4057 = distinct !DILexicalBlock(scope: !3278, file: !492, line: 751, column: 7)
!4058 = !DILocation(line: 751, column: 7, scope: !3278)
!4059 = !DILocation(line: 752, column: 5, scope: !4057)
!4060 = !DILocation(line: 752, column: 17, scope: !4057)
!4061 = !DILocation(line: 758, column: 21, scope: !4062)
!4062 = distinct !DILexicalBlock(scope: !3278, file: !492, line: 758, column: 7)
!4063 = !DILocation(line: 758, column: 54, scope: !4064)
!4064 = !DILexicalBlockFile(scope: !4062, file: !492, discriminator: 1)
!4065 = !DILocation(line: 758, column: 51, scope: !4062)
!4066 = !DILocation(line: 762, column: 42, scope: !3278)
!4067 = !DILocation(line: 760, column: 10, scope: !3278)
!4068 = !DILocation(line: 760, column: 3, scope: !3278)
!4069 = !DILocation(line: 764, column: 1, scope: !3278)
!4070 = distinct !DISubprogram(name: "gettext_quote", scope: !492, file: !492, line: 199, type: !4071, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !480, variables: !4073)
!4071 = !DISubroutineType(types: !4072)
!4072 = !{!193, !193, !132}
!4073 = !{!4074, !4075, !4076, !4077}
!4074 = !DILocalVariable(name: "msgid", arg: 1, scope: !4070, file: !492, line: 199, type: !193)
!4075 = !DILocalVariable(name: "s", arg: 2, scope: !4070, file: !492, line: 199, type: !132)
!4076 = !DILocalVariable(name: "translation", scope: !4070, file: !492, line: 201, type: !193)
!4077 = !DILocalVariable(name: "locale_code", scope: !4070, file: !492, line: 202, type: !193)
!4078 = !DILocation(line: 199, column: 28, scope: !4070)
!4079 = !DILocation(line: 199, column: 54, scope: !4070)
!4080 = !DILocation(line: 201, column: 29, scope: !4070)
!4081 = !DILocation(line: 201, column: 15, scope: !4070)
!4082 = !DILocation(line: 204, column: 19, scope: !4083)
!4083 = distinct !DILexicalBlock(scope: !4070, file: !492, line: 204, column: 7)
!4084 = !DILocation(line: 204, column: 7, scope: !4070)
!4085 = !DILocation(line: 225, column: 17, scope: !4070)
!4086 = !DILocation(line: 202, column: 15, scope: !4070)
!4087 = !DILocalVariable(name: "s2", arg: 2, scope: !4088, file: !4089, line: 160, type: !193)
!4088 = distinct !DISubprogram(name: "strcaseeq0", scope: !4089, file: !4089, line: 160, type: !4090, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !480, variables: !4092)
!4089 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4090 = !DISubroutineType(types: !4091)
!4091 = !{!9, !193, !193, !12, !12, !12, !12, !12, !12, !12, !12, !12}
!4092 = !{!4093, !4087, !4094, !4095, !4096, !4097, !4098, !4099, !4100, !4101, !4102}
!4093 = !DILocalVariable(name: "s1", arg: 1, scope: !4088, file: !4089, line: 160, type: !193)
!4094 = !DILocalVariable(name: "s20", arg: 3, scope: !4088, file: !4089, line: 160, type: !12)
!4095 = !DILocalVariable(name: "s21", arg: 4, scope: !4088, file: !4089, line: 160, type: !12)
!4096 = !DILocalVariable(name: "s22", arg: 5, scope: !4088, file: !4089, line: 160, type: !12)
!4097 = !DILocalVariable(name: "s23", arg: 6, scope: !4088, file: !4089, line: 160, type: !12)
!4098 = !DILocalVariable(name: "s24", arg: 7, scope: !4088, file: !4089, line: 160, type: !12)
!4099 = !DILocalVariable(name: "s25", arg: 8, scope: !4088, file: !4089, line: 160, type: !12)
!4100 = !DILocalVariable(name: "s26", arg: 9, scope: !4088, file: !4089, line: 160, type: !12)
!4101 = !DILocalVariable(name: "s27", arg: 10, scope: !4088, file: !4089, line: 160, type: !12)
!4102 = !DILocalVariable(name: "s28", arg: 11, scope: !4088, file: !4089, line: 160, type: !12)
!4103 = !DILocation(line: 160, column: 41, scope: !4088, inlinedAt: !4104)
!4104 = distinct !DILocation(line: 226, column: 7, scope: !4105)
!4105 = distinct !DILexicalBlock(scope: !4070, file: !492, line: 226, column: 7)
!4106 = !DILocation(line: 160, column: 120, scope: !4088, inlinedAt: !4104)
!4107 = !DILocation(line: 160, column: 130, scope: !4088, inlinedAt: !4104)
!4108 = !DILocation(line: 162, column: 7, scope: !4109, inlinedAt: !4104)
!4109 = !DILexicalBlockFile(scope: !4110, file: !4089, discriminator: 1)
!4110 = distinct !DILexicalBlock(scope: !4088, file: !4089, line: 162, column: 7)
!4111 = !DILocalVariable(name: "s2", arg: 2, scope: !4112, file: !4089, line: 146, type: !193)
!4112 = distinct !DISubprogram(name: "strcaseeq1", scope: !4089, file: !4089, line: 146, type: !4113, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !480, variables: !4115)
!4113 = !DISubroutineType(types: !4114)
!4114 = !{!9, !193, !193, !12, !12, !12, !12, !12, !12, !12, !12}
!4115 = !{!4116, !4111, !4117, !4118, !4119, !4120, !4121, !4122, !4123, !4124}
!4116 = !DILocalVariable(name: "s1", arg: 1, scope: !4112, file: !4089, line: 146, type: !193)
!4117 = !DILocalVariable(name: "s21", arg: 3, scope: !4112, file: !4089, line: 146, type: !12)
!4118 = !DILocalVariable(name: "s22", arg: 4, scope: !4112, file: !4089, line: 146, type: !12)
!4119 = !DILocalVariable(name: "s23", arg: 5, scope: !4112, file: !4089, line: 146, type: !12)
!4120 = !DILocalVariable(name: "s24", arg: 6, scope: !4112, file: !4089, line: 146, type: !12)
!4121 = !DILocalVariable(name: "s25", arg: 7, scope: !4112, file: !4089, line: 146, type: !12)
!4122 = !DILocalVariable(name: "s26", arg: 8, scope: !4112, file: !4089, line: 146, type: !12)
!4123 = !DILocalVariable(name: "s27", arg: 9, scope: !4112, file: !4089, line: 146, type: !12)
!4124 = !DILocalVariable(name: "s28", arg: 10, scope: !4112, file: !4089, line: 146, type: !12)
!4125 = !DILocation(line: 146, column: 41, scope: !4112, inlinedAt: !4126)
!4126 = distinct !DILocation(line: 167, column: 16, scope: !4127, inlinedAt: !4104)
!4127 = distinct !DILexicalBlock(scope: !4128, file: !4089, line: 164, column: 11)
!4128 = distinct !DILexicalBlock(scope: !4110, file: !4089, line: 163, column: 5)
!4129 = !DILocation(line: 146, column: 110, scope: !4112, inlinedAt: !4126)
!4130 = !DILocation(line: 146, column: 120, scope: !4112, inlinedAt: !4126)
!4131 = !DILocation(line: 148, column: 7, scope: !4132, inlinedAt: !4126)
!4132 = !DILexicalBlockFile(scope: !4133, file: !4089, discriminator: 1)
!4133 = distinct !DILexicalBlock(scope: !4112, file: !4089, line: 148, column: 7)
!4134 = !DILocalVariable(name: "s2", arg: 2, scope: !4135, file: !4089, line: 132, type: !193)
!4135 = distinct !DISubprogram(name: "strcaseeq2", scope: !4089, file: !4089, line: 132, type: !4136, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !480, variables: !4138)
!4136 = !DISubroutineType(types: !4137)
!4137 = !{!9, !193, !193, !12, !12, !12, !12, !12, !12, !12}
!4138 = !{!4139, !4134, !4140, !4141, !4142, !4143, !4144, !4145, !4146}
!4139 = !DILocalVariable(name: "s1", arg: 1, scope: !4135, file: !4089, line: 132, type: !193)
!4140 = !DILocalVariable(name: "s22", arg: 3, scope: !4135, file: !4089, line: 132, type: !12)
!4141 = !DILocalVariable(name: "s23", arg: 4, scope: !4135, file: !4089, line: 132, type: !12)
!4142 = !DILocalVariable(name: "s24", arg: 5, scope: !4135, file: !4089, line: 132, type: !12)
!4143 = !DILocalVariable(name: "s25", arg: 6, scope: !4135, file: !4089, line: 132, type: !12)
!4144 = !DILocalVariable(name: "s26", arg: 7, scope: !4135, file: !4089, line: 132, type: !12)
!4145 = !DILocalVariable(name: "s27", arg: 8, scope: !4135, file: !4089, line: 132, type: !12)
!4146 = !DILocalVariable(name: "s28", arg: 9, scope: !4135, file: !4089, line: 132, type: !12)
!4147 = !DILocation(line: 132, column: 41, scope: !4135, inlinedAt: !4148)
!4148 = distinct !DILocation(line: 153, column: 16, scope: !4149, inlinedAt: !4126)
!4149 = distinct !DILexicalBlock(scope: !4150, file: !4089, line: 150, column: 11)
!4150 = distinct !DILexicalBlock(scope: !4133, file: !4089, line: 149, column: 5)
!4151 = !DILocation(line: 132, column: 100, scope: !4135, inlinedAt: !4148)
!4152 = !DILocation(line: 132, column: 110, scope: !4135, inlinedAt: !4148)
!4153 = !DILocation(line: 134, column: 7, scope: !4154, inlinedAt: !4148)
!4154 = !DILexicalBlockFile(scope: !4155, file: !4089, discriminator: 1)
!4155 = distinct !DILexicalBlock(scope: !4135, file: !4089, line: 134, column: 7)
!4156 = !DILocalVariable(name: "s2", arg: 2, scope: !4157, file: !4089, line: 118, type: !193)
!4157 = distinct !DISubprogram(name: "strcaseeq3", scope: !4089, file: !4089, line: 118, type: !4158, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !480, variables: !4160)
!4158 = !DISubroutineType(types: !4159)
!4159 = !{!9, !193, !193, !12, !12, !12, !12, !12, !12}
!4160 = !{!4161, !4156, !4162, !4163, !4164, !4165, !4166, !4167}
!4161 = !DILocalVariable(name: "s1", arg: 1, scope: !4157, file: !4089, line: 118, type: !193)
!4162 = !DILocalVariable(name: "s23", arg: 3, scope: !4157, file: !4089, line: 118, type: !12)
!4163 = !DILocalVariable(name: "s24", arg: 4, scope: !4157, file: !4089, line: 118, type: !12)
!4164 = !DILocalVariable(name: "s25", arg: 5, scope: !4157, file: !4089, line: 118, type: !12)
!4165 = !DILocalVariable(name: "s26", arg: 6, scope: !4157, file: !4089, line: 118, type: !12)
!4166 = !DILocalVariable(name: "s27", arg: 7, scope: !4157, file: !4089, line: 118, type: !12)
!4167 = !DILocalVariable(name: "s28", arg: 8, scope: !4157, file: !4089, line: 118, type: !12)
!4168 = !DILocation(line: 118, column: 41, scope: !4157, inlinedAt: !4169)
!4169 = distinct !DILocation(line: 139, column: 16, scope: !4170, inlinedAt: !4148)
!4170 = distinct !DILexicalBlock(scope: !4171, file: !4089, line: 136, column: 11)
!4171 = distinct !DILexicalBlock(scope: !4155, file: !4089, line: 135, column: 5)
!4172 = !DILocation(line: 118, column: 90, scope: !4157, inlinedAt: !4169)
!4173 = !DILocation(line: 118, column: 100, scope: !4157, inlinedAt: !4169)
!4174 = !DILocation(line: 120, column: 7, scope: !4175, inlinedAt: !4169)
!4175 = !DILexicalBlockFile(scope: !4176, file: !4089, discriminator: 2)
!4176 = distinct !DILexicalBlock(scope: !4157, file: !4089, line: 120, column: 7)
!4177 = !DILocation(line: 120, column: 7, scope: !4178, inlinedAt: !4169)
!4178 = !DILexicalBlockFile(scope: !4157, file: !4089, discriminator: 2)
!4179 = !DILocalVariable(name: "s2", arg: 2, scope: !4180, file: !4089, line: 104, type: !193)
!4180 = distinct !DISubprogram(name: "strcaseeq4", scope: !4089, file: !4089, line: 104, type: !4181, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !480, variables: !4183)
!4181 = !DISubroutineType(types: !4182)
!4182 = !{!9, !193, !193, !12, !12, !12, !12, !12}
!4183 = !{!4184, !4179, !4185, !4186, !4187, !4188, !4189}
!4184 = !DILocalVariable(name: "s1", arg: 1, scope: !4180, file: !4089, line: 104, type: !193)
!4185 = !DILocalVariable(name: "s24", arg: 3, scope: !4180, file: !4089, line: 104, type: !12)
!4186 = !DILocalVariable(name: "s25", arg: 4, scope: !4180, file: !4089, line: 104, type: !12)
!4187 = !DILocalVariable(name: "s26", arg: 5, scope: !4180, file: !4089, line: 104, type: !12)
!4188 = !DILocalVariable(name: "s27", arg: 6, scope: !4180, file: !4089, line: 104, type: !12)
!4189 = !DILocalVariable(name: "s28", arg: 7, scope: !4180, file: !4089, line: 104, type: !12)
!4190 = !DILocation(line: 104, column: 41, scope: !4180, inlinedAt: !4191)
!4191 = distinct !DILocation(line: 125, column: 16, scope: !4192, inlinedAt: !4169)
!4192 = distinct !DILexicalBlock(scope: !4193, file: !4089, line: 122, column: 11)
!4193 = distinct !DILexicalBlock(scope: !4176, file: !4089, line: 121, column: 5)
!4194 = !DILocation(line: 104, column: 80, scope: !4180, inlinedAt: !4191)
!4195 = !DILocation(line: 104, column: 90, scope: !4180, inlinedAt: !4191)
!4196 = !DILocation(line: 106, column: 7, scope: !4197, inlinedAt: !4191)
!4197 = !DILexicalBlockFile(scope: !4198, file: !4089, discriminator: 2)
!4198 = distinct !DILexicalBlock(scope: !4180, file: !4089, line: 106, column: 7)
!4199 = !DILocation(line: 106, column: 7, scope: !4200, inlinedAt: !4191)
!4200 = !DILexicalBlockFile(scope: !4180, file: !4089, discriminator: 2)
!4201 = !DILocalVariable(name: "s2", arg: 2, scope: !4202, file: !4089, line: 90, type: !193)
!4202 = distinct !DISubprogram(name: "strcaseeq5", scope: !4089, file: !4089, line: 90, type: !4203, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !480, variables: !4205)
!4203 = !DISubroutineType(types: !4204)
!4204 = !{!9, !193, !193, !12, !12, !12, !12}
!4205 = !{!4206, !4201, !4207, !4208, !4209, !4210}
!4206 = !DILocalVariable(name: "s1", arg: 1, scope: !4202, file: !4089, line: 90, type: !193)
!4207 = !DILocalVariable(name: "s25", arg: 3, scope: !4202, file: !4089, line: 90, type: !12)
!4208 = !DILocalVariable(name: "s26", arg: 4, scope: !4202, file: !4089, line: 90, type: !12)
!4209 = !DILocalVariable(name: "s27", arg: 5, scope: !4202, file: !4089, line: 90, type: !12)
!4210 = !DILocalVariable(name: "s28", arg: 6, scope: !4202, file: !4089, line: 90, type: !12)
!4211 = !DILocation(line: 90, column: 41, scope: !4202, inlinedAt: !4212)
!4212 = distinct !DILocation(line: 111, column: 16, scope: !4213, inlinedAt: !4191)
!4213 = distinct !DILexicalBlock(scope: !4214, file: !4089, line: 108, column: 11)
!4214 = distinct !DILexicalBlock(scope: !4198, file: !4089, line: 107, column: 5)
!4215 = !DILocation(line: 90, column: 70, scope: !4202, inlinedAt: !4212)
!4216 = !DILocation(line: 90, column: 80, scope: !4202, inlinedAt: !4212)
!4217 = !DILocation(line: 92, column: 7, scope: !4218, inlinedAt: !4212)
!4218 = !DILexicalBlockFile(scope: !4219, file: !4089, discriminator: 2)
!4219 = distinct !DILexicalBlock(scope: !4202, file: !4089, line: 92, column: 7)
!4220 = !DILocation(line: 92, column: 7, scope: !4221, inlinedAt: !4212)
!4221 = !DILexicalBlockFile(scope: !4202, file: !4089, discriminator: 2)
!4222 = !DILocation(line: 227, column: 12, scope: !4105)
!4223 = !DILocation(line: 227, column: 21, scope: !4105)
!4224 = !DILocation(line: 227, column: 5, scope: !4105)
!4225 = !DILocation(line: 146, column: 41, scope: !4112, inlinedAt: !4226)
!4226 = distinct !DILocation(line: 167, column: 16, scope: !4127, inlinedAt: !4227)
!4227 = distinct !DILocation(line: 228, column: 7, scope: !4228)
!4228 = distinct !DILexicalBlock(scope: !4070, file: !492, line: 228, column: 7)
!4229 = !DILocation(line: 146, column: 110, scope: !4112, inlinedAt: !4226)
!4230 = !DILocation(line: 146, column: 120, scope: !4112, inlinedAt: !4226)
!4231 = !DILocation(line: 148, column: 7, scope: !4132, inlinedAt: !4226)
!4232 = !DILocation(line: 132, column: 41, scope: !4135, inlinedAt: !4233)
!4233 = distinct !DILocation(line: 153, column: 16, scope: !4149, inlinedAt: !4226)
!4234 = !DILocation(line: 132, column: 100, scope: !4135, inlinedAt: !4233)
!4235 = !DILocation(line: 132, column: 110, scope: !4135, inlinedAt: !4233)
!4236 = !DILocation(line: 134, column: 7, scope: !4237, inlinedAt: !4233)
!4237 = !DILexicalBlockFile(scope: !4155, file: !4089, discriminator: 2)
!4238 = !DILocation(line: 134, column: 7, scope: !4239, inlinedAt: !4233)
!4239 = !DILexicalBlockFile(scope: !4135, file: !4089, discriminator: 2)
!4240 = !DILocation(line: 118, column: 41, scope: !4157, inlinedAt: !4241)
!4241 = distinct !DILocation(line: 139, column: 16, scope: !4170, inlinedAt: !4233)
!4242 = !DILocation(line: 118, column: 90, scope: !4157, inlinedAt: !4241)
!4243 = !DILocation(line: 118, column: 100, scope: !4157, inlinedAt: !4241)
!4244 = !DILocation(line: 120, column: 7, scope: !4175, inlinedAt: !4241)
!4245 = !DILocation(line: 120, column: 7, scope: !4178, inlinedAt: !4241)
!4246 = !DILocation(line: 104, column: 41, scope: !4180, inlinedAt: !4247)
!4247 = distinct !DILocation(line: 125, column: 16, scope: !4192, inlinedAt: !4241)
!4248 = !DILocation(line: 104, column: 80, scope: !4180, inlinedAt: !4247)
!4249 = !DILocation(line: 104, column: 90, scope: !4180, inlinedAt: !4247)
!4250 = !DILocation(line: 106, column: 7, scope: !4197, inlinedAt: !4247)
!4251 = !DILocation(line: 106, column: 7, scope: !4200, inlinedAt: !4247)
!4252 = !DILocation(line: 90, column: 41, scope: !4202, inlinedAt: !4253)
!4253 = distinct !DILocation(line: 111, column: 16, scope: !4213, inlinedAt: !4247)
!4254 = !DILocation(line: 90, column: 70, scope: !4202, inlinedAt: !4253)
!4255 = !DILocation(line: 90, column: 80, scope: !4202, inlinedAt: !4253)
!4256 = !DILocation(line: 92, column: 7, scope: !4218, inlinedAt: !4253)
!4257 = !DILocation(line: 92, column: 7, scope: !4221, inlinedAt: !4253)
!4258 = !DILocalVariable(name: "s2", arg: 2, scope: !4259, file: !4089, line: 76, type: !193)
!4259 = distinct !DISubprogram(name: "strcaseeq6", scope: !4089, file: !4089, line: 76, type: !4260, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !480, variables: !4262)
!4260 = !DISubroutineType(types: !4261)
!4261 = !{!9, !193, !193, !12, !12, !12}
!4262 = !{!4263, !4258, !4264, !4265, !4266}
!4263 = !DILocalVariable(name: "s1", arg: 1, scope: !4259, file: !4089, line: 76, type: !193)
!4264 = !DILocalVariable(name: "s26", arg: 3, scope: !4259, file: !4089, line: 76, type: !12)
!4265 = !DILocalVariable(name: "s27", arg: 4, scope: !4259, file: !4089, line: 76, type: !12)
!4266 = !DILocalVariable(name: "s28", arg: 5, scope: !4259, file: !4089, line: 76, type: !12)
!4267 = !DILocation(line: 76, column: 41, scope: !4259, inlinedAt: !4268)
!4268 = distinct !DILocation(line: 97, column: 16, scope: !4269, inlinedAt: !4253)
!4269 = distinct !DILexicalBlock(scope: !4270, file: !4089, line: 94, column: 11)
!4270 = distinct !DILexicalBlock(scope: !4219, file: !4089, line: 93, column: 5)
!4271 = !DILocation(line: 76, column: 60, scope: !4259, inlinedAt: !4268)
!4272 = !DILocation(line: 76, column: 70, scope: !4259, inlinedAt: !4268)
!4273 = !DILocation(line: 78, column: 7, scope: !4274, inlinedAt: !4268)
!4274 = !DILexicalBlockFile(scope: !4275, file: !4089, discriminator: 2)
!4275 = distinct !DILexicalBlock(scope: !4259, file: !4089, line: 78, column: 7)
!4276 = !DILocation(line: 78, column: 7, scope: !4277, inlinedAt: !4268)
!4277 = !DILexicalBlockFile(scope: !4259, file: !4089, discriminator: 2)
!4278 = !DILocalVariable(name: "s2", arg: 2, scope: !4279, file: !4089, line: 62, type: !193)
!4279 = distinct !DISubprogram(name: "strcaseeq7", scope: !4089, file: !4089, line: 62, type: !4280, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !480, variables: !4282)
!4280 = !DISubroutineType(types: !4281)
!4281 = !{!9, !193, !193, !12, !12}
!4282 = !{!4283, !4278, !4284, !4285}
!4283 = !DILocalVariable(name: "s1", arg: 1, scope: !4279, file: !4089, line: 62, type: !193)
!4284 = !DILocalVariable(name: "s27", arg: 3, scope: !4279, file: !4089, line: 62, type: !12)
!4285 = !DILocalVariable(name: "s28", arg: 4, scope: !4279, file: !4089, line: 62, type: !12)
!4286 = !DILocation(line: 62, column: 41, scope: !4279, inlinedAt: !4287)
!4287 = distinct !DILocation(line: 83, column: 16, scope: !4288, inlinedAt: !4268)
!4288 = distinct !DILexicalBlock(scope: !4289, file: !4089, line: 80, column: 11)
!4289 = distinct !DILexicalBlock(scope: !4275, file: !4089, line: 79, column: 5)
!4290 = !DILocation(line: 62, column: 50, scope: !4279, inlinedAt: !4287)
!4291 = !DILocation(line: 62, column: 60, scope: !4279, inlinedAt: !4287)
!4292 = !DILocation(line: 64, column: 7, scope: !4293, inlinedAt: !4287)
!4293 = !DILexicalBlockFile(scope: !4294, file: !4089, discriminator: 2)
!4294 = distinct !DILexicalBlock(scope: !4279, file: !4089, line: 64, column: 7)
!4295 = !DILocation(line: 228, column: 7, scope: !4070)
!4296 = !DILocation(line: 229, column: 12, scope: !4228)
!4297 = !DILocation(line: 229, column: 21, scope: !4228)
!4298 = !DILocation(line: 229, column: 5, scope: !4228)
!4299 = !DILocation(line: 231, column: 13, scope: !4070)
!4300 = !DILocation(line: 231, column: 11, scope: !4070)
!4301 = !DILocation(line: 231, column: 3, scope: !4070)
!4302 = !DILocation(line: 232, column: 1, scope: !4070)
!4303 = distinct !DISubprogram(name: "quotearg_alloc", scope: !492, file: !492, line: 791, type: !4304, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !480, variables: !4306)
!4304 = !DISubroutineType(types: !4305)
!4305 = !{!11, !193, !18, !3146}
!4306 = !{!4307, !4308, !4309}
!4307 = !DILocalVariable(name: "arg", arg: 1, scope: !4303, file: !492, line: 791, type: !193)
!4308 = !DILocalVariable(name: "argsize", arg: 2, scope: !4303, file: !492, line: 791, type: !18)
!4309 = !DILocalVariable(name: "o", arg: 3, scope: !4303, file: !492, line: 792, type: !3146)
!4310 = !DILocation(line: 791, column: 29, scope: !4303)
!4311 = !DILocation(line: 791, column: 41, scope: !4303)
!4312 = !DILocation(line: 792, column: 47, scope: !4303)
!4313 = !DILocalVariable(name: "arg", arg: 1, scope: !4314, file: !492, line: 804, type: !193)
!4314 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !492, file: !492, line: 804, type: !4315, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !480, variables: !4317)
!4315 = !DISubroutineType(types: !4316)
!4316 = !{!11, !193, !18, !178, !3146}
!4317 = !{!4313, !4318, !4319, !4320, !4321, !4322, !4323, !4324, !4325}
!4318 = !DILocalVariable(name: "argsize", arg: 2, scope: !4314, file: !492, line: 804, type: !18)
!4319 = !DILocalVariable(name: "size", arg: 3, scope: !4314, file: !492, line: 804, type: !178)
!4320 = !DILocalVariable(name: "o", arg: 4, scope: !4314, file: !492, line: 805, type: !3146)
!4321 = !DILocalVariable(name: "p", scope: !4314, file: !492, line: 807, type: !3146)
!4322 = !DILocalVariable(name: "e", scope: !4314, file: !492, line: 808, type: !9)
!4323 = !DILocalVariable(name: "flags", scope: !4314, file: !492, line: 810, type: !9)
!4324 = !DILocalVariable(name: "bufsize", scope: !4314, file: !492, line: 811, type: !18)
!4325 = !DILocalVariable(name: "buf", scope: !4314, file: !492, line: 815, type: !11)
!4326 = !DILocation(line: 804, column: 33, scope: !4314, inlinedAt: !4327)
!4327 = distinct !DILocation(line: 794, column: 10, scope: !4303)
!4328 = !DILocation(line: 804, column: 45, scope: !4314, inlinedAt: !4327)
!4329 = !DILocation(line: 804, column: 62, scope: !4314, inlinedAt: !4327)
!4330 = !DILocation(line: 805, column: 51, scope: !4314, inlinedAt: !4327)
!4331 = !DILocation(line: 807, column: 37, scope: !4314, inlinedAt: !4327)
!4332 = !DILocation(line: 807, column: 33, scope: !4314, inlinedAt: !4327)
!4333 = !DILocation(line: 808, column: 11, scope: !4314, inlinedAt: !4327)
!4334 = !DILocation(line: 808, column: 7, scope: !4314, inlinedAt: !4327)
!4335 = !DILocation(line: 810, column: 18, scope: !4314, inlinedAt: !4327)
!4336 = !DILocation(line: 810, column: 24, scope: !4314, inlinedAt: !4327)
!4337 = !DILocation(line: 810, column: 7, scope: !4314, inlinedAt: !4327)
!4338 = !DILocation(line: 811, column: 69, scope: !4314, inlinedAt: !4327)
!4339 = !DILocation(line: 812, column: 53, scope: !4314, inlinedAt: !4327)
!4340 = !DILocation(line: 813, column: 49, scope: !4314, inlinedAt: !4327)
!4341 = !DILocation(line: 814, column: 49, scope: !4314, inlinedAt: !4327)
!4342 = !DILocation(line: 811, column: 20, scope: !4314, inlinedAt: !4327)
!4343 = !DILocation(line: 814, column: 62, scope: !4314, inlinedAt: !4327)
!4344 = !DILocation(line: 811, column: 10, scope: !4314, inlinedAt: !4327)
!4345 = !DILocalVariable(name: "n", arg: 1, scope: !4346, file: !174, line: 220, type: !18)
!4346 = distinct !DISubprogram(name: "xcharalloc", scope: !174, file: !174, line: 220, type: !4347, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !480, variables: !4349)
!4347 = !DISubroutineType(types: !4348)
!4348 = !{!11, !18}
!4349 = !{!4345}
!4350 = !DILocation(line: 220, column: 20, scope: !4346, inlinedAt: !4351)
!4351 = distinct !DILocation(line: 815, column: 15, scope: !4314, inlinedAt: !4327)
!4352 = !DILocation(line: 222, column: 10, scope: !4346, inlinedAt: !4351)
!4353 = !DILocation(line: 815, column: 9, scope: !4314, inlinedAt: !4327)
!4354 = !DILocation(line: 816, column: 60, scope: !4314, inlinedAt: !4327)
!4355 = !DILocation(line: 818, column: 32, scope: !4314, inlinedAt: !4327)
!4356 = !DILocation(line: 818, column: 47, scope: !4314, inlinedAt: !4327)
!4357 = !DILocation(line: 816, column: 3, scope: !4314, inlinedAt: !4327)
!4358 = !DILocation(line: 819, column: 9, scope: !4314, inlinedAt: !4327)
!4359 = !DILocation(line: 794, column: 3, scope: !4303)
!4360 = !DILocation(line: 804, column: 33, scope: !4314)
!4361 = !DILocation(line: 804, column: 45, scope: !4314)
!4362 = !DILocation(line: 804, column: 62, scope: !4314)
!4363 = !DILocation(line: 805, column: 51, scope: !4314)
!4364 = !DILocation(line: 807, column: 37, scope: !4314)
!4365 = !DILocation(line: 807, column: 33, scope: !4314)
!4366 = !DILocation(line: 808, column: 11, scope: !4314)
!4367 = !DILocation(line: 808, column: 7, scope: !4314)
!4368 = !DILocation(line: 810, column: 18, scope: !4314)
!4369 = !DILocation(line: 810, column: 27, scope: !4314)
!4370 = !DILocation(line: 810, column: 24, scope: !4314)
!4371 = !DILocation(line: 810, column: 7, scope: !4314)
!4372 = !DILocation(line: 811, column: 69, scope: !4314)
!4373 = !DILocation(line: 812, column: 53, scope: !4314)
!4374 = !DILocation(line: 813, column: 49, scope: !4314)
!4375 = !DILocation(line: 814, column: 49, scope: !4314)
!4376 = !DILocation(line: 811, column: 20, scope: !4314)
!4377 = !DILocation(line: 814, column: 62, scope: !4314)
!4378 = !DILocation(line: 811, column: 10, scope: !4314)
!4379 = !DILocation(line: 220, column: 20, scope: !4346, inlinedAt: !4380)
!4380 = distinct !DILocation(line: 815, column: 15, scope: !4314)
!4381 = !DILocation(line: 222, column: 10, scope: !4346, inlinedAt: !4380)
!4382 = !DILocation(line: 815, column: 9, scope: !4314)
!4383 = !DILocation(line: 816, column: 60, scope: !4314)
!4384 = !DILocation(line: 818, column: 32, scope: !4314)
!4385 = !DILocation(line: 818, column: 47, scope: !4314)
!4386 = !DILocation(line: 816, column: 3, scope: !4314)
!4387 = !DILocation(line: 819, column: 9, scope: !4314)
!4388 = !DILocation(line: 820, column: 7, scope: !4314)
!4389 = !DILocation(line: 821, column: 11, scope: !4390)
!4390 = distinct !DILexicalBlock(scope: !4314, file: !492, line: 820, column: 7)
!4391 = !DILocation(line: 821, column: 5, scope: !4390)
!4392 = !DILocation(line: 822, column: 3, scope: !4314)
!4393 = distinct !DISubprogram(name: "quotearg_free", scope: !492, file: !492, line: 840, type: !128, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !480, variables: !4394)
!4394 = !{!4395, !4396}
!4395 = !DILocalVariable(name: "sv", scope: !4393, file: !492, line: 842, type: !518)
!4396 = !DILocalVariable(name: "i", scope: !4393, file: !492, line: 843, type: !9)
!4397 = !DILocation(line: 842, column: 24, scope: !4393)
!4398 = !DILocation(line: 842, column: 19, scope: !4393)
!4399 = !DILocation(line: 843, column: 7, scope: !4393)
!4400 = !DILocation(line: 844, column: 19, scope: !4401)
!4401 = !DILexicalBlockFile(scope: !4402, file: !492, discriminator: 1)
!4402 = distinct !DILexicalBlock(scope: !4403, file: !492, line: 844, column: 3)
!4403 = distinct !DILexicalBlock(scope: !4393, file: !492, line: 844, column: 3)
!4404 = !DILocation(line: 844, column: 17, scope: !4401)
!4405 = !DILocation(line: 844, column: 3, scope: !4406)
!4406 = !DILexicalBlockFile(scope: !4403, file: !492, discriminator: 1)
!4407 = !DILocation(line: 845, column: 17, scope: !4402)
!4408 = !{!4409, !1033, i64 8}
!4409 = !{!"slotvec", !1051, i64 0, !1033, i64 8}
!4410 = !DILocation(line: 845, column: 5, scope: !4402)
!4411 = !DILocation(line: 844, column: 28, scope: !4412)
!4412 = !DILexicalBlockFile(scope: !4402, file: !492, discriminator: 2)
!4413 = distinct !{!4413, !4414, !4415}
!4414 = !DILocation(line: 844, column: 3, scope: !4403)
!4415 = !DILocation(line: 845, column: 20, scope: !4403)
!4416 = !DILocation(line: 846, column: 13, scope: !4417)
!4417 = distinct !DILexicalBlock(scope: !4393, file: !492, line: 846, column: 7)
!4418 = !DILocation(line: 846, column: 17, scope: !4417)
!4419 = !DILocation(line: 846, column: 7, scope: !4393)
!4420 = !DILocation(line: 848, column: 7, scope: !4421)
!4421 = distinct !DILexicalBlock(scope: !4417, file: !492, line: 847, column: 5)
!4422 = !DILocation(line: 849, column: 21, scope: !4421)
!4423 = !{!4409, !1051, i64 0}
!4424 = !DILocation(line: 850, column: 20, scope: !4421)
!4425 = !DILocation(line: 851, column: 5, scope: !4421)
!4426 = !DILocation(line: 852, column: 10, scope: !4427)
!4427 = distinct !DILexicalBlock(scope: !4393, file: !492, line: 852, column: 7)
!4428 = !DILocation(line: 852, column: 7, scope: !4393)
!4429 = !DILocation(line: 854, column: 13, scope: !4430)
!4430 = distinct !DILexicalBlock(scope: !4427, file: !492, line: 853, column: 5)
!4431 = !DILocation(line: 854, column: 7, scope: !4430)
!4432 = !DILocation(line: 855, column: 15, scope: !4430)
!4433 = !DILocation(line: 856, column: 5, scope: !4430)
!4434 = !DILocation(line: 857, column: 10, scope: !4393)
!4435 = !DILocation(line: 858, column: 1, scope: !4393)
!4436 = distinct !DISubprogram(name: "quotearg_n", scope: !492, file: !492, line: 922, type: !4437, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !480, variables: !4439)
!4437 = !DISubroutineType(types: !4438)
!4438 = !{!11, !9, !193}
!4439 = !{!4440, !4441}
!4440 = !DILocalVariable(name: "n", arg: 1, scope: !4436, file: !492, line: 922, type: !9)
!4441 = !DILocalVariable(name: "arg", arg: 2, scope: !4436, file: !492, line: 922, type: !193)
!4442 = !DILocation(line: 922, column: 17, scope: !4436)
!4443 = !DILocation(line: 922, column: 32, scope: !4436)
!4444 = !DILocation(line: 924, column: 10, scope: !4436)
!4445 = !DILocation(line: 924, column: 3, scope: !4436)
!4446 = distinct !DISubprogram(name: "quotearg_n_options", scope: !492, file: !492, line: 869, type: !4447, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !480, variables: !4449)
!4447 = !DISubroutineType(types: !4448)
!4448 = !{!11, !9, !193, !18, !3146}
!4449 = !{!4450, !4451, !4452, !4453, !4454, !4455, !4456, !4459, !4461, !4462, !4463}
!4450 = !DILocalVariable(name: "n", arg: 1, scope: !4446, file: !492, line: 869, type: !9)
!4451 = !DILocalVariable(name: "arg", arg: 2, scope: !4446, file: !492, line: 869, type: !193)
!4452 = !DILocalVariable(name: "argsize", arg: 3, scope: !4446, file: !492, line: 869, type: !18)
!4453 = !DILocalVariable(name: "options", arg: 4, scope: !4446, file: !492, line: 870, type: !3146)
!4454 = !DILocalVariable(name: "e", scope: !4446, file: !492, line: 872, type: !9)
!4455 = !DILocalVariable(name: "sv", scope: !4446, file: !492, line: 874, type: !518)
!4456 = !DILocalVariable(name: "preallocated", scope: !4457, file: !492, line: 881, type: !206)
!4457 = distinct !DILexicalBlock(scope: !4458, file: !492, line: 880, column: 5)
!4458 = distinct !DILexicalBlock(scope: !4446, file: !492, line: 879, column: 7)
!4459 = !DILocalVariable(name: "size", scope: !4460, file: !492, line: 894, type: !18)
!4460 = distinct !DILexicalBlock(scope: !4446, file: !492, line: 893, column: 3)
!4461 = !DILocalVariable(name: "val", scope: !4460, file: !492, line: 895, type: !11)
!4462 = !DILocalVariable(name: "flags", scope: !4460, file: !492, line: 897, type: !9)
!4463 = !DILocalVariable(name: "qsize", scope: !4460, file: !492, line: 898, type: !18)
!4464 = !DILocation(line: 869, column: 25, scope: !4446)
!4465 = !DILocation(line: 869, column: 40, scope: !4446)
!4466 = !DILocation(line: 869, column: 52, scope: !4446)
!4467 = !DILocation(line: 870, column: 51, scope: !4446)
!4468 = !DILocation(line: 872, column: 11, scope: !4446)
!4469 = !DILocation(line: 872, column: 7, scope: !4446)
!4470 = !DILocation(line: 874, column: 24, scope: !4446)
!4471 = !DILocation(line: 874, column: 19, scope: !4446)
!4472 = !DILocation(line: 876, column: 9, scope: !4473)
!4473 = distinct !DILexicalBlock(scope: !4446, file: !492, line: 876, column: 7)
!4474 = !DILocation(line: 876, column: 7, scope: !4446)
!4475 = !DILocation(line: 877, column: 5, scope: !4473)
!4476 = !DILocation(line: 879, column: 7, scope: !4458)
!4477 = !DILocation(line: 879, column: 14, scope: !4458)
!4478 = !DILocation(line: 879, column: 7, scope: !4446)
!4479 = !DILocation(line: 881, column: 31, scope: !4457)
!4480 = !DILocation(line: 883, column: 67, scope: !4481)
!4481 = distinct !DILexicalBlock(scope: !4457, file: !492, line: 883, column: 11)
!4482 = !DILocation(line: 883, column: 11, scope: !4457)
!4483 = !DILocation(line: 884, column: 9, scope: !4481)
!4484 = !DILocation(line: 886, column: 32, scope: !4485)
!4485 = !DILexicalBlockFile(scope: !4457, file: !492, discriminator: 3)
!4486 = !DILocation(line: 886, column: 61, scope: !4485)
!4487 = !DILocation(line: 886, column: 58, scope: !4485)
!4488 = !DILocation(line: 886, column: 66, scope: !4485)
!4489 = !DILocation(line: 886, column: 22, scope: !4485)
!4490 = !DILocation(line: 886, column: 15, scope: !4485)
!4491 = !DILocation(line: 887, column: 11, scope: !4457)
!4492 = !DILocation(line: 888, column: 15, scope: !4493)
!4493 = distinct !DILexicalBlock(scope: !4457, file: !492, line: 887, column: 11)
!4494 = !{i64 0, i64 8, !1079, i64 8, i64 8, !1032}
!4495 = !DILocation(line: 888, column: 9, scope: !4493)
!4496 = !DILocation(line: 889, column: 20, scope: !4457)
!4497 = !DILocation(line: 889, column: 18, scope: !4457)
!4498 = !DILocation(line: 889, column: 7, scope: !4457)
!4499 = !DILocation(line: 889, column: 38, scope: !4457)
!4500 = !DILocation(line: 889, column: 31, scope: !4457)
!4501 = !DILocation(line: 889, column: 48, scope: !4457)
!4502 = !DILocation(line: 890, column: 14, scope: !4457)
!4503 = !DILocation(line: 891, column: 5, scope: !4457)
!4504 = !DILocation(line: 894, column: 19, scope: !4460)
!4505 = !DILocation(line: 894, column: 25, scope: !4460)
!4506 = !DILocation(line: 894, column: 12, scope: !4460)
!4507 = !DILocation(line: 895, column: 23, scope: !4460)
!4508 = !DILocation(line: 895, column: 11, scope: !4460)
!4509 = !DILocation(line: 897, column: 26, scope: !4460)
!4510 = !DILocation(line: 897, column: 32, scope: !4460)
!4511 = !DILocation(line: 897, column: 9, scope: !4460)
!4512 = !DILocation(line: 899, column: 55, scope: !4460)
!4513 = !DILocation(line: 900, column: 46, scope: !4460)
!4514 = !DILocation(line: 901, column: 55, scope: !4460)
!4515 = !DILocation(line: 902, column: 55, scope: !4460)
!4516 = !DILocation(line: 898, column: 20, scope: !4460)
!4517 = !DILocation(line: 898, column: 12, scope: !4460)
!4518 = !DILocation(line: 904, column: 14, scope: !4519)
!4519 = distinct !DILexicalBlock(scope: !4460, file: !492, line: 904, column: 9)
!4520 = !DILocation(line: 904, column: 9, scope: !4460)
!4521 = !DILocation(line: 906, column: 35, scope: !4522)
!4522 = distinct !DILexicalBlock(scope: !4519, file: !492, line: 905, column: 7)
!4523 = !DILocation(line: 906, column: 20, scope: !4522)
!4524 = !DILocation(line: 907, column: 17, scope: !4525)
!4525 = distinct !DILexicalBlock(scope: !4522, file: !492, line: 907, column: 13)
!4526 = !DILocation(line: 907, column: 13, scope: !4522)
!4527 = !DILocation(line: 908, column: 11, scope: !4525)
!4528 = !DILocation(line: 220, column: 20, scope: !4346, inlinedAt: !4529)
!4529 = distinct !DILocation(line: 909, column: 27, scope: !4522)
!4530 = !DILocation(line: 222, column: 10, scope: !4346, inlinedAt: !4529)
!4531 = !DILocation(line: 909, column: 19, scope: !4522)
!4532 = !DILocation(line: 910, column: 69, scope: !4522)
!4533 = !DILocation(line: 912, column: 44, scope: !4522)
!4534 = !DILocation(line: 913, column: 44, scope: !4522)
!4535 = !DILocation(line: 910, column: 9, scope: !4522)
!4536 = !DILocation(line: 914, column: 7, scope: !4522)
!4537 = !DILocation(line: 916, column: 11, scope: !4460)
!4538 = !DILocation(line: 917, column: 5, scope: !4460)
!4539 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !492, file: !492, line: 928, type: !4540, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !480, variables: !4542)
!4540 = !DISubroutineType(types: !4541)
!4541 = !{!11, !9, !193, !18}
!4542 = !{!4543, !4544, !4545}
!4543 = !DILocalVariable(name: "n", arg: 1, scope: !4539, file: !492, line: 928, type: !9)
!4544 = !DILocalVariable(name: "arg", arg: 2, scope: !4539, file: !492, line: 928, type: !193)
!4545 = !DILocalVariable(name: "argsize", arg: 3, scope: !4539, file: !492, line: 928, type: !18)
!4546 = !DILocation(line: 928, column: 21, scope: !4539)
!4547 = !DILocation(line: 928, column: 36, scope: !4539)
!4548 = !DILocation(line: 928, column: 48, scope: !4539)
!4549 = !DILocation(line: 930, column: 10, scope: !4539)
!4550 = !DILocation(line: 930, column: 3, scope: !4539)
!4551 = distinct !DISubprogram(name: "quotearg", scope: !492, file: !492, line: 934, type: !4552, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !480, variables: !4554)
!4552 = !DISubroutineType(types: !4553)
!4553 = !{!11, !193}
!4554 = !{!4555}
!4555 = !DILocalVariable(name: "arg", arg: 1, scope: !4551, file: !492, line: 934, type: !193)
!4556 = !DILocation(line: 934, column: 23, scope: !4551)
!4557 = !DILocation(line: 922, column: 17, scope: !4436, inlinedAt: !4558)
!4558 = distinct !DILocation(line: 936, column: 10, scope: !4551)
!4559 = !DILocation(line: 922, column: 32, scope: !4436, inlinedAt: !4558)
!4560 = !DILocation(line: 924, column: 10, scope: !4436, inlinedAt: !4558)
!4561 = !DILocation(line: 936, column: 3, scope: !4551)
!4562 = distinct !DISubprogram(name: "quotearg_mem", scope: !492, file: !492, line: 940, type: !4563, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !480, variables: !4565)
!4563 = !DISubroutineType(types: !4564)
!4564 = !{!11, !193, !18}
!4565 = !{!4566, !4567}
!4566 = !DILocalVariable(name: "arg", arg: 1, scope: !4562, file: !492, line: 940, type: !193)
!4567 = !DILocalVariable(name: "argsize", arg: 2, scope: !4562, file: !492, line: 940, type: !18)
!4568 = !DILocation(line: 940, column: 27, scope: !4562)
!4569 = !DILocation(line: 940, column: 39, scope: !4562)
!4570 = !DILocation(line: 928, column: 21, scope: !4539, inlinedAt: !4571)
!4571 = distinct !DILocation(line: 942, column: 10, scope: !4562)
!4572 = !DILocation(line: 928, column: 36, scope: !4539, inlinedAt: !4571)
!4573 = !DILocation(line: 928, column: 48, scope: !4539, inlinedAt: !4571)
!4574 = !DILocation(line: 930, column: 10, scope: !4539, inlinedAt: !4571)
!4575 = !DILocation(line: 942, column: 3, scope: !4562)
!4576 = distinct !DISubprogram(name: "quotearg_n_style", scope: !492, file: !492, line: 946, type: !4577, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !480, variables: !4579)
!4577 = !DISubroutineType(types: !4578)
!4578 = !{!11, !9, !132, !193}
!4579 = !{!4580, !4581, !4582, !4583}
!4580 = !DILocalVariable(name: "n", arg: 1, scope: !4576, file: !492, line: 946, type: !9)
!4581 = !DILocalVariable(name: "s", arg: 2, scope: !4576, file: !492, line: 946, type: !132)
!4582 = !DILocalVariable(name: "arg", arg: 3, scope: !4576, file: !492, line: 946, type: !193)
!4583 = !DILocalVariable(name: "o", scope: !4576, file: !492, line: 948, type: !3147)
!4584 = !DILocalVariable(name: "o", scope: !4585, file: !492, line: 187, type: !499)
!4585 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !492, file: !492, line: 185, type: !4586, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !480, variables: !4588)
!4586 = !DISubroutineType(types: !4587)
!4587 = !{!499, !132}
!4588 = !{!4589, !4584}
!4589 = !DILocalVariable(name: "style", arg: 1, scope: !4585, file: !492, line: 185, type: !132)
!4590 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!4591 = !DILocation(line: 187, column: 26, scope: !4585, inlinedAt: !4592)
!4592 = distinct !DILocation(line: 948, column: 36, scope: !4576)
!4593 = !DILocation(line: 946, column: 23, scope: !4576)
!4594 = !DILocation(line: 946, column: 45, scope: !4576)
!4595 = !DILocation(line: 946, column: 60, scope: !4576)
!4596 = !DILocation(line: 948, column: 3, scope: !4576)
!4597 = !DILocation(line: 948, column: 32, scope: !4576)
!4598 = !DILocation(line: 185, column: 48, scope: !4585, inlinedAt: !4592)
!4599 = !DILocation(line: 187, column: 3, scope: !4585, inlinedAt: !4592)
!4600 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!4601 = !DILocation(line: 188, column: 13, scope: !4602, inlinedAt: !4592)
!4602 = distinct !DILexicalBlock(scope: !4585, file: !492, line: 188, column: 7)
!4603 = !DILocation(line: 188, column: 7, scope: !4585, inlinedAt: !4592)
!4604 = !DILocation(line: 189, column: 5, scope: !4602, inlinedAt: !4592)
!4605 = !{!4606}
!4606 = distinct !{!4606, !4607, !"quoting_options_from_style: argument 0"}
!4607 = distinct !{!4607, !"quoting_options_from_style"}
!4608 = !DILocation(line: 191, column: 10, scope: !4585, inlinedAt: !4592)
!4609 = !DILocation(line: 192, column: 1, scope: !4585, inlinedAt: !4592)
!4610 = !DILocation(line: 949, column: 10, scope: !4576)
!4611 = !DILocation(line: 950, column: 1, scope: !4576)
!4612 = !DILocation(line: 949, column: 3, scope: !4576)
!4613 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !492, file: !492, line: 953, type: !4614, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !480, variables: !4616)
!4614 = !DISubroutineType(types: !4615)
!4615 = !{!11, !9, !132, !193, !18}
!4616 = !{!4617, !4618, !4619, !4620, !4621}
!4617 = !DILocalVariable(name: "n", arg: 1, scope: !4613, file: !492, line: 953, type: !9)
!4618 = !DILocalVariable(name: "s", arg: 2, scope: !4613, file: !492, line: 953, type: !132)
!4619 = !DILocalVariable(name: "arg", arg: 3, scope: !4613, file: !492, line: 954, type: !193)
!4620 = !DILocalVariable(name: "argsize", arg: 4, scope: !4613, file: !492, line: 954, type: !18)
!4621 = !DILocalVariable(name: "o", scope: !4613, file: !492, line: 956, type: !3147)
!4622 = !DILocation(line: 187, column: 26, scope: !4585, inlinedAt: !4623)
!4623 = distinct !DILocation(line: 956, column: 36, scope: !4613)
!4624 = !DILocation(line: 953, column: 27, scope: !4613)
!4625 = !DILocation(line: 953, column: 49, scope: !4613)
!4626 = !DILocation(line: 954, column: 35, scope: !4613)
!4627 = !DILocation(line: 954, column: 47, scope: !4613)
!4628 = !DILocation(line: 956, column: 3, scope: !4613)
!4629 = !DILocation(line: 956, column: 32, scope: !4613)
!4630 = !DILocation(line: 185, column: 48, scope: !4585, inlinedAt: !4623)
!4631 = !DILocation(line: 187, column: 3, scope: !4585, inlinedAt: !4623)
!4632 = !DILocation(line: 188, column: 13, scope: !4602, inlinedAt: !4623)
!4633 = !DILocation(line: 188, column: 7, scope: !4585, inlinedAt: !4623)
!4634 = !DILocation(line: 189, column: 5, scope: !4602, inlinedAt: !4623)
!4635 = !{!4636}
!4636 = distinct !{!4636, !4637, !"quoting_options_from_style: argument 0"}
!4637 = distinct !{!4637, !"quoting_options_from_style"}
!4638 = !DILocation(line: 191, column: 10, scope: !4585, inlinedAt: !4623)
!4639 = !DILocation(line: 192, column: 1, scope: !4585, inlinedAt: !4623)
!4640 = !DILocation(line: 957, column: 10, scope: !4613)
!4641 = !DILocation(line: 958, column: 1, scope: !4613)
!4642 = !DILocation(line: 957, column: 3, scope: !4613)
!4643 = distinct !DISubprogram(name: "quotearg_style", scope: !492, file: !492, line: 961, type: !4644, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !480, variables: !4646)
!4644 = !DISubroutineType(types: !4645)
!4645 = !{!11, !132, !193}
!4646 = !{!4647, !4648}
!4647 = !DILocalVariable(name: "s", arg: 1, scope: !4643, file: !492, line: 961, type: !132)
!4648 = !DILocalVariable(name: "arg", arg: 2, scope: !4643, file: !492, line: 961, type: !193)
!4649 = !DILocation(line: 187, column: 26, scope: !4585, inlinedAt: !4650)
!4650 = distinct !DILocation(line: 948, column: 36, scope: !4576, inlinedAt: !4651)
!4651 = distinct !DILocation(line: 963, column: 10, scope: !4643)
!4652 = !DILocation(line: 961, column: 36, scope: !4643)
!4653 = !DILocation(line: 961, column: 51, scope: !4643)
!4654 = !DILocation(line: 946, column: 23, scope: !4576, inlinedAt: !4651)
!4655 = !DILocation(line: 946, column: 45, scope: !4576, inlinedAt: !4651)
!4656 = !DILocation(line: 946, column: 60, scope: !4576, inlinedAt: !4651)
!4657 = !DILocation(line: 948, column: 3, scope: !4576, inlinedAt: !4651)
!4658 = !DILocation(line: 948, column: 32, scope: !4576, inlinedAt: !4651)
!4659 = !DILocation(line: 185, column: 48, scope: !4585, inlinedAt: !4650)
!4660 = !DILocation(line: 187, column: 3, scope: !4585, inlinedAt: !4650)
!4661 = !DILocation(line: 188, column: 13, scope: !4602, inlinedAt: !4650)
!4662 = !DILocation(line: 188, column: 7, scope: !4585, inlinedAt: !4650)
!4663 = !DILocation(line: 189, column: 5, scope: !4602, inlinedAt: !4650)
!4664 = !{!4665}
!4665 = distinct !{!4665, !4666, !"quoting_options_from_style: argument 0"}
!4666 = distinct !{!4666, !"quoting_options_from_style"}
!4667 = !DILocation(line: 191, column: 10, scope: !4585, inlinedAt: !4650)
!4668 = !DILocation(line: 192, column: 1, scope: !4585, inlinedAt: !4650)
!4669 = !DILocation(line: 949, column: 10, scope: !4576, inlinedAt: !4651)
!4670 = !DILocation(line: 950, column: 1, scope: !4576, inlinedAt: !4651)
!4671 = !DILocation(line: 963, column: 3, scope: !4643)
!4672 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !492, file: !492, line: 967, type: !4673, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !480, variables: !4675)
!4673 = !DISubroutineType(types: !4674)
!4674 = !{!11, !132, !193, !18}
!4675 = !{!4676, !4677, !4678}
!4676 = !DILocalVariable(name: "s", arg: 1, scope: !4672, file: !492, line: 967, type: !132)
!4677 = !DILocalVariable(name: "arg", arg: 2, scope: !4672, file: !492, line: 967, type: !193)
!4678 = !DILocalVariable(name: "argsize", arg: 3, scope: !4672, file: !492, line: 967, type: !18)
!4679 = !DILocation(line: 187, column: 26, scope: !4585, inlinedAt: !4680)
!4680 = distinct !DILocation(line: 956, column: 36, scope: !4613, inlinedAt: !4681)
!4681 = distinct !DILocation(line: 969, column: 10, scope: !4672)
!4682 = !DILocation(line: 967, column: 40, scope: !4672)
!4683 = !DILocation(line: 967, column: 55, scope: !4672)
!4684 = !DILocation(line: 967, column: 67, scope: !4672)
!4685 = !DILocation(line: 953, column: 27, scope: !4613, inlinedAt: !4681)
!4686 = !DILocation(line: 953, column: 49, scope: !4613, inlinedAt: !4681)
!4687 = !DILocation(line: 954, column: 35, scope: !4613, inlinedAt: !4681)
!4688 = !DILocation(line: 954, column: 47, scope: !4613, inlinedAt: !4681)
!4689 = !DILocation(line: 956, column: 3, scope: !4613, inlinedAt: !4681)
!4690 = !DILocation(line: 956, column: 32, scope: !4613, inlinedAt: !4681)
!4691 = !DILocation(line: 185, column: 48, scope: !4585, inlinedAt: !4680)
!4692 = !DILocation(line: 187, column: 3, scope: !4585, inlinedAt: !4680)
!4693 = !DILocation(line: 188, column: 13, scope: !4602, inlinedAt: !4680)
!4694 = !DILocation(line: 188, column: 7, scope: !4585, inlinedAt: !4680)
!4695 = !DILocation(line: 189, column: 5, scope: !4602, inlinedAt: !4680)
!4696 = !{!4697}
!4697 = distinct !{!4697, !4698, !"quoting_options_from_style: argument 0"}
!4698 = distinct !{!4698, !"quoting_options_from_style"}
!4699 = !DILocation(line: 191, column: 10, scope: !4585, inlinedAt: !4680)
!4700 = !DILocation(line: 192, column: 1, scope: !4585, inlinedAt: !4680)
!4701 = !DILocation(line: 957, column: 10, scope: !4613, inlinedAt: !4681)
!4702 = !DILocation(line: 958, column: 1, scope: !4613, inlinedAt: !4681)
!4703 = !DILocation(line: 969, column: 3, scope: !4672)
!4704 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !492, file: !492, line: 973, type: !4705, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !480, variables: !4707)
!4705 = !DISubroutineType(types: !4706)
!4706 = !{!11, !193, !18, !12}
!4707 = !{!4708, !4709, !4710, !4711}
!4708 = !DILocalVariable(name: "arg", arg: 1, scope: !4704, file: !492, line: 973, type: !193)
!4709 = !DILocalVariable(name: "argsize", arg: 2, scope: !4704, file: !492, line: 973, type: !18)
!4710 = !DILocalVariable(name: "ch", arg: 3, scope: !4704, file: !492, line: 973, type: !12)
!4711 = !DILocalVariable(name: "options", scope: !4704, file: !492, line: 975, type: !499)
!4712 = !DILocation(line: 973, column: 32, scope: !4704)
!4713 = !DILocation(line: 973, column: 44, scope: !4704)
!4714 = !DILocation(line: 973, column: 58, scope: !4704)
!4715 = !DILocation(line: 975, column: 3, scope: !4704)
!4716 = !DILocation(line: 976, column: 13, scope: !4704)
!4717 = !{i64 0, i64 4, !1279, i64 4, i64 4, !1070, i64 8, i64 32, !1279, i64 40, i64 8, !1032, i64 48, i64 8, !1032}
!4718 = !DILocation(line: 975, column: 26, scope: !4704)
!4719 = !DILocation(line: 144, column: 43, scope: !3170, inlinedAt: !4720)
!4720 = distinct !DILocation(line: 977, column: 3, scope: !4704)
!4721 = !DILocation(line: 144, column: 51, scope: !3170, inlinedAt: !4720)
!4722 = !DILocation(line: 144, column: 58, scope: !3170, inlinedAt: !4720)
!4723 = !DILocation(line: 146, column: 17, scope: !3170, inlinedAt: !4720)
!4724 = !DILocation(line: 148, column: 62, scope: !3188, inlinedAt: !4720)
!4725 = !DILocation(line: 148, column: 57, scope: !3188, inlinedAt: !4720)
!4726 = !DILocation(line: 147, column: 17, scope: !3170, inlinedAt: !4720)
!4727 = !DILocation(line: 149, column: 18, scope: !3170, inlinedAt: !4720)
!4728 = !DILocation(line: 149, column: 15, scope: !3170, inlinedAt: !4720)
!4729 = !DILocation(line: 149, column: 7, scope: !3170, inlinedAt: !4720)
!4730 = !DILocation(line: 150, column: 12, scope: !3170, inlinedAt: !4720)
!4731 = !DILocation(line: 150, column: 15, scope: !3170, inlinedAt: !4720)
!4732 = !DILocation(line: 150, column: 25, scope: !3170, inlinedAt: !4720)
!4733 = !DILocation(line: 150, column: 7, scope: !3170, inlinedAt: !4720)
!4734 = !DILocation(line: 151, column: 18, scope: !3170, inlinedAt: !4720)
!4735 = !DILocation(line: 151, column: 23, scope: !3170, inlinedAt: !4720)
!4736 = !DILocation(line: 151, column: 6, scope: !3170, inlinedAt: !4720)
!4737 = !DILocation(line: 978, column: 10, scope: !4704)
!4738 = !DILocation(line: 979, column: 1, scope: !4704)
!4739 = !DILocation(line: 978, column: 3, scope: !4704)
!4740 = distinct !DISubprogram(name: "quotearg_char", scope: !492, file: !492, line: 982, type: !4741, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !480, variables: !4743)
!4741 = !DISubroutineType(types: !4742)
!4742 = !{!11, !193, !12}
!4743 = !{!4744, !4745}
!4744 = !DILocalVariable(name: "arg", arg: 1, scope: !4740, file: !492, line: 982, type: !193)
!4745 = !DILocalVariable(name: "ch", arg: 2, scope: !4740, file: !492, line: 982, type: !12)
!4746 = !DILocation(line: 982, column: 28, scope: !4740)
!4747 = !DILocation(line: 982, column: 38, scope: !4740)
!4748 = !DILocation(line: 973, column: 32, scope: !4704, inlinedAt: !4749)
!4749 = distinct !DILocation(line: 984, column: 10, scope: !4740)
!4750 = !DILocation(line: 973, column: 44, scope: !4704, inlinedAt: !4749)
!4751 = !DILocation(line: 973, column: 58, scope: !4704, inlinedAt: !4749)
!4752 = !DILocation(line: 975, column: 3, scope: !4704, inlinedAt: !4749)
!4753 = !DILocation(line: 976, column: 13, scope: !4704, inlinedAt: !4749)
!4754 = !DILocation(line: 975, column: 26, scope: !4704, inlinedAt: !4749)
!4755 = !DILocation(line: 144, column: 43, scope: !3170, inlinedAt: !4756)
!4756 = distinct !DILocation(line: 977, column: 3, scope: !4704, inlinedAt: !4749)
!4757 = !DILocation(line: 144, column: 51, scope: !3170, inlinedAt: !4756)
!4758 = !DILocation(line: 144, column: 58, scope: !3170, inlinedAt: !4756)
!4759 = !DILocation(line: 146, column: 17, scope: !3170, inlinedAt: !4756)
!4760 = !DILocation(line: 148, column: 62, scope: !3188, inlinedAt: !4756)
!4761 = !DILocation(line: 148, column: 57, scope: !3188, inlinedAt: !4756)
!4762 = !DILocation(line: 147, column: 17, scope: !3170, inlinedAt: !4756)
!4763 = !DILocation(line: 149, column: 18, scope: !3170, inlinedAt: !4756)
!4764 = !DILocation(line: 149, column: 15, scope: !3170, inlinedAt: !4756)
!4765 = !DILocation(line: 149, column: 7, scope: !3170, inlinedAt: !4756)
!4766 = !DILocation(line: 150, column: 12, scope: !3170, inlinedAt: !4756)
!4767 = !DILocation(line: 150, column: 15, scope: !3170, inlinedAt: !4756)
!4768 = !DILocation(line: 150, column: 25, scope: !3170, inlinedAt: !4756)
!4769 = !DILocation(line: 150, column: 7, scope: !3170, inlinedAt: !4756)
!4770 = !DILocation(line: 151, column: 18, scope: !3170, inlinedAt: !4756)
!4771 = !DILocation(line: 151, column: 23, scope: !3170, inlinedAt: !4756)
!4772 = !DILocation(line: 151, column: 6, scope: !3170, inlinedAt: !4756)
!4773 = !DILocation(line: 978, column: 10, scope: !4704, inlinedAt: !4749)
!4774 = !DILocation(line: 979, column: 1, scope: !4704, inlinedAt: !4749)
!4775 = !DILocation(line: 984, column: 3, scope: !4740)
!4776 = distinct !DISubprogram(name: "quotearg_colon", scope: !492, file: !492, line: 988, type: !4552, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !480, variables: !4777)
!4777 = !{!4778}
!4778 = !DILocalVariable(name: "arg", arg: 1, scope: !4776, file: !492, line: 988, type: !193)
!4779 = !DILocation(line: 988, column: 29, scope: !4776)
!4780 = !DILocation(line: 982, column: 28, scope: !4740, inlinedAt: !4781)
!4781 = distinct !DILocation(line: 990, column: 10, scope: !4776)
!4782 = !DILocation(line: 982, column: 38, scope: !4740, inlinedAt: !4781)
!4783 = !DILocation(line: 973, column: 32, scope: !4704, inlinedAt: !4784)
!4784 = distinct !DILocation(line: 984, column: 10, scope: !4740, inlinedAt: !4781)
!4785 = !DILocation(line: 973, column: 44, scope: !4704, inlinedAt: !4784)
!4786 = !DILocation(line: 973, column: 58, scope: !4704, inlinedAt: !4784)
!4787 = !DILocation(line: 975, column: 3, scope: !4704, inlinedAt: !4784)
!4788 = !DILocation(line: 976, column: 13, scope: !4704, inlinedAt: !4784)
!4789 = !DILocation(line: 975, column: 26, scope: !4704, inlinedAt: !4784)
!4790 = !DILocation(line: 144, column: 43, scope: !3170, inlinedAt: !4791)
!4791 = distinct !DILocation(line: 977, column: 3, scope: !4704, inlinedAt: !4784)
!4792 = !DILocation(line: 144, column: 51, scope: !3170, inlinedAt: !4791)
!4793 = !DILocation(line: 144, column: 58, scope: !3170, inlinedAt: !4791)
!4794 = !DILocation(line: 146, column: 17, scope: !3170, inlinedAt: !4791)
!4795 = !DILocation(line: 148, column: 57, scope: !3188, inlinedAt: !4791)
!4796 = !DILocation(line: 147, column: 17, scope: !3170, inlinedAt: !4791)
!4797 = !DILocation(line: 149, column: 7, scope: !3170, inlinedAt: !4791)
!4798 = !DILocation(line: 150, column: 12, scope: !3170, inlinedAt: !4791)
!4799 = !DILocation(line: 151, column: 6, scope: !3170, inlinedAt: !4791)
!4800 = !DILocation(line: 978, column: 10, scope: !4704, inlinedAt: !4784)
!4801 = !DILocation(line: 979, column: 1, scope: !4704, inlinedAt: !4784)
!4802 = !DILocation(line: 990, column: 3, scope: !4776)
!4803 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !492, file: !492, line: 994, type: !4563, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !480, variables: !4804)
!4804 = !{!4805, !4806}
!4805 = !DILocalVariable(name: "arg", arg: 1, scope: !4803, file: !492, line: 994, type: !193)
!4806 = !DILocalVariable(name: "argsize", arg: 2, scope: !4803, file: !492, line: 994, type: !18)
!4807 = !DILocation(line: 994, column: 33, scope: !4803)
!4808 = !DILocation(line: 994, column: 45, scope: !4803)
!4809 = !DILocation(line: 973, column: 32, scope: !4704, inlinedAt: !4810)
!4810 = distinct !DILocation(line: 996, column: 10, scope: !4803)
!4811 = !DILocation(line: 973, column: 44, scope: !4704, inlinedAt: !4810)
!4812 = !DILocation(line: 973, column: 58, scope: !4704, inlinedAt: !4810)
!4813 = !DILocation(line: 975, column: 3, scope: !4704, inlinedAt: !4810)
!4814 = !DILocation(line: 976, column: 13, scope: !4704, inlinedAt: !4810)
!4815 = !DILocation(line: 975, column: 26, scope: !4704, inlinedAt: !4810)
!4816 = !DILocation(line: 144, column: 43, scope: !3170, inlinedAt: !4817)
!4817 = distinct !DILocation(line: 977, column: 3, scope: !4704, inlinedAt: !4810)
!4818 = !DILocation(line: 144, column: 51, scope: !3170, inlinedAt: !4817)
!4819 = !DILocation(line: 144, column: 58, scope: !3170, inlinedAt: !4817)
!4820 = !DILocation(line: 146, column: 17, scope: !3170, inlinedAt: !4817)
!4821 = !DILocation(line: 148, column: 57, scope: !3188, inlinedAt: !4817)
!4822 = !DILocation(line: 147, column: 17, scope: !3170, inlinedAt: !4817)
!4823 = !DILocation(line: 149, column: 7, scope: !3170, inlinedAt: !4817)
!4824 = !DILocation(line: 150, column: 12, scope: !3170, inlinedAt: !4817)
!4825 = !DILocation(line: 151, column: 6, scope: !3170, inlinedAt: !4817)
!4826 = !DILocation(line: 978, column: 10, scope: !4704, inlinedAt: !4810)
!4827 = !DILocation(line: 979, column: 1, scope: !4704, inlinedAt: !4810)
!4828 = !DILocation(line: 996, column: 3, scope: !4803)
!4829 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !492, file: !492, line: 1000, type: !4577, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !480, variables: !4830)
!4830 = !{!4831, !4832, !4833, !4834}
!4831 = !DILocalVariable(name: "n", arg: 1, scope: !4829, file: !492, line: 1000, type: !9)
!4832 = !DILocalVariable(name: "s", arg: 2, scope: !4829, file: !492, line: 1000, type: !132)
!4833 = !DILocalVariable(name: "arg", arg: 3, scope: !4829, file: !492, line: 1000, type: !193)
!4834 = !DILocalVariable(name: "options", scope: !4829, file: !492, line: 1002, type: !499)
!4835 = !DILocation(line: 187, column: 26, scope: !4585, inlinedAt: !4836)
!4836 = distinct !DILocation(line: 1003, column: 13, scope: !4829)
!4837 = !DILocation(line: 1000, column: 29, scope: !4829)
!4838 = !DILocation(line: 1000, column: 51, scope: !4829)
!4839 = !DILocation(line: 1000, column: 66, scope: !4829)
!4840 = !DILocation(line: 1002, column: 3, scope: !4829)
!4841 = !DILocation(line: 185, column: 48, scope: !4585, inlinedAt: !4836)
!4842 = !DILocation(line: 187, column: 3, scope: !4585, inlinedAt: !4836)
!4843 = !DILocation(line: 188, column: 13, scope: !4602, inlinedAt: !4836)
!4844 = !DILocation(line: 188, column: 7, scope: !4585, inlinedAt: !4836)
!4845 = !DILocation(line: 189, column: 5, scope: !4602, inlinedAt: !4836)
!4846 = !{!4847}
!4847 = distinct !{!4847, !4848, !"quoting_options_from_style: argument 0"}
!4848 = distinct !{!4848, !"quoting_options_from_style"}
!4849 = !DILocation(line: 191, column: 10, scope: !4585, inlinedAt: !4836)
!4850 = !DILocation(line: 192, column: 1, scope: !4585, inlinedAt: !4836)
!4851 = !DILocation(line: 1003, column: 13, scope: !4829)
!4852 = !DILocation(line: 1002, column: 26, scope: !4829)
!4853 = !DILocation(line: 144, column: 43, scope: !3170, inlinedAt: !4854)
!4854 = distinct !DILocation(line: 1004, column: 3, scope: !4829)
!4855 = !DILocation(line: 144, column: 51, scope: !3170, inlinedAt: !4854)
!4856 = !DILocation(line: 144, column: 58, scope: !3170, inlinedAt: !4854)
!4857 = !DILocation(line: 146, column: 17, scope: !3170, inlinedAt: !4854)
!4858 = !DILocation(line: 148, column: 57, scope: !3188, inlinedAt: !4854)
!4859 = !DILocation(line: 147, column: 17, scope: !3170, inlinedAt: !4854)
!4860 = !DILocation(line: 149, column: 7, scope: !3170, inlinedAt: !4854)
!4861 = !DILocation(line: 150, column: 12, scope: !3170, inlinedAt: !4854)
!4862 = !DILocation(line: 151, column: 6, scope: !3170, inlinedAt: !4854)
!4863 = !DILocation(line: 1005, column: 10, scope: !4829)
!4864 = !DILocation(line: 1006, column: 1, scope: !4829)
!4865 = !DILocation(line: 1005, column: 3, scope: !4829)
!4866 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !492, file: !492, line: 1009, type: !4867, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !480, variables: !4869)
!4867 = !DISubroutineType(types: !4868)
!4868 = !{!11, !9, !193, !193, !193}
!4869 = !{!4870, !4871, !4872, !4873}
!4870 = !DILocalVariable(name: "n", arg: 1, scope: !4866, file: !492, line: 1009, type: !9)
!4871 = !DILocalVariable(name: "left_quote", arg: 2, scope: !4866, file: !492, line: 1009, type: !193)
!4872 = !DILocalVariable(name: "right_quote", arg: 3, scope: !4866, file: !492, line: 1010, type: !193)
!4873 = !DILocalVariable(name: "arg", arg: 4, scope: !4866, file: !492, line: 1010, type: !193)
!4874 = !DILocation(line: 1009, column: 24, scope: !4866)
!4875 = !DILocation(line: 1009, column: 39, scope: !4866)
!4876 = !DILocation(line: 1010, column: 32, scope: !4866)
!4877 = !DILocation(line: 1010, column: 57, scope: !4866)
!4878 = !DILocalVariable(name: "n", arg: 1, scope: !4879, file: !492, line: 1017, type: !9)
!4879 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !492, file: !492, line: 1017, type: !4880, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !480, variables: !4882)
!4880 = !DISubroutineType(types: !4881)
!4881 = !{!11, !9, !193, !193, !193, !18}
!4882 = !{!4878, !4883, !4884, !4885, !4886, !4887}
!4883 = !DILocalVariable(name: "left_quote", arg: 2, scope: !4879, file: !492, line: 1017, type: !193)
!4884 = !DILocalVariable(name: "right_quote", arg: 3, scope: !4879, file: !492, line: 1018, type: !193)
!4885 = !DILocalVariable(name: "arg", arg: 4, scope: !4879, file: !492, line: 1019, type: !193)
!4886 = !DILocalVariable(name: "argsize", arg: 5, scope: !4879, file: !492, line: 1019, type: !18)
!4887 = !DILocalVariable(name: "o", scope: !4879, file: !492, line: 1021, type: !499)
!4888 = !DILocation(line: 1017, column: 28, scope: !4879, inlinedAt: !4889)
!4889 = distinct !DILocation(line: 1012, column: 10, scope: !4866)
!4890 = !DILocation(line: 1017, column: 43, scope: !4879, inlinedAt: !4889)
!4891 = !DILocation(line: 1018, column: 36, scope: !4879, inlinedAt: !4889)
!4892 = !DILocation(line: 1019, column: 36, scope: !4879, inlinedAt: !4889)
!4893 = !DILocation(line: 1019, column: 48, scope: !4879, inlinedAt: !4889)
!4894 = !DILocation(line: 1021, column: 3, scope: !4879, inlinedAt: !4889)
!4895 = !DILocation(line: 1021, column: 30, scope: !4879, inlinedAt: !4889)
!4896 = !DILocation(line: 1021, column: 26, scope: !4879, inlinedAt: !4889)
!4897 = !DILocation(line: 171, column: 45, scope: !3220, inlinedAt: !4898)
!4898 = distinct !DILocation(line: 1022, column: 3, scope: !4879, inlinedAt: !4889)
!4899 = !DILocation(line: 172, column: 33, scope: !3220, inlinedAt: !4898)
!4900 = !DILocation(line: 172, column: 57, scope: !3220, inlinedAt: !4898)
!4901 = !DILocation(line: 176, column: 6, scope: !3220, inlinedAt: !4898)
!4902 = !DILocation(line: 176, column: 12, scope: !3220, inlinedAt: !4898)
!4903 = !DILocation(line: 177, column: 8, scope: !3236, inlinedAt: !4898)
!4904 = !DILocation(line: 177, column: 23, scope: !3238, inlinedAt: !4898)
!4905 = !DILocation(line: 177, column: 19, scope: !3236, inlinedAt: !4898)
!4906 = !DILocation(line: 178, column: 5, scope: !3236, inlinedAt: !4898)
!4907 = !DILocation(line: 179, column: 6, scope: !3220, inlinedAt: !4898)
!4908 = !DILocation(line: 179, column: 17, scope: !3220, inlinedAt: !4898)
!4909 = !DILocation(line: 180, column: 6, scope: !3220, inlinedAt: !4898)
!4910 = !DILocation(line: 180, column: 18, scope: !3220, inlinedAt: !4898)
!4911 = !DILocation(line: 1023, column: 10, scope: !4879, inlinedAt: !4889)
!4912 = !DILocation(line: 1024, column: 1, scope: !4879, inlinedAt: !4889)
!4913 = !DILocation(line: 1012, column: 3, scope: !4866)
!4914 = !DILocation(line: 1017, column: 28, scope: !4879)
!4915 = !DILocation(line: 1017, column: 43, scope: !4879)
!4916 = !DILocation(line: 1018, column: 36, scope: !4879)
!4917 = !DILocation(line: 1019, column: 36, scope: !4879)
!4918 = !DILocation(line: 1019, column: 48, scope: !4879)
!4919 = !DILocation(line: 1021, column: 3, scope: !4879)
!4920 = !DILocation(line: 1021, column: 30, scope: !4879)
!4921 = !DILocation(line: 1021, column: 26, scope: !4879)
!4922 = !DILocation(line: 171, column: 45, scope: !3220, inlinedAt: !4923)
!4923 = distinct !DILocation(line: 1022, column: 3, scope: !4879)
!4924 = !DILocation(line: 172, column: 33, scope: !3220, inlinedAt: !4923)
!4925 = !DILocation(line: 172, column: 57, scope: !3220, inlinedAt: !4923)
!4926 = !DILocation(line: 176, column: 6, scope: !3220, inlinedAt: !4923)
!4927 = !DILocation(line: 176, column: 12, scope: !3220, inlinedAt: !4923)
!4928 = !DILocation(line: 177, column: 8, scope: !3236, inlinedAt: !4923)
!4929 = !DILocation(line: 177, column: 23, scope: !3238, inlinedAt: !4923)
!4930 = !DILocation(line: 177, column: 19, scope: !3236, inlinedAt: !4923)
!4931 = !DILocation(line: 178, column: 5, scope: !3236, inlinedAt: !4923)
!4932 = !DILocation(line: 179, column: 6, scope: !3220, inlinedAt: !4923)
!4933 = !DILocation(line: 179, column: 17, scope: !3220, inlinedAt: !4923)
!4934 = !DILocation(line: 180, column: 6, scope: !3220, inlinedAt: !4923)
!4935 = !DILocation(line: 180, column: 18, scope: !3220, inlinedAt: !4923)
!4936 = !DILocation(line: 1023, column: 10, scope: !4879)
!4937 = !DILocation(line: 1024, column: 1, scope: !4879)
!4938 = !DILocation(line: 1023, column: 3, scope: !4879)
!4939 = distinct !DISubprogram(name: "quotearg_custom", scope: !492, file: !492, line: 1027, type: !4940, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !480, variables: !4942)
!4940 = !DISubroutineType(types: !4941)
!4941 = !{!11, !193, !193, !193}
!4942 = !{!4943, !4944, !4945}
!4943 = !DILocalVariable(name: "left_quote", arg: 1, scope: !4939, file: !492, line: 1027, type: !193)
!4944 = !DILocalVariable(name: "right_quote", arg: 2, scope: !4939, file: !492, line: 1027, type: !193)
!4945 = !DILocalVariable(name: "arg", arg: 3, scope: !4939, file: !492, line: 1028, type: !193)
!4946 = !DILocation(line: 1027, column: 30, scope: !4939)
!4947 = !DILocation(line: 1027, column: 54, scope: !4939)
!4948 = !DILocation(line: 1028, column: 30, scope: !4939)
!4949 = !DILocation(line: 1009, column: 24, scope: !4866, inlinedAt: !4950)
!4950 = distinct !DILocation(line: 1030, column: 10, scope: !4939)
!4951 = !DILocation(line: 1009, column: 39, scope: !4866, inlinedAt: !4950)
!4952 = !DILocation(line: 1010, column: 32, scope: !4866, inlinedAt: !4950)
!4953 = !DILocation(line: 1010, column: 57, scope: !4866, inlinedAt: !4950)
!4954 = !DILocation(line: 1017, column: 28, scope: !4879, inlinedAt: !4955)
!4955 = distinct !DILocation(line: 1012, column: 10, scope: !4866, inlinedAt: !4950)
!4956 = !DILocation(line: 1017, column: 43, scope: !4879, inlinedAt: !4955)
!4957 = !DILocation(line: 1018, column: 36, scope: !4879, inlinedAt: !4955)
!4958 = !DILocation(line: 1019, column: 36, scope: !4879, inlinedAt: !4955)
!4959 = !DILocation(line: 1019, column: 48, scope: !4879, inlinedAt: !4955)
!4960 = !DILocation(line: 1021, column: 3, scope: !4879, inlinedAt: !4955)
!4961 = !DILocation(line: 1021, column: 30, scope: !4879, inlinedAt: !4955)
!4962 = !DILocation(line: 1021, column: 26, scope: !4879, inlinedAt: !4955)
!4963 = !DILocation(line: 171, column: 45, scope: !3220, inlinedAt: !4964)
!4964 = distinct !DILocation(line: 1022, column: 3, scope: !4879, inlinedAt: !4955)
!4965 = !DILocation(line: 172, column: 33, scope: !3220, inlinedAt: !4964)
!4966 = !DILocation(line: 172, column: 57, scope: !3220, inlinedAt: !4964)
!4967 = !DILocation(line: 176, column: 6, scope: !3220, inlinedAt: !4964)
!4968 = !DILocation(line: 176, column: 12, scope: !3220, inlinedAt: !4964)
!4969 = !DILocation(line: 177, column: 8, scope: !3236, inlinedAt: !4964)
!4970 = !DILocation(line: 177, column: 23, scope: !3238, inlinedAt: !4964)
!4971 = !DILocation(line: 177, column: 19, scope: !3236, inlinedAt: !4964)
!4972 = !DILocation(line: 178, column: 5, scope: !3236, inlinedAt: !4964)
!4973 = !DILocation(line: 179, column: 6, scope: !3220, inlinedAt: !4964)
!4974 = !DILocation(line: 179, column: 17, scope: !3220, inlinedAt: !4964)
!4975 = !DILocation(line: 180, column: 6, scope: !3220, inlinedAt: !4964)
!4976 = !DILocation(line: 180, column: 18, scope: !3220, inlinedAt: !4964)
!4977 = !DILocation(line: 1023, column: 10, scope: !4879, inlinedAt: !4955)
!4978 = !DILocation(line: 1024, column: 1, scope: !4879, inlinedAt: !4955)
!4979 = !DILocation(line: 1030, column: 3, scope: !4939)
!4980 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !492, file: !492, line: 1034, type: !4981, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !480, variables: !4983)
!4981 = !DISubroutineType(types: !4982)
!4982 = !{!11, !193, !193, !193, !18}
!4983 = !{!4984, !4985, !4986, !4987}
!4984 = !DILocalVariable(name: "left_quote", arg: 1, scope: !4980, file: !492, line: 1034, type: !193)
!4985 = !DILocalVariable(name: "right_quote", arg: 2, scope: !4980, file: !492, line: 1034, type: !193)
!4986 = !DILocalVariable(name: "arg", arg: 3, scope: !4980, file: !492, line: 1035, type: !193)
!4987 = !DILocalVariable(name: "argsize", arg: 4, scope: !4980, file: !492, line: 1035, type: !18)
!4988 = !DILocation(line: 1034, column: 34, scope: !4980)
!4989 = !DILocation(line: 1034, column: 58, scope: !4980)
!4990 = !DILocation(line: 1035, column: 34, scope: !4980)
!4991 = !DILocation(line: 1035, column: 46, scope: !4980)
!4992 = !DILocation(line: 1017, column: 28, scope: !4879, inlinedAt: !4993)
!4993 = distinct !DILocation(line: 1037, column: 10, scope: !4980)
!4994 = !DILocation(line: 1017, column: 43, scope: !4879, inlinedAt: !4993)
!4995 = !DILocation(line: 1018, column: 36, scope: !4879, inlinedAt: !4993)
!4996 = !DILocation(line: 1019, column: 36, scope: !4879, inlinedAt: !4993)
!4997 = !DILocation(line: 1019, column: 48, scope: !4879, inlinedAt: !4993)
!4998 = !DILocation(line: 1021, column: 3, scope: !4879, inlinedAt: !4993)
!4999 = !DILocation(line: 1021, column: 30, scope: !4879, inlinedAt: !4993)
!5000 = !DILocation(line: 1021, column: 26, scope: !4879, inlinedAt: !4993)
!5001 = !DILocation(line: 171, column: 45, scope: !3220, inlinedAt: !5002)
!5002 = distinct !DILocation(line: 1022, column: 3, scope: !4879, inlinedAt: !4993)
!5003 = !DILocation(line: 172, column: 33, scope: !3220, inlinedAt: !5002)
!5004 = !DILocation(line: 172, column: 57, scope: !3220, inlinedAt: !5002)
!5005 = !DILocation(line: 176, column: 6, scope: !3220, inlinedAt: !5002)
!5006 = !DILocation(line: 176, column: 12, scope: !3220, inlinedAt: !5002)
!5007 = !DILocation(line: 177, column: 8, scope: !3236, inlinedAt: !5002)
!5008 = !DILocation(line: 177, column: 23, scope: !3238, inlinedAt: !5002)
!5009 = !DILocation(line: 177, column: 19, scope: !3236, inlinedAt: !5002)
!5010 = !DILocation(line: 178, column: 5, scope: !3236, inlinedAt: !5002)
!5011 = !DILocation(line: 179, column: 6, scope: !3220, inlinedAt: !5002)
!5012 = !DILocation(line: 179, column: 17, scope: !3220, inlinedAt: !5002)
!5013 = !DILocation(line: 180, column: 6, scope: !3220, inlinedAt: !5002)
!5014 = !DILocation(line: 180, column: 18, scope: !3220, inlinedAt: !5002)
!5015 = !DILocation(line: 1023, column: 10, scope: !4879, inlinedAt: !4993)
!5016 = !DILocation(line: 1024, column: 1, scope: !4879, inlinedAt: !4993)
!5017 = !DILocation(line: 1037, column: 3, scope: !4980)
!5018 = distinct !DISubprogram(name: "quote_n_mem", scope: !492, file: !492, line: 1052, type: !5019, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !480, variables: !5021)
!5019 = !DISubroutineType(types: !5020)
!5020 = !{!193, !9, !193, !18}
!5021 = !{!5022, !5023, !5024}
!5022 = !DILocalVariable(name: "n", arg: 1, scope: !5018, file: !492, line: 1052, type: !9)
!5023 = !DILocalVariable(name: "arg", arg: 2, scope: !5018, file: !492, line: 1052, type: !193)
!5024 = !DILocalVariable(name: "argsize", arg: 3, scope: !5018, file: !492, line: 1052, type: !18)
!5025 = !DILocation(line: 1052, column: 18, scope: !5018)
!5026 = !DILocation(line: 1052, column: 33, scope: !5018)
!5027 = !DILocation(line: 1052, column: 45, scope: !5018)
!5028 = !DILocation(line: 1054, column: 10, scope: !5018)
!5029 = !DILocation(line: 1054, column: 3, scope: !5018)
!5030 = distinct !DISubprogram(name: "quote_mem", scope: !492, file: !492, line: 1058, type: !5031, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !480, variables: !5033)
!5031 = !DISubroutineType(types: !5032)
!5032 = !{!193, !193, !18}
!5033 = !{!5034, !5035}
!5034 = !DILocalVariable(name: "arg", arg: 1, scope: !5030, file: !492, line: 1058, type: !193)
!5035 = !DILocalVariable(name: "argsize", arg: 2, scope: !5030, file: !492, line: 1058, type: !18)
!5036 = !DILocation(line: 1058, column: 24, scope: !5030)
!5037 = !DILocation(line: 1058, column: 36, scope: !5030)
!5038 = !DILocation(line: 1052, column: 18, scope: !5018, inlinedAt: !5039)
!5039 = distinct !DILocation(line: 1060, column: 10, scope: !5030)
!5040 = !DILocation(line: 1052, column: 33, scope: !5018, inlinedAt: !5039)
!5041 = !DILocation(line: 1052, column: 45, scope: !5018, inlinedAt: !5039)
!5042 = !DILocation(line: 1054, column: 10, scope: !5018, inlinedAt: !5039)
!5043 = !DILocation(line: 1060, column: 3, scope: !5030)
!5044 = distinct !DISubprogram(name: "quote_n", scope: !492, file: !492, line: 1064, type: !5045, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !480, variables: !5047)
!5045 = !DISubroutineType(types: !5046)
!5046 = !{!193, !9, !193}
!5047 = !{!5048, !5049}
!5048 = !DILocalVariable(name: "n", arg: 1, scope: !5044, file: !492, line: 1064, type: !9)
!5049 = !DILocalVariable(name: "arg", arg: 2, scope: !5044, file: !492, line: 1064, type: !193)
!5050 = !DILocation(line: 1064, column: 14, scope: !5044)
!5051 = !DILocation(line: 1064, column: 29, scope: !5044)
!5052 = !DILocation(line: 1052, column: 18, scope: !5018, inlinedAt: !5053)
!5053 = distinct !DILocation(line: 1066, column: 10, scope: !5044)
!5054 = !DILocation(line: 1052, column: 33, scope: !5018, inlinedAt: !5053)
!5055 = !DILocation(line: 1052, column: 45, scope: !5018, inlinedAt: !5053)
!5056 = !DILocation(line: 1054, column: 10, scope: !5018, inlinedAt: !5053)
!5057 = !DILocation(line: 1066, column: 3, scope: !5044)
!5058 = distinct !DISubprogram(name: "quote", scope: !492, file: !492, line: 1070, type: !5059, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !480, variables: !5061)
!5059 = !DISubroutineType(types: !5060)
!5060 = !{!193, !193}
!5061 = !{!5062}
!5062 = !DILocalVariable(name: "arg", arg: 1, scope: !5058, file: !492, line: 1070, type: !193)
!5063 = !DILocation(line: 1070, column: 20, scope: !5058)
!5064 = !DILocation(line: 1064, column: 14, scope: !5044, inlinedAt: !5065)
!5065 = distinct !DILocation(line: 1072, column: 10, scope: !5058)
!5066 = !DILocation(line: 1064, column: 29, scope: !5044, inlinedAt: !5065)
!5067 = !DILocation(line: 1052, column: 18, scope: !5018, inlinedAt: !5068)
!5068 = distinct !DILocation(line: 1066, column: 10, scope: !5044, inlinedAt: !5065)
!5069 = !DILocation(line: 1052, column: 33, scope: !5018, inlinedAt: !5068)
!5070 = !DILocation(line: 1052, column: 45, scope: !5018, inlinedAt: !5068)
!5071 = !DILocation(line: 1054, column: 10, scope: !5018, inlinedAt: !5068)
!5072 = !DILocation(line: 1072, column: 3, scope: !5058)
!5073 = !DILocation(line: 56, column: 14, scope: !931)
!5074 = !DILocation(line: 56, column: 30, scope: !931)
!5075 = !DILocation(line: 56, column: 42, scope: !931)
!5076 = !DILocation(line: 64, column: 3, scope: !931)
!5077 = !DILocation(line: 66, column: 24, scope: !939)
!5078 = !DILocation(line: 66, column: 15, scope: !939)
!5079 = !DILocation(line: 68, column: 13, scope: !5080)
!5080 = distinct !DILexicalBlock(scope: !939, file: !930, line: 68, column: 11)
!5081 = !DILocation(line: 68, column: 11, scope: !939)
!5082 = !DILocation(line: 70, column: 16, scope: !5083)
!5083 = distinct !DILexicalBlock(scope: !5080, file: !930, line: 70, column: 16)
!5084 = !DILocation(line: 70, column: 16, scope: !5080)
!5085 = distinct !{!5085, !5086, !5087}
!5086 = !DILocation(line: 64, column: 3, scope: !941)
!5087 = !DILocation(line: 76, column: 5, scope: !941)
!5088 = !DILocation(line: 72, column: 22, scope: !5089)
!5089 = distinct !DILexicalBlock(scope: !5083, file: !930, line: 72, column: 16)
!5090 = !DILocation(line: 72, column: 54, scope: !5091)
!5091 = !DILexicalBlockFile(scope: !5089, file: !930, discriminator: 1)
!5092 = !DILocation(line: 72, column: 32, scope: !5089)
!5093 = !DILocation(line: 77, column: 1, scope: !931)
!5094 = distinct !DISubprogram(name: "dup_safer", scope: !5095, file: !5095, line: 31, type: !5096, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !947, variables: !5098)
!5095 = !DIFile(filename: "lib/dup-safer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5096 = !DISubroutineType(types: !5097)
!5097 = !{!9, !9}
!5098 = !{!5099}
!5099 = !DILocalVariable(name: "fd", arg: 1, scope: !5094, file: !5095, line: 31, type: !9)
!5100 = !DILocation(line: 31, column: 16, scope: !5094)
!5101 = !DILocation(line: 33, column: 10, scope: !5094)
!5102 = !DILocation(line: 33, column: 3, scope: !5094)
!5103 = distinct !DISubprogram(name: "version_etc_arn", scope: !953, file: !953, line: 62, type: !5104, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !949, variables: !5147)
!5104 = !DISubroutineType(types: !5105)
!5105 = !{null, !5106, !193, !193, !193, !5146, !18}
!5106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5107, size: 64)
!5107 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !260, line: 49, baseType: !5108)
!5108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !262, line: 241, size: 1728, elements: !5109)
!5109 = !{!5110, !5111, !5112, !5113, !5114, !5115, !5116, !5117, !5118, !5119, !5120, !5121, !5122, !5130, !5131, !5132, !5133, !5134, !5135, !5136, !5137, !5138, !5139, !5140, !5141, !5142, !5143, !5144, !5145}
!5110 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5108, file: !262, line: 242, baseType: !9, size: 32)
!5111 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5108, file: !262, line: 247, baseType: !11, size: 64, offset: 64)
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5108, file: !262, line: 248, baseType: !11, size: 64, offset: 128)
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5108, file: !262, line: 249, baseType: !11, size: 64, offset: 192)
!5114 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5108, file: !262, line: 250, baseType: !11, size: 64, offset: 256)
!5115 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5108, file: !262, line: 251, baseType: !11, size: 64, offset: 320)
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5108, file: !262, line: 252, baseType: !11, size: 64, offset: 384)
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5108, file: !262, line: 253, baseType: !11, size: 64, offset: 448)
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5108, file: !262, line: 254, baseType: !11, size: 64, offset: 512)
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5108, file: !262, line: 256, baseType: !11, size: 64, offset: 576)
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5108, file: !262, line: 257, baseType: !11, size: 64, offset: 640)
!5121 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5108, file: !262, line: 258, baseType: !11, size: 64, offset: 704)
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5108, file: !262, line: 260, baseType: !5123, size: 64, offset: 768)
!5123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5124, size: 64)
!5124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !262, line: 156, size: 192, elements: !5125)
!5125 = !{!5126, !5127, !5129}
!5126 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !5124, file: !262, line: 157, baseType: !5123, size: 64)
!5127 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !5124, file: !262, line: 158, baseType: !5128, size: 64, offset: 64)
!5128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5108, size: 64)
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !5124, file: !262, line: 162, baseType: !9, size: 32, offset: 128)
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5108, file: !262, line: 262, baseType: !5128, size: 64, offset: 832)
!5131 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5108, file: !262, line: 264, baseType: !9, size: 32, offset: 896)
!5132 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5108, file: !262, line: 268, baseType: !9, size: 32, offset: 928)
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5108, file: !262, line: 270, baseType: !288, size: 64, offset: 960)
!5134 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5108, file: !262, line: 274, baseType: !187, size: 16, offset: 1024)
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5108, file: !262, line: 275, baseType: !291, size: 8, offset: 1040)
!5136 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5108, file: !262, line: 276, baseType: !293, size: 8, offset: 1048)
!5137 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5108, file: !262, line: 280, baseType: !297, size: 64, offset: 1088)
!5138 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5108, file: !262, line: 289, baseType: !300, size: 64, offset: 1152)
!5139 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !5108, file: !262, line: 297, baseType: !76, size: 64, offset: 1216)
!5140 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !5108, file: !262, line: 298, baseType: !76, size: 64, offset: 1280)
!5141 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !5108, file: !262, line: 299, baseType: !76, size: 64, offset: 1344)
!5142 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !5108, file: !262, line: 300, baseType: !76, size: 64, offset: 1408)
!5143 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5108, file: !262, line: 302, baseType: !18, size: 64, offset: 1472)
!5144 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5108, file: !262, line: 303, baseType: !9, size: 32, offset: 1536)
!5145 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5108, file: !262, line: 305, baseType: !308, size: 160, offset: 1568)
!5146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!5147 = !{!5148, !5149, !5150, !5151, !5152, !5153}
!5148 = !DILocalVariable(name: "stream", arg: 1, scope: !5103, file: !953, line: 62, type: !5106)
!5149 = !DILocalVariable(name: "command_name", arg: 2, scope: !5103, file: !953, line: 63, type: !193)
!5150 = !DILocalVariable(name: "package", arg: 3, scope: !5103, file: !953, line: 63, type: !193)
!5151 = !DILocalVariable(name: "version", arg: 4, scope: !5103, file: !953, line: 64, type: !193)
!5152 = !DILocalVariable(name: "authors", arg: 5, scope: !5103, file: !953, line: 65, type: !5146)
!5153 = !DILocalVariable(name: "n_authors", arg: 6, scope: !5103, file: !953, line: 65, type: !18)
!5154 = !DILocation(line: 62, column: 24, scope: !5103)
!5155 = !DILocation(line: 63, column: 30, scope: !5103)
!5156 = !DILocation(line: 63, column: 56, scope: !5103)
!5157 = !DILocation(line: 64, column: 30, scope: !5103)
!5158 = !DILocation(line: 65, column: 39, scope: !5103)
!5159 = !DILocation(line: 65, column: 55, scope: !5103)
!5160 = !DILocation(line: 67, column: 7, scope: !5161)
!5161 = distinct !DILexicalBlock(scope: !5103, file: !953, line: 67, column: 7)
!5162 = !DILocation(line: 67, column: 7, scope: !5103)
!5163 = !DILocation(line: 68, column: 5, scope: !5161)
!5164 = !DILocation(line: 70, column: 5, scope: !5161)
!5165 = !DILocation(line: 84, column: 3, scope: !5103)
!5166 = !DILocation(line: 84, column: 3, scope: !5167)
!5167 = !DILexicalBlockFile(scope: !5103, file: !953, discriminator: 1)
!5168 = !DILocation(line: 86, column: 3, scope: !5103)
!5169 = !DILocation(line: 86, column: 3, scope: !5167)
!5170 = !DILocation(line: 95, column: 3, scope: !5103)
!5171 = !DILocation(line: 99, column: 7, scope: !5172)
!5172 = distinct !DILexicalBlock(scope: !5103, file: !953, line: 96, column: 5)
!5173 = !DILocation(line: 102, column: 7, scope: !5172)
!5174 = !DILocation(line: 102, column: 7, scope: !5175)
!5175 = !DILexicalBlockFile(scope: !5172, file: !953, discriminator: 1)
!5176 = !DILocation(line: 103, column: 7, scope: !5172)
!5177 = !DILocation(line: 106, column: 7, scope: !5172)
!5178 = !DILocation(line: 106, column: 7, scope: !5175)
!5179 = !DILocation(line: 107, column: 7, scope: !5172)
!5180 = !DILocation(line: 110, column: 7, scope: !5172)
!5181 = !DILocation(line: 110, column: 7, scope: !5175)
!5182 = !DILocation(line: 112, column: 7, scope: !5172)
!5183 = !DILocation(line: 117, column: 7, scope: !5172)
!5184 = !DILocation(line: 117, column: 7, scope: !5175)
!5185 = !DILocation(line: 119, column: 7, scope: !5172)
!5186 = !DILocation(line: 124, column: 7, scope: !5172)
!5187 = !DILocation(line: 124, column: 7, scope: !5175)
!5188 = !DILocation(line: 126, column: 7, scope: !5172)
!5189 = !DILocation(line: 131, column: 7, scope: !5172)
!5190 = !DILocation(line: 131, column: 7, scope: !5175)
!5191 = !DILocation(line: 134, column: 7, scope: !5172)
!5192 = !DILocation(line: 139, column: 7, scope: !5172)
!5193 = !DILocation(line: 139, column: 7, scope: !5175)
!5194 = !DILocation(line: 142, column: 7, scope: !5172)
!5195 = !DILocation(line: 147, column: 7, scope: !5172)
!5196 = !DILocation(line: 147, column: 7, scope: !5175)
!5197 = !DILocation(line: 151, column: 7, scope: !5172)
!5198 = !DILocation(line: 156, column: 7, scope: !5172)
!5199 = !DILocation(line: 156, column: 7, scope: !5175)
!5200 = !DILocation(line: 160, column: 7, scope: !5172)
!5201 = !DILocation(line: 167, column: 7, scope: !5172)
!5202 = !DILocation(line: 167, column: 7, scope: !5175)
!5203 = !DILocation(line: 171, column: 7, scope: !5172)
!5204 = !DILocation(line: 173, column: 1, scope: !5103)
!5205 = distinct !DISubprogram(name: "version_etc_ar", scope: !953, file: !953, line: 180, type: !5206, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !949, variables: !5208)
!5206 = !DISubroutineType(types: !5207)
!5207 = !{null, !5106, !193, !193, !193, !5146}
!5208 = !{!5209, !5210, !5211, !5212, !5213, !5214}
!5209 = !DILocalVariable(name: "stream", arg: 1, scope: !5205, file: !953, line: 180, type: !5106)
!5210 = !DILocalVariable(name: "command_name", arg: 2, scope: !5205, file: !953, line: 181, type: !193)
!5211 = !DILocalVariable(name: "package", arg: 3, scope: !5205, file: !953, line: 181, type: !193)
!5212 = !DILocalVariable(name: "version", arg: 4, scope: !5205, file: !953, line: 182, type: !193)
!5213 = !DILocalVariable(name: "authors", arg: 5, scope: !5205, file: !953, line: 182, type: !5146)
!5214 = !DILocalVariable(name: "n_authors", scope: !5205, file: !953, line: 184, type: !18)
!5215 = !DILocation(line: 180, column: 23, scope: !5205)
!5216 = !DILocation(line: 181, column: 29, scope: !5205)
!5217 = !DILocation(line: 181, column: 55, scope: !5205)
!5218 = !DILocation(line: 182, column: 29, scope: !5205)
!5219 = !DILocation(line: 182, column: 59, scope: !5205)
!5220 = !DILocation(line: 184, column: 10, scope: !5205)
!5221 = !DILocation(line: 186, column: 8, scope: !5222)
!5222 = distinct !DILexicalBlock(scope: !5205, file: !953, line: 186, column: 3)
!5223 = !DILocation(line: 186, column: 23, scope: !5224)
!5224 = !DILexicalBlockFile(scope: !5225, file: !953, discriminator: 1)
!5225 = distinct !DILexicalBlock(scope: !5222, file: !953, line: 186, column: 3)
!5226 = !DILocation(line: 186, column: 3, scope: !5227)
!5227 = !DILexicalBlockFile(scope: !5222, file: !953, discriminator: 1)
!5228 = !DILocation(line: 186, column: 52, scope: !5229)
!5229 = !DILexicalBlockFile(scope: !5225, file: !953, discriminator: 3)
!5230 = distinct !{!5230, !5231, !5232}
!5231 = !DILocation(line: 186, column: 3, scope: !5222)
!5232 = !DILocation(line: 187, column: 5, scope: !5222)
!5233 = !DILocation(line: 188, column: 3, scope: !5205)
!5234 = !DILocation(line: 189, column: 1, scope: !5205)
!5235 = distinct !DISubprogram(name: "version_etc_va", scope: !953, file: !953, line: 196, type: !5236, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !949, variables: !5245)
!5236 = !DISubroutineType(types: !5237)
!5237 = !{null, !5106, !193, !193, !193, !5238}
!5238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5239, size: 64)
!5239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !950, line: 189, size: 192, elements: !5240)
!5240 = !{!5241, !5242, !5243, !5244}
!5241 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !5239, file: !950, line: 189, baseType: !64, size: 32)
!5242 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !5239, file: !950, line: 189, baseType: !64, size: 32, offset: 32)
!5243 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !5239, file: !950, line: 189, baseType: !76, size: 64, offset: 64)
!5244 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !5239, file: !950, line: 189, baseType: !76, size: 64, offset: 128)
!5245 = !{!5246, !5247, !5248, !5249, !5250, !5251, !5252}
!5246 = !DILocalVariable(name: "stream", arg: 1, scope: !5235, file: !953, line: 196, type: !5106)
!5247 = !DILocalVariable(name: "command_name", arg: 2, scope: !5235, file: !953, line: 197, type: !193)
!5248 = !DILocalVariable(name: "package", arg: 3, scope: !5235, file: !953, line: 197, type: !193)
!5249 = !DILocalVariable(name: "version", arg: 4, scope: !5235, file: !953, line: 198, type: !193)
!5250 = !DILocalVariable(name: "authors", arg: 5, scope: !5235, file: !953, line: 198, type: !5238)
!5251 = !DILocalVariable(name: "n_authors", scope: !5235, file: !953, line: 200, type: !18)
!5252 = !DILocalVariable(name: "authtab", scope: !5235, file: !953, line: 201, type: !5253)
!5253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !193, size: 640, elements: !495)
!5254 = !DILocation(line: 196, column: 23, scope: !5235)
!5255 = !DILocation(line: 197, column: 29, scope: !5235)
!5256 = !DILocation(line: 197, column: 55, scope: !5235)
!5257 = !DILocation(line: 198, column: 29, scope: !5235)
!5258 = !DILocation(line: 198, column: 46, scope: !5235)
!5259 = !DILocation(line: 201, column: 3, scope: !5235)
!5260 = !DILocation(line: 201, column: 15, scope: !5235)
!5261 = !DILocation(line: 200, column: 10, scope: !5235)
!5262 = !DILocation(line: 205, column: 35, scope: !5263)
!5263 = !DILexicalBlockFile(scope: !5264, file: !953, discriminator: 1)
!5264 = distinct !DILexicalBlock(scope: !5265, file: !953, line: 203, column: 3)
!5265 = distinct !DILexicalBlock(scope: !5235, file: !953, line: 203, column: 3)
!5266 = !DILocation(line: 205, column: 35, scope: !5267)
!5267 = !DILexicalBlockFile(scope: !5264, file: !953, discriminator: 2)
!5268 = !DILocation(line: 205, column: 35, scope: !5269)
!5269 = !DILexicalBlockFile(scope: !5264, file: !953, discriminator: 3)
!5270 = !DILocation(line: 205, column: 35, scope: !5271)
!5271 = !DILexicalBlockFile(scope: !5264, file: !953, discriminator: 4)
!5272 = !DILocation(line: 205, column: 14, scope: !5271)
!5273 = !DILocation(line: 205, column: 33, scope: !5271)
!5274 = !DILocation(line: 205, column: 67, scope: !5271)
!5275 = !DILocation(line: 203, column: 3, scope: !5276)
!5276 = !DILexicalBlockFile(scope: !5265, file: !953, discriminator: 1)
!5277 = !DILocation(line: 208, column: 3, scope: !5235)
!5278 = !DILocation(line: 210, column: 1, scope: !5235)
!5279 = distinct !DISubprogram(name: "version_etc", scope: !953, file: !953, line: 227, type: !5280, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !949, variables: !5282)
!5280 = !DISubroutineType(types: !5281)
!5281 = !{null, !5106, !193, !193, !193, null}
!5282 = !{!5283, !5284, !5285, !5286, !5287}
!5283 = !DILocalVariable(name: "stream", arg: 1, scope: !5279, file: !953, line: 227, type: !5106)
!5284 = !DILocalVariable(name: "command_name", arg: 2, scope: !5279, file: !953, line: 228, type: !193)
!5285 = !DILocalVariable(name: "package", arg: 3, scope: !5279, file: !953, line: 228, type: !193)
!5286 = !DILocalVariable(name: "version", arg: 4, scope: !5279, file: !953, line: 229, type: !193)
!5287 = !DILocalVariable(name: "authors", scope: !5279, file: !953, line: 231, type: !5288)
!5288 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !260, line: 80, baseType: !5289)
!5289 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !552, line: 50, baseType: !5290)
!5290 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !950, line: 231, baseType: !5291)
!5291 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5239, size: 192, elements: !294)
!5292 = !DILocation(line: 227, column: 20, scope: !5279)
!5293 = !DILocation(line: 228, column: 26, scope: !5279)
!5294 = !DILocation(line: 228, column: 52, scope: !5279)
!5295 = !DILocation(line: 229, column: 26, scope: !5279)
!5296 = !DILocation(line: 231, column: 3, scope: !5279)
!5297 = !DILocation(line: 231, column: 11, scope: !5279)
!5298 = !DILocation(line: 233, column: 3, scope: !5279)
!5299 = !DILocation(line: 234, column: 3, scope: !5279)
!5300 = !DILocation(line: 235, column: 3, scope: !5279)
!5301 = !DILocation(line: 236, column: 1, scope: !5279)
!5302 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !953, file: !953, line: 239, type: !128, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !949, variables: !455)
!5303 = !DILocation(line: 245, column: 3, scope: !5302)
!5304 = !DILocation(line: 245, column: 3, scope: !5305)
!5305 = !DILexicalBlockFile(scope: !5302, file: !953, discriminator: 1)
!5306 = !DILocation(line: 251, column: 3, scope: !5302)
!5307 = !DILocation(line: 251, column: 3, scope: !5305)
!5308 = !DILocation(line: 256, column: 3, scope: !5302)
!5309 = !DILocation(line: 256, column: 3, scope: !5305)
!5310 = !DILocation(line: 258, column: 1, scope: !5302)
!5311 = distinct !DISubprogram(name: "xnmalloc", scope: !174, file: !174, line: 105, type: !5312, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !957, variables: !5314)
!5312 = !DISubroutineType(types: !5313)
!5313 = !{!76, !18, !18}
!5314 = !{!5315, !5316}
!5315 = !DILocalVariable(name: "n", arg: 1, scope: !5311, file: !174, line: 105, type: !18)
!5316 = !DILocalVariable(name: "s", arg: 2, scope: !5311, file: !174, line: 105, type: !18)
!5317 = !DILocation(line: 105, column: 18, scope: !5311)
!5318 = !DILocation(line: 105, column: 28, scope: !5311)
!5319 = !DILocation(line: 107, column: 7, scope: !5320)
!5320 = distinct !DILexicalBlock(scope: !5311, file: !174, line: 107, column: 7)
!5321 = !DILocation(line: 107, column: 7, scope: !5311)
!5322 = !DILocation(line: 108, column: 5, scope: !5320)
!5323 = !DILocation(line: 109, column: 21, scope: !5311)
!5324 = !DILocalVariable(name: "n", arg: 1, scope: !5325, file: !5326, line: 39, type: !18)
!5325 = distinct !DISubprogram(name: "xmalloc", scope: !5326, file: !5326, line: 39, type: !5327, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !957, variables: !5329)
!5326 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5327 = !DISubroutineType(types: !5328)
!5328 = !{!76, !18}
!5329 = !{!5324, !5330}
!5330 = !DILocalVariable(name: "p", scope: !5325, file: !5326, line: 41, type: !76)
!5331 = !DILocation(line: 39, column: 17, scope: !5325, inlinedAt: !5332)
!5332 = distinct !DILocation(line: 109, column: 10, scope: !5311)
!5333 = !DILocation(line: 41, column: 13, scope: !5325, inlinedAt: !5332)
!5334 = !DILocation(line: 41, column: 9, scope: !5325, inlinedAt: !5332)
!5335 = !DILocation(line: 42, column: 8, scope: !5336, inlinedAt: !5332)
!5336 = distinct !DILexicalBlock(scope: !5325, file: !5326, line: 42, column: 7)
!5337 = !DILocation(line: 42, column: 15, scope: !5338, inlinedAt: !5332)
!5338 = !DILexicalBlockFile(scope: !5336, file: !5326, discriminator: 1)
!5339 = !DILocation(line: 42, column: 10, scope: !5336, inlinedAt: !5332)
!5340 = !DILocation(line: 43, column: 5, scope: !5336, inlinedAt: !5332)
!5341 = !DILocation(line: 109, column: 3, scope: !5311)
!5342 = !DILocation(line: 39, column: 17, scope: !5325)
!5343 = !DILocation(line: 41, column: 13, scope: !5325)
!5344 = !DILocation(line: 41, column: 9, scope: !5325)
!5345 = !DILocation(line: 42, column: 8, scope: !5336)
!5346 = !DILocation(line: 42, column: 15, scope: !5338)
!5347 = !DILocation(line: 42, column: 10, scope: !5336)
!5348 = !DILocation(line: 43, column: 5, scope: !5336)
!5349 = !DILocation(line: 44, column: 3, scope: !5325)
!5350 = distinct !DISubprogram(name: "xnrealloc", scope: !174, file: !174, line: 118, type: !5351, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !957, variables: !5353)
!5351 = !DISubroutineType(types: !5352)
!5352 = !{!76, !76, !18, !18}
!5353 = !{!5354, !5355, !5356}
!5354 = !DILocalVariable(name: "p", arg: 1, scope: !5350, file: !174, line: 118, type: !76)
!5355 = !DILocalVariable(name: "n", arg: 2, scope: !5350, file: !174, line: 118, type: !18)
!5356 = !DILocalVariable(name: "s", arg: 3, scope: !5350, file: !174, line: 118, type: !18)
!5357 = !DILocation(line: 118, column: 18, scope: !5350)
!5358 = !DILocation(line: 118, column: 28, scope: !5350)
!5359 = !DILocation(line: 118, column: 38, scope: !5350)
!5360 = !DILocation(line: 120, column: 7, scope: !5361)
!5361 = distinct !DILexicalBlock(scope: !5350, file: !174, line: 120, column: 7)
!5362 = !DILocation(line: 120, column: 7, scope: !5350)
!5363 = !DILocation(line: 121, column: 5, scope: !5361)
!5364 = !DILocation(line: 122, column: 25, scope: !5350)
!5365 = !DILocalVariable(name: "p", arg: 1, scope: !5366, file: !5326, line: 51, type: !76)
!5366 = distinct !DISubprogram(name: "xrealloc", scope: !5326, file: !5326, line: 51, type: !5367, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !957, variables: !5369)
!5367 = !DISubroutineType(types: !5368)
!5368 = !{!76, !76, !18}
!5369 = !{!5365, !5370}
!5370 = !DILocalVariable(name: "n", arg: 2, scope: !5366, file: !5326, line: 51, type: !18)
!5371 = !DILocation(line: 51, column: 17, scope: !5366, inlinedAt: !5372)
!5372 = distinct !DILocation(line: 122, column: 10, scope: !5350)
!5373 = !DILocation(line: 51, column: 27, scope: !5366, inlinedAt: !5372)
!5374 = !DILocation(line: 53, column: 8, scope: !5375, inlinedAt: !5372)
!5375 = distinct !DILexicalBlock(scope: !5366, file: !5326, line: 53, column: 7)
!5376 = !DILocation(line: 53, column: 13, scope: !5377, inlinedAt: !5372)
!5377 = !DILexicalBlockFile(scope: !5375, file: !5326, discriminator: 1)
!5378 = !DILocation(line: 53, column: 10, scope: !5375, inlinedAt: !5372)
!5379 = !DILocation(line: 57, column: 7, scope: !5380, inlinedAt: !5372)
!5380 = distinct !DILexicalBlock(scope: !5375, file: !5326, line: 54, column: 5)
!5381 = !DILocation(line: 58, column: 7, scope: !5380, inlinedAt: !5372)
!5382 = !DILocation(line: 61, column: 7, scope: !5366, inlinedAt: !5372)
!5383 = !DILocation(line: 62, column: 8, scope: !5384, inlinedAt: !5372)
!5384 = distinct !DILexicalBlock(scope: !5366, file: !5326, line: 62, column: 7)
!5385 = !DILocation(line: 62, column: 13, scope: !5386, inlinedAt: !5372)
!5386 = !DILexicalBlockFile(scope: !5384, file: !5326, discriminator: 1)
!5387 = !DILocation(line: 62, column: 10, scope: !5384, inlinedAt: !5372)
!5388 = !DILocation(line: 63, column: 5, scope: !5384, inlinedAt: !5372)
!5389 = !DILocation(line: 122, column: 3, scope: !5350)
!5390 = !DILocation(line: 51, column: 17, scope: !5366)
!5391 = !DILocation(line: 51, column: 27, scope: !5366)
!5392 = !DILocation(line: 53, column: 8, scope: !5375)
!5393 = !DILocation(line: 53, column: 13, scope: !5377)
!5394 = !DILocation(line: 53, column: 10, scope: !5375)
!5395 = !DILocation(line: 57, column: 7, scope: !5380)
!5396 = !DILocation(line: 58, column: 7, scope: !5380)
!5397 = !DILocation(line: 61, column: 7, scope: !5366)
!5398 = !DILocation(line: 62, column: 8, scope: !5384)
!5399 = !DILocation(line: 62, column: 13, scope: !5386)
!5400 = !DILocation(line: 62, column: 10, scope: !5384)
!5401 = !DILocation(line: 63, column: 5, scope: !5384)
!5402 = !DILocation(line: 65, column: 1, scope: !5366)
!5403 = !DILocation(line: 180, column: 19, scope: !961)
!5404 = !DILocation(line: 180, column: 30, scope: !961)
!5405 = !DILocation(line: 180, column: 41, scope: !961)
!5406 = !DILocation(line: 182, column: 14, scope: !961)
!5407 = !DILocation(line: 182, column: 10, scope: !961)
!5408 = !DILocation(line: 184, column: 9, scope: !5409)
!5409 = distinct !DILexicalBlock(scope: !961, file: !174, line: 184, column: 7)
!5410 = !DILocation(line: 184, column: 7, scope: !961)
!5411 = !DILocation(line: 186, column: 13, scope: !5412)
!5412 = distinct !DILexicalBlock(scope: !5413, file: !174, line: 186, column: 11)
!5413 = distinct !DILexicalBlock(scope: !5409, file: !174, line: 185, column: 5)
!5414 = !DILocation(line: 186, column: 11, scope: !5413)
!5415 = !DILocation(line: 194, column: 30, scope: !5416)
!5416 = distinct !DILexicalBlock(scope: !5412, file: !174, line: 187, column: 9)
!5417 = !DILocation(line: 195, column: 16, scope: !5416)
!5418 = !DILocation(line: 195, column: 13, scope: !5416)
!5419 = !DILocation(line: 196, column: 9, scope: !5416)
!5420 = !DILocation(line: 204, column: 69, scope: !5421)
!5421 = distinct !DILexicalBlock(scope: !5422, file: !174, line: 204, column: 11)
!5422 = distinct !DILexicalBlock(scope: !5409, file: !174, line: 199, column: 5)
!5423 = !DILocation(line: 205, column: 11, scope: !5421)
!5424 = !DILocation(line: 204, column: 11, scope: !5422)
!5425 = !DILocation(line: 206, column: 9, scope: !5421)
!5426 = !DILocation(line: 210, column: 7, scope: !961)
!5427 = !DILocation(line: 211, column: 25, scope: !961)
!5428 = !DILocation(line: 51, column: 17, scope: !5366, inlinedAt: !5429)
!5429 = distinct !DILocation(line: 211, column: 10, scope: !961)
!5430 = !DILocation(line: 51, column: 27, scope: !5366, inlinedAt: !5429)
!5431 = !DILocation(line: 53, column: 10, scope: !5375, inlinedAt: !5429)
!5432 = !DILocation(line: 207, column: 14, scope: !5422)
!5433 = !DILocation(line: 207, column: 18, scope: !5422)
!5434 = !DILocation(line: 207, column: 9, scope: !5422)
!5435 = !DILocation(line: 53, column: 8, scope: !5375, inlinedAt: !5429)
!5436 = !DILocation(line: 57, column: 7, scope: !5380, inlinedAt: !5429)
!5437 = !DILocation(line: 58, column: 7, scope: !5380, inlinedAt: !5429)
!5438 = !DILocation(line: 61, column: 7, scope: !5366, inlinedAt: !5429)
!5439 = !DILocation(line: 62, column: 8, scope: !5384, inlinedAt: !5429)
!5440 = !DILocation(line: 62, column: 13, scope: !5386, inlinedAt: !5429)
!5441 = !DILocation(line: 62, column: 10, scope: !5384, inlinedAt: !5429)
!5442 = !DILocation(line: 63, column: 5, scope: !5384, inlinedAt: !5429)
!5443 = !DILocation(line: 211, column: 3, scope: !961)
!5444 = distinct !DISubprogram(name: "xcharalloc", scope: !174, file: !174, line: 220, type: !4347, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !957, variables: !5445)
!5445 = !{!5446}
!5446 = !DILocalVariable(name: "n", arg: 1, scope: !5444, file: !174, line: 220, type: !18)
!5447 = !DILocation(line: 220, column: 20, scope: !5444)
!5448 = !DILocation(line: 39, column: 17, scope: !5325, inlinedAt: !5449)
!5449 = distinct !DILocation(line: 222, column: 10, scope: !5444)
!5450 = !DILocation(line: 41, column: 13, scope: !5325, inlinedAt: !5449)
!5451 = !DILocation(line: 41, column: 9, scope: !5325, inlinedAt: !5449)
!5452 = !DILocation(line: 42, column: 8, scope: !5336, inlinedAt: !5449)
!5453 = !DILocation(line: 42, column: 15, scope: !5338, inlinedAt: !5449)
!5454 = !DILocation(line: 42, column: 10, scope: !5336, inlinedAt: !5449)
!5455 = !DILocation(line: 43, column: 5, scope: !5336, inlinedAt: !5449)
!5456 = !DILocation(line: 222, column: 3, scope: !5444)
!5457 = distinct !DISubprogram(name: "x2realloc", scope: !5326, file: !5326, line: 74, type: !5458, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !957, variables: !5460)
!5458 = !DISubroutineType(types: !5459)
!5459 = !{!76, !76, !178}
!5460 = !{!5461, !5462}
!5461 = !DILocalVariable(name: "p", arg: 1, scope: !5457, file: !5326, line: 74, type: !76)
!5462 = !DILocalVariable(name: "pn", arg: 2, scope: !5457, file: !5326, line: 74, type: !178)
!5463 = !DILocation(line: 74, column: 18, scope: !5457)
!5464 = !DILocation(line: 74, column: 29, scope: !5457)
!5465 = !DILocation(line: 180, column: 19, scope: !961, inlinedAt: !5466)
!5466 = distinct !DILocation(line: 76, column: 10, scope: !5457)
!5467 = !DILocation(line: 180, column: 30, scope: !961, inlinedAt: !5466)
!5468 = !DILocation(line: 180, column: 41, scope: !961, inlinedAt: !5466)
!5469 = !DILocation(line: 182, column: 14, scope: !961, inlinedAt: !5466)
!5470 = !DILocation(line: 182, column: 10, scope: !961, inlinedAt: !5466)
!5471 = !DILocation(line: 184, column: 9, scope: !5409, inlinedAt: !5466)
!5472 = !DILocation(line: 184, column: 7, scope: !961, inlinedAt: !5466)
!5473 = !DILocation(line: 186, column: 13, scope: !5412, inlinedAt: !5466)
!5474 = !DILocation(line: 186, column: 11, scope: !5413, inlinedAt: !5466)
!5475 = !DILocation(line: 210, column: 7, scope: !961, inlinedAt: !5466)
!5476 = !DILocation(line: 51, column: 17, scope: !5366, inlinedAt: !5477)
!5477 = distinct !DILocation(line: 211, column: 10, scope: !961, inlinedAt: !5466)
!5478 = !DILocation(line: 51, column: 27, scope: !5366, inlinedAt: !5477)
!5479 = !DILocation(line: 53, column: 10, scope: !5375, inlinedAt: !5477)
!5480 = !DILocation(line: 205, column: 11, scope: !5421, inlinedAt: !5466)
!5481 = !DILocation(line: 204, column: 11, scope: !5422, inlinedAt: !5466)
!5482 = !DILocation(line: 206, column: 9, scope: !5421, inlinedAt: !5466)
!5483 = !DILocation(line: 207, column: 14, scope: !5422, inlinedAt: !5466)
!5484 = !DILocation(line: 207, column: 18, scope: !5422, inlinedAt: !5466)
!5485 = !DILocation(line: 207, column: 9, scope: !5422, inlinedAt: !5466)
!5486 = !DILocation(line: 53, column: 8, scope: !5375, inlinedAt: !5477)
!5487 = !DILocation(line: 57, column: 7, scope: !5380, inlinedAt: !5477)
!5488 = !DILocation(line: 58, column: 7, scope: !5380, inlinedAt: !5477)
!5489 = !DILocation(line: 61, column: 7, scope: !5366, inlinedAt: !5477)
!5490 = !DILocation(line: 62, column: 8, scope: !5384, inlinedAt: !5477)
!5491 = !DILocation(line: 62, column: 13, scope: !5386, inlinedAt: !5477)
!5492 = !DILocation(line: 62, column: 10, scope: !5384, inlinedAt: !5477)
!5493 = !DILocation(line: 63, column: 5, scope: !5384, inlinedAt: !5477)
!5494 = !DILocation(line: 76, column: 3, scope: !5457)
!5495 = distinct !DISubprogram(name: "xzalloc", scope: !5326, file: !5326, line: 84, type: !5327, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !957, variables: !5496)
!5496 = !{!5497}
!5497 = !DILocalVariable(name: "s", arg: 1, scope: !5495, file: !5326, line: 84, type: !18)
!5498 = !DILocation(line: 84, column: 17, scope: !5495)
!5499 = !DILocation(line: 39, column: 17, scope: !5325, inlinedAt: !5500)
!5500 = distinct !DILocation(line: 86, column: 18, scope: !5495)
!5501 = !DILocation(line: 41, column: 13, scope: !5325, inlinedAt: !5500)
!5502 = !DILocation(line: 41, column: 9, scope: !5325, inlinedAt: !5500)
!5503 = !DILocation(line: 42, column: 8, scope: !5336, inlinedAt: !5500)
!5504 = !DILocation(line: 42, column: 15, scope: !5338, inlinedAt: !5500)
!5505 = !DILocation(line: 42, column: 10, scope: !5336, inlinedAt: !5500)
!5506 = !DILocation(line: 43, column: 5, scope: !5336, inlinedAt: !5500)
!5507 = !DILocation(line: 86, column: 10, scope: !5495)
!5508 = !DILocation(line: 86, column: 3, scope: !5495)
!5509 = distinct !DISubprogram(name: "xcalloc", scope: !5326, file: !5326, line: 93, type: !5312, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !957, variables: !5510)
!5510 = !{!5511, !5512, !5513}
!5511 = !DILocalVariable(name: "n", arg: 1, scope: !5509, file: !5326, line: 93, type: !18)
!5512 = !DILocalVariable(name: "s", arg: 2, scope: !5509, file: !5326, line: 93, type: !18)
!5513 = !DILocalVariable(name: "p", scope: !5509, file: !5326, line: 95, type: !76)
!5514 = !DILocation(line: 93, column: 17, scope: !5509)
!5515 = !DILocation(line: 93, column: 27, scope: !5509)
!5516 = !DILocation(line: 100, column: 7, scope: !5517)
!5517 = distinct !DILexicalBlock(scope: !5509, file: !5326, line: 100, column: 7)
!5518 = !DILocation(line: 101, column: 7, scope: !5517)
!5519 = !DILocation(line: 101, column: 18, scope: !5520)
!5520 = !DILexicalBlockFile(scope: !5517, file: !5326, discriminator: 1)
!5521 = !DILocation(line: 95, column: 9, scope: !5509)
!5522 = !DILocation(line: 101, column: 16, scope: !5520)
!5523 = !DILocation(line: 100, column: 7, scope: !5524)
!5524 = !DILexicalBlockFile(scope: !5509, file: !5326, discriminator: 1)
!5525 = !DILocation(line: 102, column: 5, scope: !5517)
!5526 = !DILocation(line: 103, column: 3, scope: !5509)
!5527 = distinct !DISubprogram(name: "xmemdup", scope: !5326, file: !5326, line: 111, type: !5528, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !957, variables: !5530)
!5528 = !DISubroutineType(types: !5529)
!5529 = !{!76, !188, !18}
!5530 = !{!5531, !5532}
!5531 = !DILocalVariable(name: "p", arg: 1, scope: !5527, file: !5326, line: 111, type: !188)
!5532 = !DILocalVariable(name: "s", arg: 2, scope: !5527, file: !5326, line: 111, type: !18)
!5533 = !DILocation(line: 111, column: 22, scope: !5527)
!5534 = !DILocation(line: 111, column: 32, scope: !5527)
!5535 = !DILocation(line: 39, column: 17, scope: !5325, inlinedAt: !5536)
!5536 = distinct !DILocation(line: 113, column: 18, scope: !5527)
!5537 = !DILocation(line: 41, column: 13, scope: !5325, inlinedAt: !5536)
!5538 = !DILocation(line: 41, column: 9, scope: !5325, inlinedAt: !5536)
!5539 = !DILocation(line: 42, column: 8, scope: !5336, inlinedAt: !5536)
!5540 = !DILocation(line: 42, column: 15, scope: !5338, inlinedAt: !5536)
!5541 = !DILocation(line: 42, column: 10, scope: !5336, inlinedAt: !5536)
!5542 = !DILocation(line: 43, column: 5, scope: !5336, inlinedAt: !5536)
!5543 = !DILocation(line: 113, column: 10, scope: !5527)
!5544 = !DILocation(line: 113, column: 3, scope: !5527)
!5545 = distinct !DISubprogram(name: "xstrdup", scope: !5326, file: !5326, line: 119, type: !4552, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !957, variables: !5546)
!5546 = !{!5547}
!5547 = !DILocalVariable(name: "string", arg: 1, scope: !5545, file: !5326, line: 119, type: !193)
!5548 = !DILocation(line: 119, column: 22, scope: !5545)
!5549 = !DILocation(line: 121, column: 27, scope: !5545)
!5550 = !DILocation(line: 121, column: 43, scope: !5545)
!5551 = !DILocation(line: 111, column: 22, scope: !5527, inlinedAt: !5552)
!5552 = distinct !DILocation(line: 121, column: 10, scope: !5553)
!5553 = !DILexicalBlockFile(scope: !5545, file: !5326, discriminator: 1)
!5554 = !DILocation(line: 111, column: 32, scope: !5527, inlinedAt: !5552)
!5555 = !DILocation(line: 39, column: 17, scope: !5325, inlinedAt: !5556)
!5556 = distinct !DILocation(line: 113, column: 18, scope: !5527, inlinedAt: !5552)
!5557 = !DILocation(line: 41, column: 13, scope: !5325, inlinedAt: !5556)
!5558 = !DILocation(line: 41, column: 9, scope: !5325, inlinedAt: !5556)
!5559 = !DILocation(line: 42, column: 8, scope: !5336, inlinedAt: !5556)
!5560 = !DILocation(line: 42, column: 15, scope: !5338, inlinedAt: !5556)
!5561 = !DILocation(line: 42, column: 10, scope: !5336, inlinedAt: !5556)
!5562 = !DILocation(line: 43, column: 5, scope: !5336, inlinedAt: !5556)
!5563 = !DILocation(line: 113, column: 10, scope: !5527, inlinedAt: !5552)
!5564 = !DILocation(line: 121, column: 3, scope: !5545)
!5565 = distinct !DISubprogram(name: "xnumtoimax", scope: !5566, file: !5566, line: 36, type: !5567, isDefinition: true, scopeLine: 38, flags: DIFlagPrototyped, isOptimized: true, unit: !968, variables: !5569)
!5566 = !DIFile(filename: "./lib/xdectoint.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5567 = !DISubroutineType(types: !5568)
!5568 = !{!220, !193, !9, !220, !220, !193, !193, !9}
!5569 = !{!5570, !5571, !5572, !5573, !5574, !5575, !5576, !5577, !5579}
!5570 = !DILocalVariable(name: "n_str", arg: 1, scope: !5565, file: !5566, line: 36, type: !193)
!5571 = !DILocalVariable(name: "base", arg: 2, scope: !5565, file: !5566, line: 36, type: !9)
!5572 = !DILocalVariable(name: "min", arg: 3, scope: !5565, file: !5566, line: 36, type: !220)
!5573 = !DILocalVariable(name: "max", arg: 4, scope: !5565, file: !5566, line: 36, type: !220)
!5574 = !DILocalVariable(name: "suffixes", arg: 5, scope: !5565, file: !5566, line: 37, type: !193)
!5575 = !DILocalVariable(name: "err", arg: 6, scope: !5565, file: !5566, line: 37, type: !193)
!5576 = !DILocalVariable(name: "err_exit", arg: 7, scope: !5565, file: !5566, line: 37, type: !9)
!5577 = !DILocalVariable(name: "s_err", scope: !5565, file: !5566, line: 39, type: !5578)
!5578 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !166, line: 39, baseType: !165)
!5579 = !DILocalVariable(name: "tnum", scope: !5565, file: !5566, line: 41, type: !220)
!5580 = !DILocation(line: 36, column: 26, scope: !5565)
!5581 = !DILocation(line: 36, column: 37, scope: !5565)
!5582 = !DILocation(line: 36, column: 57, scope: !5565)
!5583 = !DILocation(line: 36, column: 76, scope: !5565)
!5584 = !DILocation(line: 37, column: 26, scope: !5565)
!5585 = !DILocation(line: 37, column: 48, scope: !5565)
!5586 = !DILocation(line: 37, column: 57, scope: !5565)
!5587 = !DILocation(line: 41, column: 3, scope: !5565)
!5588 = !DILocation(line: 41, column: 17, scope: !5565)
!5589 = !DILocation(line: 42, column: 11, scope: !5565)
!5590 = !DILocation(line: 39, column: 16, scope: !5565)
!5591 = !DILocation(line: 44, column: 7, scope: !5565)
!5592 = !DILocation(line: 69, column: 50, scope: !5593)
!5593 = !DILexicalBlockFile(scope: !5594, file: !5566, discriminator: 3)
!5594 = distinct !DILexicalBlock(scope: !5595, file: !5566, line: 67, column: 5)
!5595 = distinct !DILexicalBlock(scope: !5565, file: !5566, line: 66, column: 7)
!5596 = !DILocation(line: 46, column: 11, scope: !5597)
!5597 = distinct !DILexicalBlock(scope: !5598, file: !5566, line: 46, column: 11)
!5598 = distinct !DILexicalBlock(scope: !5599, file: !5566, line: 45, column: 5)
!5599 = distinct !DILexicalBlock(scope: !5565, file: !5566, line: 44, column: 7)
!5600 = !DILocation(line: 46, column: 16, scope: !5597)
!5601 = !DILocation(line: 46, column: 29, scope: !5602)
!5602 = !DILexicalBlockFile(scope: !5597, file: !5566, discriminator: 1)
!5603 = !DILocation(line: 46, column: 22, scope: !5597)
!5604 = !DILocation(line: 51, column: 20, scope: !5605)
!5605 = distinct !DILexicalBlock(scope: !5606, file: !5566, line: 51, column: 15)
!5606 = distinct !DILexicalBlock(scope: !5597, file: !5566, line: 47, column: 9)
!5607 = !DILocation(line: 51, column: 15, scope: !5606)
!5608 = !DILocation(line: 52, column: 13, scope: !5605)
!5609 = !DILocation(line: 52, column: 19, scope: !5605)
!5610 = !DILocation(line: 54, column: 25, scope: !5611)
!5611 = distinct !DILexicalBlock(scope: !5605, file: !5566, line: 54, column: 20)
!5612 = !DILocation(line: 55, column: 13, scope: !5611)
!5613 = !DILocation(line: 54, column: 20, scope: !5605)
!5614 = !DILocation(line: 62, column: 5, scope: !5615)
!5615 = distinct !DILexicalBlock(scope: !5599, file: !5566, line: 61, column: 12)
!5616 = !DILocation(line: 62, column: 11, scope: !5615)
!5617 = !DILocation(line: 64, column: 5, scope: !5618)
!5618 = distinct !DILexicalBlock(scope: !5615, file: !5566, line: 63, column: 12)
!5619 = !DILocation(line: 64, column: 11, scope: !5618)
!5620 = !DILocation(line: 69, column: 14, scope: !5594)
!5621 = !DILocation(line: 69, column: 56, scope: !5593)
!5622 = !DILocation(line: 70, column: 29, scope: !5594)
!5623 = !DILocation(line: 69, column: 7, scope: !5624)
!5624 = !DILexicalBlockFile(scope: !5594, file: !5566, discriminator: 6)
!5625 = !DILocation(line: 71, column: 5, scope: !5594)
!5626 = !DILocation(line: 73, column: 10, scope: !5565)
!5627 = !DILocation(line: 74, column: 1, scope: !5565)
!5628 = !DILocation(line: 73, column: 3, scope: !5565)
!5629 = distinct !DISubprogram(name: "xdectoimax", scope: !5566, file: !5566, line: 82, type: !5630, isDefinition: true, scopeLine: 84, flags: DIFlagPrototyped, isOptimized: true, unit: !968, variables: !5632)
!5630 = !DISubroutineType(types: !5631)
!5631 = !{!220, !193, !220, !220, !193, !193, !9}
!5632 = !{!5633, !5634, !5635, !5636, !5637, !5638}
!5633 = !DILocalVariable(name: "n_str", arg: 1, scope: !5629, file: !5566, line: 82, type: !193)
!5634 = !DILocalVariable(name: "min", arg: 2, scope: !5629, file: !5566, line: 82, type: !220)
!5635 = !DILocalVariable(name: "max", arg: 3, scope: !5629, file: !5566, line: 82, type: !220)
!5636 = !DILocalVariable(name: "suffixes", arg: 4, scope: !5629, file: !5566, line: 83, type: !193)
!5637 = !DILocalVariable(name: "err", arg: 5, scope: !5629, file: !5566, line: 83, type: !193)
!5638 = !DILocalVariable(name: "err_exit", arg: 6, scope: !5629, file: !5566, line: 83, type: !9)
!5639 = !DILocation(line: 82, column: 26, scope: !5629)
!5640 = !DILocation(line: 82, column: 47, scope: !5629)
!5641 = !DILocation(line: 82, column: 66, scope: !5629)
!5642 = !DILocation(line: 83, column: 26, scope: !5629)
!5643 = !DILocation(line: 83, column: 48, scope: !5629)
!5644 = !DILocation(line: 83, column: 57, scope: !5629)
!5645 = !DILocation(line: 85, column: 10, scope: !5629)
!5646 = !DILocation(line: 85, column: 3, scope: !5629)
!5647 = distinct !DISubprogram(name: "xstrtoimax", scope: !5648, file: !5648, line: 88, type: !5649, isDefinition: true, scopeLine: 90, flags: DIFlagPrototyped, isOptimized: true, unit: !971, variables: !5652)
!5648 = !DIFile(filename: "./lib/xstrtol.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5649 = !DISubroutineType(types: !5650)
!5650 = !{!5578, !193, !10, !9, !5651, !193}
!5651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!5652 = !{!5653, !5654, !5655, !5656, !5657, !5658, !5659, !5660, !5661, !5662, !5665, !5666}
!5653 = !DILocalVariable(name: "s", arg: 1, scope: !5647, file: !5648, line: 88, type: !193)
!5654 = !DILocalVariable(name: "ptr", arg: 2, scope: !5647, file: !5648, line: 88, type: !10)
!5655 = !DILocalVariable(name: "strtol_base", arg: 3, scope: !5647, file: !5648, line: 88, type: !9)
!5656 = !DILocalVariable(name: "val", arg: 4, scope: !5647, file: !5648, line: 89, type: !5651)
!5657 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !5647, file: !5648, line: 89, type: !193)
!5658 = !DILocalVariable(name: "t_ptr", scope: !5647, file: !5648, line: 91, type: !11)
!5659 = !DILocalVariable(name: "p", scope: !5647, file: !5648, line: 92, type: !10)
!5660 = !DILocalVariable(name: "tmp", scope: !5647, file: !5648, line: 93, type: !220)
!5661 = !DILocalVariable(name: "err", scope: !5647, file: !5648, line: 94, type: !5578)
!5662 = !DILocalVariable(name: "base", scope: !5663, file: !5648, line: 141, type: !9)
!5663 = distinct !DILexicalBlock(scope: !5664, file: !5648, line: 140, column: 5)
!5664 = distinct !DILexicalBlock(scope: !5647, file: !5648, line: 139, column: 7)
!5665 = !DILocalVariable(name: "suffixes", scope: !5663, file: !5648, line: 142, type: !9)
!5666 = !DILocalVariable(name: "overflow", scope: !5663, file: !5648, line: 143, type: !5578)
!5667 = !DILocation(line: 88, column: 24, scope: !5647)
!5668 = !DILocation(line: 88, column: 34, scope: !5647)
!5669 = !DILocation(line: 88, column: 43, scope: !5647)
!5670 = !DILocation(line: 89, column: 24, scope: !5647)
!5671 = !DILocation(line: 89, column: 41, scope: !5647)
!5672 = !DILocation(line: 91, column: 3, scope: !5647)
!5673 = !DILocation(line: 94, column: 16, scope: !5647)
!5674 = !DILocation(line: 96, column: 3, scope: !5675)
!5675 = distinct !DILexicalBlock(scope: !5676, file: !5648, line: 96, column: 3)
!5676 = distinct !DILexicalBlock(scope: !5647, file: !5648, line: 96, column: 3)
!5677 = !DILocation(line: 96, column: 3, scope: !5678)
!5678 = !DILexicalBlockFile(scope: !5675, file: !5648, discriminator: 3)
!5679 = !DILocation(line: 98, column: 8, scope: !5647)
!5680 = !DILocation(line: 92, column: 10, scope: !5647)
!5681 = !DILocation(line: 100, column: 3, scope: !5647)
!5682 = !DILocation(line: 100, column: 9, scope: !5647)
!5683 = !DILocalVariable(name: "nptr", arg: 1, scope: !5684, file: !5685, line: 324, type: !1173)
!5684 = distinct !DISubprogram(name: "strtoimax", scope: !5685, file: !5685, line: 324, type: !5686, isDefinition: true, scopeLine: 326, flags: DIFlagPrototyped, isOptimized: true, unit: !971, variables: !5689)
!5685 = !DIFile(filename: "/usr/include/inttypes.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5686 = !DISubroutineType(types: !5687)
!5687 = !{!220, !1173, !5688, !9}
!5688 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !10)
!5689 = !{!5683, !5690, !5691}
!5690 = !DILocalVariable(name: "endptr", arg: 2, scope: !5684, file: !5685, line: 324, type: !5688)
!5691 = !DILocalVariable(name: "base", arg: 3, scope: !5684, file: !5685, line: 324, type: !9)
!5692 = !DILocation(line: 324, column: 1, scope: !5684, inlinedAt: !5693)
!5693 = distinct !DILocation(line: 112, column: 9, scope: !5647)
!5694 = !DILocation(line: 327, column: 10, scope: !5684, inlinedAt: !5693)
!5695 = !DILocation(line: 93, column: 14, scope: !5647)
!5696 = !DILocation(line: 114, column: 7, scope: !5697)
!5697 = distinct !DILexicalBlock(scope: !5647, file: !5648, line: 114, column: 7)
!5698 = !DILocation(line: 114, column: 10, scope: !5697)
!5699 = !DILocation(line: 114, column: 7, scope: !5647)
!5700 = !DILocation(line: 118, column: 11, scope: !5701)
!5701 = distinct !DILexicalBlock(scope: !5702, file: !5648, line: 118, column: 11)
!5702 = distinct !DILexicalBlock(scope: !5697, file: !5648, line: 115, column: 5)
!5703 = !DILocation(line: 118, column: 26, scope: !5701)
!5704 = !DILocation(line: 118, column: 29, scope: !5705)
!5705 = !DILexicalBlockFile(scope: !5701, file: !5648, discriminator: 1)
!5706 = !DILocation(line: 118, column: 33, scope: !5705)
!5707 = !DILocation(line: 118, column: 36, scope: !5708)
!5708 = !DILexicalBlockFile(scope: !5701, file: !5648, discriminator: 5)
!5709 = !DILocation(line: 118, column: 11, scope: !5710)
!5710 = !DILexicalBlockFile(scope: !5702, file: !5648, discriminator: 5)
!5711 = !DILocation(line: 123, column: 12, scope: !5712)
!5712 = distinct !DILexicalBlock(scope: !5697, file: !5648, line: 123, column: 12)
!5713 = !DILocation(line: 123, column: 12, scope: !5697)
!5714 = !DILocation(line: 128, column: 5, scope: !5715)
!5715 = distinct !DILexicalBlock(scope: !5712, file: !5648, line: 124, column: 5)
!5716 = !DILocation(line: 133, column: 8, scope: !5717)
!5717 = distinct !DILexicalBlock(scope: !5647, file: !5648, line: 133, column: 7)
!5718 = !DILocation(line: 133, column: 7, scope: !5647)
!5719 = !DILocation(line: 135, column: 12, scope: !5720)
!5720 = distinct !DILexicalBlock(scope: !5717, file: !5648, line: 134, column: 5)
!5721 = !DILocation(line: 136, column: 7, scope: !5720)
!5722 = !DILocation(line: 139, column: 7, scope: !5664)
!5723 = !DILocation(line: 139, column: 11, scope: !5664)
!5724 = !DILocation(line: 139, column: 7, scope: !5647)
!5725 = !DILocation(line: 141, column: 11, scope: !5663)
!5726 = !DILocation(line: 142, column: 11, scope: !5663)
!5727 = !DILocation(line: 145, column: 12, scope: !5728)
!5728 = !DILexicalBlockFile(scope: !5729, file: !5648, discriminator: 3)
!5729 = distinct !DILexicalBlock(scope: !5663, file: !5648, line: 145, column: 11)
!5730 = !DILocation(line: 145, column: 11, scope: !5731)
!5731 = !DILexicalBlockFile(scope: !5663, file: !5648, discriminator: 3)
!5732 = !DILocation(line: 147, column: 16, scope: !5733)
!5733 = distinct !DILexicalBlock(scope: !5729, file: !5648, line: 146, column: 9)
!5734 = !DILocation(line: 148, column: 22, scope: !5733)
!5735 = !DILocation(line: 148, column: 11, scope: !5733)
!5736 = !DILocation(line: 151, column: 7, scope: !5663)
!5737 = !DILocation(line: 163, column: 15, scope: !5738)
!5738 = !DILexicalBlockFile(scope: !5739, file: !5648, discriminator: 2)
!5739 = distinct !DILexicalBlock(scope: !5740, file: !5648, line: 163, column: 15)
!5740 = distinct !DILexicalBlock(scope: !5663, file: !5648, line: 152, column: 9)
!5741 = !DILocation(line: 163, column: 15, scope: !5742)
!5742 = !DILexicalBlockFile(scope: !5740, file: !5648, discriminator: 2)
!5743 = !DILocation(line: 164, column: 21, scope: !5739)
!5744 = !DILocation(line: 164, column: 13, scope: !5739)
!5745 = !DILocation(line: 167, column: 21, scope: !5746)
!5746 = distinct !DILexicalBlock(scope: !5747, file: !5648, line: 167, column: 21)
!5747 = distinct !DILexicalBlock(scope: !5739, file: !5648, line: 165, column: 15)
!5748 = !DILocation(line: 167, column: 29, scope: !5746)
!5749 = !DILocation(line: 167, column: 21, scope: !5747)
!5750 = !DILocation(line: 175, column: 17, scope: !5747)
!5751 = !DILocation(line: 179, column: 7, scope: !5663)
!5752 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !5753, file: !5648, line: 60, type: !9)
!5753 = distinct !DISubprogram(name: "bkm_scale", scope: !5648, file: !5648, line: 60, type: !5754, isLocal: true, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, unit: !971, variables: !5756)
!5754 = !DISubroutineType(types: !5755)
!5755 = !{!5578, !5651, !9}
!5756 = !{!5757, !5752}
!5757 = !DILocalVariable(name: "x", arg: 1, scope: !5753, file: !5648, line: 60, type: !5651)
!5758 = !DILocation(line: 60, column: 31, scope: !5753, inlinedAt: !5759)
!5759 = distinct !DILocation(line: 182, column: 22, scope: !5760)
!5760 = distinct !DILexicalBlock(scope: !5663, file: !5648, line: 180, column: 9)
!5761 = !DILocation(line: 62, column: 38, scope: !5762, inlinedAt: !5759)
!5762 = distinct !DILexicalBlock(scope: !5753, file: !5648, line: 62, column: 7)
!5763 = !DILocation(line: 62, column: 7, scope: !5753, inlinedAt: !5759)
!5764 = !DILocation(line: 67, column: 39, scope: !5765, inlinedAt: !5759)
!5765 = distinct !DILexicalBlock(scope: !5753, file: !5648, line: 67, column: 7)
!5766 = !DILocation(line: 72, column: 6, scope: !5753, inlinedAt: !5759)
!5767 = !DILocation(line: 67, column: 7, scope: !5753, inlinedAt: !5759)
!5768 = !DILocation(line: 60, column: 31, scope: !5753, inlinedAt: !5769)
!5769 = distinct !DILocation(line: 189, column: 22, scope: !5760)
!5770 = !DILocation(line: 62, column: 38, scope: !5762, inlinedAt: !5769)
!5771 = !DILocation(line: 62, column: 7, scope: !5753, inlinedAt: !5769)
!5772 = !DILocation(line: 67, column: 39, scope: !5765, inlinedAt: !5769)
!5773 = !DILocation(line: 72, column: 6, scope: !5753, inlinedAt: !5769)
!5774 = !DILocation(line: 67, column: 7, scope: !5753, inlinedAt: !5769)
!5775 = !DILocalVariable(name: "power", arg: 3, scope: !5776, file: !5648, line: 77, type: !9)
!5776 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !5648, file: !5648, line: 77, type: !5777, isLocal: true, isDefinition: true, scopeLine: 78, flags: DIFlagPrototyped, isOptimized: true, unit: !971, variables: !5779)
!5777 = !DISubroutineType(types: !5778)
!5778 = !{!5578, !5651, !9, !9}
!5779 = !{!5780, !5781, !5775, !5782}
!5780 = !DILocalVariable(name: "x", arg: 1, scope: !5776, file: !5648, line: 77, type: !5651)
!5781 = !DILocalVariable(name: "base", arg: 2, scope: !5776, file: !5648, line: 77, type: !9)
!5782 = !DILocalVariable(name: "err", scope: !5776, file: !5648, line: 79, type: !5578)
!5783 = !DILocation(line: 77, column: 50, scope: !5776, inlinedAt: !5784)
!5784 = distinct !DILocation(line: 197, column: 22, scope: !5760)
!5785 = !DILocation(line: 79, column: 16, scope: !5776, inlinedAt: !5784)
!5786 = !DILocation(line: 62, column: 38, scope: !5762, inlinedAt: !5787)
!5787 = distinct !DILocation(line: 81, column: 12, scope: !5776, inlinedAt: !5784)
!5788 = !DILocation(line: 62, column: 7, scope: !5753, inlinedAt: !5787)
!5789 = !DILocation(line: 67, column: 24, scope: !5765, inlinedAt: !5787)
!5790 = !DILocation(line: 67, column: 39, scope: !5765, inlinedAt: !5787)
!5791 = !DILocation(line: 72, column: 6, scope: !5753, inlinedAt: !5787)
!5792 = !DILocation(line: 67, column: 7, scope: !5753, inlinedAt: !5787)
!5793 = !DILocation(line: 77, column: 50, scope: !5776, inlinedAt: !5794)
!5794 = distinct !DILocation(line: 202, column: 22, scope: !5760)
!5795 = !DILocation(line: 79, column: 16, scope: !5776, inlinedAt: !5794)
!5796 = !DILocation(line: 62, column: 38, scope: !5762, inlinedAt: !5797)
!5797 = distinct !DILocation(line: 81, column: 12, scope: !5776, inlinedAt: !5794)
!5798 = !DILocation(line: 62, column: 7, scope: !5753, inlinedAt: !5797)
!5799 = !DILocation(line: 67, column: 24, scope: !5765, inlinedAt: !5797)
!5800 = !DILocation(line: 67, column: 39, scope: !5765, inlinedAt: !5797)
!5801 = !DILocation(line: 72, column: 6, scope: !5753, inlinedAt: !5797)
!5802 = !DILocation(line: 67, column: 7, scope: !5753, inlinedAt: !5797)
!5803 = !DILocation(line: 77, column: 50, scope: !5776, inlinedAt: !5804)
!5804 = distinct !DILocation(line: 207, column: 22, scope: !5760)
!5805 = !DILocation(line: 79, column: 16, scope: !5776, inlinedAt: !5804)
!5806 = !DILocation(line: 62, column: 38, scope: !5762, inlinedAt: !5807)
!5807 = distinct !DILocation(line: 81, column: 12, scope: !5776, inlinedAt: !5804)
!5808 = !DILocation(line: 62, column: 7, scope: !5753, inlinedAt: !5807)
!5809 = !DILocation(line: 67, column: 24, scope: !5765, inlinedAt: !5807)
!5810 = !DILocation(line: 67, column: 39, scope: !5765, inlinedAt: !5807)
!5811 = !DILocation(line: 72, column: 6, scope: !5753, inlinedAt: !5807)
!5812 = !DILocation(line: 67, column: 7, scope: !5753, inlinedAt: !5807)
!5813 = !DILocation(line: 77, column: 50, scope: !5776, inlinedAt: !5814)
!5814 = distinct !DILocation(line: 212, column: 22, scope: !5760)
!5815 = !DILocation(line: 79, column: 16, scope: !5776, inlinedAt: !5814)
!5816 = !DILocation(line: 62, column: 38, scope: !5762, inlinedAt: !5817)
!5817 = distinct !DILocation(line: 81, column: 12, scope: !5776, inlinedAt: !5814)
!5818 = !DILocation(line: 62, column: 7, scope: !5753, inlinedAt: !5817)
!5819 = !DILocation(line: 67, column: 24, scope: !5765, inlinedAt: !5817)
!5820 = !DILocation(line: 67, column: 39, scope: !5765, inlinedAt: !5817)
!5821 = !DILocation(line: 72, column: 6, scope: !5753, inlinedAt: !5817)
!5822 = !DILocation(line: 67, column: 7, scope: !5753, inlinedAt: !5817)
!5823 = !DILocation(line: 77, column: 50, scope: !5776, inlinedAt: !5824)
!5824 = distinct !DILocation(line: 216, column: 22, scope: !5760)
!5825 = !DILocation(line: 79, column: 16, scope: !5776, inlinedAt: !5824)
!5826 = !DILocation(line: 62, column: 38, scope: !5762, inlinedAt: !5827)
!5827 = distinct !DILocation(line: 81, column: 12, scope: !5776, inlinedAt: !5824)
!5828 = !DILocation(line: 62, column: 7, scope: !5753, inlinedAt: !5827)
!5829 = !DILocation(line: 67, column: 24, scope: !5765, inlinedAt: !5827)
!5830 = !DILocation(line: 67, column: 39, scope: !5765, inlinedAt: !5827)
!5831 = !DILocation(line: 72, column: 6, scope: !5753, inlinedAt: !5827)
!5832 = !DILocation(line: 67, column: 7, scope: !5753, inlinedAt: !5827)
!5833 = !DILocation(line: 77, column: 50, scope: !5776, inlinedAt: !5834)
!5834 = distinct !DILocation(line: 221, column: 22, scope: !5760)
!5835 = !DILocation(line: 79, column: 16, scope: !5776, inlinedAt: !5834)
!5836 = !DILocation(line: 62, column: 38, scope: !5762, inlinedAt: !5837)
!5837 = distinct !DILocation(line: 81, column: 12, scope: !5776, inlinedAt: !5834)
!5838 = !DILocation(line: 62, column: 7, scope: !5753, inlinedAt: !5837)
!5839 = !DILocation(line: 67, column: 24, scope: !5765, inlinedAt: !5837)
!5840 = !DILocation(line: 67, column: 39, scope: !5765, inlinedAt: !5837)
!5841 = !DILocation(line: 72, column: 6, scope: !5753, inlinedAt: !5837)
!5842 = !DILocation(line: 67, column: 7, scope: !5753, inlinedAt: !5837)
!5843 = !DILocation(line: 60, column: 31, scope: !5753, inlinedAt: !5844)
!5844 = distinct !DILocation(line: 225, column: 22, scope: !5760)
!5845 = !DILocation(line: 62, column: 38, scope: !5762, inlinedAt: !5844)
!5846 = !DILocation(line: 62, column: 7, scope: !5753, inlinedAt: !5844)
!5847 = !DILocation(line: 67, column: 39, scope: !5765, inlinedAt: !5844)
!5848 = !DILocation(line: 72, column: 6, scope: !5753, inlinedAt: !5844)
!5849 = !DILocation(line: 67, column: 7, scope: !5753, inlinedAt: !5844)
!5850 = !DILocation(line: 77, column: 50, scope: !5776, inlinedAt: !5851)
!5851 = distinct !DILocation(line: 229, column: 22, scope: !5760)
!5852 = !DILocation(line: 79, column: 16, scope: !5776, inlinedAt: !5851)
!5853 = !DILocation(line: 62, column: 38, scope: !5762, inlinedAt: !5854)
!5854 = distinct !DILocation(line: 81, column: 12, scope: !5776, inlinedAt: !5851)
!5855 = !DILocation(line: 62, column: 7, scope: !5753, inlinedAt: !5854)
!5856 = !DILocation(line: 67, column: 24, scope: !5765, inlinedAt: !5854)
!5857 = !DILocation(line: 67, column: 39, scope: !5765, inlinedAt: !5854)
!5858 = !DILocation(line: 72, column: 6, scope: !5753, inlinedAt: !5854)
!5859 = !DILocation(line: 67, column: 7, scope: !5753, inlinedAt: !5854)
!5860 = !DILocation(line: 77, column: 50, scope: !5776, inlinedAt: !5861)
!5861 = distinct !DILocation(line: 233, column: 22, scope: !5760)
!5862 = !DILocation(line: 79, column: 16, scope: !5776, inlinedAt: !5861)
!5863 = !DILocation(line: 62, column: 38, scope: !5762, inlinedAt: !5864)
!5864 = distinct !DILocation(line: 81, column: 12, scope: !5776, inlinedAt: !5861)
!5865 = !DILocation(line: 62, column: 7, scope: !5753, inlinedAt: !5864)
!5866 = !DILocation(line: 67, column: 24, scope: !5765, inlinedAt: !5864)
!5867 = !DILocation(line: 67, column: 39, scope: !5765, inlinedAt: !5864)
!5868 = !DILocation(line: 72, column: 6, scope: !5753, inlinedAt: !5864)
!5869 = !DILocation(line: 67, column: 7, scope: !5753, inlinedAt: !5864)
!5870 = !DILocation(line: 237, column: 16, scope: !5760)
!5871 = !DILocation(line: 238, column: 22, scope: !5760)
!5872 = !DILocation(line: 238, column: 11, scope: !5760)
!5873 = !DILocation(line: 143, column: 20, scope: !5663)
!5874 = !DILocation(line: 241, column: 11, scope: !5663)
!5875 = !DILocation(line: 242, column: 10, scope: !5663)
!5876 = !DILocation(line: 243, column: 11, scope: !5877)
!5877 = distinct !DILexicalBlock(scope: !5663, file: !5648, line: 243, column: 11)
!5878 = !DILocation(line: 244, column: 13, scope: !5877)
!5879 = !DILocation(line: 243, column: 11, scope: !5663)
!5880 = !DILocation(line: 247, column: 8, scope: !5647)
!5881 = !DILocation(line: 248, column: 3, scope: !5647)
!5882 = !DILocation(line: 249, column: 1, scope: !5647)
!5883 = !DILocation(line: 81, column: 9, scope: !5776, inlinedAt: !5784)
!5884 = !DILocation(line: 81, column: 9, scope: !5776, inlinedAt: !5794)
!5885 = !DILocation(line: 81, column: 9, scope: !5776, inlinedAt: !5814)
!5886 = !DILocation(line: 81, column: 9, scope: !5776, inlinedAt: !5824)
!5887 = !DILocation(line: 81, column: 9, scope: !5776, inlinedAt: !5834)
!5888 = !DILocation(line: 81, column: 9, scope: !5776, inlinedAt: !5851)
!5889 = !DILocation(line: 81, column: 9, scope: !5776, inlinedAt: !5861)
!5890 = distinct !DISubprogram(name: "xstrtoumax", scope: !5648, file: !5648, line: 88, type: !5891, isDefinition: true, scopeLine: 90, flags: DIFlagPrototyped, isOptimized: true, unit: !974, variables: !5894)
!5891 = !DISubroutineType(types: !5892)
!5892 = !{!5578, !193, !10, !9, !5893, !193}
!5893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!5894 = !{!5895, !5896, !5897, !5898, !5899, !5900, !5901, !5902, !5903, !5904, !5907, !5908, !5911, !5912}
!5895 = !DILocalVariable(name: "s", arg: 1, scope: !5890, file: !5648, line: 88, type: !193)
!5896 = !DILocalVariable(name: "ptr", arg: 2, scope: !5890, file: !5648, line: 88, type: !10)
!5897 = !DILocalVariable(name: "strtol_base", arg: 3, scope: !5890, file: !5648, line: 88, type: !9)
!5898 = !DILocalVariable(name: "val", arg: 4, scope: !5890, file: !5648, line: 89, type: !5893)
!5899 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !5890, file: !5648, line: 89, type: !193)
!5900 = !DILocalVariable(name: "t_ptr", scope: !5890, file: !5648, line: 91, type: !11)
!5901 = !DILocalVariable(name: "p", scope: !5890, file: !5648, line: 92, type: !10)
!5902 = !DILocalVariable(name: "tmp", scope: !5890, file: !5648, line: 93, type: !224)
!5903 = !DILocalVariable(name: "err", scope: !5890, file: !5648, line: 94, type: !5578)
!5904 = !DILocalVariable(name: "q", scope: !5905, file: !5648, line: 104, type: !193)
!5905 = distinct !DILexicalBlock(scope: !5906, file: !5648, line: 103, column: 5)
!5906 = distinct !DILexicalBlock(scope: !5890, file: !5648, line: 102, column: 7)
!5907 = !DILocalVariable(name: "ch", scope: !5905, file: !5648, line: 105, type: !192)
!5908 = !DILocalVariable(name: "base", scope: !5909, file: !5648, line: 141, type: !9)
!5909 = distinct !DILexicalBlock(scope: !5910, file: !5648, line: 140, column: 5)
!5910 = distinct !DILexicalBlock(scope: !5890, file: !5648, line: 139, column: 7)
!5911 = !DILocalVariable(name: "suffixes", scope: !5909, file: !5648, line: 142, type: !9)
!5912 = !DILocalVariable(name: "overflow", scope: !5909, file: !5648, line: 143, type: !5578)
!5913 = !DILocation(line: 88, column: 24, scope: !5890)
!5914 = !DILocation(line: 88, column: 34, scope: !5890)
!5915 = !DILocation(line: 88, column: 43, scope: !5890)
!5916 = !DILocation(line: 89, column: 24, scope: !5890)
!5917 = !DILocation(line: 89, column: 41, scope: !5890)
!5918 = !DILocation(line: 91, column: 3, scope: !5890)
!5919 = !DILocation(line: 94, column: 16, scope: !5890)
!5920 = !DILocation(line: 96, column: 3, scope: !5921)
!5921 = distinct !DILexicalBlock(scope: !5922, file: !5648, line: 96, column: 3)
!5922 = distinct !DILexicalBlock(scope: !5890, file: !5648, line: 96, column: 3)
!5923 = !DILocation(line: 96, column: 3, scope: !5924)
!5924 = !DILexicalBlockFile(scope: !5921, file: !5648, discriminator: 3)
!5925 = !DILocation(line: 98, column: 8, scope: !5890)
!5926 = !DILocation(line: 92, column: 10, scope: !5890)
!5927 = !DILocation(line: 100, column: 3, scope: !5890)
!5928 = !DILocation(line: 100, column: 9, scope: !5890)
!5929 = !DILocation(line: 104, column: 19, scope: !5905)
!5930 = !DILocation(line: 106, column: 14, scope: !5931)
!5931 = !DILexicalBlockFile(scope: !5905, file: !5648, discriminator: 1)
!5932 = !DILocation(line: 106, column: 7, scope: !5905)
!5933 = !DILocation(line: 105, column: 21, scope: !5905)
!5934 = !DILocation(line: 106, column: 7, scope: !5931)
!5935 = !DILocation(line: 107, column: 15, scope: !5905)
!5936 = distinct !{!5936, !5932, !5937}
!5937 = !DILocation(line: 107, column: 17, scope: !5905)
!5938 = !DILocation(line: 109, column: 9, scope: !5939)
!5939 = distinct !DILexicalBlock(scope: !5905, file: !5648, line: 108, column: 11)
!5940 = !DILocalVariable(name: "nptr", arg: 1, scope: !5941, file: !5685, line: 336, type: !1173)
!5941 = distinct !DISubprogram(name: "strtoumax", scope: !5685, file: !5685, line: 336, type: !5942, isDefinition: true, scopeLine: 338, flags: DIFlagPrototyped, isOptimized: true, unit: !974, variables: !5944)
!5942 = !DISubroutineType(types: !5943)
!5943 = !{!224, !1173, !5688, !9}
!5944 = !{!5940, !5945, !5946}
!5945 = !DILocalVariable(name: "endptr", arg: 2, scope: !5941, file: !5685, line: 336, type: !5688)
!5946 = !DILocalVariable(name: "base", arg: 3, scope: !5941, file: !5685, line: 336, type: !9)
!5947 = !DILocation(line: 336, column: 1, scope: !5941, inlinedAt: !5948)
!5948 = distinct !DILocation(line: 112, column: 9, scope: !5890)
!5949 = !DILocation(line: 339, column: 10, scope: !5941, inlinedAt: !5948)
!5950 = !DILocation(line: 93, column: 14, scope: !5890)
!5951 = !DILocation(line: 114, column: 7, scope: !5952)
!5952 = distinct !DILexicalBlock(scope: !5890, file: !5648, line: 114, column: 7)
!5953 = !DILocation(line: 114, column: 10, scope: !5952)
!5954 = !DILocation(line: 114, column: 7, scope: !5890)
!5955 = !DILocation(line: 118, column: 11, scope: !5956)
!5956 = distinct !DILexicalBlock(scope: !5957, file: !5648, line: 118, column: 11)
!5957 = distinct !DILexicalBlock(scope: !5952, file: !5648, line: 115, column: 5)
!5958 = !DILocation(line: 118, column: 26, scope: !5956)
!5959 = !DILocation(line: 118, column: 29, scope: !5960)
!5960 = !DILexicalBlockFile(scope: !5956, file: !5648, discriminator: 1)
!5961 = !DILocation(line: 118, column: 33, scope: !5960)
!5962 = !DILocation(line: 118, column: 36, scope: !5963)
!5963 = !DILexicalBlockFile(scope: !5956, file: !5648, discriminator: 5)
!5964 = !DILocation(line: 118, column: 11, scope: !5965)
!5965 = !DILexicalBlockFile(scope: !5957, file: !5648, discriminator: 5)
!5966 = !DILocation(line: 123, column: 12, scope: !5967)
!5967 = distinct !DILexicalBlock(scope: !5952, file: !5648, line: 123, column: 12)
!5968 = !DILocation(line: 123, column: 12, scope: !5952)
!5969 = !DILocation(line: 128, column: 5, scope: !5970)
!5970 = distinct !DILexicalBlock(scope: !5967, file: !5648, line: 124, column: 5)
!5971 = !DILocation(line: 133, column: 8, scope: !5972)
!5972 = distinct !DILexicalBlock(scope: !5890, file: !5648, line: 133, column: 7)
!5973 = !DILocation(line: 133, column: 7, scope: !5890)
!5974 = !DILocation(line: 135, column: 12, scope: !5975)
!5975 = distinct !DILexicalBlock(scope: !5972, file: !5648, line: 134, column: 5)
!5976 = !DILocation(line: 136, column: 7, scope: !5975)
!5977 = !DILocation(line: 139, column: 7, scope: !5910)
!5978 = !DILocation(line: 139, column: 11, scope: !5910)
!5979 = !DILocation(line: 139, column: 7, scope: !5890)
!5980 = !DILocation(line: 141, column: 11, scope: !5909)
!5981 = !DILocation(line: 142, column: 11, scope: !5909)
!5982 = !DILocation(line: 145, column: 12, scope: !5983)
!5983 = !DILexicalBlockFile(scope: !5984, file: !5648, discriminator: 3)
!5984 = distinct !DILexicalBlock(scope: !5909, file: !5648, line: 145, column: 11)
!5985 = !DILocation(line: 145, column: 11, scope: !5986)
!5986 = !DILexicalBlockFile(scope: !5909, file: !5648, discriminator: 3)
!5987 = !DILocation(line: 147, column: 16, scope: !5988)
!5988 = distinct !DILexicalBlock(scope: !5984, file: !5648, line: 146, column: 9)
!5989 = !DILocation(line: 148, column: 22, scope: !5988)
!5990 = !DILocation(line: 148, column: 11, scope: !5988)
!5991 = !DILocation(line: 151, column: 7, scope: !5909)
!5992 = !DILocation(line: 163, column: 15, scope: !5993)
!5993 = !DILexicalBlockFile(scope: !5994, file: !5648, discriminator: 2)
!5994 = distinct !DILexicalBlock(scope: !5995, file: !5648, line: 163, column: 15)
!5995 = distinct !DILexicalBlock(scope: !5909, file: !5648, line: 152, column: 9)
!5996 = !DILocation(line: 163, column: 15, scope: !5997)
!5997 = !DILexicalBlockFile(scope: !5995, file: !5648, discriminator: 2)
!5998 = !DILocation(line: 164, column: 21, scope: !5994)
!5999 = !DILocation(line: 164, column: 13, scope: !5994)
!6000 = !DILocation(line: 167, column: 21, scope: !6001)
!6001 = distinct !DILexicalBlock(scope: !6002, file: !5648, line: 167, column: 21)
!6002 = distinct !DILexicalBlock(scope: !5994, file: !5648, line: 165, column: 15)
!6003 = !DILocation(line: 167, column: 29, scope: !6001)
!6004 = !DILocation(line: 167, column: 21, scope: !6002)
!6005 = !DILocation(line: 175, column: 17, scope: !6002)
!6006 = !DILocation(line: 179, column: 7, scope: !5909)
!6007 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !6008, file: !5648, line: 60, type: !9)
!6008 = distinct !DISubprogram(name: "bkm_scale", scope: !5648, file: !5648, line: 60, type: !6009, isLocal: true, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, unit: !974, variables: !6011)
!6009 = !DISubroutineType(types: !6010)
!6010 = !{!5578, !5893, !9}
!6011 = !{!6012, !6007}
!6012 = !DILocalVariable(name: "x", arg: 1, scope: !6008, file: !5648, line: 60, type: !5893)
!6013 = !DILocation(line: 60, column: 31, scope: !6008, inlinedAt: !6014)
!6014 = distinct !DILocation(line: 182, column: 22, scope: !6015)
!6015 = distinct !DILexicalBlock(scope: !5909, file: !5648, line: 180, column: 9)
!6016 = !DILocation(line: 67, column: 39, scope: !6017, inlinedAt: !6014)
!6017 = distinct !DILexicalBlock(scope: !6008, file: !5648, line: 67, column: 7)
!6018 = !DILocation(line: 72, column: 6, scope: !6008, inlinedAt: !6014)
!6019 = !DILocation(line: 67, column: 7, scope: !6008, inlinedAt: !6014)
!6020 = !DILocation(line: 143, column: 20, scope: !5909)
!6021 = !DILocation(line: 183, column: 11, scope: !6015)
!6022 = !DILocation(line: 60, column: 31, scope: !6008, inlinedAt: !6023)
!6023 = distinct !DILocation(line: 189, column: 22, scope: !6015)
!6024 = !DILocation(line: 67, column: 39, scope: !6017, inlinedAt: !6023)
!6025 = !DILocation(line: 72, column: 6, scope: !6008, inlinedAt: !6023)
!6026 = !DILocation(line: 67, column: 7, scope: !6008, inlinedAt: !6023)
!6027 = !DILocation(line: 190, column: 11, scope: !6015)
!6028 = !DILocalVariable(name: "power", arg: 3, scope: !6029, file: !5648, line: 77, type: !9)
!6029 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !5648, file: !5648, line: 77, type: !6030, isLocal: true, isDefinition: true, scopeLine: 78, flags: DIFlagPrototyped, isOptimized: true, unit: !974, variables: !6032)
!6030 = !DISubroutineType(types: !6031)
!6031 = !{!5578, !5893, !9, !9}
!6032 = !{!6033, !6034, !6028, !6035}
!6033 = !DILocalVariable(name: "x", arg: 1, scope: !6029, file: !5648, line: 77, type: !5893)
!6034 = !DILocalVariable(name: "base", arg: 2, scope: !6029, file: !5648, line: 77, type: !9)
!6035 = !DILocalVariable(name: "err", scope: !6029, file: !5648, line: 79, type: !5578)
!6036 = !DILocation(line: 77, column: 50, scope: !6029, inlinedAt: !6037)
!6037 = distinct !DILocation(line: 197, column: 22, scope: !6015)
!6038 = !DILocation(line: 79, column: 16, scope: !6029, inlinedAt: !6037)
!6039 = !DILocation(line: 67, column: 39, scope: !6017, inlinedAt: !6040)
!6040 = distinct !DILocation(line: 81, column: 12, scope: !6029, inlinedAt: !6037)
!6041 = !DILocation(line: 72, column: 6, scope: !6008, inlinedAt: !6040)
!6042 = !DILocation(line: 67, column: 7, scope: !6008, inlinedAt: !6040)
!6043 = !DILocation(line: 81, column: 9, scope: !6029, inlinedAt: !6037)
!6044 = !DILocation(line: 77, column: 50, scope: !6029, inlinedAt: !6045)
!6045 = distinct !DILocation(line: 202, column: 22, scope: !6015)
!6046 = !DILocation(line: 79, column: 16, scope: !6029, inlinedAt: !6045)
!6047 = !DILocation(line: 67, column: 39, scope: !6017, inlinedAt: !6048)
!6048 = distinct !DILocation(line: 81, column: 12, scope: !6029, inlinedAt: !6045)
!6049 = !DILocation(line: 72, column: 6, scope: !6008, inlinedAt: !6048)
!6050 = !DILocation(line: 67, column: 7, scope: !6008, inlinedAt: !6048)
!6051 = !DILocation(line: 81, column: 9, scope: !6029, inlinedAt: !6045)
!6052 = !DILocation(line: 77, column: 50, scope: !6029, inlinedAt: !6053)
!6053 = distinct !DILocation(line: 207, column: 22, scope: !6015)
!6054 = !DILocation(line: 79, column: 16, scope: !6029, inlinedAt: !6053)
!6055 = !DILocation(line: 67, column: 39, scope: !6017, inlinedAt: !6056)
!6056 = distinct !DILocation(line: 81, column: 12, scope: !6029, inlinedAt: !6053)
!6057 = !DILocation(line: 72, column: 6, scope: !6008, inlinedAt: !6056)
!6058 = !DILocation(line: 67, column: 7, scope: !6008, inlinedAt: !6056)
!6059 = !DILocation(line: 77, column: 50, scope: !6029, inlinedAt: !6060)
!6060 = distinct !DILocation(line: 212, column: 22, scope: !6015)
!6061 = !DILocation(line: 79, column: 16, scope: !6029, inlinedAt: !6060)
!6062 = !DILocation(line: 67, column: 39, scope: !6017, inlinedAt: !6063)
!6063 = distinct !DILocation(line: 81, column: 12, scope: !6029, inlinedAt: !6060)
!6064 = !DILocation(line: 72, column: 6, scope: !6008, inlinedAt: !6063)
!6065 = !DILocation(line: 67, column: 7, scope: !6008, inlinedAt: !6063)
!6066 = !DILocation(line: 81, column: 9, scope: !6029, inlinedAt: !6060)
!6067 = !DILocation(line: 77, column: 50, scope: !6029, inlinedAt: !6068)
!6068 = distinct !DILocation(line: 216, column: 22, scope: !6015)
!6069 = !DILocation(line: 79, column: 16, scope: !6029, inlinedAt: !6068)
!6070 = !DILocation(line: 67, column: 39, scope: !6017, inlinedAt: !6071)
!6071 = distinct !DILocation(line: 81, column: 12, scope: !6029, inlinedAt: !6068)
!6072 = !DILocation(line: 72, column: 6, scope: !6008, inlinedAt: !6071)
!6073 = !DILocation(line: 67, column: 7, scope: !6008, inlinedAt: !6071)
!6074 = !DILocation(line: 81, column: 9, scope: !6029, inlinedAt: !6068)
!6075 = !DILocation(line: 77, column: 50, scope: !6029, inlinedAt: !6076)
!6076 = distinct !DILocation(line: 221, column: 22, scope: !6015)
!6077 = !DILocation(line: 79, column: 16, scope: !6029, inlinedAt: !6076)
!6078 = !DILocation(line: 67, column: 39, scope: !6017, inlinedAt: !6079)
!6079 = distinct !DILocation(line: 81, column: 12, scope: !6029, inlinedAt: !6076)
!6080 = !DILocation(line: 72, column: 6, scope: !6008, inlinedAt: !6079)
!6081 = !DILocation(line: 67, column: 7, scope: !6008, inlinedAt: !6079)
!6082 = !DILocation(line: 81, column: 9, scope: !6029, inlinedAt: !6076)
!6083 = !DILocation(line: 60, column: 31, scope: !6008, inlinedAt: !6084)
!6084 = distinct !DILocation(line: 225, column: 22, scope: !6015)
!6085 = !DILocation(line: 67, column: 39, scope: !6017, inlinedAt: !6084)
!6086 = !DILocation(line: 72, column: 6, scope: !6008, inlinedAt: !6084)
!6087 = !DILocation(line: 67, column: 7, scope: !6008, inlinedAt: !6084)
!6088 = !DILocation(line: 226, column: 11, scope: !6015)
!6089 = !DILocation(line: 77, column: 50, scope: !6029, inlinedAt: !6090)
!6090 = distinct !DILocation(line: 229, column: 22, scope: !6015)
!6091 = !DILocation(line: 79, column: 16, scope: !6029, inlinedAt: !6090)
!6092 = !DILocation(line: 67, column: 39, scope: !6017, inlinedAt: !6093)
!6093 = distinct !DILocation(line: 81, column: 12, scope: !6029, inlinedAt: !6090)
!6094 = !DILocation(line: 72, column: 6, scope: !6008, inlinedAt: !6093)
!6095 = !DILocation(line: 67, column: 7, scope: !6008, inlinedAt: !6093)
!6096 = !DILocation(line: 81, column: 9, scope: !6029, inlinedAt: !6090)
!6097 = !DILocation(line: 77, column: 50, scope: !6029, inlinedAt: !6098)
!6098 = distinct !DILocation(line: 233, column: 22, scope: !6015)
!6099 = !DILocation(line: 79, column: 16, scope: !6029, inlinedAt: !6098)
!6100 = !DILocation(line: 67, column: 39, scope: !6017, inlinedAt: !6101)
!6101 = distinct !DILocation(line: 81, column: 12, scope: !6029, inlinedAt: !6098)
!6102 = !DILocation(line: 72, column: 6, scope: !6008, inlinedAt: !6101)
!6103 = !DILocation(line: 67, column: 7, scope: !6008, inlinedAt: !6101)
!6104 = !DILocation(line: 81, column: 9, scope: !6029, inlinedAt: !6098)
!6105 = !DILocation(line: 237, column: 16, scope: !6015)
!6106 = !DILocation(line: 238, column: 22, scope: !6015)
!6107 = !DILocation(line: 238, column: 11, scope: !6015)
!6108 = !DILocation(line: 241, column: 11, scope: !5909)
!6109 = !DILocation(line: 242, column: 10, scope: !5909)
!6110 = !DILocation(line: 243, column: 11, scope: !6111)
!6111 = distinct !DILexicalBlock(scope: !5909, file: !5648, line: 243, column: 11)
!6112 = !DILocation(line: 244, column: 13, scope: !6111)
!6113 = !DILocation(line: 243, column: 11, scope: !5909)
!6114 = !DILocation(line: 247, column: 8, scope: !5890)
!6115 = !DILocation(line: 248, column: 3, scope: !5890)
!6116 = !DILocation(line: 249, column: 1, scope: !5890)
!6117 = distinct !DISubprogram(name: "rpl_calloc", scope: !6118, file: !6118, line: 42, type: !5312, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !978, variables: !6119)
!6118 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!6119 = !{!6120, !6121, !6122, !6123}
!6120 = !DILocalVariable(name: "n", arg: 1, scope: !6117, file: !6118, line: 42, type: !18)
!6121 = !DILocalVariable(name: "s", arg: 2, scope: !6117, file: !6118, line: 42, type: !18)
!6122 = !DILocalVariable(name: "result", scope: !6117, file: !6118, line: 44, type: !76)
!6123 = !DILocalVariable(name: "bytes", scope: !6124, file: !6118, line: 56, type: !18)
!6124 = distinct !DILexicalBlock(scope: !6125, file: !6118, line: 53, column: 5)
!6125 = distinct !DILexicalBlock(scope: !6117, file: !6118, line: 47, column: 7)
!6126 = !DILocation(line: 42, column: 20, scope: !6117)
!6127 = !DILocation(line: 42, column: 30, scope: !6117)
!6128 = !DILocation(line: 47, column: 9, scope: !6125)
!6129 = !DILocation(line: 47, column: 19, scope: !6130)
!6130 = !DILexicalBlockFile(scope: !6125, file: !6118, discriminator: 1)
!6131 = !DILocation(line: 47, column: 14, scope: !6125)
!6132 = !DILocation(line: 56, column: 24, scope: !6124)
!6133 = !DILocation(line: 56, column: 14, scope: !6124)
!6134 = !DILocation(line: 57, column: 17, scope: !6135)
!6135 = distinct !DILexicalBlock(scope: !6124, file: !6118, line: 57, column: 11)
!6136 = !DILocation(line: 57, column: 21, scope: !6135)
!6137 = !DILocation(line: 57, column: 11, scope: !6124)
!6138 = !DILocation(line: 59, column: 11, scope: !6139)
!6139 = distinct !DILexicalBlock(scope: !6135, file: !6118, line: 58, column: 9)
!6140 = !DILocation(line: 59, column: 17, scope: !6139)
!6141 = !DILocation(line: 65, column: 12, scope: !6117)
!6142 = !DILocation(line: 44, column: 9, scope: !6117)
!6143 = !DILocation(line: 72, column: 3, scope: !6117)
!6144 = !DILocation(line: 73, column: 1, scope: !6117)
!6145 = distinct !DISubprogram(name: "rpl_fclose", scope: !6146, file: !6146, line: 56, type: !6147, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !980, variables: !6189)
!6146 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!6147 = !DISubroutineType(types: !6148)
!6148 = !{!9, !6149}
!6149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6150, size: 64)
!6150 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !260, line: 49, baseType: !6151)
!6151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !262, line: 241, size: 1728, elements: !6152)
!6152 = !{!6153, !6154, !6155, !6156, !6157, !6158, !6159, !6160, !6161, !6162, !6163, !6164, !6165, !6173, !6174, !6175, !6176, !6177, !6178, !6179, !6180, !6181, !6182, !6183, !6184, !6185, !6186, !6187, !6188}
!6153 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !6151, file: !262, line: 242, baseType: !9, size: 32)
!6154 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !6151, file: !262, line: 247, baseType: !11, size: 64, offset: 64)
!6155 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !6151, file: !262, line: 248, baseType: !11, size: 64, offset: 128)
!6156 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !6151, file: !262, line: 249, baseType: !11, size: 64, offset: 192)
!6157 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !6151, file: !262, line: 250, baseType: !11, size: 64, offset: 256)
!6158 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !6151, file: !262, line: 251, baseType: !11, size: 64, offset: 320)
!6159 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !6151, file: !262, line: 252, baseType: !11, size: 64, offset: 384)
!6160 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !6151, file: !262, line: 253, baseType: !11, size: 64, offset: 448)
!6161 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !6151, file: !262, line: 254, baseType: !11, size: 64, offset: 512)
!6162 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !6151, file: !262, line: 256, baseType: !11, size: 64, offset: 576)
!6163 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !6151, file: !262, line: 257, baseType: !11, size: 64, offset: 640)
!6164 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !6151, file: !262, line: 258, baseType: !11, size: 64, offset: 704)
!6165 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !6151, file: !262, line: 260, baseType: !6166, size: 64, offset: 768)
!6166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6167, size: 64)
!6167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !262, line: 156, size: 192, elements: !6168)
!6168 = !{!6169, !6170, !6172}
!6169 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !6167, file: !262, line: 157, baseType: !6166, size: 64)
!6170 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !6167, file: !262, line: 158, baseType: !6171, size: 64, offset: 64)
!6171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6151, size: 64)
!6172 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !6167, file: !262, line: 162, baseType: !9, size: 32, offset: 128)
!6173 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !6151, file: !262, line: 262, baseType: !6171, size: 64, offset: 832)
!6174 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !6151, file: !262, line: 264, baseType: !9, size: 32, offset: 896)
!6175 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !6151, file: !262, line: 268, baseType: !9, size: 32, offset: 928)
!6176 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !6151, file: !262, line: 270, baseType: !288, size: 64, offset: 960)
!6177 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !6151, file: !262, line: 274, baseType: !187, size: 16, offset: 1024)
!6178 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !6151, file: !262, line: 275, baseType: !291, size: 8, offset: 1040)
!6179 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !6151, file: !262, line: 276, baseType: !293, size: 8, offset: 1048)
!6180 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !6151, file: !262, line: 280, baseType: !297, size: 64, offset: 1088)
!6181 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !6151, file: !262, line: 289, baseType: !300, size: 64, offset: 1152)
!6182 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !6151, file: !262, line: 297, baseType: !76, size: 64, offset: 1216)
!6183 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !6151, file: !262, line: 298, baseType: !76, size: 64, offset: 1280)
!6184 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !6151, file: !262, line: 299, baseType: !76, size: 64, offset: 1344)
!6185 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !6151, file: !262, line: 300, baseType: !76, size: 64, offset: 1408)
!6186 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !6151, file: !262, line: 302, baseType: !18, size: 64, offset: 1472)
!6187 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !6151, file: !262, line: 303, baseType: !9, size: 32, offset: 1536)
!6188 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !6151, file: !262, line: 305, baseType: !308, size: 160, offset: 1568)
!6189 = !{!6190, !6191, !6192, !6193}
!6190 = !DILocalVariable(name: "fp", arg: 1, scope: !6145, file: !6146, line: 56, type: !6149)
!6191 = !DILocalVariable(name: "saved_errno", scope: !6145, file: !6146, line: 58, type: !9)
!6192 = !DILocalVariable(name: "fd", scope: !6145, file: !6146, line: 59, type: !9)
!6193 = !DILocalVariable(name: "result", scope: !6145, file: !6146, line: 60, type: !9)
!6194 = !DILocation(line: 56, column: 19, scope: !6145)
!6195 = !DILocation(line: 58, column: 7, scope: !6145)
!6196 = !DILocation(line: 60, column: 7, scope: !6145)
!6197 = !DILocation(line: 63, column: 8, scope: !6145)
!6198 = !DILocation(line: 59, column: 7, scope: !6145)
!6199 = !DILocation(line: 64, column: 10, scope: !6200)
!6200 = distinct !DILexicalBlock(scope: !6145, file: !6146, line: 64, column: 7)
!6201 = !DILocation(line: 64, column: 7, scope: !6145)
!6202 = !DILocation(line: 65, column: 12, scope: !6200)
!6203 = !DILocation(line: 65, column: 5, scope: !6200)
!6204 = !DILocation(line: 70, column: 9, scope: !6205)
!6205 = distinct !DILexicalBlock(scope: !6145, file: !6146, line: 70, column: 7)
!6206 = !DILocation(line: 70, column: 23, scope: !6205)
!6207 = !DILocation(line: 70, column: 33, scope: !6208)
!6208 = !DILexicalBlockFile(scope: !6205, file: !6146, discriminator: 1)
!6209 = !DILocation(line: 70, column: 26, scope: !6210)
!6210 = !DILexicalBlockFile(scope: !6205, file: !6146, discriminator: 3)
!6211 = !DILocation(line: 70, column: 59, scope: !6208)
!6212 = !DILocation(line: 71, column: 7, scope: !6205)
!6213 = !DILocation(line: 71, column: 10, scope: !6208)
!6214 = !DILocation(line: 70, column: 7, scope: !6215)
!6215 = !DILexicalBlockFile(scope: !6145, file: !6146, discriminator: 2)
!6216 = !DILocation(line: 98, column: 12, scope: !6145)
!6217 = !DILocation(line: 103, column: 7, scope: !6145)
!6218 = !DILocation(line: 72, column: 19, scope: !6205)
!6219 = !DILocation(line: 103, column: 19, scope: !6220)
!6220 = distinct !DILexicalBlock(scope: !6145, file: !6146, line: 103, column: 7)
!6221 = !DILocation(line: 105, column: 13, scope: !6222)
!6222 = distinct !DILexicalBlock(scope: !6220, file: !6146, line: 104, column: 5)
!6223 = !DILocation(line: 107, column: 5, scope: !6222)
!6224 = !DILocation(line: 110, column: 1, scope: !6145)
!6225 = !DILocation(line: 272, column: 16, scope: !540)
!6226 = !DILocation(line: 272, column: 24, scope: !540)
!6227 = !DILocation(line: 274, column: 3, scope: !540)
!6228 = !DILocation(line: 274, column: 11, scope: !540)
!6229 = !DILocation(line: 275, column: 7, scope: !540)
!6230 = !DILocation(line: 276, column: 3, scope: !540)
!6231 = !DILocation(line: 277, column: 3, scope: !540)
!6232 = !DILocation(line: 322, column: 22, scope: !563)
!6233 = !DILocation(line: 322, column: 22, scope: !6234)
!6234 = !DILexicalBlockFile(scope: !563, file: !541, discriminator: 1)
!6235 = !DILocation(line: 322, column: 22, scope: !6236)
!6236 = !DILexicalBlockFile(scope: !563, file: !541, discriminator: 2)
!6237 = !DILocation(line: 322, column: 22, scope: !6238)
!6238 = !DILexicalBlockFile(scope: !563, file: !541, discriminator: 3)
!6239 = !DILocation(line: 322, column: 13, scope: !563)
!6240 = !DILocation(line: 336, column: 18, scope: !6241)
!6241 = distinct !DILexicalBlock(scope: !563, file: !541, line: 336, column: 13)
!6242 = !DILocation(line: 336, column: 15, scope: !6241)
!6243 = !DILocation(line: 336, column: 13, scope: !563)
!6244 = !DILocation(line: 338, column: 22, scope: !6245)
!6245 = distinct !DILexicalBlock(scope: !6241, file: !541, line: 337, column: 11)
!6246 = !DILocation(line: 339, column: 19, scope: !6247)
!6247 = distinct !DILexicalBlock(scope: !6245, file: !541, line: 339, column: 17)
!6248 = !DILocation(line: 339, column: 29, scope: !6247)
!6249 = !DILocation(line: 339, column: 32, scope: !6250)
!6250 = !DILexicalBlockFile(scope: !6247, file: !541, discriminator: 1)
!6251 = !DILocation(line: 339, column: 38, scope: !6250)
!6252 = !DILocation(line: 339, column: 17, scope: !6253)
!6253 = !DILexicalBlockFile(scope: !6245, file: !541, discriminator: 1)
!6254 = !DILocation(line: 349, column: 26, scope: !6255)
!6255 = distinct !DILexicalBlock(scope: !6247, file: !541, line: 348, column: 15)
!6256 = !DILocation(line: 350, column: 28, scope: !6257)
!6257 = distinct !DILexicalBlock(scope: !6255, file: !541, line: 350, column: 21)
!6258 = !DILocation(line: 350, column: 21, scope: !6255)
!6259 = !DILocation(line: 354, column: 11, scope: !6245)
!6260 = !DILocation(line: 356, column: 20, scope: !6241)
!6261 = !DILocation(line: 357, column: 28, scope: !6262)
!6262 = !DILexicalBlockFile(scope: !567, file: !541, discriminator: 1)
!6263 = !DILocation(line: 357, column: 15, scope: !567)
!6264 = !DILocation(line: 357, column: 47, scope: !6262)
!6265 = !DILocation(line: 357, column: 25, scope: !567)
!6266 = !DILocation(line: 359, column: 25, scope: !566)
!6267 = !DILocation(line: 359, column: 17, scope: !566)
!6268 = !DILocation(line: 360, column: 23, scope: !570)
!6269 = !DILocation(line: 360, column: 27, scope: !570)
!6270 = !DILocation(line: 360, column: 60, scope: !6271)
!6271 = !DILexicalBlockFile(scope: !570, file: !541, discriminator: 1)
!6272 = !DILocation(line: 360, column: 30, scope: !6271)
!6273 = !DILocation(line: 360, column: 74, scope: !6271)
!6274 = !DILocation(line: 360, column: 17, scope: !6275)
!6275 = !DILexicalBlockFile(scope: !566, file: !541, discriminator: 1)
!6276 = !DILocation(line: 362, column: 35, scope: !569)
!6277 = !DILocation(line: 362, column: 21, scope: !569)
!6278 = !DILocation(line: 363, column: 17, scope: !569)
!6279 = !DILocation(line: 364, column: 23, scope: !569)
!6280 = !DILocation(line: 366, column: 15, scope: !569)
!6281 = !DILocation(line: 404, column: 19, scope: !572)
!6282 = !DILocation(line: 404, column: 19, scope: !6283)
!6283 = !DILexicalBlockFile(scope: !572, file: !541, discriminator: 1)
!6284 = !DILocation(line: 404, column: 19, scope: !6285)
!6285 = !DILexicalBlockFile(scope: !572, file: !541, discriminator: 2)
!6286 = !DILocation(line: 404, column: 19, scope: !6287)
!6287 = !DILexicalBlockFile(scope: !572, file: !541, discriminator: 3)
!6288 = !DILocation(line: 404, column: 15, scope: !572)
!6289 = !DILocation(line: 405, column: 18, scope: !572)
!6290 = !DILocation(line: 412, column: 3, scope: !540)
!6291 = !DILocation(line: 414, column: 1, scope: !540)
!6292 = !DILocation(line: 413, column: 3, scope: !540)
!6293 = distinct !DISubprogram(name: "rpl_fflush", scope: !6294, file: !6294, line: 127, type: !6295, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !982, variables: !6337)
!6294 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!6295 = !DISubroutineType(types: !6296)
!6296 = !{!9, !6297}
!6297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6298, size: 64)
!6298 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !260, line: 49, baseType: !6299)
!6299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !262, line: 241, size: 1728, elements: !6300)
!6300 = !{!6301, !6302, !6303, !6304, !6305, !6306, !6307, !6308, !6309, !6310, !6311, !6312, !6313, !6321, !6322, !6323, !6324, !6325, !6326, !6327, !6328, !6329, !6330, !6331, !6332, !6333, !6334, !6335, !6336}
!6301 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !6299, file: !262, line: 242, baseType: !9, size: 32)
!6302 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !6299, file: !262, line: 247, baseType: !11, size: 64, offset: 64)
!6303 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !6299, file: !262, line: 248, baseType: !11, size: 64, offset: 128)
!6304 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !6299, file: !262, line: 249, baseType: !11, size: 64, offset: 192)
!6305 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !6299, file: !262, line: 250, baseType: !11, size: 64, offset: 256)
!6306 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !6299, file: !262, line: 251, baseType: !11, size: 64, offset: 320)
!6307 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !6299, file: !262, line: 252, baseType: !11, size: 64, offset: 384)
!6308 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !6299, file: !262, line: 253, baseType: !11, size: 64, offset: 448)
!6309 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !6299, file: !262, line: 254, baseType: !11, size: 64, offset: 512)
!6310 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !6299, file: !262, line: 256, baseType: !11, size: 64, offset: 576)
!6311 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !6299, file: !262, line: 257, baseType: !11, size: 64, offset: 640)
!6312 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !6299, file: !262, line: 258, baseType: !11, size: 64, offset: 704)
!6313 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !6299, file: !262, line: 260, baseType: !6314, size: 64, offset: 768)
!6314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6315, size: 64)
!6315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !262, line: 156, size: 192, elements: !6316)
!6316 = !{!6317, !6318, !6320}
!6317 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !6315, file: !262, line: 157, baseType: !6314, size: 64)
!6318 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !6315, file: !262, line: 158, baseType: !6319, size: 64, offset: 64)
!6319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6299, size: 64)
!6320 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !6315, file: !262, line: 162, baseType: !9, size: 32, offset: 128)
!6321 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !6299, file: !262, line: 262, baseType: !6319, size: 64, offset: 832)
!6322 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !6299, file: !262, line: 264, baseType: !9, size: 32, offset: 896)
!6323 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !6299, file: !262, line: 268, baseType: !9, size: 32, offset: 928)
!6324 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !6299, file: !262, line: 270, baseType: !288, size: 64, offset: 960)
!6325 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !6299, file: !262, line: 274, baseType: !187, size: 16, offset: 1024)
!6326 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !6299, file: !262, line: 275, baseType: !291, size: 8, offset: 1040)
!6327 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !6299, file: !262, line: 276, baseType: !293, size: 8, offset: 1048)
!6328 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !6299, file: !262, line: 280, baseType: !297, size: 64, offset: 1088)
!6329 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !6299, file: !262, line: 289, baseType: !300, size: 64, offset: 1152)
!6330 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !6299, file: !262, line: 297, baseType: !76, size: 64, offset: 1216)
!6331 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !6299, file: !262, line: 298, baseType: !76, size: 64, offset: 1280)
!6332 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !6299, file: !262, line: 299, baseType: !76, size: 64, offset: 1344)
!6333 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !6299, file: !262, line: 300, baseType: !76, size: 64, offset: 1408)
!6334 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !6299, file: !262, line: 302, baseType: !18, size: 64, offset: 1472)
!6335 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !6299, file: !262, line: 303, baseType: !9, size: 32, offset: 1536)
!6336 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !6299, file: !262, line: 305, baseType: !308, size: 160, offset: 1568)
!6337 = !{!6338}
!6338 = !DILocalVariable(name: "stream", arg: 1, scope: !6293, file: !6294, line: 127, type: !6297)
!6339 = !DILocation(line: 127, column: 19, scope: !6293)
!6340 = !DILocation(line: 148, column: 14, scope: !6341)
!6341 = distinct !DILexicalBlock(scope: !6293, file: !6294, line: 148, column: 7)
!6342 = !DILocation(line: 148, column: 22, scope: !6341)
!6343 = !DILocation(line: 148, column: 27, scope: !6344)
!6344 = !DILexicalBlockFile(scope: !6341, file: !6294, discriminator: 1)
!6345 = !DILocation(line: 148, column: 7, scope: !6346)
!6346 = !DILexicalBlockFile(scope: !6293, file: !6294, discriminator: 1)
!6347 = !DILocation(line: 149, column: 12, scope: !6341)
!6348 = !DILocation(line: 149, column: 5, scope: !6341)
!6349 = !DILocalVariable(name: "fp", arg: 1, scope: !6350, file: !6294, line: 40, type: !6297)
!6350 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !6294, file: !6294, line: 40, type: !6351, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !982, variables: !6353)
!6351 = !DISubroutineType(types: !6352)
!6352 = !{null, !6297}
!6353 = !{!6349}
!6354 = !DILocation(line: 40, column: 48, scope: !6350, inlinedAt: !6355)
!6355 = distinct !DILocation(line: 153, column: 3, scope: !6293)
!6356 = !DILocation(line: 42, column: 11, scope: !6357, inlinedAt: !6355)
!6357 = distinct !DILexicalBlock(scope: !6350, file: !6294, line: 42, column: 7)
!6358 = !DILocation(line: 42, column: 18, scope: !6357, inlinedAt: !6355)
!6359 = !DILocation(line: 42, column: 7, scope: !6350, inlinedAt: !6355)
!6360 = !DILocation(line: 44, column: 5, scope: !6357, inlinedAt: !6355)
!6361 = !DILocation(line: 155, column: 10, scope: !6293)
!6362 = !DILocation(line: 155, column: 3, scope: !6293)
!6363 = !DILocation(line: 229, column: 1, scope: !6293)
!6364 = distinct !DISubprogram(name: "rpl_fseeko", scope: !6365, file: !6365, line: 28, type: !6366, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !984, variables: !6409)
!6365 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!6366 = !DISubroutineType(types: !6367)
!6367 = !{!9, !6368, !6408, !9}
!6368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6369, size: 64)
!6369 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !260, line: 49, baseType: !6370)
!6370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !262, line: 241, size: 1728, elements: !6371)
!6371 = !{!6372, !6373, !6374, !6375, !6376, !6377, !6378, !6379, !6380, !6381, !6382, !6383, !6384, !6392, !6393, !6394, !6395, !6396, !6397, !6398, !6399, !6400, !6401, !6402, !6403, !6404, !6405, !6406, !6407}
!6372 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !6370, file: !262, line: 242, baseType: !9, size: 32)
!6373 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !6370, file: !262, line: 247, baseType: !11, size: 64, offset: 64)
!6374 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !6370, file: !262, line: 248, baseType: !11, size: 64, offset: 128)
!6375 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !6370, file: !262, line: 249, baseType: !11, size: 64, offset: 192)
!6376 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !6370, file: !262, line: 250, baseType: !11, size: 64, offset: 256)
!6377 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !6370, file: !262, line: 251, baseType: !11, size: 64, offset: 320)
!6378 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !6370, file: !262, line: 252, baseType: !11, size: 64, offset: 384)
!6379 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !6370, file: !262, line: 253, baseType: !11, size: 64, offset: 448)
!6380 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !6370, file: !262, line: 254, baseType: !11, size: 64, offset: 512)
!6381 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !6370, file: !262, line: 256, baseType: !11, size: 64, offset: 576)
!6382 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !6370, file: !262, line: 257, baseType: !11, size: 64, offset: 640)
!6383 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !6370, file: !262, line: 258, baseType: !11, size: 64, offset: 704)
!6384 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !6370, file: !262, line: 260, baseType: !6385, size: 64, offset: 768)
!6385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6386, size: 64)
!6386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !262, line: 156, size: 192, elements: !6387)
!6387 = !{!6388, !6389, !6391}
!6388 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !6386, file: !262, line: 157, baseType: !6385, size: 64)
!6389 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !6386, file: !262, line: 158, baseType: !6390, size: 64, offset: 64)
!6390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6370, size: 64)
!6391 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !6386, file: !262, line: 162, baseType: !9, size: 32, offset: 128)
!6392 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !6370, file: !262, line: 262, baseType: !6390, size: 64, offset: 832)
!6393 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !6370, file: !262, line: 264, baseType: !9, size: 32, offset: 896)
!6394 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !6370, file: !262, line: 268, baseType: !9, size: 32, offset: 928)
!6395 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !6370, file: !262, line: 270, baseType: !288, size: 64, offset: 960)
!6396 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !6370, file: !262, line: 274, baseType: !187, size: 16, offset: 1024)
!6397 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !6370, file: !262, line: 275, baseType: !291, size: 8, offset: 1040)
!6398 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !6370, file: !262, line: 276, baseType: !293, size: 8, offset: 1048)
!6399 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !6370, file: !262, line: 280, baseType: !297, size: 64, offset: 1088)
!6400 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !6370, file: !262, line: 289, baseType: !300, size: 64, offset: 1152)
!6401 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !6370, file: !262, line: 297, baseType: !76, size: 64, offset: 1216)
!6402 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !6370, file: !262, line: 298, baseType: !76, size: 64, offset: 1280)
!6403 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !6370, file: !262, line: 299, baseType: !76, size: 64, offset: 1344)
!6404 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !6370, file: !262, line: 300, baseType: !76, size: 64, offset: 1408)
!6405 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !6370, file: !262, line: 302, baseType: !18, size: 64, offset: 1472)
!6406 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !6370, file: !262, line: 303, baseType: !9, size: 32, offset: 1536)
!6407 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !6370, file: !262, line: 305, baseType: !308, size: 160, offset: 1568)
!6408 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !260, line: 91, baseType: !288)
!6409 = !{!6410, !6411, !6412, !6413}
!6410 = !DILocalVariable(name: "fp", arg: 1, scope: !6364, file: !6365, line: 28, type: !6368)
!6411 = !DILocalVariable(name: "offset", arg: 2, scope: !6364, file: !6365, line: 28, type: !6408)
!6412 = !DILocalVariable(name: "whence", arg: 3, scope: !6364, file: !6365, line: 28, type: !9)
!6413 = !DILocalVariable(name: "pos", scope: !6414, file: !6365, line: 116, type: !6408)
!6414 = distinct !DILexicalBlock(scope: !6415, file: !6365, line: 112, column: 5)
!6415 = distinct !DILexicalBlock(scope: !6364, file: !6365, line: 51, column: 7)
!6416 = !DILocation(line: 28, column: 15, scope: !6364)
!6417 = !DILocation(line: 28, column: 25, scope: !6364)
!6418 = !DILocation(line: 28, column: 37, scope: !6364)
!6419 = !DILocation(line: 51, column: 11, scope: !6415)
!6420 = !{!1049, !1033, i64 16}
!6421 = !DILocation(line: 51, column: 31, scope: !6415)
!6422 = !{!1049, !1033, i64 8}
!6423 = !DILocation(line: 51, column: 24, scope: !6415)
!6424 = !DILocation(line: 52, column: 7, scope: !6415)
!6425 = !DILocation(line: 52, column: 14, scope: !6426)
!6426 = !DILexicalBlockFile(scope: !6415, file: !6365, discriminator: 1)
!6427 = !{!1049, !1033, i64 40}
!6428 = !DILocation(line: 52, column: 35, scope: !6426)
!6429 = !{!1049, !1033, i64 32}
!6430 = !DILocation(line: 52, column: 28, scope: !6426)
!6431 = !DILocation(line: 53, column: 7, scope: !6415)
!6432 = !DILocation(line: 53, column: 14, scope: !6426)
!6433 = !{!1049, !1033, i64 72}
!6434 = !DILocation(line: 53, column: 28, scope: !6426)
!6435 = !DILocation(line: 51, column: 7, scope: !6436)
!6436 = !DILexicalBlockFile(scope: !6364, file: !6365, discriminator: 1)
!6437 = !DILocation(line: 116, column: 26, scope: !6414)
!6438 = !DILocation(line: 116, column: 19, scope: !6439)
!6439 = !DILexicalBlockFile(scope: !6414, file: !6365, discriminator: 1)
!6440 = !DILocation(line: 116, column: 13, scope: !6414)
!6441 = !DILocation(line: 117, column: 15, scope: !6442)
!6442 = distinct !DILexicalBlock(scope: !6414, file: !6365, line: 117, column: 11)
!6443 = !DILocation(line: 117, column: 11, scope: !6414)
!6444 = !DILocation(line: 127, column: 11, scope: !6414)
!6445 = !DILocation(line: 127, column: 18, scope: !6414)
!6446 = !DILocation(line: 128, column: 11, scope: !6414)
!6447 = !DILocation(line: 128, column: 19, scope: !6414)
!6448 = !{!1049, !1051, i64 144}
!6449 = !DILocation(line: 159, column: 7, scope: !6414)
!6450 = !DILocation(line: 161, column: 10, scope: !6364)
!6451 = !DILocation(line: 161, column: 3, scope: !6364)
!6452 = !DILocation(line: 162, column: 1, scope: !6364)
!6453 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !6454, file: !6454, line: 334, type: !6455, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !986, variables: !6469)
!6454 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!6455 = !DISubroutineType(types: !6456)
!6456 = !{!18, !6457, !193, !18, !6458}
!6457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3335, size: 64)
!6458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6459, size: 64)
!6459 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !3320, line: 107, baseType: !6460)
!6460 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !3320, line: 95, baseType: !6461)
!6461 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3320, line: 83, size: 64, elements: !6462)
!6462 = !{!6463, !6464}
!6463 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !6461, file: !3320, line: 85, baseType: !9, size: 32)
!6464 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !6461, file: !3320, line: 94, baseType: !6465, size: 32, offset: 32)
!6465 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !6461, file: !3320, line: 86, size: 32, elements: !6466)
!6466 = !{!6467, !6468}
!6467 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !6465, file: !3320, line: 89, baseType: !64, size: 32)
!6468 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !6465, file: !3320, line: 93, baseType: !3330, size: 32)
!6469 = !{!6470, !6471, !6472, !6473, !6474, !6475, !6476}
!6470 = !DILocalVariable(name: "pwc", arg: 1, scope: !6453, file: !6454, line: 334, type: !6457)
!6471 = !DILocalVariable(name: "s", arg: 2, scope: !6453, file: !6454, line: 334, type: !193)
!6472 = !DILocalVariable(name: "n", arg: 3, scope: !6453, file: !6454, line: 334, type: !18)
!6473 = !DILocalVariable(name: "ps", arg: 4, scope: !6453, file: !6454, line: 334, type: !6458)
!6474 = !DILocalVariable(name: "ret", scope: !6453, file: !6454, line: 336, type: !18)
!6475 = !DILocalVariable(name: "wc", scope: !6453, file: !6454, line: 337, type: !3335)
!6476 = !DILocalVariable(name: "uc", scope: !6477, file: !6454, line: 398, type: !192)
!6477 = distinct !DILexicalBlock(scope: !6478, file: !6454, line: 397, column: 5)
!6478 = distinct !DILexicalBlock(scope: !6453, file: !6454, line: 396, column: 7)
!6479 = !DILocation(line: 334, column: 23, scope: !6453)
!6480 = !DILocation(line: 334, column: 40, scope: !6453)
!6481 = !DILocation(line: 334, column: 50, scope: !6453)
!6482 = !DILocation(line: 334, column: 64, scope: !6453)
!6483 = !DILocation(line: 337, column: 3, scope: !6453)
!6484 = !DILocation(line: 353, column: 9, scope: !6485)
!6485 = distinct !DILexicalBlock(scope: !6453, file: !6454, line: 353, column: 7)
!6486 = !DILocation(line: 353, column: 7, scope: !6453)
!6487 = !DILocation(line: 388, column: 9, scope: !6453)
!6488 = !DILocation(line: 336, column: 10, scope: !6453)
!6489 = !DILocation(line: 396, column: 19, scope: !6478)
!6490 = !DILocation(line: 396, column: 31, scope: !6491)
!6491 = !DILexicalBlockFile(scope: !6478, file: !6454, discriminator: 1)
!6492 = !DILocation(line: 396, column: 26, scope: !6478)
!6493 = !DILocation(line: 396, column: 41, scope: !6494)
!6494 = !DILexicalBlockFile(scope: !6478, file: !6454, discriminator: 2)
!6495 = !DILocation(line: 396, column: 7, scope: !6496)
!6496 = !DILexicalBlockFile(scope: !6453, file: !6454, discriminator: 2)
!6497 = !DILocation(line: 398, column: 26, scope: !6477)
!6498 = !DILocation(line: 398, column: 21, scope: !6477)
!6499 = !DILocation(line: 399, column: 14, scope: !6477)
!6500 = !DILocation(line: 399, column: 12, scope: !6477)
!6501 = !DILocation(line: 405, column: 1, scope: !6453)
!6502 = distinct !DISubprogram(name: "close_stream", scope: !6503, file: !6503, line: 56, type: !6504, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !989, variables: !6546)
!6503 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!6504 = !DISubroutineType(types: !6505)
!6505 = !{!9, !6506}
!6506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6507, size: 64)
!6507 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !260, line: 49, baseType: !6508)
!6508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !262, line: 241, size: 1728, elements: !6509)
!6509 = !{!6510, !6511, !6512, !6513, !6514, !6515, !6516, !6517, !6518, !6519, !6520, !6521, !6522, !6530, !6531, !6532, !6533, !6534, !6535, !6536, !6537, !6538, !6539, !6540, !6541, !6542, !6543, !6544, !6545}
!6510 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !6508, file: !262, line: 242, baseType: !9, size: 32)
!6511 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !6508, file: !262, line: 247, baseType: !11, size: 64, offset: 64)
!6512 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !6508, file: !262, line: 248, baseType: !11, size: 64, offset: 128)
!6513 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !6508, file: !262, line: 249, baseType: !11, size: 64, offset: 192)
!6514 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !6508, file: !262, line: 250, baseType: !11, size: 64, offset: 256)
!6515 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !6508, file: !262, line: 251, baseType: !11, size: 64, offset: 320)
!6516 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !6508, file: !262, line: 252, baseType: !11, size: 64, offset: 384)
!6517 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !6508, file: !262, line: 253, baseType: !11, size: 64, offset: 448)
!6518 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !6508, file: !262, line: 254, baseType: !11, size: 64, offset: 512)
!6519 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !6508, file: !262, line: 256, baseType: !11, size: 64, offset: 576)
!6520 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !6508, file: !262, line: 257, baseType: !11, size: 64, offset: 640)
!6521 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !6508, file: !262, line: 258, baseType: !11, size: 64, offset: 704)
!6522 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !6508, file: !262, line: 260, baseType: !6523, size: 64, offset: 768)
!6523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6524, size: 64)
!6524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !262, line: 156, size: 192, elements: !6525)
!6525 = !{!6526, !6527, !6529}
!6526 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !6524, file: !262, line: 157, baseType: !6523, size: 64)
!6527 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !6524, file: !262, line: 158, baseType: !6528, size: 64, offset: 64)
!6528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6508, size: 64)
!6529 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !6524, file: !262, line: 162, baseType: !9, size: 32, offset: 128)
!6530 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !6508, file: !262, line: 262, baseType: !6528, size: 64, offset: 832)
!6531 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !6508, file: !262, line: 264, baseType: !9, size: 32, offset: 896)
!6532 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !6508, file: !262, line: 268, baseType: !9, size: 32, offset: 928)
!6533 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !6508, file: !262, line: 270, baseType: !288, size: 64, offset: 960)
!6534 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !6508, file: !262, line: 274, baseType: !187, size: 16, offset: 1024)
!6535 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !6508, file: !262, line: 275, baseType: !291, size: 8, offset: 1040)
!6536 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !6508, file: !262, line: 276, baseType: !293, size: 8, offset: 1048)
!6537 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !6508, file: !262, line: 280, baseType: !297, size: 64, offset: 1088)
!6538 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !6508, file: !262, line: 289, baseType: !300, size: 64, offset: 1152)
!6539 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !6508, file: !262, line: 297, baseType: !76, size: 64, offset: 1216)
!6540 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !6508, file: !262, line: 298, baseType: !76, size: 64, offset: 1280)
!6541 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !6508, file: !262, line: 299, baseType: !76, size: 64, offset: 1344)
!6542 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !6508, file: !262, line: 300, baseType: !76, size: 64, offset: 1408)
!6543 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !6508, file: !262, line: 302, baseType: !18, size: 64, offset: 1472)
!6544 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !6508, file: !262, line: 303, baseType: !9, size: 32, offset: 1536)
!6545 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !6508, file: !262, line: 305, baseType: !308, size: 160, offset: 1568)
!6546 = !{!6547, !6548, !6550, !6551}
!6547 = !DILocalVariable(name: "stream", arg: 1, scope: !6502, file: !6503, line: 56, type: !6506)
!6548 = !DILocalVariable(name: "some_pending", scope: !6502, file: !6503, line: 58, type: !6549)
!6549 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !206)
!6550 = !DILocalVariable(name: "prev_fail", scope: !6502, file: !6503, line: 59, type: !6549)
!6551 = !DILocalVariable(name: "fclose_fail", scope: !6502, file: !6503, line: 60, type: !6549)
!6552 = !DILocation(line: 56, column: 21, scope: !6502)
!6553 = !DILocation(line: 58, column: 30, scope: !6502)
!6554 = !DILocalVariable(name: "__stream", arg: 1, scope: !6555, file: !1039, line: 132, type: !6506)
!6555 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1039, file: !1039, line: 132, type: !6504, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !989, variables: !6556)
!6556 = !{!6554}
!6557 = !DILocation(line: 132, column: 1, scope: !6555, inlinedAt: !6558)
!6558 = distinct !DILocation(line: 59, column: 27, scope: !6502)
!6559 = !DILocation(line: 134, column: 10, scope: !6555, inlinedAt: !6558)
!6560 = !DILocation(line: 59, column: 43, scope: !6502)
!6561 = !DILocation(line: 60, column: 29, scope: !6502)
!6562 = !DILocation(line: 60, column: 45, scope: !6502)
!6563 = !DILocation(line: 70, column: 17, scope: !6564)
!6564 = distinct !DILexicalBlock(scope: !6502, file: !6503, line: 70, column: 7)
!6565 = !DILocation(line: 70, column: 33, scope: !6566)
!6566 = !DILexicalBlockFile(scope: !6564, file: !6503, discriminator: 1)
!6567 = !DILocation(line: 70, column: 53, scope: !6568)
!6568 = !DILexicalBlockFile(scope: !6564, file: !6503, discriminator: 3)
!6569 = !DILocation(line: 70, column: 7, scope: !6570)
!6570 = !DILexicalBlockFile(scope: !6502, file: !6503, discriminator: 3)
!6571 = !DILocation(line: 72, column: 11, scope: !6572)
!6572 = distinct !DILexicalBlock(scope: !6564, file: !6503, line: 71, column: 5)
!6573 = !DILocation(line: 73, column: 9, scope: !6574)
!6574 = distinct !DILexicalBlock(scope: !6572, file: !6503, line: 72, column: 11)
!6575 = !DILocation(line: 73, column: 15, scope: !6574)
!6576 = !DILocation(line: 78, column: 1, scope: !6502)
!6577 = distinct !DISubprogram(name: "hard_locale", scope: !6578, file: !6578, line: 38, type: !6579, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !991, variables: !6581)
!6578 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!6579 = !DISubroutineType(types: !6580)
!6580 = !{!206, !9}
!6581 = !{!6582, !6583, !6584, !6585, !6592, !6593, !6595, !6596, !6598, !6599, !6601}
!6582 = !DILocalVariable(name: "category", arg: 1, scope: !6577, file: !6578, line: 38, type: !9)
!6583 = !DILocalVariable(name: "hard", scope: !6577, file: !6578, line: 40, type: !206)
!6584 = !DILocalVariable(name: "p", scope: !6577, file: !6578, line: 41, type: !193)
!6585 = !DILocalVariable(name: "__s1_len", scope: !6586, file: !6578, line: 47, type: !18)
!6586 = distinct !DILexicalBlock(scope: !6587, file: !6578, line: 47, column: 15)
!6587 = distinct !DILexicalBlock(scope: !6588, file: !6578, line: 47, column: 15)
!6588 = distinct !DILexicalBlock(scope: !6589, file: !6578, line: 46, column: 9)
!6589 = distinct !DILexicalBlock(scope: !6590, file: !6578, line: 45, column: 11)
!6590 = distinct !DILexicalBlock(scope: !6591, file: !6578, line: 44, column: 5)
!6591 = distinct !DILexicalBlock(scope: !6577, file: !6578, line: 43, column: 7)
!6592 = !DILocalVariable(name: "__s2_len", scope: !6586, file: !6578, line: 47, type: !18)
!6593 = !DILocalVariable(name: "__s2", scope: !6594, file: !6578, line: 47, type: !190)
!6594 = distinct !DILexicalBlock(scope: !6586, file: !6578, line: 47, column: 15)
!6595 = !DILocalVariable(name: "__result", scope: !6594, file: !6578, line: 47, type: !9)
!6596 = !DILocalVariable(name: "__s1_len", scope: !6597, file: !6578, line: 47, type: !18)
!6597 = distinct !DILexicalBlock(scope: !6587, file: !6578, line: 47, column: 39)
!6598 = !DILocalVariable(name: "__s2_len", scope: !6597, file: !6578, line: 47, type: !18)
!6599 = !DILocalVariable(name: "__s2", scope: !6600, file: !6578, line: 47, type: !190)
!6600 = distinct !DILexicalBlock(scope: !6597, file: !6578, line: 47, column: 39)
!6601 = !DILocalVariable(name: "__result", scope: !6600, file: !6578, line: 47, type: !9)
!6602 = !DILocation(line: 38, column: 18, scope: !6577)
!6603 = !DILocation(line: 40, column: 8, scope: !6577)
!6604 = !DILocation(line: 41, column: 19, scope: !6577)
!6605 = !DILocation(line: 41, column: 15, scope: !6577)
!6606 = !DILocation(line: 43, column: 7, scope: !6591)
!6607 = !DILocation(line: 43, column: 7, scope: !6577)
!6608 = !DILocation(line: 47, column: 15, scope: !6586)
!6609 = !DILocation(line: 47, column: 15, scope: !6594)
!6610 = !DILocation(line: 47, column: 15, scope: !6611)
!6611 = !DILexicalBlockFile(scope: !6594, file: !6578, discriminator: 2)
!6612 = !DILocation(line: 47, column: 15, scope: !6613)
!6613 = !DILexicalBlockFile(scope: !6614, file: !6578, discriminator: 3)
!6614 = distinct !DILexicalBlock(scope: !6594, file: !6578, line: 47, column: 15)
!6615 = !DILocation(line: 47, column: 15, scope: !6616)
!6616 = !DILexicalBlockFile(scope: !6614, file: !6578, discriminator: 2)
!6617 = !DILocation(line: 47, column: 15, scope: !6618)
!6618 = !DILexicalBlockFile(scope: !6619, file: !6578, discriminator: 4)
!6619 = distinct !DILexicalBlock(scope: !6614, file: !6578, line: 47, column: 15)
!6620 = !DILocation(line: 47, column: 15, scope: !6621)
!6621 = !DILexicalBlockFile(scope: !6586, file: !6578, discriminator: 11)
!6622 = !DILocation(line: 47, column: 36, scope: !6623)
!6623 = !DILexicalBlockFile(scope: !6587, file: !6578, discriminator: 13)
!6624 = !DILocation(line: 47, column: 39, scope: !6597)
!6625 = !DILocation(line: 47, column: 39, scope: !6626)
!6626 = !DILexicalBlockFile(scope: !6597, file: !6578, discriminator: 26)
!6627 = !DILocation(line: 47, column: 59, scope: !6628)
!6628 = !DILexicalBlockFile(scope: !6587, file: !6578, discriminator: 27)
!6629 = !DILocation(line: 47, column: 15, scope: !6630)
!6630 = !DILexicalBlockFile(scope: !6588, file: !6578, discriminator: 27)
!6631 = !DILocation(line: 48, column: 13, scope: !6587)
!6632 = !DILocation(line: 71, column: 3, scope: !6577)
!6633 = distinct !DISubprogram(name: "locale_charset", scope: !918, file: !918, line: 393, type: !6634, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !575, variables: !6636)
!6634 = !DISubroutineType(types: !6635)
!6635 = !{!193}
!6636 = !{!6637, !6638, !6639, !6644}
!6637 = !DILocalVariable(name: "codeset", scope: !6633, file: !918, line: 395, type: !193)
!6638 = !DILocalVariable(name: "aliases", scope: !6633, file: !918, line: 396, type: !193)
!6639 = !DILocalVariable(name: "__s1_len", scope: !6640, file: !918, line: 592, type: !18)
!6640 = distinct !DILexicalBlock(scope: !6641, file: !918, line: 592, column: 9)
!6641 = distinct !DILexicalBlock(scope: !6642, file: !918, line: 592, column: 9)
!6642 = distinct !DILexicalBlock(scope: !6643, file: !918, line: 589, column: 3)
!6643 = distinct !DILexicalBlock(scope: !6633, file: !918, line: 589, column: 3)
!6644 = !DILocalVariable(name: "__s2_len", scope: !6640, file: !918, line: 592, type: !18)
!6645 = !DILocalVariable(name: "buf1", scope: !6646, file: !918, line: 196, type: !6713)
!6646 = distinct !DILexicalBlock(scope: !6647, file: !918, line: 194, column: 21)
!6647 = distinct !DILexicalBlock(scope: !6648, file: !918, line: 193, column: 19)
!6648 = distinct !DILexicalBlock(scope: !6649, file: !918, line: 193, column: 19)
!6649 = distinct !DILexicalBlock(scope: !6650, file: !918, line: 188, column: 17)
!6650 = distinct !DILexicalBlock(scope: !6651, file: !918, line: 181, column: 19)
!6651 = distinct !DILexicalBlock(scope: !6652, file: !918, line: 177, column: 13)
!6652 = distinct !DILexicalBlock(scope: !6653, file: !918, line: 173, column: 15)
!6653 = distinct !DILexicalBlock(scope: !6654, file: !918, line: 161, column: 9)
!6654 = distinct !DILexicalBlock(scope: !6655, file: !918, line: 157, column: 11)
!6655 = distinct !DILexicalBlock(scope: !6656, file: !918, line: 130, column: 5)
!6656 = distinct !DILexicalBlock(scope: !6657, file: !918, line: 129, column: 7)
!6657 = distinct !DISubprogram(name: "get_charset_aliases", scope: !918, file: !918, line: 124, type: !6634, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !575, variables: !6658)
!6658 = !{!6659, !6660, !6661, !6662, !6663, !6665, !6666, !6667, !6668, !6709, !6710, !6711, !6645, !6712, !6716, !6717, !6718}
!6659 = !DILocalVariable(name: "cp", scope: !6657, file: !918, line: 126, type: !193)
!6660 = !DILocalVariable(name: "dir", scope: !6655, file: !918, line: 132, type: !193)
!6661 = !DILocalVariable(name: "base", scope: !6655, file: !918, line: 133, type: !193)
!6662 = !DILocalVariable(name: "file_name", scope: !6655, file: !918, line: 134, type: !11)
!6663 = !DILocalVariable(name: "dir_len", scope: !6664, file: !918, line: 144, type: !18)
!6664 = distinct !DILexicalBlock(scope: !6655, file: !918, line: 143, column: 7)
!6665 = !DILocalVariable(name: "base_len", scope: !6664, file: !918, line: 145, type: !18)
!6666 = !DILocalVariable(name: "add_slash", scope: !6664, file: !918, line: 146, type: !9)
!6667 = !DILocalVariable(name: "fd", scope: !6653, file: !918, line: 162, type: !9)
!6668 = !DILocalVariable(name: "fp", scope: !6651, file: !918, line: 178, type: !6669)
!6669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6670, size: 64)
!6670 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !260, line: 49, baseType: !6671)
!6671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !262, line: 241, size: 1728, elements: !6672)
!6672 = !{!6673, !6674, !6675, !6676, !6677, !6678, !6679, !6680, !6681, !6682, !6683, !6684, !6685, !6693, !6694, !6695, !6696, !6697, !6698, !6699, !6700, !6701, !6702, !6703, !6704, !6705, !6706, !6707, !6708}
!6673 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !6671, file: !262, line: 242, baseType: !9, size: 32)
!6674 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !6671, file: !262, line: 247, baseType: !11, size: 64, offset: 64)
!6675 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !6671, file: !262, line: 248, baseType: !11, size: 64, offset: 128)
!6676 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !6671, file: !262, line: 249, baseType: !11, size: 64, offset: 192)
!6677 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !6671, file: !262, line: 250, baseType: !11, size: 64, offset: 256)
!6678 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !6671, file: !262, line: 251, baseType: !11, size: 64, offset: 320)
!6679 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !6671, file: !262, line: 252, baseType: !11, size: 64, offset: 384)
!6680 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !6671, file: !262, line: 253, baseType: !11, size: 64, offset: 448)
!6681 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !6671, file: !262, line: 254, baseType: !11, size: 64, offset: 512)
!6682 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !6671, file: !262, line: 256, baseType: !11, size: 64, offset: 576)
!6683 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !6671, file: !262, line: 257, baseType: !11, size: 64, offset: 640)
!6684 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !6671, file: !262, line: 258, baseType: !11, size: 64, offset: 704)
!6685 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !6671, file: !262, line: 260, baseType: !6686, size: 64, offset: 768)
!6686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6687, size: 64)
!6687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !262, line: 156, size: 192, elements: !6688)
!6688 = !{!6689, !6690, !6692}
!6689 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !6687, file: !262, line: 157, baseType: !6686, size: 64)
!6690 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !6687, file: !262, line: 158, baseType: !6691, size: 64, offset: 64)
!6691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6671, size: 64)
!6692 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !6687, file: !262, line: 162, baseType: !9, size: 32, offset: 128)
!6693 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !6671, file: !262, line: 262, baseType: !6691, size: 64, offset: 832)
!6694 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !6671, file: !262, line: 264, baseType: !9, size: 32, offset: 896)
!6695 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !6671, file: !262, line: 268, baseType: !9, size: 32, offset: 928)
!6696 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !6671, file: !262, line: 270, baseType: !288, size: 64, offset: 960)
!6697 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !6671, file: !262, line: 274, baseType: !187, size: 16, offset: 1024)
!6698 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !6671, file: !262, line: 275, baseType: !291, size: 8, offset: 1040)
!6699 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !6671, file: !262, line: 276, baseType: !293, size: 8, offset: 1048)
!6700 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !6671, file: !262, line: 280, baseType: !297, size: 64, offset: 1088)
!6701 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !6671, file: !262, line: 289, baseType: !300, size: 64, offset: 1152)
!6702 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !6671, file: !262, line: 297, baseType: !76, size: 64, offset: 1216)
!6703 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !6671, file: !262, line: 298, baseType: !76, size: 64, offset: 1280)
!6704 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !6671, file: !262, line: 299, baseType: !76, size: 64, offset: 1344)
!6705 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !6671, file: !262, line: 300, baseType: !76, size: 64, offset: 1408)
!6706 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !6671, file: !262, line: 302, baseType: !18, size: 64, offset: 1472)
!6707 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !6671, file: !262, line: 303, baseType: !9, size: 32, offset: 1536)
!6708 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !6671, file: !262, line: 305, baseType: !308, size: 160, offset: 1568)
!6709 = !DILocalVariable(name: "res_ptr", scope: !6649, file: !918, line: 190, type: !11)
!6710 = !DILocalVariable(name: "res_size", scope: !6649, file: !918, line: 191, type: !18)
!6711 = !DILocalVariable(name: "c", scope: !6646, file: !918, line: 195, type: !9)
!6712 = !DILocalVariable(name: "buf2", scope: !6646, file: !918, line: 197, type: !6713)
!6713 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 408, elements: !6714)
!6714 = !{!6715}
!6715 = !DISubrange(count: 51)
!6716 = !DILocalVariable(name: "l1", scope: !6646, file: !918, line: 198, type: !18)
!6717 = !DILocalVariable(name: "l2", scope: !6646, file: !918, line: 198, type: !18)
!6718 = !DILocalVariable(name: "old_res_ptr", scope: !6646, file: !918, line: 199, type: !11)
!6719 = !DILocation(line: 196, column: 28, scope: !6646, inlinedAt: !6720)
!6720 = distinct !DILocation(line: 589, column: 18, scope: !6643)
!6721 = !DILocation(line: 197, column: 28, scope: !6646, inlinedAt: !6720)
!6722 = !DILocation(line: 403, column: 13, scope: !6633)
!6723 = !DILocation(line: 395, column: 15, scope: !6633)
!6724 = !DILocation(line: 584, column: 15, scope: !6725)
!6725 = distinct !DILexicalBlock(scope: !6633, file: !918, line: 584, column: 7)
!6726 = !DILocation(line: 584, column: 7, scope: !6633)
!6727 = !DILocation(line: 128, column: 8, scope: !6657, inlinedAt: !6720)
!6728 = !DILocation(line: 126, column: 15, scope: !6657, inlinedAt: !6720)
!6729 = !DILocation(line: 129, column: 10, scope: !6656, inlinedAt: !6720)
!6730 = !DILocation(line: 129, column: 7, scope: !6657, inlinedAt: !6720)
!6731 = !DILocation(line: 138, column: 13, scope: !6655, inlinedAt: !6720)
!6732 = !DILocation(line: 132, column: 19, scope: !6655, inlinedAt: !6720)
!6733 = !DILocation(line: 139, column: 15, scope: !6734, inlinedAt: !6720)
!6734 = distinct !DILexicalBlock(scope: !6655, file: !918, line: 139, column: 11)
!6735 = !DILocation(line: 139, column: 23, scope: !6734, inlinedAt: !6720)
!6736 = !DILocation(line: 139, column: 26, scope: !6737, inlinedAt: !6720)
!6737 = !DILexicalBlockFile(scope: !6734, file: !918, discriminator: 1)
!6738 = !DILocation(line: 139, column: 33, scope: !6737, inlinedAt: !6720)
!6739 = !DILocation(line: 139, column: 11, scope: !6740, inlinedAt: !6720)
!6740 = !DILexicalBlockFile(scope: !6655, file: !918, discriminator: 1)
!6741 = !DILocation(line: 140, column: 9, scope: !6734, inlinedAt: !6720)
!6742 = !DILocation(line: 144, column: 26, scope: !6664, inlinedAt: !6720)
!6743 = !DILocation(line: 144, column: 16, scope: !6664, inlinedAt: !6720)
!6744 = !DILocation(line: 145, column: 16, scope: !6664, inlinedAt: !6720)
!6745 = !DILocation(line: 146, column: 34, scope: !6664, inlinedAt: !6720)
!6746 = !DILocation(line: 146, column: 38, scope: !6664, inlinedAt: !6720)
!6747 = !DILocation(line: 146, column: 42, scope: !6748, inlinedAt: !6720)
!6748 = !DILexicalBlockFile(scope: !6664, file: !918, discriminator: 1)
!6749 = !DILocation(line: 146, column: 41, scope: !6748, inlinedAt: !6720)
!6750 = !DILocation(line: 147, column: 48, scope: !6664, inlinedAt: !6720)
!6751 = !DILocation(line: 147, column: 46, scope: !6664, inlinedAt: !6720)
!6752 = !DILocation(line: 147, column: 69, scope: !6664, inlinedAt: !6720)
!6753 = !DILocation(line: 147, column: 30, scope: !6664, inlinedAt: !6720)
!6754 = !DILocation(line: 134, column: 13, scope: !6655, inlinedAt: !6720)
!6755 = !DILocation(line: 148, column: 13, scope: !6664, inlinedAt: !6720)
!6756 = !DILocation(line: 150, column: 13, scope: !6757, inlinedAt: !6720)
!6757 = distinct !DILexicalBlock(scope: !6758, file: !918, line: 149, column: 11)
!6758 = distinct !DILexicalBlock(scope: !6664, file: !918, line: 148, column: 13)
!6759 = !DILocation(line: 151, column: 17, scope: !6757, inlinedAt: !6720)
!6760 = !DILocation(line: 152, column: 34, scope: !6761, inlinedAt: !6720)
!6761 = distinct !DILexicalBlock(scope: !6757, file: !918, line: 151, column: 17)
!6762 = !DILocation(line: 153, column: 41, scope: !6757, inlinedAt: !6720)
!6763 = !DILocation(line: 153, column: 13, scope: !6757, inlinedAt: !6720)
!6764 = !DILocation(line: 157, column: 11, scope: !6655, inlinedAt: !6720)
!6765 = !DILocation(line: 171, column: 16, scope: !6653, inlinedAt: !6720)
!6766 = !DILocation(line: 162, column: 15, scope: !6653, inlinedAt: !6720)
!6767 = !DILocation(line: 173, column: 18, scope: !6652, inlinedAt: !6720)
!6768 = !DILocation(line: 173, column: 15, scope: !6653, inlinedAt: !6720)
!6769 = !DILocation(line: 180, column: 20, scope: !6651, inlinedAt: !6720)
!6770 = !DILocation(line: 178, column: 21, scope: !6651, inlinedAt: !6720)
!6771 = !DILocation(line: 181, column: 22, scope: !6650, inlinedAt: !6720)
!6772 = !DILocation(line: 181, column: 19, scope: !6651, inlinedAt: !6720)
!6773 = !DILocation(line: 190, column: 25, scope: !6649, inlinedAt: !6720)
!6774 = !DILocation(line: 184, column: 19, scope: !6775, inlinedAt: !6720)
!6775 = distinct !DILexicalBlock(scope: !6650, file: !918, line: 182, column: 17)
!6776 = !DILocation(line: 186, column: 17, scope: !6775, inlinedAt: !6720)
!6777 = !DILocation(line: 191, column: 26, scope: !6649, inlinedAt: !6720)
!6778 = !DILocation(line: 196, column: 23, scope: !6646, inlinedAt: !6720)
!6779 = !DILocation(line: 197, column: 23, scope: !6646, inlinedAt: !6720)
!6780 = !DILocalVariable(name: "__fp", arg: 1, scope: !6781, file: !1039, line: 63, type: !6669)
!6781 = distinct !DISubprogram(name: "getc_unlocked", scope: !1039, file: !1039, line: 63, type: !6782, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !575, variables: !6784)
!6782 = !DISubroutineType(types: !6783)
!6783 = !{!9, !6669}
!6784 = !{!6780}
!6785 = !DILocation(line: 63, column: 22, scope: !6781, inlinedAt: !6786)
!6786 = distinct !DILocation(line: 201, column: 27, scope: !6646, inlinedAt: !6720)
!6787 = !DILocation(line: 65, column: 10, scope: !6781, inlinedAt: !6786)
!6788 = !{!"branch_weights", i32 2000, i32 1}
!6789 = !DILocation(line: 65, column: 10, scope: !6790, inlinedAt: !6786)
!6790 = !DILexicalBlockFile(scope: !6781, file: !1039, discriminator: 1)
!6791 = !DILocation(line: 65, column: 10, scope: !6792, inlinedAt: !6786)
!6792 = !DILexicalBlockFile(scope: !6781, file: !1039, discriminator: 2)
!6793 = !DILocation(line: 65, column: 10, scope: !6794, inlinedAt: !6786)
!6794 = !DILexicalBlockFile(scope: !6781, file: !1039, discriminator: 3)
!6795 = !DILocation(line: 195, column: 27, scope: !6646, inlinedAt: !6720)
!6796 = !DILocation(line: 202, column: 27, scope: !6646, inlinedAt: !6720)
!6797 = !DILocation(line: 63, column: 22, scope: !6781, inlinedAt: !6798)
!6798 = distinct !DILocation(line: 210, column: 33, scope: !6799, inlinedAt: !6720)
!6799 = distinct !DILexicalBlock(scope: !6800, file: !918, line: 207, column: 25)
!6800 = distinct !DILexicalBlock(scope: !6646, file: !918, line: 206, column: 27)
!6801 = !DILocation(line: 65, column: 10, scope: !6781, inlinedAt: !6798)
!6802 = !DILocation(line: 65, column: 10, scope: !6790, inlinedAt: !6798)
!6803 = !DILocation(line: 65, column: 10, scope: !6792, inlinedAt: !6798)
!6804 = !DILocation(line: 65, column: 10, scope: !6794, inlinedAt: !6798)
!6805 = !DILocation(line: 210, column: 29, scope: !6806, inlinedAt: !6720)
!6806 = !DILexicalBlockFile(scope: !6799, file: !918, discriminator: 1)
!6807 = distinct !{!6807, !6808, !6809}
!6808 = !DILocation(line: 193, column: 19, scope: !6648)
!6809 = !DILocation(line: 241, column: 21, scope: !6648)
!6810 = !DILocation(line: 216, column: 23, scope: !6646, inlinedAt: !6720)
!6811 = !DILocation(line: 217, column: 27, scope: !6812, inlinedAt: !6720)
!6812 = distinct !DILexicalBlock(scope: !6646, file: !918, line: 217, column: 27)
!6813 = !DILocation(line: 217, column: 64, scope: !6812, inlinedAt: !6720)
!6814 = !DILocation(line: 217, column: 27, scope: !6646, inlinedAt: !6720)
!6815 = !DILocation(line: 219, column: 28, scope: !6646, inlinedAt: !6720)
!6816 = !DILocation(line: 198, column: 30, scope: !6646, inlinedAt: !6720)
!6817 = !DILocation(line: 220, column: 28, scope: !6646, inlinedAt: !6720)
!6818 = !DILocation(line: 198, column: 34, scope: !6646, inlinedAt: !6720)
!6819 = !DILocation(line: 199, column: 29, scope: !6646, inlinedAt: !6720)
!6820 = !DILocation(line: 222, column: 36, scope: !6821, inlinedAt: !6720)
!6821 = distinct !DILexicalBlock(scope: !6646, file: !918, line: 222, column: 27)
!6822 = !DILocation(line: 222, column: 27, scope: !6646, inlinedAt: !6720)
!6823 = !DILocation(line: 225, column: 63, scope: !6824, inlinedAt: !6720)
!6824 = distinct !DILexicalBlock(scope: !6821, file: !918, line: 223, column: 25)
!6825 = !DILocation(line: 225, column: 46, scope: !6824, inlinedAt: !6720)
!6826 = !DILocation(line: 226, column: 25, scope: !6824, inlinedAt: !6720)
!6827 = !DILocation(line: 229, column: 36, scope: !6828, inlinedAt: !6720)
!6828 = distinct !DILexicalBlock(scope: !6821, file: !918, line: 228, column: 25)
!6829 = !DILocation(line: 230, column: 73, scope: !6828, inlinedAt: !6720)
!6830 = !DILocation(line: 230, column: 46, scope: !6828, inlinedAt: !6720)
!6831 = !DILocation(line: 232, column: 35, scope: !6832, inlinedAt: !6720)
!6832 = distinct !DILexicalBlock(scope: !6646, file: !918, line: 232, column: 27)
!6833 = !DILocation(line: 232, column: 27, scope: !6646, inlinedAt: !6720)
!6834 = !DILocation(line: 236, column: 27, scope: !6835, inlinedAt: !6720)
!6835 = distinct !DILexicalBlock(scope: !6832, file: !918, line: 233, column: 25)
!6836 = !DILocation(line: 237, column: 27, scope: !6835, inlinedAt: !6720)
!6837 = !DILocation(line: 239, column: 39, scope: !6646, inlinedAt: !6720)
!6838 = !DILocation(line: 239, column: 50, scope: !6646, inlinedAt: !6720)
!6839 = !DILocation(line: 239, column: 61, scope: !6646, inlinedAt: !6720)
!6840 = !DILocalVariable(name: "__dest", arg: 1, scope: !6841, file: !1169, line: 107, type: !1172)
!6841 = distinct !DISubprogram(name: "strcpy", scope: !1169, file: !1169, line: 107, type: !1170, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !575, variables: !6842)
!6842 = !{!6840, !6843}
!6843 = !DILocalVariable(name: "__src", arg: 2, scope: !6841, file: !1169, line: 107, type: !1173)
!6844 = !DILocation(line: 107, column: 1, scope: !6841, inlinedAt: !6845)
!6845 = distinct !DILocation(line: 239, column: 23, scope: !6646, inlinedAt: !6720)
!6846 = !DILocation(line: 109, column: 49, scope: !6841, inlinedAt: !6845)
!6847 = !DILocation(line: 109, column: 10, scope: !6841, inlinedAt: !6845)
!6848 = !DILocation(line: 107, column: 1, scope: !6841, inlinedAt: !6849)
!6849 = distinct !DILocation(line: 240, column: 23, scope: !6646, inlinedAt: !6720)
!6850 = !DILocation(line: 109, column: 49, scope: !6841, inlinedAt: !6849)
!6851 = !DILocation(line: 109, column: 10, scope: !6841, inlinedAt: !6849)
!6852 = !DILocation(line: 241, column: 21, scope: !6647, inlinedAt: !6720)
!6853 = !DILocation(line: 242, column: 19, scope: !6649, inlinedAt: !6720)
!6854 = !DILocation(line: 243, column: 32, scope: !6855, inlinedAt: !6720)
!6855 = distinct !DILexicalBlock(scope: !6649, file: !918, line: 243, column: 23)
!6856 = !DILocation(line: 243, column: 23, scope: !6649, inlinedAt: !6720)
!6857 = !DILocation(line: 247, column: 33, scope: !6858, inlinedAt: !6720)
!6858 = distinct !DILexicalBlock(scope: !6855, file: !918, line: 246, column: 21)
!6859 = !DILocation(line: 247, column: 45, scope: !6858, inlinedAt: !6720)
!6860 = !DILocation(line: 253, column: 11, scope: !6653, inlinedAt: !6720)
!6861 = !DILocation(line: 377, column: 23, scope: !6655, inlinedAt: !6720)
!6862 = !DILocation(line: 378, column: 5, scope: !6655, inlinedAt: !6720)
!6863 = !DILocation(line: 396, column: 15, scope: !6633)
!6864 = !DILocation(line: 590, column: 8, scope: !6642)
!6865 = !DILocation(line: 590, column: 17, scope: !6642)
!6866 = !DILocation(line: 589, column: 3, scope: !6867)
!6867 = !DILexicalBlockFile(scope: !6643, file: !918, discriminator: 1)
!6868 = !DILocation(line: 592, column: 9, scope: !6640)
!6869 = !DILocation(line: 592, column: 35, scope: !6641)
!6870 = !DILocation(line: 593, column: 9, scope: !6641)
!6871 = !DILocation(line: 593, column: 24, scope: !6872)
!6872 = !DILexicalBlockFile(scope: !6641, file: !918, discriminator: 1)
!6873 = !DILocation(line: 593, column: 31, scope: !6872)
!6874 = !DILocation(line: 593, column: 34, scope: !6875)
!6875 = !DILexicalBlockFile(scope: !6641, file: !918, discriminator: 2)
!6876 = !DILocation(line: 593, column: 45, scope: !6875)
!6877 = !DILocation(line: 592, column: 9, scope: !6878)
!6878 = !DILexicalBlockFile(scope: !6642, file: !918, discriminator: 1)
!6879 = !DILocation(line: 595, column: 29, scope: !6880)
!6880 = distinct !DILexicalBlock(scope: !6641, file: !918, line: 594, column: 7)
!6881 = !DILocation(line: 595, column: 27, scope: !6880)
!6882 = !DILocation(line: 595, column: 46, scope: !6880)
!6883 = !DILocation(line: 596, column: 9, scope: !6880)
!6884 = !DILocation(line: 591, column: 19, scope: !6642)
!6885 = !DILocation(line: 591, column: 36, scope: !6642)
!6886 = !DILocation(line: 591, column: 16, scope: !6642)
!6887 = !DILocation(line: 591, column: 52, scope: !6878)
!6888 = !DILocation(line: 591, column: 69, scope: !6642)
!6889 = !DILocation(line: 591, column: 49, scope: !6642)
!6890 = distinct !{!6890, !6891, !6892}
!6891 = !DILocation(line: 589, column: 3, scope: !6643)
!6892 = !DILocation(line: 597, column: 7, scope: !6643)
!6893 = !DILocation(line: 602, column: 7, scope: !6894)
!6894 = distinct !DILexicalBlock(scope: !6633, file: !918, line: 602, column: 7)
!6895 = !DILocation(line: 602, column: 18, scope: !6894)
!6896 = !DILocation(line: 602, column: 7, scope: !6633)
!6897 = !DILocation(line: 612, column: 3, scope: !6633)
