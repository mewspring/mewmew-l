; ModuleID = 'coreutils-8.27/src/csplit.bc'
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
@caught_signals = internal global %struct.__sigset_t zeroinitializer, align 8
@remove_files = internal global i8 0, align 1
@files_created = internal global i32 0, align 4
@filename_space = internal global i8* null, align 8
@prefix = internal global i8* null, align 8
@suffix = internal global i8* null, align 8
@digits = internal global i32 2, align 4
@.str.27 = private unnamed_addr constant [5 x i8] c"%0*u\00", align 1
@output_stream = internal unnamed_addr global %struct._IO_FILE* null, align 8
@.str.25 = private unnamed_addr constant [19 x i8] c"write error for %s\00", align 1
@output_filename = internal unnamed_addr global i8* null, align 8
@bytes_written = internal unnamed_addr global i64 0, align 8
@elide_empty_files = internal unnamed_addr global i1 false, align 1
@suppress_count = internal unnamed_addr global i1 false, align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.26 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@global_argv = internal unnamed_addr global i8** null, align 8
@controls = internal unnamed_addr global %struct.control* null, align 8
@control_used = internal unnamed_addr global i64 0, align 8
@suppress_matched = internal unnamed_addr global i1 false, align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"xx\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"f:b:kn:sqz\00", align 1
@longopts = internal constant [11 x %struct.option] [%struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i32 0, i32 0), i32 1, i32* null, i32 110 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0), i32 0, i32* null, i32 113 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i32 0, i32 0), i32 0, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i32 0, i32 0), i32 0, i32* null, i32 107 }, %struct.option { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.32, i32 0, i32 0), i32 0, i32* null, i32 122 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i32 0, i32 0), i32 1, i32* null, i32 102 }, %struct.option { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.34, i32 0, i32 0), i32 1, i32* null, i32 98 }, %struct.option { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.35, i32 0, i32 0), i32 0, i32* null, i32 128 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16
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
@new_control_record.control_allocated = internal global i64 0, align 8
@re_syntax_options = external local_unnamed_addr global i64, align 8
@.str.51 = private unnamed_addr constant [35 x i8] c"%s: invalid regular expression: %s\00", align 1
@.str.52 = private unnamed_addr constant [37 x i8] c"%s: integer expected after delimiter\00", align 1
@.str.46 = private unnamed_addr constant [20 x i8] c"%s: invalid pattern\00", align 1
@.str.47 = private unnamed_addr constant [42 x i8] c"%s: line number must be greater than zero\00", align 1
@parse_patterns.last_val = internal unnamed_addr global i64 0, align 8
@.str.48 = private unnamed_addr constant [57 x i8] c"line number %s is smaller than preceding line number, %s\00", align 1
@.str.49 = private unnamed_addr constant [61 x i8] c"warning: line number %s is the same as preceding line number\00", align 1
@.str.53 = private unnamed_addr constant [36 x i8] c"%s: '}' is required in repeat count\00", align 1
@.str.54 = private unnamed_addr constant [42 x i8] c"%s}: integer required between '{' and '}'\00", align 1
@main.sig = internal unnamed_addr constant [11 x i32] [i32 14, i32 1, i32 2, i32 13, i32 3, i32 15, i32 29, i32 27, i32 26, i32 24, i32 25], align 16
@current_line = internal unnamed_addr global i64 0, align 8
@.str.55 = private unnamed_addr constant [35 x i8] c"error in regular expression search\00", align 1
@head = internal unnamed_addr global %struct.buffer_record* null, align 8
@.str.62 = private unnamed_addr constant [18 x i8] c"input disappeared\00", align 1
@.str.61 = private unnamed_addr constant [29 x i8] c"%s: line number out of range\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"read error\00", align 1
@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.63 = private unnamed_addr constant [33 x i8] c"%s: %s: line number out of range\00", align 1
@.str.59 = private unnamed_addr constant [19 x i8] c" on repetition %s\0A\00", align 1
@.str.60 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@have_read_eof = internal unnamed_addr global i1 false, align 1
@hold_count = internal unnamed_addr global i64 0, align 8
@last_line_number = internal unnamed_addr global i64 0, align 8
@hold_area = internal unnamed_addr global i8* null, align 8
@.str.58 = private unnamed_addr constant [24 x i8] c"%s: %s: match not found\00", align 1
@.str.56 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.57 = private unnamed_addr constant [13 x i8] c"src/csplit.c\00", align 1
@__PRETTY_FUNCTION__.find_line = private unnamed_addr constant [37 x i8] c"struct cstring *find_line(uintmax_t)\00", align 1
@remove_line.prev_buf = internal unnamed_addr global %struct.buffer_record* null, align 8
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
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i64 0, i64 0), align 8
@.str.44 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1
@.str.66 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.67 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.68 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4
@program_name = local_unnamed_addr global i8* null, align 8
@.str.81 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.82 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.83 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.85, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.86, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.87, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.88, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.89, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.90, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.91, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.92, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.93, i32 0, i32 0), i8* null], align 16
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
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8
@.str.11.94 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.95 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.96 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.97 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.98 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.99 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.100 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.cstring* @slotvec0, align 8
@nslots = internal unnamed_addr global i32 1, align 4
@slot0 = internal global [256 x i8] zeroinitializer, align 16
@slotvec0 = internal global %struct.cstring { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8
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
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16
@.str.143 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.148 = private unnamed_addr constant [38 x i8] c"0 <= strtol_base && strtol_base <= 36\00", align 1
@.str.1.149 = private unnamed_addr constant [16 x i8] c"./lib/xstrtol.c\00", align 1
@__PRETTY_FUNCTION__.xstrtoimax = private unnamed_addr constant [78 x i8] c"strtol_error xstrtoimax(const char *, char **, int, intmax_t *, const char *)\00", align 1
@.str.152 = private unnamed_addr constant [38 x i8] c"0 <= strtol_base && strtol_base <= 36\00", align 1
@.str.1.153 = private unnamed_addr constant [16 x i8] c"./lib/xstrtol.c\00", align 1
@__PRETTY_FUNCTION__.xstrtoumax = private unnamed_addr constant [79 x i8] c"strtol_error xstrtoumax(const char *, char **, int, uintmax_t *, const char *)\00", align 1
@rpl_fcntl.have_dupfd_cloexec = internal unnamed_addr global i32 0, align 4
@.str.1.170 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.173 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8
@.str.3.174 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.175 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.176 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.177 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.178 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.179 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 5) #10
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %1) #10
  tail call fastcc void @cleanup_fatal() #13
  unreachable
}

; Function Attrs: nounwind
declare i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #1

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #2

; Function Attrs: noreturn nounwind sspstrong uwtable
define internal fastcc void @cleanup_fatal() unnamed_addr #0 {
  %1 = alloca %struct.__sigset_t, align 8
  %2 = bitcast %struct.__sigset_t* %1 to i8*
  call void @llvm.lifetime.start(i64 128, i8* nonnull %2) #10
  tail call fastcc void @close_output_file() #10
  %3 = call i32 @sigprocmask(i32 0, %struct.__sigset_t* nonnull @caught_signals, %struct.__sigset_t* nonnull %1) #10
  call fastcc void @delete_all_files(i1 zeroext false) #10
  %4 = call i32 @sigprocmask(i32 2, %struct.__sigset_t* nonnull %1, %struct.__sigset_t* null) #10
  call void @llvm.lifetime.end(i64 128, i8* nonnull %2) #10
  call void @exit(i32 1) #14
  unreachable
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @close_output_file() unnamed_addr #4 {
  %1 = alloca %struct.__sigset_t, align 8
  %2 = alloca [21 x i8], align 16
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @output_stream, align 8
  %4 = icmp eq %struct._IO_FILE* %3, null
  br i1 %4, label %51, label %5

; <label>:5:                                      ; preds = %0
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %3, i64 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = and i32 %7, 32
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10

; <label>:10:                                     ; preds = %5
  %11 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.25, i64 0, i64 0), i32 5) #10
  %12 = load i8*, i8** @output_filename, align 8
  %13 = tail call i8* @quotearg_style(i32 4, i8* %12) #10
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %11, i8* %13) #10
  store %struct._IO_FILE* null, %struct._IO_FILE** @output_stream, align 8
  tail call fastcc void @cleanup_fatal() #13
  unreachable

; <label>:14:                                     ; preds = %5
  %15 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %3) #10
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %22, label %17

; <label>:17:                                     ; preds = %14
  %18 = tail call i32* @__errno_location() #5
  %19 = load i32, i32* %18, align 4
  %20 = load i8*, i8** @output_filename, align 8
  %21 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %20) #10
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %21) #10
  store %struct._IO_FILE* null, %struct._IO_FILE** @output_stream, align 8
  tail call fastcc void @cleanup_fatal() #13
  unreachable

; <label>:22:                                     ; preds = %14
  %23 = load i64, i64* @bytes_written, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %43

; <label>:25:                                     ; preds = %22
  %26 = load i1, i1* @elide_empty_files, align 1
  br i1 %26, label %27, label %43

; <label>:27:                                     ; preds = %25
  %28 = bitcast %struct.__sigset_t* %1 to i8*
  call void @llvm.lifetime.start(i64 128, i8* nonnull %28) #10
  %29 = call i32 @sigprocmask(i32 0, %struct.__sigset_t* nonnull @caught_signals, %struct.__sigset_t* nonnull %1) #10
  %30 = load i8*, i8** @output_filename, align 8
  %31 = call i32 @unlink(i8* %30) #10
  %32 = icmp eq i32 %31, 0
  %33 = tail call i32* @__errno_location() #5
  %34 = load i32, i32* %33, align 4
  %35 = zext i1 %32 to i32
  %36 = load volatile i32, i32* @files_created, align 4
  %37 = sub i32 %36, %35
  store volatile i32 %37, i32* @files_created, align 4
  %38 = call i32 @sigprocmask(i32 2, %struct.__sigset_t* nonnull %1, %struct.__sigset_t* null) #10
  br i1 %32, label %42, label %39

; <label>:39:                                     ; preds = %27
  %40 = load i8*, i8** @output_filename, align 8
  %41 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %40) #10
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %41) #10
  br label %42

; <label>:42:                                     ; preds = %39, %27
  call void @llvm.lifetime.end(i64 128, i8* nonnull %28) #10
  br label %50

; <label>:43:                                     ; preds = %25, %22
  %44 = load i1, i1* @suppress_count, align 1
  br i1 %44, label %50, label %45

; <label>:45:                                     ; preds = %43
  %46 = getelementptr inbounds [21 x i8], [21 x i8]* %2, i64 0, i64 0
  call void @llvm.lifetime.start(i64 21, i8* nonnull %46) #10
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %48 = call i8* @umaxtostr(i64 %23, i8* nonnull %46) #10
  %49 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %47, i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0), i8* %48) #10
  call void @llvm.lifetime.end(i64 21, i8* nonnull %46) #10
  br label %50

; <label>:50:                                     ; preds = %43, %45, %42
  store %struct._IO_FILE* null, %struct._IO_FILE** @output_stream, align 8
  br label %51

; <label>:51:                                     ; preds = %0, %50
  ret void
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #5

; Function Attrs: nounwind
declare i32 @sigprocmask(i32, %struct.__sigset_t*, %struct.__sigset_t*) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @delete_all_files(i1 zeroext) unnamed_addr #4 {
  %2 = load volatile i8, i8* @remove_files, align 1
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %24, label %4

; <label>:4:                                      ; preds = %1
  %5 = load volatile i32, i32* @files_created, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %23, label %7

; <label>:7:                                      ; preds = %4
  br label %8

; <label>:8:                                      ; preds = %7, %18
  %9 = phi i32 [ %19, %18 ], [ 0, %7 ]
  %10 = tail call fastcc i8* @make_filename(i32 %9)
  %11 = tail call i32 @unlink(i8* %10) #10
  %12 = icmp eq i32 %11, 0
  %13 = or i1 %12, %0
  br i1 %13, label %18, label %14

; <label>:14:                                     ; preds = %8
  %15 = tail call i32* @__errno_location() #5
  %16 = load i32, i32* %15, align 4
  %17 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %10) #10
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %17) #10
  br label %18

; <label>:18:                                     ; preds = %8, %14
  %19 = add i32 %9, 1
  %20 = load volatile i32, i32* @files_created, align 4
  %21 = icmp ult i32 %19, %20
  br i1 %21, label %8, label %22

; <label>:22:                                     ; preds = %18
  br label %23

; <label>:23:                                     ; preds = %22, %4
  store volatile i32 0, i32* @files_created, align 4
  br label %24

; <label>:24:                                     ; preds = %1, %23
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @make_filename(i32) unnamed_addr #4 {
  %2 = load volatile i8*, i8** @filename_space, align 8
  %3 = load volatile i8*, i8** @prefix, align 8
  %4 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %2, i1 false) #10
  %5 = tail call i8* @__strcpy_chk(i8* nonnull %2, i8* nonnull %3, i64 %4) #10
  %6 = load volatile i8*, i8** @suffix, align 8
  %7 = icmp eq i8* %6, null
  %8 = load volatile i8*, i8** @filename_space, align 8
  %9 = load volatile i8*, i8** @prefix, align 8
  %10 = tail call i64 @strlen(i8* %9) #15
  %11 = getelementptr inbounds i8, i8* %8, i64 %10
  br i1 %7, label %15, label %12

; <label>:12:                                     ; preds = %1
  %13 = load volatile i8*, i8** @suffix, align 8
  %14 = tail call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %11, i32 1, i64 -1, i8* %13, i32 %0) #10
  br label %18

; <label>:15:                                     ; preds = %1
  %16 = load volatile i32, i32* @digits, align 4
  %17 = tail call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %11, i32 1, i64 -1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), i32 %16, i32 %0) #10
  br label %18

; <label>:18:                                     ; preds = %15, %12
  %19 = load volatile i8*, i8** @filename_space, align 8
  ret i8* %19
}

; Function Attrs: nounwind
declare i32 @unlink(i8* nocapture readonly) local_unnamed_addr #1

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #7

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #5

; Function Attrs: nounwind
declare i8* @__strcpy_chk(i8*, i8*, i64) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #8

declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #5

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @main(i32, i8**) local_unnamed_addr #4 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca [21 x i8], align 16
  %6 = alloca %struct.sigaction, align 8
  %7 = load i8*, i8** %1, align 8
  tail call void @set_program_name(i8* %7) #10
  %8 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)) #10
  %9 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0)) #10
  %10 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0)) #10
  %11 = tail call i32 @atexit(void ()* nonnull @close_stdout) #10
  store i8** %1, i8*** @global_argv, align 8
  store %struct.control* null, %struct.control** @controls, align 8
  store i64 0, i64* @control_used, align 8
  store i1 false, i1* @suppress_count, align 1
  store volatile i8 1, i8* @remove_files, align 1
  store i1 false, i1* @suppress_matched, align 1
  store volatile i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8** @prefix, align 8
  br label %12

; <label>:12:                                     ; preds = %27, %2
  %13 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), %struct.option* getelementptr inbounds ([11 x %struct.option], [11 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #10
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
  ]

; <label>:14:                                     ; preds = %12
  %15 = load i64, i64* bitcast (i8** @optarg to i64*), align 8
  store volatile i64 %15, i64* bitcast (i8** @prefix to i64*), align 8
  br label %27

; <label>:16:                                     ; preds = %12
  %17 = load i64, i64* bitcast (i8** @optarg to i64*), align 8
  store volatile i64 %17, i64* bitcast (i8** @suffix to i64*), align 8
  br label %27

; <label>:18:                                     ; preds = %12
  store volatile i8 0, i8* @remove_files, align 1
  br label %27

; <label>:19:                                     ; preds = %12
  %20 = load i8*, i8** @optarg, align 8
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i32 5) #10
  %22 = tail call i64 @xdectoimax(i8* %20, i64 0, i64 2147483647, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* %21, i32 0) #10
  %23 = trunc i64 %22 to i32
  store volatile i32 %23, i32* @digits, align 4
  br label %27

; <label>:24:                                     ; preds = %12, %12
  store i1 true, i1* @suppress_count, align 1
  br label %27

; <label>:25:                                     ; preds = %12
  store i1 true, i1* @elide_empty_files, align 1
  br label %27

; <label>:26:                                     ; preds = %12
  store i1 true, i1* @suppress_matched, align 1
  br label %27

; <label>:27:                                     ; preds = %26, %25, %24, %19, %18, %16, %14
  br label %12

; <label>:28:                                     ; preds = %12
  tail call void @usage(i32 0) #13
  unreachable

; <label>:29:                                     ; preds = %12
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %31 = load i8*, i8** @Version, align 8
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* %31, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i8* null) #10
  tail call void @exit(i32 0) #14
  unreachable

; <label>:32:                                     ; preds = %12
  tail call void @usage(i32 1) #13
  unreachable

; <label>:33:                                     ; preds = %12
  %34 = load i32, i32* @optind, align 4
  %35 = sub nsw i32 %0, %34
  %36 = icmp slt i32 %35, 2
  br i1 %36, label %37, label %49

; <label>:37:                                     ; preds = %33
  %38 = icmp slt i32 %34, %0
  br i1 %38, label %41, label %39

; <label>:39:                                     ; preds = %37
  %40 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), i32 5) #10
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %40) #10
  br label %48

; <label>:41:                                     ; preds = %37
  %42 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i64 0, i64 0), i32 5) #10
  %43 = add nsw i32 %0, -1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8*, i8** %1, i64 %44
  %46 = load i8*, i8** %45, align 8
  %47 = tail call i8* @quote(i8* %46) #10
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %42, i8* %47) #10
  br label %48

; <label>:48:                                     ; preds = %41, %39
  tail call void @usage(i32 1) #13
  unreachable

; <label>:49:                                     ; preds = %33
  %50 = load volatile i8*, i8** @prefix, align 8
  %51 = tail call i64 @strlen(i8* %50) #15
  %52 = load volatile i8*, i8** @suffix, align 8
  %53 = icmp eq i8* %52, null
  br i1 %53, label %155, label %54

; <label>:54:                                     ; preds = %49
  %55 = load volatile i8*, i8** @suffix, align 8
  br label %56

; <label>:56:                                     ; preds = %143, %54
  %57 = phi i8* [ %55, %54 ], [ %146, %143 ]
  %58 = phi i8 [ 0, %54 ], [ %145, %143 ]
  %59 = load i8, i8* %57, align 1
  switch i8 %59, label %143 [
    i8 0, label %60
    i8 37, label %63
  ]

; <label>:60:                                     ; preds = %56
  %61 = and i8 %58, 1
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %147, label %149

; <label>:63:                                     ; preds = %56
  %64 = getelementptr inbounds i8, i8* %57, i64 1
  %65 = load i8, i8* %64, align 1
  %66 = icmp eq i8 %65, 37
  br i1 %66, label %143, label %67

; <label>:67:                                     ; preds = %63
  %68 = and i8 %58, 1
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %70, label %71

; <label>:70:                                     ; preds = %67
  br label %73

; <label>:71:                                     ; preds = %67
  %72 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.38, i64 0, i64 0), i32 5) #10
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %72) #10
  unreachable

; <label>:73:                                     ; preds = %70, %87
  %74 = phi i8 [ %91, %87 ], [ %65, %70 ]
  %75 = phi i32 [ %88, %87 ], [ 0, %70 ]
  %76 = phi i64 [ %89, %87 ], [ 0, %70 ]
  %77 = sext i8 %74 to i32
  switch i32 %77, label %78 [
    i32 45, label %87
    i32 48, label %87
    i32 39, label %83
    i32 35, label %85
  ]

; <label>:78:                                     ; preds = %73
  %79 = getelementptr inbounds i8, i8* %64, i64 %76
  %80 = add nsw i32 %77, -48
  %81 = icmp ult i32 %80, 10
  br i1 %81, label %82, label %100

; <label>:82:                                     ; preds = %78
  br label %92

; <label>:83:                                     ; preds = %73
  %84 = or i32 %75, 1
  br label %87

; <label>:85:                                     ; preds = %73
  %86 = or i32 %75, 2
  br label %87

; <label>:87:                                     ; preds = %85, %83, %73, %73
  %88 = phi i32 [ %86, %85 ], [ %84, %83 ], [ %75, %73 ], [ %75, %73 ]
  %89 = add i64 %76, 1
  %90 = getelementptr inbounds i8, i8* %64, i64 %89
  %91 = load i8, i8* %90, align 1
  br label %73

; <label>:92:                                     ; preds = %82, %92
  %93 = phi i8* [ %94, %92 ], [ %79, %82 ]
  %94 = getelementptr inbounds i8, i8* %93, i64 1
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = add nsw i32 %96, -48
  %98 = icmp ult i32 %97, 10
  br i1 %98, label %92, label %99

; <label>:99:                                     ; preds = %92
  br label %100

; <label>:100:                                    ; preds = %99, %78
  %101 = phi i8 [ %74, %78 ], [ %95, %99 ]
  %102 = phi i8* [ %79, %78 ], [ %94, %99 ]
  %103 = icmp eq i8 %101, 46
  br i1 %103, label %104, label %113

; <label>:104:                                    ; preds = %100
  br label %105

; <label>:105:                                    ; preds = %104, %105
  %106 = phi i8* [ %107, %105 ], [ %102, %104 ]
  %107 = getelementptr inbounds i8, i8* %106, i64 1
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = add nsw i32 %109, -48
  %111 = icmp ult i32 %110, 10
  br i1 %111, label %105, label %112

; <label>:112:                                    ; preds = %105
  br label %113

; <label>:113:                                    ; preds = %112, %100
  %114 = phi i8 [ %101, %100 ], [ %108, %112 ]
  %115 = phi i8* [ %102, %100 ], [ %107, %112 ]
  switch i8 %114, label %120 [
    i8 100, label %116
    i8 105, label %116
    i8 117, label %133
    i8 111, label %117
    i8 120, label %117
    i8 88, label %117
    i8 0, label %118
  ]

; <label>:116:                                    ; preds = %113, %113
  store i8 117, i8* %115, align 1
  br label %133

; <label>:117:                                    ; preds = %113, %113, %113
  br label %133

; <label>:118:                                    ; preds = %113
  %119 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.40, i64 0, i64 0), i32 5) #10
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %119) #10
  unreachable

; <label>:120:                                    ; preds = %113
  %121 = zext i8 %114 to i32
  %122 = tail call i16** @__ctype_b_loc() #5
  %123 = load i16*, i16** %122, align 8
  %124 = zext i8 %114 to i64
  %125 = getelementptr inbounds i16, i16* %123, i64 %124
  %126 = load i16, i16* %125, align 2
  %127 = and i16 %126, 16384
  %128 = icmp eq i16 %127, 0
  br i1 %128, label %131, label %129

; <label>:129:                                    ; preds = %120
  %130 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.41, i64 0, i64 0), i32 5) #10
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %130, i32 %121) #10
  unreachable

; <label>:131:                                    ; preds = %120
  %132 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.42, i64 0, i64 0), i32 5) #10
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %132, i32 %121) #10
  unreachable

; <label>:133:                                    ; preds = %117, %116, %113
  %134 = phi i32 [ -3, %117 ], [ -2, %113 ], [ -2, %116 ]
  %135 = and i32 %134, %75
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %143, label %137

; <label>:137:                                    ; preds = %133
  %138 = zext i8 %114 to i32
  %139 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.43, i64 0, i64 0), i32 5) #10
  %140 = shl i32 %135, 1
  %141 = and i32 %140, 4
  %142 = xor i32 %141, 39
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %139, i32 %142, i32 %138) #10
  unreachable

; <label>:143:                                    ; preds = %133, %63, %56
  %144 = phi i8* [ %64, %63 ], [ %57, %56 ], [ %115, %133 ]
  %145 = phi i8 [ %58, %63 ], [ %58, %56 ], [ 1, %133 ]
  %146 = getelementptr inbounds i8, i8* %144, i64 1
  br label %56

; <label>:147:                                    ; preds = %60
  %148 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.39, i64 0, i64 0), i32 5) #10
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %148) #10
  unreachable

; <label>:149:                                    ; preds = %60
  %150 = tail call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* null, i64 0, i32 1, i64 0, i8* %55, i32 -1) #10
  %151 = icmp sgt i32 %150, -1
  br i1 %151, label %153, label %152

; <label>:152:                                    ; preds = %149
  tail call void @xalloc_die() #14
  unreachable

; <label>:153:                                    ; preds = %149
  %154 = sext i32 %150 to i64
  br label %161

; <label>:155:                                    ; preds = %49
  %156 = load volatile i32, i32* @digits, align 4
  %157 = icmp ult i32 %156, 10
  br i1 %157, label %161, label %158

; <label>:158:                                    ; preds = %155
  %159 = load volatile i32, i32* @digits, align 4
  %160 = sext i32 %159 to i64
  br label %161

; <label>:161:                                    ; preds = %158, %155, %153
  %162 = phi i64 [ %154, %153 ], [ %160, %158 ], [ 10, %155 ]
  %163 = sub i64 -2, %51
  %164 = icmp ult i64 %163, %162
  br i1 %164, label %165, label %166

; <label>:165:                                    ; preds = %161
  tail call void @xalloc_die() #13
  unreachable

; <label>:166:                                    ; preds = %161
  %167 = add i64 %51, 1
  %168 = add i64 %167, %162
  %169 = tail call noalias i8* @xmalloc(i64 %168) #10
  store volatile i8* %169, i8** @filename_space, align 8
  %170 = load i32, i32* @optind, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* @optind, align 4
  %172 = sext i32 %170 to i64
  %173 = getelementptr inbounds i8*, i8** %1, i64 %172
  %174 = load i8*, i8** %173, align 8
  %175 = load i8, i8* %174, align 1
  %176 = icmp eq i8 %175, 45
  br i1 %176, label %177, label %181

; <label>:177:                                    ; preds = %166
  %178 = getelementptr inbounds i8, i8* %174, i64 1
  %179 = load i8, i8* %178, align 1
  %180 = icmp eq i8 %179, 0
  br i1 %180, label %191, label %181

; <label>:181:                                    ; preds = %177, %166
  %182 = tail call i32 @fd_reopen(i32 0, i8* nonnull %174, i32 0, i32 0) #10
  %183 = icmp slt i32 %182, 0
  br i1 %183, label %186, label %184

; <label>:184:                                    ; preds = %181
  %185 = load i32, i32* @optind, align 4
  br label %191

; <label>:186:                                    ; preds = %181
  %187 = tail call i32* @__errno_location() #5
  %188 = load i32, i32* %187, align 4
  %189 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.45, i64 0, i64 0), i32 5) #10
  %190 = tail call i8* @quotearg_style(i32 4, i8* nonnull %174) #10
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %188, i8* %189, i8* %190) #10
  unreachable

; <label>:191:                                    ; preds = %184, %177
  %192 = phi i32 [ %185, %184 ], [ %171, %177 ]
  %193 = bitcast i64* %4 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %193) #10
  %194 = icmp slt i32 %192, %0
  br i1 %194, label %195, label %384

; <label>:195:                                    ; preds = %191
  %196 = bitcast i64* %3 to i8*
  br label %197

; <label>:197:                                    ; preds = %379, %195
  %198 = phi i32 [ %192, %195 ], [ %381, %379 ]
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i8*, i8** %1, i64 %199
  %201 = load i8*, i8** %200, align 8
  %202 = load i8, i8* %201, align 1
  switch i8 %202, label %272 [
    i8 47, label %203
    i8 37, label %203
  ]

; <label>:203:                                    ; preds = %197, %197
  %204 = getelementptr inbounds i8, i8* %201, i64 1
  %205 = sext i8 %202 to i32
  %206 = call i8* @strrchr(i8* %204, i32 %205) #15
  %207 = icmp eq i8* %206, null
  br i1 %207, label %208, label %210

; <label>:208:                                    ; preds = %203
  %209 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.50, i64 0, i64 0), i32 5) #10
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %209, i8* nonnull %201, i32 %205) #10
  unreachable

; <label>:210:                                    ; preds = %203
  %211 = icmp eq i8 %202, 37
  %212 = zext i1 %211 to i8
  %213 = ptrtoint i8* %206 to i64
  %214 = ptrtoint i8* %201 to i64
  %215 = xor i64 %214, -1
  %216 = add i64 %213, %215
  %217 = load i64, i64* @control_used, align 8
  %218 = load i64, i64* @new_control_record.control_allocated, align 8
  %219 = icmp eq i64 %217, %218
  br i1 %219, label %222, label %220

; <label>:220:                                    ; preds = %210
  %221 = load %struct.control*, %struct.control** @controls, align 8
  br label %241

; <label>:222:                                    ; preds = %210
  %223 = load i8*, i8** bitcast (%struct.control** @controls to i8**), align 8
  %224 = icmp eq i8* %223, null
  br i1 %224, label %225, label %228

; <label>:225:                                    ; preds = %222
  %226 = icmp eq i64 %217, 0
  %227 = select i1 %226, i64 1, i64 %217
  br label %235

; <label>:228:                                    ; preds = %222
  %229 = icmp ult i64 %217, 64051194700380387
  br i1 %229, label %231, label %230

; <label>:230:                                    ; preds = %228
  call void @xalloc_die() #14
  unreachable

; <label>:231:                                    ; preds = %228
  %232 = lshr i64 %217, 1
  %233 = add i64 %217, 1
  %234 = add i64 %233, %232
  br label %235

; <label>:235:                                    ; preds = %231, %225
  %236 = phi i64 [ %234, %231 ], [ %227, %225 ]
  store i64 %236, i64* @new_control_record.control_allocated, align 8
  %237 = mul i64 %236, 96
  %238 = call i8* @xrealloc(i8* %223, i64 %237) #10
  store i8* %238, i8** bitcast (%struct.control** @controls to i8**), align 8
  %239 = bitcast i8* %238 to %struct.control*
  %240 = load i64, i64* @control_used, align 8
  br label %241

; <label>:241:                                    ; preds = %235, %220
  %242 = phi i64 [ %217, %220 ], [ %240, %235 ]
  %243 = phi %struct.control* [ %221, %220 ], [ %239, %235 ]
  %244 = add i64 %242, 1
  store i64 %244, i64* @control_used, align 8
  %245 = getelementptr inbounds %struct.control, %struct.control* %243, i64 %242
  %246 = getelementptr inbounds %struct.control, %struct.control* %243, i64 %242, i32 6
  %247 = getelementptr inbounds %struct.control, %struct.control* %243, i64 %242, i32 4
  store i8 0, i8* %247, align 4
  %248 = bitcast %struct.control* %245 to i8*
  call void @llvm.memset.p0i8.i64(i8* %248, i8 0, i64 24, i32 8, i1 false) #10
  %249 = getelementptr inbounds %struct.control, %struct.control* %243, i64 %242, i32 3
  store i32 %198, i32* %249, align 8
  %250 = getelementptr inbounds %struct.control, %struct.control* %243, i64 %242, i32 5
  store i8 %212, i8* %250, align 1
  store i8 1, i8* %246, align 2
  %251 = getelementptr inbounds %struct.control, %struct.control* %243, i64 %242, i32 7
  %252 = bitcast %struct.re_pattern_buffer* %251 to i8*
  call void @llvm.memset.p0i8.i64(i8* %252, i8 0, i64 16, i32 8, i1 false) #10
  %253 = call noalias i8* @xmalloc(i64 256) #10
  %254 = getelementptr inbounds %struct.control, %struct.control* %243, i64 %242, i32 7, i32 4
  store i8* %253, i8** %254, align 8
  %255 = getelementptr inbounds %struct.control, %struct.control* %243, i64 %242, i32 7, i32 5
  store i8* null, i8** %255, align 8
  store i64 710, i64* @re_syntax_options, align 8
  %256 = call i8* @re_compile_pattern(i8* %204, i64 %216, %struct.re_pattern_buffer* %251) #10
  %257 = icmp eq i8* %256, null
  br i1 %257, label %261, label %258

; <label>:258:                                    ; preds = %241
  %259 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.51, i64 0, i64 0), i32 5) #10
  %260 = call i8* @quote(i8* nonnull %201) #10
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %259, i8* %260, i8* nonnull %256) #10
  call fastcc void @cleanup_fatal() #14
  unreachable

; <label>:261:                                    ; preds = %241
  %262 = getelementptr inbounds i8, i8* %206, i64 1
  %263 = load i8, i8* %262, align 1
  %264 = icmp eq i8 %263, 0
  br i1 %264, label %339, label %265

; <label>:265:                                    ; preds = %261
  %266 = getelementptr inbounds %struct.control, %struct.control* %245, i64 0, i32 0
  %267 = call i32 @xstrtoimax(i8* %262, i8** null, i32 10, i64* %266, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)) #10
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %339, label %269

; <label>:269:                                    ; preds = %265
  %270 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.52, i64 0, i64 0), i32 5) #10
  %271 = call i8* @quote(i8* nonnull %201) #10
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %270, i8* %271) #10
  unreachable

; <label>:272:                                    ; preds = %197
  %273 = load i64, i64* @control_used, align 8
  %274 = load i64, i64* @new_control_record.control_allocated, align 8
  %275 = icmp eq i64 %273, %274
  br i1 %275, label %278, label %276

; <label>:276:                                    ; preds = %272
  %277 = load %struct.control*, %struct.control** @controls, align 8
  br label %297

; <label>:278:                                    ; preds = %272
  %279 = load i8*, i8** bitcast (%struct.control** @controls to i8**), align 8
  %280 = icmp eq i8* %279, null
  br i1 %280, label %281, label %284

; <label>:281:                                    ; preds = %278
  %282 = icmp eq i64 %273, 0
  %283 = select i1 %282, i64 1, i64 %273
  br label %291

; <label>:284:                                    ; preds = %278
  %285 = icmp ult i64 %273, 64051194700380387
  br i1 %285, label %287, label %286

; <label>:286:                                    ; preds = %284
  call void @xalloc_die() #14
  unreachable

; <label>:287:                                    ; preds = %284
  %288 = lshr i64 %273, 1
  %289 = add i64 %273, 1
  %290 = add i64 %289, %288
  br label %291

; <label>:291:                                    ; preds = %287, %281
  %292 = phi i64 [ %290, %287 ], [ %283, %281 ]
  store i64 %292, i64* @new_control_record.control_allocated, align 8
  %293 = mul i64 %292, 96
  %294 = call i8* @xrealloc(i8* %279, i64 %293) #10
  store i8* %294, i8** bitcast (%struct.control** @controls to i8**), align 8
  %295 = bitcast i8* %294 to %struct.control*
  %296 = load i64, i64* @control_used, align 8
  br label %297

; <label>:297:                                    ; preds = %291, %276
  %298 = phi i64 [ %273, %276 ], [ %296, %291 ]
  %299 = phi %struct.control* [ %277, %276 ], [ %295, %291 ]
  %300 = add i64 %298, 1
  store i64 %300, i64* @control_used, align 8
  %301 = getelementptr inbounds %struct.control, %struct.control* %299, i64 %298
  %302 = getelementptr inbounds %struct.control, %struct.control* %299, i64 %298, i32 6
  store i8 0, i8* %302, align 2
  %303 = getelementptr inbounds %struct.control, %struct.control* %299, i64 %298, i32 4
  store i8 0, i8* %303, align 4
  %304 = bitcast %struct.control* %301 to i8*
  call void @llvm.memset.p0i8.i64(i8* %304, i8 0, i64 24, i32 8, i1 false) #10
  %305 = getelementptr inbounds %struct.control, %struct.control* %299, i64 %298, i32 3
  store i32 %198, i32* %305, align 8
  %306 = load i8*, i8** %200, align 8
  %307 = call i32 @xstrtoumax(i8* %306, i8** null, i32 10, i64* nonnull %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)) #10
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %313, label %309

; <label>:309:                                    ; preds = %297
  %310 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.46, i64 0, i64 0), i32 5) #10
  %311 = load i8*, i8** %200, align 8
  %312 = call i8* @quote(i8* %311) #10
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %310, i8* %312) #10
  unreachable

; <label>:313:                                    ; preds = %297
  %314 = load i64, i64* %4, align 8
  %315 = icmp eq i64 %314, 0
  br i1 %315, label %316, label %319

; <label>:316:                                    ; preds = %313
  %317 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.47, i64 0, i64 0), i32 5) #10
  %318 = load i8*, i8** %200, align 8
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %317, i8* %318) #10
  unreachable

; <label>:319:                                    ; preds = %313
  %320 = load i64, i64* @parse_patterns.last_val, align 8
  %321 = icmp ult i64 %314, %320
  br i1 %321, label %322, label %329

; <label>:322:                                    ; preds = %319
  %323 = getelementptr inbounds [21 x i8], [21 x i8]* %5, i64 0, i64 0
  call void @llvm.lifetime.start(i64 21, i8* nonnull %323) #10
  %324 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.48, i64 0, i64 0), i32 5) #10
  %325 = load i8*, i8** %200, align 8
  %326 = call i8* @quote(i8* %325) #10
  %327 = load i64, i64* @parse_patterns.last_val, align 8
  %328 = call i8* @umaxtostr(i64 %327, i8* nonnull %323) #10
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %324, i8* %326, i8* %328) #10
  unreachable

; <label>:329:                                    ; preds = %319
  %330 = icmp eq i64 %314, %320
  br i1 %330, label %331, label %336

; <label>:331:                                    ; preds = %329
  %332 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.49, i64 0, i64 0), i32 5) #10
  %333 = load i8*, i8** %200, align 8
  %334 = call i8* @quote(i8* %333) #10
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %332, i8* %334) #10
  %335 = load i64, i64* %4, align 8
  br label %336

; <label>:336:                                    ; preds = %331, %329
  %337 = phi i64 [ %335, %331 ], [ %314, %329 ]
  store i64 %337, i64* @parse_patterns.last_val, align 8
  %338 = getelementptr inbounds %struct.control, %struct.control* %299, i64 %298, i32 1
  store i64 %337, i64* %338, align 8
  br label %339

; <label>:339:                                    ; preds = %336, %265, %261
  %340 = phi %struct.control* [ %301, %336 ], [ %245, %261 ], [ %245, %265 ]
  %341 = add nsw i32 %198, 1
  %342 = icmp slt i32 %341, %0
  br i1 %342, label %343, label %379

; <label>:343:                                    ; preds = %339
  %344 = sext i32 %341 to i64
  %345 = getelementptr inbounds i8*, i8** %1, i64 %344
  %346 = load i8*, i8** %345, align 8
  %347 = load i8, i8* %346, align 1
  %348 = icmp eq i8 %347, 123
  br i1 %348, label %349, label %379

; <label>:349:                                    ; preds = %343
  call void @llvm.lifetime.start(i64 8, i8* nonnull %196) #10
  %350 = call i64 @strlen(i8* %346) #15
  %351 = add nsw i64 %350, -1
  %352 = getelementptr inbounds i8, i8* %346, i64 %351
  %353 = load i8, i8* %352, align 1
  %354 = icmp eq i8 %353, 125
  br i1 %354, label %358, label %355

; <label>:355:                                    ; preds = %349
  %356 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.53, i64 0, i64 0), i32 5) #10
  %357 = call i8* @quote(i8* nonnull %346) #10
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %356, i8* %357) #10
  unreachable

; <label>:358:                                    ; preds = %349
  store i8 0, i8* %352, align 1
  %359 = getelementptr inbounds i8, i8* %346, i64 1
  %360 = icmp eq i64 %350, 3
  br i1 %360, label %361, label %366

; <label>:361:                                    ; preds = %358
  %362 = load i8, i8* %359, align 1
  %363 = icmp eq i8 %362, 42
  br i1 %363, label %364, label %366

; <label>:364:                                    ; preds = %361
  %365 = getelementptr inbounds %struct.control, %struct.control* %340, i64 0, i32 4
  store i8 1, i8* %365, align 4
  br label %378

; <label>:366:                                    ; preds = %361, %358
  %367 = call i32 @xstrtoumax(i8* %359, i8** null, i32 10, i64* nonnull %3, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)) #10
  %368 = icmp eq i32 %367, 0
  br i1 %368, label %375, label %369

; <label>:369:                                    ; preds = %366
  %370 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.54, i64 0, i64 0), i32 5) #10
  %371 = load i8**, i8*** @global_argv, align 8
  %372 = getelementptr inbounds i8*, i8** %371, i64 %344
  %373 = load i8*, i8** %372, align 8
  %374 = call i8* @quote(i8* %373) #10
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %370, i8* %374) #10
  unreachable

; <label>:375:                                    ; preds = %366
  %376 = load i64, i64* %3, align 8
  %377 = getelementptr inbounds %struct.control, %struct.control* %340, i64 0, i32 2
  store i64 %376, i64* %377, align 8
  br label %378

; <label>:378:                                    ; preds = %375, %364
  store i8 125, i8* %352, align 1
  call void @llvm.lifetime.end(i64 8, i8* nonnull %196) #10
  br label %379

; <label>:379:                                    ; preds = %378, %343, %339
  %380 = phi i32 [ %341, %378 ], [ %198, %343 ], [ %198, %339 ]
  %381 = add nsw i32 %380, 1
  %382 = icmp slt i32 %381, %0
  br i1 %382, label %197, label %383

; <label>:383:                                    ; preds = %379
  br label %384

; <label>:384:                                    ; preds = %383, %191
  call void @llvm.lifetime.end(i64 8, i8* nonnull %193) #10
  %385 = bitcast %struct.sigaction* %6 to i8*
  call void @llvm.lifetime.start(i64 152, i8* nonnull %385) #10
  %386 = call i32 @sigemptyset(%struct.__sigset_t* nonnull @caught_signals) #10
  %387 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %6, i64 0, i32 0, i32 0
  br label %388

; <label>:388:                                    ; preds = %397, %384
  %389 = phi i64 [ 0, %384 ], [ %398, %397 ]
  %390 = getelementptr inbounds [11 x i32], [11 x i32]* @main.sig, i64 0, i64 %389
  %391 = load i32, i32* %390, align 4
  %392 = call i32 @sigaction(i32 %391, %struct.sigaction* null, %struct.sigaction* nonnull %6) #10
  %393 = load void (i32)*, void (i32)** %387, align 8
  %394 = icmp eq void (i32)* %393, inttoptr (i64 1 to void (i32)*)
  br i1 %394, label %397, label %395

; <label>:395:                                    ; preds = %388
  %396 = call i32 @sigaddset(%struct.__sigset_t* nonnull @caught_signals, i32 %391) #10
  br label %397

; <label>:397:                                    ; preds = %388, %395
  %398 = add nuw nsw i64 %389, 1
  %399 = icmp eq i64 %398, 11
  br i1 %399, label %400, label %388

; <label>:400:                                    ; preds = %397
  store void (i32)* @interrupt_handler, void (i32)** %387, align 8
  %401 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %6, i64 0, i32 1
  %402 = bitcast %struct.__sigset_t* %401 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %402, i8* bitcast (%struct.__sigset_t* @caught_signals to i8*), i64 128, i32 8, i1 false)
  %403 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %6, i64 0, i32 2
  store i32 0, i32* %403, align 8
  br label %404

; <label>:404:                                    ; preds = %400
  %405 = call i32 @sigismember(%struct.__sigset_t* nonnull @caught_signals, i32 14) #10
  %406 = icmp eq i32 %405, 0
  br i1 %406, label %409, label %407

; <label>:407:                                    ; preds = %404
  %408 = call i32 @sigaction(i32 14, %struct.sigaction* nonnull %6, %struct.sigaction* null) #10
  br label %409

; <label>:409:                                    ; preds = %404, %407
  %410 = call i32 @sigismember(%struct.__sigset_t* nonnull @caught_signals, i32 1) #10
  %411 = icmp eq i32 %410, 0
  br i1 %411, label %686, label %684

; <label>:412:                                    ; preds = %731
  %413 = load %struct.control*, %struct.control** @controls, align 8
  br label %414

; <label>:414:                                    ; preds = %661, %412
  %415 = phi %struct.control* [ %662, %661 ], [ %413, %412 ]
  %416 = phi i64 [ %663, %661 ], [ 0, %412 ]
  %417 = getelementptr inbounds %struct.control, %struct.control* %415, i64 %416, i32 6
  %418 = load i8, i8* %417, align 2
  %419 = icmp eq i8 %418, 0
  br i1 %419, label %421, label %420

; <label>:420:                                    ; preds = %414
  br label %422

; <label>:421:                                    ; preds = %414
  br label %594

; <label>:422:                                    ; preds = %420, %591
  %423 = phi %struct.control* [ %593, %591 ], [ %415, %420 ]
  %424 = phi i64 [ %592, %591 ], [ 0, %420 ]
  %425 = getelementptr inbounds %struct.control, %struct.control* %423, i64 %416, i32 4
  %426 = load i8, i8* %425, align 4
  %427 = icmp eq i8 %426, 0
  br i1 %427, label %428, label %432

; <label>:428:                                    ; preds = %422
  %429 = getelementptr inbounds %struct.control, %struct.control* %423, i64 %416, i32 2
  %430 = load i64, i64* %429, align 8
  %431 = icmp ugt i64 %424, %430
  br i1 %431, label %660, label %432

; <label>:432:                                    ; preds = %428, %422
  %433 = getelementptr inbounds %struct.control, %struct.control* %423, i64 %416
  %434 = getelementptr inbounds %struct.control, %struct.control* %423, i64 %416, i32 5
  %435 = load i8, i8* %434, align 1
  %436 = icmp ne i8 %435, 0
  br i1 %436, label %438, label %437

; <label>:437:                                    ; preds = %432
  call fastcc void @create_output_file() #10
  br label %438

; <label>:438:                                    ; preds = %437, %432
  %439 = load i1, i1* @suppress_matched, align 1
  %440 = load i64, i64* @current_line, align 8
  %441 = icmp ne i64 %440, 0
  %442 = and i1 %439, %441
  br i1 %442, label %443, label %445

; <label>:443:                                    ; preds = %438
  %444 = call fastcc %struct.cstring* @remove_line() #10
  br label %445

; <label>:445:                                    ; preds = %443, %438
  %446 = getelementptr inbounds %struct.control, %struct.control* %433, i64 0, i32 0
  %447 = load i64, i64* %446, align 8
  %448 = icmp sgt i64 %447, -1
  br i1 %448, label %451, label %449

; <label>:449:                                    ; preds = %445
  %450 = getelementptr inbounds %struct.control, %struct.control* %423, i64 %416, i32 7
  br label %499

; <label>:451:                                    ; preds = %445
  %452 = load i64, i64* @current_line, align 8
  %453 = add i64 %452, 1
  store i64 %453, i64* @current_line, align 8
  %454 = call fastcc %struct.cstring* @find_line(i64 %453) #10
  %455 = icmp eq %struct.cstring* %454, null
  br i1 %455, label %459, label %456

; <label>:456:                                    ; preds = %451
  %457 = getelementptr inbounds %struct.control, %struct.control* %423, i64 %416, i32 7
  br label %476

; <label>:458:                                    ; preds = %493
  br label %460

; <label>:459:                                    ; preds = %451
  br label %460

; <label>:460:                                    ; preds = %459, %458
  %461 = load i8, i8* %425, align 4
  %462 = icmp eq i8 %461, 0
  br i1 %462, label %475, label %463

; <label>:463:                                    ; preds = %460
  br i1 %436, label %474, label %464

; <label>:464:                                    ; preds = %463
  %465 = call fastcc %struct.cstring* @remove_line() #10
  %466 = icmp eq %struct.cstring* %465, null
  br i1 %466, label %473, label %467

; <label>:467:                                    ; preds = %464
  br label %468

; <label>:468:                                    ; preds = %467, %468
  %469 = phi %struct.cstring* [ %470, %468 ], [ %465, %467 ]
  call fastcc void @save_line_to_file(%struct.cstring* nonnull %469) #10
  %470 = call fastcc %struct.cstring* @remove_line() #10
  %471 = icmp eq %struct.cstring* %470, null
  br i1 %471, label %472, label %468

; <label>:472:                                    ; preds = %468
  br label %473

; <label>:473:                                    ; preds = %472, %464
  call fastcc void @close_output_file() #10
  br label %474

; <label>:474:                                    ; preds = %473, %463
  call void @exit(i32 0) #14
  unreachable

; <label>:475:                                    ; preds = %460
  call fastcc void @regexp_error(%struct.control* nonnull %433, i64 %424, i1 zeroext %436) #14
  unreachable

; <label>:476:                                    ; preds = %493, %456
  %477 = phi %struct.cstring* [ %454, %456 ], [ %496, %493 ]
  %478 = getelementptr inbounds %struct.cstring, %struct.cstring* %477, i64 0, i32 0
  %479 = load i64, i64* %478, align 8
  %480 = getelementptr inbounds %struct.cstring, %struct.cstring* %477, i64 0, i32 1
  %481 = load i8*, i8** %480, align 8
  %482 = add i64 %479, -1
  %483 = getelementptr inbounds i8, i8* %481, i64 %482
  %484 = load i8, i8* %483, align 1
  %485 = icmp eq i8 %484, 10
  %486 = select i1 %485, i64 %482, i64 %479
  %487 = trunc i64 %486 to i32
  %488 = call i32 @re_search(%struct.re_pattern_buffer* %457, i8* %481, i32 %487, i32 0, i32 %487, %struct.re_registers* null) #10
  switch i32 %488, label %534 [
    i32 -2, label %489
    i32 -1, label %491
  ]

; <label>:489:                                    ; preds = %476
  %490 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.55, i64 0, i64 0), i32 5) #10
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %490) #10
  call fastcc void @cleanup_fatal() #14
  unreachable

; <label>:491:                                    ; preds = %476
  %492 = call fastcc %struct.cstring* @remove_line() #10
  br i1 %436, label %493, label %498

; <label>:493:                                    ; preds = %498, %491
  %494 = load i64, i64* @current_line, align 8
  %495 = add i64 %494, 1
  store i64 %495, i64* @current_line, align 8
  %496 = call fastcc %struct.cstring* @find_line(i64 %495) #10
  %497 = icmp eq %struct.cstring* %496, null
  br i1 %497, label %458, label %476

; <label>:498:                                    ; preds = %491
  call fastcc void @save_line_to_file(%struct.cstring* %492) #10
  br label %493

; <label>:499:                                    ; preds = %520, %449
  %500 = load i64, i64* @current_line, align 8
  %501 = add i64 %500, 1
  store i64 %501, i64* @current_line, align 8
  %502 = call fastcc %struct.cstring* @find_line(i64 %501) #10
  %503 = icmp eq %struct.cstring* %502, null
  br i1 %503, label %504, label %520

; <label>:504:                                    ; preds = %499
  %505 = load i8, i8* %425, align 4
  %506 = icmp eq i8 %505, 0
  br i1 %506, label %519, label %507

; <label>:507:                                    ; preds = %504
  br i1 %436, label %518, label %508

; <label>:508:                                    ; preds = %507
  %509 = call fastcc %struct.cstring* @remove_line() #10
  %510 = icmp eq %struct.cstring* %509, null
  br i1 %510, label %517, label %511

; <label>:511:                                    ; preds = %508
  br label %512

; <label>:512:                                    ; preds = %511, %512
  %513 = phi %struct.cstring* [ %514, %512 ], [ %509, %511 ]
  call fastcc void @save_line_to_file(%struct.cstring* nonnull %513) #10
  %514 = call fastcc %struct.cstring* @remove_line() #10
  %515 = icmp eq %struct.cstring* %514, null
  br i1 %515, label %516, label %512

; <label>:516:                                    ; preds = %512
  br label %517

; <label>:517:                                    ; preds = %516, %508
  call fastcc void @close_output_file() #10
  br label %518

; <label>:518:                                    ; preds = %517, %507
  call void @exit(i32 0) #14
  unreachable

; <label>:519:                                    ; preds = %504
  call fastcc void @regexp_error(%struct.control* nonnull %433, i64 %424, i1 zeroext %436) #14
  unreachable

; <label>:520:                                    ; preds = %499
  %521 = getelementptr inbounds %struct.cstring, %struct.cstring* %502, i64 0, i32 0
  %522 = load i64, i64* %521, align 8
  %523 = getelementptr inbounds %struct.cstring, %struct.cstring* %502, i64 0, i32 1
  %524 = load i8*, i8** %523, align 8
  %525 = add i64 %522, -1
  %526 = getelementptr inbounds i8, i8* %524, i64 %525
  %527 = load i8, i8* %526, align 1
  %528 = icmp eq i8 %527, 10
  %529 = select i1 %528, i64 %525, i64 %522
  %530 = trunc i64 %529 to i32
  %531 = call i32 @re_search(%struct.re_pattern_buffer* %450, i8* %524, i32 %530, i32 0, i32 %530, %struct.re_registers* null) #10
  switch i32 %531, label %535 [
    i32 -2, label %532
    i32 -1, label %499
  ]

; <label>:532:                                    ; preds = %520
  %533 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.55, i64 0, i64 0), i32 5) #10
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %533) #10
  call fastcc void @cleanup_fatal() #14
  unreachable

; <label>:534:                                    ; preds = %476
  br label %536

; <label>:535:                                    ; preds = %520
  br label %536

; <label>:536:                                    ; preds = %535, %534
  %537 = load i64, i64* @current_line, align 8
  %538 = load i64, i64* %446, align 8
  %539 = add i64 %538, %537
  %540 = getelementptr inbounds %struct.control, %struct.control* %423, i64 %416, i32 3
  %541 = load i32, i32* %540, align 8
  %542 = load %struct.buffer_record*, %struct.buffer_record** @head, align 8
  %543 = icmp eq %struct.buffer_record* %542, null
  br i1 %543, label %544, label %552

; <label>:544:                                    ; preds = %536
  %545 = call fastcc zeroext i1 @load_buffer() #10
  br i1 %545, label %546, label %548

; <label>:546:                                    ; preds = %544
  %547 = load %struct.buffer_record*, %struct.buffer_record** @head, align 8
  br label %552

; <label>:548:                                    ; preds = %544
  %549 = tail call i32* @__errno_location() #5
  %550 = load i32, i32* %549, align 4
  %551 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.62, i64 0, i64 0), i32 5) #10
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %550, i8* %551) #10
  unreachable

; <label>:552:                                    ; preds = %546, %536
  %553 = phi %struct.buffer_record* [ %547, %546 ], [ %542, %536 ]
  %554 = getelementptr inbounds %struct.buffer_record, %struct.buffer_record* %553, i64 0, i32 3
  %555 = load i64, i64* %554, align 8
  %556 = icmp ult i64 %539, %555
  br i1 %556, label %557, label %564

; <label>:557:                                    ; preds = %552
  %558 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.61, i64 0, i64 0), i32 5) #10
  %559 = load i8**, i8*** @global_argv, align 8
  %560 = sext i32 %541 to i64
  %561 = getelementptr inbounds i8*, i8** %559, i64 %560
  %562 = load i8*, i8** %561, align 8
  %563 = call i8* @quote(i8* %562) #10
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %558, i8* %563) #10
  call fastcc void @cleanup_fatal() #14
  unreachable

; <label>:564:                                    ; preds = %552
  %565 = sub i64 %539, %555
  %566 = icmp eq i64 %565, 0
  br i1 %566, label %585, label %567

; <label>:567:                                    ; preds = %564
  br label %568

; <label>:568:                                    ; preds = %567, %581
  %569 = phi i64 [ %582, %581 ], [ 0, %567 ]
  %570 = call fastcc %struct.cstring* @remove_line() #10
  %571 = icmp eq %struct.cstring* %570, null
  br i1 %571, label %572, label %579

; <label>:572:                                    ; preds = %568
  %573 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.61, i64 0, i64 0), i32 5) #10
  %574 = load i8**, i8*** @global_argv, align 8
  %575 = sext i32 %541 to i64
  %576 = getelementptr inbounds i8*, i8** %574, i64 %575
  %577 = load i8*, i8** %576, align 8
  %578 = call i8* @quote(i8* %577) #10
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %573, i8* %578) #10
  call fastcc void @cleanup_fatal() #14
  unreachable

; <label>:579:                                    ; preds = %568
  br i1 %436, label %581, label %580

; <label>:580:                                    ; preds = %579
  call fastcc void @save_line_to_file(%struct.cstring* nonnull %570) #10
  br label %581

; <label>:581:                                    ; preds = %580, %579
  %582 = add nuw i64 %569, 1
  %583 = icmp ult i64 %582, %565
  br i1 %583, label %568, label %584

; <label>:584:                                    ; preds = %581
  br label %585

; <label>:585:                                    ; preds = %584, %564
  br i1 %436, label %587, label %586

; <label>:586:                                    ; preds = %585
  call fastcc void @close_output_file() #10
  br label %587

; <label>:587:                                    ; preds = %586, %585
  %588 = load i64, i64* %446, align 8
  %589 = icmp sgt i64 %588, 0
  br i1 %589, label %590, label %591

; <label>:590:                                    ; preds = %587
  store i64 %539, i64* @current_line, align 8
  br label %591

; <label>:591:                                    ; preds = %590, %587
  %592 = add i64 %424, 1
  %593 = load %struct.control*, %struct.control** @controls, align 8
  br label %422

; <label>:594:                                    ; preds = %421, %653
  %595 = phi %struct.control* [ %654, %653 ], [ %415, %421 ]
  %596 = phi i64 [ %607, %653 ], [ 0, %421 ]
  %597 = getelementptr inbounds %struct.control, %struct.control* %595, i64 %416, i32 4
  %598 = load i8, i8* %597, align 4
  %599 = icmp eq i8 %598, 0
  br i1 %599, label %600, label %604

; <label>:600:                                    ; preds = %594
  %601 = getelementptr inbounds %struct.control, %struct.control* %595, i64 %416, i32 2
  %602 = load i64, i64* %601, align 8
  %603 = icmp ugt i64 %596, %602
  br i1 %603, label %659, label %604

; <label>:604:                                    ; preds = %600, %594
  %605 = getelementptr inbounds %struct.control, %struct.control* %595, i64 %416, i32 1
  %606 = load i64, i64* %605, align 8
  %607 = add i64 %596, 1
  %608 = mul i64 %606, %607
  call fastcc void @create_output_file() #10
  %609 = load i64, i64* @current_line, align 8
  %610 = add i64 %609, 1
  %611 = call fastcc %struct.cstring* @find_line(i64 %610) #10
  %612 = icmp eq %struct.cstring* %611, null
  br i1 %612, label %613, label %617

; <label>:613:                                    ; preds = %604
  %614 = load i1, i1* @suppress_matched, align 1
  br i1 %614, label %615, label %617

; <label>:615:                                    ; preds = %613
  %616 = getelementptr inbounds %struct.control, %struct.control* %595, i64 %416
  call fastcc void @handle_line_error(%struct.control* nonnull %616, i64 %596) #14
  unreachable

; <label>:617:                                    ; preds = %613, %604
  %618 = load %struct.buffer_record*, %struct.buffer_record** @head, align 8
  %619 = icmp eq %struct.buffer_record* %618, null
  br i1 %619, label %620, label %628

; <label>:620:                                    ; preds = %617
  %621 = call fastcc zeroext i1 @load_buffer() #10
  br i1 %621, label %622, label %624

; <label>:622:                                    ; preds = %620
  %623 = load %struct.buffer_record*, %struct.buffer_record** @head, align 8
  br label %628

; <label>:624:                                    ; preds = %620
  %625 = tail call i32* @__errno_location() #5
  %626 = load i32, i32* %625, align 4
  %627 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.62, i64 0, i64 0), i32 5) #10
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %626, i8* %627) #10
  unreachable

; <label>:628:                                    ; preds = %622, %617
  %629 = phi %struct.buffer_record* [ %623, %622 ], [ %618, %617 ]
  %630 = getelementptr inbounds %struct.buffer_record, %struct.buffer_record* %629, i64 0, i32 3
  %631 = load i64, i64* %630, align 8
  %632 = icmp ult i64 %631, %608
  br i1 %632, label %633, label %644

; <label>:633:                                    ; preds = %628
  br label %634

; <label>:634:                                    ; preds = %633, %641
  %635 = phi i64 [ %636, %641 ], [ %631, %633 ]
  %636 = add nuw i64 %635, 1
  %637 = call fastcc %struct.cstring* @remove_line() #10
  %638 = icmp eq %struct.cstring* %637, null
  br i1 %638, label %639, label %641

; <label>:639:                                    ; preds = %634
  %640 = getelementptr inbounds %struct.control, %struct.control* %595, i64 %416
  call fastcc void @handle_line_error(%struct.control* %640, i64 %596) #14
  unreachable

; <label>:641:                                    ; preds = %634
  call fastcc void @save_line_to_file(%struct.cstring* nonnull %637) #10
  %642 = icmp ult i64 %636, %608
  br i1 %642, label %634, label %643

; <label>:643:                                    ; preds = %641
  br label %644

; <label>:644:                                    ; preds = %643, %628
  call fastcc void @close_output_file() #10
  %645 = load i1, i1* @suppress_matched, align 1
  br i1 %645, label %646, label %648

; <label>:646:                                    ; preds = %644
  %647 = call fastcc %struct.cstring* @remove_line() #10
  br label %648

; <label>:648:                                    ; preds = %646, %644
  %649 = load i64, i64* @current_line, align 8
  %650 = add i64 %649, 1
  %651 = call fastcc %struct.cstring* @find_line(i64 %650) #10
  %652 = icmp eq %struct.cstring* %651, null
  br i1 %652, label %655, label %653

; <label>:653:                                    ; preds = %655, %648
  %654 = load %struct.control*, %struct.control** @controls, align 8
  br label %594

; <label>:655:                                    ; preds = %648
  %656 = load i1, i1* @suppress_matched, align 1
  br i1 %656, label %653, label %657

; <label>:657:                                    ; preds = %655
  %658 = getelementptr inbounds %struct.control, %struct.control* %595, i64 %416
  call fastcc void @handle_line_error(%struct.control* %658, i64 %596) #14
  unreachable

; <label>:659:                                    ; preds = %600
  br label %661

; <label>:660:                                    ; preds = %428
  br label %661

; <label>:661:                                    ; preds = %660, %659
  %662 = phi %struct.control* [ %595, %659 ], [ %423, %660 ]
  %663 = add i64 %416, 1
  %664 = load i64, i64* @control_used, align 8
  %665 = icmp ult i64 %663, %664
  br i1 %665, label %414, label %666

; <label>:666:                                    ; preds = %661
  br label %667

; <label>:667:                                    ; preds = %666, %731
  call fastcc void @create_output_file() #10
  %668 = call fastcc %struct.cstring* @remove_line() #10
  %669 = icmp eq %struct.cstring* %668, null
  br i1 %669, label %676, label %670

; <label>:670:                                    ; preds = %667
  br label %671

; <label>:671:                                    ; preds = %670, %671
  %672 = phi %struct.cstring* [ %673, %671 ], [ %668, %670 ]
  call fastcc void @save_line_to_file(%struct.cstring* nonnull %672) #10
  %673 = call fastcc %struct.cstring* @remove_line() #10
  %674 = icmp eq %struct.cstring* %673, null
  br i1 %674, label %675, label %671

; <label>:675:                                    ; preds = %671
  br label %676

; <label>:676:                                    ; preds = %675, %667
  call fastcc void @close_output_file() #10
  %677 = call i32 @close(i32 0) #10
  %678 = icmp eq i32 %677, 0
  br i1 %678, label %683, label %679

; <label>:679:                                    ; preds = %676
  %680 = tail call i32* @__errno_location() #5
  %681 = load i32, i32* %680, align 4
  %682 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i32 5) #10
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %681, i8* %682) #10
  call fastcc void @cleanup_fatal() #13
  unreachable

; <label>:683:                                    ; preds = %676
  ret i32 0

; <label>:684:                                    ; preds = %409
  %685 = call i32 @sigaction(i32 1, %struct.sigaction* nonnull %6, %struct.sigaction* null) #10
  br label %686

; <label>:686:                                    ; preds = %684, %409
  %687 = call i32 @sigismember(%struct.__sigset_t* nonnull @caught_signals, i32 2) #10
  %688 = icmp eq i32 %687, 0
  br i1 %688, label %691, label %689

; <label>:689:                                    ; preds = %686
  %690 = call i32 @sigaction(i32 2, %struct.sigaction* nonnull %6, %struct.sigaction* null) #10
  br label %691

; <label>:691:                                    ; preds = %689, %686
  %692 = call i32 @sigismember(%struct.__sigset_t* nonnull @caught_signals, i32 13) #10
  %693 = icmp eq i32 %692, 0
  br i1 %693, label %696, label %694

; <label>:694:                                    ; preds = %691
  %695 = call i32 @sigaction(i32 13, %struct.sigaction* nonnull %6, %struct.sigaction* null) #10
  br label %696

; <label>:696:                                    ; preds = %694, %691
  %697 = call i32 @sigismember(%struct.__sigset_t* nonnull @caught_signals, i32 3) #10
  %698 = icmp eq i32 %697, 0
  br i1 %698, label %701, label %699

; <label>:699:                                    ; preds = %696
  %700 = call i32 @sigaction(i32 3, %struct.sigaction* nonnull %6, %struct.sigaction* null) #10
  br label %701

; <label>:701:                                    ; preds = %699, %696
  %702 = call i32 @sigismember(%struct.__sigset_t* nonnull @caught_signals, i32 15) #10
  %703 = icmp eq i32 %702, 0
  br i1 %703, label %706, label %704

; <label>:704:                                    ; preds = %701
  %705 = call i32 @sigaction(i32 15, %struct.sigaction* nonnull %6, %struct.sigaction* null) #10
  br label %706

; <label>:706:                                    ; preds = %704, %701
  %707 = call i32 @sigismember(%struct.__sigset_t* nonnull @caught_signals, i32 29) #10
  %708 = icmp eq i32 %707, 0
  br i1 %708, label %711, label %709

; <label>:709:                                    ; preds = %706
  %710 = call i32 @sigaction(i32 29, %struct.sigaction* nonnull %6, %struct.sigaction* null) #10
  br label %711

; <label>:711:                                    ; preds = %709, %706
  %712 = call i32 @sigismember(%struct.__sigset_t* nonnull @caught_signals, i32 27) #10
  %713 = icmp eq i32 %712, 0
  br i1 %713, label %716, label %714

; <label>:714:                                    ; preds = %711
  %715 = call i32 @sigaction(i32 27, %struct.sigaction* nonnull %6, %struct.sigaction* null) #10
  br label %716

; <label>:716:                                    ; preds = %714, %711
  %717 = call i32 @sigismember(%struct.__sigset_t* nonnull @caught_signals, i32 26) #10
  %718 = icmp eq i32 %717, 0
  br i1 %718, label %721, label %719

; <label>:719:                                    ; preds = %716
  %720 = call i32 @sigaction(i32 26, %struct.sigaction* nonnull %6, %struct.sigaction* null) #10
  br label %721

; <label>:721:                                    ; preds = %719, %716
  %722 = call i32 @sigismember(%struct.__sigset_t* nonnull @caught_signals, i32 24) #10
  %723 = icmp eq i32 %722, 0
  br i1 %723, label %726, label %724

; <label>:724:                                    ; preds = %721
  %725 = call i32 @sigaction(i32 24, %struct.sigaction* nonnull %6, %struct.sigaction* null) #10
  br label %726

; <label>:726:                                    ; preds = %724, %721
  %727 = call i32 @sigismember(%struct.__sigset_t* nonnull @caught_signals, i32 25) #10
  %728 = icmp eq i32 %727, 0
  br i1 %728, label %731, label %729

; <label>:729:                                    ; preds = %726
  %730 = call i32 @sigaction(i32 25, %struct.sigaction* nonnull %6, %struct.sigaction* null) #10
  br label %731

; <label>:731:                                    ; preds = %729, %726
  call void @llvm.lifetime.end(i64 152, i8* nonnull %385) #10
  %732 = load i64, i64* @control_used, align 8
  %733 = icmp eq i64 %732, 0
  br i1 %733, label %667, label %412
}

; Function Attrs: nounwind
declare i8* @setlocale(i32, i8*) local_unnamed_addr #1

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #1

; Function Attrs: nounwind
declare i8* @textdomain(i8*) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @atexit(void ()*) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 {
  %2 = icmp eq i32 %0, 0
  br i1 %2, label %8, label %3

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.15, i64 0, i64 0), i32 5) #10
  %6 = load i8*, i8** @program_name, align 8
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #10
  br label %54

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.16, i64 0, i64 0), i32 5) #10
  %10 = load i8*, i8** @program_name, align 8
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10) #10
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([134 x i8], [134 x i8]* @.str.17, i64 0, i64 0), i32 5) #10
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #10
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.18, i64 0, i64 0), i32 5) #10
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #10
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.65, i64 0, i64 0), i32 5) #10
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #10
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([188 x i8], [188 x i8]* @.str.19, i64 0, i64 0), i32 5) #10
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22) #10
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.20, i64 0, i64 0), i32 5) #10
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %26 = tail call i32 @fputs_unlocked(i8* %24, %struct._IO_FILE* %25) #10
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([199 x i8], [199 x i8]* @.str.21, i64 0, i64 0), i32 5) #10
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %29 = tail call i32 @fputs_unlocked(i8* %27, %struct._IO_FILE* %28) #10
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.22, i64 0, i64 0), i32 5) #10
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %32 = tail call i32 @fputs_unlocked(i8* %30, %struct._IO_FILE* %31) #10
  %33 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.23, i64 0, i64 0), i32 5) #10
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %35 = tail call i32 @fputs_unlocked(i8* %33, %struct._IO_FILE* %34) #10
  %36 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([447 x i8], [447 x i8]* @.str.24, i64 0, i64 0), i32 5) #10
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %38 = tail call i32 @fputs_unlocked(i8* %36, %struct._IO_FILE* %37) #10
  %39 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.74, i64 0, i64 0), i32 5) #10
  %40 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %39, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.75, i64 0, i64 0)) #10
  %41 = tail call i8* @setlocale(i32 5, i8* null) #10
  %42 = icmp eq i8* %41, null
  br i1 %42, label %49, label %43

; <label>:43:                                     ; preds = %8
  %44 = tail call i32 @strncmp(i8* nonnull %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.76, i64 0, i64 0), i64 3) #15
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %49, label %46

; <label>:46:                                     ; preds = %43
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.77, i64 0, i64 0), i32 5) #10
  %48 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %47, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0)) #10
  br label %49

; <label>:49:                                     ; preds = %8, %43, %46
  %50 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.78, i64 0, i64 0), i32 5) #10
  %51 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %50, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.75, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0)) #10
  %52 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.79, i64 0, i64 0), i32 5) #10
  %53 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %52, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.80, i64 0, i64 0)) #10
  br label %54

; <label>:54:                                     ; preds = %49, %3
  tail call void @exit(i32 %0) #14
  unreachable
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #7

declare i32 @__snprintf_chk(i8*, i64, i32, i64, i8*, ...) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #8

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #3

declare i8* @re_compile_pattern(i8*, i64, %struct.re_pattern_buffer*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @sigemptyset(%struct.__sigset_t*) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @sigaction(i32, %struct.sigaction*, %struct.sigaction*) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @sigaddset(%struct.__sigset_t*, i32) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @interrupt_handler(i32) #4 {
  %2 = load volatile i8, i8* @remove_files, align 1
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %34, label %4

; <label>:4:                                      ; preds = %1
  %5 = load volatile i32, i32* @files_created, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %33, label %7

; <label>:7:                                      ; preds = %4
  br label %8

; <label>:8:                                      ; preds = %7, %26
  %9 = phi i32 [ %29, %26 ], [ 0, %7 ]
  %10 = load volatile i8*, i8** @filename_space, align 8
  %11 = load volatile i8*, i8** @prefix, align 8
  %12 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %10, i1 false) #10
  %13 = tail call i8* @__strcpy_chk(i8* nonnull %10, i8* nonnull %11, i64 %12) #10
  %14 = load volatile i8*, i8** @suffix, align 8
  %15 = icmp eq i8* %14, null
  %16 = load volatile i8*, i8** @filename_space, align 8
  %17 = load volatile i8*, i8** @prefix, align 8
  %18 = tail call i64 @strlen(i8* %17) #15
  %19 = getelementptr inbounds i8, i8* %16, i64 %18
  br i1 %15, label %23, label %20

; <label>:20:                                     ; preds = %8
  %21 = load volatile i8*, i8** @suffix, align 8
  %22 = tail call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %19, i32 1, i64 -1, i8* %21, i32 %9) #10
  br label %26

; <label>:23:                                     ; preds = %8
  %24 = load volatile i32, i32* @digits, align 4
  %25 = tail call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %19, i32 1, i64 -1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), i32 %24, i32 %9) #10
  br label %26

; <label>:26:                                     ; preds = %20, %23
  %27 = load volatile i8*, i8** @filename_space, align 8
  %28 = tail call i32 @unlink(i8* %27) #10
  %29 = add i32 %9, 1
  %30 = load volatile i32, i32* @files_created, align 4
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %8, label %32

; <label>:32:                                     ; preds = %26
  br label %33

; <label>:33:                                     ; preds = %32, %4
  store volatile i32 0, i32* @files_created, align 4
  br label %34

; <label>:34:                                     ; preds = %1, %33
  %35 = tail call void (i32)* @signal(i32 %0, void (i32)* null) #10
  %36 = tail call i32 @raise(i32 %0) #10
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind
declare i32 @sigismember(%struct.__sigset_t*, i32) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @create_output_file() unnamed_addr #4 {
  %1 = alloca %struct.__sigset_t, align 8
  %2 = load volatile i32, i32* @files_created, align 4
  %3 = load volatile i8*, i8** @filename_space, align 8
  %4 = load volatile i8*, i8** @prefix, align 8
  %5 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %3, i1 false) #10
  %6 = tail call i8* @__strcpy_chk(i8* nonnull %3, i8* nonnull %4, i64 %5) #10
  %7 = load volatile i8*, i8** @suffix, align 8
  %8 = icmp eq i8* %7, null
  %9 = load volatile i8*, i8** @filename_space, align 8
  %10 = load volatile i8*, i8** @prefix, align 8
  %11 = tail call i64 @strlen(i8* %10) #15
  %12 = getelementptr inbounds i8, i8* %9, i64 %11
  br i1 %8, label %16, label %13

; <label>:13:                                     ; preds = %0
  %14 = load volatile i8*, i8** @suffix, align 8
  %15 = tail call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %12, i32 1, i64 -1, i8* %14, i32 %2) #10
  br label %19

; <label>:16:                                     ; preds = %0
  %17 = load volatile i32, i32* @digits, align 4
  %18 = tail call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %12, i32 1, i64 -1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), i32 %17, i32 %2) #10
  br label %19

; <label>:19:                                     ; preds = %13, %16
  %20 = load volatile i8*, i8** @filename_space, align 8
  store i8* %20, i8** @output_filename, align 8
  %21 = load volatile i32, i32* @files_created, align 4
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %37, label %23

; <label>:23:                                     ; preds = %19
  %24 = bitcast %struct.__sigset_t* %1 to i8*
  call void @llvm.lifetime.start(i64 128, i8* nonnull %24) #10
  %25 = call i32 @sigprocmask(i32 0, %struct.__sigset_t* nonnull @caught_signals, %struct.__sigset_t* nonnull %1) #10
  %26 = load i8*, i8** @output_filename, align 8
  %27 = call %struct._IO_FILE* @fopen_safer(i8* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i64 0, i64 0)) #10
  store %struct._IO_FILE* %27, %struct._IO_FILE** @output_stream, align 8
  %28 = icmp ne %struct._IO_FILE* %27, null
  %29 = tail call i32* @__errno_location() #5
  %30 = load i32, i32* %29, align 4
  %31 = zext i1 %28 to i32
  %32 = load volatile i32, i32* @files_created, align 4
  %33 = add i32 %32, %31
  store volatile i32 %33, i32* @files_created, align 4
  %34 = call i32 @sigprocmask(i32 2, %struct.__sigset_t* nonnull %1, %struct.__sigset_t* null) #10
  call void @llvm.lifetime.end(i64 128, i8* nonnull %24) #10
  br i1 %28, label %41, label %35

; <label>:35:                                     ; preds = %23
  %36 = load i8*, i8** @output_filename, align 8
  br label %37

; <label>:37:                                     ; preds = %35, %19
  %38 = phi i8* [ %36, %35 ], [ %20, %19 ]
  %39 = phi i32 [ %30, %35 ], [ 75, %19 ]
  %40 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %38) #10
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %40) #10
  call fastcc void @cleanup_fatal() #13
  unreachable

; <label>:41:                                     ; preds = %23
  store i64 0, i64* @bytes_written, align 8
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc %struct.cstring* @remove_line() unnamed_addr #4 {
  %1 = load %struct.buffer_record*, %struct.buffer_record** @remove_line.prev_buf, align 8
  %2 = icmp eq %struct.buffer_record* %1, null
  br i1 %2, label %19, label %3

; <label>:3:                                      ; preds = %0
  %4 = getelementptr inbounds %struct.buffer_record, %struct.buffer_record* %1, i64 0, i32 6
  %5 = load %struct.line*, %struct.line** %4, align 8
  %6 = icmp eq %struct.line* %5, null
  br i1 %6, label %15, label %7

; <label>:7:                                      ; preds = %3
  br label %8

; <label>:8:                                      ; preds = %7, %8
  %9 = phi %struct.line* [ %12, %8 ], [ %5, %7 ]
  %10 = bitcast %struct.line* %9 to i8*
  %11 = getelementptr inbounds %struct.line, %struct.line* %9, i64 0, i32 4
  %12 = load %struct.line*, %struct.line** %11, align 8
  tail call void @free(i8* %10) #10
  %13 = icmp eq %struct.line* %12, null
  br i1 %13, label %14, label %8

; <label>:14:                                     ; preds = %8
  br label %15

; <label>:15:                                     ; preds = %14, %3
  store %struct.line* null, %struct.line** %4, align 8
  %16 = getelementptr inbounds %struct.buffer_record, %struct.buffer_record* %1, i64 0, i32 5
  %17 = load i8*, i8** %16, align 8
  tail call void @free(i8* %17) #10
  store i8* null, i8** %16, align 8
  %18 = load i8*, i8** bitcast (%struct.buffer_record** @remove_line.prev_buf to i8**), align 8
  tail call void @free(i8* %18) #10
  store %struct.buffer_record* null, %struct.buffer_record** @remove_line.prev_buf, align 8
  br label %19

; <label>:19:                                     ; preds = %0, %15
  %20 = load %struct.buffer_record*, %struct.buffer_record** @head, align 8
  %21 = icmp eq %struct.buffer_record* %20, null
  br i1 %21, label %22, label %26

; <label>:22:                                     ; preds = %19
  %23 = tail call fastcc zeroext i1 @load_buffer()
  br i1 %23, label %24, label %60

; <label>:24:                                     ; preds = %22
  %25 = load %struct.buffer_record*, %struct.buffer_record** @head, align 8
  br label %26

; <label>:26:                                     ; preds = %24, %19
  %27 = phi %struct.buffer_record* [ %25, %24 ], [ %20, %19 ]
  %28 = ptrtoint %struct.buffer_record* %27 to i64
  %29 = load i64, i64* @current_line, align 8
  %30 = getelementptr inbounds %struct.buffer_record, %struct.buffer_record* %27, i64 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = icmp ult i64 %29, %31
  br i1 %32, label %33, label %34

; <label>:33:                                     ; preds = %26
  store i64 %31, i64* @current_line, align 8
  br label %34

; <label>:34:                                     ; preds = %33, %26
  %35 = add i64 %31, 1
  store i64 %35, i64* %30, align 8
  %36 = getelementptr inbounds %struct.buffer_record, %struct.buffer_record* %27, i64 0, i32 7
  %37 = load %struct.line*, %struct.line** %36, align 8
  %38 = getelementptr inbounds %struct.line, %struct.line* %37, i64 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.line, %struct.line* %37, i64 0, i32 3, i64 %39
  %41 = add i64 %39, 1
  store i64 %41, i64* %38, align 8
  %42 = getelementptr inbounds %struct.line, %struct.line* %37, i64 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %41, %43
  br i1 %44, label %45, label %60

; <label>:45:                                     ; preds = %34
  %46 = getelementptr inbounds %struct.line, %struct.line* %37, i64 0, i32 4
  %47 = bitcast %struct.line** %46 to i64*
  %48 = load i64, i64* %47, align 8
  %49 = bitcast %struct.line** %36 to i64*
  store i64 %48, i64* %49, align 8
  %50 = icmp eq i64 %48, 0
  br i1 %50, label %56, label %51

; <label>:51:                                     ; preds = %45
  %52 = inttoptr i64 %48 to %struct.line*
  %53 = getelementptr inbounds %struct.line, %struct.line* %52, i64 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %60

; <label>:56:                                     ; preds = %51, %45
  store i64 %28, i64* bitcast (%struct.buffer_record** @remove_line.prev_buf to i64*), align 8
  %57 = getelementptr inbounds %struct.buffer_record, %struct.buffer_record* %27, i64 0, i32 8
  %58 = bitcast %struct.buffer_record** %57 to i64*
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* bitcast (%struct.buffer_record** @head to i64*), align 8
  br label %60

; <label>:60:                                     ; preds = %34, %56, %51, %22
  %61 = phi %struct.cstring* [ null, %22 ], [ %40, %51 ], [ %40, %56 ], [ %40, %34 ]
  ret %struct.cstring* %61
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc %struct.cstring* @find_line(i64) unnamed_addr #4 {
  %2 = load %struct.buffer_record*, %struct.buffer_record** @head, align 8
  %3 = icmp eq %struct.buffer_record* %2, null
  br i1 %3, label %4, label %8

; <label>:4:                                      ; preds = %1
  %5 = tail call fastcc zeroext i1 @load_buffer()
  br i1 %5, label %6, label %63

; <label>:6:                                      ; preds = %4
  %7 = load %struct.buffer_record*, %struct.buffer_record** @head, align 8
  br label %8

; <label>:8:                                      ; preds = %6, %1
  %9 = phi %struct.buffer_record* [ %7, %6 ], [ %2, %1 ]
  %10 = getelementptr inbounds %struct.buffer_record, %struct.buffer_record* %9, i64 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ugt i64 %11, %0
  br i1 %12, label %63, label %13

; <label>:13:                                     ; preds = %8
  %14 = icmp eq %struct.buffer_record* %9, null
  br i1 %14, label %22, label %15

; <label>:15:                                     ; preds = %13
  %16 = getelementptr inbounds %struct.buffer_record, %struct.buffer_record* %9, i64 0, i32 4
  %17 = load i64, i64* %16, align 8
  %18 = add i64 %17, %11
  %19 = icmp ugt i64 %18, %0
  br i1 %19, label %24, label %20

; <label>:20:                                     ; preds = %15
  br label %44

; <label>:21:                                     ; preds = %51
  br label %22

; <label>:22:                                     ; preds = %21, %13
  tail call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.57, i64 0, i64 0), i32 618, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__PRETTY_FUNCTION__.find_line, i64 0, i64 0)) #14
  unreachable

; <label>:23:                                     ; preds = %54
  br label %24

; <label>:24:                                     ; preds = %23, %15
  %25 = phi i64 [ %11, %15 ], [ %57, %23 ]
  %26 = phi %struct.buffer_record* [ %9, %15 ], [ %55, %23 ]
  %27 = getelementptr inbounds %struct.buffer_record, %struct.buffer_record* %26, i64 0, i32 6
  %28 = sub i64 %0, %25
  %29 = load %struct.line*, %struct.line** %27, align 8
  %30 = icmp ugt i64 %28, 79
  br i1 %30, label %31, label %40

; <label>:31:                                     ; preds = %24
  br label %32

; <label>:32:                                     ; preds = %31, %32
  %33 = phi %struct.line* [ %37, %32 ], [ %29, %31 ]
  %34 = phi i64 [ %36, %32 ], [ %28, %31 ]
  %35 = getelementptr inbounds %struct.line, %struct.line* %33, i64 0, i32 4
  %36 = add i64 %34, -80
  %37 = load %struct.line*, %struct.line** %35, align 8
  %38 = icmp ugt i64 %36, 79
  br i1 %38, label %32, label %39

; <label>:39:                                     ; preds = %32
  br label %40

; <label>:40:                                     ; preds = %39, %24
  %41 = phi i64 [ %28, %24 ], [ %36, %39 ]
  %42 = phi %struct.line* [ %29, %24 ], [ %37, %39 ]
  %43 = getelementptr inbounds %struct.line, %struct.line* %42, i64 0, i32 3, i64 %41
  br label %63

; <label>:44:                                     ; preds = %20, %54
  %45 = phi %struct.buffer_record* [ %55, %54 ], [ %9, %20 ]
  %46 = getelementptr inbounds %struct.buffer_record, %struct.buffer_record* %45, i64 0, i32 8
  %47 = load %struct.buffer_record*, %struct.buffer_record** %46, align 8
  %48 = icmp eq %struct.buffer_record* %47, null
  br i1 %48, label %49, label %54

; <label>:49:                                     ; preds = %44
  %50 = tail call fastcc zeroext i1 @load_buffer()
  br i1 %50, label %51, label %62

; <label>:51:                                     ; preds = %49
  %52 = load %struct.buffer_record*, %struct.buffer_record** %46, align 8
  %53 = icmp eq %struct.buffer_record* %52, null
  br i1 %53, label %21, label %54

; <label>:54:                                     ; preds = %44, %51
  %55 = phi %struct.buffer_record* [ %52, %51 ], [ %47, %44 ]
  %56 = getelementptr inbounds %struct.buffer_record, %struct.buffer_record* %55, i64 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds %struct.buffer_record, %struct.buffer_record* %55, i64 0, i32 4
  %59 = load i64, i64* %58, align 8
  %60 = add i64 %59, %57
  %61 = icmp ugt i64 %60, %0
  br i1 %61, label %23, label %44

; <label>:62:                                     ; preds = %49
  br label %63

; <label>:63:                                     ; preds = %62, %8, %4, %40
  %64 = phi %struct.cstring* [ %43, %40 ], [ null, %4 ], [ null, %8 ], [ null, %62 ]
  ret %struct.cstring* %64
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @save_line_to_file(%struct.cstring* nocapture readonly) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.cstring, %struct.cstring* %0, i64 0, i32 1
  %3 = load i8*, i8** %2, align 8
  %4 = getelementptr inbounds %struct.cstring, %struct.cstring* %0, i64 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @output_stream, align 8
  %7 = tail call i64 @fwrite_unlocked(i8* %3, i64 1, i64 %5, %struct._IO_FILE* %6) #10
  %8 = load i64, i64* %4, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %16, label %10

; <label>:10:                                     ; preds = %1
  %11 = tail call i32* @__errno_location() #5
  %12 = load i32, i32* %11, align 4
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.25, i64 0, i64 0), i32 5) #10
  %14 = load i8*, i8** @output_filename, align 8
  %15 = tail call i8* @quotearg_style(i32 4, i8* %14) #10
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %12, i8* %13, i8* %15) #10
  store %struct._IO_FILE* null, %struct._IO_FILE** @output_stream, align 8
  tail call fastcc void @cleanup_fatal() #13
  unreachable

; <label>:16:                                     ; preds = %1
  %17 = load i64, i64* @bytes_written, align 8
  %18 = add i64 %17, %7
  store i64 %18, i64* @bytes_written, align 8
  ret void
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define internal fastcc void @regexp_error(%struct.control* nocapture readonly, i64, i1 zeroext) unnamed_addr #0 {
  %4 = alloca [21 x i8], align 16
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.58, i64 0, i64 0), i32 5) #10
  %7 = load i8*, i8** @program_name, align 8
  %8 = load i8**, i8*** @global_argv, align 8
  %9 = getelementptr inbounds %struct.control, %struct.control* %0, i64 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i8*, i8** %8, i64 %11
  %13 = load i8*, i8** %12, align 8
  %14 = tail call i8* @quote(i8* %13) #10
  %15 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7, i8* %14) #10
  %16 = icmp eq i64 %1, 0
  br i1 %16, label %23, label %17

; <label>:17:                                     ; preds = %3
  %18 = getelementptr inbounds [21 x i8], [21 x i8]* %4, i64 0, i64 0
  call void @llvm.lifetime.start(i64 21, i8* nonnull %18) #10
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.59, i64 0, i64 0), i32 5) #10
  %21 = call i8* @umaxtostr(i64 %1, i8* nonnull %18) #10
  %22 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %19, i32 1, i8* %20, i8* %21) #10
  call void @llvm.lifetime.end(i64 21, i8* nonnull %18) #10
  br label %26

; <label>:23:                                     ; preds = %3
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %25 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %24, i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.60, i64 0, i64 0)) #10
  br label %26

; <label>:26:                                     ; preds = %23, %17
  br i1 %2, label %37, label %27

; <label>:27:                                     ; preds = %26
  %28 = call fastcc %struct.cstring* @remove_line() #10
  %29 = icmp eq %struct.cstring* %28, null
  br i1 %29, label %36, label %30

; <label>:30:                                     ; preds = %27
  br label %31

; <label>:31:                                     ; preds = %30, %31
  %32 = phi %struct.cstring* [ %33, %31 ], [ %28, %30 ]
  call fastcc void @save_line_to_file(%struct.cstring* nonnull %32) #10
  %33 = call fastcc %struct.cstring* @remove_line() #10
  %34 = icmp eq %struct.cstring* %33, null
  br i1 %34, label %35, label %31

; <label>:35:                                     ; preds = %31
  br label %36

; <label>:36:                                     ; preds = %35, %27
  call fastcc void @close_output_file()
  br label %37

; <label>:37:                                     ; preds = %36, %26
  call fastcc void @cleanup_fatal() #13
  unreachable
}

declare i32 @re_search(%struct.re_pattern_buffer*, i8*, i32, i32, i32, %struct.re_registers*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @load_buffer() unnamed_addr #4 {
  %1 = load i1, i1* @have_read_eof, align 1
  br i1 %1, label %225, label %2

; <label>:2:                                      ; preds = %0
  %3 = load i64, i64* @hold_count, align 8
  %4 = icmp ugt i64 %3, 8191
  %5 = select i1 %4, i64 %3, i64 8191
  br label %6

; <label>:6:                                      ; preds = %2, %192
  %7 = phi i64 [ %180, %192 ], [ %5, %2 ]
  %8 = icmp ugt i64 %7, 8191
  br i1 %8, label %9, label %13

; <label>:9:                                      ; preds = %6
  %10 = add i64 %7, -6144
  %11 = and i64 %10, -2048
  %12 = add i64 %11, 8191
  br label %13

; <label>:13:                                     ; preds = %6, %9
  %14 = phi i64 [ %12, %9 ], [ 8191, %6 ]
  %15 = tail call noalias i8* @xmalloc(i64 72) #10
  %16 = add i64 %14, 1
  %17 = tail call noalias i8* @xmalloc(i64 %16) #10
  %18 = getelementptr inbounds i8, i8* %15, i64 40
  %19 = bitcast i8* %18 to i8**
  store i8* %17, i8** %19, align 8
  %20 = bitcast i8* %15 to i64*
  store i64 %14, i64* %20, align 8
  %21 = getelementptr inbounds i8, i8* %15, i64 48
  tail call void @llvm.memset.p0i8.i64(i8* %21, i8 0, i64 16, i32 8, i1 false) #10
  %22 = getelementptr inbounds i8, i8* %15, i64 32
  %23 = bitcast i8* %22 to i64*
  store i64 0, i64* %23, align 8
  %24 = getelementptr inbounds i8, i8* %15, i64 8
  %25 = bitcast i8* %24 to i64*
  store i64 0, i64* %25, align 8
  %26 = load i64, i64* @last_line_number, align 8
  %27 = add i64 %26, 1
  %28 = getelementptr inbounds i8, i8* %15, i64 24
  %29 = bitcast i8* %28 to i64*
  store i64 %27, i64* %29, align 8
  %30 = getelementptr inbounds i8, i8* %15, i64 16
  %31 = bitcast i8* %30 to i64*
  store i64 %27, i64* %31, align 8
  %32 = getelementptr inbounds i8, i8* %15, i64 64
  %33 = bitcast i8* %32 to %struct.buffer_record**
  store %struct.buffer_record* null, %struct.buffer_record** %33, align 8
  %34 = load i64, i64* @hold_count, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %41, label %36

; <label>:36:                                     ; preds = %13
  %37 = load i8*, i8** @hold_area, align 8
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %37, i64 %34, i32 1, i1 false)
  %38 = getelementptr inbounds i8, i8* %17, i64 %34
  store i64 %34, i64* %25, align 8
  %39 = sub i64 %14, %34
  store i64 0, i64* @hold_count, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %50, label %41

; <label>:41:                                     ; preds = %13, %36
  %42 = phi i8* [ %38, %36 ], [ %17, %13 ]
  %43 = phi i64 [ %39, %36 ], [ %14, %13 ]
  %44 = tail call i64 @safe_read(i32 0, i8* %42, i64 %43) #10
  switch i64 %44, label %50 [
    i64 0, label %45
    i64 -1, label %46
  ]

; <label>:45:                                     ; preds = %41
  store i1 true, i1* @have_read_eof, align 1
  br label %50

; <label>:46:                                     ; preds = %41
  %47 = tail call i32* @__errno_location() #5
  %48 = load i32, i32* %47, align 4
  %49 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i32 5) #10
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %48, i8* %49) #10
  tail call fastcc void @cleanup_fatal() #14
  unreachable

; <label>:50:                                     ; preds = %36, %41, %45
  %51 = phi i64 [ 0, %36 ], [ %44, %41 ], [ 0, %45 ]
  %52 = load i64, i64* %25, align 8
  %53 = add i64 %52, %51
  store i64 %53, i64* %25, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %173, label %55

; <label>:55:                                     ; preds = %50
  %56 = load i8*, i8** %19, align 8
  %57 = tail call i8* @memchr(i8* %56, i32 10, i64 %53) #15
  %58 = icmp eq i8* %57, null
  br i1 %58, label %115, label %59

; <label>:59:                                     ; preds = %55
  %60 = bitcast i8* %21 to %struct.line**
  %61 = getelementptr inbounds i8, i8* %15, i64 56
  %62 = bitcast i8* %61 to %struct.line**
  %63 = bitcast i8* %61 to i8**
  %64 = bitcast i8* %21 to i8**
  %65 = bitcast i8* %61 to i64*
  br label %66

; <label>:66:                                     ; preds = %98, %59
  %67 = phi i8* [ %57, %59 ], [ %111, %98 ]
  %68 = phi i64 [ 0, %59 ], [ %110, %98 ]
  %69 = phi i64 [ %53, %59 ], [ %108, %98 ]
  %70 = phi i8* [ %56, %59 ], [ %109, %98 ]
  %71 = ptrtoint i8* %67 to i64
  %72 = ptrtoint i8* %70 to i64
  %73 = sub i64 %71, %72
  %74 = add nsw i64 %73, 1
  %75 = load %struct.line*, %struct.line** %60, align 8
  %76 = icmp eq %struct.line* %75, null
  br i1 %76, label %79, label %77

; <label>:77:                                     ; preds = %66
  %78 = load %struct.line*, %struct.line** %62, align 8
  br label %84

; <label>:79:                                     ; preds = %66
  %80 = tail call noalias i8* @xmalloc(i64 1312) #10
  %81 = getelementptr inbounds i8, i8* %80, i64 1304
  %82 = bitcast i8* %81 to %struct.line**
  store %struct.line* null, %struct.line** %82, align 8
  tail call void @llvm.memset.p0i8.i64(i8* %80, i8 0, i64 24, i32 8, i1 false) #10
  store i8* %80, i8** %63, align 8
  store i8* %80, i8** %64, align 8
  %83 = bitcast i8* %80 to %struct.line*
  br label %84

; <label>:84:                                     ; preds = %79, %77
  %85 = phi %struct.line* [ %78, %77 ], [ %83, %79 ]
  %86 = getelementptr inbounds %struct.line, %struct.line* %85, i64 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp eq i64 %87, 80
  br i1 %88, label %89, label %98

; <label>:89:                                     ; preds = %84
  %90 = tail call noalias i8* @xmalloc(i64 1312) #10
  %91 = getelementptr inbounds i8, i8* %90, i64 1304
  %92 = bitcast i8* %91 to %struct.line**
  store %struct.line* null, %struct.line** %92, align 8
  tail call void @llvm.memset.p0i8.i64(i8* %90, i8 0, i64 24, i32 8, i1 false) #10
  %93 = load %struct.line*, %struct.line** %62, align 8
  %94 = getelementptr inbounds %struct.line, %struct.line* %93, i64 0, i32 4
  %95 = bitcast %struct.line** %94 to i8**
  store i8* %90, i8** %95, align 8
  %96 = ptrtoint i8* %90 to i64
  store i64 %96, i64* %65, align 8
  %97 = bitcast i8* %90 to %struct.line*
  br label %98

; <label>:98:                                     ; preds = %89, %84
  %99 = phi %struct.line* [ %97, %89 ], [ %85, %84 ]
  %100 = getelementptr inbounds %struct.line, %struct.line* %99, i64 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = getelementptr inbounds %struct.line, %struct.line* %99, i64 0, i32 3, i64 %101, i32 1
  store i8* %70, i8** %102, align 8
  %103 = getelementptr inbounds %struct.line, %struct.line* %99, i64 0, i32 3, i64 %101, i32 0
  store i64 %74, i64* %103, align 8
  %104 = bitcast %struct.line* %99 to <2 x i64>*
  %105 = load <2 x i64>, <2 x i64>* %104, align 8
  %106 = add <2 x i64> %105, <i64 1, i64 1>
  %107 = bitcast %struct.line* %99 to <2 x i64>*
  store <2 x i64> %106, <2 x i64>* %107, align 8
  %108 = sub i64 %69, %74
  %109 = getelementptr inbounds i8, i8* %67, i64 1
  %110 = add i64 %68, 1
  %111 = tail call i8* @memchr(i8* %109, i32 10, i64 %108) #15
  %112 = icmp eq i8* %111, null
  br i1 %112, label %113, label %66

; <label>:113:                                    ; preds = %98
  %114 = icmp eq i64 %108, 0
  br i1 %114, label %167, label %115

; <label>:115:                                    ; preds = %113, %55
  %116 = phi i64 [ %110, %113 ], [ 0, %55 ]
  %117 = phi i64 [ %108, %113 ], [ %53, %55 ]
  %118 = phi i8* [ %109, %113 ], [ %56, %55 ]
  %119 = load i1, i1* @have_read_eof, align 1
  br i1 %119, label %120, label %164

; <label>:120:                                    ; preds = %115
  %121 = bitcast i8* %21 to %struct.line**
  %122 = load %struct.line*, %struct.line** %121, align 8
  %123 = icmp eq %struct.line* %122, null
  br i1 %123, label %128, label %124

; <label>:124:                                    ; preds = %120
  %125 = getelementptr inbounds i8, i8* %15, i64 56
  %126 = bitcast i8* %125 to %struct.line**
  %127 = load %struct.line*, %struct.line** %126, align 8
  br label %137

; <label>:128:                                    ; preds = %120
  %129 = tail call noalias i8* @xmalloc(i64 1312) #10
  %130 = getelementptr inbounds i8, i8* %129, i64 1304
  %131 = bitcast i8* %130 to %struct.line**
  store %struct.line* null, %struct.line** %131, align 8
  tail call void @llvm.memset.p0i8.i64(i8* %129, i8 0, i64 24, i32 8, i1 false) #10
  %132 = getelementptr inbounds i8, i8* %15, i64 56
  %133 = bitcast i8* %132 to %struct.line**
  %134 = bitcast i8* %132 to i8**
  store i8* %129, i8** %134, align 8
  %135 = bitcast i8* %21 to i8**
  store i8* %129, i8** %135, align 8
  %136 = bitcast i8* %129 to %struct.line*
  br label %137

; <label>:137:                                    ; preds = %128, %124
  %138 = phi %struct.line** [ %126, %124 ], [ %133, %128 ]
  %139 = phi %struct.line* [ %127, %124 ], [ %136, %128 ]
  %140 = getelementptr inbounds %struct.line, %struct.line* %139, i64 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = icmp eq i64 %141, 80
  br i1 %142, label %143, label %153

; <label>:143:                                    ; preds = %137
  %144 = tail call noalias i8* @xmalloc(i64 1312) #10
  %145 = getelementptr inbounds i8, i8* %144, i64 1304
  %146 = bitcast i8* %145 to %struct.line**
  store %struct.line* null, %struct.line** %146, align 8
  tail call void @llvm.memset.p0i8.i64(i8* %144, i8 0, i64 24, i32 8, i1 false) #10
  %147 = load %struct.line*, %struct.line** %138, align 8
  %148 = getelementptr inbounds %struct.line, %struct.line* %147, i64 0, i32 4
  %149 = bitcast %struct.line** %148 to i8**
  store i8* %144, i8** %149, align 8
  %150 = ptrtoint i8* %144 to i64
  %151 = bitcast %struct.line** %138 to i64*
  store i64 %150, i64* %151, align 8
  %152 = bitcast i8* %144 to %struct.line*
  br label %153

; <label>:153:                                    ; preds = %143, %137
  %154 = phi %struct.line* [ %152, %143 ], [ %139, %137 ]
  %155 = getelementptr inbounds %struct.line, %struct.line* %154, i64 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = getelementptr inbounds %struct.line, %struct.line* %154, i64 0, i32 3, i64 %156, i32 1
  store i8* %118, i8** %157, align 8
  %158 = getelementptr inbounds %struct.line, %struct.line* %154, i64 0, i32 3, i64 %156, i32 0
  store i64 %117, i64* %158, align 8
  %159 = bitcast %struct.line* %154 to <2 x i64>*
  %160 = load <2 x i64>, <2 x i64>* %159, align 8
  %161 = add <2 x i64> %160, <i64 1, i64 1>
  %162 = bitcast %struct.line* %154 to <2 x i64>*
  store <2 x i64> %161, <2 x i64>* %162, align 8
  %163 = add i64 %116, 1
  br label %167

; <label>:164:                                    ; preds = %115
  %165 = tail call i8* @xmemdup(i8* %118, i64 %117) #10
  %166 = load i8*, i8** @hold_area, align 8
  tail call void @free(i8* %166) #10
  store i8* %165, i8** @hold_area, align 8
  store i64 %117, i64* @hold_count, align 8
  br label %167

; <label>:167:                                    ; preds = %113, %153, %164
  %168 = phi i64 [ %163, %153 ], [ %116, %164 ], [ %110, %113 ]
  store i64 %168, i64* %23, align 8
  %169 = load i64, i64* @last_line_number, align 8
  %170 = add i64 %169, 1
  store i64 %170, i64* %31, align 8
  store i64 %170, i64* %29, align 8
  %171 = add i64 %169, %168
  store i64 %171, i64* @last_line_number, align 8
  %172 = icmp eq i64 %168, 0
  br i1 %172, label %173, label %194

; <label>:173:                                    ; preds = %167, %50
  %174 = load i1, i1* @have_read_eof, align 1
  br i1 %174, label %211, label %175

; <label>:175:                                    ; preds = %173
  %176 = load i64, i64* %20, align 8
  %177 = icmp ugt i64 %176, 4611686018427387903
  br i1 %177, label %178, label %179

; <label>:178:                                    ; preds = %175
  tail call void @xalloc_die() #13
  unreachable

; <label>:179:                                    ; preds = %175
  %180 = shl i64 %176, 1
  %181 = bitcast i8* %21 to %struct.line**
  %182 = load %struct.line*, %struct.line** %181, align 8
  %183 = icmp eq %struct.line* %182, null
  br i1 %183, label %192, label %184

; <label>:184:                                    ; preds = %179
  br label %185

; <label>:185:                                    ; preds = %184, %185
  %186 = phi %struct.line* [ %189, %185 ], [ %182, %184 ]
  %187 = bitcast %struct.line* %186 to i8*
  %188 = getelementptr inbounds %struct.line, %struct.line* %186, i64 0, i32 4
  %189 = load %struct.line*, %struct.line** %188, align 8
  tail call void @free(i8* %187) #10
  %190 = icmp eq %struct.line* %189, null
  br i1 %190, label %191, label %185

; <label>:191:                                    ; preds = %185
  br label %192

; <label>:192:                                    ; preds = %191, %179
  store %struct.line* null, %struct.line** %181, align 8
  %193 = load i8*, i8** %19, align 8
  tail call void @free(i8* %193) #10
  tail call void @free(i8* %15) #10
  br label %6

; <label>:194:                                    ; preds = %167
  store %struct.buffer_record* null, %struct.buffer_record** %33, align 8
  %195 = bitcast i8* %21 to i64*
  %196 = load i64, i64* %195, align 8
  %197 = getelementptr inbounds i8, i8* %15, i64 56
  %198 = bitcast i8* %197 to i64*
  store i64 %196, i64* %198, align 8
  %199 = load %struct.buffer_record*, %struct.buffer_record** @head, align 8
  %200 = icmp eq %struct.buffer_record* %199, null
  br i1 %200, label %209, label %201

; <label>:201:                                    ; preds = %194
  br label %202

; <label>:202:                                    ; preds = %201, %202
  %203 = phi %struct.buffer_record* [ %205, %202 ], [ %199, %201 ]
  %204 = getelementptr inbounds %struct.buffer_record, %struct.buffer_record* %203, i64 0, i32 8
  %205 = load %struct.buffer_record*, %struct.buffer_record** %204, align 8
  %206 = icmp eq %struct.buffer_record* %205, null
  br i1 %206, label %207, label %202

; <label>:207:                                    ; preds = %202
  %208 = bitcast %struct.buffer_record** %204 to i8**
  br label %209

; <label>:209:                                    ; preds = %207, %194
  %210 = phi i8** [ bitcast (%struct.buffer_record** @head to i8**), %194 ], [ %208, %207 ]
  store i8* %15, i8** %210, align 8
  br label %225

; <label>:211:                                    ; preds = %173
  %212 = bitcast i8* %21 to %struct.line**
  %213 = load %struct.line*, %struct.line** %212, align 8
  %214 = icmp eq %struct.line* %213, null
  br i1 %214, label %223, label %215

; <label>:215:                                    ; preds = %211
  br label %216

; <label>:216:                                    ; preds = %215, %216
  %217 = phi %struct.line* [ %220, %216 ], [ %213, %215 ]
  %218 = bitcast %struct.line* %217 to i8*
  %219 = getelementptr inbounds %struct.line, %struct.line* %217, i64 0, i32 4
  %220 = load %struct.line*, %struct.line** %219, align 8
  tail call void @free(i8* %218) #10
  %221 = icmp eq %struct.line* %220, null
  br i1 %221, label %222, label %216

; <label>:222:                                    ; preds = %216
  br label %223

; <label>:223:                                    ; preds = %222, %211
  store %struct.line* null, %struct.line** %212, align 8
  %224 = load i8*, i8** %19, align 8
  tail call void @free(i8* %224) #10
  tail call void @free(i8* %15) #10
  br label %225

; <label>:225:                                    ; preds = %209, %223, %0
  %226 = phi i1 [ false, %0 ], [ false, %223 ], [ true, %209 ]
  ret i1 %226
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define internal fastcc void @handle_line_error(%struct.control* nocapture readonly, i64) unnamed_addr #0 {
  %3 = alloca [21 x i8], align 16
  %4 = getelementptr inbounds [21 x i8], [21 x i8]* %3, i64 0, i64 0
  call void @llvm.lifetime.start(i64 21, i8* nonnull %4) #10
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.63, i64 0, i64 0), i32 5) #10
  %7 = load i8*, i8** @program_name, align 8
  %8 = getelementptr inbounds %struct.control, %struct.control* %0, i64 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = call i8* @umaxtostr(i64 %9, i8* nonnull %4) #10
  %11 = call i8* @quote(i8* %10) #10
  %12 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7, i8* %11) #10
  %13 = icmp eq i64 %1, 0
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  br i1 %13, label %19, label %15

; <label>:15:                                     ; preds = %2
  %16 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.59, i64 0, i64 0), i32 5) #10
  %17 = call i8* @umaxtostr(i64 %1, i8* nonnull %4) #10
  %18 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %14, i32 1, i8* %16, i8* %17) #10
  br label %21

; <label>:19:                                     ; preds = %2
  %20 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %14, i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.60, i64 0, i64 0)) #10
  br label %21

; <label>:21:                                     ; preds = %19, %15
  call fastcc void @cleanup_fatal() #13
  unreachable
}

declare i32 @close(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i8* @memchr(i8*, i32, i64) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #1

declare i64 @fwrite_unlocked(i8*, i64, i64, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #6

; Function Attrs: nounwind
declare void (i32)* @signal(i32, void (i32)*) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @raise(i32) local_unnamed_addr #1

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #2

declare i32 @fputs_unlocked(i8*, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #8

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #4 {
  store i8* %0, i8** @file_name, align 8
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #4 {
  %2 = zext i1 %0 to i8
  store i8 %2, i8* @ignore_EPIPE, align 1
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #4 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #10
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %21, label %4

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1
  %6 = icmp eq i8 %5, 0
  %7 = tail call i32* @__errno_location() #5
  br i1 %6, label %11, label %8

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4
  %10 = icmp eq i32 %9, 32
  br i1 %10, label %21, label %11

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.66, i64 0, i64 0), i32 5) #10
  %13 = load i8*, i8** @file_name, align 8
  %14 = icmp eq i8* %13, null
  %15 = load i32, i32* %7, align 4
  br i1 %14, label %18, label %16

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #10
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.67, i64 0, i64 0), i8* %17, i8* %12) #10
  br label %19

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.68, i64 0, i64 0), i8* %12) #10
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
define i32 @fd_reopen(i32, i8* nocapture readonly, i32, i32) local_unnamed_addr #4 {
  %5 = tail call i32 (i8*, i32, ...) @open(i8* %1, i32 %2, i32 %3) #10
  %6 = icmp eq i32 %5, %0
  %7 = icmp slt i32 %5, 0
  %8 = or i1 %6, %7
  br i1 %8, label %14, label %9

; <label>:9:                                      ; preds = %4
  %10 = tail call i32 @dup2(i32 %5, i32 %0) #10
  %11 = tail call i32* @__errno_location() #5
  %12 = load i32, i32* %11, align 4
  %13 = tail call i32 @close(i32 %5) #10
  store i32 %12, i32* %11, align 4
  br label %14

; <label>:14:                                     ; preds = %4, %9
  %15 = phi i32 [ %10, %9 ], [ %5, %4 ]
  ret i32 %15
}

declare i32 @open(i8* nocapture readonly, i32, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @dup2(i32, i32) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define %struct._IO_FILE* @fopen_safer(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #4 {
  %3 = tail call %struct._IO_FILE* @fopen(i8* %0, i8* %1)
  %4 = icmp eq %struct._IO_FILE* %3, null
  br i1 %4, label %25, label %5

; <label>:5:                                      ; preds = %2
  %6 = tail call i32 @fileno(%struct._IO_FILE* nonnull %3) #10
  %7 = icmp ult i32 %6, 3
  br i1 %7, label %8, label %25

; <label>:8:                                      ; preds = %5
  %9 = tail call i32 @dup_safer(i32 %6) #10
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %15

; <label>:11:                                     ; preds = %8
  %12 = tail call i32* @__errno_location() #5
  %13 = load i32, i32* %12, align 4
  %14 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %3) #10
  store i32 %13, i32* %12, align 4
  br label %25

; <label>:15:                                     ; preds = %8
  %16 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %3) #10
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %21

; <label>:18:                                     ; preds = %15
  %19 = tail call %struct._IO_FILE* @fdopen(i32 %9, i8* %1) #10
  %20 = icmp eq %struct._IO_FILE* %19, null
  br i1 %20, label %21, label %25

; <label>:21:                                     ; preds = %18, %15
  %22 = tail call i32* @__errno_location() #5
  %23 = load i32, i32* %22, align 4
  %24 = tail call i32 @close(i32 %9) #10
  store i32 %23, i32* %22, align 4
  br label %25

; <label>:25:                                     ; preds = %5, %18, %2, %21, %11
  %26 = phi %struct._IO_FILE* [ null, %11 ], [ null, %21 ], [ null, %2 ], [ %19, %18 ], [ %3, %5 ]
  ret %struct._IO_FILE* %26
}

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #1

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fdopen(i32, i8* nocapture readonly) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define i8* @umaxtostr(i64, i8*) local_unnamed_addr #4 {
  %3 = getelementptr inbounds i8, i8* %1, i64 20
  store i8 0, i8* %3, align 1
  br label %4

; <label>:4:                                      ; preds = %2, %4
  %5 = phi i64 [ %0, %2 ], [ %11, %4 ]
  %6 = phi i8* [ %3, %2 ], [ %10, %4 ]
  %7 = urem i64 %5, 10
  %8 = trunc i64 %7 to i8
  %9 = or i8 %8, 48
  %10 = getelementptr inbounds i8, i8* %6, i64 -1
  store i8 %9, i8* %10, align 1
  %11 = udiv i64 %5, 10
  %12 = icmp ugt i64 %5, 9
  br i1 %12, label %4, label %13

; <label>:13:                                     ; preds = %4
  ret i8* %10
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #4 {
  %2 = icmp eq i8* %0, null
  br i1 %2, label %3, label %6

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.81, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #16
  tail call void @abort() #14
  unreachable

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #15
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
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.82, i64 0, i64 0), i64 7) #15
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %24

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.83, i64 0, i64 0), i64 3) #15
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

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #4 {
  %2 = tail call i32* @__errno_location() #5
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
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #4 {
  %3 = icmp ne %struct.quoting_options* %0, null
  %4 = select i1 %3, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0
  store i32 %1, i32* %5, align 8
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #4 {
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
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #4 {
  %3 = icmp eq %struct.quoting_options* %0, null
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1
  %6 = load i32, i32* %5, align 4
  store i32 %1, i32* %5, align 4
  ret i32 %6
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #4 {
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
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #4 {
  %6 = icmp ne %struct.quoting_options* %4, null
  %7 = select i1 %6, %struct.quoting_options* %4, %struct.quoting_options* @default_quoting_options
  %8 = tail call i32* @__errno_location() #5
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
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #4 {
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
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.94, i64 0, i64 0), i32 %28)
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.95, i64 0, i64 0), i32 %28)
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
  %75 = call i64 @strlen(i8* %53) #15
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
  %100 = phi i8* [ %32, %93 ], [ %53, %73 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.96, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.96, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.96, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.95, i64 0, i64 0), %92 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.95, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.95, i64 0, i64 0), %85 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.96, i64 0, i64 0), %41 ]
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
  %144 = call i64 @strlen(i8* %2) #15
  br label %145

; <label>:145:                                    ; preds = %140, %143
  %146 = phi i64 [ %144, %143 ], [ %127, %140 ]
  %147 = icmp ugt i64 %141, %146
  br i1 %147, label %155, label %148

; <label>:148:                                    ; preds = %145
  %149 = getelementptr inbounds i8, i8* %2, i64 %124
  %150 = call i32 @memcmp(i8* %149, i8* %100, i64 %101) #15
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
  %300 = tail call i16** @__ctype_b_loc() #5
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
  %311 = call i64 @strlen(i8* nonnull %2) #15
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
  %361 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #15
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
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #4 {
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
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.97, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.98, i64 0, i64 0)
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
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.99, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.100, i64 0, i64 0)
  br label %75

; <label>:72:                                     ; preds = %5, %30, %26, %22, %16, %10, %64, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.96, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.95, i64 0, i64 0)
  br label %75

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #8

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #4 {
  %4 = icmp ne %struct.quoting_options* %2, null
  %5 = select i1 %4, %struct.quoting_options* %2, %struct.quoting_options* @default_quoting_options
  %6 = tail call i32* @__errno_location() #5
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
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #4 {
  %5 = icmp ne %struct.quoting_options* %3, null
  %6 = select i1 %5, %struct.quoting_options* %3, %struct.quoting_options* @default_quoting_options
  %7 = tail call i32* @__errno_location() #5
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
define void @quotearg_free() local_unnamed_addr #4 {
  %1 = load %struct.cstring*, %struct.cstring** @slotvec, align 8
  %2 = load i32, i32* @nslots, align 4
  %3 = icmp sgt i32 %2, 1
  br i1 %3, label %4, label %14

; <label>:4:                                      ; preds = %0
  br label %5

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  %7 = getelementptr inbounds %struct.cstring, %struct.cstring* %1, i64 %6, i32 1
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
  %15 = getelementptr inbounds %struct.cstring, %struct.cstring* %1, i64 0, i32 1
  %16 = load i8*, i8** %15, align 8
  %17 = icmp eq i8* %16, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0)
  br i1 %17, label %19, label %18

; <label>:18:                                     ; preds = %14
  tail call void @free(i8* %16) #10
  store i64 256, i64* getelementptr inbounds (%struct.cstring, %struct.cstring* @slotvec0, i64 0, i32 0), align 8
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.cstring, %struct.cstring* @slotvec0, i64 0, i32 1), align 8
  br label %19

; <label>:19:                                     ; preds = %14, %18
  %20 = icmp eq %struct.cstring* %1, @slotvec0
  br i1 %20, label %23, label %21

; <label>:21:                                     ; preds = %19
  %22 = bitcast %struct.cstring* %1 to i8*
  tail call void @free(i8* %22) #10
  store %struct.cstring* @slotvec0, %struct.cstring** @slotvec, align 8
  br label %23

; <label>:23:                                     ; preds = %19, %21
  store i32 1, i32* @nslots, align 4
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #4 {
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options)
  ret i8* %3
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #4 {
  %5 = tail call i32* @__errno_location() #5
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.cstring*, %struct.cstring** @slotvec, align 8
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
  %14 = icmp eq %struct.cstring* %7, @slotvec0
  %15 = icmp ugt i32 %0, 2147483646
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14
  unreachable

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.cstring* %7 to i8*
  %19 = select i1 %14, i8* null, i8* %18
  %20 = add nsw i32 %0, 1
  %21 = sext i32 %20 to i64
  %22 = shl nsw i64 %21, 4
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #10
  %24 = bitcast i8* %23 to %struct.cstring*
  store i8* %23, i8** bitcast (%struct.cstring** @slotvec to i8**), align 8
  br i1 %14, label %25, label %26

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.cstring* @slotvec0 to i8*), i64 16, i32 8, i1 false)
  br label %26

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.cstring, %struct.cstring* %24, i64 %28
  %30 = bitcast %struct.cstring* %29 to i8*
  %31 = sub nsw i32 %20, %27
  %32 = sext i32 %31 to i64
  %33 = shl nsw i64 %32, 4
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false)
  store i32 %20, i32* @nslots, align 4
  br label %34

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.cstring* [ %24, %26 ], [ %7, %10 ]
  %36 = sext i32 %0 to i64
  %37 = getelementptr inbounds %struct.cstring, %struct.cstring* %35, i64 %36, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.cstring, %struct.cstring* %35, i64 %36, i32 1
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

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #4 {
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options)
  ret i8* %4
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #4 {
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #10
  ret i8* %2
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #4 {
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #10
  ret i8* %3
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #4 {
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
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #4 {
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
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #4 {
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
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #4 {
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
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #4 {
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
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #4 {
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
define i8* @quotearg_colon(i8*) local_unnamed_addr #4 {
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
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #4 {
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
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #4 {
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
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #4 {
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
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #4 {
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
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #4 {
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
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #4 {
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
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #4 {
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options)
  ret i8* %4
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #4 {
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #10
  ret i8* %3
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #4 {
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10
  ret i8* %3
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #4 {
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10
  ret i8* %2
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @safe_read(i32, i8* nocapture, i64) local_unnamed_addr #4 {
  br label %4

; <label>:4:                                      ; preds = %13, %3
  %5 = phi i64 [ 2147475456, %13 ], [ %2, %3 ]
  br label %6

; <label>:6:                                      ; preds = %4, %9
  %7 = tail call i64 @read(i32 %0, i8* %1, i64 %5) #10
  %8 = icmp sgt i64 %7, -1
  br i1 %8, label %17, label %9

; <label>:9:                                      ; preds = %6
  %10 = tail call i32* @__errno_location() #5
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

declare i64 @read(i32, i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @dup_safer(i32) local_unnamed_addr #4 {
  %2 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 0, i32 3) #10
  ret i32 %2
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #4 {
  %7 = icmp eq i8* %1, null
  br i1 %7, label %10, label %8

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.113, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #10
  br label %12

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.114, i64 0, i64 0), i8* %2, i8* %3) #10
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.115, i64 0, i64 0), i32 5) #10
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #10
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.116, i64 0, i64 0), i32 5) #10
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
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.117, i64 0, i64 0), i32 5) #10
  %20 = load i8*, i8** %4, align 8
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #10
  br label %146

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.118, i64 0, i64 0), i32 5) #10
  %24 = load i8*, i8** %4, align 8
  %25 = getelementptr inbounds i8*, i8** %4, i64 1
  %26 = load i8*, i8** %25, align 8
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #10
  br label %146

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.119, i64 0, i64 0), i32 5) #10
  %30 = load i8*, i8** %4, align 8
  %31 = getelementptr inbounds i8*, i8** %4, i64 1
  %32 = load i8*, i8** %31, align 8
  %33 = getelementptr inbounds i8*, i8** %4, i64 2
  %34 = load i8*, i8** %33, align 8
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #10
  br label %146

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.120, i64 0, i64 0), i32 5) #10
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
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.121, i64 0, i64 0), i32 5) #10
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
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.122, i64 0, i64 0), i32 5) #10
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
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.123, i64 0, i64 0), i32 5) #10
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
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.124, i64 0, i64 0), i32 5) #10
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
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.125, i64 0, i64 0), i32 5) #10
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
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.126, i64 0, i64 0), i32 5) #10
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
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #4 {
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
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #4 {
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
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #4 {
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
define void @emit_bug_reporting_address() local_unnamed_addr #4 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.129, i64 0, i64 0), i32 5) #10
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.130, i64 0, i64 0)) #10
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.131, i64 0, i64 0), i32 5) #10
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.132, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.133, i64 0, i64 0)) #10
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19.134, i64 0, i64 0), i32 5) #10
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
declare noalias i8* @malloc(i64) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #4 {
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
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #4 {
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
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #4 {
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
define noalias i8* @xzalloc(i64) local_unnamed_addr #4 {
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
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #4 {
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
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #4 {
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
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #4 {
  %2 = tail call i64 @strlen(i8* %0) #15
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

; Function Attrs: nounwind sspstrong uwtable
define i64 @xnumtoimax(i8*, i32, i64, i64, i8*, i8*, i32) local_unnamed_addr #4 {
  %8 = alloca i64, align 8
  %9 = bitcast i64* %8 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %9) #10
  %10 = call i32 @xstrtoimax(i8* %0, i8** null, i32 %1, i64* nonnull %8, i8* %4) #10
  switch i32 %10, label %11 [
    i32 0, label %13
    i32 1, label %26
    i32 3, label %28
  ]

; <label>:11:                                     ; preds = %7
  %12 = tail call i32* @__errno_location() #5
  br label %30

; <label>:13:                                     ; preds = %7
  %14 = load i64, i64* %8, align 8
  %15 = icmp slt i64 %14, %2
  %16 = icmp sgt i64 %14, %3
  %17 = or i1 %15, %16
  br i1 %17, label %18, label %39

; <label>:18:                                     ; preds = %13
  %19 = icmp sgt i64 %14, 1073741823
  br i1 %19, label %20, label %22

; <label>:20:                                     ; preds = %18
  %21 = tail call i32* @__errno_location() #5
  store i32 75, i32* %21, align 4
  br label %30

; <label>:22:                                     ; preds = %18
  %23 = icmp slt i64 %14, -1073741824
  %24 = tail call i32* @__errno_location() #5
  %25 = select i1 %23, i32 75, i32 34
  store i32 %25, i32* %24, align 4
  br label %30

; <label>:26:                                     ; preds = %7
  %27 = tail call i32* @__errno_location() #5
  store i32 75, i32* %27, align 4
  br label %30

; <label>:28:                                     ; preds = %7
  %29 = tail call i32* @__errno_location() #5
  store i32 0, i32* %29, align 4
  br label %30

; <label>:30:                                     ; preds = %11, %20, %22, %26, %28
  %31 = phi i32* [ %12, %11 ], [ %21, %20 ], [ %24, %22 ], [ %27, %26 ], [ %29, %28 ]
  %32 = icmp ne i32 %6, 0
  %33 = select i1 %32, i32 %6, i32 1
  %34 = load i32, i32* %31, align 4
  %35 = icmp eq i32 %34, 22
  %36 = select i1 %35, i32 0, i32 %34
  %37 = call i8* @quote(i8* %0) #10
  call void (i32, i32, i8*, ...) @error(i32 %33, i32 %36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.143, i64 0, i64 0), i8* %5, i8* %37) #10
  %38 = load i64, i64* %8, align 8
  br label %39

; <label>:39:                                     ; preds = %13, %30
  %40 = phi i64 [ %14, %13 ], [ %38, %30 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %9) #10
  ret i64 %40
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @xdectoimax(i8*, i64, i64, i8*, i8*, i32) local_unnamed_addr #4 {
  %7 = tail call i64 @xnumtoimax(i8* %0, i32 10, i64 %1, i64 %2, i8* %3, i8* %4, i32 %5)
  ret i64 %7
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @xstrtoimax(i8*, i8**, i32, i64* nocapture, i8* readonly) local_unnamed_addr #4 {
  %6 = alloca i8*, align 8
  %7 = bitcast i8** %6 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %7) #10
  %8 = icmp ult i32 %2, 37
  br i1 %8, label %10, label %9

; <label>:9:                                      ; preds = %5
  tail call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.148, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.149, i64 0, i64 0), i32 96, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @__PRETTY_FUNCTION__.xstrtoimax, i64 0, i64 0)) #14
  unreachable

; <label>:10:                                     ; preds = %5
  %11 = icmp ne i8** %1, null
  %12 = select i1 %11, i8** %1, i8** %6
  %13 = tail call i32* @__errno_location() #5
  store i32 0, i32* %13, align 4
  %14 = call i64 @__strtol_internal(i8* %0, i8** %12, i32 %2, i32 0) #10
  %15 = load i8*, i8** %12, align 8
  %16 = icmp eq i8* %15, %0
  br i1 %16, label %17, label %26

; <label>:17:                                     ; preds = %10
  %18 = icmp eq i8* %4, null
  br i1 %18, label %196, label %19

; <label>:19:                                     ; preds = %17
  %20 = load i8, i8* %0, align 1
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %196, label %22

; <label>:22:                                     ; preds = %19
  %23 = sext i8 %20 to i32
  %24 = call i8* @strchr(i8* nonnull %4, i32 %23) #10
  %25 = icmp eq i8* %24, null
  br i1 %25, label %196, label %33

; <label>:26:                                     ; preds = %10
  %27 = load i32, i32* %13, align 4
  switch i32 %27, label %196 [
    i32 0, label %29
    i32 34, label %28
  ]

; <label>:28:                                     ; preds = %26
  br label %29

; <label>:29:                                     ; preds = %26, %28
  %30 = phi i32 [ 1, %28 ], [ 0, %26 ]
  %31 = icmp eq i8* %4, null
  br i1 %31, label %32, label %33

; <label>:32:                                     ; preds = %29
  store i64 %14, i64* %3, align 8
  br label %196

; <label>:33:                                     ; preds = %22, %29
  %34 = phi i32 [ %30, %29 ], [ 0, %22 ]
  %35 = phi i64 [ %14, %29 ], [ 1, %22 ]
  %36 = load i8, i8* %15, align 1
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %193, label %38

; <label>:38:                                     ; preds = %33
  %39 = sext i8 %36 to i32
  %40 = call i8* @strchr(i8* nonnull %4, i32 %39) #10
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %44

; <label>:42:                                     ; preds = %38
  store i64 %35, i64* %3, align 8
  %43 = or i32 %34, 2
  br label %196

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
  ]

; <label>:45:                                     ; preds = %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44
  %46 = call i8* @strchr(i8* nonnull %4, i32 48) #10
  %47 = icmp eq i8* %46, null
  br i1 %47, label %58, label %48

; <label>:48:                                     ; preds = %45
  %49 = getelementptr inbounds i8, i8* %15, i64 1
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  switch i32 %51, label %58 [
    i32 105, label %52
    i32 66, label %57
    i32 68, label %57
  ]

; <label>:52:                                     ; preds = %48
  %53 = getelementptr inbounds i8, i8* %15, i64 2
  %54 = load i8, i8* %53, align 1
  %55 = icmp eq i8 %54, 66
  %56 = select i1 %55, i64 3, i64 1
  br label %58

; <label>:57:                                     ; preds = %48, %48
  br label %58

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
  ]

; <label>:61:                                     ; preds = %58
  %62 = icmp slt i64 %35, -18014398509481984
  br i1 %62, label %184, label %63

; <label>:63:                                     ; preds = %61
  %64 = icmp sgt i64 %35, 18014398509481983
  %65 = shl nsw i64 %35, 9
  %66 = select i1 %64, i64 9223372036854775807, i64 %65
  %67 = zext i1 %64 to i32
  br label %184

; <label>:68:                                     ; preds = %58
  %69 = icmp slt i64 %35, -9007199254740992
  br i1 %69, label %184, label %70

; <label>:70:                                     ; preds = %68
  %71 = icmp sgt i64 %35, 9007199254740991
  %72 = shl nsw i64 %35, 10
  %73 = select i1 %71, i64 9223372036854775807, i64 %72
  %74 = zext i1 %71 to i32
  br label %184

; <label>:75:                                     ; preds = %58
  %76 = sdiv i64 -9223372036854775808, %59
  %77 = icmp slt i64 %35, %76
  br i1 %77, label %84, label %78

; <label>:78:                                     ; preds = %75
  %79 = udiv i64 9223372036854775807, %59
  %80 = icmp slt i64 %79, %35
  %81 = mul nsw i64 %35, %59
  %82 = select i1 %80, i64 9223372036854775807, i64 %81
  %83 = zext i1 %80 to i32
  br label %84

; <label>:84:                                     ; preds = %78, %75
  %85 = phi i64 [ -9223372036854775808, %75 ], [ %82, %78 ]
  %86 = phi i32 [ 1, %75 ], [ %83, %78 ]
  %87 = icmp slt i64 %85, %76
  br i1 %87, label %204, label %198

; <label>:88:                                     ; preds = %58, %58
  %89 = sdiv i64 -9223372036854775808, %59
  %90 = icmp slt i64 %35, %89
  br i1 %90, label %97, label %91

; <label>:91:                                     ; preds = %88
  %92 = udiv i64 9223372036854775807, %59
  %93 = icmp slt i64 %92, %35
  %94 = mul nsw i64 %35, %59
  %95 = select i1 %93, i64 9223372036854775807, i64 %94
  %96 = zext i1 %93 to i32
  br label %97

; <label>:97:                                     ; preds = %91, %88
  %98 = phi i64 [ -9223372036854775808, %88 ], [ %95, %91 ]
  %99 = phi i32 [ 1, %88 ], [ %96, %91 ]
  %100 = icmp slt i64 %98, %89
  br i1 %100, label %258, label %252

; <label>:101:                                    ; preds = %58, %58
  %102 = sdiv i64 -9223372036854775808, %59
  %103 = icmp slt i64 %35, %102
  br i1 %103, label %184, label %104

; <label>:104:                                    ; preds = %101
  %105 = udiv i64 9223372036854775807, %59
  %106 = icmp slt i64 %105, %35
  %107 = mul nsw i64 %35, %59
  %108 = select i1 %106, i64 9223372036854775807, i64 %107
  %109 = zext i1 %106 to i32
  br label %184

; <label>:110:                                    ; preds = %58, %58
  %111 = sdiv i64 -9223372036854775808, %59
  %112 = icmp slt i64 %35, %111
  br i1 %112, label %119, label %113

; <label>:113:                                    ; preds = %110
  %114 = udiv i64 9223372036854775807, %59
  %115 = icmp slt i64 %114, %35
  %116 = mul nsw i64 %35, %59
  %117 = select i1 %115, i64 9223372036854775807, i64 %116
  %118 = zext i1 %115 to i32
  br label %119

; <label>:119:                                    ; preds = %113, %110
  %120 = phi i64 [ -9223372036854775808, %110 ], [ %117, %113 ]
  %121 = phi i32 [ 1, %110 ], [ %118, %113 ]
  %122 = icmp slt i64 %120, %111
  br i1 %122, label %279, label %273

; <label>:123:                                    ; preds = %58
  %124 = sdiv i64 -9223372036854775808, %59
  %125 = icmp slt i64 %35, %124
  br i1 %125, label %132, label %126

; <label>:126:                                    ; preds = %123
  %127 = udiv i64 9223372036854775807, %59
  %128 = icmp slt i64 %127, %35
  %129 = mul nsw i64 %35, %59
  %130 = select i1 %128, i64 9223372036854775807, i64 %129
  %131 = zext i1 %128 to i32
  br label %132

; <label>:132:                                    ; preds = %126, %123
  %133 = phi i64 [ -9223372036854775808, %123 ], [ %130, %126 ]
  %134 = phi i32 [ 1, %123 ], [ %131, %126 ]
  %135 = icmp slt i64 %133, %124
  br i1 %135, label %289, label %283

; <label>:136:                                    ; preds = %58, %58
  %137 = sdiv i64 -9223372036854775808, %59
  %138 = icmp slt i64 %35, %137
  br i1 %138, label %145, label %139

; <label>:139:                                    ; preds = %136
  %140 = udiv i64 9223372036854775807, %59
  %141 = icmp slt i64 %140, %35
  %142 = mul nsw i64 %35, %59
  %143 = select i1 %141, i64 9223372036854775807, i64 %142
  %144 = zext i1 %141 to i32
  br label %145

; <label>:145:                                    ; preds = %139, %136
  %146 = phi i64 [ -9223372036854775808, %136 ], [ %143, %139 ]
  %147 = phi i32 [ 1, %136 ], [ %144, %139 ]
  %148 = icmp slt i64 %146, %137
  br i1 %148, label %332, label %326

; <label>:149:                                    ; preds = %58
  %150 = icmp slt i64 %35, -4611686018427387904
  br i1 %150, label %184, label %151

; <label>:151:                                    ; preds = %149
  %152 = icmp sgt i64 %35, 4611686018427387903
  %153 = shl nsw i64 %35, 1
  %154 = select i1 %152, i64 9223372036854775807, i64 %153
  %155 = zext i1 %152 to i32
  br label %184

; <label>:156:                                    ; preds = %58
  %157 = sdiv i64 -9223372036854775808, %59
  %158 = icmp slt i64 %35, %157
  br i1 %158, label %165, label %159

; <label>:159:                                    ; preds = %156
  %160 = udiv i64 9223372036854775807, %59
  %161 = icmp slt i64 %160, %35
  %162 = mul nsw i64 %35, %59
  %163 = select i1 %161, i64 9223372036854775807, i64 %162
  %164 = zext i1 %161 to i32
  br label %165

; <label>:165:                                    ; preds = %159, %156
  %166 = phi i64 [ -9223372036854775808, %156 ], [ %163, %159 ]
  %167 = phi i32 [ 1, %156 ], [ %164, %159 ]
  %168 = icmp slt i64 %166, %157
  br i1 %168, label %364, label %358

; <label>:169:                                    ; preds = %58
  %170 = sdiv i64 -9223372036854775808, %59
  %171 = icmp slt i64 %35, %170
  br i1 %171, label %178, label %172

; <label>:172:                                    ; preds = %169
  %173 = udiv i64 9223372036854775807, %59
  %174 = icmp slt i64 %173, %35
  %175 = mul nsw i64 %35, %59
  %176 = select i1 %174, i64 9223372036854775807, i64 %175
  %177 = zext i1 %174 to i32
  br label %178

; <label>:178:                                    ; preds = %172, %169
  %179 = phi i64 [ -9223372036854775808, %169 ], [ %176, %172 ]
  %180 = phi i32 [ 1, %169 ], [ %177, %172 ]
  %181 = icmp slt i64 %179, %170
  br i1 %181, label %440, label %434

; <label>:182:                                    ; preds = %58
  store i64 %35, i64* %3, align 8
  %183 = or i32 %34, 2
  br label %196

; <label>:184:                                    ; preds = %101, %104, %495, %430, %354, %322, %279, %269, %248, %58, %61, %63, %68, %70, %149, %151
  %185 = phi i64 [ %35, %58 ], [ -9223372036854775808, %61 ], [ %66, %63 ], [ -9223372036854775808, %68 ], [ %73, %70 ], [ -9223372036854775808, %149 ], [ %154, %151 ], [ %249, %248 ], [ %270, %269 ], [ %280, %279 ], [ %323, %322 ], [ %355, %354 ], [ %431, %430 ], [ %496, %495 ], [ -9223372036854775808, %101 ], [ %108, %104 ]
  %186 = phi i32 [ 0, %58 ], [ 1, %61 ], [ %67, %63 ], [ 1, %68 ], [ %74, %70 ], [ 1, %149 ], [ %155, %151 ], [ %251, %248 ], [ %272, %269 ], [ %282, %279 ], [ %325, %322 ], [ %357, %354 ], [ %433, %430 ], [ %498, %495 ], [ 1, %101 ], [ %109, %104 ]
  %187 = or i32 %186, %34
  %188 = getelementptr inbounds i8, i8* %15, i64 %60
  store i8* %188, i8** %12, align 8
  %189 = load i8, i8* %188, align 1
  %190 = icmp eq i8 %189, 0
  %191 = or i32 %187, 2
  %192 = select i1 %190, i32 %187, i32 %191
  br label %193

; <label>:193:                                    ; preds = %184, %33
  %194 = phi i64 [ %35, %33 ], [ %185, %184 ]
  %195 = phi i32 [ %34, %33 ], [ %192, %184 ]
  store i64 %194, i64* %3, align 8
  br label %196

; <label>:196:                                    ; preds = %42, %182, %26, %17, %19, %22, %193, %32
  %197 = phi i32 [ %195, %193 ], [ %30, %32 ], [ 4, %22 ], [ 4, %19 ], [ 4, %17 ], [ 4, %26 ], [ %43, %42 ], [ %183, %182 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %7) #10
  ret i32 %197

; <label>:198:                                    ; preds = %84
  %199 = udiv i64 9223372036854775807, %59
  %200 = icmp slt i64 %199, %85
  %201 = mul nsw i64 %85, %59
  %202 = select i1 %200, i64 9223372036854775807, i64 %201
  %203 = zext i1 %200 to i32
  br label %204

; <label>:204:                                    ; preds = %198, %84
  %205 = phi i64 [ -9223372036854775808, %84 ], [ %202, %198 ]
  %206 = phi i32 [ 1, %84 ], [ %203, %198 ]
  %207 = or i32 %206, %86
  %208 = icmp slt i64 %205, %76
  br i1 %208, label %215, label %209

; <label>:209:                                    ; preds = %204
  %210 = udiv i64 9223372036854775807, %59
  %211 = icmp slt i64 %210, %205
  %212 = mul nsw i64 %205, %59
  %213 = select i1 %211, i64 9223372036854775807, i64 %212
  %214 = zext i1 %211 to i32
  br label %215

; <label>:215:                                    ; preds = %209, %204
  %216 = phi i64 [ -9223372036854775808, %204 ], [ %213, %209 ]
  %217 = phi i32 [ 1, %204 ], [ %214, %209 ]
  %218 = or i32 %217, %207
  %219 = icmp slt i64 %216, %76
  br i1 %219, label %226, label %220

; <label>:220:                                    ; preds = %215
  %221 = udiv i64 9223372036854775807, %59
  %222 = icmp slt i64 %221, %216
  %223 = mul nsw i64 %216, %59
  %224 = select i1 %222, i64 9223372036854775807, i64 %223
  %225 = zext i1 %222 to i32
  br label %226

; <label>:226:                                    ; preds = %220, %215
  %227 = phi i64 [ -9223372036854775808, %215 ], [ %224, %220 ]
  %228 = phi i32 [ 1, %215 ], [ %225, %220 ]
  %229 = or i32 %228, %218
  %230 = icmp slt i64 %227, %76
  br i1 %230, label %237, label %231

; <label>:231:                                    ; preds = %226
  %232 = udiv i64 9223372036854775807, %59
  %233 = icmp slt i64 %232, %227
  %234 = mul nsw i64 %227, %59
  %235 = select i1 %233, i64 9223372036854775807, i64 %234
  %236 = zext i1 %233 to i32
  br label %237

; <label>:237:                                    ; preds = %231, %226
  %238 = phi i64 [ -9223372036854775808, %226 ], [ %235, %231 ]
  %239 = phi i32 [ 1, %226 ], [ %236, %231 ]
  %240 = or i32 %239, %229
  %241 = icmp slt i64 %238, %76
  br i1 %241, label %248, label %242

; <label>:242:                                    ; preds = %237
  %243 = udiv i64 9223372036854775807, %59
  %244 = icmp slt i64 %243, %238
  %245 = mul nsw i64 %238, %59
  %246 = select i1 %244, i64 9223372036854775807, i64 %245
  %247 = zext i1 %244 to i32
  br label %248

; <label>:248:                                    ; preds = %242, %237
  %249 = phi i64 [ -9223372036854775808, %237 ], [ %246, %242 ]
  %250 = phi i32 [ 1, %237 ], [ %247, %242 ]
  %251 = or i32 %250, %240
  br label %184

; <label>:252:                                    ; preds = %97
  %253 = udiv i64 9223372036854775807, %59
  %254 = icmp slt i64 %253, %98
  %255 = mul nsw i64 %98, %59
  %256 = select i1 %254, i64 9223372036854775807, i64 %255
  %257 = zext i1 %254 to i32
  br label %258

; <label>:258:                                    ; preds = %252, %97
  %259 = phi i64 [ -9223372036854775808, %97 ], [ %256, %252 ]
  %260 = phi i32 [ 1, %97 ], [ %257, %252 ]
  %261 = or i32 %260, %99
  %262 = icmp slt i64 %259, %89
  br i1 %262, label %269, label %263

; <label>:263:                                    ; preds = %258
  %264 = udiv i64 9223372036854775807, %59
  %265 = icmp slt i64 %264, %259
  %266 = mul nsw i64 %259, %59
  %267 = select i1 %265, i64 9223372036854775807, i64 %266
  %268 = zext i1 %265 to i32
  br label %269

; <label>:269:                                    ; preds = %263, %258
  %270 = phi i64 [ -9223372036854775808, %258 ], [ %267, %263 ]
  %271 = phi i32 [ 1, %258 ], [ %268, %263 ]
  %272 = or i32 %271, %261
  br label %184

; <label>:273:                                    ; preds = %119
  %274 = udiv i64 9223372036854775807, %59
  %275 = icmp slt i64 %274, %120
  %276 = mul nsw i64 %120, %59
  %277 = select i1 %275, i64 9223372036854775807, i64 %276
  %278 = zext i1 %275 to i32
  br label %279

; <label>:279:                                    ; preds = %273, %119
  %280 = phi i64 [ -9223372036854775808, %119 ], [ %277, %273 ]
  %281 = phi i32 [ 1, %119 ], [ %278, %273 ]
  %282 = or i32 %281, %121
  br label %184

; <label>:283:                                    ; preds = %132
  %284 = udiv i64 9223372036854775807, %59
  %285 = icmp slt i64 %284, %133
  %286 = mul nsw i64 %133, %59
  %287 = select i1 %285, i64 9223372036854775807, i64 %286
  %288 = zext i1 %285 to i32
  br label %289

; <label>:289:                                    ; preds = %283, %132
  %290 = phi i64 [ -9223372036854775808, %132 ], [ %287, %283 ]
  %291 = phi i32 [ 1, %132 ], [ %288, %283 ]
  %292 = or i32 %291, %134
  %293 = icmp slt i64 %290, %124
  br i1 %293, label %300, label %294

; <label>:294:                                    ; preds = %289
  %295 = udiv i64 9223372036854775807, %59
  %296 = icmp slt i64 %295, %290
  %297 = mul nsw i64 %290, %59
  %298 = select i1 %296, i64 9223372036854775807, i64 %297
  %299 = zext i1 %296 to i32
  br label %300

; <label>:300:                                    ; preds = %294, %289
  %301 = phi i64 [ -9223372036854775808, %289 ], [ %298, %294 ]
  %302 = phi i32 [ 1, %289 ], [ %299, %294 ]
  %303 = or i32 %302, %292
  %304 = icmp slt i64 %301, %124
  br i1 %304, label %311, label %305

; <label>:305:                                    ; preds = %300
  %306 = udiv i64 9223372036854775807, %59
  %307 = icmp slt i64 %306, %301
  %308 = mul nsw i64 %301, %59
  %309 = select i1 %307, i64 9223372036854775807, i64 %308
  %310 = zext i1 %307 to i32
  br label %311

; <label>:311:                                    ; preds = %305, %300
  %312 = phi i64 [ -9223372036854775808, %300 ], [ %309, %305 ]
  %313 = phi i32 [ 1, %300 ], [ %310, %305 ]
  %314 = or i32 %313, %303
  %315 = icmp slt i64 %312, %124
  br i1 %315, label %322, label %316

; <label>:316:                                    ; preds = %311
  %317 = udiv i64 9223372036854775807, %59
  %318 = icmp slt i64 %317, %312
  %319 = mul nsw i64 %312, %59
  %320 = select i1 %318, i64 9223372036854775807, i64 %319
  %321 = zext i1 %318 to i32
  br label %322

; <label>:322:                                    ; preds = %316, %311
  %323 = phi i64 [ -9223372036854775808, %311 ], [ %320, %316 ]
  %324 = phi i32 [ 1, %311 ], [ %321, %316 ]
  %325 = or i32 %324, %314
  br label %184

; <label>:326:                                    ; preds = %145
  %327 = udiv i64 9223372036854775807, %59
  %328 = icmp slt i64 %327, %146
  %329 = mul nsw i64 %146, %59
  %330 = select i1 %328, i64 9223372036854775807, i64 %329
  %331 = zext i1 %328 to i32
  br label %332

; <label>:332:                                    ; preds = %326, %145
  %333 = phi i64 [ -9223372036854775808, %145 ], [ %330, %326 ]
  %334 = phi i32 [ 1, %145 ], [ %331, %326 ]
  %335 = or i32 %334, %147
  %336 = icmp slt i64 %333, %137
  br i1 %336, label %343, label %337

; <label>:337:                                    ; preds = %332
  %338 = udiv i64 9223372036854775807, %59
  %339 = icmp slt i64 %338, %333
  %340 = mul nsw i64 %333, %59
  %341 = select i1 %339, i64 9223372036854775807, i64 %340
  %342 = zext i1 %339 to i32
  br label %343

; <label>:343:                                    ; preds = %337, %332
  %344 = phi i64 [ -9223372036854775808, %332 ], [ %341, %337 ]
  %345 = phi i32 [ 1, %332 ], [ %342, %337 ]
  %346 = or i32 %345, %335
  %347 = icmp slt i64 %344, %137
  br i1 %347, label %354, label %348

; <label>:348:                                    ; preds = %343
  %349 = udiv i64 9223372036854775807, %59
  %350 = icmp slt i64 %349, %344
  %351 = mul nsw i64 %344, %59
  %352 = select i1 %350, i64 9223372036854775807, i64 %351
  %353 = zext i1 %350 to i32
  br label %354

; <label>:354:                                    ; preds = %348, %343
  %355 = phi i64 [ -9223372036854775808, %343 ], [ %352, %348 ]
  %356 = phi i32 [ 1, %343 ], [ %353, %348 ]
  %357 = or i32 %356, %346
  br label %184

; <label>:358:                                    ; preds = %165
  %359 = udiv i64 9223372036854775807, %59
  %360 = icmp slt i64 %359, %166
  %361 = mul nsw i64 %166, %59
  %362 = select i1 %360, i64 9223372036854775807, i64 %361
  %363 = zext i1 %360 to i32
  br label %364

; <label>:364:                                    ; preds = %358, %165
  %365 = phi i64 [ -9223372036854775808, %165 ], [ %362, %358 ]
  %366 = phi i32 [ 1, %165 ], [ %363, %358 ]
  %367 = or i32 %366, %167
  %368 = icmp slt i64 %365, %157
  br i1 %368, label %375, label %369

; <label>:369:                                    ; preds = %364
  %370 = udiv i64 9223372036854775807, %59
  %371 = icmp slt i64 %370, %365
  %372 = mul nsw i64 %365, %59
  %373 = select i1 %371, i64 9223372036854775807, i64 %372
  %374 = zext i1 %371 to i32
  br label %375

; <label>:375:                                    ; preds = %369, %364
  %376 = phi i64 [ -9223372036854775808, %364 ], [ %373, %369 ]
  %377 = phi i32 [ 1, %364 ], [ %374, %369 ]
  %378 = or i32 %377, %367
  %379 = icmp slt i64 %376, %157
  br i1 %379, label %386, label %380

; <label>:380:                                    ; preds = %375
  %381 = udiv i64 9223372036854775807, %59
  %382 = icmp slt i64 %381, %376
  %383 = mul nsw i64 %376, %59
  %384 = select i1 %382, i64 9223372036854775807, i64 %383
  %385 = zext i1 %382 to i32
  br label %386

; <label>:386:                                    ; preds = %380, %375
  %387 = phi i64 [ -9223372036854775808, %375 ], [ %384, %380 ]
  %388 = phi i32 [ 1, %375 ], [ %385, %380 ]
  %389 = or i32 %388, %378
  %390 = icmp slt i64 %387, %157
  br i1 %390, label %397, label %391

; <label>:391:                                    ; preds = %386
  %392 = udiv i64 9223372036854775807, %59
  %393 = icmp slt i64 %392, %387
  %394 = mul nsw i64 %387, %59
  %395 = select i1 %393, i64 9223372036854775807, i64 %394
  %396 = zext i1 %393 to i32
  br label %397

; <label>:397:                                    ; preds = %391, %386
  %398 = phi i64 [ -9223372036854775808, %386 ], [ %395, %391 ]
  %399 = phi i32 [ 1, %386 ], [ %396, %391 ]
  %400 = or i32 %399, %389
  %401 = icmp slt i64 %398, %157
  br i1 %401, label %408, label %402

; <label>:402:                                    ; preds = %397
  %403 = udiv i64 9223372036854775807, %59
  %404 = icmp slt i64 %403, %398
  %405 = mul nsw i64 %398, %59
  %406 = select i1 %404, i64 9223372036854775807, i64 %405
  %407 = zext i1 %404 to i32
  br label %408

; <label>:408:                                    ; preds = %402, %397
  %409 = phi i64 [ -9223372036854775808, %397 ], [ %406, %402 ]
  %410 = phi i32 [ 1, %397 ], [ %407, %402 ]
  %411 = or i32 %410, %400
  %412 = icmp slt i64 %409, %157
  br i1 %412, label %419, label %413

; <label>:413:                                    ; preds = %408
  %414 = udiv i64 9223372036854775807, %59
  %415 = icmp slt i64 %414, %409
  %416 = mul nsw i64 %409, %59
  %417 = select i1 %415, i64 9223372036854775807, i64 %416
  %418 = zext i1 %415 to i32
  br label %419

; <label>:419:                                    ; preds = %413, %408
  %420 = phi i64 [ -9223372036854775808, %408 ], [ %417, %413 ]
  %421 = phi i32 [ 1, %408 ], [ %418, %413 ]
  %422 = or i32 %421, %411
  %423 = icmp slt i64 %420, %157
  br i1 %423, label %430, label %424

; <label>:424:                                    ; preds = %419
  %425 = udiv i64 9223372036854775807, %59
  %426 = icmp slt i64 %425, %420
  %427 = mul nsw i64 %420, %59
  %428 = select i1 %426, i64 9223372036854775807, i64 %427
  %429 = zext i1 %426 to i32
  br label %430

; <label>:430:                                    ; preds = %424, %419
  %431 = phi i64 [ -9223372036854775808, %419 ], [ %428, %424 ]
  %432 = phi i32 [ 1, %419 ], [ %429, %424 ]
  %433 = or i32 %432, %422
  br label %184

; <label>:434:                                    ; preds = %178
  %435 = udiv i64 9223372036854775807, %59
  %436 = icmp slt i64 %435, %179
  %437 = mul nsw i64 %179, %59
  %438 = select i1 %436, i64 9223372036854775807, i64 %437
  %439 = zext i1 %436 to i32
  br label %440

; <label>:440:                                    ; preds = %434, %178
  %441 = phi i64 [ -9223372036854775808, %178 ], [ %438, %434 ]
  %442 = phi i32 [ 1, %178 ], [ %439, %434 ]
  %443 = or i32 %442, %180
  %444 = icmp slt i64 %441, %170
  br i1 %444, label %451, label %445

; <label>:445:                                    ; preds = %440
  %446 = udiv i64 9223372036854775807, %59
  %447 = icmp slt i64 %446, %441
  %448 = mul nsw i64 %441, %59
  %449 = select i1 %447, i64 9223372036854775807, i64 %448
  %450 = zext i1 %447 to i32
  br label %451

; <label>:451:                                    ; preds = %445, %440
  %452 = phi i64 [ -9223372036854775808, %440 ], [ %449, %445 ]
  %453 = phi i32 [ 1, %440 ], [ %450, %445 ]
  %454 = or i32 %453, %443
  %455 = icmp slt i64 %452, %170
  br i1 %455, label %462, label %456

; <label>:456:                                    ; preds = %451
  %457 = udiv i64 9223372036854775807, %59
  %458 = icmp slt i64 %457, %452
  %459 = mul nsw i64 %452, %59
  %460 = select i1 %458, i64 9223372036854775807, i64 %459
  %461 = zext i1 %458 to i32
  br label %462

; <label>:462:                                    ; preds = %456, %451
  %463 = phi i64 [ -9223372036854775808, %451 ], [ %460, %456 ]
  %464 = phi i32 [ 1, %451 ], [ %461, %456 ]
  %465 = or i32 %464, %454
  %466 = icmp slt i64 %463, %170
  br i1 %466, label %473, label %467

; <label>:467:                                    ; preds = %462
  %468 = udiv i64 9223372036854775807, %59
  %469 = icmp slt i64 %468, %463
  %470 = mul nsw i64 %463, %59
  %471 = select i1 %469, i64 9223372036854775807, i64 %470
  %472 = zext i1 %469 to i32
  br label %473

; <label>:473:                                    ; preds = %467, %462
  %474 = phi i64 [ -9223372036854775808, %462 ], [ %471, %467 ]
  %475 = phi i32 [ 1, %462 ], [ %472, %467 ]
  %476 = or i32 %475, %465
  %477 = icmp slt i64 %474, %170
  br i1 %477, label %484, label %478

; <label>:478:                                    ; preds = %473
  %479 = udiv i64 9223372036854775807, %59
  %480 = icmp slt i64 %479, %474
  %481 = mul nsw i64 %474, %59
  %482 = select i1 %480, i64 9223372036854775807, i64 %481
  %483 = zext i1 %480 to i32
  br label %484

; <label>:484:                                    ; preds = %478, %473
  %485 = phi i64 [ -9223372036854775808, %473 ], [ %482, %478 ]
  %486 = phi i32 [ 1, %473 ], [ %483, %478 ]
  %487 = or i32 %486, %476
  %488 = icmp slt i64 %485, %170
  br i1 %488, label %495, label %489

; <label>:489:                                    ; preds = %484
  %490 = udiv i64 9223372036854775807, %59
  %491 = icmp slt i64 %490, %485
  %492 = mul nsw i64 %485, %59
  %493 = select i1 %491, i64 9223372036854775807, i64 %492
  %494 = zext i1 %491 to i32
  br label %495

; <label>:495:                                    ; preds = %489, %484
  %496 = phi i64 [ -9223372036854775808, %484 ], [ %493, %489 ]
  %497 = phi i32 [ 1, %484 ], [ %494, %489 ]
  %498 = or i32 %497, %487
  br label %184
}

; Function Attrs: nounwind
declare i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #8

; Function Attrs: nounwind sspstrong uwtable
define i32 @xstrtoumax(i8*, i8**, i32, i64* nocapture, i8* readonly) local_unnamed_addr #4 {
  %6 = alloca i8*, align 8
  %7 = bitcast i8** %6 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %7) #10
  %8 = icmp ult i32 %2, 37
  br i1 %8, label %10, label %9

; <label>:9:                                      ; preds = %5
  tail call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.152, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.153, i64 0, i64 0), i32 96, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @__PRETTY_FUNCTION__.xstrtoumax, i64 0, i64 0)) #14
  unreachable

; <label>:10:                                     ; preds = %5
  %11 = icmp ne i8** %1, null
  %12 = tail call i32* @__errno_location() #5
  store i32 0, i32* %12, align 4
  %13 = tail call i16** @__ctype_b_loc() #5
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
declare i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #4 {
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
  %11 = tail call i32* @__errno_location() #5
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
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #4 {
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
  %19 = tail call i32* @__errno_location() #5
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
declare i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fcntl(i32, i32, ...) local_unnamed_addr #4 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*
  call void @llvm.lifetime.start(i64 24, i8* nonnull %4) #10
  call void @llvm.va_start(i8* nonnull %4)
  %5 = icmp eq i32 %1, 1030
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0
  %7 = load i32, i32* %6, align 16
  %8 = icmp ult i32 %7, 41
  br i1 %5, label %9, label %59

; <label>:9:                                      ; preds = %2
  br i1 %8, label %10, label %16

; <label>:10:                                     ; preds = %9
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3
  %12 = load i8*, i8** %11, align 16
  %13 = sext i32 %7 to i64
  %14 = getelementptr i8, i8* %12, i64 %13
  %15 = add i32 %7, 8
  store i32 %15, i32* %6, align 16
  br label %20

; <label>:16:                                     ; preds = %9
  %17 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2
  %18 = load i8*, i8** %17, align 8
  %19 = getelementptr i8, i8* %18, i64 8
  store i8* %19, i8** %17, align 8
  br label %20

; <label>:20:                                     ; preds = %16, %10
  %21 = phi i8* [ %14, %10 ], [ %18, %16 ]
  %22 = bitcast i8* %21 to i32*
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @rpl_fcntl.have_dupfd_cloexec, align 4
  %25 = icmp sgt i32 %24, -1
  br i1 %25, label %26, label %39

; <label>:26:                                     ; preds = %20
  %27 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 1030, i32 %23) #10
  %28 = icmp sgt i32 %27, -1
  br i1 %28, label %36, label %29

; <label>:29:                                     ; preds = %26
  %30 = tail call i32* @__errno_location() #5
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 22
  br i1 %32, label %33, label %36

; <label>:33:                                     ; preds = %29
  %34 = call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 0, i32 %23)
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %75, label %36

; <label>:36:                                     ; preds = %29, %26, %33
  %37 = phi i32 [ %27, %26 ], [ %27, %29 ], [ %34, %33 ]
  %38 = phi i32 [ 1, %26 ], [ 1, %29 ], [ -1, %33 ]
  store i32 %38, i32* @rpl_fcntl.have_dupfd_cloexec, align 4
  br label %42

; <label>:39:                                     ; preds = %20
  %40 = call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 0, i32 %23)
  %41 = load i32, i32* @rpl_fcntl.have_dupfd_cloexec, align 4
  br label %42

; <label>:42:                                     ; preds = %39, %36
  %43 = phi i32 [ %38, %36 ], [ %41, %39 ]
  %44 = phi i32 [ %37, %36 ], [ %40, %39 ]
  %45 = icmp sgt i32 %44, -1
  %46 = icmp eq i32 %43, -1
  %47 = and i1 %45, %46
  br i1 %47, label %48, label %75

; <label>:48:                                     ; preds = %42
  %49 = call i32 (i32, i32, ...) @fcntl(i32 %44, i32 1) #10
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %55, label %51

; <label>:51:                                     ; preds = %48
  %52 = or i32 %49, 1
  %53 = call i32 (i32, i32, ...) @fcntl(i32 %44, i32 2, i32 %52) #10
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %55, label %75

; <label>:55:                                     ; preds = %51, %48
  %56 = tail call i32* @__errno_location() #5
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @close(i32 %44) #10
  store i32 %57, i32* %56, align 4
  br label %75

; <label>:59:                                     ; preds = %2
  br i1 %8, label %60, label %66

; <label>:60:                                     ; preds = %59
  %61 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3
  %62 = load i8*, i8** %61, align 16
  %63 = sext i32 %7 to i64
  %64 = getelementptr i8, i8* %62, i64 %63
  %65 = add i32 %7, 8
  store i32 %65, i32* %6, align 16
  br label %70

; <label>:66:                                     ; preds = %59
  %67 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2
  %68 = load i8*, i8** %67, align 8
  %69 = getelementptr i8, i8* %68, i64 8
  store i8* %69, i8** %67, align 8
  br label %70

; <label>:70:                                     ; preds = %66, %60
  %71 = phi i8* [ %64, %60 ], [ %68, %66 ]
  %72 = bitcast i8* %71 to i8**
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 %1, i8* %73) #10
  br label %75

; <label>:75:                                     ; preds = %33, %51, %55, %42, %70
  %76 = phi i32 [ %74, %70 ], [ %34, %33 ], [ %44, %42 ], [ -1, %55 ], [ %44, %51 ]
  call void @llvm.va_end(i8* nonnull %4)
  call void @llvm.lifetime.end(i64 24, i8* nonnull %4) #10
  ret i32 %76
}

declare i32 @fcntl(i32, i32, ...) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #4 {
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
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #4 {
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
declare i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #4 {
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
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #4 {
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
  %15 = tail call i32* @__errno_location() #5
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 9
  %18 = sext i1 %17 to i32
  br label %22

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #5
  store i32 0, i32* %21, align 4
  br label %22

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #4 {
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
  %12 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.170, i64 0, i64 0)) #10
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

; <label>:14:                                     ; preds = %11, %7
  br label %15

; <label>:15:                                     ; preds = %1, %11, %14
  %16 = phi i1 [ false, %14 ], [ true, %11 ], [ true, %1 ]
  ret i1 %16
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #8

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #4 {
  %1 = alloca [51 x i8], align 16
  %2 = alloca [51 x i8], align 16
  %3 = tail call i8* @nl_langinfo(i32 14) #10
  %4 = icmp eq i8* %3, null
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.173, i64 0, i64 0), i8* %3
  %6 = load volatile i8*, i8** @charset_aliases, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %127

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.174, i64 0, i64 0)) #10
  %10 = icmp eq i8* %9, null
  br i1 %10, label %14, label %11

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %15

; <label>:14:                                     ; preds = %11, %8
  br label %15

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.175, i64 0, i64 0), %14 ], [ %9, %11 ]
  %17 = tail call i64 @strlen(i8* nonnull %16) #15
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
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.176, i64 0, i64 0), i64 14, i32 1, i1 false) #10
  br label %37

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.176, i64 0, i64 0), i64 14, i32 1, i1 false) #10
  br label %37

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #10
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %123, label %40

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.177, i64 0, i64 0)) #10
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
  %79 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.178, i64 0, i64 0), i8* nonnull %44, i8* nonnull %45) #10
  %80 = icmp slt i32 %79, 2
  br i1 %80, label %115, label %81

; <label>:81:                                     ; preds = %77
  %82 = call i64 @strlen(i8* nonnull %44) #15
  %83 = call i64 @strlen(i8* nonnull %45) #15
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
  %124 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.173, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.173, i64 0, i64 0), %48 ], [ %118, %121 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.173, i64 0, i64 0), %116 ]
  call void @free(i8* %29) #10
  br label %125

; <label>:125:                                    ; preds = %123, %24
  %126 = phi i8* [ %124, %123 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.173, i64 0, i64 0), %24 ]
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
  %144 = call i64 @strlen(i8* %134) #15
  %145 = getelementptr inbounds i8, i8* %134, i64 %144
  %146 = getelementptr inbounds i8, i8* %145, i64 1
  br label %157

; <label>:147:                                    ; preds = %137, %139
  %148 = call i64 @strlen(i8* %134) #15
  %149 = add i64 %148, 1
  %150 = getelementptr inbounds i8, i8* %134, i64 %149
  %151 = call i64 @strlen(i8* %150) #15
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
  %161 = select i1 %160, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.179, i64 0, i64 0), i8* %158
  ret i8* %161
}

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i8* @getenv(i8* nocapture) local_unnamed_addr #8

declare i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @ungetc(i32, %struct._IO_FILE* nocapture) local_unnamed_addr #1

; Function Attrs: nounwind
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
