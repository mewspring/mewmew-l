; ModuleID = 'coreutils-8.27/src/tac.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.re_pattern_buffer = type { %struct.re_dfa_t*, i64, i64, i64, i8*, i8*, i64, i8 }
%struct.re_dfa_t = type opaque
%struct.re_registers = type { i32, i32*, i32* }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Usage: %s [OPTION]... [FILE]...\0A\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"Write each FILE to standard output, last line first.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.18 = private unnamed_addr constant [56 x i8] c"\0AWith no FILE, or when FILE is -, read standard input.\0A\00", align 1
@.str.19 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@.str.3 = private unnamed_addr constant [222 x i8] c"  -b, --before             attach the separator before instead of after\0A  -r, --regex              interpret the separator as a regular expression\0A  -s, --separator=STRING   use STRING as the separator instead of newline\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"tac\00", align 1
@.str.28 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.29 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.31 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.32 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.33 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@separator = internal unnamed_addr global i8* null, align 8, !dbg !0
@sentinel_length = internal unnamed_addr global i64 0, align 8, !dbg !59
@separator_ends_record = internal unnamed_addr global i1 false, align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"brs:\00", align 1
@longopts = internal constant [6 x %struct.option] [%struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i32 0, i32 0), i32 0, i32* null, i32 98 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0), i32 0, i32* null, i32 114 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i32 0, i32 0), i32 1, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !129
@optarg = external local_unnamed_addr global i8*, align 8
@.str.14 = private unnamed_addr constant [12 x i8] c"Jay Lepreau\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"separator cannot be empty\00", align 1
@compiled_separator = internal global %struct.re_pattern_buffer zeroinitializer, align 8, !dbg !69
@compiled_separator_fastmap = internal global [256 x i8] zeroinitializer, align 16, !dbg !94
@.str.17 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@match_length = internal unnamed_addr global i64 0, align 8, !dbg !61
@read_size = internal unnamed_addr global i64 0, align 8, !dbg !65
@G_buffer_size = internal unnamed_addr global i64 0, align 8, !dbg !67
@G_buffer = internal unnamed_addr global i8* null, align 8, !dbg !63
@optind = external local_unnamed_addr global i32, align 4
@main.default_file_list = internal unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), i8* null], align 16, !dbg !36
@have_read_stdin = internal unnamed_addr global i1 false, align 1
@.str.40 = private unnamed_addr constant [15 x i8] c"standard input\00", align 1
@.str.41 = private unnamed_addr constant [30 x i8] c"failed to open %s for reading\00", align 1
@temp_stream.tempfile = internal unnamed_addr global i8* null, align 8, !dbg !143
@.str.44 = private unnamed_addr constant [7 x i8] c"TMPDIR\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"/tmp\00", align 1
@.str.46 = private unnamed_addr constant [10 x i8] c"tacXXXXXX\00", align 1
@.str.47 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.48 = private unnamed_addr constant [38 x i8] c"failed to create temporary file in %s\00", align 1
@.str.49 = private unnamed_addr constant [3 x i8] c"w+\00", align 1
@temp_stream.tmp_fp = internal unnamed_addr global %struct._IO_FILE* null, align 8, !dbg !213
@.str.50 = private unnamed_addr constant [30 x i8] c"failed to open %s for writing\00", align 1
@.str.51 = private unnamed_addr constant [31 x i8] c"failed to rewind stream for %s\00", align 1
@.str.42 = private unnamed_addr constant [15 x i8] c"%s: read error\00", align 1
@.str.43 = private unnamed_addr constant [16 x i8] c"%s: write error\00", align 1
@output.bytes_in_buffer = internal unnamed_addr global i64 0, align 8, !dbg !238
@output.buffer = internal global [8192 x i8] zeroinitializer, align 16, !dbg !225
@.str.7 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.52 = private unnamed_addr constant [16 x i8] c"%s: seek failed\00", align 1
@.str.53 = private unnamed_addr constant [17 x i8] c"record too large\00", align 1
@regs = internal global %struct.re_registers zeroinitializer, align 8, !dbg !215
@.str.54 = private unnamed_addr constant [35 x i8] c"error in regular expression search\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"before\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"regex\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"separator\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), align 8, !dbg !242
@.str.20 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !248
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !253
@.str.23 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.24 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.25 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !256
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !263
@.str.55 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.56 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.57 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.59, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.60, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.61, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.62, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.63, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.64, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.65, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.66, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.67, i32 0, i32 0), i8* null], align 16, !dbg !270
@.str.58 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.59 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.60 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.61 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.62 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.63 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.64 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.65 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.66 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.67 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !297
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !304
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !316
@.str.11.68 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.69 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.70 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.71 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.72 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.73 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.74 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !320
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !327
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !318
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !329
@.str.87 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.88 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.89 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.90 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.91 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.92 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.93 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.94 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.95 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.96 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.97 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.98 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.99 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.100 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.103 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.104 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.105 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.106 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.107 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19.108 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !334
@.str.1.119 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.120 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.135 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.138 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !343
@.str.3.139 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.140 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.141 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.142 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.143 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.144 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1
@rpl_fcntl.have_dupfd_cloexec = internal unnamed_addr global i32 0, align 4, !dbg !690

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 !dbg !805 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !809, metadata !810), !dbg !811
  %2 = icmp eq i32 %0, 0, !dbg !812
  br i1 %2, label %8, label %3, !dbg !814

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !815, !tbaa !818
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #10, !dbg !815
  %6 = load i8*, i8** @program_name, align 8, !dbg !815, !tbaa !818
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #10, !dbg !822
  br label %45, !dbg !824

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 5) #10, !dbg !826
  %10 = load i8*, i8** @program_name, align 8, !dbg !826, !tbaa !818
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10) #10, !dbg !828
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 5) #10, !dbg !830
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !830, !tbaa !818
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #10, !dbg !831
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.18, i64 0, i64 0), i32 5) #10, !dbg !832
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !832, !tbaa !818
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #10, !dbg !837
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.19, i64 0, i64 0), i32 5) #10, !dbg !839
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !839, !tbaa !818
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #10, !dbg !842
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([222 x i8], [222 x i8]* @.str.3, i64 0, i64 0), i32 5) #10, !dbg !844
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !844, !tbaa !818
  %23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22) #10, !dbg !845
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 5) #10, !dbg !846
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !846, !tbaa !818
  %26 = tail call i32 @fputs_unlocked(i8* %24, %struct._IO_FILE* %25) #10, !dbg !847
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 5) #10, !dbg !848
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !848, !tbaa !818
  %29 = tail call i32 @fputs_unlocked(i8* %27, %struct._IO_FILE* %28) #10, !dbg !849
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !107, metadata !810) #10, !dbg !850
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i64 0, metadata !107, metadata !810) #10, !dbg !850
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.28, i64 0, i64 0), i32 5) #10, !dbg !852
  %31 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %30, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.29, i64 0, i64 0)) #10, !dbg !853
  %32 = tail call i8* @setlocale(i32 5, i8* null) #10, !dbg !855
  tail call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !118, metadata !810) #10, !dbg !856
  %33 = icmp eq i8* %32, null, !dbg !857
  br i1 %33, label %40, label %34, !dbg !858

; <label>:34:                                     ; preds = %8
  %35 = tail call i32 @strncmp(i8* nonnull %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i64 0, i64 0), i64 3) #13, !dbg !859
  %36 = icmp eq i32 %35, 0, !dbg !859
  br i1 %36, label %40, label %37, !dbg !861

; <label>:37:                                     ; preds = %34
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.31, i64 0, i64 0), i32 5) #10, !dbg !863
  %39 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)) #10, !dbg !865
  br label %40, !dbg !867

; <label>:40:                                     ; preds = %8, %34, %37
  %41 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.32, i64 0, i64 0), i32 5) #10, !dbg !868
  %42 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %41, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)) #10, !dbg !869
  %43 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.33, i64 0, i64 0), i32 5) #10, !dbg !870
  %44 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i64 0, i64 0)) #10, !dbg !871
  br label %45

; <label>:45:                                     ; preds = %40, %3
  tail call void @exit(i32 %0) #14, !dbg !872
  unreachable, !dbg !872
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
define i32 @main(i32, i8**) local_unnamed_addr #6 !dbg !38 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !44, metadata !810), !dbg !873
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !45, metadata !810), !dbg !874
  %3 = load i8*, i8** %1, align 8, !dbg !875, !tbaa !818
  tail call void @set_program_name(i8* %3) #10, !dbg !876
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)) #10, !dbg !877
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0)) #10, !dbg !878
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0)) #10, !dbg !879
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #10, !dbg !880
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i8** @separator, align 8, !dbg !881, !tbaa !818
  store i64 1, i64* @sentinel_length, align 8, !dbg !882, !tbaa !883
  store i1 true, i1* @separator_ends_record, align 1
  br label %8, !dbg !885

; <label>:8:                                      ; preds = %14, %2
  %9 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), %struct.option* getelementptr inbounds ([6 x %struct.option], [6 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #10, !dbg !886
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !47, metadata !810), !dbg !888
  switch i32 %9, label %19 [
    i32 -1, label %20
    i32 98, label %10
    i32 114, label %11
    i32 115, label %12
    i32 -130, label %15
    i32 -131, label %16
  ], !dbg !889

; <label>:10:                                     ; preds = %8
  store i1 false, i1* @separator_ends_record, align 1
  br label %14, !dbg !890

; <label>:11:                                     ; preds = %8
  store i64 0, i64* @sentinel_length, align 8, !dbg !893, !tbaa !883
  br label %14, !dbg !894

; <label>:12:                                     ; preds = %8
  %13 = load i64, i64* bitcast (i8** @optarg to i64*), align 8, !dbg !895, !tbaa !818
  store i64 %13, i64* bitcast (i8** @separator to i64*), align 8, !dbg !896, !tbaa !818
  br label %14, !dbg !897

; <label>:14:                                     ; preds = %12, %11, %10
  br label %8, !dbg !886, !llvm.loop !898

; <label>:15:                                     ; preds = %8
  tail call void @usage(i32 0) #15, !dbg !900
  unreachable, !dbg !900

; <label>:16:                                     ; preds = %8
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !901, !tbaa !818
  %18 = load i8*, i8** @Version, align 8, !dbg !901, !tbaa !818
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8* %18, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), i8* null) #10, !dbg !901
  tail call void @exit(i32 0) #14, !dbg !902
  unreachable, !dbg !901

; <label>:19:                                     ; preds = %8
  tail call void @usage(i32 1) #15, !dbg !904
  unreachable, !dbg !904

; <label>:20:                                     ; preds = %8
  %21 = load i64, i64* @sentinel_length, align 8, !dbg !905, !tbaa !883
  %22 = icmp eq i64 %21, 0, !dbg !907
  %23 = load i8*, i8** @separator, align 8, !tbaa !818
  %24 = load i8, i8* %23, align 1, !tbaa !908
  %25 = icmp eq i8 %24, 0
  br i1 %22, label %26, label %36, !dbg !909

; <label>:26:                                     ; preds = %20
  br i1 %25, label %27, label %29, !dbg !910

; <label>:27:                                     ; preds = %26
  %28 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.16, i64 0, i64 0), i32 5) #10, !dbg !912
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %28) #10, !dbg !914
  unreachable, !dbg !912

; <label>:29:                                     ; preds = %26
  call void @llvm.memset.p0i8.i64(i8* bitcast (%struct.re_pattern_buffer* @compiled_separator to i8*), i8 0, i64 16, i32 8, i1 false), !dbg !916
  store <2 x i8*> <i8* getelementptr inbounds ([256 x i8], [256 x i8]* @compiled_separator_fastmap, i64 0, i64 0), i8* null>, <2 x i8*>* bitcast (i8** getelementptr inbounds (%struct.re_pattern_buffer, %struct.re_pattern_buffer* @compiled_separator, i64 0, i32 4) to <2 x i8*>*), align 8, !dbg !917, !tbaa !818
  %30 = tail call i64 @strlen(i8* %23) #13, !dbg !918
  %31 = tail call i8* @re_compile_pattern(i8* %23, i64 %30, %struct.re_pattern_buffer* nonnull @compiled_separator) #10, !dbg !919
  tail call void @llvm.dbg.value(metadata i8* %31, i64 0, metadata !46, metadata !810), !dbg !921
  %32 = icmp eq i8* %31, null, !dbg !922
  br i1 %32, label %33, label %35, !dbg !924

; <label>:33:                                     ; preds = %29
  %34 = load i64, i64* @sentinel_length, align 8, !tbaa !883
  br label %41, !dbg !924

; <label>:35:                                     ; preds = %29
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), i8* nonnull %31) #10, !dbg !925
  unreachable, !dbg !925

; <label>:36:                                     ; preds = %20
  br i1 %25, label %39, label %37, !dbg !926

; <label>:37:                                     ; preds = %36
  %38 = tail call i64 @strlen(i8* %23) #13, !dbg !927
  br label %39, !dbg !929

; <label>:39:                                     ; preds = %36, %37
  %40 = phi i64 [ %38, %37 ], [ 1, %36 ], !dbg !930
  store i64 %40, i64* @sentinel_length, align 8, !dbg !932, !tbaa !883
  store i64 %40, i64* @match_length, align 8, !dbg !933, !tbaa !883
  br label %41

; <label>:41:                                     ; preds = %33, %39
  %42 = phi i64 [ %34, %33 ], [ %40, %39 ], !dbg !934
  store i64 8192, i64* @read_size, align 8, !tbaa !883
  %43 = icmp ult i64 %42, 4096, !dbg !935
  br i1 %43, label %54, label %44, !dbg !936

; <label>:44:                                     ; preds = %41
  br label %45, !dbg !937

; <label>:45:                                     ; preds = %44, %49
  %46 = phi i64 [ %50, %49 ], [ 8192, %44 ]
  %47 = icmp slt i64 %46, 0, !dbg !937
  br i1 %47, label %48, label %49, !dbg !940

; <label>:48:                                     ; preds = %45
  tail call void @xalloc_die() #14, !dbg !941
  unreachable, !dbg !941

; <label>:49:                                     ; preds = %45
  %50 = shl i64 %46, 1, !dbg !942
  store i64 %50, i64* @read_size, align 8, !tbaa !883
  %51 = and i64 %46, 9223372036854775806, !dbg !943
  %52 = icmp ult i64 %42, %51, !dbg !935
  br i1 %52, label %53, label %45, !dbg !936, !llvm.loop !944

; <label>:53:                                     ; preds = %49
  br label %54, !dbg !947

; <label>:54:                                     ; preds = %53, %41
  %55 = phi i64 [ 8192, %41 ], [ %50, %53 ], !dbg !948
  %56 = or i64 %55, 1, !dbg !947
  %57 = add i64 %56, %42, !dbg !950
  tail call void @llvm.dbg.value(metadata i64 %57, i64 0, metadata !50, metadata !810), !dbg !951
  %58 = shl i64 %57, 1, !dbg !952
  store i64 %58, i64* @G_buffer_size, align 8, !dbg !953, !tbaa !883
  %59 = icmp ult i64 %55, %57, !dbg !954
  %60 = icmp ult i64 %57, %58, !dbg !955
  %61 = and i1 %60, %59, !dbg !957
  br i1 %61, label %63, label %62, !dbg !957

; <label>:62:                                     ; preds = %54
  tail call void @xalloc_die() #14, !dbg !958
  unreachable, !dbg !958

; <label>:63:                                     ; preds = %54
  %64 = tail call noalias i8* @xmalloc(i64 %58) #10, !dbg !959
  store i8* %64, i8** @G_buffer, align 8, !dbg !960, !tbaa !818
  %65 = load i64, i64* @sentinel_length, align 8, !dbg !961, !tbaa !883
  %66 = icmp eq i64 %65, 0, !dbg !961
  br i1 %66, label %70, label %67, !dbg !963

; <label>:67:                                     ; preds = %63
  %68 = load i8*, i8** @separator, align 8, !dbg !964, !tbaa !818
  %69 = add i64 %65, 1, !dbg !966
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %64, i8* %68, i64 %69, i32 1, i1 false), !dbg !967
  br label %70, !dbg !968

; <label>:70:                                     ; preds = %63, %67
  %71 = phi i64 [ %65, %67 ], [ 1, %63 ]
  %72 = getelementptr inbounds i8, i8* %64, i64 %71
  store i8* %72, i8** @G_buffer, align 8, !tbaa !818
  %73 = load i32, i32* @optind, align 4, !dbg !969, !tbaa !970
  %74 = icmp slt i32 %73, %0, !dbg !972
  %75 = sext i32 %73 to i64, !dbg !973
  %76 = getelementptr inbounds i8*, i8** %1, i64 %75, !dbg !973
  %77 = select i1 %74, i8** %76, i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @main.default_file_list, i64 0, i64 0), !dbg !969
  tail call void @llvm.dbg.value(metadata i8** %77, i64 0, metadata !51, metadata !810), !dbg !974
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !48, metadata !810), !dbg !975
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !52, metadata !810), !dbg !976
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !52, metadata !810), !dbg !976
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !48, metadata !810), !dbg !975
  %78 = load i8*, i8** %77, align 8, !dbg !977, !tbaa !818
  %79 = icmp eq i8* %78, null, !dbg !981
  br i1 %79, label %226, label %80, !dbg !981

; <label>:80:                                     ; preds = %70
  br label %81, !dbg !983

; <label>:81:                                     ; preds = %80, %217
  %82 = phi i8* [ %223, %217 ], [ %78, %80 ]
  %83 = phi i64 [ %221, %217 ], [ 0, %80 ]
  %84 = phi i8 [ %220, %217 ], [ 1, %80 ]
  tail call void @llvm.dbg.value(metadata i8* %82, i64 0, metadata !988, metadata !810) #10, !dbg !983
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !996, metadata !810) #10, !dbg !1001
  tail call void @llvm.dbg.value(metadata i8* %82, i64 0, metadata !997, metadata !810) #10, !dbg !1002
  %85 = load i8, i8* %82, align 1, !dbg !1003, !tbaa !908
  %86 = icmp eq i8 %85, 45, !dbg !1005
  br i1 %86, label %87, label %93, !dbg !1008

; <label>:87:                                     ; preds = %81
  %88 = getelementptr inbounds i8, i8* %82, i64 1, !dbg !1010
  %89 = load i8, i8* %88, align 1, !dbg !1010, !tbaa !908
  %90 = icmp eq i8 %89, 0, !dbg !1013
  br i1 %90, label %91, label %93, !dbg !1015

; <label>:91:                                     ; preds = %87
  store i1 true, i1* @have_read_stdin, align 1
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !992, metadata !810) #10, !dbg !1016
  %92 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.40, i64 0, i64 0), i32 5) #10, !dbg !1017
  tail call void @llvm.dbg.value(metadata i8* %92, i64 0, metadata !988, metadata !810) #10, !dbg !983
  br label %101, !dbg !1020

; <label>:93:                                     ; preds = %87, %81
  %94 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %82, i32 0) #10, !dbg !1021
  tail call void @llvm.dbg.value(metadata i32 %94, i64 0, metadata !992, metadata !810) #10, !dbg !1016
  %95 = icmp slt i32 %94, 0, !dbg !1023
  br i1 %95, label %96, label %101, !dbg !1025

; <label>:96:                                     ; preds = %93
  %97 = tail call i32* @__errno_location() #1, !dbg !1026
  %98 = load i32, i32* %97, align 4, !dbg !1026, !tbaa !970
  %99 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.41, i64 0, i64 0), i32 5) #10, !dbg !1028
  %100 = tail call i8* @quotearg_style(i32 4, i8* nonnull %82) #10, !dbg !1030
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %98, i8* %99, i8* %100) #10, !dbg !1031
  br label %217, !dbg !1033

; <label>:101:                                    ; preds = %93, %91
  %102 = phi i1 [ true, %91 ], [ false, %93 ]
  %103 = phi i32 [ 0, %91 ], [ %94, %93 ]
  %104 = phi i8* [ %92, %91 ], [ %82, %93 ]
  tail call void @llvm.dbg.value(metadata i8* %104, i64 0, metadata !988, metadata !810) #10, !dbg !983
  tail call void @llvm.dbg.value(metadata i32 %103, i64 0, metadata !992, metadata !810) #10, !dbg !1016
  %105 = tail call i64 @lseek(i32 %103, i64 0, i32 2) #10, !dbg !1034
  tail call void @llvm.dbg.value(metadata i64 %105, i64 0, metadata !990, metadata !810) #10, !dbg !1035
  %106 = icmp slt i64 %105, 0, !dbg !1036
  br i1 %106, label %110, label %107, !dbg !1037

; <label>:107:                                    ; preds = %101
  %108 = tail call i32 @isatty(i32 %103) #10, !dbg !1038
  %109 = icmp eq i32 %108, 0, !dbg !1038
  br i1 %109, label %201, label %110, !dbg !1040

; <label>:110:                                    ; preds = %107, %101
  tail call void @llvm.dbg.value(metadata i32 %103, i64 0, metadata !1041, metadata !810) #10, !dbg !1051
  tail call void @llvm.dbg.value(metadata i8* %104, i64 0, metadata !1046, metadata !810) #10, !dbg !1053
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE** undef, i64 0, metadata !1047, metadata !1054) #10, !dbg !1055
  tail call void @llvm.dbg.value(metadata i8** undef, i64 0, metadata !1048, metadata !1054) #10, !dbg !1056
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE** undef, i64 0, metadata !1057, metadata !810) #10, !dbg !1073
  tail call void @llvm.dbg.value(metadata i8** undef, i64 0, metadata !1062, metadata !810) #10, !dbg !1075
  tail call void @llvm.dbg.value(metadata i32 %103, i64 0, metadata !1063, metadata !810) #10, !dbg !1076
  tail call void @llvm.dbg.value(metadata i8* %104, i64 0, metadata !1064, metadata !810) #10, !dbg !1077
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1067, metadata !810) #10, !dbg !1078
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE** undef, i64 0, metadata !1065, metadata !1054) #10, !dbg !1079
  tail call void @llvm.dbg.value(metadata i8** undef, i64 0, metadata !1066, metadata !1054) #10, !dbg !1080
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE** undef, i64 0, metadata !206, metadata !810) #10, !dbg !1081
  tail call void @llvm.dbg.value(metadata i8** undef, i64 0, metadata !207, metadata !810) #10, !dbg !1084
  %111 = load i8*, i8** @temp_stream.tempfile, align 8, !dbg !1085, !tbaa !818
  %112 = icmp eq i8* %111, null, !dbg !1086
  br i1 %112, label %113, label %146, !dbg !1087

; <label>:113:                                    ; preds = %110
  %114 = tail call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i64 0, i64 0)) #10, !dbg !1088
  tail call void @llvm.dbg.value(metadata i8* %114, i64 0, metadata !208, metadata !810) #10, !dbg !1089
  %115 = icmp ne i8* %114, null, !dbg !1090
  %116 = select i1 %115, i8* %114, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i64 0, i64 0), !dbg !1090
  tail call void @llvm.dbg.value(metadata i8* %116, i64 0, metadata !211, metadata !810) #10, !dbg !1091
  %117 = tail call i8* @mfile_name_concat(i8* %116, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.46, i64 0, i64 0), i8** null) #10, !dbg !1092
  store i8* %117, i8** @temp_stream.tempfile, align 8, !dbg !1093, !tbaa !818
  %118 = icmp eq i8* %116, null, !dbg !1094
  br i1 %118, label %119, label %121, !dbg !1096

; <label>:119:                                    ; preds = %113
  %120 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.47, i64 0, i64 0), i32 5) #10, !dbg !1097
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %120) #10, !dbg !1099
  br label %203, !dbg !1101

; <label>:121:                                    ; preds = %113
  %122 = tail call i32 @mkstemp_safer(i8* %117) #10, !dbg !1102
  tail call void @llvm.dbg.value(metadata i32 %122, i64 0, metadata !212, metadata !810) #10, !dbg !1103
  %123 = icmp slt i32 %122, 0, !dbg !1104
  br i1 %123, label %124, label %129, !dbg !1106

; <label>:124:                                    ; preds = %121
  %125 = tail call i32* @__errno_location() #1, !dbg !1107
  %126 = load i32, i32* %125, align 4, !dbg !1107, !tbaa !970
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.48, i64 0, i64 0), i32 5) #10, !dbg !1109
  %128 = tail call i8* @quotearg_style(i32 4, i8* nonnull %116) #10, !dbg !1111
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %126, i8* %127, i8* %128) #10, !dbg !1112
  br label %141, !dbg !1114

; <label>:129:                                    ; preds = %121
  %130 = tail call %struct._IO_FILE* @fdopen(i32 %122, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.49, i64 0, i64 0)) #10, !dbg !1115
  store %struct._IO_FILE* %130, %struct._IO_FILE** @temp_stream.tmp_fp, align 8, !dbg !1116, !tbaa !818
  %131 = icmp eq %struct._IO_FILE* %130, null, !dbg !1117
  br i1 %131, label %132, label %143, !dbg !1119

; <label>:132:                                    ; preds = %129
  %133 = tail call i32* @__errno_location() #1, !dbg !1120
  %134 = load i32, i32* %133, align 4, !dbg !1120, !tbaa !970
  %135 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.50, i64 0, i64 0), i32 5) #10, !dbg !1122
  %136 = load i8*, i8** @temp_stream.tempfile, align 8, !dbg !1124, !tbaa !818
  %137 = tail call i8* @quotearg_style(i32 4, i8* %136) #10, !dbg !1124
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %134, i8* %135, i8* %137) #10, !dbg !1125
  %138 = tail call i32 @close(i32 %122) #10, !dbg !1127
  %139 = load i8*, i8** @temp_stream.tempfile, align 8, !dbg !1128, !tbaa !818
  %140 = tail call i32 @unlink(i8* %139) #10, !dbg !1129
  br label %141, !dbg !1129

; <label>:141:                                    ; preds = %132, %124
  %142 = load i8*, i8** @temp_stream.tempfile, align 8, !dbg !1130, !tbaa !818
  tail call void @free(i8* %142) #10, !dbg !1131
  store i8* null, i8** @temp_stream.tempfile, align 8, !dbg !1132, !tbaa !818
  br label %203, !dbg !1133

; <label>:143:                                    ; preds = %129
  %144 = load i8*, i8** @temp_stream.tempfile, align 8, !dbg !1134, !tbaa !818
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* null, i64 0, metadata !1135, metadata !810) #10, !dbg !1141
  %145 = tail call i32 @unlink(i8* %144) #10, !dbg !1143
  br label %162

; <label>:146:                                    ; preds = %110
  %147 = load %struct._IO_FILE*, %struct._IO_FILE** @temp_stream.tmp_fp, align 8, !dbg !1144, !tbaa !818
  tail call void @clearerr_unlocked(%struct._IO_FILE* %147) #10, !dbg !1144
  %148 = load %struct._IO_FILE*, %struct._IO_FILE** @temp_stream.tmp_fp, align 8, !dbg !1146, !tbaa !818
  %149 = tail call i32 @rpl_fseeko(%struct._IO_FILE* %148, i64 0, i32 0) #10, !dbg !1148
  %150 = icmp slt i32 %149, 0, !dbg !1149
  br i1 %150, label %156, label %151, !dbg !1150

; <label>:151:                                    ; preds = %146
  %152 = load %struct._IO_FILE*, %struct._IO_FILE** @temp_stream.tmp_fp, align 8, !dbg !1151, !tbaa !818
  %153 = tail call i32 @fileno(%struct._IO_FILE* %152) #10, !dbg !1153
  %154 = tail call i32 @ftruncate(i32 %153, i64 0) #10, !dbg !1154
  %155 = icmp slt i32 %154, 0, !dbg !1156
  br i1 %155, label %156, label %162, !dbg !1157

; <label>:156:                                    ; preds = %151, %146
  %157 = tail call i32* @__errno_location() #1, !dbg !1159
  %158 = load i32, i32* %157, align 4, !dbg !1159, !tbaa !970
  %159 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.51, i64 0, i64 0), i32 5) #10, !dbg !1161
  %160 = load i8*, i8** @temp_stream.tempfile, align 8, !dbg !1163, !tbaa !818
  %161 = tail call i8* @quotearg_style(i32 4, i8* %160) #10, !dbg !1163
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %158, i8* %159, i8* %161) #10, !dbg !1164
  br label %203, !dbg !1166

; <label>:162:                                    ; preds = %151, %143
  %163 = load %struct._IO_FILE*, %struct._IO_FILE** @temp_stream.tmp_fp, align 8, !dbg !1167, !tbaa !818
  %164 = load i64, i64* bitcast (i8** @temp_stream.tempfile to i64*), align 8, !dbg !1168, !tbaa !818
  br label %165, !dbg !1169

; <label>:165:                                    ; preds = %175, %162
  %166 = phi i64 [ 0, %162 ], [ %179, %175 ]
  tail call void @llvm.dbg.value(metadata i64 %166, i64 0, metadata !1067, metadata !810) #10, !dbg !1078
  %167 = load i8*, i8** @G_buffer, align 8, !dbg !1170, !tbaa !818
  %168 = load i64, i64* @read_size, align 8, !dbg !1171, !tbaa !883
  %169 = tail call i64 @safe_read(i32 %103, i8* %167, i64 %168) #10, !dbg !1172
  tail call void @llvm.dbg.value(metadata i64 %169, i64 0, metadata !1071, metadata !810) #10, !dbg !1173
  switch i64 %169, label %175 [
    i64 0, label %186
    i64 -1, label %170
  ], !dbg !1174

; <label>:170:                                    ; preds = %165
  %171 = tail call i32* @__errno_location() #1, !dbg !1175
  %172 = load i32, i32* %171, align 4, !dbg !1175, !tbaa !970
  %173 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.42, i64 0, i64 0), i32 5) #10, !dbg !1178
  %174 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %104) #10, !dbg !1180
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %172, i8* %173, i8* %174) #10, !dbg !1182
  br label %203, !dbg !1184

; <label>:175:                                    ; preds = %165
  %176 = load i8*, i8** @G_buffer, align 8, !dbg !1185, !tbaa !818
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %163, i64 0, metadata !1065, metadata !810) #10, !dbg !1079
  %177 = tail call i64 @fwrite_unlocked(i8* %176, i64 1, i64 %169, %struct._IO_FILE* %163) #10, !dbg !1185
  %178 = icmp eq i64 %177, %169, !dbg !1187
  %179 = add i64 %169, %166, !dbg !1188
  tail call void @llvm.dbg.value(metadata i64 %179, i64 0, metadata !1067, metadata !810) #10, !dbg !1078
  tail call void @llvm.dbg.value(metadata i64 %166, i64 0, metadata !1067, metadata !810) #10, !dbg !1078
  br i1 %178, label %165, label %180, !dbg !1189

; <label>:180:                                    ; preds = %175
  %181 = tail call i32* @__errno_location() #1, !dbg !1190
  %182 = load i32, i32* %181, align 4, !dbg !1190, !tbaa !970
  %183 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.43, i64 0, i64 0), i32 5) #10, !dbg !1192
  %184 = inttoptr i64 %164 to i8*, !dbg !1194
  tail call void @llvm.dbg.value(metadata i8* %184, i64 0, metadata !1066, metadata !810) #10, !dbg !1080
  %185 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %184) #10, !dbg !1195
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %182, i8* %183, i8* %185) #10, !dbg !1197
  br label %203, !dbg !1199

; <label>:186:                                    ; preds = %165
  tail call void @llvm.dbg.value(metadata i64 %166, i64 0, metadata !1067, metadata !810) #10, !dbg !1078
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %163, i64 0, metadata !1065, metadata !810) #10, !dbg !1079
  %187 = tail call i32 @fflush_unlocked(%struct._IO_FILE* %163) #10, !dbg !1200
  %188 = icmp eq i32 %187, 0, !dbg !1202
  br i1 %188, label %195, label %189, !dbg !1203

; <label>:189:                                    ; preds = %186
  %190 = tail call i32* @__errno_location() #1, !dbg !1204
  %191 = load i32, i32* %190, align 4, !dbg !1204, !tbaa !970
  %192 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.43, i64 0, i64 0), i32 5) #10, !dbg !1206
  %193 = inttoptr i64 %164 to i8*, !dbg !1208
  tail call void @llvm.dbg.value(metadata i8* %193, i64 0, metadata !1066, metadata !810) #10, !dbg !1080
  %194 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %193) #10, !dbg !1209
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %191, i8* %192, i8* %194) #10, !dbg !1211
  br label %203, !dbg !1213

; <label>:195:                                    ; preds = %186
  tail call void @llvm.dbg.value(metadata i64 %166, i64 0, metadata !1049, metadata !810) #10, !dbg !1214
  %196 = icmp slt i64 %166, 0, !dbg !1215
  br i1 %196, label %203, label %197, !dbg !1217

; <label>:197:                                    ; preds = %195
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %163, i64 0, metadata !1047, metadata !810) #10, !dbg !1055
  %198 = tail call i32 @fileno(%struct._IO_FILE* %163) #10, !dbg !1218
  %199 = inttoptr i64 %164 to i8*, !dbg !1219
  tail call void @llvm.dbg.value(metadata i8* %199, i64 0, metadata !1048, metadata !810) #10, !dbg !1056
  %200 = tail call fastcc zeroext i1 @tac_seekable(i32 %198, i8* %199, i64 %166) #10, !dbg !1220
  br label %203

; <label>:201:                                    ; preds = %107
  %202 = tail call fastcc zeroext i1 @tac_seekable(i32 %103, i8* %104, i64 %105) #10, !dbg !1222
  br label %203, !dbg !1223

; <label>:203:                                    ; preds = %201, %197, %195, %189, %180, %170, %156, %141, %119
  %204 = phi i1 [ %202, %201 ], [ %200, %197 ], [ false, %195 ], [ false, %189 ], [ false, %156 ], [ false, %119 ], [ false, %141 ], [ false, %170 ], [ false, %180 ]
  %205 = zext i1 %204 to i8, !dbg !1225
  tail call void @llvm.dbg.value(metadata i8 %205, i64 0, metadata !989, metadata !810) #10, !dbg !1227
  br i1 %102, label %214, label %206, !dbg !1228

; <label>:206:                                    ; preds = %203
  %207 = tail call i32 @close(i32 %103) #10, !dbg !1230
  %208 = icmp eq i32 %207, 0, !dbg !1232
  br i1 %208, label %214, label %209, !dbg !1233

; <label>:209:                                    ; preds = %206
  %210 = tail call i32* @__errno_location() #1, !dbg !1234
  %211 = load i32, i32* %210, align 4, !dbg !1234, !tbaa !970
  %212 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.42, i64 0, i64 0), i32 5) #10, !dbg !1236
  %213 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %104) #10, !dbg !1238
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %211, i8* %212, i8* %213) #10, !dbg !1240
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !989, metadata !810) #10, !dbg !1227
  br label %214, !dbg !1242

; <label>:214:                                    ; preds = %209, %206, %203
  %215 = phi i8 [ %205, %203 ], [ 0, %209 ], [ %205, %206 ]
  tail call void @llvm.dbg.value(metadata i8 %215, i64 0, metadata !989, metadata !810) #10, !dbg !1227
  %216 = icmp ne i8 %215, 0, !dbg !1243
  br label %217, !dbg !1244

; <label>:217:                                    ; preds = %96, %214
  %218 = phi i1 [ %216, %214 ], [ false, %96 ]
  %219 = zext i1 %218 to i8, !dbg !1245
  %220 = and i8 %219, %84, !dbg !1246
  tail call void @llvm.dbg.value(metadata i8 %220, i64 0, metadata !48, metadata !810), !dbg !975
  %221 = add i64 %83, 1, !dbg !1247
  tail call void @llvm.dbg.value(metadata i64 %221, i64 0, metadata !52, metadata !810), !dbg !976
  tail call void @llvm.dbg.value(metadata i64 %221, i64 0, metadata !52, metadata !810), !dbg !976
  tail call void @llvm.dbg.value(metadata i8 %220, i64 0, metadata !48, metadata !810), !dbg !975
  %222 = getelementptr inbounds i8*, i8** %77, i64 %221, !dbg !977
  %223 = load i8*, i8** %222, align 8, !dbg !977, !tbaa !818
  %224 = icmp eq i8* %223, null, !dbg !981
  br i1 %224, label %225, label %81, !dbg !981, !llvm.loop !1249

; <label>:225:                                    ; preds = %217
  br label %226, !dbg !1252

; <label>:226:                                    ; preds = %225, %70
  %227 = phi i8 [ 1, %70 ], [ %220, %225 ]
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !231, metadata !810) #10, !dbg !1252
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !232, metadata !810) #10, !dbg !1254
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !233, metadata !810) #10, !dbg !1255
  %228 = load i64, i64* @output.bytes_in_buffer, align 8, !dbg !1256, !tbaa !883
  %229 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1257, !tbaa !818
  %230 = tail call i64 @fwrite_unlocked(i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @output.buffer, i64 0, i64 0), i64 1, i64 %228, %struct._IO_FILE* %229) #10, !dbg !1257
  store i64 0, i64* @output.bytes_in_buffer, align 8, !dbg !1260, !tbaa !883
  %231 = load i1, i1* @have_read_stdin, align 1
  br i1 %231, label %232, label %238, !dbg !1261

; <label>:232:                                    ; preds = %226
  %233 = tail call i32 @close(i32 0) #10, !dbg !1263
  %234 = icmp slt i32 %233, 0, !dbg !1265
  br i1 %234, label %235, label %238, !dbg !1266

; <label>:235:                                    ; preds = %232
  %236 = tail call i32* @__errno_location() #1, !dbg !1267
  %237 = load i32, i32* %236, align 4, !dbg !1267, !tbaa !970
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %237, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #10, !dbg !1269
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !48, metadata !810), !dbg !975
  br label %238, !dbg !1271

; <label>:238:                                    ; preds = %235, %232, %226
  %239 = phi i8 [ 0, %235 ], [ %227, %232 ], [ %227, %226 ]
  tail call void @llvm.dbg.value(metadata i8 %239, i64 0, metadata !48, metadata !810), !dbg !975
  %240 = and i8 %239, 1, !dbg !1272
  %241 = xor i8 %240, 1, !dbg !1272
  %242 = zext i8 %241 to i32, !dbg !1272
  ret i32 %242, !dbg !1273
}

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #7

; Function Attrs: nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #4

declare i8* @re_compile_pattern(i8*, i64, %struct.re_pattern_buffer*) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #7

declare i32 @open(i8* nocapture readonly, i32, ...) local_unnamed_addr #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #8

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @isatty(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i8* @getenv(i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fdopen(i32, i8* nocapture readonly) local_unnamed_addr #2

declare i32 @close(i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @unlink(i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @clearerr_unlocked(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @ftruncate(i32, i64) local_unnamed_addr #2

declare i64 @fwrite_unlocked(i8*, i64, i64, %struct._IO_FILE*) local_unnamed_addr #3

declare i32 @fflush_unlocked(%struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @tac_seekable(i32, i8*, i64) unnamed_addr #6 !dbg !1274 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1278, metadata !810), !dbg !1311
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1279, metadata !810), !dbg !1312
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !1280, metadata !810), !dbg !1313
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1284, metadata !810), !dbg !1314
  %4 = load i8*, i8** @separator, align 8, !dbg !1315, !tbaa !818
  %5 = load i8, i8* %4, align 1, !dbg !1316, !tbaa !908
  tail call void @llvm.dbg.value(metadata i8 %5, i64 0, metadata !1285, metadata !810), !dbg !1317
  %6 = getelementptr inbounds i8, i8* %4, i64 1, !dbg !1318
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !1286, metadata !810), !dbg !1319
  %7 = load i64, i64* @match_length, align 8, !dbg !1320, !tbaa !883
  %8 = add i64 %7, -1, !dbg !1321
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !1287, metadata !810), !dbg !1322
  %9 = load i64, i64* @read_size, align 8, !dbg !1323, !tbaa !883
  %10 = urem i64 %2, %9, !dbg !1324
  tail call void @llvm.dbg.value(metadata i64 %10, i64 0, metadata !1288, metadata !810), !dbg !1325
  %11 = icmp eq i64 %10, 0, !dbg !1326
  br i1 %11, label %21, label %12, !dbg !1328

; <label>:12:                                     ; preds = %3
  %13 = sub i64 %2, %10, !dbg !1329
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !1280, metadata !810), !dbg !1313
  %14 = tail call i64 @lseek(i32 %0, i64 %13, i32 0) #10, !dbg !1331
  %15 = icmp slt i64 %14, 0, !dbg !1333
  br i1 %15, label %16, label %21, !dbg !1334

; <label>:16:                                     ; preds = %12
  %17 = tail call i32* @__errno_location() #1, !dbg !1335
  %18 = load i32, i32* %17, align 4, !dbg !1335, !tbaa !970
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.52, i64 0, i64 0), i32 5) #10, !dbg !1336
  %20 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %1) #10, !dbg !1338
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %18, i8* %19, i8* %20) #10, !dbg !1340
  br label %21, !dbg !1342

; <label>:21:                                     ; preds = %12, %16, %3
  %22 = phi i64 [ %2, %3 ], [ %13, %12 ], [ %13, %16 ]
  tail call void @llvm.dbg.value(metadata i64 %22, i64 0, metadata !1280, metadata !810), !dbg !1313
  %23 = load i8*, i8** @G_buffer, align 8, !dbg !1343, !tbaa !818
  %24 = load i64, i64* @read_size, align 8, !dbg !1345, !tbaa !883
  %25 = tail call i64 @safe_read(i32 %0, i8* %23, i64 %24) #10, !dbg !1346
  tail call void @llvm.dbg.value(metadata i64 %25, i64 0, metadata !1283, metadata !810), !dbg !1347
  %26 = icmp eq i64 %25, 0, !dbg !1348
  %27 = icmp ne i64 %22, 0, !dbg !1349
  %28 = and i1 %27, %26, !dbg !1350
  br i1 %28, label %29, label %31, !dbg !1351

; <label>:29:                                     ; preds = %21
  br label %37, !dbg !1353

; <label>:30:                                     ; preds = %48
  br label %31, !dbg !1313

; <label>:31:                                     ; preds = %30, %21
  %32 = phi i64 [ %22, %21 ], [ %50, %30 ]
  %33 = phi i64 [ %25, %21 ], [ %52, %30 ]
  tail call void @llvm.dbg.value(metadata i64 %32, i64 0, metadata !1280, metadata !810), !dbg !1313
  tail call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !1283, metadata !810), !dbg !1347
  %34 = load i64, i64* @read_size, align 8, !dbg !1354, !tbaa !883
  %35 = icmp eq i64 %33, %34, !dbg !1355
  br i1 %35, label %36, label %66, !dbg !1356

; <label>:36:                                     ; preds = %31
  br label %56, !dbg !1357

; <label>:37:                                     ; preds = %29, %48
  %38 = phi i64 [ %50, %48 ], [ %22, %29 ]
  %39 = load i64, i64* @read_size, align 8, !dbg !1353, !tbaa !883
  tail call void @llvm.dbg.value(metadata i64 %39, i64 0, metadata !1289, metadata !810), !dbg !1358
  %40 = sub nsw i64 0, %39, !dbg !1359
  %41 = tail call i64 @lseek(i32 %0, i64 %40, i32 1) #10, !dbg !1361
  %42 = icmp slt i64 %41, 0, !dbg !1362
  br i1 %42, label %43, label %48, !dbg !1363

; <label>:43:                                     ; preds = %37
  %44 = tail call i32* @__errno_location() #1, !dbg !1364
  %45 = load i32, i32* %44, align 4, !dbg !1364, !tbaa !970
  %46 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.52, i64 0, i64 0), i32 5) #10, !dbg !1365
  %47 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %1) #10, !dbg !1367
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %45, i8* %46, i8* %47) #10, !dbg !1369
  br label %48, !dbg !1371

; <label>:48:                                     ; preds = %43, %37
  %49 = load i64, i64* @read_size, align 8, !dbg !1372, !tbaa !883
  %50 = sub i64 %38, %49, !dbg !1373
  tail call void @llvm.dbg.value(metadata i64 %50, i64 0, metadata !1280, metadata !810), !dbg !1313
  tail call void @llvm.dbg.value(metadata i64 %50, i64 0, metadata !1280, metadata !810), !dbg !1313
  %51 = load i8*, i8** @G_buffer, align 8, !dbg !1343, !tbaa !818
  %52 = tail call i64 @safe_read(i32 %0, i8* %51, i64 %49) #10, !dbg !1346
  tail call void @llvm.dbg.value(metadata i64 %52, i64 0, metadata !1283, metadata !810), !dbg !1347
  %53 = icmp eq i64 %52, 0, !dbg !1348
  %54 = icmp ne i64 %50, 0, !dbg !1349
  %55 = and i1 %54, %53, !dbg !1350
  br i1 %55, label %37, label %30, !dbg !1351, !llvm.loop !1374

; <label>:56:                                     ; preds = %36, %61
  %57 = phi i64 [ %60, %61 ], [ %33, %36 ]
  %58 = phi i64 [ %62, %61 ], [ %32, %36 ]
  %59 = load i8*, i8** @G_buffer, align 8, !dbg !1357, !tbaa !818
  %60 = tail call i64 @safe_read(i32 %0, i8* %59, i64 %57) #10, !dbg !1377
  tail call void @llvm.dbg.value(metadata i64 %60, i64 0, metadata !1291, metadata !810), !dbg !1378
  switch i64 %60, label %61 [
    i64 0, label %65
    i64 -1, label %70
  ], !dbg !1379

; <label>:61:                                     ; preds = %56
  %62 = add i64 %60, %58, !dbg !1380
  tail call void @llvm.dbg.value(metadata i64 %62, i64 0, metadata !1280, metadata !810), !dbg !1313
  tail call void @llvm.dbg.value(metadata i64 %62, i64 0, metadata !1280, metadata !810), !dbg !1313
  tail call void @llvm.dbg.value(metadata i64 %60, i64 0, metadata !1283, metadata !810), !dbg !1347
  tail call void @llvm.dbg.value(metadata i64 %62, i64 0, metadata !1280, metadata !810), !dbg !1313
  tail call void @llvm.dbg.value(metadata i64 %60, i64 0, metadata !1283, metadata !810), !dbg !1347
  %63 = load i64, i64* @read_size, align 8, !dbg !1354, !tbaa !883
  %64 = icmp eq i64 %60, %63, !dbg !1355
  br i1 %64, label %56, label %76, !dbg !1356

; <label>:65:                                     ; preds = %56
  br label %66, !dbg !1313

; <label>:66:                                     ; preds = %65, %31
  %67 = phi i64 [ %33, %31 ], [ %57, %65 ]
  %68 = phi i64 [ %32, %31 ], [ %58, %65 ]
  tail call void @llvm.dbg.value(metadata i64 undef, i64 0, metadata !1280, metadata !810), !dbg !1313
  tail call void @llvm.dbg.value(metadata i64 undef, i64 0, metadata !1283, metadata !810), !dbg !1347
  %69 = icmp eq i64 %67, -1, !dbg !1381
  br i1 %69, label %71, label %77, !dbg !1383

; <label>:70:                                     ; preds = %56
  br label %71, !dbg !1384

; <label>:71:                                     ; preds = %70, %66
  %72 = tail call i32* @__errno_location() #1, !dbg !1384
  %73 = load i32, i32* %72, align 4, !dbg !1384, !tbaa !970
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.42, i64 0, i64 0), i32 5) #10, !dbg !1386
  %75 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %1) #10, !dbg !1388
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %73, i8* %74, i8* %75) #10, !dbg !1390
  br label %327, !dbg !1392

; <label>:76:                                     ; preds = %61
  br label %77, !dbg !1393

; <label>:77:                                     ; preds = %76, %66
  %78 = phi i64 [ %68, %66 ], [ %62, %76 ]
  %79 = phi i64 [ %67, %66 ], [ %60, %76 ]
  %80 = load i8*, i8** @G_buffer, align 8, !dbg !1393, !tbaa !818
  %81 = getelementptr inbounds i8, i8* %80, i64 %79, !dbg !1394
  tail call void @llvm.dbg.value(metadata i8* %81, i64 0, metadata !1282, metadata !810), !dbg !1395
  tail call void @llvm.dbg.value(metadata i8* %81, i64 0, metadata !1281, metadata !810), !dbg !1396
  %82 = load i64, i64* @sentinel_length, align 8, !dbg !1397, !tbaa !883
  %83 = icmp eq i64 %82, 0, !dbg !1397
  %84 = sub i64 1, %7, !dbg !1399
  %85 = getelementptr inbounds i8, i8* %81, i64 %84, !dbg !1399
  tail call void @llvm.dbg.value(metadata i8* %85, i64 0, metadata !1281, metadata !810), !dbg !1396
  %86 = select i1 %83, i8* %81, i8* %85, !dbg !1400
  %87 = icmp eq i64 %8, 0
  br label %88

; <label>:88:                                     ; preds = %77, %234
  %89 = phi i64 [ %82, %77 ], [ %237, %234 ]
  %90 = phi i8 [ 1, %77 ], [ %101, %234 ]
  %91 = phi i8* [ %81, %77 ], [ %229, %234 ]
  %92 = phi i8* [ %86, %77 ], [ %236, %234 ]
  %93 = phi i64 [ %78, %77 ], [ %217, %234 ]
  br label %94

; <label>:94:                                     ; preds = %88, %323
  %95 = phi i64 [ %321, %323 ], [ %89, %88 ]
  %96 = phi i8 [ %319, %323 ], [ %90, %88 ]
  %97 = phi i8* [ %320, %323 ], [ %91, %88 ]
  %98 = phi i8* [ %326, %323 ], [ %92, %88 ]
  br label %99, !dbg !1313

; <label>:99:                                     ; preds = %94, %318
  %100 = phi i64 [ 0, %318 ], [ %95, %94 ], !dbg !1401
  %101 = phi i8 [ %319, %318 ], [ %96, %94 ]
  %102 = phi i8* [ %320, %318 ], [ %97, %94 ]
  %103 = phi i8* [ %150, %318 ], [ %98, %94 ]
  tail call void @llvm.dbg.value(metadata i64 %93, i64 0, metadata !1280, metadata !810), !dbg !1313
  tail call void @llvm.dbg.value(metadata i8* %103, i64 0, metadata !1281, metadata !810), !dbg !1396
  tail call void @llvm.dbg.value(metadata i8* %102, i64 0, metadata !1282, metadata !810), !dbg !1395
  tail call void @llvm.dbg.value(metadata i8 %101, i64 0, metadata !1284, metadata !810), !dbg !1314
  %104 = icmp eq i64 %100, 0, !dbg !1402
  br i1 %104, label %106, label %105, !dbg !1403

; <label>:105:                                    ; preds = %99
  br label %136, !dbg !1396

; <label>:106:                                    ; preds = %99
  %107 = load i8*, i8** @G_buffer, align 8, !dbg !1404, !tbaa !818
  %108 = ptrtoint i8* %103 to i64, !dbg !1405
  %109 = ptrtoint i8* %107 to i64, !dbg !1405
  %110 = sub i64 %108, %109, !dbg !1405
  tail call void @llvm.dbg.value(metadata i64 %110, i64 0, metadata !1293, metadata !810), !dbg !1406
  %111 = trunc i64 %110 to i32, !dbg !1407
  tail call void @llvm.dbg.value(metadata i32 %111, i64 0, metadata !1297, metadata !810), !dbg !1408
  %112 = sub nsw i32 1, %111, !dbg !1409
  tail call void @llvm.dbg.value(metadata i32 %112, i64 0, metadata !1298, metadata !810), !dbg !1410
  %113 = icmp slt i32 %111, 0, !dbg !1411
  br i1 %113, label %114, label %116, !dbg !1413

; <label>:114:                                    ; preds = %106
  %115 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.53, i64 0, i64 0), i32 5) #10, !dbg !1414
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %115) #10, !dbg !1415
  unreachable, !dbg !1414

; <label>:116:                                    ; preds = %106
  %117 = icmp eq i32 %111, 0, !dbg !1417
  br i1 %117, label %152, label %118, !dbg !1419

; <label>:118:                                    ; preds = %116
  %119 = add i64 %110, 4294967295, !dbg !1420
  %120 = trunc i64 %119 to i32, !dbg !1421
  %121 = tail call i32 @re_search(%struct.re_pattern_buffer* nonnull @compiled_separator, i8* %107, i32 %111, i32 %120, i32 %112, %struct.re_registers* nonnull @regs) #10, !dbg !1422
  tail call void @llvm.dbg.value(metadata i32 %121, i64 0, metadata !1299, metadata !810), !dbg !1424
  switch i32 %121, label %126 [
    i32 -1, label %122
    i32 -2, label %124
  ], !dbg !1425

; <label>:122:                                    ; preds = %118
  %123 = load i8*, i8** @G_buffer, align 8, !tbaa !818
  br label %154, !dbg !1425

; <label>:124:                                    ; preds = %118
  %125 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.54, i64 0, i64 0), i32 5) #10, !dbg !1427
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %125) #10, !dbg !1430
  unreachable, !dbg !1427

; <label>:126:                                    ; preds = %118
  %127 = load i8*, i8** @G_buffer, align 8, !dbg !1432, !tbaa !818
  %128 = load i32*, i32** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @regs, i64 0, i32 1), align 8, !dbg !1434, !tbaa !1435
  %129 = load i32, i32* %128, align 4, !dbg !1437, !tbaa !970
  %130 = sext i32 %129 to i64, !dbg !1438
  %131 = getelementptr inbounds i8, i8* %127, i64 %130, !dbg !1438
  tail call void @llvm.dbg.value(metadata i8* %131, i64 0, metadata !1281, metadata !810), !dbg !1396
  %132 = load i32*, i32** getelementptr inbounds (%struct.re_registers, %struct.re_registers* @regs, i64 0, i32 2), align 8, !dbg !1439, !tbaa !1440
  %133 = load i32, i32* %132, align 4, !dbg !1441, !tbaa !970
  %134 = sub nsw i32 %133, %129, !dbg !1442
  %135 = sext i32 %134 to i64, !dbg !1441
  store i64 %135, i64* @match_length, align 8, !dbg !1443, !tbaa !883
  br label %148

; <label>:136:                                    ; preds = %141, %105
  %137 = phi i8* [ %103, %105 ], [ %138, %141 ]
  tail call void @llvm.dbg.value(metadata i8* %137, i64 0, metadata !1281, metadata !810), !dbg !1396
  %138 = getelementptr inbounds i8, i8* %137, i64 -1, !dbg !1444
  tail call void @llvm.dbg.value(metadata i8* %138, i64 0, metadata !1281, metadata !810), !dbg !1396
  %139 = load i8, i8* %138, align 1, !dbg !1447, !tbaa !908
  %140 = icmp eq i8 %139, %5, !dbg !1448
  br i1 %140, label %142, label %141, !dbg !1449

; <label>:141:                                    ; preds = %136, %143
  br label %136, !dbg !1396, !llvm.loop !1450

; <label>:142:                                    ; preds = %136
  br i1 %87, label %146, label %143, !dbg !1453

; <label>:143:                                    ; preds = %142
  %144 = tail call i32 @strncmp(i8* %137, i8* %6, i64 %8) #13, !dbg !1454
  %145 = icmp eq i32 %144, 0, !dbg !1456
  br i1 %145, label %146, label %141, !dbg !1457

; <label>:146:                                    ; preds = %142, %143
  %147 = load i8*, i8** @G_buffer, align 8, !tbaa !818
  br label %148, !dbg !1458

; <label>:148:                                    ; preds = %146, %126
  %149 = phi i8* [ %127, %126 ], [ %147, %146 ], !dbg !1458
  %150 = phi i8* [ %131, %126 ], [ %138, %146 ]
  tail call void @llvm.dbg.value(metadata i8* %150, i64 0, metadata !1281, metadata !810), !dbg !1396
  %151 = icmp ult i8* %150, %149, !dbg !1459
  br i1 %151, label %152, label %243, !dbg !1460

; <label>:152:                                    ; preds = %116, %148
  %153 = phi i8* [ %107, %116 ], [ %149, %148 ]
  br label %154, !dbg !1461

; <label>:154:                                    ; preds = %152, %122
  %155 = phi i8* [ %123, %122 ], [ %153, %152 ], !dbg !1463
  %156 = icmp eq i64 %93, 0, !dbg !1461
  %157 = ptrtoint i8* %102 to i64
  %158 = ptrtoint i8* %155 to i64
  %159 = sub i64 %157, %158
  br i1 %156, label %160, label %190, !dbg !1464

; <label>:160:                                    ; preds = %154
  tail call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !231, metadata !810) #10, !dbg !1465
  tail call void @llvm.dbg.value(metadata i8* %102, i64 0, metadata !232, metadata !810) #10, !dbg !1468
  tail call void @llvm.dbg.value(metadata i64 %159, i64 0, metadata !233, metadata !810) #10, !dbg !1469
  %161 = load i64, i64* @output.bytes_in_buffer, align 8, !dbg !1470, !tbaa !883
  %162 = sub i64 8192, %161, !dbg !1471
  tail call void @llvm.dbg.value(metadata i64 %162, i64 0, metadata !234, metadata !810) #10, !dbg !1472
  %163 = icmp eq i8* %155, null, !dbg !1473
  br i1 %163, label %168, label %164, !dbg !1474

; <label>:164:                                    ; preds = %160
  tail call void @llvm.dbg.value(metadata i64 %162, i64 0, metadata !234, metadata !810) #10, !dbg !1472
  tail call void @llvm.dbg.value(metadata i64 %159, i64 0, metadata !233, metadata !810) #10, !dbg !1469
  tail call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !231, metadata !810) #10, !dbg !1465
  %165 = icmp ult i64 %159, %162, !dbg !1475
  %166 = getelementptr inbounds [8192 x i8], [8192 x i8]* @output.buffer, i64 0, i64 %161
  br i1 %165, label %182, label %167, !dbg !1477

; <label>:167:                                    ; preds = %164
  br label %171, !dbg !1478

; <label>:168:                                    ; preds = %160
  %169 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1480, !tbaa !818
  %170 = tail call i64 @fwrite_unlocked(i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @output.buffer, i64 0, i64 0), i64 1, i64 %161, %struct._IO_FILE* %169) #10, !dbg !1480
  br label %188, !dbg !1481

; <label>:171:                                    ; preds = %167, %171
  %172 = phi i8* [ getelementptr inbounds ([8192 x i8], [8192 x i8]* @output.buffer, i64 0, i64 0), %171 ], [ %166, %167 ]
  %173 = phi i64 [ 8192, %171 ], [ %162, %167 ]
  %174 = phi i64 [ %176, %171 ], [ %159, %167 ]
  %175 = phi i8* [ %177, %171 ], [ %155, %167 ]
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %172, i8* %175, i64 %173, i32 1, i1 false) #10, !dbg !1478
  %176 = sub i64 %174, %173, !dbg !1482
  tail call void @llvm.dbg.value(metadata i64 %176, i64 0, metadata !233, metadata !810) #10, !dbg !1469
  %177 = getelementptr inbounds i8, i8* %175, i64 %173, !dbg !1483
  tail call void @llvm.dbg.value(metadata i8* %177, i64 0, metadata !231, metadata !810) #10, !dbg !1465
  %178 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1484, !tbaa !818
  %179 = tail call i64 @fwrite_unlocked(i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @output.buffer, i64 0, i64 0), i64 1, i64 8192, %struct._IO_FILE* %178) #10, !dbg !1484
  store i64 0, i64* @output.bytes_in_buffer, align 8, !dbg !1485, !tbaa !883
  tail call void @llvm.dbg.value(metadata i64 8192, i64 0, metadata !234, metadata !810) #10, !dbg !1472
  tail call void @llvm.dbg.value(metadata i64 8192, i64 0, metadata !234, metadata !810) #10, !dbg !1472
  tail call void @llvm.dbg.value(metadata i64 %176, i64 0, metadata !233, metadata !810) #10, !dbg !1469
  tail call void @llvm.dbg.value(metadata i8* %177, i64 0, metadata !231, metadata !810) #10, !dbg !1465
  %180 = icmp ult i64 %176, 8192, !dbg !1475
  br i1 %180, label %181, label %171, !dbg !1477, !llvm.loop !1486

; <label>:181:                                    ; preds = %171
  br label %182, !dbg !1489

; <label>:182:                                    ; preds = %181, %164
  %183 = phi i64 [ %161, %164 ], [ 0, %181 ], !dbg !1490
  %184 = phi i8* [ %155, %164 ], [ %177, %181 ]
  %185 = phi i64 [ %159, %164 ], [ %176, %181 ]
  %186 = phi i8* [ %166, %164 ], [ getelementptr inbounds ([8192 x i8], [8192 x i8]* @output.buffer, i64 0, i64 0), %181 ]
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %186, i8* %184, i64 %185, i32 1, i1 false) #10, !dbg !1489
  %187 = add i64 %185, %183, !dbg !1490
  br label %188, !dbg !1491

; <label>:188:                                    ; preds = %168, %182
  %189 = phi i64 [ %187, %182 ], [ 0, %168 ]
  store i64 %189, i64* @output.bytes_in_buffer, align 8, !dbg !1492, !tbaa !883
  br label %327, !dbg !1493

; <label>:190:                                    ; preds = %154
  tail call void @llvm.dbg.value(metadata i64 %159, i64 0, metadata !1283, metadata !810), !dbg !1347
  %191 = load i64, i64* @read_size, align 8, !dbg !1494, !tbaa !883
  %192 = icmp ugt i64 %159, %191, !dbg !1495
  br i1 %192, label %193, label %210, !dbg !1496

; <label>:193:                                    ; preds = %190
  %194 = load i64, i64* @sentinel_length, align 8, !dbg !1497, !tbaa !883
  %195 = icmp ne i64 %194, 0, !dbg !1497
  %196 = select i1 %195, i64 %194, i64 1, !dbg !1497
  tail call void @llvm.dbg.value(metadata i64 %196, i64 0, metadata !1305, metadata !810), !dbg !1498
  %197 = load i64, i64* @G_buffer_size, align 8, !dbg !1499, !tbaa !883
  tail call void @llvm.dbg.value(metadata i64 %197, i64 0, metadata !1306, metadata !810), !dbg !1500
  %198 = shl i64 %191, 1, !dbg !1501
  store i64 %198, i64* @read_size, align 8, !dbg !1501, !tbaa !883
  %199 = shl i64 %191, 2, !dbg !1502
  %200 = or i64 %199, 2, !dbg !1503
  %201 = add i64 %200, %194, !dbg !1504
  store i64 %201, i64* @G_buffer_size, align 8, !dbg !1505, !tbaa !883
  %202 = icmp ult i64 %201, %197, !dbg !1506
  br i1 %202, label %203, label %204, !dbg !1508

; <label>:203:                                    ; preds = %193
  tail call void @xalloc_die() #14, !dbg !1509
  unreachable, !dbg !1509

; <label>:204:                                    ; preds = %193
  %205 = sub i64 0, %196, !dbg !1510
  %206 = getelementptr inbounds i8, i8* %155, i64 %205, !dbg !1510
  %207 = tail call i8* @xrealloc(i8* %206, i64 %201) #10, !dbg !1511
  tail call void @llvm.dbg.value(metadata i8* %207, i64 0, metadata !1300, metadata !810), !dbg !1512
  %208 = getelementptr inbounds i8, i8* %207, i64 %196, !dbg !1513
  tail call void @llvm.dbg.value(metadata i8* %208, i64 0, metadata !1300, metadata !810), !dbg !1512
  store i8* %208, i8** @G_buffer, align 8, !dbg !1514, !tbaa !818
  %209 = load i64, i64* @read_size, align 8, !tbaa !883
  br label %210, !dbg !1515

; <label>:210:                                    ; preds = %204, %190
  %211 = phi i64 [ %209, %204 ], [ %191, %190 ], !dbg !1516
  %212 = icmp ult i64 %93, %211, !dbg !1518
  br i1 %212, label %215, label %213, !dbg !1519

; <label>:213:                                    ; preds = %210
  %214 = sub i64 %93, %211, !dbg !1520
  tail call void @llvm.dbg.value(metadata i64 %214, i64 0, metadata !1280, metadata !810), !dbg !1313
  br label %216, !dbg !1521

; <label>:215:                                    ; preds = %210
  store i64 %93, i64* @read_size, align 8, !dbg !1522, !tbaa !883
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1280, metadata !810), !dbg !1313
  br label %216

; <label>:216:                                    ; preds = %215, %213
  %217 = phi i64 [ %214, %213 ], [ 0, %215 ]
  tail call void @llvm.dbg.value(metadata i64 %217, i64 0, metadata !1280, metadata !810), !dbg !1313
  %218 = tail call i64 @lseek(i32 %0, i64 %217, i32 0) #10, !dbg !1524
  %219 = icmp slt i64 %218, 0, !dbg !1526
  br i1 %219, label %220, label %225, !dbg !1527

; <label>:220:                                    ; preds = %216
  %221 = tail call i32* @__errno_location() #1, !dbg !1528
  %222 = load i32, i32* %221, align 4, !dbg !1528, !tbaa !970
  %223 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.52, i64 0, i64 0), i32 5) #10, !dbg !1529
  %224 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %1) #10, !dbg !1531
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %222, i8* %223, i8* %224) #10, !dbg !1533
  br label %225, !dbg !1535

; <label>:225:                                    ; preds = %220, %216
  %226 = load i8*, i8** @G_buffer, align 8, !dbg !1536, !tbaa !818
  %227 = load i64, i64* @read_size, align 8, !dbg !1537, !tbaa !883
  %228 = getelementptr inbounds i8, i8* %226, i64 %227, !dbg !1538
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* %228, i8* %226, i64 %159, i32 1, i1 false), !dbg !1539
  %229 = getelementptr inbounds i8, i8* %228, i64 %159, !dbg !1540
  tail call void @llvm.dbg.value(metadata i8* %229, i64 0, metadata !1282, metadata !810), !dbg !1395
  %230 = load i64, i64* @sentinel_length, align 8, !dbg !1541, !tbaa !883
  tail call void @llvm.dbg.value(metadata i8* %236, i64 0, metadata !1281, metadata !810), !dbg !1396
  %231 = tail call i64 @safe_read(i32 %0, i8* %226, i64 %227) #10, !dbg !1543
  %232 = load i64, i64* @read_size, align 8, !dbg !1545, !tbaa !883
  %233 = icmp eq i64 %231, %232, !dbg !1546
  br i1 %233, label %234, label %238, !dbg !1547, !llvm.loop !1548

; <label>:234:                                    ; preds = %225
  %235 = icmp eq i64 %230, 0, !dbg !1541
  %236 = select i1 %235, i8* %229, i8* %228
  %237 = load i64, i64* @sentinel_length, align 8, !tbaa !883
  br label %88, !dbg !1547

; <label>:238:                                    ; preds = %225
  %239 = tail call i32* @__errno_location() #1, !dbg !1551
  %240 = load i32, i32* %239, align 4, !dbg !1551, !tbaa !970
  %241 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.42, i64 0, i64 0), i32 5) #10, !dbg !1553
  %242 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %1) #10, !dbg !1555
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %240, i8* %241, i8* %242) #10, !dbg !1557
  br label %327, !dbg !1559

; <label>:243:                                    ; preds = %148
  %244 = load i1, i1* @separator_ends_record, align 1
  br i1 %244, label %245, label %283, !dbg !1560

; <label>:245:                                    ; preds = %243
  %246 = load i64, i64* @match_length, align 8, !dbg !1561, !tbaa !883
  %247 = getelementptr inbounds i8, i8* %150, i64 %246, !dbg !1562
  tail call void @llvm.dbg.value(metadata i8* %247, i64 0, metadata !1307, metadata !810), !dbg !1563
  %248 = and i8 %101, 1, !dbg !1564
  %249 = icmp ne i8 %248, 0, !dbg !1564
  %250 = icmp eq i8* %247, %102, !dbg !1566
  %251 = and i1 %249, %250, !dbg !1568
  br i1 %251, label %318, label %252, !dbg !1568

; <label>:252:                                    ; preds = %245
  tail call void @llvm.dbg.value(metadata i8* %247, i64 0, metadata !231, metadata !810) #10, !dbg !1569
  tail call void @llvm.dbg.value(metadata i8* %102, i64 0, metadata !232, metadata !810) #10, !dbg !1571
  %253 = ptrtoint i8* %102 to i64, !dbg !1572
  %254 = ptrtoint i8* %247 to i64, !dbg !1572
  %255 = sub i64 %253, %254, !dbg !1572
  tail call void @llvm.dbg.value(metadata i64 %255, i64 0, metadata !233, metadata !810) #10, !dbg !1573
  %256 = load i64, i64* @output.bytes_in_buffer, align 8, !dbg !1574, !tbaa !883
  %257 = sub i64 8192, %256, !dbg !1575
  tail call void @llvm.dbg.value(metadata i64 %257, i64 0, metadata !234, metadata !810) #10, !dbg !1576
  %258 = icmp eq i8* %247, null, !dbg !1577
  br i1 %258, label %263, label %259, !dbg !1578

; <label>:259:                                    ; preds = %252
  tail call void @llvm.dbg.value(metadata i64 %257, i64 0, metadata !234, metadata !810) #10, !dbg !1576
  tail call void @llvm.dbg.value(metadata i64 %255, i64 0, metadata !233, metadata !810) #10, !dbg !1573
  tail call void @llvm.dbg.value(metadata i8* %247, i64 0, metadata !231, metadata !810) #10, !dbg !1569
  %260 = icmp ult i64 %255, %257, !dbg !1579
  %261 = getelementptr inbounds [8192 x i8], [8192 x i8]* @output.buffer, i64 0, i64 %256
  br i1 %260, label %277, label %262, !dbg !1580

; <label>:262:                                    ; preds = %259
  br label %266, !dbg !1581

; <label>:263:                                    ; preds = %252
  %264 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1582, !tbaa !818
  %265 = tail call i64 @fwrite_unlocked(i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @output.buffer, i64 0, i64 0), i64 1, i64 %256, %struct._IO_FILE* %264) #10, !dbg !1582
  br label %314, !dbg !1583

; <label>:266:                                    ; preds = %262, %266
  %267 = phi i8* [ getelementptr inbounds ([8192 x i8], [8192 x i8]* @output.buffer, i64 0, i64 0), %266 ], [ %261, %262 ]
  %268 = phi i64 [ 8192, %266 ], [ %257, %262 ]
  %269 = phi i64 [ %271, %266 ], [ %255, %262 ]
  %270 = phi i8* [ %272, %266 ], [ %247, %262 ]
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %267, i8* %270, i64 %268, i32 1, i1 false) #10, !dbg !1581
  %271 = sub i64 %269, %268, !dbg !1584
  tail call void @llvm.dbg.value(metadata i64 %271, i64 0, metadata !233, metadata !810) #10, !dbg !1573
  %272 = getelementptr inbounds i8, i8* %270, i64 %268, !dbg !1585
  tail call void @llvm.dbg.value(metadata i8* %272, i64 0, metadata !231, metadata !810) #10, !dbg !1569
  %273 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1586, !tbaa !818
  %274 = tail call i64 @fwrite_unlocked(i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @output.buffer, i64 0, i64 0), i64 1, i64 8192, %struct._IO_FILE* %273) #10, !dbg !1586
  store i64 0, i64* @output.bytes_in_buffer, align 8, !dbg !1587, !tbaa !883
  tail call void @llvm.dbg.value(metadata i64 8192, i64 0, metadata !234, metadata !810) #10, !dbg !1576
  tail call void @llvm.dbg.value(metadata i64 8192, i64 0, metadata !234, metadata !810) #10, !dbg !1576
  tail call void @llvm.dbg.value(metadata i64 %271, i64 0, metadata !233, metadata !810) #10, !dbg !1573
  tail call void @llvm.dbg.value(metadata i8* %272, i64 0, metadata !231, metadata !810) #10, !dbg !1569
  %275 = icmp ult i64 %271, 8192, !dbg !1579
  br i1 %275, label %276, label %266, !dbg !1580, !llvm.loop !1486

; <label>:276:                                    ; preds = %266
  br label %277, !dbg !1588

; <label>:277:                                    ; preds = %276, %259
  %278 = phi i64 [ %256, %259 ], [ 0, %276 ], !dbg !1589
  %279 = phi i8* [ %247, %259 ], [ %272, %276 ]
  %280 = phi i64 [ %255, %259 ], [ %271, %276 ]
  %281 = phi i8* [ %261, %259 ], [ getelementptr inbounds ([8192 x i8], [8192 x i8]* @output.buffer, i64 0, i64 0), %276 ]
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %281, i8* %279, i64 %280, i32 1, i1 false) #10, !dbg !1588
  %282 = add i64 %280, %278, !dbg !1589
  br label %314, !dbg !1590

; <label>:283:                                    ; preds = %243
  tail call void @llvm.dbg.value(metadata i8* %150, i64 0, metadata !231, metadata !810) #10, !dbg !1591
  tail call void @llvm.dbg.value(metadata i8* %102, i64 0, metadata !232, metadata !810) #10, !dbg !1594
  %284 = ptrtoint i8* %102 to i64, !dbg !1595
  %285 = ptrtoint i8* %150 to i64, !dbg !1595
  %286 = sub i64 %284, %285, !dbg !1595
  tail call void @llvm.dbg.value(metadata i64 %286, i64 0, metadata !233, metadata !810) #10, !dbg !1596
  %287 = load i64, i64* @output.bytes_in_buffer, align 8, !dbg !1597, !tbaa !883
  %288 = sub i64 8192, %287, !dbg !1598
  tail call void @llvm.dbg.value(metadata i64 %288, i64 0, metadata !234, metadata !810) #10, !dbg !1599
  %289 = icmp eq i8* %150, null, !dbg !1600
  br i1 %289, label %294, label %290, !dbg !1601

; <label>:290:                                    ; preds = %283
  tail call void @llvm.dbg.value(metadata i64 %288, i64 0, metadata !234, metadata !810) #10, !dbg !1599
  tail call void @llvm.dbg.value(metadata i64 %286, i64 0, metadata !233, metadata !810) #10, !dbg !1596
  tail call void @llvm.dbg.value(metadata i8* %150, i64 0, metadata !231, metadata !810) #10, !dbg !1591
  %291 = icmp ult i64 %286, %288, !dbg !1602
  %292 = getelementptr inbounds [8192 x i8], [8192 x i8]* @output.buffer, i64 0, i64 %287
  br i1 %291, label %308, label %293, !dbg !1603

; <label>:293:                                    ; preds = %290
  br label %297, !dbg !1604

; <label>:294:                                    ; preds = %283
  %295 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1605, !tbaa !818
  %296 = tail call i64 @fwrite_unlocked(i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @output.buffer, i64 0, i64 0), i64 1, i64 %287, %struct._IO_FILE* %295) #10, !dbg !1605
  br label %314, !dbg !1606

; <label>:297:                                    ; preds = %293, %297
  %298 = phi i8* [ getelementptr inbounds ([8192 x i8], [8192 x i8]* @output.buffer, i64 0, i64 0), %297 ], [ %292, %293 ]
  %299 = phi i64 [ 8192, %297 ], [ %288, %293 ]
  %300 = phi i64 [ %302, %297 ], [ %286, %293 ]
  %301 = phi i8* [ %303, %297 ], [ %150, %293 ]
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %298, i8* %301, i64 %299, i32 1, i1 false) #10, !dbg !1604
  %302 = sub i64 %300, %299, !dbg !1607
  tail call void @llvm.dbg.value(metadata i64 %302, i64 0, metadata !233, metadata !810) #10, !dbg !1596
  %303 = getelementptr inbounds i8, i8* %301, i64 %299, !dbg !1608
  tail call void @llvm.dbg.value(metadata i8* %303, i64 0, metadata !231, metadata !810) #10, !dbg !1591
  %304 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1609, !tbaa !818
  %305 = tail call i64 @fwrite_unlocked(i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @output.buffer, i64 0, i64 0), i64 1, i64 8192, %struct._IO_FILE* %304) #10, !dbg !1609
  store i64 0, i64* @output.bytes_in_buffer, align 8, !dbg !1610, !tbaa !883
  tail call void @llvm.dbg.value(metadata i64 8192, i64 0, metadata !234, metadata !810) #10, !dbg !1599
  tail call void @llvm.dbg.value(metadata i64 8192, i64 0, metadata !234, metadata !810) #10, !dbg !1599
  tail call void @llvm.dbg.value(metadata i64 %302, i64 0, metadata !233, metadata !810) #10, !dbg !1596
  tail call void @llvm.dbg.value(metadata i8* %303, i64 0, metadata !231, metadata !810) #10, !dbg !1591
  %306 = icmp ult i64 %302, 8192, !dbg !1602
  br i1 %306, label %307, label %297, !dbg !1603, !llvm.loop !1486

; <label>:307:                                    ; preds = %297
  br label %308, !dbg !1611

; <label>:308:                                    ; preds = %307, %290
  %309 = phi i64 [ %287, %290 ], [ 0, %307 ], !dbg !1612
  %310 = phi i8* [ %150, %290 ], [ %303, %307 ]
  %311 = phi i64 [ %286, %290 ], [ %302, %307 ]
  %312 = phi i8* [ %292, %290 ], [ getelementptr inbounds ([8192 x i8], [8192 x i8]* @output.buffer, i64 0, i64 0), %307 ]
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %312, i8* %310, i64 %311, i32 1, i1 false) #10, !dbg !1611
  %313 = add i64 %311, %309, !dbg !1612
  br label %314, !dbg !1613

; <label>:314:                                    ; preds = %277, %263, %308, %294
  %315 = phi i64 [ %313, %308 ], [ 0, %294 ], [ %282, %277 ], [ 0, %263 ]
  %316 = phi i8 [ %101, %308 ], [ %101, %294 ], [ 0, %277 ], [ 0, %263 ]
  %317 = phi i8* [ %150, %308 ], [ null, %294 ], [ %247, %277 ], [ null, %263 ]
  store i64 %315, i64* @output.bytes_in_buffer, align 8, !dbg !1614, !tbaa !883
  br label %318, !dbg !1395

; <label>:318:                                    ; preds = %314, %245
  %319 = phi i8 [ 0, %245 ], [ %316, %314 ]
  %320 = phi i8* [ %102, %245 ], [ %317, %314 ]
  tail call void @llvm.dbg.value(metadata i8* %320, i64 0, metadata !1282, metadata !810), !dbg !1395
  tail call void @llvm.dbg.value(metadata i8 %319, i64 0, metadata !1284, metadata !810), !dbg !1314
  %321 = load i64, i64* @sentinel_length, align 8, !dbg !1615, !tbaa !883
  %322 = icmp eq i64 %321, 0, !dbg !1617
  br i1 %322, label %99, label %323, !dbg !1618, !llvm.loop !1548

; <label>:323:                                    ; preds = %318
  %324 = load i64, i64* @match_length, align 8, !dbg !1619, !tbaa !883
  %325 = sub i64 1, %324, !dbg !1620
  %326 = getelementptr inbounds i8, i8* %150, i64 %325, !dbg !1620
  tail call void @llvm.dbg.value(metadata i8* %326, i64 0, metadata !1281, metadata !810), !dbg !1396
  br label %94, !dbg !1621, !llvm.loop !1548

; <label>:327:                                    ; preds = %238, %188, %71
  %328 = phi i1 [ false, %71 ], [ true, %188 ], [ false, %238 ]
  ret i1 %328, !dbg !1622
}

declare i32 @re_search(%struct.re_pattern_buffer*, i8*, i32, i32, i32, %struct.re_registers*) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !1623 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1625, metadata !810), !dbg !1626
  store i8* %0, i8** @file_name, align 8, !dbg !1627, !tbaa !818
  ret void, !dbg !1628
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !1629 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !1633, metadata !1634), !dbg !1635
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1636, !tbaa !1637
  ret void, !dbg !1639
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !1640 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1645, !tbaa !818
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #10, !dbg !1646
  %3 = icmp eq i32 %2, 0, !dbg !1647
  br i1 %3, label %21, label %4, !dbg !1648

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1649, !tbaa !1637, !range !1651
  %6 = icmp eq i8 %5, 0, !dbg !1649
  %7 = tail call i32* @__errno_location() #1, !dbg !1652
  br i1 %6, label %11, label %8, !dbg !1654

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !1655, !tbaa !970
  %10 = icmp eq i32 %9, 32, !dbg !1657
  br i1 %10, label %21, label %11, !dbg !1658

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i64 0, i64 0), i32 5) #10, !dbg !1660
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !1642, metadata !810), !dbg !1661
  %13 = load i8*, i8** @file_name, align 8, !dbg !1662, !tbaa !818
  %14 = icmp eq i8* %13, null, !dbg !1662
  %15 = load i32, i32* %7, align 4, !tbaa !970
  br i1 %14, label %18, label %16, !dbg !1663

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #10, !dbg !1664
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.24, i64 0, i64 0), i8* %17, i8* %12) #10, !dbg !1666
  br label %19, !dbg !1668

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.25, i64 0, i64 0), i8* %12) #10, !dbg !1669
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !1670, !tbaa !970
  tail call void @_exit(i32 %20) #14, !dbg !1671
  unreachable, !dbg !1671

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1672, !tbaa !818
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #10, !dbg !1674
  %24 = icmp eq i32 %23, 0, !dbg !1675
  br i1 %24, label %27, label %25, !dbg !1676

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !1677, !tbaa !970
  tail call void @_exit(i32 %26) #14, !dbg !1678
  unreachable, !dbg !1678

; <label>:27:                                     ; preds = %21
  ret void, !dbg !1679
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define i8* @mfile_name_concat(i8*, i8*, i8**) local_unnamed_addr #6 !dbg !1680 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1685, metadata !810), !dbg !1696
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1686, metadata !810), !dbg !1697
  tail call void @llvm.dbg.value(metadata i8** %2, i64 0, metadata !1687, metadata !810), !dbg !1698
  %4 = tail call i8* @last_component(i8* %0) #13, !dbg !1699
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !1688, metadata !810), !dbg !1700
  %5 = tail call i64 @base_len(i8* %4) #13, !dbg !1701
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !1689, metadata !810), !dbg !1702
  %6 = ptrtoint i8* %4 to i64, !dbg !1703
  %7 = ptrtoint i8* %0 to i64, !dbg !1703
  %8 = sub i64 %6, %7, !dbg !1703
  %9 = add i64 %8, %5, !dbg !1704
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !1690, metadata !810), !dbg !1705
  %10 = icmp eq i64 %5, 0, !dbg !1706
  br i1 %10, label %16, label %11, !dbg !1707

; <label>:11:                                     ; preds = %3
  %12 = add i64 %5, -1, !dbg !1708
  %13 = getelementptr inbounds i8, i8* %4, i64 %12, !dbg !1708
  %14 = load i8, i8* %13, align 1, !dbg !1708, !tbaa !908
  %15 = icmp ne i8 %14, 47, !dbg !1710
  br label %16

; <label>:16:                                     ; preds = %3, %11
  %17 = phi i1 [ false, %3 ], [ %15, %11 ]
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !1691, metadata !810), !dbg !1711
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1712, metadata !810), !dbg !1717
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1712, metadata !810), !dbg !1717
  br label %18, !dbg !1719

; <label>:18:                                     ; preds = %18, %16
  %19 = phi i8* [ %1, %16 ], [ %22, %18 ]
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !1712, metadata !810), !dbg !1717
  %20 = load i8, i8* %19, align 1, !dbg !1721, !tbaa !908
  %21 = icmp eq i8 %20, 47, !dbg !1721
  %22 = getelementptr inbounds i8, i8* %19, i64 1, !dbg !1724
  tail call void @llvm.dbg.value(metadata i8* %22, i64 0, metadata !1712, metadata !810), !dbg !1717
  br i1 %21, label %18, label %23, !dbg !1726, !llvm.loop !1728

; <label>:23:                                     ; preds = %18
  %24 = zext i1 %17 to i64, !dbg !1731
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !1692, metadata !810), !dbg !1733
  %25 = tail call i64 @strlen(i8* %19) #13, !dbg !1734
  tail call void @llvm.dbg.value(metadata i64 %25, i64 0, metadata !1693, metadata !810), !dbg !1735
  %26 = add i64 %9, 1, !dbg !1736
  %27 = add i64 %26, %24, !dbg !1737
  %28 = add i64 %27, %25, !dbg !1738
  %29 = tail call noalias i8* @malloc(i64 %28) #10, !dbg !1739
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !1694, metadata !810), !dbg !1740
  %30 = icmp eq i8* %29, null, !dbg !1741
  br i1 %30, label %44, label %31, !dbg !1743

; <label>:31:                                     ; preds = %23
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !1744, metadata !810) #10, !dbg !1754
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1752, metadata !810) #10, !dbg !1754
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !1753, metadata !810) #10, !dbg !1754
  %32 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %29, i1 false) #10, !dbg !1756
  %33 = tail call i8* @__mempcpy_chk(i8* nonnull %29, i8* nonnull %0, i64 %9, i64 %32) #10, !dbg !1757
  tail call void @llvm.dbg.value(metadata i8* %33, i64 0, metadata !1695, metadata !810), !dbg !1758
  store i8 47, i8* %33, align 1, !dbg !1759, !tbaa !908
  %34 = getelementptr inbounds i8, i8* %33, i64 %24, !dbg !1760
  tail call void @llvm.dbg.value(metadata i8* %34, i64 0, metadata !1695, metadata !810), !dbg !1758
  %35 = icmp eq i8** %2, null, !dbg !1761
  br i1 %35, label %41, label %36, !dbg !1763

; <label>:36:                                     ; preds = %31
  %37 = load i8, i8* %1, align 1, !dbg !1764, !tbaa !908
  %38 = icmp eq i8 %37, 47, !dbg !1764
  %39 = sext i1 %38 to i64, !dbg !1765
  %40 = getelementptr inbounds i8, i8* %34, i64 %39, !dbg !1765
  store i8* %40, i8** %2, align 8, !dbg !1767, !tbaa !818
  br label %41, !dbg !1768

; <label>:41:                                     ; preds = %31, %36
  tail call void @llvm.dbg.value(metadata i8* %34, i64 0, metadata !1744, metadata !810) #10, !dbg !1769
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !1752, metadata !810) #10, !dbg !1769
  tail call void @llvm.dbg.value(metadata i64 %25, i64 0, metadata !1753, metadata !810) #10, !dbg !1769
  %42 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %34, i1 false) #10, !dbg !1771
  %43 = tail call i8* @__mempcpy_chk(i8* nonnull %34, i8* nonnull %19, i64 %25, i64 %42) #10, !dbg !1772
  tail call void @llvm.dbg.value(metadata i8* %43, i64 0, metadata !1695, metadata !810), !dbg !1758
  store i8 0, i8* %43, align 1, !dbg !1773, !tbaa !908
  br label %44, !dbg !1774

; <label>:44:                                     ; preds = %23, %41
  %45 = phi i8* [ %29, %41 ], [ null, %23 ]
  ret i8* %45, !dbg !1775
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #1

; Function Attrs: nounwind
declare i8* @__mempcpy_chk(i8*, i8*, i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !1776 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1778, metadata !810), !dbg !1781
  %2 = icmp eq i8* %0, null, !dbg !1782
  br i1 %2, label %3, label %6, !dbg !1784

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1785, !tbaa !818
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.55, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #16, !dbg !1787
  tail call void @abort() #14, !dbg !1788
  unreachable, !dbg !1788

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #13, !dbg !1789
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1779, metadata !810), !dbg !1790
  %8 = icmp ne i8* %7, null, !dbg !1791
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1792
  %10 = select i1 %8, i8* %9, i8* %0, !dbg !1794
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1780, metadata !810), !dbg !1795
  %11 = ptrtoint i8* %10 to i64, !dbg !1796
  %12 = ptrtoint i8* %0 to i64, !dbg !1796
  %13 = sub i64 %11, %12, !dbg !1796
  %14 = icmp sgt i64 %13, 6, !dbg !1798
  br i1 %14, label %15, label %24, !dbg !1799

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1800
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.56, i64 0, i64 0), i64 7) #13, !dbg !1800
  %18 = icmp eq i32 %17, 0, !dbg !1802
  br i1 %18, label %19, label %24, !dbg !1803

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1778, metadata !810), !dbg !1781
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.57, i64 0, i64 0), i64 3) #13, !dbg !1804
  %21 = icmp eq i32 %20, 0, !dbg !1807
  br i1 %21, label %22, label %24, !dbg !1808

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1809
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !1778, metadata !810), !dbg !1781
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1811, !tbaa !818
  br label %24, !dbg !1812

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !1778, metadata !810), !dbg !1781
  store i8* %25, i8** @program_name, align 8, !dbg !1813, !tbaa !818
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1814, !tbaa !818
  ret void, !dbg !1815
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #10

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !1816 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1821, metadata !810), !dbg !1824
  %2 = tail call i32* @__errno_location() #1, !dbg !1825
  %3 = load i32, i32* %2, align 4, !dbg !1825, !tbaa !970
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1822, metadata !810), !dbg !1826
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !1827
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !1828
  %6 = select i1 %4, i8* %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), !dbg !1828
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #10, !dbg !1830
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1830
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !1823, metadata !810), !dbg !1831
  store i32 %3, i32* %2, align 4, !dbg !1832, !tbaa !970
  ret %struct.quoting_options* %8, !dbg !1833
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #11 !dbg !1834 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1840, metadata !810), !dbg !1841
  %2 = icmp ne %struct.quoting_options* %0, null, !dbg !1842
  %3 = select i1 %2, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1842
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1843
  %5 = load i32, i32* %4, align 8, !dbg !1843, !tbaa !1845
  ret i32 %5, !dbg !1847
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1848 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1852, metadata !810), !dbg !1854
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1853, metadata !810), !dbg !1855
  %3 = icmp ne %struct.quoting_options* %0, null, !dbg !1856
  %4 = select i1 %3, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1856
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1857
  store i32 %1, i32* %5, align 8, !dbg !1859, !tbaa !1845
  ret void, !dbg !1860
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !1861 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1865, metadata !810), !dbg !1873
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1866, metadata !810), !dbg !1874
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !1867, metadata !810), !dbg !1875
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1868, metadata !810), !dbg !1876
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !1877
  %5 = select i1 %4, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1877
  %6 = lshr i8 %1, 5, !dbg !1878
  %7 = zext i8 %6 to i64, !dbg !1878
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1880
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1869, metadata !810), !dbg !1881
  %9 = and i8 %1, 31, !dbg !1882
  %10 = zext i8 %9 to i32, !dbg !1883
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1871, metadata !810), !dbg !1884
  %11 = load i32, i32* %8, align 4, !dbg !1885, !tbaa !970
  %12 = lshr i32 %11, %10, !dbg !1886
  %13 = and i32 %12, 1, !dbg !1887
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1872, metadata !810), !dbg !1888
  %14 = and i32 %2, 1, !dbg !1889
  %15 = xor i32 %13, %14, !dbg !1890
  %16 = shl i32 %15, %10, !dbg !1891
  %17 = xor i32 %16, %11, !dbg !1892
  store i32 %17, i32* %8, align 4, !dbg !1892, !tbaa !970
  ret i32 %13, !dbg !1893
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1894 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1898, metadata !810), !dbg !1901
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1899, metadata !810), !dbg !1902
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1903
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1898, metadata !810), !dbg !1901
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1905
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1898, metadata !810), !dbg !1901
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1906
  %6 = load i32, i32* %5, align 4, !dbg !1906, !tbaa !1907
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1900, metadata !810), !dbg !1908
  store i32 %1, i32* %5, align 4, !dbg !1909, !tbaa !1907
  ret i32 %6, !dbg !1910
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !1911 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1915, metadata !810), !dbg !1918
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1916, metadata !810), !dbg !1919
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1917, metadata !810), !dbg !1920
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1921
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1915, metadata !810), !dbg !1918
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1923
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1915, metadata !810), !dbg !1918
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1924
  store i32 10, i32* %6, align 8, !dbg !1925, !tbaa !1845
  %7 = icmp ne i8* %1, null, !dbg !1926
  %8 = icmp ne i8* %2, null, !dbg !1928
  %9 = and i1 %7, %8, !dbg !1930
  br i1 %9, label %11, label %10, !dbg !1930

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !1931
  unreachable, !dbg !1931

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1932
  store i8* %1, i8** %12, align 8, !dbg !1933, !tbaa !1934
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1935
  store i8* %2, i8** %13, align 8, !dbg !1936, !tbaa !1937
  ret void, !dbg !1938
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !1939 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1943, metadata !810), !dbg !1951
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1944, metadata !810), !dbg !1952
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1945, metadata !810), !dbg !1953
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1946, metadata !810), !dbg !1954
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1947, metadata !810), !dbg !1955
  %6 = icmp ne %struct.quoting_options* %4, null, !dbg !1956
  %7 = select i1 %6, %struct.quoting_options* %4, %struct.quoting_options* @default_quoting_options, !dbg !1956
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !1948, metadata !810), !dbg !1957
  %8 = tail call i32* @__errno_location() #1, !dbg !1958
  %9 = load i32, i32* %8, align 4, !dbg !1958, !tbaa !970
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1949, metadata !810), !dbg !1959
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1960
  %11 = load i32, i32* %10, align 8, !dbg !1960, !tbaa !1845
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1961
  %13 = load i32, i32* %12, align 4, !dbg !1961, !tbaa !1907
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1962
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1963
  %16 = load i8*, i8** %15, align 8, !dbg !1963, !tbaa !1934
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1964
  %18 = load i8*, i8** %17, align 8, !dbg !1964, !tbaa !1937
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !1965
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1950, metadata !810), !dbg !1966
  store i32 %9, i32* %8, align 4, !dbg !1967, !tbaa !970
  ret i64 %19, !dbg !1968
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !1969 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1975, metadata !810), !dbg !2038
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1976, metadata !810), !dbg !2039
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1977, metadata !810), !dbg !2040
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1978, metadata !810), !dbg !2041
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !1979, metadata !810), !dbg !2042
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1980, metadata !810), !dbg !2043
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !1981, metadata !810), !dbg !2044
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1982, metadata !810), !dbg !2045
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !1983, metadata !810), !dbg !2046
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1985, metadata !810), !dbg !2047
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1986, metadata !810), !dbg !2048
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1987, metadata !810), !dbg !2049
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1988, metadata !810), !dbg !2050
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1989, metadata !810), !dbg !2051
  %13 = tail call i64 @__ctype_get_mb_cur_max() #10, !dbg !2052
  %14 = icmp eq i64 %13, 1, !dbg !2053
  %15 = lshr i32 %5, 1, !dbg !2054
  %16 = trunc i32 %15 to i8, !dbg !2054
  %17 = and i8 %16, 1, !dbg !2054
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !1991, metadata !810), !dbg !2054
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1992, metadata !810), !dbg !2055
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1993, metadata !810), !dbg !2056
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1994, metadata !810), !dbg !2057
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !2058

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !1976, metadata !810), !dbg !2039
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !1994, metadata !810), !dbg !2057
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !1993, metadata !810), !dbg !2056
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !1992, metadata !810), !dbg !2055
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1991, metadata !810), !dbg !2054
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !1978, metadata !810), !dbg !2041
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !1989, metadata !810), !dbg !2051
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !1988, metadata !810), !dbg !2050
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !1987, metadata !810), !dbg !2049
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !1986, metadata !810), !dbg !2048
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1985, metadata !810), !dbg !2047
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !1983, metadata !810), !dbg !2046
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !1982, metadata !810), !dbg !2045
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !1979, metadata !810), !dbg !2042
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
  ], !dbg !2059

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1979, metadata !810), !dbg !2042
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1991, metadata !810), !dbg !2054
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1991, metadata !810), !dbg !2054
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1979, metadata !810), !dbg !2042
  br label %95, !dbg !2060

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !1991, metadata !810), !dbg !2054
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !1979, metadata !810), !dbg !2042
  %43 = and i8 %36, 1, !dbg !2062
  %44 = icmp eq i8 %43, 0, !dbg !2062
  br i1 %44, label %45, label %95, !dbg !2060

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !2064
  br i1 %46, label %95, label %47, !dbg !2068

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !2070, !tbaa !908
  br label %95, !dbg !2070

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.68, i64 0, i64 0), i32 %28), !dbg !2072
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !1982, metadata !810), !dbg !2045
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.69, i64 0, i64 0), i32 %28), !dbg !2076
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !1983, metadata !810), !dbg !2046
  br label %51, !dbg !2077

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1983, metadata !810), !dbg !2046
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1982, metadata !810), !dbg !2045
  %54 = and i8 %36, 1, !dbg !2078
  %55 = icmp eq i8 %54, 0, !dbg !2078
  br i1 %55, label %56, label %73, !dbg !2080

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !1987, metadata !810), !dbg !2049
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1985, metadata !810), !dbg !2047
  %57 = load i8, i8* %52, align 1, !dbg !2081, !tbaa !908
  %58 = icmp eq i8 %57, 0, !dbg !2085
  br i1 %58, label %73, label %59, !dbg !2085

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !2087

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  %64 = icmp ult i64 %63, %40, !dbg !2087
  br i1 %64, label %65, label %67, !dbg !2091

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !2093
  store i8 %61, i8* %66, align 1, !dbg !2093, !tbaa !908
  br label %67, !dbg !2093

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !2095
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1985, metadata !810), !dbg !2047
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !2097
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1987, metadata !810), !dbg !2049
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !1987, metadata !810), !dbg !2049
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !1985, metadata !810), !dbg !2047
  %70 = load i8, i8* %69, align 1, !dbg !2081, !tbaa !908
  %71 = icmp eq i8 %70, 0, !dbg !2085
  br i1 %71, label %72, label %60, !dbg !2085, !llvm.loop !2099

; <label>:72:                                     ; preds = %67
  br label %73, !dbg !2047

; <label>:73:                                     ; preds = %72, %56, %51
  %74 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %72 ]
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !1985, metadata !810), !dbg !2047
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1989, metadata !810), !dbg !2051
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !1987, metadata !810), !dbg !2049
  %75 = call i64 @strlen(i8* %53) #13, !dbg !2102
  call void @llvm.dbg.value(metadata i64 %75, i64 0, metadata !1988, metadata !810), !dbg !2050
  br label %95, !dbg !2103

; <label>:76:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1989, metadata !810), !dbg !2051
  br label %77, !dbg !2104

; <label>:77:                                     ; preds = %27, %76
  %78 = phi i8 [ %34, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %78, i64 0, metadata !1989, metadata !810), !dbg !2051
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1991, metadata !810), !dbg !2054
  br label %79, !dbg !2105

; <label>:79:                                     ; preds = %27, %77
  %80 = phi i8 [ %34, %27 ], [ %78, %77 ]
  %81 = phi i8 [ %36, %27 ], [ 1, %77 ]
  call void @llvm.dbg.value(metadata i8 %81, i64 0, metadata !1991, metadata !810), !dbg !2054
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !1989, metadata !810), !dbg !2051
  %82 = and i8 %81, 1, !dbg !2106
  %83 = icmp eq i8 %82, 0, !dbg !2106
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1989, metadata !810), !dbg !2051
  %84 = select i1 %83, i8 1, i8 %80, !dbg !2108
  br label %85, !dbg !2108

; <label>:85:                                     ; preds = %79, %27
  %86 = phi i8 [ %34, %27 ], [ %84, %79 ]
  %87 = phi i8 [ %36, %27 ], [ %81, %79 ]
  call void @llvm.dbg.value(metadata i8 %87, i64 0, metadata !1991, metadata !810), !dbg !2054
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !1989, metadata !810), !dbg !2051
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !1979, metadata !810), !dbg !2042
  %88 = and i8 %87, 1, !dbg !2109
  %89 = icmp eq i8 %88, 0, !dbg !2109
  br i1 %89, label %90, label %95, !dbg !2111

; <label>:90:                                     ; preds = %85
  %91 = icmp eq i64 %40, 0, !dbg !2112
  br i1 %91, label %95, label %92, !dbg !2116

; <label>:92:                                     ; preds = %90
  store i8 39, i8* %0, align 1, !dbg !2118, !tbaa !908
  br label %95, !dbg !2118

; <label>:93:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1991, metadata !810), !dbg !2054
  br label %95, !dbg !2120

; <label>:94:                                     ; preds = %27
  call void @abort() #14, !dbg !2121
  unreachable, !dbg !2121

; <label>:95:                                     ; preds = %41, %85, %90, %92, %27, %42, %45, %47, %93, %73
  %96 = phi i32 [ 0, %93 ], [ %28, %73 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %92 ], [ 2, %90 ], [ 2, %85 ], [ 5, %41 ]
  %97 = phi i8* [ %29, %93 ], [ %52, %73 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %92 ], [ %29, %90 ], [ %29, %85 ], [ %29, %41 ]
  %98 = phi i8* [ %30, %93 ], [ %53, %73 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %92 ], [ %30, %90 ], [ %30, %85 ], [ %30, %41 ]
  %99 = phi i64 [ 0, %93 ], [ %74, %73 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %92 ], [ 1, %90 ], [ 0, %85 ], [ 0, %41 ]
  %100 = phi i8* [ %32, %93 ], [ %53, %73 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.70, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.70, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.70, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.69, i64 0, i64 0), %92 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.69, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.69, i64 0, i64 0), %85 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.70, i64 0, i64 0), %41 ]
  %101 = phi i64 [ %33, %93 ], [ %75, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %92 ], [ 1, %90 ], [ 1, %85 ], [ 1, %41 ]
  %102 = phi i8 [ %34, %93 ], [ 1, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %86, %92 ], [ %86, %90 ], [ %86, %85 ], [ 1, %41 ]
  %103 = phi i8 [ 0, %93 ], [ %36, %73 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %87, %92 ], [ %87, %90 ], [ %87, %85 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %103, i64 0, metadata !1991, metadata !810), !dbg !2054
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !1989, metadata !810), !dbg !2051
  call void @llvm.dbg.value(metadata i64 %101, i64 0, metadata !1988, metadata !810), !dbg !2050
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !1987, metadata !810), !dbg !2049
  call void @llvm.dbg.value(metadata i64 %99, i64 0, metadata !1985, metadata !810), !dbg !2047
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !1983, metadata !810), !dbg !2046
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !1982, metadata !810), !dbg !2045
  call void @llvm.dbg.value(metadata i32 %96, i64 0, metadata !1979, metadata !810), !dbg !2042
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1984, metadata !810), !dbg !2122
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
  br label %123, !dbg !2123

; <label>:123:                                    ; preds = %587, %95
  %124 = phi i64 [ 0, %95 ], [ %596, %587 ]
  %125 = phi i64 [ %99, %95 ], [ %589, %587 ]
  %126 = phi i64 [ %31, %95 ], [ %590, %587 ]
  %127 = phi i64 [ %35, %95 ], [ %591, %587 ]
  %128 = phi i8 [ %37, %95 ], [ %592, %587 ]
  %129 = phi i8 [ %38, %95 ], [ %593, %587 ]
  %130 = phi i8 [ %39, %95 ], [ %594, %587 ]
  %131 = phi i64 [ %40, %95 ], [ %595, %587 ]
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !1976, metadata !810), !dbg !2039
  call void @llvm.dbg.value(metadata i8 %130, i64 0, metadata !1994, metadata !810), !dbg !2057
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !1993, metadata !810), !dbg !2056
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !1992, metadata !810), !dbg !2055
  call void @llvm.dbg.value(metadata i64 %127, i64 0, metadata !1978, metadata !810), !dbg !2041
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !1986, metadata !810), !dbg !2048
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1985, metadata !810), !dbg !2047
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !1984, metadata !810), !dbg !2122
  %132 = icmp eq i64 %127, -1, !dbg !2124
  br i1 %132, label %135, label %133, !dbg !2126

; <label>:133:                                    ; preds = %123
  %134 = icmp eq i64 %124, %127, !dbg !2127
  br i1 %134, label %597, label %139, !dbg !2129

; <label>:135:                                    ; preds = %123
  %136 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !2131
  %137 = load i8, i8* %136, align 1, !dbg !2131, !tbaa !908
  %138 = icmp eq i8 %137, 0, !dbg !2133
  br i1 %138, label %597, label %139, !dbg !2129

; <label>:139:                                    ; preds = %133, %135
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2000, metadata !810), !dbg !2134
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2001, metadata !810), !dbg !2135
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2002, metadata !810), !dbg !2136
  br i1 %109, label %140, label %155, !dbg !2137

; <label>:140:                                    ; preds = %139
  %141 = add i64 %124, %101, !dbg !2139
  %142 = and i1 %110, %132, !dbg !2141
  br i1 %142, label %143, label %145, !dbg !2141

; <label>:143:                                    ; preds = %140
  %144 = call i64 @strlen(i8* %2) #13, !dbg !2142
  call void @llvm.dbg.value(metadata i64 %144, i64 0, metadata !1978, metadata !810), !dbg !2041
  br label %145, !dbg !2143

; <label>:145:                                    ; preds = %140, %143
  %146 = phi i64 [ %144, %143 ], [ %127, %140 ]
  call void @llvm.dbg.value(metadata i64 %146, i64 0, metadata !1978, metadata !810), !dbg !2041
  %147 = icmp ugt i64 %141, %146, !dbg !2145
  br i1 %147, label %155, label %148, !dbg !2147

; <label>:148:                                    ; preds = %145
  %149 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !2148
  %150 = call i32 @memcmp(i8* %149, i8* %100, i64 %101) #13, !dbg !2149
  %151 = icmp ne i32 %150, 0, !dbg !2150
  %152 = or i1 %151, %112, !dbg !2150
  %153 = xor i1 %151, true, !dbg !2150
  %154 = zext i1 %153 to i8, !dbg !2150
  br i1 %152, label %155, label %644, !dbg !2150

; <label>:155:                                    ; preds = %148, %145, %139
  %156 = phi i64 [ %146, %148 ], [ %146, %145 ], [ %127, %139 ]
  %157 = phi i8 [ %154, %148 ], [ 0, %145 ], [ 0, %139 ]
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !2000, metadata !810), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %156, i64 0, metadata !1978, metadata !810), !dbg !2041
  %158 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !2152
  %159 = load i8, i8* %158, align 1, !dbg !2152, !tbaa !908
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !1995, metadata !810), !dbg !2153
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
  ], !dbg !2154

; <label>:160:                                    ; preds = %155
  br i1 %105, label %161, label %209, !dbg !2155

; <label>:161:                                    ; preds = %160
  br i1 %112, label %162, label %644, !dbg !2156

; <label>:162:                                    ; preds = %161
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2001, metadata !810), !dbg !2135
  %163 = and i8 %128, 1, !dbg !2161
  %164 = icmp eq i8 %163, 0, !dbg !2161
  %165 = and i1 %114, %164, !dbg !2164
  br i1 %165, label %166, label %182, !dbg !2164

; <label>:166:                                    ; preds = %162
  %167 = icmp ult i64 %125, %131, !dbg !2166
  br i1 %167, label %168, label %170, !dbg !2171

; <label>:168:                                    ; preds = %166
  %169 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !2173
  store i8 39, i8* %169, align 1, !dbg !2173, !tbaa !908
  br label %170, !dbg !2173

; <label>:170:                                    ; preds = %168, %166
  %171 = add i64 %125, 1, !dbg !2175
  call void @llvm.dbg.value(metadata i64 %171, i64 0, metadata !1985, metadata !810), !dbg !2047
  %172 = icmp ult i64 %171, %131, !dbg !2177
  br i1 %172, label %173, label %175, !dbg !2181

; <label>:173:                                    ; preds = %170
  %174 = getelementptr inbounds i8, i8* %0, i64 %171, !dbg !2183
  store i8 36, i8* %174, align 1, !dbg !2183, !tbaa !908
  br label %175, !dbg !2183

; <label>:175:                                    ; preds = %173, %170
  %176 = add i64 %125, 2, !dbg !2185
  call void @llvm.dbg.value(metadata i64 %176, i64 0, metadata !1985, metadata !810), !dbg !2047
  %177 = icmp ult i64 %176, %131, !dbg !2187
  br i1 %177, label %178, label %180, !dbg !2191

; <label>:178:                                    ; preds = %175
  %179 = getelementptr inbounds i8, i8* %0, i64 %176, !dbg !2193
  store i8 39, i8* %179, align 1, !dbg !2193, !tbaa !908
  br label %180, !dbg !2193

; <label>:180:                                    ; preds = %178, %175
  %181 = add i64 %125, 3, !dbg !2195
  call void @llvm.dbg.value(metadata i64 %181, i64 0, metadata !1985, metadata !810), !dbg !2047
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1992, metadata !810), !dbg !2055
  br label %182, !dbg !2197

; <label>:182:                                    ; preds = %162, %180
  %183 = phi i64 [ %181, %180 ], [ %125, %162 ]
  %184 = phi i8 [ 1, %180 ], [ %128, %162 ]
  call void @llvm.dbg.value(metadata i8 %184, i64 0, metadata !1992, metadata !810), !dbg !2055
  call void @llvm.dbg.value(metadata i64 %183, i64 0, metadata !1985, metadata !810), !dbg !2047
  %185 = icmp ult i64 %183, %131, !dbg !2199
  br i1 %185, label %186, label %188, !dbg !2203

; <label>:186:                                    ; preds = %182
  %187 = getelementptr inbounds i8, i8* %0, i64 %183, !dbg !2205
  store i8 92, i8* %187, align 1, !dbg !2205, !tbaa !908
  br label %188, !dbg !2205

; <label>:188:                                    ; preds = %186, %182
  %189 = add i64 %183, 1, !dbg !2207
  call void @llvm.dbg.value(metadata i64 %189, i64 0, metadata !1985, metadata !810), !dbg !2047
  br i1 %106, label %190, label %476, !dbg !2209

; <label>:190:                                    ; preds = %188
  %191 = add i64 %124, 1, !dbg !2211
  %192 = icmp ult i64 %191, %156, !dbg !2213
  br i1 %192, label %193, label %476, !dbg !2214

; <label>:193:                                    ; preds = %190
  %194 = getelementptr inbounds i8, i8* %2, i64 %191, !dbg !2215
  %195 = load i8, i8* %194, align 1, !dbg !2215, !tbaa !908
  %196 = add i8 %195, -48, !dbg !2217
  %197 = icmp ult i8 %196, 10, !dbg !2217
  br i1 %197, label %198, label %476, !dbg !2217

; <label>:198:                                    ; preds = %193
  %199 = icmp ult i64 %189, %131, !dbg !2218
  br i1 %199, label %200, label %202, !dbg !2223

; <label>:200:                                    ; preds = %198
  %201 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !2225
  store i8 48, i8* %201, align 1, !dbg !2225, !tbaa !908
  br label %202, !dbg !2225

; <label>:202:                                    ; preds = %200, %198
  %203 = add i64 %183, 2, !dbg !2227
  call void @llvm.dbg.value(metadata i64 %203, i64 0, metadata !1985, metadata !810), !dbg !2047
  %204 = icmp ult i64 %203, %131, !dbg !2229
  br i1 %204, label %205, label %207, !dbg !2233

; <label>:205:                                    ; preds = %202
  %206 = getelementptr inbounds i8, i8* %0, i64 %203, !dbg !2235
  store i8 48, i8* %206, align 1, !dbg !2235, !tbaa !908
  br label %207, !dbg !2235

; <label>:207:                                    ; preds = %205, %202
  %208 = add i64 %183, 3, !dbg !2237
  call void @llvm.dbg.value(metadata i64 %208, i64 0, metadata !1985, metadata !810), !dbg !2047
  br label %476, !dbg !2239

; <label>:209:                                    ; preds = %160
  br i1 %23, label %476, label %587, !dbg !2240

; <label>:210:                                    ; preds = %155
  switch i32 %96, label %476 [
    i32 2, label %211
    i32 5, label %212
  ], !dbg !2241

; <label>:211:                                    ; preds = %210
  br i1 %112, label %476, label %644, !dbg !2242

; <label>:212:                                    ; preds = %210
  br i1 %25, label %476, label %213, !dbg !2244

; <label>:213:                                    ; preds = %212
  %214 = add i64 %124, 2, !dbg !2246
  %215 = icmp ult i64 %214, %156, !dbg !2248
  br i1 %215, label %216, label %476, !dbg !2249

; <label>:216:                                    ; preds = %213
  %217 = add i64 %124, 1, !dbg !2250
  %218 = getelementptr inbounds i8, i8* %2, i64 %217, !dbg !2252
  %219 = load i8, i8* %218, align 1, !dbg !2252, !tbaa !908
  %220 = icmp eq i8 %219, 63, !dbg !2253
  br i1 %220, label %221, label %476, !dbg !2254

; <label>:221:                                    ; preds = %216
  %222 = getelementptr inbounds i8, i8* %2, i64 %214, !dbg !2256
  %223 = load i8, i8* %222, align 1, !dbg !2256, !tbaa !908
  %224 = sext i8 %223 to i32, !dbg !2256
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
  ], !dbg !2257

; <label>:225:                                    ; preds = %221, %221, %221, %221, %221, %221, %221, %221, %221
  br i1 %112, label %226, label %644, !dbg !2258

; <label>:226:                                    ; preds = %225
  call void @llvm.dbg.value(metadata i8 %223, i64 0, metadata !1995, metadata !810), !dbg !2153
  call void @llvm.dbg.value(metadata i64 %214, i64 0, metadata !1984, metadata !810), !dbg !2122
  %227 = icmp ult i64 %125, %131, !dbg !2260
  br i1 %227, label %228, label %230, !dbg !2264

; <label>:228:                                    ; preds = %226
  %229 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !2266
  store i8 63, i8* %229, align 1, !dbg !2266, !tbaa !908
  br label %230, !dbg !2266

; <label>:230:                                    ; preds = %228, %226
  %231 = add i64 %125, 1, !dbg !2268
  call void @llvm.dbg.value(metadata i64 %231, i64 0, metadata !1985, metadata !810), !dbg !2047
  %232 = icmp ult i64 %231, %131, !dbg !2270
  br i1 %232, label %233, label %235, !dbg !2274

; <label>:233:                                    ; preds = %230
  %234 = getelementptr inbounds i8, i8* %0, i64 %231, !dbg !2276
  store i8 34, i8* %234, align 1, !dbg !2276, !tbaa !908
  br label %235, !dbg !2276

; <label>:235:                                    ; preds = %233, %230
  %236 = add i64 %125, 2, !dbg !2278
  call void @llvm.dbg.value(metadata i64 %236, i64 0, metadata !1985, metadata !810), !dbg !2047
  %237 = icmp ult i64 %236, %131, !dbg !2280
  br i1 %237, label %238, label %240, !dbg !2284

; <label>:238:                                    ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !2286
  store i8 34, i8* %239, align 1, !dbg !2286, !tbaa !908
  br label %240, !dbg !2286

; <label>:240:                                    ; preds = %238, %235
  %241 = add i64 %125, 3, !dbg !2288
  call void @llvm.dbg.value(metadata i64 %241, i64 0, metadata !1985, metadata !810), !dbg !2047
  %242 = icmp ult i64 %241, %131, !dbg !2290
  br i1 %242, label %243, label %245, !dbg !2294

; <label>:243:                                    ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !2296
  store i8 63, i8* %244, align 1, !dbg !2296, !tbaa !908
  br label %245, !dbg !2296

; <label>:245:                                    ; preds = %243, %240
  %246 = add i64 %125, 4, !dbg !2298
  call void @llvm.dbg.value(metadata i64 %246, i64 0, metadata !1985, metadata !810), !dbg !2047
  br label %476, !dbg !2300

; <label>:247:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !1999, metadata !810), !dbg !2301
  br label %257, !dbg !2302

; <label>:248:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !1999, metadata !810), !dbg !2301
  br label %257, !dbg !2303

; <label>:249:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !1999, metadata !810), !dbg !2301
  br label %255, !dbg !2304

; <label>:250:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !1999, metadata !810), !dbg !2301
  br label %255, !dbg !2305

; <label>:251:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !1999, metadata !810), !dbg !2301
  br label %257, !dbg !2306

; <label>:252:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !1999, metadata !810), !dbg !2301
  br i1 %114, label %253, label %254, !dbg !2307

; <label>:253:                                    ; preds = %252
  br i1 %112, label %542, label %644, !dbg !2308

; <label>:254:                                    ; preds = %252
  br i1 %122, label %542, label %255, !dbg !2311

; <label>:255:                                    ; preds = %254, %155, %250, %249
  %256 = phi i8 [ 92, %254 ], [ 116, %250 ], [ 114, %249 ], [ 110, %155 ]
  call void @llvm.dbg.value(metadata i8 %256, i64 0, metadata !1999, metadata !810), !dbg !2301
  br i1 %118, label %257, label %644, !dbg !2313

; <label>:257:                                    ; preds = %255, %155, %251, %248, %247
  %258 = phi i8 [ %256, %255 ], [ 118, %251 ], [ 102, %248 ], [ 98, %247 ], [ 97, %155 ]
  call void @llvm.dbg.value(metadata i8 %258, i64 0, metadata !1999, metadata !810), !dbg !2301
  br i1 %105, label %503, label %476, !dbg !2315

; <label>:259:                                    ; preds = %155, %155
  %260 = icmp eq i64 %156, -1, !dbg !2316
  br i1 %260, label %261, label %266, !dbg !2318

; <label>:261:                                    ; preds = %259
  %262 = load i8, i8* %26, align 1, !dbg !2319, !tbaa !908
  %263 = icmp ne i8 %262, 0, !dbg !2321
  %264 = icmp ne i64 %124, 0, !dbg !2322
  %265 = or i1 %264, %263, !dbg !2324
  br i1 %265, label %476, label %272, !dbg !2324

; <label>:266:                                    ; preds = %259
  %267 = icmp ne i64 %156, 1, !dbg !2325
  %268 = icmp ne i64 %124, 0, !dbg !2322
  %269 = or i1 %268, %267, !dbg !2327
  br i1 %269, label %476, label %272, !dbg !2327

; <label>:270:                                    ; preds = %155, %155
  %271 = icmp eq i64 %124, 0, !dbg !2322
  br i1 %271, label %272, label %476, !dbg !2329

; <label>:272:                                    ; preds = %270, %266, %261, %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2002, metadata !810), !dbg !2136
  br label %273, !dbg !2330

; <label>:273:                                    ; preds = %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %272
  %274 = phi i8 [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 1, %272 ]
  call void @llvm.dbg.value(metadata i8 %274, i64 0, metadata !2002, metadata !810), !dbg !2136
  br i1 %118, label %476, label %644, !dbg !2331

; <label>:275:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1993, metadata !810), !dbg !2056
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2002, metadata !810), !dbg !2136
  br i1 %114, label %276, label %476, !dbg !2333

; <label>:276:                                    ; preds = %275
  br i1 %112, label %277, label %644, !dbg !2334

; <label>:277:                                    ; preds = %276
  %278 = icmp eq i64 %131, 0, !dbg !2337
  %279 = icmp ne i64 %126, 0, !dbg !2339
  %280 = or i1 %279, %278, !dbg !2341
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !1986, metadata !810), !dbg !2048
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1976, metadata !810), !dbg !2039
  %281 = select i1 %280, i64 %126, i64 %131, !dbg !2341
  %282 = select i1 %280, i64 %131, i64 0, !dbg !2341
  call void @llvm.dbg.value(metadata i64 %282, i64 0, metadata !1976, metadata !810), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !1986, metadata !810), !dbg !2048
  %283 = icmp ult i64 %125, %282, !dbg !2342
  br i1 %283, label %284, label %286, !dbg !2346

; <label>:284:                                    ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !2348
  store i8 39, i8* %285, align 1, !dbg !2348, !tbaa !908
  br label %286, !dbg !2348

; <label>:286:                                    ; preds = %284, %277
  %287 = add i64 %125, 1, !dbg !2350
  call void @llvm.dbg.value(metadata i64 %287, i64 0, metadata !1985, metadata !810), !dbg !2047
  %288 = icmp ult i64 %287, %282, !dbg !2352
  br i1 %288, label %289, label %291, !dbg !2356

; <label>:289:                                    ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !2358
  store i8 92, i8* %290, align 1, !dbg !2358, !tbaa !908
  br label %291, !dbg !2358

; <label>:291:                                    ; preds = %289, %286
  %292 = add i64 %125, 2, !dbg !2360
  call void @llvm.dbg.value(metadata i64 %292, i64 0, metadata !1985, metadata !810), !dbg !2047
  %293 = icmp ult i64 %292, %282, !dbg !2362
  br i1 %293, label %294, label %296, !dbg !2366

; <label>:294:                                    ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !2368
  store i8 39, i8* %295, align 1, !dbg !2368, !tbaa !908
  br label %296, !dbg !2368

; <label>:296:                                    ; preds = %294, %291
  %297 = add i64 %125, 3, !dbg !2370
  call void @llvm.dbg.value(metadata i64 %297, i64 0, metadata !1985, metadata !810), !dbg !2047
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1992, metadata !810), !dbg !2055
  br label %476, !dbg !2372

; <label>:298:                                    ; preds = %155
  br i1 %14, label %299, label %308, !dbg !2373

; <label>:299:                                    ; preds = %298
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2003, metadata !810), !dbg !2374
  %300 = tail call i16** @__ctype_b_loc() #1, !dbg !2375
  %301 = load i16*, i16** %300, align 8, !dbg !2375, !tbaa !818
  %302 = zext i8 %159 to i64, !dbg !2375
  %303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !2375
  %304 = load i16, i16* %303, align 2, !dbg !2375, !tbaa !2377
  %305 = lshr i16 %304, 14, !dbg !2379
  %306 = trunc i16 %305 to i8, !dbg !2379
  %307 = and i8 %306, 1, !dbg !2379
  call void @llvm.dbg.value(metadata i8 %307, i64 0, metadata !2006, metadata !810), !dbg !2380
  br label %368, !dbg !2381

; <label>:308:                                    ; preds = %298
  call void @llvm.lifetime.start(i64 8, i8* nonnull %18) #10, !dbg !2382
  store i64 0, i64* %10, align 8, !dbg !2383
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2003, metadata !810), !dbg !2374
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2006, metadata !810), !dbg !2380
  %309 = icmp eq i64 %156, -1, !dbg !2384
  br i1 %309, label %310, label %312, !dbg !2386, !llvm.loop !2387

; <label>:310:                                    ; preds = %308
  %311 = call i64 @strlen(i8* nonnull %2) #13, !dbg !2390
  call void @llvm.dbg.value(metadata i64 %311, i64 0, metadata !1978, metadata !810), !dbg !2041
  br label %312, !dbg !2391, !llvm.loop !2387

; <label>:312:                                    ; preds = %310, %308
  %313 = phi i64 [ %156, %308 ], [ %311, %310 ]
  br label %314, !dbg !2380

; <label>:314:                                    ; preds = %312, %355
  %315 = phi i64 [ %360, %355 ], [ 0, %312 ]
  %316 = phi i8 [ %359, %355 ], [ 1, %312 ]
  call void @llvm.dbg.value(metadata i8 %316, i64 0, metadata !2006, metadata !810), !dbg !2380
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !2003, metadata !810), !dbg !2374
  call void @llvm.dbg.value(metadata i64 %313, i64 0, metadata !1978, metadata !810), !dbg !2041
  call void @llvm.lifetime.start(i64 4, i8* nonnull %19) #10, !dbg !2392
  %317 = add i64 %315, %124, !dbg !2393
  %318 = getelementptr inbounds i8, i8* %2, i64 %317, !dbg !2394
  %319 = sub i64 %313, %317, !dbg !2395
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !2007, metadata !1054), !dbg !2396
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !2024, metadata !1054), !dbg !2397
  %320 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %318, i64 %319, %struct.__mbstate_t* nonnull %11) #10, !dbg !2398
  call void @llvm.dbg.value(metadata i64 %320, i64 0, metadata !2027, metadata !810), !dbg !2399
  switch i64 %320, label %334 [
    i64 0, label %350
    i64 -1, label %347
    i64 -2, label %321
  ], !dbg !2400

; <label>:321:                                    ; preds = %314
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !2003, metadata !810), !dbg !2374
  %322 = icmp ugt i64 %313, %317, !dbg !2401
  br i1 %322, label %323, label %351, !dbg !2404

; <label>:323:                                    ; preds = %321
  br label %324, !dbg !2405

; <label>:324:                                    ; preds = %323, %330
  %325 = phi i64 [ %332, %330 ], [ %317, %323 ]
  %326 = phi i64 [ %331, %330 ], [ %315, %323 ]
  %327 = getelementptr inbounds i8, i8* %2, i64 %325, !dbg !2405
  %328 = load i8, i8* %327, align 1, !dbg !2405, !tbaa !908
  %329 = icmp eq i8 %328, 0, !dbg !2407
  br i1 %329, label %348, label %330, !dbg !2408

; <label>:330:                                    ; preds = %324
  %331 = add i64 %326, 1, !dbg !2410
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !2003, metadata !810), !dbg !2374
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !2003, metadata !810), !dbg !2374
  %332 = add i64 %331, %124, !dbg !2411
  %333 = icmp ult i64 %332, %313, !dbg !2401
  br i1 %333, label %324, label %348, !dbg !2404, !llvm.loop !2412

; <label>:334:                                    ; preds = %314
  %335 = icmp ugt i64 %320, 1, !dbg !2414
  %336 = and i1 %116, %335, !dbg !2418
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2028, metadata !810), !dbg !2419
  br i1 %336, label %337, label %355, !dbg !2418

; <label>:337:                                    ; preds = %334
  br label %338, !dbg !2420

; <label>:338:                                    ; preds = %337, %344
  %339 = phi i64 [ %345, %344 ], [ 1, %337 ]
  %340 = add i64 %339, %317, !dbg !2420
  %341 = getelementptr inbounds i8, i8* %2, i64 %340, !dbg !2421
  %342 = load i8, i8* %341, align 1, !dbg !2421, !tbaa !908
  %343 = sext i8 %342 to i32, !dbg !2421
  switch i32 %343, label %344 [
    i32 91, label %367
    i32 92, label %367
    i32 94, label %367
    i32 96, label %367
    i32 124, label %367
  ], !dbg !2422

; <label>:344:                                    ; preds = %338
  %345 = add nuw i64 %339, 1, !dbg !2423
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !2028, metadata !810), !dbg !2419
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !2028, metadata !810), !dbg !2419
  %346 = icmp ult i64 %345, %320, !dbg !2414
  br i1 %346, label %338, label %354, !dbg !2425, !llvm.loop !2427

; <label>:347:                                    ; preds = %314
  br label %351, !dbg !2380

; <label>:348:                                    ; preds = %324, %330
  %349 = phi i64 [ %331, %330 ], [ %326, %324 ]
  br label %351, !dbg !2380

; <label>:350:                                    ; preds = %314
  br label %351, !dbg !2380

; <label>:351:                                    ; preds = %350, %348, %347, %321
  %352 = phi i64 [ %315, %321 ], [ %315, %347 ], [ %349, %348 ], [ %315, %350 ]
  %353 = phi i8 [ 0, %321 ], [ 0, %347 ], [ 0, %348 ], [ %316, %350 ]
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !2006, metadata !810), !dbg !2380
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !2003, metadata !810), !dbg !2374
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10, !dbg !2430
  br label %364

; <label>:354:                                    ; preds = %344
  br label %355, !dbg !2431

; <label>:355:                                    ; preds = %354, %334
  %356 = load i32, i32* %12, align 4, !dbg !2431, !tbaa !970
  call void @llvm.dbg.value(metadata i32 %356, i64 0, metadata !2024, metadata !810), !dbg !2397
  %357 = call i32 @iswprint(i32 %356) #10, !dbg !2433
  %358 = icmp eq i32 %357, 0, !dbg !2433
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2006, metadata !810), !dbg !2380
  %359 = select i1 %358, i8 0, i8 %316, !dbg !2434
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !2006, metadata !810), !dbg !2380
  %360 = add i64 %320, %315, !dbg !2435
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !2003, metadata !810), !dbg !2374
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !2006, metadata !810), !dbg !2380
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !2003, metadata !810), !dbg !2374
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10, !dbg !2430
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !2007, metadata !1054), !dbg !2396
  %361 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #13, !dbg !2436
  %362 = icmp eq i32 %361, 0, !dbg !2437
  br i1 %362, label %314, label %363, !dbg !2438, !llvm.loop !2387

; <label>:363:                                    ; preds = %355
  br label %364, !dbg !2440

; <label>:364:                                    ; preds = %363, %351
  %365 = phi i8 [ %353, %351 ], [ %359, %363 ]
  %366 = phi i64 [ %352, %351 ], [ %360, %363 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #10, !dbg !2440
  br label %368

; <label>:367:                                    ; preds = %338, %338, %338, %338, %338
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !2006, metadata !810), !dbg !2380
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !2003, metadata !810), !dbg !2374
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10, !dbg !2430
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #10, !dbg !2440
  br label %649

; <label>:368:                                    ; preds = %364, %299
  %369 = phi i64 [ %156, %299 ], [ %313, %364 ]
  %370 = phi i64 [ 1, %299 ], [ %366, %364 ]
  %371 = phi i8 [ %307, %299 ], [ %365, %364 ]
  call void @llvm.dbg.value(metadata i8 %371, i64 0, metadata !2006, metadata !810), !dbg !2380
  call void @llvm.dbg.value(metadata i64 %370, i64 0, metadata !2003, metadata !810), !dbg !2374
  call void @llvm.dbg.value(metadata i64 %369, i64 0, metadata !1978, metadata !810), !dbg !2041
  %372 = and i8 %371, 1, !dbg !2441
  %373 = icmp ne i8 %372, 0, !dbg !2441
  call void @llvm.dbg.value(metadata i8 %372, i64 0, metadata !2002, metadata !810), !dbg !2136
  %374 = icmp ult i64 %370, 2, !dbg !2442
  %375 = or i1 %373, %113, !dbg !2443
  %376 = and i1 %374, %375, !dbg !2445
  br i1 %376, label %476, label %377, !dbg !2445

; <label>:377:                                    ; preds = %368
  %378 = add i64 %370, %124, !dbg !2446
  call void @llvm.dbg.value(metadata i64 %378, i64 0, metadata !2035, metadata !810), !dbg !2447
  br label %379, !dbg !2448

; <label>:379:                                    ; preds = %472, %377
  %380 = phi i64 [ %124, %377 ], [ %447, %472 ]
  %381 = phi i64 [ %125, %377 ], [ %473, %472 ]
  %382 = phi i8 [ %128, %377 ], [ %468, %472 ]
  %383 = phi i8 [ %159, %377 ], [ %475, %472 ]
  %384 = phi i8 [ %157, %377 ], [ %445, %472 ]
  %385 = phi i8 [ 0, %377 ], [ %446, %472 ]
  call void @llvm.dbg.value(metadata i8 %385, i64 0, metadata !2001, metadata !810), !dbg !2135
  call void @llvm.dbg.value(metadata i8 %384, i64 0, metadata !2000, metadata !810), !dbg !2134
  call void @llvm.dbg.value(metadata i8 %383, i64 0, metadata !1995, metadata !810), !dbg !2153
  call void @llvm.dbg.value(metadata i8 %382, i64 0, metadata !1992, metadata !810), !dbg !2055
  call void @llvm.dbg.value(metadata i64 %381, i64 0, metadata !1985, metadata !810), !dbg !2047
  call void @llvm.dbg.value(metadata i64 %380, i64 0, metadata !1984, metadata !810), !dbg !2122
  br i1 %375, label %432, label %386, !dbg !2449

; <label>:386:                                    ; preds = %379
  br i1 %112, label %387, label %643, !dbg !2454

; <label>:387:                                    ; preds = %386
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2001, metadata !810), !dbg !2135
  %388 = and i8 %382, 1, !dbg !2458
  %389 = icmp eq i8 %388, 0, !dbg !2458
  %390 = and i1 %114, %389, !dbg !2461
  br i1 %390, label %391, label %407, !dbg !2461

; <label>:391:                                    ; preds = %387
  %392 = icmp ult i64 %381, %131, !dbg !2463
  br i1 %392, label %393, label %395, !dbg !2468

; <label>:393:                                    ; preds = %391
  %394 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !2470
  store i8 39, i8* %394, align 1, !dbg !2470, !tbaa !908
  br label %395, !dbg !2470

; <label>:395:                                    ; preds = %393, %391
  %396 = add i64 %381, 1, !dbg !2472
  call void @llvm.dbg.value(metadata i64 %396, i64 0, metadata !1985, metadata !810), !dbg !2047
  %397 = icmp ult i64 %396, %131, !dbg !2474
  br i1 %397, label %398, label %400, !dbg !2478

; <label>:398:                                    ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !2480
  store i8 36, i8* %399, align 1, !dbg !2480, !tbaa !908
  br label %400, !dbg !2480

; <label>:400:                                    ; preds = %398, %395
  %401 = add i64 %381, 2, !dbg !2482
  call void @llvm.dbg.value(metadata i64 %401, i64 0, metadata !1985, metadata !810), !dbg !2047
  %402 = icmp ult i64 %401, %131, !dbg !2484
  br i1 %402, label %403, label %405, !dbg !2488

; <label>:403:                                    ; preds = %400
  %404 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !2490
  store i8 39, i8* %404, align 1, !dbg !2490, !tbaa !908
  br label %405, !dbg !2490

; <label>:405:                                    ; preds = %403, %400
  %406 = add i64 %381, 3, !dbg !2492
  call void @llvm.dbg.value(metadata i64 %406, i64 0, metadata !1985, metadata !810), !dbg !2047
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1992, metadata !810), !dbg !2055
  br label %407, !dbg !2494

; <label>:407:                                    ; preds = %387, %405
  %408 = phi i64 [ %406, %405 ], [ %381, %387 ]
  %409 = phi i8 [ 1, %405 ], [ %382, %387 ]
  call void @llvm.dbg.value(metadata i8 %409, i64 0, metadata !1992, metadata !810), !dbg !2055
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !1985, metadata !810), !dbg !2047
  %410 = icmp ult i64 %408, %131, !dbg !2496
  br i1 %410, label %411, label %413, !dbg !2500

; <label>:411:                                    ; preds = %407
  %412 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !2502
  store i8 92, i8* %412, align 1, !dbg !2502, !tbaa !908
  br label %413, !dbg !2502

; <label>:413:                                    ; preds = %411, %407
  %414 = add i64 %408, 1, !dbg !2504
  call void @llvm.dbg.value(metadata i64 %414, i64 0, metadata !1985, metadata !810), !dbg !2047
  %415 = icmp ult i64 %414, %131, !dbg !2506
  br i1 %415, label %416, label %420, !dbg !2510

; <label>:416:                                    ; preds = %413
  %417 = lshr i8 %383, 6, !dbg !2512
  %418 = or i8 %417, 48, !dbg !2512
  %419 = getelementptr inbounds i8, i8* %0, i64 %414, !dbg !2512
  store i8 %418, i8* %419, align 1, !dbg !2512, !tbaa !908
  br label %420, !dbg !2512

; <label>:420:                                    ; preds = %416, %413
  %421 = add i64 %408, 2, !dbg !2514
  call void @llvm.dbg.value(metadata i64 %421, i64 0, metadata !1985, metadata !810), !dbg !2047
  %422 = icmp ult i64 %421, %131, !dbg !2516
  br i1 %422, label %423, label %428, !dbg !2520

; <label>:423:                                    ; preds = %420
  %424 = lshr i8 %383, 3, !dbg !2522
  %425 = and i8 %424, 7, !dbg !2522
  %426 = or i8 %425, 48, !dbg !2522
  %427 = getelementptr inbounds i8, i8* %0, i64 %421, !dbg !2522
  store i8 %426, i8* %427, align 1, !dbg !2522, !tbaa !908
  br label %428, !dbg !2522

; <label>:428:                                    ; preds = %423, %420
  %429 = add i64 %408, 3, !dbg !2524
  call void @llvm.dbg.value(metadata i64 %429, i64 0, metadata !1985, metadata !810), !dbg !2047
  %430 = and i8 %383, 7, !dbg !2526
  %431 = or i8 %430, 48, !dbg !2527
  call void @llvm.dbg.value(metadata i8 %431, i64 0, metadata !1995, metadata !810), !dbg !2153
  br label %441, !dbg !2528

; <label>:432:                                    ; preds = %379
  %433 = and i8 %384, 1, !dbg !2529
  %434 = icmp eq i8 %433, 0, !dbg !2529
  br i1 %434, label %441, label %435, !dbg !2531

; <label>:435:                                    ; preds = %432
  %436 = icmp ult i64 %381, %131, !dbg !2532
  br i1 %436, label %437, label %439, !dbg !2537

; <label>:437:                                    ; preds = %435
  %438 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !2539
  store i8 92, i8* %438, align 1, !dbg !2539, !tbaa !908
  br label %439, !dbg !2539

; <label>:439:                                    ; preds = %437, %435
  %440 = add i64 %381, 1, !dbg !2541
  call void @llvm.dbg.value(metadata i64 %440, i64 0, metadata !1985, metadata !810), !dbg !2047
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2000, metadata !810), !dbg !2134
  br label %441, !dbg !2543

; <label>:441:                                    ; preds = %432, %439, %428
  %442 = phi i64 [ %440, %439 ], [ %381, %432 ], [ %429, %428 ]
  %443 = phi i8 [ %382, %439 ], [ %382, %432 ], [ %409, %428 ]
  %444 = phi i8 [ %383, %439 ], [ %383, %432 ], [ %431, %428 ]
  %445 = phi i8 [ 0, %439 ], [ %384, %432 ], [ %384, %428 ]
  %446 = phi i8 [ %385, %439 ], [ %385, %432 ], [ 1, %428 ]
  call void @llvm.dbg.value(metadata i8 %446, i64 0, metadata !2001, metadata !810), !dbg !2135
  call void @llvm.dbg.value(metadata i8 %445, i64 0, metadata !2000, metadata !810), !dbg !2134
  call void @llvm.dbg.value(metadata i8 %444, i64 0, metadata !1995, metadata !810), !dbg !2153
  call void @llvm.dbg.value(metadata i8 %443, i64 0, metadata !1992, metadata !810), !dbg !2055
  call void @llvm.dbg.value(metadata i64 %442, i64 0, metadata !1985, metadata !810), !dbg !2047
  %447 = add i64 %380, 1, !dbg !2544
  %448 = icmp ugt i64 %378, %447, !dbg !2546
  br i1 %448, label %449, label %541, !dbg !2547

; <label>:449:                                    ; preds = %441
  %450 = and i8 %443, 1, !dbg !2548
  %451 = icmp ne i8 %450, 0, !dbg !2548
  %452 = and i8 %446, 1, !dbg !2552
  %453 = icmp eq i8 %452, 0, !dbg !2552
  %454 = and i1 %451, %453, !dbg !2548
  br i1 %454, label %455, label %466, !dbg !2548

; <label>:455:                                    ; preds = %449
  %456 = icmp ult i64 %442, %131, !dbg !2554
  br i1 %456, label %457, label %459, !dbg !2559

; <label>:457:                                    ; preds = %455
  %458 = getelementptr inbounds i8, i8* %0, i64 %442, !dbg !2561
  store i8 39, i8* %458, align 1, !dbg !2561, !tbaa !908
  br label %459, !dbg !2561

; <label>:459:                                    ; preds = %457, %455
  %460 = add i64 %442, 1, !dbg !2563
  call void @llvm.dbg.value(metadata i64 %460, i64 0, metadata !1985, metadata !810), !dbg !2047
  %461 = icmp ult i64 %460, %131, !dbg !2565
  br i1 %461, label %462, label %464, !dbg !2569

; <label>:462:                                    ; preds = %459
  %463 = getelementptr inbounds i8, i8* %0, i64 %460, !dbg !2571
  store i8 39, i8* %463, align 1, !dbg !2571, !tbaa !908
  br label %464, !dbg !2571

; <label>:464:                                    ; preds = %462, %459
  %465 = add i64 %442, 2, !dbg !2573
  call void @llvm.dbg.value(metadata i64 %465, i64 0, metadata !1985, metadata !810), !dbg !2047
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1992, metadata !810), !dbg !2055
  br label %466, !dbg !2575

; <label>:466:                                    ; preds = %449, %464
  %467 = phi i64 [ %465, %464 ], [ %442, %449 ]
  %468 = phi i8 [ 0, %464 ], [ %443, %449 ]
  call void @llvm.dbg.value(metadata i8 %468, i64 0, metadata !1992, metadata !810), !dbg !2055
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !1985, metadata !810), !dbg !2047
  %469 = icmp ult i64 %467, %131, !dbg !2577
  br i1 %469, label %470, label %472, !dbg !2581

; <label>:470:                                    ; preds = %466
  %471 = getelementptr inbounds i8, i8* %0, i64 %467, !dbg !2583
  store i8 %444, i8* %471, align 1, !dbg !2583, !tbaa !908
  br label %472, !dbg !2583

; <label>:472:                                    ; preds = %470, %466
  %473 = add i64 %467, 1, !dbg !2585
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !1985, metadata !810), !dbg !2047
  call void @llvm.dbg.value(metadata i64 %447, i64 0, metadata !1984, metadata !810), !dbg !2122
  %474 = getelementptr inbounds i8, i8* %2, i64 %447, !dbg !2587
  %475 = load i8, i8* %474, align 1, !dbg !2587, !tbaa !908
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !1995, metadata !810), !dbg !2153
  br label %379, !dbg !2588, !llvm.loop !2590

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
  call void @llvm.dbg.value(metadata i64 %486, i64 0, metadata !1976, metadata !810), !dbg !2039
  call void @llvm.dbg.value(metadata i8 %485, i64 0, metadata !2002, metadata !810), !dbg !2136
  call void @llvm.dbg.value(metadata i8 %484, i64 0, metadata !2001, metadata !810), !dbg !2135
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !2000, metadata !810), !dbg !2134
  call void @llvm.dbg.value(metadata i8 %483, i64 0, metadata !1995, metadata !810), !dbg !2153
  call void @llvm.dbg.value(metadata i8 %482, i64 0, metadata !1993, metadata !810), !dbg !2056
  call void @llvm.dbg.value(metadata i8 %481, i64 0, metadata !1992, metadata !810), !dbg !2055
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !1978, metadata !810), !dbg !2041
  call void @llvm.dbg.value(metadata i64 %479, i64 0, metadata !1986, metadata !810), !dbg !2048
  call void @llvm.dbg.value(metadata i64 %478, i64 0, metadata !1985, metadata !810), !dbg !2047
  call void @llvm.dbg.value(metadata i64 %477, i64 0, metadata !1984, metadata !810), !dbg !2122
  br i1 %107, label %488, label %487, !dbg !2593

; <label>:487:                                    ; preds = %476
  br i1 %117, label %489, label %501, !dbg !2595

; <label>:488:                                    ; preds = %476
  br i1 %20, label %501, label %489, !dbg !2596

; <label>:489:                                    ; preds = %488, %487
  %490 = lshr i8 %483, 5, !dbg !2597
  %491 = zext i8 %490 to i64, !dbg !2597
  %492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !2599
  %493 = load i32, i32* %492, align 4, !dbg !2599, !tbaa !970
  %494 = and i8 %483, 31, !dbg !2600
  %495 = zext i8 %494 to i32, !dbg !2601
  %496 = shl i32 1, %495, !dbg !2602
  %497 = and i32 %493, %496, !dbg !2602
  %498 = icmp eq i32 %497, 0, !dbg !2602
  %499 = icmp eq i8 %157, 0, !dbg !2603
  %500 = and i1 %499, %498, !dbg !2604
  br i1 %500, label %542, label %503, !dbg !2604

; <label>:501:                                    ; preds = %488, %487
  %502 = icmp eq i8 %157, 0, !dbg !2603
  br i1 %502, label %542, label %503, !dbg !2605

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
  call void @llvm.dbg.value(metadata i64 %512, i64 0, metadata !1976, metadata !810), !dbg !2039
  call void @llvm.dbg.value(metadata i8 %511, i64 0, metadata !2002, metadata !810), !dbg !2136
  call void @llvm.dbg.value(metadata i8 %510, i64 0, metadata !1995, metadata !810), !dbg !2153
  call void @llvm.dbg.value(metadata i8 %509, i64 0, metadata !1993, metadata !810), !dbg !2056
  call void @llvm.dbg.value(metadata i8 %508, i64 0, metadata !1992, metadata !810), !dbg !2055
  call void @llvm.dbg.value(metadata i64 %507, i64 0, metadata !1978, metadata !810), !dbg !2041
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !1986, metadata !810), !dbg !2048
  call void @llvm.dbg.value(metadata i64 %505, i64 0, metadata !1985, metadata !810), !dbg !2047
  call void @llvm.dbg.value(metadata i64 %504, i64 0, metadata !1984, metadata !810), !dbg !2122
  br i1 %112, label %513, label %644, !dbg !2607

; <label>:513:                                    ; preds = %503
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2001, metadata !810), !dbg !2135
  %514 = and i8 %508, 1, !dbg !2610
  %515 = icmp eq i8 %514, 0, !dbg !2610
  %516 = and i1 %114, %515, !dbg !2613
  br i1 %516, label %517, label %533, !dbg !2613

; <label>:517:                                    ; preds = %513
  %518 = icmp ult i64 %505, %512, !dbg !2615
  br i1 %518, label %519, label %521, !dbg !2620

; <label>:519:                                    ; preds = %517
  %520 = getelementptr inbounds i8, i8* %0, i64 %505, !dbg !2622
  store i8 39, i8* %520, align 1, !dbg !2622, !tbaa !908
  br label %521, !dbg !2622

; <label>:521:                                    ; preds = %519, %517
  %522 = add i64 %505, 1, !dbg !2624
  call void @llvm.dbg.value(metadata i64 %522, i64 0, metadata !1985, metadata !810), !dbg !2047
  %523 = icmp ult i64 %522, %512, !dbg !2626
  br i1 %523, label %524, label %526, !dbg !2630

; <label>:524:                                    ; preds = %521
  %525 = getelementptr inbounds i8, i8* %0, i64 %522, !dbg !2632
  store i8 36, i8* %525, align 1, !dbg !2632, !tbaa !908
  br label %526, !dbg !2632

; <label>:526:                                    ; preds = %524, %521
  %527 = add i64 %505, 2, !dbg !2634
  call void @llvm.dbg.value(metadata i64 %527, i64 0, metadata !1985, metadata !810), !dbg !2047
  %528 = icmp ult i64 %527, %512, !dbg !2636
  br i1 %528, label %529, label %531, !dbg !2640

; <label>:529:                                    ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !2642
  store i8 39, i8* %530, align 1, !dbg !2642, !tbaa !908
  br label %531, !dbg !2642

; <label>:531:                                    ; preds = %529, %526
  %532 = add i64 %505, 3, !dbg !2644
  call void @llvm.dbg.value(metadata i64 %532, i64 0, metadata !1985, metadata !810), !dbg !2047
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1992, metadata !810), !dbg !2055
  br label %533, !dbg !2646

; <label>:533:                                    ; preds = %513, %531
  %534 = phi i64 [ %532, %531 ], [ %505, %513 ]
  %535 = phi i8 [ 1, %531 ], [ %508, %513 ]
  call void @llvm.dbg.value(metadata i8 %535, i64 0, metadata !1992, metadata !810), !dbg !2055
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !1985, metadata !810), !dbg !2047
  %536 = icmp ult i64 %534, %512, !dbg !2648
  br i1 %536, label %537, label %539, !dbg !2652

; <label>:537:                                    ; preds = %533
  %538 = getelementptr inbounds i8, i8* %0, i64 %534, !dbg !2654
  store i8 92, i8* %538, align 1, !dbg !2654, !tbaa !908
  br label %539, !dbg !2654

; <label>:539:                                    ; preds = %533, %537
  %540 = add i64 %534, 1, !dbg !2656
  call void @llvm.dbg.value(metadata i64 %540, i64 0, metadata !1985, metadata !810), !dbg !2047
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !1976, metadata !810), !dbg !2039
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !2002, metadata !810), !dbg !2136
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !2001, metadata !810), !dbg !2135
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !1995, metadata !810), !dbg !2153
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !1993, metadata !810), !dbg !2056
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !1992, metadata !810), !dbg !2055
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !1978, metadata !810), !dbg !2041
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1986, metadata !810), !dbg !2048
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !1985, metadata !810), !dbg !2047
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !1984, metadata !810), !dbg !2122
  br label %569, !dbg !2658

; <label>:541:                                    ; preds = %441
  br label %542, !dbg !2039

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
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !1976, metadata !810), !dbg !2039
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !2002, metadata !810), !dbg !2136
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !2001, metadata !810), !dbg !2135
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !1995, metadata !810), !dbg !2153
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !1993, metadata !810), !dbg !2056
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !1992, metadata !810), !dbg !2055
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !1978, metadata !810), !dbg !2041
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !1986, metadata !810), !dbg !2048
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !1985, metadata !810), !dbg !2047
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !1984, metadata !810), !dbg !2122
  %553 = and i8 %547, 1, !dbg !2658
  %554 = icmp ne i8 %553, 0, !dbg !2658
  %555 = and i8 %550, 1, !dbg !2662
  %556 = icmp eq i8 %555, 0, !dbg !2662
  %557 = and i1 %554, %556, !dbg !2658
  br i1 %557, label %558, label %569, !dbg !2658

; <label>:558:                                    ; preds = %542
  %559 = icmp ult i64 %544, %552, !dbg !2664
  br i1 %559, label %560, label %562, !dbg !2669

; <label>:560:                                    ; preds = %558
  %561 = getelementptr inbounds i8, i8* %0, i64 %544, !dbg !2671
  store i8 39, i8* %561, align 1, !dbg !2671, !tbaa !908
  br label %562, !dbg !2671

; <label>:562:                                    ; preds = %560, %558
  %563 = add i64 %544, 1, !dbg !2673
  call void @llvm.dbg.value(metadata i64 %563, i64 0, metadata !1985, metadata !810), !dbg !2047
  %564 = icmp ult i64 %563, %552, !dbg !2675
  br i1 %564, label %565, label %567, !dbg !2679

; <label>:565:                                    ; preds = %562
  %566 = getelementptr inbounds i8, i8* %0, i64 %563, !dbg !2681
  store i8 39, i8* %566, align 1, !dbg !2681, !tbaa !908
  br label %567, !dbg !2681

; <label>:567:                                    ; preds = %565, %562
  %568 = add i64 %544, 2, !dbg !2683
  call void @llvm.dbg.value(metadata i64 %568, i64 0, metadata !1985, metadata !810), !dbg !2047
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1992, metadata !810), !dbg !2055
  br label %569, !dbg !2685

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
  call void @llvm.dbg.value(metadata i8 %578, i64 0, metadata !1992, metadata !810), !dbg !2055
  call void @llvm.dbg.value(metadata i64 %577, i64 0, metadata !1985, metadata !810), !dbg !2047
  %579 = icmp ult i64 %577, %570, !dbg !2687
  br i1 %579, label %580, label %582, !dbg !2691

; <label>:580:                                    ; preds = %569
  %581 = getelementptr inbounds i8, i8* %0, i64 %577, !dbg !2693
  store i8 %572, i8* %581, align 1, !dbg !2693, !tbaa !908
  br label %582, !dbg !2693

; <label>:582:                                    ; preds = %580, %569
  %583 = add i64 %577, 1, !dbg !2695
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !1985, metadata !810), !dbg !2047
  %584 = and i8 %571, 1, !dbg !2697
  %585 = icmp eq i8 %584, 0, !dbg !2697
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1994, metadata !810), !dbg !2057
  %586 = select i1 %585, i8 0, i8 %130, !dbg !2699
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !1994, metadata !810), !dbg !2057
  br label %587, !dbg !2700

; <label>:587:                                    ; preds = %582, %209
  %588 = phi i64 [ %124, %209 ], [ %576, %582 ]
  %589 = phi i64 [ %125, %209 ], [ %583, %582 ]
  %590 = phi i64 [ %126, %209 ], [ %575, %582 ]
  %591 = phi i64 [ %156, %209 ], [ %574, %582 ]
  %592 = phi i8 [ %128, %209 ], [ %578, %582 ]
  %593 = phi i8 [ %129, %209 ], [ %573, %582 ]
  %594 = phi i8 [ %130, %209 ], [ %586, %582 ]
  %595 = phi i64 [ %131, %209 ], [ %570, %582 ]
  %596 = add i64 %588, 1, !dbg !2701
  call void @llvm.dbg.value(metadata i64 %596, i64 0, metadata !1984, metadata !810), !dbg !2122
  br label %123, !dbg !2703, !llvm.loop !2704

; <label>:597:                                    ; preds = %133, %135
  %598 = phi i64 [ %124, %133 ], [ -1, %135 ]
  %599 = icmp eq i64 %125, 0, !dbg !2707
  %600 = and i1 %114, %599, !dbg !2709
  %601 = xor i1 %600, true, !dbg !2709
  %602 = or i1 %112, %601, !dbg !2709
  br i1 %602, label %603, label %648, !dbg !2709

; <label>:603:                                    ; preds = %597
  %604 = and i1 %114, %112, !dbg !2710
  %605 = xor i1 %604, true, !dbg !2710
  %606 = and i8 %129, 1, !dbg !2712
  %607 = icmp eq i8 %606, 0, !dbg !2712
  %608 = or i1 %607, %605, !dbg !2710
  br i1 %608, label %618, label %609, !dbg !2710

; <label>:609:                                    ; preds = %603
  %610 = and i8 %130, 1, !dbg !2714
  %611 = icmp eq i8 %610, 0, !dbg !2714
  br i1 %611, label %614, label %612, !dbg !2717

; <label>:612:                                    ; preds = %609
  %613 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %126, i8* %2, i64 %598, i32 5, i32 %5, i32* %6, i8* %97, i8* %98), !dbg !2718
  br label %659, !dbg !2719

; <label>:614:                                    ; preds = %609
  %615 = icmp eq i64 %131, 0, !dbg !2720
  %616 = icmp ne i64 %126, 0, !dbg !2722
  %617 = and i1 %616, %615, !dbg !2724
  br i1 %617, label %27, label %618, !dbg !2724

; <label>:618:                                    ; preds = %603, %614
  %619 = icmp ne i8* %100, null, !dbg !2725
  %620 = and i1 %619, %112, !dbg !2727
  br i1 %620, label %621, label %638, !dbg !2727

; <label>:621:                                    ; preds = %618
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !1987, metadata !810), !dbg !2049
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !1985, metadata !810), !dbg !2047
  %622 = load i8, i8* %100, align 1, !dbg !2728, !tbaa !908
  %623 = icmp eq i8 %622, 0, !dbg !2732
  br i1 %623, label %638, label %624, !dbg !2732

; <label>:624:                                    ; preds = %621
  br label %625, !dbg !2734

; <label>:625:                                    ; preds = %624, %632
  %626 = phi i8 [ %635, %632 ], [ %622, %624 ]
  %627 = phi i8* [ %634, %632 ], [ %100, %624 ]
  %628 = phi i64 [ %633, %632 ], [ %125, %624 ]
  %629 = icmp ult i64 %628, %131, !dbg !2734
  br i1 %629, label %630, label %632, !dbg !2738

; <label>:630:                                    ; preds = %625
  %631 = getelementptr inbounds i8, i8* %0, i64 %628, !dbg !2740
  store i8 %626, i8* %631, align 1, !dbg !2740, !tbaa !908
  br label %632, !dbg !2740

; <label>:632:                                    ; preds = %630, %625
  %633 = add i64 %628, 1, !dbg !2742
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !1985, metadata !810), !dbg !2047
  %634 = getelementptr inbounds i8, i8* %627, i64 1, !dbg !2744
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !1987, metadata !810), !dbg !2049
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !1987, metadata !810), !dbg !2049
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !1985, metadata !810), !dbg !2047
  %635 = load i8, i8* %634, align 1, !dbg !2728, !tbaa !908
  %636 = icmp eq i8 %635, 0, !dbg !2732
  br i1 %636, label %637, label %625, !dbg !2732, !llvm.loop !2746

; <label>:637:                                    ; preds = %632
  br label %638, !dbg !2047

; <label>:638:                                    ; preds = %637, %621, %618
  %639 = phi i64 [ %125, %618 ], [ %125, %621 ], [ %633, %637 ]
  call void @llvm.dbg.value(metadata i64 %639, i64 0, metadata !1985, metadata !810), !dbg !2047
  %640 = icmp ult i64 %639, %131, !dbg !2749
  br i1 %640, label %641, label %659, !dbg !2751

; <label>:641:                                    ; preds = %638
  %642 = getelementptr inbounds i8, i8* %0, i64 %639, !dbg !2752
  store i8 0, i8* %642, align 1, !dbg !2753, !tbaa !908
  br label %659, !dbg !2752

; <label>:643:                                    ; preds = %386
  br label %649, !dbg !2039

; <label>:644:                                    ; preds = %148, %161, %211, %225, %253, %255, %273, %276, %503
  %645 = phi i32 [ %96, %148 ], [ %96, %161 ], [ 2, %211 ], [ 5, %225 ], [ 2, %253 ], [ 2, %255 ], [ 2, %273 ], [ 2, %276 ], [ %96, %503 ]
  %646 = phi i64 [ %146, %148 ], [ %156, %161 ], [ %156, %211 ], [ %156, %225 ], [ %156, %253 ], [ %156, %255 ], [ %156, %273 ], [ %156, %276 ], [ %507, %503 ]
  %647 = phi i64 [ %131, %148 ], [ %131, %161 ], [ %131, %211 ], [ %131, %225 ], [ %131, %253 ], [ %131, %255 ], [ %131, %273 ], [ %131, %276 ], [ %512, %503 ]
  br label %649, !dbg !2039

; <label>:648:                                    ; preds = %597
  br label %649, !dbg !2039

; <label>:649:                                    ; preds = %648, %644, %643, %367
  %650 = phi i32 [ 2, %367 ], [ %96, %643 ], [ %645, %644 ], [ %96, %648 ]
  %651 = phi i64 [ %313, %367 ], [ %369, %643 ], [ %646, %644 ], [ %598, %648 ]
  %652 = phi i64 [ %131, %367 ], [ %131, %643 ], [ %647, %644 ], [ %131, %648 ]
  call void @llvm.dbg.value(metadata i64 %652, i64 0, metadata !1976, metadata !810), !dbg !2039
  call void @llvm.dbg.value(metadata i64 %651, i64 0, metadata !1978, metadata !810), !dbg !2041
  %653 = icmp ne i32 %650, 2, !dbg !2754
  %654 = icmp eq i8 %104, 0, !dbg !2756
  %655 = or i1 %653, %654, !dbg !2758
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !1979, metadata !810), !dbg !2042
  %656 = select i1 %655, i32 %650, i32 4, !dbg !2758
  call void @llvm.dbg.value(metadata i32 %656, i64 0, metadata !1979, metadata !810), !dbg !2042
  %657 = and i32 %5, -3, !dbg !2759
  %658 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %652, i8* %2, i64 %651, i32 %656, i32 %657, i32* null, i8* %97, i8* %98), !dbg !2760
  br label %659, !dbg !2761

; <label>:659:                                    ; preds = %638, %641, %649, %612
  %660 = phi i64 [ %658, %649 ], [ %613, %612 ], [ %639, %641 ], [ %639, %638 ]
  ret i64 %660, !dbg !2762
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !2763 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2767, metadata !810), !dbg !2771
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2768, metadata !810), !dbg !2772
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #10, !dbg !2773
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2769, metadata !810), !dbg !2774
  %4 = icmp eq i8* %3, %0, !dbg !2775
  br i1 %4, label %5, label %75, !dbg !2777

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #10, !dbg !2778
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !2770, metadata !810), !dbg !2779
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2780, metadata !810), !dbg !2796
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2794, metadata !810), !dbg !2799
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2795, metadata !810), !dbg !2800
  %7 = load i8, i8* %6, align 1, !tbaa !908
  %8 = sext i8 %7 to i32
  %9 = and i32 %8, -33, !dbg !2801
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !2801

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2804, metadata !810), !dbg !2818
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2816, metadata !810), !dbg !2822
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2817, metadata !810), !dbg !2823
  %11 = getelementptr inbounds i8, i8* %6, i64 1
  %12 = load i8, i8* %11, align 1, !tbaa !908
  %13 = sext i8 %12 to i32
  %14 = and i32 %13, -33, !dbg !2824
  %15 = icmp eq i32 %14, 84, !dbg !2824
  br i1 %15, label %16, label %72, !dbg !2824

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2827, metadata !810), !dbg !2840
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2838, metadata !810), !dbg !2844
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2839, metadata !810), !dbg !2845
  %17 = getelementptr inbounds i8, i8* %6, i64 2
  %18 = load i8, i8* %17, align 1, !tbaa !908
  %19 = sext i8 %18 to i32
  %20 = and i32 %19, -33, !dbg !2846
  %21 = icmp eq i32 %20, 70, !dbg !2846
  br i1 %21, label %22, label %72, !dbg !2846

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2849, metadata !810), !dbg !2861
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2859, metadata !810), !dbg !2865
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2860, metadata !810), !dbg !2866
  %23 = getelementptr inbounds i8, i8* %6, i64 3
  %24 = load i8, i8* %23, align 1, !tbaa !908
  %25 = icmp eq i8 %24, 45, !dbg !2867
  br i1 %25, label %26, label %72, !dbg !2870

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2872, metadata !810), !dbg !2883
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2881, metadata !810), !dbg !2887
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2882, metadata !810), !dbg !2888
  %27 = getelementptr inbounds i8, i8* %6, i64 4
  %28 = load i8, i8* %27, align 1, !tbaa !908
  %29 = icmp eq i8 %28, 56, !dbg !2889
  br i1 %29, label %30, label %72, !dbg !2892

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2894, metadata !810), !dbg !2904
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2902, metadata !810), !dbg !2908
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2903, metadata !810), !dbg !2909
  %31 = getelementptr inbounds i8, i8* %6, i64 5
  %32 = load i8, i8* %31, align 1, !tbaa !908
  %33 = icmp eq i8 %32, 0, !dbg !2910
  br i1 %33, label %34, label %72, !dbg !2913

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !2915, !tbaa !908
  %36 = icmp eq i8 %35, 96, !dbg !2916
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.71, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.72, i64 0, i64 0), !dbg !2915
  br label %75, !dbg !2917

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2804, metadata !810), !dbg !2918
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2816, metadata !810), !dbg !2922
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2817, metadata !810), !dbg !2923
  %39 = getelementptr inbounds i8, i8* %6, i64 1
  %40 = load i8, i8* %39, align 1, !tbaa !908
  %41 = sext i8 %40 to i32
  %42 = and i32 %41, -33, !dbg !2924
  %43 = icmp eq i32 %42, 66, !dbg !2924
  br i1 %43, label %44, label %72, !dbg !2924

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2827, metadata !810), !dbg !2925
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2838, metadata !810), !dbg !2927
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2839, metadata !810), !dbg !2928
  %45 = getelementptr inbounds i8, i8* %6, i64 2
  %46 = load i8, i8* %45, align 1, !tbaa !908
  %47 = icmp eq i8 %46, 49, !dbg !2929
  br i1 %47, label %48, label %72, !dbg !2931

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2849, metadata !810), !dbg !2933
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2859, metadata !810), !dbg !2935
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2860, metadata !810), !dbg !2936
  %49 = getelementptr inbounds i8, i8* %6, i64 3
  %50 = load i8, i8* %49, align 1, !tbaa !908
  %51 = icmp eq i8 %50, 56, !dbg !2937
  br i1 %51, label %52, label %72, !dbg !2938

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2872, metadata !810), !dbg !2939
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2881, metadata !810), !dbg !2941
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2882, metadata !810), !dbg !2942
  %53 = getelementptr inbounds i8, i8* %6, i64 4
  %54 = load i8, i8* %53, align 1, !tbaa !908
  %55 = icmp eq i8 %54, 48, !dbg !2943
  br i1 %55, label %56, label %72, !dbg !2944

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2894, metadata !810), !dbg !2945
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2902, metadata !810), !dbg !2947
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2903, metadata !810), !dbg !2948
  %57 = getelementptr inbounds i8, i8* %6, i64 5
  %58 = load i8, i8* %57, align 1, !tbaa !908
  %59 = icmp eq i8 %58, 51, !dbg !2949
  br i1 %59, label %60, label %72, !dbg !2950

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2951, metadata !810), !dbg !2960
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2958, metadata !810), !dbg !2964
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2959, metadata !810), !dbg !2965
  %61 = getelementptr inbounds i8, i8* %6, i64 6
  %62 = load i8, i8* %61, align 1, !tbaa !908
  %63 = icmp eq i8 %62, 48, !dbg !2966
  br i1 %63, label %64, label %72, !dbg !2969

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2971, metadata !810), !dbg !2979
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2977, metadata !810), !dbg !2983
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2978, metadata !810), !dbg !2984
  %65 = getelementptr inbounds i8, i8* %6, i64 7
  %66 = load i8, i8* %65, align 1, !tbaa !908
  %67 = icmp eq i8 %66, 0, !dbg !2985
  br i1 %67, label %68, label %72, !dbg !2988

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !2989, !tbaa !908
  %70 = icmp eq i8 %69, 96, !dbg !2990
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.73, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.74, i64 0, i64 0), !dbg !2989
  br label %75, !dbg !2991

; <label>:72:                                     ; preds = %5, %30, %26, %22, %16, %10, %64, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !2992
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.70, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.69, i64 0, i64 0), !dbg !2993
  br label %75, !dbg !2994

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !2995
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4

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
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !2996 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3000, metadata !810), !dbg !3003
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3001, metadata !810), !dbg !3004
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3002, metadata !810), !dbg !3005
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3006, metadata !810) #10, !dbg !3019
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3011, metadata !810) #10, !dbg !3021
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !3012, metadata !810) #10, !dbg !3022
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3013, metadata !810) #10, !dbg !3023
  %4 = icmp ne %struct.quoting_options* %2, null, !dbg !3024
  %5 = select i1 %4, %struct.quoting_options* %2, %struct.quoting_options* @default_quoting_options, !dbg !3024
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3014, metadata !810) #10, !dbg !3025
  %6 = tail call i32* @__errno_location() #1, !dbg !3026
  %7 = load i32, i32* %6, align 4, !dbg !3026, !tbaa !970
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !3015, metadata !810) #10, !dbg !3027
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3028
  %9 = load i32, i32* %8, align 4, !dbg !3028, !tbaa !1907
  %10 = or i32 %9, 1, !dbg !3029
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !3016, metadata !810) #10, !dbg !3030
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3031
  %12 = load i32, i32* %11, align 8, !dbg !3031, !tbaa !1845
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !3032
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3033
  %15 = load i8*, i8** %14, align 8, !dbg !3033, !tbaa !1934
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3034
  %17 = load i8*, i8** %16, align 8, !dbg !3034, !tbaa !1937
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #10, !dbg !3035
  %19 = add i64 %18, 1, !dbg !3036
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !3017, metadata !810) #10, !dbg !3037
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !3038, metadata !810) #10, !dbg !3043
  %20 = tail call noalias i8* @xmalloc(i64 %19) #10, !dbg !3045
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !3018, metadata !810) #10, !dbg !3046
  %21 = load i32, i32* %11, align 8, !dbg !3047, !tbaa !1845
  %22 = load i8*, i8** %14, align 8, !dbg !3048, !tbaa !1934
  %23 = load i8*, i8** %16, align 8, !dbg !3049, !tbaa !1937
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #10, !dbg !3050
  store i32 %7, i32* %6, align 4, !dbg !3051, !tbaa !970
  ret i8* %20, !dbg !3052
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !3007 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3006, metadata !810), !dbg !3053
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3011, metadata !810), !dbg !3054
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !3012, metadata !810), !dbg !3055
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3013, metadata !810), !dbg !3056
  %5 = icmp ne %struct.quoting_options* %3, null, !dbg !3057
  %6 = select i1 %5, %struct.quoting_options* %3, %struct.quoting_options* @default_quoting_options, !dbg !3057
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3014, metadata !810), !dbg !3058
  %7 = tail call i32* @__errno_location() #1, !dbg !3059
  %8 = load i32, i32* %7, align 4, !dbg !3059, !tbaa !970
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !3015, metadata !810), !dbg !3060
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3061
  %10 = load i32, i32* %9, align 4, !dbg !3061, !tbaa !1907
  %11 = icmp ne i64* %2, null, !dbg !3062
  %12 = xor i1 %11, true, !dbg !3062
  %13 = zext i1 %12 to i32, !dbg !3062
  %14 = or i32 %10, %13, !dbg !3063
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !3016, metadata !810), !dbg !3064
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3065
  %16 = load i32, i32* %15, align 8, !dbg !3065, !tbaa !1845
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !3066
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3067
  %19 = load i8*, i8** %18, align 8, !dbg !3067, !tbaa !1934
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3068
  %21 = load i8*, i8** %20, align 8, !dbg !3068, !tbaa !1937
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !3069
  %23 = add i64 %22, 1, !dbg !3070
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !3017, metadata !810), !dbg !3071
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !3038, metadata !810) #10, !dbg !3072
  %24 = tail call noalias i8* @xmalloc(i64 %23) #10, !dbg !3074
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !3018, metadata !810), !dbg !3075
  %25 = load i32, i32* %15, align 8, !dbg !3076, !tbaa !1845
  %26 = load i8*, i8** %18, align 8, !dbg !3077, !tbaa !1934
  %27 = load i8*, i8** %20, align 8, !dbg !3078, !tbaa !1937
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !3079
  store i32 %8, i32* %7, align 4, !dbg !3080, !tbaa !970
  br i1 %11, label %29, label %30, !dbg !3081

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !3082, !tbaa !883
  br label %30, !dbg !3084

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !3085
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !3086 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3090, !tbaa !818
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !3088, metadata !810), !dbg !3091
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3089, metadata !810), !dbg !3092
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3089, metadata !810), !dbg !3092
  %2 = load i32, i32* @nslots, align 4, !dbg !3093, !tbaa !970
  %3 = icmp sgt i32 %2, 1, !dbg !3097
  br i1 %3, label %4, label %14, !dbg !3098

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !3100

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !3100
  %8 = load i8*, i8** %7, align 8, !dbg !3100, !tbaa !3101
  tail call void @free(i8* %8) #10, !dbg !3103
  %9 = add nuw i64 %6, 1, !dbg !3104
  %10 = load i32, i32* @nslots, align 4, !dbg !3093, !tbaa !970
  %11 = sext i32 %10 to i64, !dbg !3097
  %12 = icmp slt i64 %9, %11, !dbg !3097
  br i1 %12, label %5, label %13, !dbg !3098, !llvm.loop !3106

; <label>:13:                                     ; preds = %5
  br label %14, !dbg !3109

; <label>:14:                                     ; preds = %13, %0
  %15 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !3109
  %16 = load i8*, i8** %15, align 8, !dbg !3109, !tbaa !3101
  %17 = icmp eq i8* %16, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3111
  br i1 %17, label %19, label %18, !dbg !3112

; <label>:18:                                     ; preds = %14
  tail call void @free(i8* %16) #10, !dbg !3113
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !3115, !tbaa !3116
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !3117, !tbaa !3101
  br label %19, !dbg !3118

; <label>:19:                                     ; preds = %14, %18
  %20 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !3119
  br i1 %20, label %23, label %21, !dbg !3121

; <label>:21:                                     ; preds = %19
  %22 = bitcast %struct.slotvec* %1 to i8*, !dbg !3122
  tail call void @free(i8* %22) #10, !dbg !3124
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !3125, !tbaa !818
  br label %23, !dbg !3126

; <label>:23:                                     ; preds = %19, %21
  store i32 1, i32* @nslots, align 4, !dbg !3127, !tbaa !970
  ret void, !dbg !3128
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !3129 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3133, metadata !810), !dbg !3135
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3134, metadata !810), !dbg !3136
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3137
  ret i8* %3, !dbg !3138
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !3139 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3143, metadata !810), !dbg !3157
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3144, metadata !810), !dbg !3158
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3145, metadata !810), !dbg !3159
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3146, metadata !810), !dbg !3160
  %5 = tail call i32* @__errno_location() #1, !dbg !3161
  %6 = load i32, i32* %5, align 4, !dbg !3161, !tbaa !970
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !3147, metadata !810), !dbg !3162
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3163, !tbaa !818
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !3148, metadata !810), !dbg !3164
  %8 = icmp slt i32 %0, 0, !dbg !3165
  br i1 %8, label %9, label %10, !dbg !3167

; <label>:9:                                      ; preds = %4
  tail call void @abort() #14, !dbg !3168
  unreachable, !dbg !3168

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !3169, !tbaa !970
  %12 = icmp sgt i32 %11, %0, !dbg !3170
  br i1 %12, label %34, label %13, !dbg !3171

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !3172
  %15 = icmp ugt i32 %0, 2147483646, !dbg !3173
  br i1 %15, label %16, label %17, !dbg !3175

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !3176
  unreachable, !dbg !3176

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !3177
  %19 = select i1 %14, i8* null, i8* %18, !dbg !3177
  %20 = add nsw i32 %0, 1, !dbg !3179
  %21 = sext i32 %20 to i64, !dbg !3180
  %22 = shl nsw i64 %21, 4, !dbg !3181
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #10, !dbg !3182
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !3182
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !3148, metadata !810), !dbg !3164
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !3183, !tbaa !818
  br i1 %14, label %25, label %26, !dbg !3184

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !3185, !tbaa.struct !3187
  br label %26, !dbg !3188

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !3189, !tbaa !970
  %28 = sext i32 %27 to i64, !dbg !3190
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !3190
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !3191
  %31 = sub nsw i32 %20, %27, !dbg !3192
  %32 = sext i32 %31 to i64, !dbg !3193
  %33 = shl nsw i64 %32, 4, !dbg !3194
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !3191
  store i32 %20, i32* @nslots, align 4, !dbg !3195, !tbaa !970
  br label %34, !dbg !3196

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !3148, metadata !810), !dbg !3164
  %36 = sext i32 %0 to i64, !dbg !3197
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !3198
  %38 = load i64, i64* %37, align 8, !dbg !3198, !tbaa !3116
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !3152, metadata !810), !dbg !3199
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !3200
  %40 = load i8*, i8** %39, align 8, !dbg !3200, !tbaa !3101
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !3154, metadata !810), !dbg !3201
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !3202
  %42 = load i32, i32* %41, align 4, !dbg !3202, !tbaa !1907
  %43 = or i32 %42, 1, !dbg !3203
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !3155, metadata !810), !dbg !3204
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3205
  %45 = load i32, i32* %44, align 8, !dbg !3205, !tbaa !1845
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !3206
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !3207
  %48 = load i8*, i8** %47, align 8, !dbg !3207, !tbaa !1934
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !3208
  %50 = load i8*, i8** %49, align 8, !dbg !3208, !tbaa !1937
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !3209
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !3156, metadata !810), !dbg !3210
  %52 = icmp ugt i64 %38, %51, !dbg !3211
  br i1 %52, label %63, label %53, !dbg !3213

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !3214
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !3152, metadata !810), !dbg !3199
  store i64 %54, i64* %37, align 8, !dbg !3216, !tbaa !3116
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3217
  br i1 %55, label %57, label %56, !dbg !3219

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #10, !dbg !3220
  br label %57, !dbg !3220

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !3038, metadata !810) #10, !dbg !3221
  %58 = tail call noalias i8* @xmalloc(i64 %54) #10, !dbg !3223
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !3154, metadata !810), !dbg !3201
  store i8* %58, i8** %39, align 8, !dbg !3224, !tbaa !3101
  %59 = load i32, i32* %44, align 8, !dbg !3225, !tbaa !1845
  %60 = load i8*, i8** %47, align 8, !dbg !3226, !tbaa !1934
  %61 = load i8*, i8** %49, align 8, !dbg !3227, !tbaa !1937
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !3228
  br label %63, !dbg !3229

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !3154, metadata !810), !dbg !3201
  store i32 %6, i32* %5, align 4, !dbg !3230, !tbaa !970
  ret i8* %64, !dbg !3231
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3232 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3236, metadata !810), !dbg !3239
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3237, metadata !810), !dbg !3240
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3238, metadata !810), !dbg !3241
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3242
  ret i8* %4, !dbg !3243
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !3244 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3248, metadata !810), !dbg !3249
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3133, metadata !810) #10, !dbg !3250
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3134, metadata !810) #10, !dbg !3252
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !3253
  ret i8* %2, !dbg !3254
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !3255 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3259, metadata !810), !dbg !3261
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3260, metadata !810), !dbg !3262
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3236, metadata !810) #10, !dbg !3263
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3237, metadata !810) #10, !dbg !3265
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3238, metadata !810) #10, !dbg !3266
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !3267
  ret i8* %3, !dbg !3268
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !3269 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !3277, metadata !3283), !dbg !3284
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3273, metadata !810), !dbg !3286
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3274, metadata !810), !dbg !3287
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3275, metadata !810), !dbg !3288
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3289
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !3289
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3276, metadata !1054), !dbg !3290
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3282, metadata !810) #10, !dbg !3291
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3292
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !3292
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3277, metadata !810) #10, !dbg !3284
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3277, metadata !3293) #10, !dbg !3284
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !3284
  %8 = icmp eq i32 %1, 10, !dbg !3294
  br i1 %8, label %9, label %10, !dbg !3296

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14, !dbg !3297, !noalias !3298
  unreachable, !dbg !3297

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3277, metadata !3293) #10, !dbg !3284
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3301
  store i32 %1, i32* %11, align 8, !dbg !3301, !alias.scope !3298
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3301
  %13 = bitcast i32* %12 to i8*, !dbg !3301
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !3301
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !3302
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3276, metadata !1054), !dbg !3290
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !3303
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !3304
  ret i8* %14, !dbg !3305
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !3306 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !3277, metadata !3283), !dbg !3315
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3310, metadata !810), !dbg !3317
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3311, metadata !810), !dbg !3318
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3312, metadata !810), !dbg !3319
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3313, metadata !810), !dbg !3320
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3321
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10, !dbg !3321
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3314, metadata !1054), !dbg !3322
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3282, metadata !810) #10, !dbg !3323
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !3324
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !3324
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3277, metadata !810) #10, !dbg !3315
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3277, metadata !3293) #10, !dbg !3315
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !3315
  %9 = icmp eq i32 %1, 10, !dbg !3325
  br i1 %9, label %10, label %11, !dbg !3326

; <label>:10:                                     ; preds = %4
  tail call void @abort() #14, !dbg !3327, !noalias !3328
  unreachable, !dbg !3327

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3277, metadata !3293) #10, !dbg !3315
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3331
  store i32 %1, i32* %12, align 8, !dbg !3331, !alias.scope !3328
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3331
  %14 = bitcast i32* %13 to i8*, !dbg !3331
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #10, !dbg !3331
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !3332
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3314, metadata !1054), !dbg !3322
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !3333
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10, !dbg !3334
  ret i8* %15, !dbg !3335
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !3336 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !3277, metadata !3283), !dbg !3342
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3340, metadata !810), !dbg !3345
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3341, metadata !810), !dbg !3346
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3273, metadata !810) #10, !dbg !3347
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3274, metadata !810) #10, !dbg !3348
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3275, metadata !810) #10, !dbg !3349
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3350
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10, !dbg !3350
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3276, metadata !1054) #10, !dbg !3351
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3282, metadata !810) #10, !dbg !3352
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !3353
  call void @llvm.lifetime.start(i64 52, i8* nonnull %6), !dbg !3353
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3277, metadata !810) #10, !dbg !3342
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3277, metadata !3293) #10, !dbg !3342
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !3342
  %7 = icmp eq i32 %0, 10, !dbg !3354
  br i1 %7, label %8, label %9, !dbg !3355

; <label>:8:                                      ; preds = %2
  tail call void @abort() #14, !dbg !3356, !noalias !3357
  unreachable, !dbg !3356

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3277, metadata !3293) #10, !dbg !3342
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3360
  store i32 %0, i32* %10, align 8, !dbg !3360, !alias.scope !3357
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3360
  %12 = bitcast i32* %11 to i8*, !dbg !3360
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #10, !dbg !3360
  call void @llvm.lifetime.end(i64 52, i8* nonnull %6), !dbg !3361
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3276, metadata !1054) #10, !dbg !3351
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !3362
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10, !dbg !3363
  ret i8* %13, !dbg !3364
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3365 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !3277, metadata !3283), !dbg !3372
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3369, metadata !810), !dbg !3375
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3370, metadata !810), !dbg !3376
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3371, metadata !810), !dbg !3377
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3310, metadata !810) #10, !dbg !3378
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3311, metadata !810) #10, !dbg !3379
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3312, metadata !810) #10, !dbg !3380
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3313, metadata !810) #10, !dbg !3381
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3382
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !3382
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3314, metadata !1054) #10, !dbg !3383
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3282, metadata !810) #10, !dbg !3384
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3385
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !3385
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3277, metadata !810) #10, !dbg !3372
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3277, metadata !3293) #10, !dbg !3372
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !3372
  %8 = icmp eq i32 %0, 10, !dbg !3386
  br i1 %8, label %9, label %10, !dbg !3387

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14, !dbg !3388, !noalias !3389
  unreachable, !dbg !3388

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3277, metadata !3293) #10, !dbg !3372
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3392
  store i32 %0, i32* %11, align 8, !dbg !3392, !alias.scope !3389
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3392
  %13 = bitcast i32* %12 to i8*, !dbg !3392
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !3392
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !3393
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3314, metadata !1054) #10, !dbg !3383
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #10, !dbg !3394
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !3395
  ret i8* %14, !dbg !3396
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !3397 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3401, metadata !810), !dbg !3405
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3402, metadata !810), !dbg !3406
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !3403, metadata !810), !dbg !3407
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3408
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10, !dbg !3408
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !3409, !tbaa.struct !3410
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3404, metadata !1054), !dbg !3411
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1865, metadata !810), !dbg !3412
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1866, metadata !810), !dbg !3414
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1867, metadata !810), !dbg !3415
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1868, metadata !810), !dbg !3416
  %6 = lshr i8 %2, 5, !dbg !3417
  %7 = zext i8 %6 to i64, !dbg !3417
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3418
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1869, metadata !810), !dbg !3419
  %9 = and i8 %2, 31, !dbg !3420
  %10 = zext i8 %9 to i32, !dbg !3421
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1871, metadata !810), !dbg !3422
  %11 = load i32, i32* %8, align 4, !dbg !3423, !tbaa !970
  %12 = lshr i32 %11, %10, !dbg !3424
  %13 = and i32 %12, 1, !dbg !3425
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1872, metadata !810), !dbg !3426
  %14 = xor i32 %13, 1, !dbg !3427
  %15 = shl i32 %14, %10, !dbg !3428
  %16 = xor i32 %15, %11, !dbg !3429
  store i32 %16, i32* %8, align 4, !dbg !3429, !tbaa !970
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3404, metadata !1054), !dbg !3411
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !3430
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10, !dbg !3431
  ret i8* %17, !dbg !3432
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !3433 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3437, metadata !810), !dbg !3439
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !3438, metadata !810), !dbg !3440
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3401, metadata !810) #10, !dbg !3441
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3402, metadata !810) #10, !dbg !3443
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !3403, metadata !810) #10, !dbg !3444
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3445
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #10, !dbg !3445
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3446, !tbaa.struct !3410
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3404, metadata !1054) #10, !dbg !3447
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1865, metadata !810) #10, !dbg !3448
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1866, metadata !810) #10, !dbg !3450
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1867, metadata !810) #10, !dbg !3451
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1868, metadata !810) #10, !dbg !3452
  %5 = lshr i8 %1, 5, !dbg !3453
  %6 = zext i8 %5 to i64, !dbg !3453
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3454
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !1869, metadata !810) #10, !dbg !3455
  %8 = and i8 %1, 31, !dbg !3456
  %9 = zext i8 %8 to i32, !dbg !3457
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1871, metadata !810) #10, !dbg !3458
  %10 = load i32, i32* %7, align 4, !dbg !3459, !tbaa !970
  %11 = lshr i32 %10, %9, !dbg !3460
  %12 = and i32 %11, 1, !dbg !3461
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !1872, metadata !810) #10, !dbg !3462
  %13 = xor i32 %12, 1, !dbg !3463
  %14 = shl i32 %13, %9, !dbg !3464
  %15 = xor i32 %14, %10, !dbg !3465
  store i32 %15, i32* %7, align 4, !dbg !3465, !tbaa !970
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3404, metadata !1054) #10, !dbg !3447
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !3466
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #10, !dbg !3467
  ret i8* %16, !dbg !3468
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !3469 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3471, metadata !810), !dbg !3472
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3437, metadata !810) #10, !dbg !3473
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3438, metadata !810) #10, !dbg !3475
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3401, metadata !810) #10, !dbg !3476
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3402, metadata !810) #10, !dbg !3478
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3403, metadata !810) #10, !dbg !3479
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3480
  call void @llvm.lifetime.start(i64 56, i8* nonnull %3) #10, !dbg !3480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3481, !tbaa.struct !3410
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3404, metadata !1054) #10, !dbg !3482
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1865, metadata !810) #10, !dbg !3483
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1866, metadata !810) #10, !dbg !3485
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1867, metadata !810) #10, !dbg !3486
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1868, metadata !810) #10, !dbg !3487
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3488
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !1869, metadata !810) #10, !dbg !3489
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1871, metadata !810) #10, !dbg !3490
  %5 = load i32, i32* %4, align 4, !dbg !3491, !tbaa !970
  %6 = or i32 %5, 67108864, !dbg !3492
  store i32 %6, i32* %4, align 4, !dbg !3492, !tbaa !970
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3404, metadata !1054) #10, !dbg !3482
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #10, !dbg !3493
  call void @llvm.lifetime.end(i64 56, i8* nonnull %3) #10, !dbg !3494
  ret i8* %7, !dbg !3495
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !3496 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3498, metadata !810), !dbg !3500
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3499, metadata !810), !dbg !3501
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3401, metadata !810) #10, !dbg !3502
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3402, metadata !810) #10, !dbg !3504
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3403, metadata !810) #10, !dbg !3505
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3506
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #10, !dbg !3506
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3507, !tbaa.struct !3410
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3404, metadata !1054) #10, !dbg !3508
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1865, metadata !810) #10, !dbg !3509
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1866, metadata !810) #10, !dbg !3511
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1867, metadata !810) #10, !dbg !3512
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1868, metadata !810) #10, !dbg !3513
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3514
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !1869, metadata !810) #10, !dbg !3515
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1871, metadata !810) #10, !dbg !3516
  %6 = load i32, i32* %5, align 4, !dbg !3517, !tbaa !970
  %7 = or i32 %6, 67108864, !dbg !3518
  store i32 %7, i32* %5, align 4, !dbg !3518, !tbaa !970
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3404, metadata !1054) #10, !dbg !3508
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #10, !dbg !3519
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #10, !dbg !3520
  ret i8* %8, !dbg !3521
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !3522 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !3277, metadata !3283), !dbg !3528
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3524, metadata !810), !dbg !3530
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3525, metadata !810), !dbg !3531
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3526, metadata !810), !dbg !3532
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3533
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10, !dbg !3533
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3282, metadata !810) #10, !dbg !3534
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3535
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !3535
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3277, metadata !810) #10, !dbg !3528
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3277, metadata !3293) #10, !dbg !3528
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !3528
  %9 = icmp eq i32 %1, 10, !dbg !3536
  br i1 %9, label %10, label %11, !dbg !3537

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !3538, !noalias !3539
  unreachable, !dbg !3538

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3277, metadata !3293) #10, !dbg !3528
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !3542
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !3542
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !3543
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3544
  store i32 %1, i32* %13, align 8, !dbg !3544
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3544
  %15 = bitcast i32* %14 to i8*, !dbg !3544
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !3544
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3527, metadata !1054), !dbg !3545
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1865, metadata !810), !dbg !3546
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1866, metadata !810), !dbg !3548
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1867, metadata !810), !dbg !3549
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1868, metadata !810), !dbg !3550
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !3551
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !1869, metadata !810), !dbg !3552
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1871, metadata !810), !dbg !3553
  %17 = load i32, i32* %16, align 4, !dbg !3554, !tbaa !970
  %18 = or i32 %17, 67108864, !dbg !3555
  store i32 %18, i32* %16, align 4, !dbg !3555, !tbaa !970
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3527, metadata !1054), !dbg !3545
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !3556
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10, !dbg !3557
  ret i8* %19, !dbg !3558
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !3559 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3563, metadata !810), !dbg !3567
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3564, metadata !810), !dbg !3568
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3565, metadata !810), !dbg !3569
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3566, metadata !810), !dbg !3570
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3571, metadata !810) #10, !dbg !3581
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3576, metadata !810) #10, !dbg !3583
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3577, metadata !810) #10, !dbg !3584
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3578, metadata !810) #10, !dbg !3585
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3579, metadata !810) #10, !dbg !3586
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3587
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !3587
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3588, !tbaa.struct !3410
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3580, metadata !1054) #10, !dbg !3589
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1915, metadata !810) #10, !dbg !3590
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1916, metadata !810) #10, !dbg !3592
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1917, metadata !810) #10, !dbg !3593
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1915, metadata !810) #10, !dbg !3590
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1915, metadata !810) #10, !dbg !3590
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3594
  store i32 10, i32* %7, align 8, !dbg !3595, !tbaa !1845
  %8 = icmp ne i8* %1, null, !dbg !3596
  %9 = icmp ne i8* %2, null, !dbg !3597
  %10 = and i1 %8, %9, !dbg !3598
  br i1 %10, label %12, label %11, !dbg !3598

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !3599
  unreachable, !dbg !3599

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3600
  store i8* %1, i8** %13, align 8, !dbg !3601, !tbaa !1934
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3602
  store i8* %2, i8** %14, align 8, !dbg !3603, !tbaa !1937
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3580, metadata !1054) #10, !dbg !3589
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #10, !dbg !3604
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !3605
  ret i8* %15, !dbg !3606
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3572 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3571, metadata !810), !dbg !3607
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3576, metadata !810), !dbg !3608
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3577, metadata !810), !dbg !3609
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3578, metadata !810), !dbg !3610
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !3579, metadata !810), !dbg !3611
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3612
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10, !dbg !3612
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !3613, !tbaa.struct !3410
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3580, metadata !1054), !dbg !3614
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1915, metadata !810) #10, !dbg !3615
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1916, metadata !810) #10, !dbg !3617
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1917, metadata !810) #10, !dbg !3618
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1915, metadata !810) #10, !dbg !3615
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1915, metadata !810) #10, !dbg !3615
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3619
  store i32 10, i32* %8, align 8, !dbg !3620, !tbaa !1845
  %9 = icmp ne i8* %1, null, !dbg !3621
  %10 = icmp ne i8* %2, null, !dbg !3622
  %11 = and i1 %9, %10, !dbg !3623
  br i1 %11, label %13, label %12, !dbg !3623

; <label>:12:                                     ; preds = %5
  tail call void @abort() #14, !dbg !3624
  unreachable, !dbg !3624

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3625
  store i8* %1, i8** %14, align 8, !dbg !3626, !tbaa !1934
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3627
  store i8* %2, i8** %15, align 8, !dbg !3628, !tbaa !1937
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3580, metadata !1054), !dbg !3614
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3629
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10, !dbg !3630
  ret i8* %16, !dbg !3631
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !3632 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3636, metadata !810), !dbg !3639
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3637, metadata !810), !dbg !3640
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3638, metadata !810), !dbg !3641
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3563, metadata !810) #10, !dbg !3642
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3564, metadata !810) #10, !dbg !3644
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3565, metadata !810) #10, !dbg !3645
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3566, metadata !810) #10, !dbg !3646
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3571, metadata !810) #10, !dbg !3647
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3576, metadata !810) #10, !dbg !3649
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3577, metadata !810) #10, !dbg !3650
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3578, metadata !810) #10, !dbg !3651
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3579, metadata !810) #10, !dbg !3652
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3653
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10, !dbg !3653
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3654, !tbaa.struct !3410
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3580, metadata !1054) #10, !dbg !3655
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1915, metadata !810) #10, !dbg !3656
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1916, metadata !810) #10, !dbg !3658
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1917, metadata !810) #10, !dbg !3659
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1915, metadata !810) #10, !dbg !3656
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1915, metadata !810) #10, !dbg !3656
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3660
  store i32 10, i32* %6, align 8, !dbg !3661, !tbaa !1845
  %7 = icmp ne i8* %0, null, !dbg !3662
  %8 = icmp ne i8* %1, null, !dbg !3663
  %9 = and i1 %7, %8, !dbg !3664
  br i1 %9, label %11, label %10, !dbg !3664

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !3665
  unreachable, !dbg !3665

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3666
  store i8* %0, i8** %12, align 8, !dbg !3667, !tbaa !1934
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3668
  store i8* %1, i8** %13, align 8, !dbg !3669, !tbaa !1937
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3580, metadata !1054) #10, !dbg !3655
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !3670
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10, !dbg !3671
  ret i8* %14, !dbg !3672
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3673 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3677, metadata !810), !dbg !3681
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3678, metadata !810), !dbg !3682
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3679, metadata !810), !dbg !3683
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3680, metadata !810), !dbg !3684
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3571, metadata !810) #10, !dbg !3685
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3576, metadata !810) #10, !dbg !3687
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3577, metadata !810) #10, !dbg !3688
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3578, metadata !810) #10, !dbg !3689
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3579, metadata !810) #10, !dbg !3690
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3691
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !3691
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3692, !tbaa.struct !3410
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3580, metadata !1054) #10, !dbg !3693
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1915, metadata !810) #10, !dbg !3694
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1916, metadata !810) #10, !dbg !3696
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1917, metadata !810) #10, !dbg !3697
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1915, metadata !810) #10, !dbg !3694
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1915, metadata !810) #10, !dbg !3694
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3698
  store i32 10, i32* %7, align 8, !dbg !3699, !tbaa !1845
  %8 = icmp ne i8* %0, null, !dbg !3700
  %9 = icmp ne i8* %1, null, !dbg !3701
  %10 = and i1 %8, %9, !dbg !3702
  br i1 %10, label %12, label %11, !dbg !3702

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !3703
  unreachable, !dbg !3703

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3704
  store i8* %0, i8** %13, align 8, !dbg !3705, !tbaa !1934
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3706
  store i8* %1, i8** %14, align 8, !dbg !3707, !tbaa !1937
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3580, metadata !1054) #10, !dbg !3693
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #10, !dbg !3708
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !3709
  ret i8* %15, !dbg !3710
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3711 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3715, metadata !810), !dbg !3718
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3716, metadata !810), !dbg !3719
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3717, metadata !810), !dbg !3720
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3721
  ret i8* %4, !dbg !3722
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !3723 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3727, metadata !810), !dbg !3729
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3728, metadata !810), !dbg !3730
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3715, metadata !810) #10, !dbg !3731
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3716, metadata !810) #10, !dbg !3733
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3717, metadata !810) #10, !dbg !3734
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !3735
  ret i8* %3, !dbg !3736
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !3737 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3741, metadata !810), !dbg !3743
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3742, metadata !810), !dbg !3744
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3715, metadata !810) #10, !dbg !3745
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3716, metadata !810) #10, !dbg !3747
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3717, metadata !810) #10, !dbg !3748
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !3749
  ret i8* %3, !dbg !3750
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !3751 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3753, metadata !810), !dbg !3754
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3741, metadata !810) #10, !dbg !3755
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3742, metadata !810) #10, !dbg !3757
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3715, metadata !810) #10, !dbg !3758
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3716, metadata !810) #10, !dbg !3760
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3717, metadata !810) #10, !dbg !3761
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !3762
  ret i8* %2, !dbg !3763
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @safe_read(i32, i8* nocapture, i64) local_unnamed_addr #6 !dbg !733 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !737, metadata !810), !dbg !3764
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !738, metadata !810), !dbg !3765
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !739, metadata !810), !dbg !3766
  br label %4, !dbg !3767

; <label>:4:                                      ; preds = %13, %3
  %5 = phi i64 [ 2147475456, %13 ], [ %2, %3 ]
  br label %6, !dbg !3766

; <label>:6:                                      ; preds = %4, %9
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !739, metadata !810), !dbg !3766
  %7 = tail call i64 @read(i32 %0, i8* %1, i64 %5) #10, !dbg !3768
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !740, metadata !810), !dbg !3769
  %8 = icmp sgt i64 %7, -1, !dbg !3770
  br i1 %8, label %17, label %9, !dbg !3772

; <label>:9:                                      ; preds = %6
  %10 = tail call i32* @__errno_location() #1, !dbg !3773
  %11 = load i32, i32* %10, align 4, !dbg !3773, !tbaa !970
  %12 = icmp eq i32 %11, 4, !dbg !3773
  br i1 %12, label %6, label %13, !dbg !3775, !llvm.loop !3776

; <label>:13:                                     ; preds = %9
  %14 = icmp eq i32 %11, 22, !dbg !3779
  %15 = icmp ugt i64 %5, 2147475456, !dbg !3781
  %16 = and i1 %15, %14, !dbg !3783
  br i1 %16, label %4, label %18

; <label>:17:                                     ; preds = %6
  br label %19, !dbg !3784

; <label>:18:                                     ; preds = %13
  br label %19, !dbg !3784

; <label>:19:                                     ; preds = %18, %17
  ret i64 %7, !dbg !3784
}

declare i64 @read(i32, i8* nocapture, i64) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define i32 @mkstemp_safer(i8*) local_unnamed_addr #6 !dbg !3785 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3790, metadata !810), !dbg !3791
  %2 = tail call i32 @mkstemp(i8* %0) #10, !dbg !3792
  %3 = tail call i32 @fd_safer(i32 %2) #10, !dbg !3793
  ret i32 %3, !dbg !3795
}

declare i32 @mkstemp(i8*) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define i32 @fd_safer(i32) local_unnamed_addr #6 !dbg !3796 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3801, metadata !810), !dbg !3806
  %2 = icmp ult i32 %0, 3, !dbg !3807
  br i1 %2, label %3, label %8, !dbg !3807

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @dup_safer(i32 %0) #10, !dbg !3808
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !3802, metadata !810), !dbg !3809
  %5 = tail call i32* @__errno_location() #1, !dbg !3810
  %6 = load i32, i32* %5, align 4, !dbg !3810, !tbaa !970
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !3805, metadata !810), !dbg !3811
  %7 = tail call i32 @close(i32 %0) #10, !dbg !3812
  store i32 %6, i32* %5, align 4, !dbg !3813, !tbaa !970
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !3801, metadata !810), !dbg !3806
  br label %8, !dbg !3814

; <label>:8:                                      ; preds = %3, %1
  %9 = phi i32 [ %4, %3 ], [ %0, %1 ]
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !3801, metadata !810), !dbg !3806
  ret i32 %9, !dbg !3815
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !3816 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3860, metadata !810), !dbg !3866
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3861, metadata !810), !dbg !3867
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3862, metadata !810), !dbg !3868
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3863, metadata !810), !dbg !3869
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3864, metadata !810), !dbg !3870
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !3865, metadata !810), !dbg !3871
  %7 = icmp eq i8* %1, null, !dbg !3872
  br i1 %7, label %10, label %8, !dbg !3874

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.87, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #10, !dbg !3875
  br label %12, !dbg !3875

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.88, i64 0, i64 0), i8* %2, i8* %3) #10, !dbg !3876
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.89, i64 0, i64 0), i32 5) #10, !dbg !3877
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #10, !dbg !3878
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.90, i64 0, i64 0), i32 5) #10, !dbg !3880
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #10, !dbg !3881
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
  ], !dbg !3882

; <label>:17:                                     ; preds = %12
  tail call void @abort() #14, !dbg !3883
  unreachable, !dbg !3883

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.91, i64 0, i64 0), i32 5) #10, !dbg !3885
  %20 = load i8*, i8** %4, align 8, !dbg !3885, !tbaa !818
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #10, !dbg !3886
  br label %146, !dbg !3888

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.92, i64 0, i64 0), i32 5) #10, !dbg !3889
  %24 = load i8*, i8** %4, align 8, !dbg !3889, !tbaa !818
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3889
  %26 = load i8*, i8** %25, align 8, !dbg !3889, !tbaa !818
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #10, !dbg !3890
  br label %146, !dbg !3891

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.93, i64 0, i64 0), i32 5) #10, !dbg !3892
  %30 = load i8*, i8** %4, align 8, !dbg !3892, !tbaa !818
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3892
  %32 = load i8*, i8** %31, align 8, !dbg !3892, !tbaa !818
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3892
  %34 = load i8*, i8** %33, align 8, !dbg !3892, !tbaa !818
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #10, !dbg !3893
  br label %146, !dbg !3894

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.94, i64 0, i64 0), i32 5) #10, !dbg !3895
  %38 = load i8*, i8** %4, align 8, !dbg !3895, !tbaa !818
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3895
  %40 = load i8*, i8** %39, align 8, !dbg !3895, !tbaa !818
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3895
  %42 = load i8*, i8** %41, align 8, !dbg !3895, !tbaa !818
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3895
  %44 = load i8*, i8** %43, align 8, !dbg !3895, !tbaa !818
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #10, !dbg !3896
  br label %146, !dbg !3897

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.95, i64 0, i64 0), i32 5) #10, !dbg !3898
  %48 = load i8*, i8** %4, align 8, !dbg !3898, !tbaa !818
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3898
  %50 = load i8*, i8** %49, align 8, !dbg !3898, !tbaa !818
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3898
  %52 = load i8*, i8** %51, align 8, !dbg !3898, !tbaa !818
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3898
  %54 = load i8*, i8** %53, align 8, !dbg !3898, !tbaa !818
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3898
  %56 = load i8*, i8** %55, align 8, !dbg !3898, !tbaa !818
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #10, !dbg !3899
  br label %146, !dbg !3900

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.96, i64 0, i64 0), i32 5) #10, !dbg !3901
  %60 = load i8*, i8** %4, align 8, !dbg !3901, !tbaa !818
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3901
  %62 = load i8*, i8** %61, align 8, !dbg !3901, !tbaa !818
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3901
  %64 = load i8*, i8** %63, align 8, !dbg !3901, !tbaa !818
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3901
  %66 = load i8*, i8** %65, align 8, !dbg !3901, !tbaa !818
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3901
  %68 = load i8*, i8** %67, align 8, !dbg !3901, !tbaa !818
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3901
  %70 = load i8*, i8** %69, align 8, !dbg !3901, !tbaa !818
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #10, !dbg !3902
  br label %146, !dbg !3903

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.97, i64 0, i64 0), i32 5) #10, !dbg !3904
  %74 = load i8*, i8** %4, align 8, !dbg !3904, !tbaa !818
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3904
  %76 = load i8*, i8** %75, align 8, !dbg !3904, !tbaa !818
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3904
  %78 = load i8*, i8** %77, align 8, !dbg !3904, !tbaa !818
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3904
  %80 = load i8*, i8** %79, align 8, !dbg !3904, !tbaa !818
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3904
  %82 = load i8*, i8** %81, align 8, !dbg !3904, !tbaa !818
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3904
  %84 = load i8*, i8** %83, align 8, !dbg !3904, !tbaa !818
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3904
  %86 = load i8*, i8** %85, align 8, !dbg !3904, !tbaa !818
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #10, !dbg !3905
  br label %146, !dbg !3906

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.98, i64 0, i64 0), i32 5) #10, !dbg !3907
  %90 = load i8*, i8** %4, align 8, !dbg !3907, !tbaa !818
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3907
  %92 = load i8*, i8** %91, align 8, !dbg !3907, !tbaa !818
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3907
  %94 = load i8*, i8** %93, align 8, !dbg !3907, !tbaa !818
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3907
  %96 = load i8*, i8** %95, align 8, !dbg !3907, !tbaa !818
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3907
  %98 = load i8*, i8** %97, align 8, !dbg !3907, !tbaa !818
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3907
  %100 = load i8*, i8** %99, align 8, !dbg !3907, !tbaa !818
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3907
  %102 = load i8*, i8** %101, align 8, !dbg !3907, !tbaa !818
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3907
  %104 = load i8*, i8** %103, align 8, !dbg !3907, !tbaa !818
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #10, !dbg !3908
  br label %146, !dbg !3909

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.99, i64 0, i64 0), i32 5) #10, !dbg !3910
  %108 = load i8*, i8** %4, align 8, !dbg !3910, !tbaa !818
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3910
  %110 = load i8*, i8** %109, align 8, !dbg !3910, !tbaa !818
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3910
  %112 = load i8*, i8** %111, align 8, !dbg !3910, !tbaa !818
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3910
  %114 = load i8*, i8** %113, align 8, !dbg !3910, !tbaa !818
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3910
  %116 = load i8*, i8** %115, align 8, !dbg !3910, !tbaa !818
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3910
  %118 = load i8*, i8** %117, align 8, !dbg !3910, !tbaa !818
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3910
  %120 = load i8*, i8** %119, align 8, !dbg !3910, !tbaa !818
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3910
  %122 = load i8*, i8** %121, align 8, !dbg !3910, !tbaa !818
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3910
  %124 = load i8*, i8** %123, align 8, !dbg !3910, !tbaa !818
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #10, !dbg !3911
  br label %146, !dbg !3912

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.100, i64 0, i64 0), i32 5) #10, !dbg !3913
  %128 = load i8*, i8** %4, align 8, !dbg !3913, !tbaa !818
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3913
  %130 = load i8*, i8** %129, align 8, !dbg !3913, !tbaa !818
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3913
  %132 = load i8*, i8** %131, align 8, !dbg !3913, !tbaa !818
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3913
  %134 = load i8*, i8** %133, align 8, !dbg !3913, !tbaa !818
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3913
  %136 = load i8*, i8** %135, align 8, !dbg !3913, !tbaa !818
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3913
  %138 = load i8*, i8** %137, align 8, !dbg !3913, !tbaa !818
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3913
  %140 = load i8*, i8** %139, align 8, !dbg !3913, !tbaa !818
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3913
  %142 = load i8*, i8** %141, align 8, !dbg !3913, !tbaa !818
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3913
  %144 = load i8*, i8** %143, align 8, !dbg !3913, !tbaa !818
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #10, !dbg !3914
  br label %146, !dbg !3915

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !3916
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !3917 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3921, metadata !810), !dbg !3927
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3922, metadata !810), !dbg !3928
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3923, metadata !810), !dbg !3929
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3924, metadata !810), !dbg !3930
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3925, metadata !810), !dbg !3931
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3926, metadata !810), !dbg !3932
  br label %6, !dbg !3933

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3926, metadata !810), !dbg !3932
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3935
  %9 = load i8*, i8** %8, align 8, !dbg !3935, !tbaa !818
  %10 = icmp eq i8* %9, null, !dbg !3938
  %11 = add i64 %7, 1, !dbg !3940
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !3926, metadata !810), !dbg !3932
  br i1 %10, label %12, label %6, !dbg !3938, !llvm.loop !3942

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3945
  ret void, !dbg !3946
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !3947 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3958, metadata !810), !dbg !3966
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3959, metadata !810), !dbg !3967
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3960, metadata !810), !dbg !3968
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3961, metadata !810), !dbg !3969
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !3962, metadata !810), !dbg !3970
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3971
  call void @llvm.lifetime.start(i64 80, i8* nonnull %7) #10, !dbg !3971
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3964, metadata !810), !dbg !3972
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3963, metadata !810), !dbg !3973
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3963, metadata !810), !dbg !3973
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %11 = load i32, i32* %8, align 8, !dbg !3974
  %12 = icmp ult i32 %11, 41, !dbg !3974
  br i1 %12, label %13, label %18, !dbg !3974

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !3978
  %15 = sext i32 %11 to i64, !dbg !3978
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3978
  %17 = add i32 %11, 8, !dbg !3978
  store i32 %17, i32* %8, align 8, !dbg !3978
  br label %21, !dbg !3978

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !3980
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3980
  store i8* %20, i8** %10, align 8, !dbg !3980
  br label %21, !dbg !3980

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ], !dbg !3974
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3982
  %25 = load i8*, i8** %24, align 8, !dbg !3982
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3984
  store i8* %25, i8** %26, align 16, !dbg !3985, !tbaa !818
  %27 = icmp eq i8* %25, null, !dbg !3986
  br i1 %27, label %30, label %28, !dbg !3987

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3963, metadata !810), !dbg !3973
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3963, metadata !810), !dbg !3973
  %29 = icmp ult i32 %22, 41, !dbg !3974
  br i1 %29, label %35, label %32, !dbg !3974

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3989
  call void @llvm.lifetime.end(i64 80, i8* nonnull %7) #10, !dbg !3990
  ret void, !dbg !3990

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !3980
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3980
  store i8* %34, i8** %10, align 8, !dbg !3980
  br label %40, !dbg !3980

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !3978
  %37 = sext i32 %22 to i64, !dbg !3978
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3978
  %39 = add i32 %22, 8, !dbg !3978
  store i32 %39, i32* %8, align 8, !dbg !3978
  br label %40, !dbg !3978

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ], !dbg !3974
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3982
  %44 = load i8*, i8** %43, align 8, !dbg !3982
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3984
  store i8* %44, i8** %45, align 8, !dbg !3985, !tbaa !818
  %46 = icmp eq i8* %44, null, !dbg !3986
  br i1 %46, label %30, label %47, !dbg !3987

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3963, metadata !810), !dbg !3973
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3963, metadata !810), !dbg !3973
  %48 = icmp ult i32 %41, 41, !dbg !3974
  br i1 %48, label %52, label %49, !dbg !3974

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !3980
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3980
  store i8* %51, i8** %10, align 8, !dbg !3980
  br label %57, !dbg !3980

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !3978
  %54 = sext i32 %41 to i64, !dbg !3978
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3978
  %56 = add i32 %41, 8, !dbg !3978
  store i32 %56, i32* %8, align 8, !dbg !3978
  br label %57, !dbg !3978

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ], !dbg !3974
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3982
  %61 = load i8*, i8** %60, align 8, !dbg !3982
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3984
  store i8* %61, i8** %62, align 16, !dbg !3985, !tbaa !818
  %63 = icmp eq i8* %61, null, !dbg !3986
  br i1 %63, label %30, label %64, !dbg !3987

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3963, metadata !810), !dbg !3973
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3963, metadata !810), !dbg !3973
  %65 = icmp ult i32 %58, 41, !dbg !3974
  br i1 %65, label %69, label %66, !dbg !3974

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !3980
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3980
  store i8* %68, i8** %10, align 8, !dbg !3980
  br label %74, !dbg !3980

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !3978
  %71 = sext i32 %58 to i64, !dbg !3978
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3978
  %73 = add i32 %58, 8, !dbg !3978
  store i32 %73, i32* %8, align 8, !dbg !3978
  br label %74, !dbg !3978

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ], !dbg !3974
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3982
  %78 = load i8*, i8** %77, align 8, !dbg !3982
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3984
  store i8* %78, i8** %79, align 8, !dbg !3985, !tbaa !818
  %80 = icmp eq i8* %78, null, !dbg !3986
  br i1 %80, label %30, label %81, !dbg !3987

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3963, metadata !810), !dbg !3973
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3963, metadata !810), !dbg !3973
  %82 = icmp ult i32 %75, 41, !dbg !3974
  br i1 %82, label %86, label %83, !dbg !3974

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !3980
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3980
  store i8* %85, i8** %10, align 8, !dbg !3980
  br label %91, !dbg !3980

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !3978
  %88 = sext i32 %75 to i64, !dbg !3978
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3978
  %90 = add i32 %75, 8, !dbg !3978
  store i32 %90, i32* %8, align 8, !dbg !3978
  br label %91, !dbg !3978

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ], !dbg !3974
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3982
  %95 = load i8*, i8** %94, align 8, !dbg !3982
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3984
  store i8* %95, i8** %96, align 16, !dbg !3985, !tbaa !818
  %97 = icmp eq i8* %95, null, !dbg !3986
  br i1 %97, label %30, label %98, !dbg !3987

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3963, metadata !810), !dbg !3973
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3963, metadata !810), !dbg !3973
  %99 = icmp ult i32 %92, 41, !dbg !3974
  br i1 %99, label %103, label %100, !dbg !3974

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !3980
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3980
  store i8* %102, i8** %10, align 8, !dbg !3980
  br label %108, !dbg !3980

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !3978
  %105 = sext i32 %92 to i64, !dbg !3978
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3978
  %107 = add i32 %92, 8, !dbg !3978
  store i32 %107, i32* %8, align 8, !dbg !3978
  br label %108, !dbg !3978

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3982
  %111 = load i8*, i8** %110, align 8, !dbg !3982
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3984
  store i8* %111, i8** %112, align 8, !dbg !3985, !tbaa !818
  %113 = icmp eq i8* %111, null, !dbg !3986
  br i1 %113, label %30, label %114, !dbg !3987

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3963, metadata !810), !dbg !3973
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3963, metadata !810), !dbg !3973
  %115 = load i8*, i8** %10, align 8, !dbg !3980
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3980
  store i8* %116, i8** %10, align 8, !dbg !3980
  %117 = bitcast i8* %115 to i8**, !dbg !3982
  %118 = load i8*, i8** %117, align 8, !dbg !3982
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3984
  store i8* %118, i8** %119, align 16, !dbg !3985, !tbaa !818
  %120 = icmp eq i8* %118, null, !dbg !3986
  br i1 %120, label %30, label %121, !dbg !3987

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3963, metadata !810), !dbg !3973
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3963, metadata !810), !dbg !3973
  %122 = load i8*, i8** %10, align 8, !dbg !3980
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3980
  store i8* %123, i8** %10, align 8, !dbg !3980
  %124 = bitcast i8* %122 to i8**, !dbg !3982
  %125 = load i8*, i8** %124, align 8, !dbg !3982
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3984
  store i8* %125, i8** %126, align 8, !dbg !3985, !tbaa !818
  %127 = icmp eq i8* %125, null, !dbg !3986
  br i1 %127, label %30, label %128, !dbg !3987

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3963, metadata !810), !dbg !3973
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3963, metadata !810), !dbg !3973
  %129 = load i8*, i8** %10, align 8, !dbg !3980
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3980
  store i8* %130, i8** %10, align 8, !dbg !3980
  %131 = bitcast i8* %129 to i8**, !dbg !3982
  %132 = load i8*, i8** %131, align 8, !dbg !3982
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3984
  store i8* %132, i8** %133, align 16, !dbg !3985, !tbaa !818
  %134 = icmp eq i8* %132, null, !dbg !3986
  br i1 %134, label %30, label %135, !dbg !3987

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3963, metadata !810), !dbg !3973
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3963, metadata !810), !dbg !3973
  %136 = load i8*, i8** %10, align 8, !dbg !3980
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3980
  store i8* %137, i8** %10, align 8, !dbg !3980
  %138 = bitcast i8* %136 to i8**, !dbg !3982
  %139 = load i8*, i8** %138, align 8, !dbg !3982
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3984
  store i8* %139, i8** %140, align 8, !dbg !3985, !tbaa !818
  %141 = icmp eq i8* %139, null, !dbg !3986
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3963, metadata !810), !dbg !3973
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3963, metadata !810), !dbg !3973
  %142 = select i1 %141, i64 9, i64 10, !dbg !3987
  br label %30, !dbg !3987
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !3991 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3995, metadata !810), !dbg !4004
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3996, metadata !810), !dbg !4005
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3997, metadata !810), !dbg !4006
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3998, metadata !810), !dbg !4007
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !4008
  call void @llvm.lifetime.start(i64 24, i8* nonnull %6) #10, !dbg !4008
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3999, metadata !810), !dbg !4009
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !4010
  call void @llvm.va_start(i8* nonnull %6), !dbg !4010
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !4011
  call void @llvm.va_end(i8* nonnull %6), !dbg !4012
  call void @llvm.lifetime.end(i64 24, i8* nonnull %6) #10, !dbg !4013
  ret void, !dbg !4013
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #10

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !4014 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.103, i64 0, i64 0), i32 5) #10, !dbg !4015
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.104, i64 0, i64 0)) #10, !dbg !4016
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.105, i64 0, i64 0), i32 5) #10, !dbg !4018
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.106, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.107, i64 0, i64 0)) #10, !dbg !4019
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19.108, i64 0, i64 0), i32 5) #10, !dbg !4020
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !4020, !tbaa !818
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #10, !dbg !4021
  ret void, !dbg !4022
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #12 !dbg !4023 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4027, metadata !810), !dbg !4029
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4028, metadata !810), !dbg !4030
  %3 = udiv i64 9223372036854775807, %1, !dbg !4031
  %4 = icmp ult i64 %3, %0, !dbg !4031
  br i1 %4, label %5, label %6, !dbg !4033

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !4034
  unreachable, !dbg !4034

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4035
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !4036, metadata !810) #10, !dbg !4043
  %8 = tail call noalias i8* @malloc(i64 %7) #10, !dbg !4045
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !4042, metadata !810) #10, !dbg !4046
  %9 = icmp eq i8* %8, null, !dbg !4047
  %10 = icmp ne i64 %7, 0, !dbg !4049
  %11 = and i1 %10, %9, !dbg !4051
  br i1 %11, label %12, label %13, !dbg !4051

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #14, !dbg !4052
  unreachable, !dbg !4052

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !4053
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !4037 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4036, metadata !810), !dbg !4054
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !4055
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4042, metadata !810), !dbg !4056
  %3 = icmp eq i8* %2, null, !dbg !4057
  %4 = icmp ne i64 %0, 0, !dbg !4058
  %5 = and i1 %4, %3, !dbg !4059
  br i1 %5, label %6, label %7, !dbg !4059

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !4060
  unreachable, !dbg !4060

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !4061
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #12 !dbg !4062 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4066, metadata !810), !dbg !4069
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4067, metadata !810), !dbg !4070
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4068, metadata !810), !dbg !4071
  %4 = udiv i64 9223372036854775807, %2, !dbg !4072
  %5 = icmp ult i64 %4, %1, !dbg !4072
  br i1 %5, label %6, label %7, !dbg !4074

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #14, !dbg !4075
  unreachable, !dbg !4075

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !4076
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4077, metadata !810) #10, !dbg !4083
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !4082, metadata !810) #10, !dbg !4085
  %9 = icmp eq i64 %8, 0, !dbg !4086
  %10 = icmp ne i8* %0, null, !dbg !4088
  %11 = and i1 %10, %9, !dbg !4090
  br i1 %11, label %12, label %13, !dbg !4090

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #10, !dbg !4091
  br label %19, !dbg !4093

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #10, !dbg !4094
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !4077, metadata !810) #10, !dbg !4083
  %15 = icmp eq i8* %14, null, !dbg !4095
  %16 = icmp ne i64 %8, 0, !dbg !4097
  %17 = and i1 %16, %15, !dbg !4099
  br i1 %17, label %18, label %19, !dbg !4099

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !4100
  unreachable, !dbg !4100

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !4101
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !4078 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4077, metadata !810), !dbg !4102
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4082, metadata !810), !dbg !4103
  %3 = icmp eq i64 %1, 0, !dbg !4104
  %4 = icmp ne i8* %0, null, !dbg !4105
  %5 = and i1 %4, %3, !dbg !4106
  br i1 %5, label %6, label %7, !dbg !4106

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #10, !dbg !4107
  br label %13, !dbg !4108

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #10, !dbg !4109
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !4077, metadata !810), !dbg !4102
  %9 = icmp eq i8* %8, null, !dbg !4110
  %10 = icmp ne i64 %1, 0, !dbg !4111
  %11 = and i1 %10, %9, !dbg !4112
  br i1 %11, label %12, label %13, !dbg !4112

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #14, !dbg !4113
  unreachable, !dbg !4113

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !4114
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #12 !dbg !765 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !770, metadata !810), !dbg !4115
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !771, metadata !810), !dbg !4116
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !772, metadata !810), !dbg !4117
  %4 = load i64, i64* %1, align 8, !dbg !4118, !tbaa !883
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !773, metadata !810), !dbg !4119
  %5 = icmp eq i8* %0, null, !dbg !4120
  br i1 %5, label %6, label %13, !dbg !4122

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4123
  br i1 %7, label %8, label %17, !dbg !4126

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4127
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !773, metadata !810), !dbg !4119
  %10 = icmp ugt i64 %2, 128, !dbg !4129
  %11 = zext i1 %10 to i64, !dbg !4129
  %12 = add nuw nsw i64 %9, %11, !dbg !4130
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !773, metadata !810), !dbg !4119
  br label %17, !dbg !4131

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !4132
  %15 = icmp ugt i64 %14, %4, !dbg !4135
  br i1 %15, label %20, label %16, !dbg !4136

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !4137
  unreachable, !dbg !4137

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !773, metadata !810), !dbg !4119
  store i64 %18, i64* %1, align 8, !dbg !4138, !tbaa !883
  %19 = mul i64 %18, %2, !dbg !4139
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4077, metadata !810) #10, !dbg !4140
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !4082, metadata !810) #10, !dbg !4142
  br label %27, !dbg !4143

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !4144
  %22 = add i64 %4, 1, !dbg !4145
  %23 = add i64 %22, %21, !dbg !4146
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !773, metadata !810), !dbg !4119
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !773, metadata !810), !dbg !4119
  store i64 %23, i64* %1, align 8, !dbg !4138, !tbaa !883
  %24 = mul i64 %23, %2, !dbg !4139
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4077, metadata !810) #10, !dbg !4140
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !4082, metadata !810) #10, !dbg !4142
  %25 = icmp eq i64 %24, 0, !dbg !4147
  br i1 %25, label %26, label %27, !dbg !4143

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #10, !dbg !4148
  br label %34, !dbg !4149

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #10, !dbg !4150
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !4077, metadata !810) #10, !dbg !4140
  %30 = icmp eq i8* %29, null, !dbg !4151
  %31 = icmp ne i64 %28, 0, !dbg !4152
  %32 = and i1 %31, %30, !dbg !4153
  br i1 %32, label %33, label %34, !dbg !4153

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #14, !dbg !4154
  unreachable, !dbg !4154

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !4155
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #12 !dbg !4156 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4158, metadata !810), !dbg !4159
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4036, metadata !810) #10, !dbg !4160
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !4162
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4042, metadata !810) #10, !dbg !4163
  %3 = icmp eq i8* %2, null, !dbg !4164
  %4 = icmp ne i64 %0, 0, !dbg !4165
  %5 = and i1 %4, %3, !dbg !4166
  br i1 %5, label %6, label %7, !dbg !4166

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !4167
  unreachable, !dbg !4167

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !4168
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !4169 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4173, metadata !810), !dbg !4175
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !4174, metadata !810), !dbg !4176
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !770, metadata !810) #10, !dbg !4177
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !771, metadata !810) #10, !dbg !4179
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !772, metadata !810) #10, !dbg !4180
  %3 = load i64, i64* %1, align 8, !dbg !4181, !tbaa !883
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !773, metadata !810) #10, !dbg !4182
  %4 = icmp eq i8* %0, null, !dbg !4183
  br i1 %4, label %5, label %8, !dbg !4184

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4185
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !773, metadata !810) #10, !dbg !4182
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !773, metadata !810) #10, !dbg !4182
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4186
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !773, metadata !810) #10, !dbg !4182
  store i64 %7, i64* %1, align 8, !dbg !4187, !tbaa !883
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4077, metadata !810) #10, !dbg !4188
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4082, metadata !810) #10, !dbg !4190
  br label %17, !dbg !4191

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !4192
  br i1 %9, label %11, label %10, !dbg !4193

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #14, !dbg !4194
  unreachable, !dbg !4194

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !4195
  %13 = add i64 %3, 1, !dbg !4196
  %14 = add i64 %13, %12, !dbg !4197
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !773, metadata !810) #10, !dbg !4182
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !773, metadata !810) #10, !dbg !4182
  store i64 %14, i64* %1, align 8, !dbg !4187, !tbaa !883
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4077, metadata !810) #10, !dbg !4188
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4082, metadata !810) #10, !dbg !4190
  %15 = icmp eq i64 %14, 0, !dbg !4198
  br i1 %15, label %16, label %17, !dbg !4191

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #10, !dbg !4199
  br label %24, !dbg !4200

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #10, !dbg !4201
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !4077, metadata !810) #10, !dbg !4188
  %20 = icmp eq i8* %19, null, !dbg !4202
  %21 = icmp ne i64 %18, 0, !dbg !4203
  %22 = and i1 %21, %20, !dbg !4204
  br i1 %22, label %23, label %24, !dbg !4204

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #14, !dbg !4205
  unreachable, !dbg !4205

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !4206
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !4207 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4209, metadata !810), !dbg !4210
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4036, metadata !810) #10, !dbg !4211
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !4213
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4042, metadata !810) #10, !dbg !4214
  %3 = icmp eq i8* %2, null, !dbg !4215
  %4 = icmp ne i64 %0, 0, !dbg !4216
  %5 = and i1 %4, %3, !dbg !4217
  br i1 %5, label %6, label %7, !dbg !4217

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !4218
  unreachable, !dbg !4218

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !4219
  ret i8* %2, !dbg !4220
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !4221 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4223, metadata !810), !dbg !4226
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4224, metadata !810), !dbg !4227
  %3 = udiv i64 9223372036854775807, %1, !dbg !4228
  %4 = icmp ult i64 %3, %0, !dbg !4228
  br i1 %4, label %8, label %5, !dbg !4230

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #10, !dbg !4231
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !4225, metadata !810), !dbg !4233
  %7 = icmp eq i8* %6, null, !dbg !4234
  br i1 %7, label %8, label %9, !dbg !4235

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #14, !dbg !4237
  unreachable, !dbg !4237

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !4238
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !4239 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4243, metadata !810), !dbg !4245
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4244, metadata !810), !dbg !4246
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4036, metadata !810) #10, !dbg !4247
  %3 = tail call noalias i8* @malloc(i64 %1) #10, !dbg !4249
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4042, metadata !810) #10, !dbg !4250
  %4 = icmp eq i8* %3, null, !dbg !4251
  %5 = icmp ne i64 %1, 0, !dbg !4252
  %6 = and i1 %5, %4, !dbg !4253
  br i1 %6, label %7, label %8, !dbg !4253

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !4254
  unreachable, !dbg !4254

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !4255
  ret i8* %3, !dbg !4256
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !4257 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4259, metadata !810), !dbg !4260
  %2 = tail call i64 @strlen(i8* %0) #13, !dbg !4261
  %3 = add i64 %2, 1, !dbg !4262
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4243, metadata !810) #10, !dbg !4263
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4244, metadata !810) #10, !dbg !4266
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4036, metadata !810) #10, !dbg !4267
  %4 = tail call noalias i8* @malloc(i64 %3) #10, !dbg !4269
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !4042, metadata !810) #10, !dbg !4270
  %5 = icmp eq i8* %4, null, !dbg !4271
  %6 = icmp ne i64 %3, 0, !dbg !4272
  %7 = and i1 %6, %5, !dbg !4273
  br i1 %7, label %8, label %9, !dbg !4273

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !4274
  unreachable, !dbg !4274

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #10, !dbg !4275
  ret i8* %4, !dbg !4276
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !4277 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !4279, !tbaa !970
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.119, i64 0, i64 0), i32 5) #10, !dbg !4280
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.120, i64 0, i64 0), i8* %2) #10, !dbg !4281
  tail call void @abort() #14, !dbg !4283
  unreachable, !dbg !4283
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !4284 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4287, metadata !810), !dbg !4293
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4288, metadata !810), !dbg !4294
  %3 = icmp eq i64 %0, 0, !dbg !4295
  %4 = icmp eq i64 %1, 0, !dbg !4296
  %5 = or i1 %3, %4, !dbg !4298
  br i1 %5, label %12, label %6, !dbg !4298

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4299
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !4290, metadata !810), !dbg !4300
  %8 = udiv i64 %7, %1, !dbg !4301
  %9 = icmp eq i64 %8, %0, !dbg !4303
  br i1 %9, label %12, label %10, !dbg !4304

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #1, !dbg !4305
  store i32 12, i32* %11, align 4, !dbg !4307, !tbaa !970
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4287, metadata !810), !dbg !4293
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !4288, metadata !810), !dbg !4294
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #10, !dbg !4308
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !4289, metadata !810), !dbg !4309
  br label %16, !dbg !4310

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !4311
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !4312 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4357, metadata !810), !dbg !4363
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4358, metadata !810), !dbg !4364
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4359, metadata !810), !dbg !4365
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4366
  %5 = load i8*, i8** %4, align 8, !dbg !4366, !tbaa !4367
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4369
  %7 = load i8*, i8** %6, align 8, !dbg !4369, !tbaa !4370
  %8 = icmp eq i8* %5, %7, !dbg !4371
  br i1 %8, label %9, label %28, !dbg !4372

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4373
  %11 = load i8*, i8** %10, align 8, !dbg !4373, !tbaa !4375
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4376
  %13 = load i8*, i8** %12, align 8, !dbg !4376, !tbaa !4377
  %14 = icmp eq i8* %11, %13, !dbg !4378
  br i1 %14, label %15, label %28, !dbg !4379

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4380
  %17 = load i8*, i8** %16, align 8, !dbg !4380, !tbaa !4381
  %18 = icmp eq i8* %17, null, !dbg !4382
  br i1 %18, label %19, label %28, !dbg !4383

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !4385
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #10, !dbg !4386
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !4360, metadata !810), !dbg !4388
  %22 = icmp eq i64 %21, -1, !dbg !4389
  br i1 %22, label %30, label %23, !dbg !4391

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4392
  %25 = load i32, i32* %24, align 8, !dbg !4393, !tbaa !4394
  %26 = and i32 %25, -17, !dbg !4393
  store i32 %26, i32* %24, align 8, !dbg !4393, !tbaa !4394
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4395
  store i64 %21, i64* %27, align 8, !dbg !4396, !tbaa !4397
  br label %30, !dbg !4398

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4399
  br label %30, !dbg !4400

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !4401
}

; Function Attrs: nounwind
declare i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !4402 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !4419, metadata !810), !dbg !4428
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4420, metadata !810), !dbg !4429
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4421, metadata !810), !dbg !4430
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !4422, metadata !810), !dbg !4431
  %6 = bitcast i32* %5 to i8*, !dbg !4432
  call void @llvm.lifetime.start(i64 4, i8* nonnull %6) #10, !dbg !4432
  %7 = icmp eq i32* %0, null, !dbg !4433
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !4419, metadata !810), !dbg !4428
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !4435
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !4419, metadata !810), !dbg !4428
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #10, !dbg !4436
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !4423, metadata !810), !dbg !4437
  %10 = icmp ugt i64 %9, -3, !dbg !4438
  %11 = icmp ne i64 %2, 0, !dbg !4439
  %12 = and i1 %11, %10, !dbg !4441
  br i1 %12, label %13, label %18, !dbg !4441

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #10, !dbg !4442
  br i1 %14, label %18, label %15, !dbg !4444

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4446, !tbaa !908
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !4425, metadata !810), !dbg !4447
  %17 = zext i8 %16 to i32, !dbg !4448
  store i32 %17, i32* %8, align 4, !dbg !4449, !tbaa !970
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end(i64 4, i8* nonnull %6) #10, !dbg !4450
  ret i64 %19, !dbg !4450
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !4451 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4496, metadata !810), !dbg !4501
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #10, !dbg !4502
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4503, metadata !810), !dbg !4507
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4509
  %4 = load i32, i32* %3, align 8, !dbg !4509, !tbaa !4394
  %5 = and i32 %4, 32, !dbg !4509
  %6 = icmp eq i32 %5, 0, !dbg !4510
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #10, !dbg !4511
  %8 = icmp ne i32 %7, 0, !dbg !4512
  br i1 %6, label %9, label %19, !dbg !4513

; <label>:9:                                      ; preds = %1
  %10 = xor i1 %8, true, !dbg !4515
  %11 = icmp ne i64 %2, 0, !dbg !4515
  %12 = or i1 %11, %10, !dbg !4515
  %13 = sext i1 %8 to i32, !dbg !4515
  br i1 %12, label %22, label %14, !dbg !4515

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #1, !dbg !4517
  %16 = load i32, i32* %15, align 4, !dbg !4517, !tbaa !970
  %17 = icmp ne i32 %16, 9, !dbg !4519
  %18 = sext i1 %17 to i32, !dbg !4519
  br label %22, !dbg !4519

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !4521

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #1, !dbg !4523
  store i32 0, i32* %21, align 4, !dbg !4525, !tbaa !970
  br label %22, !dbg !4523

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !4526
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind readonly sspstrong uwtable
define i8* @last_component(i8* readonly) local_unnamed_addr #11 !dbg !4527 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4530, metadata !810), !dbg !4534
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4531, metadata !810), !dbg !4535
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4533, metadata !810), !dbg !4536
  br label %2, !dbg !4537

; <label>:2:                                      ; preds = %2, %1
  %3 = phi i8* [ %0, %1 ], [ %6, %2 ]
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4531, metadata !810), !dbg !4535
  %4 = load i8, i8* %3, align 1, !dbg !4538, !tbaa !908
  %5 = icmp eq i8 %4, 47, !dbg !4538
  %6 = getelementptr inbounds i8, i8* %3, i64 1, !dbg !4540
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !4531, metadata !810), !dbg !4535
  br i1 %5, label %2, label %7, !dbg !4541, !llvm.loop !4542

; <label>:7:                                      ; preds = %2
  br label %8, !dbg !4536

; <label>:8:                                      ; preds = %7, %18
  %9 = phi i8 [ %22, %18 ], [ %4, %7 ], !dbg !4543
  %10 = phi i8* [ %19, %18 ], [ %3, %7 ]
  %11 = phi i8* [ %21, %18 ], [ %3, %7 ]
  %12 = phi i8 [ %20, %18 ], [ 0, %7 ]
  tail call void @llvm.dbg.value(metadata i8 %12, i64 0, metadata !4533, metadata !810), !dbg !4536
  tail call void @llvm.dbg.value(metadata i8* %11, i64 0, metadata !4532, metadata !810), !dbg !4547
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !4531, metadata !810), !dbg !4535
  switch i8 %9, label %13 [
    i8 0, label %23
    i8 47, label %18
  ], !dbg !4548

; <label>:13:                                     ; preds = %8
  %14 = and i8 %12, 1, !dbg !4550
  %15 = icmp eq i8 %14, 0, !dbg !4550
  tail call void @llvm.dbg.value(metadata i8* %11, i64 0, metadata !4531, metadata !810), !dbg !4535
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4533, metadata !810), !dbg !4536
  %16 = select i1 %15, i8* %10, i8* %11, !dbg !4554
  %17 = select i1 %15, i8 %12, i8 0, !dbg !4554
  br label %18, !dbg !4554

; <label>:18:                                     ; preds = %13, %8
  %19 = phi i8* [ %10, %8 ], [ %16, %13 ]
  %20 = phi i8 [ 1, %8 ], [ %17, %13 ]
  tail call void @llvm.dbg.value(metadata i8 %20, i64 0, metadata !4533, metadata !810), !dbg !4536
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !4531, metadata !810), !dbg !4535
  %21 = getelementptr inbounds i8, i8* %11, i64 1, !dbg !4555
  tail call void @llvm.dbg.value(metadata i8* %21, i64 0, metadata !4532, metadata !810), !dbg !4547
  %22 = load i8, i8* %21, align 1, !tbaa !908
  br label %8, !dbg !4557, !llvm.loop !4558

; <label>:23:                                     ; preds = %8
  ret i8* %10, !dbg !4561
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i64 @base_len(i8* nocapture readonly) local_unnamed_addr #11 !dbg !4562 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4566, metadata !810), !dbg !4569
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4568, metadata !810), !dbg !4570
  %2 = tail call i64 @strlen(i8* %0) #13, !dbg !4571
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4567, metadata !810), !dbg !4573
  br label %3, !dbg !4574

; <label>:3:                                      ; preds = %6, %1
  %4 = phi i64 [ %2, %1 ], [ %7, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !4567, metadata !810), !dbg !4573
  %5 = icmp ugt i64 %4, 1, !dbg !4575
  br i1 %5, label %6, label %11, !dbg !4578

; <label>:6:                                      ; preds = %3
  %7 = add i64 %4, -1, !dbg !4579
  %8 = getelementptr inbounds i8, i8* %0, i64 %7, !dbg !4579
  %9 = load i8, i8* %8, align 1, !dbg !4579, !tbaa !908
  %10 = icmp eq i8 %9, 47, !dbg !4579
  br i1 %10, label %3, label %11, !dbg !4581, !llvm.loop !4583

; <label>:11:                                     ; preds = %3, %6
  ret i64 %4, !dbg !4586
}

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !4587 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4592, metadata !810), !dbg !4612
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !4593, metadata !810), !dbg !4613
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #10, !dbg !4614
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4594, metadata !810), !dbg !4615
  %3 = icmp eq i8* %2, null, !dbg !4616
  br i1 %3, label %15, label %4, !dbg !4617

; <label>:4:                                      ; preds = %1
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4602, metadata !810), !dbg !4618
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4603, metadata !810), !dbg !4619
  %5 = load i8, i8* %2, align 1, !dbg !4620, !tbaa !908
  %6 = icmp eq i8 %5, 67, !dbg !4622
  br i1 %6, label %7, label %11, !dbg !4625

; <label>:7:                                      ; preds = %4
  %8 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !4627
  %9 = load i8, i8* %8, align 1, !dbg !4627, !tbaa !908
  %10 = icmp eq i8 %9, 0, !dbg !4630
  br i1 %10, label %14, label %11, !dbg !4632

; <label>:11:                                     ; preds = %4, %7
  tail call void @llvm.dbg.value(metadata i64 5, i64 0, metadata !4608, metadata !810), !dbg !4634
  %12 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.135, i64 0, i64 0)) #10, !dbg !4635
  %13 = icmp eq i32 %12, 0, !dbg !4637
  br i1 %13, label %14, label %15, !dbg !4639

; <label>:14:                                     ; preds = %11, %7
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !4593, metadata !810), !dbg !4613
  br label %15, !dbg !4641

; <label>:15:                                     ; preds = %1, %11, %14
  %16 = phi i1 [ false, %14 ], [ true, %11 ], [ true, %1 ]
  ret i1 %16, !dbg !4642
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !4643 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !4655, metadata !810), !dbg !4729
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !4722, metadata !810), !dbg !4731
  %3 = tail call i8* @nl_langinfo(i32 14) #10, !dbg !4732
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4647, metadata !810), !dbg !4733
  %4 = icmp eq i8* %3, null, !dbg !4734
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.138, i64 0, i64 0), i8* %3, !dbg !4736
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !4647, metadata !810), !dbg !4733
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !4737, !tbaa !818
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !4669, metadata !810) #10, !dbg !4738
  %7 = icmp eq i8* %6, null, !dbg !4739
  br i1 %7, label %8, label %127, !dbg !4740

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.139, i64 0, i64 0)) #10, !dbg !4741
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !4670, metadata !810) #10, !dbg !4742
  %10 = icmp eq i8* %9, null, !dbg !4743
  br i1 %10, label %14, label %11, !dbg !4745

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !4746, !tbaa !908
  %13 = icmp eq i8 %12, 0, !dbg !4748
  br i1 %13, label %14, label %15, !dbg !4749

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !4751

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.140, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !4670, metadata !810) #10, !dbg !4742
  %17 = tail call i64 @strlen(i8* nonnull %16) #13, !dbg !4752
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !4673, metadata !810) #10, !dbg !4753
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !4675, metadata !810) #10, !dbg !4754
  %18 = icmp eq i64 %17, 0, !dbg !4755
  br i1 %18, label %24, label %19, !dbg !4756

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !4757
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !4757
  %22 = load i8, i8* %21, align 1, !dbg !4757, !tbaa !908
  %23 = icmp ne i8 %22, 47, !dbg !4759
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !4760
  %27 = add i64 %17, 14, !dbg !4761
  %28 = add i64 %27, %26, !dbg !4762
  %29 = tail call noalias i8* @malloc(i64 %28) #10, !dbg !4763
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !4672, metadata !810) #10, !dbg !4764
  %30 = icmp eq i8* %29, null, !dbg !4765
  br i1 %30, label %125, label %31, !dbg !4765

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #10, !dbg !4766
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !4769

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !4770, !tbaa !908
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !4772
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.141, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !4773
  br label %37, !dbg !4774

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !4772
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.141, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !4773
  br label %37, !dbg !4774

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #10, !dbg !4775
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !4677, metadata !810) #10, !dbg !4776
  %39 = icmp slt i32 %38, 0, !dbg !4777
  br i1 %39, label %123, label %40, !dbg !4778

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.142, i64 0, i64 0)) #10, !dbg !4779
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4678, metadata !810) #10, !dbg !4780
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !4781
  br i1 %42, label %48, label %43, !dbg !4782

; <label>:43:                                     ; preds = %40
  %44 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %45 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %46 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %47 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !4783

; <label>:48:                                     ; preds = %40
  %49 = tail call i32 @close(i32 %38) #10, !dbg !4784
  br label %123, !dbg !4786

; <label>:50:                                     ; preds = %111, %43
  %51 = phi i64 [ %112, %111 ], [ 0, %43 ]
  %52 = phi i8* [ %113, %111 ], [ null, %43 ]
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !4719, metadata !810) #10, !dbg !4783
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !4720, metadata !810) #10, !dbg !4787
  call void @llvm.lifetime.start(i64 51, i8* nonnull %44) #10, !dbg !4788
  call void @llvm.lifetime.start(i64 51, i8* nonnull %45) #10, !dbg !4789
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4790, metadata !810) #10, !dbg !4795
  %53 = load i8*, i8** %46, align 8, !dbg !4797, !tbaa !4370
  %54 = load i8*, i8** %47, align 8, !dbg !4797, !tbaa !4367
  %55 = icmp ult i8* %53, %54, !dbg !4797
  br i1 %55, label %58, label %56, !dbg !4797, !prof !4798

; <label>:56:                                     ; preds = %50
  %57 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !4799
  br label %62, !dbg !4799

; <label>:58:                                     ; preds = %50
  %59 = getelementptr inbounds i8, i8* %53, i64 1, !dbg !4801
  store i8* %59, i8** %46, align 8, !dbg !4801, !tbaa !4370
  %60 = load i8, i8* %53, align 1, !dbg !4801, !tbaa !908
  %61 = zext i8 %60 to i32, !dbg !4801
  br label %62, !dbg !4801

; <label>:62:                                     ; preds = %58, %56
  %63 = phi i32 [ %57, %56 ], [ %61, %58 ], !dbg !4803
  call void @llvm.dbg.value(metadata i32 %63, i64 0, metadata !4721, metadata !810) #10, !dbg !4805
  switch i32 %63, label %77 [
    i32 -1, label %115
    i32 32, label %111
    i32 10, label %111
    i32 9, label %111
    i32 35, label %64
  ], !dbg !4806

; <label>:64:                                     ; preds = %62
  br label %65, !dbg !4807

; <label>:65:                                     ; preds = %64, %75
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !4790, metadata !810) #10, !dbg !4807
  %66 = load i8*, i8** %46, align 8, !dbg !4811, !tbaa !4370
  %67 = load i8*, i8** %47, align 8, !dbg !4811, !tbaa !4367
  %68 = icmp ult i8* %66, %67, !dbg !4811
  br i1 %68, label %71, label %69, !dbg !4811, !prof !4798

; <label>:69:                                     ; preds = %65
  %70 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !4812
  br label %75, !dbg !4812

; <label>:71:                                     ; preds = %65
  %72 = getelementptr inbounds i8, i8* %66, i64 1, !dbg !4813
  store i8* %72, i8** %46, align 8, !dbg !4813, !tbaa !4370
  %73 = load i8, i8* %66, align 1, !dbg !4813, !tbaa !908
  %74 = zext i8 %73 to i32, !dbg !4813
  br label %75, !dbg !4813

; <label>:75:                                     ; preds = %71, %69
  %76 = phi i32 [ %70, %69 ], [ %74, %71 ], !dbg !4814
  call void @llvm.dbg.value(metadata i32 %76, i64 0, metadata !4721, metadata !810) #10, !dbg !4805
  switch i32 %76, label %65 [
    i32 -1, label %114
    i32 10, label %110
  ], !dbg !4815, !llvm.loop !4817

; <label>:77:                                     ; preds = %62
  %78 = call i32 @ungetc(i32 %63, %struct._IO_FILE* nonnull %41) #10, !dbg !4820
  %79 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.143, i64 0, i64 0), i8* nonnull %44, i8* nonnull %45) #10, !dbg !4821
  %80 = icmp slt i32 %79, 2, !dbg !4823
  br i1 %80, label %115, label %81, !dbg !4824

; <label>:81:                                     ; preds = %77
  %82 = call i64 @strlen(i8* nonnull %44) #13, !dbg !4825
  call void @llvm.dbg.value(metadata i64 %82, i64 0, metadata !4726, metadata !810) #10, !dbg !4826
  %83 = call i64 @strlen(i8* nonnull %45) #13, !dbg !4827
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !4727, metadata !810) #10, !dbg !4828
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !4728, metadata !810) #10, !dbg !4829
  %84 = icmp eq i64 %51, 0, !dbg !4830
  %85 = add i64 %82, 1
  %86 = add i64 %85, %83
  %87 = add i64 %86, 1
  br i1 %84, label %88, label %91, !dbg !4832

; <label>:88:                                     ; preds = %81
  call void @llvm.dbg.value(metadata i64 %87, i64 0, metadata !4720, metadata !810) #10, !dbg !4787
  %89 = add i64 %86, 2, !dbg !4833
  %90 = call noalias i8* @malloc(i64 %89) #10, !dbg !4835
  call void @llvm.dbg.value(metadata i8* %90, i64 0, metadata !4719, metadata !810) #10, !dbg !4783
  br label %95, !dbg !4836

; <label>:91:                                     ; preds = %81
  %92 = add i64 %87, %51, !dbg !4837
  call void @llvm.dbg.value(metadata i64 %92, i64 0, metadata !4720, metadata !810) #10, !dbg !4787
  %93 = add i64 %92, 1, !dbg !4839
  %94 = call i8* @realloc(i8* %52, i64 %93) #10, !dbg !4840
  call void @llvm.dbg.value(metadata i8* %94, i64 0, metadata !4719, metadata !810) #10, !dbg !4783
  br label %95

; <label>:95:                                     ; preds = %91, %88
  %96 = phi i64 [ %87, %88 ], [ %92, %91 ]
  %97 = phi i8* [ %90, %88 ], [ %94, %91 ]
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !4719, metadata !810) #10, !dbg !4783
  call void @llvm.dbg.value(metadata i64 %96, i64 0, metadata !4720, metadata !810) #10, !dbg !4787
  %98 = icmp eq i8* %97, null, !dbg !4841
  br i1 %98, label %99, label %100, !dbg !4843

; <label>:99:                                     ; preds = %95
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4720, metadata !810) #10, !dbg !4787
  call void @free(i8* %52) #10, !dbg !4844
  br label %116, !dbg !4846

; <label>:100:                                    ; preds = %95
  %101 = getelementptr inbounds i8, i8* %97, i64 %96, !dbg !4847
  %102 = xor i64 %83, -1, !dbg !4848
  %103 = getelementptr inbounds i8, i8* %101, i64 %102, !dbg !4848
  %104 = xor i64 %82, -1, !dbg !4849
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !4849
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !4850, metadata !810) #10, !dbg !4858
  call void @llvm.dbg.value(metadata i8* %44, i64 0, metadata !4857, metadata !810) #10, !dbg !4858
  %106 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false) #10, !dbg !4860
  %107 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %44, i64 %106) #10, !dbg !4861
  call void @llvm.dbg.value(metadata i8* %103, i64 0, metadata !4850, metadata !810) #10, !dbg !4862
  call void @llvm.dbg.value(metadata i8* %45, i64 0, metadata !4857, metadata !810) #10, !dbg !4862
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %103, i1 false) #10, !dbg !4864
  %109 = call i8* @__strcpy_chk(i8* nonnull %103, i8* nonnull %45, i64 %108) #10, !dbg !4865
  br label %111, !dbg !4866

; <label>:110:                                    ; preds = %75
  br label %111, !dbg !4783

; <label>:111:                                    ; preds = %110, %100, %62, %62, %62
  %112 = phi i64 [ %96, %100 ], [ %51, %62 ], [ %51, %62 ], [ %51, %62 ], [ %51, %110 ]
  %113 = phi i8* [ %97, %100 ], [ %52, %62 ], [ %52, %62 ], [ %52, %62 ], [ %52, %110 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !4719, metadata !810) #10, !dbg !4783
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !4720, metadata !810) #10, !dbg !4787
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #10, !dbg !4866
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #10, !dbg !4866
  br label %50

; <label>:114:                                    ; preds = %75
  br label %116, !dbg !4783

; <label>:115:                                    ; preds = %62, %77
  br label %116, !dbg !4783

; <label>:116:                                    ; preds = %115, %114, %99
  %117 = phi i64 [ 0, %99 ], [ %51, %114 ], [ %51, %115 ]
  %118 = phi i8* [ null, %99 ], [ %52, %114 ], [ %52, %115 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !4719, metadata !810) #10, !dbg !4783
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !4720, metadata !810) #10, !dbg !4787
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #10, !dbg !4866
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #10, !dbg !4866
  %119 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #10, !dbg !4867
  %120 = icmp eq i64 %117, 0, !dbg !4868
  br i1 %120, label %123, label %121, !dbg !4870

; <label>:121:                                    ; preds = %116
  %122 = getelementptr inbounds i8, i8* %118, i64 %117, !dbg !4871
  store i8 0, i8* %122, align 1, !dbg !4873, !tbaa !908
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !4669, metadata !810) #10, !dbg !4738
  br label %123

; <label>:123:                                    ; preds = %121, %116, %48, %37
  %124 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.138, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.138, i64 0, i64 0), %48 ], [ %118, %121 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.138, i64 0, i64 0), %116 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !4669, metadata !810) #10, !dbg !4738
  call void @free(i8* %29) #10, !dbg !4874
  br label %125

; <label>:125:                                    ; preds = %123, %24
  %126 = phi i8* [ %124, %123 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.138, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %126, i64 0, metadata !4669, metadata !810) #10, !dbg !4738
  store volatile i8* %126, i8** @charset_aliases, align 8, !dbg !4875, !tbaa !818
  br label %127, !dbg !4876

; <label>:127:                                    ; preds = %0, %125
  %128 = phi i8* [ %6, %0 ], [ %126, %125 ]
  call void @llvm.dbg.value(metadata i8* %128, i64 0, metadata !4648, metadata !810), !dbg !4877
  %129 = load i8, i8* %128, align 1, !dbg !4878, !tbaa !908
  %130 = icmp eq i8 %129, 0, !dbg !4879
  br i1 %130, label %157, label %131, !dbg !4880

; <label>:131:                                    ; preds = %127
  br label %132, !dbg !4882

; <label>:132:                                    ; preds = %131, %147
  %133 = phi i8 [ %154, %147 ], [ %129, %131 ]
  %134 = phi i8* [ %153, %147 ], [ %128, %131 ]
  %135 = call i32 @strcmp(i8* %5, i8* %134) #10, !dbg !4882
  %136 = icmp eq i32 %135, 0, !dbg !4883
  br i1 %136, label %143, label %137, !dbg !4884

; <label>:137:                                    ; preds = %132
  %138 = icmp eq i8 %133, 42, !dbg !4885
  br i1 %138, label %139, label %147, !dbg !4887

; <label>:139:                                    ; preds = %137
  %140 = getelementptr inbounds i8, i8* %134, i64 1, !dbg !4888
  %141 = load i8, i8* %140, align 1, !dbg !4888, !tbaa !908
  %142 = icmp eq i8 %141, 0, !dbg !4890
  br i1 %142, label %143, label %147, !dbg !4891

; <label>:143:                                    ; preds = %139, %132
  %144 = call i64 @strlen(i8* %134) #13, !dbg !4893
  %145 = getelementptr inbounds i8, i8* %134, i64 %144, !dbg !4895
  %146 = getelementptr inbounds i8, i8* %145, i64 1, !dbg !4896
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !4647, metadata !810), !dbg !4733
  br label %157, !dbg !4897

; <label>:147:                                    ; preds = %137, %139
  %148 = call i64 @strlen(i8* %134) #13, !dbg !4898
  %149 = add i64 %148, 1, !dbg !4899
  %150 = getelementptr inbounds i8, i8* %134, i64 %149, !dbg !4900
  call void @llvm.dbg.value(metadata i8* %150, i64 0, metadata !4648, metadata !810), !dbg !4877
  %151 = call i64 @strlen(i8* %150) #13, !dbg !4901
  %152 = add i64 %151, 1, !dbg !4902
  %153 = getelementptr inbounds i8, i8* %150, i64 %152, !dbg !4903
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !4648, metadata !810), !dbg !4877
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !4648, metadata !810), !dbg !4877
  %154 = load i8, i8* %153, align 1, !dbg !4878, !tbaa !908
  %155 = icmp eq i8 %154, 0, !dbg !4879
  br i1 %155, label %156, label %132, !dbg !4880, !llvm.loop !4904

; <label>:156:                                    ; preds = %147
  br label %157, !dbg !4733

; <label>:157:                                    ; preds = %156, %127, %143
  %158 = phi i8* [ %146, %143 ], [ %5, %127 ], [ %5, %156 ]
  call void @llvm.dbg.value(metadata i8* %158, i64 0, metadata !4647, metadata !810), !dbg !4733
  %159 = load i8, i8* %158, align 1, !dbg !4907, !tbaa !908
  %160 = icmp eq i8 %159, 0, !dbg !4909
  %161 = select i1 %160, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.144, i64 0, i64 0), i8* %158, !dbg !4910
  call void @llvm.dbg.value(metadata i8* %161, i64 0, metadata !4647, metadata !810), !dbg !4733
  ret i8* %161, !dbg !4911
}

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) local_unnamed_addr #2

declare i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @ungetc(i32, %struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @fscanf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @__strcpy_chk(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @dup_safer(i32) local_unnamed_addr #6 !dbg !4912 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4915, metadata !810), !dbg !4916
  %2 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 0, i32 3) #10, !dbg !4917
  ret i32 %2, !dbg !4918
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !4919 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4964, metadata !810), !dbg !4968
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4965, metadata !810), !dbg !4969
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4967, metadata !810), !dbg !4970
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !4971
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4966, metadata !810), !dbg !4972
  %3 = icmp slt i32 %2, 0, !dbg !4973
  br i1 %3, label %4, label %6, !dbg !4975

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4976
  br label %24, !dbg !4977

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !4978
  %8 = icmp eq i32 %7, 0, !dbg !4978
  br i1 %8, label %13, label %9, !dbg !4980

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !4981
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #10, !dbg !4983
  %12 = icmp eq i64 %11, -1, !dbg !4985
  br i1 %12, label %16, label %13, !dbg !4986

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #10, !dbg !4987
  %15 = icmp eq i32 %14, 0, !dbg !4987
  br i1 %15, label %16, label %18, !dbg !4988

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4965, metadata !810), !dbg !4969
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4990
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4967, metadata !810), !dbg !4970
  br label %24, !dbg !4991

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #1, !dbg !4992
  %20 = load i32, i32* %19, align 4, !dbg !4992, !tbaa !970
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4965, metadata !810), !dbg !4969
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4965, metadata !810), !dbg !4969
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4990
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4967, metadata !810), !dbg !4970
  %22 = icmp eq i32 %20, 0, !dbg !4993
  br i1 %22, label %24, label %23, !dbg !4991

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4995, !tbaa !970
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !4967, metadata !810), !dbg !4970
  br label %24, !dbg !4997

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !4998
}

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fcntl(i32, i32, ...) local_unnamed_addr #6 !dbg !692 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !700, metadata !810), !dbg !4999
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !701, metadata !810), !dbg !5000
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !5001
  call void @llvm.lifetime.start(i64 24, i8* nonnull %4) #10, !dbg !5001
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %3, metadata !702, metadata !810), !dbg !5002
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !713, metadata !810), !dbg !5003
  call void @llvm.va_start(i8* nonnull %4), !dbg !5004
  %5 = icmp eq i32 %1, 1030, !dbg !5005
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0
  %7 = load i32, i32* %6, align 16
  %8 = icmp ult i32 %7, 41
  br i1 %5, label %9, label %59, !dbg !5005

; <label>:9:                                      ; preds = %2
  br i1 %8, label %10, label %16, !dbg !5006

; <label>:10:                                     ; preds = %9
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !5007
  %12 = load i8*, i8** %11, align 16, !dbg !5007
  %13 = sext i32 %7 to i64, !dbg !5007
  %14 = getelementptr i8, i8* %12, i64 %13, !dbg !5007
  %15 = add i32 %7, 8, !dbg !5007
  store i32 %15, i32* %6, align 16, !dbg !5007
  br label %20, !dbg !5007

; <label>:16:                                     ; preds = %9
  %17 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !5009
  %18 = load i8*, i8** %17, align 8, !dbg !5009
  %19 = getelementptr i8, i8* %18, i64 8, !dbg !5009
  store i8* %19, i8** %17, align 8, !dbg !5009
  br label %20, !dbg !5009

; <label>:20:                                     ; preds = %16, %10
  %21 = phi i8* [ %14, %10 ], [ %18, %16 ]
  %22 = bitcast i8* %21 to i32*, !dbg !5011
  %23 = load i32, i32* %22, align 4, !dbg !5011
  call void @llvm.dbg.value(metadata i32 %23, i64 0, metadata !714, metadata !810), !dbg !5013
  %24 = load i32, i32* @rpl_fcntl.have_dupfd_cloexec, align 4, !dbg !5014, !tbaa !970
  %25 = icmp sgt i32 %24, -1, !dbg !5016
  br i1 %25, label %26, label %39, !dbg !5017

; <label>:26:                                     ; preds = %20
  %27 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 1030, i32 %23) #10, !dbg !5018
  call void @llvm.dbg.value(metadata i32 %27, i64 0, metadata !713, metadata !810), !dbg !5003
  %28 = icmp sgt i32 %27, -1, !dbg !5020
  br i1 %28, label %36, label %29, !dbg !5022

; <label>:29:                                     ; preds = %26
  %30 = tail call i32* @__errno_location() #1, !dbg !5023
  %31 = load i32, i32* %30, align 4, !dbg !5023, !tbaa !970
  %32 = icmp eq i32 %31, 22, !dbg !5025
  br i1 %32, label %33, label %36, !dbg !5026

; <label>:33:                                     ; preds = %29
  %34 = call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 0, i32 %23), !dbg !5028
  call void @llvm.dbg.value(metadata i32 %34, i64 0, metadata !713, metadata !810), !dbg !5003
  %35 = icmp slt i32 %34, 0, !dbg !5030
  br i1 %35, label %75, label %36, !dbg !5032

; <label>:36:                                     ; preds = %29, %26, %33
  %37 = phi i32 [ %27, %26 ], [ %27, %29 ], [ %34, %33 ]
  %38 = phi i32 [ 1, %26 ], [ 1, %29 ], [ -1, %33 ]
  call void @llvm.dbg.value(metadata i32 %37, i64 0, metadata !713, metadata !810), !dbg !5003
  store i32 %38, i32* @rpl_fcntl.have_dupfd_cloexec, align 4, !tbaa !970
  br label %42, !dbg !5033

; <label>:39:                                     ; preds = %20
  %40 = call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 0, i32 %23), !dbg !5034
  call void @llvm.dbg.value(metadata i32 %40, i64 0, metadata !713, metadata !810), !dbg !5003
  %41 = load i32, i32* @rpl_fcntl.have_dupfd_cloexec, align 4
  br label %42

; <label>:42:                                     ; preds = %39, %36
  %43 = phi i32 [ %38, %36 ], [ %41, %39 ], !dbg !5035
  %44 = phi i32 [ %37, %36 ], [ %40, %39 ]
  call void @llvm.dbg.value(metadata i32 %44, i64 0, metadata !713, metadata !810), !dbg !5003
  %45 = icmp sgt i32 %44, -1, !dbg !5037
  %46 = icmp eq i32 %43, -1, !dbg !5038
  %47 = and i1 %45, %46, !dbg !5039
  br i1 %47, label %48, label %75, !dbg !5039

; <label>:48:                                     ; preds = %42
  %49 = call i32 (i32, i32, ...) @fcntl(i32 %44, i32 1) #10, !dbg !5040
  call void @llvm.dbg.value(metadata i32 %49, i64 0, metadata !717, metadata !810), !dbg !5041
  %50 = icmp slt i32 %49, 0, !dbg !5042
  br i1 %50, label %55, label %51, !dbg !5043

; <label>:51:                                     ; preds = %48
  %52 = or i32 %49, 1, !dbg !5044
  %53 = call i32 (i32, i32, ...) @fcntl(i32 %44, i32 2, i32 %52) #10, !dbg !5046
  %54 = icmp eq i32 %53, -1, !dbg !5047
  br i1 %54, label %55, label %75, !dbg !5048

; <label>:55:                                     ; preds = %51, %48
  %56 = tail call i32* @__errno_location() #1, !dbg !5050
  %57 = load i32, i32* %56, align 4, !dbg !5050, !tbaa !970
  call void @llvm.dbg.value(metadata i32 %57, i64 0, metadata !720, metadata !810), !dbg !5051
  %58 = call i32 @close(i32 %44) #10, !dbg !5052
  store i32 %57, i32* %56, align 4, !dbg !5053, !tbaa !970
  call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !713, metadata !810), !dbg !5003
  br label %75, !dbg !5054

; <label>:59:                                     ; preds = %2
  br i1 %8, label %60, label %66, !dbg !5055

; <label>:60:                                     ; preds = %59
  %61 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3, !dbg !5056
  %62 = load i8*, i8** %61, align 16, !dbg !5056
  %63 = sext i32 %7 to i64, !dbg !5056
  %64 = getelementptr i8, i8* %62, i64 %63, !dbg !5056
  %65 = add i32 %7, 8, !dbg !5056
  store i32 %65, i32* %6, align 16, !dbg !5056
  br label %70, !dbg !5056

; <label>:66:                                     ; preds = %59
  %67 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2, !dbg !5058
  %68 = load i8*, i8** %67, align 8, !dbg !5058
  %69 = getelementptr i8, i8* %68, i64 8, !dbg !5058
  store i8* %69, i8** %67, align 8, !dbg !5058
  br label %70, !dbg !5058

; <label>:70:                                     ; preds = %66, %60
  %71 = phi i8* [ %64, %60 ], [ %68, %66 ]
  %72 = bitcast i8* %71 to i8**, !dbg !5060
  %73 = load i8*, i8** %72, align 8, !dbg !5060
  call void @llvm.dbg.value(metadata i8* %73, i64 0, metadata !723, metadata !810), !dbg !5062
  %74 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 %1, i8* %73) #10, !dbg !5063
  call void @llvm.dbg.value(metadata i32 %74, i64 0, metadata !713, metadata !810), !dbg !5003
  br label %75

; <label>:75:                                     ; preds = %33, %51, %55, %42, %70
  %76 = phi i32 [ %74, %70 ], [ %34, %33 ], [ %44, %42 ], [ -1, %55 ], [ %44, %51 ]
  call void @llvm.dbg.value(metadata i32 %76, i64 0, metadata !713, metadata !810), !dbg !5003
  call void @llvm.va_end(i8* nonnull %4), !dbg !5064
  call void @llvm.lifetime.end(i64 24, i8* nonnull %4) #10, !dbg !5065
  ret i32 %76, !dbg !5066
}

declare i32 @fcntl(i32, i32, ...) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !5067 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5112, metadata !810), !dbg !5113
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !5114
  br i1 %2, label %6, label %3, !dbg !5116

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !5117
  %5 = icmp eq i32 %4, 0, !dbg !5117
  br i1 %5, label %6, label %8, !dbg !5119

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !5121
  br label %17, !dbg !5122

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5123, metadata !810) #10, !dbg !5128
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !5130
  %10 = load i32, i32* %9, align 8, !dbg !5130, !tbaa !4394
  %11 = and i32 %10, 256, !dbg !5132
  %12 = icmp eq i32 %11, 0, !dbg !5132
  br i1 %12, label %15, label %13, !dbg !5133

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #10, !dbg !5134
  br label %15, !dbg !5134

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !5135
  br label %17, !dbg !5136

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !5137
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

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

!llvm.dbg.cu = !{!2, !244, !250, !258, !725, !265, !272, !728, !749, !751, !753, !336, !760, !777, !779, !781, !783, !786, !788, !791, !345, !794, !796, !696, !798}
!llvm.ident = !{!800, !800, !800, !800, !800, !800, !800, !800, !800, !800, !800, !800, !800, !800, !800, !800, !800, !800, !800, !800, !800, !800, !800, !800, !800}
!llvm.module.flags = !{!801, !802, !803, !804}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "separator", scope: !2, file: !3, line: 80, type: !25, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !19, globals: !35)
!3 = !DIFile(filename: "src/tac.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4 = !{!5}
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
!19 = !{!20, !22, !23, !27, !30, !32, !25}
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !25)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !28, line: 62, baseType: !29)
!28 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!29 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!34 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!35 = !{!36, !0, !57, !59, !61, !63, !65, !67, !69, !94, !99, !129, !143, !213, !215, !225, !238, !240}
!36 = !DIGlobalVariableExpression(var: !37)
!37 = distinct !DIGlobalVariable(name: "default_file_list", scope: !38, file: !3, line: 612, type: !54, isLocal: true, isDefinition: true)
!38 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 603, type: !39, isLocal: false, isDefinition: true, scopeLine: 604, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !43)
!39 = !DISubroutineType(types: !40)
!40 = !{!41, !41, !42}
!41 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!43 = !{!44, !45, !46, !47, !48, !50, !51, !52}
!44 = !DILocalVariable(name: "argc", arg: 1, scope: !38, file: !3, line: 603, type: !41)
!45 = !DILocalVariable(name: "argv", arg: 2, scope: !38, file: !3, line: 603, type: !42)
!46 = !DILocalVariable(name: "error_message", scope: !38, file: !3, line: 605, type: !25)
!47 = !DILocalVariable(name: "optc", scope: !38, file: !3, line: 606, type: !41)
!48 = !DILocalVariable(name: "ok", scope: !38, file: !3, line: 607, type: !49)
!49 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!50 = !DILocalVariable(name: "half_buffer_size", scope: !38, file: !3, line: 608, type: !27)
!51 = !DILocalVariable(name: "file", scope: !38, file: !3, line: 613, type: !23)
!52 = !DILocalVariable(name: "i", scope: !53, file: !3, line: 693, type: !27)
!53 = distinct !DILexicalBlock(scope: !38, file: !3, line: 692, column: 3)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 128, elements: !55)
!55 = !{!56}
!56 = !DISubrange(count: 2)
!57 = !DIGlobalVariableExpression(var: !58)
!58 = distinct !DIGlobalVariable(name: "separator_ends_record", scope: !2, file: !3, line: 87, type: !49, isLocal: true, isDefinition: true)
!59 = !DIGlobalVariableExpression(var: !60)
!60 = distinct !DIGlobalVariable(name: "sentinel_length", scope: !2, file: !3, line: 92, type: !27, isLocal: true, isDefinition: true)
!61 = !DIGlobalVariableExpression(var: !62)
!62 = distinct !DIGlobalVariable(name: "match_length", scope: !2, file: !3, line: 97, type: !27, isLocal: true, isDefinition: true)
!63 = !DIGlobalVariableExpression(var: !64)
!64 = distinct !DIGlobalVariable(name: "G_buffer", scope: !2, file: !3, line: 100, type: !20, isLocal: true, isDefinition: true)
!65 = !DIGlobalVariableExpression(var: !66)
!66 = distinct !DIGlobalVariable(name: "read_size", scope: !2, file: !3, line: 103, type: !27, isLocal: true, isDefinition: true)
!67 = !DIGlobalVariableExpression(var: !68)
!68 = distinct !DIGlobalVariable(name: "G_buffer_size", scope: !2, file: !3, line: 108, type: !27, isLocal: true, isDefinition: true)
!69 = !DIGlobalVariableExpression(var: !70)
!70 = distinct !DIGlobalVariable(name: "compiled_separator", scope: !2, file: !3, line: 111, type: !71, isLocal: true, isDefinition: true)
!71 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "re_pattern_buffer", file: !72, line: 414, size: 512, elements: !73)
!72 = !DIFile(filename: "./lib/regex.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!73 = !{!74, !77, !79, !80, !82, !83, !85, !86, !88, !89, !90, !91, !92, !93}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !71, file: !72, line: 418, baseType: !75, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = !DICompositeType(tag: DW_TAG_structure_type, name: "re_dfa_t", file: !72, line: 418, flags: DIFlagFwdDecl)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !71, file: !72, line: 421, baseType: !78, size: 64, offset: 64)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "__re_long_size_t", file: !72, line: 57, baseType: !29)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !71, file: !72, line: 424, baseType: !78, size: 64, offset: 128)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "syntax", scope: !71, file: !72, line: 427, baseType: !81, size: 64, offset: 192)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_syntax_t", file: !72, line: 73, baseType: !29)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "fastmap", scope: !71, file: !72, line: 432, baseType: !20, size: 64, offset: 256)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !71, file: !72, line: 438, baseType: !84, size: 64, offset: 320)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "re_nsub", scope: !71, file: !72, line: 441, baseType: !27, size: 64, offset: 384)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "can_be_null", scope: !71, file: !72, line: 447, baseType: !87, size: 1, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!87 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "regs_allocated", scope: !71, file: !72, line: 458, baseType: !87, size: 2, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "fastmap_accurate", scope: !71, file: !72, line: 462, baseType: !87, size: 1, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "no_sub", scope: !71, file: !72, line: 466, baseType: !87, size: 1, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "not_bol", scope: !71, file: !72, line: 470, baseType: !87, size: 1, offset: 453, flags: DIFlagBitField, extraData: i64 448)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "not_eol", scope: !71, file: !72, line: 473, baseType: !87, size: 1, offset: 454, flags: DIFlagBitField, extraData: i64 448)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "newline_anchor", scope: !71, file: !72, line: 476, baseType: !87, size: 1, offset: 455, flags: DIFlagBitField, extraData: i64 448)
!94 = !DIGlobalVariableExpression(var: !95)
!95 = distinct !DIGlobalVariable(name: "compiled_separator_fastmap", scope: !2, file: !3, line: 112, type: !96, isLocal: true, isDefinition: true)
!96 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 2048, elements: !97)
!97 = !{!98}
!98 = !DISubrange(count: 256)
!99 = !DIGlobalVariableExpression(var: !100)
!100 = distinct !DIGlobalVariable(name: "infomap", scope: !101, file: !102, line: 632, type: !126, isLocal: true, isDefinition: true)
!101 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !102, file: !102, line: 630, type: !103, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !105)
!102 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!103 = !DISubroutineType(types: !104)
!104 = !{null, !25}
!105 = !{!106, !107, !108, !115, !117, !118, !119, !122, !123, !125}
!106 = !DILocalVariable(name: "program", arg: 1, scope: !101, file: !102, line: 630, type: !25)
!107 = !DILocalVariable(name: "node", scope: !101, file: !102, line: 642, type: !25)
!108 = !DILocalVariable(name: "map_prog", scope: !101, file: !102, line: 643, type: !109)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !111)
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !101, file: !102, line: 632, size: 128, elements: !112)
!112 = !{!113, !114}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !111, file: !102, line: 632, baseType: !25, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !111, file: !102, line: 632, baseType: !25, size: 64, offset: 64)
!115 = !DILocalVariable(name: "__s1_len", scope: !116, file: !102, line: 645, type: !27)
!116 = distinct !DILexicalBlock(scope: !101, file: !102, line: 645, column: 33)
!117 = !DILocalVariable(name: "__s2_len", scope: !116, file: !102, line: 645, type: !27)
!118 = !DILocalVariable(name: "lc_messages", scope: !101, file: !102, line: 655, type: !25)
!119 = !DILocalVariable(name: "__s1_len", scope: !120, file: !102, line: 656, type: !27)
!120 = distinct !DILexicalBlock(scope: !121, file: !102, line: 656, column: 22)
!121 = distinct !DILexicalBlock(scope: !101, file: !102, line: 656, column: 7)
!122 = !DILocalVariable(name: "__s2_len", scope: !120, file: !102, line: 656, type: !27)
!123 = !DILocalVariable(name: "__s2", scope: !124, file: !102, line: 656, type: !32)
!124 = distinct !DILexicalBlock(scope: !120, file: !102, line: 656, column: 22)
!125 = !DILocalVariable(name: "__result", scope: !124, file: !102, line: 656, type: !41)
!126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 896, elements: !127)
!127 = !{!128}
!128 = !DISubrange(count: 7)
!129 = !DIGlobalVariableExpression(var: !130)
!130 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 115, type: !131, isLocal: true, isDefinition: true)
!131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, size: 1536, elements: !141)
!132 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !133)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !134, line: 104, size: 256, elements: !135)
!134 = !DIFile(filename: "/usr/include/getopt.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!135 = !{!136, !137, !138, !140}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !133, file: !134, line: 106, baseType: !25, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !133, file: !134, line: 109, baseType: !41, size: 32, offset: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !133, file: !134, line: 110, baseType: !139, size: 64, offset: 128)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !133, file: !134, line: 111, baseType: !41, size: 32, offset: 192)
!141 = !{!142}
!142 = !DISubrange(count: 6)
!143 = !DIGlobalVariableExpression(var: !144)
!144 = distinct !DIGlobalVariable(name: "tempfile", scope: !145, file: !3, line: 433, type: !20, isLocal: true, isDefinition: true)
!145 = distinct !DISubprogram(name: "temp_stream", scope: !3, file: !3, line: 431, type: !146, isLocal: true, isDefinition: true, scopeLine: 432, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !205)
!146 = !DISubroutineType(types: !147)
!147 = !{!49, !148, !42}
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !151, line: 49, baseType: !152)
!151 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !153, line: 241, size: 1728, elements: !154)
!153 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!154 = !{!155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !175, !176, !177, !178, !182, !184, !186, !190, !193, !195, !196, !197, !198, !199, !200, !201}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !152, file: !153, line: 242, baseType: !41, size: 32)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !152, file: !153, line: 247, baseType: !20, size: 64, offset: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !152, file: !153, line: 248, baseType: !20, size: 64, offset: 128)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !152, file: !153, line: 249, baseType: !20, size: 64, offset: 192)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !152, file: !153, line: 250, baseType: !20, size: 64, offset: 256)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !152, file: !153, line: 251, baseType: !20, size: 64, offset: 320)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !152, file: !153, line: 252, baseType: !20, size: 64, offset: 384)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !152, file: !153, line: 253, baseType: !20, size: 64, offset: 448)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !152, file: !153, line: 254, baseType: !20, size: 64, offset: 512)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !152, file: !153, line: 256, baseType: !20, size: 64, offset: 576)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !152, file: !153, line: 257, baseType: !20, size: 64, offset: 640)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !152, file: !153, line: 258, baseType: !20, size: 64, offset: 704)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !152, file: !153, line: 260, baseType: !168, size: 64, offset: 768)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !153, line: 156, size: 192, elements: !170)
!170 = !{!171, !172, !174}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !169, file: !153, line: 157, baseType: !168, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !169, file: !153, line: 158, baseType: !173, size: 64, offset: 64)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !169, file: !153, line: 162, baseType: !41, size: 32, offset: 128)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !152, file: !153, line: 262, baseType: !173, size: 64, offset: 832)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !152, file: !153, line: 264, baseType: !41, size: 32, offset: 896)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !152, file: !153, line: 268, baseType: !41, size: 32, offset: 928)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !152, file: !153, line: 270, baseType: !179, size: 64, offset: 960)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !180, line: 140, baseType: !181)
!180 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!181 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !152, file: !153, line: 274, baseType: !183, size: 16, offset: 1024)
!183 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !152, file: !153, line: 275, baseType: !185, size: 8, offset: 1040)
!185 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !152, file: !153, line: 276, baseType: !187, size: 8, offset: 1048)
!187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 8, elements: !188)
!188 = !{!189}
!189 = !DISubrange(count: 1)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !152, file: !153, line: 280, baseType: !191, size: 64, offset: 1088)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !153, line: 150, baseType: null)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !152, file: !153, line: 289, baseType: !194, size: 64, offset: 1152)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !180, line: 141, baseType: !181)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !152, file: !153, line: 297, baseType: !22, size: 64, offset: 1216)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !152, file: !153, line: 298, baseType: !22, size: 64, offset: 1280)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !152, file: !153, line: 299, baseType: !22, size: 64, offset: 1344)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !152, file: !153, line: 300, baseType: !22, size: 64, offset: 1408)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !152, file: !153, line: 302, baseType: !27, size: 64, offset: 1472)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !152, file: !153, line: 303, baseType: !41, size: 32, offset: 1536)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !152, file: !153, line: 305, baseType: !202, size: 160, offset: 1568)
!202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 160, elements: !203)
!203 = !{!204}
!204 = !DISubrange(count: 20)
!205 = !{!206, !207, !208, !211, !212}
!206 = !DILocalVariable(name: "fp", arg: 1, scope: !145, file: !3, line: 431, type: !148)
!207 = !DILocalVariable(name: "file_name", arg: 2, scope: !145, file: !3, line: 431, type: !42)
!208 = !DILocalVariable(name: "t", scope: !209, file: !3, line: 437, type: !25)
!209 = distinct !DILexicalBlock(scope: !210, file: !3, line: 436, column: 5)
!210 = distinct !DILexicalBlock(scope: !145, file: !3, line: 435, column: 7)
!211 = !DILocalVariable(name: "tempdir", scope: !209, file: !3, line: 438, type: !25)
!212 = !DILocalVariable(name: "fd", scope: !209, file: !3, line: 455, type: !41)
!213 = !DIGlobalVariableExpression(var: !214)
!214 = distinct !DIGlobalVariable(name: "tmp_fp", scope: !145, file: !3, line: 434, type: !149, isLocal: true, isDefinition: true)
!215 = !DIGlobalVariableExpression(var: !216)
!216 = distinct !DIGlobalVariable(name: "regs", scope: !2, file: !3, line: 113, type: !217, isLocal: true, isDefinition: true)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "re_registers", file: !72, line: 498, size: 192, elements: !218)
!218 = !{!219, !221, !224}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "num_regs", scope: !217, file: !72, line: 500, baseType: !220, size: 32)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "__re_size_t", file: !72, line: 56, baseType: !87)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !217, file: !72, line: 501, baseType: !222, size: 64, offset: 64)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "regoff_t", file: !72, line: 491, baseType: !41)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !217, file: !72, line: 502, baseType: !222, size: 64, offset: 128)
!225 = !DIGlobalVariableExpression(var: !226)
!226 = distinct !DIGlobalVariable(name: "buffer", scope: !227, file: !3, line: 161, type: !235, isLocal: true, isDefinition: true)
!227 = distinct !DISubprogram(name: "output", scope: !3, file: !3, line: 159, type: !228, isLocal: true, isDefinition: true, scopeLine: 160, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !230)
!228 = !DISubroutineType(types: !229)
!229 = !{null, !25, !25}
!230 = !{!231, !232, !233, !234}
!231 = !DILocalVariable(name: "start", arg: 1, scope: !227, file: !3, line: 159, type: !25)
!232 = !DILocalVariable(name: "past_end", arg: 2, scope: !227, file: !3, line: 159, type: !25)
!233 = !DILocalVariable(name: "bytes_to_add", scope: !227, file: !3, line: 163, type: !27)
!234 = !DILocalVariable(name: "bytes_available", scope: !227, file: !3, line: 164, type: !27)
!235 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 65536, elements: !236)
!236 = !{!237}
!237 = !DISubrange(count: 8192)
!238 = !DIGlobalVariableExpression(var: !239)
!239 = distinct !DIGlobalVariable(name: "bytes_in_buffer", scope: !227, file: !3, line: 162, type: !27, isLocal: true, isDefinition: true)
!240 = !DIGlobalVariableExpression(var: !241)
!241 = distinct !DIGlobalVariable(name: "have_read_stdin", scope: !2, file: !3, line: 83, type: !49, isLocal: true, isDefinition: true)
!242 = !DIGlobalVariableExpression(var: !243)
!243 = distinct !DIGlobalVariable(name: "Version", scope: !244, file: !245, line: 2, type: !25, isLocal: false, isDefinition: true)
!244 = distinct !DICompileUnit(language: DW_LANG_C99, file: !245, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !246, globals: !247)
!245 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!246 = !{}
!247 = !{!242}
!248 = !DIGlobalVariableExpression(var: !249)
!249 = distinct !DIGlobalVariable(name: "file_name", scope: !250, file: !255, line: 36, type: !25, isLocal: true, isDefinition: true)
!250 = distinct !DICompileUnit(language: DW_LANG_C99, file: !251, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !246, globals: !252)
!251 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!252 = !{!248, !253}
!253 = !DIGlobalVariableExpression(var: !254)
!254 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !250, file: !255, line: 46, type: !49, isLocal: true, isDefinition: true)
!255 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!256 = !DIGlobalVariableExpression(var: !257)
!257 = distinct !DIGlobalVariable(name: "exit_failure", scope: !258, file: !261, line: 24, type: !262, isLocal: false, isDefinition: true)
!258 = distinct !DICompileUnit(language: DW_LANG_C99, file: !259, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !246, globals: !260)
!259 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!260 = !{!256}
!261 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!262 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !41)
!263 = !DIGlobalVariableExpression(var: !264)
!264 = distinct !DIGlobalVariable(name: "program_name", scope: !265, file: !269, line: 33, type: !25, isLocal: false, isDefinition: true)
!265 = distinct !DICompileUnit(language: DW_LANG_C99, file: !266, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !246, retainedTypes: !267, globals: !268)
!266 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!267 = !{!22, !20}
!268 = !{!263}
!269 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!270 = !DIGlobalVariableExpression(var: !271)
!271 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !272, file: !299, line: 77, type: !331, isLocal: false, isDefinition: true)
!272 = distinct !DICompileUnit(language: DW_LANG_C99, file: !273, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !274, retainedTypes: !295, globals: !296)
!273 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!274 = !{!5, !275, !280}
!275 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !6, line: 242, size: 32, elements: !276)
!276 = !{!277, !278, !279}
!277 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!278 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!279 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!280 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !281, line: 46, size: 32, elements: !282)
!281 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!282 = !{!283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294}
!283 = !DIEnumerator(name: "_ISupper", value: 256)
!284 = !DIEnumerator(name: "_ISlower", value: 512)
!285 = !DIEnumerator(name: "_ISalpha", value: 1024)
!286 = !DIEnumerator(name: "_ISdigit", value: 2048)
!287 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!288 = !DIEnumerator(name: "_ISspace", value: 8192)
!289 = !DIEnumerator(name: "_ISprint", value: 16384)
!290 = !DIEnumerator(name: "_ISgraph", value: 32768)
!291 = !DIEnumerator(name: "_ISblank", value: 1)
!292 = !DIEnumerator(name: "_IScntrl", value: 2)
!293 = !DIEnumerator(name: "_ISpunct", value: 4)
!294 = !DIEnumerator(name: "_ISalnum", value: 8)
!295 = !{!41, !183, !27, !20}
!296 = !{!270, !297, !304, !316, !318, !320, !327, !329}
!297 = !DIGlobalVariableExpression(var: !298)
!298 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !272, file: !299, line: 93, type: !300, isLocal: false, isDefinition: true)
!299 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!300 = !DICompositeType(tag: DW_TAG_array_type, baseType: !301, size: 320, elements: !302)
!301 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!302 = !{!303}
!303 = !DISubrange(count: 10)
!304 = !DIGlobalVariableExpression(var: !305)
!305 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !272, file: !299, line: 1043, type: !306, isLocal: false, isDefinition: true)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !299, line: 57, size: 448, elements: !307)
!307 = !{!308, !309, !310, !314, !315}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !306, file: !299, line: 60, baseType: !5, size: 32)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !306, file: !299, line: 63, baseType: !41, size: 32, offset: 32)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !306, file: !299, line: 67, baseType: !311, size: 256, offset: 64)
!311 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 256, elements: !312)
!312 = !{!313}
!313 = !DISubrange(count: 8)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !306, file: !299, line: 70, baseType: !25, size: 64, offset: 320)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !306, file: !299, line: 73, baseType: !25, size: 64, offset: 384)
!316 = !DIGlobalVariableExpression(var: !317)
!317 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !272, file: !299, line: 108, type: !306, isLocal: true, isDefinition: true)
!318 = !DIGlobalVariableExpression(var: !319)
!319 = distinct !DIGlobalVariable(name: "slot0", scope: !272, file: !299, line: 834, type: !96, isLocal: true, isDefinition: true)
!320 = !DIGlobalVariableExpression(var: !321)
!321 = distinct !DIGlobalVariable(name: "slotvec", scope: !272, file: !299, line: 837, type: !322, isLocal: true, isDefinition: true)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !299, line: 826, size: 128, elements: !324)
!324 = !{!325, !326}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !323, file: !299, line: 828, baseType: !27, size: 64)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !323, file: !299, line: 829, baseType: !20, size: 64, offset: 64)
!327 = !DIGlobalVariableExpression(var: !328)
!328 = distinct !DIGlobalVariable(name: "nslots", scope: !272, file: !299, line: 835, type: !41, isLocal: true, isDefinition: true)
!329 = !DIGlobalVariableExpression(var: !330)
!330 = distinct !DIGlobalVariable(name: "slotvec0", scope: !272, file: !299, line: 836, type: !323, isLocal: true, isDefinition: true)
!331 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 704, elements: !332)
!332 = !{!333}
!333 = !DISubrange(count: 11)
!334 = !DIGlobalVariableExpression(var: !335)
!335 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !336, file: !339, line: 26, type: !340, isLocal: false, isDefinition: true)
!336 = distinct !DICompileUnit(language: DW_LANG_C99, file: !337, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !246, globals: !338)
!337 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!338 = !{!334}
!339 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!340 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 376, elements: !341)
!341 = !{!342}
!342 = !DISubrange(count: 47)
!343 = !DIGlobalVariableExpression(var: !344)
!344 = distinct !DIGlobalVariable(name: "charset_aliases", scope: !345, file: !688, line: 120, type: !689, isLocal: true, isDefinition: true)
!345 = distinct !DICompileUnit(language: DW_LANG_C99, file: !346, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !347, retainedTypes: !686, globals: !687)
!346 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!347 = !{!348}
!348 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !349, line: 41, size: 32, elements: !350)
!349 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!350 = !{!351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685}
!351 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!352 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!353 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!354 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!355 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!356 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!357 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!358 = !DIEnumerator(name: "DAY_1", value: 131079)
!359 = !DIEnumerator(name: "DAY_2", value: 131080)
!360 = !DIEnumerator(name: "DAY_3", value: 131081)
!361 = !DIEnumerator(name: "DAY_4", value: 131082)
!362 = !DIEnumerator(name: "DAY_5", value: 131083)
!363 = !DIEnumerator(name: "DAY_6", value: 131084)
!364 = !DIEnumerator(name: "DAY_7", value: 131085)
!365 = !DIEnumerator(name: "ABMON_1", value: 131086)
!366 = !DIEnumerator(name: "ABMON_2", value: 131087)
!367 = !DIEnumerator(name: "ABMON_3", value: 131088)
!368 = !DIEnumerator(name: "ABMON_4", value: 131089)
!369 = !DIEnumerator(name: "ABMON_5", value: 131090)
!370 = !DIEnumerator(name: "ABMON_6", value: 131091)
!371 = !DIEnumerator(name: "ABMON_7", value: 131092)
!372 = !DIEnumerator(name: "ABMON_8", value: 131093)
!373 = !DIEnumerator(name: "ABMON_9", value: 131094)
!374 = !DIEnumerator(name: "ABMON_10", value: 131095)
!375 = !DIEnumerator(name: "ABMON_11", value: 131096)
!376 = !DIEnumerator(name: "ABMON_12", value: 131097)
!377 = !DIEnumerator(name: "MON_1", value: 131098)
!378 = !DIEnumerator(name: "MON_2", value: 131099)
!379 = !DIEnumerator(name: "MON_3", value: 131100)
!380 = !DIEnumerator(name: "MON_4", value: 131101)
!381 = !DIEnumerator(name: "MON_5", value: 131102)
!382 = !DIEnumerator(name: "MON_6", value: 131103)
!383 = !DIEnumerator(name: "MON_7", value: 131104)
!384 = !DIEnumerator(name: "MON_8", value: 131105)
!385 = !DIEnumerator(name: "MON_9", value: 131106)
!386 = !DIEnumerator(name: "MON_10", value: 131107)
!387 = !DIEnumerator(name: "MON_11", value: 131108)
!388 = !DIEnumerator(name: "MON_12", value: 131109)
!389 = !DIEnumerator(name: "AM_STR", value: 131110)
!390 = !DIEnumerator(name: "PM_STR", value: 131111)
!391 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!392 = !DIEnumerator(name: "D_FMT", value: 131113)
!393 = !DIEnumerator(name: "T_FMT", value: 131114)
!394 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!395 = !DIEnumerator(name: "ERA", value: 131116)
!396 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!397 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!398 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!399 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!400 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!401 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!402 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!403 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!404 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!405 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!406 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!407 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!408 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!409 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!410 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!411 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!412 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!413 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!414 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!415 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!416 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!417 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!418 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!419 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!420 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!421 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!422 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!423 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!424 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!425 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!426 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!427 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!428 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!429 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!430 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!431 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!432 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!433 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!434 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!435 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!436 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!437 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!438 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!439 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!440 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!441 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!442 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!443 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!444 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!445 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!446 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!447 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!448 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!449 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!450 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!451 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!452 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!453 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!454 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!455 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!456 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!457 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!458 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!459 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!460 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!461 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!462 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!463 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!464 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!465 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!466 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!467 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!468 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!469 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!470 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!471 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!472 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!473 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!474 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!475 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!476 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!477 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!478 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!479 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!480 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!481 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!482 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!483 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!484 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!485 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!486 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!487 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!488 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!489 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!490 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!491 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!492 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!493 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!494 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!495 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!496 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!497 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!498 = !DIEnumerator(name: "CODESET", value: 14)
!499 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!500 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!501 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!502 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!503 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!504 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!505 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!506 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!507 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!508 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!509 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!510 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!511 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!512 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!513 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!514 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!515 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!516 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!517 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!518 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!519 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!520 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!521 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!522 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!523 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!524 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!525 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!526 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!527 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!528 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!529 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!530 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!531 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!532 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!533 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!534 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!535 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!536 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!537 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!538 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!539 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!540 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!541 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!542 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!543 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!544 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!545 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!546 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!547 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!548 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!549 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!550 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!551 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!552 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!553 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!554 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!555 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!556 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!557 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!558 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!559 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!560 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!561 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!562 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!563 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!564 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!565 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!566 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!567 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!568 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!569 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!570 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!571 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!572 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!573 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!574 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!575 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!576 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!577 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!578 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!579 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!580 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!581 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!582 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!583 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!584 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!585 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!586 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!587 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!588 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!589 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!590 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!591 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!592 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!593 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!594 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!595 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!596 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!597 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!598 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!599 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!600 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!601 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!602 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!603 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!604 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!605 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!606 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!607 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!608 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!609 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!610 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!611 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!612 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!613 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!614 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!615 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!616 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!617 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!618 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!619 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!620 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!621 = !DIEnumerator(name: "THOUSEP", value: 65537)
!622 = !DIEnumerator(name: "__GROUPING", value: 65538)
!623 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!624 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!625 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!626 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!627 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!628 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!629 = !DIEnumerator(name: "__YESSTR", value: 327682)
!630 = !DIEnumerator(name: "__NOSTR", value: 327683)
!631 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!632 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!633 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!634 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!635 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!636 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!637 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!638 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!639 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!640 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!641 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!642 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!643 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!644 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!645 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!646 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!647 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!648 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!649 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!650 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!651 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!652 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!653 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!654 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!655 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!656 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!657 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!658 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!659 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!660 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!661 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!662 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!663 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!664 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!665 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!666 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!667 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!668 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!669 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!670 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!671 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!672 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!673 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!674 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!675 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!676 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!677 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!678 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!679 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!680 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!681 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!682 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!683 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!684 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!685 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!686 = !{!22, !20, !84}
!687 = !{!343}
!688 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!689 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !25)
!690 = !DIGlobalVariableExpression(var: !691)
!691 = distinct !DIGlobalVariable(name: "have_dupfd_cloexec", scope: !692, file: !693, line: 335, type: !41, isLocal: true, isDefinition: true)
!692 = distinct !DISubprogram(name: "rpl_fcntl", scope: !693, file: !693, line: 272, type: !694, isLocal: false, isDefinition: true, scopeLine: 273, flags: DIFlagPrototyped, isOptimized: true, unit: !696, variables: !699)
!693 = !DIFile(filename: "lib/fcntl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!694 = !DISubroutineType(types: !695)
!695 = !{!41, !41, !41, null}
!696 = distinct !DICompileUnit(language: DW_LANG_C99, file: !697, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !246, globals: !698)
!697 = !DIFile(filename: "./lib/fcntl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!698 = !{!690}
!699 = !{!700, !701, !702, !713, !714, !717, !720, !723}
!700 = !DILocalVariable(name: "fd", arg: 1, scope: !692, file: !693, line: 272, type: !41)
!701 = !DILocalVariable(name: "action", arg: 2, scope: !692, file: !693, line: 272, type: !41)
!702 = !DILocalVariable(name: "arg", scope: !692, file: !693, line: 274, type: !703)
!703 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !704, line: 30, baseType: !705)
!704 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!705 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !697, line: 274, baseType: !706)
!706 = !DICompositeType(tag: DW_TAG_array_type, baseType: !707, size: 192, elements: !188)
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !697, line: 274, size: 192, elements: !708)
!708 = !{!709, !710, !711, !712}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !707, file: !697, line: 274, baseType: !87, size: 32)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !707, file: !697, line: 274, baseType: !87, size: 32, offset: 32)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !707, file: !697, line: 274, baseType: !22, size: 64, offset: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !707, file: !697, line: 274, baseType: !22, size: 64, offset: 128)
!713 = !DILocalVariable(name: "result", scope: !692, file: !693, line: 275, type: !41)
!714 = !DILocalVariable(name: "target", scope: !715, file: !693, line: 322, type: !41)
!715 = distinct !DILexicalBlock(scope: !716, file: !693, line: 321, column: 7)
!716 = distinct !DILexicalBlock(scope: !692, file: !693, line: 278, column: 5)
!717 = !DILocalVariable(name: "flags", scope: !718, file: !693, line: 359, type: !41)
!718 = distinct !DILexicalBlock(scope: !719, file: !693, line: 358, column: 11)
!719 = distinct !DILexicalBlock(scope: !715, file: !693, line: 357, column: 13)
!720 = !DILocalVariable(name: "saved_errno", scope: !721, file: !693, line: 362, type: !41)
!721 = distinct !DILexicalBlock(scope: !722, file: !693, line: 361, column: 15)
!722 = distinct !DILexicalBlock(scope: !718, file: !693, line: 360, column: 17)
!723 = !DILocalVariable(name: "p", scope: !724, file: !693, line: 404, type: !22)
!724 = distinct !DILexicalBlock(scope: !716, file: !693, line: 402, column: 7)
!725 = distinct !DICompileUnit(language: DW_LANG_C99, file: !726, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !246, retainedTypes: !727)
!726 = !DIFile(filename: "./lib/filenamecat-lgpl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!727 = !{!22}
!728 = distinct !DICompileUnit(language: DW_LANG_C99, file: !729, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !730)
!729 = !DIFile(filename: "./lib/safe-read.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!730 = !{!731}
!731 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !733, file: !732, line: 62, size: 32, elements: !747)
!732 = !DIFile(filename: "lib/safe-read.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!733 = distinct !DISubprogram(name: "safe_read", scope: !732, file: !732, line: 56, type: !734, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !728, variables: !736)
!734 = !DISubroutineType(types: !735)
!735 = !{!27, !41, !22, !27}
!736 = !{!737, !738, !739, !740}
!737 = !DILocalVariable(name: "fd", arg: 1, scope: !733, file: !732, line: 56, type: !41)
!738 = !DILocalVariable(name: "buf", arg: 2, scope: !733, file: !732, line: 56, type: !22)
!739 = !DILocalVariable(name: "count", arg: 3, scope: !733, file: !732, line: 56, type: !27)
!740 = !DILocalVariable(name: "result", scope: !741, file: !732, line: 66, type: !744)
!741 = distinct !DILexicalBlock(scope: !742, file: !732, line: 65, column: 5)
!742 = distinct !DILexicalBlock(scope: !743, file: !732, line: 64, column: 3)
!743 = distinct !DILexicalBlock(scope: !733, file: !732, line: 64, column: 3)
!744 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !745, line: 109, baseType: !746)
!745 = !DIFile(filename: "/usr/include/sys/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!746 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !180, line: 181, baseType: !181)
!747 = !{!748}
!748 = !DIEnumerator(name: "BUGGY_READ_MAXIMUM", value: 2147475456)
!749 = distinct !DICompileUnit(language: DW_LANG_C99, file: !750, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !246)
!750 = !DIFile(filename: "./lib/mkstemp-safer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!751 = distinct !DICompileUnit(language: DW_LANG_C99, file: !752, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !246)
!752 = !DIFile(filename: "./lib/fd-safer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!753 = distinct !DICompileUnit(language: DW_LANG_C99, file: !754, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !755, retainedTypes: !727)
!754 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!755 = !{!756}
!756 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !757, line: 41, size: 32, elements: !758)
!757 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!758 = !{!759}
!759 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!760 = distinct !DICompileUnit(language: DW_LANG_C99, file: !761, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !762, retainedTypes: !776)
!761 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!762 = !{!763}
!763 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !765, file: !764, line: 192, size: 32, elements: !774)
!764 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!765 = distinct !DISubprogram(name: "x2nrealloc", scope: !764, file: !764, line: 180, type: !766, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !760, variables: !769)
!766 = !DISubroutineType(types: !767)
!767 = !{!22, !22, !768, !27}
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!769 = !{!770, !771, !772, !773}
!770 = !DILocalVariable(name: "p", arg: 1, scope: !765, file: !764, line: 180, type: !22)
!771 = !DILocalVariable(name: "pn", arg: 2, scope: !765, file: !764, line: 180, type: !768)
!772 = !DILocalVariable(name: "s", arg: 3, scope: !765, file: !764, line: 180, type: !27)
!773 = !DILocalVariable(name: "n", scope: !765, file: !764, line: 182, type: !27)
!774 = !{!775}
!775 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!776 = !{!27, !20, !22}
!777 = distinct !DICompileUnit(language: DW_LANG_C99, file: !778, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !246)
!778 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!779 = distinct !DICompileUnit(language: DW_LANG_C99, file: !780, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !246, retainedTypes: !727)
!780 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!781 = distinct !DICompileUnit(language: DW_LANG_C99, file: !782, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !246, retainedTypes: !727)
!782 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!783 = distinct !DICompileUnit(language: DW_LANG_C99, file: !784, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !246, retainedTypes: !785)
!784 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!785 = !{!27}
!786 = distinct !DICompileUnit(language: DW_LANG_C99, file: !787, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !246)
!787 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!788 = distinct !DICompileUnit(language: DW_LANG_C99, file: !789, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !246, retainedTypes: !790)
!789 = !DIFile(filename: "./lib/basename-lgpl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!790 = !{!20}
!791 = distinct !DICompileUnit(language: DW_LANG_C99, file: !792, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !246, retainedTypes: !793)
!792 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!793 = !{!27, !30, !32, !25}
!794 = distinct !DICompileUnit(language: DW_LANG_C99, file: !795, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !246)
!795 = !DIFile(filename: "./lib/dup-safer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!796 = distinct !DICompileUnit(language: DW_LANG_C99, file: !797, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !246)
!797 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!798 = distinct !DICompileUnit(language: DW_LANG_C99, file: !799, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !246, retainedTypes: !727)
!799 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!800 = !{!"clang version 4.0.1 (tags/RELEASE_401/final)"}
!801 = !{i32 2, !"Dwarf Version", i32 4}
!802 = !{i32 2, !"Debug Info Version", i32 3}
!803 = !{i32 1, !"PIC Level", i32 2}
!804 = !{i32 1, !"PIE Level", i32 2}
!805 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 126, type: !806, isLocal: false, isDefinition: true, scopeLine: 127, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !808)
!806 = !DISubroutineType(types: !807)
!807 = !{null, !41}
!808 = !{!809}
!809 = !DILocalVariable(name: "status", arg: 1, scope: !805, file: !3, line: 126, type: !41)
!810 = !DIExpression()
!811 = !DILocation(line: 126, column: 12, scope: !805)
!812 = !DILocation(line: 128, column: 14, scope: !813)
!813 = distinct !DILexicalBlock(scope: !805, file: !3, line: 128, column: 7)
!814 = !DILocation(line: 128, column: 7, scope: !805)
!815 = !DILocation(line: 129, column: 5, scope: !816)
!816 = !DILexicalBlockFile(scope: !817, file: !3, discriminator: 1)
!817 = distinct !DILexicalBlock(scope: !813, file: !3, line: 129, column: 5)
!818 = !{!819, !819, i64 0}
!819 = !{!"any pointer", !820, i64 0}
!820 = !{!"omnipotent char", !821, i64 0}
!821 = !{!"Simple C/C++ TBAA"}
!822 = !DILocation(line: 129, column: 5, scope: !823)
!823 = !DILexicalBlockFile(scope: !817, file: !3, discriminator: 3)
!824 = !DILocation(line: 129, column: 5, scope: !825)
!825 = !DILexicalBlockFile(scope: !817, file: !3, discriminator: 2)
!826 = !DILocation(line: 132, column: 7, scope: !827)
!827 = distinct !DILexicalBlock(scope: !813, file: !3, line: 131, column: 5)
!828 = !DILocation(line: 132, column: 7, scope: !829)
!829 = !DILexicalBlockFile(scope: !827, file: !3, discriminator: 1)
!830 = !DILocation(line: 136, column: 7, scope: !827)
!831 = !DILocation(line: 136, column: 7, scope: !829)
!832 = !DILocation(line: 580, column: 3, scope: !833, inlinedAt: !836)
!833 = distinct !DISubprogram(name: "emit_stdin_note", scope: !102, file: !102, line: 578, type: !834, isLocal: true, isDefinition: true, scopeLine: 579, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !246)
!834 = !DISubroutineType(types: !835)
!835 = !{null}
!836 = distinct !DILocation(line: 140, column: 7, scope: !827)
!837 = !DILocation(line: 580, column: 3, scope: !838, inlinedAt: !836)
!838 = !DILexicalBlockFile(scope: !833, file: !102, discriminator: 1)
!839 = !DILocation(line: 587, column: 3, scope: !840, inlinedAt: !841)
!840 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !102, file: !102, line: 585, type: !834, isLocal: true, isDefinition: true, scopeLine: 586, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !246)
!841 = distinct !DILocation(line: 141, column: 7, scope: !827)
!842 = !DILocation(line: 587, column: 3, scope: !843, inlinedAt: !841)
!843 = !DILexicalBlockFile(scope: !840, file: !102, discriminator: 1)
!844 = !DILocation(line: 143, column: 7, scope: !827)
!845 = !DILocation(line: 143, column: 7, scope: !829)
!846 = !DILocation(line: 148, column: 7, scope: !827)
!847 = !DILocation(line: 148, column: 7, scope: !829)
!848 = !DILocation(line: 149, column: 7, scope: !827)
!849 = !DILocation(line: 149, column: 7, scope: !829)
!850 = !DILocation(line: 642, column: 15, scope: !101, inlinedAt: !851)
!851 = distinct !DILocation(line: 150, column: 7, scope: !827)
!852 = !DILocation(line: 651, column: 3, scope: !101, inlinedAt: !851)
!853 = !DILocation(line: 651, column: 3, scope: !854, inlinedAt: !851)
!854 = !DILexicalBlockFile(scope: !101, file: !102, discriminator: 1)
!855 = !DILocation(line: 655, column: 29, scope: !101, inlinedAt: !851)
!856 = !DILocation(line: 655, column: 15, scope: !101, inlinedAt: !851)
!857 = !DILocation(line: 656, column: 7, scope: !121, inlinedAt: !851)
!858 = !DILocation(line: 656, column: 19, scope: !121, inlinedAt: !851)
!859 = !DILocation(line: 656, column: 22, scope: !860, inlinedAt: !851)
!860 = !DILexicalBlockFile(scope: !121, file: !102, discriminator: 16)
!861 = !DILocation(line: 656, column: 7, scope: !862, inlinedAt: !851)
!862 = !DILexicalBlockFile(scope: !101, file: !102, discriminator: 16)
!863 = !DILocation(line: 662, column: 7, scope: !864, inlinedAt: !851)
!864 = distinct !DILexicalBlock(scope: !121, file: !102, line: 657, column: 5)
!865 = !DILocation(line: 662, column: 7, scope: !866, inlinedAt: !851)
!866 = !DILexicalBlockFile(scope: !864, file: !102, discriminator: 1)
!867 = !DILocation(line: 664, column: 5, scope: !864, inlinedAt: !851)
!868 = !DILocation(line: 665, column: 3, scope: !101, inlinedAt: !851)
!869 = !DILocation(line: 665, column: 3, scope: !854, inlinedAt: !851)
!870 = !DILocation(line: 667, column: 3, scope: !101, inlinedAt: !851)
!871 = !DILocation(line: 667, column: 3, scope: !854, inlinedAt: !851)
!872 = !DILocation(line: 152, column: 3, scope: !805)
!873 = !DILocation(line: 603, column: 11, scope: !38)
!874 = !DILocation(line: 603, column: 24, scope: !38)
!875 = !DILocation(line: 616, column: 21, scope: !38)
!876 = !DILocation(line: 616, column: 3, scope: !38)
!877 = !DILocation(line: 617, column: 3, scope: !38)
!878 = !DILocation(line: 618, column: 3, scope: !38)
!879 = !DILocation(line: 619, column: 3, scope: !38)
!880 = !DILocation(line: 621, column: 3, scope: !38)
!881 = !DILocation(line: 623, column: 13, scope: !38)
!882 = !DILocation(line: 624, column: 19, scope: !38)
!883 = !{!884, !884, i64 0}
!884 = !{!"long", !820, i64 0}
!885 = !DILocation(line: 627, column: 3, scope: !38)
!886 = !DILocation(line: 627, column: 18, scope: !887)
!887 = !DILexicalBlockFile(scope: !38, file: !3, discriminator: 1)
!888 = !DILocation(line: 606, column: 7, scope: !38)
!889 = !DILocation(line: 627, column: 3, scope: !887)
!890 = !DILocation(line: 633, column: 11, scope: !891)
!891 = distinct !DILexicalBlock(scope: !892, file: !3, line: 630, column: 9)
!892 = distinct !DILexicalBlock(scope: !38, file: !3, line: 628, column: 5)
!893 = !DILocation(line: 635, column: 27, scope: !891)
!894 = !DILocation(line: 636, column: 11, scope: !891)
!895 = !DILocation(line: 638, column: 23, scope: !891)
!896 = !DILocation(line: 638, column: 21, scope: !891)
!897 = !DILocation(line: 639, column: 11, scope: !891)
!898 = distinct !{!898, !885, !899}
!899 = !DILocation(line: 645, column: 5, scope: !38)
!900 = !DILocation(line: 640, column: 9, scope: !891)
!901 = !DILocation(line: 641, column: 9, scope: !891)
!902 = !DILocation(line: 641, column: 9, scope: !903)
!903 = !DILexicalBlockFile(scope: !891, file: !3, discriminator: 1)
!904 = !DILocation(line: 643, column: 11, scope: !891)
!905 = !DILocation(line: 647, column: 7, scope: !906)
!906 = distinct !DILexicalBlock(scope: !38, file: !3, line: 647, column: 7)
!907 = !DILocation(line: 647, column: 23, scope: !906)
!908 = !{!820, !820, i64 0}
!909 = !DILocation(line: 647, column: 7, scope: !38)
!910 = !DILocation(line: 649, column: 11, scope: !911)
!911 = distinct !DILexicalBlock(scope: !906, file: !3, line: 648, column: 5)
!912 = !DILocation(line: 650, column: 9, scope: !913)
!913 = distinct !DILexicalBlock(scope: !911, file: !3, line: 649, column: 11)
!914 = !DILocation(line: 650, column: 9, scope: !915)
!915 = !DILexicalBlockFile(scope: !913, file: !3, discriminator: 1)
!916 = !DILocation(line: 653, column: 36, scope: !911)
!917 = !DILocation(line: 654, column: 34, scope: !911)
!918 = !DILocation(line: 656, column: 54, scope: !911)
!919 = !DILocation(line: 656, column: 23, scope: !920)
!920 = !DILexicalBlockFile(scope: !911, file: !3, discriminator: 1)
!921 = !DILocation(line: 605, column: 15, scope: !38)
!922 = !DILocation(line: 658, column: 11, scope: !923)
!923 = distinct !DILexicalBlock(scope: !911, file: !3, line: 658, column: 11)
!924 = !DILocation(line: 658, column: 11, scope: !911)
!925 = !DILocation(line: 659, column: 9, scope: !923)
!926 = !DILocation(line: 662, column: 38, scope: !906)
!927 = !DILocation(line: 662, column: 51, scope: !928)
!928 = !DILexicalBlockFile(scope: !906, file: !3, discriminator: 1)
!929 = !DILocation(line: 662, column: 38, scope: !928)
!930 = !DILocation(line: 662, column: 38, scope: !931)
!931 = !DILexicalBlockFile(scope: !906, file: !3, discriminator: 3)
!932 = !DILocation(line: 662, column: 36, scope: !931)
!933 = !DILocation(line: 662, column: 18, scope: !931)
!934 = !DILocation(line: 665, column: 10, scope: !887)
!935 = !DILocation(line: 665, column: 26, scope: !887)
!936 = !DILocation(line: 665, column: 3, scope: !887)
!937 = !DILocation(line: 667, column: 24, scope: !938)
!938 = distinct !DILexicalBlock(scope: !939, file: !3, line: 667, column: 11)
!939 = distinct !DILexicalBlock(scope: !38, file: !3, line: 666, column: 5)
!940 = !DILocation(line: 667, column: 11, scope: !939)
!941 = !DILocation(line: 668, column: 9, scope: !938)
!942 = !DILocation(line: 669, column: 17, scope: !939)
!943 = !DILocation(line: 665, column: 39, scope: !887)
!944 = distinct !{!944, !945, !946}
!945 = !DILocation(line: 665, column: 3, scope: !38)
!946 = !DILocation(line: 670, column: 5, scope: !38)
!947 = !DILocation(line: 671, column: 32, scope: !38)
!948 = !DILocation(line: 673, column: 10, scope: !949)
!949 = distinct !DILexicalBlock(scope: !38, file: !3, line: 673, column: 7)
!950 = !DILocation(line: 671, column: 50, scope: !38)
!951 = !DILocation(line: 608, column: 10, scope: !38)
!952 = !DILocation(line: 672, column: 21, scope: !38)
!953 = !DILocation(line: 672, column: 17, scope: !38)
!954 = !DILocation(line: 673, column: 20, scope: !949)
!955 = !DILocation(line: 673, column: 59, scope: !956)
!956 = !DILexicalBlockFile(scope: !949, file: !3, discriminator: 1)
!957 = !DILocation(line: 673, column: 39, scope: !949)
!958 = !DILocation(line: 674, column: 5, scope: !949)
!959 = !DILocation(line: 675, column: 14, scope: !38)
!960 = !DILocation(line: 675, column: 12, scope: !38)
!961 = !DILocation(line: 676, column: 7, scope: !962)
!962 = distinct !DILexicalBlock(scope: !38, file: !3, line: 676, column: 7)
!963 = !DILocation(line: 676, column: 7, scope: !38)
!964 = !DILocation(line: 678, column: 25, scope: !965)
!965 = distinct !DILexicalBlock(scope: !962, file: !3, line: 677, column: 5)
!966 = !DILocation(line: 678, column: 52, scope: !965)
!967 = !DILocation(line: 678, column: 7, scope: !965)
!968 = !DILocation(line: 680, column: 5, scope: !965)
!969 = !DILocation(line: 686, column: 11, scope: !38)
!970 = !{!971, !971, i64 0}
!971 = !{!"int", !820, i64 0}
!972 = !DILocation(line: 686, column: 18, scope: !38)
!973 = !DILocation(line: 687, column: 36, scope: !38)
!974 = !DILocation(line: 613, column: 22, scope: !38)
!975 = !DILocation(line: 607, column: 8, scope: !38)
!976 = !DILocation(line: 693, column: 12, scope: !53)
!977 = !DILocation(line: 695, column: 17, scope: !978)
!978 = !DILexicalBlockFile(scope: !979, file: !3, discriminator: 1)
!979 = distinct !DILexicalBlock(scope: !980, file: !3, line: 695, column: 5)
!980 = distinct !DILexicalBlock(scope: !53, file: !3, line: 695, column: 5)
!981 = !DILocation(line: 695, column: 5, scope: !982)
!982 = !DILexicalBlockFile(scope: !980, file: !3, discriminator: 1)
!983 = !DILocation(line: 563, column: 23, scope: !984, inlinedAt: !1000)
!984 = distinct !DISubprogram(name: "tac_file", scope: !3, file: !3, line: 563, type: !985, isLocal: true, isDefinition: true, scopeLine: 564, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !987)
!985 = !DISubroutineType(types: !986)
!986 = !{!49, !25}
!987 = !{!988, !989, !990, !992, !993, !994, !996, !997, !999}
!988 = !DILocalVariable(name: "filename", arg: 1, scope: !984, file: !3, line: 563, type: !25)
!989 = !DILocalVariable(name: "ok", scope: !984, file: !3, line: 565, type: !49)
!990 = !DILocalVariable(name: "file_size", scope: !984, file: !3, line: 566, type: !991)
!991 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !151, line: 91, baseType: !179)
!992 = !DILocalVariable(name: "fd", scope: !984, file: !3, line: 567, type: !41)
!993 = !DILocalVariable(name: "is_stdin", scope: !984, file: !3, line: 568, type: !49)
!994 = !DILocalVariable(name: "__s1_len", scope: !995, file: !3, line: 568, type: !27)
!995 = distinct !DILexicalBlock(scope: !984, file: !3, line: 568, column: 19)
!996 = !DILocalVariable(name: "__s2_len", scope: !995, file: !3, line: 568, type: !27)
!997 = !DILocalVariable(name: "__s2", scope: !998, file: !3, line: 568, type: !32)
!998 = distinct !DILexicalBlock(scope: !995, file: !3, line: 568, column: 19)
!999 = !DILocalVariable(name: "__result", scope: !998, file: !3, line: 568, type: !41)
!1000 = distinct !DILocation(line: 696, column: 13, scope: !979)
!1001 = !DILocation(line: 568, column: 19, scope: !995, inlinedAt: !1000)
!1002 = !DILocation(line: 568, column: 19, scope: !998, inlinedAt: !1000)
!1003 = !DILocation(line: 568, column: 19, scope: !1004, inlinedAt: !1000)
!1004 = !DILexicalBlockFile(scope: !998, file: !3, discriminator: 2)
!1005 = !DILocation(line: 568, column: 19, scope: !1006, inlinedAt: !1000)
!1006 = !DILexicalBlockFile(scope: !1007, file: !3, discriminator: 3)
!1007 = distinct !DILexicalBlock(scope: !998, file: !3, line: 568, column: 19)
!1008 = !DILocation(line: 568, column: 19, scope: !1009, inlinedAt: !1000)
!1009 = !DILexicalBlockFile(scope: !1007, file: !3, discriminator: 2)
!1010 = !DILocation(line: 568, column: 19, scope: !1011, inlinedAt: !1000)
!1011 = !DILexicalBlockFile(scope: !1012, file: !3, discriminator: 4)
!1012 = distinct !DILexicalBlock(scope: !1007, file: !3, line: 568, column: 19)
!1013 = !DILocation(line: 568, column: 19, scope: !1014, inlinedAt: !1000)
!1014 = !DILexicalBlockFile(scope: !995, file: !3, discriminator: 11)
!1015 = !DILocation(line: 570, column: 7, scope: !984, inlinedAt: !1000)
!1016 = !DILocation(line: 567, column: 7, scope: !984, inlinedAt: !1000)
!1017 = !DILocation(line: 574, column: 18, scope: !1018, inlinedAt: !1000)
!1018 = distinct !DILexicalBlock(scope: !1019, file: !3, line: 571, column: 5)
!1019 = distinct !DILexicalBlock(scope: !984, file: !3, line: 570, column: 7)
!1020 = !DILocation(line: 576, column: 5, scope: !1018, inlinedAt: !1000)
!1021 = !DILocation(line: 579, column: 12, scope: !1022, inlinedAt: !1000)
!1022 = distinct !DILexicalBlock(scope: !1019, file: !3, line: 578, column: 5)
!1023 = !DILocation(line: 580, column: 14, scope: !1024, inlinedAt: !1000)
!1024 = distinct !DILexicalBlock(scope: !1022, file: !3, line: 580, column: 11)
!1025 = !DILocation(line: 580, column: 11, scope: !1022, inlinedAt: !1000)
!1026 = !DILocation(line: 582, column: 21, scope: !1027, inlinedAt: !1000)
!1027 = distinct !DILexicalBlock(scope: !1024, file: !3, line: 581, column: 9)
!1028 = !DILocation(line: 582, column: 28, scope: !1029, inlinedAt: !1000)
!1029 = !DILexicalBlockFile(scope: !1027, file: !3, discriminator: 1)
!1030 = !DILocation(line: 583, column: 18, scope: !1027, inlinedAt: !1000)
!1031 = !DILocation(line: 582, column: 11, scope: !1032, inlinedAt: !1000)
!1032 = !DILexicalBlockFile(scope: !1027, file: !3, discriminator: 2)
!1033 = !DILocation(line: 584, column: 11, scope: !1027, inlinedAt: !1000)
!1034 = !DILocation(line: 588, column: 15, scope: !984, inlinedAt: !1000)
!1035 = !DILocation(line: 566, column: 9, scope: !984, inlinedAt: !1000)
!1036 = !DILocation(line: 590, column: 19, scope: !984, inlinedAt: !1000)
!1037 = !DILocation(line: 590, column: 23, scope: !984, inlinedAt: !1000)
!1038 = !DILocation(line: 590, column: 26, scope: !1039, inlinedAt: !1000)
!1039 = !DILexicalBlockFile(scope: !984, file: !3, discriminator: 1)
!1040 = !DILocation(line: 590, column: 9, scope: !1039, inlinedAt: !1000)
!1041 = !DILocalVariable(name: "input_fd", arg: 1, scope: !1042, file: !3, line: 546, type: !41)
!1042 = distinct !DISubprogram(name: "tac_nonseekable", scope: !3, file: !3, line: 546, type: !1043, isLocal: true, isDefinition: true, scopeLine: 547, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1045)
!1043 = !DISubroutineType(types: !1044)
!1044 = !{!49, !41, !25}
!1045 = !{!1041, !1046, !1047, !1048, !1049, !1050}
!1046 = !DILocalVariable(name: "file", arg: 2, scope: !1042, file: !3, line: 546, type: !25)
!1047 = !DILocalVariable(name: "tmp_stream", scope: !1042, file: !3, line: 548, type: !149)
!1048 = !DILocalVariable(name: "tmp_file", scope: !1042, file: !3, line: 549, type: !20)
!1049 = !DILocalVariable(name: "bytes_copied", scope: !1042, file: !3, line: 550, type: !991)
!1050 = !DILocalVariable(name: "ok", scope: !1042, file: !3, line: 554, type: !49)
!1051 = !DILocation(line: 546, column: 22, scope: !1042, inlinedAt: !1052)
!1052 = distinct !DILocation(line: 591, column: 11, scope: !984, inlinedAt: !1000)
!1053 = !DILocation(line: 546, column: 44, scope: !1042, inlinedAt: !1052)
!1054 = !DIExpression(DW_OP_deref)
!1055 = !DILocation(line: 548, column: 9, scope: !1042, inlinedAt: !1052)
!1056 = !DILocation(line: 549, column: 9, scope: !1042, inlinedAt: !1052)
!1057 = !DILocalVariable(name: "g_tmp", arg: 1, scope: !1058, file: !3, line: 500, type: !148)
!1058 = distinct !DISubprogram(name: "copy_to_temp", scope: !3, file: !3, line: 500, type: !1059, isLocal: true, isDefinition: true, scopeLine: 501, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1061)
!1059 = !DISubroutineType(types: !1060)
!1060 = !{!991, !148, !42, !41, !25}
!1061 = !{!1057, !1062, !1063, !1064, !1065, !1066, !1067, !1071}
!1062 = !DILocalVariable(name: "g_tempfile", arg: 2, scope: !1058, file: !3, line: 500, type: !42)
!1063 = !DILocalVariable(name: "input_fd", arg: 3, scope: !1058, file: !3, line: 500, type: !41)
!1064 = !DILocalVariable(name: "file", arg: 4, scope: !1058, file: !3, line: 500, type: !25)
!1065 = !DILocalVariable(name: "fp", scope: !1058, file: !3, line: 502, type: !149)
!1066 = !DILocalVariable(name: "file_name", scope: !1058, file: !3, line: 503, type: !20)
!1067 = !DILocalVariable(name: "bytes_copied", scope: !1058, file: !3, line: 504, type: !1068)
!1068 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !1069, line: 136, baseType: !1070)
!1069 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1070 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !180, line: 62, baseType: !29)
!1071 = !DILocalVariable(name: "bytes_read", scope: !1072, file: !3, line: 510, type: !27)
!1072 = distinct !DILexicalBlock(scope: !1058, file: !3, line: 509, column: 5)
!1073 = !DILocation(line: 500, column: 22, scope: !1058, inlinedAt: !1074)
!1074 = distinct !DILocation(line: 550, column: 24, scope: !1042, inlinedAt: !1052)
!1075 = !DILocation(line: 500, column: 36, scope: !1058, inlinedAt: !1074)
!1076 = !DILocation(line: 500, column: 52, scope: !1058, inlinedAt: !1074)
!1077 = !DILocation(line: 500, column: 74, scope: !1058, inlinedAt: !1074)
!1078 = !DILocation(line: 504, column: 13, scope: !1058, inlinedAt: !1074)
!1079 = !DILocation(line: 502, column: 9, scope: !1058, inlinedAt: !1074)
!1080 = !DILocation(line: 503, column: 9, scope: !1058, inlinedAt: !1074)
!1081 = !DILocation(line: 431, column: 21, scope: !145, inlinedAt: !1082)
!1082 = distinct !DILocation(line: 505, column: 8, scope: !1083, inlinedAt: !1074)
!1083 = distinct !DILexicalBlock(scope: !1058, file: !3, line: 505, column: 7)
!1084 = !DILocation(line: 431, column: 32, scope: !145, inlinedAt: !1082)
!1085 = !DILocation(line: 435, column: 7, scope: !210, inlinedAt: !1082)
!1086 = !DILocation(line: 435, column: 16, scope: !210, inlinedAt: !1082)
!1087 = !DILocation(line: 435, column: 7, scope: !145, inlinedAt: !1082)
!1088 = !DILocation(line: 437, column: 23, scope: !209, inlinedAt: !1082)
!1089 = !DILocation(line: 437, column: 19, scope: !209, inlinedAt: !1082)
!1090 = !DILocation(line: 438, column: 29, scope: !209, inlinedAt: !1082)
!1091 = !DILocation(line: 438, column: 19, scope: !209, inlinedAt: !1082)
!1092 = !DILocation(line: 439, column: 18, scope: !209, inlinedAt: !1082)
!1093 = !DILocation(line: 439, column: 16, scope: !209, inlinedAt: !1082)
!1094 = !DILocation(line: 440, column: 19, scope: !1095, inlinedAt: !1082)
!1095 = distinct !DILexicalBlock(scope: !209, file: !3, line: 440, column: 11)
!1096 = !DILocation(line: 440, column: 11, scope: !209, inlinedAt: !1082)
!1097 = !DILocation(line: 442, column: 24, scope: !1098, inlinedAt: !1082)
!1098 = distinct !DILexicalBlock(scope: !1095, file: !3, line: 441, column: 9)
!1099 = !DILocation(line: 442, column: 11, scope: !1100, inlinedAt: !1082)
!1100 = !DILexicalBlockFile(scope: !1098, file: !3, discriminator: 1)
!1101 = !DILocation(line: 443, column: 11, scope: !1098, inlinedAt: !1082)
!1102 = !DILocation(line: 455, column: 16, scope: !209, inlinedAt: !1082)
!1103 = !DILocation(line: 455, column: 11, scope: !209, inlinedAt: !1082)
!1104 = !DILocation(line: 456, column: 14, scope: !1105, inlinedAt: !1082)
!1105 = distinct !DILexicalBlock(scope: !209, file: !3, line: 456, column: 11)
!1106 = !DILocation(line: 456, column: 11, scope: !209, inlinedAt: !1082)
!1107 = !DILocation(line: 458, column: 21, scope: !1108, inlinedAt: !1082)
!1108 = distinct !DILexicalBlock(scope: !1105, file: !3, line: 457, column: 9)
!1109 = !DILocation(line: 458, column: 28, scope: !1110, inlinedAt: !1082)
!1110 = !DILexicalBlockFile(scope: !1108, file: !3, discriminator: 1)
!1111 = !DILocation(line: 459, column: 18, scope: !1108, inlinedAt: !1082)
!1112 = !DILocation(line: 458, column: 11, scope: !1113, inlinedAt: !1082)
!1113 = !DILexicalBlockFile(scope: !1108, file: !3, discriminator: 2)
!1114 = !DILocation(line: 460, column: 11, scope: !1108, inlinedAt: !1082)
!1115 = !DILocation(line: 463, column: 16, scope: !209, inlinedAt: !1082)
!1116 = !DILocation(line: 463, column: 14, scope: !209, inlinedAt: !1082)
!1117 = !DILocation(line: 464, column: 13, scope: !1118, inlinedAt: !1082)
!1118 = distinct !DILexicalBlock(scope: !209, file: !3, line: 464, column: 11)
!1119 = !DILocation(line: 464, column: 11, scope: !209, inlinedAt: !1082)
!1120 = !DILocation(line: 466, column: 21, scope: !1121, inlinedAt: !1082)
!1121 = distinct !DILexicalBlock(scope: !1118, file: !3, line: 465, column: 9)
!1122 = !DILocation(line: 466, column: 28, scope: !1123, inlinedAt: !1082)
!1123 = !DILexicalBlockFile(scope: !1121, file: !3, discriminator: 1)
!1124 = !DILocation(line: 467, column: 18, scope: !1121, inlinedAt: !1082)
!1125 = !DILocation(line: 466, column: 11, scope: !1126, inlinedAt: !1082)
!1126 = !DILexicalBlockFile(scope: !1121, file: !3, discriminator: 2)
!1127 = !DILocation(line: 468, column: 11, scope: !1121, inlinedAt: !1082)
!1128 = !DILocation(line: 469, column: 19, scope: !1121, inlinedAt: !1082)
!1129 = !DILocation(line: 469, column: 11, scope: !1121, inlinedAt: !1082)
!1130 = !DILocation(line: 471, column: 17, scope: !1121, inlinedAt: !1082)
!1131 = !DILocation(line: 471, column: 11, scope: !1121, inlinedAt: !1082)
!1132 = !DILocation(line: 472, column: 20, scope: !1121, inlinedAt: !1082)
!1133 = !DILocation(line: 473, column: 11, scope: !1121, inlinedAt: !1082)
!1134 = !DILocation(line: 476, column: 34, scope: !209, inlinedAt: !1082)
!1135 = !DILocalVariable(name: "fp", arg: 2, scope: !1136, file: !3, line: 420, type: !149)
!1136 = distinct !DISubprogram(name: "record_or_unlink_tempfile", scope: !3, file: !3, line: 420, type: !1137, isLocal: true, isDefinition: true, scopeLine: 421, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1139)
!1137 = !DISubroutineType(types: !1138)
!1138 = !{null, !25, !149}
!1139 = !{!1140, !1135}
!1140 = !DILocalVariable(name: "fn", arg: 1, scope: !1136, file: !3, line: 420, type: !25)
!1141 = !DILocation(line: 420, column: 50, scope: !1136, inlinedAt: !1142)
!1142 = distinct !DILocation(line: 476, column: 7, scope: !209, inlinedAt: !1082)
!1143 = !DILocation(line: 422, column: 3, scope: !1136, inlinedAt: !1142)
!1144 = !DILocation(line: 480, column: 7, scope: !1145, inlinedAt: !1082)
!1145 = distinct !DILexicalBlock(scope: !210, file: !3, line: 479, column: 5)
!1146 = !DILocation(line: 481, column: 19, scope: !1147, inlinedAt: !1082)
!1147 = distinct !DILexicalBlock(scope: !1145, file: !3, line: 481, column: 11)
!1148 = !DILocation(line: 481, column: 11, scope: !1147, inlinedAt: !1082)
!1149 = !DILocation(line: 481, column: 40, scope: !1147, inlinedAt: !1082)
!1150 = !DILocation(line: 482, column: 11, scope: !1147, inlinedAt: !1082)
!1151 = !DILocation(line: 482, column: 33, scope: !1152, inlinedAt: !1082)
!1152 = !DILexicalBlockFile(scope: !1147, file: !3, discriminator: 1)
!1153 = !DILocation(line: 482, column: 25, scope: !1152, inlinedAt: !1082)
!1154 = !DILocation(line: 482, column: 14, scope: !1155, inlinedAt: !1082)
!1155 = !DILexicalBlockFile(scope: !1147, file: !3, discriminator: 2)
!1156 = !DILocation(line: 482, column: 45, scope: !1152, inlinedAt: !1082)
!1157 = !DILocation(line: 481, column: 11, scope: !1158, inlinedAt: !1082)
!1158 = !DILexicalBlockFile(scope: !1145, file: !3, discriminator: 1)
!1159 = !DILocation(line: 484, column: 21, scope: !1160, inlinedAt: !1082)
!1160 = distinct !DILexicalBlock(scope: !1147, file: !3, line: 483, column: 9)
!1161 = !DILocation(line: 484, column: 28, scope: !1162, inlinedAt: !1082)
!1162 = !DILexicalBlockFile(scope: !1160, file: !3, discriminator: 1)
!1163 = !DILocation(line: 485, column: 18, scope: !1160, inlinedAt: !1082)
!1164 = !DILocation(line: 484, column: 11, scope: !1165, inlinedAt: !1082)
!1165 = !DILexicalBlockFile(scope: !1160, file: !3, discriminator: 2)
!1166 = !DILocation(line: 486, column: 11, scope: !1160, inlinedAt: !1082)
!1167 = !DILocation(line: 490, column: 9, scope: !145, inlinedAt: !1082)
!1168 = !DILocation(line: 491, column: 16, scope: !145, inlinedAt: !1082)
!1169 = !DILocation(line: 505, column: 7, scope: !1058, inlinedAt: !1074)
!1170 = !DILocation(line: 510, column: 48, scope: !1072, inlinedAt: !1074)
!1171 = !DILocation(line: 510, column: 58, scope: !1072, inlinedAt: !1074)
!1172 = !DILocation(line: 510, column: 27, scope: !1072, inlinedAt: !1074)
!1173 = !DILocation(line: 510, column: 14, scope: !1072, inlinedAt: !1074)
!1174 = !DILocation(line: 511, column: 11, scope: !1072, inlinedAt: !1074)
!1175 = !DILocation(line: 515, column: 21, scope: !1176, inlinedAt: !1074)
!1176 = distinct !DILexicalBlock(scope: !1177, file: !3, line: 514, column: 9)
!1177 = distinct !DILexicalBlock(scope: !1072, file: !3, line: 513, column: 11)
!1178 = !DILocation(line: 515, column: 28, scope: !1179, inlinedAt: !1074)
!1179 = !DILexicalBlockFile(scope: !1176, file: !3, discriminator: 1)
!1180 = !DILocation(line: 515, column: 49, scope: !1181, inlinedAt: !1074)
!1181 = !DILexicalBlockFile(scope: !1176, file: !3, discriminator: 2)
!1182 = !DILocation(line: 515, column: 11, scope: !1183, inlinedAt: !1074)
!1183 = !DILexicalBlockFile(scope: !1176, file: !3, discriminator: 3)
!1184 = !DILocation(line: 516, column: 11, scope: !1176, inlinedAt: !1074)
!1185 = !DILocation(line: 519, column: 11, scope: !1186, inlinedAt: !1074)
!1186 = distinct !DILexicalBlock(scope: !1072, file: !3, line: 519, column: 11)
!1187 = !DILocation(line: 519, column: 48, scope: !1186, inlinedAt: !1074)
!1188 = !DILocation(line: 528, column: 20, scope: !1072, inlinedAt: !1074)
!1189 = !DILocation(line: 519, column: 11, scope: !1072, inlinedAt: !1074)
!1190 = !DILocation(line: 521, column: 21, scope: !1191, inlinedAt: !1074)
!1191 = distinct !DILexicalBlock(scope: !1186, file: !3, line: 520, column: 9)
!1192 = !DILocation(line: 521, column: 28, scope: !1193, inlinedAt: !1074)
!1193 = !DILexicalBlockFile(scope: !1191, file: !3, discriminator: 1)
!1194 = !DILocation(line: 521, column: 50, scope: !1191, inlinedAt: !1074)
!1195 = !DILocation(line: 521, column: 50, scope: !1196, inlinedAt: !1074)
!1196 = !DILexicalBlockFile(scope: !1191, file: !3, discriminator: 2)
!1197 = !DILocation(line: 521, column: 11, scope: !1198, inlinedAt: !1074)
!1198 = !DILexicalBlockFile(scope: !1191, file: !3, discriminator: 3)
!1199 = !DILocation(line: 522, column: 11, scope: !1191, inlinedAt: !1074)
!1200 = !DILocation(line: 531, column: 7, scope: !1201, inlinedAt: !1074)
!1201 = distinct !DILexicalBlock(scope: !1058, file: !3, line: 531, column: 7)
!1202 = !DILocation(line: 531, column: 19, scope: !1201, inlinedAt: !1074)
!1203 = !DILocation(line: 531, column: 7, scope: !1058, inlinedAt: !1074)
!1204 = !DILocation(line: 533, column: 17, scope: !1205, inlinedAt: !1074)
!1205 = distinct !DILexicalBlock(scope: !1201, file: !3, line: 532, column: 5)
!1206 = !DILocation(line: 533, column: 24, scope: !1207, inlinedAt: !1074)
!1207 = !DILexicalBlockFile(scope: !1205, file: !3, discriminator: 1)
!1208 = !DILocation(line: 533, column: 46, scope: !1205, inlinedAt: !1074)
!1209 = !DILocation(line: 533, column: 46, scope: !1210, inlinedAt: !1074)
!1210 = !DILexicalBlockFile(scope: !1205, file: !3, discriminator: 2)
!1211 = !DILocation(line: 533, column: 7, scope: !1212, inlinedAt: !1074)
!1212 = !DILexicalBlockFile(scope: !1205, file: !3, discriminator: 3)
!1213 = !DILocation(line: 534, column: 7, scope: !1205, inlinedAt: !1074)
!1214 = !DILocation(line: 550, column: 9, scope: !1042, inlinedAt: !1052)
!1215 = !DILocation(line: 551, column: 20, scope: !1216, inlinedAt: !1052)
!1216 = distinct !DILexicalBlock(scope: !1042, file: !3, line: 551, column: 7)
!1217 = !DILocation(line: 551, column: 7, scope: !1042, inlinedAt: !1052)
!1218 = !DILocation(line: 554, column: 27, scope: !1042, inlinedAt: !1052)
!1219 = !DILocation(line: 554, column: 48, scope: !1042, inlinedAt: !1052)
!1220 = !DILocation(line: 554, column: 13, scope: !1221, inlinedAt: !1052)
!1221 = !DILexicalBlockFile(scope: !1042, file: !3, discriminator: 1)
!1222 = !DILocation(line: 592, column: 11, scope: !984, inlinedAt: !1000)
!1223 = !DILocation(line: 590, column: 9, scope: !1224, inlinedAt: !1000)
!1224 = !DILexicalBlockFile(scope: !984, file: !3, discriminator: 3)
!1225 = !DILocation(line: 590, column: 6, scope: !1226, inlinedAt: !1000)
!1226 = !DILexicalBlockFile(scope: !984, file: !3, discriminator: 4)
!1227 = !DILocation(line: 565, column: 8, scope: !984, inlinedAt: !1000)
!1228 = !DILocation(line: 594, column: 17, scope: !1229, inlinedAt: !1000)
!1229 = distinct !DILexicalBlock(scope: !984, file: !3, line: 594, column: 7)
!1230 = !DILocation(line: 594, column: 20, scope: !1231, inlinedAt: !1000)
!1231 = !DILexicalBlockFile(scope: !1229, file: !3, discriminator: 1)
!1232 = !DILocation(line: 594, column: 31, scope: !1231, inlinedAt: !1000)
!1233 = !DILocation(line: 594, column: 7, scope: !1039, inlinedAt: !1000)
!1234 = !DILocation(line: 596, column: 17, scope: !1235, inlinedAt: !1000)
!1235 = distinct !DILexicalBlock(scope: !1229, file: !3, line: 595, column: 5)
!1236 = !DILocation(line: 596, column: 24, scope: !1237, inlinedAt: !1000)
!1237 = !DILexicalBlockFile(scope: !1235, file: !3, discriminator: 1)
!1238 = !DILocation(line: 596, column: 45, scope: !1239, inlinedAt: !1000)
!1239 = !DILexicalBlockFile(scope: !1235, file: !3, discriminator: 2)
!1240 = !DILocation(line: 596, column: 7, scope: !1241, inlinedAt: !1000)
!1241 = !DILexicalBlockFile(scope: !1235, file: !3, discriminator: 3)
!1242 = !DILocation(line: 598, column: 5, scope: !1235, inlinedAt: !1000)
!1243 = !DILocation(line: 599, column: 10, scope: !984, inlinedAt: !1000)
!1244 = !DILocation(line: 599, column: 3, scope: !984, inlinedAt: !1000)
!1245 = !DILocation(line: 696, column: 13, scope: !979)
!1246 = !DILocation(line: 696, column: 10, scope: !979)
!1247 = !DILocation(line: 695, column: 26, scope: !1248)
!1248 = !DILexicalBlockFile(scope: !979, file: !3, discriminator: 2)
!1249 = distinct !{!1249, !1250, !1251}
!1250 = !DILocation(line: 695, column: 5, scope: !980)
!1251 = !DILocation(line: 696, column: 30, scope: !980)
!1252 = !DILocation(line: 159, column: 21, scope: !227, inlinedAt: !1253)
!1253 = distinct !DILocation(line: 700, column: 3, scope: !38)
!1254 = !DILocation(line: 159, column: 40, scope: !227, inlinedAt: !1253)
!1255 = !DILocation(line: 163, column: 10, scope: !227, inlinedAt: !1253)
!1256 = !DILocation(line: 164, column: 40, scope: !227, inlinedAt: !1253)
!1257 = !DILocation(line: 168, column: 7, scope: !1258, inlinedAt: !1253)
!1258 = distinct !DILexicalBlock(scope: !1259, file: !3, line: 167, column: 5)
!1259 = distinct !DILexicalBlock(scope: !227, file: !3, line: 166, column: 7)
!1260 = !DILocation(line: 169, column: 23, scope: !1258, inlinedAt: !1253)
!1261 = !DILocation(line: 702, column: 23, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !38, file: !3, line: 702, column: 7)
!1263 = !DILocation(line: 702, column: 26, scope: !1264)
!1264 = !DILexicalBlockFile(scope: !1262, file: !3, discriminator: 1)
!1265 = !DILocation(line: 702, column: 47, scope: !1264)
!1266 = !DILocation(line: 702, column: 7, scope: !887)
!1267 = !DILocation(line: 704, column: 17, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1262, file: !3, line: 703, column: 5)
!1269 = !DILocation(line: 704, column: 7, scope: !1270)
!1270 = !DILexicalBlockFile(scope: !1268, file: !3, discriminator: 1)
!1271 = !DILocation(line: 706, column: 5, scope: !1268)
!1272 = !DILocation(line: 713, column: 10, scope: !38)
!1273 = !DILocation(line: 714, column: 1, scope: !38)
!1274 = distinct !DISubprogram(name: "tac_seekable", scope: !3, file: !3, line: 193, type: !1275, isLocal: true, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1277)
!1275 = !DISubroutineType(types: !1276)
!1276 = !{!49, !41, !25, !991}
!1277 = !{!1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1291, !1293, !1297, !1298, !1299, !1300, !1305, !1306, !1307}
!1278 = !DILocalVariable(name: "input_fd", arg: 1, scope: !1274, file: !3, line: 193, type: !41)
!1279 = !DILocalVariable(name: "file", arg: 2, scope: !1274, file: !3, line: 193, type: !25)
!1280 = !DILocalVariable(name: "file_pos", arg: 3, scope: !1274, file: !3, line: 193, type: !991)
!1281 = !DILocalVariable(name: "match_start", scope: !1274, file: !3, line: 197, type: !20)
!1282 = !DILocalVariable(name: "past_end", scope: !1274, file: !3, line: 201, type: !20)
!1283 = !DILocalVariable(name: "saved_record_size", scope: !1274, file: !3, line: 204, type: !27)
!1284 = !DILocalVariable(name: "first_time", scope: !1274, file: !3, line: 208, type: !49)
!1285 = !DILocalVariable(name: "first_char", scope: !1274, file: !3, line: 209, type: !21)
!1286 = !DILocalVariable(name: "separator1", scope: !1274, file: !3, line: 210, type: !25)
!1287 = !DILocalVariable(name: "match_length1", scope: !1274, file: !3, line: 211, type: !27)
!1288 = !DILocalVariable(name: "remainder", scope: !1274, file: !3, line: 218, type: !27)
!1289 = !DILocalVariable(name: "rsize", scope: !1290, file: !3, line: 231, type: !991)
!1290 = distinct !DILexicalBlock(scope: !1274, file: !3, line: 230, column: 5)
!1291 = !DILocalVariable(name: "nread", scope: !1292, file: !3, line: 240, type: !27)
!1292 = distinct !DILexicalBlock(scope: !1274, file: !3, line: 239, column: 5)
!1293 = !DILocalVariable(name: "i", scope: !1294, file: !3, line: 270, type: !27)
!1294 = distinct !DILexicalBlock(scope: !1295, file: !3, line: 269, column: 9)
!1295 = distinct !DILexicalBlock(scope: !1296, file: !3, line: 268, column: 11)
!1296 = distinct !DILexicalBlock(scope: !1274, file: !3, line: 261, column: 5)
!1297 = !DILocalVariable(name: "ri", scope: !1294, file: !3, line: 271, type: !223)
!1298 = !DILocalVariable(name: "range", scope: !1294, file: !3, line: 272, type: !223)
!1299 = !DILocalVariable(name: "ret", scope: !1294, file: !3, line: 273, type: !223)
!1300 = !DILocalVariable(name: "newbuffer", scope: !1301, file: !3, line: 321, type: !20)
!1301 = distinct !DILexicalBlock(scope: !1302, file: !3, line: 316, column: 13)
!1302 = distinct !DILexicalBlock(scope: !1303, file: !3, line: 315, column: 15)
!1303 = distinct !DILexicalBlock(scope: !1304, file: !3, line: 306, column: 9)
!1304 = distinct !DILexicalBlock(scope: !1296, file: !3, line: 305, column: 11)
!1305 = !DILocalVariable(name: "offset", scope: !1301, file: !3, line: 322, type: !27)
!1306 = !DILocalVariable(name: "old_G_buffer_size", scope: !1301, file: !3, line: 323, type: !27)
!1307 = !DILocalVariable(name: "match_end", scope: !1308, file: !3, line: 366, type: !20)
!1308 = distinct !DILexicalBlock(scope: !1309, file: !3, line: 365, column: 13)
!1309 = distinct !DILexicalBlock(scope: !1310, file: !3, line: 364, column: 15)
!1310 = distinct !DILexicalBlock(scope: !1304, file: !3, line: 362, column: 9)
!1311 = !DILocation(line: 193, column: 19, scope: !1274)
!1312 = !DILocation(line: 193, column: 41, scope: !1274)
!1313 = !DILocation(line: 193, column: 53, scope: !1274)
!1314 = !DILocation(line: 208, column: 8, scope: !1274)
!1315 = !DILocation(line: 209, column: 22, scope: !1274)
!1316 = !DILocation(line: 209, column: 21, scope: !1274)
!1317 = !DILocation(line: 209, column: 8, scope: !1274)
!1318 = !DILocation(line: 210, column: 38, scope: !1274)
!1319 = !DILocation(line: 210, column: 15, scope: !1274)
!1320 = !DILocation(line: 211, column: 26, scope: !1274)
!1321 = !DILocation(line: 211, column: 39, scope: !1274)
!1322 = !DILocation(line: 211, column: 10, scope: !1274)
!1323 = !DILocation(line: 218, column: 33, scope: !1274)
!1324 = !DILocation(line: 218, column: 31, scope: !1274)
!1325 = !DILocation(line: 218, column: 10, scope: !1274)
!1326 = !DILocation(line: 219, column: 17, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1274, file: !3, line: 219, column: 7)
!1328 = !DILocation(line: 219, column: 7, scope: !1274)
!1329 = !DILocation(line: 221, column: 16, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1327, file: !3, line: 220, column: 5)
!1331 = !DILocation(line: 222, column: 11, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1330, file: !3, line: 222, column: 11)
!1333 = !DILocation(line: 222, column: 48, scope: !1332)
!1334 = !DILocation(line: 222, column: 11, scope: !1330)
!1335 = !DILocation(line: 223, column: 19, scope: !1332)
!1336 = !DILocation(line: 223, column: 26, scope: !1337)
!1337 = !DILexicalBlockFile(scope: !1332, file: !3, discriminator: 1)
!1338 = !DILocation(line: 223, column: 48, scope: !1339)
!1339 = !DILexicalBlockFile(scope: !1332, file: !3, discriminator: 2)
!1340 = !DILocation(line: 223, column: 9, scope: !1341)
!1341 = !DILexicalBlockFile(scope: !1332, file: !3, discriminator: 3)
!1342 = !DILocation(line: 223, column: 9, scope: !1332)
!1343 = !DILocation(line: 228, column: 52, scope: !1344)
!1344 = !DILexicalBlockFile(scope: !1274, file: !3, discriminator: 1)
!1345 = !DILocation(line: 228, column: 62, scope: !1344)
!1346 = !DILocation(line: 228, column: 31, scope: !1344)
!1347 = !DILocation(line: 204, column: 10, scope: !1274)
!1348 = !DILocation(line: 228, column: 74, scope: !1344)
!1349 = !DILocation(line: 229, column: 22, scope: !1344)
!1350 = !DILocation(line: 229, column: 10, scope: !1274)
!1351 = !DILocation(line: 228, column: 3, scope: !1352)
!1352 = !DILexicalBlockFile(scope: !1274, file: !3, discriminator: 2)
!1353 = !DILocation(line: 231, column: 21, scope: !1290)
!1354 = !DILocation(line: 238, column: 31, scope: !1344)
!1355 = !DILocation(line: 238, column: 28, scope: !1344)
!1356 = !DILocation(line: 238, column: 3, scope: !1344)
!1357 = !DILocation(line: 240, column: 43, scope: !1292)
!1358 = !DILocation(line: 231, column: 13, scope: !1290)
!1359 = !DILocation(line: 232, column: 28, scope: !1360)
!1360 = distinct !DILexicalBlock(scope: !1290, file: !3, line: 232, column: 11)
!1361 = !DILocation(line: 232, column: 11, scope: !1360)
!1362 = !DILocation(line: 232, column: 46, scope: !1360)
!1363 = !DILocation(line: 232, column: 11, scope: !1290)
!1364 = !DILocation(line: 233, column: 19, scope: !1360)
!1365 = !DILocation(line: 233, column: 26, scope: !1366)
!1366 = !DILexicalBlockFile(scope: !1360, file: !3, discriminator: 1)
!1367 = !DILocation(line: 233, column: 48, scope: !1368)
!1368 = !DILexicalBlockFile(scope: !1360, file: !3, discriminator: 2)
!1369 = !DILocation(line: 233, column: 9, scope: !1370)
!1370 = !DILexicalBlockFile(scope: !1360, file: !3, discriminator: 3)
!1371 = !DILocation(line: 233, column: 9, scope: !1360)
!1372 = !DILocation(line: 234, column: 19, scope: !1290)
!1373 = !DILocation(line: 234, column: 16, scope: !1290)
!1374 = distinct !{!1374, !1375, !1376}
!1375 = !DILocation(line: 228, column: 3, scope: !1274)
!1376 = !DILocation(line: 235, column: 5, scope: !1274)
!1377 = !DILocation(line: 240, column: 22, scope: !1292)
!1378 = !DILocation(line: 240, column: 14, scope: !1292)
!1379 = !DILocation(line: 241, column: 11, scope: !1292)
!1380 = !DILocation(line: 246, column: 16, scope: !1292)
!1381 = !DILocation(line: 249, column: 25, scope: !1382)
!1382 = distinct !DILexicalBlock(scope: !1274, file: !3, line: 249, column: 7)
!1383 = !DILocation(line: 249, column: 7, scope: !1274)
!1384 = !DILocation(line: 251, column: 17, scope: !1385)
!1385 = distinct !DILexicalBlock(scope: !1382, file: !3, line: 250, column: 5)
!1386 = !DILocation(line: 251, column: 24, scope: !1387)
!1387 = !DILexicalBlockFile(scope: !1385, file: !3, discriminator: 1)
!1388 = !DILocation(line: 251, column: 45, scope: !1389)
!1389 = !DILexicalBlockFile(scope: !1385, file: !3, discriminator: 2)
!1390 = !DILocation(line: 251, column: 7, scope: !1391)
!1391 = !DILexicalBlockFile(scope: !1385, file: !3, discriminator: 3)
!1392 = !DILocation(line: 252, column: 7, scope: !1385)
!1393 = !DILocation(line: 255, column: 28, scope: !1274)
!1394 = !DILocation(line: 255, column: 37, scope: !1274)
!1395 = !DILocation(line: 201, column: 9, scope: !1274)
!1396 = !DILocation(line: 197, column: 9, scope: !1274)
!1397 = !DILocation(line: 257, column: 7, scope: !1398)
!1398 = distinct !DILexicalBlock(scope: !1274, file: !3, line: 257, column: 7)
!1399 = !DILocation(line: 258, column: 17, scope: !1398)
!1400 = !DILocation(line: 257, column: 7, scope: !1274)
!1401 = !DILocation(line: 268, column: 11, scope: !1295)
!1402 = !DILocation(line: 268, column: 27, scope: !1295)
!1403 = !DILocation(line: 268, column: 11, scope: !1296)
!1404 = !DILocation(line: 270, column: 36, scope: !1294)
!1405 = !DILocation(line: 270, column: 34, scope: !1294)
!1406 = !DILocation(line: 270, column: 18, scope: !1294)
!1407 = !DILocation(line: 271, column: 25, scope: !1294)
!1408 = !DILocation(line: 271, column: 20, scope: !1294)
!1409 = !DILocation(line: 272, column: 30, scope: !1294)
!1410 = !DILocation(line: 272, column: 20, scope: !1294)
!1411 = !DILocation(line: 275, column: 17, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !1294, file: !3, line: 275, column: 15)
!1413 = !DILocation(line: 275, column: 15, scope: !1294)
!1414 = !DILocation(line: 276, column: 13, scope: !1412)
!1415 = !DILocation(line: 276, column: 13, scope: !1416)
!1416 = !DILexicalBlockFile(scope: !1412, file: !3, discriminator: 1)
!1417 = !DILocation(line: 278, column: 21, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1294, file: !3, line: 278, column: 15)
!1419 = !DILocation(line: 279, column: 15, scope: !1418)
!1420 = !DILocation(line: 280, column: 42, scope: !1418)
!1421 = !DILocation(line: 280, column: 40, scope: !1418)
!1422 = !DILocation(line: 279, column: 26, scope: !1423)
!1423 = !DILexicalBlockFile(scope: !1418, file: !3, discriminator: 1)
!1424 = !DILocation(line: 273, column: 20, scope: !1294)
!1425 = !DILocation(line: 278, column: 15, scope: !1426)
!1426 = !DILexicalBlockFile(scope: !1294, file: !3, discriminator: 1)
!1427 = !DILocation(line: 285, column: 15, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1429, file: !3, line: 284, column: 13)
!1429 = distinct !DILexicalBlock(scope: !1418, file: !3, line: 283, column: 20)
!1430 = !DILocation(line: 285, column: 15, scope: !1431)
!1431 = !DILexicalBlockFile(scope: !1428, file: !3, discriminator: 1)
!1432 = !DILocation(line: 290, column: 29, scope: !1433)
!1433 = distinct !DILexicalBlock(scope: !1429, file: !3, line: 289, column: 13)
!1434 = !DILocation(line: 290, column: 45, scope: !1433)
!1435 = !{!1436, !819, i64 8}
!1436 = !{!"re_registers", !971, i64 0, !819, i64 8, !819, i64 16}
!1437 = !DILocation(line: 290, column: 40, scope: !1433)
!1438 = !DILocation(line: 290, column: 38, scope: !1433)
!1439 = !DILocation(line: 291, column: 35, scope: !1433)
!1440 = !{!1436, !819, i64 16}
!1441 = !DILocation(line: 291, column: 30, scope: !1433)
!1442 = !DILocation(line: 291, column: 42, scope: !1433)
!1443 = !DILocation(line: 291, column: 28, scope: !1433)
!1444 = !DILocation(line: 297, column: 19, scope: !1445)
!1445 = !DILexicalBlockFile(scope: !1446, file: !3, discriminator: 1)
!1446 = distinct !DILexicalBlock(scope: !1295, file: !3, line: 295, column: 9)
!1447 = !DILocation(line: 297, column: 18, scope: !1445)
!1448 = !DILocation(line: 297, column: 33, scope: !1445)
!1449 = !DILocation(line: 298, column: 18, scope: !1446)
!1450 = distinct !{!1450, !1451, !1452}
!1451 = !DILocation(line: 297, column: 11, scope: !1446)
!1452 = !DILocation(line: 300, column: 31, scope: !1446)
!1453 = !DILocation(line: 298, column: 36, scope: !1445)
!1454 = !DILocation(line: 298, column: 40, scope: !1455)
!1455 = !DILexicalBlockFile(scope: !1446, file: !3, discriminator: 2)
!1456 = !DILocation(line: 298, column: 39, scope: !1455)
!1457 = !DILocation(line: 297, column: 11, scope: !1455)
!1458 = !DILocation(line: 305, column: 25, scope: !1304)
!1459 = !DILocation(line: 305, column: 23, scope: !1304)
!1460 = !DILocation(line: 305, column: 11, scope: !1296)
!1461 = !DILocation(line: 307, column: 24, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1303, file: !3, line: 307, column: 15)
!1463 = !DILocation(line: 329, column: 37, scope: !1301)
!1464 = !DILocation(line: 307, column: 15, scope: !1303)
!1465 = !DILocation(line: 159, column: 21, scope: !227, inlinedAt: !1466)
!1466 = distinct !DILocation(line: 310, column: 15, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1462, file: !3, line: 308, column: 13)
!1468 = !DILocation(line: 159, column: 40, scope: !227, inlinedAt: !1466)
!1469 = !DILocation(line: 163, column: 10, scope: !227, inlinedAt: !1466)
!1470 = !DILocation(line: 164, column: 40, scope: !227, inlinedAt: !1466)
!1471 = !DILocation(line: 164, column: 38, scope: !227, inlinedAt: !1466)
!1472 = !DILocation(line: 164, column: 10, scope: !227, inlinedAt: !1466)
!1473 = !DILocation(line: 166, column: 13, scope: !1259, inlinedAt: !1466)
!1474 = !DILocation(line: 166, column: 7, scope: !227, inlinedAt: !1466)
!1475 = !DILocation(line: 174, column: 23, scope: !1476, inlinedAt: !1466)
!1476 = !DILexicalBlockFile(scope: !227, file: !3, discriminator: 1)
!1477 = !DILocation(line: 174, column: 3, scope: !1476, inlinedAt: !1466)
!1478 = !DILocation(line: 176, column: 7, scope: !1479, inlinedAt: !1466)
!1479 = distinct !DILexicalBlock(scope: !227, file: !3, line: 175, column: 5)
!1480 = !DILocation(line: 168, column: 7, scope: !1258, inlinedAt: !1466)
!1481 = !DILocation(line: 170, column: 7, scope: !1258, inlinedAt: !1466)
!1482 = !DILocation(line: 177, column: 20, scope: !1479, inlinedAt: !1466)
!1483 = !DILocation(line: 178, column: 13, scope: !1479, inlinedAt: !1466)
!1484 = !DILocation(line: 179, column: 7, scope: !1479, inlinedAt: !1466)
!1485 = !DILocation(line: 180, column: 23, scope: !1479, inlinedAt: !1466)
!1486 = distinct !{!1486, !1487, !1488}
!1487 = !DILocation(line: 174, column: 3, scope: !227)
!1488 = !DILocation(line: 182, column: 5, scope: !227)
!1489 = !DILocation(line: 184, column: 3, scope: !227, inlinedAt: !1466)
!1490 = !DILocation(line: 185, column: 19, scope: !227, inlinedAt: !1466)
!1491 = !DILocation(line: 186, column: 1, scope: !227, inlinedAt: !1466)
!1492 = !DILocation(line: 169, column: 23, scope: !1258, inlinedAt: !1466)
!1493 = !DILocation(line: 311, column: 15, scope: !1467)
!1494 = !DILocation(line: 315, column: 35, scope: !1302)
!1495 = !DILocation(line: 315, column: 33, scope: !1302)
!1496 = !DILocation(line: 315, column: 15, scope: !1303)
!1497 = !DILocation(line: 322, column: 31, scope: !1301)
!1498 = !DILocation(line: 322, column: 22, scope: !1301)
!1499 = !DILocation(line: 323, column: 42, scope: !1301)
!1500 = !DILocation(line: 323, column: 22, scope: !1301)
!1501 = !DILocation(line: 325, column: 25, scope: !1301)
!1502 = !DILocation(line: 326, column: 41, scope: !1301)
!1503 = !DILocation(line: 326, column: 45, scope: !1301)
!1504 = !DILocation(line: 326, column: 63, scope: !1301)
!1505 = !DILocation(line: 326, column: 29, scope: !1301)
!1506 = !DILocation(line: 327, column: 33, scope: !1507)
!1507 = distinct !DILexicalBlock(scope: !1301, file: !3, line: 327, column: 19)
!1508 = !DILocation(line: 327, column: 19, scope: !1301)
!1509 = !DILocation(line: 328, column: 17, scope: !1507)
!1510 = !DILocation(line: 329, column: 46, scope: !1301)
!1511 = !DILocation(line: 329, column: 27, scope: !1301)
!1512 = !DILocation(line: 321, column: 21, scope: !1301)
!1513 = !DILocation(line: 330, column: 25, scope: !1301)
!1514 = !DILocation(line: 331, column: 24, scope: !1301)
!1515 = !DILocation(line: 332, column: 13, scope: !1301)
!1516 = !DILocation(line: 335, column: 27, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !1303, file: !3, line: 335, column: 15)
!1518 = !DILocation(line: 335, column: 24, scope: !1517)
!1519 = !DILocation(line: 335, column: 15, scope: !1303)
!1520 = !DILocation(line: 336, column: 22, scope: !1517)
!1521 = !DILocation(line: 336, column: 13, scope: !1517)
!1522 = !DILocation(line: 339, column: 25, scope: !1523)
!1523 = distinct !DILexicalBlock(scope: !1517, file: !3, line: 338, column: 13)
!1524 = !DILocation(line: 342, column: 15, scope: !1525)
!1525 = distinct !DILexicalBlock(scope: !1303, file: !3, line: 342, column: 15)
!1526 = !DILocation(line: 342, column: 52, scope: !1525)
!1527 = !DILocation(line: 342, column: 15, scope: !1303)
!1528 = !DILocation(line: 343, column: 23, scope: !1525)
!1529 = !DILocation(line: 343, column: 30, scope: !1530)
!1530 = !DILexicalBlockFile(scope: !1525, file: !3, discriminator: 1)
!1531 = !DILocation(line: 343, column: 52, scope: !1532)
!1532 = !DILexicalBlockFile(scope: !1525, file: !3, discriminator: 2)
!1533 = !DILocation(line: 343, column: 13, scope: !1534)
!1534 = !DILexicalBlockFile(scope: !1525, file: !3, discriminator: 3)
!1535 = !DILocation(line: 343, column: 13, scope: !1525)
!1536 = !DILocation(line: 347, column: 20, scope: !1303)
!1537 = !DILocation(line: 347, column: 31, scope: !1303)
!1538 = !DILocation(line: 347, column: 29, scope: !1303)
!1539 = !DILocation(line: 347, column: 11, scope: !1303)
!1540 = !DILocation(line: 348, column: 43, scope: !1303)
!1541 = !DILocation(line: 350, column: 15, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1303, file: !3, line: 350, column: 15)
!1543 = !DILocation(line: 355, column: 15, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !1303, file: !3, line: 355, column: 15)
!1545 = !DILocation(line: 355, column: 60, scope: !1544)
!1546 = !DILocation(line: 355, column: 57, scope: !1544)
!1547 = !DILocation(line: 355, column: 15, scope: !1303)
!1548 = distinct !{!1548, !1549, !1550}
!1549 = !DILocation(line: 260, column: 3, scope: !1274)
!1550 = !DILocation(line: 385, column: 5, scope: !1274)
!1551 = !DILocation(line: 357, column: 25, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1544, file: !3, line: 356, column: 13)
!1553 = !DILocation(line: 357, column: 32, scope: !1554)
!1554 = !DILexicalBlockFile(scope: !1552, file: !3, discriminator: 1)
!1555 = !DILocation(line: 357, column: 53, scope: !1556)
!1556 = !DILexicalBlockFile(scope: !1552, file: !3, discriminator: 2)
!1557 = !DILocation(line: 357, column: 15, scope: !1558)
!1558 = !DILexicalBlockFile(scope: !1552, file: !3, discriminator: 3)
!1559 = !DILocation(line: 358, column: 15, scope: !1552)
!1560 = !DILocation(line: 364, column: 15, scope: !1310)
!1561 = !DILocation(line: 366, column: 47, scope: !1308)
!1562 = !DILocation(line: 366, column: 45, scope: !1308)
!1563 = !DILocation(line: 366, column: 21, scope: !1308)
!1564 = !DILocation(line: 370, column: 20, scope: !1565)
!1565 = distinct !DILexicalBlock(scope: !1308, file: !3, line: 370, column: 19)
!1566 = !DILocation(line: 370, column: 44, scope: !1567)
!1567 = !DILexicalBlockFile(scope: !1565, file: !3, discriminator: 1)
!1568 = !DILocation(line: 370, column: 31, scope: !1565)
!1569 = !DILocation(line: 159, column: 21, scope: !227, inlinedAt: !1570)
!1570 = distinct !DILocation(line: 371, column: 17, scope: !1565)
!1571 = !DILocation(line: 159, column: 40, scope: !227, inlinedAt: !1570)
!1572 = !DILocation(line: 163, column: 34, scope: !227, inlinedAt: !1570)
!1573 = !DILocation(line: 163, column: 10, scope: !227, inlinedAt: !1570)
!1574 = !DILocation(line: 164, column: 40, scope: !227, inlinedAt: !1570)
!1575 = !DILocation(line: 164, column: 38, scope: !227, inlinedAt: !1570)
!1576 = !DILocation(line: 164, column: 10, scope: !227, inlinedAt: !1570)
!1577 = !DILocation(line: 166, column: 13, scope: !1259, inlinedAt: !1570)
!1578 = !DILocation(line: 166, column: 7, scope: !227, inlinedAt: !1570)
!1579 = !DILocation(line: 174, column: 23, scope: !1476, inlinedAt: !1570)
!1580 = !DILocation(line: 174, column: 3, scope: !1476, inlinedAt: !1570)
!1581 = !DILocation(line: 176, column: 7, scope: !1479, inlinedAt: !1570)
!1582 = !DILocation(line: 168, column: 7, scope: !1258, inlinedAt: !1570)
!1583 = !DILocation(line: 170, column: 7, scope: !1258, inlinedAt: !1570)
!1584 = !DILocation(line: 177, column: 20, scope: !1479, inlinedAt: !1570)
!1585 = !DILocation(line: 178, column: 13, scope: !1479, inlinedAt: !1570)
!1586 = !DILocation(line: 179, column: 7, scope: !1479, inlinedAt: !1570)
!1587 = !DILocation(line: 180, column: 23, scope: !1479, inlinedAt: !1570)
!1588 = !DILocation(line: 184, column: 3, scope: !227, inlinedAt: !1570)
!1589 = !DILocation(line: 185, column: 19, scope: !227, inlinedAt: !1570)
!1590 = !DILocation(line: 186, column: 1, scope: !227, inlinedAt: !1570)
!1591 = !DILocation(line: 159, column: 21, scope: !227, inlinedAt: !1592)
!1592 = distinct !DILocation(line: 377, column: 15, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !1309, file: !3, line: 376, column: 13)
!1594 = !DILocation(line: 159, column: 40, scope: !227, inlinedAt: !1592)
!1595 = !DILocation(line: 163, column: 34, scope: !227, inlinedAt: !1592)
!1596 = !DILocation(line: 163, column: 10, scope: !227, inlinedAt: !1592)
!1597 = !DILocation(line: 164, column: 40, scope: !227, inlinedAt: !1592)
!1598 = !DILocation(line: 164, column: 38, scope: !227, inlinedAt: !1592)
!1599 = !DILocation(line: 164, column: 10, scope: !227, inlinedAt: !1592)
!1600 = !DILocation(line: 166, column: 13, scope: !1259, inlinedAt: !1592)
!1601 = !DILocation(line: 166, column: 7, scope: !227, inlinedAt: !1592)
!1602 = !DILocation(line: 174, column: 23, scope: !1476, inlinedAt: !1592)
!1603 = !DILocation(line: 174, column: 3, scope: !1476, inlinedAt: !1592)
!1604 = !DILocation(line: 176, column: 7, scope: !1479, inlinedAt: !1592)
!1605 = !DILocation(line: 168, column: 7, scope: !1258, inlinedAt: !1592)
!1606 = !DILocation(line: 170, column: 7, scope: !1258, inlinedAt: !1592)
!1607 = !DILocation(line: 177, column: 20, scope: !1479, inlinedAt: !1592)
!1608 = !DILocation(line: 178, column: 13, scope: !1479, inlinedAt: !1592)
!1609 = !DILocation(line: 179, column: 7, scope: !1479, inlinedAt: !1592)
!1610 = !DILocation(line: 180, column: 23, scope: !1479, inlinedAt: !1592)
!1611 = !DILocation(line: 184, column: 3, scope: !227, inlinedAt: !1592)
!1612 = !DILocation(line: 185, column: 19, scope: !227, inlinedAt: !1592)
!1613 = !DILocation(line: 186, column: 1, scope: !227, inlinedAt: !1592)
!1614 = !DILocation(line: 169, column: 23, scope: !1258, inlinedAt: !1570)
!1615 = !DILocation(line: 382, column: 15, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1310, file: !3, line: 382, column: 15)
!1617 = !DILocation(line: 382, column: 31, scope: !1616)
!1618 = !DILocation(line: 382, column: 15, scope: !1310)
!1619 = !DILocation(line: 383, column: 28, scope: !1616)
!1620 = !DILocation(line: 383, column: 25, scope: !1616)
!1621 = !DILocation(line: 383, column: 13, scope: !1616)
!1622 = !DILocation(line: 386, column: 1, scope: !1274)
!1623 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !255, file: !255, line: 41, type: !103, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !250, variables: !1624)
!1624 = !{!1625}
!1625 = !DILocalVariable(name: "file", arg: 1, scope: !1623, file: !255, line: 41, type: !25)
!1626 = !DILocation(line: 41, column: 41, scope: !1623)
!1627 = !DILocation(line: 43, column: 13, scope: !1623)
!1628 = !DILocation(line: 44, column: 1, scope: !1623)
!1629 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !255, file: !255, line: 78, type: !1630, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !250, variables: !1632)
!1630 = !DISubroutineType(types: !1631)
!1631 = !{null, !49}
!1632 = !{!1633}
!1633 = !DILocalVariable(name: "ignore", arg: 1, scope: !1629, file: !255, line: 78, type: !49)
!1634 = !DIExpression(DW_OP_LLVM_fragment, 0, 1)
!1635 = !DILocation(line: 78, column: 37, scope: !1629)
!1636 = !DILocation(line: 80, column: 16, scope: !1629)
!1637 = !{!1638, !1638, i64 0}
!1638 = !{!"_Bool", !820, i64 0}
!1639 = !DILocation(line: 81, column: 1, scope: !1629)
!1640 = distinct !DISubprogram(name: "close_stdout", scope: !255, file: !255, line: 107, type: !834, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !250, variables: !1641)
!1641 = !{!1642}
!1642 = !DILocalVariable(name: "write_error", scope: !1643, file: !255, line: 112, type: !25)
!1643 = distinct !DILexicalBlock(scope: !1644, file: !255, line: 111, column: 5)
!1644 = distinct !DILexicalBlock(scope: !1640, file: !255, line: 109, column: 7)
!1645 = !DILocation(line: 109, column: 21, scope: !1644)
!1646 = !DILocation(line: 109, column: 7, scope: !1644)
!1647 = !DILocation(line: 109, column: 29, scope: !1644)
!1648 = !DILocation(line: 110, column: 7, scope: !1644)
!1649 = !DILocation(line: 110, column: 12, scope: !1650)
!1650 = !DILexicalBlockFile(scope: !1644, file: !255, discriminator: 1)
!1651 = !{i8 0, i8 2}
!1652 = !DILocation(line: 114, column: 19, scope: !1653)
!1653 = distinct !DILexicalBlock(scope: !1643, file: !255, line: 113, column: 11)
!1654 = !DILocation(line: 110, column: 25, scope: !1650)
!1655 = !DILocation(line: 110, column: 28, scope: !1656)
!1656 = !DILexicalBlockFile(scope: !1644, file: !255, discriminator: 2)
!1657 = !DILocation(line: 110, column: 34, scope: !1656)
!1658 = !DILocation(line: 109, column: 7, scope: !1659)
!1659 = !DILexicalBlockFile(scope: !1640, file: !255, discriminator: 1)
!1660 = !DILocation(line: 112, column: 33, scope: !1643)
!1661 = !DILocation(line: 112, column: 19, scope: !1643)
!1662 = !DILocation(line: 113, column: 11, scope: !1653)
!1663 = !DILocation(line: 113, column: 11, scope: !1643)
!1664 = !DILocation(line: 114, column: 36, scope: !1665)
!1665 = !DILexicalBlockFile(scope: !1653, file: !255, discriminator: 1)
!1666 = !DILocation(line: 114, column: 9, scope: !1667)
!1667 = !DILexicalBlockFile(scope: !1653, file: !255, discriminator: 2)
!1668 = !DILocation(line: 114, column: 9, scope: !1653)
!1669 = !DILocation(line: 117, column: 9, scope: !1665)
!1670 = !DILocation(line: 119, column: 14, scope: !1643)
!1671 = !DILocation(line: 119, column: 7, scope: !1643)
!1672 = !DILocation(line: 122, column: 22, scope: !1673)
!1673 = distinct !DILexicalBlock(scope: !1640, file: !255, line: 122, column: 8)
!1674 = !DILocation(line: 122, column: 8, scope: !1673)
!1675 = !DILocation(line: 122, column: 30, scope: !1673)
!1676 = !DILocation(line: 122, column: 8, scope: !1640)
!1677 = !DILocation(line: 123, column: 13, scope: !1673)
!1678 = !DILocation(line: 123, column: 6, scope: !1673)
!1679 = !DILocation(line: 124, column: 1, scope: !1640)
!1680 = distinct !DISubprogram(name: "mfile_name_concat", scope: !1681, file: !1681, line: 61, type: !1682, isLocal: false, isDefinition: true, scopeLine: 62, flags: DIFlagPrototyped, isOptimized: true, unit: !725, variables: !1684)
!1681 = !DIFile(filename: "lib/filenamecat-lgpl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1682 = !DISubroutineType(types: !1683)
!1683 = !{!20, !25, !25, !42}
!1684 = !{!1685, !1686, !1687, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695}
!1685 = !DILocalVariable(name: "dir", arg: 1, scope: !1680, file: !1681, line: 61, type: !25)
!1686 = !DILocalVariable(name: "abase", arg: 2, scope: !1680, file: !1681, line: 61, type: !25)
!1687 = !DILocalVariable(name: "base_in_result", arg: 3, scope: !1680, file: !1681, line: 61, type: !42)
!1688 = !DILocalVariable(name: "dirbase", scope: !1680, file: !1681, line: 63, type: !25)
!1689 = !DILocalVariable(name: "dirbaselen", scope: !1680, file: !1681, line: 64, type: !27)
!1690 = !DILocalVariable(name: "dirlen", scope: !1680, file: !1681, line: 65, type: !27)
!1691 = !DILocalVariable(name: "needs_separator", scope: !1680, file: !1681, line: 66, type: !27)
!1692 = !DILocalVariable(name: "base", scope: !1680, file: !1681, line: 68, type: !25)
!1693 = !DILocalVariable(name: "baselen", scope: !1680, file: !1681, line: 69, type: !27)
!1694 = !DILocalVariable(name: "p_concat", scope: !1680, file: !1681, line: 71, type: !20)
!1695 = !DILocalVariable(name: "p", scope: !1680, file: !1681, line: 72, type: !20)
!1696 = !DILocation(line: 61, column: 32, scope: !1680)
!1697 = !DILocation(line: 61, column: 49, scope: !1680)
!1698 = !DILocation(line: 61, column: 63, scope: !1680)
!1699 = !DILocation(line: 63, column: 25, scope: !1680)
!1700 = !DILocation(line: 63, column: 15, scope: !1680)
!1701 = !DILocation(line: 64, column: 23, scope: !1680)
!1702 = !DILocation(line: 64, column: 10, scope: !1680)
!1703 = !DILocation(line: 65, column: 27, scope: !1680)
!1704 = !DILocation(line: 65, column: 33, scope: !1680)
!1705 = !DILocation(line: 65, column: 10, scope: !1680)
!1706 = !DILocation(line: 66, column: 29, scope: !1680)
!1707 = !DILocation(line: 66, column: 40, scope: !1680)
!1708 = !DILocation(line: 66, column: 45, scope: !1709)
!1709 = !DILexicalBlockFile(scope: !1680, file: !1681, discriminator: 1)
!1710 = !DILocation(line: 66, column: 43, scope: !1709)
!1711 = !DILocation(line: 66, column: 10, scope: !1680)
!1712 = !DILocalVariable(name: "f", arg: 1, scope: !1713, file: !1681, line: 38, type: !25)
!1713 = distinct !DISubprogram(name: "longest_relative_suffix", scope: !1681, file: !1681, line: 38, type: !1714, isLocal: true, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !725, variables: !1716)
!1714 = !DISubroutineType(types: !1715)
!1715 = !{!25, !25}
!1716 = !{!1712}
!1717 = !DILocation(line: 38, column: 38, scope: !1713, inlinedAt: !1718)
!1718 = distinct !DILocation(line: 68, column: 22, scope: !1680)
!1719 = !DILocation(line: 40, column: 8, scope: !1720, inlinedAt: !1718)
!1720 = distinct !DILexicalBlock(scope: !1713, file: !1681, line: 40, column: 3)
!1721 = !DILocation(line: 40, column: 41, scope: !1722, inlinedAt: !1718)
!1722 = !DILexicalBlockFile(scope: !1723, file: !1681, discriminator: 1)
!1723 = distinct !DILexicalBlock(scope: !1720, file: !1681, line: 40, column: 3)
!1724 = !DILocation(line: 40, column: 56, scope: !1725, inlinedAt: !1718)
!1725 = !DILexicalBlockFile(scope: !1723, file: !1681, discriminator: 2)
!1726 = !DILocation(line: 40, column: 3, scope: !1727, inlinedAt: !1718)
!1727 = !DILexicalBlockFile(scope: !1720, file: !1681, discriminator: 1)
!1728 = distinct !{!1728, !1729, !1730}
!1729 = !DILocation(line: 40, column: 3, scope: !1720)
!1730 = !DILocation(line: 41, column: 5, scope: !1720)
!1731 = !DILocation(line: 66, column: 28, scope: !1732)
!1732 = !DILexicalBlockFile(scope: !1680, file: !1681, discriminator: 2)
!1733 = !DILocation(line: 68, column: 15, scope: !1680)
!1734 = !DILocation(line: 69, column: 20, scope: !1680)
!1735 = !DILocation(line: 69, column: 10, scope: !1680)
!1736 = !DILocation(line: 71, column: 35, scope: !1680)
!1737 = !DILocation(line: 71, column: 53, scope: !1680)
!1738 = !DILocation(line: 71, column: 63, scope: !1680)
!1739 = !DILocation(line: 71, column: 20, scope: !1680)
!1740 = !DILocation(line: 71, column: 9, scope: !1680)
!1741 = !DILocation(line: 74, column: 16, scope: !1742)
!1742 = distinct !DILexicalBlock(scope: !1680, file: !1681, line: 74, column: 7)
!1743 = !DILocation(line: 74, column: 7, scope: !1680)
!1744 = !DILocalVariable(name: "__dest", arg: 1, scope: !1745, file: !1746, line: 64, type: !1749)
!1745 = distinct !DISubprogram(name: "mempcpy", scope: !1746, file: !1746, line: 64, type: !1747, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !725, variables: !1751)
!1746 = !DIFile(filename: "/usr/include/bits/string3.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1747 = !DISubroutineType(types: !1748)
!1748 = !{!22, !1749, !1750, !27}
!1749 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !22)
!1750 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !30)
!1751 = !{!1744, !1752, !1753}
!1752 = !DILocalVariable(name: "__src", arg: 2, scope: !1745, file: !1746, line: 64, type: !1750)
!1753 = !DILocalVariable(name: "__len", arg: 3, scope: !1745, file: !1746, line: 64, type: !27)
!1754 = !DILocation(line: 64, column: 1, scope: !1745, inlinedAt: !1755)
!1755 = distinct !DILocation(line: 77, column: 7, scope: !1680)
!1756 = !DILocation(line: 67, column: 57, scope: !1745, inlinedAt: !1755)
!1757 = !DILocation(line: 67, column: 10, scope: !1745, inlinedAt: !1755)
!1758 = !DILocation(line: 72, column: 9, scope: !1680)
!1759 = !DILocation(line: 78, column: 6, scope: !1680)
!1760 = !DILocation(line: 79, column: 5, scope: !1680)
!1761 = !DILocation(line: 81, column: 7, scope: !1762)
!1762 = distinct !DILexicalBlock(scope: !1680, file: !1681, line: 81, column: 7)
!1763 = !DILocation(line: 81, column: 7, scope: !1680)
!1764 = !DILocation(line: 82, column: 27, scope: !1762)
!1765 = !DILocation(line: 82, column: 25, scope: !1766)
!1766 = !DILexicalBlockFile(scope: !1762, file: !1681, discriminator: 2)
!1767 = !DILocation(line: 82, column: 21, scope: !1766)
!1768 = !DILocation(line: 82, column: 5, scope: !1766)
!1769 = !DILocation(line: 64, column: 1, scope: !1745, inlinedAt: !1770)
!1770 = distinct !DILocation(line: 84, column: 7, scope: !1680)
!1771 = !DILocation(line: 67, column: 57, scope: !1745, inlinedAt: !1770)
!1772 = !DILocation(line: 67, column: 10, scope: !1745, inlinedAt: !1770)
!1773 = !DILocation(line: 85, column: 6, scope: !1680)
!1774 = !DILocation(line: 87, column: 3, scope: !1680)
!1775 = !DILocation(line: 88, column: 1, scope: !1680)
!1776 = distinct !DISubprogram(name: "set_program_name", scope: !269, file: !269, line: 39, type: !103, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !265, variables: !1777)
!1777 = !{!1778, !1779, !1780}
!1778 = !DILocalVariable(name: "argv0", arg: 1, scope: !1776, file: !269, line: 39, type: !25)
!1779 = !DILocalVariable(name: "slash", scope: !1776, file: !269, line: 46, type: !25)
!1780 = !DILocalVariable(name: "base", scope: !1776, file: !269, line: 47, type: !25)
!1781 = !DILocation(line: 39, column: 31, scope: !1776)
!1782 = !DILocation(line: 51, column: 13, scope: !1783)
!1783 = distinct !DILexicalBlock(scope: !1776, file: !269, line: 51, column: 7)
!1784 = !DILocation(line: 51, column: 7, scope: !1776)
!1785 = !DILocation(line: 55, column: 14, scope: !1786)
!1786 = distinct !DILexicalBlock(scope: !1783, file: !269, line: 52, column: 5)
!1787 = !DILocation(line: 54, column: 7, scope: !1786)
!1788 = !DILocation(line: 56, column: 7, scope: !1786)
!1789 = !DILocation(line: 59, column: 11, scope: !1776)
!1790 = !DILocation(line: 46, column: 15, scope: !1776)
!1791 = !DILocation(line: 60, column: 17, scope: !1776)
!1792 = !DILocation(line: 60, column: 33, scope: !1793)
!1793 = !DILexicalBlockFile(scope: !1776, file: !269, discriminator: 1)
!1794 = !DILocation(line: 60, column: 11, scope: !1776)
!1795 = !DILocation(line: 47, column: 15, scope: !1776)
!1796 = !DILocation(line: 61, column: 12, scope: !1797)
!1797 = distinct !DILexicalBlock(scope: !1776, file: !269, line: 61, column: 7)
!1798 = !DILocation(line: 61, column: 20, scope: !1797)
!1799 = !DILocation(line: 61, column: 25, scope: !1797)
!1800 = !DILocation(line: 61, column: 28, scope: !1801)
!1801 = !DILexicalBlockFile(scope: !1797, file: !269, discriminator: 1)
!1802 = !DILocation(line: 61, column: 61, scope: !1801)
!1803 = !DILocation(line: 61, column: 7, scope: !1793)
!1804 = !DILocation(line: 64, column: 11, scope: !1805)
!1805 = distinct !DILexicalBlock(scope: !1806, file: !269, line: 64, column: 11)
!1806 = distinct !DILexicalBlock(scope: !1797, file: !269, line: 62, column: 5)
!1807 = !DILocation(line: 64, column: 36, scope: !1805)
!1808 = !DILocation(line: 64, column: 11, scope: !1806)
!1809 = !DILocation(line: 66, column: 24, scope: !1810)
!1810 = distinct !DILexicalBlock(scope: !1805, file: !269, line: 65, column: 9)
!1811 = !DILocation(line: 70, column: 41, scope: !1810)
!1812 = !DILocation(line: 72, column: 9, scope: !1810)
!1813 = !DILocation(line: 84, column: 16, scope: !1776)
!1814 = !DILocation(line: 90, column: 27, scope: !1776)
!1815 = !DILocation(line: 92, column: 1, scope: !1776)
!1816 = distinct !DISubprogram(name: "clone_quoting_options", scope: !299, file: !299, line: 114, type: !1817, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !272, variables: !1820)
!1817 = !DISubroutineType(types: !1818)
!1818 = !{!1819, !1819}
!1819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!1820 = !{!1821, !1822, !1823}
!1821 = !DILocalVariable(name: "o", arg: 1, scope: !1816, file: !299, line: 114, type: !1819)
!1822 = !DILocalVariable(name: "e", scope: !1816, file: !299, line: 116, type: !41)
!1823 = !DILocalVariable(name: "p", scope: !1816, file: !299, line: 117, type: !1819)
!1824 = !DILocation(line: 114, column: 48, scope: !1816)
!1825 = !DILocation(line: 116, column: 11, scope: !1816)
!1826 = !DILocation(line: 116, column: 7, scope: !1816)
!1827 = !DILocation(line: 117, column: 40, scope: !1816)
!1828 = !DILocation(line: 117, column: 40, scope: !1829)
!1829 = !DILexicalBlockFile(scope: !1816, file: !299, discriminator: 3)
!1830 = !DILocation(line: 117, column: 31, scope: !1829)
!1831 = !DILocation(line: 117, column: 27, scope: !1816)
!1832 = !DILocation(line: 119, column: 9, scope: !1816)
!1833 = !DILocation(line: 120, column: 3, scope: !1816)
!1834 = distinct !DISubprogram(name: "get_quoting_style", scope: !299, file: !299, line: 125, type: !1835, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !272, variables: !1839)
!1835 = !DISubroutineType(types: !1836)
!1836 = !{!5, !1837}
!1837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1838, size: 64)
!1838 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !306)
!1839 = !{!1840}
!1840 = !DILocalVariable(name: "o", arg: 1, scope: !1834, file: !299, line: 125, type: !1837)
!1841 = !DILocation(line: 125, column: 50, scope: !1834)
!1842 = !DILocation(line: 127, column: 11, scope: !1834)
!1843 = !DILocation(line: 127, column: 46, scope: !1844)
!1844 = !DILexicalBlockFile(scope: !1834, file: !299, discriminator: 3)
!1845 = !{!1846, !820, i64 0}
!1846 = !{!"quoting_options", !820, i64 0, !971, i64 4, !820, i64 8, !819, i64 40, !819, i64 48}
!1847 = !DILocation(line: 127, column: 3, scope: !1844)
!1848 = distinct !DISubprogram(name: "set_quoting_style", scope: !299, file: !299, line: 133, type: !1849, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !272, variables: !1851)
!1849 = !DISubroutineType(types: !1850)
!1850 = !{null, !1819, !5}
!1851 = !{!1852, !1853}
!1852 = !DILocalVariable(name: "o", arg: 1, scope: !1848, file: !299, line: 133, type: !1819)
!1853 = !DILocalVariable(name: "s", arg: 2, scope: !1848, file: !299, line: 133, type: !5)
!1854 = !DILocation(line: 133, column: 44, scope: !1848)
!1855 = !DILocation(line: 133, column: 66, scope: !1848)
!1856 = !DILocation(line: 135, column: 4, scope: !1848)
!1857 = !DILocation(line: 135, column: 39, scope: !1858)
!1858 = !DILexicalBlockFile(scope: !1848, file: !299, discriminator: 3)
!1859 = !DILocation(line: 135, column: 45, scope: !1858)
!1860 = !DILocation(line: 136, column: 1, scope: !1848)
!1861 = distinct !DISubprogram(name: "set_char_quoting", scope: !299, file: !299, line: 144, type: !1862, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !272, variables: !1864)
!1862 = !DISubroutineType(types: !1863)
!1863 = !{!41, !1819, !21, !41}
!1864 = !{!1865, !1866, !1867, !1868, !1869, !1871, !1872}
!1865 = !DILocalVariable(name: "o", arg: 1, scope: !1861, file: !299, line: 144, type: !1819)
!1866 = !DILocalVariable(name: "c", arg: 2, scope: !1861, file: !299, line: 144, type: !21)
!1867 = !DILocalVariable(name: "i", arg: 3, scope: !1861, file: !299, line: 144, type: !41)
!1868 = !DILocalVariable(name: "uc", scope: !1861, file: !299, line: 146, type: !34)
!1869 = !DILocalVariable(name: "p", scope: !1861, file: !299, line: 147, type: !1870)
!1870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!1871 = !DILocalVariable(name: "shift", scope: !1861, file: !299, line: 149, type: !41)
!1872 = !DILocalVariable(name: "r", scope: !1861, file: !299, line: 150, type: !41)
!1873 = !DILocation(line: 144, column: 43, scope: !1861)
!1874 = !DILocation(line: 144, column: 51, scope: !1861)
!1875 = !DILocation(line: 144, column: 58, scope: !1861)
!1876 = !DILocation(line: 146, column: 17, scope: !1861)
!1877 = !DILocation(line: 148, column: 6, scope: !1861)
!1878 = !DILocation(line: 148, column: 62, scope: !1879)
!1879 = !DILexicalBlockFile(scope: !1861, file: !299, discriminator: 3)
!1880 = !DILocation(line: 148, column: 57, scope: !1879)
!1881 = !DILocation(line: 147, column: 17, scope: !1861)
!1882 = !DILocation(line: 149, column: 18, scope: !1861)
!1883 = !DILocation(line: 149, column: 15, scope: !1861)
!1884 = !DILocation(line: 149, column: 7, scope: !1861)
!1885 = !DILocation(line: 150, column: 12, scope: !1861)
!1886 = !DILocation(line: 150, column: 15, scope: !1861)
!1887 = !DILocation(line: 150, column: 25, scope: !1861)
!1888 = !DILocation(line: 150, column: 7, scope: !1861)
!1889 = !DILocation(line: 151, column: 13, scope: !1861)
!1890 = !DILocation(line: 151, column: 18, scope: !1861)
!1891 = !DILocation(line: 151, column: 23, scope: !1861)
!1892 = !DILocation(line: 151, column: 6, scope: !1861)
!1893 = !DILocation(line: 152, column: 3, scope: !1861)
!1894 = distinct !DISubprogram(name: "set_quoting_flags", scope: !299, file: !299, line: 160, type: !1895, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !272, variables: !1897)
!1895 = !DISubroutineType(types: !1896)
!1896 = !{!41, !1819, !41}
!1897 = !{!1898, !1899, !1900}
!1898 = !DILocalVariable(name: "o", arg: 1, scope: !1894, file: !299, line: 160, type: !1819)
!1899 = !DILocalVariable(name: "i", arg: 2, scope: !1894, file: !299, line: 160, type: !41)
!1900 = !DILocalVariable(name: "r", scope: !1894, file: !299, line: 162, type: !41)
!1901 = !DILocation(line: 160, column: 44, scope: !1894)
!1902 = !DILocation(line: 160, column: 51, scope: !1894)
!1903 = !DILocation(line: 163, column: 8, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !1894, file: !299, line: 163, column: 7)
!1905 = !DILocation(line: 163, column: 7, scope: !1894)
!1906 = !DILocation(line: 165, column: 10, scope: !1894)
!1907 = !{!1846, !971, i64 4}
!1908 = !DILocation(line: 162, column: 7, scope: !1894)
!1909 = !DILocation(line: 166, column: 12, scope: !1894)
!1910 = !DILocation(line: 167, column: 3, scope: !1894)
!1911 = distinct !DISubprogram(name: "set_custom_quoting", scope: !299, file: !299, line: 171, type: !1912, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !272, variables: !1914)
!1912 = !DISubroutineType(types: !1913)
!1913 = !{null, !1819, !25, !25}
!1914 = !{!1915, !1916, !1917}
!1915 = !DILocalVariable(name: "o", arg: 1, scope: !1911, file: !299, line: 171, type: !1819)
!1916 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1911, file: !299, line: 172, type: !25)
!1917 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1911, file: !299, line: 172, type: !25)
!1918 = !DILocation(line: 171, column: 45, scope: !1911)
!1919 = !DILocation(line: 172, column: 33, scope: !1911)
!1920 = !DILocation(line: 172, column: 57, scope: !1911)
!1921 = !DILocation(line: 174, column: 8, scope: !1922)
!1922 = distinct !DILexicalBlock(scope: !1911, file: !299, line: 174, column: 7)
!1923 = !DILocation(line: 174, column: 7, scope: !1911)
!1924 = !DILocation(line: 176, column: 6, scope: !1911)
!1925 = !DILocation(line: 176, column: 12, scope: !1911)
!1926 = !DILocation(line: 177, column: 8, scope: !1927)
!1927 = distinct !DILexicalBlock(scope: !1911, file: !299, line: 177, column: 7)
!1928 = !DILocation(line: 177, column: 23, scope: !1929)
!1929 = !DILexicalBlockFile(scope: !1927, file: !299, discriminator: 1)
!1930 = !DILocation(line: 177, column: 19, scope: !1927)
!1931 = !DILocation(line: 178, column: 5, scope: !1927)
!1932 = !DILocation(line: 179, column: 6, scope: !1911)
!1933 = !DILocation(line: 179, column: 17, scope: !1911)
!1934 = !{!1846, !819, i64 40}
!1935 = !DILocation(line: 180, column: 6, scope: !1911)
!1936 = !DILocation(line: 180, column: 18, scope: !1911)
!1937 = !{!1846, !819, i64 48}
!1938 = !DILocation(line: 181, column: 1, scope: !1911)
!1939 = distinct !DISubprogram(name: "quotearg_buffer", scope: !299, file: !299, line: 776, type: !1940, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !272, variables: !1942)
!1940 = !DISubroutineType(types: !1941)
!1941 = !{!27, !20, !27, !25, !27, !1837}
!1942 = !{!1943, !1944, !1945, !1946, !1947, !1948, !1949, !1950}
!1943 = !DILocalVariable(name: "buffer", arg: 1, scope: !1939, file: !299, line: 776, type: !20)
!1944 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1939, file: !299, line: 776, type: !27)
!1945 = !DILocalVariable(name: "arg", arg: 3, scope: !1939, file: !299, line: 777, type: !25)
!1946 = !DILocalVariable(name: "argsize", arg: 4, scope: !1939, file: !299, line: 777, type: !27)
!1947 = !DILocalVariable(name: "o", arg: 5, scope: !1939, file: !299, line: 778, type: !1837)
!1948 = !DILocalVariable(name: "p", scope: !1939, file: !299, line: 780, type: !1837)
!1949 = !DILocalVariable(name: "e", scope: !1939, file: !299, line: 781, type: !41)
!1950 = !DILocalVariable(name: "r", scope: !1939, file: !299, line: 782, type: !27)
!1951 = !DILocation(line: 776, column: 24, scope: !1939)
!1952 = !DILocation(line: 776, column: 39, scope: !1939)
!1953 = !DILocation(line: 777, column: 30, scope: !1939)
!1954 = !DILocation(line: 777, column: 42, scope: !1939)
!1955 = !DILocation(line: 778, column: 48, scope: !1939)
!1956 = !DILocation(line: 780, column: 37, scope: !1939)
!1957 = !DILocation(line: 780, column: 33, scope: !1939)
!1958 = !DILocation(line: 781, column: 11, scope: !1939)
!1959 = !DILocation(line: 781, column: 7, scope: !1939)
!1960 = !DILocation(line: 783, column: 43, scope: !1939)
!1961 = !DILocation(line: 783, column: 53, scope: !1939)
!1962 = !DILocation(line: 783, column: 60, scope: !1939)
!1963 = !DILocation(line: 784, column: 43, scope: !1939)
!1964 = !DILocation(line: 784, column: 58, scope: !1939)
!1965 = !DILocation(line: 782, column: 14, scope: !1939)
!1966 = !DILocation(line: 782, column: 10, scope: !1939)
!1967 = !DILocation(line: 785, column: 9, scope: !1939)
!1968 = !DILocation(line: 786, column: 3, scope: !1939)
!1969 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !299, file: !299, line: 248, type: !1970, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !272, variables: !1974)
!1970 = !DISubroutineType(types: !1971)
!1971 = !{!27, !20, !27, !25, !27, !5, !41, !1972, !25, !25}
!1972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1973, size: 64)
!1973 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !87)
!1974 = !{!1975, !1976, !1977, !1978, !1979, !1980, !1981, !1982, !1983, !1984, !1985, !1986, !1987, !1988, !1989, !1990, !1991, !1992, !1993, !1994, !1995, !1999, !2000, !2001, !2002, !2003, !2006, !2007, !2024, !2027, !2028, !2035}
!1975 = !DILocalVariable(name: "buffer", arg: 1, scope: !1969, file: !299, line: 248, type: !20)
!1976 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1969, file: !299, line: 248, type: !27)
!1977 = !DILocalVariable(name: "arg", arg: 3, scope: !1969, file: !299, line: 249, type: !25)
!1978 = !DILocalVariable(name: "argsize", arg: 4, scope: !1969, file: !299, line: 249, type: !27)
!1979 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1969, file: !299, line: 250, type: !5)
!1980 = !DILocalVariable(name: "flags", arg: 6, scope: !1969, file: !299, line: 250, type: !41)
!1981 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1969, file: !299, line: 251, type: !1972)
!1982 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1969, file: !299, line: 252, type: !25)
!1983 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1969, file: !299, line: 253, type: !25)
!1984 = !DILocalVariable(name: "i", scope: !1969, file: !299, line: 255, type: !27)
!1985 = !DILocalVariable(name: "len", scope: !1969, file: !299, line: 256, type: !27)
!1986 = !DILocalVariable(name: "orig_buffersize", scope: !1969, file: !299, line: 257, type: !27)
!1987 = !DILocalVariable(name: "quote_string", scope: !1969, file: !299, line: 258, type: !25)
!1988 = !DILocalVariable(name: "quote_string_len", scope: !1969, file: !299, line: 259, type: !27)
!1989 = !DILocalVariable(name: "backslash_escapes", scope: !1969, file: !299, line: 260, type: !49)
!1990 = !DILocalVariable(name: "unibyte_locale", scope: !1969, file: !299, line: 261, type: !49)
!1991 = !DILocalVariable(name: "elide_outer_quotes", scope: !1969, file: !299, line: 262, type: !49)
!1992 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1969, file: !299, line: 263, type: !49)
!1993 = !DILocalVariable(name: "encountered_single_quote", scope: !1969, file: !299, line: 264, type: !49)
!1994 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1969, file: !299, line: 265, type: !49)
!1995 = !DILocalVariable(name: "c", scope: !1996, file: !299, line: 394, type: !34)
!1996 = distinct !DILexicalBlock(scope: !1997, file: !299, line: 393, column: 5)
!1997 = distinct !DILexicalBlock(scope: !1998, file: !299, line: 392, column: 3)
!1998 = distinct !DILexicalBlock(scope: !1969, file: !299, line: 392, column: 3)
!1999 = !DILocalVariable(name: "esc", scope: !1996, file: !299, line: 395, type: !34)
!2000 = !DILocalVariable(name: "is_right_quote", scope: !1996, file: !299, line: 396, type: !49)
!2001 = !DILocalVariable(name: "escaping", scope: !1996, file: !299, line: 397, type: !49)
!2002 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1996, file: !299, line: 398, type: !49)
!2003 = !DILocalVariable(name: "m", scope: !2004, file: !299, line: 602, type: !27)
!2004 = distinct !DILexicalBlock(scope: !2005, file: !299, line: 600, column: 11)
!2005 = distinct !DILexicalBlock(scope: !1996, file: !299, line: 418, column: 9)
!2006 = !DILocalVariable(name: "printable", scope: !2004, file: !299, line: 604, type: !49)
!2007 = !DILocalVariable(name: "mbstate", scope: !2008, file: !299, line: 613, type: !2010)
!2008 = distinct !DILexicalBlock(scope: !2009, file: !299, line: 612, column: 15)
!2009 = distinct !DILexicalBlock(scope: !2004, file: !299, line: 606, column: 17)
!2010 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2011, line: 107, baseType: !2012)
!2011 = !DIFile(filename: "/usr/include/wchar.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2012 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2011, line: 95, baseType: !2013)
!2013 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2011, line: 83, size: 64, elements: !2014)
!2014 = !{!2015, !2016}
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2013, file: !2011, line: 85, baseType: !41, size: 32)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2013, file: !2011, line: 94, baseType: !2017, size: 32, offset: 32)
!2017 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2013, file: !2011, line: 86, size: 32, elements: !2018)
!2018 = !{!2019, !2020}
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2017, file: !2011, line: 89, baseType: !87, size: 32)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2017, file: !2011, line: 93, baseType: !2021, size: 32)
!2021 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 32, elements: !2022)
!2022 = !{!2023}
!2023 = !DISubrange(count: 4)
!2024 = !DILocalVariable(name: "w", scope: !2025, file: !299, line: 623, type: !2026)
!2025 = distinct !DILexicalBlock(scope: !2008, file: !299, line: 622, column: 19)
!2026 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !28, line: 90, baseType: !41)
!2027 = !DILocalVariable(name: "bytes", scope: !2025, file: !299, line: 624, type: !27)
!2028 = !DILocalVariable(name: "j", scope: !2029, file: !299, line: 649, type: !27)
!2029 = distinct !DILexicalBlock(scope: !2030, file: !299, line: 648, column: 27)
!2030 = distinct !DILexicalBlock(scope: !2031, file: !299, line: 646, column: 29)
!2031 = distinct !DILexicalBlock(scope: !2032, file: !299, line: 641, column: 23)
!2032 = distinct !DILexicalBlock(scope: !2033, file: !299, line: 633, column: 30)
!2033 = distinct !DILexicalBlock(scope: !2034, file: !299, line: 628, column: 30)
!2034 = distinct !DILexicalBlock(scope: !2025, file: !299, line: 626, column: 25)
!2035 = !DILocalVariable(name: "ilim", scope: !2036, file: !299, line: 676, type: !27)
!2036 = distinct !DILexicalBlock(scope: !2037, file: !299, line: 673, column: 15)
!2037 = distinct !DILexicalBlock(scope: !2004, file: !299, line: 672, column: 17)
!2038 = !DILocation(line: 248, column: 33, scope: !1969)
!2039 = !DILocation(line: 248, column: 48, scope: !1969)
!2040 = !DILocation(line: 249, column: 39, scope: !1969)
!2041 = !DILocation(line: 249, column: 51, scope: !1969)
!2042 = !DILocation(line: 250, column: 46, scope: !1969)
!2043 = !DILocation(line: 250, column: 65, scope: !1969)
!2044 = !DILocation(line: 251, column: 47, scope: !1969)
!2045 = !DILocation(line: 252, column: 39, scope: !1969)
!2046 = !DILocation(line: 253, column: 39, scope: !1969)
!2047 = !DILocation(line: 256, column: 10, scope: !1969)
!2048 = !DILocation(line: 257, column: 10, scope: !1969)
!2049 = !DILocation(line: 258, column: 15, scope: !1969)
!2050 = !DILocation(line: 259, column: 10, scope: !1969)
!2051 = !DILocation(line: 260, column: 8, scope: !1969)
!2052 = !DILocation(line: 261, column: 25, scope: !1969)
!2053 = !DILocation(line: 261, column: 36, scope: !1969)
!2054 = !DILocation(line: 262, column: 8, scope: !1969)
!2055 = !DILocation(line: 263, column: 8, scope: !1969)
!2056 = !DILocation(line: 264, column: 8, scope: !1969)
!2057 = !DILocation(line: 265, column: 8, scope: !1969)
!2058 = !DILocation(line: 265, column: 3, scope: !1969)
!2059 = !DILocation(line: 308, column: 3, scope: !1969)
!2060 = !DILocation(line: 315, column: 11, scope: !2061)
!2061 = distinct !DILexicalBlock(scope: !1969, file: !299, line: 309, column: 5)
!2062 = !DILocation(line: 315, column: 12, scope: !2063)
!2063 = distinct !DILexicalBlock(scope: !2061, file: !299, line: 315, column: 11)
!2064 = !DILocation(line: 316, column: 9, scope: !2065)
!2065 = !DILexicalBlockFile(scope: !2066, file: !299, discriminator: 1)
!2066 = distinct !DILexicalBlock(scope: !2067, file: !299, line: 316, column: 9)
!2067 = distinct !DILexicalBlock(scope: !2063, file: !299, line: 316, column: 9)
!2068 = !DILocation(line: 316, column: 9, scope: !2069)
!2069 = !DILexicalBlockFile(scope: !2067, file: !299, discriminator: 1)
!2070 = !DILocation(line: 316, column: 9, scope: !2071)
!2071 = !DILexicalBlockFile(scope: !2066, file: !299, discriminator: 2)
!2072 = !DILocation(line: 354, column: 26, scope: !2073)
!2073 = distinct !DILexicalBlock(scope: !2074, file: !299, line: 332, column: 11)
!2074 = distinct !DILexicalBlock(scope: !2075, file: !299, line: 331, column: 13)
!2075 = distinct !DILexicalBlock(scope: !2061, file: !299, line: 330, column: 7)
!2076 = !DILocation(line: 355, column: 27, scope: !2073)
!2077 = !DILocation(line: 356, column: 11, scope: !2073)
!2078 = !DILocation(line: 357, column: 14, scope: !2079)
!2079 = distinct !DILexicalBlock(scope: !2075, file: !299, line: 357, column: 13)
!2080 = !DILocation(line: 357, column: 13, scope: !2075)
!2081 = !DILocation(line: 358, column: 43, scope: !2082)
!2082 = !DILexicalBlockFile(scope: !2083, file: !299, discriminator: 1)
!2083 = distinct !DILexicalBlock(scope: !2084, file: !299, line: 358, column: 11)
!2084 = distinct !DILexicalBlock(scope: !2079, file: !299, line: 358, column: 11)
!2085 = !DILocation(line: 358, column: 11, scope: !2086)
!2086 = !DILexicalBlockFile(scope: !2084, file: !299, discriminator: 1)
!2087 = !DILocation(line: 359, column: 13, scope: !2088)
!2088 = !DILexicalBlockFile(scope: !2089, file: !299, discriminator: 1)
!2089 = distinct !DILexicalBlock(scope: !2090, file: !299, line: 359, column: 13)
!2090 = distinct !DILexicalBlock(scope: !2083, file: !299, line: 359, column: 13)
!2091 = !DILocation(line: 359, column: 13, scope: !2092)
!2092 = !DILexicalBlockFile(scope: !2090, file: !299, discriminator: 1)
!2093 = !DILocation(line: 359, column: 13, scope: !2094)
!2094 = !DILexicalBlockFile(scope: !2089, file: !299, discriminator: 2)
!2095 = !DILocation(line: 359, column: 13, scope: !2096)
!2096 = !DILexicalBlockFile(scope: !2090, file: !299, discriminator: 3)
!2097 = !DILocation(line: 358, column: 70, scope: !2098)
!2098 = !DILexicalBlockFile(scope: !2083, file: !299, discriminator: 2)
!2099 = distinct !{!2099, !2100, !2101}
!2100 = !DILocation(line: 358, column: 11, scope: !2084)
!2101 = !DILocation(line: 359, column: 13, scope: !2084)
!2102 = !DILocation(line: 362, column: 28, scope: !2075)
!2103 = !DILocation(line: 364, column: 7, scope: !2061)
!2104 = !DILocation(line: 367, column: 7, scope: !2061)
!2105 = !DILocation(line: 370, column: 7, scope: !2061)
!2106 = !DILocation(line: 373, column: 12, scope: !2107)
!2107 = distinct !DILexicalBlock(scope: !2061, file: !299, line: 373, column: 11)
!2108 = !DILocation(line: 373, column: 11, scope: !2061)
!2109 = !DILocation(line: 378, column: 12, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !2061, file: !299, line: 378, column: 11)
!2111 = !DILocation(line: 378, column: 11, scope: !2061)
!2112 = !DILocation(line: 379, column: 9, scope: !2113)
!2113 = !DILexicalBlockFile(scope: !2114, file: !299, discriminator: 1)
!2114 = distinct !DILexicalBlock(scope: !2115, file: !299, line: 379, column: 9)
!2115 = distinct !DILexicalBlock(scope: !2110, file: !299, line: 379, column: 9)
!2116 = !DILocation(line: 379, column: 9, scope: !2117)
!2117 = !DILexicalBlockFile(scope: !2115, file: !299, discriminator: 1)
!2118 = !DILocation(line: 379, column: 9, scope: !2119)
!2119 = !DILexicalBlockFile(scope: !2114, file: !299, discriminator: 2)
!2120 = !DILocation(line: 386, column: 7, scope: !2061)
!2121 = !DILocation(line: 389, column: 7, scope: !2061)
!2122 = !DILocation(line: 255, column: 10, scope: !1969)
!2123 = !DILocation(line: 392, column: 8, scope: !1998)
!2124 = !DILocation(line: 392, column: 27, scope: !2125)
!2125 = !DILexicalBlockFile(scope: !1997, file: !299, discriminator: 1)
!2126 = !DILocation(line: 392, column: 19, scope: !2125)
!2127 = !DILocation(line: 392, column: 60, scope: !2128)
!2128 = !DILexicalBlockFile(scope: !1997, file: !299, discriminator: 3)
!2129 = !DILocation(line: 392, column: 3, scope: !2130)
!2130 = !DILexicalBlockFile(scope: !1998, file: !299, discriminator: 4)
!2131 = !DILocation(line: 392, column: 41, scope: !2132)
!2132 = !DILexicalBlockFile(scope: !1997, file: !299, discriminator: 2)
!2133 = !DILocation(line: 392, column: 48, scope: !2132)
!2134 = !DILocation(line: 396, column: 12, scope: !1996)
!2135 = !DILocation(line: 397, column: 12, scope: !1996)
!2136 = !DILocation(line: 398, column: 12, scope: !1996)
!2137 = !DILocation(line: 401, column: 11, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !1996, file: !299, line: 400, column: 11)
!2139 = !DILocation(line: 403, column: 17, scope: !2140)
!2140 = !DILexicalBlockFile(scope: !2138, file: !299, discriminator: 1)
!2141 = !DILocation(line: 404, column: 39, scope: !2138)
!2142 = !DILocation(line: 408, column: 32, scope: !2138)
!2143 = !DILocation(line: 404, column: 19, scope: !2144)
!2144 = !DILexicalBlockFile(scope: !2138, file: !299, discriminator: 2)
!2145 = !DILocation(line: 404, column: 15, scope: !2146)
!2146 = !DILexicalBlockFile(scope: !2138, file: !299, discriminator: 4)
!2147 = !DILocation(line: 409, column: 11, scope: !2138)
!2148 = !DILocation(line: 409, column: 26, scope: !2140)
!2149 = !DILocation(line: 409, column: 14, scope: !2140)
!2150 = !DILocation(line: 400, column: 11, scope: !2151)
!2151 = !DILexicalBlockFile(scope: !1996, file: !299, discriminator: 1)
!2152 = !DILocation(line: 416, column: 11, scope: !1996)
!2153 = !DILocation(line: 394, column: 21, scope: !1996)
!2154 = !DILocation(line: 417, column: 7, scope: !1996)
!2155 = !DILocation(line: 420, column: 15, scope: !2005)
!2156 = !DILocation(line: 422, column: 15, scope: !2157)
!2157 = !DILexicalBlockFile(scope: !2158, file: !299, discriminator: 1)
!2158 = distinct !DILexicalBlock(scope: !2159, file: !299, line: 422, column: 15)
!2159 = distinct !DILexicalBlock(scope: !2160, file: !299, line: 421, column: 13)
!2160 = distinct !DILexicalBlock(scope: !2005, file: !299, line: 420, column: 15)
!2161 = !DILocation(line: 422, column: 15, scope: !2162)
!2162 = !DILexicalBlockFile(scope: !2163, file: !299, discriminator: 4)
!2163 = distinct !DILexicalBlock(scope: !2158, file: !299, line: 422, column: 15)
!2164 = !DILocation(line: 422, column: 15, scope: !2165)
!2165 = !DILexicalBlockFile(scope: !2163, file: !299, discriminator: 3)
!2166 = !DILocation(line: 422, column: 15, scope: !2167)
!2167 = !DILexicalBlockFile(scope: !2168, file: !299, discriminator: 6)
!2168 = distinct !DILexicalBlock(scope: !2169, file: !299, line: 422, column: 15)
!2169 = distinct !DILexicalBlock(scope: !2170, file: !299, line: 422, column: 15)
!2170 = distinct !DILexicalBlock(scope: !2163, file: !299, line: 422, column: 15)
!2171 = !DILocation(line: 422, column: 15, scope: !2172)
!2172 = !DILexicalBlockFile(scope: !2169, file: !299, discriminator: 6)
!2173 = !DILocation(line: 422, column: 15, scope: !2174)
!2174 = !DILexicalBlockFile(scope: !2168, file: !299, discriminator: 7)
!2175 = !DILocation(line: 422, column: 15, scope: !2176)
!2176 = !DILexicalBlockFile(scope: !2169, file: !299, discriminator: 8)
!2177 = !DILocation(line: 422, column: 15, scope: !2178)
!2178 = !DILexicalBlockFile(scope: !2179, file: !299, discriminator: 11)
!2179 = distinct !DILexicalBlock(scope: !2180, file: !299, line: 422, column: 15)
!2180 = distinct !DILexicalBlock(scope: !2170, file: !299, line: 422, column: 15)
!2181 = !DILocation(line: 422, column: 15, scope: !2182)
!2182 = !DILexicalBlockFile(scope: !2180, file: !299, discriminator: 11)
!2183 = !DILocation(line: 422, column: 15, scope: !2184)
!2184 = !DILexicalBlockFile(scope: !2179, file: !299, discriminator: 12)
!2185 = !DILocation(line: 422, column: 15, scope: !2186)
!2186 = !DILexicalBlockFile(scope: !2180, file: !299, discriminator: 13)
!2187 = !DILocation(line: 422, column: 15, scope: !2188)
!2188 = !DILexicalBlockFile(scope: !2189, file: !299, discriminator: 16)
!2189 = distinct !DILexicalBlock(scope: !2190, file: !299, line: 422, column: 15)
!2190 = distinct !DILexicalBlock(scope: !2170, file: !299, line: 422, column: 15)
!2191 = !DILocation(line: 422, column: 15, scope: !2192)
!2192 = !DILexicalBlockFile(scope: !2190, file: !299, discriminator: 16)
!2193 = !DILocation(line: 422, column: 15, scope: !2194)
!2194 = !DILexicalBlockFile(scope: !2189, file: !299, discriminator: 17)
!2195 = !DILocation(line: 422, column: 15, scope: !2196)
!2196 = !DILexicalBlockFile(scope: !2190, file: !299, discriminator: 18)
!2197 = !DILocation(line: 422, column: 15, scope: !2198)
!2198 = !DILexicalBlockFile(scope: !2170, file: !299, discriminator: 20)
!2199 = !DILocation(line: 422, column: 15, scope: !2200)
!2200 = !DILexicalBlockFile(scope: !2201, file: !299, discriminator: 22)
!2201 = distinct !DILexicalBlock(scope: !2202, file: !299, line: 422, column: 15)
!2202 = distinct !DILexicalBlock(scope: !2158, file: !299, line: 422, column: 15)
!2203 = !DILocation(line: 422, column: 15, scope: !2204)
!2204 = !DILexicalBlockFile(scope: !2202, file: !299, discriminator: 22)
!2205 = !DILocation(line: 422, column: 15, scope: !2206)
!2206 = !DILexicalBlockFile(scope: !2201, file: !299, discriminator: 23)
!2207 = !DILocation(line: 422, column: 15, scope: !2208)
!2208 = !DILexicalBlockFile(scope: !2202, file: !299, discriminator: 24)
!2209 = !DILocation(line: 430, column: 19, scope: !2210)
!2210 = distinct !DILexicalBlock(scope: !2159, file: !299, line: 429, column: 19)
!2211 = !DILocation(line: 430, column: 24, scope: !2212)
!2212 = !DILexicalBlockFile(scope: !2210, file: !299, discriminator: 1)
!2213 = !DILocation(line: 430, column: 28, scope: !2212)
!2214 = !DILocation(line: 430, column: 38, scope: !2212)
!2215 = !DILocation(line: 430, column: 48, scope: !2216)
!2216 = !DILexicalBlockFile(scope: !2210, file: !299, discriminator: 2)
!2217 = !DILocation(line: 430, column: 59, scope: !2216)
!2218 = !DILocation(line: 432, column: 19, scope: !2219)
!2219 = !DILexicalBlockFile(scope: !2220, file: !299, discriminator: 1)
!2220 = distinct !DILexicalBlock(scope: !2221, file: !299, line: 432, column: 19)
!2221 = distinct !DILexicalBlock(scope: !2222, file: !299, line: 432, column: 19)
!2222 = distinct !DILexicalBlock(scope: !2210, file: !299, line: 431, column: 17)
!2223 = !DILocation(line: 432, column: 19, scope: !2224)
!2224 = !DILexicalBlockFile(scope: !2221, file: !299, discriminator: 1)
!2225 = !DILocation(line: 432, column: 19, scope: !2226)
!2226 = !DILexicalBlockFile(scope: !2220, file: !299, discriminator: 2)
!2227 = !DILocation(line: 432, column: 19, scope: !2228)
!2228 = !DILexicalBlockFile(scope: !2221, file: !299, discriminator: 3)
!2229 = !DILocation(line: 433, column: 19, scope: !2230)
!2230 = !DILexicalBlockFile(scope: !2231, file: !299, discriminator: 1)
!2231 = distinct !DILexicalBlock(scope: !2232, file: !299, line: 433, column: 19)
!2232 = distinct !DILexicalBlock(scope: !2222, file: !299, line: 433, column: 19)
!2233 = !DILocation(line: 433, column: 19, scope: !2234)
!2234 = !DILexicalBlockFile(scope: !2232, file: !299, discriminator: 1)
!2235 = !DILocation(line: 433, column: 19, scope: !2236)
!2236 = !DILexicalBlockFile(scope: !2231, file: !299, discriminator: 2)
!2237 = !DILocation(line: 433, column: 19, scope: !2238)
!2238 = !DILexicalBlockFile(scope: !2232, file: !299, discriminator: 3)
!2239 = !DILocation(line: 434, column: 17, scope: !2222)
!2240 = !DILocation(line: 441, column: 20, scope: !2160)
!2241 = !DILocation(line: 446, column: 11, scope: !2005)
!2242 = !DILocation(line: 449, column: 19, scope: !2243)
!2243 = distinct !DILexicalBlock(scope: !2005, file: !299, line: 447, column: 13)
!2244 = !DILocation(line: 455, column: 19, scope: !2245)
!2245 = distinct !DILexicalBlock(scope: !2243, file: !299, line: 454, column: 19)
!2246 = !DILocation(line: 455, column: 24, scope: !2247)
!2247 = !DILexicalBlockFile(scope: !2245, file: !299, discriminator: 1)
!2248 = !DILocation(line: 455, column: 28, scope: !2247)
!2249 = !DILocation(line: 455, column: 38, scope: !2247)
!2250 = !DILocation(line: 455, column: 47, scope: !2251)
!2251 = !DILexicalBlockFile(scope: !2245, file: !299, discriminator: 2)
!2252 = !DILocation(line: 455, column: 41, scope: !2251)
!2253 = !DILocation(line: 455, column: 52, scope: !2251)
!2254 = !DILocation(line: 454, column: 19, scope: !2255)
!2255 = !DILexicalBlockFile(scope: !2243, file: !299, discriminator: 1)
!2256 = !DILocation(line: 456, column: 25, scope: !2245)
!2257 = !DILocation(line: 456, column: 17, scope: !2245)
!2258 = !DILocation(line: 463, column: 25, scope: !2259)
!2259 = distinct !DILexicalBlock(scope: !2245, file: !299, line: 457, column: 19)
!2260 = !DILocation(line: 467, column: 21, scope: !2261)
!2261 = !DILexicalBlockFile(scope: !2262, file: !299, discriminator: 1)
!2262 = distinct !DILexicalBlock(scope: !2263, file: !299, line: 467, column: 21)
!2263 = distinct !DILexicalBlock(scope: !2259, file: !299, line: 467, column: 21)
!2264 = !DILocation(line: 467, column: 21, scope: !2265)
!2265 = !DILexicalBlockFile(scope: !2263, file: !299, discriminator: 1)
!2266 = !DILocation(line: 467, column: 21, scope: !2267)
!2267 = !DILexicalBlockFile(scope: !2262, file: !299, discriminator: 2)
!2268 = !DILocation(line: 467, column: 21, scope: !2269)
!2269 = !DILexicalBlockFile(scope: !2263, file: !299, discriminator: 3)
!2270 = !DILocation(line: 468, column: 21, scope: !2271)
!2271 = !DILexicalBlockFile(scope: !2272, file: !299, discriminator: 1)
!2272 = distinct !DILexicalBlock(scope: !2273, file: !299, line: 468, column: 21)
!2273 = distinct !DILexicalBlock(scope: !2259, file: !299, line: 468, column: 21)
!2274 = !DILocation(line: 468, column: 21, scope: !2275)
!2275 = !DILexicalBlockFile(scope: !2273, file: !299, discriminator: 1)
!2276 = !DILocation(line: 468, column: 21, scope: !2277)
!2277 = !DILexicalBlockFile(scope: !2272, file: !299, discriminator: 2)
!2278 = !DILocation(line: 468, column: 21, scope: !2279)
!2279 = !DILexicalBlockFile(scope: !2273, file: !299, discriminator: 3)
!2280 = !DILocation(line: 469, column: 21, scope: !2281)
!2281 = !DILexicalBlockFile(scope: !2282, file: !299, discriminator: 1)
!2282 = distinct !DILexicalBlock(scope: !2283, file: !299, line: 469, column: 21)
!2283 = distinct !DILexicalBlock(scope: !2259, file: !299, line: 469, column: 21)
!2284 = !DILocation(line: 469, column: 21, scope: !2285)
!2285 = !DILexicalBlockFile(scope: !2283, file: !299, discriminator: 1)
!2286 = !DILocation(line: 469, column: 21, scope: !2287)
!2287 = !DILexicalBlockFile(scope: !2282, file: !299, discriminator: 2)
!2288 = !DILocation(line: 469, column: 21, scope: !2289)
!2289 = !DILexicalBlockFile(scope: !2283, file: !299, discriminator: 3)
!2290 = !DILocation(line: 470, column: 21, scope: !2291)
!2291 = !DILexicalBlockFile(scope: !2292, file: !299, discriminator: 1)
!2292 = distinct !DILexicalBlock(scope: !2293, file: !299, line: 470, column: 21)
!2293 = distinct !DILexicalBlock(scope: !2259, file: !299, line: 470, column: 21)
!2294 = !DILocation(line: 470, column: 21, scope: !2295)
!2295 = !DILexicalBlockFile(scope: !2293, file: !299, discriminator: 1)
!2296 = !DILocation(line: 470, column: 21, scope: !2297)
!2297 = !DILexicalBlockFile(scope: !2292, file: !299, discriminator: 2)
!2298 = !DILocation(line: 470, column: 21, scope: !2299)
!2299 = !DILexicalBlockFile(scope: !2293, file: !299, discriminator: 3)
!2300 = !DILocation(line: 471, column: 21, scope: !2259)
!2301 = !DILocation(line: 395, column: 21, scope: !1996)
!2302 = !DILocation(line: 484, column: 31, scope: !2005)
!2303 = !DILocation(line: 485, column: 31, scope: !2005)
!2304 = !DILocation(line: 487, column: 31, scope: !2005)
!2305 = !DILocation(line: 488, column: 31, scope: !2005)
!2306 = !DILocation(line: 489, column: 31, scope: !2005)
!2307 = !DILocation(line: 492, column: 15, scope: !2005)
!2308 = !DILocation(line: 494, column: 19, scope: !2309)
!2309 = distinct !DILexicalBlock(scope: !2310, file: !299, line: 493, column: 13)
!2310 = distinct !DILexicalBlock(scope: !2005, file: !299, line: 492, column: 15)
!2311 = !DILocation(line: 501, column: 33, scope: !2312)
!2312 = distinct !DILexicalBlock(scope: !2005, file: !299, line: 501, column: 15)
!2313 = !DILocation(line: 506, column: 15, scope: !2314)
!2314 = distinct !DILexicalBlock(scope: !2005, file: !299, line: 505, column: 15)
!2315 = !DILocation(line: 510, column: 15, scope: !2005)
!2316 = !DILocation(line: 518, column: 26, scope: !2317)
!2317 = distinct !DILexicalBlock(scope: !2005, file: !299, line: 518, column: 15)
!2318 = !DILocation(line: 518, column: 15, scope: !2005)
!2319 = !DILocation(line: 518, column: 40, scope: !2320)
!2320 = !DILexicalBlockFile(scope: !2317, file: !299, discriminator: 1)
!2321 = !DILocation(line: 518, column: 47, scope: !2320)
!2322 = !DILocation(line: 522, column: 17, scope: !2323)
!2323 = distinct !DILexicalBlock(scope: !2005, file: !299, line: 522, column: 15)
!2324 = !DILocation(line: 518, column: 18, scope: !2320)
!2325 = !DILocation(line: 518, column: 65, scope: !2326)
!2326 = !DILexicalBlockFile(scope: !2317, file: !299, discriminator: 2)
!2327 = !DILocation(line: 518, column: 15, scope: !2328)
!2328 = !DILexicalBlockFile(scope: !2005, file: !299, discriminator: 2)
!2329 = !DILocation(line: 522, column: 15, scope: !2005)
!2330 = !DILocation(line: 526, column: 11, scope: !2005)
!2331 = !DILocation(line: 541, column: 15, scope: !2332)
!2332 = distinct !DILexicalBlock(scope: !2005, file: !299, line: 540, column: 15)
!2333 = !DILocation(line: 548, column: 15, scope: !2005)
!2334 = !DILocation(line: 550, column: 19, scope: !2335)
!2335 = distinct !DILexicalBlock(scope: !2336, file: !299, line: 549, column: 13)
!2336 = distinct !DILexicalBlock(scope: !2005, file: !299, line: 548, column: 15)
!2337 = !DILocation(line: 553, column: 19, scope: !2338)
!2338 = distinct !DILexicalBlock(scope: !2335, file: !299, line: 553, column: 19)
!2339 = !DILocation(line: 553, column: 35, scope: !2340)
!2340 = !DILexicalBlockFile(scope: !2338, file: !299, discriminator: 1)
!2341 = !DILocation(line: 553, column: 30, scope: !2338)
!2342 = !DILocation(line: 562, column: 15, scope: !2343)
!2343 = !DILexicalBlockFile(scope: !2344, file: !299, discriminator: 1)
!2344 = distinct !DILexicalBlock(scope: !2345, file: !299, line: 562, column: 15)
!2345 = distinct !DILexicalBlock(scope: !2335, file: !299, line: 562, column: 15)
!2346 = !DILocation(line: 562, column: 15, scope: !2347)
!2347 = !DILexicalBlockFile(scope: !2345, file: !299, discriminator: 1)
!2348 = !DILocation(line: 562, column: 15, scope: !2349)
!2349 = !DILexicalBlockFile(scope: !2344, file: !299, discriminator: 2)
!2350 = !DILocation(line: 562, column: 15, scope: !2351)
!2351 = !DILexicalBlockFile(scope: !2345, file: !299, discriminator: 3)
!2352 = !DILocation(line: 563, column: 15, scope: !2353)
!2353 = !DILexicalBlockFile(scope: !2354, file: !299, discriminator: 1)
!2354 = distinct !DILexicalBlock(scope: !2355, file: !299, line: 563, column: 15)
!2355 = distinct !DILexicalBlock(scope: !2335, file: !299, line: 563, column: 15)
!2356 = !DILocation(line: 563, column: 15, scope: !2357)
!2357 = !DILexicalBlockFile(scope: !2355, file: !299, discriminator: 1)
!2358 = !DILocation(line: 563, column: 15, scope: !2359)
!2359 = !DILexicalBlockFile(scope: !2354, file: !299, discriminator: 2)
!2360 = !DILocation(line: 563, column: 15, scope: !2361)
!2361 = !DILexicalBlockFile(scope: !2355, file: !299, discriminator: 3)
!2362 = !DILocation(line: 564, column: 15, scope: !2363)
!2363 = !DILexicalBlockFile(scope: !2364, file: !299, discriminator: 1)
!2364 = distinct !DILexicalBlock(scope: !2365, file: !299, line: 564, column: 15)
!2365 = distinct !DILexicalBlock(scope: !2335, file: !299, line: 564, column: 15)
!2366 = !DILocation(line: 564, column: 15, scope: !2367)
!2367 = !DILexicalBlockFile(scope: !2365, file: !299, discriminator: 1)
!2368 = !DILocation(line: 564, column: 15, scope: !2369)
!2369 = !DILexicalBlockFile(scope: !2364, file: !299, discriminator: 2)
!2370 = !DILocation(line: 564, column: 15, scope: !2371)
!2371 = !DILexicalBlockFile(scope: !2365, file: !299, discriminator: 3)
!2372 = !DILocation(line: 566, column: 13, scope: !2335)
!2373 = !DILocation(line: 606, column: 17, scope: !2004)
!2374 = !DILocation(line: 602, column: 20, scope: !2004)
!2375 = !DILocation(line: 609, column: 29, scope: !2376)
!2376 = distinct !DILexicalBlock(scope: !2009, file: !299, line: 607, column: 15)
!2377 = !{!2378, !2378, i64 0}
!2378 = !{!"short", !820, i64 0}
!2379 = !DILocation(line: 609, column: 27, scope: !2376)
!2380 = !DILocation(line: 604, column: 18, scope: !2004)
!2381 = !DILocation(line: 610, column: 15, scope: !2376)
!2382 = !DILocation(line: 613, column: 17, scope: !2008)
!2383 = !DILocation(line: 614, column: 17, scope: !2008)
!2384 = !DILocation(line: 618, column: 29, scope: !2385)
!2385 = distinct !DILexicalBlock(scope: !2008, file: !299, line: 618, column: 21)
!2386 = !DILocation(line: 618, column: 21, scope: !2008)
!2387 = distinct !{!2387, !2388, !2389}
!2388 = !DILocation(line: 621, column: 17, scope: !2008)
!2389 = !DILocation(line: 667, column: 44, scope: !2008)
!2390 = !DILocation(line: 619, column: 29, scope: !2385)
!2391 = !DILocation(line: 619, column: 19, scope: !2385)
!2392 = !DILocation(line: 623, column: 21, scope: !2025)
!2393 = !DILocation(line: 624, column: 56, scope: !2025)
!2394 = !DILocation(line: 624, column: 50, scope: !2025)
!2395 = !DILocation(line: 625, column: 53, scope: !2025)
!2396 = !DILocation(line: 613, column: 27, scope: !2008)
!2397 = !DILocation(line: 623, column: 29, scope: !2025)
!2398 = !DILocation(line: 624, column: 36, scope: !2025)
!2399 = !DILocation(line: 624, column: 28, scope: !2025)
!2400 = !DILocation(line: 626, column: 25, scope: !2025)
!2401 = !DILocation(line: 636, column: 38, scope: !2402)
!2402 = !DILexicalBlockFile(scope: !2403, file: !299, discriminator: 1)
!2403 = distinct !DILexicalBlock(scope: !2032, file: !299, line: 634, column: 23)
!2404 = !DILocation(line: 636, column: 48, scope: !2402)
!2405 = !DILocation(line: 636, column: 51, scope: !2406)
!2406 = !DILexicalBlockFile(scope: !2403, file: !299, discriminator: 2)
!2407 = !DILocation(line: 636, column: 48, scope: !2406)
!2408 = !DILocation(line: 636, column: 25, scope: !2409)
!2409 = !DILexicalBlockFile(scope: !2403, file: !299, discriminator: 3)
!2410 = !DILocation(line: 637, column: 28, scope: !2403)
!2411 = !DILocation(line: 636, column: 34, scope: !2402)
!2412 = distinct !{!2412, !2413, !2410}
!2413 = !DILocation(line: 636, column: 25, scope: !2403)
!2414 = !DILocation(line: 650, column: 43, scope: !2415)
!2415 = !DILexicalBlockFile(scope: !2416, file: !299, discriminator: 1)
!2416 = distinct !DILexicalBlock(scope: !2417, file: !299, line: 650, column: 29)
!2417 = distinct !DILexicalBlock(scope: !2029, file: !299, line: 650, column: 29)
!2418 = !DILocation(line: 647, column: 29, scope: !2030)
!2419 = !DILocation(line: 649, column: 36, scope: !2029)
!2420 = !DILocation(line: 651, column: 49, scope: !2416)
!2421 = !DILocation(line: 651, column: 39, scope: !2416)
!2422 = !DILocation(line: 651, column: 31, scope: !2416)
!2423 = !DILocation(line: 650, column: 53, scope: !2424)
!2424 = !DILexicalBlockFile(scope: !2416, file: !299, discriminator: 2)
!2425 = !DILocation(line: 650, column: 29, scope: !2426)
!2426 = !DILexicalBlockFile(scope: !2417, file: !299, discriminator: 1)
!2427 = distinct !{!2427, !2428, !2429}
!2428 = !DILocation(line: 650, column: 29, scope: !2417)
!2429 = !DILocation(line: 659, column: 33, scope: !2417)
!2430 = !DILocation(line: 666, column: 19, scope: !2008)
!2431 = !DILocation(line: 662, column: 41, scope: !2432)
!2432 = distinct !DILexicalBlock(scope: !2031, file: !299, line: 662, column: 29)
!2433 = !DILocation(line: 662, column: 31, scope: !2432)
!2434 = !DILocation(line: 662, column: 29, scope: !2031)
!2435 = !DILocation(line: 664, column: 27, scope: !2031)
!2436 = !DILocation(line: 667, column: 26, scope: !2008)
!2437 = !DILocation(line: 667, column: 24, scope: !2008)
!2438 = !DILocation(line: 666, column: 19, scope: !2439)
!2439 = !DILexicalBlockFile(scope: !2025, file: !299, discriminator: 3)
!2440 = !DILocation(line: 668, column: 15, scope: !2009)
!2441 = !DILocation(line: 670, column: 40, scope: !2004)
!2442 = !DILocation(line: 672, column: 19, scope: !2037)
!2443 = !DILocation(line: 672, column: 45, scope: !2444)
!2444 = !DILexicalBlockFile(scope: !2037, file: !299, discriminator: 1)
!2445 = !DILocation(line: 672, column: 23, scope: !2037)
!2446 = !DILocation(line: 676, column: 33, scope: !2036)
!2447 = !DILocation(line: 676, column: 24, scope: !2036)
!2448 = !DILocation(line: 678, column: 17, scope: !2036)
!2449 = !DILocation(line: 680, column: 43, scope: !2450)
!2450 = distinct !DILexicalBlock(scope: !2451, file: !299, line: 680, column: 25)
!2451 = distinct !DILexicalBlock(scope: !2452, file: !299, line: 679, column: 19)
!2452 = distinct !DILexicalBlock(scope: !2453, file: !299, line: 678, column: 17)
!2453 = distinct !DILexicalBlock(scope: !2036, file: !299, line: 678, column: 17)
!2454 = !DILocation(line: 682, column: 25, scope: !2455)
!2455 = !DILexicalBlockFile(scope: !2456, file: !299, discriminator: 1)
!2456 = distinct !DILexicalBlock(scope: !2457, file: !299, line: 682, column: 25)
!2457 = distinct !DILexicalBlock(scope: !2450, file: !299, line: 681, column: 23)
!2458 = !DILocation(line: 682, column: 25, scope: !2459)
!2459 = !DILexicalBlockFile(scope: !2460, file: !299, discriminator: 4)
!2460 = distinct !DILexicalBlock(scope: !2456, file: !299, line: 682, column: 25)
!2461 = !DILocation(line: 682, column: 25, scope: !2462)
!2462 = !DILexicalBlockFile(scope: !2460, file: !299, discriminator: 3)
!2463 = !DILocation(line: 682, column: 25, scope: !2464)
!2464 = !DILexicalBlockFile(scope: !2465, file: !299, discriminator: 6)
!2465 = distinct !DILexicalBlock(scope: !2466, file: !299, line: 682, column: 25)
!2466 = distinct !DILexicalBlock(scope: !2467, file: !299, line: 682, column: 25)
!2467 = distinct !DILexicalBlock(scope: !2460, file: !299, line: 682, column: 25)
!2468 = !DILocation(line: 682, column: 25, scope: !2469)
!2469 = !DILexicalBlockFile(scope: !2466, file: !299, discriminator: 6)
!2470 = !DILocation(line: 682, column: 25, scope: !2471)
!2471 = !DILexicalBlockFile(scope: !2465, file: !299, discriminator: 7)
!2472 = !DILocation(line: 682, column: 25, scope: !2473)
!2473 = !DILexicalBlockFile(scope: !2466, file: !299, discriminator: 8)
!2474 = !DILocation(line: 682, column: 25, scope: !2475)
!2475 = !DILexicalBlockFile(scope: !2476, file: !299, discriminator: 11)
!2476 = distinct !DILexicalBlock(scope: !2477, file: !299, line: 682, column: 25)
!2477 = distinct !DILexicalBlock(scope: !2467, file: !299, line: 682, column: 25)
!2478 = !DILocation(line: 682, column: 25, scope: !2479)
!2479 = !DILexicalBlockFile(scope: !2477, file: !299, discriminator: 11)
!2480 = !DILocation(line: 682, column: 25, scope: !2481)
!2481 = !DILexicalBlockFile(scope: !2476, file: !299, discriminator: 12)
!2482 = !DILocation(line: 682, column: 25, scope: !2483)
!2483 = !DILexicalBlockFile(scope: !2477, file: !299, discriminator: 13)
!2484 = !DILocation(line: 682, column: 25, scope: !2485)
!2485 = !DILexicalBlockFile(scope: !2486, file: !299, discriminator: 16)
!2486 = distinct !DILexicalBlock(scope: !2487, file: !299, line: 682, column: 25)
!2487 = distinct !DILexicalBlock(scope: !2467, file: !299, line: 682, column: 25)
!2488 = !DILocation(line: 682, column: 25, scope: !2489)
!2489 = !DILexicalBlockFile(scope: !2487, file: !299, discriminator: 16)
!2490 = !DILocation(line: 682, column: 25, scope: !2491)
!2491 = !DILexicalBlockFile(scope: !2486, file: !299, discriminator: 17)
!2492 = !DILocation(line: 682, column: 25, scope: !2493)
!2493 = !DILexicalBlockFile(scope: !2487, file: !299, discriminator: 18)
!2494 = !DILocation(line: 682, column: 25, scope: !2495)
!2495 = !DILexicalBlockFile(scope: !2467, file: !299, discriminator: 20)
!2496 = !DILocation(line: 682, column: 25, scope: !2497)
!2497 = !DILexicalBlockFile(scope: !2498, file: !299, discriminator: 22)
!2498 = distinct !DILexicalBlock(scope: !2499, file: !299, line: 682, column: 25)
!2499 = distinct !DILexicalBlock(scope: !2456, file: !299, line: 682, column: 25)
!2500 = !DILocation(line: 682, column: 25, scope: !2501)
!2501 = !DILexicalBlockFile(scope: !2499, file: !299, discriminator: 22)
!2502 = !DILocation(line: 682, column: 25, scope: !2503)
!2503 = !DILexicalBlockFile(scope: !2498, file: !299, discriminator: 23)
!2504 = !DILocation(line: 682, column: 25, scope: !2505)
!2505 = !DILexicalBlockFile(scope: !2499, file: !299, discriminator: 24)
!2506 = !DILocation(line: 683, column: 25, scope: !2507)
!2507 = !DILexicalBlockFile(scope: !2508, file: !299, discriminator: 1)
!2508 = distinct !DILexicalBlock(scope: !2509, file: !299, line: 683, column: 25)
!2509 = distinct !DILexicalBlock(scope: !2457, file: !299, line: 683, column: 25)
!2510 = !DILocation(line: 683, column: 25, scope: !2511)
!2511 = !DILexicalBlockFile(scope: !2509, file: !299, discriminator: 1)
!2512 = !DILocation(line: 683, column: 25, scope: !2513)
!2513 = !DILexicalBlockFile(scope: !2508, file: !299, discriminator: 2)
!2514 = !DILocation(line: 683, column: 25, scope: !2515)
!2515 = !DILexicalBlockFile(scope: !2509, file: !299, discriminator: 3)
!2516 = !DILocation(line: 684, column: 25, scope: !2517)
!2517 = !DILexicalBlockFile(scope: !2518, file: !299, discriminator: 1)
!2518 = distinct !DILexicalBlock(scope: !2519, file: !299, line: 684, column: 25)
!2519 = distinct !DILexicalBlock(scope: !2457, file: !299, line: 684, column: 25)
!2520 = !DILocation(line: 684, column: 25, scope: !2521)
!2521 = !DILexicalBlockFile(scope: !2519, file: !299, discriminator: 1)
!2522 = !DILocation(line: 684, column: 25, scope: !2523)
!2523 = !DILexicalBlockFile(scope: !2518, file: !299, discriminator: 2)
!2524 = !DILocation(line: 684, column: 25, scope: !2525)
!2525 = !DILexicalBlockFile(scope: !2519, file: !299, discriminator: 3)
!2526 = !DILocation(line: 685, column: 38, scope: !2457)
!2527 = !DILocation(line: 685, column: 33, scope: !2457)
!2528 = !DILocation(line: 686, column: 23, scope: !2457)
!2529 = !DILocation(line: 687, column: 30, scope: !2530)
!2530 = distinct !DILexicalBlock(scope: !2450, file: !299, line: 687, column: 30)
!2531 = !DILocation(line: 687, column: 30, scope: !2450)
!2532 = !DILocation(line: 689, column: 25, scope: !2533)
!2533 = !DILexicalBlockFile(scope: !2534, file: !299, discriminator: 1)
!2534 = distinct !DILexicalBlock(scope: !2535, file: !299, line: 689, column: 25)
!2535 = distinct !DILexicalBlock(scope: !2536, file: !299, line: 689, column: 25)
!2536 = distinct !DILexicalBlock(scope: !2530, file: !299, line: 688, column: 23)
!2537 = !DILocation(line: 689, column: 25, scope: !2538)
!2538 = !DILexicalBlockFile(scope: !2535, file: !299, discriminator: 1)
!2539 = !DILocation(line: 689, column: 25, scope: !2540)
!2540 = !DILexicalBlockFile(scope: !2534, file: !299, discriminator: 2)
!2541 = !DILocation(line: 689, column: 25, scope: !2542)
!2542 = !DILexicalBlockFile(scope: !2535, file: !299, discriminator: 3)
!2543 = !DILocation(line: 691, column: 23, scope: !2536)
!2544 = !DILocation(line: 692, column: 35, scope: !2545)
!2545 = distinct !DILexicalBlock(scope: !2451, file: !299, line: 692, column: 25)
!2546 = !DILocation(line: 692, column: 30, scope: !2545)
!2547 = !DILocation(line: 692, column: 25, scope: !2451)
!2548 = !DILocation(line: 694, column: 21, scope: !2549)
!2549 = !DILexicalBlockFile(scope: !2550, file: !299, discriminator: 1)
!2550 = distinct !DILexicalBlock(scope: !2551, file: !299, line: 694, column: 21)
!2551 = distinct !DILexicalBlock(scope: !2451, file: !299, line: 694, column: 21)
!2552 = !DILocation(line: 694, column: 21, scope: !2553)
!2553 = !DILexicalBlockFile(scope: !2550, file: !299, discriminator: 2)
!2554 = !DILocation(line: 694, column: 21, scope: !2555)
!2555 = !DILexicalBlockFile(scope: !2556, file: !299, discriminator: 4)
!2556 = distinct !DILexicalBlock(scope: !2557, file: !299, line: 694, column: 21)
!2557 = distinct !DILexicalBlock(scope: !2558, file: !299, line: 694, column: 21)
!2558 = distinct !DILexicalBlock(scope: !2550, file: !299, line: 694, column: 21)
!2559 = !DILocation(line: 694, column: 21, scope: !2560)
!2560 = !DILexicalBlockFile(scope: !2557, file: !299, discriminator: 4)
!2561 = !DILocation(line: 694, column: 21, scope: !2562)
!2562 = !DILexicalBlockFile(scope: !2556, file: !299, discriminator: 5)
!2563 = !DILocation(line: 694, column: 21, scope: !2564)
!2564 = !DILexicalBlockFile(scope: !2557, file: !299, discriminator: 6)
!2565 = !DILocation(line: 694, column: 21, scope: !2566)
!2566 = !DILexicalBlockFile(scope: !2567, file: !299, discriminator: 9)
!2567 = distinct !DILexicalBlock(scope: !2568, file: !299, line: 694, column: 21)
!2568 = distinct !DILexicalBlock(scope: !2558, file: !299, line: 694, column: 21)
!2569 = !DILocation(line: 694, column: 21, scope: !2570)
!2570 = !DILexicalBlockFile(scope: !2568, file: !299, discriminator: 9)
!2571 = !DILocation(line: 694, column: 21, scope: !2572)
!2572 = !DILexicalBlockFile(scope: !2567, file: !299, discriminator: 10)
!2573 = !DILocation(line: 694, column: 21, scope: !2574)
!2574 = !DILexicalBlockFile(scope: !2568, file: !299, discriminator: 11)
!2575 = !DILocation(line: 694, column: 21, scope: !2576)
!2576 = !DILexicalBlockFile(scope: !2558, file: !299, discriminator: 13)
!2577 = !DILocation(line: 695, column: 21, scope: !2578)
!2578 = !DILexicalBlockFile(scope: !2579, file: !299, discriminator: 1)
!2579 = distinct !DILexicalBlock(scope: !2580, file: !299, line: 695, column: 21)
!2580 = distinct !DILexicalBlock(scope: !2451, file: !299, line: 695, column: 21)
!2581 = !DILocation(line: 695, column: 21, scope: !2582)
!2582 = !DILexicalBlockFile(scope: !2580, file: !299, discriminator: 1)
!2583 = !DILocation(line: 695, column: 21, scope: !2584)
!2584 = !DILexicalBlockFile(scope: !2579, file: !299, discriminator: 2)
!2585 = !DILocation(line: 695, column: 21, scope: !2586)
!2586 = !DILexicalBlockFile(scope: !2580, file: !299, discriminator: 3)
!2587 = !DILocation(line: 696, column: 25, scope: !2451)
!2588 = !DILocation(line: 678, column: 17, scope: !2589)
!2589 = !DILexicalBlockFile(scope: !2452, file: !299, discriminator: 1)
!2590 = distinct !{!2590, !2591, !2592}
!2591 = !DILocation(line: 678, column: 17, scope: !2453)
!2592 = !DILocation(line: 697, column: 19, scope: !2453)
!2593 = !DILocation(line: 704, column: 34, scope: !2594)
!2594 = distinct !DILexicalBlock(scope: !1996, file: !299, line: 704, column: 11)
!2595 = !DILocation(line: 706, column: 14, scope: !2594)
!2596 = !DILocation(line: 707, column: 14, scope: !2594)
!2597 = !DILocation(line: 707, column: 35, scope: !2598)
!2598 = !DILexicalBlockFile(scope: !2594, file: !299, discriminator: 1)
!2599 = !DILocation(line: 707, column: 17, scope: !2598)
!2600 = !DILocation(line: 707, column: 53, scope: !2598)
!2601 = !DILocation(line: 707, column: 47, scope: !2598)
!2602 = !DILocation(line: 707, column: 65, scope: !2598)
!2603 = !DILocation(line: 708, column: 15, scope: !2598)
!2604 = !DILocation(line: 708, column: 11, scope: !2594)
!2605 = !DILocation(line: 704, column: 11, scope: !2606)
!2606 = !DILexicalBlockFile(scope: !1996, file: !299, discriminator: 2)
!2607 = !DILocation(line: 712, column: 7, scope: !2608)
!2608 = !DILexicalBlockFile(scope: !2609, file: !299, discriminator: 1)
!2609 = distinct !DILexicalBlock(scope: !1996, file: !299, line: 712, column: 7)
!2610 = !DILocation(line: 712, column: 7, scope: !2611)
!2611 = !DILexicalBlockFile(scope: !2612, file: !299, discriminator: 4)
!2612 = distinct !DILexicalBlock(scope: !2609, file: !299, line: 712, column: 7)
!2613 = !DILocation(line: 712, column: 7, scope: !2614)
!2614 = !DILexicalBlockFile(scope: !2612, file: !299, discriminator: 3)
!2615 = !DILocation(line: 712, column: 7, scope: !2616)
!2616 = !DILexicalBlockFile(scope: !2617, file: !299, discriminator: 6)
!2617 = distinct !DILexicalBlock(scope: !2618, file: !299, line: 712, column: 7)
!2618 = distinct !DILexicalBlock(scope: !2619, file: !299, line: 712, column: 7)
!2619 = distinct !DILexicalBlock(scope: !2612, file: !299, line: 712, column: 7)
!2620 = !DILocation(line: 712, column: 7, scope: !2621)
!2621 = !DILexicalBlockFile(scope: !2618, file: !299, discriminator: 6)
!2622 = !DILocation(line: 712, column: 7, scope: !2623)
!2623 = !DILexicalBlockFile(scope: !2617, file: !299, discriminator: 7)
!2624 = !DILocation(line: 712, column: 7, scope: !2625)
!2625 = !DILexicalBlockFile(scope: !2618, file: !299, discriminator: 8)
!2626 = !DILocation(line: 712, column: 7, scope: !2627)
!2627 = !DILexicalBlockFile(scope: !2628, file: !299, discriminator: 11)
!2628 = distinct !DILexicalBlock(scope: !2629, file: !299, line: 712, column: 7)
!2629 = distinct !DILexicalBlock(scope: !2619, file: !299, line: 712, column: 7)
!2630 = !DILocation(line: 712, column: 7, scope: !2631)
!2631 = !DILexicalBlockFile(scope: !2629, file: !299, discriminator: 11)
!2632 = !DILocation(line: 712, column: 7, scope: !2633)
!2633 = !DILexicalBlockFile(scope: !2628, file: !299, discriminator: 12)
!2634 = !DILocation(line: 712, column: 7, scope: !2635)
!2635 = !DILexicalBlockFile(scope: !2629, file: !299, discriminator: 13)
!2636 = !DILocation(line: 712, column: 7, scope: !2637)
!2637 = !DILexicalBlockFile(scope: !2638, file: !299, discriminator: 16)
!2638 = distinct !DILexicalBlock(scope: !2639, file: !299, line: 712, column: 7)
!2639 = distinct !DILexicalBlock(scope: !2619, file: !299, line: 712, column: 7)
!2640 = !DILocation(line: 712, column: 7, scope: !2641)
!2641 = !DILexicalBlockFile(scope: !2639, file: !299, discriminator: 16)
!2642 = !DILocation(line: 712, column: 7, scope: !2643)
!2643 = !DILexicalBlockFile(scope: !2638, file: !299, discriminator: 17)
!2644 = !DILocation(line: 712, column: 7, scope: !2645)
!2645 = !DILexicalBlockFile(scope: !2639, file: !299, discriminator: 18)
!2646 = !DILocation(line: 712, column: 7, scope: !2647)
!2647 = !DILexicalBlockFile(scope: !2619, file: !299, discriminator: 20)
!2648 = !DILocation(line: 712, column: 7, scope: !2649)
!2649 = !DILexicalBlockFile(scope: !2650, file: !299, discriminator: 22)
!2650 = distinct !DILexicalBlock(scope: !2651, file: !299, line: 712, column: 7)
!2651 = distinct !DILexicalBlock(scope: !2609, file: !299, line: 712, column: 7)
!2652 = !DILocation(line: 712, column: 7, scope: !2653)
!2653 = !DILexicalBlockFile(scope: !2651, file: !299, discriminator: 22)
!2654 = !DILocation(line: 712, column: 7, scope: !2655)
!2655 = !DILexicalBlockFile(scope: !2650, file: !299, discriminator: 23)
!2656 = !DILocation(line: 712, column: 7, scope: !2657)
!2657 = !DILexicalBlockFile(scope: !2651, file: !299, discriminator: 24)
!2658 = !DILocation(line: 715, column: 7, scope: !2659)
!2659 = !DILexicalBlockFile(scope: !2660, file: !299, discriminator: 1)
!2660 = distinct !DILexicalBlock(scope: !2661, file: !299, line: 715, column: 7)
!2661 = distinct !DILexicalBlock(scope: !1996, file: !299, line: 715, column: 7)
!2662 = !DILocation(line: 715, column: 7, scope: !2663)
!2663 = !DILexicalBlockFile(scope: !2660, file: !299, discriminator: 2)
!2664 = !DILocation(line: 715, column: 7, scope: !2665)
!2665 = !DILexicalBlockFile(scope: !2666, file: !299, discriminator: 4)
!2666 = distinct !DILexicalBlock(scope: !2667, file: !299, line: 715, column: 7)
!2667 = distinct !DILexicalBlock(scope: !2668, file: !299, line: 715, column: 7)
!2668 = distinct !DILexicalBlock(scope: !2660, file: !299, line: 715, column: 7)
!2669 = !DILocation(line: 715, column: 7, scope: !2670)
!2670 = !DILexicalBlockFile(scope: !2667, file: !299, discriminator: 4)
!2671 = !DILocation(line: 715, column: 7, scope: !2672)
!2672 = !DILexicalBlockFile(scope: !2666, file: !299, discriminator: 5)
!2673 = !DILocation(line: 715, column: 7, scope: !2674)
!2674 = !DILexicalBlockFile(scope: !2667, file: !299, discriminator: 6)
!2675 = !DILocation(line: 715, column: 7, scope: !2676)
!2676 = !DILexicalBlockFile(scope: !2677, file: !299, discriminator: 9)
!2677 = distinct !DILexicalBlock(scope: !2678, file: !299, line: 715, column: 7)
!2678 = distinct !DILexicalBlock(scope: !2668, file: !299, line: 715, column: 7)
!2679 = !DILocation(line: 715, column: 7, scope: !2680)
!2680 = !DILexicalBlockFile(scope: !2678, file: !299, discriminator: 9)
!2681 = !DILocation(line: 715, column: 7, scope: !2682)
!2682 = !DILexicalBlockFile(scope: !2677, file: !299, discriminator: 10)
!2683 = !DILocation(line: 715, column: 7, scope: !2684)
!2684 = !DILexicalBlockFile(scope: !2678, file: !299, discriminator: 11)
!2685 = !DILocation(line: 715, column: 7, scope: !2686)
!2686 = !DILexicalBlockFile(scope: !2668, file: !299, discriminator: 13)
!2687 = !DILocation(line: 716, column: 7, scope: !2688)
!2688 = !DILexicalBlockFile(scope: !2689, file: !299, discriminator: 1)
!2689 = distinct !DILexicalBlock(scope: !2690, file: !299, line: 716, column: 7)
!2690 = distinct !DILexicalBlock(scope: !1996, file: !299, line: 716, column: 7)
!2691 = !DILocation(line: 716, column: 7, scope: !2692)
!2692 = !DILexicalBlockFile(scope: !2690, file: !299, discriminator: 1)
!2693 = !DILocation(line: 716, column: 7, scope: !2694)
!2694 = !DILexicalBlockFile(scope: !2689, file: !299, discriminator: 2)
!2695 = !DILocation(line: 716, column: 7, scope: !2696)
!2696 = !DILexicalBlockFile(scope: !2690, file: !299, discriminator: 3)
!2697 = !DILocation(line: 718, column: 13, scope: !2698)
!2698 = distinct !DILexicalBlock(scope: !1996, file: !299, line: 718, column: 11)
!2699 = !DILocation(line: 718, column: 11, scope: !1996)
!2700 = !DILocation(line: 720, column: 5, scope: !1997)
!2701 = !DILocation(line: 392, column: 75, scope: !2702)
!2702 = !DILexicalBlockFile(scope: !1997, file: !299, discriminator: 5)
!2703 = !DILocation(line: 392, column: 3, scope: !2702)
!2704 = distinct !{!2704, !2705, !2706}
!2705 = !DILocation(line: 392, column: 3, scope: !1998)
!2706 = !DILocation(line: 720, column: 5, scope: !1998)
!2707 = !DILocation(line: 722, column: 11, scope: !2708)
!2708 = distinct !DILexicalBlock(scope: !1969, file: !299, line: 722, column: 7)
!2709 = !DILocation(line: 722, column: 16, scope: !2708)
!2710 = !DILocation(line: 730, column: 51, scope: !2711)
!2711 = distinct !DILexicalBlock(scope: !1969, file: !299, line: 730, column: 7)
!2712 = !DILocation(line: 731, column: 10, scope: !2713)
!2713 = !DILexicalBlockFile(scope: !2711, file: !299, discriminator: 1)
!2714 = !DILocation(line: 733, column: 11, scope: !2715)
!2715 = distinct !DILexicalBlock(scope: !2716, file: !299, line: 733, column: 11)
!2716 = distinct !DILexicalBlock(scope: !2711, file: !299, line: 732, column: 5)
!2717 = !DILocation(line: 733, column: 11, scope: !2716)
!2718 = !DILocation(line: 734, column: 16, scope: !2715)
!2719 = !DILocation(line: 734, column: 9, scope: !2715)
!2720 = !DILocation(line: 738, column: 18, scope: !2721)
!2721 = distinct !DILexicalBlock(scope: !2715, file: !299, line: 738, column: 16)
!2722 = !DILocation(line: 738, column: 32, scope: !2723)
!2723 = !DILexicalBlockFile(scope: !2721, file: !299, discriminator: 1)
!2724 = !DILocation(line: 738, column: 29, scope: !2721)
!2725 = !DILocation(line: 747, column: 7, scope: !2726)
!2726 = distinct !DILexicalBlock(scope: !1969, file: !299, line: 747, column: 7)
!2727 = !DILocation(line: 747, column: 20, scope: !2726)
!2728 = !DILocation(line: 748, column: 12, scope: !2729)
!2729 = !DILexicalBlockFile(scope: !2730, file: !299, discriminator: 1)
!2730 = distinct !DILexicalBlock(scope: !2731, file: !299, line: 748, column: 5)
!2731 = distinct !DILexicalBlock(scope: !2726, file: !299, line: 748, column: 5)
!2732 = !DILocation(line: 748, column: 5, scope: !2733)
!2733 = !DILexicalBlockFile(scope: !2731, file: !299, discriminator: 1)
!2734 = !DILocation(line: 749, column: 7, scope: !2735)
!2735 = !DILexicalBlockFile(scope: !2736, file: !299, discriminator: 1)
!2736 = distinct !DILexicalBlock(scope: !2737, file: !299, line: 749, column: 7)
!2737 = distinct !DILexicalBlock(scope: !2730, file: !299, line: 749, column: 7)
!2738 = !DILocation(line: 749, column: 7, scope: !2739)
!2739 = !DILexicalBlockFile(scope: !2737, file: !299, discriminator: 1)
!2740 = !DILocation(line: 749, column: 7, scope: !2741)
!2741 = !DILexicalBlockFile(scope: !2736, file: !299, discriminator: 2)
!2742 = !DILocation(line: 749, column: 7, scope: !2743)
!2743 = !DILexicalBlockFile(scope: !2737, file: !299, discriminator: 3)
!2744 = !DILocation(line: 748, column: 39, scope: !2745)
!2745 = !DILexicalBlockFile(scope: !2730, file: !299, discriminator: 2)
!2746 = distinct !{!2746, !2747, !2748}
!2747 = !DILocation(line: 748, column: 5, scope: !2731)
!2748 = !DILocation(line: 749, column: 7, scope: !2731)
!2749 = !DILocation(line: 751, column: 11, scope: !2750)
!2750 = distinct !DILexicalBlock(scope: !1969, file: !299, line: 751, column: 7)
!2751 = !DILocation(line: 751, column: 7, scope: !1969)
!2752 = !DILocation(line: 752, column: 5, scope: !2750)
!2753 = !DILocation(line: 752, column: 17, scope: !2750)
!2754 = !DILocation(line: 758, column: 21, scope: !2755)
!2755 = distinct !DILexicalBlock(scope: !1969, file: !299, line: 758, column: 7)
!2756 = !DILocation(line: 758, column: 54, scope: !2757)
!2757 = !DILexicalBlockFile(scope: !2755, file: !299, discriminator: 1)
!2758 = !DILocation(line: 758, column: 51, scope: !2755)
!2759 = !DILocation(line: 762, column: 42, scope: !1969)
!2760 = !DILocation(line: 760, column: 10, scope: !1969)
!2761 = !DILocation(line: 760, column: 3, scope: !1969)
!2762 = !DILocation(line: 764, column: 1, scope: !1969)
!2763 = distinct !DISubprogram(name: "gettext_quote", scope: !299, file: !299, line: 199, type: !2764, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !272, variables: !2766)
!2764 = !DISubroutineType(types: !2765)
!2765 = !{!25, !25, !5}
!2766 = !{!2767, !2768, !2769, !2770}
!2767 = !DILocalVariable(name: "msgid", arg: 1, scope: !2763, file: !299, line: 199, type: !25)
!2768 = !DILocalVariable(name: "s", arg: 2, scope: !2763, file: !299, line: 199, type: !5)
!2769 = !DILocalVariable(name: "translation", scope: !2763, file: !299, line: 201, type: !25)
!2770 = !DILocalVariable(name: "locale_code", scope: !2763, file: !299, line: 202, type: !25)
!2771 = !DILocation(line: 199, column: 28, scope: !2763)
!2772 = !DILocation(line: 199, column: 54, scope: !2763)
!2773 = !DILocation(line: 201, column: 29, scope: !2763)
!2774 = !DILocation(line: 201, column: 15, scope: !2763)
!2775 = !DILocation(line: 204, column: 19, scope: !2776)
!2776 = distinct !DILexicalBlock(scope: !2763, file: !299, line: 204, column: 7)
!2777 = !DILocation(line: 204, column: 7, scope: !2763)
!2778 = !DILocation(line: 225, column: 17, scope: !2763)
!2779 = !DILocation(line: 202, column: 15, scope: !2763)
!2780 = !DILocalVariable(name: "s2", arg: 2, scope: !2781, file: !2782, line: 160, type: !25)
!2781 = distinct !DISubprogram(name: "strcaseeq0", scope: !2782, file: !2782, line: 160, type: !2783, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !272, variables: !2785)
!2782 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2783 = !DISubroutineType(types: !2784)
!2784 = !{!41, !25, !25, !21, !21, !21, !21, !21, !21, !21, !21, !21}
!2785 = !{!2786, !2780, !2787, !2788, !2789, !2790, !2791, !2792, !2793, !2794, !2795}
!2786 = !DILocalVariable(name: "s1", arg: 1, scope: !2781, file: !2782, line: 160, type: !25)
!2787 = !DILocalVariable(name: "s20", arg: 3, scope: !2781, file: !2782, line: 160, type: !21)
!2788 = !DILocalVariable(name: "s21", arg: 4, scope: !2781, file: !2782, line: 160, type: !21)
!2789 = !DILocalVariable(name: "s22", arg: 5, scope: !2781, file: !2782, line: 160, type: !21)
!2790 = !DILocalVariable(name: "s23", arg: 6, scope: !2781, file: !2782, line: 160, type: !21)
!2791 = !DILocalVariable(name: "s24", arg: 7, scope: !2781, file: !2782, line: 160, type: !21)
!2792 = !DILocalVariable(name: "s25", arg: 8, scope: !2781, file: !2782, line: 160, type: !21)
!2793 = !DILocalVariable(name: "s26", arg: 9, scope: !2781, file: !2782, line: 160, type: !21)
!2794 = !DILocalVariable(name: "s27", arg: 10, scope: !2781, file: !2782, line: 160, type: !21)
!2795 = !DILocalVariable(name: "s28", arg: 11, scope: !2781, file: !2782, line: 160, type: !21)
!2796 = !DILocation(line: 160, column: 41, scope: !2781, inlinedAt: !2797)
!2797 = distinct !DILocation(line: 226, column: 7, scope: !2798)
!2798 = distinct !DILexicalBlock(scope: !2763, file: !299, line: 226, column: 7)
!2799 = !DILocation(line: 160, column: 120, scope: !2781, inlinedAt: !2797)
!2800 = !DILocation(line: 160, column: 130, scope: !2781, inlinedAt: !2797)
!2801 = !DILocation(line: 162, column: 7, scope: !2802, inlinedAt: !2797)
!2802 = !DILexicalBlockFile(scope: !2803, file: !2782, discriminator: 1)
!2803 = distinct !DILexicalBlock(scope: !2781, file: !2782, line: 162, column: 7)
!2804 = !DILocalVariable(name: "s2", arg: 2, scope: !2805, file: !2782, line: 146, type: !25)
!2805 = distinct !DISubprogram(name: "strcaseeq1", scope: !2782, file: !2782, line: 146, type: !2806, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !272, variables: !2808)
!2806 = !DISubroutineType(types: !2807)
!2807 = !{!41, !25, !25, !21, !21, !21, !21, !21, !21, !21, !21}
!2808 = !{!2809, !2804, !2810, !2811, !2812, !2813, !2814, !2815, !2816, !2817}
!2809 = !DILocalVariable(name: "s1", arg: 1, scope: !2805, file: !2782, line: 146, type: !25)
!2810 = !DILocalVariable(name: "s21", arg: 3, scope: !2805, file: !2782, line: 146, type: !21)
!2811 = !DILocalVariable(name: "s22", arg: 4, scope: !2805, file: !2782, line: 146, type: !21)
!2812 = !DILocalVariable(name: "s23", arg: 5, scope: !2805, file: !2782, line: 146, type: !21)
!2813 = !DILocalVariable(name: "s24", arg: 6, scope: !2805, file: !2782, line: 146, type: !21)
!2814 = !DILocalVariable(name: "s25", arg: 7, scope: !2805, file: !2782, line: 146, type: !21)
!2815 = !DILocalVariable(name: "s26", arg: 8, scope: !2805, file: !2782, line: 146, type: !21)
!2816 = !DILocalVariable(name: "s27", arg: 9, scope: !2805, file: !2782, line: 146, type: !21)
!2817 = !DILocalVariable(name: "s28", arg: 10, scope: !2805, file: !2782, line: 146, type: !21)
!2818 = !DILocation(line: 146, column: 41, scope: !2805, inlinedAt: !2819)
!2819 = distinct !DILocation(line: 167, column: 16, scope: !2820, inlinedAt: !2797)
!2820 = distinct !DILexicalBlock(scope: !2821, file: !2782, line: 164, column: 11)
!2821 = distinct !DILexicalBlock(scope: !2803, file: !2782, line: 163, column: 5)
!2822 = !DILocation(line: 146, column: 110, scope: !2805, inlinedAt: !2819)
!2823 = !DILocation(line: 146, column: 120, scope: !2805, inlinedAt: !2819)
!2824 = !DILocation(line: 148, column: 7, scope: !2825, inlinedAt: !2819)
!2825 = !DILexicalBlockFile(scope: !2826, file: !2782, discriminator: 1)
!2826 = distinct !DILexicalBlock(scope: !2805, file: !2782, line: 148, column: 7)
!2827 = !DILocalVariable(name: "s2", arg: 2, scope: !2828, file: !2782, line: 132, type: !25)
!2828 = distinct !DISubprogram(name: "strcaseeq2", scope: !2782, file: !2782, line: 132, type: !2829, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !272, variables: !2831)
!2829 = !DISubroutineType(types: !2830)
!2830 = !{!41, !25, !25, !21, !21, !21, !21, !21, !21, !21}
!2831 = !{!2832, !2827, !2833, !2834, !2835, !2836, !2837, !2838, !2839}
!2832 = !DILocalVariable(name: "s1", arg: 1, scope: !2828, file: !2782, line: 132, type: !25)
!2833 = !DILocalVariable(name: "s22", arg: 3, scope: !2828, file: !2782, line: 132, type: !21)
!2834 = !DILocalVariable(name: "s23", arg: 4, scope: !2828, file: !2782, line: 132, type: !21)
!2835 = !DILocalVariable(name: "s24", arg: 5, scope: !2828, file: !2782, line: 132, type: !21)
!2836 = !DILocalVariable(name: "s25", arg: 6, scope: !2828, file: !2782, line: 132, type: !21)
!2837 = !DILocalVariable(name: "s26", arg: 7, scope: !2828, file: !2782, line: 132, type: !21)
!2838 = !DILocalVariable(name: "s27", arg: 8, scope: !2828, file: !2782, line: 132, type: !21)
!2839 = !DILocalVariable(name: "s28", arg: 9, scope: !2828, file: !2782, line: 132, type: !21)
!2840 = !DILocation(line: 132, column: 41, scope: !2828, inlinedAt: !2841)
!2841 = distinct !DILocation(line: 153, column: 16, scope: !2842, inlinedAt: !2819)
!2842 = distinct !DILexicalBlock(scope: !2843, file: !2782, line: 150, column: 11)
!2843 = distinct !DILexicalBlock(scope: !2826, file: !2782, line: 149, column: 5)
!2844 = !DILocation(line: 132, column: 100, scope: !2828, inlinedAt: !2841)
!2845 = !DILocation(line: 132, column: 110, scope: !2828, inlinedAt: !2841)
!2846 = !DILocation(line: 134, column: 7, scope: !2847, inlinedAt: !2841)
!2847 = !DILexicalBlockFile(scope: !2848, file: !2782, discriminator: 1)
!2848 = distinct !DILexicalBlock(scope: !2828, file: !2782, line: 134, column: 7)
!2849 = !DILocalVariable(name: "s2", arg: 2, scope: !2850, file: !2782, line: 118, type: !25)
!2850 = distinct !DISubprogram(name: "strcaseeq3", scope: !2782, file: !2782, line: 118, type: !2851, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !272, variables: !2853)
!2851 = !DISubroutineType(types: !2852)
!2852 = !{!41, !25, !25, !21, !21, !21, !21, !21, !21}
!2853 = !{!2854, !2849, !2855, !2856, !2857, !2858, !2859, !2860}
!2854 = !DILocalVariable(name: "s1", arg: 1, scope: !2850, file: !2782, line: 118, type: !25)
!2855 = !DILocalVariable(name: "s23", arg: 3, scope: !2850, file: !2782, line: 118, type: !21)
!2856 = !DILocalVariable(name: "s24", arg: 4, scope: !2850, file: !2782, line: 118, type: !21)
!2857 = !DILocalVariable(name: "s25", arg: 5, scope: !2850, file: !2782, line: 118, type: !21)
!2858 = !DILocalVariable(name: "s26", arg: 6, scope: !2850, file: !2782, line: 118, type: !21)
!2859 = !DILocalVariable(name: "s27", arg: 7, scope: !2850, file: !2782, line: 118, type: !21)
!2860 = !DILocalVariable(name: "s28", arg: 8, scope: !2850, file: !2782, line: 118, type: !21)
!2861 = !DILocation(line: 118, column: 41, scope: !2850, inlinedAt: !2862)
!2862 = distinct !DILocation(line: 139, column: 16, scope: !2863, inlinedAt: !2841)
!2863 = distinct !DILexicalBlock(scope: !2864, file: !2782, line: 136, column: 11)
!2864 = distinct !DILexicalBlock(scope: !2848, file: !2782, line: 135, column: 5)
!2865 = !DILocation(line: 118, column: 90, scope: !2850, inlinedAt: !2862)
!2866 = !DILocation(line: 118, column: 100, scope: !2850, inlinedAt: !2862)
!2867 = !DILocation(line: 120, column: 7, scope: !2868, inlinedAt: !2862)
!2868 = !DILexicalBlockFile(scope: !2869, file: !2782, discriminator: 2)
!2869 = distinct !DILexicalBlock(scope: !2850, file: !2782, line: 120, column: 7)
!2870 = !DILocation(line: 120, column: 7, scope: !2871, inlinedAt: !2862)
!2871 = !DILexicalBlockFile(scope: !2850, file: !2782, discriminator: 2)
!2872 = !DILocalVariable(name: "s2", arg: 2, scope: !2873, file: !2782, line: 104, type: !25)
!2873 = distinct !DISubprogram(name: "strcaseeq4", scope: !2782, file: !2782, line: 104, type: !2874, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !272, variables: !2876)
!2874 = !DISubroutineType(types: !2875)
!2875 = !{!41, !25, !25, !21, !21, !21, !21, !21}
!2876 = !{!2877, !2872, !2878, !2879, !2880, !2881, !2882}
!2877 = !DILocalVariable(name: "s1", arg: 1, scope: !2873, file: !2782, line: 104, type: !25)
!2878 = !DILocalVariable(name: "s24", arg: 3, scope: !2873, file: !2782, line: 104, type: !21)
!2879 = !DILocalVariable(name: "s25", arg: 4, scope: !2873, file: !2782, line: 104, type: !21)
!2880 = !DILocalVariable(name: "s26", arg: 5, scope: !2873, file: !2782, line: 104, type: !21)
!2881 = !DILocalVariable(name: "s27", arg: 6, scope: !2873, file: !2782, line: 104, type: !21)
!2882 = !DILocalVariable(name: "s28", arg: 7, scope: !2873, file: !2782, line: 104, type: !21)
!2883 = !DILocation(line: 104, column: 41, scope: !2873, inlinedAt: !2884)
!2884 = distinct !DILocation(line: 125, column: 16, scope: !2885, inlinedAt: !2862)
!2885 = distinct !DILexicalBlock(scope: !2886, file: !2782, line: 122, column: 11)
!2886 = distinct !DILexicalBlock(scope: !2869, file: !2782, line: 121, column: 5)
!2887 = !DILocation(line: 104, column: 80, scope: !2873, inlinedAt: !2884)
!2888 = !DILocation(line: 104, column: 90, scope: !2873, inlinedAt: !2884)
!2889 = !DILocation(line: 106, column: 7, scope: !2890, inlinedAt: !2884)
!2890 = !DILexicalBlockFile(scope: !2891, file: !2782, discriminator: 2)
!2891 = distinct !DILexicalBlock(scope: !2873, file: !2782, line: 106, column: 7)
!2892 = !DILocation(line: 106, column: 7, scope: !2893, inlinedAt: !2884)
!2893 = !DILexicalBlockFile(scope: !2873, file: !2782, discriminator: 2)
!2894 = !DILocalVariable(name: "s2", arg: 2, scope: !2895, file: !2782, line: 90, type: !25)
!2895 = distinct !DISubprogram(name: "strcaseeq5", scope: !2782, file: !2782, line: 90, type: !2896, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !272, variables: !2898)
!2896 = !DISubroutineType(types: !2897)
!2897 = !{!41, !25, !25, !21, !21, !21, !21}
!2898 = !{!2899, !2894, !2900, !2901, !2902, !2903}
!2899 = !DILocalVariable(name: "s1", arg: 1, scope: !2895, file: !2782, line: 90, type: !25)
!2900 = !DILocalVariable(name: "s25", arg: 3, scope: !2895, file: !2782, line: 90, type: !21)
!2901 = !DILocalVariable(name: "s26", arg: 4, scope: !2895, file: !2782, line: 90, type: !21)
!2902 = !DILocalVariable(name: "s27", arg: 5, scope: !2895, file: !2782, line: 90, type: !21)
!2903 = !DILocalVariable(name: "s28", arg: 6, scope: !2895, file: !2782, line: 90, type: !21)
!2904 = !DILocation(line: 90, column: 41, scope: !2895, inlinedAt: !2905)
!2905 = distinct !DILocation(line: 111, column: 16, scope: !2906, inlinedAt: !2884)
!2906 = distinct !DILexicalBlock(scope: !2907, file: !2782, line: 108, column: 11)
!2907 = distinct !DILexicalBlock(scope: !2891, file: !2782, line: 107, column: 5)
!2908 = !DILocation(line: 90, column: 70, scope: !2895, inlinedAt: !2905)
!2909 = !DILocation(line: 90, column: 80, scope: !2895, inlinedAt: !2905)
!2910 = !DILocation(line: 92, column: 7, scope: !2911, inlinedAt: !2905)
!2911 = !DILexicalBlockFile(scope: !2912, file: !2782, discriminator: 2)
!2912 = distinct !DILexicalBlock(scope: !2895, file: !2782, line: 92, column: 7)
!2913 = !DILocation(line: 92, column: 7, scope: !2914, inlinedAt: !2905)
!2914 = !DILexicalBlockFile(scope: !2895, file: !2782, discriminator: 2)
!2915 = !DILocation(line: 227, column: 12, scope: !2798)
!2916 = !DILocation(line: 227, column: 21, scope: !2798)
!2917 = !DILocation(line: 227, column: 5, scope: !2798)
!2918 = !DILocation(line: 146, column: 41, scope: !2805, inlinedAt: !2919)
!2919 = distinct !DILocation(line: 167, column: 16, scope: !2820, inlinedAt: !2920)
!2920 = distinct !DILocation(line: 228, column: 7, scope: !2921)
!2921 = distinct !DILexicalBlock(scope: !2763, file: !299, line: 228, column: 7)
!2922 = !DILocation(line: 146, column: 110, scope: !2805, inlinedAt: !2919)
!2923 = !DILocation(line: 146, column: 120, scope: !2805, inlinedAt: !2919)
!2924 = !DILocation(line: 148, column: 7, scope: !2825, inlinedAt: !2919)
!2925 = !DILocation(line: 132, column: 41, scope: !2828, inlinedAt: !2926)
!2926 = distinct !DILocation(line: 153, column: 16, scope: !2842, inlinedAt: !2919)
!2927 = !DILocation(line: 132, column: 100, scope: !2828, inlinedAt: !2926)
!2928 = !DILocation(line: 132, column: 110, scope: !2828, inlinedAt: !2926)
!2929 = !DILocation(line: 134, column: 7, scope: !2930, inlinedAt: !2926)
!2930 = !DILexicalBlockFile(scope: !2848, file: !2782, discriminator: 2)
!2931 = !DILocation(line: 134, column: 7, scope: !2932, inlinedAt: !2926)
!2932 = !DILexicalBlockFile(scope: !2828, file: !2782, discriminator: 2)
!2933 = !DILocation(line: 118, column: 41, scope: !2850, inlinedAt: !2934)
!2934 = distinct !DILocation(line: 139, column: 16, scope: !2863, inlinedAt: !2926)
!2935 = !DILocation(line: 118, column: 90, scope: !2850, inlinedAt: !2934)
!2936 = !DILocation(line: 118, column: 100, scope: !2850, inlinedAt: !2934)
!2937 = !DILocation(line: 120, column: 7, scope: !2868, inlinedAt: !2934)
!2938 = !DILocation(line: 120, column: 7, scope: !2871, inlinedAt: !2934)
!2939 = !DILocation(line: 104, column: 41, scope: !2873, inlinedAt: !2940)
!2940 = distinct !DILocation(line: 125, column: 16, scope: !2885, inlinedAt: !2934)
!2941 = !DILocation(line: 104, column: 80, scope: !2873, inlinedAt: !2940)
!2942 = !DILocation(line: 104, column: 90, scope: !2873, inlinedAt: !2940)
!2943 = !DILocation(line: 106, column: 7, scope: !2890, inlinedAt: !2940)
!2944 = !DILocation(line: 106, column: 7, scope: !2893, inlinedAt: !2940)
!2945 = !DILocation(line: 90, column: 41, scope: !2895, inlinedAt: !2946)
!2946 = distinct !DILocation(line: 111, column: 16, scope: !2906, inlinedAt: !2940)
!2947 = !DILocation(line: 90, column: 70, scope: !2895, inlinedAt: !2946)
!2948 = !DILocation(line: 90, column: 80, scope: !2895, inlinedAt: !2946)
!2949 = !DILocation(line: 92, column: 7, scope: !2911, inlinedAt: !2946)
!2950 = !DILocation(line: 92, column: 7, scope: !2914, inlinedAt: !2946)
!2951 = !DILocalVariable(name: "s2", arg: 2, scope: !2952, file: !2782, line: 76, type: !25)
!2952 = distinct !DISubprogram(name: "strcaseeq6", scope: !2782, file: !2782, line: 76, type: !2953, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !272, variables: !2955)
!2953 = !DISubroutineType(types: !2954)
!2954 = !{!41, !25, !25, !21, !21, !21}
!2955 = !{!2956, !2951, !2957, !2958, !2959}
!2956 = !DILocalVariable(name: "s1", arg: 1, scope: !2952, file: !2782, line: 76, type: !25)
!2957 = !DILocalVariable(name: "s26", arg: 3, scope: !2952, file: !2782, line: 76, type: !21)
!2958 = !DILocalVariable(name: "s27", arg: 4, scope: !2952, file: !2782, line: 76, type: !21)
!2959 = !DILocalVariable(name: "s28", arg: 5, scope: !2952, file: !2782, line: 76, type: !21)
!2960 = !DILocation(line: 76, column: 41, scope: !2952, inlinedAt: !2961)
!2961 = distinct !DILocation(line: 97, column: 16, scope: !2962, inlinedAt: !2946)
!2962 = distinct !DILexicalBlock(scope: !2963, file: !2782, line: 94, column: 11)
!2963 = distinct !DILexicalBlock(scope: !2912, file: !2782, line: 93, column: 5)
!2964 = !DILocation(line: 76, column: 60, scope: !2952, inlinedAt: !2961)
!2965 = !DILocation(line: 76, column: 70, scope: !2952, inlinedAt: !2961)
!2966 = !DILocation(line: 78, column: 7, scope: !2967, inlinedAt: !2961)
!2967 = !DILexicalBlockFile(scope: !2968, file: !2782, discriminator: 2)
!2968 = distinct !DILexicalBlock(scope: !2952, file: !2782, line: 78, column: 7)
!2969 = !DILocation(line: 78, column: 7, scope: !2970, inlinedAt: !2961)
!2970 = !DILexicalBlockFile(scope: !2952, file: !2782, discriminator: 2)
!2971 = !DILocalVariable(name: "s2", arg: 2, scope: !2972, file: !2782, line: 62, type: !25)
!2972 = distinct !DISubprogram(name: "strcaseeq7", scope: !2782, file: !2782, line: 62, type: !2973, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !272, variables: !2975)
!2973 = !DISubroutineType(types: !2974)
!2974 = !{!41, !25, !25, !21, !21}
!2975 = !{!2976, !2971, !2977, !2978}
!2976 = !DILocalVariable(name: "s1", arg: 1, scope: !2972, file: !2782, line: 62, type: !25)
!2977 = !DILocalVariable(name: "s27", arg: 3, scope: !2972, file: !2782, line: 62, type: !21)
!2978 = !DILocalVariable(name: "s28", arg: 4, scope: !2972, file: !2782, line: 62, type: !21)
!2979 = !DILocation(line: 62, column: 41, scope: !2972, inlinedAt: !2980)
!2980 = distinct !DILocation(line: 83, column: 16, scope: !2981, inlinedAt: !2961)
!2981 = distinct !DILexicalBlock(scope: !2982, file: !2782, line: 80, column: 11)
!2982 = distinct !DILexicalBlock(scope: !2968, file: !2782, line: 79, column: 5)
!2983 = !DILocation(line: 62, column: 50, scope: !2972, inlinedAt: !2980)
!2984 = !DILocation(line: 62, column: 60, scope: !2972, inlinedAt: !2980)
!2985 = !DILocation(line: 64, column: 7, scope: !2986, inlinedAt: !2980)
!2986 = !DILexicalBlockFile(scope: !2987, file: !2782, discriminator: 2)
!2987 = distinct !DILexicalBlock(scope: !2972, file: !2782, line: 64, column: 7)
!2988 = !DILocation(line: 228, column: 7, scope: !2763)
!2989 = !DILocation(line: 229, column: 12, scope: !2921)
!2990 = !DILocation(line: 229, column: 21, scope: !2921)
!2991 = !DILocation(line: 229, column: 5, scope: !2921)
!2992 = !DILocation(line: 231, column: 13, scope: !2763)
!2993 = !DILocation(line: 231, column: 11, scope: !2763)
!2994 = !DILocation(line: 231, column: 3, scope: !2763)
!2995 = !DILocation(line: 232, column: 1, scope: !2763)
!2996 = distinct !DISubprogram(name: "quotearg_alloc", scope: !299, file: !299, line: 791, type: !2997, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !272, variables: !2999)
!2997 = !DISubroutineType(types: !2998)
!2998 = !{!20, !25, !27, !1837}
!2999 = !{!3000, !3001, !3002}
!3000 = !DILocalVariable(name: "arg", arg: 1, scope: !2996, file: !299, line: 791, type: !25)
!3001 = !DILocalVariable(name: "argsize", arg: 2, scope: !2996, file: !299, line: 791, type: !27)
!3002 = !DILocalVariable(name: "o", arg: 3, scope: !2996, file: !299, line: 792, type: !1837)
!3003 = !DILocation(line: 791, column: 29, scope: !2996)
!3004 = !DILocation(line: 791, column: 41, scope: !2996)
!3005 = !DILocation(line: 792, column: 47, scope: !2996)
!3006 = !DILocalVariable(name: "arg", arg: 1, scope: !3007, file: !299, line: 804, type: !25)
!3007 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !299, file: !299, line: 804, type: !3008, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !272, variables: !3010)
!3008 = !DISubroutineType(types: !3009)
!3009 = !{!20, !25, !27, !768, !1837}
!3010 = !{!3006, !3011, !3012, !3013, !3014, !3015, !3016, !3017, !3018}
!3011 = !DILocalVariable(name: "argsize", arg: 2, scope: !3007, file: !299, line: 804, type: !27)
!3012 = !DILocalVariable(name: "size", arg: 3, scope: !3007, file: !299, line: 804, type: !768)
!3013 = !DILocalVariable(name: "o", arg: 4, scope: !3007, file: !299, line: 805, type: !1837)
!3014 = !DILocalVariable(name: "p", scope: !3007, file: !299, line: 807, type: !1837)
!3015 = !DILocalVariable(name: "e", scope: !3007, file: !299, line: 808, type: !41)
!3016 = !DILocalVariable(name: "flags", scope: !3007, file: !299, line: 810, type: !41)
!3017 = !DILocalVariable(name: "bufsize", scope: !3007, file: !299, line: 811, type: !27)
!3018 = !DILocalVariable(name: "buf", scope: !3007, file: !299, line: 815, type: !20)
!3019 = !DILocation(line: 804, column: 33, scope: !3007, inlinedAt: !3020)
!3020 = distinct !DILocation(line: 794, column: 10, scope: !2996)
!3021 = !DILocation(line: 804, column: 45, scope: !3007, inlinedAt: !3020)
!3022 = !DILocation(line: 804, column: 62, scope: !3007, inlinedAt: !3020)
!3023 = !DILocation(line: 805, column: 51, scope: !3007, inlinedAt: !3020)
!3024 = !DILocation(line: 807, column: 37, scope: !3007, inlinedAt: !3020)
!3025 = !DILocation(line: 807, column: 33, scope: !3007, inlinedAt: !3020)
!3026 = !DILocation(line: 808, column: 11, scope: !3007, inlinedAt: !3020)
!3027 = !DILocation(line: 808, column: 7, scope: !3007, inlinedAt: !3020)
!3028 = !DILocation(line: 810, column: 18, scope: !3007, inlinedAt: !3020)
!3029 = !DILocation(line: 810, column: 24, scope: !3007, inlinedAt: !3020)
!3030 = !DILocation(line: 810, column: 7, scope: !3007, inlinedAt: !3020)
!3031 = !DILocation(line: 811, column: 69, scope: !3007, inlinedAt: !3020)
!3032 = !DILocation(line: 812, column: 53, scope: !3007, inlinedAt: !3020)
!3033 = !DILocation(line: 813, column: 49, scope: !3007, inlinedAt: !3020)
!3034 = !DILocation(line: 814, column: 49, scope: !3007, inlinedAt: !3020)
!3035 = !DILocation(line: 811, column: 20, scope: !3007, inlinedAt: !3020)
!3036 = !DILocation(line: 814, column: 62, scope: !3007, inlinedAt: !3020)
!3037 = !DILocation(line: 811, column: 10, scope: !3007, inlinedAt: !3020)
!3038 = !DILocalVariable(name: "n", arg: 1, scope: !3039, file: !764, line: 220, type: !27)
!3039 = distinct !DISubprogram(name: "xcharalloc", scope: !764, file: !764, line: 220, type: !3040, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !272, variables: !3042)
!3040 = !DISubroutineType(types: !3041)
!3041 = !{!20, !27}
!3042 = !{!3038}
!3043 = !DILocation(line: 220, column: 20, scope: !3039, inlinedAt: !3044)
!3044 = distinct !DILocation(line: 815, column: 15, scope: !3007, inlinedAt: !3020)
!3045 = !DILocation(line: 222, column: 10, scope: !3039, inlinedAt: !3044)
!3046 = !DILocation(line: 815, column: 9, scope: !3007, inlinedAt: !3020)
!3047 = !DILocation(line: 816, column: 60, scope: !3007, inlinedAt: !3020)
!3048 = !DILocation(line: 818, column: 32, scope: !3007, inlinedAt: !3020)
!3049 = !DILocation(line: 818, column: 47, scope: !3007, inlinedAt: !3020)
!3050 = !DILocation(line: 816, column: 3, scope: !3007, inlinedAt: !3020)
!3051 = !DILocation(line: 819, column: 9, scope: !3007, inlinedAt: !3020)
!3052 = !DILocation(line: 794, column: 3, scope: !2996)
!3053 = !DILocation(line: 804, column: 33, scope: !3007)
!3054 = !DILocation(line: 804, column: 45, scope: !3007)
!3055 = !DILocation(line: 804, column: 62, scope: !3007)
!3056 = !DILocation(line: 805, column: 51, scope: !3007)
!3057 = !DILocation(line: 807, column: 37, scope: !3007)
!3058 = !DILocation(line: 807, column: 33, scope: !3007)
!3059 = !DILocation(line: 808, column: 11, scope: !3007)
!3060 = !DILocation(line: 808, column: 7, scope: !3007)
!3061 = !DILocation(line: 810, column: 18, scope: !3007)
!3062 = !DILocation(line: 810, column: 27, scope: !3007)
!3063 = !DILocation(line: 810, column: 24, scope: !3007)
!3064 = !DILocation(line: 810, column: 7, scope: !3007)
!3065 = !DILocation(line: 811, column: 69, scope: !3007)
!3066 = !DILocation(line: 812, column: 53, scope: !3007)
!3067 = !DILocation(line: 813, column: 49, scope: !3007)
!3068 = !DILocation(line: 814, column: 49, scope: !3007)
!3069 = !DILocation(line: 811, column: 20, scope: !3007)
!3070 = !DILocation(line: 814, column: 62, scope: !3007)
!3071 = !DILocation(line: 811, column: 10, scope: !3007)
!3072 = !DILocation(line: 220, column: 20, scope: !3039, inlinedAt: !3073)
!3073 = distinct !DILocation(line: 815, column: 15, scope: !3007)
!3074 = !DILocation(line: 222, column: 10, scope: !3039, inlinedAt: !3073)
!3075 = !DILocation(line: 815, column: 9, scope: !3007)
!3076 = !DILocation(line: 816, column: 60, scope: !3007)
!3077 = !DILocation(line: 818, column: 32, scope: !3007)
!3078 = !DILocation(line: 818, column: 47, scope: !3007)
!3079 = !DILocation(line: 816, column: 3, scope: !3007)
!3080 = !DILocation(line: 819, column: 9, scope: !3007)
!3081 = !DILocation(line: 820, column: 7, scope: !3007)
!3082 = !DILocation(line: 821, column: 11, scope: !3083)
!3083 = distinct !DILexicalBlock(scope: !3007, file: !299, line: 820, column: 7)
!3084 = !DILocation(line: 821, column: 5, scope: !3083)
!3085 = !DILocation(line: 822, column: 3, scope: !3007)
!3086 = distinct !DISubprogram(name: "quotearg_free", scope: !299, file: !299, line: 840, type: !834, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !272, variables: !3087)
!3087 = !{!3088, !3089}
!3088 = !DILocalVariable(name: "sv", scope: !3086, file: !299, line: 842, type: !322)
!3089 = !DILocalVariable(name: "i", scope: !3086, file: !299, line: 843, type: !41)
!3090 = !DILocation(line: 842, column: 24, scope: !3086)
!3091 = !DILocation(line: 842, column: 19, scope: !3086)
!3092 = !DILocation(line: 843, column: 7, scope: !3086)
!3093 = !DILocation(line: 844, column: 19, scope: !3094)
!3094 = !DILexicalBlockFile(scope: !3095, file: !299, discriminator: 1)
!3095 = distinct !DILexicalBlock(scope: !3096, file: !299, line: 844, column: 3)
!3096 = distinct !DILexicalBlock(scope: !3086, file: !299, line: 844, column: 3)
!3097 = !DILocation(line: 844, column: 17, scope: !3094)
!3098 = !DILocation(line: 844, column: 3, scope: !3099)
!3099 = !DILexicalBlockFile(scope: !3096, file: !299, discriminator: 1)
!3100 = !DILocation(line: 845, column: 17, scope: !3095)
!3101 = !{!3102, !819, i64 8}
!3102 = !{!"slotvec", !884, i64 0, !819, i64 8}
!3103 = !DILocation(line: 845, column: 5, scope: !3095)
!3104 = !DILocation(line: 844, column: 28, scope: !3105)
!3105 = !DILexicalBlockFile(scope: !3095, file: !299, discriminator: 2)
!3106 = distinct !{!3106, !3107, !3108}
!3107 = !DILocation(line: 844, column: 3, scope: !3096)
!3108 = !DILocation(line: 845, column: 20, scope: !3096)
!3109 = !DILocation(line: 846, column: 13, scope: !3110)
!3110 = distinct !DILexicalBlock(scope: !3086, file: !299, line: 846, column: 7)
!3111 = !DILocation(line: 846, column: 17, scope: !3110)
!3112 = !DILocation(line: 846, column: 7, scope: !3086)
!3113 = !DILocation(line: 848, column: 7, scope: !3114)
!3114 = distinct !DILexicalBlock(scope: !3110, file: !299, line: 847, column: 5)
!3115 = !DILocation(line: 849, column: 21, scope: !3114)
!3116 = !{!3102, !884, i64 0}
!3117 = !DILocation(line: 850, column: 20, scope: !3114)
!3118 = !DILocation(line: 851, column: 5, scope: !3114)
!3119 = !DILocation(line: 852, column: 10, scope: !3120)
!3120 = distinct !DILexicalBlock(scope: !3086, file: !299, line: 852, column: 7)
!3121 = !DILocation(line: 852, column: 7, scope: !3086)
!3122 = !DILocation(line: 854, column: 13, scope: !3123)
!3123 = distinct !DILexicalBlock(scope: !3120, file: !299, line: 853, column: 5)
!3124 = !DILocation(line: 854, column: 7, scope: !3123)
!3125 = !DILocation(line: 855, column: 15, scope: !3123)
!3126 = !DILocation(line: 856, column: 5, scope: !3123)
!3127 = !DILocation(line: 857, column: 10, scope: !3086)
!3128 = !DILocation(line: 858, column: 1, scope: !3086)
!3129 = distinct !DISubprogram(name: "quotearg_n", scope: !299, file: !299, line: 922, type: !3130, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !272, variables: !3132)
!3130 = !DISubroutineType(types: !3131)
!3131 = !{!20, !41, !25}
!3132 = !{!3133, !3134}
!3133 = !DILocalVariable(name: "n", arg: 1, scope: !3129, file: !299, line: 922, type: !41)
!3134 = !DILocalVariable(name: "arg", arg: 2, scope: !3129, file: !299, line: 922, type: !25)
!3135 = !DILocation(line: 922, column: 17, scope: !3129)
!3136 = !DILocation(line: 922, column: 32, scope: !3129)
!3137 = !DILocation(line: 924, column: 10, scope: !3129)
!3138 = !DILocation(line: 924, column: 3, scope: !3129)
!3139 = distinct !DISubprogram(name: "quotearg_n_options", scope: !299, file: !299, line: 869, type: !3140, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !272, variables: !3142)
!3140 = !DISubroutineType(types: !3141)
!3141 = !{!20, !41, !25, !27, !1837}
!3142 = !{!3143, !3144, !3145, !3146, !3147, !3148, !3149, !3152, !3154, !3155, !3156}
!3143 = !DILocalVariable(name: "n", arg: 1, scope: !3139, file: !299, line: 869, type: !41)
!3144 = !DILocalVariable(name: "arg", arg: 2, scope: !3139, file: !299, line: 869, type: !25)
!3145 = !DILocalVariable(name: "argsize", arg: 3, scope: !3139, file: !299, line: 869, type: !27)
!3146 = !DILocalVariable(name: "options", arg: 4, scope: !3139, file: !299, line: 870, type: !1837)
!3147 = !DILocalVariable(name: "e", scope: !3139, file: !299, line: 872, type: !41)
!3148 = !DILocalVariable(name: "sv", scope: !3139, file: !299, line: 874, type: !322)
!3149 = !DILocalVariable(name: "preallocated", scope: !3150, file: !299, line: 881, type: !49)
!3150 = distinct !DILexicalBlock(scope: !3151, file: !299, line: 880, column: 5)
!3151 = distinct !DILexicalBlock(scope: !3139, file: !299, line: 879, column: 7)
!3152 = !DILocalVariable(name: "size", scope: !3153, file: !299, line: 894, type: !27)
!3153 = distinct !DILexicalBlock(scope: !3139, file: !299, line: 893, column: 3)
!3154 = !DILocalVariable(name: "val", scope: !3153, file: !299, line: 895, type: !20)
!3155 = !DILocalVariable(name: "flags", scope: !3153, file: !299, line: 897, type: !41)
!3156 = !DILocalVariable(name: "qsize", scope: !3153, file: !299, line: 898, type: !27)
!3157 = !DILocation(line: 869, column: 25, scope: !3139)
!3158 = !DILocation(line: 869, column: 40, scope: !3139)
!3159 = !DILocation(line: 869, column: 52, scope: !3139)
!3160 = !DILocation(line: 870, column: 51, scope: !3139)
!3161 = !DILocation(line: 872, column: 11, scope: !3139)
!3162 = !DILocation(line: 872, column: 7, scope: !3139)
!3163 = !DILocation(line: 874, column: 24, scope: !3139)
!3164 = !DILocation(line: 874, column: 19, scope: !3139)
!3165 = !DILocation(line: 876, column: 9, scope: !3166)
!3166 = distinct !DILexicalBlock(scope: !3139, file: !299, line: 876, column: 7)
!3167 = !DILocation(line: 876, column: 7, scope: !3139)
!3168 = !DILocation(line: 877, column: 5, scope: !3166)
!3169 = !DILocation(line: 879, column: 7, scope: !3151)
!3170 = !DILocation(line: 879, column: 14, scope: !3151)
!3171 = !DILocation(line: 879, column: 7, scope: !3139)
!3172 = !DILocation(line: 881, column: 31, scope: !3150)
!3173 = !DILocation(line: 883, column: 67, scope: !3174)
!3174 = distinct !DILexicalBlock(scope: !3150, file: !299, line: 883, column: 11)
!3175 = !DILocation(line: 883, column: 11, scope: !3150)
!3176 = !DILocation(line: 884, column: 9, scope: !3174)
!3177 = !DILocation(line: 886, column: 32, scope: !3178)
!3178 = !DILexicalBlockFile(scope: !3150, file: !299, discriminator: 3)
!3179 = !DILocation(line: 886, column: 61, scope: !3178)
!3180 = !DILocation(line: 886, column: 58, scope: !3178)
!3181 = !DILocation(line: 886, column: 66, scope: !3178)
!3182 = !DILocation(line: 886, column: 22, scope: !3178)
!3183 = !DILocation(line: 886, column: 15, scope: !3178)
!3184 = !DILocation(line: 887, column: 11, scope: !3150)
!3185 = !DILocation(line: 888, column: 15, scope: !3186)
!3186 = distinct !DILexicalBlock(scope: !3150, file: !299, line: 887, column: 11)
!3187 = !{i64 0, i64 8, !883, i64 8, i64 8, !818}
!3188 = !DILocation(line: 888, column: 9, scope: !3186)
!3189 = !DILocation(line: 889, column: 20, scope: !3150)
!3190 = !DILocation(line: 889, column: 18, scope: !3150)
!3191 = !DILocation(line: 889, column: 7, scope: !3150)
!3192 = !DILocation(line: 889, column: 38, scope: !3150)
!3193 = !DILocation(line: 889, column: 31, scope: !3150)
!3194 = !DILocation(line: 889, column: 48, scope: !3150)
!3195 = !DILocation(line: 890, column: 14, scope: !3150)
!3196 = !DILocation(line: 891, column: 5, scope: !3150)
!3197 = !DILocation(line: 894, column: 19, scope: !3153)
!3198 = !DILocation(line: 894, column: 25, scope: !3153)
!3199 = !DILocation(line: 894, column: 12, scope: !3153)
!3200 = !DILocation(line: 895, column: 23, scope: !3153)
!3201 = !DILocation(line: 895, column: 11, scope: !3153)
!3202 = !DILocation(line: 897, column: 26, scope: !3153)
!3203 = !DILocation(line: 897, column: 32, scope: !3153)
!3204 = !DILocation(line: 897, column: 9, scope: !3153)
!3205 = !DILocation(line: 899, column: 55, scope: !3153)
!3206 = !DILocation(line: 900, column: 46, scope: !3153)
!3207 = !DILocation(line: 901, column: 55, scope: !3153)
!3208 = !DILocation(line: 902, column: 55, scope: !3153)
!3209 = !DILocation(line: 898, column: 20, scope: !3153)
!3210 = !DILocation(line: 898, column: 12, scope: !3153)
!3211 = !DILocation(line: 904, column: 14, scope: !3212)
!3212 = distinct !DILexicalBlock(scope: !3153, file: !299, line: 904, column: 9)
!3213 = !DILocation(line: 904, column: 9, scope: !3153)
!3214 = !DILocation(line: 906, column: 35, scope: !3215)
!3215 = distinct !DILexicalBlock(scope: !3212, file: !299, line: 905, column: 7)
!3216 = !DILocation(line: 906, column: 20, scope: !3215)
!3217 = !DILocation(line: 907, column: 17, scope: !3218)
!3218 = distinct !DILexicalBlock(scope: !3215, file: !299, line: 907, column: 13)
!3219 = !DILocation(line: 907, column: 13, scope: !3215)
!3220 = !DILocation(line: 908, column: 11, scope: !3218)
!3221 = !DILocation(line: 220, column: 20, scope: !3039, inlinedAt: !3222)
!3222 = distinct !DILocation(line: 909, column: 27, scope: !3215)
!3223 = !DILocation(line: 222, column: 10, scope: !3039, inlinedAt: !3222)
!3224 = !DILocation(line: 909, column: 19, scope: !3215)
!3225 = !DILocation(line: 910, column: 69, scope: !3215)
!3226 = !DILocation(line: 912, column: 44, scope: !3215)
!3227 = !DILocation(line: 913, column: 44, scope: !3215)
!3228 = !DILocation(line: 910, column: 9, scope: !3215)
!3229 = !DILocation(line: 914, column: 7, scope: !3215)
!3230 = !DILocation(line: 916, column: 11, scope: !3153)
!3231 = !DILocation(line: 917, column: 5, scope: !3153)
!3232 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !299, file: !299, line: 928, type: !3233, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !272, variables: !3235)
!3233 = !DISubroutineType(types: !3234)
!3234 = !{!20, !41, !25, !27}
!3235 = !{!3236, !3237, !3238}
!3236 = !DILocalVariable(name: "n", arg: 1, scope: !3232, file: !299, line: 928, type: !41)
!3237 = !DILocalVariable(name: "arg", arg: 2, scope: !3232, file: !299, line: 928, type: !25)
!3238 = !DILocalVariable(name: "argsize", arg: 3, scope: !3232, file: !299, line: 928, type: !27)
!3239 = !DILocation(line: 928, column: 21, scope: !3232)
!3240 = !DILocation(line: 928, column: 36, scope: !3232)
!3241 = !DILocation(line: 928, column: 48, scope: !3232)
!3242 = !DILocation(line: 930, column: 10, scope: !3232)
!3243 = !DILocation(line: 930, column: 3, scope: !3232)
!3244 = distinct !DISubprogram(name: "quotearg", scope: !299, file: !299, line: 934, type: !3245, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !272, variables: !3247)
!3245 = !DISubroutineType(types: !3246)
!3246 = !{!20, !25}
!3247 = !{!3248}
!3248 = !DILocalVariable(name: "arg", arg: 1, scope: !3244, file: !299, line: 934, type: !25)
!3249 = !DILocation(line: 934, column: 23, scope: !3244)
!3250 = !DILocation(line: 922, column: 17, scope: !3129, inlinedAt: !3251)
!3251 = distinct !DILocation(line: 936, column: 10, scope: !3244)
!3252 = !DILocation(line: 922, column: 32, scope: !3129, inlinedAt: !3251)
!3253 = !DILocation(line: 924, column: 10, scope: !3129, inlinedAt: !3251)
!3254 = !DILocation(line: 936, column: 3, scope: !3244)
!3255 = distinct !DISubprogram(name: "quotearg_mem", scope: !299, file: !299, line: 940, type: !3256, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !272, variables: !3258)
!3256 = !DISubroutineType(types: !3257)
!3257 = !{!20, !25, !27}
!3258 = !{!3259, !3260}
!3259 = !DILocalVariable(name: "arg", arg: 1, scope: !3255, file: !299, line: 940, type: !25)
!3260 = !DILocalVariable(name: "argsize", arg: 2, scope: !3255, file: !299, line: 940, type: !27)
!3261 = !DILocation(line: 940, column: 27, scope: !3255)
!3262 = !DILocation(line: 940, column: 39, scope: !3255)
!3263 = !DILocation(line: 928, column: 21, scope: !3232, inlinedAt: !3264)
!3264 = distinct !DILocation(line: 942, column: 10, scope: !3255)
!3265 = !DILocation(line: 928, column: 36, scope: !3232, inlinedAt: !3264)
!3266 = !DILocation(line: 928, column: 48, scope: !3232, inlinedAt: !3264)
!3267 = !DILocation(line: 930, column: 10, scope: !3232, inlinedAt: !3264)
!3268 = !DILocation(line: 942, column: 3, scope: !3255)
!3269 = distinct !DISubprogram(name: "quotearg_n_style", scope: !299, file: !299, line: 946, type: !3270, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !272, variables: !3272)
!3270 = !DISubroutineType(types: !3271)
!3271 = !{!20, !41, !5, !25}
!3272 = !{!3273, !3274, !3275, !3276}
!3273 = !DILocalVariable(name: "n", arg: 1, scope: !3269, file: !299, line: 946, type: !41)
!3274 = !DILocalVariable(name: "s", arg: 2, scope: !3269, file: !299, line: 946, type: !5)
!3275 = !DILocalVariable(name: "arg", arg: 3, scope: !3269, file: !299, line: 946, type: !25)
!3276 = !DILocalVariable(name: "o", scope: !3269, file: !299, line: 948, type: !1838)
!3277 = !DILocalVariable(name: "o", scope: !3278, file: !299, line: 187, type: !306)
!3278 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !299, file: !299, line: 185, type: !3279, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !272, variables: !3281)
!3279 = !DISubroutineType(types: !3280)
!3280 = !{!306, !5}
!3281 = !{!3282, !3277}
!3282 = !DILocalVariable(name: "style", arg: 1, scope: !3278, file: !299, line: 185, type: !5)
!3283 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!3284 = !DILocation(line: 187, column: 26, scope: !3278, inlinedAt: !3285)
!3285 = distinct !DILocation(line: 948, column: 36, scope: !3269)
!3286 = !DILocation(line: 946, column: 23, scope: !3269)
!3287 = !DILocation(line: 946, column: 45, scope: !3269)
!3288 = !DILocation(line: 946, column: 60, scope: !3269)
!3289 = !DILocation(line: 948, column: 3, scope: !3269)
!3290 = !DILocation(line: 948, column: 32, scope: !3269)
!3291 = !DILocation(line: 185, column: 48, scope: !3278, inlinedAt: !3285)
!3292 = !DILocation(line: 187, column: 3, scope: !3278, inlinedAt: !3285)
!3293 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!3294 = !DILocation(line: 188, column: 13, scope: !3295, inlinedAt: !3285)
!3295 = distinct !DILexicalBlock(scope: !3278, file: !299, line: 188, column: 7)
!3296 = !DILocation(line: 188, column: 7, scope: !3278, inlinedAt: !3285)
!3297 = !DILocation(line: 189, column: 5, scope: !3295, inlinedAt: !3285)
!3298 = !{!3299}
!3299 = distinct !{!3299, !3300, !"quoting_options_from_style: argument 0"}
!3300 = distinct !{!3300, !"quoting_options_from_style"}
!3301 = !DILocation(line: 191, column: 10, scope: !3278, inlinedAt: !3285)
!3302 = !DILocation(line: 192, column: 1, scope: !3278, inlinedAt: !3285)
!3303 = !DILocation(line: 949, column: 10, scope: !3269)
!3304 = !DILocation(line: 950, column: 1, scope: !3269)
!3305 = !DILocation(line: 949, column: 3, scope: !3269)
!3306 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !299, file: !299, line: 953, type: !3307, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !272, variables: !3309)
!3307 = !DISubroutineType(types: !3308)
!3308 = !{!20, !41, !5, !25, !27}
!3309 = !{!3310, !3311, !3312, !3313, !3314}
!3310 = !DILocalVariable(name: "n", arg: 1, scope: !3306, file: !299, line: 953, type: !41)
!3311 = !DILocalVariable(name: "s", arg: 2, scope: !3306, file: !299, line: 953, type: !5)
!3312 = !DILocalVariable(name: "arg", arg: 3, scope: !3306, file: !299, line: 954, type: !25)
!3313 = !DILocalVariable(name: "argsize", arg: 4, scope: !3306, file: !299, line: 954, type: !27)
!3314 = !DILocalVariable(name: "o", scope: !3306, file: !299, line: 956, type: !1838)
!3315 = !DILocation(line: 187, column: 26, scope: !3278, inlinedAt: !3316)
!3316 = distinct !DILocation(line: 956, column: 36, scope: !3306)
!3317 = !DILocation(line: 953, column: 27, scope: !3306)
!3318 = !DILocation(line: 953, column: 49, scope: !3306)
!3319 = !DILocation(line: 954, column: 35, scope: !3306)
!3320 = !DILocation(line: 954, column: 47, scope: !3306)
!3321 = !DILocation(line: 956, column: 3, scope: !3306)
!3322 = !DILocation(line: 956, column: 32, scope: !3306)
!3323 = !DILocation(line: 185, column: 48, scope: !3278, inlinedAt: !3316)
!3324 = !DILocation(line: 187, column: 3, scope: !3278, inlinedAt: !3316)
!3325 = !DILocation(line: 188, column: 13, scope: !3295, inlinedAt: !3316)
!3326 = !DILocation(line: 188, column: 7, scope: !3278, inlinedAt: !3316)
!3327 = !DILocation(line: 189, column: 5, scope: !3295, inlinedAt: !3316)
!3328 = !{!3329}
!3329 = distinct !{!3329, !3330, !"quoting_options_from_style: argument 0"}
!3330 = distinct !{!3330, !"quoting_options_from_style"}
!3331 = !DILocation(line: 191, column: 10, scope: !3278, inlinedAt: !3316)
!3332 = !DILocation(line: 192, column: 1, scope: !3278, inlinedAt: !3316)
!3333 = !DILocation(line: 957, column: 10, scope: !3306)
!3334 = !DILocation(line: 958, column: 1, scope: !3306)
!3335 = !DILocation(line: 957, column: 3, scope: !3306)
!3336 = distinct !DISubprogram(name: "quotearg_style", scope: !299, file: !299, line: 961, type: !3337, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !272, variables: !3339)
!3337 = !DISubroutineType(types: !3338)
!3338 = !{!20, !5, !25}
!3339 = !{!3340, !3341}
!3340 = !DILocalVariable(name: "s", arg: 1, scope: !3336, file: !299, line: 961, type: !5)
!3341 = !DILocalVariable(name: "arg", arg: 2, scope: !3336, file: !299, line: 961, type: !25)
!3342 = !DILocation(line: 187, column: 26, scope: !3278, inlinedAt: !3343)
!3343 = distinct !DILocation(line: 948, column: 36, scope: !3269, inlinedAt: !3344)
!3344 = distinct !DILocation(line: 963, column: 10, scope: !3336)
!3345 = !DILocation(line: 961, column: 36, scope: !3336)
!3346 = !DILocation(line: 961, column: 51, scope: !3336)
!3347 = !DILocation(line: 946, column: 23, scope: !3269, inlinedAt: !3344)
!3348 = !DILocation(line: 946, column: 45, scope: !3269, inlinedAt: !3344)
!3349 = !DILocation(line: 946, column: 60, scope: !3269, inlinedAt: !3344)
!3350 = !DILocation(line: 948, column: 3, scope: !3269, inlinedAt: !3344)
!3351 = !DILocation(line: 948, column: 32, scope: !3269, inlinedAt: !3344)
!3352 = !DILocation(line: 185, column: 48, scope: !3278, inlinedAt: !3343)
!3353 = !DILocation(line: 187, column: 3, scope: !3278, inlinedAt: !3343)
!3354 = !DILocation(line: 188, column: 13, scope: !3295, inlinedAt: !3343)
!3355 = !DILocation(line: 188, column: 7, scope: !3278, inlinedAt: !3343)
!3356 = !DILocation(line: 189, column: 5, scope: !3295, inlinedAt: !3343)
!3357 = !{!3358}
!3358 = distinct !{!3358, !3359, !"quoting_options_from_style: argument 0"}
!3359 = distinct !{!3359, !"quoting_options_from_style"}
!3360 = !DILocation(line: 191, column: 10, scope: !3278, inlinedAt: !3343)
!3361 = !DILocation(line: 192, column: 1, scope: !3278, inlinedAt: !3343)
!3362 = !DILocation(line: 949, column: 10, scope: !3269, inlinedAt: !3344)
!3363 = !DILocation(line: 950, column: 1, scope: !3269, inlinedAt: !3344)
!3364 = !DILocation(line: 963, column: 3, scope: !3336)
!3365 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !299, file: !299, line: 967, type: !3366, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !272, variables: !3368)
!3366 = !DISubroutineType(types: !3367)
!3367 = !{!20, !5, !25, !27}
!3368 = !{!3369, !3370, !3371}
!3369 = !DILocalVariable(name: "s", arg: 1, scope: !3365, file: !299, line: 967, type: !5)
!3370 = !DILocalVariable(name: "arg", arg: 2, scope: !3365, file: !299, line: 967, type: !25)
!3371 = !DILocalVariable(name: "argsize", arg: 3, scope: !3365, file: !299, line: 967, type: !27)
!3372 = !DILocation(line: 187, column: 26, scope: !3278, inlinedAt: !3373)
!3373 = distinct !DILocation(line: 956, column: 36, scope: !3306, inlinedAt: !3374)
!3374 = distinct !DILocation(line: 969, column: 10, scope: !3365)
!3375 = !DILocation(line: 967, column: 40, scope: !3365)
!3376 = !DILocation(line: 967, column: 55, scope: !3365)
!3377 = !DILocation(line: 967, column: 67, scope: !3365)
!3378 = !DILocation(line: 953, column: 27, scope: !3306, inlinedAt: !3374)
!3379 = !DILocation(line: 953, column: 49, scope: !3306, inlinedAt: !3374)
!3380 = !DILocation(line: 954, column: 35, scope: !3306, inlinedAt: !3374)
!3381 = !DILocation(line: 954, column: 47, scope: !3306, inlinedAt: !3374)
!3382 = !DILocation(line: 956, column: 3, scope: !3306, inlinedAt: !3374)
!3383 = !DILocation(line: 956, column: 32, scope: !3306, inlinedAt: !3374)
!3384 = !DILocation(line: 185, column: 48, scope: !3278, inlinedAt: !3373)
!3385 = !DILocation(line: 187, column: 3, scope: !3278, inlinedAt: !3373)
!3386 = !DILocation(line: 188, column: 13, scope: !3295, inlinedAt: !3373)
!3387 = !DILocation(line: 188, column: 7, scope: !3278, inlinedAt: !3373)
!3388 = !DILocation(line: 189, column: 5, scope: !3295, inlinedAt: !3373)
!3389 = !{!3390}
!3390 = distinct !{!3390, !3391, !"quoting_options_from_style: argument 0"}
!3391 = distinct !{!3391, !"quoting_options_from_style"}
!3392 = !DILocation(line: 191, column: 10, scope: !3278, inlinedAt: !3373)
!3393 = !DILocation(line: 192, column: 1, scope: !3278, inlinedAt: !3373)
!3394 = !DILocation(line: 957, column: 10, scope: !3306, inlinedAt: !3374)
!3395 = !DILocation(line: 958, column: 1, scope: !3306, inlinedAt: !3374)
!3396 = !DILocation(line: 969, column: 3, scope: !3365)
!3397 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !299, file: !299, line: 973, type: !3398, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !272, variables: !3400)
!3398 = !DISubroutineType(types: !3399)
!3399 = !{!20, !25, !27, !21}
!3400 = !{!3401, !3402, !3403, !3404}
!3401 = !DILocalVariable(name: "arg", arg: 1, scope: !3397, file: !299, line: 973, type: !25)
!3402 = !DILocalVariable(name: "argsize", arg: 2, scope: !3397, file: !299, line: 973, type: !27)
!3403 = !DILocalVariable(name: "ch", arg: 3, scope: !3397, file: !299, line: 973, type: !21)
!3404 = !DILocalVariable(name: "options", scope: !3397, file: !299, line: 975, type: !306)
!3405 = !DILocation(line: 973, column: 32, scope: !3397)
!3406 = !DILocation(line: 973, column: 44, scope: !3397)
!3407 = !DILocation(line: 973, column: 58, scope: !3397)
!3408 = !DILocation(line: 975, column: 3, scope: !3397)
!3409 = !DILocation(line: 976, column: 13, scope: !3397)
!3410 = !{i64 0, i64 4, !908, i64 4, i64 4, !970, i64 8, i64 32, !908, i64 40, i64 8, !818, i64 48, i64 8, !818}
!3411 = !DILocation(line: 975, column: 26, scope: !3397)
!3412 = !DILocation(line: 144, column: 43, scope: !1861, inlinedAt: !3413)
!3413 = distinct !DILocation(line: 977, column: 3, scope: !3397)
!3414 = !DILocation(line: 144, column: 51, scope: !1861, inlinedAt: !3413)
!3415 = !DILocation(line: 144, column: 58, scope: !1861, inlinedAt: !3413)
!3416 = !DILocation(line: 146, column: 17, scope: !1861, inlinedAt: !3413)
!3417 = !DILocation(line: 148, column: 62, scope: !1879, inlinedAt: !3413)
!3418 = !DILocation(line: 148, column: 57, scope: !1879, inlinedAt: !3413)
!3419 = !DILocation(line: 147, column: 17, scope: !1861, inlinedAt: !3413)
!3420 = !DILocation(line: 149, column: 18, scope: !1861, inlinedAt: !3413)
!3421 = !DILocation(line: 149, column: 15, scope: !1861, inlinedAt: !3413)
!3422 = !DILocation(line: 149, column: 7, scope: !1861, inlinedAt: !3413)
!3423 = !DILocation(line: 150, column: 12, scope: !1861, inlinedAt: !3413)
!3424 = !DILocation(line: 150, column: 15, scope: !1861, inlinedAt: !3413)
!3425 = !DILocation(line: 150, column: 25, scope: !1861, inlinedAt: !3413)
!3426 = !DILocation(line: 150, column: 7, scope: !1861, inlinedAt: !3413)
!3427 = !DILocation(line: 151, column: 18, scope: !1861, inlinedAt: !3413)
!3428 = !DILocation(line: 151, column: 23, scope: !1861, inlinedAt: !3413)
!3429 = !DILocation(line: 151, column: 6, scope: !1861, inlinedAt: !3413)
!3430 = !DILocation(line: 978, column: 10, scope: !3397)
!3431 = !DILocation(line: 979, column: 1, scope: !3397)
!3432 = !DILocation(line: 978, column: 3, scope: !3397)
!3433 = distinct !DISubprogram(name: "quotearg_char", scope: !299, file: !299, line: 982, type: !3434, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !272, variables: !3436)
!3434 = !DISubroutineType(types: !3435)
!3435 = !{!20, !25, !21}
!3436 = !{!3437, !3438}
!3437 = !DILocalVariable(name: "arg", arg: 1, scope: !3433, file: !299, line: 982, type: !25)
!3438 = !DILocalVariable(name: "ch", arg: 2, scope: !3433, file: !299, line: 982, type: !21)
!3439 = !DILocation(line: 982, column: 28, scope: !3433)
!3440 = !DILocation(line: 982, column: 38, scope: !3433)
!3441 = !DILocation(line: 973, column: 32, scope: !3397, inlinedAt: !3442)
!3442 = distinct !DILocation(line: 984, column: 10, scope: !3433)
!3443 = !DILocation(line: 973, column: 44, scope: !3397, inlinedAt: !3442)
!3444 = !DILocation(line: 973, column: 58, scope: !3397, inlinedAt: !3442)
!3445 = !DILocation(line: 975, column: 3, scope: !3397, inlinedAt: !3442)
!3446 = !DILocation(line: 976, column: 13, scope: !3397, inlinedAt: !3442)
!3447 = !DILocation(line: 975, column: 26, scope: !3397, inlinedAt: !3442)
!3448 = !DILocation(line: 144, column: 43, scope: !1861, inlinedAt: !3449)
!3449 = distinct !DILocation(line: 977, column: 3, scope: !3397, inlinedAt: !3442)
!3450 = !DILocation(line: 144, column: 51, scope: !1861, inlinedAt: !3449)
!3451 = !DILocation(line: 144, column: 58, scope: !1861, inlinedAt: !3449)
!3452 = !DILocation(line: 146, column: 17, scope: !1861, inlinedAt: !3449)
!3453 = !DILocation(line: 148, column: 62, scope: !1879, inlinedAt: !3449)
!3454 = !DILocation(line: 148, column: 57, scope: !1879, inlinedAt: !3449)
!3455 = !DILocation(line: 147, column: 17, scope: !1861, inlinedAt: !3449)
!3456 = !DILocation(line: 149, column: 18, scope: !1861, inlinedAt: !3449)
!3457 = !DILocation(line: 149, column: 15, scope: !1861, inlinedAt: !3449)
!3458 = !DILocation(line: 149, column: 7, scope: !1861, inlinedAt: !3449)
!3459 = !DILocation(line: 150, column: 12, scope: !1861, inlinedAt: !3449)
!3460 = !DILocation(line: 150, column: 15, scope: !1861, inlinedAt: !3449)
!3461 = !DILocation(line: 150, column: 25, scope: !1861, inlinedAt: !3449)
!3462 = !DILocation(line: 150, column: 7, scope: !1861, inlinedAt: !3449)
!3463 = !DILocation(line: 151, column: 18, scope: !1861, inlinedAt: !3449)
!3464 = !DILocation(line: 151, column: 23, scope: !1861, inlinedAt: !3449)
!3465 = !DILocation(line: 151, column: 6, scope: !1861, inlinedAt: !3449)
!3466 = !DILocation(line: 978, column: 10, scope: !3397, inlinedAt: !3442)
!3467 = !DILocation(line: 979, column: 1, scope: !3397, inlinedAt: !3442)
!3468 = !DILocation(line: 984, column: 3, scope: !3433)
!3469 = distinct !DISubprogram(name: "quotearg_colon", scope: !299, file: !299, line: 988, type: !3245, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !272, variables: !3470)
!3470 = !{!3471}
!3471 = !DILocalVariable(name: "arg", arg: 1, scope: !3469, file: !299, line: 988, type: !25)
!3472 = !DILocation(line: 988, column: 29, scope: !3469)
!3473 = !DILocation(line: 982, column: 28, scope: !3433, inlinedAt: !3474)
!3474 = distinct !DILocation(line: 990, column: 10, scope: !3469)
!3475 = !DILocation(line: 982, column: 38, scope: !3433, inlinedAt: !3474)
!3476 = !DILocation(line: 973, column: 32, scope: !3397, inlinedAt: !3477)
!3477 = distinct !DILocation(line: 984, column: 10, scope: !3433, inlinedAt: !3474)
!3478 = !DILocation(line: 973, column: 44, scope: !3397, inlinedAt: !3477)
!3479 = !DILocation(line: 973, column: 58, scope: !3397, inlinedAt: !3477)
!3480 = !DILocation(line: 975, column: 3, scope: !3397, inlinedAt: !3477)
!3481 = !DILocation(line: 976, column: 13, scope: !3397, inlinedAt: !3477)
!3482 = !DILocation(line: 975, column: 26, scope: !3397, inlinedAt: !3477)
!3483 = !DILocation(line: 144, column: 43, scope: !1861, inlinedAt: !3484)
!3484 = distinct !DILocation(line: 977, column: 3, scope: !3397, inlinedAt: !3477)
!3485 = !DILocation(line: 144, column: 51, scope: !1861, inlinedAt: !3484)
!3486 = !DILocation(line: 144, column: 58, scope: !1861, inlinedAt: !3484)
!3487 = !DILocation(line: 146, column: 17, scope: !1861, inlinedAt: !3484)
!3488 = !DILocation(line: 148, column: 57, scope: !1879, inlinedAt: !3484)
!3489 = !DILocation(line: 147, column: 17, scope: !1861, inlinedAt: !3484)
!3490 = !DILocation(line: 149, column: 7, scope: !1861, inlinedAt: !3484)
!3491 = !DILocation(line: 150, column: 12, scope: !1861, inlinedAt: !3484)
!3492 = !DILocation(line: 151, column: 6, scope: !1861, inlinedAt: !3484)
!3493 = !DILocation(line: 978, column: 10, scope: !3397, inlinedAt: !3477)
!3494 = !DILocation(line: 979, column: 1, scope: !3397, inlinedAt: !3477)
!3495 = !DILocation(line: 990, column: 3, scope: !3469)
!3496 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !299, file: !299, line: 994, type: !3256, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !272, variables: !3497)
!3497 = !{!3498, !3499}
!3498 = !DILocalVariable(name: "arg", arg: 1, scope: !3496, file: !299, line: 994, type: !25)
!3499 = !DILocalVariable(name: "argsize", arg: 2, scope: !3496, file: !299, line: 994, type: !27)
!3500 = !DILocation(line: 994, column: 33, scope: !3496)
!3501 = !DILocation(line: 994, column: 45, scope: !3496)
!3502 = !DILocation(line: 973, column: 32, scope: !3397, inlinedAt: !3503)
!3503 = distinct !DILocation(line: 996, column: 10, scope: !3496)
!3504 = !DILocation(line: 973, column: 44, scope: !3397, inlinedAt: !3503)
!3505 = !DILocation(line: 973, column: 58, scope: !3397, inlinedAt: !3503)
!3506 = !DILocation(line: 975, column: 3, scope: !3397, inlinedAt: !3503)
!3507 = !DILocation(line: 976, column: 13, scope: !3397, inlinedAt: !3503)
!3508 = !DILocation(line: 975, column: 26, scope: !3397, inlinedAt: !3503)
!3509 = !DILocation(line: 144, column: 43, scope: !1861, inlinedAt: !3510)
!3510 = distinct !DILocation(line: 977, column: 3, scope: !3397, inlinedAt: !3503)
!3511 = !DILocation(line: 144, column: 51, scope: !1861, inlinedAt: !3510)
!3512 = !DILocation(line: 144, column: 58, scope: !1861, inlinedAt: !3510)
!3513 = !DILocation(line: 146, column: 17, scope: !1861, inlinedAt: !3510)
!3514 = !DILocation(line: 148, column: 57, scope: !1879, inlinedAt: !3510)
!3515 = !DILocation(line: 147, column: 17, scope: !1861, inlinedAt: !3510)
!3516 = !DILocation(line: 149, column: 7, scope: !1861, inlinedAt: !3510)
!3517 = !DILocation(line: 150, column: 12, scope: !1861, inlinedAt: !3510)
!3518 = !DILocation(line: 151, column: 6, scope: !1861, inlinedAt: !3510)
!3519 = !DILocation(line: 978, column: 10, scope: !3397, inlinedAt: !3503)
!3520 = !DILocation(line: 979, column: 1, scope: !3397, inlinedAt: !3503)
!3521 = !DILocation(line: 996, column: 3, scope: !3496)
!3522 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !299, file: !299, line: 1000, type: !3270, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !272, variables: !3523)
!3523 = !{!3524, !3525, !3526, !3527}
!3524 = !DILocalVariable(name: "n", arg: 1, scope: !3522, file: !299, line: 1000, type: !41)
!3525 = !DILocalVariable(name: "s", arg: 2, scope: !3522, file: !299, line: 1000, type: !5)
!3526 = !DILocalVariable(name: "arg", arg: 3, scope: !3522, file: !299, line: 1000, type: !25)
!3527 = !DILocalVariable(name: "options", scope: !3522, file: !299, line: 1002, type: !306)
!3528 = !DILocation(line: 187, column: 26, scope: !3278, inlinedAt: !3529)
!3529 = distinct !DILocation(line: 1003, column: 13, scope: !3522)
!3530 = !DILocation(line: 1000, column: 29, scope: !3522)
!3531 = !DILocation(line: 1000, column: 51, scope: !3522)
!3532 = !DILocation(line: 1000, column: 66, scope: !3522)
!3533 = !DILocation(line: 1002, column: 3, scope: !3522)
!3534 = !DILocation(line: 185, column: 48, scope: !3278, inlinedAt: !3529)
!3535 = !DILocation(line: 187, column: 3, scope: !3278, inlinedAt: !3529)
!3536 = !DILocation(line: 188, column: 13, scope: !3295, inlinedAt: !3529)
!3537 = !DILocation(line: 188, column: 7, scope: !3278, inlinedAt: !3529)
!3538 = !DILocation(line: 189, column: 5, scope: !3295, inlinedAt: !3529)
!3539 = !{!3540}
!3540 = distinct !{!3540, !3541, !"quoting_options_from_style: argument 0"}
!3541 = distinct !{!3541, !"quoting_options_from_style"}
!3542 = !DILocation(line: 191, column: 10, scope: !3278, inlinedAt: !3529)
!3543 = !DILocation(line: 192, column: 1, scope: !3278, inlinedAt: !3529)
!3544 = !DILocation(line: 1003, column: 13, scope: !3522)
!3545 = !DILocation(line: 1002, column: 26, scope: !3522)
!3546 = !DILocation(line: 144, column: 43, scope: !1861, inlinedAt: !3547)
!3547 = distinct !DILocation(line: 1004, column: 3, scope: !3522)
!3548 = !DILocation(line: 144, column: 51, scope: !1861, inlinedAt: !3547)
!3549 = !DILocation(line: 144, column: 58, scope: !1861, inlinedAt: !3547)
!3550 = !DILocation(line: 146, column: 17, scope: !1861, inlinedAt: !3547)
!3551 = !DILocation(line: 148, column: 57, scope: !1879, inlinedAt: !3547)
!3552 = !DILocation(line: 147, column: 17, scope: !1861, inlinedAt: !3547)
!3553 = !DILocation(line: 149, column: 7, scope: !1861, inlinedAt: !3547)
!3554 = !DILocation(line: 150, column: 12, scope: !1861, inlinedAt: !3547)
!3555 = !DILocation(line: 151, column: 6, scope: !1861, inlinedAt: !3547)
!3556 = !DILocation(line: 1005, column: 10, scope: !3522)
!3557 = !DILocation(line: 1006, column: 1, scope: !3522)
!3558 = !DILocation(line: 1005, column: 3, scope: !3522)
!3559 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !299, file: !299, line: 1009, type: !3560, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !272, variables: !3562)
!3560 = !DISubroutineType(types: !3561)
!3561 = !{!20, !41, !25, !25, !25}
!3562 = !{!3563, !3564, !3565, !3566}
!3563 = !DILocalVariable(name: "n", arg: 1, scope: !3559, file: !299, line: 1009, type: !41)
!3564 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3559, file: !299, line: 1009, type: !25)
!3565 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3559, file: !299, line: 1010, type: !25)
!3566 = !DILocalVariable(name: "arg", arg: 4, scope: !3559, file: !299, line: 1010, type: !25)
!3567 = !DILocation(line: 1009, column: 24, scope: !3559)
!3568 = !DILocation(line: 1009, column: 39, scope: !3559)
!3569 = !DILocation(line: 1010, column: 32, scope: !3559)
!3570 = !DILocation(line: 1010, column: 57, scope: !3559)
!3571 = !DILocalVariable(name: "n", arg: 1, scope: !3572, file: !299, line: 1017, type: !41)
!3572 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !299, file: !299, line: 1017, type: !3573, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !272, variables: !3575)
!3573 = !DISubroutineType(types: !3574)
!3574 = !{!20, !41, !25, !25, !25, !27}
!3575 = !{!3571, !3576, !3577, !3578, !3579, !3580}
!3576 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3572, file: !299, line: 1017, type: !25)
!3577 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3572, file: !299, line: 1018, type: !25)
!3578 = !DILocalVariable(name: "arg", arg: 4, scope: !3572, file: !299, line: 1019, type: !25)
!3579 = !DILocalVariable(name: "argsize", arg: 5, scope: !3572, file: !299, line: 1019, type: !27)
!3580 = !DILocalVariable(name: "o", scope: !3572, file: !299, line: 1021, type: !306)
!3581 = !DILocation(line: 1017, column: 28, scope: !3572, inlinedAt: !3582)
!3582 = distinct !DILocation(line: 1012, column: 10, scope: !3559)
!3583 = !DILocation(line: 1017, column: 43, scope: !3572, inlinedAt: !3582)
!3584 = !DILocation(line: 1018, column: 36, scope: !3572, inlinedAt: !3582)
!3585 = !DILocation(line: 1019, column: 36, scope: !3572, inlinedAt: !3582)
!3586 = !DILocation(line: 1019, column: 48, scope: !3572, inlinedAt: !3582)
!3587 = !DILocation(line: 1021, column: 3, scope: !3572, inlinedAt: !3582)
!3588 = !DILocation(line: 1021, column: 30, scope: !3572, inlinedAt: !3582)
!3589 = !DILocation(line: 1021, column: 26, scope: !3572, inlinedAt: !3582)
!3590 = !DILocation(line: 171, column: 45, scope: !1911, inlinedAt: !3591)
!3591 = distinct !DILocation(line: 1022, column: 3, scope: !3572, inlinedAt: !3582)
!3592 = !DILocation(line: 172, column: 33, scope: !1911, inlinedAt: !3591)
!3593 = !DILocation(line: 172, column: 57, scope: !1911, inlinedAt: !3591)
!3594 = !DILocation(line: 176, column: 6, scope: !1911, inlinedAt: !3591)
!3595 = !DILocation(line: 176, column: 12, scope: !1911, inlinedAt: !3591)
!3596 = !DILocation(line: 177, column: 8, scope: !1927, inlinedAt: !3591)
!3597 = !DILocation(line: 177, column: 23, scope: !1929, inlinedAt: !3591)
!3598 = !DILocation(line: 177, column: 19, scope: !1927, inlinedAt: !3591)
!3599 = !DILocation(line: 178, column: 5, scope: !1927, inlinedAt: !3591)
!3600 = !DILocation(line: 179, column: 6, scope: !1911, inlinedAt: !3591)
!3601 = !DILocation(line: 179, column: 17, scope: !1911, inlinedAt: !3591)
!3602 = !DILocation(line: 180, column: 6, scope: !1911, inlinedAt: !3591)
!3603 = !DILocation(line: 180, column: 18, scope: !1911, inlinedAt: !3591)
!3604 = !DILocation(line: 1023, column: 10, scope: !3572, inlinedAt: !3582)
!3605 = !DILocation(line: 1024, column: 1, scope: !3572, inlinedAt: !3582)
!3606 = !DILocation(line: 1012, column: 3, scope: !3559)
!3607 = !DILocation(line: 1017, column: 28, scope: !3572)
!3608 = !DILocation(line: 1017, column: 43, scope: !3572)
!3609 = !DILocation(line: 1018, column: 36, scope: !3572)
!3610 = !DILocation(line: 1019, column: 36, scope: !3572)
!3611 = !DILocation(line: 1019, column: 48, scope: !3572)
!3612 = !DILocation(line: 1021, column: 3, scope: !3572)
!3613 = !DILocation(line: 1021, column: 30, scope: !3572)
!3614 = !DILocation(line: 1021, column: 26, scope: !3572)
!3615 = !DILocation(line: 171, column: 45, scope: !1911, inlinedAt: !3616)
!3616 = distinct !DILocation(line: 1022, column: 3, scope: !3572)
!3617 = !DILocation(line: 172, column: 33, scope: !1911, inlinedAt: !3616)
!3618 = !DILocation(line: 172, column: 57, scope: !1911, inlinedAt: !3616)
!3619 = !DILocation(line: 176, column: 6, scope: !1911, inlinedAt: !3616)
!3620 = !DILocation(line: 176, column: 12, scope: !1911, inlinedAt: !3616)
!3621 = !DILocation(line: 177, column: 8, scope: !1927, inlinedAt: !3616)
!3622 = !DILocation(line: 177, column: 23, scope: !1929, inlinedAt: !3616)
!3623 = !DILocation(line: 177, column: 19, scope: !1927, inlinedAt: !3616)
!3624 = !DILocation(line: 178, column: 5, scope: !1927, inlinedAt: !3616)
!3625 = !DILocation(line: 179, column: 6, scope: !1911, inlinedAt: !3616)
!3626 = !DILocation(line: 179, column: 17, scope: !1911, inlinedAt: !3616)
!3627 = !DILocation(line: 180, column: 6, scope: !1911, inlinedAt: !3616)
!3628 = !DILocation(line: 180, column: 18, scope: !1911, inlinedAt: !3616)
!3629 = !DILocation(line: 1023, column: 10, scope: !3572)
!3630 = !DILocation(line: 1024, column: 1, scope: !3572)
!3631 = !DILocation(line: 1023, column: 3, scope: !3572)
!3632 = distinct !DISubprogram(name: "quotearg_custom", scope: !299, file: !299, line: 1027, type: !3633, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !272, variables: !3635)
!3633 = !DISubroutineType(types: !3634)
!3634 = !{!20, !25, !25, !25}
!3635 = !{!3636, !3637, !3638}
!3636 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3632, file: !299, line: 1027, type: !25)
!3637 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3632, file: !299, line: 1027, type: !25)
!3638 = !DILocalVariable(name: "arg", arg: 3, scope: !3632, file: !299, line: 1028, type: !25)
!3639 = !DILocation(line: 1027, column: 30, scope: !3632)
!3640 = !DILocation(line: 1027, column: 54, scope: !3632)
!3641 = !DILocation(line: 1028, column: 30, scope: !3632)
!3642 = !DILocation(line: 1009, column: 24, scope: !3559, inlinedAt: !3643)
!3643 = distinct !DILocation(line: 1030, column: 10, scope: !3632)
!3644 = !DILocation(line: 1009, column: 39, scope: !3559, inlinedAt: !3643)
!3645 = !DILocation(line: 1010, column: 32, scope: !3559, inlinedAt: !3643)
!3646 = !DILocation(line: 1010, column: 57, scope: !3559, inlinedAt: !3643)
!3647 = !DILocation(line: 1017, column: 28, scope: !3572, inlinedAt: !3648)
!3648 = distinct !DILocation(line: 1012, column: 10, scope: !3559, inlinedAt: !3643)
!3649 = !DILocation(line: 1017, column: 43, scope: !3572, inlinedAt: !3648)
!3650 = !DILocation(line: 1018, column: 36, scope: !3572, inlinedAt: !3648)
!3651 = !DILocation(line: 1019, column: 36, scope: !3572, inlinedAt: !3648)
!3652 = !DILocation(line: 1019, column: 48, scope: !3572, inlinedAt: !3648)
!3653 = !DILocation(line: 1021, column: 3, scope: !3572, inlinedAt: !3648)
!3654 = !DILocation(line: 1021, column: 30, scope: !3572, inlinedAt: !3648)
!3655 = !DILocation(line: 1021, column: 26, scope: !3572, inlinedAt: !3648)
!3656 = !DILocation(line: 171, column: 45, scope: !1911, inlinedAt: !3657)
!3657 = distinct !DILocation(line: 1022, column: 3, scope: !3572, inlinedAt: !3648)
!3658 = !DILocation(line: 172, column: 33, scope: !1911, inlinedAt: !3657)
!3659 = !DILocation(line: 172, column: 57, scope: !1911, inlinedAt: !3657)
!3660 = !DILocation(line: 176, column: 6, scope: !1911, inlinedAt: !3657)
!3661 = !DILocation(line: 176, column: 12, scope: !1911, inlinedAt: !3657)
!3662 = !DILocation(line: 177, column: 8, scope: !1927, inlinedAt: !3657)
!3663 = !DILocation(line: 177, column: 23, scope: !1929, inlinedAt: !3657)
!3664 = !DILocation(line: 177, column: 19, scope: !1927, inlinedAt: !3657)
!3665 = !DILocation(line: 178, column: 5, scope: !1927, inlinedAt: !3657)
!3666 = !DILocation(line: 179, column: 6, scope: !1911, inlinedAt: !3657)
!3667 = !DILocation(line: 179, column: 17, scope: !1911, inlinedAt: !3657)
!3668 = !DILocation(line: 180, column: 6, scope: !1911, inlinedAt: !3657)
!3669 = !DILocation(line: 180, column: 18, scope: !1911, inlinedAt: !3657)
!3670 = !DILocation(line: 1023, column: 10, scope: !3572, inlinedAt: !3648)
!3671 = !DILocation(line: 1024, column: 1, scope: !3572, inlinedAt: !3648)
!3672 = !DILocation(line: 1030, column: 3, scope: !3632)
!3673 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !299, file: !299, line: 1034, type: !3674, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !272, variables: !3676)
!3674 = !DISubroutineType(types: !3675)
!3675 = !{!20, !25, !25, !25, !27}
!3676 = !{!3677, !3678, !3679, !3680}
!3677 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3673, file: !299, line: 1034, type: !25)
!3678 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3673, file: !299, line: 1034, type: !25)
!3679 = !DILocalVariable(name: "arg", arg: 3, scope: !3673, file: !299, line: 1035, type: !25)
!3680 = !DILocalVariable(name: "argsize", arg: 4, scope: !3673, file: !299, line: 1035, type: !27)
!3681 = !DILocation(line: 1034, column: 34, scope: !3673)
!3682 = !DILocation(line: 1034, column: 58, scope: !3673)
!3683 = !DILocation(line: 1035, column: 34, scope: !3673)
!3684 = !DILocation(line: 1035, column: 46, scope: !3673)
!3685 = !DILocation(line: 1017, column: 28, scope: !3572, inlinedAt: !3686)
!3686 = distinct !DILocation(line: 1037, column: 10, scope: !3673)
!3687 = !DILocation(line: 1017, column: 43, scope: !3572, inlinedAt: !3686)
!3688 = !DILocation(line: 1018, column: 36, scope: !3572, inlinedAt: !3686)
!3689 = !DILocation(line: 1019, column: 36, scope: !3572, inlinedAt: !3686)
!3690 = !DILocation(line: 1019, column: 48, scope: !3572, inlinedAt: !3686)
!3691 = !DILocation(line: 1021, column: 3, scope: !3572, inlinedAt: !3686)
!3692 = !DILocation(line: 1021, column: 30, scope: !3572, inlinedAt: !3686)
!3693 = !DILocation(line: 1021, column: 26, scope: !3572, inlinedAt: !3686)
!3694 = !DILocation(line: 171, column: 45, scope: !1911, inlinedAt: !3695)
!3695 = distinct !DILocation(line: 1022, column: 3, scope: !3572, inlinedAt: !3686)
!3696 = !DILocation(line: 172, column: 33, scope: !1911, inlinedAt: !3695)
!3697 = !DILocation(line: 172, column: 57, scope: !1911, inlinedAt: !3695)
!3698 = !DILocation(line: 176, column: 6, scope: !1911, inlinedAt: !3695)
!3699 = !DILocation(line: 176, column: 12, scope: !1911, inlinedAt: !3695)
!3700 = !DILocation(line: 177, column: 8, scope: !1927, inlinedAt: !3695)
!3701 = !DILocation(line: 177, column: 23, scope: !1929, inlinedAt: !3695)
!3702 = !DILocation(line: 177, column: 19, scope: !1927, inlinedAt: !3695)
!3703 = !DILocation(line: 178, column: 5, scope: !1927, inlinedAt: !3695)
!3704 = !DILocation(line: 179, column: 6, scope: !1911, inlinedAt: !3695)
!3705 = !DILocation(line: 179, column: 17, scope: !1911, inlinedAt: !3695)
!3706 = !DILocation(line: 180, column: 6, scope: !1911, inlinedAt: !3695)
!3707 = !DILocation(line: 180, column: 18, scope: !1911, inlinedAt: !3695)
!3708 = !DILocation(line: 1023, column: 10, scope: !3572, inlinedAt: !3686)
!3709 = !DILocation(line: 1024, column: 1, scope: !3572, inlinedAt: !3686)
!3710 = !DILocation(line: 1037, column: 3, scope: !3673)
!3711 = distinct !DISubprogram(name: "quote_n_mem", scope: !299, file: !299, line: 1052, type: !3712, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !272, variables: !3714)
!3712 = !DISubroutineType(types: !3713)
!3713 = !{!25, !41, !25, !27}
!3714 = !{!3715, !3716, !3717}
!3715 = !DILocalVariable(name: "n", arg: 1, scope: !3711, file: !299, line: 1052, type: !41)
!3716 = !DILocalVariable(name: "arg", arg: 2, scope: !3711, file: !299, line: 1052, type: !25)
!3717 = !DILocalVariable(name: "argsize", arg: 3, scope: !3711, file: !299, line: 1052, type: !27)
!3718 = !DILocation(line: 1052, column: 18, scope: !3711)
!3719 = !DILocation(line: 1052, column: 33, scope: !3711)
!3720 = !DILocation(line: 1052, column: 45, scope: !3711)
!3721 = !DILocation(line: 1054, column: 10, scope: !3711)
!3722 = !DILocation(line: 1054, column: 3, scope: !3711)
!3723 = distinct !DISubprogram(name: "quote_mem", scope: !299, file: !299, line: 1058, type: !3724, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !272, variables: !3726)
!3724 = !DISubroutineType(types: !3725)
!3725 = !{!25, !25, !27}
!3726 = !{!3727, !3728}
!3727 = !DILocalVariable(name: "arg", arg: 1, scope: !3723, file: !299, line: 1058, type: !25)
!3728 = !DILocalVariable(name: "argsize", arg: 2, scope: !3723, file: !299, line: 1058, type: !27)
!3729 = !DILocation(line: 1058, column: 24, scope: !3723)
!3730 = !DILocation(line: 1058, column: 36, scope: !3723)
!3731 = !DILocation(line: 1052, column: 18, scope: !3711, inlinedAt: !3732)
!3732 = distinct !DILocation(line: 1060, column: 10, scope: !3723)
!3733 = !DILocation(line: 1052, column: 33, scope: !3711, inlinedAt: !3732)
!3734 = !DILocation(line: 1052, column: 45, scope: !3711, inlinedAt: !3732)
!3735 = !DILocation(line: 1054, column: 10, scope: !3711, inlinedAt: !3732)
!3736 = !DILocation(line: 1060, column: 3, scope: !3723)
!3737 = distinct !DISubprogram(name: "quote_n", scope: !299, file: !299, line: 1064, type: !3738, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !272, variables: !3740)
!3738 = !DISubroutineType(types: !3739)
!3739 = !{!25, !41, !25}
!3740 = !{!3741, !3742}
!3741 = !DILocalVariable(name: "n", arg: 1, scope: !3737, file: !299, line: 1064, type: !41)
!3742 = !DILocalVariable(name: "arg", arg: 2, scope: !3737, file: !299, line: 1064, type: !25)
!3743 = !DILocation(line: 1064, column: 14, scope: !3737)
!3744 = !DILocation(line: 1064, column: 29, scope: !3737)
!3745 = !DILocation(line: 1052, column: 18, scope: !3711, inlinedAt: !3746)
!3746 = distinct !DILocation(line: 1066, column: 10, scope: !3737)
!3747 = !DILocation(line: 1052, column: 33, scope: !3711, inlinedAt: !3746)
!3748 = !DILocation(line: 1052, column: 45, scope: !3711, inlinedAt: !3746)
!3749 = !DILocation(line: 1054, column: 10, scope: !3711, inlinedAt: !3746)
!3750 = !DILocation(line: 1066, column: 3, scope: !3737)
!3751 = distinct !DISubprogram(name: "quote", scope: !299, file: !299, line: 1070, type: !1714, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !272, variables: !3752)
!3752 = !{!3753}
!3753 = !DILocalVariable(name: "arg", arg: 1, scope: !3751, file: !299, line: 1070, type: !25)
!3754 = !DILocation(line: 1070, column: 20, scope: !3751)
!3755 = !DILocation(line: 1064, column: 14, scope: !3737, inlinedAt: !3756)
!3756 = distinct !DILocation(line: 1072, column: 10, scope: !3751)
!3757 = !DILocation(line: 1064, column: 29, scope: !3737, inlinedAt: !3756)
!3758 = !DILocation(line: 1052, column: 18, scope: !3711, inlinedAt: !3759)
!3759 = distinct !DILocation(line: 1066, column: 10, scope: !3737, inlinedAt: !3756)
!3760 = !DILocation(line: 1052, column: 33, scope: !3711, inlinedAt: !3759)
!3761 = !DILocation(line: 1052, column: 45, scope: !3711, inlinedAt: !3759)
!3762 = !DILocation(line: 1054, column: 10, scope: !3711, inlinedAt: !3759)
!3763 = !DILocation(line: 1072, column: 3, scope: !3751)
!3764 = !DILocation(line: 56, column: 14, scope: !733)
!3765 = !DILocation(line: 56, column: 30, scope: !733)
!3766 = !DILocation(line: 56, column: 42, scope: !733)
!3767 = !DILocation(line: 64, column: 3, scope: !733)
!3768 = !DILocation(line: 66, column: 24, scope: !741)
!3769 = !DILocation(line: 66, column: 15, scope: !741)
!3770 = !DILocation(line: 68, column: 13, scope: !3771)
!3771 = distinct !DILexicalBlock(scope: !741, file: !732, line: 68, column: 11)
!3772 = !DILocation(line: 68, column: 11, scope: !741)
!3773 = !DILocation(line: 70, column: 16, scope: !3774)
!3774 = distinct !DILexicalBlock(scope: !3771, file: !732, line: 70, column: 16)
!3775 = !DILocation(line: 70, column: 16, scope: !3771)
!3776 = distinct !{!3776, !3777, !3778}
!3777 = !DILocation(line: 64, column: 3, scope: !743)
!3778 = !DILocation(line: 76, column: 5, scope: !743)
!3779 = !DILocation(line: 72, column: 22, scope: !3780)
!3780 = distinct !DILexicalBlock(scope: !3774, file: !732, line: 72, column: 16)
!3781 = !DILocation(line: 72, column: 54, scope: !3782)
!3782 = !DILexicalBlockFile(scope: !3780, file: !732, discriminator: 1)
!3783 = !DILocation(line: 72, column: 32, scope: !3780)
!3784 = !DILocation(line: 77, column: 1, scope: !733)
!3785 = distinct !DISubprogram(name: "mkstemp_safer", scope: !3786, file: !3786, line: 31, type: !3787, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !749, variables: !3789)
!3786 = !DIFile(filename: "lib/mkstemp-safer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3787 = !DISubroutineType(types: !3788)
!3788 = !{!41, !20}
!3789 = !{!3790}
!3790 = !DILocalVariable(name: "templ", arg: 1, scope: !3785, file: !3786, line: 31, type: !20)
!3791 = !DILocation(line: 31, column: 22, scope: !3785)
!3792 = !DILocation(line: 33, column: 20, scope: !3785)
!3793 = !DILocation(line: 33, column: 10, scope: !3794)
!3794 = !DILexicalBlockFile(scope: !3785, file: !3786, discriminator: 1)
!3795 = !DILocation(line: 33, column: 3, scope: !3785)
!3796 = distinct !DISubprogram(name: "fd_safer", scope: !3797, file: !3797, line: 37, type: !3798, isLocal: false, isDefinition: true, scopeLine: 38, flags: DIFlagPrototyped, isOptimized: true, unit: !751, variables: !3800)
!3797 = !DIFile(filename: "lib/fd-safer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3798 = !DISubroutineType(types: !3799)
!3799 = !{!41, !41}
!3800 = !{!3801, !3802, !3805}
!3801 = !DILocalVariable(name: "fd", arg: 1, scope: !3796, file: !3797, line: 37, type: !41)
!3802 = !DILocalVariable(name: "f", scope: !3803, file: !3797, line: 41, type: !41)
!3803 = distinct !DILexicalBlock(scope: !3804, file: !3797, line: 40, column: 5)
!3804 = distinct !DILexicalBlock(scope: !3796, file: !3797, line: 39, column: 7)
!3805 = !DILocalVariable(name: "e", scope: !3803, file: !3797, line: 42, type: !41)
!3806 = !DILocation(line: 37, column: 15, scope: !3796)
!3807 = !DILocation(line: 39, column: 26, scope: !3804)
!3808 = !DILocation(line: 41, column: 15, scope: !3803)
!3809 = !DILocation(line: 41, column: 11, scope: !3803)
!3810 = !DILocation(line: 42, column: 15, scope: !3803)
!3811 = !DILocation(line: 42, column: 11, scope: !3803)
!3812 = !DILocation(line: 43, column: 7, scope: !3803)
!3813 = !DILocation(line: 44, column: 13, scope: !3803)
!3814 = !DILocation(line: 46, column: 5, scope: !3803)
!3815 = !DILocation(line: 48, column: 3, scope: !3796)
!3816 = distinct !DISubprogram(name: "version_etc_arn", scope: !757, file: !757, line: 62, type: !3817, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !753, variables: !3859)
!3817 = !DISubroutineType(types: !3818)
!3818 = !{null, !3819, !25, !25, !25, !23, !27}
!3819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3820, size: 64)
!3820 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !151, line: 49, baseType: !3821)
!3821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !153, line: 241, size: 1728, elements: !3822)
!3822 = !{!3823, !3824, !3825, !3826, !3827, !3828, !3829, !3830, !3831, !3832, !3833, !3834, !3835, !3843, !3844, !3845, !3846, !3847, !3848, !3849, !3850, !3851, !3852, !3853, !3854, !3855, !3856, !3857, !3858}
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3821, file: !153, line: 242, baseType: !41, size: 32)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3821, file: !153, line: 247, baseType: !20, size: 64, offset: 64)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3821, file: !153, line: 248, baseType: !20, size: 64, offset: 128)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3821, file: !153, line: 249, baseType: !20, size: 64, offset: 192)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3821, file: !153, line: 250, baseType: !20, size: 64, offset: 256)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3821, file: !153, line: 251, baseType: !20, size: 64, offset: 320)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3821, file: !153, line: 252, baseType: !20, size: 64, offset: 384)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3821, file: !153, line: 253, baseType: !20, size: 64, offset: 448)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3821, file: !153, line: 254, baseType: !20, size: 64, offset: 512)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3821, file: !153, line: 256, baseType: !20, size: 64, offset: 576)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3821, file: !153, line: 257, baseType: !20, size: 64, offset: 640)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3821, file: !153, line: 258, baseType: !20, size: 64, offset: 704)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3821, file: !153, line: 260, baseType: !3836, size: 64, offset: 768)
!3836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3837, size: 64)
!3837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !153, line: 156, size: 192, elements: !3838)
!3838 = !{!3839, !3840, !3842}
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3837, file: !153, line: 157, baseType: !3836, size: 64)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3837, file: !153, line: 158, baseType: !3841, size: 64, offset: 64)
!3841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3821, size: 64)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3837, file: !153, line: 162, baseType: !41, size: 32, offset: 128)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3821, file: !153, line: 262, baseType: !3841, size: 64, offset: 832)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3821, file: !153, line: 264, baseType: !41, size: 32, offset: 896)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3821, file: !153, line: 268, baseType: !41, size: 32, offset: 928)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3821, file: !153, line: 270, baseType: !179, size: 64, offset: 960)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3821, file: !153, line: 274, baseType: !183, size: 16, offset: 1024)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3821, file: !153, line: 275, baseType: !185, size: 8, offset: 1040)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3821, file: !153, line: 276, baseType: !187, size: 8, offset: 1048)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3821, file: !153, line: 280, baseType: !191, size: 64, offset: 1088)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3821, file: !153, line: 289, baseType: !194, size: 64, offset: 1152)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3821, file: !153, line: 297, baseType: !22, size: 64, offset: 1216)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3821, file: !153, line: 298, baseType: !22, size: 64, offset: 1280)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3821, file: !153, line: 299, baseType: !22, size: 64, offset: 1344)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3821, file: !153, line: 300, baseType: !22, size: 64, offset: 1408)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3821, file: !153, line: 302, baseType: !27, size: 64, offset: 1472)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3821, file: !153, line: 303, baseType: !41, size: 32, offset: 1536)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3821, file: !153, line: 305, baseType: !202, size: 160, offset: 1568)
!3859 = !{!3860, !3861, !3862, !3863, !3864, !3865}
!3860 = !DILocalVariable(name: "stream", arg: 1, scope: !3816, file: !757, line: 62, type: !3819)
!3861 = !DILocalVariable(name: "command_name", arg: 2, scope: !3816, file: !757, line: 63, type: !25)
!3862 = !DILocalVariable(name: "package", arg: 3, scope: !3816, file: !757, line: 63, type: !25)
!3863 = !DILocalVariable(name: "version", arg: 4, scope: !3816, file: !757, line: 64, type: !25)
!3864 = !DILocalVariable(name: "authors", arg: 5, scope: !3816, file: !757, line: 65, type: !23)
!3865 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3816, file: !757, line: 65, type: !27)
!3866 = !DILocation(line: 62, column: 24, scope: !3816)
!3867 = !DILocation(line: 63, column: 30, scope: !3816)
!3868 = !DILocation(line: 63, column: 56, scope: !3816)
!3869 = !DILocation(line: 64, column: 30, scope: !3816)
!3870 = !DILocation(line: 65, column: 39, scope: !3816)
!3871 = !DILocation(line: 65, column: 55, scope: !3816)
!3872 = !DILocation(line: 67, column: 7, scope: !3873)
!3873 = distinct !DILexicalBlock(scope: !3816, file: !757, line: 67, column: 7)
!3874 = !DILocation(line: 67, column: 7, scope: !3816)
!3875 = !DILocation(line: 68, column: 5, scope: !3873)
!3876 = !DILocation(line: 70, column: 5, scope: !3873)
!3877 = !DILocation(line: 84, column: 3, scope: !3816)
!3878 = !DILocation(line: 84, column: 3, scope: !3879)
!3879 = !DILexicalBlockFile(scope: !3816, file: !757, discriminator: 1)
!3880 = !DILocation(line: 86, column: 3, scope: !3816)
!3881 = !DILocation(line: 86, column: 3, scope: !3879)
!3882 = !DILocation(line: 95, column: 3, scope: !3816)
!3883 = !DILocation(line: 99, column: 7, scope: !3884)
!3884 = distinct !DILexicalBlock(scope: !3816, file: !757, line: 96, column: 5)
!3885 = !DILocation(line: 102, column: 7, scope: !3884)
!3886 = !DILocation(line: 102, column: 7, scope: !3887)
!3887 = !DILexicalBlockFile(scope: !3884, file: !757, discriminator: 1)
!3888 = !DILocation(line: 103, column: 7, scope: !3884)
!3889 = !DILocation(line: 106, column: 7, scope: !3884)
!3890 = !DILocation(line: 106, column: 7, scope: !3887)
!3891 = !DILocation(line: 107, column: 7, scope: !3884)
!3892 = !DILocation(line: 110, column: 7, scope: !3884)
!3893 = !DILocation(line: 110, column: 7, scope: !3887)
!3894 = !DILocation(line: 112, column: 7, scope: !3884)
!3895 = !DILocation(line: 117, column: 7, scope: !3884)
!3896 = !DILocation(line: 117, column: 7, scope: !3887)
!3897 = !DILocation(line: 119, column: 7, scope: !3884)
!3898 = !DILocation(line: 124, column: 7, scope: !3884)
!3899 = !DILocation(line: 124, column: 7, scope: !3887)
!3900 = !DILocation(line: 126, column: 7, scope: !3884)
!3901 = !DILocation(line: 131, column: 7, scope: !3884)
!3902 = !DILocation(line: 131, column: 7, scope: !3887)
!3903 = !DILocation(line: 134, column: 7, scope: !3884)
!3904 = !DILocation(line: 139, column: 7, scope: !3884)
!3905 = !DILocation(line: 139, column: 7, scope: !3887)
!3906 = !DILocation(line: 142, column: 7, scope: !3884)
!3907 = !DILocation(line: 147, column: 7, scope: !3884)
!3908 = !DILocation(line: 147, column: 7, scope: !3887)
!3909 = !DILocation(line: 151, column: 7, scope: !3884)
!3910 = !DILocation(line: 156, column: 7, scope: !3884)
!3911 = !DILocation(line: 156, column: 7, scope: !3887)
!3912 = !DILocation(line: 160, column: 7, scope: !3884)
!3913 = !DILocation(line: 167, column: 7, scope: !3884)
!3914 = !DILocation(line: 167, column: 7, scope: !3887)
!3915 = !DILocation(line: 171, column: 7, scope: !3884)
!3916 = !DILocation(line: 173, column: 1, scope: !3816)
!3917 = distinct !DISubprogram(name: "version_etc_ar", scope: !757, file: !757, line: 180, type: !3918, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !753, variables: !3920)
!3918 = !DISubroutineType(types: !3919)
!3919 = !{null, !3819, !25, !25, !25, !23}
!3920 = !{!3921, !3922, !3923, !3924, !3925, !3926}
!3921 = !DILocalVariable(name: "stream", arg: 1, scope: !3917, file: !757, line: 180, type: !3819)
!3922 = !DILocalVariable(name: "command_name", arg: 2, scope: !3917, file: !757, line: 181, type: !25)
!3923 = !DILocalVariable(name: "package", arg: 3, scope: !3917, file: !757, line: 181, type: !25)
!3924 = !DILocalVariable(name: "version", arg: 4, scope: !3917, file: !757, line: 182, type: !25)
!3925 = !DILocalVariable(name: "authors", arg: 5, scope: !3917, file: !757, line: 182, type: !23)
!3926 = !DILocalVariable(name: "n_authors", scope: !3917, file: !757, line: 184, type: !27)
!3927 = !DILocation(line: 180, column: 23, scope: !3917)
!3928 = !DILocation(line: 181, column: 29, scope: !3917)
!3929 = !DILocation(line: 181, column: 55, scope: !3917)
!3930 = !DILocation(line: 182, column: 29, scope: !3917)
!3931 = !DILocation(line: 182, column: 59, scope: !3917)
!3932 = !DILocation(line: 184, column: 10, scope: !3917)
!3933 = !DILocation(line: 186, column: 8, scope: !3934)
!3934 = distinct !DILexicalBlock(scope: !3917, file: !757, line: 186, column: 3)
!3935 = !DILocation(line: 186, column: 23, scope: !3936)
!3936 = !DILexicalBlockFile(scope: !3937, file: !757, discriminator: 1)
!3937 = distinct !DILexicalBlock(scope: !3934, file: !757, line: 186, column: 3)
!3938 = !DILocation(line: 186, column: 3, scope: !3939)
!3939 = !DILexicalBlockFile(scope: !3934, file: !757, discriminator: 1)
!3940 = !DILocation(line: 186, column: 52, scope: !3941)
!3941 = !DILexicalBlockFile(scope: !3937, file: !757, discriminator: 3)
!3942 = distinct !{!3942, !3943, !3944}
!3943 = !DILocation(line: 186, column: 3, scope: !3934)
!3944 = !DILocation(line: 187, column: 5, scope: !3934)
!3945 = !DILocation(line: 188, column: 3, scope: !3917)
!3946 = !DILocation(line: 189, column: 1, scope: !3917)
!3947 = distinct !DISubprogram(name: "version_etc_va", scope: !757, file: !757, line: 196, type: !3948, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !753, variables: !3957)
!3948 = !DISubroutineType(types: !3949)
!3949 = !{null, !3819, !25, !25, !25, !3950}
!3950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3951, size: 64)
!3951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !754, line: 189, size: 192, elements: !3952)
!3952 = !{!3953, !3954, !3955, !3956}
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3951, file: !754, line: 189, baseType: !87, size: 32)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3951, file: !754, line: 189, baseType: !87, size: 32, offset: 32)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3951, file: !754, line: 189, baseType: !22, size: 64, offset: 64)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3951, file: !754, line: 189, baseType: !22, size: 64, offset: 128)
!3957 = !{!3958, !3959, !3960, !3961, !3962, !3963, !3964}
!3958 = !DILocalVariable(name: "stream", arg: 1, scope: !3947, file: !757, line: 196, type: !3819)
!3959 = !DILocalVariable(name: "command_name", arg: 2, scope: !3947, file: !757, line: 197, type: !25)
!3960 = !DILocalVariable(name: "package", arg: 3, scope: !3947, file: !757, line: 197, type: !25)
!3961 = !DILocalVariable(name: "version", arg: 4, scope: !3947, file: !757, line: 198, type: !25)
!3962 = !DILocalVariable(name: "authors", arg: 5, scope: !3947, file: !757, line: 198, type: !3950)
!3963 = !DILocalVariable(name: "n_authors", scope: !3947, file: !757, line: 200, type: !27)
!3964 = !DILocalVariable(name: "authtab", scope: !3947, file: !757, line: 201, type: !3965)
!3965 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 640, elements: !302)
!3966 = !DILocation(line: 196, column: 23, scope: !3947)
!3967 = !DILocation(line: 197, column: 29, scope: !3947)
!3968 = !DILocation(line: 197, column: 55, scope: !3947)
!3969 = !DILocation(line: 198, column: 29, scope: !3947)
!3970 = !DILocation(line: 198, column: 46, scope: !3947)
!3971 = !DILocation(line: 201, column: 3, scope: !3947)
!3972 = !DILocation(line: 201, column: 15, scope: !3947)
!3973 = !DILocation(line: 200, column: 10, scope: !3947)
!3974 = !DILocation(line: 205, column: 35, scope: !3975)
!3975 = !DILexicalBlockFile(scope: !3976, file: !757, discriminator: 1)
!3976 = distinct !DILexicalBlock(scope: !3977, file: !757, line: 203, column: 3)
!3977 = distinct !DILexicalBlock(scope: !3947, file: !757, line: 203, column: 3)
!3978 = !DILocation(line: 205, column: 35, scope: !3979)
!3979 = !DILexicalBlockFile(scope: !3976, file: !757, discriminator: 2)
!3980 = !DILocation(line: 205, column: 35, scope: !3981)
!3981 = !DILexicalBlockFile(scope: !3976, file: !757, discriminator: 3)
!3982 = !DILocation(line: 205, column: 35, scope: !3983)
!3983 = !DILexicalBlockFile(scope: !3976, file: !757, discriminator: 4)
!3984 = !DILocation(line: 205, column: 14, scope: !3983)
!3985 = !DILocation(line: 205, column: 33, scope: !3983)
!3986 = !DILocation(line: 205, column: 67, scope: !3983)
!3987 = !DILocation(line: 203, column: 3, scope: !3988)
!3988 = !DILexicalBlockFile(scope: !3977, file: !757, discriminator: 1)
!3989 = !DILocation(line: 208, column: 3, scope: !3947)
!3990 = !DILocation(line: 210, column: 1, scope: !3947)
!3991 = distinct !DISubprogram(name: "version_etc", scope: !757, file: !757, line: 227, type: !3992, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !753, variables: !3994)
!3992 = !DISubroutineType(types: !3993)
!3993 = !{null, !3819, !25, !25, !25, null}
!3994 = !{!3995, !3996, !3997, !3998, !3999}
!3995 = !DILocalVariable(name: "stream", arg: 1, scope: !3991, file: !757, line: 227, type: !3819)
!3996 = !DILocalVariable(name: "command_name", arg: 2, scope: !3991, file: !757, line: 228, type: !25)
!3997 = !DILocalVariable(name: "package", arg: 3, scope: !3991, file: !757, line: 228, type: !25)
!3998 = !DILocalVariable(name: "version", arg: 4, scope: !3991, file: !757, line: 229, type: !25)
!3999 = !DILocalVariable(name: "authors", scope: !3991, file: !757, line: 231, type: !4000)
!4000 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !151, line: 80, baseType: !4001)
!4001 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !704, line: 50, baseType: !4002)
!4002 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !754, line: 231, baseType: !4003)
!4003 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3951, size: 192, elements: !188)
!4004 = !DILocation(line: 227, column: 20, scope: !3991)
!4005 = !DILocation(line: 228, column: 26, scope: !3991)
!4006 = !DILocation(line: 228, column: 52, scope: !3991)
!4007 = !DILocation(line: 229, column: 26, scope: !3991)
!4008 = !DILocation(line: 231, column: 3, scope: !3991)
!4009 = !DILocation(line: 231, column: 11, scope: !3991)
!4010 = !DILocation(line: 233, column: 3, scope: !3991)
!4011 = !DILocation(line: 234, column: 3, scope: !3991)
!4012 = !DILocation(line: 235, column: 3, scope: !3991)
!4013 = !DILocation(line: 236, column: 1, scope: !3991)
!4014 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !757, file: !757, line: 239, type: !834, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !753, variables: !246)
!4015 = !DILocation(line: 245, column: 3, scope: !4014)
!4016 = !DILocation(line: 245, column: 3, scope: !4017)
!4017 = !DILexicalBlockFile(scope: !4014, file: !757, discriminator: 1)
!4018 = !DILocation(line: 251, column: 3, scope: !4014)
!4019 = !DILocation(line: 251, column: 3, scope: !4017)
!4020 = !DILocation(line: 256, column: 3, scope: !4014)
!4021 = !DILocation(line: 256, column: 3, scope: !4017)
!4022 = !DILocation(line: 258, column: 1, scope: !4014)
!4023 = distinct !DISubprogram(name: "xnmalloc", scope: !764, file: !764, line: 105, type: !4024, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !760, variables: !4026)
!4024 = !DISubroutineType(types: !4025)
!4025 = !{!22, !27, !27}
!4026 = !{!4027, !4028}
!4027 = !DILocalVariable(name: "n", arg: 1, scope: !4023, file: !764, line: 105, type: !27)
!4028 = !DILocalVariable(name: "s", arg: 2, scope: !4023, file: !764, line: 105, type: !27)
!4029 = !DILocation(line: 105, column: 18, scope: !4023)
!4030 = !DILocation(line: 105, column: 28, scope: !4023)
!4031 = !DILocation(line: 107, column: 7, scope: !4032)
!4032 = distinct !DILexicalBlock(scope: !4023, file: !764, line: 107, column: 7)
!4033 = !DILocation(line: 107, column: 7, scope: !4023)
!4034 = !DILocation(line: 108, column: 5, scope: !4032)
!4035 = !DILocation(line: 109, column: 21, scope: !4023)
!4036 = !DILocalVariable(name: "n", arg: 1, scope: !4037, file: !4038, line: 39, type: !27)
!4037 = distinct !DISubprogram(name: "xmalloc", scope: !4038, file: !4038, line: 39, type: !4039, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !760, variables: !4041)
!4038 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4039 = !DISubroutineType(types: !4040)
!4040 = !{!22, !27}
!4041 = !{!4036, !4042}
!4042 = !DILocalVariable(name: "p", scope: !4037, file: !4038, line: 41, type: !22)
!4043 = !DILocation(line: 39, column: 17, scope: !4037, inlinedAt: !4044)
!4044 = distinct !DILocation(line: 109, column: 10, scope: !4023)
!4045 = !DILocation(line: 41, column: 13, scope: !4037, inlinedAt: !4044)
!4046 = !DILocation(line: 41, column: 9, scope: !4037, inlinedAt: !4044)
!4047 = !DILocation(line: 42, column: 8, scope: !4048, inlinedAt: !4044)
!4048 = distinct !DILexicalBlock(scope: !4037, file: !4038, line: 42, column: 7)
!4049 = !DILocation(line: 42, column: 15, scope: !4050, inlinedAt: !4044)
!4050 = !DILexicalBlockFile(scope: !4048, file: !4038, discriminator: 1)
!4051 = !DILocation(line: 42, column: 10, scope: !4048, inlinedAt: !4044)
!4052 = !DILocation(line: 43, column: 5, scope: !4048, inlinedAt: !4044)
!4053 = !DILocation(line: 109, column: 3, scope: !4023)
!4054 = !DILocation(line: 39, column: 17, scope: !4037)
!4055 = !DILocation(line: 41, column: 13, scope: !4037)
!4056 = !DILocation(line: 41, column: 9, scope: !4037)
!4057 = !DILocation(line: 42, column: 8, scope: !4048)
!4058 = !DILocation(line: 42, column: 15, scope: !4050)
!4059 = !DILocation(line: 42, column: 10, scope: !4048)
!4060 = !DILocation(line: 43, column: 5, scope: !4048)
!4061 = !DILocation(line: 44, column: 3, scope: !4037)
!4062 = distinct !DISubprogram(name: "xnrealloc", scope: !764, file: !764, line: 118, type: !4063, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !760, variables: !4065)
!4063 = !DISubroutineType(types: !4064)
!4064 = !{!22, !22, !27, !27}
!4065 = !{!4066, !4067, !4068}
!4066 = !DILocalVariable(name: "p", arg: 1, scope: !4062, file: !764, line: 118, type: !22)
!4067 = !DILocalVariable(name: "n", arg: 2, scope: !4062, file: !764, line: 118, type: !27)
!4068 = !DILocalVariable(name: "s", arg: 3, scope: !4062, file: !764, line: 118, type: !27)
!4069 = !DILocation(line: 118, column: 18, scope: !4062)
!4070 = !DILocation(line: 118, column: 28, scope: !4062)
!4071 = !DILocation(line: 118, column: 38, scope: !4062)
!4072 = !DILocation(line: 120, column: 7, scope: !4073)
!4073 = distinct !DILexicalBlock(scope: !4062, file: !764, line: 120, column: 7)
!4074 = !DILocation(line: 120, column: 7, scope: !4062)
!4075 = !DILocation(line: 121, column: 5, scope: !4073)
!4076 = !DILocation(line: 122, column: 25, scope: !4062)
!4077 = !DILocalVariable(name: "p", arg: 1, scope: !4078, file: !4038, line: 51, type: !22)
!4078 = distinct !DISubprogram(name: "xrealloc", scope: !4038, file: !4038, line: 51, type: !4079, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !760, variables: !4081)
!4079 = !DISubroutineType(types: !4080)
!4080 = !{!22, !22, !27}
!4081 = !{!4077, !4082}
!4082 = !DILocalVariable(name: "n", arg: 2, scope: !4078, file: !4038, line: 51, type: !27)
!4083 = !DILocation(line: 51, column: 17, scope: !4078, inlinedAt: !4084)
!4084 = distinct !DILocation(line: 122, column: 10, scope: !4062)
!4085 = !DILocation(line: 51, column: 27, scope: !4078, inlinedAt: !4084)
!4086 = !DILocation(line: 53, column: 8, scope: !4087, inlinedAt: !4084)
!4087 = distinct !DILexicalBlock(scope: !4078, file: !4038, line: 53, column: 7)
!4088 = !DILocation(line: 53, column: 13, scope: !4089, inlinedAt: !4084)
!4089 = !DILexicalBlockFile(scope: !4087, file: !4038, discriminator: 1)
!4090 = !DILocation(line: 53, column: 10, scope: !4087, inlinedAt: !4084)
!4091 = !DILocation(line: 57, column: 7, scope: !4092, inlinedAt: !4084)
!4092 = distinct !DILexicalBlock(scope: !4087, file: !4038, line: 54, column: 5)
!4093 = !DILocation(line: 58, column: 7, scope: !4092, inlinedAt: !4084)
!4094 = !DILocation(line: 61, column: 7, scope: !4078, inlinedAt: !4084)
!4095 = !DILocation(line: 62, column: 8, scope: !4096, inlinedAt: !4084)
!4096 = distinct !DILexicalBlock(scope: !4078, file: !4038, line: 62, column: 7)
!4097 = !DILocation(line: 62, column: 13, scope: !4098, inlinedAt: !4084)
!4098 = !DILexicalBlockFile(scope: !4096, file: !4038, discriminator: 1)
!4099 = !DILocation(line: 62, column: 10, scope: !4096, inlinedAt: !4084)
!4100 = !DILocation(line: 63, column: 5, scope: !4096, inlinedAt: !4084)
!4101 = !DILocation(line: 122, column: 3, scope: !4062)
!4102 = !DILocation(line: 51, column: 17, scope: !4078)
!4103 = !DILocation(line: 51, column: 27, scope: !4078)
!4104 = !DILocation(line: 53, column: 8, scope: !4087)
!4105 = !DILocation(line: 53, column: 13, scope: !4089)
!4106 = !DILocation(line: 53, column: 10, scope: !4087)
!4107 = !DILocation(line: 57, column: 7, scope: !4092)
!4108 = !DILocation(line: 58, column: 7, scope: !4092)
!4109 = !DILocation(line: 61, column: 7, scope: !4078)
!4110 = !DILocation(line: 62, column: 8, scope: !4096)
!4111 = !DILocation(line: 62, column: 13, scope: !4098)
!4112 = !DILocation(line: 62, column: 10, scope: !4096)
!4113 = !DILocation(line: 63, column: 5, scope: !4096)
!4114 = !DILocation(line: 65, column: 1, scope: !4078)
!4115 = !DILocation(line: 180, column: 19, scope: !765)
!4116 = !DILocation(line: 180, column: 30, scope: !765)
!4117 = !DILocation(line: 180, column: 41, scope: !765)
!4118 = !DILocation(line: 182, column: 14, scope: !765)
!4119 = !DILocation(line: 182, column: 10, scope: !765)
!4120 = !DILocation(line: 184, column: 9, scope: !4121)
!4121 = distinct !DILexicalBlock(scope: !765, file: !764, line: 184, column: 7)
!4122 = !DILocation(line: 184, column: 7, scope: !765)
!4123 = !DILocation(line: 186, column: 13, scope: !4124)
!4124 = distinct !DILexicalBlock(scope: !4125, file: !764, line: 186, column: 11)
!4125 = distinct !DILexicalBlock(scope: !4121, file: !764, line: 185, column: 5)
!4126 = !DILocation(line: 186, column: 11, scope: !4125)
!4127 = !DILocation(line: 194, column: 30, scope: !4128)
!4128 = distinct !DILexicalBlock(scope: !4124, file: !764, line: 187, column: 9)
!4129 = !DILocation(line: 195, column: 16, scope: !4128)
!4130 = !DILocation(line: 195, column: 13, scope: !4128)
!4131 = !DILocation(line: 196, column: 9, scope: !4128)
!4132 = !DILocation(line: 204, column: 69, scope: !4133)
!4133 = distinct !DILexicalBlock(scope: !4134, file: !764, line: 204, column: 11)
!4134 = distinct !DILexicalBlock(scope: !4121, file: !764, line: 199, column: 5)
!4135 = !DILocation(line: 205, column: 11, scope: !4133)
!4136 = !DILocation(line: 204, column: 11, scope: !4134)
!4137 = !DILocation(line: 206, column: 9, scope: !4133)
!4138 = !DILocation(line: 210, column: 7, scope: !765)
!4139 = !DILocation(line: 211, column: 25, scope: !765)
!4140 = !DILocation(line: 51, column: 17, scope: !4078, inlinedAt: !4141)
!4141 = distinct !DILocation(line: 211, column: 10, scope: !765)
!4142 = !DILocation(line: 51, column: 27, scope: !4078, inlinedAt: !4141)
!4143 = !DILocation(line: 53, column: 10, scope: !4087, inlinedAt: !4141)
!4144 = !DILocation(line: 207, column: 14, scope: !4134)
!4145 = !DILocation(line: 207, column: 18, scope: !4134)
!4146 = !DILocation(line: 207, column: 9, scope: !4134)
!4147 = !DILocation(line: 53, column: 8, scope: !4087, inlinedAt: !4141)
!4148 = !DILocation(line: 57, column: 7, scope: !4092, inlinedAt: !4141)
!4149 = !DILocation(line: 58, column: 7, scope: !4092, inlinedAt: !4141)
!4150 = !DILocation(line: 61, column: 7, scope: !4078, inlinedAt: !4141)
!4151 = !DILocation(line: 62, column: 8, scope: !4096, inlinedAt: !4141)
!4152 = !DILocation(line: 62, column: 13, scope: !4098, inlinedAt: !4141)
!4153 = !DILocation(line: 62, column: 10, scope: !4096, inlinedAt: !4141)
!4154 = !DILocation(line: 63, column: 5, scope: !4096, inlinedAt: !4141)
!4155 = !DILocation(line: 211, column: 3, scope: !765)
!4156 = distinct !DISubprogram(name: "xcharalloc", scope: !764, file: !764, line: 220, type: !3040, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !760, variables: !4157)
!4157 = !{!4158}
!4158 = !DILocalVariable(name: "n", arg: 1, scope: !4156, file: !764, line: 220, type: !27)
!4159 = !DILocation(line: 220, column: 20, scope: !4156)
!4160 = !DILocation(line: 39, column: 17, scope: !4037, inlinedAt: !4161)
!4161 = distinct !DILocation(line: 222, column: 10, scope: !4156)
!4162 = !DILocation(line: 41, column: 13, scope: !4037, inlinedAt: !4161)
!4163 = !DILocation(line: 41, column: 9, scope: !4037, inlinedAt: !4161)
!4164 = !DILocation(line: 42, column: 8, scope: !4048, inlinedAt: !4161)
!4165 = !DILocation(line: 42, column: 15, scope: !4050, inlinedAt: !4161)
!4166 = !DILocation(line: 42, column: 10, scope: !4048, inlinedAt: !4161)
!4167 = !DILocation(line: 43, column: 5, scope: !4048, inlinedAt: !4161)
!4168 = !DILocation(line: 222, column: 3, scope: !4156)
!4169 = distinct !DISubprogram(name: "x2realloc", scope: !4038, file: !4038, line: 74, type: !4170, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !760, variables: !4172)
!4170 = !DISubroutineType(types: !4171)
!4171 = !{!22, !22, !768}
!4172 = !{!4173, !4174}
!4173 = !DILocalVariable(name: "p", arg: 1, scope: !4169, file: !4038, line: 74, type: !22)
!4174 = !DILocalVariable(name: "pn", arg: 2, scope: !4169, file: !4038, line: 74, type: !768)
!4175 = !DILocation(line: 74, column: 18, scope: !4169)
!4176 = !DILocation(line: 74, column: 29, scope: !4169)
!4177 = !DILocation(line: 180, column: 19, scope: !765, inlinedAt: !4178)
!4178 = distinct !DILocation(line: 76, column: 10, scope: !4169)
!4179 = !DILocation(line: 180, column: 30, scope: !765, inlinedAt: !4178)
!4180 = !DILocation(line: 180, column: 41, scope: !765, inlinedAt: !4178)
!4181 = !DILocation(line: 182, column: 14, scope: !765, inlinedAt: !4178)
!4182 = !DILocation(line: 182, column: 10, scope: !765, inlinedAt: !4178)
!4183 = !DILocation(line: 184, column: 9, scope: !4121, inlinedAt: !4178)
!4184 = !DILocation(line: 184, column: 7, scope: !765, inlinedAt: !4178)
!4185 = !DILocation(line: 186, column: 13, scope: !4124, inlinedAt: !4178)
!4186 = !DILocation(line: 186, column: 11, scope: !4125, inlinedAt: !4178)
!4187 = !DILocation(line: 210, column: 7, scope: !765, inlinedAt: !4178)
!4188 = !DILocation(line: 51, column: 17, scope: !4078, inlinedAt: !4189)
!4189 = distinct !DILocation(line: 211, column: 10, scope: !765, inlinedAt: !4178)
!4190 = !DILocation(line: 51, column: 27, scope: !4078, inlinedAt: !4189)
!4191 = !DILocation(line: 53, column: 10, scope: !4087, inlinedAt: !4189)
!4192 = !DILocation(line: 205, column: 11, scope: !4133, inlinedAt: !4178)
!4193 = !DILocation(line: 204, column: 11, scope: !4134, inlinedAt: !4178)
!4194 = !DILocation(line: 206, column: 9, scope: !4133, inlinedAt: !4178)
!4195 = !DILocation(line: 207, column: 14, scope: !4134, inlinedAt: !4178)
!4196 = !DILocation(line: 207, column: 18, scope: !4134, inlinedAt: !4178)
!4197 = !DILocation(line: 207, column: 9, scope: !4134, inlinedAt: !4178)
!4198 = !DILocation(line: 53, column: 8, scope: !4087, inlinedAt: !4189)
!4199 = !DILocation(line: 57, column: 7, scope: !4092, inlinedAt: !4189)
!4200 = !DILocation(line: 58, column: 7, scope: !4092, inlinedAt: !4189)
!4201 = !DILocation(line: 61, column: 7, scope: !4078, inlinedAt: !4189)
!4202 = !DILocation(line: 62, column: 8, scope: !4096, inlinedAt: !4189)
!4203 = !DILocation(line: 62, column: 13, scope: !4098, inlinedAt: !4189)
!4204 = !DILocation(line: 62, column: 10, scope: !4096, inlinedAt: !4189)
!4205 = !DILocation(line: 63, column: 5, scope: !4096, inlinedAt: !4189)
!4206 = !DILocation(line: 76, column: 3, scope: !4169)
!4207 = distinct !DISubprogram(name: "xzalloc", scope: !4038, file: !4038, line: 84, type: !4039, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !760, variables: !4208)
!4208 = !{!4209}
!4209 = !DILocalVariable(name: "s", arg: 1, scope: !4207, file: !4038, line: 84, type: !27)
!4210 = !DILocation(line: 84, column: 17, scope: !4207)
!4211 = !DILocation(line: 39, column: 17, scope: !4037, inlinedAt: !4212)
!4212 = distinct !DILocation(line: 86, column: 18, scope: !4207)
!4213 = !DILocation(line: 41, column: 13, scope: !4037, inlinedAt: !4212)
!4214 = !DILocation(line: 41, column: 9, scope: !4037, inlinedAt: !4212)
!4215 = !DILocation(line: 42, column: 8, scope: !4048, inlinedAt: !4212)
!4216 = !DILocation(line: 42, column: 15, scope: !4050, inlinedAt: !4212)
!4217 = !DILocation(line: 42, column: 10, scope: !4048, inlinedAt: !4212)
!4218 = !DILocation(line: 43, column: 5, scope: !4048, inlinedAt: !4212)
!4219 = !DILocation(line: 86, column: 10, scope: !4207)
!4220 = !DILocation(line: 86, column: 3, scope: !4207)
!4221 = distinct !DISubprogram(name: "xcalloc", scope: !4038, file: !4038, line: 93, type: !4024, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !760, variables: !4222)
!4222 = !{!4223, !4224, !4225}
!4223 = !DILocalVariable(name: "n", arg: 1, scope: !4221, file: !4038, line: 93, type: !27)
!4224 = !DILocalVariable(name: "s", arg: 2, scope: !4221, file: !4038, line: 93, type: !27)
!4225 = !DILocalVariable(name: "p", scope: !4221, file: !4038, line: 95, type: !22)
!4226 = !DILocation(line: 93, column: 17, scope: !4221)
!4227 = !DILocation(line: 93, column: 27, scope: !4221)
!4228 = !DILocation(line: 100, column: 7, scope: !4229)
!4229 = distinct !DILexicalBlock(scope: !4221, file: !4038, line: 100, column: 7)
!4230 = !DILocation(line: 101, column: 7, scope: !4229)
!4231 = !DILocation(line: 101, column: 18, scope: !4232)
!4232 = !DILexicalBlockFile(scope: !4229, file: !4038, discriminator: 1)
!4233 = !DILocation(line: 95, column: 9, scope: !4221)
!4234 = !DILocation(line: 101, column: 16, scope: !4232)
!4235 = !DILocation(line: 100, column: 7, scope: !4236)
!4236 = !DILexicalBlockFile(scope: !4221, file: !4038, discriminator: 1)
!4237 = !DILocation(line: 102, column: 5, scope: !4229)
!4238 = !DILocation(line: 103, column: 3, scope: !4221)
!4239 = distinct !DISubprogram(name: "xmemdup", scope: !4038, file: !4038, line: 111, type: !4240, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !760, variables: !4242)
!4240 = !DISubroutineType(types: !4241)
!4241 = !{!22, !30, !27}
!4242 = !{!4243, !4244}
!4243 = !DILocalVariable(name: "p", arg: 1, scope: !4239, file: !4038, line: 111, type: !30)
!4244 = !DILocalVariable(name: "s", arg: 2, scope: !4239, file: !4038, line: 111, type: !27)
!4245 = !DILocation(line: 111, column: 22, scope: !4239)
!4246 = !DILocation(line: 111, column: 32, scope: !4239)
!4247 = !DILocation(line: 39, column: 17, scope: !4037, inlinedAt: !4248)
!4248 = distinct !DILocation(line: 113, column: 18, scope: !4239)
!4249 = !DILocation(line: 41, column: 13, scope: !4037, inlinedAt: !4248)
!4250 = !DILocation(line: 41, column: 9, scope: !4037, inlinedAt: !4248)
!4251 = !DILocation(line: 42, column: 8, scope: !4048, inlinedAt: !4248)
!4252 = !DILocation(line: 42, column: 15, scope: !4050, inlinedAt: !4248)
!4253 = !DILocation(line: 42, column: 10, scope: !4048, inlinedAt: !4248)
!4254 = !DILocation(line: 43, column: 5, scope: !4048, inlinedAt: !4248)
!4255 = !DILocation(line: 113, column: 10, scope: !4239)
!4256 = !DILocation(line: 113, column: 3, scope: !4239)
!4257 = distinct !DISubprogram(name: "xstrdup", scope: !4038, file: !4038, line: 119, type: !3245, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !760, variables: !4258)
!4258 = !{!4259}
!4259 = !DILocalVariable(name: "string", arg: 1, scope: !4257, file: !4038, line: 119, type: !25)
!4260 = !DILocation(line: 119, column: 22, scope: !4257)
!4261 = !DILocation(line: 121, column: 27, scope: !4257)
!4262 = !DILocation(line: 121, column: 43, scope: !4257)
!4263 = !DILocation(line: 111, column: 22, scope: !4239, inlinedAt: !4264)
!4264 = distinct !DILocation(line: 121, column: 10, scope: !4265)
!4265 = !DILexicalBlockFile(scope: !4257, file: !4038, discriminator: 1)
!4266 = !DILocation(line: 111, column: 32, scope: !4239, inlinedAt: !4264)
!4267 = !DILocation(line: 39, column: 17, scope: !4037, inlinedAt: !4268)
!4268 = distinct !DILocation(line: 113, column: 18, scope: !4239, inlinedAt: !4264)
!4269 = !DILocation(line: 41, column: 13, scope: !4037, inlinedAt: !4268)
!4270 = !DILocation(line: 41, column: 9, scope: !4037, inlinedAt: !4268)
!4271 = !DILocation(line: 42, column: 8, scope: !4048, inlinedAt: !4268)
!4272 = !DILocation(line: 42, column: 15, scope: !4050, inlinedAt: !4268)
!4273 = !DILocation(line: 42, column: 10, scope: !4048, inlinedAt: !4268)
!4274 = !DILocation(line: 43, column: 5, scope: !4048, inlinedAt: !4268)
!4275 = !DILocation(line: 113, column: 10, scope: !4239, inlinedAt: !4264)
!4276 = !DILocation(line: 121, column: 3, scope: !4257)
!4277 = distinct !DISubprogram(name: "xalloc_die", scope: !4278, file: !4278, line: 32, type: !834, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !777, variables: !246)
!4278 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4279 = !DILocation(line: 34, column: 10, scope: !4277)
!4280 = !DILocation(line: 34, column: 33, scope: !4277)
!4281 = !DILocation(line: 34, column: 3, scope: !4282)
!4282 = !DILexicalBlockFile(scope: !4277, file: !4278, discriminator: 1)
!4283 = !DILocation(line: 40, column: 3, scope: !4277)
!4284 = distinct !DISubprogram(name: "rpl_calloc", scope: !4285, file: !4285, line: 42, type: !4024, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !779, variables: !4286)
!4285 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4286 = !{!4287, !4288, !4289, !4290}
!4287 = !DILocalVariable(name: "n", arg: 1, scope: !4284, file: !4285, line: 42, type: !27)
!4288 = !DILocalVariable(name: "s", arg: 2, scope: !4284, file: !4285, line: 42, type: !27)
!4289 = !DILocalVariable(name: "result", scope: !4284, file: !4285, line: 44, type: !22)
!4290 = !DILocalVariable(name: "bytes", scope: !4291, file: !4285, line: 56, type: !27)
!4291 = distinct !DILexicalBlock(scope: !4292, file: !4285, line: 53, column: 5)
!4292 = distinct !DILexicalBlock(scope: !4284, file: !4285, line: 47, column: 7)
!4293 = !DILocation(line: 42, column: 20, scope: !4284)
!4294 = !DILocation(line: 42, column: 30, scope: !4284)
!4295 = !DILocation(line: 47, column: 9, scope: !4292)
!4296 = !DILocation(line: 47, column: 19, scope: !4297)
!4297 = !DILexicalBlockFile(scope: !4292, file: !4285, discriminator: 1)
!4298 = !DILocation(line: 47, column: 14, scope: !4292)
!4299 = !DILocation(line: 56, column: 24, scope: !4291)
!4300 = !DILocation(line: 56, column: 14, scope: !4291)
!4301 = !DILocation(line: 57, column: 17, scope: !4302)
!4302 = distinct !DILexicalBlock(scope: !4291, file: !4285, line: 57, column: 11)
!4303 = !DILocation(line: 57, column: 21, scope: !4302)
!4304 = !DILocation(line: 57, column: 11, scope: !4291)
!4305 = !DILocation(line: 59, column: 11, scope: !4306)
!4306 = distinct !DILexicalBlock(scope: !4302, file: !4285, line: 58, column: 9)
!4307 = !DILocation(line: 59, column: 17, scope: !4306)
!4308 = !DILocation(line: 65, column: 12, scope: !4284)
!4309 = !DILocation(line: 44, column: 9, scope: !4284)
!4310 = !DILocation(line: 72, column: 3, scope: !4284)
!4311 = !DILocation(line: 73, column: 1, scope: !4284)
!4312 = distinct !DISubprogram(name: "rpl_fseeko", scope: !4313, file: !4313, line: 28, type: !4314, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !781, variables: !4356)
!4313 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4314 = !DISubroutineType(types: !4315)
!4315 = !{!41, !4316, !991, !41}
!4316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4317, size: 64)
!4317 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !151, line: 49, baseType: !4318)
!4318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !153, line: 241, size: 1728, elements: !4319)
!4319 = !{!4320, !4321, !4322, !4323, !4324, !4325, !4326, !4327, !4328, !4329, !4330, !4331, !4332, !4340, !4341, !4342, !4343, !4344, !4345, !4346, !4347, !4348, !4349, !4350, !4351, !4352, !4353, !4354, !4355}
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4318, file: !153, line: 242, baseType: !41, size: 32)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4318, file: !153, line: 247, baseType: !20, size: 64, offset: 64)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4318, file: !153, line: 248, baseType: !20, size: 64, offset: 128)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4318, file: !153, line: 249, baseType: !20, size: 64, offset: 192)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4318, file: !153, line: 250, baseType: !20, size: 64, offset: 256)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4318, file: !153, line: 251, baseType: !20, size: 64, offset: 320)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4318, file: !153, line: 252, baseType: !20, size: 64, offset: 384)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4318, file: !153, line: 253, baseType: !20, size: 64, offset: 448)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4318, file: !153, line: 254, baseType: !20, size: 64, offset: 512)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4318, file: !153, line: 256, baseType: !20, size: 64, offset: 576)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4318, file: !153, line: 257, baseType: !20, size: 64, offset: 640)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4318, file: !153, line: 258, baseType: !20, size: 64, offset: 704)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4318, file: !153, line: 260, baseType: !4333, size: 64, offset: 768)
!4333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4334, size: 64)
!4334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !153, line: 156, size: 192, elements: !4335)
!4335 = !{!4336, !4337, !4339}
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4334, file: !153, line: 157, baseType: !4333, size: 64)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4334, file: !153, line: 158, baseType: !4338, size: 64, offset: 64)
!4338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4318, size: 64)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4334, file: !153, line: 162, baseType: !41, size: 32, offset: 128)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4318, file: !153, line: 262, baseType: !4338, size: 64, offset: 832)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4318, file: !153, line: 264, baseType: !41, size: 32, offset: 896)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4318, file: !153, line: 268, baseType: !41, size: 32, offset: 928)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4318, file: !153, line: 270, baseType: !179, size: 64, offset: 960)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4318, file: !153, line: 274, baseType: !183, size: 16, offset: 1024)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4318, file: !153, line: 275, baseType: !185, size: 8, offset: 1040)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4318, file: !153, line: 276, baseType: !187, size: 8, offset: 1048)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4318, file: !153, line: 280, baseType: !191, size: 64, offset: 1088)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4318, file: !153, line: 289, baseType: !194, size: 64, offset: 1152)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4318, file: !153, line: 297, baseType: !22, size: 64, offset: 1216)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4318, file: !153, line: 298, baseType: !22, size: 64, offset: 1280)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4318, file: !153, line: 299, baseType: !22, size: 64, offset: 1344)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4318, file: !153, line: 300, baseType: !22, size: 64, offset: 1408)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4318, file: !153, line: 302, baseType: !27, size: 64, offset: 1472)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4318, file: !153, line: 303, baseType: !41, size: 32, offset: 1536)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4318, file: !153, line: 305, baseType: !202, size: 160, offset: 1568)
!4356 = !{!4357, !4358, !4359, !4360}
!4357 = !DILocalVariable(name: "fp", arg: 1, scope: !4312, file: !4313, line: 28, type: !4316)
!4358 = !DILocalVariable(name: "offset", arg: 2, scope: !4312, file: !4313, line: 28, type: !991)
!4359 = !DILocalVariable(name: "whence", arg: 3, scope: !4312, file: !4313, line: 28, type: !41)
!4360 = !DILocalVariable(name: "pos", scope: !4361, file: !4313, line: 116, type: !991)
!4361 = distinct !DILexicalBlock(scope: !4362, file: !4313, line: 112, column: 5)
!4362 = distinct !DILexicalBlock(scope: !4312, file: !4313, line: 51, column: 7)
!4363 = !DILocation(line: 28, column: 15, scope: !4312)
!4364 = !DILocation(line: 28, column: 25, scope: !4312)
!4365 = !DILocation(line: 28, column: 37, scope: !4312)
!4366 = !DILocation(line: 51, column: 11, scope: !4362)
!4367 = !{!4368, !819, i64 16}
!4368 = !{!"_IO_FILE", !971, i64 0, !819, i64 8, !819, i64 16, !819, i64 24, !819, i64 32, !819, i64 40, !819, i64 48, !819, i64 56, !819, i64 64, !819, i64 72, !819, i64 80, !819, i64 88, !819, i64 96, !819, i64 104, !971, i64 112, !971, i64 116, !884, i64 120, !2378, i64 128, !820, i64 130, !820, i64 131, !819, i64 136, !884, i64 144, !819, i64 152, !819, i64 160, !819, i64 168, !819, i64 176, !884, i64 184, !971, i64 192, !820, i64 196}
!4369 = !DILocation(line: 51, column: 31, scope: !4362)
!4370 = !{!4368, !819, i64 8}
!4371 = !DILocation(line: 51, column: 24, scope: !4362)
!4372 = !DILocation(line: 52, column: 7, scope: !4362)
!4373 = !DILocation(line: 52, column: 14, scope: !4374)
!4374 = !DILexicalBlockFile(scope: !4362, file: !4313, discriminator: 1)
!4375 = !{!4368, !819, i64 40}
!4376 = !DILocation(line: 52, column: 35, scope: !4374)
!4377 = !{!4368, !819, i64 32}
!4378 = !DILocation(line: 52, column: 28, scope: !4374)
!4379 = !DILocation(line: 53, column: 7, scope: !4362)
!4380 = !DILocation(line: 53, column: 14, scope: !4374)
!4381 = !{!4368, !819, i64 72}
!4382 = !DILocation(line: 53, column: 28, scope: !4374)
!4383 = !DILocation(line: 51, column: 7, scope: !4384)
!4384 = !DILexicalBlockFile(scope: !4312, file: !4313, discriminator: 1)
!4385 = !DILocation(line: 116, column: 26, scope: !4361)
!4386 = !DILocation(line: 116, column: 19, scope: !4387)
!4387 = !DILexicalBlockFile(scope: !4361, file: !4313, discriminator: 1)
!4388 = !DILocation(line: 116, column: 13, scope: !4361)
!4389 = !DILocation(line: 117, column: 15, scope: !4390)
!4390 = distinct !DILexicalBlock(scope: !4361, file: !4313, line: 117, column: 11)
!4391 = !DILocation(line: 117, column: 11, scope: !4361)
!4392 = !DILocation(line: 127, column: 11, scope: !4361)
!4393 = !DILocation(line: 127, column: 18, scope: !4361)
!4394 = !{!4368, !971, i64 0}
!4395 = !DILocation(line: 128, column: 11, scope: !4361)
!4396 = !DILocation(line: 128, column: 19, scope: !4361)
!4397 = !{!4368, !884, i64 144}
!4398 = !DILocation(line: 159, column: 7, scope: !4361)
!4399 = !DILocation(line: 161, column: 10, scope: !4312)
!4400 = !DILocation(line: 161, column: 3, scope: !4312)
!4401 = !DILocation(line: 162, column: 1, scope: !4312)
!4402 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !4403, file: !4403, line: 334, type: !4404, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !783, variables: !4418)
!4403 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4404 = !DISubroutineType(types: !4405)
!4405 = !{!27, !4406, !25, !27, !4407}
!4406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2026, size: 64)
!4407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4408, size: 64)
!4408 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2011, line: 107, baseType: !4409)
!4409 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2011, line: 95, baseType: !4410)
!4410 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2011, line: 83, size: 64, elements: !4411)
!4411 = !{!4412, !4413}
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !4410, file: !2011, line: 85, baseType: !41, size: 32)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !4410, file: !2011, line: 94, baseType: !4414, size: 32, offset: 32)
!4414 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4410, file: !2011, line: 86, size: 32, elements: !4415)
!4415 = !{!4416, !4417}
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !4414, file: !2011, line: 89, baseType: !87, size: 32)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !4414, file: !2011, line: 93, baseType: !2021, size: 32)
!4418 = !{!4419, !4420, !4421, !4422, !4423, !4424, !4425}
!4419 = !DILocalVariable(name: "pwc", arg: 1, scope: !4402, file: !4403, line: 334, type: !4406)
!4420 = !DILocalVariable(name: "s", arg: 2, scope: !4402, file: !4403, line: 334, type: !25)
!4421 = !DILocalVariable(name: "n", arg: 3, scope: !4402, file: !4403, line: 334, type: !27)
!4422 = !DILocalVariable(name: "ps", arg: 4, scope: !4402, file: !4403, line: 334, type: !4407)
!4423 = !DILocalVariable(name: "ret", scope: !4402, file: !4403, line: 336, type: !27)
!4424 = !DILocalVariable(name: "wc", scope: !4402, file: !4403, line: 337, type: !2026)
!4425 = !DILocalVariable(name: "uc", scope: !4426, file: !4403, line: 398, type: !34)
!4426 = distinct !DILexicalBlock(scope: !4427, file: !4403, line: 397, column: 5)
!4427 = distinct !DILexicalBlock(scope: !4402, file: !4403, line: 396, column: 7)
!4428 = !DILocation(line: 334, column: 23, scope: !4402)
!4429 = !DILocation(line: 334, column: 40, scope: !4402)
!4430 = !DILocation(line: 334, column: 50, scope: !4402)
!4431 = !DILocation(line: 334, column: 64, scope: !4402)
!4432 = !DILocation(line: 337, column: 3, scope: !4402)
!4433 = !DILocation(line: 353, column: 9, scope: !4434)
!4434 = distinct !DILexicalBlock(scope: !4402, file: !4403, line: 353, column: 7)
!4435 = !DILocation(line: 353, column: 7, scope: !4402)
!4436 = !DILocation(line: 388, column: 9, scope: !4402)
!4437 = !DILocation(line: 336, column: 10, scope: !4402)
!4438 = !DILocation(line: 396, column: 19, scope: !4427)
!4439 = !DILocation(line: 396, column: 31, scope: !4440)
!4440 = !DILexicalBlockFile(scope: !4427, file: !4403, discriminator: 1)
!4441 = !DILocation(line: 396, column: 26, scope: !4427)
!4442 = !DILocation(line: 396, column: 41, scope: !4443)
!4443 = !DILexicalBlockFile(scope: !4427, file: !4403, discriminator: 2)
!4444 = !DILocation(line: 396, column: 7, scope: !4445)
!4445 = !DILexicalBlockFile(scope: !4402, file: !4403, discriminator: 2)
!4446 = !DILocation(line: 398, column: 26, scope: !4426)
!4447 = !DILocation(line: 398, column: 21, scope: !4426)
!4448 = !DILocation(line: 399, column: 14, scope: !4426)
!4449 = !DILocation(line: 399, column: 12, scope: !4426)
!4450 = !DILocation(line: 405, column: 1, scope: !4402)
!4451 = distinct !DISubprogram(name: "close_stream", scope: !4452, file: !4452, line: 56, type: !4453, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !786, variables: !4495)
!4452 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4453 = !DISubroutineType(types: !4454)
!4454 = !{!41, !4455}
!4455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4456, size: 64)
!4456 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !151, line: 49, baseType: !4457)
!4457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !153, line: 241, size: 1728, elements: !4458)
!4458 = !{!4459, !4460, !4461, !4462, !4463, !4464, !4465, !4466, !4467, !4468, !4469, !4470, !4471, !4479, !4480, !4481, !4482, !4483, !4484, !4485, !4486, !4487, !4488, !4489, !4490, !4491, !4492, !4493, !4494}
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4457, file: !153, line: 242, baseType: !41, size: 32)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4457, file: !153, line: 247, baseType: !20, size: 64, offset: 64)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4457, file: !153, line: 248, baseType: !20, size: 64, offset: 128)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4457, file: !153, line: 249, baseType: !20, size: 64, offset: 192)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4457, file: !153, line: 250, baseType: !20, size: 64, offset: 256)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4457, file: !153, line: 251, baseType: !20, size: 64, offset: 320)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4457, file: !153, line: 252, baseType: !20, size: 64, offset: 384)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4457, file: !153, line: 253, baseType: !20, size: 64, offset: 448)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4457, file: !153, line: 254, baseType: !20, size: 64, offset: 512)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4457, file: !153, line: 256, baseType: !20, size: 64, offset: 576)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4457, file: !153, line: 257, baseType: !20, size: 64, offset: 640)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4457, file: !153, line: 258, baseType: !20, size: 64, offset: 704)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4457, file: !153, line: 260, baseType: !4472, size: 64, offset: 768)
!4472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4473, size: 64)
!4473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !153, line: 156, size: 192, elements: !4474)
!4474 = !{!4475, !4476, !4478}
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4473, file: !153, line: 157, baseType: !4472, size: 64)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4473, file: !153, line: 158, baseType: !4477, size: 64, offset: 64)
!4477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4457, size: 64)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4473, file: !153, line: 162, baseType: !41, size: 32, offset: 128)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4457, file: !153, line: 262, baseType: !4477, size: 64, offset: 832)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4457, file: !153, line: 264, baseType: !41, size: 32, offset: 896)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4457, file: !153, line: 268, baseType: !41, size: 32, offset: 928)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4457, file: !153, line: 270, baseType: !179, size: 64, offset: 960)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4457, file: !153, line: 274, baseType: !183, size: 16, offset: 1024)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4457, file: !153, line: 275, baseType: !185, size: 8, offset: 1040)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4457, file: !153, line: 276, baseType: !187, size: 8, offset: 1048)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4457, file: !153, line: 280, baseType: !191, size: 64, offset: 1088)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4457, file: !153, line: 289, baseType: !194, size: 64, offset: 1152)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4457, file: !153, line: 297, baseType: !22, size: 64, offset: 1216)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4457, file: !153, line: 298, baseType: !22, size: 64, offset: 1280)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4457, file: !153, line: 299, baseType: !22, size: 64, offset: 1344)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4457, file: !153, line: 300, baseType: !22, size: 64, offset: 1408)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4457, file: !153, line: 302, baseType: !27, size: 64, offset: 1472)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4457, file: !153, line: 303, baseType: !41, size: 32, offset: 1536)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4457, file: !153, line: 305, baseType: !202, size: 160, offset: 1568)
!4495 = !{!4496, !4497, !4499, !4500}
!4496 = !DILocalVariable(name: "stream", arg: 1, scope: !4451, file: !4452, line: 56, type: !4455)
!4497 = !DILocalVariable(name: "some_pending", scope: !4451, file: !4452, line: 58, type: !4498)
!4498 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!4499 = !DILocalVariable(name: "prev_fail", scope: !4451, file: !4452, line: 59, type: !4498)
!4500 = !DILocalVariable(name: "fclose_fail", scope: !4451, file: !4452, line: 60, type: !4498)
!4501 = !DILocation(line: 56, column: 21, scope: !4451)
!4502 = !DILocation(line: 58, column: 30, scope: !4451)
!4503 = !DILocalVariable(name: "__stream", arg: 1, scope: !4504, file: !4505, line: 132, type: !4455)
!4504 = distinct !DISubprogram(name: "ferror_unlocked", scope: !4505, file: !4505, line: 132, type: !4453, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !786, variables: !4506)
!4505 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4506 = !{!4503}
!4507 = !DILocation(line: 132, column: 1, scope: !4504, inlinedAt: !4508)
!4508 = distinct !DILocation(line: 59, column: 27, scope: !4451)
!4509 = !DILocation(line: 134, column: 10, scope: !4504, inlinedAt: !4508)
!4510 = !DILocation(line: 59, column: 43, scope: !4451)
!4511 = !DILocation(line: 60, column: 29, scope: !4451)
!4512 = !DILocation(line: 60, column: 45, scope: !4451)
!4513 = !DILocation(line: 70, column: 17, scope: !4514)
!4514 = distinct !DILexicalBlock(scope: !4451, file: !4452, line: 70, column: 7)
!4515 = !DILocation(line: 70, column: 33, scope: !4516)
!4516 = !DILexicalBlockFile(scope: !4514, file: !4452, discriminator: 1)
!4517 = !DILocation(line: 70, column: 53, scope: !4518)
!4518 = !DILexicalBlockFile(scope: !4514, file: !4452, discriminator: 3)
!4519 = !DILocation(line: 70, column: 7, scope: !4520)
!4520 = !DILexicalBlockFile(scope: !4451, file: !4452, discriminator: 3)
!4521 = !DILocation(line: 72, column: 11, scope: !4522)
!4522 = distinct !DILexicalBlock(scope: !4514, file: !4452, line: 71, column: 5)
!4523 = !DILocation(line: 73, column: 9, scope: !4524)
!4524 = distinct !DILexicalBlock(scope: !4522, file: !4452, line: 72, column: 11)
!4525 = !DILocation(line: 73, column: 15, scope: !4524)
!4526 = !DILocation(line: 78, column: 1, scope: !4451)
!4527 = distinct !DISubprogram(name: "last_component", scope: !4528, file: !4528, line: 30, type: !3245, isLocal: false, isDefinition: true, scopeLine: 31, flags: DIFlagPrototyped, isOptimized: true, unit: !788, variables: !4529)
!4528 = !DIFile(filename: "lib/basename-lgpl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4529 = !{!4530, !4531, !4532, !4533}
!4530 = !DILocalVariable(name: "name", arg: 1, scope: !4527, file: !4528, line: 30, type: !25)
!4531 = !DILocalVariable(name: "base", scope: !4527, file: !4528, line: 32, type: !25)
!4532 = !DILocalVariable(name: "p", scope: !4527, file: !4528, line: 33, type: !25)
!4533 = !DILocalVariable(name: "saw_slash", scope: !4527, file: !4528, line: 34, type: !49)
!4534 = !DILocation(line: 30, column: 29, scope: !4527)
!4535 = !DILocation(line: 32, column: 15, scope: !4527)
!4536 = !DILocation(line: 34, column: 8, scope: !4527)
!4537 = !DILocation(line: 36, column: 3, scope: !4527)
!4538 = !DILocation(line: 36, column: 10, scope: !4539)
!4539 = !DILexicalBlockFile(scope: !4527, file: !4528, discriminator: 1)
!4540 = !DILocation(line: 37, column: 9, scope: !4527)
!4541 = !DILocation(line: 36, column: 3, scope: !4539)
!4542 = distinct !{!4542, !4537, !4540}
!4543 = !DILocation(line: 39, column: 18, scope: !4544)
!4544 = !DILexicalBlockFile(scope: !4545, file: !4528, discriminator: 1)
!4545 = distinct !DILexicalBlock(scope: !4546, file: !4528, line: 39, column: 3)
!4546 = distinct !DILexicalBlock(scope: !4527, file: !4528, line: 39, column: 3)
!4547 = !DILocation(line: 33, column: 15, scope: !4527)
!4548 = !DILocation(line: 39, column: 3, scope: !4549)
!4549 = !DILexicalBlockFile(scope: !4546, file: !4528, discriminator: 1)
!4550 = !DILocation(line: 43, column: 16, scope: !4551)
!4551 = distinct !DILexicalBlock(scope: !4552, file: !4528, line: 43, column: 16)
!4552 = distinct !DILexicalBlock(scope: !4553, file: !4528, line: 41, column: 11)
!4553 = distinct !DILexicalBlock(scope: !4545, file: !4528, line: 40, column: 5)
!4554 = !DILocation(line: 43, column: 16, scope: !4552)
!4555 = !DILocation(line: 39, column: 23, scope: !4556)
!4556 = !DILexicalBlockFile(scope: !4545, file: !4528, discriminator: 2)
!4557 = !DILocation(line: 39, column: 3, scope: !4556)
!4558 = distinct !{!4558, !4559, !4560}
!4559 = !DILocation(line: 39, column: 3, scope: !4546)
!4560 = !DILocation(line: 48, column: 5, scope: !4546)
!4561 = !DILocation(line: 50, column: 3, scope: !4527)
!4562 = distinct !DISubprogram(name: "base_len", scope: !4528, file: !4528, line: 58, type: !4563, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !788, variables: !4565)
!4563 = !DISubroutineType(types: !4564)
!4564 = !{!27, !25}
!4565 = !{!4566, !4567, !4568}
!4566 = !DILocalVariable(name: "name", arg: 1, scope: !4562, file: !4528, line: 58, type: !25)
!4567 = !DILocalVariable(name: "len", scope: !4562, file: !4528, line: 60, type: !27)
!4568 = !DILocalVariable(name: "prefix_len", scope: !4562, file: !4528, line: 61, type: !27)
!4569 = !DILocation(line: 58, column: 23, scope: !4562)
!4570 = !DILocation(line: 61, column: 10, scope: !4562)
!4571 = !DILocation(line: 63, column: 14, scope: !4572)
!4572 = distinct !DILexicalBlock(scope: !4562, file: !4528, line: 63, column: 3)
!4573 = !DILocation(line: 60, column: 10, scope: !4562)
!4574 = !DILocation(line: 63, column: 8, scope: !4572)
!4575 = !DILocation(line: 63, column: 32, scope: !4576)
!4576 = !DILexicalBlockFile(scope: !4577, file: !4528, discriminator: 1)
!4577 = distinct !DILexicalBlock(scope: !4572, file: !4528, line: 63, column: 3)
!4578 = !DILocation(line: 63, column: 38, scope: !4576)
!4579 = !DILocation(line: 63, column: 41, scope: !4580)
!4580 = !DILexicalBlockFile(scope: !4577, file: !4528, discriminator: 2)
!4581 = !DILocation(line: 63, column: 3, scope: !4582)
!4582 = !DILexicalBlockFile(scope: !4572, file: !4528, discriminator: 3)
!4583 = distinct !{!4583, !4584, !4585}
!4584 = !DILocation(line: 63, column: 3, scope: !4572)
!4585 = !DILocation(line: 64, column: 5, scope: !4572)
!4586 = !DILocation(line: 74, column: 3, scope: !4562)
!4587 = distinct !DISubprogram(name: "hard_locale", scope: !4588, file: !4588, line: 38, type: !4589, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !791, variables: !4591)
!4588 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4589 = !DISubroutineType(types: !4590)
!4590 = !{!49, !41}
!4591 = !{!4592, !4593, !4594, !4595, !4602, !4603, !4605, !4606, !4608, !4609, !4611}
!4592 = !DILocalVariable(name: "category", arg: 1, scope: !4587, file: !4588, line: 38, type: !41)
!4593 = !DILocalVariable(name: "hard", scope: !4587, file: !4588, line: 40, type: !49)
!4594 = !DILocalVariable(name: "p", scope: !4587, file: !4588, line: 41, type: !25)
!4595 = !DILocalVariable(name: "__s1_len", scope: !4596, file: !4588, line: 47, type: !27)
!4596 = distinct !DILexicalBlock(scope: !4597, file: !4588, line: 47, column: 15)
!4597 = distinct !DILexicalBlock(scope: !4598, file: !4588, line: 47, column: 15)
!4598 = distinct !DILexicalBlock(scope: !4599, file: !4588, line: 46, column: 9)
!4599 = distinct !DILexicalBlock(scope: !4600, file: !4588, line: 45, column: 11)
!4600 = distinct !DILexicalBlock(scope: !4601, file: !4588, line: 44, column: 5)
!4601 = distinct !DILexicalBlock(scope: !4587, file: !4588, line: 43, column: 7)
!4602 = !DILocalVariable(name: "__s2_len", scope: !4596, file: !4588, line: 47, type: !27)
!4603 = !DILocalVariable(name: "__s2", scope: !4604, file: !4588, line: 47, type: !32)
!4604 = distinct !DILexicalBlock(scope: !4596, file: !4588, line: 47, column: 15)
!4605 = !DILocalVariable(name: "__result", scope: !4604, file: !4588, line: 47, type: !41)
!4606 = !DILocalVariable(name: "__s1_len", scope: !4607, file: !4588, line: 47, type: !27)
!4607 = distinct !DILexicalBlock(scope: !4597, file: !4588, line: 47, column: 39)
!4608 = !DILocalVariable(name: "__s2_len", scope: !4607, file: !4588, line: 47, type: !27)
!4609 = !DILocalVariable(name: "__s2", scope: !4610, file: !4588, line: 47, type: !32)
!4610 = distinct !DILexicalBlock(scope: !4607, file: !4588, line: 47, column: 39)
!4611 = !DILocalVariable(name: "__result", scope: !4610, file: !4588, line: 47, type: !41)
!4612 = !DILocation(line: 38, column: 18, scope: !4587)
!4613 = !DILocation(line: 40, column: 8, scope: !4587)
!4614 = !DILocation(line: 41, column: 19, scope: !4587)
!4615 = !DILocation(line: 41, column: 15, scope: !4587)
!4616 = !DILocation(line: 43, column: 7, scope: !4601)
!4617 = !DILocation(line: 43, column: 7, scope: !4587)
!4618 = !DILocation(line: 47, column: 15, scope: !4596)
!4619 = !DILocation(line: 47, column: 15, scope: !4604)
!4620 = !DILocation(line: 47, column: 15, scope: !4621)
!4621 = !DILexicalBlockFile(scope: !4604, file: !4588, discriminator: 2)
!4622 = !DILocation(line: 47, column: 15, scope: !4623)
!4623 = !DILexicalBlockFile(scope: !4624, file: !4588, discriminator: 3)
!4624 = distinct !DILexicalBlock(scope: !4604, file: !4588, line: 47, column: 15)
!4625 = !DILocation(line: 47, column: 15, scope: !4626)
!4626 = !DILexicalBlockFile(scope: !4624, file: !4588, discriminator: 2)
!4627 = !DILocation(line: 47, column: 15, scope: !4628)
!4628 = !DILexicalBlockFile(scope: !4629, file: !4588, discriminator: 4)
!4629 = distinct !DILexicalBlock(scope: !4624, file: !4588, line: 47, column: 15)
!4630 = !DILocation(line: 47, column: 15, scope: !4631)
!4631 = !DILexicalBlockFile(scope: !4596, file: !4588, discriminator: 11)
!4632 = !DILocation(line: 47, column: 36, scope: !4633)
!4633 = !DILexicalBlockFile(scope: !4597, file: !4588, discriminator: 13)
!4634 = !DILocation(line: 47, column: 39, scope: !4607)
!4635 = !DILocation(line: 47, column: 39, scope: !4636)
!4636 = !DILexicalBlockFile(scope: !4607, file: !4588, discriminator: 26)
!4637 = !DILocation(line: 47, column: 59, scope: !4638)
!4638 = !DILexicalBlockFile(scope: !4597, file: !4588, discriminator: 27)
!4639 = !DILocation(line: 47, column: 15, scope: !4640)
!4640 = !DILexicalBlockFile(scope: !4598, file: !4588, discriminator: 27)
!4641 = !DILocation(line: 48, column: 13, scope: !4597)
!4642 = !DILocation(line: 71, column: 3, scope: !4587)
!4643 = distinct !DISubprogram(name: "locale_charset", scope: !688, file: !688, line: 393, type: !4644, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !345, variables: !4646)
!4644 = !DISubroutineType(types: !4645)
!4645 = !{!25}
!4646 = !{!4647, !4648, !4649, !4654}
!4647 = !DILocalVariable(name: "codeset", scope: !4643, file: !688, line: 395, type: !25)
!4648 = !DILocalVariable(name: "aliases", scope: !4643, file: !688, line: 396, type: !25)
!4649 = !DILocalVariable(name: "__s1_len", scope: !4650, file: !688, line: 592, type: !27)
!4650 = distinct !DILexicalBlock(scope: !4651, file: !688, line: 592, column: 9)
!4651 = distinct !DILexicalBlock(scope: !4652, file: !688, line: 592, column: 9)
!4652 = distinct !DILexicalBlock(scope: !4653, file: !688, line: 589, column: 3)
!4653 = distinct !DILexicalBlock(scope: !4643, file: !688, line: 589, column: 3)
!4654 = !DILocalVariable(name: "__s2_len", scope: !4650, file: !688, line: 592, type: !27)
!4655 = !DILocalVariable(name: "buf1", scope: !4656, file: !688, line: 196, type: !4723)
!4656 = distinct !DILexicalBlock(scope: !4657, file: !688, line: 194, column: 21)
!4657 = distinct !DILexicalBlock(scope: !4658, file: !688, line: 193, column: 19)
!4658 = distinct !DILexicalBlock(scope: !4659, file: !688, line: 193, column: 19)
!4659 = distinct !DILexicalBlock(scope: !4660, file: !688, line: 188, column: 17)
!4660 = distinct !DILexicalBlock(scope: !4661, file: !688, line: 181, column: 19)
!4661 = distinct !DILexicalBlock(scope: !4662, file: !688, line: 177, column: 13)
!4662 = distinct !DILexicalBlock(scope: !4663, file: !688, line: 173, column: 15)
!4663 = distinct !DILexicalBlock(scope: !4664, file: !688, line: 161, column: 9)
!4664 = distinct !DILexicalBlock(scope: !4665, file: !688, line: 157, column: 11)
!4665 = distinct !DILexicalBlock(scope: !4666, file: !688, line: 130, column: 5)
!4666 = distinct !DILexicalBlock(scope: !4667, file: !688, line: 129, column: 7)
!4667 = distinct !DISubprogram(name: "get_charset_aliases", scope: !688, file: !688, line: 124, type: !4644, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !345, variables: !4668)
!4668 = !{!4669, !4670, !4671, !4672, !4673, !4675, !4676, !4677, !4678, !4719, !4720, !4721, !4655, !4722, !4726, !4727, !4728}
!4669 = !DILocalVariable(name: "cp", scope: !4667, file: !688, line: 126, type: !25)
!4670 = !DILocalVariable(name: "dir", scope: !4665, file: !688, line: 132, type: !25)
!4671 = !DILocalVariable(name: "base", scope: !4665, file: !688, line: 133, type: !25)
!4672 = !DILocalVariable(name: "file_name", scope: !4665, file: !688, line: 134, type: !20)
!4673 = !DILocalVariable(name: "dir_len", scope: !4674, file: !688, line: 144, type: !27)
!4674 = distinct !DILexicalBlock(scope: !4665, file: !688, line: 143, column: 7)
!4675 = !DILocalVariable(name: "base_len", scope: !4674, file: !688, line: 145, type: !27)
!4676 = !DILocalVariable(name: "add_slash", scope: !4674, file: !688, line: 146, type: !41)
!4677 = !DILocalVariable(name: "fd", scope: !4663, file: !688, line: 162, type: !41)
!4678 = !DILocalVariable(name: "fp", scope: !4661, file: !688, line: 178, type: !4679)
!4679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4680, size: 64)
!4680 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !151, line: 49, baseType: !4681)
!4681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !153, line: 241, size: 1728, elements: !4682)
!4682 = !{!4683, !4684, !4685, !4686, !4687, !4688, !4689, !4690, !4691, !4692, !4693, !4694, !4695, !4703, !4704, !4705, !4706, !4707, !4708, !4709, !4710, !4711, !4712, !4713, !4714, !4715, !4716, !4717, !4718}
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4681, file: !153, line: 242, baseType: !41, size: 32)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4681, file: !153, line: 247, baseType: !20, size: 64, offset: 64)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4681, file: !153, line: 248, baseType: !20, size: 64, offset: 128)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4681, file: !153, line: 249, baseType: !20, size: 64, offset: 192)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4681, file: !153, line: 250, baseType: !20, size: 64, offset: 256)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4681, file: !153, line: 251, baseType: !20, size: 64, offset: 320)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4681, file: !153, line: 252, baseType: !20, size: 64, offset: 384)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4681, file: !153, line: 253, baseType: !20, size: 64, offset: 448)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4681, file: !153, line: 254, baseType: !20, size: 64, offset: 512)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4681, file: !153, line: 256, baseType: !20, size: 64, offset: 576)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4681, file: !153, line: 257, baseType: !20, size: 64, offset: 640)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4681, file: !153, line: 258, baseType: !20, size: 64, offset: 704)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4681, file: !153, line: 260, baseType: !4696, size: 64, offset: 768)
!4696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4697, size: 64)
!4697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !153, line: 156, size: 192, elements: !4698)
!4698 = !{!4699, !4700, !4702}
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4697, file: !153, line: 157, baseType: !4696, size: 64)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4697, file: !153, line: 158, baseType: !4701, size: 64, offset: 64)
!4701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4681, size: 64)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4697, file: !153, line: 162, baseType: !41, size: 32, offset: 128)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4681, file: !153, line: 262, baseType: !4701, size: 64, offset: 832)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4681, file: !153, line: 264, baseType: !41, size: 32, offset: 896)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4681, file: !153, line: 268, baseType: !41, size: 32, offset: 928)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4681, file: !153, line: 270, baseType: !179, size: 64, offset: 960)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4681, file: !153, line: 274, baseType: !183, size: 16, offset: 1024)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4681, file: !153, line: 275, baseType: !185, size: 8, offset: 1040)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4681, file: !153, line: 276, baseType: !187, size: 8, offset: 1048)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4681, file: !153, line: 280, baseType: !191, size: 64, offset: 1088)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4681, file: !153, line: 289, baseType: !194, size: 64, offset: 1152)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4681, file: !153, line: 297, baseType: !22, size: 64, offset: 1216)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4681, file: !153, line: 298, baseType: !22, size: 64, offset: 1280)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4681, file: !153, line: 299, baseType: !22, size: 64, offset: 1344)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4681, file: !153, line: 300, baseType: !22, size: 64, offset: 1408)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4681, file: !153, line: 302, baseType: !27, size: 64, offset: 1472)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4681, file: !153, line: 303, baseType: !41, size: 32, offset: 1536)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4681, file: !153, line: 305, baseType: !202, size: 160, offset: 1568)
!4719 = !DILocalVariable(name: "res_ptr", scope: !4659, file: !688, line: 190, type: !20)
!4720 = !DILocalVariable(name: "res_size", scope: !4659, file: !688, line: 191, type: !27)
!4721 = !DILocalVariable(name: "c", scope: !4656, file: !688, line: 195, type: !41)
!4722 = !DILocalVariable(name: "buf2", scope: !4656, file: !688, line: 197, type: !4723)
!4723 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 408, elements: !4724)
!4724 = !{!4725}
!4725 = !DISubrange(count: 51)
!4726 = !DILocalVariable(name: "l1", scope: !4656, file: !688, line: 198, type: !27)
!4727 = !DILocalVariable(name: "l2", scope: !4656, file: !688, line: 198, type: !27)
!4728 = !DILocalVariable(name: "old_res_ptr", scope: !4656, file: !688, line: 199, type: !20)
!4729 = !DILocation(line: 196, column: 28, scope: !4656, inlinedAt: !4730)
!4730 = distinct !DILocation(line: 589, column: 18, scope: !4653)
!4731 = !DILocation(line: 197, column: 28, scope: !4656, inlinedAt: !4730)
!4732 = !DILocation(line: 403, column: 13, scope: !4643)
!4733 = !DILocation(line: 395, column: 15, scope: !4643)
!4734 = !DILocation(line: 584, column: 15, scope: !4735)
!4735 = distinct !DILexicalBlock(scope: !4643, file: !688, line: 584, column: 7)
!4736 = !DILocation(line: 584, column: 7, scope: !4643)
!4737 = !DILocation(line: 128, column: 8, scope: !4667, inlinedAt: !4730)
!4738 = !DILocation(line: 126, column: 15, scope: !4667, inlinedAt: !4730)
!4739 = !DILocation(line: 129, column: 10, scope: !4666, inlinedAt: !4730)
!4740 = !DILocation(line: 129, column: 7, scope: !4667, inlinedAt: !4730)
!4741 = !DILocation(line: 138, column: 13, scope: !4665, inlinedAt: !4730)
!4742 = !DILocation(line: 132, column: 19, scope: !4665, inlinedAt: !4730)
!4743 = !DILocation(line: 139, column: 15, scope: !4744, inlinedAt: !4730)
!4744 = distinct !DILexicalBlock(scope: !4665, file: !688, line: 139, column: 11)
!4745 = !DILocation(line: 139, column: 23, scope: !4744, inlinedAt: !4730)
!4746 = !DILocation(line: 139, column: 26, scope: !4747, inlinedAt: !4730)
!4747 = !DILexicalBlockFile(scope: !4744, file: !688, discriminator: 1)
!4748 = !DILocation(line: 139, column: 33, scope: !4747, inlinedAt: !4730)
!4749 = !DILocation(line: 139, column: 11, scope: !4750, inlinedAt: !4730)
!4750 = !DILexicalBlockFile(scope: !4665, file: !688, discriminator: 1)
!4751 = !DILocation(line: 140, column: 9, scope: !4744, inlinedAt: !4730)
!4752 = !DILocation(line: 144, column: 26, scope: !4674, inlinedAt: !4730)
!4753 = !DILocation(line: 144, column: 16, scope: !4674, inlinedAt: !4730)
!4754 = !DILocation(line: 145, column: 16, scope: !4674, inlinedAt: !4730)
!4755 = !DILocation(line: 146, column: 34, scope: !4674, inlinedAt: !4730)
!4756 = !DILocation(line: 146, column: 38, scope: !4674, inlinedAt: !4730)
!4757 = !DILocation(line: 146, column: 42, scope: !4758, inlinedAt: !4730)
!4758 = !DILexicalBlockFile(scope: !4674, file: !688, discriminator: 1)
!4759 = !DILocation(line: 146, column: 41, scope: !4758, inlinedAt: !4730)
!4760 = !DILocation(line: 147, column: 48, scope: !4674, inlinedAt: !4730)
!4761 = !DILocation(line: 147, column: 46, scope: !4674, inlinedAt: !4730)
!4762 = !DILocation(line: 147, column: 69, scope: !4674, inlinedAt: !4730)
!4763 = !DILocation(line: 147, column: 30, scope: !4674, inlinedAt: !4730)
!4764 = !DILocation(line: 134, column: 13, scope: !4665, inlinedAt: !4730)
!4765 = !DILocation(line: 148, column: 13, scope: !4674, inlinedAt: !4730)
!4766 = !DILocation(line: 150, column: 13, scope: !4767, inlinedAt: !4730)
!4767 = distinct !DILexicalBlock(scope: !4768, file: !688, line: 149, column: 11)
!4768 = distinct !DILexicalBlock(scope: !4674, file: !688, line: 148, column: 13)
!4769 = !DILocation(line: 151, column: 17, scope: !4767, inlinedAt: !4730)
!4770 = !DILocation(line: 152, column: 34, scope: !4771, inlinedAt: !4730)
!4771 = distinct !DILexicalBlock(scope: !4767, file: !688, line: 151, column: 17)
!4772 = !DILocation(line: 153, column: 41, scope: !4767, inlinedAt: !4730)
!4773 = !DILocation(line: 153, column: 13, scope: !4767, inlinedAt: !4730)
!4774 = !DILocation(line: 157, column: 11, scope: !4665, inlinedAt: !4730)
!4775 = !DILocation(line: 171, column: 16, scope: !4663, inlinedAt: !4730)
!4776 = !DILocation(line: 162, column: 15, scope: !4663, inlinedAt: !4730)
!4777 = !DILocation(line: 173, column: 18, scope: !4662, inlinedAt: !4730)
!4778 = !DILocation(line: 173, column: 15, scope: !4663, inlinedAt: !4730)
!4779 = !DILocation(line: 180, column: 20, scope: !4661, inlinedAt: !4730)
!4780 = !DILocation(line: 178, column: 21, scope: !4661, inlinedAt: !4730)
!4781 = !DILocation(line: 181, column: 22, scope: !4660, inlinedAt: !4730)
!4782 = !DILocation(line: 181, column: 19, scope: !4661, inlinedAt: !4730)
!4783 = !DILocation(line: 190, column: 25, scope: !4659, inlinedAt: !4730)
!4784 = !DILocation(line: 184, column: 19, scope: !4785, inlinedAt: !4730)
!4785 = distinct !DILexicalBlock(scope: !4660, file: !688, line: 182, column: 17)
!4786 = !DILocation(line: 186, column: 17, scope: !4785, inlinedAt: !4730)
!4787 = !DILocation(line: 191, column: 26, scope: !4659, inlinedAt: !4730)
!4788 = !DILocation(line: 196, column: 23, scope: !4656, inlinedAt: !4730)
!4789 = !DILocation(line: 197, column: 23, scope: !4656, inlinedAt: !4730)
!4790 = !DILocalVariable(name: "__fp", arg: 1, scope: !4791, file: !4505, line: 63, type: !4679)
!4791 = distinct !DISubprogram(name: "getc_unlocked", scope: !4505, file: !4505, line: 63, type: !4792, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !345, variables: !4794)
!4792 = !DISubroutineType(types: !4793)
!4793 = !{!41, !4679}
!4794 = !{!4790}
!4795 = !DILocation(line: 63, column: 22, scope: !4791, inlinedAt: !4796)
!4796 = distinct !DILocation(line: 201, column: 27, scope: !4656, inlinedAt: !4730)
!4797 = !DILocation(line: 65, column: 10, scope: !4791, inlinedAt: !4796)
!4798 = !{!"branch_weights", i32 2000, i32 1}
!4799 = !DILocation(line: 65, column: 10, scope: !4800, inlinedAt: !4796)
!4800 = !DILexicalBlockFile(scope: !4791, file: !4505, discriminator: 1)
!4801 = !DILocation(line: 65, column: 10, scope: !4802, inlinedAt: !4796)
!4802 = !DILexicalBlockFile(scope: !4791, file: !4505, discriminator: 2)
!4803 = !DILocation(line: 65, column: 10, scope: !4804, inlinedAt: !4796)
!4804 = !DILexicalBlockFile(scope: !4791, file: !4505, discriminator: 3)
!4805 = !DILocation(line: 195, column: 27, scope: !4656, inlinedAt: !4730)
!4806 = !DILocation(line: 202, column: 27, scope: !4656, inlinedAt: !4730)
!4807 = !DILocation(line: 63, column: 22, scope: !4791, inlinedAt: !4808)
!4808 = distinct !DILocation(line: 210, column: 33, scope: !4809, inlinedAt: !4730)
!4809 = distinct !DILexicalBlock(scope: !4810, file: !688, line: 207, column: 25)
!4810 = distinct !DILexicalBlock(scope: !4656, file: !688, line: 206, column: 27)
!4811 = !DILocation(line: 65, column: 10, scope: !4791, inlinedAt: !4808)
!4812 = !DILocation(line: 65, column: 10, scope: !4800, inlinedAt: !4808)
!4813 = !DILocation(line: 65, column: 10, scope: !4802, inlinedAt: !4808)
!4814 = !DILocation(line: 65, column: 10, scope: !4804, inlinedAt: !4808)
!4815 = !DILocation(line: 210, column: 29, scope: !4816, inlinedAt: !4730)
!4816 = !DILexicalBlockFile(scope: !4809, file: !688, discriminator: 1)
!4817 = distinct !{!4817, !4818, !4819}
!4818 = !DILocation(line: 193, column: 19, scope: !4658)
!4819 = !DILocation(line: 241, column: 21, scope: !4658)
!4820 = !DILocation(line: 216, column: 23, scope: !4656, inlinedAt: !4730)
!4821 = !DILocation(line: 217, column: 27, scope: !4822, inlinedAt: !4730)
!4822 = distinct !DILexicalBlock(scope: !4656, file: !688, line: 217, column: 27)
!4823 = !DILocation(line: 217, column: 64, scope: !4822, inlinedAt: !4730)
!4824 = !DILocation(line: 217, column: 27, scope: !4656, inlinedAt: !4730)
!4825 = !DILocation(line: 219, column: 28, scope: !4656, inlinedAt: !4730)
!4826 = !DILocation(line: 198, column: 30, scope: !4656, inlinedAt: !4730)
!4827 = !DILocation(line: 220, column: 28, scope: !4656, inlinedAt: !4730)
!4828 = !DILocation(line: 198, column: 34, scope: !4656, inlinedAt: !4730)
!4829 = !DILocation(line: 199, column: 29, scope: !4656, inlinedAt: !4730)
!4830 = !DILocation(line: 222, column: 36, scope: !4831, inlinedAt: !4730)
!4831 = distinct !DILexicalBlock(scope: !4656, file: !688, line: 222, column: 27)
!4832 = !DILocation(line: 222, column: 27, scope: !4656, inlinedAt: !4730)
!4833 = !DILocation(line: 225, column: 63, scope: !4834, inlinedAt: !4730)
!4834 = distinct !DILexicalBlock(scope: !4831, file: !688, line: 223, column: 25)
!4835 = !DILocation(line: 225, column: 46, scope: !4834, inlinedAt: !4730)
!4836 = !DILocation(line: 226, column: 25, scope: !4834, inlinedAt: !4730)
!4837 = !DILocation(line: 229, column: 36, scope: !4838, inlinedAt: !4730)
!4838 = distinct !DILexicalBlock(scope: !4831, file: !688, line: 228, column: 25)
!4839 = !DILocation(line: 230, column: 73, scope: !4838, inlinedAt: !4730)
!4840 = !DILocation(line: 230, column: 46, scope: !4838, inlinedAt: !4730)
!4841 = !DILocation(line: 232, column: 35, scope: !4842, inlinedAt: !4730)
!4842 = distinct !DILexicalBlock(scope: !4656, file: !688, line: 232, column: 27)
!4843 = !DILocation(line: 232, column: 27, scope: !4656, inlinedAt: !4730)
!4844 = !DILocation(line: 236, column: 27, scope: !4845, inlinedAt: !4730)
!4845 = distinct !DILexicalBlock(scope: !4842, file: !688, line: 233, column: 25)
!4846 = !DILocation(line: 237, column: 27, scope: !4845, inlinedAt: !4730)
!4847 = !DILocation(line: 239, column: 39, scope: !4656, inlinedAt: !4730)
!4848 = !DILocation(line: 239, column: 50, scope: !4656, inlinedAt: !4730)
!4849 = !DILocation(line: 239, column: 61, scope: !4656, inlinedAt: !4730)
!4850 = !DILocalVariable(name: "__dest", arg: 1, scope: !4851, file: !1746, line: 107, type: !4854)
!4851 = distinct !DISubprogram(name: "strcpy", scope: !1746, file: !1746, line: 107, type: !4852, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !345, variables: !4856)
!4852 = !DISubroutineType(types: !4853)
!4853 = !{!20, !4854, !4855}
!4854 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !20)
!4855 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !25)
!4856 = !{!4850, !4857}
!4857 = !DILocalVariable(name: "__src", arg: 2, scope: !4851, file: !1746, line: 107, type: !4855)
!4858 = !DILocation(line: 107, column: 1, scope: !4851, inlinedAt: !4859)
!4859 = distinct !DILocation(line: 239, column: 23, scope: !4656, inlinedAt: !4730)
!4860 = !DILocation(line: 109, column: 49, scope: !4851, inlinedAt: !4859)
!4861 = !DILocation(line: 109, column: 10, scope: !4851, inlinedAt: !4859)
!4862 = !DILocation(line: 107, column: 1, scope: !4851, inlinedAt: !4863)
!4863 = distinct !DILocation(line: 240, column: 23, scope: !4656, inlinedAt: !4730)
!4864 = !DILocation(line: 109, column: 49, scope: !4851, inlinedAt: !4863)
!4865 = !DILocation(line: 109, column: 10, scope: !4851, inlinedAt: !4863)
!4866 = !DILocation(line: 241, column: 21, scope: !4657, inlinedAt: !4730)
!4867 = !DILocation(line: 242, column: 19, scope: !4659, inlinedAt: !4730)
!4868 = !DILocation(line: 243, column: 32, scope: !4869, inlinedAt: !4730)
!4869 = distinct !DILexicalBlock(scope: !4659, file: !688, line: 243, column: 23)
!4870 = !DILocation(line: 243, column: 23, scope: !4659, inlinedAt: !4730)
!4871 = !DILocation(line: 247, column: 33, scope: !4872, inlinedAt: !4730)
!4872 = distinct !DILexicalBlock(scope: !4869, file: !688, line: 246, column: 21)
!4873 = !DILocation(line: 247, column: 45, scope: !4872, inlinedAt: !4730)
!4874 = !DILocation(line: 253, column: 11, scope: !4663, inlinedAt: !4730)
!4875 = !DILocation(line: 377, column: 23, scope: !4665, inlinedAt: !4730)
!4876 = !DILocation(line: 378, column: 5, scope: !4665, inlinedAt: !4730)
!4877 = !DILocation(line: 396, column: 15, scope: !4643)
!4878 = !DILocation(line: 590, column: 8, scope: !4652)
!4879 = !DILocation(line: 590, column: 17, scope: !4652)
!4880 = !DILocation(line: 589, column: 3, scope: !4881)
!4881 = !DILexicalBlockFile(scope: !4653, file: !688, discriminator: 1)
!4882 = !DILocation(line: 592, column: 9, scope: !4650)
!4883 = !DILocation(line: 592, column: 35, scope: !4651)
!4884 = !DILocation(line: 593, column: 9, scope: !4651)
!4885 = !DILocation(line: 593, column: 24, scope: !4886)
!4886 = !DILexicalBlockFile(scope: !4651, file: !688, discriminator: 1)
!4887 = !DILocation(line: 593, column: 31, scope: !4886)
!4888 = !DILocation(line: 593, column: 34, scope: !4889)
!4889 = !DILexicalBlockFile(scope: !4651, file: !688, discriminator: 2)
!4890 = !DILocation(line: 593, column: 45, scope: !4889)
!4891 = !DILocation(line: 592, column: 9, scope: !4892)
!4892 = !DILexicalBlockFile(scope: !4652, file: !688, discriminator: 1)
!4893 = !DILocation(line: 595, column: 29, scope: !4894)
!4894 = distinct !DILexicalBlock(scope: !4651, file: !688, line: 594, column: 7)
!4895 = !DILocation(line: 595, column: 27, scope: !4894)
!4896 = !DILocation(line: 595, column: 46, scope: !4894)
!4897 = !DILocation(line: 596, column: 9, scope: !4894)
!4898 = !DILocation(line: 591, column: 19, scope: !4652)
!4899 = !DILocation(line: 591, column: 36, scope: !4652)
!4900 = !DILocation(line: 591, column: 16, scope: !4652)
!4901 = !DILocation(line: 591, column: 52, scope: !4892)
!4902 = !DILocation(line: 591, column: 69, scope: !4652)
!4903 = !DILocation(line: 591, column: 49, scope: !4652)
!4904 = distinct !{!4904, !4905, !4906}
!4905 = !DILocation(line: 589, column: 3, scope: !4653)
!4906 = !DILocation(line: 597, column: 7, scope: !4653)
!4907 = !DILocation(line: 602, column: 7, scope: !4908)
!4908 = distinct !DILexicalBlock(scope: !4643, file: !688, line: 602, column: 7)
!4909 = !DILocation(line: 602, column: 18, scope: !4908)
!4910 = !DILocation(line: 602, column: 7, scope: !4643)
!4911 = !DILocation(line: 612, column: 3, scope: !4643)
!4912 = distinct !DISubprogram(name: "dup_safer", scope: !4913, file: !4913, line: 31, type: !3798, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !794, variables: !4914)
!4913 = !DIFile(filename: "lib/dup-safer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4914 = !{!4915}
!4915 = !DILocalVariable(name: "fd", arg: 1, scope: !4912, file: !4913, line: 31, type: !41)
!4916 = !DILocation(line: 31, column: 16, scope: !4912)
!4917 = !DILocation(line: 33, column: 10, scope: !4912)
!4918 = !DILocation(line: 33, column: 3, scope: !4912)
!4919 = distinct !DISubprogram(name: "rpl_fclose", scope: !4920, file: !4920, line: 56, type: !4921, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !796, variables: !4963)
!4920 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4921 = !DISubroutineType(types: !4922)
!4922 = !{!41, !4923}
!4923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4924, size: 64)
!4924 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !151, line: 49, baseType: !4925)
!4925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !153, line: 241, size: 1728, elements: !4926)
!4926 = !{!4927, !4928, !4929, !4930, !4931, !4932, !4933, !4934, !4935, !4936, !4937, !4938, !4939, !4947, !4948, !4949, !4950, !4951, !4952, !4953, !4954, !4955, !4956, !4957, !4958, !4959, !4960, !4961, !4962}
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4925, file: !153, line: 242, baseType: !41, size: 32)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4925, file: !153, line: 247, baseType: !20, size: 64, offset: 64)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4925, file: !153, line: 248, baseType: !20, size: 64, offset: 128)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4925, file: !153, line: 249, baseType: !20, size: 64, offset: 192)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4925, file: !153, line: 250, baseType: !20, size: 64, offset: 256)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4925, file: !153, line: 251, baseType: !20, size: 64, offset: 320)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4925, file: !153, line: 252, baseType: !20, size: 64, offset: 384)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4925, file: !153, line: 253, baseType: !20, size: 64, offset: 448)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4925, file: !153, line: 254, baseType: !20, size: 64, offset: 512)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4925, file: !153, line: 256, baseType: !20, size: 64, offset: 576)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4925, file: !153, line: 257, baseType: !20, size: 64, offset: 640)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4925, file: !153, line: 258, baseType: !20, size: 64, offset: 704)
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4925, file: !153, line: 260, baseType: !4940, size: 64, offset: 768)
!4940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4941, size: 64)
!4941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !153, line: 156, size: 192, elements: !4942)
!4942 = !{!4943, !4944, !4946}
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4941, file: !153, line: 157, baseType: !4940, size: 64)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4941, file: !153, line: 158, baseType: !4945, size: 64, offset: 64)
!4945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4925, size: 64)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4941, file: !153, line: 162, baseType: !41, size: 32, offset: 128)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4925, file: !153, line: 262, baseType: !4945, size: 64, offset: 832)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4925, file: !153, line: 264, baseType: !41, size: 32, offset: 896)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4925, file: !153, line: 268, baseType: !41, size: 32, offset: 928)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4925, file: !153, line: 270, baseType: !179, size: 64, offset: 960)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4925, file: !153, line: 274, baseType: !183, size: 16, offset: 1024)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4925, file: !153, line: 275, baseType: !185, size: 8, offset: 1040)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4925, file: !153, line: 276, baseType: !187, size: 8, offset: 1048)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4925, file: !153, line: 280, baseType: !191, size: 64, offset: 1088)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4925, file: !153, line: 289, baseType: !194, size: 64, offset: 1152)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4925, file: !153, line: 297, baseType: !22, size: 64, offset: 1216)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4925, file: !153, line: 298, baseType: !22, size: 64, offset: 1280)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4925, file: !153, line: 299, baseType: !22, size: 64, offset: 1344)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4925, file: !153, line: 300, baseType: !22, size: 64, offset: 1408)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4925, file: !153, line: 302, baseType: !27, size: 64, offset: 1472)
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4925, file: !153, line: 303, baseType: !41, size: 32, offset: 1536)
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4925, file: !153, line: 305, baseType: !202, size: 160, offset: 1568)
!4963 = !{!4964, !4965, !4966, !4967}
!4964 = !DILocalVariable(name: "fp", arg: 1, scope: !4919, file: !4920, line: 56, type: !4923)
!4965 = !DILocalVariable(name: "saved_errno", scope: !4919, file: !4920, line: 58, type: !41)
!4966 = !DILocalVariable(name: "fd", scope: !4919, file: !4920, line: 59, type: !41)
!4967 = !DILocalVariable(name: "result", scope: !4919, file: !4920, line: 60, type: !41)
!4968 = !DILocation(line: 56, column: 19, scope: !4919)
!4969 = !DILocation(line: 58, column: 7, scope: !4919)
!4970 = !DILocation(line: 60, column: 7, scope: !4919)
!4971 = !DILocation(line: 63, column: 8, scope: !4919)
!4972 = !DILocation(line: 59, column: 7, scope: !4919)
!4973 = !DILocation(line: 64, column: 10, scope: !4974)
!4974 = distinct !DILexicalBlock(scope: !4919, file: !4920, line: 64, column: 7)
!4975 = !DILocation(line: 64, column: 7, scope: !4919)
!4976 = !DILocation(line: 65, column: 12, scope: !4974)
!4977 = !DILocation(line: 65, column: 5, scope: !4974)
!4978 = !DILocation(line: 70, column: 9, scope: !4979)
!4979 = distinct !DILexicalBlock(scope: !4919, file: !4920, line: 70, column: 7)
!4980 = !DILocation(line: 70, column: 23, scope: !4979)
!4981 = !DILocation(line: 70, column: 33, scope: !4982)
!4982 = !DILexicalBlockFile(scope: !4979, file: !4920, discriminator: 1)
!4983 = !DILocation(line: 70, column: 26, scope: !4984)
!4984 = !DILexicalBlockFile(scope: !4979, file: !4920, discriminator: 3)
!4985 = !DILocation(line: 70, column: 59, scope: !4982)
!4986 = !DILocation(line: 71, column: 7, scope: !4979)
!4987 = !DILocation(line: 71, column: 10, scope: !4982)
!4988 = !DILocation(line: 70, column: 7, scope: !4989)
!4989 = !DILexicalBlockFile(scope: !4919, file: !4920, discriminator: 2)
!4990 = !DILocation(line: 98, column: 12, scope: !4919)
!4991 = !DILocation(line: 103, column: 7, scope: !4919)
!4992 = !DILocation(line: 72, column: 19, scope: !4979)
!4993 = !DILocation(line: 103, column: 19, scope: !4994)
!4994 = distinct !DILexicalBlock(scope: !4919, file: !4920, line: 103, column: 7)
!4995 = !DILocation(line: 105, column: 13, scope: !4996)
!4996 = distinct !DILexicalBlock(scope: !4994, file: !4920, line: 104, column: 5)
!4997 = !DILocation(line: 107, column: 5, scope: !4996)
!4998 = !DILocation(line: 110, column: 1, scope: !4919)
!4999 = !DILocation(line: 272, column: 16, scope: !692)
!5000 = !DILocation(line: 272, column: 24, scope: !692)
!5001 = !DILocation(line: 274, column: 3, scope: !692)
!5002 = !DILocation(line: 274, column: 11, scope: !692)
!5003 = !DILocation(line: 275, column: 7, scope: !692)
!5004 = !DILocation(line: 276, column: 3, scope: !692)
!5005 = !DILocation(line: 277, column: 3, scope: !692)
!5006 = !DILocation(line: 322, column: 22, scope: !715)
!5007 = !DILocation(line: 322, column: 22, scope: !5008)
!5008 = !DILexicalBlockFile(scope: !715, file: !693, discriminator: 1)
!5009 = !DILocation(line: 322, column: 22, scope: !5010)
!5010 = !DILexicalBlockFile(scope: !715, file: !693, discriminator: 2)
!5011 = !DILocation(line: 322, column: 22, scope: !5012)
!5012 = !DILexicalBlockFile(scope: !715, file: !693, discriminator: 3)
!5013 = !DILocation(line: 322, column: 13, scope: !715)
!5014 = !DILocation(line: 336, column: 18, scope: !5015)
!5015 = distinct !DILexicalBlock(scope: !715, file: !693, line: 336, column: 13)
!5016 = !DILocation(line: 336, column: 15, scope: !5015)
!5017 = !DILocation(line: 336, column: 13, scope: !715)
!5018 = !DILocation(line: 338, column: 22, scope: !5019)
!5019 = distinct !DILexicalBlock(scope: !5015, file: !693, line: 337, column: 11)
!5020 = !DILocation(line: 339, column: 19, scope: !5021)
!5021 = distinct !DILexicalBlock(scope: !5019, file: !693, line: 339, column: 17)
!5022 = !DILocation(line: 339, column: 29, scope: !5021)
!5023 = !DILocation(line: 339, column: 32, scope: !5024)
!5024 = !DILexicalBlockFile(scope: !5021, file: !693, discriminator: 1)
!5025 = !DILocation(line: 339, column: 38, scope: !5024)
!5026 = !DILocation(line: 339, column: 17, scope: !5027)
!5027 = !DILexicalBlockFile(scope: !5019, file: !693, discriminator: 1)
!5028 = !DILocation(line: 349, column: 26, scope: !5029)
!5029 = distinct !DILexicalBlock(scope: !5021, file: !693, line: 348, column: 15)
!5030 = !DILocation(line: 350, column: 28, scope: !5031)
!5031 = distinct !DILexicalBlock(scope: !5029, file: !693, line: 350, column: 21)
!5032 = !DILocation(line: 350, column: 21, scope: !5029)
!5033 = !DILocation(line: 354, column: 11, scope: !5019)
!5034 = !DILocation(line: 356, column: 20, scope: !5015)
!5035 = !DILocation(line: 357, column: 28, scope: !5036)
!5036 = !DILexicalBlockFile(scope: !719, file: !693, discriminator: 1)
!5037 = !DILocation(line: 357, column: 15, scope: !719)
!5038 = !DILocation(line: 357, column: 47, scope: !5036)
!5039 = !DILocation(line: 357, column: 25, scope: !719)
!5040 = !DILocation(line: 359, column: 25, scope: !718)
!5041 = !DILocation(line: 359, column: 17, scope: !718)
!5042 = !DILocation(line: 360, column: 23, scope: !722)
!5043 = !DILocation(line: 360, column: 27, scope: !722)
!5044 = !DILocation(line: 360, column: 60, scope: !5045)
!5045 = !DILexicalBlockFile(scope: !722, file: !693, discriminator: 1)
!5046 = !DILocation(line: 360, column: 30, scope: !5045)
!5047 = !DILocation(line: 360, column: 74, scope: !5045)
!5048 = !DILocation(line: 360, column: 17, scope: !5049)
!5049 = !DILexicalBlockFile(scope: !718, file: !693, discriminator: 1)
!5050 = !DILocation(line: 362, column: 35, scope: !721)
!5051 = !DILocation(line: 362, column: 21, scope: !721)
!5052 = !DILocation(line: 363, column: 17, scope: !721)
!5053 = !DILocation(line: 364, column: 23, scope: !721)
!5054 = !DILocation(line: 366, column: 15, scope: !721)
!5055 = !DILocation(line: 404, column: 19, scope: !724)
!5056 = !DILocation(line: 404, column: 19, scope: !5057)
!5057 = !DILexicalBlockFile(scope: !724, file: !693, discriminator: 1)
!5058 = !DILocation(line: 404, column: 19, scope: !5059)
!5059 = !DILexicalBlockFile(scope: !724, file: !693, discriminator: 2)
!5060 = !DILocation(line: 404, column: 19, scope: !5061)
!5061 = !DILexicalBlockFile(scope: !724, file: !693, discriminator: 3)
!5062 = !DILocation(line: 404, column: 15, scope: !724)
!5063 = !DILocation(line: 405, column: 18, scope: !724)
!5064 = !DILocation(line: 412, column: 3, scope: !692)
!5065 = !DILocation(line: 414, column: 1, scope: !692)
!5066 = !DILocation(line: 413, column: 3, scope: !692)
!5067 = distinct !DISubprogram(name: "rpl_fflush", scope: !5068, file: !5068, line: 127, type: !5069, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !798, variables: !5111)
!5068 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5069 = !DISubroutineType(types: !5070)
!5070 = !{!41, !5071}
!5071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5072, size: 64)
!5072 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !151, line: 49, baseType: !5073)
!5073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !153, line: 241, size: 1728, elements: !5074)
!5074 = !{!5075, !5076, !5077, !5078, !5079, !5080, !5081, !5082, !5083, !5084, !5085, !5086, !5087, !5095, !5096, !5097, !5098, !5099, !5100, !5101, !5102, !5103, !5104, !5105, !5106, !5107, !5108, !5109, !5110}
!5075 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5073, file: !153, line: 242, baseType: !41, size: 32)
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5073, file: !153, line: 247, baseType: !20, size: 64, offset: 64)
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5073, file: !153, line: 248, baseType: !20, size: 64, offset: 128)
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5073, file: !153, line: 249, baseType: !20, size: 64, offset: 192)
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5073, file: !153, line: 250, baseType: !20, size: 64, offset: 256)
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5073, file: !153, line: 251, baseType: !20, size: 64, offset: 320)
!5081 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5073, file: !153, line: 252, baseType: !20, size: 64, offset: 384)
!5082 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5073, file: !153, line: 253, baseType: !20, size: 64, offset: 448)
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5073, file: !153, line: 254, baseType: !20, size: 64, offset: 512)
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5073, file: !153, line: 256, baseType: !20, size: 64, offset: 576)
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5073, file: !153, line: 257, baseType: !20, size: 64, offset: 640)
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5073, file: !153, line: 258, baseType: !20, size: 64, offset: 704)
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5073, file: !153, line: 260, baseType: !5088, size: 64, offset: 768)
!5088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5089, size: 64)
!5089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !153, line: 156, size: 192, elements: !5090)
!5090 = !{!5091, !5092, !5094}
!5091 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !5089, file: !153, line: 157, baseType: !5088, size: 64)
!5092 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !5089, file: !153, line: 158, baseType: !5093, size: 64, offset: 64)
!5093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5073, size: 64)
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !5089, file: !153, line: 162, baseType: !41, size: 32, offset: 128)
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5073, file: !153, line: 262, baseType: !5093, size: 64, offset: 832)
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5073, file: !153, line: 264, baseType: !41, size: 32, offset: 896)
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5073, file: !153, line: 268, baseType: !41, size: 32, offset: 928)
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5073, file: !153, line: 270, baseType: !179, size: 64, offset: 960)
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5073, file: !153, line: 274, baseType: !183, size: 16, offset: 1024)
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5073, file: !153, line: 275, baseType: !185, size: 8, offset: 1040)
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5073, file: !153, line: 276, baseType: !187, size: 8, offset: 1048)
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5073, file: !153, line: 280, baseType: !191, size: 64, offset: 1088)
!5103 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5073, file: !153, line: 289, baseType: !194, size: 64, offset: 1152)
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !5073, file: !153, line: 297, baseType: !22, size: 64, offset: 1216)
!5105 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !5073, file: !153, line: 298, baseType: !22, size: 64, offset: 1280)
!5106 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !5073, file: !153, line: 299, baseType: !22, size: 64, offset: 1344)
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !5073, file: !153, line: 300, baseType: !22, size: 64, offset: 1408)
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5073, file: !153, line: 302, baseType: !27, size: 64, offset: 1472)
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5073, file: !153, line: 303, baseType: !41, size: 32, offset: 1536)
!5110 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5073, file: !153, line: 305, baseType: !202, size: 160, offset: 1568)
!5111 = !{!5112}
!5112 = !DILocalVariable(name: "stream", arg: 1, scope: !5067, file: !5068, line: 127, type: !5071)
!5113 = !DILocation(line: 127, column: 19, scope: !5067)
!5114 = !DILocation(line: 148, column: 14, scope: !5115)
!5115 = distinct !DILexicalBlock(scope: !5067, file: !5068, line: 148, column: 7)
!5116 = !DILocation(line: 148, column: 22, scope: !5115)
!5117 = !DILocation(line: 148, column: 27, scope: !5118)
!5118 = !DILexicalBlockFile(scope: !5115, file: !5068, discriminator: 1)
!5119 = !DILocation(line: 148, column: 7, scope: !5120)
!5120 = !DILexicalBlockFile(scope: !5067, file: !5068, discriminator: 1)
!5121 = !DILocation(line: 149, column: 12, scope: !5115)
!5122 = !DILocation(line: 149, column: 5, scope: !5115)
!5123 = !DILocalVariable(name: "fp", arg: 1, scope: !5124, file: !5068, line: 40, type: !5071)
!5124 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !5068, file: !5068, line: 40, type: !5125, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !798, variables: !5127)
!5125 = !DISubroutineType(types: !5126)
!5126 = !{null, !5071}
!5127 = !{!5123}
!5128 = !DILocation(line: 40, column: 48, scope: !5124, inlinedAt: !5129)
!5129 = distinct !DILocation(line: 153, column: 3, scope: !5067)
!5130 = !DILocation(line: 42, column: 11, scope: !5131, inlinedAt: !5129)
!5131 = distinct !DILexicalBlock(scope: !5124, file: !5068, line: 42, column: 7)
!5132 = !DILocation(line: 42, column: 18, scope: !5131, inlinedAt: !5129)
!5133 = !DILocation(line: 42, column: 7, scope: !5124, inlinedAt: !5129)
!5134 = !DILocation(line: 44, column: 5, scope: !5131, inlinedAt: !5129)
!5135 = !DILocation(line: 155, column: 10, scope: !5067)
!5136 = !DILocation(line: 155, column: 3, scope: !5067)
!5137 = !DILocation(line: 229, column: 1, scope: !5067)
