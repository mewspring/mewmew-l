; ModuleID = 'coreutils-8.27/src/head.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.linebuffer = type { [8192 x i8], i64, i64, %struct.linebuffer* }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Usage: %s [OPTION]... [FILE]...\0A\00", align 1
@.str.2 = private unnamed_addr constant [133 x i8] c"Print the first %d lines of each FILE to standard output.\0AWith more than one FILE, precede each with a header giving the file name.\0A\00", align 1
@.str.21 = private unnamed_addr constant [56 x i8] c"\0AWith no FILE, or when FILE is -, read standard input.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.22 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@.str.3 = private unnamed_addr constant [398 x i8] c"  -c, --bytes=[-]NUM       print the first NUM bytes of each file;\0A                             with the leading '-', print all but the last\0A                             NUM bytes of each file\0A  -n, --lines=[-]NUM       print the first NUM lines instead of the first %d;\0A                             with the leading '-', print all but the last\0A                             NUM lines of each file\0A\00", align 1
@.str.4 = private unnamed_addr constant [132 x i8] c"  -q, --quiet, --silent    never print headers giving file names\0A  -v, --verbose            always print headers giving file names\0A\00", align 1
@.str.5 = private unnamed_addr constant [63 x i8] c"  -z, --zero-terminated    line delimiter is NUL, not newline\0A\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.7 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.8 = private unnamed_addr constant [153 x i8] c"\0ANUM may have a multiplier suffix:\0Ab 512, kB 1000, K 1024, MB 1000*1000, M 1024*1024,\0AGB 1000*1000*1000, G 1024*1024*1024, and so on for T, P, E, Z, Y.\0A\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"head\00", align 1
@.str.31 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.32 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.34 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.35 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.36 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@have_read_stdin = internal unnamed_addr global i1 false, align 1
@print_headers = internal unnamed_addr global i1 false, align 1
@line_end = internal unnamed_addr global i1 false, align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"invalid trailing option -- %c\00", align 1
@.str.39 = private unnamed_addr constant [24 x i8] c"invalid number of lines\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"invalid number of bytes\00", align 1
@.str.38 = private unnamed_addr constant [13 x i8] c"bkKmMGTPEZY0\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"c:n:qvz0123456789\00", align 1
@long_options = internal constant [10 x %struct.option] [%struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i32 0, i32 0), i32 1, i32* null, i32 99 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i32 0, i32 0), i32 1, i32* null, i32 110 }, %struct.option { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.42, i32 0, i32 0), i32 0, i32* null, i32 128 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i32 0, i32 0), i32 0, i32* null, i32 113 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i32 0, i32 0), i32 0, i32* null, i32 113 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.45, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.46, i32 0, i32 0), i32 0, i32* null, i32 122 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.48, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
@presume_input_pipe = internal unnamed_addr global i1 false, align 1
@optarg = external local_unnamed_addr global i8*, align 8
@.str.17 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"Jim Meyering\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.19 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@main.default_file_list = internal unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0), i8* null], align 16, !dbg !52
@.str.49 = private unnamed_addr constant [15 x i8] c"standard input\00", align 1
@.str.50 = private unnamed_addr constant [27 x i8] c"cannot open %s for reading\00", align 1
@write_header.first_file = internal unnamed_addr global i1 false, align 1
@.str.54 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.53 = private unnamed_addr constant [14 x i8] c"%s==> %s <==\0A\00", align 1
@.str.52 = private unnamed_addr constant [16 x i8] c"cannot fstat %s\00", align 1
@.str.57 = private unnamed_addr constant [17 x i8] c"error reading %s\00", align 1
@.str.51 = private unnamed_addr constant [19 x i8] c"failed to close %s\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.60 = private unnamed_addr constant [29 x i8] c"%s: file has shrunk too much\00", align 1
@.str.58 = private unnamed_addr constant [17 x i8] c"error writing %s\00", align 1
@.str.59 = private unnamed_addr constant [16 x i8] c"standard output\00", align 1
@.str.55 = private unnamed_addr constant [29 x i8] c"%s: cannot seek to offset %s\00", align 1
@.str.56 = private unnamed_addr constant [38 x i8] c"%s: cannot seek to relative offset %s\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"bytes\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"lines\00", align 1
@.str.42 = private unnamed_addr constant [20 x i8] c"-presume-input-pipe\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"quiet\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"silent\00", align 1
@.str.45 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@.str.46 = private unnamed_addr constant [16 x i8] c"zero-terminated\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.48 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0), align 8, !dbg !144
@.str.23 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !150
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !155
@.str.26 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.27 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.28 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !158
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !165
@.str.61 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.62 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.63 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.65, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.66, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.67, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.68, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.69, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.70, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.71, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.72, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.73, i32 0, i32 0), i8* null], align 16, !dbg !172
@.str.64 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.65 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.66 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.67 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.68 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.69 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.70 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.71 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.72 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.73 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !200
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !205
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !217
@.str.11.74 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.75 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.76 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.77 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.78 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.79 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.80 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !224
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !231
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !219
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !233
@.str.91 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.92 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.93 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.94 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.95 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.96 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.97 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.98 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.99 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.100 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.101 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.102 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.103 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.104 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.107 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.108 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.109 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.110 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.111 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19.112 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !238
@.str.1.123 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.124 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.125 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.130 = private unnamed_addr constant [38 x i8] c"0 <= strtol_base && strtol_base <= 36\00", align 1
@.str.1.131 = private unnamed_addr constant [16 x i8] c"./lib/xstrtol.c\00", align 1
@__PRETTY_FUNCTION__.xstrtoumax = private unnamed_addr constant [79 x i8] c"strtol_error xstrtoumax(const char *, char **, int, uintmax_t *, const char *)\00", align 1
@.str.1.140 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.143 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !247
@.str.3.144 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.145 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.146 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.147 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.148 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.149 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 !dbg !689 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !693, metadata !694), !dbg !695
  %2 = icmp eq i32 %0, 0, !dbg !696
  br i1 %2, label %8, label %3, !dbg !698

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !699, !tbaa !702
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #10, !dbg !699
  %6 = load i8*, i8** @program_name, align 8, !dbg !699, !tbaa !702
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #10, !dbg !706
  br label %52, !dbg !708

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 5) #10, !dbg !710
  %10 = load i8*, i8** @program_name, align 8, !dbg !710, !tbaa !702
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10) #10, !dbg !712
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([133 x i8], [133 x i8]* @.str.2, i64 0, i64 0), i32 5) #10, !dbg !714
  %13 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %12, i32 10) #10, !dbg !715
  %14 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.21, i64 0, i64 0), i32 5) #10, !dbg !716
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !716, !tbaa !702
  %16 = tail call i32 @fputs_unlocked(i8* %14, %struct._IO_FILE* %15) #10, !dbg !721
  %17 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.22, i64 0, i64 0), i32 5) #10, !dbg !723
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !723, !tbaa !702
  %19 = tail call i32 @fputs_unlocked(i8* %17, %struct._IO_FILE* %18) #10, !dbg !726
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([398 x i8], [398 x i8]* @.str.3, i64 0, i64 0), i32 5) #10, !dbg !728
  %21 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %20, i32 10) #10, !dbg !729
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([132 x i8], [132 x i8]* @.str.4, i64 0, i64 0), i32 5) #10, !dbg !730
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !730, !tbaa !702
  %24 = tail call i32 @fputs_unlocked(i8* %22, %struct._IO_FILE* %23) #10, !dbg !731
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.5, i64 0, i64 0), i32 5) #10, !dbg !732
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !732, !tbaa !702
  %27 = tail call i32 @fputs_unlocked(i8* %25, %struct._IO_FILE* %26) #10, !dbg !733
  %28 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0), i32 5) #10, !dbg !734
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !734, !tbaa !702
  %30 = tail call i32 @fputs_unlocked(i8* %28, %struct._IO_FILE* %29) #10, !dbg !735
  %31 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.7, i64 0, i64 0), i32 5) #10, !dbg !736
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !736, !tbaa !702
  %33 = tail call i32 @fputs_unlocked(i8* %31, %struct._IO_FILE* %32) #10, !dbg !737
  %34 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([153 x i8], [153 x i8]* @.str.8, i64 0, i64 0), i32 5) #10, !dbg !738
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !738, !tbaa !702
  %36 = tail call i32 @fputs_unlocked(i8* %34, %struct._IO_FILE* %35) #10, !dbg !739
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !105, metadata !694) #10, !dbg !740
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i64 0, metadata !105, metadata !694) #10, !dbg !740
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.31, i64 0, i64 0), i32 5) #10, !dbg !742
  %38 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %37, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.32, i64 0, i64 0)) #10, !dbg !743
  %39 = tail call i8* @setlocale(i32 5, i8* null) #10, !dbg !745
  tail call void @llvm.dbg.value(metadata i8* %39, i64 0, metadata !116, metadata !694) #10, !dbg !746
  %40 = icmp eq i8* %39, null, !dbg !747
  br i1 %40, label %47, label %41, !dbg !748

; <label>:41:                                     ; preds = %8
  %42 = tail call i32 @strncmp(i8* nonnull %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i64 0, i64 0), i64 3) #13, !dbg !749
  %43 = icmp eq i32 %42, 0, !dbg !749
  br i1 %43, label %47, label %44, !dbg !751

; <label>:44:                                     ; preds = %41
  %45 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.34, i64 0, i64 0), i32 5) #10, !dbg !753
  %46 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0)) #10, !dbg !755
  br label %47, !dbg !757

; <label>:47:                                     ; preds = %8, %41, %44
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.35, i64 0, i64 0), i32 5) #10, !dbg !758
  %49 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %48, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0)) #10, !dbg !759
  %50 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.36, i64 0, i64 0), i32 5) #10, !dbg !760
  %51 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i64 0, i64 0)) #10, !dbg !761
  br label %52

; <label>:52:                                     ; preds = %47, %3
  tail call void @exit(i32 %0) #14, !dbg !762
  unreachable, !dbg !762
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
define i32 @main(i32, i8**) local_unnamed_addr #6 !dbg !54 {
  %3 = alloca %struct.stat, align 8
  %4 = alloca [2 x i8*], align 16
  tail call void @llvm.dbg.declare(metadata [2 x i8*]* %4, metadata !763, metadata !694), !dbg !811
  %5 = alloca [8192 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [8192 x i8]* %5, metadata !902, metadata !694), !dbg !930
  %6 = alloca [8192 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [8192 x i8]* %6, metadata !944, metadata !694), !dbg !956
  %7 = alloca %struct.stat, align 8
  %8 = alloca [21 x i8], align 16
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !60, metadata !694), !dbg !958
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !61, metadata !694), !dbg !959
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !62, metadata !694), !dbg !960
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !63, metadata !694), !dbg !961
  tail call void @llvm.dbg.value(metadata i64 10, i64 0, metadata !67, metadata !694), !dbg !962
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !71, metadata !694), !dbg !963
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !72, metadata !694), !dbg !964
  %9 = load i8*, i8** %1, align 8, !dbg !965, !tbaa !702
  tail call void @set_program_name(i8* %9) #10, !dbg !966
  %10 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)) #10, !dbg !967
  %11 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0)) #10, !dbg !968
  %12 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0)) #10, !dbg !969
  %13 = tail call i32 @atexit(void ()* nonnull @close_stdout) #10, !dbg !970
  store i1 false, i1* @have_read_stdin, align 1
  store i1 false, i1* @print_headers, align 1
  store i1 true, i1* @line_end, align 1
  %14 = icmp sgt i32 %0, 1, !dbg !971
  br i1 %14, label %15, label %80, !dbg !972

; <label>:15:                                     ; preds = %2
  %16 = getelementptr inbounds i8*, i8** %1, i64 1, !dbg !973
  %17 = load i8*, i8** %16, align 8, !dbg !973, !tbaa !702
  %18 = load i8, i8* %17, align 1, !dbg !973, !tbaa !975
  %19 = icmp eq i8 %18, 45, !dbg !976
  br i1 %19, label %20, label %80, !dbg !977

; <label>:20:                                     ; preds = %15
  %21 = getelementptr inbounds i8, i8* %17, i64 1, !dbg !978
  %22 = load i8, i8* %21, align 1, !dbg !978, !tbaa !975
  %23 = sext i8 %22 to i32, !dbg !978
  %24 = add nsw i32 %23, -48, !dbg !978
  %25 = icmp ult i32 %24, 10, !dbg !978
  br i1 %25, label %26, label %80, !dbg !980, !llvm.loop !982

; <label>:26:                                     ; preds = %20
  br label %27, !dbg !985

; <label>:27:                                     ; preds = %26, %27
  %28 = phi i8* [ %29, %27 ], [ %21, %26 ]
  tail call void @llvm.dbg.value(metadata i8* %28, i64 0, metadata !74, metadata !694), !dbg !985
  %29 = getelementptr inbounds i8, i8* %28, i64 1, !dbg !986
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !74, metadata !694), !dbg !985
  %30 = load i8, i8* %29, align 1, !dbg !988, !tbaa !975
  %31 = sext i8 %30 to i32, !dbg !988
  %32 = add nsw i32 %31, -48, !dbg !988
  %33 = icmp ult i32 %32, 10, !dbg !988
  br i1 %33, label %27, label %34, !dbg !989, !llvm.loop !982

; <label>:34:                                     ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !79, metadata !694), !dbg !991
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !74, metadata !694), !dbg !985
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !71, metadata !694), !dbg !963
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !62, metadata !694), !dbg !960
  %35 = icmp eq i8 %30, 0, !dbg !992
  br i1 %35, label %64, label %36, !dbg !992

; <label>:36:                                     ; preds = %34
  br label %37, !dbg !995

; <label>:37:                                     ; preds = %36, %53
  %38 = phi i8 [ %58, %53 ], [ %30, %36 ], !dbg !998
  %39 = phi i8 [ %56, %53 ], [ 0, %36 ]
  %40 = phi i8* [ %57, %53 ], [ %29, %36 ]
  %41 = phi i8 [ %55, %53 ], [ 1, %36 ]
  %42 = phi i32 [ %54, %53 ], [ 0, %36 ]
  %43 = sext i8 %38 to i32, !dbg !995
  switch i32 %43, label %49 [
    i32 99, label %53
    i32 98, label %44
    i32 107, label %44
    i32 109, label %44
    i32 108, label %45
    i32 113, label %46
    i32 118, label %47
    i32 122, label %48
  ], !dbg !1000

; <label>:44:                                     ; preds = %37, %37, %37
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !71, metadata !694), !dbg !963
  tail call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !79, metadata !694), !dbg !991
  br label %53, !dbg !1001

; <label>:45:                                     ; preds = %37
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !71, metadata !694), !dbg !963
  br label %53, !dbg !1002

; <label>:46:                                     ; preds = %37
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !62, metadata !694), !dbg !960
  br label %53, !dbg !1003

; <label>:47:                                     ; preds = %37
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !62, metadata !694), !dbg !960
  br label %53, !dbg !1004

; <label>:48:                                     ; preds = %37
  store i1 false, i1* @line_end, align 1
  br label %53, !dbg !1005

; <label>:49:                                     ; preds = %37
  %50 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0), i32 5) #10, !dbg !1006
  %51 = load i8, i8* %40, align 1, !dbg !1007, !tbaa !975
  %52 = sext i8 %51 to i32, !dbg !1007
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %50, i32 %52) #10, !dbg !1008
  tail call void @usage(i32 1) #15, !dbg !1010
  unreachable, !dbg !1010

; <label>:53:                                     ; preds = %37, %44, %45, %46, %47, %48
  %54 = phi i32 [ %42, %48 ], [ 1, %47 ], [ 2, %46 ], [ %42, %45 ], [ %42, %44 ], [ %42, %37 ]
  %55 = phi i8 [ %41, %48 ], [ %41, %47 ], [ %41, %46 ], [ 1, %45 ], [ 0, %44 ], [ 0, %37 ]
  %56 = phi i8 [ %39, %48 ], [ %39, %47 ], [ %39, %46 ], [ %39, %45 ], [ %38, %44 ], [ 0, %37 ]
  tail call void @llvm.dbg.value(metadata i8 %56, i64 0, metadata !79, metadata !694), !dbg !991
  tail call void @llvm.dbg.value(metadata i8 %55, i64 0, metadata !71, metadata !694), !dbg !963
  tail call void @llvm.dbg.value(metadata i32 %54, i64 0, metadata !62, metadata !694), !dbg !960
  %57 = getelementptr inbounds i8, i8* %40, i64 1, !dbg !1011
  tail call void @llvm.dbg.value(metadata i8* %57, i64 0, metadata !74, metadata !694), !dbg !985
  tail call void @llvm.dbg.value(metadata i8 %56, i64 0, metadata !79, metadata !694), !dbg !991
  tail call void @llvm.dbg.value(metadata i8* %57, i64 0, metadata !74, metadata !694), !dbg !985
  tail call void @llvm.dbg.value(metadata i8 %55, i64 0, metadata !71, metadata !694), !dbg !963
  tail call void @llvm.dbg.value(metadata i32 %54, i64 0, metadata !62, metadata !694), !dbg !960
  %58 = load i8, i8* %57, align 1, !dbg !1013, !tbaa !975
  %59 = icmp eq i8 %58, 0, !dbg !992
  br i1 %59, label %60, label %37, !dbg !992, !llvm.loop !1015

; <label>:60:                                     ; preds = %53
  store i8 %56, i8* %29, align 1, !dbg !1018, !tbaa !975
  %61 = icmp eq i8 %56, 0, !dbg !1019
  br i1 %61, label %68, label %62, !dbg !1021

; <label>:62:                                     ; preds = %60
  %63 = getelementptr inbounds i8, i8* %28, i64 2, !dbg !1022
  tail call void @llvm.dbg.value(metadata i8* %63, i64 0, metadata !78, metadata !694), !dbg !1023
  br label %64, !dbg !1024

; <label>:64:                                     ; preds = %34, %62
  %65 = phi i8* [ %63, %62 ], [ %29, %34 ]
  %66 = phi i8 [ %55, %62 ], [ 1, %34 ]
  %67 = phi i32 [ %54, %62 ], [ 0, %34 ]
  store i8 0, i8* %65, align 1, !tbaa !975
  br label %68, !dbg !1025

; <label>:68:                                     ; preds = %64, %60
  %69 = phi i8 [ %55, %60 ], [ %66, %64 ]
  %70 = phi i32 [ %54, %60 ], [ %67, %64 ]
  %71 = and i8 %69, 1, !dbg !1025
  %72 = icmp ne i8 %71, 0, !dbg !1025
  tail call void @llvm.dbg.value(metadata i1 %72, i64 0, metadata !1026, metadata !1032) #10, !dbg !1033
  tail call void @llvm.dbg.value(metadata i8* %21, i64 0, metadata !1031, metadata !694) #10, !dbg !1035
  %73 = select i1 %72, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.39, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i64 0, i64 0), !dbg !1036
  %74 = tail call i8* @dcgettext(i8* null, i8* %73, i32 5) #10, !dbg !1037
  %75 = tail call i64 @xdectoumax(i8* %21, i64 0, i64 -1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.38, i64 0, i64 0), i8* %74, i32 0) #10, !dbg !1038
  tail call void @llvm.dbg.value(metadata i64 %75, i64 0, metadata !67, metadata !694), !dbg !962
  %76 = bitcast i8** %1 to i64*, !dbg !1040
  %77 = load i64, i64* %76, align 8, !dbg !1040, !tbaa !702
  %78 = bitcast i8** %16 to i64*, !dbg !1041
  store i64 %77, i64* %78, align 8, !dbg !1041, !tbaa !702
  tail call void @llvm.dbg.value(metadata i8** %16, i64 0, metadata !61, metadata !694), !dbg !959
  %79 = add nsw i32 %0, -1, !dbg !1042
  tail call void @llvm.dbg.value(metadata i32 %79, i64 0, metadata !60, metadata !694), !dbg !958
  br label %80, !dbg !1043

; <label>:80:                                     ; preds = %68, %20, %15, %2
  %81 = phi i32 [ 0, %2 ], [ 0, %15 ], [ 0, %20 ], [ %70, %68 ]
  %82 = phi i8** [ %1, %2 ], [ %1, %15 ], [ %1, %20 ], [ %16, %68 ]
  %83 = phi i64 [ 10, %2 ], [ 10, %15 ], [ 10, %20 ], [ %75, %68 ]
  %84 = phi i8 [ 1, %2 ], [ 1, %15 ], [ 1, %20 ], [ %69, %68 ]
  %85 = phi i32 [ %0, %2 ], [ %0, %15 ], [ %0, %20 ], [ %79, %68 ]
  br label %87, !dbg !958

; <label>:86:                                     ; preds = %96
  br label %121, !dbg !958

; <label>:87:                                     ; preds = %121, %80
  %88 = phi i32 [ %81, %80 ], [ %122, %121 ]
  %89 = phi i64 [ %83, %80 ], [ %93, %121 ]
  %90 = phi i8 [ %84, %80 ], [ %94, %121 ]
  %91 = phi i8 [ 0, %80 ], [ %95, %121 ]
  br label %92, !dbg !958

; <label>:92:                                     ; preds = %113, %87
  %93 = phi i64 [ %89, %87 ], [ %119, %113 ]
  %94 = phi i8 [ %90, %87 ], [ %116, %113 ]
  %95 = phi i8 [ %91, %87 ], [ %117, %113 ]
  br label %96, !dbg !958

; <label>:96:                                     ; preds = %124, %92
  tail call void @llvm.dbg.value(metadata i32 %85, i64 0, metadata !60, metadata !694), !dbg !958
  tail call void @llvm.dbg.value(metadata i8 %95, i64 0, metadata !72, metadata !694), !dbg !964
  tail call void @llvm.dbg.value(metadata i8 %94, i64 0, metadata !71, metadata !694), !dbg !963
  tail call void @llvm.dbg.value(metadata i64 %93, i64 0, metadata !67, metadata !694), !dbg !962
  tail call void @llvm.dbg.value(metadata i8** %82, i64 0, metadata !61, metadata !694), !dbg !959
  tail call void @llvm.dbg.value(metadata i32 %88, i64 0, metadata !62, metadata !694), !dbg !960
  %97 = tail call i32 @getopt_long(i32 %85, i8** %82, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0), %struct.option* getelementptr inbounds ([10 x %struct.option], [10 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #10, !dbg !1044
  tail call void @llvm.dbg.value(metadata i32 %97, i64 0, metadata !65, metadata !694), !dbg !1046
  switch i32 %97, label %129 [
    i32 -1, label %135
    i32 128, label %98
    i32 99, label %99
    i32 110, label %106
    i32 113, label %86
    i32 118, label %120
    i32 122, label %123
    i32 -130, label %125
    i32 -131, label %126
  ], !dbg !1047, !llvm.loop !1048

; <label>:98:                                     ; preds = %96
  store i1 true, i1* @presume_input_pipe, align 1
  br label %124, !dbg !1051

; <label>:99:                                     ; preds = %96
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !71, metadata !694), !dbg !963
  %100 = load i8*, i8** @optarg, align 8, !dbg !1054, !tbaa !702
  %101 = load i8, i8* %100, align 1, !dbg !1055, !tbaa !975
  %102 = icmp eq i8 %101, 45, !dbg !1056
  %103 = zext i1 %102 to i8, !dbg !1057
  tail call void @llvm.dbg.value(metadata i8 %103, i64 0, metadata !72, metadata !694), !dbg !964
  br i1 %102, label %104, label %113, !dbg !1058

; <label>:104:                                    ; preds = %99
  %105 = getelementptr inbounds i8, i8* %100, i64 1, !dbg !1059
  store i8* %105, i8** @optarg, align 8, !dbg !1059, !tbaa !702
  br label %113, !dbg !1059

; <label>:106:                                    ; preds = %96
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !71, metadata !694), !dbg !963
  %107 = load i8*, i8** @optarg, align 8, !dbg !1061, !tbaa !702
  %108 = load i8, i8* %107, align 1, !dbg !1062, !tbaa !975
  %109 = icmp eq i8 %108, 45, !dbg !1063
  %110 = zext i1 %109 to i8, !dbg !1064
  tail call void @llvm.dbg.value(metadata i8 %110, i64 0, metadata !72, metadata !694), !dbg !964
  br i1 %109, label %111, label %113, !dbg !1065

; <label>:111:                                    ; preds = %106
  %112 = getelementptr inbounds i8, i8* %107, i64 1, !dbg !1066
  store i8* %112, i8** @optarg, align 8, !dbg !1066, !tbaa !702
  br label %113, !dbg !1066

; <label>:113:                                    ; preds = %99, %104, %106, %111
  %114 = phi i8* [ %112, %111 ], [ %107, %106 ], [ %105, %104 ], [ %100, %99 ]
  %115 = phi i8* [ getelementptr inbounds ([24 x i8], [24 x i8]* @.str.39, i64 0, i64 0), %111 ], [ getelementptr inbounds ([24 x i8], [24 x i8]* @.str.39, i64 0, i64 0), %106 ], [ getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i64 0, i64 0), %104 ], [ getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i64 0, i64 0), %99 ]
  %116 = phi i8 [ 1, %111 ], [ 1, %106 ], [ 0, %104 ], [ 0, %99 ]
  %117 = phi i8 [ %110, %111 ], [ %110, %106 ], [ %103, %104 ], [ %103, %99 ]
  %118 = tail call i8* @dcgettext(i8* null, i8* nonnull %115, i32 5) #10, !dbg !1068
  %119 = tail call i64 @xdectoumax(i8* %114, i64 0, i64 -1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.38, i64 0, i64 0), i8* %118, i32 0) #10, !dbg !1070
  br label %92, !dbg !958, !llvm.loop !1048

; <label>:120:                                    ; preds = %96
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !62, metadata !694), !dbg !960
  br label %121, !dbg !1071

; <label>:121:                                    ; preds = %120, %86
  %122 = phi i32 [ 1, %120 ], [ 2, %86 ]
  br label %87, !dbg !958, !llvm.loop !1048

; <label>:123:                                    ; preds = %96
  store i1 false, i1* @line_end, align 1
  br label %124, !dbg !1072

; <label>:124:                                    ; preds = %123, %98
  br label %96, !dbg !958, !llvm.loop !1048

; <label>:125:                                    ; preds = %96
  tail call void @usage(i32 0) #15, !dbg !1073
  unreachable, !dbg !1073

; <label>:126:                                    ; preds = %96
  %127 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1074, !tbaa !702
  %128 = load i8*, i8** @Version, align 8, !dbg !1074, !tbaa !702
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %127, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i8* %128, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0), i8* null) #10, !dbg !1074
  tail call void @exit(i32 0) #14, !dbg !1075
  unreachable, !dbg !1074

; <label>:129:                                    ; preds = %96
  %130 = add i32 %97, -48, !dbg !1077
  %131 = icmp ult i32 %130, 10, !dbg !1077
  br i1 %131, label %132, label %134, !dbg !1079

; <label>:132:                                    ; preds = %129
  %133 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0), i32 5) #10, !dbg !1080
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %133, i32 %97) #10, !dbg !1081
  br label %134, !dbg !1083

; <label>:134:                                    ; preds = %132, %129
  tail call void @usage(i32 1) #15, !dbg !1084
  unreachable, !dbg !1084

; <label>:135:                                    ; preds = %96
  switch i32 %88, label %141 [
    i32 1, label %140
    i32 0, label %136
  ], !dbg !1085

; <label>:136:                                    ; preds = %135
  %137 = load i32, i32* @optind, align 4, !dbg !1087, !tbaa !1089
  %138 = add nsw i32 %85, -1, !dbg !1091
  %139 = icmp slt i32 %137, %138, !dbg !1092
  br i1 %139, label %140, label %141, !dbg !1093

; <label>:140:                                    ; preds = %135, %136
  store i1 true, i1* @print_headers, align 1
  br label %141, !dbg !1094

; <label>:141:                                    ; preds = %135, %140, %136
  %142 = and i8 %94, 1, !dbg !1095
  %143 = icmp ne i8 %142, 0, !dbg !1095
  br i1 %143, label %153, label %144, !dbg !1096

; <label>:144:                                    ; preds = %141
  %145 = icmp ne i8 %95, 0, !dbg !1097
  %146 = icmp slt i64 %93, 0, !dbg !1099
  %147 = and i1 %146, %145, !dbg !1101
  br i1 %147, label %148, label %153, !dbg !1101

; <label>:148:                                    ; preds = %144
  %149 = getelementptr inbounds [21 x i8], [21 x i8]* %8, i64 0, i64 0, !dbg !1102
  call void @llvm.lifetime.start(i64 21, i8* nonnull %149) #10, !dbg !1102
  tail call void @llvm.dbg.declare(metadata [21 x i8]* %8, metadata !80, metadata !694), !dbg !1103
  %150 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i64 0, i64 0), i32 5) #10, !dbg !1104
  %151 = call i8* @umaxtostr(i64 %93, i8* nonnull %149) #10, !dbg !1105
  %152 = call i8* @quote(i8* %151) #10, !dbg !1107
  call void (i32, i32, i8*, ...) @error(i32 1, i32 75, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0), i8* %150, i8* %152) #10, !dbg !1109
  unreachable, !dbg !1104

; <label>:153:                                    ; preds = %144, %141
  %154 = load i32, i32* @optind, align 4, !dbg !1111, !tbaa !1089
  %155 = icmp slt i32 %154, %85, !dbg !1112
  %156 = sext i32 %154 to i64, !dbg !1113
  %157 = getelementptr inbounds i8*, i8** %82, i64 %156, !dbg !1113
  %158 = select i1 %155, i8** %157, i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @main.default_file_list, i64 0, i64 0), !dbg !1111
  tail call void @llvm.dbg.value(metadata i8** %158, i64 0, metadata !73, metadata !694), !dbg !1114
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !66, metadata !694), !dbg !1115
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !66, metadata !694), !dbg !1115
  %159 = load i8*, i8** %158, align 8, !dbg !1116, !tbaa !702
  %160 = icmp eq i8* %159, null, !dbg !1118
  br i1 %160, label %844, label %161, !dbg !1118

; <label>:161:                                    ; preds = %153
  %162 = icmp eq i8 %95, 0
  %163 = getelementptr inbounds [8192 x i8], [8192 x i8]* %6, i64 0, i64 0
  %164 = icmp eq i64 %93, 0
  %165 = bitcast %struct.stat* %3 to i8*
  %166 = getelementptr inbounds %struct.stat, %struct.stat* %3, i64 0, i32 3
  %167 = bitcast %struct.stat* %7 to i8*
  %168 = getelementptr inbounds %struct.stat, %struct.stat* %7, i64 0, i32 8
  %169 = getelementptr inbounds %struct.stat, %struct.stat* %7, i64 0, i32 9
  %170 = getelementptr inbounds [8192 x i8], [8192 x i8]* %5, i64 0, i64 0
  %171 = icmp ne i64 %93, 0
  %172 = ptrtoint [8192 x i8]* %5 to i64
  %173 = add i64 %93, 8192
  %174 = icmp ult i64 %93, 1048577
  %175 = bitcast [2 x i8*]* %4 to i8*
  %176 = icmp ugt i64 %173, 4611686018427387903
  %177 = shl i64 %173, 1
  %178 = getelementptr inbounds [2 x i8*], [2 x i8*]* %4, i64 0, i64 0
  %179 = getelementptr inbounds [2 x i8*], [2 x i8*]* %4, i64 0, i64 1
  %180 = and i64 %93, 8191
  %181 = sub nsw i64 8192, %180
  %182 = add i64 %181, %93
  %183 = lshr i64 %182, 13
  %184 = add nuw nsw i64 %183, 1
  %185 = icmp ult i64 %184, 16
  %186 = select i1 %185, i64 %184, i64 16
  %187 = lshr i64 %184, 1
  %188 = icmp eq i64 %181, 0
  %189 = getelementptr inbounds %struct.stat, %struct.stat* %7, i64 0, i32 3
  br label %190, !dbg !1118

; <label>:190:                                    ; preds = %161, %835
  %191 = phi i8* [ %159, %161 ], [ %840, %835 ]
  %192 = phi i64 [ 0, %161 ], [ %838, %835 ]
  %193 = phi i1 [ true, %161 ], [ %837, %835 ]
  call void @llvm.dbg.declare(metadata [8192 x i8]* %6, metadata !1120, metadata !694) #10, !dbg !1131
  call void @llvm.dbg.value(metadata i8* %191, i64 0, metadata !886, metadata !694) #10, !dbg !1134
  call void @llvm.dbg.value(metadata i64 %93, i64 0, metadata !887, metadata !694) #10, !dbg !1135
  call void @llvm.dbg.value(metadata i1 %143, i64 0, metadata !888, metadata !1032) #10, !dbg !1136
  call void @llvm.dbg.value(metadata i1 %162, i64 0, metadata !889, metadata !1032) #10, !dbg !1137
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !895, metadata !694) #10, !dbg !1138
  call void @llvm.dbg.value(metadata i8* %191, i64 0, metadata !896, metadata !694) #10, !dbg !1139
  %194 = load i8, i8* %191, align 1, !dbg !1140, !tbaa !975
  %195 = icmp eq i8 %194, 45, !dbg !1142
  br i1 %195, label %196, label %202, !dbg !1145

; <label>:196:                                    ; preds = %190
  %197 = getelementptr inbounds i8, i8* %191, i64 1, !dbg !1147
  %198 = load i8, i8* %197, align 1, !dbg !1147, !tbaa !975
  %199 = icmp eq i8 %198, 0, !dbg !1150
  br i1 %199, label %200, label %202, !dbg !1152

; <label>:200:                                    ; preds = %196
  store i1 true, i1* @have_read_stdin, align 1
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !890, metadata !694) #10, !dbg !1153
  %201 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.49, i64 0, i64 0), i32 5) #10, !dbg !1154
  call void @llvm.dbg.value(metadata i8* %201, i64 0, metadata !886, metadata !694) #10, !dbg !1134
  br label %210, !dbg !1157

; <label>:202:                                    ; preds = %196, %190
  %203 = call i32 (i8*, i32, ...) @open(i8* nonnull %191, i32 0) #10, !dbg !1158
  call void @llvm.dbg.value(metadata i32 %203, i64 0, metadata !890, metadata !694) #10, !dbg !1153
  %204 = icmp slt i32 %203, 0, !dbg !1160
  br i1 %204, label %205, label %210, !dbg !1162

; <label>:205:                                    ; preds = %202
  %206 = tail call i32* @__errno_location() #1, !dbg !1163
  %207 = load i32, i32* %206, align 4, !dbg !1163, !tbaa !1089
  %208 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.50, i64 0, i64 0), i32 5) #10, !dbg !1165
  %209 = call i8* @quotearg_style(i32 4, i8* nonnull %191) #10, !dbg !1167
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %207, i8* %208, i8* %209) #10, !dbg !1169
  br label %835, !dbg !1171

; <label>:210:                                    ; preds = %202, %200
  %211 = phi i1 [ true, %200 ], [ false, %202 ]
  %212 = phi i32 [ 0, %200 ], [ %203, %202 ]
  %213 = phi i8* [ %201, %200 ], [ %191, %202 ]
  call void @llvm.dbg.value(metadata i8* %213, i64 0, metadata !886, metadata !694) #10, !dbg !1134
  call void @llvm.dbg.value(metadata i32 %212, i64 0, metadata !890, metadata !694) #10, !dbg !1153
  call void @llvm.dbg.declare(metadata [8192 x i8]* %6, metadata !1172, metadata !694) #10, !dbg !1187
  call void @llvm.dbg.declare(metadata [8192 x i8]* %6, metadata !944, metadata !694) #10, !dbg !1189
  call void @llvm.dbg.value(metadata i8* %213, i64 0, metadata !874, metadata !694) #10, !dbg !1191
  call void @llvm.dbg.value(metadata i32 %212, i64 0, metadata !875, metadata !694) #10, !dbg !1192
  call void @llvm.dbg.value(metadata i64 %93, i64 0, metadata !876, metadata !694) #10, !dbg !1193
  call void @llvm.dbg.value(metadata i1 %143, i64 0, metadata !877, metadata !1032) #10, !dbg !1194
  call void @llvm.dbg.value(metadata i1 %162, i64 0, metadata !878, metadata !1032) #10, !dbg !1195
  %214 = load i1, i1* @print_headers, align 1
  br i1 %214, label %215, label %219, !dbg !1196

; <label>:215:                                    ; preds = %210
  call void @llvm.dbg.value(metadata i8* %213, i64 0, metadata !131, metadata !694) #10, !dbg !1197
  %216 = load i1, i1* @write_header.first_file, align 1
  %217 = select i1 %216, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.54, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0), !dbg !1200
  %218 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.53, i64 0, i64 0), i8* %217, i8* %213) #10, !dbg !1200
  store i1 true, i1* @write_header.first_file, align 1
  br label %219, !dbg !1201

; <label>:219:                                    ; preds = %215, %210
  br i1 %162, label %757, label %220, !dbg !1202

; <label>:220:                                    ; preds = %219
  call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !879, metadata !694) #10, !dbg !1203
  call void @llvm.lifetime.start(i64 144, i8* nonnull %167) #10, !dbg !1204
  call void @llvm.dbg.value(metadata %struct.stat* %7, i64 0, metadata !880, metadata !1205) #10, !dbg !1206
  call void @llvm.dbg.value(metadata i32 %212, i64 0, metadata !1207, metadata !694) #10, !dbg !1215
  call void @llvm.dbg.value(metadata %struct.stat* %7, i64 0, metadata !1214, metadata !694) #10, !dbg !1215
  %221 = call i32 @__fxstat(i32 1, i32 %212, %struct.stat* nonnull %7) #10, !dbg !1218
  %222 = icmp eq i32 %221, 0, !dbg !1219
  br i1 %222, label %228, label %223, !dbg !1220

; <label>:223:                                    ; preds = %220
  %224 = tail call i32* @__errno_location() #1, !dbg !1221
  %225 = load i32, i32* %224, align 4, !dbg !1221, !tbaa !1089
  %226 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.52, i64 0, i64 0), i32 5) #10, !dbg !1223
  %227 = call i8* @quotearg_style(i32 4, i8* %213) #10, !dbg !1225
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %225, i8* %226, i8* %227) #10, !dbg !1226
  br label %755, !dbg !1228

; <label>:228:                                    ; preds = %220
  %229 = load i1, i1* @presume_input_pipe, align 1
  br i1 %229, label %239, label %230, !dbg !1229

; <label>:230:                                    ; preds = %228
  call void @llvm.dbg.value(metadata %struct.stat* %7, i64 0, metadata !880, metadata !1205) #10, !dbg !1206
  call void @llvm.dbg.value(metadata %struct.stat* %7, i64 0, metadata !1231, metadata !694) #10, !dbg !1236
  %231 = load i32, i32* %189, align 8, !dbg !1239, !tbaa !1240
  %232 = trunc i32 %231 to i16, !dbg !1244
  %233 = and i16 %232, -4096, !dbg !1244
  switch i16 %233, label %239 [
    i16 -32768, label %234
    i16 -24576, label %234
  ], !dbg !1244

; <label>:234:                                    ; preds = %230, %230
  %235 = call fastcc i64 @elseek(i32 %212, i64 0, i32 1, i8* %213) #10, !dbg !1245
  call void @llvm.dbg.value(metadata i64 %235, i64 0, metadata !879, metadata !694) #10, !dbg !1203
  %236 = icmp slt i64 %235, 0, !dbg !1247
  br i1 %236, label %755, label %237, !dbg !1249

; <label>:237:                                    ; preds = %234
  %238 = load i1, i1* @presume_input_pipe, align 1
  br label %239, !dbg !1249

; <label>:239:                                    ; preds = %237, %230, %228
  %240 = phi i1 [ true, %228 ], [ %238, %237 ], [ false, %230 ]
  %241 = phi i64 [ -1, %228 ], [ %235, %237 ], [ -1, %230 ]
  call void @llvm.dbg.value(metadata i64 %241, i64 0, metadata !879, metadata !694) #10, !dbg !1203
  call void @llvm.dbg.value(metadata %struct.stat* %7, i64 0, metadata !880, metadata !1205) #10, !dbg !1206
  %242 = load i64, i64* %168, align 8, !tbaa !1250
  %243 = icmp slt i64 %241, 0
  %244 = or i1 %240, %243
  br i1 %143, label %245, label %546, !dbg !1251

; <label>:245:                                    ; preds = %239
  call void @llvm.dbg.value(metadata i8* %213, i64 0, metadata !937, metadata !694) #10, !dbg !1252
  call void @llvm.dbg.value(metadata i32 %212, i64 0, metadata !938, metadata !694) #10, !dbg !1253
  call void @llvm.dbg.value(metadata i64 %93, i64 0, metadata !939, metadata !694) #10, !dbg !1254
  call void @llvm.dbg.value(metadata %struct.stat* %7, i64 0, metadata !940, metadata !694) #10, !dbg !1255
  call void @llvm.dbg.value(metadata i64 %241, i64 0, metadata !941, metadata !694) #10, !dbg !1256
  call void @llvm.dbg.value(metadata i64 %242, i64 0, metadata !942, metadata !694) #10, !dbg !1257
  br i1 %244, label %253, label %246, !dbg !1258

; <label>:246:                                    ; preds = %245
  %247 = load i64, i64* %169, align 8, !dbg !1259, !tbaa !1261
  %248 = icmp sgt i64 %247, 0, !dbg !1259
  %249 = icmp ult i64 %247, 2305843009213693953, !dbg !1262
  %250 = and i1 %248, %249, !dbg !1259
  %251 = select i1 %250, i64 %247, i64 512, !dbg !1259
  %252 = icmp sgt i64 %242, %251, !dbg !1264
  br i1 %252, label %442, label %253, !dbg !1266

; <label>:253:                                    ; preds = %246, %245
  call void @llvm.dbg.value(metadata i8* %213, i64 0, metadata !1268, metadata !694) #10, !dbg !1299
  call void @llvm.dbg.value(metadata i32 %212, i64 0, metadata !1271, metadata !694) #10, !dbg !1301
  call void @llvm.dbg.value(metadata i64 %93, i64 0, metadata !1272, metadata !694) #10, !dbg !1302
  call void @llvm.dbg.value(metadata i64 %241, i64 0, metadata !1273, metadata !694) #10, !dbg !1303
  call void @llvm.dbg.value(metadata i64 %241, i64 0, metadata !1274, metadata !694) #10, !dbg !1304
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1287, metadata !694) #10, !dbg !1305
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1288, metadata !694) #10, !dbg !1306
  %254 = call noalias i8* @xmalloc(i64 8216) #10, !dbg !1307
  %255 = bitcast i8* %254 to %struct.linebuffer*, !dbg !1307
  call void @llvm.dbg.value(metadata %struct.linebuffer* %255, i64 0, metadata !1285, metadata !694) #10, !dbg !1308
  call void @llvm.dbg.value(metadata %struct.linebuffer* %255, i64 0, metadata !1275, metadata !694) #10, !dbg !1309
  %256 = getelementptr inbounds i8, i8* %254, i64 8192, !dbg !1310
  call void @llvm.memset.p0i8.i64(i8* %256, i8 0, i64 24, i32 8, i1 false) #10, !dbg !1311
  %257 = call noalias i8* @xmalloc(i64 8216) #10, !dbg !1312
  %258 = bitcast i8* %257 to %struct.linebuffer*, !dbg !1312
  call void @llvm.dbg.value(metadata %struct.linebuffer* %258, i64 0, metadata !1286, metadata !694) #10, !dbg !1313
  br label %259, !dbg !1314

; <label>:259:                                    ; preds = %322, %253
  %260 = phi %struct.linebuffer* [ %258, %253 ], [ %263, %322 ]
  %261 = phi i64 [ 0, %253 ], [ %328, %322 ]
  %262 = phi %struct.linebuffer* [ %255, %253 ], [ %267, %322 ]
  %263 = phi %struct.linebuffer* [ %255, %253 ], [ %330, %322 ]
  %264 = phi i64 [ %241, %253 ], [ %325, %322 ]
  %265 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %263, i64 0, i32 2
  br label %266, !dbg !1304

; <label>:266:                                    ; preds = %331, %259
  %267 = phi %struct.linebuffer* [ %333, %331 ], [ %260, %259 ]
  %268 = phi i64 [ %308, %331 ], [ %261, %259 ]
  %269 = phi %struct.linebuffer* [ %267, %331 ], [ %262, %259 ]
  %270 = phi i64 [ %283, %331 ], [ %264, %259 ]
  %271 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %267, i64 0, i32 0, i64 0
  %272 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %267, i64 0, i32 1
  %273 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %267, i64 0, i32 2
  %274 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %269, i64 0, i32 1
  %275 = bitcast i64* %273 to i8*
  %276 = bitcast i64* %272 to <2 x i64>*
  %277 = bitcast i64* %274 to <2 x i64>*
  %278 = bitcast i64* %274 to <2 x i64>*
  br label %279, !dbg !1304

; <label>:279:                                    ; preds = %312, %266
  %280 = phi i64 [ %268, %266 ], [ %308, %312 ]
  %281 = phi i64 [ %270, %266 ], [ %283, %312 ]
  br label %282, !dbg !1304

; <label>:282:                                    ; preds = %286, %279
  %283 = phi i64 [ %287, %286 ], [ %281, %279 ]
  call void @llvm.dbg.value(metadata i64 %283, i64 0, metadata !1274, metadata !694) #10, !dbg !1304
  call void @llvm.dbg.value(metadata %struct.linebuffer* %263, i64 0, metadata !1275, metadata !694) #10, !dbg !1309
  call void @llvm.dbg.value(metadata %struct.linebuffer* %269, i64 0, metadata !1285, metadata !694) #10, !dbg !1308
  call void @llvm.dbg.value(metadata i64 %280, i64 0, metadata !1287, metadata !694) #10, !dbg !1305
  call void @llvm.dbg.value(metadata %struct.linebuffer* %267, i64 0, metadata !1286, metadata !694) #10, !dbg !1313
  %284 = call i64 @safe_read(i32 %212, i8* %271, i64 8192) #10, !dbg !1315
  call void @llvm.dbg.value(metadata i64 %284, i64 0, metadata !1289, metadata !694) #10, !dbg !1316
  switch i64 %284, label %285 [
    i64 -1, label %334
    i64 0, label %334
  ], !dbg !1317

; <label>:285:                                    ; preds = %282
  br i1 %164, label %286, label %288, !dbg !1319

; <label>:286:                                    ; preds = %285
  %287 = add i64 %284, %283, !dbg !1320
  call void @llvm.dbg.value(metadata i64 %287, i64 0, metadata !1274, metadata !694) #10, !dbg !1304
  call fastcc void @xwrite_stdout(i8* %271, i64 %284) #10, !dbg !1323
  br label %282, !dbg !1324, !llvm.loop !1325

; <label>:288:                                    ; preds = %285
  store i64 %284, i64* %272, align 8, !dbg !1328, !tbaa !1329
  %289 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %267, i64 0, i32 0, i64 %284, !dbg !1331
  call void @llvm.dbg.value(metadata i8* %289, i64 0, metadata !1290, metadata !694) #10, !dbg !1332
  call void @llvm.dbg.value(metadata i8* %271, i64 0, metadata !1293, metadata !694) #10, !dbg !1333
  call void @llvm.dbg.value(metadata i8* %271, i64 0, metadata !1293, metadata !694) #10, !dbg !1333
  call void @llvm.memset.p0i8.i64(i8* %275, i8 0, i64 16, i32 8, i1 false) #10, !dbg !1334
  %290 = load i1, i1* @line_end, align 1
  %291 = select i1 %290, i32 10, i32 0, !dbg !1335
  %292 = ptrtoint i8* %289 to i64, !dbg !1337
  %293 = call i8* @memchr(i8* %271, i32 %291, i64 %284) #13, !dbg !1338
  call void @llvm.dbg.value(metadata i8* %293, i64 0, metadata !1293, metadata !694) #10, !dbg !1333
  %294 = icmp eq i8* %293, null, !dbg !1339
  br i1 %294, label %306, label %295, !dbg !1339

; <label>:295:                                    ; preds = %288
  br label %296, !dbg !1340

; <label>:296:                                    ; preds = %295, %296
  %297 = phi i64 [ %300, %296 ], [ 0, %295 ], !dbg !1342
  %298 = phi i8* [ %303, %296 ], [ %293, %295 ]
  %299 = getelementptr inbounds i8, i8* %298, i64 1, !dbg !1340
  call void @llvm.dbg.value(metadata i8* %299, i64 0, metadata !1293, metadata !694) #10, !dbg !1333
  %300 = add i64 %297, 1, !dbg !1342
  store i64 %300, i64* %273, align 8, !dbg !1342, !tbaa !1343
  call void @llvm.dbg.value(metadata i8* %299, i64 0, metadata !1293, metadata !694) #10, !dbg !1333
  %301 = ptrtoint i8* %299 to i64, !dbg !1337
  %302 = sub i64 %292, %301, !dbg !1337
  %303 = call i8* @memchr(i8* %299, i32 %291, i64 %302) #13, !dbg !1338
  call void @llvm.dbg.value(metadata i8* %303, i64 0, metadata !1293, metadata !694) #10, !dbg !1333
  %304 = icmp eq i8* %303, null, !dbg !1339
  br i1 %304, label %305, label %296, !dbg !1339, !llvm.loop !1344

; <label>:305:                                    ; preds = %296
  br label %306, !dbg !1347

; <label>:306:                                    ; preds = %305, %288
  %307 = phi i64 [ 0, %288 ], [ %300, %305 ], !dbg !1348
  %308 = add i64 %307, %280, !dbg !1347
  call void @llvm.dbg.value(metadata i64 %308, i64 0, metadata !1287, metadata !694) #10, !dbg !1305
  %309 = load i64, i64* %274, align 8, !dbg !1349, !tbaa !1329
  %310 = add i64 %309, %284, !dbg !1351
  %311 = icmp ult i64 %310, 8192, !dbg !1352
  br i1 %311, label %312, label %317, !dbg !1353

; <label>:312:                                    ; preds = %306
  %313 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %269, i64 0, i32 0, i64 %309, !dbg !1354
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %313, i8* nonnull %271, i64 %284, i32 1, i1 false) #10, !dbg !1356
  %314 = load <2 x i64>, <2 x i64>* %276, align 8, !dbg !1357, !tbaa !1358
  %315 = load <2 x i64>, <2 x i64>* %277, align 8, !dbg !1359, !tbaa !1358
  %316 = add <2 x i64> %315, %314, !dbg !1359
  store <2 x i64> %316, <2 x i64>* %278, align 8, !dbg !1359, !tbaa !1358
  br label %279, !dbg !1360, !llvm.loop !1325

; <label>:317:                                    ; preds = %306
  %318 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %269, i64 0, i32 3, !dbg !1361
  store %struct.linebuffer* %267, %struct.linebuffer** %318, align 8, !dbg !1363, !tbaa !1364
  call void @llvm.dbg.value(metadata %struct.linebuffer* %267, i64 0, metadata !1285, metadata !694) #10, !dbg !1308
  %319 = load i64, i64* %265, align 8, !dbg !1365, !tbaa !1343
  %320 = sub i64 %308, %319, !dbg !1367
  %321 = icmp ugt i64 %320, %93, !dbg !1368
  br i1 %321, label %322, label %331, !dbg !1369

; <label>:322:                                    ; preds = %317
  %323 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %263, i64 0, i32 1, !dbg !1370
  %324 = load i64, i64* %323, align 8, !dbg !1370, !tbaa !1329
  %325 = add i64 %324, %283, !dbg !1372
  call void @llvm.dbg.value(metadata i64 %325, i64 0, metadata !1274, metadata !694) #10, !dbg !1304
  %326 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %263, i64 0, i32 0, i64 0, !dbg !1373
  call fastcc void @xwrite_stdout(i8* %326, i64 %324) #10, !dbg !1374
  call void @llvm.dbg.value(metadata %struct.linebuffer* %263, i64 0, metadata !1286, metadata !694) #10, !dbg !1313
  %327 = load i64, i64* %265, align 8, !dbg !1375, !tbaa !1343
  %328 = sub i64 %308, %327, !dbg !1376
  call void @llvm.dbg.value(metadata i64 %328, i64 0, metadata !1287, metadata !694) #10, !dbg !1305
  %329 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %263, i64 0, i32 3, !dbg !1377
  %330 = load %struct.linebuffer*, %struct.linebuffer** %329, align 8, !dbg !1377, !tbaa !1364
  call void @llvm.dbg.value(metadata %struct.linebuffer* %330, i64 0, metadata !1275, metadata !694) #10, !dbg !1309
  br label %259, !dbg !1378, !llvm.loop !1325

; <label>:331:                                    ; preds = %317
  %332 = call noalias i8* @xmalloc(i64 8216) #10, !dbg !1379
  %333 = bitcast i8* %332 to %struct.linebuffer*, !dbg !1379
  call void @llvm.dbg.value(metadata %struct.linebuffer* %333, i64 0, metadata !1286, metadata !694) #10, !dbg !1313
  br label %266, !llvm.loop !1325

; <label>:334:                                    ; preds = %282, %282
  %335 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %269, i64 0, i32 2
  %336 = icmp eq i64 %284, -1, !dbg !1380
  call void @free(i8* %271) #10, !dbg !1382
  br i1 %336, label %337, label %342, !dbg !1383

; <label>:337:                                    ; preds = %334
  %338 = tail call i32* @__errno_location() #1, !dbg !1384
  %339 = load i32, i32* %338, align 4, !dbg !1384, !tbaa !1089
  %340 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i32 5) #10, !dbg !1387
  %341 = call i8* @quotearg_style(i32 4, i8* %213) #10, !dbg !1389
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %339, i8* %340, i8* %341) #10, !dbg !1391
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1288, metadata !694) #10, !dbg !1306
  br label %420, !dbg !1393

; <label>:342:                                    ; preds = %334
  %343 = load i64, i64* %274, align 8, !dbg !1394, !tbaa !1329
  %344 = icmp eq i64 %343, 0, !dbg !1396
  br i1 %344, label %357, label %345, !dbg !1397

; <label>:345:                                    ; preds = %342
  %346 = add i64 %343, -1, !dbg !1398
  %347 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %269, i64 0, i32 0, i64 %346, !dbg !1400
  %348 = load i8, i8* %347, align 1, !dbg !1400, !tbaa !975
  %349 = sext i8 %348 to i32, !dbg !1400
  %350 = load i1, i1* @line_end, align 1
  %351 = select i1 %350, i32 10, i32 0, !dbg !1401
  %352 = icmp eq i32 %349, %351, !dbg !1402
  br i1 %352, label %357, label %353, !dbg !1403

; <label>:353:                                    ; preds = %345
  %354 = load i64, i64* %335, align 8, !dbg !1405, !tbaa !1343
  %355 = add i64 %354, 1, !dbg !1405
  store i64 %355, i64* %335, align 8, !dbg !1405, !tbaa !1343
  %356 = add i64 %280, 1, !dbg !1407
  call void @llvm.dbg.value(metadata i64 %356, i64 0, metadata !1287, metadata !694) #10, !dbg !1305
  br label %357, !dbg !1408

; <label>:357:                                    ; preds = %353, %345, %342
  %358 = phi i64 [ %356, %353 ], [ %280, %342 ], [ %280, %345 ]
  call void @llvm.dbg.value(metadata i64 %283, i64 0, metadata !1274, metadata !694) #10, !dbg !1304
  call void @llvm.dbg.value(metadata i64 %358, i64 0, metadata !1287, metadata !694) #10, !dbg !1305
  call void @llvm.dbg.value(metadata %struct.linebuffer* %263, i64 0, metadata !1286, metadata !694) #10, !dbg !1313
  %359 = load i64, i64* %265, align 8, !dbg !1409, !tbaa !1343
  %360 = sub i64 %358, %359, !dbg !1413
  %361 = icmp ugt i64 %360, %93, !dbg !1414
  br i1 %361, label %362, label %381, !dbg !1415

; <label>:362:                                    ; preds = %357
  br label %363, !dbg !1417

; <label>:363:                                    ; preds = %362, %363
  %364 = phi i64* [ %376, %363 ], [ %265, %362 ]
  %365 = phi i64 [ %370, %363 ], [ %283, %362 ]
  %366 = phi i64 [ %373, %363 ], [ %358, %362 ]
  %367 = phi %struct.linebuffer* [ %375, %363 ], [ %263, %362 ]
  %368 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %367, i64 0, i32 1, !dbg !1417
  %369 = load i64, i64* %368, align 8, !dbg !1417, !tbaa !1329
  %370 = add i64 %369, %365, !dbg !1419
  call void @llvm.dbg.value(metadata i64 %370, i64 0, metadata !1274, metadata !694) #10, !dbg !1304
  %371 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %367, i64 0, i32 0, i64 0, !dbg !1420
  call fastcc void @xwrite_stdout(i8* %371, i64 %369) #10, !dbg !1421
  %372 = load i64, i64* %364, align 8, !dbg !1422, !tbaa !1343
  %373 = sub i64 %366, %372, !dbg !1423
  call void @llvm.dbg.value(metadata i64 %373, i64 0, metadata !1287, metadata !694) #10, !dbg !1305
  %374 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %367, i64 0, i32 3, !dbg !1424
  %375 = load %struct.linebuffer*, %struct.linebuffer** %374, align 8, !dbg !1424, !tbaa !1364
  call void @llvm.dbg.value(metadata %struct.linebuffer* %375, i64 0, metadata !1286, metadata !694) #10, !dbg !1313
  call void @llvm.dbg.value(metadata i64 %370, i64 0, metadata !1274, metadata !694) #10, !dbg !1304
  call void @llvm.dbg.value(metadata i64 %373, i64 0, metadata !1287, metadata !694) #10, !dbg !1305
  call void @llvm.dbg.value(metadata %struct.linebuffer* %375, i64 0, metadata !1286, metadata !694) #10, !dbg !1313
  %376 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %375, i64 0, i32 2, !dbg !1409
  %377 = load i64, i64* %376, align 8, !dbg !1409, !tbaa !1343
  %378 = sub i64 %373, %377, !dbg !1413
  %379 = icmp ugt i64 %378, %93, !dbg !1414
  br i1 %379, label %363, label %380, !dbg !1415, !llvm.loop !1426

; <label>:380:                                    ; preds = %363
  br label %381, !dbg !1429

; <label>:381:                                    ; preds = %380, %357
  %382 = phi i64 [ %359, %357 ], [ %377, %380 ]
  %383 = phi %struct.linebuffer* [ %263, %357 ], [ %375, %380 ]
  %384 = phi i64 [ %358, %357 ], [ %373, %380 ]
  %385 = phi i64 [ %283, %357 ], [ %370, %380 ]
  %386 = phi i64* [ %265, %357 ], [ %376, %380 ]
  %387 = icmp ugt i64 %384, %93, !dbg !1429
  br i1 %387, label %388, label %420, !dbg !1430

; <label>:388:                                    ; preds = %381
  %389 = sub i64 %384, %93, !dbg !1431
  call void @llvm.dbg.value(metadata i64 %389, i64 0, metadata !1294, metadata !694) #10, !dbg !1432
  %390 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %383, i64 0, i32 0, i64 0, !dbg !1433
  call void @llvm.dbg.value(metadata i8* %390, i64 0, metadata !1298, metadata !694) #10, !dbg !1434
  call void @llvm.dbg.value(metadata i8* %390, i64 0, metadata !1298, metadata !694) #10, !dbg !1434
  call void @llvm.dbg.value(metadata i64 %389, i64 0, metadata !1294, metadata !694) #10, !dbg !1432
  %391 = icmp eq i64 %389, 0, !dbg !1435
  br i1 %391, label %414, label %392, !dbg !1437

; <label>:392:                                    ; preds = %388
  %393 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %383, i64 0, i32 1, !dbg !1438
  %394 = load i64, i64* %393, align 8, !dbg !1438, !tbaa !1329
  %395 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %383, i64 0, i32 0, i64 %394, !dbg !1439
  %396 = ptrtoint i8* %395 to i64
  %397 = load i1, i1* @line_end, align 1
  %398 = select i1 %397, i32 10, i32 0
  br label %399, !dbg !1437

; <label>:399:                                    ; preds = %407, %392
  %400 = phi i64 [ %382, %392 ], [ %409, %407 ], !dbg !1440
  %401 = phi i8* [ %390, %392 ], [ %408, %407 ]
  %402 = phi i64 [ %389, %392 ], [ %410, %407 ]
  %403 = ptrtoint i8* %401 to i64, !dbg !1442
  %404 = sub i64 %396, %403, !dbg !1442
  %405 = call i8* @memchr(i8* %401, i32 %398, i64 %404) #13, !dbg !1444
  call void @llvm.dbg.value(metadata i8* %405, i64 0, metadata !1298, metadata !694) #10, !dbg !1434
  %406 = icmp eq i8* %405, null, !dbg !1445
  call void @llvm.dbg.value(metadata i8* %405, i64 0, metadata !1298, metadata !694) #10, !dbg !1434
  br i1 %406, label %412, label %407, !dbg !1446

; <label>:407:                                    ; preds = %399
  %408 = getelementptr inbounds i8, i8* %405, i64 1, !dbg !1448
  call void @llvm.dbg.value(metadata i8* %408, i64 0, metadata !1298, metadata !694) #10, !dbg !1434
  %409 = add i64 %400, 1, !dbg !1440
  store i64 %409, i64* %386, align 8, !dbg !1440, !tbaa !1343
  %410 = add i64 %402, -1, !dbg !1449
  call void @llvm.dbg.value(metadata i64 %410, i64 0, metadata !1294, metadata !694) #10, !dbg !1432
  call void @llvm.dbg.value(metadata i8* %408, i64 0, metadata !1298, metadata !694) #10, !dbg !1434
  call void @llvm.dbg.value(metadata i64 %410, i64 0, metadata !1294, metadata !694) #10, !dbg !1432
  %411 = icmp eq i64 %410, 0, !dbg !1435
  br i1 %411, label %412, label %399, !dbg !1437, !llvm.loop !1450

; <label>:412:                                    ; preds = %399, %407
  %413 = phi i8* [ null, %399 ], [ %408, %407 ]
  br label %414, !dbg !1453

; <label>:414:                                    ; preds = %412, %388
  %415 = phi i8* [ %390, %388 ], [ %413, %412 ]
  %416 = ptrtoint i8* %415 to i64, !dbg !1453
  %417 = ptrtoint %struct.linebuffer* %383 to i64, !dbg !1453
  %418 = sub i64 %416, %417, !dbg !1453
  %419 = add i64 %418, %385, !dbg !1454
  call void @llvm.dbg.value(metadata i64 %419, i64 0, metadata !1274, metadata !694) #10, !dbg !1304
  call fastcc void @xwrite_stdout(i8* %390, i64 %418) #10, !dbg !1455
  br label %420, !dbg !1456

; <label>:420:                                    ; preds = %414, %381, %337
  %421 = phi i8 [ 1, %381 ], [ 1, %414 ], [ 0, %337 ]
  %422 = phi i64 [ %385, %381 ], [ %419, %414 ], [ %283, %337 ]
  call void @llvm.dbg.value(metadata i64 %422, i64 0, metadata !1274, metadata !694) #10, !dbg !1304
  call void @llvm.dbg.value(metadata %struct.linebuffer* %263, i64 0, metadata !1275, metadata !694) #10, !dbg !1309
  call void @llvm.dbg.value(metadata i8 %421, i64 0, metadata !1288, metadata !694) #10, !dbg !1306
  %423 = icmp eq %struct.linebuffer* %263, null, !dbg !1457
  br i1 %423, label %432, label %424, !dbg !1457

; <label>:424:                                    ; preds = %420
  br label %425, !dbg !1458

; <label>:425:                                    ; preds = %424, %425
  %426 = phi %struct.linebuffer* [ %428, %425 ], [ %263, %424 ]
  %427 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %426, i64 0, i32 3, !dbg !1458
  %428 = load %struct.linebuffer*, %struct.linebuffer** %427, align 8, !dbg !1458, !tbaa !1364
  call void @llvm.dbg.value(metadata %struct.linebuffer* %428, i64 0, metadata !1286, metadata !694) #10, !dbg !1313
  %429 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %426, i64 0, i32 0, i64 0, !dbg !1460
  call void @free(i8* %429) #10, !dbg !1461
  call void @llvm.dbg.value(metadata %struct.linebuffer* %428, i64 0, metadata !1275, metadata !694) #10, !dbg !1309
  call void @llvm.dbg.value(metadata i64 %422, i64 0, metadata !1274, metadata !694) #10, !dbg !1304
  call void @llvm.dbg.value(metadata %struct.linebuffer* %428, i64 0, metadata !1275, metadata !694) #10, !dbg !1309
  call void @llvm.dbg.value(metadata i8 %421, i64 0, metadata !1288, metadata !694) #10, !dbg !1306
  %430 = icmp eq %struct.linebuffer* %428, null, !dbg !1457
  br i1 %430, label %431, label %425, !dbg !1457, !llvm.loop !1462

; <label>:431:                                    ; preds = %425
  br label %432, !dbg !1465

; <label>:432:                                    ; preds = %431, %420
  %433 = icmp sgt i64 %241, -1, !dbg !1465
  br i1 %433, label %434, label %438, !dbg !1467

; <label>:434:                                    ; preds = %432
  %435 = call fastcc i64 @elseek(i32 %212, i64 %422, i32 0, i8* %213) #10, !dbg !1468
  %436 = icmp slt i64 %435, 0, !dbg !1470
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1288, metadata !694) #10, !dbg !1306
  %437 = select i1 %436, i8 0, i8 %421, !dbg !1471
  br label %438, !dbg !1471

; <label>:438:                                    ; preds = %434, %432
  %439 = phi i8 [ %421, %432 ], [ %437, %434 ]
  call void @llvm.dbg.value(metadata i8 %439, i64 0, metadata !1288, metadata !694) #10, !dbg !1306
  %440 = and i8 %439, 1, !dbg !1472
  %441 = icmp ne i8 %440, 0, !dbg !1472
  br label %755, !dbg !1473

; <label>:442:                                    ; preds = %246
  %443 = icmp sgt i64 %242, %241, !dbg !1474
  br i1 %443, label %444, label %755, !dbg !1475

; <label>:444:                                    ; preds = %442
  call void @llvm.dbg.value(metadata i8* %213, i64 0, metadata !907, metadata !694) #10, !dbg !1476
  call void @llvm.dbg.value(metadata i32 %212, i64 0, metadata !908, metadata !694) #10, !dbg !1477
  call void @llvm.dbg.value(metadata i64 %93, i64 0, metadata !909, metadata !694) #10, !dbg !1478
  call void @llvm.dbg.value(metadata i64 %241, i64 0, metadata !910, metadata !694) #10, !dbg !1479
  call void @llvm.dbg.value(metadata i64 %242, i64 0, metadata !911, metadata !694) #10, !dbg !1480
  call void @llvm.lifetime.start(i64 8192, i8* nonnull %170) #10, !dbg !1481
  call void @llvm.dbg.value(metadata i64 %242, i64 0, metadata !913, metadata !694) #10, !dbg !1482
  %445 = sub nsw i64 %242, %241, !dbg !1483
  %446 = srem i64 %445, 8192, !dbg !1484
  call void @llvm.dbg.value(metadata i64 %446, i64 0, metadata !912, metadata !694) #10, !dbg !1485
  %447 = icmp eq i64 %446, 0, !dbg !1486
  %448 = select i1 %447, i64 8192, i64 %446, !dbg !1488
  call void @llvm.dbg.value(metadata i64 %448, i64 0, metadata !912, metadata !694) #10, !dbg !1485
  %449 = sub i64 %242, %448, !dbg !1489
  call void @llvm.dbg.value(metadata i64 %449, i64 0, metadata !913, metadata !694) #10, !dbg !1482
  %450 = call fastcc i64 @elseek(i32 %212, i64 %449, i32 0, i8* %213) #10, !dbg !1490
  %451 = icmp slt i64 %450, 0, !dbg !1492
  br i1 %451, label %544, label %452, !dbg !1493

; <label>:452:                                    ; preds = %444
  %453 = call i64 @safe_read(i32 %212, i8* nonnull %170, i64 %448) #10, !dbg !1494
  call void @llvm.dbg.value(metadata i64 %453, i64 0, metadata !912, metadata !694) #10, !dbg !1485
  %454 = icmp eq i64 %453, -1, !dbg !1495
  br i1 %454, label %455, label %460, !dbg !1497

; <label>:455:                                    ; preds = %452
  %456 = tail call i32* @__errno_location() #1, !dbg !1498
  %457 = load i32, i32* %456, align 4, !dbg !1498, !tbaa !1089
  %458 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i32 5) #10, !dbg !1500
  %459 = call i8* @quotearg_style(i32 4, i8* %213) #10, !dbg !1502
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %457, i8* %458, i8* %459) #10, !dbg !1504
  br label %544, !dbg !1506

; <label>:460:                                    ; preds = %452
  %461 = icmp ne i64 %453, 0, !dbg !1507
  %462 = and i1 %171, %461, !dbg !1510
  br i1 %462, label %463, label %473, !dbg !1510

; <label>:463:                                    ; preds = %460
  %464 = add i64 %453, -1, !dbg !1511
  %465 = getelementptr inbounds [8192 x i8], [8192 x i8]* %5, i64 0, i64 %464, !dbg !1513
  %466 = load i8, i8* %465, align 1, !dbg !1513, !tbaa !975
  %467 = sext i8 %466 to i32, !dbg !1513
  %468 = load i1, i1* @line_end, align 1
  %469 = select i1 %468, i32 10, i32 0, !dbg !1514
  %470 = icmp ne i32 %467, %469, !dbg !1515
  %471 = sext i1 %470 to i64, !dbg !1515
  %472 = add i64 %471, %93, !dbg !1515
  br label %473, !dbg !1515

; <label>:473:                                    ; preds = %463, %460
  %474 = phi i64 [ %93, %460 ], [ %472, %463 ]
  br label %475, !dbg !1478

; <label>:475:                                    ; preds = %473, %535
  %476 = phi i64 [ %532, %535 ], [ %449, %473 ]
  %477 = phi i64 [ %536, %535 ], [ %453, %473 ]
  %478 = phi i64 [ %483, %535 ], [ %474, %473 ]
  call void @llvm.dbg.value(metadata i64 %478, i64 0, metadata !909, metadata !694) #10, !dbg !1478
  call void @llvm.dbg.value(metadata i64 %477, i64 0, metadata !912, metadata !694) #10, !dbg !1485
  call void @llvm.dbg.value(metadata i64 %476, i64 0, metadata !913, metadata !694) #10, !dbg !1482
  call void @llvm.dbg.value(metadata i64 %477, i64 0, metadata !916, metadata !694) #10, !dbg !1517
  %479 = load i1, i1* @line_end, align 1
  %480 = select i1 %479, i32 10, i32 0
  br label %481, !dbg !1518

; <label>:481:                                    ; preds = %493, %475
  %482 = phi i64 [ %477, %475 ], [ %494, %493 ]
  %483 = phi i64 [ %478, %475 ], [ %495, %493 ]
  call void @llvm.dbg.value(metadata i64 %483, i64 0, metadata !909, metadata !694) #10, !dbg !1478
  call void @llvm.dbg.value(metadata i64 %482, i64 0, metadata !916, metadata !694) #10, !dbg !1517
  %484 = icmp eq i64 %482, 0, !dbg !1519
  br i1 %484, label %529, label %485, !dbg !1519

; <label>:485:                                    ; preds = %481
  br i1 %171, label %488, label %486, !dbg !1521

; <label>:486:                                    ; preds = %485
  %487 = add i64 %482, -1, !dbg !1522
  call void @llvm.dbg.value(metadata i64 %487, i64 0, metadata !916, metadata !694) #10, !dbg !1517
  br label %493, !dbg !1523

; <label>:488:                                    ; preds = %485
  %489 = call i8* @memrchr(i8* nonnull %170, i32 %480, i64 %482) #13, !dbg !1524
  call void @llvm.dbg.value(metadata i8* %489, i64 0, metadata !918, metadata !694) #10, !dbg !1525
  %490 = icmp eq i8* %489, null, !dbg !1526
  %491 = ptrtoint i8* %489 to i64, !dbg !1528
  %492 = sub i64 %491, %172, !dbg !1528
  call void @llvm.dbg.value(metadata i64 %492, i64 0, metadata !916, metadata !694) #10, !dbg !1517
  br i1 %490, label %529, label %493

; <label>:493:                                    ; preds = %488, %486
  %494 = phi i64 [ %487, %486 ], [ %492, %488 ]
  call void @llvm.dbg.value(metadata i64 %494, i64 0, metadata !916, metadata !694) #10, !dbg !1517
  %495 = add i64 %483, -1, !dbg !1529
  call void @llvm.dbg.value(metadata i64 %495, i64 0, metadata !909, metadata !694) #10, !dbg !1478
  %496 = icmp eq i64 %483, 0, !dbg !1530
  br i1 %496, label %497, label %481, !dbg !1531, !llvm.loop !1532

; <label>:497:                                    ; preds = %493
  %498 = icmp sgt i64 %476, %241, !dbg !1535
  br i1 %498, label %499, label %523, !dbg !1536

; <label>:499:                                    ; preds = %497
  %500 = call fastcc i64 @elseek(i32 %212, i64 %241, i32 0, i8* %213) #10, !dbg !1537
  %501 = icmp slt i64 %500, 0, !dbg !1539
  br i1 %501, label %544, label %502, !dbg !1540

; <label>:502:                                    ; preds = %499
  %503 = sub nsw i64 %476, %241, !dbg !1541
  call void @llvm.dbg.value(metadata i32 %212, i64 0, metadata !949, metadata !694) #10, !dbg !1542
  call void @llvm.dbg.value(metadata i64 %503, i64 0, metadata !950, metadata !694) #10, !dbg !1543
  call void @llvm.lifetime.start(i64 8192, i8* nonnull %163) #10, !dbg !1544
  call void @llvm.dbg.value(metadata i64 8192, i64 0, metadata !951, metadata !694) #10, !dbg !1545
  call void @llvm.dbg.value(metadata i64 %503, i64 0, metadata !950, metadata !694) #10, !dbg !1543
  %504 = icmp eq i64 %503, 0, !dbg !1546
  br i1 %504, label %522, label %505, !dbg !1548

; <label>:505:                                    ; preds = %502
  br label %506, !dbg !1549

; <label>:506:                                    ; preds = %505, %517
  %507 = phi i64 [ %513, %517 ], [ %503, %505 ]
  %508 = icmp ult i64 %507, 8192, !dbg !1549
  %509 = select i1 %508, i64 %507, i64 8192, !dbg !1549
  call void @llvm.dbg.value(metadata i64 %509, i64 0, metadata !953, metadata !694) #10, !dbg !1550
  %510 = call i64 @safe_read(i32 %212, i8* nonnull %163, i64 %509) #10, !dbg !1551
  call void @llvm.dbg.value(metadata i64 %510, i64 0, metadata !955, metadata !694) #10, !dbg !1552
  %511 = icmp eq i64 %510, -1, !dbg !1553
  br i1 %511, label %519, label %512, !dbg !1555

; <label>:512:                                    ; preds = %506
  %513 = sub i64 %507, %510, !dbg !1556
  call void @llvm.dbg.value(metadata i64 %513, i64 0, metadata !950, metadata !694) #10, !dbg !1543
  %514 = icmp eq i64 %510, 0, !dbg !1557
  %515 = icmp ne i64 %513, 0, !dbg !1559
  %516 = and i1 %514, %515, !dbg !1561
  br i1 %516, label %519, label %517, !dbg !1561

; <label>:517:                                    ; preds = %512
  call fastcc void @xwrite_stdout(i8* nonnull %163, i64 %510) #10, !dbg !1562
  call void @llvm.dbg.value(metadata i64 %513, i64 0, metadata !950, metadata !694) #10, !dbg !1543
  call void @llvm.dbg.value(metadata i64 %513, i64 0, metadata !950, metadata !694) #10, !dbg !1543
  %518 = icmp eq i64 %513, 0, !dbg !1546
  br i1 %518, label %521, label %506, !dbg !1548

; <label>:519:                                    ; preds = %512, %506
  %520 = phi i32 [ 2, %512 ], [ 1, %506 ]
  call void @llvm.lifetime.end(i64 8192, i8* nonnull %163) #10, !dbg !1563
  call void @llvm.dbg.value(metadata i32 %520, i64 0, metadata !922, metadata !694) #10, !dbg !1564
  call fastcc void @diagnose_copy_fd_failure(i32 %520, i8* %213) #10, !dbg !1565
  br label %544, !dbg !1568

; <label>:521:                                    ; preds = %517
  br label %522, !dbg !1563

; <label>:522:                                    ; preds = %521, %502
  call void @llvm.lifetime.end(i64 8192, i8* nonnull %163) #10, !dbg !1563
  br label %523

; <label>:523:                                    ; preds = %522, %497
  %524 = add i64 %494, 1, !dbg !1569
  call fastcc void @xwrite_stdout(i8* nonnull %170, i64 %524) #10, !dbg !1570
  %525 = add i64 %476, 1, !dbg !1571
  %526 = add i64 %525, %494, !dbg !1572
  %527 = call fastcc i64 @elseek(i32 %212, i64 %526, i32 0, i8* %213) #10, !dbg !1573
  %528 = icmp sgt i64 %527, -1, !dbg !1574
  br label %544, !dbg !1575

; <label>:529:                                    ; preds = %488, %481
  %530 = icmp eq i64 %476, %241, !dbg !1576
  br i1 %530, label %542, label %531, !dbg !1578

; <label>:531:                                    ; preds = %529
  %532 = add nsw i64 %476, -8192, !dbg !1579
  call void @llvm.dbg.value(metadata i64 %532, i64 0, metadata !913, metadata !694) #10, !dbg !1482
  %533 = call fastcc i64 @elseek(i32 %212, i64 %532, i32 0, i8* %213) #10, !dbg !1580
  %534 = icmp slt i64 %533, 0, !dbg !1582
  br i1 %534, label %542, label %535, !dbg !1583

; <label>:535:                                    ; preds = %531
  %536 = call i64 @safe_read(i32 %212, i8* nonnull %170, i64 8192) #10, !dbg !1584
  call void @llvm.dbg.value(metadata i64 %536, i64 0, metadata !912, metadata !694) #10, !dbg !1485
  switch i64 %536, label %475 [
    i64 -1, label %537
    i64 0, label %542
  ], !dbg !1585

; <label>:537:                                    ; preds = %535
  %538 = tail call i32* @__errno_location() #1, !dbg !1586
  %539 = load i32, i32* %538, align 4, !dbg !1586, !tbaa !1089
  %540 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i32 5) #10, !dbg !1589
  %541 = call i8* @quotearg_style(i32 4, i8* %213) #10, !dbg !1591
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %539, i8* %540, i8* %541) #10, !dbg !1593
  br label %544, !dbg !1595

; <label>:542:                                    ; preds = %529, %531, %535
  %543 = phi i1 [ true, %529 ], [ false, %531 ], [ true, %535 ]
  br label %544, !dbg !1596

; <label>:544:                                    ; preds = %542, %537, %523, %519, %499, %455, %444
  %545 = phi i1 [ false, %455 ], [ false, %444 ], [ false, %537 ], [ %528, %523 ], [ false, %519 ], [ false, %499 ], [ %543, %542 ]
  call void @llvm.lifetime.end(i64 8192, i8* nonnull %170) #10, !dbg !1596
  br label %755, !dbg !1597

; <label>:546:                                    ; preds = %239
  call void @llvm.dbg.value(metadata i8* %213, i64 0, metadata !856, metadata !694) #10, !dbg !1598
  call void @llvm.dbg.value(metadata i32 %212, i64 0, metadata !857, metadata !694) #10, !dbg !1599
  call void @llvm.dbg.value(metadata i64 %93, i64 0, metadata !858, metadata !694) #10, !dbg !1600
  call void @llvm.dbg.value(metadata %struct.stat* %7, i64 0, metadata !859, metadata !694) #10, !dbg !1601
  call void @llvm.dbg.value(metadata i64 %241, i64 0, metadata !860, metadata !694) #10, !dbg !1602
  call void @llvm.dbg.value(metadata i64 %242, i64 0, metadata !861, metadata !694) #10, !dbg !1603
  br i1 %244, label %554, label %547, !dbg !1604

; <label>:547:                                    ; preds = %546
  %548 = load i64, i64* %169, align 8, !dbg !1605, !tbaa !1261
  %549 = icmp sgt i64 %548, 0, !dbg !1605
  %550 = icmp ult i64 %548, 2305843009213693953, !dbg !1607
  %551 = and i1 %549, %550, !dbg !1605
  %552 = select i1 %551, i64 %548, i64 512, !dbg !1605
  %553 = icmp sgt i64 %242, %552, !dbg !1609
  br i1 %553, label %729, label %554, !dbg !1611

; <label>:554:                                    ; preds = %547, %546
  call void @llvm.dbg.value(metadata i8* %213, i64 0, metadata !770, metadata !694) #10, !dbg !1613
  call void @llvm.dbg.value(metadata i32 %212, i64 0, metadata !771, metadata !694) #10, !dbg !1614
  call void @llvm.dbg.value(metadata i64 %93, i64 0, metadata !772, metadata !694) #10, !dbg !1615
  call void @llvm.dbg.value(metadata i64 %241, i64 0, metadata !773, metadata !694) #10, !dbg !1616
  call void @llvm.dbg.value(metadata i64 %93, i64 0, metadata !774, metadata !694) #10, !dbg !1617
  call void @llvm.dbg.value(metadata i64 %241, i64 0, metadata !775, metadata !694) #10, !dbg !1618
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !776, metadata !694) #10, !dbg !1619
  br i1 %174, label %556, label %555, !dbg !1620

; <label>:555:                                    ; preds = %554
  br label %615, !dbg !1621

; <label>:556:                                    ; preds = %554
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !780, metadata !694) #10, !dbg !1626
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !781, metadata !694) #10, !dbg !1627
  call void @llvm.dbg.value(metadata i64 %173, i64 0, metadata !782, metadata !694) #10, !dbg !1628
  call void @llvm.lifetime.start(i64 16, i8* nonnull %175) #10, !dbg !1629
  call void @llvm.dbg.value(metadata i64 2, i64 0, metadata !1630, metadata !694) #10, !dbg !1636
  call void @llvm.dbg.value(metadata i64 %173, i64 0, metadata !1635, metadata !694) #10, !dbg !1638
  br i1 %176, label %557, label %558, !dbg !1639

; <label>:557:                                    ; preds = %556
  call void @xalloc_die() #14, !dbg !1640
  unreachable, !dbg !1640

; <label>:558:                                    ; preds = %556
  %559 = call noalias i8* @xmalloc(i64 %177) #10, !dbg !1642
  store i8* %559, i8** %178, align 16, !dbg !1643, !tbaa !702
  %560 = getelementptr inbounds i8, i8* %559, i64 %173, !dbg !1644
  store i8* %560, i8** %179, align 8, !dbg !1645, !tbaa !702
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !783, metadata !694) #10, !dbg !1646
  call void @llvm.dbg.value(metadata i64 %241, i64 0, metadata !775, metadata !694) #10, !dbg !1618
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !776, metadata !694) #10, !dbg !1619
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !780, metadata !694) #10, !dbg !1626
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !781, metadata !694) #10, !dbg !1627
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !783, metadata !694) #10, !dbg !1646
  br label %561, !dbg !1647

; <label>:561:                                    ; preds = %606, %558
  %562 = phi i8* [ %559, %558 ], [ %610, %606 ], !dbg !1649
  %563 = phi i64 [ %241, %558 ], [ %602, %606 ]
  %564 = phi i8 [ 1, %558 ], [ 0, %606 ]
  %565 = phi i8 [ 0, %558 ], [ %582, %606 ]
  %566 = phi i8 [ 0, %558 ], [ %607, %606 ]
  %567 = icmp ne i8 %566, 0, !dbg !1652
  %568 = call i64 @full_read(i32 %212, i8* %562, i64 %173) #10, !dbg !1653
  call void @llvm.dbg.value(metadata i64 %568, i64 0, metadata !784, metadata !694) #10, !dbg !1654
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !788, metadata !694) #10, !dbg !1655
  %569 = icmp ult i64 %568, %173, !dbg !1656
  br i1 %569, label %570, label %580, !dbg !1658

; <label>:570:                                    ; preds = %561
  %571 = tail call i32* @__errno_location() #1, !dbg !1659
  %572 = load i32, i32* %571, align 4, !dbg !1659, !tbaa !1089
  %573 = icmp eq i32 %572, 0, !dbg !1662
  br i1 %573, label %574, label %598, !dbg !1663

; <label>:574:                                    ; preds = %570
  %575 = icmp ule i64 %568, %93, !dbg !1664
  %576 = icmp eq i8 %564, 0, !dbg !1666
  %577 = and i1 %576, %575, !dbg !1669
  %578 = sub i64 %93, %568, !dbg !1670
  call void @llvm.dbg.value(metadata i64 %578, i64 0, metadata !788, metadata !694) #10, !dbg !1655
  %579 = select i1 %577, i64 %578, i64 0, !dbg !1669
  br label %580, !dbg !1669

; <label>:580:                                    ; preds = %574, %561
  %581 = phi i64 [ 0, %561 ], [ %579, %574 ]
  %582 = phi i8 [ %565, %561 ], [ 1, %574 ]
  call void @llvm.dbg.value(metadata i8 %582, i64 0, metadata !781, metadata !694) #10, !dbg !1627
  call void @llvm.dbg.value(metadata i64 %581, i64 0, metadata !788, metadata !694) #10, !dbg !1655
  %583 = icmp eq i8 %564, 0, !dbg !1672
  br i1 %583, label %584, label %592, !dbg !1674

; <label>:584:                                    ; preds = %580
  %585 = sub i64 %93, %581, !dbg !1675
  %586 = add i64 %585, %563, !dbg !1677
  call void @llvm.dbg.value(metadata i64 %586, i64 0, metadata !775, metadata !694) #10, !dbg !1618
  %587 = xor i1 %567, true, !dbg !1678
  %588 = zext i1 %587 to i64, !dbg !1679
  %589 = getelementptr inbounds [2 x i8*], [2 x i8*]* %4, i64 0, i64 %588, !dbg !1679
  %590 = load i8*, i8** %589, align 8, !dbg !1679, !tbaa !702
  %591 = getelementptr inbounds i8, i8* %590, i64 8192, !dbg !1680
  call fastcc void @xwrite_stdout(i8* %591, i64 %585) #10, !dbg !1681
  br label %592, !dbg !1682

; <label>:592:                                    ; preds = %584, %580
  %593 = phi i64 [ %563, %580 ], [ %586, %584 ]
  call void @llvm.dbg.value(metadata i64 %593, i64 0, metadata !775, metadata !694) #10, !dbg !1618
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !780, metadata !694) #10, !dbg !1626
  %594 = icmp ugt i64 %568, %93, !dbg !1683
  br i1 %594, label %595, label %601, !dbg !1684

; <label>:595:                                    ; preds = %592
  %596 = sub i64 %568, %93, !dbg !1685
  %597 = add i64 %593, %596, !dbg !1686
  call void @llvm.dbg.value(metadata i64 %597, i64 0, metadata !775, metadata !694) #10, !dbg !1618
  call fastcc void @xwrite_stdout(i8* %562, i64 %596) #10, !dbg !1687
  br label %601, !dbg !1688

; <label>:598:                                    ; preds = %570
  %599 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i32 5) #10, !dbg !1689
  %600 = call i8* @quotearg_style(i32 4, i8* %213) #10, !dbg !1692
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %572, i8* %599, i8* %600) #10, !dbg !1694
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !776, metadata !694) #10, !dbg !1619
  call void @llvm.dbg.value(metadata i64 undef, i64 0, metadata !775, metadata !694) #10, !dbg !1618
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !776, metadata !694) #10, !dbg !1619
  call void @llvm.dbg.value(metadata i8 undef, i64 0, metadata !780, metadata !694) #10, !dbg !1626
  call void @llvm.dbg.value(metadata i8 undef, i64 0, metadata !781, metadata !694) #10, !dbg !1627
  br label %612

; <label>:601:                                    ; preds = %595, %592
  %602 = phi i64 [ %593, %592 ], [ %597, %595 ]
  call void @llvm.dbg.value(metadata i64 undef, i64 0, metadata !775, metadata !694) #10, !dbg !1618
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !776, metadata !694) #10, !dbg !1619
  call void @llvm.dbg.value(metadata i8 undef, i64 0, metadata !780, metadata !694) #10, !dbg !1626
  call void @llvm.dbg.value(metadata i8 undef, i64 0, metadata !781, metadata !694) #10, !dbg !1627
  %603 = xor i1 %567, true, !dbg !1696
  call void @llvm.dbg.value(metadata i64 %602, i64 0, metadata !775, metadata !694) #10, !dbg !1618
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !776, metadata !694) #10, !dbg !1619
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !780, metadata !694) #10, !dbg !1626
  call void @llvm.dbg.value(metadata i8 %582, i64 0, metadata !781, metadata !694) #10, !dbg !1627
  %604 = and i8 %582, 1, !dbg !1698
  %605 = icmp eq i8 %604, 0, !dbg !1700
  br i1 %605, label %606, label %611, !dbg !1647, !llvm.loop !1701

; <label>:606:                                    ; preds = %601
  %607 = zext i1 %603 to i8, !dbg !1704
  %608 = zext i1 %603 to i64
  %609 = getelementptr inbounds [2 x i8*], [2 x i8*]* %4, i64 0, i64 %608
  %610 = load i8*, i8** %609, align 8, !tbaa !702
  br label %561, !dbg !1647

; <label>:611:                                    ; preds = %601
  br label %612, !dbg !1618

; <label>:612:                                    ; preds = %611, %598
  %613 = phi i64 [ %563, %598 ], [ %602, %611 ]
  %614 = phi i8 [ 0, %598 ], [ 1, %611 ]
  call void @llvm.dbg.value(metadata i64 undef, i64 0, metadata !775, metadata !694) #10, !dbg !1618
  call void @llvm.dbg.value(metadata i8 %614, i64 0, metadata !776, metadata !694) #10, !dbg !1619
  call void @free(i8* %559) #10, !dbg !1705
  call void @llvm.lifetime.end(i64 16, i8* nonnull %175) #10, !dbg !1706
  br label %717, !dbg !1707

; <label>:615:                                    ; preds = %555, %677
  %616 = phi i64 [ %678, %677 ], [ %241, %555 ]
  %617 = phi i64 [ %645, %677 ], [ 0, %555 ]
  %618 = phi i64 [ %657, %677 ], [ 0, %555 ]
  %619 = phi i8** [ %644, %677 ], [ null, %555 ]
  %620 = phi i8* [ %643, %677 ], [ null, %555 ]
  %621 = phi i8* [ %642, %677 ], [ null, %555 ]
  %622 = phi i64 [ %680, %677 ], [ 1, %555 ]
  %623 = phi i64 [ %622, %677 ], [ 0, %555 ]
  %624 = phi i8 [ %670, %677 ], [ 0, %555 ]
  %625 = phi i8 [ %668, %677 ], [ 0, %555 ]
  %626 = icmp eq i64 %617, %623, !dbg !1621
  br i1 %626, label %627, label %641, !dbg !1708

; <label>:627:                                    ; preds = %615
  %628 = icmp eq i64 %617, 0, !dbg !1709
  br i1 %628, label %633, label %629, !dbg !1712

; <label>:629:                                    ; preds = %627
  %630 = icmp ugt i64 %617, %187, !dbg !1713
  %631 = shl i64 %617, 1, !dbg !1715
  call void @llvm.dbg.value(metadata i64 %631, i64 0, metadata !800, metadata !694) #10, !dbg !1716
  %632 = select i1 %630, i64 %184, i64 %631, !dbg !1717
  br label %633, !dbg !1717

; <label>:633:                                    ; preds = %629, %627
  %634 = phi i64 [ %632, %629 ], [ %186, %627 ]
  call void @llvm.dbg.value(metadata i64 %634, i64 0, metadata !800, metadata !694) #10, !dbg !1716
  call void @llvm.dbg.value(metadata i8* %620, i64 0, metadata !1718, metadata !694) #10, !dbg !1725
  call void @llvm.dbg.value(metadata i64 %634, i64 0, metadata !1723, metadata !694) #10, !dbg !1727
  call void @llvm.dbg.value(metadata i64 8, i64 0, metadata !1724, metadata !694) #10, !dbg !1728
  %635 = icmp ugt i64 %634, 1152921504606846975, !dbg !1729
  br i1 %635, label %636, label %637, !dbg !1731

; <label>:636:                                    ; preds = %633
  call void @xalloc_die() #14, !dbg !1732
  unreachable, !dbg !1732

; <label>:637:                                    ; preds = %633
  %638 = shl i64 %634, 3, !dbg !1733
  %639 = call i8* @xrealloc(i8* %620, i64 %638) #10, !dbg !1734
  %640 = bitcast i8* %639 to i8**, !dbg !1735
  call void @llvm.dbg.value(metadata i8** %640, i64 0, metadata !795, metadata !694) #10, !dbg !1736
  br label %641, !dbg !1737

; <label>:641:                                    ; preds = %637, %615
  %642 = phi i8* [ %639, %637 ], [ %621, %615 ]
  %643 = phi i8* [ %639, %637 ], [ %620, %615 ]
  %644 = phi i8** [ %640, %637 ], [ %619, %615 ]
  %645 = phi i64 [ %634, %637 ], [ %617, %615 ]
  call void @llvm.dbg.value(metadata i64 %645, i64 0, metadata !800, metadata !694) #10, !dbg !1716
  call void @llvm.dbg.value(metadata i8** %644, i64 0, metadata !795, metadata !694) #10, !dbg !1736
  %646 = and i8 %624, 1, !dbg !1738
  %647 = icmp eq i8 %646, 0, !dbg !1738
  br i1 %647, label %651, label %648, !dbg !1740

; <label>:648:                                    ; preds = %641
  %649 = getelementptr inbounds i8*, i8** %644, i64 %623
  %650 = load i8*, i8** %649, align 8, !tbaa !702
  br label %655, !dbg !1740

; <label>:651:                                    ; preds = %641
  %652 = call noalias i8* @xmalloc(i64 8192) #10, !dbg !1741
  %653 = getelementptr inbounds i8*, i8** %644, i64 %623, !dbg !1743
  store i8* %652, i8** %653, align 8, !dbg !1744, !tbaa !702
  %654 = add nsw i64 %623, 1, !dbg !1745
  call void @llvm.dbg.value(metadata i64 %654, i64 0, metadata !799, metadata !694) #10, !dbg !1746
  br label %655, !dbg !1747

; <label>:655:                                    ; preds = %651, %648
  %656 = phi i8* [ %650, %648 ], [ %652, %651 ], !dbg !1748
  %657 = phi i64 [ %618, %648 ], [ %654, %651 ]
  call void @llvm.dbg.value(metadata i64 %657, i64 0, metadata !799, metadata !694) #10, !dbg !1746
  %658 = call i64 @full_read(i32 %212, i8* %656, i64 8192) #10, !dbg !1749
  call void @llvm.dbg.value(metadata i64 %658, i64 0, metadata !791, metadata !694) #10, !dbg !1750
  %659 = icmp ult i64 %658, 8192, !dbg !1751
  br i1 %659, label %660, label %667, !dbg !1753

; <label>:660:                                    ; preds = %655
  %661 = tail call i32* @__errno_location() #1, !dbg !1754
  %662 = load i32, i32* %661, align 4, !dbg !1754, !tbaa !1089
  %663 = icmp eq i32 %662, 0, !dbg !1757
  br i1 %663, label %667, label %664, !dbg !1758

; <label>:664:                                    ; preds = %660
  %665 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i32 5) #10, !dbg !1759
  %666 = call i8* @quotearg_style(i32 4, i8* %213) #10, !dbg !1762
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %662, i8* %665, i8* %666) #10, !dbg !1764
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !776, metadata !694) #10, !dbg !1619
  br label %704, !dbg !1766

; <label>:667:                                    ; preds = %660, %655
  %668 = phi i8 [ %625, %655 ], [ 1, %660 ]
  call void @llvm.dbg.value(metadata i8 %668, i64 0, metadata !789, metadata !694) #10, !dbg !1767
  %669 = icmp eq i64 %623, %183, !dbg !1768
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !792, metadata !694) #10, !dbg !1770
  %670 = select i1 %669, i8 1, i8 %624, !dbg !1771
  call void @llvm.dbg.value(metadata i8 %670, i64 0, metadata !792, metadata !694) #10, !dbg !1770
  %671 = and i8 %670, 1, !dbg !1772
  %672 = icmp eq i8 %671, 0, !dbg !1772
  br i1 %672, label %677, label %673, !dbg !1774

; <label>:673:                                    ; preds = %667
  %674 = add i64 %658, %616, !dbg !1775
  call void @llvm.dbg.value(metadata i64 %674, i64 0, metadata !775, metadata !694) #10, !dbg !1618
  %675 = getelementptr inbounds i8*, i8** %644, i64 %622, !dbg !1777
  %676 = load i8*, i8** %675, align 8, !dbg !1777, !tbaa !702
  call fastcc void @xwrite_stdout(i8* %676, i64 %658) #10, !dbg !1778
  br label %677, !dbg !1779

; <label>:677:                                    ; preds = %673, %667
  %678 = phi i64 [ %674, %673 ], [ %616, %667 ]
  call void @llvm.dbg.value(metadata i64 %678, i64 0, metadata !775, metadata !694) #10, !dbg !1618
  call void @llvm.dbg.value(metadata i64 %622, i64 0, metadata !793, metadata !694) #10, !dbg !1780
  %679 = add nsw i64 %622, 1, !dbg !1781
  %680 = urem i64 %679, %184, !dbg !1783
  call void @llvm.dbg.value(metadata i64 %680, i64 0, metadata !794, metadata !694) #10, !dbg !1784
  call void @llvm.dbg.value(metadata i64 %678, i64 0, metadata !775, metadata !694) #10, !dbg !1618
  call void @llvm.dbg.value(metadata i64 %645, i64 0, metadata !800, metadata !694) #10, !dbg !1716
  call void @llvm.dbg.value(metadata i64 %657, i64 0, metadata !799, metadata !694) #10, !dbg !1746
  call void @llvm.dbg.value(metadata i8** %644, i64 0, metadata !795, metadata !694) #10, !dbg !1736
  call void @llvm.dbg.value(metadata i64 %680, i64 0, metadata !794, metadata !694) #10, !dbg !1784
  call void @llvm.dbg.value(metadata i64 %622, i64 0, metadata !793, metadata !694) #10, !dbg !1780
  call void @llvm.dbg.value(metadata i8 %670, i64 0, metadata !792, metadata !694) #10, !dbg !1770
  call void @llvm.dbg.value(metadata i64 %658, i64 0, metadata !791, metadata !694) #10, !dbg !1750
  call void @llvm.dbg.value(metadata i8 %668, i64 0, metadata !789, metadata !694) #10, !dbg !1767
  %681 = and i8 %668, 1, !dbg !1785
  %682 = icmp eq i8 %681, 0, !dbg !1787
  br i1 %682, label %615, label %683, !dbg !1788, !llvm.loop !1790

; <label>:683:                                    ; preds = %677
  br i1 %188, label %704, label %684, !dbg !1793

; <label>:684:                                    ; preds = %683
  br i1 %672, label %697, label %685, !dbg !1794

; <label>:685:                                    ; preds = %684
  %686 = sub i64 8192, %658, !dbg !1795
  call void @llvm.dbg.value(metadata i64 %686, i64 0, metadata !801, metadata !694) #10, !dbg !1796
  %687 = add i64 %678, %181, !dbg !1797
  call void @llvm.dbg.value(metadata i64 %687, i64 0, metadata !775, metadata !694) #10, !dbg !1618
  %688 = icmp ult i64 %181, %686, !dbg !1798
  %689 = getelementptr inbounds i8*, i8** %644, i64 %622
  %690 = load i8*, i8** %689, align 8, !tbaa !702
  %691 = getelementptr inbounds i8, i8* %690, i64 %658
  br i1 %688, label %692, label %693, !dbg !1800

; <label>:692:                                    ; preds = %685
  call fastcc void @xwrite_stdout(i8* %691, i64 %181) #10, !dbg !1801
  br label %704, !dbg !1803

; <label>:693:                                    ; preds = %685
  call fastcc void @xwrite_stdout(i8* %691, i64 %686) #10, !dbg !1804
  %694 = getelementptr inbounds i8*, i8** %644, i64 %680, !dbg !1806
  %695 = load i8*, i8** %694, align 8, !dbg !1806, !tbaa !702
  %696 = sub i64 %181, %686, !dbg !1807
  call fastcc void @xwrite_stdout(i8* %695, i64 %696) #10, !dbg !1808
  br label %704

; <label>:697:                                    ; preds = %684
  %698 = icmp eq i64 %622, %183, !dbg !1809
  br i1 %698, label %699, label %704, !dbg !1810

; <label>:699:                                    ; preds = %697
  call void @llvm.dbg.value(metadata i64 %180, i64 0, metadata !806, metadata !694) #10, !dbg !1811
  %700 = sub i64 %658, %180, !dbg !1812
  call void @llvm.dbg.value(metadata i64 %700, i64 0, metadata !809, metadata !694) #10, !dbg !1813
  %701 = add i64 %678, %700, !dbg !1814
  call void @llvm.dbg.value(metadata i64 %701, i64 0, metadata !775, metadata !694) #10, !dbg !1618
  %702 = getelementptr inbounds i8*, i8** %644, i64 %680, !dbg !1815
  %703 = load i8*, i8** %702, align 8, !dbg !1815, !tbaa !702
  call fastcc void @xwrite_stdout(i8* %703, i64 %700) #10, !dbg !1816
  br label %704, !dbg !1817

; <label>:704:                                    ; preds = %699, %697, %693, %692, %683, %664
  %705 = phi i8 [ 0, %664 ], [ 1, %699 ], [ 1, %697 ], [ 1, %683 ], [ 1, %693 ], [ 1, %692 ]
  %706 = phi i64 [ %616, %664 ], [ %701, %699 ], [ %678, %697 ], [ %678, %683 ], [ %687, %693 ], [ %687, %692 ]
  call void @llvm.dbg.value(metadata i64 %706, i64 0, metadata !775, metadata !694) #10, !dbg !1618
  call void @llvm.dbg.value(metadata i8 %705, i64 0, metadata !776, metadata !694) #10, !dbg !1619
  call void @llvm.dbg.value(metadata i64 %657, i64 0, metadata !799, metadata !694) #10, !dbg !1746
  call void @llvm.dbg.value(metadata i8** %644, i64 0, metadata !795, metadata !694) #10, !dbg !1736
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !793, metadata !694) #10, !dbg !1780
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !793, metadata !694) #10, !dbg !1780
  %707 = icmp eq i64 %657, 0, !dbg !1818
  br i1 %707, label %716, label %708, !dbg !1822

; <label>:708:                                    ; preds = %704
  br label %709, !dbg !1824

; <label>:709:                                    ; preds = %708, %709
  %710 = phi i64 [ %713, %709 ], [ 0, %708 ]
  %711 = getelementptr inbounds i8*, i8** %644, i64 %710, !dbg !1824
  %712 = load i8*, i8** %711, align 8, !dbg !1824, !tbaa !702
  call void @free(i8* %712) #10, !dbg !1825
  %713 = add nuw i64 %710, 1, !dbg !1826
  call void @llvm.dbg.value(metadata i64 %713, i64 0, metadata !793, metadata !694) #10, !dbg !1780
  call void @llvm.dbg.value(metadata i64 %713, i64 0, metadata !793, metadata !694) #10, !dbg !1780
  %714 = icmp eq i64 %713, %657, !dbg !1818
  br i1 %714, label %715, label %709, !dbg !1822, !llvm.loop !1828

; <label>:715:                                    ; preds = %709
  br label %716, !dbg !1831

; <label>:716:                                    ; preds = %715, %704
  call void @free(i8* %642) #10, !dbg !1831
  br label %717

; <label>:717:                                    ; preds = %716, %612
  %718 = phi i8 [ %614, %612 ], [ %705, %716 ]
  %719 = phi i64 [ %613, %612 ], [ %706, %716 ]
  call void @llvm.dbg.value(metadata i64 %719, i64 0, metadata !775, metadata !694) #10, !dbg !1618
  call void @llvm.dbg.value(metadata i8 %718, i64 0, metadata !776, metadata !694) #10, !dbg !1619
  %720 = icmp sgt i64 %241, -1, !dbg !1832
  br i1 %720, label %721, label %725, !dbg !1834

; <label>:721:                                    ; preds = %717
  %722 = call fastcc i64 @elseek(i32 %212, i64 %719, i32 0, i8* %213) #10, !dbg !1835
  %723 = icmp slt i64 %722, 0, !dbg !1837
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !776, metadata !694) #10, !dbg !1619
  %724 = select i1 %723, i8 0, i8 %718, !dbg !1838
  br label %725, !dbg !1838

; <label>:725:                                    ; preds = %721, %717
  %726 = phi i8 [ %718, %717 ], [ %724, %721 ]
  call void @llvm.dbg.value(metadata i8 %726, i64 0, metadata !776, metadata !694) #10, !dbg !1619
  %727 = and i8 %726, 1, !dbg !1840
  %728 = icmp ne i8 %727, 0, !dbg !1840
  br label %755, !dbg !1841

; <label>:729:                                    ; preds = %547
  %730 = sub nsw i64 %242, %241, !dbg !1842
  call void @llvm.dbg.value(metadata i64 %730, i64 0, metadata !862, metadata !694) #10, !dbg !1843
  %731 = icmp sgt i64 %730, 0, !dbg !1844
  %732 = select i1 %731, i64 %730, i64 0, !dbg !1844
  call void @llvm.dbg.value(metadata i64 %732, i64 0, metadata !864, metadata !694) #10, !dbg !1845
  %733 = icmp ugt i64 %732, %93, !dbg !1846
  br i1 %733, label %734, label %755, !dbg !1848

; <label>:734:                                    ; preds = %729
  %735 = sub i64 %732, %93, !dbg !1849
  call void @llvm.dbg.value(metadata i32 %212, i64 0, metadata !949, metadata !694) #10, !dbg !1850
  call void @llvm.dbg.value(metadata i64 %735, i64 0, metadata !950, metadata !694) #10, !dbg !1851
  call void @llvm.lifetime.start(i64 8192, i8* nonnull %163) #10, !dbg !1852
  call void @llvm.dbg.value(metadata i64 8192, i64 0, metadata !951, metadata !694) #10, !dbg !1853
  call void @llvm.dbg.value(metadata i64 %735, i64 0, metadata !950, metadata !694) #10, !dbg !1851
  %736 = icmp eq i64 %735, 0, !dbg !1854
  br i1 %736, label %752, label %737, !dbg !1855

; <label>:737:                                    ; preds = %734
  br label %738, !dbg !1856

; <label>:738:                                    ; preds = %737, %749
  %739 = phi i64 [ %745, %749 ], [ %735, %737 ]
  %740 = icmp ult i64 %739, 8192, !dbg !1856
  %741 = select i1 %740, i64 %739, i64 8192, !dbg !1856
  call void @llvm.dbg.value(metadata i64 %741, i64 0, metadata !953, metadata !694) #10, !dbg !1857
  %742 = call i64 @safe_read(i32 %212, i8* nonnull %163, i64 %741) #10, !dbg !1858
  call void @llvm.dbg.value(metadata i64 %742, i64 0, metadata !955, metadata !694) #10, !dbg !1859
  %743 = icmp eq i64 %742, -1, !dbg !1860
  br i1 %743, label %753, label %744, !dbg !1861

; <label>:744:                                    ; preds = %738
  %745 = sub i64 %739, %742, !dbg !1862
  call void @llvm.dbg.value(metadata i64 %745, i64 0, metadata !950, metadata !694) #10, !dbg !1851
  %746 = icmp eq i64 %742, 0, !dbg !1863
  %747 = icmp ne i64 %745, 0, !dbg !1864
  %748 = and i1 %746, %747, !dbg !1865
  br i1 %748, label %753, label %749, !dbg !1865

; <label>:749:                                    ; preds = %744
  call fastcc void @xwrite_stdout(i8* nonnull %163, i64 %742) #10, !dbg !1866
  call void @llvm.dbg.value(metadata i64 %745, i64 0, metadata !950, metadata !694) #10, !dbg !1851
  call void @llvm.dbg.value(metadata i64 %745, i64 0, metadata !950, metadata !694) #10, !dbg !1851
  %750 = icmp eq i64 %745, 0, !dbg !1854
  br i1 %750, label %751, label %738, !dbg !1855

; <label>:751:                                    ; preds = %749
  br label %752, !dbg !1867

; <label>:752:                                    ; preds = %751, %734
  call void @llvm.lifetime.end(i64 8192, i8* nonnull %163) #10, !dbg !1867
  br label %755, !dbg !1868

; <label>:753:                                    ; preds = %744, %738
  %754 = phi i32 [ 2, %744 ], [ 1, %738 ]
  call void @llvm.lifetime.end(i64 8192, i8* nonnull %163) #10, !dbg !1867
  call void @llvm.dbg.value(metadata i32 %754, i64 0, metadata !865, metadata !694) #10, !dbg !1869
  call fastcc void @diagnose_copy_fd_failure(i32 %754, i8* %213) #10, !dbg !1870
  br label %755, !dbg !1871

; <label>:755:                                    ; preds = %753, %752, %729, %725, %544, %442, %438, %234, %223
  %756 = phi i1 [ false, %223 ], [ false, %234 ], [ %441, %438 ], [ true, %442 ], [ %545, %544 ], [ %728, %725 ], [ true, %729 ], [ false, %753 ], [ true, %752 ]
  call void @llvm.lifetime.end(i64 144, i8* nonnull %167) #10, !dbg !1872
  br label %825

; <label>:757:                                    ; preds = %219
  call void @llvm.lifetime.start(i64 8192, i8* nonnull %163) #10, !dbg !1873
  br i1 %143, label %758, label %806, !dbg !1874

; <label>:758:                                    ; preds = %757
  call void @llvm.dbg.value(metadata i8* %213, i64 0, metadata !1175, metadata !694) #10, !dbg !1875
  call void @llvm.dbg.value(metadata i32 %212, i64 0, metadata !1176, metadata !694) #10, !dbg !1876
  call void @llvm.dbg.value(metadata i64 %93, i64 0, metadata !1177, metadata !694) #10, !dbg !1877
  call void @llvm.dbg.value(metadata i64 %93, i64 0, metadata !1177, metadata !694) #10, !dbg !1877
  br i1 %164, label %804, label %759, !dbg !1878

; <label>:759:                                    ; preds = %758
  br label %760, !dbg !1880

; <label>:760:                                    ; preds = %759, %801
  %761 = phi i64 [ %784, %801 ], [ %93, %759 ]
  %762 = call i64 @safe_read(i32 %212, i8* nonnull %163, i64 8192) #10, !dbg !1880
  call void @llvm.dbg.value(metadata i64 %762, i64 0, metadata !1178, metadata !694) #10, !dbg !1881
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1180, metadata !694) #10, !dbg !1882
  switch i64 %762, label %763 [
    i64 -1, label %766
    i64 0, label %803
  ], !dbg !1883

; <label>:763:                                    ; preds = %760
  %764 = load i1, i1* @line_end, align 1
  %765 = select i1 %764, i32 10, i32 0
  br label %783, !dbg !1882

; <label>:766:                                    ; preds = %760
  %767 = tail call i32* @__errno_location() #1, !dbg !1884
  %768 = load i32, i32* %767, align 4, !dbg !1884, !tbaa !1089
  %769 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i32 5) #10, !dbg !1887
  %770 = call i8* @quotearg_style(i32 4, i8* %213) #10, !dbg !1889
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %768, i8* %769, i8* %770) #10, !dbg !1891
  br label %804

; <label>:771:                                    ; preds = %783, %774
  %772 = phi i64 [ %775, %774 ], [ %785, %783 ]
  call void @llvm.dbg.value(metadata i64 %772, i64 0, metadata !1180, metadata !694) #10, !dbg !1882
  call void @llvm.dbg.value(metadata i64 %784, i64 0, metadata !1177, metadata !694) #10, !dbg !1877
  %773 = icmp ult i64 %772, %762, !dbg !1893
  br i1 %773, label %774, label %801, !dbg !1895

; <label>:774:                                    ; preds = %771
  %775 = add i64 %772, 1, !dbg !1896
  call void @llvm.dbg.value(metadata i64 %775, i64 0, metadata !1180, metadata !694) #10, !dbg !1882
  %776 = getelementptr inbounds [8192 x i8], [8192 x i8]* %6, i64 0, i64 %772, !dbg !1897
  %777 = load i8, i8* %776, align 1, !dbg !1897, !tbaa !975
  %778 = sext i8 %777 to i32, !dbg !1897
  %779 = icmp eq i32 %778, %765, !dbg !1898
  br i1 %779, label %780, label %771, !dbg !1899, !llvm.loop !1900

; <label>:780:                                    ; preds = %774
  %781 = add i64 %784, -1, !dbg !1903
  call void @llvm.dbg.value(metadata i64 %781, i64 0, metadata !1177, metadata !694) #10, !dbg !1877
  %782 = icmp eq i64 %781, 0, !dbg !1905
  br i1 %782, label %786, label %783, !dbg !1906, !llvm.loop !1900

; <label>:783:                                    ; preds = %780, %763
  %784 = phi i64 [ %761, %763 ], [ %781, %780 ]
  %785 = phi i64 [ 0, %763 ], [ %775, %780 ]
  br label %771, !dbg !1882

; <label>:786:                                    ; preds = %780
  %787 = sub i64 %775, %762, !dbg !1907
  %788 = call i64 @lseek(i32 %212, i64 %787, i32 1) #10, !dbg !1908
  %789 = icmp slt i64 %788, 0, !dbg !1909
  br i1 %789, label %790, label %800, !dbg !1910

; <label>:790:                                    ; preds = %786
  call void @llvm.lifetime.start(i64 144, i8* nonnull %165) #10, !dbg !1911
  call void @llvm.dbg.value(metadata %struct.stat* %3, i64 0, metadata !1184, metadata !1205) #10, !dbg !1912
  call void @llvm.dbg.value(metadata i32 %212, i64 0, metadata !1207, metadata !694) #10, !dbg !1913
  call void @llvm.dbg.value(metadata %struct.stat* %3, i64 0, metadata !1214, metadata !694) #10, !dbg !1913
  %791 = call i32 @__fxstat(i32 1, i32 %212, %struct.stat* nonnull %3) #10, !dbg !1916
  %792 = icmp eq i32 %791, 0, !dbg !1917
  br i1 %792, label %793, label %797, !dbg !1918

; <label>:793:                                    ; preds = %790
  %794 = load i32, i32* %166, align 8, !dbg !1919, !tbaa !1240
  %795 = and i32 %794, 61440, !dbg !1919
  %796 = icmp eq i32 %795, 32768, !dbg !1919
  br i1 %796, label %797, label %799, !dbg !1921

; <label>:797:                                    ; preds = %793, %790
  %798 = call fastcc i64 @elseek(i32 %212, i64 %787, i32 1, i8* %213) #10, !dbg !1923
  br label %799, !dbg !1923

; <label>:799:                                    ; preds = %797, %793
  call void @llvm.lifetime.end(i64 144, i8* nonnull %165) #10, !dbg !1924
  br label %800, !dbg !1925

; <label>:800:                                    ; preds = %799, %786
  call void @llvm.dbg.value(metadata i64 %772, i64 0, metadata !1180, metadata !694) #10, !dbg !1882
  call void @llvm.dbg.value(metadata i64 %784, i64 0, metadata !1177, metadata !694) #10, !dbg !1877
  call fastcc void @xwrite_stdout(i8* nonnull %163, i64 %775) #10, !dbg !1926
  call void @llvm.dbg.value(metadata i64 %784, i64 0, metadata !1177, metadata !694) #10, !dbg !1877
  br label %804, !dbg !1878

; <label>:801:                                    ; preds = %771
  call void @llvm.dbg.value(metadata i64 %772, i64 0, metadata !1180, metadata !694) #10, !dbg !1882
  call void @llvm.dbg.value(metadata i64 %784, i64 0, metadata !1177, metadata !694) #10, !dbg !1877
  call fastcc void @xwrite_stdout(i8* nonnull %163, i64 %772) #10, !dbg !1926
  call void @llvm.dbg.value(metadata i64 %784, i64 0, metadata !1177, metadata !694) #10, !dbg !1877
  %802 = icmp eq i64 %784, 0, !dbg !1878
  br i1 %802, label %803, label %760, !dbg !1878

; <label>:803:                                    ; preds = %760, %801
  br label %804, !dbg !1927

; <label>:804:                                    ; preds = %803, %800, %766, %758
  %805 = phi i1 [ false, %766 ], [ true, %758 ], [ true, %800 ], [ true, %803 ]
  call void @llvm.lifetime.end(i64 8192, i8* nonnull %163) #10, !dbg !1927
  br label %825, !dbg !1928

; <label>:806:                                    ; preds = %757
  call void @llvm.dbg.value(metadata i8* %213, i64 0, metadata !1125, metadata !694) #10, !dbg !1929
  call void @llvm.dbg.value(metadata i32 %212, i64 0, metadata !1126, metadata !694) #10, !dbg !1930
  call void @llvm.dbg.value(metadata i64 %93, i64 0, metadata !1127, metadata !694) #10, !dbg !1931
  call void @llvm.dbg.value(metadata i64 8192, i64 0, metadata !1128, metadata !694) #10, !dbg !1932
  call void @llvm.dbg.value(metadata i64 8192, i64 0, metadata !1128, metadata !694) #10, !dbg !1932
  call void @llvm.dbg.value(metadata i64 %93, i64 0, metadata !1127, metadata !694) #10, !dbg !1931
  br i1 %164, label %823, label %807, !dbg !1933

; <label>:807:                                    ; preds = %806
  br label %808, !dbg !1935

; <label>:808:                                    ; preds = %807, %819
  %809 = phi i64 [ %812, %819 ], [ 8192, %807 ]
  %810 = phi i64 [ %820, %819 ], [ %93, %807 ]
  %811 = icmp ult i64 %810, %809, !dbg !1935
  call void @llvm.dbg.value(metadata i64 %810, i64 0, metadata !1128, metadata !694) #10, !dbg !1932
  %812 = select i1 %811, i64 %810, i64 %809, !dbg !1937
  call void @llvm.dbg.value(metadata i64 %812, i64 0, metadata !1128, metadata !694) #10, !dbg !1932
  %813 = call i64 @safe_read(i32 %212, i8* nonnull %163, i64 %812) #10, !dbg !1938
  call void @llvm.dbg.value(metadata i64 %813, i64 0, metadata !1129, metadata !694) #10, !dbg !1939
  switch i64 %813, label %819 [
    i64 -1, label %814
    i64 0, label %822
  ], !dbg !1940

; <label>:814:                                    ; preds = %808
  %815 = tail call i32* @__errno_location() #1, !dbg !1941
  %816 = load i32, i32* %815, align 4, !dbg !1941, !tbaa !1089
  %817 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i32 5) #10, !dbg !1944
  %818 = call i8* @quotearg_style(i32 4, i8* %213) #10, !dbg !1946
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %816, i8* %817, i8* %818) #10, !dbg !1948
  br label %823

; <label>:819:                                    ; preds = %808
  call fastcc void @xwrite_stdout(i8* nonnull %163, i64 %813) #10, !dbg !1950
  %820 = sub i64 %810, %813, !dbg !1951
  call void @llvm.dbg.value(metadata i64 %820, i64 0, metadata !1127, metadata !694) #10, !dbg !1931
  call void @llvm.dbg.value(metadata i64 %812, i64 0, metadata !1128, metadata !694) #10, !dbg !1932
  call void @llvm.dbg.value(metadata i64 %820, i64 0, metadata !1127, metadata !694) #10, !dbg !1931
  %821 = icmp eq i64 %820, 0, !dbg !1933
  br i1 %821, label %822, label %808, !dbg !1933

; <label>:822:                                    ; preds = %808, %819
  br label %823, !dbg !1952

; <label>:823:                                    ; preds = %822, %814, %806
  %824 = phi i1 [ false, %814 ], [ true, %806 ], [ true, %822 ]
  call void @llvm.lifetime.end(i64 8192, i8* nonnull %163) #10, !dbg !1952
  br label %825, !dbg !1953

; <label>:825:                                    ; preds = %823, %804, %755
  %826 = phi i1 [ %756, %755 ], [ %805, %804 ], [ %824, %823 ]
  br i1 %211, label %835, label %827, !dbg !1954

; <label>:827:                                    ; preds = %825
  %828 = call i32 @close(i32 %212) #10, !dbg !1956
  %829 = icmp eq i32 %828, 0, !dbg !1958
  br i1 %829, label %835, label %830, !dbg !1959

; <label>:830:                                    ; preds = %827
  %831 = tail call i32* @__errno_location() #1, !dbg !1961
  %832 = load i32, i32* %831, align 4, !dbg !1961, !tbaa !1089
  %833 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.51, i64 0, i64 0), i32 5) #10, !dbg !1963
  %834 = call i8* @quotearg_style(i32 4, i8* %213) #10, !dbg !1965
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %832, i8* %833, i8* %834) #10, !dbg !1967
  br label %835, !dbg !1969

; <label>:835:                                    ; preds = %205, %825, %827, %830
  %836 = phi i1 [ false, %830 ], [ false, %205 ], [ %826, %827 ], [ %826, %825 ]
  %837 = and i1 %193, %836, !dbg !1970
  %838 = add i64 %192, 1, !dbg !1971
  call void @llvm.dbg.value(metadata i64 %838, i64 0, metadata !66, metadata !694), !dbg !1115
  call void @llvm.dbg.value(metadata i64 %838, i64 0, metadata !66, metadata !694), !dbg !1115
  %839 = getelementptr inbounds i8*, i8** %158, i64 %838, !dbg !1116
  %840 = load i8*, i8** %839, align 8, !dbg !1116, !tbaa !702
  %841 = icmp eq i8* %840, null, !dbg !1118
  br i1 %841, label %842, label %190, !dbg !1118, !llvm.loop !1973

; <label>:842:                                    ; preds = %835
  %843 = xor i1 %837, true
  br label %844

; <label>:844:                                    ; preds = %842, %153
  %845 = phi i1 [ false, %153 ], [ %843, %842 ]
  %846 = load i1, i1* @have_read_stdin, align 1
  br i1 %846, label %847, label %853, !dbg !1976

; <label>:847:                                    ; preds = %844
  %848 = call i32 @close(i32 0) #10, !dbg !1978
  %849 = icmp slt i32 %848, 0, !dbg !1980
  br i1 %849, label %850, label %853, !dbg !1981

; <label>:850:                                    ; preds = %847
  %851 = tail call i32* @__errno_location() #1, !dbg !1982
  %852 = load i32, i32* %851, align 4, !dbg !1982, !tbaa !1089
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %852, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0)) #10, !dbg !1983
  unreachable, !dbg !1982

; <label>:853:                                    ; preds = %847, %844
  %854 = zext i1 %845 to i32, !dbg !1984
  ret i32 %854, !dbg !1985
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @atexit(void ()*) local_unnamed_addr #2

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #7

declare i32 @open(i8* nocapture readonly, i32, ...) local_unnamed_addr #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @elseek(i32, i64, i32, i8*) unnamed_addr #6 !dbg !1986 {
  %5 = alloca [21 x i8], align 16
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1990, metadata !694), !dbg !1996
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1991, metadata !694), !dbg !1997
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !1992, metadata !694), !dbg !1998
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !1993, metadata !694), !dbg !1999
  %6 = tail call i64 @lseek(i32 %0, i64 %1, i32 %2) #10, !dbg !2000
  tail call void @llvm.dbg.value(metadata i64 %6, i64 0, metadata !1994, metadata !694), !dbg !2001
  %7 = getelementptr inbounds [21 x i8], [21 x i8]* %5, i64 0, i64 0, !dbg !2002
  call void @llvm.lifetime.start(i64 21, i8* nonnull %7) #10, !dbg !2002
  tail call void @llvm.dbg.declare(metadata [21 x i8]* %5, metadata !1995, metadata !694), !dbg !2003
  %8 = icmp slt i64 %6, 0, !dbg !2004
  br i1 %8, label %9, label %17, !dbg !2006

; <label>:9:                                      ; preds = %4
  %10 = tail call i32* @__errno_location() #1, !dbg !2007
  %11 = load i32, i32* %10, align 4, !dbg !2007, !tbaa !1089
  %12 = icmp eq i32 %2, 0, !dbg !2008
  %13 = select i1 %12, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.55, i64 0, i64 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.56, i64 0, i64 0), !dbg !2008
  %14 = tail call i8* @dcgettext(i8* null, i8* %13, i32 5) #10, !dbg !2008
  %15 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %3) #10, !dbg !2009
  %16 = call i8* @offtostr(i64 %1, i8* nonnull %7) #10, !dbg !2010
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %11, i8* %14, i8* %15, i8* %16) #10, !dbg !2011
  br label %17, !dbg !2013

; <label>:17:                                     ; preds = %9, %4
  call void @llvm.lifetime.end(i64 21, i8* nonnull %7) #10, !dbg !2014
  ret i64 %6, !dbg !2015
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #7

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @xwrite_stdout(i8*, i64) unnamed_addr #6 !dbg !2016 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2020, metadata !694), !dbg !2022
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2021, metadata !694), !dbg !2023
  %3 = icmp eq i64 %1, 0, !dbg !2024
  br i1 %3, label %14, label %4, !dbg !2026

; <label>:4:                                      ; preds = %2
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2027, !tbaa !702
  %6 = tail call i64 @fwrite_unlocked(i8* %0, i64 1, i64 %1, %struct._IO_FILE* %5) #10, !dbg !2027
  %7 = icmp ult i64 %6, %1, !dbg !2029
  br i1 %7, label %8, label %14, !dbg !2030

; <label>:8:                                      ; preds = %4
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2032, !tbaa !702
  tail call void @clearerr_unlocked(%struct._IO_FILE* %9) #10, !dbg !2032
  %10 = tail call i32* @__errno_location() #1, !dbg !2034
  %11 = load i32, i32* %10, align 4, !dbg !2034, !tbaa !1089
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.58, i64 0, i64 0), i32 5) #10, !dbg !2035
  %13 = tail call i8* @quotearg_style(i32 4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.59, i64 0, i64 0)) #10, !dbg !2037
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %11, i8* %12, i8* %13) #10, !dbg !2039
  unreachable, !dbg !2034

; <label>:14:                                     ; preds = %2, %4
  ret void, !dbg !2041
}

; Function Attrs: nounwind readonly
declare i8* @memchr(i8*, i32, i64) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i8* @memrchr(i8*, i32, i64) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #7

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @diagnose_copy_fd_failure(i32, i8*) unnamed_addr #6 !dbg !2042 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2046, metadata !694), !dbg !2048
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2047, metadata !694), !dbg !2049
  switch i32 %0, label %13 [
    i32 1, label %3
    i32 2, label %8
  ], !dbg !2050

; <label>:3:                                      ; preds = %2
  %4 = tail call i32* @__errno_location() #1, !dbg !2051
  %5 = load i32, i32* %4, align 4, !dbg !2051, !tbaa !1089
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i32 5) #10, !dbg !2053
  %7 = tail call i8* @quotearg_style(i32 4, i8* %1) #10, !dbg !2055
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %5, i8* %6, i8* %7) #10, !dbg !2057
  br label %14, !dbg !2059

; <label>:8:                                      ; preds = %2
  %9 = tail call i32* @__errno_location() #1, !dbg !2060
  %10 = load i32, i32* %9, align 4, !dbg !2060, !tbaa !1089
  %11 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.60, i64 0, i64 0), i32 5) #10, !dbg !2061
  %12 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %1) #10, !dbg !2062
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %10, i8* %11, i8* %12) #10, !dbg !2063
  br label %14, !dbg !2064

; <label>:13:                                     ; preds = %2
  tail call void @abort() #14, !dbg !2065
  unreachable, !dbg !2065

; <label>:14:                                     ; preds = %8, %3
  ret void, !dbg !2066
}

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) local_unnamed_addr #2

declare i32 @close(i32) local_unnamed_addr #3

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

declare i64 @fwrite_unlocked(i8*, i64, i64, %struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @clearerr_unlocked(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !2067 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2069, metadata !694), !dbg !2070
  store i8* %0, i8** @file_name, align 8, !dbg !2071, !tbaa !702
  ret void, !dbg !2072
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !2073 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !2077, metadata !1032), !dbg !2078
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !2079, !tbaa !2080
  ret void, !dbg !2082
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !2083 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2088, !tbaa !702
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #10, !dbg !2089
  %3 = icmp eq i32 %2, 0, !dbg !2090
  br i1 %3, label %21, label %4, !dbg !2091

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !2092, !tbaa !2080, !range !2094
  %6 = icmp eq i8 %5, 0, !dbg !2092
  %7 = tail call i32* @__errno_location() #1, !dbg !2095
  br i1 %6, label %11, label %8, !dbg !2097

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !2098, !tbaa !1089
  %10 = icmp eq i32 %9, 32, !dbg !2100
  br i1 %10, label %21, label %11, !dbg !2101

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i64 0, i64 0), i32 5) #10, !dbg !2103
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !2085, metadata !694), !dbg !2104
  %13 = load i8*, i8** @file_name, align 8, !dbg !2105, !tbaa !702
  %14 = icmp eq i8* %13, null, !dbg !2105
  %15 = load i32, i32* %7, align 4, !tbaa !1089
  br i1 %14, label %18, label %16, !dbg !2106

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #10, !dbg !2107
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.27, i64 0, i64 0), i8* %17, i8* %12) #10, !dbg !2109
  br label %19, !dbg !2111

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.28, i64 0, i64 0), i8* %12) #10, !dbg !2112
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !2113, !tbaa !1089
  tail call void @_exit(i32 %20) #14, !dbg !2114
  unreachable, !dbg !2114

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2115, !tbaa !702
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #10, !dbg !2117
  %24 = icmp eq i32 %23, 0, !dbg !2118
  br i1 %24, label %27, label %25, !dbg !2119

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !2120, !tbaa !1089
  tail call void @_exit(i32 %26) #14, !dbg !2121
  unreachable, !dbg !2121

; <label>:27:                                     ; preds = %21
  ret void, !dbg !2122
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define i64 @full_read(i32, i8*, i64) local_unnamed_addr #6 !dbg !2123 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2126, metadata !694), !dbg !2133
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2127, metadata !694), !dbg !2134
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2128, metadata !694), !dbg !2135
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2129, metadata !694), !dbg !2136
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2130, metadata !694), !dbg !2137
  %4 = icmp eq i64 %2, 0, !dbg !2138
  br i1 %4, label %20, label %5, !dbg !2140

; <label>:5:                                      ; preds = %3
  br label %6, !dbg !2135

; <label>:6:                                      ; preds = %5, %13
  %7 = phi i64 [ %14, %13 ], [ 0, %5 ]
  %8 = phi i8* [ %15, %13 ], [ %1, %5 ]
  %9 = phi i64 [ %16, %13 ], [ %2, %5 ]
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !2128, metadata !694), !dbg !2135
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !2130, metadata !694), !dbg !2137
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !2129, metadata !694), !dbg !2136
  %10 = tail call i64 @safe_read(i32 %0, i8* %8, i64 %9) #10, !dbg !2141
  tail call void @llvm.dbg.value(metadata i64 %10, i64 0, metadata !2131, metadata !694), !dbg !2142
  switch i64 %10, label %13 [
    i64 -1, label %18
    i64 0, label %11
  ], !dbg !2143

; <label>:11:                                     ; preds = %6
  %12 = tail call i32* @__errno_location() #1, !dbg !2144
  store i32 0, i32* %12, align 4, !dbg !2147, !tbaa !1089
  br label %20, !dbg !2148

; <label>:13:                                     ; preds = %6
  %14 = add i64 %10, %7, !dbg !2149
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !2129, metadata !694), !dbg !2136
  %15 = getelementptr inbounds i8, i8* %8, i64 %10, !dbg !2150
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !2130, metadata !694), !dbg !2137
  %16 = sub i64 %9, %10, !dbg !2151
  tail call void @llvm.dbg.value(metadata i64 %16, i64 0, metadata !2128, metadata !694), !dbg !2135
  tail call void @llvm.dbg.value(metadata i64 %16, i64 0, metadata !2128, metadata !694), !dbg !2135
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !2130, metadata !694), !dbg !2137
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !2129, metadata !694), !dbg !2136
  %17 = icmp eq i64 %16, 0, !dbg !2138
  br i1 %17, label %18, label %6, !llvm.loop !2152

; <label>:18:                                     ; preds = %6, %13
  %19 = phi i64 [ %7, %6 ], [ %14, %13 ]
  br label %20, !dbg !2136

; <label>:20:                                     ; preds = %18, %11, %3
  %21 = phi i64 [ 0, %3 ], [ %7, %11 ], [ %19, %18 ]
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !2129, metadata !694), !dbg !2136
  ret i64 %21, !dbg !2155
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @offtostr(i64, i8*) local_unnamed_addr #6 !dbg !2156 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2161, metadata !694), !dbg !2164
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2162, metadata !694), !dbg !2165
  %3 = getelementptr inbounds i8, i8* %1, i64 20, !dbg !2166
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2163, metadata !694), !dbg !2167
  store i8 0, i8* %3, align 1, !dbg !2168, !tbaa !975
  %4 = icmp slt i64 %0, 0, !dbg !2169
  br i1 %4, label %6, label %5, !dbg !2171, !llvm.loop !2172

; <label>:5:                                      ; preds = %2
  br label %19, !dbg !2167

; <label>:6:                                      ; preds = %2
  br label %7, !dbg !2167

; <label>:7:                                      ; preds = %6, %7
  %8 = phi i64 [ %14, %7 ], [ %0, %6 ]
  %9 = phi i8* [ %13, %7 ], [ %3, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !2163, metadata !694), !dbg !2167
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !2161, metadata !694), !dbg !2164
  %10 = srem i64 %8, 10, !dbg !2176
  %11 = sub nsw i64 48, %10, !dbg !2178
  %12 = trunc i64 %11 to i8, !dbg !2179
  %13 = getelementptr inbounds i8, i8* %9, i64 -1, !dbg !2180
  tail call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !2163, metadata !694), !dbg !2167
  store i8 %12, i8* %13, align 1, !dbg !2181, !tbaa !975
  %14 = sdiv i64 %8, 10, !dbg !2182
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !2161, metadata !694), !dbg !2164
  %15 = add i64 %8, 9, !dbg !2183
  %16 = icmp ugt i64 %15, 18, !dbg !2183
  br i1 %16, label %7, label %17, !dbg !2184, !llvm.loop !2186

; <label>:17:                                     ; preds = %7
  %18 = getelementptr inbounds i8, i8* %9, i64 -2, !dbg !2189
  tail call void @llvm.dbg.value(metadata i8* %18, i64 0, metadata !2163, metadata !694), !dbg !2167
  store i8 45, i8* %18, align 1, !dbg !2190, !tbaa !975
  br label %30, !dbg !2191

; <label>:19:                                     ; preds = %5, %19
  %20 = phi i64 [ %26, %19 ], [ %0, %5 ]
  %21 = phi i8* [ %25, %19 ], [ %3, %5 ]
  tail call void @llvm.dbg.value(metadata i8* %21, i64 0, metadata !2163, metadata !694), !dbg !2167
  tail call void @llvm.dbg.value(metadata i64 %20, i64 0, metadata !2161, metadata !694), !dbg !2164
  %22 = srem i64 %20, 10, !dbg !2192
  %23 = add nsw i64 %22, 48, !dbg !2193
  %24 = trunc i64 %23 to i8, !dbg !2194
  %25 = getelementptr inbounds i8, i8* %21, i64 -1, !dbg !2195
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !2163, metadata !694), !dbg !2167
  store i8 %24, i8* %25, align 1, !dbg !2196, !tbaa !975
  %26 = sdiv i64 %20, 10, !dbg !2197
  tail call void @llvm.dbg.value(metadata i64 %26, i64 0, metadata !2161, metadata !694), !dbg !2164
  %27 = add i64 %20, 9, !dbg !2198
  %28 = icmp ugt i64 %27, 18, !dbg !2198
  br i1 %28, label %19, label %29, !dbg !2199, !llvm.loop !2172

; <label>:29:                                     ; preds = %19
  br label %30, !dbg !2167

; <label>:30:                                     ; preds = %29, %17
  %31 = phi i8* [ %18, %17 ], [ %25, %29 ]
  tail call void @llvm.dbg.value(metadata i8* %31, i64 0, metadata !2163, metadata !694), !dbg !2167
  ret i8* %31, !dbg !2201
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @umaxtostr(i64, i8*) local_unnamed_addr #6 !dbg !2202 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !2206, metadata !694), !dbg !2209
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2207, metadata !694), !dbg !2210
  %3 = getelementptr inbounds i8, i8* %1, i64 20, !dbg !2211
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2208, metadata !694), !dbg !2212
  store i8 0, i8* %3, align 1, !dbg !2213, !tbaa !975
  br label %4, !dbg !2214

; <label>:4:                                      ; preds = %2, %4
  %5 = phi i64 [ %0, %2 ], [ %11, %4 ]
  %6 = phi i8* [ %3, %2 ], [ %10, %4 ]
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !2208, metadata !694), !dbg !2212
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !2206, metadata !694), !dbg !2209
  %7 = urem i64 %5, 10, !dbg !2215
  %8 = trunc i64 %7 to i8, !dbg !2218
  %9 = or i8 %8, 48, !dbg !2218
  %10 = getelementptr inbounds i8, i8* %6, i64 -1, !dbg !2219
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !2208, metadata !694), !dbg !2212
  store i8 %9, i8* %10, align 1, !dbg !2220, !tbaa !975
  %11 = udiv i64 %5, 10, !dbg !2221
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !2206, metadata !694), !dbg !2209
  %12 = icmp ugt i64 %5, 9, !dbg !2222
  br i1 %12, label %4, label %13, !dbg !2223, !llvm.loop !2225

; <label>:13:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !2208, metadata !694), !dbg !2212
  ret i8* %10, !dbg !2228
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !2229 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2231, metadata !694), !dbg !2234
  %2 = icmp eq i8* %0, null, !dbg !2235
  br i1 %2, label %3, label %6, !dbg !2237

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2238, !tbaa !702
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.61, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #16, !dbg !2240
  tail call void @abort() #14, !dbg !2241
  unreachable, !dbg !2241

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #13, !dbg !2242
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !2232, metadata !694), !dbg !2243
  %8 = icmp ne i8* %7, null, !dbg !2244
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !2245
  %10 = select i1 %8, i8* %9, i8* %0, !dbg !2247
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !2233, metadata !694), !dbg !2248
  %11 = ptrtoint i8* %10 to i64, !dbg !2249
  %12 = ptrtoint i8* %0 to i64, !dbg !2249
  %13 = sub i64 %11, %12, !dbg !2249
  %14 = icmp sgt i64 %13, 6, !dbg !2251
  br i1 %14, label %15, label %24, !dbg !2252

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !2253
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.62, i64 0, i64 0), i64 7) #13, !dbg !2253
  %18 = icmp eq i32 %17, 0, !dbg !2255
  br i1 %18, label %19, label %24, !dbg !2256

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !2231, metadata !694), !dbg !2234
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.63, i64 0, i64 0), i64 3) #13, !dbg !2257
  %21 = icmp eq i32 %20, 0, !dbg !2260
  br i1 %21, label %22, label %24, !dbg !2261

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !2262
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !2231, metadata !694), !dbg !2234
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !2264, !tbaa !702
  br label %24, !dbg !2265

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !2231, metadata !694), !dbg !2234
  store i8* %25, i8** @program_name, align 8, !dbg !2266, !tbaa !702
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !2267, !tbaa !702
  ret void, !dbg !2268
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #10

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !2269 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2274, metadata !694), !dbg !2277
  %2 = tail call i32* @__errno_location() #1, !dbg !2278
  %3 = load i32, i32* %2, align 4, !dbg !2278, !tbaa !1089
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !2275, metadata !694), !dbg !2279
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !2280
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !2281
  %6 = select i1 %4, i8* %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), !dbg !2281
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #10, !dbg !2283
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !2283
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !2276, metadata !694), !dbg !2284
  store i32 %3, i32* %2, align 4, !dbg !2285, !tbaa !1089
  ret %struct.quoting_options* %8, !dbg !2286
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #11 !dbg !2287 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2293, metadata !694), !dbg !2294
  %2 = icmp ne %struct.quoting_options* %0, null, !dbg !2295
  %3 = select i1 %2, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !2295
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2296
  %5 = load i32, i32* %4, align 8, !dbg !2296, !tbaa !2298
  ret i32 %5, !dbg !2300
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !2301 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2305, metadata !694), !dbg !2307
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2306, metadata !694), !dbg !2308
  %3 = icmp ne %struct.quoting_options* %0, null, !dbg !2309
  %4 = select i1 %3, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !2309
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2310
  store i32 %1, i32* %5, align 8, !dbg !2312, !tbaa !2298
  ret void, !dbg !2313
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !2314 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2318, metadata !694), !dbg !2326
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2319, metadata !694), !dbg !2327
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !2320, metadata !694), !dbg !2328
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2321, metadata !694), !dbg !2329
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !2330
  %5 = select i1 %4, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !2330
  %6 = lshr i8 %1, 5, !dbg !2331
  %7 = zext i8 %6 to i64, !dbg !2331
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !2333
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !2322, metadata !694), !dbg !2334
  %9 = and i8 %1, 31, !dbg !2335
  %10 = zext i8 %9 to i32, !dbg !2336
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2324, metadata !694), !dbg !2337
  %11 = load i32, i32* %8, align 4, !dbg !2338, !tbaa !1089
  %12 = lshr i32 %11, %10, !dbg !2339
  %13 = and i32 %12, 1, !dbg !2340
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !2325, metadata !694), !dbg !2341
  %14 = and i32 %2, 1, !dbg !2342
  %15 = xor i32 %13, %14, !dbg !2343
  %16 = shl i32 %15, %10, !dbg !2344
  %17 = xor i32 %16, %11, !dbg !2345
  store i32 %17, i32* %8, align 4, !dbg !2345, !tbaa !1089
  ret i32 %13, !dbg !2346
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !2347 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2351, metadata !694), !dbg !2354
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2352, metadata !694), !dbg !2355
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2356
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2351, metadata !694), !dbg !2354
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2358
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2351, metadata !694), !dbg !2354
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2359
  %6 = load i32, i32* %5, align 4, !dbg !2359, !tbaa !2360
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !2353, metadata !694), !dbg !2361
  store i32 %1, i32* %5, align 4, !dbg !2362, !tbaa !2360
  ret i32 %6, !dbg !2363
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !2364 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2368, metadata !694), !dbg !2371
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2369, metadata !694), !dbg !2372
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2370, metadata !694), !dbg !2373
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2374
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2368, metadata !694), !dbg !2371
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2376
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2368, metadata !694), !dbg !2371
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2377
  store i32 10, i32* %6, align 8, !dbg !2378, !tbaa !2298
  %7 = icmp ne i8* %1, null, !dbg !2379
  %8 = icmp ne i8* %2, null, !dbg !2381
  %9 = and i1 %7, %8, !dbg !2383
  br i1 %9, label %11, label %10, !dbg !2383

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !2384
  unreachable, !dbg !2384

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2385
  store i8* %1, i8** %12, align 8, !dbg !2386, !tbaa !2387
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2388
  store i8* %2, i8** %13, align 8, !dbg !2389, !tbaa !2390
  ret void, !dbg !2391
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !2392 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2396, metadata !694), !dbg !2404
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2397, metadata !694), !dbg !2405
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2398, metadata !694), !dbg !2406
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2399, metadata !694), !dbg !2407
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2400, metadata !694), !dbg !2408
  %6 = icmp ne %struct.quoting_options* %4, null, !dbg !2409
  %7 = select i1 %6, %struct.quoting_options* %4, %struct.quoting_options* @default_quoting_options, !dbg !2409
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !2401, metadata !694), !dbg !2410
  %8 = tail call i32* @__errno_location() #1, !dbg !2411
  %9 = load i32, i32* %8, align 4, !dbg !2411, !tbaa !1089
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !2402, metadata !694), !dbg !2412
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !2413
  %11 = load i32, i32* %10, align 8, !dbg !2413, !tbaa !2298
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !2414
  %13 = load i32, i32* %12, align 4, !dbg !2414, !tbaa !2360
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !2415
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !2416
  %16 = load i8*, i8** %15, align 8, !dbg !2416, !tbaa !2387
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !2417
  %18 = load i8*, i8** %17, align 8, !dbg !2417, !tbaa !2390
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !2418
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2403, metadata !694), !dbg !2419
  store i32 %9, i32* %8, align 4, !dbg !2420, !tbaa !1089
  ret i64 %19, !dbg !2421
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !2422 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2428, metadata !694), !dbg !2491
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2429, metadata !694), !dbg !2492
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2430, metadata !694), !dbg !2493
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2431, metadata !694), !dbg !2494
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !2432, metadata !694), !dbg !2495
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !2433, metadata !694), !dbg !2496
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !2434, metadata !694), !dbg !2497
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !2435, metadata !694), !dbg !2498
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !2436, metadata !694), !dbg !2499
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2438, metadata !694), !dbg !2500
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2439, metadata !694), !dbg !2501
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2440, metadata !694), !dbg !2502
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2441, metadata !694), !dbg !2503
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2442, metadata !694), !dbg !2504
  %13 = tail call i64 @__ctype_get_mb_cur_max() #10, !dbg !2505
  %14 = icmp eq i64 %13, 1, !dbg !2506
  %15 = lshr i32 %5, 1, !dbg !2507
  %16 = trunc i32 %15 to i8, !dbg !2507
  %17 = and i8 %16, 1, !dbg !2507
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !2444, metadata !694), !dbg !2507
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2445, metadata !694), !dbg !2508
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2446, metadata !694), !dbg !2509
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2447, metadata !694), !dbg !2510
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !2511

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !2429, metadata !694), !dbg !2492
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !2447, metadata !694), !dbg !2510
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !2446, metadata !694), !dbg !2509
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !2445, metadata !694), !dbg !2508
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !2444, metadata !694), !dbg !2507
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !2431, metadata !694), !dbg !2494
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !2442, metadata !694), !dbg !2504
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !2441, metadata !694), !dbg !2503
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !2440, metadata !694), !dbg !2502
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !2439, metadata !694), !dbg !2501
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2438, metadata !694), !dbg !2500
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !2436, metadata !694), !dbg !2499
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !2435, metadata !694), !dbg !2498
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !2432, metadata !694), !dbg !2495
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
  ], !dbg !2512

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !2432, metadata !694), !dbg !2495
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2444, metadata !694), !dbg !2507
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !2444, metadata !694), !dbg !2507
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !2432, metadata !694), !dbg !2495
  br label %95, !dbg !2513

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !2444, metadata !694), !dbg !2507
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !2432, metadata !694), !dbg !2495
  %43 = and i8 %36, 1, !dbg !2515
  %44 = icmp eq i8 %43, 0, !dbg !2515
  br i1 %44, label %45, label %95, !dbg !2513

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !2517
  br i1 %46, label %95, label %47, !dbg !2521

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !2523, !tbaa !975
  br label %95, !dbg !2523

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.74, i64 0, i64 0), i32 %28), !dbg !2525
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !2435, metadata !694), !dbg !2498
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.75, i64 0, i64 0), i32 %28), !dbg !2529
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !2436, metadata !694), !dbg !2499
  br label %51, !dbg !2530

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !2436, metadata !694), !dbg !2499
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !2435, metadata !694), !dbg !2498
  %54 = and i8 %36, 1, !dbg !2531
  %55 = icmp eq i8 %54, 0, !dbg !2531
  br i1 %55, label %56, label %73, !dbg !2533

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !2440, metadata !694), !dbg !2502
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2438, metadata !694), !dbg !2500
  %57 = load i8, i8* %52, align 1, !dbg !2534, !tbaa !975
  %58 = icmp eq i8 %57, 0, !dbg !2538
  br i1 %58, label %73, label %59, !dbg !2538

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !2540

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  %64 = icmp ult i64 %63, %40, !dbg !2540
  br i1 %64, label %65, label %67, !dbg !2544

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !2546
  store i8 %61, i8* %66, align 1, !dbg !2546, !tbaa !975
  br label %67, !dbg !2546

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !2548
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !2438, metadata !694), !dbg !2500
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !2550
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !2440, metadata !694), !dbg !2502
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !2440, metadata !694), !dbg !2502
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !2438, metadata !694), !dbg !2500
  %70 = load i8, i8* %69, align 1, !dbg !2534, !tbaa !975
  %71 = icmp eq i8 %70, 0, !dbg !2538
  br i1 %71, label %72, label %60, !dbg !2538, !llvm.loop !2552

; <label>:72:                                     ; preds = %67
  br label %73, !dbg !2500

; <label>:73:                                     ; preds = %72, %56, %51
  %74 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %72 ]
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !2438, metadata !694), !dbg !2500
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2442, metadata !694), !dbg !2504
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !2440, metadata !694), !dbg !2502
  %75 = call i64 @strlen(i8* %53) #13, !dbg !2555
  call void @llvm.dbg.value(metadata i64 %75, i64 0, metadata !2441, metadata !694), !dbg !2503
  br label %95, !dbg !2556

; <label>:76:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2442, metadata !694), !dbg !2504
  br label %77, !dbg !2557

; <label>:77:                                     ; preds = %27, %76
  %78 = phi i8 [ %34, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %78, i64 0, metadata !2442, metadata !694), !dbg !2504
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2444, metadata !694), !dbg !2507
  br label %79, !dbg !2558

; <label>:79:                                     ; preds = %27, %77
  %80 = phi i8 [ %34, %27 ], [ %78, %77 ]
  %81 = phi i8 [ %36, %27 ], [ 1, %77 ]
  call void @llvm.dbg.value(metadata i8 %81, i64 0, metadata !2444, metadata !694), !dbg !2507
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !2442, metadata !694), !dbg !2504
  %82 = and i8 %81, 1, !dbg !2559
  %83 = icmp eq i8 %82, 0, !dbg !2559
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2442, metadata !694), !dbg !2504
  %84 = select i1 %83, i8 1, i8 %80, !dbg !2561
  br label %85, !dbg !2561

; <label>:85:                                     ; preds = %79, %27
  %86 = phi i8 [ %34, %27 ], [ %84, %79 ]
  %87 = phi i8 [ %36, %27 ], [ %81, %79 ]
  call void @llvm.dbg.value(metadata i8 %87, i64 0, metadata !2444, metadata !694), !dbg !2507
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !2442, metadata !694), !dbg !2504
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !2432, metadata !694), !dbg !2495
  %88 = and i8 %87, 1, !dbg !2562
  %89 = icmp eq i8 %88, 0, !dbg !2562
  br i1 %89, label %90, label %95, !dbg !2564

; <label>:90:                                     ; preds = %85
  %91 = icmp eq i64 %40, 0, !dbg !2565
  br i1 %91, label %95, label %92, !dbg !2569

; <label>:92:                                     ; preds = %90
  store i8 39, i8* %0, align 1, !dbg !2571, !tbaa !975
  br label %95, !dbg !2571

; <label>:93:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2444, metadata !694), !dbg !2507
  br label %95, !dbg !2573

; <label>:94:                                     ; preds = %27
  call void @abort() #14, !dbg !2574
  unreachable, !dbg !2574

; <label>:95:                                     ; preds = %41, %85, %90, %92, %27, %42, %45, %47, %93, %73
  %96 = phi i32 [ 0, %93 ], [ %28, %73 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %92 ], [ 2, %90 ], [ 2, %85 ], [ 5, %41 ]
  %97 = phi i8* [ %29, %93 ], [ %52, %73 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %92 ], [ %29, %90 ], [ %29, %85 ], [ %29, %41 ]
  %98 = phi i8* [ %30, %93 ], [ %53, %73 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %92 ], [ %30, %90 ], [ %30, %85 ], [ %30, %41 ]
  %99 = phi i64 [ 0, %93 ], [ %74, %73 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %92 ], [ 1, %90 ], [ 0, %85 ], [ 0, %41 ]
  %100 = phi i8* [ %32, %93 ], [ %53, %73 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.76, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.76, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.76, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.75, i64 0, i64 0), %92 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.75, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.75, i64 0, i64 0), %85 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.76, i64 0, i64 0), %41 ]
  %101 = phi i64 [ %33, %93 ], [ %75, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %92 ], [ 1, %90 ], [ 1, %85 ], [ 1, %41 ]
  %102 = phi i8 [ %34, %93 ], [ 1, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %86, %92 ], [ %86, %90 ], [ %86, %85 ], [ 1, %41 ]
  %103 = phi i8 [ 0, %93 ], [ %36, %73 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %87, %92 ], [ %87, %90 ], [ %87, %85 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %103, i64 0, metadata !2444, metadata !694), !dbg !2507
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !2442, metadata !694), !dbg !2504
  call void @llvm.dbg.value(metadata i64 %101, i64 0, metadata !2441, metadata !694), !dbg !2503
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !2440, metadata !694), !dbg !2502
  call void @llvm.dbg.value(metadata i64 %99, i64 0, metadata !2438, metadata !694), !dbg !2500
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !2436, metadata !694), !dbg !2499
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !2435, metadata !694), !dbg !2498
  call void @llvm.dbg.value(metadata i32 %96, i64 0, metadata !2432, metadata !694), !dbg !2495
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2437, metadata !694), !dbg !2575
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
  br label %123, !dbg !2576

; <label>:123:                                    ; preds = %587, %95
  %124 = phi i64 [ 0, %95 ], [ %596, %587 ]
  %125 = phi i64 [ %99, %95 ], [ %589, %587 ]
  %126 = phi i64 [ %31, %95 ], [ %590, %587 ]
  %127 = phi i64 [ %35, %95 ], [ %591, %587 ]
  %128 = phi i8 [ %37, %95 ], [ %592, %587 ]
  %129 = phi i8 [ %38, %95 ], [ %593, %587 ]
  %130 = phi i8 [ %39, %95 ], [ %594, %587 ]
  %131 = phi i64 [ %40, %95 ], [ %595, %587 ]
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !2429, metadata !694), !dbg !2492
  call void @llvm.dbg.value(metadata i8 %130, i64 0, metadata !2447, metadata !694), !dbg !2510
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !2446, metadata !694), !dbg !2509
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !2445, metadata !694), !dbg !2508
  call void @llvm.dbg.value(metadata i64 %127, i64 0, metadata !2431, metadata !694), !dbg !2494
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !2439, metadata !694), !dbg !2501
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !2438, metadata !694), !dbg !2500
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !2437, metadata !694), !dbg !2575
  %132 = icmp eq i64 %127, -1, !dbg !2577
  br i1 %132, label %135, label %133, !dbg !2579

; <label>:133:                                    ; preds = %123
  %134 = icmp eq i64 %124, %127, !dbg !2580
  br i1 %134, label %597, label %139, !dbg !2582

; <label>:135:                                    ; preds = %123
  %136 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !2584
  %137 = load i8, i8* %136, align 1, !dbg !2584, !tbaa !975
  %138 = icmp eq i8 %137, 0, !dbg !2586
  br i1 %138, label %597, label %139, !dbg !2582

; <label>:139:                                    ; preds = %133, %135
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2453, metadata !694), !dbg !2587
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2454, metadata !694), !dbg !2588
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2455, metadata !694), !dbg !2589
  br i1 %109, label %140, label %155, !dbg !2590

; <label>:140:                                    ; preds = %139
  %141 = add i64 %124, %101, !dbg !2592
  %142 = and i1 %110, %132, !dbg !2594
  br i1 %142, label %143, label %145, !dbg !2594

; <label>:143:                                    ; preds = %140
  %144 = call i64 @strlen(i8* %2) #13, !dbg !2595
  call void @llvm.dbg.value(metadata i64 %144, i64 0, metadata !2431, metadata !694), !dbg !2494
  br label %145, !dbg !2596

; <label>:145:                                    ; preds = %140, %143
  %146 = phi i64 [ %144, %143 ], [ %127, %140 ]
  call void @llvm.dbg.value(metadata i64 %146, i64 0, metadata !2431, metadata !694), !dbg !2494
  %147 = icmp ugt i64 %141, %146, !dbg !2598
  br i1 %147, label %155, label %148, !dbg !2600

; <label>:148:                                    ; preds = %145
  %149 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !2601
  %150 = call i32 @memcmp(i8* %149, i8* %100, i64 %101) #13, !dbg !2602
  %151 = icmp ne i32 %150, 0, !dbg !2603
  %152 = or i1 %151, %112, !dbg !2603
  %153 = xor i1 %151, true, !dbg !2603
  %154 = zext i1 %153 to i8, !dbg !2603
  br i1 %152, label %155, label %644, !dbg !2603

; <label>:155:                                    ; preds = %148, %145, %139
  %156 = phi i64 [ %146, %148 ], [ %146, %145 ], [ %127, %139 ]
  %157 = phi i8 [ %154, %148 ], [ 0, %145 ], [ 0, %139 ]
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !2453, metadata !694), !dbg !2587
  call void @llvm.dbg.value(metadata i64 %156, i64 0, metadata !2431, metadata !694), !dbg !2494
  %158 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !2605
  %159 = load i8, i8* %158, align 1, !dbg !2605, !tbaa !975
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !2448, metadata !694), !dbg !2606
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
  ], !dbg !2607

; <label>:160:                                    ; preds = %155
  br i1 %105, label %161, label %209, !dbg !2608

; <label>:161:                                    ; preds = %160
  br i1 %112, label %162, label %644, !dbg !2609

; <label>:162:                                    ; preds = %161
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2454, metadata !694), !dbg !2588
  %163 = and i8 %128, 1, !dbg !2614
  %164 = icmp eq i8 %163, 0, !dbg !2614
  %165 = and i1 %114, %164, !dbg !2617
  br i1 %165, label %166, label %182, !dbg !2617

; <label>:166:                                    ; preds = %162
  %167 = icmp ult i64 %125, %131, !dbg !2619
  br i1 %167, label %168, label %170, !dbg !2624

; <label>:168:                                    ; preds = %166
  %169 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !2626
  store i8 39, i8* %169, align 1, !dbg !2626, !tbaa !975
  br label %170, !dbg !2626

; <label>:170:                                    ; preds = %168, %166
  %171 = add i64 %125, 1, !dbg !2628
  call void @llvm.dbg.value(metadata i64 %171, i64 0, metadata !2438, metadata !694), !dbg !2500
  %172 = icmp ult i64 %171, %131, !dbg !2630
  br i1 %172, label %173, label %175, !dbg !2634

; <label>:173:                                    ; preds = %170
  %174 = getelementptr inbounds i8, i8* %0, i64 %171, !dbg !2636
  store i8 36, i8* %174, align 1, !dbg !2636, !tbaa !975
  br label %175, !dbg !2636

; <label>:175:                                    ; preds = %173, %170
  %176 = add i64 %125, 2, !dbg !2638
  call void @llvm.dbg.value(metadata i64 %176, i64 0, metadata !2438, metadata !694), !dbg !2500
  %177 = icmp ult i64 %176, %131, !dbg !2640
  br i1 %177, label %178, label %180, !dbg !2644

; <label>:178:                                    ; preds = %175
  %179 = getelementptr inbounds i8, i8* %0, i64 %176, !dbg !2646
  store i8 39, i8* %179, align 1, !dbg !2646, !tbaa !975
  br label %180, !dbg !2646

; <label>:180:                                    ; preds = %178, %175
  %181 = add i64 %125, 3, !dbg !2648
  call void @llvm.dbg.value(metadata i64 %181, i64 0, metadata !2438, metadata !694), !dbg !2500
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2445, metadata !694), !dbg !2508
  br label %182, !dbg !2650

; <label>:182:                                    ; preds = %162, %180
  %183 = phi i64 [ %181, %180 ], [ %125, %162 ]
  %184 = phi i8 [ 1, %180 ], [ %128, %162 ]
  call void @llvm.dbg.value(metadata i8 %184, i64 0, metadata !2445, metadata !694), !dbg !2508
  call void @llvm.dbg.value(metadata i64 %183, i64 0, metadata !2438, metadata !694), !dbg !2500
  %185 = icmp ult i64 %183, %131, !dbg !2652
  br i1 %185, label %186, label %188, !dbg !2656

; <label>:186:                                    ; preds = %182
  %187 = getelementptr inbounds i8, i8* %0, i64 %183, !dbg !2658
  store i8 92, i8* %187, align 1, !dbg !2658, !tbaa !975
  br label %188, !dbg !2658

; <label>:188:                                    ; preds = %186, %182
  %189 = add i64 %183, 1, !dbg !2660
  call void @llvm.dbg.value(metadata i64 %189, i64 0, metadata !2438, metadata !694), !dbg !2500
  br i1 %106, label %190, label %476, !dbg !2662

; <label>:190:                                    ; preds = %188
  %191 = add i64 %124, 1, !dbg !2664
  %192 = icmp ult i64 %191, %156, !dbg !2666
  br i1 %192, label %193, label %476, !dbg !2667

; <label>:193:                                    ; preds = %190
  %194 = getelementptr inbounds i8, i8* %2, i64 %191, !dbg !2668
  %195 = load i8, i8* %194, align 1, !dbg !2668, !tbaa !975
  %196 = add i8 %195, -48, !dbg !2670
  %197 = icmp ult i8 %196, 10, !dbg !2670
  br i1 %197, label %198, label %476, !dbg !2670

; <label>:198:                                    ; preds = %193
  %199 = icmp ult i64 %189, %131, !dbg !2671
  br i1 %199, label %200, label %202, !dbg !2676

; <label>:200:                                    ; preds = %198
  %201 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !2678
  store i8 48, i8* %201, align 1, !dbg !2678, !tbaa !975
  br label %202, !dbg !2678

; <label>:202:                                    ; preds = %200, %198
  %203 = add i64 %183, 2, !dbg !2680
  call void @llvm.dbg.value(metadata i64 %203, i64 0, metadata !2438, metadata !694), !dbg !2500
  %204 = icmp ult i64 %203, %131, !dbg !2682
  br i1 %204, label %205, label %207, !dbg !2686

; <label>:205:                                    ; preds = %202
  %206 = getelementptr inbounds i8, i8* %0, i64 %203, !dbg !2688
  store i8 48, i8* %206, align 1, !dbg !2688, !tbaa !975
  br label %207, !dbg !2688

; <label>:207:                                    ; preds = %205, %202
  %208 = add i64 %183, 3, !dbg !2690
  call void @llvm.dbg.value(metadata i64 %208, i64 0, metadata !2438, metadata !694), !dbg !2500
  br label %476, !dbg !2692

; <label>:209:                                    ; preds = %160
  br i1 %23, label %476, label %587, !dbg !2693

; <label>:210:                                    ; preds = %155
  switch i32 %96, label %476 [
    i32 2, label %211
    i32 5, label %212
  ], !dbg !2694

; <label>:211:                                    ; preds = %210
  br i1 %112, label %476, label %644, !dbg !2695

; <label>:212:                                    ; preds = %210
  br i1 %25, label %476, label %213, !dbg !2697

; <label>:213:                                    ; preds = %212
  %214 = add i64 %124, 2, !dbg !2699
  %215 = icmp ult i64 %214, %156, !dbg !2701
  br i1 %215, label %216, label %476, !dbg !2702

; <label>:216:                                    ; preds = %213
  %217 = add i64 %124, 1, !dbg !2703
  %218 = getelementptr inbounds i8, i8* %2, i64 %217, !dbg !2705
  %219 = load i8, i8* %218, align 1, !dbg !2705, !tbaa !975
  %220 = icmp eq i8 %219, 63, !dbg !2706
  br i1 %220, label %221, label %476, !dbg !2707

; <label>:221:                                    ; preds = %216
  %222 = getelementptr inbounds i8, i8* %2, i64 %214, !dbg !2709
  %223 = load i8, i8* %222, align 1, !dbg !2709, !tbaa !975
  %224 = sext i8 %223 to i32, !dbg !2709
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
  ], !dbg !2710

; <label>:225:                                    ; preds = %221, %221, %221, %221, %221, %221, %221, %221, %221
  br i1 %112, label %226, label %644, !dbg !2711

; <label>:226:                                    ; preds = %225
  call void @llvm.dbg.value(metadata i8 %223, i64 0, metadata !2448, metadata !694), !dbg !2606
  call void @llvm.dbg.value(metadata i64 %214, i64 0, metadata !2437, metadata !694), !dbg !2575
  %227 = icmp ult i64 %125, %131, !dbg !2713
  br i1 %227, label %228, label %230, !dbg !2717

; <label>:228:                                    ; preds = %226
  %229 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !2719
  store i8 63, i8* %229, align 1, !dbg !2719, !tbaa !975
  br label %230, !dbg !2719

; <label>:230:                                    ; preds = %228, %226
  %231 = add i64 %125, 1, !dbg !2721
  call void @llvm.dbg.value(metadata i64 %231, i64 0, metadata !2438, metadata !694), !dbg !2500
  %232 = icmp ult i64 %231, %131, !dbg !2723
  br i1 %232, label %233, label %235, !dbg !2727

; <label>:233:                                    ; preds = %230
  %234 = getelementptr inbounds i8, i8* %0, i64 %231, !dbg !2729
  store i8 34, i8* %234, align 1, !dbg !2729, !tbaa !975
  br label %235, !dbg !2729

; <label>:235:                                    ; preds = %233, %230
  %236 = add i64 %125, 2, !dbg !2731
  call void @llvm.dbg.value(metadata i64 %236, i64 0, metadata !2438, metadata !694), !dbg !2500
  %237 = icmp ult i64 %236, %131, !dbg !2733
  br i1 %237, label %238, label %240, !dbg !2737

; <label>:238:                                    ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !2739
  store i8 34, i8* %239, align 1, !dbg !2739, !tbaa !975
  br label %240, !dbg !2739

; <label>:240:                                    ; preds = %238, %235
  %241 = add i64 %125, 3, !dbg !2741
  call void @llvm.dbg.value(metadata i64 %241, i64 0, metadata !2438, metadata !694), !dbg !2500
  %242 = icmp ult i64 %241, %131, !dbg !2743
  br i1 %242, label %243, label %245, !dbg !2747

; <label>:243:                                    ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !2749
  store i8 63, i8* %244, align 1, !dbg !2749, !tbaa !975
  br label %245, !dbg !2749

; <label>:245:                                    ; preds = %243, %240
  %246 = add i64 %125, 4, !dbg !2751
  call void @llvm.dbg.value(metadata i64 %246, i64 0, metadata !2438, metadata !694), !dbg !2500
  br label %476, !dbg !2753

; <label>:247:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !2452, metadata !694), !dbg !2754
  br label %257, !dbg !2755

; <label>:248:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !2452, metadata !694), !dbg !2754
  br label %257, !dbg !2756

; <label>:249:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !2452, metadata !694), !dbg !2754
  br label %255, !dbg !2757

; <label>:250:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !2452, metadata !694), !dbg !2754
  br label %255, !dbg !2758

; <label>:251:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !2452, metadata !694), !dbg !2754
  br label %257, !dbg !2759

; <label>:252:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !2452, metadata !694), !dbg !2754
  br i1 %114, label %253, label %254, !dbg !2760

; <label>:253:                                    ; preds = %252
  br i1 %112, label %542, label %644, !dbg !2761

; <label>:254:                                    ; preds = %252
  br i1 %122, label %542, label %255, !dbg !2764

; <label>:255:                                    ; preds = %254, %155, %250, %249
  %256 = phi i8 [ 92, %254 ], [ 116, %250 ], [ 114, %249 ], [ 110, %155 ]
  call void @llvm.dbg.value(metadata i8 %256, i64 0, metadata !2452, metadata !694), !dbg !2754
  br i1 %118, label %257, label %644, !dbg !2766

; <label>:257:                                    ; preds = %255, %155, %251, %248, %247
  %258 = phi i8 [ %256, %255 ], [ 118, %251 ], [ 102, %248 ], [ 98, %247 ], [ 97, %155 ]
  call void @llvm.dbg.value(metadata i8 %258, i64 0, metadata !2452, metadata !694), !dbg !2754
  br i1 %105, label %503, label %476, !dbg !2768

; <label>:259:                                    ; preds = %155, %155
  %260 = icmp eq i64 %156, -1, !dbg !2769
  br i1 %260, label %261, label %266, !dbg !2771

; <label>:261:                                    ; preds = %259
  %262 = load i8, i8* %26, align 1, !dbg !2772, !tbaa !975
  %263 = icmp ne i8 %262, 0, !dbg !2774
  %264 = icmp ne i64 %124, 0, !dbg !2775
  %265 = or i1 %264, %263, !dbg !2777
  br i1 %265, label %476, label %272, !dbg !2777

; <label>:266:                                    ; preds = %259
  %267 = icmp ne i64 %156, 1, !dbg !2778
  %268 = icmp ne i64 %124, 0, !dbg !2775
  %269 = or i1 %268, %267, !dbg !2780
  br i1 %269, label %476, label %272, !dbg !2780

; <label>:270:                                    ; preds = %155, %155
  %271 = icmp eq i64 %124, 0, !dbg !2775
  br i1 %271, label %272, label %476, !dbg !2782

; <label>:272:                                    ; preds = %270, %266, %261, %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2455, metadata !694), !dbg !2589
  br label %273, !dbg !2783

; <label>:273:                                    ; preds = %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %272
  %274 = phi i8 [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 1, %272 ]
  call void @llvm.dbg.value(metadata i8 %274, i64 0, metadata !2455, metadata !694), !dbg !2589
  br i1 %118, label %476, label %644, !dbg !2784

; <label>:275:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2446, metadata !694), !dbg !2509
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2455, metadata !694), !dbg !2589
  br i1 %114, label %276, label %476, !dbg !2786

; <label>:276:                                    ; preds = %275
  br i1 %112, label %277, label %644, !dbg !2787

; <label>:277:                                    ; preds = %276
  %278 = icmp eq i64 %131, 0, !dbg !2790
  %279 = icmp ne i64 %126, 0, !dbg !2792
  %280 = or i1 %279, %278, !dbg !2794
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !2439, metadata !694), !dbg !2501
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2429, metadata !694), !dbg !2492
  %281 = select i1 %280, i64 %126, i64 %131, !dbg !2794
  %282 = select i1 %280, i64 %131, i64 0, !dbg !2794
  call void @llvm.dbg.value(metadata i64 %282, i64 0, metadata !2429, metadata !694), !dbg !2492
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !2439, metadata !694), !dbg !2501
  %283 = icmp ult i64 %125, %282, !dbg !2795
  br i1 %283, label %284, label %286, !dbg !2799

; <label>:284:                                    ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !2801
  store i8 39, i8* %285, align 1, !dbg !2801, !tbaa !975
  br label %286, !dbg !2801

; <label>:286:                                    ; preds = %284, %277
  %287 = add i64 %125, 1, !dbg !2803
  call void @llvm.dbg.value(metadata i64 %287, i64 0, metadata !2438, metadata !694), !dbg !2500
  %288 = icmp ult i64 %287, %282, !dbg !2805
  br i1 %288, label %289, label %291, !dbg !2809

; <label>:289:                                    ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !2811
  store i8 92, i8* %290, align 1, !dbg !2811, !tbaa !975
  br label %291, !dbg !2811

; <label>:291:                                    ; preds = %289, %286
  %292 = add i64 %125, 2, !dbg !2813
  call void @llvm.dbg.value(metadata i64 %292, i64 0, metadata !2438, metadata !694), !dbg !2500
  %293 = icmp ult i64 %292, %282, !dbg !2815
  br i1 %293, label %294, label %296, !dbg !2819

; <label>:294:                                    ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !2821
  store i8 39, i8* %295, align 1, !dbg !2821, !tbaa !975
  br label %296, !dbg !2821

; <label>:296:                                    ; preds = %294, %291
  %297 = add i64 %125, 3, !dbg !2823
  call void @llvm.dbg.value(metadata i64 %297, i64 0, metadata !2438, metadata !694), !dbg !2500
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2445, metadata !694), !dbg !2508
  br label %476, !dbg !2825

; <label>:298:                                    ; preds = %155
  br i1 %14, label %299, label %308, !dbg !2826

; <label>:299:                                    ; preds = %298
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2456, metadata !694), !dbg !2827
  %300 = tail call i16** @__ctype_b_loc() #1, !dbg !2828
  %301 = load i16*, i16** %300, align 8, !dbg !2828, !tbaa !702
  %302 = zext i8 %159 to i64, !dbg !2828
  %303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !2828
  %304 = load i16, i16* %303, align 2, !dbg !2828, !tbaa !2830
  %305 = lshr i16 %304, 14, !dbg !2832
  %306 = trunc i16 %305 to i8, !dbg !2832
  %307 = and i8 %306, 1, !dbg !2832
  call void @llvm.dbg.value(metadata i8 %307, i64 0, metadata !2459, metadata !694), !dbg !2833
  br label %368, !dbg !2834

; <label>:308:                                    ; preds = %298
  call void @llvm.lifetime.start(i64 8, i8* nonnull %18) #10, !dbg !2835
  store i64 0, i64* %10, align 8, !dbg !2836
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2456, metadata !694), !dbg !2827
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2459, metadata !694), !dbg !2833
  %309 = icmp eq i64 %156, -1, !dbg !2837
  br i1 %309, label %310, label %312, !dbg !2839, !llvm.loop !2840

; <label>:310:                                    ; preds = %308
  %311 = call i64 @strlen(i8* nonnull %2) #13, !dbg !2843
  call void @llvm.dbg.value(metadata i64 %311, i64 0, metadata !2431, metadata !694), !dbg !2494
  br label %312, !dbg !2844, !llvm.loop !2840

; <label>:312:                                    ; preds = %310, %308
  %313 = phi i64 [ %156, %308 ], [ %311, %310 ]
  br label %314, !dbg !2833

; <label>:314:                                    ; preds = %312, %355
  %315 = phi i64 [ %360, %355 ], [ 0, %312 ]
  %316 = phi i8 [ %359, %355 ], [ 1, %312 ]
  call void @llvm.dbg.value(metadata i8 %316, i64 0, metadata !2459, metadata !694), !dbg !2833
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !2456, metadata !694), !dbg !2827
  call void @llvm.dbg.value(metadata i64 %313, i64 0, metadata !2431, metadata !694), !dbg !2494
  call void @llvm.lifetime.start(i64 4, i8* nonnull %19) #10, !dbg !2845
  %317 = add i64 %315, %124, !dbg !2846
  %318 = getelementptr inbounds i8, i8* %2, i64 %317, !dbg !2847
  %319 = sub i64 %313, %317, !dbg !2848
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !2460, metadata !1205), !dbg !2849
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !2477, metadata !1205), !dbg !2850
  %320 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %318, i64 %319, %struct.__mbstate_t* nonnull %11) #10, !dbg !2851
  call void @llvm.dbg.value(metadata i64 %320, i64 0, metadata !2480, metadata !694), !dbg !2852
  switch i64 %320, label %334 [
    i64 0, label %350
    i64 -1, label %347
    i64 -2, label %321
  ], !dbg !2853

; <label>:321:                                    ; preds = %314
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !2456, metadata !694), !dbg !2827
  %322 = icmp ugt i64 %313, %317, !dbg !2854
  br i1 %322, label %323, label %351, !dbg !2857

; <label>:323:                                    ; preds = %321
  br label %324, !dbg !2858

; <label>:324:                                    ; preds = %323, %330
  %325 = phi i64 [ %332, %330 ], [ %317, %323 ]
  %326 = phi i64 [ %331, %330 ], [ %315, %323 ]
  %327 = getelementptr inbounds i8, i8* %2, i64 %325, !dbg !2858
  %328 = load i8, i8* %327, align 1, !dbg !2858, !tbaa !975
  %329 = icmp eq i8 %328, 0, !dbg !2860
  br i1 %329, label %348, label %330, !dbg !2861

; <label>:330:                                    ; preds = %324
  %331 = add i64 %326, 1, !dbg !2863
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !2456, metadata !694), !dbg !2827
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !2456, metadata !694), !dbg !2827
  %332 = add i64 %331, %124, !dbg !2864
  %333 = icmp ult i64 %332, %313, !dbg !2854
  br i1 %333, label %324, label %348, !dbg !2857, !llvm.loop !2865

; <label>:334:                                    ; preds = %314
  %335 = icmp ugt i64 %320, 1, !dbg !2867
  %336 = and i1 %116, %335, !dbg !2871
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2481, metadata !694), !dbg !2872
  br i1 %336, label %337, label %355, !dbg !2871

; <label>:337:                                    ; preds = %334
  br label %338, !dbg !2873

; <label>:338:                                    ; preds = %337, %344
  %339 = phi i64 [ %345, %344 ], [ 1, %337 ]
  %340 = add i64 %339, %317, !dbg !2873
  %341 = getelementptr inbounds i8, i8* %2, i64 %340, !dbg !2874
  %342 = load i8, i8* %341, align 1, !dbg !2874, !tbaa !975
  %343 = sext i8 %342 to i32, !dbg !2874
  switch i32 %343, label %344 [
    i32 91, label %367
    i32 92, label %367
    i32 94, label %367
    i32 96, label %367
    i32 124, label %367
  ], !dbg !2875

; <label>:344:                                    ; preds = %338
  %345 = add nuw i64 %339, 1, !dbg !2876
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !2481, metadata !694), !dbg !2872
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !2481, metadata !694), !dbg !2872
  %346 = icmp ult i64 %345, %320, !dbg !2867
  br i1 %346, label %338, label %354, !dbg !2878, !llvm.loop !2880

; <label>:347:                                    ; preds = %314
  br label %351, !dbg !2833

; <label>:348:                                    ; preds = %324, %330
  %349 = phi i64 [ %331, %330 ], [ %326, %324 ]
  br label %351, !dbg !2833

; <label>:350:                                    ; preds = %314
  br label %351, !dbg !2833

; <label>:351:                                    ; preds = %350, %348, %347, %321
  %352 = phi i64 [ %315, %321 ], [ %315, %347 ], [ %349, %348 ], [ %315, %350 ]
  %353 = phi i8 [ 0, %321 ], [ 0, %347 ], [ 0, %348 ], [ %316, %350 ]
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !2459, metadata !694), !dbg !2833
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !2456, metadata !694), !dbg !2827
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10, !dbg !2883
  br label %364

; <label>:354:                                    ; preds = %344
  br label %355, !dbg !2884

; <label>:355:                                    ; preds = %354, %334
  %356 = load i32, i32* %12, align 4, !dbg !2884, !tbaa !1089
  call void @llvm.dbg.value(metadata i32 %356, i64 0, metadata !2477, metadata !694), !dbg !2850
  %357 = call i32 @iswprint(i32 %356) #10, !dbg !2886
  %358 = icmp eq i32 %357, 0, !dbg !2886
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2459, metadata !694), !dbg !2833
  %359 = select i1 %358, i8 0, i8 %316, !dbg !2887
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !2459, metadata !694), !dbg !2833
  %360 = add i64 %320, %315, !dbg !2888
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !2456, metadata !694), !dbg !2827
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !2459, metadata !694), !dbg !2833
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !2456, metadata !694), !dbg !2827
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10, !dbg !2883
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !2460, metadata !1205), !dbg !2849
  %361 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #13, !dbg !2889
  %362 = icmp eq i32 %361, 0, !dbg !2890
  br i1 %362, label %314, label %363, !dbg !2891, !llvm.loop !2840

; <label>:363:                                    ; preds = %355
  br label %364, !dbg !2893

; <label>:364:                                    ; preds = %363, %351
  %365 = phi i8 [ %353, %351 ], [ %359, %363 ]
  %366 = phi i64 [ %352, %351 ], [ %360, %363 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #10, !dbg !2893
  br label %368

; <label>:367:                                    ; preds = %338, %338, %338, %338, %338
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !2459, metadata !694), !dbg !2833
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !2456, metadata !694), !dbg !2827
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #10, !dbg !2883
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #10, !dbg !2893
  br label %649

; <label>:368:                                    ; preds = %364, %299
  %369 = phi i64 [ %156, %299 ], [ %313, %364 ]
  %370 = phi i64 [ 1, %299 ], [ %366, %364 ]
  %371 = phi i8 [ %307, %299 ], [ %365, %364 ]
  call void @llvm.dbg.value(metadata i8 %371, i64 0, metadata !2459, metadata !694), !dbg !2833
  call void @llvm.dbg.value(metadata i64 %370, i64 0, metadata !2456, metadata !694), !dbg !2827
  call void @llvm.dbg.value(metadata i64 %369, i64 0, metadata !2431, metadata !694), !dbg !2494
  %372 = and i8 %371, 1, !dbg !2894
  %373 = icmp ne i8 %372, 0, !dbg !2894
  call void @llvm.dbg.value(metadata i8 %372, i64 0, metadata !2455, metadata !694), !dbg !2589
  %374 = icmp ult i64 %370, 2, !dbg !2895
  %375 = or i1 %373, %113, !dbg !2896
  %376 = and i1 %374, %375, !dbg !2898
  br i1 %376, label %476, label %377, !dbg !2898

; <label>:377:                                    ; preds = %368
  %378 = add i64 %370, %124, !dbg !2899
  call void @llvm.dbg.value(metadata i64 %378, i64 0, metadata !2488, metadata !694), !dbg !2900
  br label %379, !dbg !2901

; <label>:379:                                    ; preds = %472, %377
  %380 = phi i64 [ %124, %377 ], [ %447, %472 ]
  %381 = phi i64 [ %125, %377 ], [ %473, %472 ]
  %382 = phi i8 [ %128, %377 ], [ %468, %472 ]
  %383 = phi i8 [ %159, %377 ], [ %475, %472 ]
  %384 = phi i8 [ %157, %377 ], [ %445, %472 ]
  %385 = phi i8 [ 0, %377 ], [ %446, %472 ]
  call void @llvm.dbg.value(metadata i8 %385, i64 0, metadata !2454, metadata !694), !dbg !2588
  call void @llvm.dbg.value(metadata i8 %384, i64 0, metadata !2453, metadata !694), !dbg !2587
  call void @llvm.dbg.value(metadata i8 %383, i64 0, metadata !2448, metadata !694), !dbg !2606
  call void @llvm.dbg.value(metadata i8 %382, i64 0, metadata !2445, metadata !694), !dbg !2508
  call void @llvm.dbg.value(metadata i64 %381, i64 0, metadata !2438, metadata !694), !dbg !2500
  call void @llvm.dbg.value(metadata i64 %380, i64 0, metadata !2437, metadata !694), !dbg !2575
  br i1 %375, label %432, label %386, !dbg !2902

; <label>:386:                                    ; preds = %379
  br i1 %112, label %387, label %643, !dbg !2907

; <label>:387:                                    ; preds = %386
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2454, metadata !694), !dbg !2588
  %388 = and i8 %382, 1, !dbg !2911
  %389 = icmp eq i8 %388, 0, !dbg !2911
  %390 = and i1 %114, %389, !dbg !2914
  br i1 %390, label %391, label %407, !dbg !2914

; <label>:391:                                    ; preds = %387
  %392 = icmp ult i64 %381, %131, !dbg !2916
  br i1 %392, label %393, label %395, !dbg !2921

; <label>:393:                                    ; preds = %391
  %394 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !2923
  store i8 39, i8* %394, align 1, !dbg !2923, !tbaa !975
  br label %395, !dbg !2923

; <label>:395:                                    ; preds = %393, %391
  %396 = add i64 %381, 1, !dbg !2925
  call void @llvm.dbg.value(metadata i64 %396, i64 0, metadata !2438, metadata !694), !dbg !2500
  %397 = icmp ult i64 %396, %131, !dbg !2927
  br i1 %397, label %398, label %400, !dbg !2931

; <label>:398:                                    ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !2933
  store i8 36, i8* %399, align 1, !dbg !2933, !tbaa !975
  br label %400, !dbg !2933

; <label>:400:                                    ; preds = %398, %395
  %401 = add i64 %381, 2, !dbg !2935
  call void @llvm.dbg.value(metadata i64 %401, i64 0, metadata !2438, metadata !694), !dbg !2500
  %402 = icmp ult i64 %401, %131, !dbg !2937
  br i1 %402, label %403, label %405, !dbg !2941

; <label>:403:                                    ; preds = %400
  %404 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !2943
  store i8 39, i8* %404, align 1, !dbg !2943, !tbaa !975
  br label %405, !dbg !2943

; <label>:405:                                    ; preds = %403, %400
  %406 = add i64 %381, 3, !dbg !2945
  call void @llvm.dbg.value(metadata i64 %406, i64 0, metadata !2438, metadata !694), !dbg !2500
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2445, metadata !694), !dbg !2508
  br label %407, !dbg !2947

; <label>:407:                                    ; preds = %387, %405
  %408 = phi i64 [ %406, %405 ], [ %381, %387 ]
  %409 = phi i8 [ 1, %405 ], [ %382, %387 ]
  call void @llvm.dbg.value(metadata i8 %409, i64 0, metadata !2445, metadata !694), !dbg !2508
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !2438, metadata !694), !dbg !2500
  %410 = icmp ult i64 %408, %131, !dbg !2949
  br i1 %410, label %411, label %413, !dbg !2953

; <label>:411:                                    ; preds = %407
  %412 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !2955
  store i8 92, i8* %412, align 1, !dbg !2955, !tbaa !975
  br label %413, !dbg !2955

; <label>:413:                                    ; preds = %411, %407
  %414 = add i64 %408, 1, !dbg !2957
  call void @llvm.dbg.value(metadata i64 %414, i64 0, metadata !2438, metadata !694), !dbg !2500
  %415 = icmp ult i64 %414, %131, !dbg !2959
  br i1 %415, label %416, label %420, !dbg !2963

; <label>:416:                                    ; preds = %413
  %417 = lshr i8 %383, 6, !dbg !2965
  %418 = or i8 %417, 48, !dbg !2965
  %419 = getelementptr inbounds i8, i8* %0, i64 %414, !dbg !2965
  store i8 %418, i8* %419, align 1, !dbg !2965, !tbaa !975
  br label %420, !dbg !2965

; <label>:420:                                    ; preds = %416, %413
  %421 = add i64 %408, 2, !dbg !2967
  call void @llvm.dbg.value(metadata i64 %421, i64 0, metadata !2438, metadata !694), !dbg !2500
  %422 = icmp ult i64 %421, %131, !dbg !2969
  br i1 %422, label %423, label %428, !dbg !2973

; <label>:423:                                    ; preds = %420
  %424 = lshr i8 %383, 3, !dbg !2975
  %425 = and i8 %424, 7, !dbg !2975
  %426 = or i8 %425, 48, !dbg !2975
  %427 = getelementptr inbounds i8, i8* %0, i64 %421, !dbg !2975
  store i8 %426, i8* %427, align 1, !dbg !2975, !tbaa !975
  br label %428, !dbg !2975

; <label>:428:                                    ; preds = %423, %420
  %429 = add i64 %408, 3, !dbg !2977
  call void @llvm.dbg.value(metadata i64 %429, i64 0, metadata !2438, metadata !694), !dbg !2500
  %430 = and i8 %383, 7, !dbg !2979
  %431 = or i8 %430, 48, !dbg !2980
  call void @llvm.dbg.value(metadata i8 %431, i64 0, metadata !2448, metadata !694), !dbg !2606
  br label %441, !dbg !2981

; <label>:432:                                    ; preds = %379
  %433 = and i8 %384, 1, !dbg !2982
  %434 = icmp eq i8 %433, 0, !dbg !2982
  br i1 %434, label %441, label %435, !dbg !2984

; <label>:435:                                    ; preds = %432
  %436 = icmp ult i64 %381, %131, !dbg !2985
  br i1 %436, label %437, label %439, !dbg !2990

; <label>:437:                                    ; preds = %435
  %438 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !2992
  store i8 92, i8* %438, align 1, !dbg !2992, !tbaa !975
  br label %439, !dbg !2992

; <label>:439:                                    ; preds = %437, %435
  %440 = add i64 %381, 1, !dbg !2994
  call void @llvm.dbg.value(metadata i64 %440, i64 0, metadata !2438, metadata !694), !dbg !2500
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2453, metadata !694), !dbg !2587
  br label %441, !dbg !2996

; <label>:441:                                    ; preds = %432, %439, %428
  %442 = phi i64 [ %440, %439 ], [ %381, %432 ], [ %429, %428 ]
  %443 = phi i8 [ %382, %439 ], [ %382, %432 ], [ %409, %428 ]
  %444 = phi i8 [ %383, %439 ], [ %383, %432 ], [ %431, %428 ]
  %445 = phi i8 [ 0, %439 ], [ %384, %432 ], [ %384, %428 ]
  %446 = phi i8 [ %385, %439 ], [ %385, %432 ], [ 1, %428 ]
  call void @llvm.dbg.value(metadata i8 %446, i64 0, metadata !2454, metadata !694), !dbg !2588
  call void @llvm.dbg.value(metadata i8 %445, i64 0, metadata !2453, metadata !694), !dbg !2587
  call void @llvm.dbg.value(metadata i8 %444, i64 0, metadata !2448, metadata !694), !dbg !2606
  call void @llvm.dbg.value(metadata i8 %443, i64 0, metadata !2445, metadata !694), !dbg !2508
  call void @llvm.dbg.value(metadata i64 %442, i64 0, metadata !2438, metadata !694), !dbg !2500
  %447 = add i64 %380, 1, !dbg !2997
  %448 = icmp ugt i64 %378, %447, !dbg !2999
  br i1 %448, label %449, label %541, !dbg !3000

; <label>:449:                                    ; preds = %441
  %450 = and i8 %443, 1, !dbg !3001
  %451 = icmp ne i8 %450, 0, !dbg !3001
  %452 = and i8 %446, 1, !dbg !3005
  %453 = icmp eq i8 %452, 0, !dbg !3005
  %454 = and i1 %451, %453, !dbg !3001
  br i1 %454, label %455, label %466, !dbg !3001

; <label>:455:                                    ; preds = %449
  %456 = icmp ult i64 %442, %131, !dbg !3007
  br i1 %456, label %457, label %459, !dbg !3012

; <label>:457:                                    ; preds = %455
  %458 = getelementptr inbounds i8, i8* %0, i64 %442, !dbg !3014
  store i8 39, i8* %458, align 1, !dbg !3014, !tbaa !975
  br label %459, !dbg !3014

; <label>:459:                                    ; preds = %457, %455
  %460 = add i64 %442, 1, !dbg !3016
  call void @llvm.dbg.value(metadata i64 %460, i64 0, metadata !2438, metadata !694), !dbg !2500
  %461 = icmp ult i64 %460, %131, !dbg !3018
  br i1 %461, label %462, label %464, !dbg !3022

; <label>:462:                                    ; preds = %459
  %463 = getelementptr inbounds i8, i8* %0, i64 %460, !dbg !3024
  store i8 39, i8* %463, align 1, !dbg !3024, !tbaa !975
  br label %464, !dbg !3024

; <label>:464:                                    ; preds = %462, %459
  %465 = add i64 %442, 2, !dbg !3026
  call void @llvm.dbg.value(metadata i64 %465, i64 0, metadata !2438, metadata !694), !dbg !2500
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2445, metadata !694), !dbg !2508
  br label %466, !dbg !3028

; <label>:466:                                    ; preds = %449, %464
  %467 = phi i64 [ %465, %464 ], [ %442, %449 ]
  %468 = phi i8 [ 0, %464 ], [ %443, %449 ]
  call void @llvm.dbg.value(metadata i8 %468, i64 0, metadata !2445, metadata !694), !dbg !2508
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !2438, metadata !694), !dbg !2500
  %469 = icmp ult i64 %467, %131, !dbg !3030
  br i1 %469, label %470, label %472, !dbg !3034

; <label>:470:                                    ; preds = %466
  %471 = getelementptr inbounds i8, i8* %0, i64 %467, !dbg !3036
  store i8 %444, i8* %471, align 1, !dbg !3036, !tbaa !975
  br label %472, !dbg !3036

; <label>:472:                                    ; preds = %470, %466
  %473 = add i64 %467, 1, !dbg !3038
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !2438, metadata !694), !dbg !2500
  call void @llvm.dbg.value(metadata i64 %447, i64 0, metadata !2437, metadata !694), !dbg !2575
  %474 = getelementptr inbounds i8, i8* %2, i64 %447, !dbg !3040
  %475 = load i8, i8* %474, align 1, !dbg !3040, !tbaa !975
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !2448, metadata !694), !dbg !2606
  br label %379, !dbg !3041, !llvm.loop !3043

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
  call void @llvm.dbg.value(metadata i64 %486, i64 0, metadata !2429, metadata !694), !dbg !2492
  call void @llvm.dbg.value(metadata i8 %485, i64 0, metadata !2455, metadata !694), !dbg !2589
  call void @llvm.dbg.value(metadata i8 %484, i64 0, metadata !2454, metadata !694), !dbg !2588
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !2453, metadata !694), !dbg !2587
  call void @llvm.dbg.value(metadata i8 %483, i64 0, metadata !2448, metadata !694), !dbg !2606
  call void @llvm.dbg.value(metadata i8 %482, i64 0, metadata !2446, metadata !694), !dbg !2509
  call void @llvm.dbg.value(metadata i8 %481, i64 0, metadata !2445, metadata !694), !dbg !2508
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !2431, metadata !694), !dbg !2494
  call void @llvm.dbg.value(metadata i64 %479, i64 0, metadata !2439, metadata !694), !dbg !2501
  call void @llvm.dbg.value(metadata i64 %478, i64 0, metadata !2438, metadata !694), !dbg !2500
  call void @llvm.dbg.value(metadata i64 %477, i64 0, metadata !2437, metadata !694), !dbg !2575
  br i1 %107, label %488, label %487, !dbg !3046

; <label>:487:                                    ; preds = %476
  br i1 %117, label %489, label %501, !dbg !3048

; <label>:488:                                    ; preds = %476
  br i1 %20, label %501, label %489, !dbg !3049

; <label>:489:                                    ; preds = %488, %487
  %490 = lshr i8 %483, 5, !dbg !3050
  %491 = zext i8 %490 to i64, !dbg !3050
  %492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !3052
  %493 = load i32, i32* %492, align 4, !dbg !3052, !tbaa !1089
  %494 = and i8 %483, 31, !dbg !3053
  %495 = zext i8 %494 to i32, !dbg !3054
  %496 = shl i32 1, %495, !dbg !3055
  %497 = and i32 %493, %496, !dbg !3055
  %498 = icmp eq i32 %497, 0, !dbg !3055
  %499 = icmp eq i8 %157, 0, !dbg !3056
  %500 = and i1 %499, %498, !dbg !3057
  br i1 %500, label %542, label %503, !dbg !3057

; <label>:501:                                    ; preds = %488, %487
  %502 = icmp eq i8 %157, 0, !dbg !3056
  br i1 %502, label %542, label %503, !dbg !3058

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
  call void @llvm.dbg.value(metadata i64 %512, i64 0, metadata !2429, metadata !694), !dbg !2492
  call void @llvm.dbg.value(metadata i8 %511, i64 0, metadata !2455, metadata !694), !dbg !2589
  call void @llvm.dbg.value(metadata i8 %510, i64 0, metadata !2448, metadata !694), !dbg !2606
  call void @llvm.dbg.value(metadata i8 %509, i64 0, metadata !2446, metadata !694), !dbg !2509
  call void @llvm.dbg.value(metadata i8 %508, i64 0, metadata !2445, metadata !694), !dbg !2508
  call void @llvm.dbg.value(metadata i64 %507, i64 0, metadata !2431, metadata !694), !dbg !2494
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !2439, metadata !694), !dbg !2501
  call void @llvm.dbg.value(metadata i64 %505, i64 0, metadata !2438, metadata !694), !dbg !2500
  call void @llvm.dbg.value(metadata i64 %504, i64 0, metadata !2437, metadata !694), !dbg !2575
  br i1 %112, label %513, label %644, !dbg !3060

; <label>:513:                                    ; preds = %503
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2454, metadata !694), !dbg !2588
  %514 = and i8 %508, 1, !dbg !3063
  %515 = icmp eq i8 %514, 0, !dbg !3063
  %516 = and i1 %114, %515, !dbg !3066
  br i1 %516, label %517, label %533, !dbg !3066

; <label>:517:                                    ; preds = %513
  %518 = icmp ult i64 %505, %512, !dbg !3068
  br i1 %518, label %519, label %521, !dbg !3073

; <label>:519:                                    ; preds = %517
  %520 = getelementptr inbounds i8, i8* %0, i64 %505, !dbg !3075
  store i8 39, i8* %520, align 1, !dbg !3075, !tbaa !975
  br label %521, !dbg !3075

; <label>:521:                                    ; preds = %519, %517
  %522 = add i64 %505, 1, !dbg !3077
  call void @llvm.dbg.value(metadata i64 %522, i64 0, metadata !2438, metadata !694), !dbg !2500
  %523 = icmp ult i64 %522, %512, !dbg !3079
  br i1 %523, label %524, label %526, !dbg !3083

; <label>:524:                                    ; preds = %521
  %525 = getelementptr inbounds i8, i8* %0, i64 %522, !dbg !3085
  store i8 36, i8* %525, align 1, !dbg !3085, !tbaa !975
  br label %526, !dbg !3085

; <label>:526:                                    ; preds = %524, %521
  %527 = add i64 %505, 2, !dbg !3087
  call void @llvm.dbg.value(metadata i64 %527, i64 0, metadata !2438, metadata !694), !dbg !2500
  %528 = icmp ult i64 %527, %512, !dbg !3089
  br i1 %528, label %529, label %531, !dbg !3093

; <label>:529:                                    ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !3095
  store i8 39, i8* %530, align 1, !dbg !3095, !tbaa !975
  br label %531, !dbg !3095

; <label>:531:                                    ; preds = %529, %526
  %532 = add i64 %505, 3, !dbg !3097
  call void @llvm.dbg.value(metadata i64 %532, i64 0, metadata !2438, metadata !694), !dbg !2500
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2445, metadata !694), !dbg !2508
  br label %533, !dbg !3099

; <label>:533:                                    ; preds = %513, %531
  %534 = phi i64 [ %532, %531 ], [ %505, %513 ]
  %535 = phi i8 [ 1, %531 ], [ %508, %513 ]
  call void @llvm.dbg.value(metadata i8 %535, i64 0, metadata !2445, metadata !694), !dbg !2508
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !2438, metadata !694), !dbg !2500
  %536 = icmp ult i64 %534, %512, !dbg !3101
  br i1 %536, label %537, label %539, !dbg !3105

; <label>:537:                                    ; preds = %533
  %538 = getelementptr inbounds i8, i8* %0, i64 %534, !dbg !3107
  store i8 92, i8* %538, align 1, !dbg !3107, !tbaa !975
  br label %539, !dbg !3107

; <label>:539:                                    ; preds = %533, %537
  %540 = add i64 %534, 1, !dbg !3109
  call void @llvm.dbg.value(metadata i64 %540, i64 0, metadata !2438, metadata !694), !dbg !2500
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !2429, metadata !694), !dbg !2492
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !2455, metadata !694), !dbg !2589
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !2454, metadata !694), !dbg !2588
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !2448, metadata !694), !dbg !2606
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !2446, metadata !694), !dbg !2509
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !2445, metadata !694), !dbg !2508
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !2431, metadata !694), !dbg !2494
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !2439, metadata !694), !dbg !2501
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !2438, metadata !694), !dbg !2500
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !2437, metadata !694), !dbg !2575
  br label %569, !dbg !3111

; <label>:541:                                    ; preds = %441
  br label %542, !dbg !2492

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
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !2429, metadata !694), !dbg !2492
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !2455, metadata !694), !dbg !2589
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !2454, metadata !694), !dbg !2588
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !2448, metadata !694), !dbg !2606
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !2446, metadata !694), !dbg !2509
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !2445, metadata !694), !dbg !2508
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !2431, metadata !694), !dbg !2494
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !2439, metadata !694), !dbg !2501
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !2438, metadata !694), !dbg !2500
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !2437, metadata !694), !dbg !2575
  %553 = and i8 %547, 1, !dbg !3111
  %554 = icmp ne i8 %553, 0, !dbg !3111
  %555 = and i8 %550, 1, !dbg !3115
  %556 = icmp eq i8 %555, 0, !dbg !3115
  %557 = and i1 %554, %556, !dbg !3111
  br i1 %557, label %558, label %569, !dbg !3111

; <label>:558:                                    ; preds = %542
  %559 = icmp ult i64 %544, %552, !dbg !3117
  br i1 %559, label %560, label %562, !dbg !3122

; <label>:560:                                    ; preds = %558
  %561 = getelementptr inbounds i8, i8* %0, i64 %544, !dbg !3124
  store i8 39, i8* %561, align 1, !dbg !3124, !tbaa !975
  br label %562, !dbg !3124

; <label>:562:                                    ; preds = %560, %558
  %563 = add i64 %544, 1, !dbg !3126
  call void @llvm.dbg.value(metadata i64 %563, i64 0, metadata !2438, metadata !694), !dbg !2500
  %564 = icmp ult i64 %563, %552, !dbg !3128
  br i1 %564, label %565, label %567, !dbg !3132

; <label>:565:                                    ; preds = %562
  %566 = getelementptr inbounds i8, i8* %0, i64 %563, !dbg !3134
  store i8 39, i8* %566, align 1, !dbg !3134, !tbaa !975
  br label %567, !dbg !3134

; <label>:567:                                    ; preds = %565, %562
  %568 = add i64 %544, 2, !dbg !3136
  call void @llvm.dbg.value(metadata i64 %568, i64 0, metadata !2438, metadata !694), !dbg !2500
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2445, metadata !694), !dbg !2508
  br label %569, !dbg !3138

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
  call void @llvm.dbg.value(metadata i8 %578, i64 0, metadata !2445, metadata !694), !dbg !2508
  call void @llvm.dbg.value(metadata i64 %577, i64 0, metadata !2438, metadata !694), !dbg !2500
  %579 = icmp ult i64 %577, %570, !dbg !3140
  br i1 %579, label %580, label %582, !dbg !3144

; <label>:580:                                    ; preds = %569
  %581 = getelementptr inbounds i8, i8* %0, i64 %577, !dbg !3146
  store i8 %572, i8* %581, align 1, !dbg !3146, !tbaa !975
  br label %582, !dbg !3146

; <label>:582:                                    ; preds = %580, %569
  %583 = add i64 %577, 1, !dbg !3148
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !2438, metadata !694), !dbg !2500
  %584 = and i8 %571, 1, !dbg !3150
  %585 = icmp eq i8 %584, 0, !dbg !3150
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2447, metadata !694), !dbg !2510
  %586 = select i1 %585, i8 0, i8 %130, !dbg !3152
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !2447, metadata !694), !dbg !2510
  br label %587, !dbg !3153

; <label>:587:                                    ; preds = %582, %209
  %588 = phi i64 [ %124, %209 ], [ %576, %582 ]
  %589 = phi i64 [ %125, %209 ], [ %583, %582 ]
  %590 = phi i64 [ %126, %209 ], [ %575, %582 ]
  %591 = phi i64 [ %156, %209 ], [ %574, %582 ]
  %592 = phi i8 [ %128, %209 ], [ %578, %582 ]
  %593 = phi i8 [ %129, %209 ], [ %573, %582 ]
  %594 = phi i8 [ %130, %209 ], [ %586, %582 ]
  %595 = phi i64 [ %131, %209 ], [ %570, %582 ]
  %596 = add i64 %588, 1, !dbg !3154
  call void @llvm.dbg.value(metadata i64 %596, i64 0, metadata !2437, metadata !694), !dbg !2575
  br label %123, !dbg !3156, !llvm.loop !3157

; <label>:597:                                    ; preds = %133, %135
  %598 = phi i64 [ %124, %133 ], [ -1, %135 ]
  %599 = icmp eq i64 %125, 0, !dbg !3160
  %600 = and i1 %114, %599, !dbg !3162
  %601 = xor i1 %600, true, !dbg !3162
  %602 = or i1 %112, %601, !dbg !3162
  br i1 %602, label %603, label %648, !dbg !3162

; <label>:603:                                    ; preds = %597
  %604 = and i1 %114, %112, !dbg !3163
  %605 = xor i1 %604, true, !dbg !3163
  %606 = and i8 %129, 1, !dbg !3165
  %607 = icmp eq i8 %606, 0, !dbg !3165
  %608 = or i1 %607, %605, !dbg !3163
  br i1 %608, label %618, label %609, !dbg !3163

; <label>:609:                                    ; preds = %603
  %610 = and i8 %130, 1, !dbg !3167
  %611 = icmp eq i8 %610, 0, !dbg !3167
  br i1 %611, label %614, label %612, !dbg !3170

; <label>:612:                                    ; preds = %609
  %613 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %126, i8* %2, i64 %598, i32 5, i32 %5, i32* %6, i8* %97, i8* %98), !dbg !3171
  br label %659, !dbg !3172

; <label>:614:                                    ; preds = %609
  %615 = icmp eq i64 %131, 0, !dbg !3173
  %616 = icmp ne i64 %126, 0, !dbg !3175
  %617 = and i1 %616, %615, !dbg !3177
  br i1 %617, label %27, label %618, !dbg !3177

; <label>:618:                                    ; preds = %603, %614
  %619 = icmp ne i8* %100, null, !dbg !3178
  %620 = and i1 %619, %112, !dbg !3180
  br i1 %620, label %621, label %638, !dbg !3180

; <label>:621:                                    ; preds = %618
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !2440, metadata !694), !dbg !2502
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !2438, metadata !694), !dbg !2500
  %622 = load i8, i8* %100, align 1, !dbg !3181, !tbaa !975
  %623 = icmp eq i8 %622, 0, !dbg !3185
  br i1 %623, label %638, label %624, !dbg !3185

; <label>:624:                                    ; preds = %621
  br label %625, !dbg !3187

; <label>:625:                                    ; preds = %624, %632
  %626 = phi i8 [ %635, %632 ], [ %622, %624 ]
  %627 = phi i8* [ %634, %632 ], [ %100, %624 ]
  %628 = phi i64 [ %633, %632 ], [ %125, %624 ]
  %629 = icmp ult i64 %628, %131, !dbg !3187
  br i1 %629, label %630, label %632, !dbg !3191

; <label>:630:                                    ; preds = %625
  %631 = getelementptr inbounds i8, i8* %0, i64 %628, !dbg !3193
  store i8 %626, i8* %631, align 1, !dbg !3193, !tbaa !975
  br label %632, !dbg !3193

; <label>:632:                                    ; preds = %630, %625
  %633 = add i64 %628, 1, !dbg !3195
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !2438, metadata !694), !dbg !2500
  %634 = getelementptr inbounds i8, i8* %627, i64 1, !dbg !3197
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !2440, metadata !694), !dbg !2502
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !2440, metadata !694), !dbg !2502
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !2438, metadata !694), !dbg !2500
  %635 = load i8, i8* %634, align 1, !dbg !3181, !tbaa !975
  %636 = icmp eq i8 %635, 0, !dbg !3185
  br i1 %636, label %637, label %625, !dbg !3185, !llvm.loop !3199

; <label>:637:                                    ; preds = %632
  br label %638, !dbg !2500

; <label>:638:                                    ; preds = %637, %621, %618
  %639 = phi i64 [ %125, %618 ], [ %125, %621 ], [ %633, %637 ]
  call void @llvm.dbg.value(metadata i64 %639, i64 0, metadata !2438, metadata !694), !dbg !2500
  %640 = icmp ult i64 %639, %131, !dbg !3202
  br i1 %640, label %641, label %659, !dbg !3204

; <label>:641:                                    ; preds = %638
  %642 = getelementptr inbounds i8, i8* %0, i64 %639, !dbg !3205
  store i8 0, i8* %642, align 1, !dbg !3206, !tbaa !975
  br label %659, !dbg !3205

; <label>:643:                                    ; preds = %386
  br label %649, !dbg !2492

; <label>:644:                                    ; preds = %148, %161, %211, %225, %253, %255, %273, %276, %503
  %645 = phi i32 [ %96, %148 ], [ %96, %161 ], [ 2, %211 ], [ 5, %225 ], [ 2, %253 ], [ 2, %255 ], [ 2, %273 ], [ 2, %276 ], [ %96, %503 ]
  %646 = phi i64 [ %146, %148 ], [ %156, %161 ], [ %156, %211 ], [ %156, %225 ], [ %156, %253 ], [ %156, %255 ], [ %156, %273 ], [ %156, %276 ], [ %507, %503 ]
  %647 = phi i64 [ %131, %148 ], [ %131, %161 ], [ %131, %211 ], [ %131, %225 ], [ %131, %253 ], [ %131, %255 ], [ %131, %273 ], [ %131, %276 ], [ %512, %503 ]
  br label %649, !dbg !2492

; <label>:648:                                    ; preds = %597
  br label %649, !dbg !2492

; <label>:649:                                    ; preds = %648, %644, %643, %367
  %650 = phi i32 [ 2, %367 ], [ %96, %643 ], [ %645, %644 ], [ %96, %648 ]
  %651 = phi i64 [ %313, %367 ], [ %369, %643 ], [ %646, %644 ], [ %598, %648 ]
  %652 = phi i64 [ %131, %367 ], [ %131, %643 ], [ %647, %644 ], [ %131, %648 ]
  call void @llvm.dbg.value(metadata i64 %652, i64 0, metadata !2429, metadata !694), !dbg !2492
  call void @llvm.dbg.value(metadata i64 %651, i64 0, metadata !2431, metadata !694), !dbg !2494
  %653 = icmp ne i32 %650, 2, !dbg !3207
  %654 = icmp eq i8 %104, 0, !dbg !3209
  %655 = or i1 %653, %654, !dbg !3211
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !2432, metadata !694), !dbg !2495
  %656 = select i1 %655, i32 %650, i32 4, !dbg !3211
  call void @llvm.dbg.value(metadata i32 %656, i64 0, metadata !2432, metadata !694), !dbg !2495
  %657 = and i32 %5, -3, !dbg !3212
  %658 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %652, i8* %2, i64 %651, i32 %656, i32 %657, i32* null, i8* %97, i8* %98), !dbg !3213
  br label %659, !dbg !3214

; <label>:659:                                    ; preds = %638, %641, %649, %612
  %660 = phi i64 [ %658, %649 ], [ %613, %612 ], [ %639, %641 ], [ %639, %638 ]
  ret i64 %660, !dbg !3215
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !3216 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3220, metadata !694), !dbg !3224
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3221, metadata !694), !dbg !3225
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #10, !dbg !3226
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3222, metadata !694), !dbg !3227
  %4 = icmp eq i8* %3, %0, !dbg !3228
  br i1 %4, label %5, label %75, !dbg !3230

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #10, !dbg !3231
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3223, metadata !694), !dbg !3232
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3233, metadata !694), !dbg !3249
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3247, metadata !694), !dbg !3252
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3248, metadata !694), !dbg !3253
  %7 = load i8, i8* %6, align 1, !tbaa !975
  %8 = sext i8 %7 to i32
  %9 = and i32 %8, -33, !dbg !3254
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !3254

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3257, metadata !694), !dbg !3271
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3269, metadata !694), !dbg !3275
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3270, metadata !694), !dbg !3276
  %11 = getelementptr inbounds i8, i8* %6, i64 1
  %12 = load i8, i8* %11, align 1, !tbaa !975
  %13 = sext i8 %12 to i32
  %14 = and i32 %13, -33, !dbg !3277
  %15 = icmp eq i32 %14, 84, !dbg !3277
  br i1 %15, label %16, label %72, !dbg !3277

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3280, metadata !694), !dbg !3293
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3291, metadata !694), !dbg !3297
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3292, metadata !694), !dbg !3298
  %17 = getelementptr inbounds i8, i8* %6, i64 2
  %18 = load i8, i8* %17, align 1, !tbaa !975
  %19 = sext i8 %18 to i32
  %20 = and i32 %19, -33, !dbg !3299
  %21 = icmp eq i32 %20, 70, !dbg !3299
  br i1 %21, label %22, label %72, !dbg !3299

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3302, metadata !694), !dbg !3314
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3312, metadata !694), !dbg !3318
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3313, metadata !694), !dbg !3319
  %23 = getelementptr inbounds i8, i8* %6, i64 3
  %24 = load i8, i8* %23, align 1, !tbaa !975
  %25 = icmp eq i8 %24, 45, !dbg !3320
  br i1 %25, label %26, label %72, !dbg !3323

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3325, metadata !694), !dbg !3336
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3334, metadata !694), !dbg !3340
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3335, metadata !694), !dbg !3341
  %27 = getelementptr inbounds i8, i8* %6, i64 4
  %28 = load i8, i8* %27, align 1, !tbaa !975
  %29 = icmp eq i8 %28, 56, !dbg !3342
  br i1 %29, label %30, label %72, !dbg !3345

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3347, metadata !694), !dbg !3357
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3355, metadata !694), !dbg !3361
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3356, metadata !694), !dbg !3362
  %31 = getelementptr inbounds i8, i8* %6, i64 5
  %32 = load i8, i8* %31, align 1, !tbaa !975
  %33 = icmp eq i8 %32, 0, !dbg !3363
  br i1 %33, label %34, label %72, !dbg !3366

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !3368, !tbaa !975
  %36 = icmp eq i8 %35, 96, !dbg !3369
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.77, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.78, i64 0, i64 0), !dbg !3368
  br label %75, !dbg !3370

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3257, metadata !694), !dbg !3371
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3269, metadata !694), !dbg !3375
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3270, metadata !694), !dbg !3376
  %39 = getelementptr inbounds i8, i8* %6, i64 1
  %40 = load i8, i8* %39, align 1, !tbaa !975
  %41 = sext i8 %40 to i32
  %42 = and i32 %41, -33, !dbg !3377
  %43 = icmp eq i32 %42, 66, !dbg !3377
  br i1 %43, label %44, label %72, !dbg !3377

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3280, metadata !694), !dbg !3378
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3291, metadata !694), !dbg !3380
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3292, metadata !694), !dbg !3381
  %45 = getelementptr inbounds i8, i8* %6, i64 2
  %46 = load i8, i8* %45, align 1, !tbaa !975
  %47 = icmp eq i8 %46, 49, !dbg !3382
  br i1 %47, label %48, label %72, !dbg !3384

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3302, metadata !694), !dbg !3386
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3312, metadata !694), !dbg !3388
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3313, metadata !694), !dbg !3389
  %49 = getelementptr inbounds i8, i8* %6, i64 3
  %50 = load i8, i8* %49, align 1, !tbaa !975
  %51 = icmp eq i8 %50, 56, !dbg !3390
  br i1 %51, label %52, label %72, !dbg !3391

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3325, metadata !694), !dbg !3392
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3334, metadata !694), !dbg !3394
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3335, metadata !694), !dbg !3395
  %53 = getelementptr inbounds i8, i8* %6, i64 4
  %54 = load i8, i8* %53, align 1, !tbaa !975
  %55 = icmp eq i8 %54, 48, !dbg !3396
  br i1 %55, label %56, label %72, !dbg !3397

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3347, metadata !694), !dbg !3398
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3355, metadata !694), !dbg !3400
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3356, metadata !694), !dbg !3401
  %57 = getelementptr inbounds i8, i8* %6, i64 5
  %58 = load i8, i8* %57, align 1, !tbaa !975
  %59 = icmp eq i8 %58, 51, !dbg !3402
  br i1 %59, label %60, label %72, !dbg !3403

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3404, metadata !694), !dbg !3413
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3411, metadata !694), !dbg !3417
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3412, metadata !694), !dbg !3418
  %61 = getelementptr inbounds i8, i8* %6, i64 6
  %62 = load i8, i8* %61, align 1, !tbaa !975
  %63 = icmp eq i8 %62, 48, !dbg !3419
  br i1 %63, label %64, label %72, !dbg !3422

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3424, metadata !694), !dbg !3432
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3430, metadata !694), !dbg !3436
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3431, metadata !694), !dbg !3437
  %65 = getelementptr inbounds i8, i8* %6, i64 7
  %66 = load i8, i8* %65, align 1, !tbaa !975
  %67 = icmp eq i8 %66, 0, !dbg !3438
  br i1 %67, label %68, label %72, !dbg !3441

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !3442, !tbaa !975
  %70 = icmp eq i8 %69, 96, !dbg !3443
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.79, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.80, i64 0, i64 0), !dbg !3442
  br label %75, !dbg !3444

; <label>:72:                                     ; preds = %5, %30, %26, %22, %16, %10, %64, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !3445
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.76, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.75, i64 0, i64 0), !dbg !3446
  br label %75, !dbg !3447

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !3448
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !3449 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3453, metadata !694), !dbg !3456
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3454, metadata !694), !dbg !3457
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3455, metadata !694), !dbg !3458
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3459, metadata !694) #10, !dbg !3472
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3464, metadata !694) #10, !dbg !3474
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !3465, metadata !694) #10, !dbg !3475
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3466, metadata !694) #10, !dbg !3476
  %4 = icmp ne %struct.quoting_options* %2, null, !dbg !3477
  %5 = select i1 %4, %struct.quoting_options* %2, %struct.quoting_options* @default_quoting_options, !dbg !3477
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3467, metadata !694) #10, !dbg !3478
  %6 = tail call i32* @__errno_location() #1, !dbg !3479
  %7 = load i32, i32* %6, align 4, !dbg !3479, !tbaa !1089
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !3468, metadata !694) #10, !dbg !3480
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3481
  %9 = load i32, i32* %8, align 4, !dbg !3481, !tbaa !2360
  %10 = or i32 %9, 1, !dbg !3482
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !3469, metadata !694) #10, !dbg !3483
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3484
  %12 = load i32, i32* %11, align 8, !dbg !3484, !tbaa !2298
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !3485
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3486
  %15 = load i8*, i8** %14, align 8, !dbg !3486, !tbaa !2387
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3487
  %17 = load i8*, i8** %16, align 8, !dbg !3487, !tbaa !2390
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #10, !dbg !3488
  %19 = add i64 %18, 1, !dbg !3489
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !3470, metadata !694) #10, !dbg !3490
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !3491, metadata !694) #10, !dbg !3495
  %20 = tail call noalias i8* @xmalloc(i64 %19) #10, !dbg !3497
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !3471, metadata !694) #10, !dbg !3498
  %21 = load i32, i32* %11, align 8, !dbg !3499, !tbaa !2298
  %22 = load i8*, i8** %14, align 8, !dbg !3500, !tbaa !2387
  %23 = load i8*, i8** %16, align 8, !dbg !3501, !tbaa !2390
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #10, !dbg !3502
  store i32 %7, i32* %6, align 4, !dbg !3503, !tbaa !1089
  ret i8* %20, !dbg !3504
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !3460 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3459, metadata !694), !dbg !3505
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3464, metadata !694), !dbg !3506
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !3465, metadata !694), !dbg !3507
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3466, metadata !694), !dbg !3508
  %5 = icmp ne %struct.quoting_options* %3, null, !dbg !3509
  %6 = select i1 %5, %struct.quoting_options* %3, %struct.quoting_options* @default_quoting_options, !dbg !3509
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3467, metadata !694), !dbg !3510
  %7 = tail call i32* @__errno_location() #1, !dbg !3511
  %8 = load i32, i32* %7, align 4, !dbg !3511, !tbaa !1089
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !3468, metadata !694), !dbg !3512
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3513
  %10 = load i32, i32* %9, align 4, !dbg !3513, !tbaa !2360
  %11 = icmp ne i64* %2, null, !dbg !3514
  %12 = xor i1 %11, true, !dbg !3514
  %13 = zext i1 %12 to i32, !dbg !3514
  %14 = or i32 %10, %13, !dbg !3515
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !3469, metadata !694), !dbg !3516
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3517
  %16 = load i32, i32* %15, align 8, !dbg !3517, !tbaa !2298
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !3518
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3519
  %19 = load i8*, i8** %18, align 8, !dbg !3519, !tbaa !2387
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3520
  %21 = load i8*, i8** %20, align 8, !dbg !3520, !tbaa !2390
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !3521
  %23 = add i64 %22, 1, !dbg !3522
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !3470, metadata !694), !dbg !3523
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !3491, metadata !694) #10, !dbg !3524
  %24 = tail call noalias i8* @xmalloc(i64 %23) #10, !dbg !3526
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !3471, metadata !694), !dbg !3527
  %25 = load i32, i32* %15, align 8, !dbg !3528, !tbaa !2298
  %26 = load i8*, i8** %18, align 8, !dbg !3529, !tbaa !2387
  %27 = load i8*, i8** %20, align 8, !dbg !3530, !tbaa !2390
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !3531
  store i32 %8, i32* %7, align 4, !dbg !3532, !tbaa !1089
  br i1 %11, label %29, label %30, !dbg !3533

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !3534, !tbaa !1358
  br label %30, !dbg !3536

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !3537
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !3538 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3542, !tbaa !702
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !3540, metadata !694), !dbg !3543
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3541, metadata !694), !dbg !3544
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3541, metadata !694), !dbg !3544
  %2 = load i32, i32* @nslots, align 4, !dbg !3545, !tbaa !1089
  %3 = icmp sgt i32 %2, 1, !dbg !3549
  br i1 %3, label %4, label %14, !dbg !3550

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !3552

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !3552
  %8 = load i8*, i8** %7, align 8, !dbg !3552, !tbaa !3553
  tail call void @free(i8* %8) #10, !dbg !3555
  %9 = add nuw i64 %6, 1, !dbg !3556
  %10 = load i32, i32* @nslots, align 4, !dbg !3545, !tbaa !1089
  %11 = sext i32 %10 to i64, !dbg !3549
  %12 = icmp slt i64 %9, %11, !dbg !3549
  br i1 %12, label %5, label %13, !dbg !3550, !llvm.loop !3558

; <label>:13:                                     ; preds = %5
  br label %14, !dbg !3561

; <label>:14:                                     ; preds = %13, %0
  %15 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !3561
  %16 = load i8*, i8** %15, align 8, !dbg !3561, !tbaa !3553
  %17 = icmp eq i8* %16, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3563
  br i1 %17, label %19, label %18, !dbg !3564

; <label>:18:                                     ; preds = %14
  tail call void @free(i8* %16) #10, !dbg !3565
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !3567, !tbaa !3568
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !3569, !tbaa !3553
  br label %19, !dbg !3570

; <label>:19:                                     ; preds = %14, %18
  %20 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !3571
  br i1 %20, label %23, label %21, !dbg !3573

; <label>:21:                                     ; preds = %19
  %22 = bitcast %struct.slotvec* %1 to i8*, !dbg !3574
  tail call void @free(i8* %22) #10, !dbg !3576
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !3577, !tbaa !702
  br label %23, !dbg !3578

; <label>:23:                                     ; preds = %19, %21
  store i32 1, i32* @nslots, align 4, !dbg !3579, !tbaa !1089
  ret void, !dbg !3580
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !3581 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3585, metadata !694), !dbg !3587
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3586, metadata !694), !dbg !3588
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3589
  ret i8* %3, !dbg !3590
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !3591 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3595, metadata !694), !dbg !3609
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3596, metadata !694), !dbg !3610
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3597, metadata !694), !dbg !3611
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3598, metadata !694), !dbg !3612
  %5 = tail call i32* @__errno_location() #1, !dbg !3613
  %6 = load i32, i32* %5, align 4, !dbg !3613, !tbaa !1089
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !3599, metadata !694), !dbg !3614
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3615, !tbaa !702
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !3600, metadata !694), !dbg !3616
  %8 = icmp slt i32 %0, 0, !dbg !3617
  br i1 %8, label %9, label %10, !dbg !3619

; <label>:9:                                      ; preds = %4
  tail call void @abort() #14, !dbg !3620
  unreachable, !dbg !3620

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !3621, !tbaa !1089
  %12 = icmp sgt i32 %11, %0, !dbg !3622
  br i1 %12, label %34, label %13, !dbg !3623

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !3624
  %15 = icmp ugt i32 %0, 2147483646, !dbg !3625
  br i1 %15, label %16, label %17, !dbg !3627

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !3628
  unreachable, !dbg !3628

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !3629
  %19 = select i1 %14, i8* null, i8* %18, !dbg !3629
  %20 = add nsw i32 %0, 1, !dbg !3631
  %21 = sext i32 %20 to i64, !dbg !3632
  %22 = shl nsw i64 %21, 4, !dbg !3633
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #10, !dbg !3634
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !3634
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !3600, metadata !694), !dbg !3616
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !3635, !tbaa !702
  br i1 %14, label %25, label %26, !dbg !3636

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !3637, !tbaa.struct !3639
  br label %26, !dbg !3640

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !3641, !tbaa !1089
  %28 = sext i32 %27 to i64, !dbg !3642
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !3642
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !3643
  %31 = sub nsw i32 %20, %27, !dbg !3644
  %32 = sext i32 %31 to i64, !dbg !3645
  %33 = shl nsw i64 %32, 4, !dbg !3646
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !3643
  store i32 %20, i32* @nslots, align 4, !dbg !3647, !tbaa !1089
  br label %34, !dbg !3648

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !3600, metadata !694), !dbg !3616
  %36 = sext i32 %0 to i64, !dbg !3649
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !3650
  %38 = load i64, i64* %37, align 8, !dbg !3650, !tbaa !3568
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !3604, metadata !694), !dbg !3651
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !3652
  %40 = load i8*, i8** %39, align 8, !dbg !3652, !tbaa !3553
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !3606, metadata !694), !dbg !3653
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !3654
  %42 = load i32, i32* %41, align 4, !dbg !3654, !tbaa !2360
  %43 = or i32 %42, 1, !dbg !3655
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !3607, metadata !694), !dbg !3656
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3657
  %45 = load i32, i32* %44, align 8, !dbg !3657, !tbaa !2298
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !3658
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !3659
  %48 = load i8*, i8** %47, align 8, !dbg !3659, !tbaa !2387
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !3660
  %50 = load i8*, i8** %49, align 8, !dbg !3660, !tbaa !2390
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !3661
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !3608, metadata !694), !dbg !3662
  %52 = icmp ugt i64 %38, %51, !dbg !3663
  br i1 %52, label %63, label %53, !dbg !3665

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !3666
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !3604, metadata !694), !dbg !3651
  store i64 %54, i64* %37, align 8, !dbg !3668, !tbaa !3568
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3669
  br i1 %55, label %57, label %56, !dbg !3671

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #10, !dbg !3672
  br label %57, !dbg !3672

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !3491, metadata !694) #10, !dbg !3673
  %58 = tail call noalias i8* @xmalloc(i64 %54) #10, !dbg !3675
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !3606, metadata !694), !dbg !3653
  store i8* %58, i8** %39, align 8, !dbg !3676, !tbaa !3553
  %59 = load i32, i32* %44, align 8, !dbg !3677, !tbaa !2298
  %60 = load i8*, i8** %47, align 8, !dbg !3678, !tbaa !2387
  %61 = load i8*, i8** %49, align 8, !dbg !3679, !tbaa !2390
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !3680
  br label %63, !dbg !3681

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !3606, metadata !694), !dbg !3653
  store i32 %6, i32* %5, align 4, !dbg !3682, !tbaa !1089
  ret i8* %64, !dbg !3683
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3684 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3688, metadata !694), !dbg !3691
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3689, metadata !694), !dbg !3692
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3690, metadata !694), !dbg !3693
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3694
  ret i8* %4, !dbg !3695
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !3696 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3700, metadata !694), !dbg !3701
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3585, metadata !694) #10, !dbg !3702
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3586, metadata !694) #10, !dbg !3704
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !3705
  ret i8* %2, !dbg !3706
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !3707 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3711, metadata !694), !dbg !3713
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3712, metadata !694), !dbg !3714
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3688, metadata !694) #10, !dbg !3715
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3689, metadata !694) #10, !dbg !3717
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3690, metadata !694) #10, !dbg !3718
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !3719
  ret i8* %3, !dbg !3720
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !3721 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !3729, metadata !3735), !dbg !3736
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3725, metadata !694), !dbg !3738
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3726, metadata !694), !dbg !3739
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3727, metadata !694), !dbg !3740
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3741
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !3741
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3728, metadata !1205), !dbg !3742
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3734, metadata !694) #10, !dbg !3743
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3744
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !3744
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3729, metadata !694) #10, !dbg !3736
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3729, metadata !3745) #10, !dbg !3736
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !3736
  %8 = icmp eq i32 %1, 10, !dbg !3746
  br i1 %8, label %9, label %10, !dbg !3748

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14, !dbg !3749, !noalias !3750
  unreachable, !dbg !3749

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3729, metadata !3745) #10, !dbg !3736
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3753
  store i32 %1, i32* %11, align 8, !dbg !3753, !alias.scope !3750
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3753
  %13 = bitcast i32* %12 to i8*, !dbg !3753
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !3753
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !3754
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3728, metadata !1205), !dbg !3742
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !3755
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !3756
  ret i8* %14, !dbg !3757
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !3758 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !3729, metadata !3735), !dbg !3767
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3762, metadata !694), !dbg !3769
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3763, metadata !694), !dbg !3770
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3764, metadata !694), !dbg !3771
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3765, metadata !694), !dbg !3772
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3773
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10, !dbg !3773
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3766, metadata !1205), !dbg !3774
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3734, metadata !694) #10, !dbg !3775
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !3776
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !3776
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3729, metadata !694) #10, !dbg !3767
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3729, metadata !3745) #10, !dbg !3767
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !3767
  %9 = icmp eq i32 %1, 10, !dbg !3777
  br i1 %9, label %10, label %11, !dbg !3778

; <label>:10:                                     ; preds = %4
  tail call void @abort() #14, !dbg !3779, !noalias !3780
  unreachable, !dbg !3779

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3729, metadata !3745) #10, !dbg !3767
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3783
  store i32 %1, i32* %12, align 8, !dbg !3783, !alias.scope !3780
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3783
  %14 = bitcast i32* %13 to i8*, !dbg !3783
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #10, !dbg !3783
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !3784
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3766, metadata !1205), !dbg !3774
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !3785
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10, !dbg !3786
  ret i8* %15, !dbg !3787
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !3788 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !3729, metadata !3735), !dbg !3794
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3792, metadata !694), !dbg !3797
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3793, metadata !694), !dbg !3798
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3725, metadata !694) #10, !dbg !3799
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3726, metadata !694) #10, !dbg !3800
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3727, metadata !694) #10, !dbg !3801
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3802
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10, !dbg !3802
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3728, metadata !1205) #10, !dbg !3803
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3734, metadata !694) #10, !dbg !3804
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !3805
  call void @llvm.lifetime.start(i64 52, i8* nonnull %6), !dbg !3805
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3729, metadata !694) #10, !dbg !3794
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3729, metadata !3745) #10, !dbg !3794
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !3794
  %7 = icmp eq i32 %0, 10, !dbg !3806
  br i1 %7, label %8, label %9, !dbg !3807

; <label>:8:                                      ; preds = %2
  tail call void @abort() #14, !dbg !3808, !noalias !3809
  unreachable, !dbg !3808

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3729, metadata !3745) #10, !dbg !3794
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3812
  store i32 %0, i32* %10, align 8, !dbg !3812, !alias.scope !3809
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3812
  %12 = bitcast i32* %11 to i8*, !dbg !3812
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #10, !dbg !3812
  call void @llvm.lifetime.end(i64 52, i8* nonnull %6), !dbg !3813
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3728, metadata !1205) #10, !dbg !3803
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !3814
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10, !dbg !3815
  ret i8* %13, !dbg !3816
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3817 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !3729, metadata !3735), !dbg !3824
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3821, metadata !694), !dbg !3827
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3822, metadata !694), !dbg !3828
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3823, metadata !694), !dbg !3829
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3762, metadata !694) #10, !dbg !3830
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3763, metadata !694) #10, !dbg !3831
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3764, metadata !694) #10, !dbg !3832
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3765, metadata !694) #10, !dbg !3833
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3834
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !3834
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3766, metadata !1205) #10, !dbg !3835
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3734, metadata !694) #10, !dbg !3836
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3837
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !3837
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3729, metadata !694) #10, !dbg !3824
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3729, metadata !3745) #10, !dbg !3824
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !3824
  %8 = icmp eq i32 %0, 10, !dbg !3838
  br i1 %8, label %9, label %10, !dbg !3839

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14, !dbg !3840, !noalias !3841
  unreachable, !dbg !3840

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3729, metadata !3745) #10, !dbg !3824
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3844
  store i32 %0, i32* %11, align 8, !dbg !3844, !alias.scope !3841
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3844
  %13 = bitcast i32* %12 to i8*, !dbg !3844
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #10, !dbg !3844
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !3845
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3766, metadata !1205) #10, !dbg !3835
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #10, !dbg !3846
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !3847
  ret i8* %14, !dbg !3848
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !3849 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3853, metadata !694), !dbg !3857
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3854, metadata !694), !dbg !3858
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !3855, metadata !694), !dbg !3859
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3860
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10, !dbg !3860
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !3861, !tbaa.struct !3862
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3856, metadata !1205), !dbg !3863
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2318, metadata !694), !dbg !3864
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2319, metadata !694), !dbg !3866
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2320, metadata !694), !dbg !3867
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2321, metadata !694), !dbg !3868
  %6 = lshr i8 %2, 5, !dbg !3869
  %7 = zext i8 %6 to i64, !dbg !3869
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3870
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !2322, metadata !694), !dbg !3871
  %9 = and i8 %2, 31, !dbg !3872
  %10 = zext i8 %9 to i32, !dbg !3873
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2324, metadata !694), !dbg !3874
  %11 = load i32, i32* %8, align 4, !dbg !3875, !tbaa !1089
  %12 = lshr i32 %11, %10, !dbg !3876
  %13 = and i32 %12, 1, !dbg !3877
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !2325, metadata !694), !dbg !3878
  %14 = xor i32 %13, 1, !dbg !3879
  %15 = shl i32 %14, %10, !dbg !3880
  %16 = xor i32 %15, %11, !dbg !3881
  store i32 %16, i32* %8, align 4, !dbg !3881, !tbaa !1089
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3856, metadata !1205), !dbg !3863
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !3882
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10, !dbg !3883
  ret i8* %17, !dbg !3884
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !3885 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3889, metadata !694), !dbg !3891
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !3890, metadata !694), !dbg !3892
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3853, metadata !694) #10, !dbg !3893
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3854, metadata !694) #10, !dbg !3895
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !3855, metadata !694) #10, !dbg !3896
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3897
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #10, !dbg !3897
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3898, !tbaa.struct !3862
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3856, metadata !1205) #10, !dbg !3899
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2318, metadata !694) #10, !dbg !3900
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2319, metadata !694) #10, !dbg !3902
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2320, metadata !694) #10, !dbg !3903
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2321, metadata !694) #10, !dbg !3904
  %5 = lshr i8 %1, 5, !dbg !3905
  %6 = zext i8 %5 to i64, !dbg !3905
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3906
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !2322, metadata !694) #10, !dbg !3907
  %8 = and i8 %1, 31, !dbg !3908
  %9 = zext i8 %8 to i32, !dbg !3909
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !2324, metadata !694) #10, !dbg !3910
  %10 = load i32, i32* %7, align 4, !dbg !3911, !tbaa !1089
  %11 = lshr i32 %10, %9, !dbg !3912
  %12 = and i32 %11, 1, !dbg !3913
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !2325, metadata !694) #10, !dbg !3914
  %13 = xor i32 %12, 1, !dbg !3915
  %14 = shl i32 %13, %9, !dbg !3916
  %15 = xor i32 %14, %10, !dbg !3917
  store i32 %15, i32* %7, align 4, !dbg !3917, !tbaa !1089
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3856, metadata !1205) #10, !dbg !3899
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !3918
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #10, !dbg !3919
  ret i8* %16, !dbg !3920
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !3921 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3923, metadata !694), !dbg !3924
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3889, metadata !694) #10, !dbg !3925
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3890, metadata !694) #10, !dbg !3927
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3853, metadata !694) #10, !dbg !3928
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3854, metadata !694) #10, !dbg !3930
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3855, metadata !694) #10, !dbg !3931
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3932
  call void @llvm.lifetime.start(i64 56, i8* nonnull %3) #10, !dbg !3932
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3933, !tbaa.struct !3862
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3856, metadata !1205) #10, !dbg !3934
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2318, metadata !694) #10, !dbg !3935
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2319, metadata !694) #10, !dbg !3937
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2320, metadata !694) #10, !dbg !3938
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2321, metadata !694) #10, !dbg !3939
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3940
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !2322, metadata !694) #10, !dbg !3941
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !2324, metadata !694) #10, !dbg !3942
  %5 = load i32, i32* %4, align 4, !dbg !3943, !tbaa !1089
  %6 = or i32 %5, 67108864, !dbg !3944
  store i32 %6, i32* %4, align 4, !dbg !3944, !tbaa !1089
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3856, metadata !1205) #10, !dbg !3934
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #10, !dbg !3945
  call void @llvm.lifetime.end(i64 56, i8* nonnull %3) #10, !dbg !3946
  ret i8* %7, !dbg !3947
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !3948 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3950, metadata !694), !dbg !3952
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3951, metadata !694), !dbg !3953
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3853, metadata !694) #10, !dbg !3954
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3854, metadata !694) #10, !dbg !3956
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3855, metadata !694) #10, !dbg !3957
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3958
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #10, !dbg !3958
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !3959, !tbaa.struct !3862
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3856, metadata !1205) #10, !dbg !3960
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2318, metadata !694) #10, !dbg !3961
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2319, metadata !694) #10, !dbg !3963
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2320, metadata !694) #10, !dbg !3964
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2321, metadata !694) #10, !dbg !3965
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3966
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !2322, metadata !694) #10, !dbg !3967
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !2324, metadata !694) #10, !dbg !3968
  %6 = load i32, i32* %5, align 4, !dbg !3969, !tbaa !1089
  %7 = or i32 %6, 67108864, !dbg !3970
  store i32 %7, i32* %5, align 4, !dbg !3970, !tbaa !1089
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3856, metadata !1205) #10, !dbg !3960
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #10, !dbg !3971
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #10, !dbg !3972
  ret i8* %8, !dbg !3973
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !3974 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !3729, metadata !3735), !dbg !3980
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3976, metadata !694), !dbg !3982
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3977, metadata !694), !dbg !3983
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3978, metadata !694), !dbg !3984
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3985
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10, !dbg !3985
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3734, metadata !694) #10, !dbg !3986
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3987
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !3987
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3729, metadata !694) #10, !dbg !3980
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3729, metadata !3745) #10, !dbg !3980
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !3980
  %9 = icmp eq i32 %1, 10, !dbg !3988
  br i1 %9, label %10, label %11, !dbg !3989

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !3990, !noalias !3991
  unreachable, !dbg !3990

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3729, metadata !3745) #10, !dbg !3980
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !3994
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !3994
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !3995
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3996
  store i32 %1, i32* %13, align 8, !dbg !3996
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3996
  %15 = bitcast i32* %14 to i8*, !dbg !3996
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !3996
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3979, metadata !1205), !dbg !3997
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2318, metadata !694), !dbg !3998
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2319, metadata !694), !dbg !4000
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2320, metadata !694), !dbg !4001
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2321, metadata !694), !dbg !4002
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !4003
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !2322, metadata !694), !dbg !4004
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !2324, metadata !694), !dbg !4005
  %17 = load i32, i32* %16, align 4, !dbg !4006, !tbaa !1089
  %18 = or i32 %17, 67108864, !dbg !4007
  store i32 %18, i32* %16, align 4, !dbg !4007, !tbaa !1089
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3979, metadata !1205), !dbg !3997
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !4008
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10, !dbg !4009
  ret i8* %19, !dbg !4010
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !4011 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4015, metadata !694), !dbg !4019
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4016, metadata !694), !dbg !4020
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4017, metadata !694), !dbg !4021
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4018, metadata !694), !dbg !4022
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4023, metadata !694) #10, !dbg !4033
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4028, metadata !694) #10, !dbg !4035
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4029, metadata !694) #10, !dbg !4036
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4030, metadata !694) #10, !dbg !4037
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !4031, metadata !694) #10, !dbg !4038
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !4039
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !4039
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !4040, !tbaa.struct !3862
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4032, metadata !1205) #10, !dbg !4041
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2368, metadata !694) #10, !dbg !4042
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2369, metadata !694) #10, !dbg !4044
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2370, metadata !694) #10, !dbg !4045
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2368, metadata !694) #10, !dbg !4042
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2368, metadata !694) #10, !dbg !4042
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !4046
  store i32 10, i32* %7, align 8, !dbg !4047, !tbaa !2298
  %8 = icmp ne i8* %1, null, !dbg !4048
  %9 = icmp ne i8* %2, null, !dbg !4049
  %10 = and i1 %8, %9, !dbg !4050
  br i1 %10, label %12, label %11, !dbg !4050

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !4051
  unreachable, !dbg !4051

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !4052
  store i8* %1, i8** %13, align 8, !dbg !4053, !tbaa !2387
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !4054
  store i8* %2, i8** %14, align 8, !dbg !4055, !tbaa !2390
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4032, metadata !1205) #10, !dbg !4041
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #10, !dbg !4056
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !4057
  ret i8* %15, !dbg !4058
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !4024 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4023, metadata !694), !dbg !4059
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4028, metadata !694), !dbg !4060
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4029, metadata !694), !dbg !4061
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4030, metadata !694), !dbg !4062
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !4031, metadata !694), !dbg !4063
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !4064
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #10, !dbg !4064
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !4065, !tbaa.struct !3862
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !4032, metadata !1205), !dbg !4066
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2368, metadata !694) #10, !dbg !4067
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2369, metadata !694) #10, !dbg !4069
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2370, metadata !694) #10, !dbg !4070
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2368, metadata !694) #10, !dbg !4067
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2368, metadata !694) #10, !dbg !4067
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !4071
  store i32 10, i32* %8, align 8, !dbg !4072, !tbaa !2298
  %9 = icmp ne i8* %1, null, !dbg !4073
  %10 = icmp ne i8* %2, null, !dbg !4074
  %11 = and i1 %9, %10, !dbg !4075
  br i1 %11, label %13, label %12, !dbg !4075

; <label>:12:                                     ; preds = %5
  tail call void @abort() #14, !dbg !4076
  unreachable, !dbg !4076

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !4077
  store i8* %1, i8** %14, align 8, !dbg !4078, !tbaa !2387
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !4079
  store i8* %2, i8** %15, align 8, !dbg !4080, !tbaa !2390
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !4032, metadata !1205), !dbg !4066
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !4081
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #10, !dbg !4082
  ret i8* %16, !dbg !4083
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !4084 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4088, metadata !694), !dbg !4091
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4089, metadata !694), !dbg !4092
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4090, metadata !694), !dbg !4093
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4015, metadata !694) #10, !dbg !4094
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4016, metadata !694) #10, !dbg !4096
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4017, metadata !694) #10, !dbg !4097
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4018, metadata !694) #10, !dbg !4098
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4023, metadata !694) #10, !dbg !4099
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4028, metadata !694) #10, !dbg !4101
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4029, metadata !694) #10, !dbg !4102
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4030, metadata !694) #10, !dbg !4103
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !4031, metadata !694) #10, !dbg !4104
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !4105
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #10, !dbg !4105
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !4106, !tbaa.struct !3862
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !4032, metadata !1205) #10, !dbg !4107
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2368, metadata !694) #10, !dbg !4108
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2369, metadata !694) #10, !dbg !4110
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2370, metadata !694) #10, !dbg !4111
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2368, metadata !694) #10, !dbg !4108
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2368, metadata !694) #10, !dbg !4108
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !4112
  store i32 10, i32* %6, align 8, !dbg !4113, !tbaa !2298
  %7 = icmp ne i8* %0, null, !dbg !4114
  %8 = icmp ne i8* %1, null, !dbg !4115
  %9 = and i1 %7, %8, !dbg !4116
  br i1 %9, label %11, label %10, !dbg !4116

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !4117
  unreachable, !dbg !4117

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !4118
  store i8* %0, i8** %12, align 8, !dbg !4119, !tbaa !2387
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !4120
  store i8* %1, i8** %13, align 8, !dbg !4121, !tbaa !2390
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !4032, metadata !1205) #10, !dbg !4107
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !4122
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #10, !dbg !4123
  ret i8* %14, !dbg !4124
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !4125 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4129, metadata !694), !dbg !4133
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4130, metadata !694), !dbg !4134
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4131, metadata !694), !dbg !4135
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4132, metadata !694), !dbg !4136
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4023, metadata !694) #10, !dbg !4137
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4028, metadata !694) #10, !dbg !4139
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4029, metadata !694) #10, !dbg !4140
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4030, metadata !694) #10, !dbg !4141
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4031, metadata !694) #10, !dbg !4142
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !4143
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #10, !dbg !4143
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #10, !dbg !4144, !tbaa.struct !3862
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4032, metadata !1205) #10, !dbg !4145
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2368, metadata !694) #10, !dbg !4146
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2369, metadata !694) #10, !dbg !4148
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2370, metadata !694) #10, !dbg !4149
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2368, metadata !694) #10, !dbg !4146
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2368, metadata !694) #10, !dbg !4146
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !4150
  store i32 10, i32* %7, align 8, !dbg !4151, !tbaa !2298
  %8 = icmp ne i8* %0, null, !dbg !4152
  %9 = icmp ne i8* %1, null, !dbg !4153
  %10 = and i1 %8, %9, !dbg !4154
  br i1 %10, label %12, label %11, !dbg !4154

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !4155
  unreachable, !dbg !4155

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !4156
  store i8* %0, i8** %13, align 8, !dbg !4157, !tbaa !2387
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !4158
  store i8* %1, i8** %14, align 8, !dbg !4159, !tbaa !2390
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4032, metadata !1205) #10, !dbg !4145
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #10, !dbg !4160
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #10, !dbg !4161
  ret i8* %15, !dbg !4162
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !4163 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4167, metadata !694), !dbg !4170
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4168, metadata !694), !dbg !4171
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4169, metadata !694), !dbg !4172
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !4173
  ret i8* %4, !dbg !4174
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !4175 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4179, metadata !694), !dbg !4181
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4180, metadata !694), !dbg !4182
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4167, metadata !694) #10, !dbg !4183
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4168, metadata !694) #10, !dbg !4185
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4169, metadata !694) #10, !dbg !4186
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !4187
  ret i8* %3, !dbg !4188
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !4189 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4193, metadata !694), !dbg !4195
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4194, metadata !694), !dbg !4196
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4167, metadata !694) #10, !dbg !4197
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4168, metadata !694) #10, !dbg !4199
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !4169, metadata !694) #10, !dbg !4200
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !4201
  ret i8* %3, !dbg !4202
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !4203 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4207, metadata !694), !dbg !4208
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4193, metadata !694) #10, !dbg !4209
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4194, metadata !694) #10, !dbg !4211
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4167, metadata !694) #10, !dbg !4212
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4168, metadata !694) #10, !dbg !4214
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !4169, metadata !694) #10, !dbg !4215
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !4216
  ret i8* %2, !dbg !4217
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @safe_read(i32, i8* nocapture, i64) local_unnamed_addr #6 !dbg !611 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !615, metadata !694), !dbg !4218
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !616, metadata !694), !dbg !4219
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !617, metadata !694), !dbg !4220
  br label %4, !dbg !4221

; <label>:4:                                      ; preds = %13, %3
  %5 = phi i64 [ 2147475456, %13 ], [ %2, %3 ]
  br label %6, !dbg !4220

; <label>:6:                                      ; preds = %4, %9
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !617, metadata !694), !dbg !4220
  %7 = tail call i64 @read(i32 %0, i8* %1, i64 %5) #10, !dbg !4222
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !618, metadata !694), !dbg !4223
  %8 = icmp sgt i64 %7, -1, !dbg !4224
  br i1 %8, label %17, label %9, !dbg !4226

; <label>:9:                                      ; preds = %6
  %10 = tail call i32* @__errno_location() #1, !dbg !4227
  %11 = load i32, i32* %10, align 4, !dbg !4227, !tbaa !1089
  %12 = icmp eq i32 %11, 4, !dbg !4227
  br i1 %12, label %6, label %13, !dbg !4229, !llvm.loop !4230

; <label>:13:                                     ; preds = %9
  %14 = icmp eq i32 %11, 22, !dbg !4233
  %15 = icmp ugt i64 %5, 2147475456, !dbg !4235
  %16 = and i1 %15, %14, !dbg !4237
  br i1 %16, label %4, label %18

; <label>:17:                                     ; preds = %6
  br label %19, !dbg !4238

; <label>:18:                                     ; preds = %13
  br label %19, !dbg !4238

; <label>:19:                                     ; preds = %18, %17
  ret i64 %7, !dbg !4238
}

declare i64 @read(i32, i8* nocapture, i64) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !4239 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4294, metadata !694), !dbg !4300
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4295, metadata !694), !dbg !4301
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4296, metadata !694), !dbg !4302
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4297, metadata !694), !dbg !4303
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !4298, metadata !694), !dbg !4304
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !4299, metadata !694), !dbg !4305
  %7 = icmp eq i8* %1, null, !dbg !4306
  br i1 %7, label %10, label %8, !dbg !4308

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.91, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #10, !dbg !4309
  br label %12, !dbg !4309

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.92, i64 0, i64 0), i8* %2, i8* %3) #10, !dbg !4310
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.93, i64 0, i64 0), i32 5) #10, !dbg !4311
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #10, !dbg !4312
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.94, i64 0, i64 0), i32 5) #10, !dbg !4314
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #10, !dbg !4315
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
  ], !dbg !4316

; <label>:17:                                     ; preds = %12
  tail call void @abort() #14, !dbg !4317
  unreachable, !dbg !4317

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.95, i64 0, i64 0), i32 5) #10, !dbg !4319
  %20 = load i8*, i8** %4, align 8, !dbg !4319, !tbaa !702
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #10, !dbg !4320
  br label %146, !dbg !4322

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.96, i64 0, i64 0), i32 5) #10, !dbg !4323
  %24 = load i8*, i8** %4, align 8, !dbg !4323, !tbaa !702
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4323
  %26 = load i8*, i8** %25, align 8, !dbg !4323, !tbaa !702
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #10, !dbg !4324
  br label %146, !dbg !4325

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.97, i64 0, i64 0), i32 5) #10, !dbg !4326
  %30 = load i8*, i8** %4, align 8, !dbg !4326, !tbaa !702
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4326
  %32 = load i8*, i8** %31, align 8, !dbg !4326, !tbaa !702
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4326
  %34 = load i8*, i8** %33, align 8, !dbg !4326, !tbaa !702
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #10, !dbg !4327
  br label %146, !dbg !4328

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.98, i64 0, i64 0), i32 5) #10, !dbg !4329
  %38 = load i8*, i8** %4, align 8, !dbg !4329, !tbaa !702
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4329
  %40 = load i8*, i8** %39, align 8, !dbg !4329, !tbaa !702
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4329
  %42 = load i8*, i8** %41, align 8, !dbg !4329, !tbaa !702
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4329
  %44 = load i8*, i8** %43, align 8, !dbg !4329, !tbaa !702
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #10, !dbg !4330
  br label %146, !dbg !4331

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.99, i64 0, i64 0), i32 5) #10, !dbg !4332
  %48 = load i8*, i8** %4, align 8, !dbg !4332, !tbaa !702
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4332
  %50 = load i8*, i8** %49, align 8, !dbg !4332, !tbaa !702
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4332
  %52 = load i8*, i8** %51, align 8, !dbg !4332, !tbaa !702
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4332
  %54 = load i8*, i8** %53, align 8, !dbg !4332, !tbaa !702
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4332
  %56 = load i8*, i8** %55, align 8, !dbg !4332, !tbaa !702
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #10, !dbg !4333
  br label %146, !dbg !4334

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.100, i64 0, i64 0), i32 5) #10, !dbg !4335
  %60 = load i8*, i8** %4, align 8, !dbg !4335, !tbaa !702
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4335
  %62 = load i8*, i8** %61, align 8, !dbg !4335, !tbaa !702
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4335
  %64 = load i8*, i8** %63, align 8, !dbg !4335, !tbaa !702
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4335
  %66 = load i8*, i8** %65, align 8, !dbg !4335, !tbaa !702
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4335
  %68 = load i8*, i8** %67, align 8, !dbg !4335, !tbaa !702
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4335
  %70 = load i8*, i8** %69, align 8, !dbg !4335, !tbaa !702
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #10, !dbg !4336
  br label %146, !dbg !4337

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.101, i64 0, i64 0), i32 5) #10, !dbg !4338
  %74 = load i8*, i8** %4, align 8, !dbg !4338, !tbaa !702
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4338
  %76 = load i8*, i8** %75, align 8, !dbg !4338, !tbaa !702
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4338
  %78 = load i8*, i8** %77, align 8, !dbg !4338, !tbaa !702
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4338
  %80 = load i8*, i8** %79, align 8, !dbg !4338, !tbaa !702
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4338
  %82 = load i8*, i8** %81, align 8, !dbg !4338, !tbaa !702
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4338
  %84 = load i8*, i8** %83, align 8, !dbg !4338, !tbaa !702
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4338
  %86 = load i8*, i8** %85, align 8, !dbg !4338, !tbaa !702
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #10, !dbg !4339
  br label %146, !dbg !4340

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.102, i64 0, i64 0), i32 5) #10, !dbg !4341
  %90 = load i8*, i8** %4, align 8, !dbg !4341, !tbaa !702
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4341
  %92 = load i8*, i8** %91, align 8, !dbg !4341, !tbaa !702
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4341
  %94 = load i8*, i8** %93, align 8, !dbg !4341, !tbaa !702
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4341
  %96 = load i8*, i8** %95, align 8, !dbg !4341, !tbaa !702
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4341
  %98 = load i8*, i8** %97, align 8, !dbg !4341, !tbaa !702
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4341
  %100 = load i8*, i8** %99, align 8, !dbg !4341, !tbaa !702
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4341
  %102 = load i8*, i8** %101, align 8, !dbg !4341, !tbaa !702
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4341
  %104 = load i8*, i8** %103, align 8, !dbg !4341, !tbaa !702
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #10, !dbg !4342
  br label %146, !dbg !4343

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.103, i64 0, i64 0), i32 5) #10, !dbg !4344
  %108 = load i8*, i8** %4, align 8, !dbg !4344, !tbaa !702
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4344
  %110 = load i8*, i8** %109, align 8, !dbg !4344, !tbaa !702
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4344
  %112 = load i8*, i8** %111, align 8, !dbg !4344, !tbaa !702
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4344
  %114 = load i8*, i8** %113, align 8, !dbg !4344, !tbaa !702
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4344
  %116 = load i8*, i8** %115, align 8, !dbg !4344, !tbaa !702
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4344
  %118 = load i8*, i8** %117, align 8, !dbg !4344, !tbaa !702
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4344
  %120 = load i8*, i8** %119, align 8, !dbg !4344, !tbaa !702
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4344
  %122 = load i8*, i8** %121, align 8, !dbg !4344, !tbaa !702
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !4344
  %124 = load i8*, i8** %123, align 8, !dbg !4344, !tbaa !702
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #10, !dbg !4345
  br label %146, !dbg !4346

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.104, i64 0, i64 0), i32 5) #10, !dbg !4347
  %128 = load i8*, i8** %4, align 8, !dbg !4347, !tbaa !702
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4347
  %130 = load i8*, i8** %129, align 8, !dbg !4347, !tbaa !702
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4347
  %132 = load i8*, i8** %131, align 8, !dbg !4347, !tbaa !702
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4347
  %134 = load i8*, i8** %133, align 8, !dbg !4347, !tbaa !702
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4347
  %136 = load i8*, i8** %135, align 8, !dbg !4347, !tbaa !702
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4347
  %138 = load i8*, i8** %137, align 8, !dbg !4347, !tbaa !702
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4347
  %140 = load i8*, i8** %139, align 8, !dbg !4347, !tbaa !702
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4347
  %142 = load i8*, i8** %141, align 8, !dbg !4347, !tbaa !702
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !4347
  %144 = load i8*, i8** %143, align 8, !dbg !4347, !tbaa !702
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #10, !dbg !4348
  br label %146, !dbg !4349

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !4350
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !4351 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4355, metadata !694), !dbg !4361
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4356, metadata !694), !dbg !4362
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4357, metadata !694), !dbg !4363
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4358, metadata !694), !dbg !4364
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !4359, metadata !694), !dbg !4365
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4360, metadata !694), !dbg !4366
  br label %6, !dbg !4367

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !4360, metadata !694), !dbg !4366
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !4369
  %9 = load i8*, i8** %8, align 8, !dbg !4369, !tbaa !702
  %10 = icmp eq i8* %9, null, !dbg !4372
  %11 = add i64 %7, 1, !dbg !4374
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !4360, metadata !694), !dbg !4366
  br i1 %10, label %12, label %6, !dbg !4372, !llvm.loop !4376

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !4379
  ret void, !dbg !4380
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !4381 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4392, metadata !694), !dbg !4400
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4393, metadata !694), !dbg !4401
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4394, metadata !694), !dbg !4402
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4395, metadata !694), !dbg !4403
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !4396, metadata !694), !dbg !4404
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !4405
  call void @llvm.lifetime.start(i64 80, i8* nonnull %7) #10, !dbg !4405
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !4398, metadata !694), !dbg !4406
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4397, metadata !694), !dbg !4407
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4397, metadata !694), !dbg !4407
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %11 = load i32, i32* %8, align 8, !dbg !4408
  %12 = icmp ult i32 %11, 41, !dbg !4408
  br i1 %12, label %13, label %18, !dbg !4408

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !4412
  %15 = sext i32 %11 to i64, !dbg !4412
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !4412
  %17 = add i32 %11, 8, !dbg !4412
  store i32 %17, i32* %8, align 8, !dbg !4412
  br label %21, !dbg !4412

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !4414
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !4414
  store i8* %20, i8** %10, align 8, !dbg !4414
  br label %21, !dbg !4414

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ], !dbg !4408
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !4416
  %25 = load i8*, i8** %24, align 8, !dbg !4416
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !4418
  store i8* %25, i8** %26, align 16, !dbg !4419, !tbaa !702
  %27 = icmp eq i8* %25, null, !dbg !4420
  br i1 %27, label %30, label %28, !dbg !4421

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4397, metadata !694), !dbg !4407
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4397, metadata !694), !dbg !4407
  %29 = icmp ult i32 %22, 41, !dbg !4408
  br i1 %29, label %35, label %32, !dbg !4408

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !4423
  call void @llvm.lifetime.end(i64 80, i8* nonnull %7) #10, !dbg !4424
  ret void, !dbg !4424

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !4414
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !4414
  store i8* %34, i8** %10, align 8, !dbg !4414
  br label %40, !dbg !4414

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !4412
  %37 = sext i32 %22 to i64, !dbg !4412
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !4412
  %39 = add i32 %22, 8, !dbg !4412
  store i32 %39, i32* %8, align 8, !dbg !4412
  br label %40, !dbg !4412

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ], !dbg !4408
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !4416
  %44 = load i8*, i8** %43, align 8, !dbg !4416
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !4418
  store i8* %44, i8** %45, align 8, !dbg !4419, !tbaa !702
  %46 = icmp eq i8* %44, null, !dbg !4420
  br i1 %46, label %30, label %47, !dbg !4421

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4397, metadata !694), !dbg !4407
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4397, metadata !694), !dbg !4407
  %48 = icmp ult i32 %41, 41, !dbg !4408
  br i1 %48, label %52, label %49, !dbg !4408

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !4414
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !4414
  store i8* %51, i8** %10, align 8, !dbg !4414
  br label %57, !dbg !4414

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !4412
  %54 = sext i32 %41 to i64, !dbg !4412
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !4412
  %56 = add i32 %41, 8, !dbg !4412
  store i32 %56, i32* %8, align 8, !dbg !4412
  br label %57, !dbg !4412

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ], !dbg !4408
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !4416
  %61 = load i8*, i8** %60, align 8, !dbg !4416
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !4418
  store i8* %61, i8** %62, align 16, !dbg !4419, !tbaa !702
  %63 = icmp eq i8* %61, null, !dbg !4420
  br i1 %63, label %30, label %64, !dbg !4421

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4397, metadata !694), !dbg !4407
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4397, metadata !694), !dbg !4407
  %65 = icmp ult i32 %58, 41, !dbg !4408
  br i1 %65, label %69, label %66, !dbg !4408

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !4414
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !4414
  store i8* %68, i8** %10, align 8, !dbg !4414
  br label %74, !dbg !4414

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !4412
  %71 = sext i32 %58 to i64, !dbg !4412
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !4412
  %73 = add i32 %58, 8, !dbg !4412
  store i32 %73, i32* %8, align 8, !dbg !4412
  br label %74, !dbg !4412

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ], !dbg !4408
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !4416
  %78 = load i8*, i8** %77, align 8, !dbg !4416
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !4418
  store i8* %78, i8** %79, align 8, !dbg !4419, !tbaa !702
  %80 = icmp eq i8* %78, null, !dbg !4420
  br i1 %80, label %30, label %81, !dbg !4421

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4397, metadata !694), !dbg !4407
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4397, metadata !694), !dbg !4407
  %82 = icmp ult i32 %75, 41, !dbg !4408
  br i1 %82, label %86, label %83, !dbg !4408

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !4414
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !4414
  store i8* %85, i8** %10, align 8, !dbg !4414
  br label %91, !dbg !4414

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !4412
  %88 = sext i32 %75 to i64, !dbg !4412
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !4412
  %90 = add i32 %75, 8, !dbg !4412
  store i32 %90, i32* %8, align 8, !dbg !4412
  br label %91, !dbg !4412

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ], !dbg !4408
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !4416
  %95 = load i8*, i8** %94, align 8, !dbg !4416
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !4418
  store i8* %95, i8** %96, align 16, !dbg !4419, !tbaa !702
  %97 = icmp eq i8* %95, null, !dbg !4420
  br i1 %97, label %30, label %98, !dbg !4421

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4397, metadata !694), !dbg !4407
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4397, metadata !694), !dbg !4407
  %99 = icmp ult i32 %92, 41, !dbg !4408
  br i1 %99, label %103, label %100, !dbg !4408

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !4414
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !4414
  store i8* %102, i8** %10, align 8, !dbg !4414
  br label %108, !dbg !4414

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !4412
  %105 = sext i32 %92 to i64, !dbg !4412
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !4412
  %107 = add i32 %92, 8, !dbg !4412
  store i32 %107, i32* %8, align 8, !dbg !4412
  br label %108, !dbg !4412

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !4416
  %111 = load i8*, i8** %110, align 8, !dbg !4416
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !4418
  store i8* %111, i8** %112, align 8, !dbg !4419, !tbaa !702
  %113 = icmp eq i8* %111, null, !dbg !4420
  br i1 %113, label %30, label %114, !dbg !4421

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4397, metadata !694), !dbg !4407
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4397, metadata !694), !dbg !4407
  %115 = load i8*, i8** %10, align 8, !dbg !4414
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !4414
  store i8* %116, i8** %10, align 8, !dbg !4414
  %117 = bitcast i8* %115 to i8**, !dbg !4416
  %118 = load i8*, i8** %117, align 8, !dbg !4416
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !4418
  store i8* %118, i8** %119, align 16, !dbg !4419, !tbaa !702
  %120 = icmp eq i8* %118, null, !dbg !4420
  br i1 %120, label %30, label %121, !dbg !4421

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4397, metadata !694), !dbg !4407
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4397, metadata !694), !dbg !4407
  %122 = load i8*, i8** %10, align 8, !dbg !4414
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !4414
  store i8* %123, i8** %10, align 8, !dbg !4414
  %124 = bitcast i8* %122 to i8**, !dbg !4416
  %125 = load i8*, i8** %124, align 8, !dbg !4416
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !4418
  store i8* %125, i8** %126, align 8, !dbg !4419, !tbaa !702
  %127 = icmp eq i8* %125, null, !dbg !4420
  br i1 %127, label %30, label %128, !dbg !4421

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4397, metadata !694), !dbg !4407
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4397, metadata !694), !dbg !4407
  %129 = load i8*, i8** %10, align 8, !dbg !4414
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !4414
  store i8* %130, i8** %10, align 8, !dbg !4414
  %131 = bitcast i8* %129 to i8**, !dbg !4416
  %132 = load i8*, i8** %131, align 8, !dbg !4416
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !4418
  store i8* %132, i8** %133, align 16, !dbg !4419, !tbaa !702
  %134 = icmp eq i8* %132, null, !dbg !4420
  br i1 %134, label %30, label %135, !dbg !4421

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4397, metadata !694), !dbg !4407
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4397, metadata !694), !dbg !4407
  %136 = load i8*, i8** %10, align 8, !dbg !4414
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !4414
  store i8* %137, i8** %10, align 8, !dbg !4414
  %138 = bitcast i8* %136 to i8**, !dbg !4416
  %139 = load i8*, i8** %138, align 8, !dbg !4416
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !4418
  store i8* %139, i8** %140, align 8, !dbg !4419, !tbaa !702
  %141 = icmp eq i8* %139, null, !dbg !4420
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4397, metadata !694), !dbg !4407
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4397, metadata !694), !dbg !4407
  %142 = select i1 %141, i64 9, i64 10, !dbg !4421
  br label %30, !dbg !4421
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !4425 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4429, metadata !694), !dbg !4439
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4430, metadata !694), !dbg !4440
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4431, metadata !694), !dbg !4441
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4432, metadata !694), !dbg !4442
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !4443
  call void @llvm.lifetime.start(i64 24, i8* nonnull %6) #10, !dbg !4443
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !4433, metadata !694), !dbg !4444
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !4445
  call void @llvm.va_start(i8* nonnull %6), !dbg !4445
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !4446
  call void @llvm.va_end(i8* nonnull %6), !dbg !4447
  call void @llvm.lifetime.end(i64 24, i8* nonnull %6) #10, !dbg !4448
  ret void, !dbg !4448
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #10

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !4449 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.107, i64 0, i64 0), i32 5) #10, !dbg !4450
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.108, i64 0, i64 0)) #10, !dbg !4451
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.109, i64 0, i64 0), i32 5) #10, !dbg !4453
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.110, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.111, i64 0, i64 0)) #10, !dbg !4454
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19.112, i64 0, i64 0), i32 5) #10, !dbg !4455
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !4455, !tbaa !702
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #10, !dbg !4456
  ret void, !dbg !4457
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #12 !dbg !4458 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4460, metadata !694), !dbg !4462
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4461, metadata !694), !dbg !4463
  %3 = udiv i64 9223372036854775807, %1, !dbg !4464
  %4 = icmp ult i64 %3, %0, !dbg !4464
  br i1 %4, label %5, label %6, !dbg !4466

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !4467
  unreachable, !dbg !4467

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4468
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !4469, metadata !694) #10, !dbg !4476
  %8 = tail call noalias i8* @malloc(i64 %7) #10, !dbg !4478
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !4475, metadata !694) #10, !dbg !4479
  %9 = icmp eq i8* %8, null, !dbg !4480
  %10 = icmp ne i64 %7, 0, !dbg !4482
  %11 = and i1 %10, %9, !dbg !4484
  br i1 %11, label %12, label %13, !dbg !4484

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #14, !dbg !4485
  unreachable, !dbg !4485

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !4486
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !4470 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4469, metadata !694), !dbg !4487
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !4488
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4475, metadata !694), !dbg !4489
  %3 = icmp eq i8* %2, null, !dbg !4490
  %4 = icmp ne i64 %0, 0, !dbg !4491
  %5 = and i1 %4, %3, !dbg !4492
  br i1 %5, label %6, label %7, !dbg !4492

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !4493
  unreachable, !dbg !4493

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !4494
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #12 !dbg !4495 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4497, metadata !694), !dbg !4500
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4498, metadata !694), !dbg !4501
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4499, metadata !694), !dbg !4502
  %4 = udiv i64 9223372036854775807, %2, !dbg !4503
  %5 = icmp ult i64 %4, %1, !dbg !4503
  br i1 %5, label %6, label %7, !dbg !4505

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #14, !dbg !4506
  unreachable, !dbg !4506

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !4507
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4508, metadata !694) #10, !dbg !4514
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !4513, metadata !694) #10, !dbg !4516
  %9 = icmp eq i64 %8, 0, !dbg !4517
  %10 = icmp ne i8* %0, null, !dbg !4519
  %11 = and i1 %10, %9, !dbg !4521
  br i1 %11, label %12, label %13, !dbg !4521

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #10, !dbg !4522
  br label %19, !dbg !4524

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #10, !dbg !4525
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !4508, metadata !694) #10, !dbg !4514
  %15 = icmp eq i8* %14, null, !dbg !4526
  %16 = icmp ne i64 %8, 0, !dbg !4528
  %17 = and i1 %16, %15, !dbg !4530
  br i1 %17, label %18, label %19, !dbg !4530

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !4531
  unreachable, !dbg !4531

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !4532
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !4509 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4508, metadata !694), !dbg !4533
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4513, metadata !694), !dbg !4534
  %3 = icmp eq i64 %1, 0, !dbg !4535
  %4 = icmp ne i8* %0, null, !dbg !4536
  %5 = and i1 %4, %3, !dbg !4537
  br i1 %5, label %6, label %7, !dbg !4537

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #10, !dbg !4538
  br label %13, !dbg !4539

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #10, !dbg !4540
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !4508, metadata !694), !dbg !4533
  %9 = icmp eq i8* %8, null, !dbg !4541
  %10 = icmp ne i64 %1, 0, !dbg !4542
  %11 = and i1 %10, %9, !dbg !4543
  br i1 %11, label %12, label %13, !dbg !4543

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #14, !dbg !4544
  unreachable, !dbg !4544

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !4545
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #12 !dbg !639 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !644, metadata !694), !dbg !4546
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !645, metadata !694), !dbg !4547
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !646, metadata !694), !dbg !4548
  %4 = load i64, i64* %1, align 8, !dbg !4549, !tbaa !1358
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !647, metadata !694), !dbg !4550
  %5 = icmp eq i8* %0, null, !dbg !4551
  br i1 %5, label %6, label %13, !dbg !4553

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4554
  br i1 %7, label %8, label %17, !dbg !4557

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4558
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !647, metadata !694), !dbg !4550
  %10 = icmp ugt i64 %2, 128, !dbg !4560
  %11 = zext i1 %10 to i64, !dbg !4560
  %12 = add nuw nsw i64 %9, %11, !dbg !4561
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !647, metadata !694), !dbg !4550
  br label %17, !dbg !4562

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !4563
  %15 = icmp ugt i64 %14, %4, !dbg !4566
  br i1 %15, label %20, label %16, !dbg !4567

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !4568
  unreachable, !dbg !4568

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !647, metadata !694), !dbg !4550
  store i64 %18, i64* %1, align 8, !dbg !4569, !tbaa !1358
  %19 = mul i64 %18, %2, !dbg !4570
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4508, metadata !694) #10, !dbg !4571
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !4513, metadata !694) #10, !dbg !4573
  br label %27, !dbg !4574

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !4575
  %22 = add i64 %4, 1, !dbg !4576
  %23 = add i64 %22, %21, !dbg !4577
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !647, metadata !694), !dbg !4550
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !647, metadata !694), !dbg !4550
  store i64 %23, i64* %1, align 8, !dbg !4569, !tbaa !1358
  %24 = mul i64 %23, %2, !dbg !4570
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4508, metadata !694) #10, !dbg !4571
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !4513, metadata !694) #10, !dbg !4573
  %25 = icmp eq i64 %24, 0, !dbg !4578
  br i1 %25, label %26, label %27, !dbg !4574

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #10, !dbg !4579
  br label %34, !dbg !4580

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #10, !dbg !4581
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !4508, metadata !694) #10, !dbg !4571
  %30 = icmp eq i8* %29, null, !dbg !4582
  %31 = icmp ne i64 %28, 0, !dbg !4583
  %32 = and i1 %31, %30, !dbg !4584
  br i1 %32, label %33, label %34, !dbg !4584

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #14, !dbg !4585
  unreachable, !dbg !4585

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !4586
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #12 !dbg !4587 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4589, metadata !694), !dbg !4590
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4469, metadata !694) #10, !dbg !4591
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !4593
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4475, metadata !694) #10, !dbg !4594
  %3 = icmp eq i8* %2, null, !dbg !4595
  %4 = icmp ne i64 %0, 0, !dbg !4596
  %5 = and i1 %4, %3, !dbg !4597
  br i1 %5, label %6, label %7, !dbg !4597

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !4598
  unreachable, !dbg !4598

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !4599
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !4600 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4604, metadata !694), !dbg !4606
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !4605, metadata !694), !dbg !4607
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !644, metadata !694) #10, !dbg !4608
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !645, metadata !694) #10, !dbg !4610
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !646, metadata !694) #10, !dbg !4611
  %3 = load i64, i64* %1, align 8, !dbg !4612, !tbaa !1358
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !647, metadata !694) #10, !dbg !4613
  %4 = icmp eq i8* %0, null, !dbg !4614
  br i1 %4, label %5, label %8, !dbg !4615

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4616
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !647, metadata !694) #10, !dbg !4613
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !647, metadata !694) #10, !dbg !4613
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4617
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !647, metadata !694) #10, !dbg !4613
  store i64 %7, i64* %1, align 8, !dbg !4618, !tbaa !1358
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4508, metadata !694) #10, !dbg !4619
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4513, metadata !694) #10, !dbg !4621
  br label %17, !dbg !4622

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !4623
  br i1 %9, label %11, label %10, !dbg !4624

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #14, !dbg !4625
  unreachable, !dbg !4625

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !4626
  %13 = add i64 %3, 1, !dbg !4627
  %14 = add i64 %13, %12, !dbg !4628
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !647, metadata !694) #10, !dbg !4613
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !647, metadata !694) #10, !dbg !4613
  store i64 %14, i64* %1, align 8, !dbg !4618, !tbaa !1358
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4508, metadata !694) #10, !dbg !4619
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4513, metadata !694) #10, !dbg !4621
  %15 = icmp eq i64 %14, 0, !dbg !4629
  br i1 %15, label %16, label %17, !dbg !4622

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #10, !dbg !4630
  br label %24, !dbg !4631

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #10, !dbg !4632
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !4508, metadata !694) #10, !dbg !4619
  %20 = icmp eq i8* %19, null, !dbg !4633
  %21 = icmp ne i64 %18, 0, !dbg !4634
  %22 = and i1 %21, %20, !dbg !4635
  br i1 %22, label %23, label %24, !dbg !4635

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #14, !dbg !4636
  unreachable, !dbg !4636

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !4637
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !4638 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4640, metadata !694), !dbg !4641
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4469, metadata !694) #10, !dbg !4642
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !4644
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4475, metadata !694) #10, !dbg !4645
  %3 = icmp eq i8* %2, null, !dbg !4646
  %4 = icmp ne i64 %0, 0, !dbg !4647
  %5 = and i1 %4, %3, !dbg !4648
  br i1 %5, label %6, label %7, !dbg !4648

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !4649
  unreachable, !dbg !4649

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !4650
  ret i8* %2, !dbg !4651
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !4652 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4654, metadata !694), !dbg !4657
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4655, metadata !694), !dbg !4658
  %3 = udiv i64 9223372036854775807, %1, !dbg !4659
  %4 = icmp ult i64 %3, %0, !dbg !4659
  br i1 %4, label %8, label %5, !dbg !4661

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #10, !dbg !4662
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !4656, metadata !694), !dbg !4664
  %7 = icmp eq i8* %6, null, !dbg !4665
  br i1 %7, label %8, label %9, !dbg !4666

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #14, !dbg !4668
  unreachable, !dbg !4668

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !4669
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !4670 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4674, metadata !694), !dbg !4676
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4675, metadata !694), !dbg !4677
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4469, metadata !694) #10, !dbg !4678
  %3 = tail call noalias i8* @malloc(i64 %1) #10, !dbg !4680
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4475, metadata !694) #10, !dbg !4681
  %4 = icmp eq i8* %3, null, !dbg !4682
  %5 = icmp ne i64 %1, 0, !dbg !4683
  %6 = and i1 %5, %4, !dbg !4684
  br i1 %6, label %7, label %8, !dbg !4684

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !4685
  unreachable, !dbg !4685

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !4686
  ret i8* %3, !dbg !4687
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !4688 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4690, metadata !694), !dbg !4691
  %2 = tail call i64 @strlen(i8* %0) #13, !dbg !4692
  %3 = add i64 %2, 1, !dbg !4693
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4674, metadata !694) #10, !dbg !4694
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4675, metadata !694) #10, !dbg !4697
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4469, metadata !694) #10, !dbg !4698
  %4 = tail call noalias i8* @malloc(i64 %3) #10, !dbg !4700
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !4475, metadata !694) #10, !dbg !4701
  %5 = icmp eq i8* %4, null, !dbg !4702
  %6 = icmp ne i64 %3, 0, !dbg !4703
  %7 = and i1 %6, %5, !dbg !4704
  br i1 %7, label %8, label %9, !dbg !4704

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !4705
  unreachable, !dbg !4705

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #10, !dbg !4706
  ret i8* %4, !dbg !4707
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !4708 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !4710, !tbaa !1089
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.123, i64 0, i64 0), i32 5) #10, !dbg !4711
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.124, i64 0, i64 0), i8* %2) #10, !dbg !4712
  tail call void @abort() #14, !dbg !4714
  unreachable, !dbg !4714
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @xnumtoumax(i8*, i32, i64, i64, i8*, i8*, i32) local_unnamed_addr #6 !dbg !4715 {
  %8 = alloca i64, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4720, metadata !694), !dbg !4730
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4721, metadata !694), !dbg !4731
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4722, metadata !694), !dbg !4732
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4723, metadata !694), !dbg !4733
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !4724, metadata !694), !dbg !4734
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !4725, metadata !694), !dbg !4735
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !4726, metadata !694), !dbg !4736
  %9 = bitcast i64* %8 to i8*, !dbg !4737
  call void @llvm.lifetime.start(i64 8, i8* nonnull %9) #10, !dbg !4737
  tail call void @llvm.dbg.value(metadata i64* %8, i64 0, metadata !4729, metadata !1205), !dbg !4738
  %10 = call i32 @xstrtoumax(i8* %0, i8** null, i32 %1, i64* nonnull %8, i8* %4) #10, !dbg !4739
  call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !4727, metadata !694), !dbg !4740
  switch i32 %10, label %11 [
    i32 0, label %13
    i32 1, label %22
    i32 3, label %24
  ], !dbg !4741

; <label>:11:                                     ; preds = %7
  %12 = tail call i32* @__errno_location() #1, !dbg !4742
  br label %26, !dbg !4741

; <label>:13:                                     ; preds = %7
  %14 = load i64, i64* %8, align 8, !dbg !4746, !tbaa !1358
  call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4729, metadata !694), !dbg !4738
  %15 = icmp ult i64 %14, %2, !dbg !4750
  %16 = icmp ugt i64 %14, %3, !dbg !4751
  %17 = or i1 %15, %16, !dbg !4753
  br i1 %17, label %18, label %35, !dbg !4753

; <label>:18:                                     ; preds = %13
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4727, metadata !694), !dbg !4740
  call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4729, metadata !694), !dbg !4738
  %19 = icmp ugt i64 %14, 1073741823, !dbg !4754
  %20 = tail call i32* @__errno_location() #1, !dbg !4757
  %21 = select i1 %19, i32 75, i32 34, !dbg !4758
  store i32 %21, i32* %20, align 4, !tbaa !1089
  br label %26, !dbg !4759

; <label>:22:                                     ; preds = %7
  %23 = tail call i32* @__errno_location() #1, !dbg !4760
  store i32 75, i32* %23, align 4, !dbg !4762, !tbaa !1089
  br label %26, !dbg !4760

; <label>:24:                                     ; preds = %7
  %25 = tail call i32* @__errno_location() #1, !dbg !4763
  store i32 0, i32* %25, align 4, !dbg !4765, !tbaa !1089
  br label %26, !dbg !4763

; <label>:26:                                     ; preds = %11, %18, %22, %24
  %27 = phi i32* [ %12, %11 ], [ %20, %18 ], [ %23, %22 ], [ %25, %24 ], !dbg !4742
  %28 = icmp ne i32 %6, 0, !dbg !4766
  %29 = select i1 %28, i32 %6, i32 1, !dbg !4766
  %30 = load i32, i32* %27, align 4, !dbg !4742, !tbaa !1089
  %31 = icmp eq i32 %30, 22, !dbg !4767
  %32 = select i1 %31, i32 0, i32 %30, !dbg !4742
  %33 = call i8* @quote(i8* %0) #10, !dbg !4768
  call void (i32, i32, i8*, ...) @error(i32 %29, i32 %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.125, i64 0, i64 0), i8* %5, i8* %33) #10, !dbg !4769
  %34 = load i64, i64* %8, align 8, !tbaa !1358
  br label %35, !dbg !4771

; <label>:35:                                     ; preds = %13, %26
  %36 = phi i64 [ %14, %13 ], [ %34, %26 ], !dbg !4772
  call void @llvm.dbg.value(metadata i64 %36, i64 0, metadata !4729, metadata !694), !dbg !4738
  call void @llvm.lifetime.end(i64 8, i8* nonnull %9) #10, !dbg !4773
  ret i64 %36, !dbg !4774
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @xdectoumax(i8*, i64, i64, i8*, i8*, i32) local_unnamed_addr #6 !dbg !4775 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4779, metadata !694), !dbg !4785
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4780, metadata !694), !dbg !4786
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4781, metadata !694), !dbg !4787
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4782, metadata !694), !dbg !4788
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !4783, metadata !694), !dbg !4789
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !4784, metadata !694), !dbg !4790
  %7 = tail call i64 @xnumtoumax(i8* %0, i32 10, i64 %1, i64 %2, i8* %3, i8* %4, i32 %5), !dbg !4791
  ret i64 %7, !dbg !4792
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @xstrtoumax(i8*, i8**, i32, i64* nocapture, i8* readonly) local_unnamed_addr #6 !dbg !4793 {
  %6 = alloca i8*, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4799, metadata !694), !dbg !4817
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !4800, metadata !694), !dbg !4818
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4801, metadata !694), !dbg !4819
  tail call void @llvm.dbg.value(metadata i64* %3, i64 0, metadata !4802, metadata !694), !dbg !4820
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !4803, metadata !694), !dbg !4821
  %7 = bitcast i8** %6 to i8*, !dbg !4822
  call void @llvm.lifetime.start(i64 8, i8* nonnull %7) #10, !dbg !4822
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4807, metadata !694), !dbg !4823
  %8 = icmp ult i32 %2, 37, !dbg !4824
  br i1 %8, label %10, label %9, !dbg !4824

; <label>:9:                                      ; preds = %5
  tail call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.130, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.131, i64 0, i64 0), i32 96, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @__PRETTY_FUNCTION__.xstrtoumax, i64 0, i64 0)) #14, !dbg !4827
  unreachable, !dbg !4827

; <label>:10:                                     ; preds = %5
  %11 = icmp ne i8** %1, null, !dbg !4829
  tail call void @llvm.dbg.value(metadata i8** %25, i64 0, metadata !4805, metadata !694), !dbg !4830
  %12 = tail call i32* @__errno_location() #1, !dbg !4831
  store i32 0, i32* %12, align 4, !dbg !4832, !tbaa !1089
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4808, metadata !694), !dbg !4833
  %13 = tail call i16** @__ctype_b_loc() #1, !dbg !4834
  %14 = load i16*, i16** %13, align 8, !tbaa !702
  br label %15, !dbg !4836

; <label>:15:                                     ; preds = %15, %10
  %16 = phi i8* [ %0, %10 ], [ %23, %15 ]
  %17 = load i8, i8* %16, align 1, !tbaa !975
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !4811, metadata !694), !dbg !4837
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !4808, metadata !694), !dbg !4833
  %18 = zext i8 %17 to i64, !dbg !4834
  %19 = getelementptr inbounds i16, i16* %14, i64 %18, !dbg !4834
  %20 = load i16, i16* %19, align 2, !dbg !4834, !tbaa !2830
  %21 = and i16 %20, 8192, !dbg !4834
  %22 = icmp eq i16 %21, 0, !dbg !4838
  %23 = getelementptr inbounds i8, i8* %16, i64 1, !dbg !4839
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !4808, metadata !694), !dbg !4833
  br i1 %22, label %24, label %15, !dbg !4838, !llvm.loop !4840

; <label>:24:                                     ; preds = %15
  %25 = select i1 %11, i8** %1, i8** %6, !dbg !4829
  %26 = icmp eq i8 %17, 45, !dbg !4842
  br i1 %26, label %265, label %27

; <label>:27:                                     ; preds = %24
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4844, metadata !694) #10, !dbg !4854
  tail call void @llvm.dbg.value(metadata i8** %25, i64 0, metadata !4852, metadata !694) #10, !dbg !4854
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4853, metadata !694) #10, !dbg !4854
  %28 = call i64 @__strtoul_internal(i8* %0, i8** %25, i32 %2, i32 0) #10, !dbg !4856
  call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !4806, metadata !694), !dbg !4857
  %29 = load i8*, i8** %25, align 8, !dbg !4858, !tbaa !702
  %30 = icmp eq i8* %29, %0, !dbg !4860
  br i1 %30, label %31, label %40, !dbg !4861

; <label>:31:                                     ; preds = %27
  %32 = icmp eq i8* %4, null, !dbg !4862
  br i1 %32, label %265, label %33, !dbg !4865

; <label>:33:                                     ; preds = %31
  %34 = load i8, i8* %0, align 1, !dbg !4866, !tbaa !975
  %35 = icmp eq i8 %34, 0, !dbg !4866
  br i1 %35, label %265, label %36, !dbg !4868

; <label>:36:                                     ; preds = %33
  %37 = sext i8 %34 to i32, !dbg !4866
  %38 = call i8* @strchr(i8* nonnull %4, i32 %37) #10, !dbg !4869
  %39 = icmp eq i8* %38, null, !dbg !4869
  br i1 %39, label %265, label %47, !dbg !4871

; <label>:40:                                     ; preds = %27
  %41 = load i32, i32* %12, align 4, !dbg !4873, !tbaa !1089
  switch i32 %41, label %265 [
    i32 0, label %43
    i32 34, label %42
  ], !dbg !4875

; <label>:42:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4807, metadata !694), !dbg !4823
  br label %43, !dbg !4876

; <label>:43:                                     ; preds = %40, %42
  %44 = phi i32 [ 1, %42 ], [ 0, %40 ]
  call void @llvm.dbg.value(metadata i32 %44, i64 0, metadata !4807, metadata !694), !dbg !4823
  %45 = icmp eq i8* %4, null, !dbg !4878
  br i1 %45, label %46, label %47, !dbg !4880

; <label>:46:                                     ; preds = %43
  call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !4806, metadata !694), !dbg !4857
  store i64 %28, i64* %3, align 8, !dbg !4881, !tbaa !1358
  br label %265, !dbg !4883

; <label>:47:                                     ; preds = %36, %43
  %48 = phi i32 [ %44, %43 ], [ 0, %36 ]
  %49 = phi i64 [ %28, %43 ], [ 1, %36 ]
  %50 = load i8, i8* %29, align 1, !dbg !4884, !tbaa !975
  %51 = icmp eq i8 %50, 0, !dbg !4885
  br i1 %51, label %262, label %52, !dbg !4886

; <label>:52:                                     ; preds = %47
  %53 = sext i8 %50 to i32, !dbg !4884
  call void @llvm.dbg.value(metadata i32 1024, i64 0, metadata !4812, metadata !694), !dbg !4887
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4815, metadata !694), !dbg !4888
  %54 = call i8* @strchr(i8* nonnull %4, i32 %53) #10, !dbg !4889
  %55 = icmp eq i8* %54, null, !dbg !4889
  br i1 %55, label %56, label %58, !dbg !4892

; <label>:56:                                     ; preds = %52
  call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !4806, metadata !694), !dbg !4857
  store i64 %49, i64* %3, align 8, !dbg !4894, !tbaa !1358
  %57 = or i32 %48, 2, !dbg !4896
  br label %265, !dbg !4897

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
  ], !dbg !4898

; <label>:59:                                     ; preds = %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58
  %60 = call i8* @strchr(i8* nonnull %4, i32 48) #10, !dbg !4899
  %61 = icmp eq i8* %60, null, !dbg !4899
  br i1 %61, label %72, label %62, !dbg !4903

; <label>:62:                                     ; preds = %59
  %63 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !4905
  %64 = load i8, i8* %63, align 1, !dbg !4905, !tbaa !975
  %65 = sext i8 %64 to i32, !dbg !4905
  switch i32 %65, label %72 [
    i32 105, label %66
    i32 66, label %71
    i32 68, label %71
  ], !dbg !4906

; <label>:66:                                     ; preds = %62
  %67 = getelementptr inbounds i8, i8* %29, i64 2, !dbg !4907
  %68 = load i8, i8* %67, align 1, !dbg !4907, !tbaa !975
  %69 = icmp eq i8 %68, 66, !dbg !4910
  call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4815, metadata !694), !dbg !4888
  %70 = select i1 %69, i64 3, i64 1, !dbg !4911
  br label %72, !dbg !4911

; <label>:71:                                     ; preds = %62, %62
  call void @llvm.dbg.value(metadata i32 1000, i64 0, metadata !4812, metadata !694), !dbg !4887
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4815, metadata !694), !dbg !4888
  br label %72, !dbg !4912

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
  ], !dbg !4913

; <label>:75:                                     ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 512, i64 0, metadata !4914, metadata !694), !dbg !4920
  %76 = icmp ugt i64 %49, 36028797018963967, !dbg !4923
  %77 = shl i64 %49, 9, !dbg !4925
  %78 = select i1 %76, i64 -1, i64 %77, !dbg !4926
  %79 = zext i1 %76 to i32, !dbg !4926
  call void @llvm.dbg.value(metadata i32 %79, i64 0, metadata !4816, metadata !694), !dbg !4927
  br label %253, !dbg !4928

; <label>:80:                                     ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 1024, i64 0, metadata !4914, metadata !694), !dbg !4929
  %81 = icmp ugt i64 %49, 18014398509481983, !dbg !4931
  %82 = shl i64 %49, 10, !dbg !4932
  %83 = select i1 %81, i64 -1, i64 %82, !dbg !4933
  %84 = zext i1 %81 to i32, !dbg !4933
  call void @llvm.dbg.value(metadata i32 %84, i64 0, metadata !4816, metadata !694), !dbg !4927
  br label %253, !dbg !4934

; <label>:85:                                     ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4935, metadata !694), !dbg !4943
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4942, metadata !694), !dbg !4945
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4942, metadata !694), !dbg !4945
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4935, metadata !694), !dbg !4943
  %86 = udiv i64 -1, %73
  %87 = icmp ult i64 %86, %49, !dbg !4946
  %88 = mul i64 %49, %73, !dbg !4948
  %89 = select i1 %87, i64 -1, i64 %88, !dbg !4949
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4935, metadata !694), !dbg !4943
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4935, metadata !694), !dbg !4943
  %90 = icmp ult i64 %86, %89, !dbg !4946
  %91 = mul i64 %89, %73, !dbg !4948
  %92 = select i1 %90, i64 -1, i64 %91, !dbg !4949
  %93 = or i1 %90, %87, !dbg !4950
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4935, metadata !694), !dbg !4943
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4935, metadata !694), !dbg !4943
  %94 = icmp ult i64 %86, %92, !dbg !4946
  %95 = mul i64 %92, %73, !dbg !4948
  %96 = select i1 %94, i64 -1, i64 %95, !dbg !4949
  %97 = or i1 %94, %93, !dbg !4950
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4935, metadata !694), !dbg !4943
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4935, metadata !694), !dbg !4943
  %98 = icmp ult i64 %86, %96, !dbg !4946
  %99 = mul i64 %96, %73, !dbg !4948
  %100 = select i1 %98, i64 -1, i64 %99, !dbg !4949
  %101 = or i1 %98, %97, !dbg !4950
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4935, metadata !694), !dbg !4943
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4935, metadata !694), !dbg !4943
  %102 = icmp ult i64 %86, %100, !dbg !4946
  %103 = mul i64 %100, %73, !dbg !4948
  %104 = select i1 %102, i64 -1, i64 %103, !dbg !4949
  %105 = or i1 %102, %101, !dbg !4950
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4935, metadata !694), !dbg !4943
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4935, metadata !694), !dbg !4943
  %106 = icmp ult i64 %86, %104, !dbg !4946
  %107 = mul i64 %104, %73, !dbg !4948
  %108 = select i1 %106, i64 -1, i64 %107, !dbg !4949
  %109 = or i1 %106, %105, !dbg !4950
  %110 = zext i1 %109 to i32, !dbg !4950
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4935, metadata !694), !dbg !4943
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4935, metadata !694), !dbg !4943
  br label %253, !dbg !4927

; <label>:111:                                    ; preds = %72, %72
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4935, metadata !694), !dbg !4951
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4942, metadata !694), !dbg !4953
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4942, metadata !694), !dbg !4953
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4935, metadata !694), !dbg !4951
  %112 = udiv i64 -1, %73
  %113 = icmp ult i64 %112, %49, !dbg !4954
  %114 = mul i64 %49, %73, !dbg !4956
  %115 = select i1 %113, i64 -1, i64 %114, !dbg !4957
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4935, metadata !694), !dbg !4951
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4935, metadata !694), !dbg !4951
  %116 = icmp ult i64 %112, %115, !dbg !4954
  %117 = mul i64 %115, %73, !dbg !4956
  %118 = select i1 %116, i64 -1, i64 %117, !dbg !4957
  %119 = or i1 %116, %113, !dbg !4958
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4935, metadata !694), !dbg !4951
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4935, metadata !694), !dbg !4951
  %120 = icmp ult i64 %112, %118, !dbg !4954
  %121 = mul i64 %118, %73, !dbg !4956
  %122 = select i1 %120, i64 -1, i64 %121, !dbg !4957
  %123 = or i1 %120, %119, !dbg !4958
  %124 = zext i1 %123 to i32, !dbg !4958
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4935, metadata !694), !dbg !4951
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4935, metadata !694), !dbg !4951
  br label %253, !dbg !4927

; <label>:125:                                    ; preds = %72, %72
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4935, metadata !694), !dbg !4959
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4942, metadata !694), !dbg !4961
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4942, metadata !694), !dbg !4961
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4935, metadata !694), !dbg !4959
  %126 = udiv i64 -1, %73
  %127 = icmp ult i64 %126, %49, !dbg !4962
  %128 = mul i64 %49, %73, !dbg !4964
  %129 = select i1 %127, i64 -1, i64 %128, !dbg !4965
  %130 = zext i1 %127 to i32, !dbg !4965
  tail call void @llvm.dbg.value(metadata i32 %130, i64 0, metadata !4942, metadata !694), !dbg !4961
  tail call void @llvm.dbg.value(metadata i32 %130, i64 0, metadata !4942, metadata !694), !dbg !4961
  br label %253, !dbg !4927

; <label>:131:                                    ; preds = %72, %72
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4935, metadata !694), !dbg !4966
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4942, metadata !694), !dbg !4968
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4942, metadata !694), !dbg !4968
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4935, metadata !694), !dbg !4966
  %132 = udiv i64 -1, %73
  %133 = icmp ult i64 %132, %49, !dbg !4969
  %134 = mul i64 %49, %73, !dbg !4971
  %135 = select i1 %133, i64 -1, i64 %134, !dbg !4972
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4935, metadata !694), !dbg !4966
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4935, metadata !694), !dbg !4966
  %136 = icmp ult i64 %132, %135, !dbg !4969
  %137 = mul i64 %135, %73, !dbg !4971
  %138 = select i1 %136, i64 -1, i64 %137, !dbg !4972
  %139 = or i1 %136, %133, !dbg !4973
  %140 = zext i1 %139 to i32, !dbg !4973
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4935, metadata !694), !dbg !4966
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4935, metadata !694), !dbg !4966
  br label %253, !dbg !4927

; <label>:141:                                    ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4935, metadata !694), !dbg !4974
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4942, metadata !694), !dbg !4976
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4942, metadata !694), !dbg !4976
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !4935, metadata !694), !dbg !4974
  %142 = udiv i64 -1, %73
  %143 = icmp ult i64 %142, %49, !dbg !4977
  %144 = mul i64 %49, %73, !dbg !4979
  %145 = select i1 %143, i64 -1, i64 %144, !dbg !4980
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4935, metadata !694), !dbg !4974
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4935, metadata !694), !dbg !4974
  %146 = icmp ult i64 %142, %145, !dbg !4977
  %147 = mul i64 %145, %73, !dbg !4979
  %148 = select i1 %146, i64 -1, i64 %147, !dbg !4980
  %149 = or i1 %146, %143, !dbg !4981
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4935, metadata !694), !dbg !4974
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4935, metadata !694), !dbg !4974
  %150 = icmp ult i64 %142, %148, !dbg !4977
  %151 = mul i64 %148, %73, !dbg !4979
  %152 = select i1 %150, i64 -1, i64 %151, !dbg !4980
  %153 = or i1 %150, %149, !dbg !4981
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4935, metadata !694), !dbg !4974
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4935, metadata !694), !dbg !4974
  %154 = icmp ult i64 %142, %152, !dbg !4977
  %155 = mul i64 %152, %73, !dbg !4979
  %156 = select i1 %154, i64 -1, i64 %155, !dbg !4980
  %157 = or i1 %154, %153, !dbg !4981
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4935, metadata !694), !dbg !4974
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4935, metadata !694), !dbg !4974
  %158 = icmp ult i64 %142, %156, !dbg !4977
  %159 = mul i64 %156, %73, !dbg !4979
  %160 = select i1 %158, i64 -1, i64 %159, !dbg !4980
  %161 = or i1 %158, %157, !dbg !4981
  %162 = zext i1 %161 to i32, !dbg !4981
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4935, metadata !694), !dbg !4974
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4935, metadata !694), !dbg !4974
  br label %253, !dbg !4927

; <label>:163:                                    ; preds = %72, %72
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4935, metadata !694), !dbg !4982
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4942, metadata !694), !dbg !4984
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4942, metadata !694), !dbg !4984
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !4935, metadata !694), !dbg !4982
  %164 = udiv i64 -1, %73
  %165 = icmp ult i64 %164, %49, !dbg !4985
  %166 = mul i64 %49, %73, !dbg !4987
  %167 = select i1 %165, i64 -1, i64 %166, !dbg !4988
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4935, metadata !694), !dbg !4982
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4935, metadata !694), !dbg !4982
  %168 = icmp ult i64 %164, %167, !dbg !4985
  %169 = mul i64 %167, %73, !dbg !4987
  %170 = select i1 %168, i64 -1, i64 %169, !dbg !4988
  %171 = or i1 %168, %165, !dbg !4989
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4935, metadata !694), !dbg !4982
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4935, metadata !694), !dbg !4982
  %172 = icmp ult i64 %164, %170, !dbg !4985
  %173 = mul i64 %170, %73, !dbg !4987
  %174 = select i1 %172, i64 -1, i64 %173, !dbg !4988
  %175 = or i1 %172, %171, !dbg !4989
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4935, metadata !694), !dbg !4982
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4935, metadata !694), !dbg !4982
  %176 = icmp ult i64 %164, %174, !dbg !4985
  %177 = mul i64 %174, %73, !dbg !4987
  %178 = select i1 %176, i64 -1, i64 %177, !dbg !4988
  %179 = or i1 %176, %175, !dbg !4989
  %180 = zext i1 %179 to i32, !dbg !4989
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4935, metadata !694), !dbg !4982
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !4935, metadata !694), !dbg !4982
  br label %253, !dbg !4927

; <label>:181:                                    ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4914, metadata !694), !dbg !4990
  %182 = icmp slt i64 %49, 0, !dbg !4992
  %183 = shl i64 %49, 1, !dbg !4993
  %184 = select i1 %182, i64 -1, i64 %183, !dbg !4994
  %185 = lshr i64 %49, 63, !dbg !4994
  %186 = trunc i64 %185 to i32, !dbg !4994
  call void @llvm.dbg.value(metadata i32 %186, i64 0, metadata !4816, metadata !694), !dbg !4927
  br label %253, !dbg !4995

; <label>:187:                                    ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !4935, metadata !694), !dbg !4996
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4942, metadata !694), !dbg !4998
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4942, metadata !694), !dbg !4998
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !4935, metadata !694), !dbg !4996
  %188 = udiv i64 -1, %73
  %189 = icmp ult i64 %188, %49, !dbg !4999
  %190 = mul i64 %49, %73, !dbg !5001
  %191 = select i1 %189, i64 -1, i64 %190, !dbg !5002
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4935, metadata !694), !dbg !4996
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4935, metadata !694), !dbg !4996
  %192 = icmp ult i64 %188, %191, !dbg !4999
  %193 = mul i64 %191, %73, !dbg !5001
  %194 = select i1 %192, i64 -1, i64 %193, !dbg !5002
  %195 = or i1 %192, %189, !dbg !5003
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4935, metadata !694), !dbg !4996
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4935, metadata !694), !dbg !4996
  %196 = icmp ult i64 %188, %194, !dbg !4999
  %197 = mul i64 %194, %73, !dbg !5001
  %198 = select i1 %196, i64 -1, i64 %197, !dbg !5002
  %199 = or i1 %196, %195, !dbg !5003
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4935, metadata !694), !dbg !4996
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4935, metadata !694), !dbg !4996
  %200 = icmp ult i64 %188, %198, !dbg !4999
  %201 = mul i64 %198, %73, !dbg !5001
  %202 = select i1 %200, i64 -1, i64 %201, !dbg !5002
  %203 = or i1 %200, %199, !dbg !5003
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4935, metadata !694), !dbg !4996
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4935, metadata !694), !dbg !4996
  %204 = icmp ult i64 %188, %202, !dbg !4999
  %205 = mul i64 %202, %73, !dbg !5001
  %206 = select i1 %204, i64 -1, i64 %205, !dbg !5002
  %207 = or i1 %204, %203, !dbg !5003
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4935, metadata !694), !dbg !4996
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4935, metadata !694), !dbg !4996
  %208 = icmp ult i64 %188, %206, !dbg !4999
  %209 = mul i64 %206, %73, !dbg !5001
  %210 = select i1 %208, i64 -1, i64 %209, !dbg !5002
  %211 = or i1 %208, %207, !dbg !5003
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4935, metadata !694), !dbg !4996
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4935, metadata !694), !dbg !4996
  %212 = icmp ult i64 %188, %210, !dbg !4999
  %213 = mul i64 %210, %73, !dbg !5001
  %214 = select i1 %212, i64 -1, i64 %213, !dbg !5002
  %215 = or i1 %212, %211, !dbg !5003
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4935, metadata !694), !dbg !4996
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4935, metadata !694), !dbg !4996
  %216 = icmp ult i64 %188, %214, !dbg !4999
  %217 = mul i64 %214, %73, !dbg !5001
  %218 = select i1 %216, i64 -1, i64 %217, !dbg !5002
  %219 = or i1 %216, %215, !dbg !5003
  %220 = zext i1 %219 to i32, !dbg !5003
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4935, metadata !694), !dbg !4996
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4935, metadata !694), !dbg !4996
  br label %253, !dbg !4927

; <label>:221:                                    ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4935, metadata !694), !dbg !5004
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4942, metadata !694), !dbg !5006
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4942, metadata !694), !dbg !5006
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !4935, metadata !694), !dbg !5004
  %222 = udiv i64 -1, %73
  %223 = icmp ult i64 %222, %49, !dbg !5007
  %224 = mul i64 %49, %73, !dbg !5009
  %225 = select i1 %223, i64 -1, i64 %224, !dbg !5010
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4935, metadata !694), !dbg !5004
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4935, metadata !694), !dbg !5004
  %226 = icmp ult i64 %222, %225, !dbg !5007
  %227 = mul i64 %225, %73, !dbg !5009
  %228 = select i1 %226, i64 -1, i64 %227, !dbg !5010
  %229 = or i1 %226, %223, !dbg !5011
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4935, metadata !694), !dbg !5004
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4935, metadata !694), !dbg !5004
  %230 = icmp ult i64 %222, %228, !dbg !5007
  %231 = mul i64 %228, %73, !dbg !5009
  %232 = select i1 %230, i64 -1, i64 %231, !dbg !5010
  %233 = or i1 %230, %229, !dbg !5011
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4935, metadata !694), !dbg !5004
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4935, metadata !694), !dbg !5004
  %234 = icmp ult i64 %222, %232, !dbg !5007
  %235 = mul i64 %232, %73, !dbg !5009
  %236 = select i1 %234, i64 -1, i64 %235, !dbg !5010
  %237 = or i1 %234, %233, !dbg !5011
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4935, metadata !694), !dbg !5004
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4935, metadata !694), !dbg !5004
  %238 = icmp ult i64 %222, %236, !dbg !5007
  %239 = mul i64 %236, %73, !dbg !5009
  %240 = select i1 %238, i64 -1, i64 %239, !dbg !5010
  %241 = or i1 %238, %237, !dbg !5011
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4935, metadata !694), !dbg !5004
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4935, metadata !694), !dbg !5004
  %242 = icmp ult i64 %222, %240, !dbg !5007
  %243 = mul i64 %240, %73, !dbg !5009
  %244 = select i1 %242, i64 -1, i64 %243, !dbg !5010
  %245 = or i1 %242, %241, !dbg !5011
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4935, metadata !694), !dbg !5004
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4935, metadata !694), !dbg !5004
  %246 = icmp ult i64 %222, %244, !dbg !5007
  %247 = mul i64 %244, %73, !dbg !5009
  %248 = select i1 %246, i64 -1, i64 %247, !dbg !5010
  %249 = or i1 %246, %245, !dbg !5011
  %250 = zext i1 %249 to i32, !dbg !5011
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4935, metadata !694), !dbg !5004
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !4935, metadata !694), !dbg !5004
  br label %253, !dbg !4927

; <label>:251:                                    ; preds = %72
  call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !4806, metadata !694), !dbg !4857
  store i64 %49, i64* %3, align 8, !dbg !5012, !tbaa !1358
  %252 = or i32 %48, 2, !dbg !5013
  br label %265, !dbg !5014

; <label>:253:                                    ; preds = %221, %187, %163, %141, %131, %125, %111, %85, %75, %80, %181, %72
  %254 = phi i64 [ %184, %181 ], [ %49, %72 ], [ %83, %80 ], [ %78, %75 ], [ %108, %85 ], [ %122, %111 ], [ %129, %125 ], [ %138, %131 ], [ %160, %141 ], [ %178, %163 ], [ %218, %187 ], [ %248, %221 ]
  %255 = phi i32 [ %186, %181 ], [ 0, %72 ], [ %84, %80 ], [ %79, %75 ], [ %110, %85 ], [ %124, %111 ], [ %130, %125 ], [ %140, %131 ], [ %162, %141 ], [ %180, %163 ], [ %220, %187 ], [ %250, %221 ]
  call void @llvm.dbg.value(metadata i32 %255, i64 0, metadata !4816, metadata !694), !dbg !4927
  %256 = or i32 %255, %48, !dbg !5015
  call void @llvm.dbg.value(metadata i32 %256, i64 0, metadata !4807, metadata !694), !dbg !4823
  %257 = getelementptr inbounds i8, i8* %29, i64 %74, !dbg !5016
  store i8* %257, i8** %25, align 8, !dbg !5016, !tbaa !702
  %258 = load i8, i8* %257, align 1, !dbg !5017, !tbaa !975
  %259 = icmp eq i8 %258, 0, !dbg !5017
  %260 = or i32 %256, 2, !dbg !5019
  call void @llvm.dbg.value(metadata i32 %260, i64 0, metadata !4807, metadata !694), !dbg !4823
  %261 = select i1 %259, i32 %256, i32 %260, !dbg !5020
  call void @llvm.dbg.value(metadata i32 %261, i64 0, metadata !4807, metadata !694), !dbg !4823
  call void @llvm.dbg.value(metadata i32 %261, i64 0, metadata !4807, metadata !694), !dbg !4823
  br label %262

; <label>:262:                                    ; preds = %253, %47
  %263 = phi i64 [ %49, %47 ], [ %254, %253 ]
  %264 = phi i32 [ %48, %47 ], [ %261, %253 ]
  call void @llvm.dbg.value(metadata i32 %264, i64 0, metadata !4807, metadata !694), !dbg !4823
  call void @llvm.dbg.value(metadata i64 %263, i64 0, metadata !4806, metadata !694), !dbg !4857
  store i64 %263, i64* %3, align 8, !dbg !5021, !tbaa !1358
  br label %265, !dbg !5022

; <label>:265:                                    ; preds = %24, %56, %251, %40, %31, %33, %36, %262, %46
  %266 = phi i32 [ %264, %262 ], [ %44, %46 ], [ 4, %24 ], [ 4, %36 ], [ 4, %33 ], [ 4, %31 ], [ 4, %40 ], [ %57, %56 ], [ %252, %251 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %7) #10, !dbg !5023
  ret i32 %266, !dbg !5023
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #5

; Function Attrs: nounwind
declare i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !5024 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !5027, metadata !694), !dbg !5033
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !5028, metadata !694), !dbg !5034
  %3 = icmp eq i64 %0, 0, !dbg !5035
  %4 = icmp eq i64 %1, 0, !dbg !5036
  %5 = or i1 %3, %4, !dbg !5038
  br i1 %5, label %12, label %6, !dbg !5038

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !5039
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !5030, metadata !694), !dbg !5040
  %8 = udiv i64 %7, %1, !dbg !5041
  %9 = icmp eq i64 %8, %0, !dbg !5043
  br i1 %9, label %12, label %10, !dbg !5044

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #1, !dbg !5045
  store i32 12, i32* %11, align 4, !dbg !5047, !tbaa !1089
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !5027, metadata !694), !dbg !5033
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !5028, metadata !694), !dbg !5034
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #10, !dbg !5048
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !5029, metadata !694), !dbg !5049
  br label %16, !dbg !5050

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !5051
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !5052 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !5069, metadata !694), !dbg !5078
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !5070, metadata !694), !dbg !5079
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !5071, metadata !694), !dbg !5080
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !5072, metadata !694), !dbg !5081
  %6 = bitcast i32* %5 to i8*, !dbg !5082
  call void @llvm.lifetime.start(i64 4, i8* nonnull %6) #10, !dbg !5082
  %7 = icmp eq i32* %0, null, !dbg !5083
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !5069, metadata !694), !dbg !5078
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !5085
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !5069, metadata !694), !dbg !5078
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #10, !dbg !5086
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !5073, metadata !694), !dbg !5087
  %10 = icmp ugt i64 %9, -3, !dbg !5088
  %11 = icmp ne i64 %2, 0, !dbg !5089
  %12 = and i1 %11, %10, !dbg !5091
  br i1 %12, label %13, label %18, !dbg !5091

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #10, !dbg !5092
  br i1 %14, label %18, label %15, !dbg !5094

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !5096, !tbaa !975
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !5075, metadata !694), !dbg !5097
  %17 = zext i8 %16 to i32, !dbg !5098
  store i32 %17, i32* %8, align 4, !dbg !5099, !tbaa !1089
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end(i64 4, i8* nonnull %6) #10, !dbg !5100
  ret i64 %19, !dbg !5100
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !5101 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5146, metadata !694), !dbg !5150
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #10, !dbg !5151
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5152, metadata !694), !dbg !5156
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !5158
  %4 = load i32, i32* %3, align 8, !dbg !5158, !tbaa !5159
  %5 = and i32 %4, 32, !dbg !5158
  %6 = icmp eq i32 %5, 0, !dbg !5161
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #10, !dbg !5162
  %8 = icmp ne i32 %7, 0, !dbg !5163
  br i1 %6, label %9, label %19, !dbg !5164

; <label>:9:                                      ; preds = %1
  %10 = xor i1 %8, true, !dbg !5166
  %11 = icmp ne i64 %2, 0, !dbg !5166
  %12 = or i1 %11, %10, !dbg !5166
  %13 = sext i1 %8 to i32, !dbg !5166
  br i1 %12, label %22, label %14, !dbg !5166

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #1, !dbg !5168
  %16 = load i32, i32* %15, align 4, !dbg !5168, !tbaa !1089
  %17 = icmp ne i32 %16, 9, !dbg !5170
  %18 = sext i1 %17 to i32, !dbg !5170
  br label %22, !dbg !5170

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !5172

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #1, !dbg !5174
  store i32 0, i32* %21, align 4, !dbg !5176, !tbaa !1089
  br label %22, !dbg !5174

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !5177
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !5178 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !5183, metadata !694), !dbg !5203
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !5184, metadata !694), !dbg !5204
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #10, !dbg !5205
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !5185, metadata !694), !dbg !5206
  %3 = icmp eq i8* %2, null, !dbg !5207
  br i1 %3, label %15, label %4, !dbg !5208

; <label>:4:                                      ; preds = %1
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5193, metadata !694), !dbg !5209
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !5194, metadata !694), !dbg !5210
  %5 = load i8, i8* %2, align 1, !dbg !5211, !tbaa !975
  %6 = icmp eq i8 %5, 67, !dbg !5213
  br i1 %6, label %7, label %11, !dbg !5216

; <label>:7:                                      ; preds = %4
  %8 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !5218
  %9 = load i8, i8* %8, align 1, !dbg !5218, !tbaa !975
  %10 = icmp eq i8 %9, 0, !dbg !5221
  br i1 %10, label %14, label %11, !dbg !5223

; <label>:11:                                     ; preds = %4, %7
  tail call void @llvm.dbg.value(metadata i64 5, i64 0, metadata !5199, metadata !694), !dbg !5225
  %12 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.140, i64 0, i64 0)) #10, !dbg !5226
  %13 = icmp eq i32 %12, 0, !dbg !5228
  br i1 %13, label %14, label %15, !dbg !5230

; <label>:14:                                     ; preds = %11, %7
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !5184, metadata !694), !dbg !5204
  br label %15, !dbg !5232

; <label>:15:                                     ; preds = %1, %11, %14
  %16 = phi i1 [ false, %14 ], [ true, %11 ], [ true, %1 ]
  ret i1 %16, !dbg !5233
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !5234 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !5246, metadata !694), !dbg !5320
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !5313, metadata !694), !dbg !5322
  %3 = tail call i8* @nl_langinfo(i32 14) #10, !dbg !5323
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !5238, metadata !694), !dbg !5324
  %4 = icmp eq i8* %3, null, !dbg !5325
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.143, i64 0, i64 0), i8* %3, !dbg !5327
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !5238, metadata !694), !dbg !5324
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !5328, !tbaa !702
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !5260, metadata !694) #10, !dbg !5329
  %7 = icmp eq i8* %6, null, !dbg !5330
  br i1 %7, label %8, label %127, !dbg !5331

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.144, i64 0, i64 0)) #10, !dbg !5332
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !5261, metadata !694) #10, !dbg !5333
  %10 = icmp eq i8* %9, null, !dbg !5334
  br i1 %10, label %14, label %11, !dbg !5336

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !5337, !tbaa !975
  %13 = icmp eq i8 %12, 0, !dbg !5339
  br i1 %13, label %14, label %15, !dbg !5340

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !5342

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.145, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !5261, metadata !694) #10, !dbg !5333
  %17 = tail call i64 @strlen(i8* nonnull %16) #13, !dbg !5343
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !5264, metadata !694) #10, !dbg !5344
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !5266, metadata !694) #10, !dbg !5345
  %18 = icmp eq i64 %17, 0, !dbg !5346
  br i1 %18, label %24, label %19, !dbg !5347

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !5348
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !5348
  %22 = load i8, i8* %21, align 1, !dbg !5348, !tbaa !975
  %23 = icmp ne i8 %22, 47, !dbg !5350
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !5351
  %27 = add i64 %17, 14, !dbg !5352
  %28 = add i64 %27, %26, !dbg !5353
  %29 = tail call noalias i8* @malloc(i64 %28) #10, !dbg !5354
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !5263, metadata !694) #10, !dbg !5355
  %30 = icmp eq i8* %29, null, !dbg !5356
  br i1 %30, label %125, label %31, !dbg !5356

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #10, !dbg !5357
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !5360

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !5361, !tbaa !975
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !5363
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.146, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !5364
  br label %37, !dbg !5365

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !5363
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.146, i64 0, i64 0), i64 14, i32 1, i1 false) #10, !dbg !5364
  br label %37, !dbg !5365

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #10, !dbg !5366
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !5268, metadata !694) #10, !dbg !5367
  %39 = icmp slt i32 %38, 0, !dbg !5368
  br i1 %39, label %123, label %40, !dbg !5369

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.147, i64 0, i64 0)) #10, !dbg !5370
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !5269, metadata !694) #10, !dbg !5371
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !5372
  br i1 %42, label %48, label %43, !dbg !5373

; <label>:43:                                     ; preds = %40
  %44 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %45 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %46 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %47 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !5374

; <label>:48:                                     ; preds = %40
  %49 = tail call i32 @close(i32 %38) #10, !dbg !5375
  br label %123, !dbg !5377

; <label>:50:                                     ; preds = %111, %43
  %51 = phi i64 [ %112, %111 ], [ 0, %43 ]
  %52 = phi i8* [ %113, %111 ], [ null, %43 ]
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !5310, metadata !694) #10, !dbg !5374
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !5311, metadata !694) #10, !dbg !5378
  call void @llvm.lifetime.start(i64 51, i8* nonnull %44) #10, !dbg !5379
  call void @llvm.lifetime.start(i64 51, i8* nonnull %45) #10, !dbg !5380
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !5381, metadata !694) #10, !dbg !5386
  %53 = load i8*, i8** %46, align 8, !dbg !5388, !tbaa !5389
  %54 = load i8*, i8** %47, align 8, !dbg !5388, !tbaa !5390
  %55 = icmp ult i8* %53, %54, !dbg !5388
  br i1 %55, label %58, label %56, !dbg !5388, !prof !5391

; <label>:56:                                     ; preds = %50
  %57 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !5392
  br label %62, !dbg !5392

; <label>:58:                                     ; preds = %50
  %59 = getelementptr inbounds i8, i8* %53, i64 1, !dbg !5394
  store i8* %59, i8** %46, align 8, !dbg !5394, !tbaa !5389
  %60 = load i8, i8* %53, align 1, !dbg !5394, !tbaa !975
  %61 = zext i8 %60 to i32, !dbg !5394
  br label %62, !dbg !5394

; <label>:62:                                     ; preds = %58, %56
  %63 = phi i32 [ %57, %56 ], [ %61, %58 ], !dbg !5396
  call void @llvm.dbg.value(metadata i32 %63, i64 0, metadata !5312, metadata !694) #10, !dbg !5398
  switch i32 %63, label %77 [
    i32 -1, label %115
    i32 32, label %111
    i32 10, label %111
    i32 9, label %111
    i32 35, label %64
  ], !dbg !5399

; <label>:64:                                     ; preds = %62
  br label %65, !dbg !5400

; <label>:65:                                     ; preds = %64, %75
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !5381, metadata !694) #10, !dbg !5400
  %66 = load i8*, i8** %46, align 8, !dbg !5404, !tbaa !5389
  %67 = load i8*, i8** %47, align 8, !dbg !5404, !tbaa !5390
  %68 = icmp ult i8* %66, %67, !dbg !5404
  br i1 %68, label %71, label %69, !dbg !5404, !prof !5391

; <label>:69:                                     ; preds = %65
  %70 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #10, !dbg !5405
  br label %75, !dbg !5405

; <label>:71:                                     ; preds = %65
  %72 = getelementptr inbounds i8, i8* %66, i64 1, !dbg !5406
  store i8* %72, i8** %46, align 8, !dbg !5406, !tbaa !5389
  %73 = load i8, i8* %66, align 1, !dbg !5406, !tbaa !975
  %74 = zext i8 %73 to i32, !dbg !5406
  br label %75, !dbg !5406

; <label>:75:                                     ; preds = %71, %69
  %76 = phi i32 [ %70, %69 ], [ %74, %71 ], !dbg !5407
  call void @llvm.dbg.value(metadata i32 %76, i64 0, metadata !5312, metadata !694) #10, !dbg !5398
  switch i32 %76, label %65 [
    i32 -1, label %114
    i32 10, label %110
  ], !dbg !5408, !llvm.loop !5410

; <label>:77:                                     ; preds = %62
  %78 = call i32 @ungetc(i32 %63, %struct._IO_FILE* nonnull %41) #10, !dbg !5413
  %79 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.148, i64 0, i64 0), i8* nonnull %44, i8* nonnull %45) #10, !dbg !5414
  %80 = icmp slt i32 %79, 2, !dbg !5416
  br i1 %80, label %115, label %81, !dbg !5417

; <label>:81:                                     ; preds = %77
  %82 = call i64 @strlen(i8* nonnull %44) #13, !dbg !5418
  call void @llvm.dbg.value(metadata i64 %82, i64 0, metadata !5317, metadata !694) #10, !dbg !5419
  %83 = call i64 @strlen(i8* nonnull %45) #13, !dbg !5420
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !5318, metadata !694) #10, !dbg !5421
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !5319, metadata !694) #10, !dbg !5422
  %84 = icmp eq i64 %51, 0, !dbg !5423
  %85 = add i64 %82, 1
  %86 = add i64 %85, %83
  %87 = add i64 %86, 1
  br i1 %84, label %88, label %91, !dbg !5425

; <label>:88:                                     ; preds = %81
  call void @llvm.dbg.value(metadata i64 %87, i64 0, metadata !5311, metadata !694) #10, !dbg !5378
  %89 = add i64 %86, 2, !dbg !5426
  %90 = call noalias i8* @malloc(i64 %89) #10, !dbg !5428
  call void @llvm.dbg.value(metadata i8* %90, i64 0, metadata !5310, metadata !694) #10, !dbg !5374
  br label %95, !dbg !5429

; <label>:91:                                     ; preds = %81
  %92 = add i64 %87, %51, !dbg !5430
  call void @llvm.dbg.value(metadata i64 %92, i64 0, metadata !5311, metadata !694) #10, !dbg !5378
  %93 = add i64 %92, 1, !dbg !5432
  %94 = call i8* @realloc(i8* %52, i64 %93) #10, !dbg !5433
  call void @llvm.dbg.value(metadata i8* %94, i64 0, metadata !5310, metadata !694) #10, !dbg !5374
  br label %95

; <label>:95:                                     ; preds = %91, %88
  %96 = phi i64 [ %87, %88 ], [ %92, %91 ]
  %97 = phi i8* [ %90, %88 ], [ %94, %91 ]
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !5310, metadata !694) #10, !dbg !5374
  call void @llvm.dbg.value(metadata i64 %96, i64 0, metadata !5311, metadata !694) #10, !dbg !5378
  %98 = icmp eq i8* %97, null, !dbg !5434
  br i1 %98, label %99, label %100, !dbg !5436

; <label>:99:                                     ; preds = %95
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !5311, metadata !694) #10, !dbg !5378
  call void @free(i8* %52) #10, !dbg !5437
  br label %116, !dbg !5439

; <label>:100:                                    ; preds = %95
  %101 = getelementptr inbounds i8, i8* %97, i64 %96, !dbg !5440
  %102 = xor i64 %83, -1, !dbg !5441
  %103 = getelementptr inbounds i8, i8* %101, i64 %102, !dbg !5441
  %104 = xor i64 %82, -1, !dbg !5442
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !5442
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !5443, metadata !694) #10, !dbg !5451
  call void @llvm.dbg.value(metadata i8* %44, i64 0, metadata !5450, metadata !694) #10, !dbg !5451
  %106 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false) #10, !dbg !5453
  %107 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %44, i64 %106) #10, !dbg !5454
  call void @llvm.dbg.value(metadata i8* %103, i64 0, metadata !5443, metadata !694) #10, !dbg !5455
  call void @llvm.dbg.value(metadata i8* %45, i64 0, metadata !5450, metadata !694) #10, !dbg !5455
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %103, i1 false) #10, !dbg !5457
  %109 = call i8* @__strcpy_chk(i8* nonnull %103, i8* nonnull %45, i64 %108) #10, !dbg !5458
  br label %111, !dbg !5459

; <label>:110:                                    ; preds = %75
  br label %111, !dbg !5374

; <label>:111:                                    ; preds = %110, %100, %62, %62, %62
  %112 = phi i64 [ %96, %100 ], [ %51, %62 ], [ %51, %62 ], [ %51, %62 ], [ %51, %110 ]
  %113 = phi i8* [ %97, %100 ], [ %52, %62 ], [ %52, %62 ], [ %52, %62 ], [ %52, %110 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !5310, metadata !694) #10, !dbg !5374
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !5311, metadata !694) #10, !dbg !5378
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #10, !dbg !5459
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #10, !dbg !5459
  br label %50

; <label>:114:                                    ; preds = %75
  br label %116, !dbg !5374

; <label>:115:                                    ; preds = %62, %77
  br label %116, !dbg !5374

; <label>:116:                                    ; preds = %115, %114, %99
  %117 = phi i64 [ 0, %99 ], [ %51, %114 ], [ %51, %115 ]
  %118 = phi i8* [ null, %99 ], [ %52, %114 ], [ %52, %115 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !5310, metadata !694) #10, !dbg !5374
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !5311, metadata !694) #10, !dbg !5378
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #10, !dbg !5459
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #10, !dbg !5459
  %119 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #10, !dbg !5460
  %120 = icmp eq i64 %117, 0, !dbg !5461
  br i1 %120, label %123, label %121, !dbg !5463

; <label>:121:                                    ; preds = %116
  %122 = getelementptr inbounds i8, i8* %118, i64 %117, !dbg !5464
  store i8 0, i8* %122, align 1, !dbg !5466, !tbaa !975
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !5260, metadata !694) #10, !dbg !5329
  br label %123

; <label>:123:                                    ; preds = %121, %116, %48, %37
  %124 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.143, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.143, i64 0, i64 0), %48 ], [ %118, %121 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.143, i64 0, i64 0), %116 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !5260, metadata !694) #10, !dbg !5329
  call void @free(i8* %29) #10, !dbg !5467
  br label %125

; <label>:125:                                    ; preds = %123, %24
  %126 = phi i8* [ %124, %123 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.143, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %126, i64 0, metadata !5260, metadata !694) #10, !dbg !5329
  store volatile i8* %126, i8** @charset_aliases, align 8, !dbg !5468, !tbaa !702
  br label %127, !dbg !5469

; <label>:127:                                    ; preds = %0, %125
  %128 = phi i8* [ %6, %0 ], [ %126, %125 ]
  call void @llvm.dbg.value(metadata i8* %128, i64 0, metadata !5239, metadata !694), !dbg !5470
  %129 = load i8, i8* %128, align 1, !dbg !5471, !tbaa !975
  %130 = icmp eq i8 %129, 0, !dbg !5472
  br i1 %130, label %157, label %131, !dbg !5473

; <label>:131:                                    ; preds = %127
  br label %132, !dbg !5475

; <label>:132:                                    ; preds = %131, %147
  %133 = phi i8 [ %154, %147 ], [ %129, %131 ]
  %134 = phi i8* [ %153, %147 ], [ %128, %131 ]
  %135 = call i32 @strcmp(i8* %5, i8* %134) #10, !dbg !5475
  %136 = icmp eq i32 %135, 0, !dbg !5476
  br i1 %136, label %143, label %137, !dbg !5477

; <label>:137:                                    ; preds = %132
  %138 = icmp eq i8 %133, 42, !dbg !5478
  br i1 %138, label %139, label %147, !dbg !5480

; <label>:139:                                    ; preds = %137
  %140 = getelementptr inbounds i8, i8* %134, i64 1, !dbg !5481
  %141 = load i8, i8* %140, align 1, !dbg !5481, !tbaa !975
  %142 = icmp eq i8 %141, 0, !dbg !5483
  br i1 %142, label %143, label %147, !dbg !5484

; <label>:143:                                    ; preds = %139, %132
  %144 = call i64 @strlen(i8* %134) #13, !dbg !5486
  %145 = getelementptr inbounds i8, i8* %134, i64 %144, !dbg !5488
  %146 = getelementptr inbounds i8, i8* %145, i64 1, !dbg !5489
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !5238, metadata !694), !dbg !5324
  br label %157, !dbg !5490

; <label>:147:                                    ; preds = %137, %139
  %148 = call i64 @strlen(i8* %134) #13, !dbg !5491
  %149 = add i64 %148, 1, !dbg !5492
  %150 = getelementptr inbounds i8, i8* %134, i64 %149, !dbg !5493
  call void @llvm.dbg.value(metadata i8* %150, i64 0, metadata !5239, metadata !694), !dbg !5470
  %151 = call i64 @strlen(i8* %150) #13, !dbg !5494
  %152 = add i64 %151, 1, !dbg !5495
  %153 = getelementptr inbounds i8, i8* %150, i64 %152, !dbg !5496
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !5239, metadata !694), !dbg !5470
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !5239, metadata !694), !dbg !5470
  %154 = load i8, i8* %153, align 1, !dbg !5471, !tbaa !975
  %155 = icmp eq i8 %154, 0, !dbg !5472
  br i1 %155, label %156, label %132, !dbg !5473, !llvm.loop !5497

; <label>:156:                                    ; preds = %147
  br label %157, !dbg !5324

; <label>:157:                                    ; preds = %156, %127, %143
  %158 = phi i8* [ %146, %143 ], [ %5, %127 ], [ %5, %156 ]
  call void @llvm.dbg.value(metadata i8* %158, i64 0, metadata !5238, metadata !694), !dbg !5324
  %159 = load i8, i8* %158, align 1, !dbg !5500, !tbaa !975
  %160 = icmp eq i8 %159, 0, !dbg !5502
  %161 = select i1 %160, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.149, i64 0, i64 0), i8* %158, !dbg !5503
  call void @llvm.dbg.value(metadata i8* %161, i64 0, metadata !5238, metadata !694), !dbg !5324
  ret i8* %161, !dbg !5504
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

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #1

; Function Attrs: nounwind
declare i8* @__strcpy_chk(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !5505 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5550, metadata !694), !dbg !5554
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !5551, metadata !694), !dbg !5555
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !5553, metadata !694), !dbg !5556
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !5557
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !5552, metadata !694), !dbg !5558
  %3 = icmp slt i32 %2, 0, !dbg !5559
  br i1 %3, label %4, label %6, !dbg !5561

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !5562
  br label %24, !dbg !5563

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !5564
  %8 = icmp eq i32 %7, 0, !dbg !5564
  br i1 %8, label %13, label %9, !dbg !5566

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !5567
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #10, !dbg !5569
  %12 = icmp eq i64 %11, -1, !dbg !5571
  br i1 %12, label %16, label %13, !dbg !5572

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #10, !dbg !5573
  %15 = icmp eq i32 %14, 0, !dbg !5573
  br i1 %15, label %16, label %18, !dbg !5574

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !5551, metadata !694), !dbg !5555
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !5576
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !5553, metadata !694), !dbg !5556
  br label %24, !dbg !5577

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #1, !dbg !5578
  %20 = load i32, i32* %19, align 4, !dbg !5578, !tbaa !1089
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !5551, metadata !694), !dbg !5555
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !5551, metadata !694), !dbg !5555
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !5576
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !5553, metadata !694), !dbg !5556
  %22 = icmp eq i32 %20, 0, !dbg !5579
  br i1 %22, label %24, label %23, !dbg !5577

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !5581, !tbaa !1089
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !5553, metadata !694), !dbg !5556
  br label %24, !dbg !5583

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !5584
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !5585 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5630, metadata !694), !dbg !5631
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !5632
  br i1 %2, label %6, label %3, !dbg !5634

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !5635
  %5 = icmp eq i32 %4, 0, !dbg !5635
  br i1 %5, label %6, label %8, !dbg !5637

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !5639
  br label %17, !dbg !5640

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5641, metadata !694) #10, !dbg !5646
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !5648
  %10 = load i32, i32* %9, align 8, !dbg !5648, !tbaa !5159
  %11 = and i32 %10, 256, !dbg !5650
  %12 = icmp eq i32 %11, 0, !dbg !5650
  br i1 %12, label %15, label %13, !dbg !5651

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #10, !dbg !5652
  br label %15, !dbg !5652

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !5653
  br label %17, !dbg !5654

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !5655
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !5656 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5701, metadata !694), !dbg !5707
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !5702, metadata !694), !dbg !5708
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !5703, metadata !694), !dbg !5709
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !5710
  %5 = load i8*, i8** %4, align 8, !dbg !5710, !tbaa !5390
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !5711
  %7 = load i8*, i8** %6, align 8, !dbg !5711, !tbaa !5389
  %8 = icmp eq i8* %5, %7, !dbg !5712
  br i1 %8, label %9, label %28, !dbg !5713

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !5714
  %11 = load i8*, i8** %10, align 8, !dbg !5714, !tbaa !5716
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !5717
  %13 = load i8*, i8** %12, align 8, !dbg !5717, !tbaa !5718
  %14 = icmp eq i8* %11, %13, !dbg !5719
  br i1 %14, label %15, label %28, !dbg !5720

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !5721
  %17 = load i8*, i8** %16, align 8, !dbg !5721, !tbaa !5722
  %18 = icmp eq i8* %17, null, !dbg !5723
  br i1 %18, label %19, label %28, !dbg !5724

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !5726
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #10, !dbg !5727
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !5704, metadata !694), !dbg !5729
  %22 = icmp eq i64 %21, -1, !dbg !5730
  br i1 %22, label %30, label %23, !dbg !5732

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !5733
  %25 = load i32, i32* %24, align 8, !dbg !5734, !tbaa !5159
  %26 = and i32 %25, -17, !dbg !5734
  store i32 %26, i32* %24, align 8, !dbg !5734, !tbaa !5159
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !5735
  store i64 %21, i64* %27, align 8, !dbg !5736, !tbaa !5737
  br label %30, !dbg !5738

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !5739
  br label %30, !dbg !5740

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !5741
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

!llvm.dbg.cu = !{!2, !146, !152, !160, !595, !598, !603, !167, !174, !606, !626, !240, !634, !651, !653, !664, !668, !670, !673, !675, !249, !678, !680, !682}
!llvm.ident = !{!684, !684, !684, !684, !684, !684, !684, !684, !684, !684, !684, !684, !684, !684, !684, !684, !684, !684, !684, !684, !684, !684, !684, !684}
!llvm.module.flags = !{!685, !686, !687, !688}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "long_options", scope: !2, file: !3, line: 88, type: !132, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !29, globals: !51)
!3 = !DIFile(filename: "src/head.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4 = !{!5, !10, !24}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "header_mode", file: !3, line: 66, size: 32, elements: !6)
!6 = !{!7, !8, !9}
!7 = !DIEnumerator(name: "multiple_files", value: 0)
!8 = !DIEnumerator(name: "always", value: 1)
!9 = !DIEnumerator(name: "never", value: 2)
!10 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !11, line: 32, size: 32, elements: !12)
!11 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23}
!13 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!14 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!15 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!16 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!17 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!18 = !DIEnumerator(name: "c_quoting_style", value: 5)
!19 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!20 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!21 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!22 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!23 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "Copy_fd_status", file: !3, line: 74, size: 32, elements: !25)
!25 = !{!26, !27, !28}
!26 = !DIEnumerator(name: "COPY_FD_OK", value: 0)
!27 = !DIEnumerator(name: "COPY_FD_READ_ERROR", value: 1)
!28 = !DIEnumerator(name: "COPY_FD_UNEXPECTED_EOF", value: 2)
!29 = !{!30, !31, !33, !34, !39, !43, !46, !48, !41}
!30 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !35, line: 91, baseType: !36)
!35 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !37, line: 140, baseType: !38)
!37 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!38 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !41)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !32)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !44, line: 62, baseType: !45)
!44 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!45 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!50 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!51 = !{!52, !89, !91, !93, !95, !97, !0, !127}
!52 = !DIGlobalVariableExpression(var: !53)
!53 = distinct !DIGlobalVariable(name: "default_file_list", scope: !54, file: !3, line: 937, type: !86, isLocal: true, isDefinition: true)
!54 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 917, type: !55, isLocal: false, isDefinition: true, scopeLine: 918, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !59)
!55 = !DISubroutineType(types: !56)
!56 = !{!57, !57, !58}
!57 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!59 = !{!60, !61, !62, !63, !65, !66, !67, !71, !72, !73, !74, !77, !78, !79, !80}
!60 = !DILocalVariable(name: "argc", arg: 1, scope: !54, file: !3, line: 917, type: !57)
!61 = !DILocalVariable(name: "argv", arg: 2, scope: !54, file: !3, line: 917, type: !58)
!62 = !DILocalVariable(name: "header_mode", scope: !54, file: !3, line: 919, type: !5)
!63 = !DILocalVariable(name: "ok", scope: !54, file: !3, line: 920, type: !64)
!64 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!65 = !DILocalVariable(name: "c", scope: !54, file: !3, line: 921, type: !57)
!66 = !DILocalVariable(name: "i", scope: !54, file: !3, line: 922, type: !43)
!67 = !DILocalVariable(name: "n_units", scope: !54, file: !3, line: 925, type: !68)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !69, line: 136, baseType: !70)
!69 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !37, line: 62, baseType: !45)
!71 = !DILocalVariable(name: "count_lines", scope: !54, file: !3, line: 929, type: !64)
!72 = !DILocalVariable(name: "elide_from_end", scope: !54, file: !3, line: 933, type: !64)
!73 = !DILocalVariable(name: "file_list", scope: !54, file: !3, line: 938, type: !39)
!74 = !DILocalVariable(name: "a", scope: !75, file: !3, line: 956, type: !31)
!75 = distinct !DILexicalBlock(scope: !76, file: !3, line: 955, column: 5)
!76 = distinct !DILexicalBlock(scope: !54, file: !3, line: 954, column: 7)
!77 = !DILocalVariable(name: "n_string", scope: !75, file: !3, line: 957, type: !31)
!78 = !DILocalVariable(name: "end_n_string", scope: !75, file: !3, line: 958, type: !31)
!79 = !DILocalVariable(name: "multiplier_char", scope: !75, file: !3, line: 959, type: !32)
!80 = !DILocalVariable(name: "umax_buf", scope: !81, file: !3, line: 1076, type: !83)
!81 = distinct !DILexicalBlock(scope: !82, file: !3, line: 1075, column: 5)
!82 = distinct !DILexicalBlock(scope: !54, file: !3, line: 1074, column: 8)
!83 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 168, elements: !84)
!84 = !{!85}
!85 = !DISubrange(count: 21)
!86 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 128, elements: !87)
!87 = !{!88}
!88 = !DISubrange(count: 2)
!89 = !DIGlobalVariableExpression(var: !90)
!90 = distinct !DIGlobalVariable(name: "presume_input_pipe", scope: !2, file: !3, line: 57, type: !64, isLocal: true, isDefinition: true)
!91 = !DIGlobalVariableExpression(var: !92)
!92 = distinct !DIGlobalVariable(name: "print_headers", scope: !2, file: !3, line: 60, type: !64, isLocal: true, isDefinition: true)
!93 = !DIGlobalVariableExpression(var: !94)
!94 = distinct !DIGlobalVariable(name: "line_end", scope: !2, file: !3, line: 63, type: !32, isLocal: true, isDefinition: true)
!95 = !DIGlobalVariableExpression(var: !96)
!96 = distinct !DIGlobalVariable(name: "have_read_stdin", scope: !2, file: !3, line: 72, type: !64, isLocal: true, isDefinition: true)
!97 = !DIGlobalVariableExpression(var: !98)
!98 = distinct !DIGlobalVariable(name: "infomap", scope: !99, file: !100, line: 632, type: !124, isLocal: true, isDefinition: true)
!99 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !100, file: !100, line: 630, type: !101, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !103)
!100 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!101 = !DISubroutineType(types: !102)
!102 = !{null, !41}
!103 = !{!104, !105, !106, !113, !115, !116, !117, !120, !121, !123}
!104 = !DILocalVariable(name: "program", arg: 1, scope: !99, file: !100, line: 630, type: !41)
!105 = !DILocalVariable(name: "node", scope: !99, file: !100, line: 642, type: !41)
!106 = !DILocalVariable(name: "map_prog", scope: !99, file: !100, line: 643, type: !107)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !99, file: !100, line: 632, size: 128, elements: !110)
!110 = !{!111, !112}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !109, file: !100, line: 632, baseType: !41, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !109, file: !100, line: 632, baseType: !41, size: 64, offset: 64)
!113 = !DILocalVariable(name: "__s1_len", scope: !114, file: !100, line: 645, type: !43)
!114 = distinct !DILexicalBlock(scope: !99, file: !100, line: 645, column: 33)
!115 = !DILocalVariable(name: "__s2_len", scope: !114, file: !100, line: 645, type: !43)
!116 = !DILocalVariable(name: "lc_messages", scope: !99, file: !100, line: 655, type: !41)
!117 = !DILocalVariable(name: "__s1_len", scope: !118, file: !100, line: 656, type: !43)
!118 = distinct !DILexicalBlock(scope: !119, file: !100, line: 656, column: 22)
!119 = distinct !DILexicalBlock(scope: !99, file: !100, line: 656, column: 7)
!120 = !DILocalVariable(name: "__s2_len", scope: !118, file: !100, line: 656, type: !43)
!121 = !DILocalVariable(name: "__s2", scope: !122, file: !100, line: 656, type: !48)
!122 = distinct !DILexicalBlock(scope: !118, file: !100, line: 656, column: 22)
!123 = !DILocalVariable(name: "__result", scope: !122, file: !100, line: 656, type: !57)
!124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 896, elements: !125)
!125 = !{!126}
!126 = !DISubrange(count: 7)
!127 = !DIGlobalVariableExpression(var: !128)
!128 = distinct !DIGlobalVariable(name: "first_file", scope: !129, file: !3, line: 169, type: !64, isLocal: true, isDefinition: true)
!129 = distinct !DISubprogram(name: "write_header", scope: !3, file: !3, line: 167, type: !101, isLocal: true, isDefinition: true, scopeLine: 168, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !130)
!130 = !{!131}
!131 = !DILocalVariable(name: "filename", arg: 1, scope: !129, file: !3, line: 167, type: !41)
!132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 2560, elements: !142)
!133 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !134)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !135, line: 104, size: 256, elements: !136)
!135 = !DIFile(filename: "/usr/include/getopt.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!136 = !{!137, !138, !139, !141}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !134, file: !135, line: 106, baseType: !41, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !134, file: !135, line: 109, baseType: !57, size: 32, offset: 64)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !134, file: !135, line: 110, baseType: !140, size: 64, offset: 128)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !134, file: !135, line: 111, baseType: !57, size: 32, offset: 192)
!142 = !{!143}
!143 = !DISubrange(count: 10)
!144 = !DIGlobalVariableExpression(var: !145)
!145 = distinct !DIGlobalVariable(name: "Version", scope: !146, file: !147, line: 2, type: !41, isLocal: false, isDefinition: true)
!146 = distinct !DICompileUnit(language: DW_LANG_C99, file: !147, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !148, globals: !149)
!147 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!148 = !{}
!149 = !{!144}
!150 = !DIGlobalVariableExpression(var: !151)
!151 = distinct !DIGlobalVariable(name: "file_name", scope: !152, file: !157, line: 36, type: !41, isLocal: true, isDefinition: true)
!152 = distinct !DICompileUnit(language: DW_LANG_C99, file: !153, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !148, globals: !154)
!153 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!154 = !{!150, !155}
!155 = !DIGlobalVariableExpression(var: !156)
!156 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !152, file: !157, line: 46, type: !64, isLocal: true, isDefinition: true)
!157 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!158 = !DIGlobalVariableExpression(var: !159)
!159 = distinct !DIGlobalVariable(name: "exit_failure", scope: !160, file: !163, line: 24, type: !164, isLocal: false, isDefinition: true)
!160 = distinct !DICompileUnit(language: DW_LANG_C99, file: !161, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !148, globals: !162)
!161 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!162 = !{!158}
!163 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!164 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !57)
!165 = !DIGlobalVariableExpression(var: !166)
!166 = distinct !DIGlobalVariable(name: "program_name", scope: !167, file: !171, line: 33, type: !41, isLocal: false, isDefinition: true)
!167 = distinct !DICompileUnit(language: DW_LANG_C99, file: !168, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !148, retainedTypes: !169, globals: !170)
!168 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!169 = !{!33, !31}
!170 = !{!165}
!171 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!172 = !DIGlobalVariableExpression(var: !173)
!173 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !174, file: !202, line: 77, type: !235, isLocal: false, isDefinition: true)
!174 = distinct !DICompileUnit(language: DW_LANG_C99, file: !175, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !176, retainedTypes: !197, globals: !199)
!175 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!176 = !{!10, !177, !182}
!177 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !11, line: 242, size: 32, elements: !178)
!178 = !{!179, !180, !181}
!179 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!180 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!181 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!182 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !183, line: 46, size: 32, elements: !184)
!183 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!184 = !{!185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196}
!185 = !DIEnumerator(name: "_ISupper", value: 256)
!186 = !DIEnumerator(name: "_ISlower", value: 512)
!187 = !DIEnumerator(name: "_ISalpha", value: 1024)
!188 = !DIEnumerator(name: "_ISdigit", value: 2048)
!189 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!190 = !DIEnumerator(name: "_ISspace", value: 8192)
!191 = !DIEnumerator(name: "_ISprint", value: 16384)
!192 = !DIEnumerator(name: "_ISgraph", value: 32768)
!193 = !DIEnumerator(name: "_ISblank", value: 1)
!194 = !DIEnumerator(name: "_IScntrl", value: 2)
!195 = !DIEnumerator(name: "_ISpunct", value: 4)
!196 = !DIEnumerator(name: "_ISalnum", value: 8)
!197 = !{!57, !198, !43, !31}
!198 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!199 = !{!172, !200, !205, !217, !219, !224, !231, !233}
!200 = !DIGlobalVariableExpression(var: !201)
!201 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !174, file: !202, line: 93, type: !203, isLocal: false, isDefinition: true)
!202 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 320, elements: !142)
!204 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!205 = !DIGlobalVariableExpression(var: !206)
!206 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !174, file: !202, line: 1043, type: !207, isLocal: false, isDefinition: true)
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !202, line: 57, size: 448, elements: !208)
!208 = !{!209, !210, !211, !215, !216}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !207, file: !202, line: 60, baseType: !10, size: 32)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !207, file: !202, line: 63, baseType: !57, size: 32, offset: 32)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !207, file: !202, line: 67, baseType: !212, size: 256, offset: 64)
!212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 256, elements: !213)
!213 = !{!214}
!214 = !DISubrange(count: 8)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !207, file: !202, line: 70, baseType: !41, size: 64, offset: 320)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !207, file: !202, line: 73, baseType: !41, size: 64, offset: 384)
!217 = !DIGlobalVariableExpression(var: !218)
!218 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !174, file: !202, line: 108, type: !207, isLocal: true, isDefinition: true)
!219 = !DIGlobalVariableExpression(var: !220)
!220 = distinct !DIGlobalVariable(name: "slot0", scope: !174, file: !202, line: 834, type: !221, isLocal: true, isDefinition: true)
!221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 2048, elements: !222)
!222 = !{!223}
!223 = !DISubrange(count: 256)
!224 = !DIGlobalVariableExpression(var: !225)
!225 = distinct !DIGlobalVariable(name: "slotvec", scope: !174, file: !202, line: 837, type: !226, isLocal: true, isDefinition: true)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !202, line: 826, size: 128, elements: !228)
!228 = !{!229, !230}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !227, file: !202, line: 828, baseType: !43, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !227, file: !202, line: 829, baseType: !31, size: 64, offset: 64)
!231 = !DIGlobalVariableExpression(var: !232)
!232 = distinct !DIGlobalVariable(name: "nslots", scope: !174, file: !202, line: 835, type: !57, isLocal: true, isDefinition: true)
!233 = !DIGlobalVariableExpression(var: !234)
!234 = distinct !DIGlobalVariable(name: "slotvec0", scope: !174, file: !202, line: 836, type: !227, isLocal: true, isDefinition: true)
!235 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 704, elements: !236)
!236 = !{!237}
!237 = !DISubrange(count: 11)
!238 = !DIGlobalVariableExpression(var: !239)
!239 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !240, file: !243, line: 26, type: !244, isLocal: false, isDefinition: true)
!240 = distinct !DICompileUnit(language: DW_LANG_C99, file: !241, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !148, globals: !242)
!241 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!242 = !{!238}
!243 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 376, elements: !245)
!245 = !{!246}
!246 = !DISubrange(count: 47)
!247 = !DIGlobalVariableExpression(var: !248)
!248 = distinct !DIGlobalVariable(name: "charset_aliases", scope: !249, file: !593, line: 120, type: !594, isLocal: true, isDefinition: true)
!249 = distinct !DICompileUnit(language: DW_LANG_C99, file: !250, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !251, retainedTypes: !590, globals: !592)
!250 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!251 = !{!252}
!252 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !253, line: 41, size: 32, elements: !254)
!253 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!254 = !{!255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589}
!255 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!256 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!257 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!258 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!259 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!260 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!261 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!262 = !DIEnumerator(name: "DAY_1", value: 131079)
!263 = !DIEnumerator(name: "DAY_2", value: 131080)
!264 = !DIEnumerator(name: "DAY_3", value: 131081)
!265 = !DIEnumerator(name: "DAY_4", value: 131082)
!266 = !DIEnumerator(name: "DAY_5", value: 131083)
!267 = !DIEnumerator(name: "DAY_6", value: 131084)
!268 = !DIEnumerator(name: "DAY_7", value: 131085)
!269 = !DIEnumerator(name: "ABMON_1", value: 131086)
!270 = !DIEnumerator(name: "ABMON_2", value: 131087)
!271 = !DIEnumerator(name: "ABMON_3", value: 131088)
!272 = !DIEnumerator(name: "ABMON_4", value: 131089)
!273 = !DIEnumerator(name: "ABMON_5", value: 131090)
!274 = !DIEnumerator(name: "ABMON_6", value: 131091)
!275 = !DIEnumerator(name: "ABMON_7", value: 131092)
!276 = !DIEnumerator(name: "ABMON_8", value: 131093)
!277 = !DIEnumerator(name: "ABMON_9", value: 131094)
!278 = !DIEnumerator(name: "ABMON_10", value: 131095)
!279 = !DIEnumerator(name: "ABMON_11", value: 131096)
!280 = !DIEnumerator(name: "ABMON_12", value: 131097)
!281 = !DIEnumerator(name: "MON_1", value: 131098)
!282 = !DIEnumerator(name: "MON_2", value: 131099)
!283 = !DIEnumerator(name: "MON_3", value: 131100)
!284 = !DIEnumerator(name: "MON_4", value: 131101)
!285 = !DIEnumerator(name: "MON_5", value: 131102)
!286 = !DIEnumerator(name: "MON_6", value: 131103)
!287 = !DIEnumerator(name: "MON_7", value: 131104)
!288 = !DIEnumerator(name: "MON_8", value: 131105)
!289 = !DIEnumerator(name: "MON_9", value: 131106)
!290 = !DIEnumerator(name: "MON_10", value: 131107)
!291 = !DIEnumerator(name: "MON_11", value: 131108)
!292 = !DIEnumerator(name: "MON_12", value: 131109)
!293 = !DIEnumerator(name: "AM_STR", value: 131110)
!294 = !DIEnumerator(name: "PM_STR", value: 131111)
!295 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!296 = !DIEnumerator(name: "D_FMT", value: 131113)
!297 = !DIEnumerator(name: "T_FMT", value: 131114)
!298 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!299 = !DIEnumerator(name: "ERA", value: 131116)
!300 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!301 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!302 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!303 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!304 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!305 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!306 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!307 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!308 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!309 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!310 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!311 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!312 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!313 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!314 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!315 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!316 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!317 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!318 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!319 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!320 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!321 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!322 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!323 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!324 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!325 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!326 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!327 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!328 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!329 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!330 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!331 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!332 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!333 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!334 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!335 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!336 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!337 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!338 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!339 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!340 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!341 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!342 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!343 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!344 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!345 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!346 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!347 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!348 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!349 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!350 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!351 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!352 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!353 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!354 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!355 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!356 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!357 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!358 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!359 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!360 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!361 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!362 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!363 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!364 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!365 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!366 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!367 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!368 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!369 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!370 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!371 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!372 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!373 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!374 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!375 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!376 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!377 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!378 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!379 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!380 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!381 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!382 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!383 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!384 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!385 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!386 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!387 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!388 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!389 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!390 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!391 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!392 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!393 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!394 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!395 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!396 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!397 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!398 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!399 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!400 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!401 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!402 = !DIEnumerator(name: "CODESET", value: 14)
!403 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!404 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!405 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!406 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!407 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!408 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!409 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!410 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!411 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!412 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!413 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!414 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!415 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!416 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!417 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!418 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!419 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!420 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!421 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!422 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!423 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!424 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!425 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!426 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!427 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!428 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!429 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!430 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!431 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!432 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!433 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!434 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!435 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!436 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!437 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!438 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!439 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!440 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!441 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!442 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!443 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!444 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!445 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!446 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!447 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!448 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!449 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!450 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!451 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!452 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!453 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!454 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!455 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!456 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!457 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!458 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!459 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!460 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!461 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!462 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!463 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!464 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!465 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!466 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!467 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!468 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!469 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!470 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!471 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!472 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!473 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!474 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!475 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!476 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!477 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!478 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!479 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!480 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!481 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!482 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!483 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!484 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!485 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!486 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!487 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!488 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!489 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!490 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!491 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!492 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!493 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!494 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!495 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!496 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!497 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!498 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!499 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!500 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!501 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!502 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!503 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!504 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!505 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!506 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!507 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!508 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!509 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!510 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!511 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!512 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!513 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!514 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!515 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!516 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!517 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!518 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!519 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!520 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!521 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!522 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!523 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!524 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!525 = !DIEnumerator(name: "THOUSEP", value: 65537)
!526 = !DIEnumerator(name: "__GROUPING", value: 65538)
!527 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!528 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!529 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!530 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!531 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!532 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!533 = !DIEnumerator(name: "__YESSTR", value: 327682)
!534 = !DIEnumerator(name: "__NOSTR", value: 327683)
!535 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!536 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!537 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!538 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!539 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!540 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!541 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!542 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!543 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!544 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!545 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!546 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!547 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!548 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!549 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!550 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!551 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!552 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!553 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!554 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!555 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!556 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!557 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!558 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!559 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!560 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!561 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!562 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!563 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!564 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!565 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!566 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!567 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!568 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!569 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!570 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!571 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!572 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!573 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!574 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!575 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!576 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!577 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!578 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!579 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!580 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!581 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!582 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!583 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!584 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!585 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!586 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!587 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!588 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!589 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!590 = !{!33, !31, !591}
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!592 = !{!247}
!593 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!594 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !41)
!595 = distinct !DICompileUnit(language: DW_LANG_C99, file: !596, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !148, retainedTypes: !597)
!596 = !DIFile(filename: "./lib/full-read.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!597 = !{!31, !43}
!598 = distinct !DICompileUnit(language: DW_LANG_C99, file: !599, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !148, retainedTypes: !600)
!599 = !DIFile(filename: "./lib/offtostr.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!600 = !{!601}
!601 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !602, line: 86, baseType: !36)
!602 = !DIFile(filename: "/usr/include/sys/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!603 = distinct !DICompileUnit(language: DW_LANG_C99, file: !604, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !148, retainedTypes: !605)
!604 = !DIFile(filename: "./lib/umaxtostr.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!605 = !{!68}
!606 = distinct !DICompileUnit(language: DW_LANG_C99, file: !607, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !608)
!607 = !DIFile(filename: "./lib/safe-read.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!608 = !{!609}
!609 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !611, file: !610, line: 62, size: 32, elements: !624)
!610 = !DIFile(filename: "lib/safe-read.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!611 = distinct !DISubprogram(name: "safe_read", scope: !610, file: !610, line: 56, type: !612, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !606, variables: !614)
!612 = !DISubroutineType(types: !613)
!613 = !{!43, !57, !33, !43}
!614 = !{!615, !616, !617, !618}
!615 = !DILocalVariable(name: "fd", arg: 1, scope: !611, file: !610, line: 56, type: !57)
!616 = !DILocalVariable(name: "buf", arg: 2, scope: !611, file: !610, line: 56, type: !33)
!617 = !DILocalVariable(name: "count", arg: 3, scope: !611, file: !610, line: 56, type: !43)
!618 = !DILocalVariable(name: "result", scope: !619, file: !610, line: 66, type: !622)
!619 = distinct !DILexicalBlock(scope: !620, file: !610, line: 65, column: 5)
!620 = distinct !DILexicalBlock(scope: !621, file: !610, line: 64, column: 3)
!621 = distinct !DILexicalBlock(scope: !611, file: !610, line: 64, column: 3)
!622 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !602, line: 109, baseType: !623)
!623 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !37, line: 181, baseType: !38)
!624 = !{!625}
!625 = !DIEnumerator(name: "BUGGY_READ_MAXIMUM", value: 2147475456)
!626 = distinct !DICompileUnit(language: DW_LANG_C99, file: !627, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !628, retainedTypes: !633)
!627 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!628 = !{!629}
!629 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !630, line: 41, size: 32, elements: !631)
!630 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!631 = !{!632}
!632 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!633 = !{!33}
!634 = distinct !DICompileUnit(language: DW_LANG_C99, file: !635, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !636, retainedTypes: !650)
!635 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!636 = !{!637}
!637 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !639, file: !638, line: 192, size: 32, elements: !648)
!638 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!639 = distinct !DISubprogram(name: "x2nrealloc", scope: !638, file: !638, line: 180, type: !640, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !634, variables: !643)
!640 = !DISubroutineType(types: !641)
!641 = !{!33, !33, !642, !43}
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!643 = !{!644, !645, !646, !647}
!644 = !DILocalVariable(name: "p", arg: 1, scope: !639, file: !638, line: 180, type: !33)
!645 = !DILocalVariable(name: "pn", arg: 2, scope: !639, file: !638, line: 180, type: !642)
!646 = !DILocalVariable(name: "s", arg: 3, scope: !639, file: !638, line: 180, type: !43)
!647 = !DILocalVariable(name: "n", scope: !639, file: !638, line: 182, type: !43)
!648 = !{!649}
!649 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!650 = !{!43, !31, !33}
!651 = distinct !DICompileUnit(language: DW_LANG_C99, file: !652, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !148)
!652 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!653 = distinct !DICompileUnit(language: DW_LANG_C99, file: !654, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !655)
!654 = !DIFile(filename: "./lib/xdectoumax.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!655 = !{!656}
!656 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !657, line: 26, size: 32, elements: !658)
!657 = !DIFile(filename: "./lib/xstrtol.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!658 = !{!659, !660, !661, !662, !663}
!659 = !DIEnumerator(name: "LONGINT_OK", value: 0)
!660 = !DIEnumerator(name: "LONGINT_OVERFLOW", value: 1)
!661 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR", value: 2)
!662 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW", value: 3)
!663 = !DIEnumerator(name: "LONGINT_INVALID", value: 4)
!664 = distinct !DICompileUnit(language: DW_LANG_C99, file: !665, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !666, retainedTypes: !667)
!665 = !DIFile(filename: "./lib/xstrtoumax.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!666 = !{!656, !182}
!667 = !{!57, !198, !31}
!668 = distinct !DICompileUnit(language: DW_LANG_C99, file: !669, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !148, retainedTypes: !633)
!669 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!670 = distinct !DICompileUnit(language: DW_LANG_C99, file: !671, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !148, retainedTypes: !672)
!671 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!672 = !{!43}
!673 = distinct !DICompileUnit(language: DW_LANG_C99, file: !674, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !148)
!674 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!675 = distinct !DICompileUnit(language: DW_LANG_C99, file: !676, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !148, retainedTypes: !677)
!676 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!677 = !{!43, !46, !48, !41}
!678 = distinct !DICompileUnit(language: DW_LANG_C99, file: !679, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !148)
!679 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!680 = distinct !DICompileUnit(language: DW_LANG_C99, file: !681, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !148, retainedTypes: !633)
!681 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!682 = distinct !DICompileUnit(language: DW_LANG_C99, file: !683, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !148, retainedTypes: !633)
!683 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!684 = !{!"clang version 4.0.1 (tags/RELEASE_401/final)"}
!685 = !{i32 2, !"Dwarf Version", i32 4}
!686 = !{i32 2, !"Debug Info Version", i32 3}
!687 = !{i32 1, !"PIC Level", i32 2}
!688 = !{i32 1, !"PIE Level", i32 2}
!689 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 104, type: !690, isLocal: false, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !692)
!690 = !DISubroutineType(types: !691)
!691 = !{null, !57}
!692 = !{!693}
!693 = !DILocalVariable(name: "status", arg: 1, scope: !689, file: !3, line: 104, type: !57)
!694 = !DIExpression()
!695 = !DILocation(line: 104, column: 12, scope: !689)
!696 = !DILocation(line: 106, column: 14, scope: !697)
!697 = distinct !DILexicalBlock(scope: !689, file: !3, line: 106, column: 7)
!698 = !DILocation(line: 106, column: 7, scope: !689)
!699 = !DILocation(line: 107, column: 5, scope: !700)
!700 = !DILexicalBlockFile(scope: !701, file: !3, discriminator: 1)
!701 = distinct !DILexicalBlock(scope: !697, file: !3, line: 107, column: 5)
!702 = !{!703, !703, i64 0}
!703 = !{!"any pointer", !704, i64 0}
!704 = !{!"omnipotent char", !705, i64 0}
!705 = !{!"Simple C/C++ TBAA"}
!706 = !DILocation(line: 107, column: 5, scope: !707)
!707 = !DILexicalBlockFile(scope: !701, file: !3, discriminator: 3)
!708 = !DILocation(line: 107, column: 5, scope: !709)
!709 = !DILexicalBlockFile(scope: !701, file: !3, discriminator: 2)
!710 = !DILocation(line: 110, column: 7, scope: !711)
!711 = distinct !DILexicalBlock(scope: !697, file: !3, line: 109, column: 5)
!712 = !DILocation(line: 110, column: 7, scope: !713)
!713 = !DILexicalBlockFile(scope: !711, file: !3, discriminator: 1)
!714 = !DILocation(line: 114, column: 7, scope: !711)
!715 = !DILocation(line: 114, column: 7, scope: !713)
!716 = !DILocation(line: 580, column: 3, scope: !717, inlinedAt: !720)
!717 = distinct !DISubprogram(name: "emit_stdin_note", scope: !100, file: !100, line: 578, type: !718, isLocal: true, isDefinition: true, scopeLine: 579, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !148)
!718 = !DISubroutineType(types: !719)
!719 = !{null}
!720 = distinct !DILocation(line: 119, column: 7, scope: !711)
!721 = !DILocation(line: 580, column: 3, scope: !722, inlinedAt: !720)
!722 = !DILexicalBlockFile(scope: !717, file: !100, discriminator: 1)
!723 = !DILocation(line: 587, column: 3, scope: !724, inlinedAt: !725)
!724 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !100, file: !100, line: 585, type: !718, isLocal: true, isDefinition: true, scopeLine: 586, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !148)
!725 = distinct !DILocation(line: 120, column: 7, scope: !711)
!726 = !DILocation(line: 587, column: 3, scope: !727, inlinedAt: !725)
!727 = !DILexicalBlockFile(scope: !724, file: !100, discriminator: 1)
!728 = !DILocation(line: 122, column: 7, scope: !711)
!729 = !DILocation(line: 122, column: 7, scope: !713)
!730 = !DILocation(line: 130, column: 7, scope: !711)
!731 = !DILocation(line: 130, column: 7, scope: !713)
!732 = !DILocation(line: 134, column: 7, scope: !711)
!733 = !DILocation(line: 134, column: 7, scope: !713)
!734 = !DILocation(line: 137, column: 7, scope: !711)
!735 = !DILocation(line: 137, column: 7, scope: !713)
!736 = !DILocation(line: 138, column: 7, scope: !711)
!737 = !DILocation(line: 138, column: 7, scope: !713)
!738 = !DILocation(line: 139, column: 7, scope: !711)
!739 = !DILocation(line: 139, column: 7, scope: !713)
!740 = !DILocation(line: 642, column: 15, scope: !99, inlinedAt: !741)
!741 = distinct !DILocation(line: 145, column: 7, scope: !711)
!742 = !DILocation(line: 651, column: 3, scope: !99, inlinedAt: !741)
!743 = !DILocation(line: 651, column: 3, scope: !744, inlinedAt: !741)
!744 = !DILexicalBlockFile(scope: !99, file: !100, discriminator: 1)
!745 = !DILocation(line: 655, column: 29, scope: !99, inlinedAt: !741)
!746 = !DILocation(line: 655, column: 15, scope: !99, inlinedAt: !741)
!747 = !DILocation(line: 656, column: 7, scope: !119, inlinedAt: !741)
!748 = !DILocation(line: 656, column: 19, scope: !119, inlinedAt: !741)
!749 = !DILocation(line: 656, column: 22, scope: !750, inlinedAt: !741)
!750 = !DILexicalBlockFile(scope: !119, file: !100, discriminator: 16)
!751 = !DILocation(line: 656, column: 7, scope: !752, inlinedAt: !741)
!752 = !DILexicalBlockFile(scope: !99, file: !100, discriminator: 16)
!753 = !DILocation(line: 662, column: 7, scope: !754, inlinedAt: !741)
!754 = distinct !DILexicalBlock(scope: !119, file: !100, line: 657, column: 5)
!755 = !DILocation(line: 662, column: 7, scope: !756, inlinedAt: !741)
!756 = !DILexicalBlockFile(scope: !754, file: !100, discriminator: 1)
!757 = !DILocation(line: 664, column: 5, scope: !754, inlinedAt: !741)
!758 = !DILocation(line: 665, column: 3, scope: !99, inlinedAt: !741)
!759 = !DILocation(line: 665, column: 3, scope: !744, inlinedAt: !741)
!760 = !DILocation(line: 667, column: 3, scope: !99, inlinedAt: !741)
!761 = !DILocation(line: 667, column: 3, scope: !744, inlinedAt: !741)
!762 = !DILocation(line: 147, column: 3, scope: !689)
!763 = !DILocalVariable(name: "b", scope: !764, file: !3, line: 295, type: !810)
!764 = distinct !DILexicalBlock(scope: !765, file: !3, line: 290, column: 5)
!765 = distinct !DILexicalBlock(scope: !766, file: !3, line: 289, column: 7)
!766 = distinct !DISubprogram(name: "elide_tail_bytes_pipe", scope: !3, file: !3, line: 247, type: !767, isLocal: true, isDefinition: true, scopeLine: 249, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !769)
!767 = !DISubroutineType(types: !768)
!768 = !{!64, !41, !57, !68, !34}
!769 = !{!770, !771, !772, !773, !774, !775, !776, !777, !780, !781, !782, !783, !763, !784, !788, !789, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !806, !809}
!770 = !DILocalVariable(name: "filename", arg: 1, scope: !766, file: !3, line: 247, type: !41)
!771 = !DILocalVariable(name: "fd", arg: 2, scope: !766, file: !3, line: 247, type: !57)
!772 = !DILocalVariable(name: "n_elide_0", arg: 3, scope: !766, file: !3, line: 247, type: !68)
!773 = !DILocalVariable(name: "current_pos", arg: 4, scope: !766, file: !3, line: 248, type: !34)
!774 = !DILocalVariable(name: "n_elide", scope: !766, file: !3, line: 250, type: !43)
!775 = !DILocalVariable(name: "desired_pos", scope: !766, file: !3, line: 251, type: !68)
!776 = !DILocalVariable(name: "ok", scope: !766, file: !3, line: 252, type: !64)
!777 = !DILocalVariable(name: "umax_buf", scope: !778, file: !3, line: 273, type: !83)
!778 = distinct !DILexicalBlock(scope: !779, file: !3, line: 272, column: 5)
!779 = distinct !DILexicalBlock(scope: !766, file: !3, line: 271, column: 7)
!780 = !DILocalVariable(name: "first", scope: !764, file: !3, line: 291, type: !64)
!781 = !DILocalVariable(name: "eof", scope: !764, file: !3, line: 292, type: !64)
!782 = !DILocalVariable(name: "n_to_read", scope: !764, file: !3, line: 293, type: !43)
!783 = !DILocalVariable(name: "i", scope: !764, file: !3, line: 294, type: !64)
!784 = !DILocalVariable(name: "n_read", scope: !785, file: !3, line: 301, type: !43)
!785 = distinct !DILexicalBlock(scope: !786, file: !3, line: 300, column: 9)
!786 = distinct !DILexicalBlock(scope: !787, file: !3, line: 299, column: 7)
!787 = distinct !DILexicalBlock(scope: !764, file: !3, line: 299, column: 7)
!788 = !DILocalVariable(name: "delta", scope: !785, file: !3, line: 302, type: !43)
!789 = !DILocalVariable(name: "eof", scope: !790, file: !3, line: 352, type: !64)
!790 = distinct !DILexicalBlock(scope: !765, file: !3, line: 348, column: 5)
!791 = !DILocalVariable(name: "n_read", scope: !790, file: !3, line: 353, type: !43)
!792 = !DILocalVariable(name: "buffered_enough", scope: !790, file: !3, line: 354, type: !64)
!793 = !DILocalVariable(name: "i", scope: !790, file: !3, line: 355, type: !43)
!794 = !DILocalVariable(name: "i_next", scope: !790, file: !3, line: 355, type: !43)
!795 = !DILocalVariable(name: "b", scope: !790, file: !3, line: 356, type: !58)
!796 = !DILocalVariable(name: "rem", scope: !790, file: !3, line: 358, type: !43)
!797 = !DILocalVariable(name: "n_elide_round", scope: !790, file: !3, line: 359, type: !43)
!798 = !DILocalVariable(name: "n_bufs", scope: !790, file: !3, line: 360, type: !43)
!799 = !DILocalVariable(name: "n_alloc", scope: !790, file: !3, line: 361, type: !43)
!800 = !DILocalVariable(name: "n_array_alloc", scope: !790, file: !3, line: 362, type: !43)
!801 = !DILocalVariable(name: "n_bytes_left_in_b_i", scope: !802, file: !3, line: 411, type: !43)
!802 = distinct !DILexicalBlock(scope: !803, file: !3, line: 410, column: 13)
!803 = distinct !DILexicalBlock(scope: !804, file: !3, line: 409, column: 15)
!804 = distinct !DILexicalBlock(scope: !805, file: !3, line: 408, column: 9)
!805 = distinct !DILexicalBlock(scope: !790, file: !3, line: 407, column: 11)
!806 = !DILocalVariable(name: "y", scope: !807, file: !3, line: 437, type: !43)
!807 = distinct !DILexicalBlock(scope: !808, file: !3, line: 424, column: 13)
!808 = distinct !DILexicalBlock(scope: !803, file: !3, line: 423, column: 20)
!809 = !DILocalVariable(name: "x", scope: !807, file: !3, line: 438, type: !43)
!810 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 128, elements: !87)
!811 = !DILocation(line: 295, column: 13, scope: !764, inlinedAt: !812)
!812 = distinct !DILocation(line: 469, column: 12, scope: !813, inlinedAt: !866)
!813 = distinct !DILexicalBlock(scope: !814, file: !3, line: 468, column: 7)
!814 = distinct !DISubprogram(name: "elide_tail_bytes_file", scope: !3, file: !3, line: 464, type: !815, isLocal: true, isDefinition: true, scopeLine: 466, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !855)
!815 = !DISubroutineType(types: !816)
!816 = !{!64, !41, !57, !68, !817, !34}
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !819)
!819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !820, line: 46, size: 1152, elements: !821)
!820 = !DIFile(filename: "/usr/include/bits/stat.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!821 = !{!822, !824, !826, !828, !830, !832, !834, !835, !836, !837, !839, !841, !849, !850, !851}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !819, file: !820, line: 48, baseType: !823, size: 64)
!823 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !37, line: 133, baseType: !45)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !819, file: !820, line: 53, baseType: !825, size: 64, offset: 64)
!825 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !37, line: 136, baseType: !45)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !819, file: !820, line: 61, baseType: !827, size: 64, offset: 128)
!827 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !37, line: 139, baseType: !45)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !819, file: !820, line: 62, baseType: !829, size: 32, offset: 192)
!829 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !37, line: 138, baseType: !30)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !819, file: !820, line: 64, baseType: !831, size: 32, offset: 224)
!831 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !37, line: 134, baseType: !30)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !819, file: !820, line: 65, baseType: !833, size: 32, offset: 256)
!833 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !37, line: 135, baseType: !30)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !819, file: !820, line: 67, baseType: !57, size: 32, offset: 288)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !819, file: !820, line: 69, baseType: !823, size: 64, offset: 320)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !819, file: !820, line: 74, baseType: !36, size: 64, offset: 384)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !819, file: !820, line: 78, baseType: !838, size: 64, offset: 448)
!838 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !37, line: 162, baseType: !38)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !819, file: !820, line: 80, baseType: !840, size: 64, offset: 512)
!840 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !37, line: 167, baseType: !38)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !819, file: !820, line: 91, baseType: !842, size: 128, offset: 576)
!842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !843, line: 8, size: 128, elements: !844)
!843 = !DIFile(filename: "/usr/include/bits/types/struct_timespec.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!844 = !{!845, !847}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !842, file: !843, line: 10, baseType: !846, size: 64)
!846 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !37, line: 148, baseType: !38)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !842, file: !843, line: 11, baseType: !848, size: 64, offset: 64)
!848 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !37, line: 184, baseType: !38)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !819, file: !820, line: 92, baseType: !842, size: 128, offset: 704)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !819, file: !820, line: 93, baseType: !842, size: 128, offset: 832)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !819, file: !820, line: 106, baseType: !852, size: 192, offset: 960)
!852 = !DICompositeType(tag: DW_TAG_array_type, baseType: !848, size: 192, elements: !853)
!853 = !{!854}
!854 = !DISubrange(count: 3)
!855 = !{!856, !857, !858, !859, !860, !861, !862, !864, !865}
!856 = !DILocalVariable(name: "filename", arg: 1, scope: !814, file: !3, line: 464, type: !41)
!857 = !DILocalVariable(name: "fd", arg: 2, scope: !814, file: !3, line: 464, type: !57)
!858 = !DILocalVariable(name: "n_elide", arg: 3, scope: !814, file: !3, line: 464, type: !68)
!859 = !DILocalVariable(name: "st", arg: 4, scope: !814, file: !3, line: 465, type: !817)
!860 = !DILocalVariable(name: "current_pos", arg: 5, scope: !814, file: !3, line: 465, type: !34)
!861 = !DILocalVariable(name: "size", scope: !814, file: !3, line: 467, type: !34)
!862 = !DILocalVariable(name: "diff", scope: !863, file: !3, line: 474, type: !34)
!863 = distinct !DILexicalBlock(scope: !813, file: !3, line: 471, column: 5)
!864 = !DILocalVariable(name: "bytes_remaining", scope: !863, file: !3, line: 475, type: !34)
!865 = !DILocalVariable(name: "err", scope: !863, file: !3, line: 480, type: !24)
!866 = distinct !DILocation(line: 860, column: 16, scope: !867, inlinedAt: !881)
!867 = distinct !DILexicalBlock(scope: !868, file: !3, line: 857, column: 11)
!868 = distinct !DILexicalBlock(scope: !869, file: !3, line: 842, column: 5)
!869 = distinct !DILexicalBlock(scope: !870, file: !3, line: 841, column: 7)
!870 = distinct !DISubprogram(name: "head", scope: !3, file: !3, line: 835, type: !871, isLocal: true, isDefinition: true, scopeLine: 837, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !873)
!871 = !DISubroutineType(types: !872)
!872 = !{!64, !41, !57, !68, !64, !64}
!873 = !{!874, !875, !876, !877, !878, !879, !880}
!874 = !DILocalVariable(name: "filename", arg: 1, scope: !870, file: !3, line: 835, type: !41)
!875 = !DILocalVariable(name: "fd", arg: 2, scope: !870, file: !3, line: 835, type: !57)
!876 = !DILocalVariable(name: "n_units", arg: 3, scope: !870, file: !3, line: 835, type: !68)
!877 = !DILocalVariable(name: "count_lines", arg: 4, scope: !870, file: !3, line: 835, type: !64)
!878 = !DILocalVariable(name: "elide_from_end", arg: 5, scope: !870, file: !3, line: 836, type: !64)
!879 = !DILocalVariable(name: "current_pos", scope: !868, file: !3, line: 843, type: !34)
!880 = !DILocalVariable(name: "st", scope: !868, file: !3, line: 844, type: !819)
!881 = distinct !DILocation(line: 893, column: 8, scope: !882, inlinedAt: !899)
!882 = distinct !DISubprogram(name: "head_file", scope: !3, file: !3, line: 869, type: !883, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !885)
!883 = !DISubroutineType(types: !884)
!884 = !{!64, !41, !68, !64, !64}
!885 = !{!886, !887, !888, !889, !890, !891, !892, !893, !895, !896, !898}
!886 = !DILocalVariable(name: "filename", arg: 1, scope: !882, file: !3, line: 869, type: !41)
!887 = !DILocalVariable(name: "n_units", arg: 2, scope: !882, file: !3, line: 869, type: !68)
!888 = !DILocalVariable(name: "count_lines", arg: 3, scope: !882, file: !3, line: 869, type: !64)
!889 = !DILocalVariable(name: "elide_from_end", arg: 4, scope: !882, file: !3, line: 870, type: !64)
!890 = !DILocalVariable(name: "fd", scope: !882, file: !3, line: 872, type: !57)
!891 = !DILocalVariable(name: "ok", scope: !882, file: !3, line: 873, type: !64)
!892 = !DILocalVariable(name: "is_stdin", scope: !882, file: !3, line: 874, type: !64)
!893 = !DILocalVariable(name: "__s1_len", scope: !894, file: !3, line: 874, type: !43)
!894 = distinct !DILexicalBlock(scope: !882, file: !3, line: 874, column: 19)
!895 = !DILocalVariable(name: "__s2_len", scope: !894, file: !3, line: 874, type: !43)
!896 = !DILocalVariable(name: "__s2", scope: !897, file: !3, line: 874, type: !48)
!897 = distinct !DILexicalBlock(scope: !894, file: !3, line: 874, column: 19)
!898 = !DILocalVariable(name: "__result", scope: !897, file: !3, line: 874, type: !57)
!899 = distinct !DILocation(line: 1088, column: 11, scope: !900)
!900 = distinct !DILexicalBlock(scope: !901, file: !3, line: 1087, column: 3)
!901 = distinct !DILexicalBlock(scope: !54, file: !3, line: 1087, column: 3)
!902 = !DILocalVariable(name: "buffer", scope: !903, file: !3, line: 650, type: !927)
!903 = distinct !DISubprogram(name: "elide_tail_lines_seekable", scope: !3, file: !3, line: 646, type: !904, isLocal: true, isDefinition: true, scopeLine: 649, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !906)
!904 = !DISubroutineType(types: !905)
!905 = !{!64, !41, !57, !68, !34, !34}
!906 = !{!907, !908, !909, !910, !911, !902, !912, !913, !914, !916, !918, !922}
!907 = !DILocalVariable(name: "pretty_filename", arg: 1, scope: !903, file: !3, line: 646, type: !41)
!908 = !DILocalVariable(name: "fd", arg: 2, scope: !903, file: !3, line: 646, type: !57)
!909 = !DILocalVariable(name: "n_lines", arg: 3, scope: !903, file: !3, line: 647, type: !68)
!910 = !DILocalVariable(name: "start_pos", arg: 4, scope: !903, file: !3, line: 648, type: !34)
!911 = !DILocalVariable(name: "size", arg: 5, scope: !903, file: !3, line: 648, type: !34)
!912 = !DILocalVariable(name: "bytes_read", scope: !903, file: !3, line: 651, type: !43)
!913 = !DILocalVariable(name: "pos", scope: !903, file: !3, line: 652, type: !34)
!914 = !DILocalVariable(name: "all_lines", scope: !903, file: !3, line: 672, type: !915)
!915 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !64)
!916 = !DILocalVariable(name: "n", scope: !917, file: !3, line: 682, type: !43)
!917 = distinct !DILexicalBlock(scope: !903, file: !3, line: 679, column: 5)
!918 = !DILocalVariable(name: "nl", scope: !919, file: !3, line: 689, type: !41)
!919 = distinct !DILexicalBlock(scope: !920, file: !3, line: 688, column: 13)
!920 = distinct !DILexicalBlock(scope: !921, file: !3, line: 685, column: 15)
!921 = distinct !DILexicalBlock(scope: !917, file: !3, line: 684, column: 9)
!922 = !DILocalVariable(name: "err", scope: !923, file: !3, line: 702, type: !24)
!923 = distinct !DILexicalBlock(scope: !924, file: !3, line: 701, column: 17)
!924 = distinct !DILexicalBlock(scope: !925, file: !3, line: 700, column: 19)
!925 = distinct !DILexicalBlock(scope: !926, file: !3, line: 696, column: 13)
!926 = distinct !DILexicalBlock(scope: !921, file: !3, line: 695, column: 15)
!927 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 65536, elements: !928)
!928 = !{!929}
!929 = !DISubrange(count: 8192)
!930 = !DILocation(line: 650, column: 8, scope: !903, inlinedAt: !931)
!931 = distinct !DILocation(line: 767, column: 18, scope: !932, inlinedAt: !943)
!932 = !DILexicalBlockFile(scope: !933, file: !3, discriminator: 1)
!933 = distinct !DILexicalBlock(scope: !934, file: !3, line: 760, column: 5)
!934 = distinct !DILexicalBlock(scope: !935, file: !3, line: 757, column: 7)
!935 = distinct !DISubprogram(name: "elide_tail_lines_file", scope: !3, file: !3, line: 753, type: !815, isLocal: true, isDefinition: true, scopeLine: 755, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !936)
!936 = !{!937, !938, !939, !940, !941, !942}
!937 = !DILocalVariable(name: "filename", arg: 1, scope: !935, file: !3, line: 753, type: !41)
!938 = !DILocalVariable(name: "fd", arg: 2, scope: !935, file: !3, line: 753, type: !57)
!939 = !DILocalVariable(name: "n_elide", arg: 3, scope: !935, file: !3, line: 753, type: !68)
!940 = !DILocalVariable(name: "st", arg: 4, scope: !935, file: !3, line: 754, type: !817)
!941 = !DILocalVariable(name: "current_pos", arg: 5, scope: !935, file: !3, line: 754, type: !34)
!942 = !DILocalVariable(name: "size", scope: !935, file: !3, line: 756, type: !34)
!943 = distinct !DILocation(line: 858, column: 16, scope: !867, inlinedAt: !881)
!944 = !DILocalVariable(name: "buf", scope: !945, file: !3, line: 195, type: !927)
!945 = distinct !DISubprogram(name: "copy_fd", scope: !3, file: !3, line: 193, type: !946, isLocal: true, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !948)
!946 = !DISubroutineType(types: !947)
!947 = !{!24, !57, !68}
!948 = !{!949, !950, !944, !951, !953, !955}
!949 = !DILocalVariable(name: "src_fd", arg: 1, scope: !945, file: !3, line: 193, type: !57)
!950 = !DILocalVariable(name: "n_bytes", arg: 2, scope: !945, file: !3, line: 193, type: !68)
!951 = !DILocalVariable(name: "buf_size", scope: !945, file: !3, line: 196, type: !952)
!952 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!953 = !DILocalVariable(name: "n_to_read", scope: !954, file: !3, line: 201, type: !43)
!954 = distinct !DILexicalBlock(scope: !945, file: !3, line: 200, column: 5)
!955 = !DILocalVariable(name: "n_read", scope: !954, file: !3, line: 202, type: !43)
!956 = !DILocation(line: 195, column: 8, scope: !945, inlinedAt: !957)
!957 = distinct !DILocation(line: 706, column: 25, scope: !923, inlinedAt: !931)
!958 = !DILocation(line: 917, column: 11, scope: !54)
!959 = !DILocation(line: 917, column: 24, scope: !54)
!960 = !DILocation(line: 919, column: 20, scope: !54)
!961 = !DILocation(line: 920, column: 8, scope: !54)
!962 = !DILocation(line: 925, column: 13, scope: !54)
!963 = !DILocation(line: 929, column: 8, scope: !54)
!964 = !DILocation(line: 933, column: 8, scope: !54)
!965 = !DILocation(line: 941, column: 21, scope: !54)
!966 = !DILocation(line: 941, column: 3, scope: !54)
!967 = !DILocation(line: 942, column: 3, scope: !54)
!968 = !DILocation(line: 943, column: 3, scope: !54)
!969 = !DILocation(line: 944, column: 3, scope: !54)
!970 = !DILocation(line: 946, column: 3, scope: !54)
!971 = !DILocation(line: 954, column: 9, scope: !76)
!972 = !DILocation(line: 954, column: 16, scope: !76)
!973 = !DILocation(line: 954, column: 19, scope: !974)
!974 = !DILexicalBlockFile(scope: !76, file: !3, discriminator: 1)
!975 = !{!704, !704, i64 0}
!976 = !DILocation(line: 954, column: 30, scope: !974)
!977 = !DILocation(line: 954, column: 37, scope: !974)
!978 = !DILocation(line: 954, column: 40, scope: !979)
!979 = !DILexicalBlockFile(scope: !76, file: !3, discriminator: 2)
!980 = !DILocation(line: 954, column: 7, scope: !981)
!981 = !DILexicalBlockFile(scope: !54, file: !3, discriminator: 2)
!982 = distinct !{!982, !983, !984}
!983 = !DILocation(line: 963, column: 7, scope: !75)
!984 = !DILocation(line: 964, column: 26, scope: !75)
!985 = !DILocation(line: 956, column: 13, scope: !75)
!986 = !DILocation(line: 963, column: 10, scope: !987)
!987 = !DILexicalBlockFile(scope: !75, file: !3, discriminator: 1)
!988 = !DILocation(line: 964, column: 14, scope: !75)
!989 = !DILocation(line: 963, column: 10, scope: !990)
!990 = !DILexicalBlockFile(scope: !75, file: !3, discriminator: 2)
!991 = !DILocation(line: 959, column: 12, scope: !75)
!992 = !DILocation(line: 970, column: 7, scope: !993)
!993 = !DILexicalBlockFile(scope: !994, file: !3, discriminator: 1)
!994 = distinct !DILexicalBlock(scope: !75, file: !3, line: 970, column: 7)
!995 = !DILocation(line: 972, column: 19, scope: !996)
!996 = distinct !DILexicalBlock(scope: !997, file: !3, line: 971, column: 9)
!997 = distinct !DILexicalBlock(scope: !994, file: !3, line: 970, column: 7)
!998 = !DILocation(line: 983, column: 33, scope: !999)
!999 = distinct !DILexicalBlock(scope: !996, file: !3, line: 973, column: 13)
!1000 = !DILocation(line: 972, column: 11, scope: !996)
!1001 = !DILocation(line: 984, column: 15, scope: !999)
!1002 = !DILocation(line: 988, column: 15, scope: !999)
!1003 = !DILocation(line: 992, column: 15, scope: !999)
!1004 = !DILocation(line: 996, column: 15, scope: !999)
!1005 = !DILocation(line: 1000, column: 15, scope: !999)
!1006 = !DILocation(line: 1003, column: 28, scope: !999)
!1007 = !DILocation(line: 1003, column: 64, scope: !999)
!1008 = !DILocation(line: 1003, column: 15, scope: !1009)
!1009 = !DILexicalBlockFile(scope: !999, file: !3, discriminator: 1)
!1010 = !DILocation(line: 1004, column: 15, scope: !999)
!1011 = !DILocation(line: 970, column: 19, scope: !1012)
!1012 = !DILexicalBlockFile(scope: !997, file: !3, discriminator: 2)
!1013 = !DILocation(line: 970, column: 14, scope: !1014)
!1014 = !DILexicalBlockFile(scope: !997, file: !3, discriminator: 1)
!1015 = distinct !{!1015, !1016, !1017}
!1016 = !DILocation(line: 970, column: 7, scope: !994)
!1017 = !DILocation(line: 1006, column: 9, scope: !994)
!1018 = !DILocation(line: 1010, column: 21, scope: !75)
!1019 = !DILocation(line: 1011, column: 11, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !75, file: !3, line: 1011, column: 11)
!1021 = !DILocation(line: 1011, column: 11, scope: !75)
!1022 = !DILocation(line: 1012, column: 11, scope: !1020)
!1023 = !DILocation(line: 958, column: 13, scope: !75)
!1024 = !DILocation(line: 1012, column: 9, scope: !1020)
!1025 = !DILocation(line: 1014, column: 36, scope: !75)
!1026 = !DILocalVariable(name: "count_lines", arg: 1, scope: !1027, file: !3, line: 909, type: !64)
!1027 = distinct !DISubprogram(name: "string_to_integer", scope: !3, file: !3, line: 909, type: !1028, isLocal: true, isDefinition: true, scopeLine: 910, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1030)
!1028 = !DISubroutineType(types: !1029)
!1029 = !{!68, !64, !41}
!1030 = !{!1026, !1031}
!1031 = !DILocalVariable(name: "n_string", arg: 2, scope: !1027, file: !3, line: 909, type: !41)
!1032 = !DIExpression(DW_OP_LLVM_fragment, 0, 1)
!1033 = !DILocation(line: 909, column: 25, scope: !1027, inlinedAt: !1034)
!1034 = distinct !DILocation(line: 1014, column: 17, scope: !75)
!1035 = !DILocation(line: 909, column: 50, scope: !1027, inlinedAt: !1034)
!1036 = !DILocation(line: 912, column: 22, scope: !1027, inlinedAt: !1034)
!1037 = !DILocation(line: 913, column: 36, scope: !1027, inlinedAt: !1034)
!1038 = !DILocation(line: 911, column: 10, scope: !1039, inlinedAt: !1034)
!1039 = !DILexicalBlockFile(scope: !1027, file: !3, discriminator: 1)
!1040 = !DILocation(line: 1017, column: 17, scope: !75)
!1041 = !DILocation(line: 1017, column: 15, scope: !75)
!1042 = !DILocation(line: 1019, column: 11, scope: !75)
!1043 = !DILocation(line: 1020, column: 5, scope: !75)
!1044 = !DILocation(line: 1022, column: 15, scope: !1045)
!1045 = !DILexicalBlockFile(scope: !54, file: !3, discriminator: 1)
!1046 = !DILocation(line: 921, column: 7, scope: !54)
!1047 = !DILocation(line: 1022, column: 3, scope: !1045)
!1048 = distinct !{!1048, !1049, !1050}
!1049 = !DILocation(line: 1022, column: 3, scope: !54)
!1050 = !DILocation(line: 1068, column: 5, scope: !54)
!1051 = !DILocation(line: 1029, column: 11, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !1053, file: !3, line: 1026, column: 9)
!1053 = distinct !DILexicalBlock(scope: !54, file: !3, line: 1024, column: 5)
!1054 = !DILocation(line: 1033, column: 30, scope: !1052)
!1055 = !DILocation(line: 1033, column: 29, scope: !1052)
!1056 = !DILocation(line: 1033, column: 37, scope: !1052)
!1057 = !DILocation(line: 1033, column: 26, scope: !1052)
!1058 = !DILocation(line: 1034, column: 15, scope: !1052)
!1059 = !DILocation(line: 1035, column: 13, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1052, file: !3, line: 1034, column: 15)
!1061 = !DILocation(line: 1041, column: 30, scope: !1052)
!1062 = !DILocation(line: 1041, column: 29, scope: !1052)
!1063 = !DILocation(line: 1041, column: 37, scope: !1052)
!1064 = !DILocation(line: 1041, column: 26, scope: !1052)
!1065 = !DILocation(line: 1042, column: 15, scope: !1052)
!1066 = !DILocation(line: 1043, column: 13, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !1052, file: !3, line: 1042, column: 15)
!1068 = !DILocation(line: 913, column: 36, scope: !1027, inlinedAt: !1069)
!1069 = distinct !DILocation(line: 1044, column: 21, scope: !1052)
!1070 = !DILocation(line: 911, column: 10, scope: !1039, inlinedAt: !1069)
!1071 = !DILocation(line: 1053, column: 11, scope: !1052)
!1072 = !DILocation(line: 1057, column: 11, scope: !1052)
!1073 = !DILocation(line: 1059, column: 9, scope: !1052)
!1074 = !DILocation(line: 1061, column: 9, scope: !1052)
!1075 = !DILocation(line: 1061, column: 9, scope: !1076)
!1076 = !DILexicalBlockFile(scope: !1052, file: !3, discriminator: 1)
!1077 = !DILocation(line: 1064, column: 15, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1052, file: !3, line: 1064, column: 15)
!1079 = !DILocation(line: 1064, column: 15, scope: !1052)
!1080 = !DILocation(line: 1065, column: 26, scope: !1078)
!1081 = !DILocation(line: 1065, column: 13, scope: !1082)
!1082 = !DILexicalBlockFile(scope: !1078, file: !3, discriminator: 1)
!1083 = !DILocation(line: 1065, column: 13, scope: !1078)
!1084 = !DILocation(line: 1066, column: 11, scope: !1052)
!1085 = !DILocation(line: 1071, column: 7, scope: !1086)
!1086 = distinct !DILexicalBlock(scope: !54, file: !3, line: 1070, column: 7)
!1087 = !DILocation(line: 1071, column: 44, scope: !1088)
!1088 = !DILexicalBlockFile(scope: !1086, file: !3, discriminator: 2)
!1089 = !{!1090, !1090, i64 0}
!1090 = !{!"int", !704, i64 0}
!1091 = !DILocation(line: 1071, column: 58, scope: !1088)
!1092 = !DILocation(line: 1071, column: 51, scope: !1088)
!1093 = !DILocation(line: 1070, column: 7, scope: !1045)
!1094 = !DILocation(line: 1072, column: 5, scope: !1086)
!1095 = !DILocation(line: 1074, column: 10, scope: !82)
!1096 = !DILocation(line: 1074, column: 22, scope: !82)
!1097 = !DILocation(line: 1074, column: 25, scope: !1098)
!1098 = !DILexicalBlockFile(scope: !82, file: !3, discriminator: 1)
!1099 = !DILocation(line: 1074, column: 53, scope: !1100)
!1100 = !DILexicalBlockFile(scope: !82, file: !3, discriminator: 2)
!1101 = !DILocation(line: 1074, column: 40, scope: !1098)
!1102 = !DILocation(line: 1076, column: 7, scope: !81)
!1103 = !DILocation(line: 1076, column: 12, scope: !81)
!1104 = !DILocation(line: 1077, column: 7, scope: !81)
!1105 = !DILocation(line: 1077, column: 7, scope: !1106)
!1106 = !DILexicalBlockFile(scope: !81, file: !3, discriminator: 1)
!1107 = !DILocation(line: 1077, column: 7, scope: !1108)
!1108 = !DILexicalBlockFile(scope: !81, file: !3, discriminator: 2)
!1109 = !DILocation(line: 1077, column: 7, scope: !1110)
!1110 = !DILexicalBlockFile(scope: !81, file: !3, discriminator: 3)
!1111 = !DILocation(line: 1081, column: 16, scope: !54)
!1112 = !DILocation(line: 1081, column: 23, scope: !54)
!1113 = !DILocation(line: 1082, column: 41, scope: !54)
!1114 = !DILocation(line: 938, column: 22, scope: !54)
!1115 = !DILocation(line: 922, column: 10, scope: !54)
!1116 = !DILocation(line: 1087, column: 15, scope: !1117)
!1117 = !DILexicalBlockFile(scope: !900, file: !3, discriminator: 1)
!1118 = !DILocation(line: 1087, column: 3, scope: !1119)
!1119 = !DILexicalBlockFile(scope: !901, file: !3, discriminator: 1)
!1120 = !DILocalVariable(name: "buffer", scope: !1121, file: !3, line: 775, type: !927)
!1121 = distinct !DISubprogram(name: "head_bytes", scope: !3, file: !3, line: 773, type: !1122, isLocal: true, isDefinition: true, scopeLine: 774, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1124)
!1122 = !DISubroutineType(types: !1123)
!1123 = !{!64, !41, !57, !68}
!1124 = !{!1125, !1126, !1127, !1120, !1128, !1129}
!1125 = !DILocalVariable(name: "filename", arg: 1, scope: !1121, file: !3, line: 773, type: !41)
!1126 = !DILocalVariable(name: "fd", arg: 2, scope: !1121, file: !3, line: 773, type: !57)
!1127 = !DILocalVariable(name: "bytes_to_write", arg: 3, scope: !1121, file: !3, line: 773, type: !68)
!1128 = !DILocalVariable(name: "bytes_to_read", scope: !1121, file: !3, line: 776, type: !43)
!1129 = !DILocalVariable(name: "bytes_read", scope: !1130, file: !3, line: 780, type: !43)
!1130 = distinct !DILexicalBlock(scope: !1121, file: !3, line: 779, column: 5)
!1131 = !DILocation(line: 775, column: 8, scope: !1121, inlinedAt: !1132)
!1132 = distinct !DILocation(line: 865, column: 12, scope: !1133, inlinedAt: !881)
!1133 = distinct !DILexicalBlock(scope: !870, file: !3, line: 862, column: 7)
!1134 = !DILocation(line: 869, column: 24, scope: !882, inlinedAt: !899)
!1135 = !DILocation(line: 869, column: 44, scope: !882, inlinedAt: !899)
!1136 = !DILocation(line: 869, column: 58, scope: !882, inlinedAt: !899)
!1137 = !DILocation(line: 870, column: 17, scope: !882, inlinedAt: !899)
!1138 = !DILocation(line: 874, column: 19, scope: !894, inlinedAt: !899)
!1139 = !DILocation(line: 874, column: 19, scope: !897, inlinedAt: !899)
!1140 = !DILocation(line: 874, column: 19, scope: !1141, inlinedAt: !899)
!1141 = !DILexicalBlockFile(scope: !897, file: !3, discriminator: 2)
!1142 = !DILocation(line: 874, column: 19, scope: !1143, inlinedAt: !899)
!1143 = !DILexicalBlockFile(scope: !1144, file: !3, discriminator: 3)
!1144 = distinct !DILexicalBlock(scope: !897, file: !3, line: 874, column: 19)
!1145 = !DILocation(line: 874, column: 19, scope: !1146, inlinedAt: !899)
!1146 = !DILexicalBlockFile(scope: !1144, file: !3, discriminator: 2)
!1147 = !DILocation(line: 874, column: 19, scope: !1148, inlinedAt: !899)
!1148 = !DILexicalBlockFile(scope: !1149, file: !3, discriminator: 4)
!1149 = distinct !DILexicalBlock(scope: !1144, file: !3, line: 874, column: 19)
!1150 = !DILocation(line: 874, column: 19, scope: !1151, inlinedAt: !899)
!1151 = !DILexicalBlockFile(scope: !894, file: !3, discriminator: 11)
!1152 = !DILocation(line: 876, column: 7, scope: !882, inlinedAt: !899)
!1153 = !DILocation(line: 872, column: 7, scope: !882, inlinedAt: !899)
!1154 = !DILocation(line: 880, column: 18, scope: !1155, inlinedAt: !899)
!1155 = distinct !DILexicalBlock(scope: !1156, file: !3, line: 877, column: 5)
!1156 = distinct !DILexicalBlock(scope: !882, file: !3, line: 876, column: 7)
!1157 = !DILocation(line: 882, column: 5, scope: !1155, inlinedAt: !899)
!1158 = !DILocation(line: 885, column: 12, scope: !1159, inlinedAt: !899)
!1159 = distinct !DILexicalBlock(scope: !1156, file: !3, line: 884, column: 5)
!1160 = !DILocation(line: 886, column: 14, scope: !1161, inlinedAt: !899)
!1161 = distinct !DILexicalBlock(scope: !1159, file: !3, line: 886, column: 11)
!1162 = !DILocation(line: 886, column: 11, scope: !1159, inlinedAt: !899)
!1163 = !DILocation(line: 888, column: 21, scope: !1164, inlinedAt: !899)
!1164 = distinct !DILexicalBlock(scope: !1161, file: !3, line: 887, column: 9)
!1165 = !DILocation(line: 888, column: 28, scope: !1166, inlinedAt: !899)
!1166 = !DILexicalBlockFile(scope: !1164, file: !3, discriminator: 1)
!1167 = !DILocation(line: 888, column: 61, scope: !1168, inlinedAt: !899)
!1168 = !DILexicalBlockFile(scope: !1164, file: !3, discriminator: 2)
!1169 = !DILocation(line: 888, column: 11, scope: !1170, inlinedAt: !899)
!1170 = !DILexicalBlockFile(scope: !1164, file: !3, discriminator: 3)
!1171 = !DILocation(line: 889, column: 11, scope: !1164, inlinedAt: !899)
!1172 = !DILocalVariable(name: "buffer", scope: !1173, file: !3, line: 800, type: !927)
!1173 = distinct !DISubprogram(name: "head_lines", scope: !3, file: !3, line: 798, type: !1122, isLocal: true, isDefinition: true, scopeLine: 799, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1174)
!1174 = !{!1175, !1176, !1177, !1172, !1178, !1180, !1181, !1184}
!1175 = !DILocalVariable(name: "filename", arg: 1, scope: !1173, file: !3, line: 798, type: !41)
!1176 = !DILocalVariable(name: "fd", arg: 2, scope: !1173, file: !3, line: 798, type: !57)
!1177 = !DILocalVariable(name: "lines_to_write", arg: 3, scope: !1173, file: !3, line: 798, type: !68)
!1178 = !DILocalVariable(name: "bytes_read", scope: !1179, file: !3, line: 804, type: !43)
!1179 = distinct !DILexicalBlock(scope: !1173, file: !3, line: 803, column: 5)
!1180 = !DILocalVariable(name: "bytes_to_write", scope: !1179, file: !3, line: 805, type: !43)
!1181 = !DILocalVariable(name: "n_bytes_past_EOL", scope: !1182, file: !3, line: 817, type: !34)
!1182 = distinct !DILexicalBlock(scope: !1183, file: !3, line: 816, column: 11)
!1183 = distinct !DILexicalBlock(scope: !1179, file: !3, line: 815, column: 13)
!1184 = !DILocalVariable(name: "st", scope: !1185, file: !3, line: 823, type: !819)
!1185 = distinct !DILexicalBlock(scope: !1186, file: !3, line: 822, column: 15)
!1186 = distinct !DILexicalBlock(scope: !1182, file: !3, line: 821, column: 17)
!1187 = !DILocation(line: 800, column: 8, scope: !1173, inlinedAt: !1188)
!1188 = distinct !DILocation(line: 863, column: 12, scope: !1133, inlinedAt: !881)
!1189 = !DILocation(line: 195, column: 8, scope: !945, inlinedAt: !1190)
!1190 = distinct !DILocation(line: 480, column: 33, scope: !863, inlinedAt: !866)
!1191 = !DILocation(line: 835, column: 19, scope: !870, inlinedAt: !881)
!1192 = !DILocation(line: 835, column: 33, scope: !870, inlinedAt: !881)
!1193 = !DILocation(line: 835, column: 47, scope: !870, inlinedAt: !881)
!1194 = !DILocation(line: 835, column: 61, scope: !870, inlinedAt: !881)
!1195 = !DILocation(line: 836, column: 12, scope: !870, inlinedAt: !881)
!1196 = !DILocation(line: 838, column: 7, scope: !870, inlinedAt: !881)
!1197 = !DILocation(line: 167, column: 27, scope: !129, inlinedAt: !1198)
!1198 = distinct !DILocation(line: 839, column: 5, scope: !1199, inlinedAt: !881)
!1199 = distinct !DILexicalBlock(scope: !870, file: !3, line: 838, column: 7)
!1200 = !DILocation(line: 171, column: 3, scope: !129, inlinedAt: !1198)
!1201 = !DILocation(line: 839, column: 5, scope: !1199, inlinedAt: !881)
!1202 = !DILocation(line: 841, column: 7, scope: !870, inlinedAt: !881)
!1203 = !DILocation(line: 843, column: 13, scope: !868, inlinedAt: !881)
!1204 = !DILocation(line: 844, column: 7, scope: !868, inlinedAt: !881)
!1205 = !DIExpression(DW_OP_deref)
!1206 = !DILocation(line: 844, column: 19, scope: !868, inlinedAt: !881)
!1207 = !DILocalVariable(name: "__fd", arg: 1, scope: !1208, file: !1209, line: 463, type: !57)
!1208 = distinct !DISubprogram(name: "fstat", scope: !1209, file: !1209, line: 463, type: !1210, isLocal: false, isDefinition: true, scopeLine: 464, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1213)
!1209 = !DIFile(filename: "/usr/include/sys/stat.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1210 = !DISubroutineType(types: !1211)
!1211 = !{!57, !57, !1212}
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!1213 = !{!1207, !1214}
!1214 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1208, file: !1209, line: 463, type: !1212)
!1215 = !DILocation(line: 463, column: 1, scope: !1208, inlinedAt: !1216)
!1216 = distinct !DILocation(line: 845, column: 11, scope: !1217, inlinedAt: !881)
!1217 = distinct !DILexicalBlock(scope: !868, file: !3, line: 845, column: 11)
!1218 = !DILocation(line: 465, column: 10, scope: !1208, inlinedAt: !1216)
!1219 = !DILocation(line: 845, column: 27, scope: !1217, inlinedAt: !881)
!1220 = !DILocation(line: 845, column: 11, scope: !868, inlinedAt: !881)
!1221 = !DILocation(line: 847, column: 21, scope: !1222, inlinedAt: !881)
!1222 = distinct !DILexicalBlock(scope: !1217, file: !3, line: 846, column: 9)
!1223 = !DILocation(line: 847, column: 28, scope: !1224, inlinedAt: !881)
!1224 = !DILexicalBlockFile(scope: !1222, file: !3, discriminator: 1)
!1225 = !DILocation(line: 848, column: 18, scope: !1222, inlinedAt: !881)
!1226 = !DILocation(line: 847, column: 11, scope: !1227, inlinedAt: !881)
!1227 = !DILexicalBlockFile(scope: !1222, file: !3, discriminator: 2)
!1228 = !DILocation(line: 849, column: 11, scope: !1222, inlinedAt: !881)
!1229 = !DILocation(line: 851, column: 32, scope: !1230, inlinedAt: !881)
!1230 = distinct !DILexicalBlock(scope: !868, file: !3, line: 851, column: 11)
!1231 = !DILocalVariable(name: "sb", arg: 1, scope: !1232, file: !100, line: 701, type: !817)
!1232 = distinct !DISubprogram(name: "usable_st_size", scope: !100, file: !100, line: 701, type: !1233, isLocal: true, isDefinition: true, scopeLine: 702, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1235)
!1233 = !DISubroutineType(types: !1234)
!1234 = !{!64, !817}
!1235 = !{!1231}
!1236 = !DILocation(line: 701, column: 36, scope: !1232, inlinedAt: !1237)
!1237 = distinct !DILocation(line: 851, column: 35, scope: !1238, inlinedAt: !881)
!1238 = !DILexicalBlockFile(scope: !1230, file: !3, discriminator: 1)
!1239 = !DILocation(line: 703, column: 11, scope: !1232, inlinedAt: !1237)
!1240 = !{!1241, !1090, i64 24}
!1241 = !{!"stat", !1242, i64 0, !1242, i64 8, !1242, i64 16, !1090, i64 24, !1090, i64 28, !1090, i64 32, !1090, i64 36, !1242, i64 40, !1242, i64 48, !1242, i64 56, !1242, i64 64, !1243, i64 72, !1243, i64 88, !1243, i64 104, !704, i64 120}
!1242 = !{!"long", !704, i64 0}
!1243 = !{!"timespec", !1242, i64 0, !1242, i64 8}
!1244 = !DILocation(line: 703, column: 33, scope: !1232, inlinedAt: !1237)
!1245 = !DILocation(line: 853, column: 25, scope: !1246, inlinedAt: !881)
!1246 = distinct !DILexicalBlock(scope: !1230, file: !3, line: 852, column: 9)
!1247 = !DILocation(line: 854, column: 27, scope: !1248, inlinedAt: !881)
!1248 = distinct !DILexicalBlock(scope: !1246, file: !3, line: 854, column: 15)
!1249 = !DILocation(line: 854, column: 15, scope: !1246, inlinedAt: !881)
!1250 = !{!1241, !1242, i64 48}
!1251 = !DILocation(line: 857, column: 11, scope: !868, inlinedAt: !881)
!1252 = !DILocation(line: 753, column: 36, scope: !935, inlinedAt: !943)
!1253 = !DILocation(line: 753, column: 50, scope: !935, inlinedAt: !943)
!1254 = !DILocation(line: 753, column: 64, scope: !935, inlinedAt: !943)
!1255 = !DILocation(line: 754, column: 43, scope: !935, inlinedAt: !943)
!1256 = !DILocation(line: 754, column: 53, scope: !935, inlinedAt: !943)
!1257 = !DILocation(line: 756, column: 9, scope: !935, inlinedAt: !943)
!1258 = !DILocation(line: 757, column: 26, scope: !934, inlinedAt: !943)
!1259 = !DILocation(line: 757, column: 56, scope: !1260, inlinedAt: !943)
!1260 = !DILexicalBlockFile(scope: !934, file: !3, discriminator: 2)
!1261 = !{!1241, !1242, i64 56}
!1262 = !DILocation(line: 757, column: 56, scope: !1263, inlinedAt: !943)
!1263 = !DILexicalBlockFile(scope: !934, file: !3, discriminator: 3)
!1264 = !DILocation(line: 757, column: 53, scope: !1265, inlinedAt: !943)
!1265 = !DILexicalBlockFile(scope: !934, file: !3, discriminator: 6)
!1266 = !DILocation(line: 757, column: 7, scope: !1267, inlinedAt: !943)
!1267 = !DILexicalBlockFile(scope: !935, file: !3, discriminator: 6)
!1268 = !DILocalVariable(name: "filename", arg: 1, scope: !1269, file: !3, line: 497, type: !41)
!1269 = distinct !DISubprogram(name: "elide_tail_lines_pipe", scope: !3, file: !3, line: 497, type: !767, isLocal: true, isDefinition: true, scopeLine: 499, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1270)
!1270 = !{!1268, !1271, !1272, !1273, !1274, !1275, !1285, !1286, !1287, !1288, !1289, !1290, !1293, !1294, !1297, !1298}
!1271 = !DILocalVariable(name: "fd", arg: 2, scope: !1269, file: !3, line: 497, type: !57)
!1272 = !DILocalVariable(name: "n_elide", arg: 3, scope: !1269, file: !3, line: 497, type: !68)
!1273 = !DILocalVariable(name: "current_pos", arg: 4, scope: !1269, file: !3, line: 498, type: !34)
!1274 = !DILocalVariable(name: "desired_pos", scope: !1269, file: !3, line: 507, type: !68)
!1275 = !DILocalVariable(name: "first", scope: !1269, file: !3, line: 509, type: !1276)
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1277, size: 64)
!1277 = !DIDerivedType(tag: DW_TAG_typedef, name: "LBUFFER", scope: !1269, file: !3, line: 508, baseType: !1278)
!1278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "linebuffer", scope: !1269, file: !3, line: 500, size: 65728, elements: !1279)
!1279 = !{!1280, !1281, !1282, !1283}
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !1278, file: !3, line: 502, baseType: !927, size: 65536)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "nbytes", scope: !1278, file: !3, line: 503, baseType: !43, size: 64, offset: 65536)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "nlines", scope: !1278, file: !3, line: 504, baseType: !43, size: 64, offset: 65600)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1278, file: !3, line: 505, baseType: !1284, size: 64, offset: 65664)
!1284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1278, size: 64)
!1285 = !DILocalVariable(name: "last", scope: !1269, file: !3, line: 509, type: !1276)
!1286 = !DILocalVariable(name: "tmp", scope: !1269, file: !3, line: 509, type: !1276)
!1287 = !DILocalVariable(name: "total_lines", scope: !1269, file: !3, line: 510, type: !43)
!1288 = !DILocalVariable(name: "ok", scope: !1269, file: !3, line: 511, type: !64)
!1289 = !DILocalVariable(name: "n_read", scope: !1269, file: !3, line: 512, type: !43)
!1290 = !DILocalVariable(name: "buffer_end", scope: !1291, file: !3, line: 541, type: !41)
!1291 = distinct !DILexicalBlock(scope: !1292, file: !3, line: 540, column: 7)
!1292 = distinct !DILexicalBlock(scope: !1269, file: !3, line: 523, column: 5)
!1293 = !DILocalVariable(name: "p", scope: !1291, file: !3, line: 542, type: !41)
!1294 = !DILocalVariable(name: "n", scope: !1295, file: !3, line: 608, type: !43)
!1295 = distinct !DILexicalBlock(scope: !1296, file: !3, line: 607, column: 5)
!1296 = distinct !DILexicalBlock(scope: !1269, file: !3, line: 606, column: 7)
!1297 = !DILocalVariable(name: "buffer_end", scope: !1295, file: !3, line: 609, type: !41)
!1298 = !DILocalVariable(name: "p", scope: !1295, file: !3, line: 610, type: !41)
!1299 = !DILocation(line: 497, column: 36, scope: !1269, inlinedAt: !1300)
!1300 = distinct !DILocation(line: 758, column: 12, scope: !934, inlinedAt: !943)
!1301 = !DILocation(line: 497, column: 50, scope: !1269, inlinedAt: !1300)
!1302 = !DILocation(line: 497, column: 64, scope: !1269, inlinedAt: !1300)
!1303 = !DILocation(line: 498, column: 30, scope: !1269, inlinedAt: !1300)
!1304 = !DILocation(line: 507, column: 13, scope: !1269, inlinedAt: !1300)
!1305 = !DILocation(line: 510, column: 10, scope: !1269, inlinedAt: !1300)
!1306 = !DILocation(line: 511, column: 8, scope: !1269, inlinedAt: !1300)
!1307 = !DILocation(line: 514, column: 18, scope: !1269, inlinedAt: !1300)
!1308 = !DILocation(line: 509, column: 20, scope: !1269, inlinedAt: !1300)
!1309 = !DILocation(line: 509, column: 12, scope: !1269, inlinedAt: !1300)
!1310 = !DILocation(line: 515, column: 10, scope: !1269, inlinedAt: !1300)
!1311 = !DILocation(line: 515, column: 17, scope: !1269, inlinedAt: !1300)
!1312 = !DILocation(line: 517, column: 9, scope: !1269, inlinedAt: !1300)
!1313 = !DILocation(line: 509, column: 27, scope: !1269, inlinedAt: !1300)
!1314 = !DILocation(line: 522, column: 3, scope: !1269, inlinedAt: !1300)
!1315 = !DILocation(line: 524, column: 16, scope: !1292, inlinedAt: !1300)
!1316 = !DILocation(line: 512, column: 10, scope: !1269, inlinedAt: !1300)
!1317 = !DILocation(line: 525, column: 23, scope: !1318, inlinedAt: !1300)
!1318 = distinct !DILexicalBlock(scope: !1292, file: !3, line: 525, column: 11)
!1319 = !DILocation(line: 528, column: 11, scope: !1292, inlinedAt: !1300)
!1320 = !DILocation(line: 530, column: 23, scope: !1321, inlinedAt: !1300)
!1321 = distinct !DILexicalBlock(scope: !1322, file: !3, line: 529, column: 9)
!1322 = distinct !DILexicalBlock(scope: !1292, file: !3, line: 528, column: 11)
!1323 = !DILocation(line: 531, column: 11, scope: !1321, inlinedAt: !1300)
!1324 = !DILocation(line: 532, column: 11, scope: !1321, inlinedAt: !1300)
!1325 = distinct !{!1325, !1326, !1327}
!1326 = !DILocation(line: 522, column: 3, scope: !1269)
!1327 = !DILocation(line: 579, column: 5, scope: !1269)
!1328 = !DILocation(line: 535, column: 19, scope: !1292, inlinedAt: !1300)
!1329 = !{!1330, !1242, i64 8192}
!1330 = !{!"linebuffer", !704, i64 0, !1242, i64 8192, !1242, i64 8200, !703, i64 8208}
!1331 = !DILocation(line: 541, column: 46, scope: !1291, inlinedAt: !1300)
!1332 = !DILocation(line: 541, column: 21, scope: !1291, inlinedAt: !1300)
!1333 = !DILocation(line: 542, column: 21, scope: !1291, inlinedAt: !1300)
!1334 = !DILocation(line: 537, column: 17, scope: !1292, inlinedAt: !1300)
!1335 = !DILocation(line: 543, column: 32, scope: !1336, inlinedAt: !1300)
!1336 = !DILexicalBlockFile(scope: !1291, file: !3, discriminator: 1)
!1337 = !DILocation(line: 543, column: 53, scope: !1336, inlinedAt: !1300)
!1338 = !DILocation(line: 543, column: 21, scope: !1336, inlinedAt: !1300)
!1339 = !DILocation(line: 543, column: 9, scope: !1336, inlinedAt: !1300)
!1340 = !DILocation(line: 545, column: 13, scope: !1341, inlinedAt: !1300)
!1341 = distinct !DILexicalBlock(scope: !1291, file: !3, line: 544, column: 11)
!1342 = !DILocation(line: 546, column: 13, scope: !1341, inlinedAt: !1300)
!1343 = !{!1330, !1242, i64 8200}
!1344 = distinct !{!1344, !1345, !1346}
!1345 = !DILocation(line: 543, column: 9, scope: !1291)
!1346 = !DILocation(line: 547, column: 11, scope: !1291)
!1347 = !DILocation(line: 549, column: 19, scope: !1292, inlinedAt: !1300)
!1348 = !DILocation(line: 549, column: 27, scope: !1292, inlinedAt: !1300)
!1349 = !DILocation(line: 554, column: 31, scope: !1350, inlinedAt: !1300)
!1350 = distinct !DILexicalBlock(scope: !1292, file: !3, line: 554, column: 11)
!1351 = !DILocation(line: 554, column: 23, scope: !1350, inlinedAt: !1300)
!1352 = !DILocation(line: 554, column: 38, scope: !1350, inlinedAt: !1300)
!1353 = !DILocation(line: 554, column: 11, scope: !1292, inlinedAt: !1300)
!1354 = !DILocation(line: 556, column: 20, scope: !1355, inlinedAt: !1300)
!1355 = distinct !DILexicalBlock(scope: !1350, file: !3, line: 555, column: 9)
!1356 = !DILocation(line: 556, column: 11, scope: !1355, inlinedAt: !1300)
!1357 = !DILocation(line: 557, column: 32, scope: !1355, inlinedAt: !1300)
!1358 = !{!1242, !1242, i64 0}
!1359 = !DILocation(line: 557, column: 24, scope: !1355, inlinedAt: !1300)
!1360 = !DILocation(line: 559, column: 9, scope: !1355, inlinedAt: !1300)
!1361 = !DILocation(line: 567, column: 24, scope: !1362, inlinedAt: !1300)
!1362 = distinct !DILexicalBlock(scope: !1350, file: !3, line: 561, column: 9)
!1363 = !DILocation(line: 567, column: 29, scope: !1362, inlinedAt: !1300)
!1364 = !{!1330, !703, i64 8208}
!1365 = !DILocation(line: 568, column: 46, scope: !1366, inlinedAt: !1300)
!1366 = distinct !DILexicalBlock(scope: !1362, file: !3, line: 568, column: 15)
!1367 = !DILocation(line: 568, column: 37, scope: !1366, inlinedAt: !1300)
!1368 = !DILocation(line: 568, column: 23, scope: !1366, inlinedAt: !1300)
!1369 = !DILocation(line: 568, column: 15, scope: !1362, inlinedAt: !1300)
!1370 = !DILocation(line: 570, column: 37, scope: !1371, inlinedAt: !1300)
!1371 = distinct !DILexicalBlock(scope: !1366, file: !3, line: 569, column: 13)
!1372 = !DILocation(line: 570, column: 27, scope: !1371, inlinedAt: !1300)
!1373 = !DILocation(line: 571, column: 30, scope: !1371, inlinedAt: !1300)
!1374 = !DILocation(line: 571, column: 15, scope: !1371, inlinedAt: !1300)
!1375 = !DILocation(line: 573, column: 37, scope: !1371, inlinedAt: !1300)
!1376 = !DILocation(line: 573, column: 27, scope: !1371, inlinedAt: !1300)
!1377 = !DILocation(line: 574, column: 30, scope: !1371, inlinedAt: !1300)
!1378 = !DILocation(line: 575, column: 13, scope: !1371, inlinedAt: !1300)
!1379 = !DILocation(line: 577, column: 19, scope: !1366, inlinedAt: !1300)
!1380 = !DILocation(line: 525, column: 33, scope: !1381, inlinedAt: !1300)
!1381 = !DILexicalBlockFile(scope: !1318, file: !3, discriminator: 1)
!1382 = !DILocation(line: 581, column: 3, scope: !1269, inlinedAt: !1300)
!1383 = !DILocation(line: 583, column: 7, scope: !1269, inlinedAt: !1300)
!1384 = !DILocation(line: 585, column: 17, scope: !1385, inlinedAt: !1300)
!1385 = distinct !DILexicalBlock(scope: !1386, file: !3, line: 584, column: 5)
!1386 = distinct !DILexicalBlock(scope: !1269, file: !3, line: 583, column: 7)
!1387 = !DILocation(line: 585, column: 24, scope: !1388, inlinedAt: !1300)
!1388 = !DILexicalBlockFile(scope: !1385, file: !3, discriminator: 1)
!1389 = !DILocation(line: 585, column: 47, scope: !1390, inlinedAt: !1300)
!1390 = !DILexicalBlockFile(scope: !1385, file: !3, discriminator: 2)
!1391 = !DILocation(line: 585, column: 7, scope: !1392, inlinedAt: !1300)
!1392 = !DILexicalBlockFile(scope: !1385, file: !3, discriminator: 3)
!1393 = !DILocation(line: 587, column: 7, scope: !1385, inlinedAt: !1300)
!1394 = !DILocation(line: 592, column: 13, scope: !1395, inlinedAt: !1300)
!1395 = distinct !DILexicalBlock(scope: !1269, file: !3, line: 592, column: 7)
!1396 = !DILocation(line: 592, column: 7, scope: !1395, inlinedAt: !1300)
!1397 = !DILocation(line: 592, column: 20, scope: !1395, inlinedAt: !1300)
!1398 = !DILocation(line: 592, column: 49, scope: !1399, inlinedAt: !1300)
!1399 = !DILexicalBlockFile(scope: !1395, file: !3, discriminator: 1)
!1400 = !DILocation(line: 592, column: 23, scope: !1399, inlinedAt: !1300)
!1401 = !DILocation(line: 592, column: 57, scope: !1399, inlinedAt: !1300)
!1402 = !DILocation(line: 592, column: 54, scope: !1399, inlinedAt: !1300)
!1403 = !DILocation(line: 592, column: 7, scope: !1404, inlinedAt: !1300)
!1404 = !DILexicalBlockFile(scope: !1269, file: !3, discriminator: 1)
!1405 = !DILocation(line: 594, column: 7, scope: !1406, inlinedAt: !1300)
!1406 = distinct !DILexicalBlock(scope: !1395, file: !3, line: 593, column: 5)
!1407 = !DILocation(line: 595, column: 7, scope: !1406, inlinedAt: !1300)
!1408 = !DILocation(line: 596, column: 5, scope: !1406, inlinedAt: !1300)
!1409 = !DILocation(line: 598, column: 50, scope: !1410, inlinedAt: !1300)
!1410 = !DILexicalBlockFile(scope: !1411, file: !3, discriminator: 1)
!1411 = distinct !DILexicalBlock(scope: !1412, file: !3, line: 598, column: 3)
!1412 = distinct !DILexicalBlock(scope: !1269, file: !3, line: 598, column: 3)
!1413 = !DILocation(line: 598, column: 43, scope: !1410, inlinedAt: !1300)
!1414 = !DILocation(line: 598, column: 29, scope: !1410, inlinedAt: !1300)
!1415 = !DILocation(line: 598, column: 3, scope: !1416, inlinedAt: !1300)
!1416 = !DILexicalBlockFile(scope: !1412, file: !3, discriminator: 1)
!1417 = !DILocation(line: 600, column: 27, scope: !1418, inlinedAt: !1300)
!1418 = distinct !DILexicalBlock(scope: !1411, file: !3, line: 599, column: 5)
!1419 = !DILocation(line: 600, column: 19, scope: !1418, inlinedAt: !1300)
!1420 = !DILocation(line: 601, column: 22, scope: !1418, inlinedAt: !1300)
!1421 = !DILocation(line: 601, column: 7, scope: !1418, inlinedAt: !1300)
!1422 = !DILocation(line: 602, column: 27, scope: !1418, inlinedAt: !1300)
!1423 = !DILocation(line: 602, column: 19, scope: !1418, inlinedAt: !1300)
!1424 = !DILocation(line: 598, column: 69, scope: !1425, inlinedAt: !1300)
!1425 = !DILexicalBlockFile(scope: !1411, file: !3, discriminator: 2)
!1426 = distinct !{!1426, !1427, !1428}
!1427 = !DILocation(line: 598, column: 3, scope: !1412)
!1428 = !DILocation(line: 603, column: 5, scope: !1412)
!1429 = !DILocation(line: 606, column: 15, scope: !1296, inlinedAt: !1300)
!1430 = !DILocation(line: 606, column: 7, scope: !1269, inlinedAt: !1300)
!1431 = !DILocation(line: 608, column: 30, scope: !1295, inlinedAt: !1300)
!1432 = !DILocation(line: 608, column: 14, scope: !1295, inlinedAt: !1300)
!1433 = !DILocation(line: 609, column: 32, scope: !1295, inlinedAt: !1300)
!1434 = !DILocation(line: 610, column: 19, scope: !1295, inlinedAt: !1300)
!1435 = !DILocation(line: 611, column: 14, scope: !1436, inlinedAt: !1300)
!1436 = !DILexicalBlockFile(scope: !1295, file: !3, discriminator: 1)
!1437 = !DILocation(line: 611, column: 16, scope: !1436, inlinedAt: !1300)
!1438 = !DILocation(line: 609, column: 51, scope: !1295, inlinedAt: !1300)
!1439 = !DILocation(line: 609, column: 44, scope: !1295, inlinedAt: !1300)
!1440 = !DILocation(line: 614, column: 11, scope: !1441, inlinedAt: !1300)
!1441 = distinct !DILexicalBlock(scope: !1295, file: !3, line: 612, column: 9)
!1442 = !DILocation(line: 611, column: 56, scope: !1443, inlinedAt: !1300)
!1443 = !DILexicalBlockFile(scope: !1295, file: !3, discriminator: 2)
!1444 = !DILocation(line: 611, column: 24, scope: !1443, inlinedAt: !1300)
!1445 = !DILocation(line: 611, column: 16, scope: !1443, inlinedAt: !1300)
!1446 = !DILocation(line: 611, column: 7, scope: !1447, inlinedAt: !1300)
!1447 = !DILexicalBlockFile(scope: !1295, file: !3, discriminator: 3)
!1448 = !DILocation(line: 613, column: 11, scope: !1441, inlinedAt: !1300)
!1449 = !DILocation(line: 615, column: 11, scope: !1441, inlinedAt: !1300)
!1450 = distinct !{!1450, !1451, !1452}
!1451 = !DILocation(line: 611, column: 7, scope: !1295)
!1452 = !DILocation(line: 616, column: 9, scope: !1295)
!1453 = !DILocation(line: 617, column: 24, scope: !1295, inlinedAt: !1300)
!1454 = !DILocation(line: 617, column: 19, scope: !1295, inlinedAt: !1300)
!1455 = !DILocation(line: 618, column: 7, scope: !1295, inlinedAt: !1300)
!1456 = !DILocation(line: 619, column: 5, scope: !1295, inlinedAt: !1300)
!1457 = !DILocation(line: 622, column: 3, scope: !1404, inlinedAt: !1300)
!1458 = !DILocation(line: 624, column: 20, scope: !1459, inlinedAt: !1300)
!1459 = distinct !DILexicalBlock(scope: !1269, file: !3, line: 623, column: 5)
!1460 = !DILocation(line: 625, column: 13, scope: !1459, inlinedAt: !1300)
!1461 = !DILocation(line: 625, column: 7, scope: !1459, inlinedAt: !1300)
!1462 = distinct !{!1462, !1463, !1464}
!1463 = !DILocation(line: 622, column: 3, scope: !1269)
!1464 = !DILocation(line: 627, column: 5, scope: !1269)
!1465 = !DILocation(line: 629, column: 9, scope: !1466, inlinedAt: !1300)
!1466 = distinct !DILexicalBlock(scope: !1269, file: !3, line: 629, column: 7)
!1467 = !DILocation(line: 629, column: 24, scope: !1466, inlinedAt: !1300)
!1468 = !DILocation(line: 629, column: 27, scope: !1469, inlinedAt: !1300)
!1469 = !DILexicalBlockFile(scope: !1466, file: !3, discriminator: 1)
!1470 = !DILocation(line: 629, column: 72, scope: !1469, inlinedAt: !1300)
!1471 = !DILocation(line: 629, column: 7, scope: !1404, inlinedAt: !1300)
!1472 = !DILocation(line: 631, column: 10, scope: !1269, inlinedAt: !1300)
!1473 = !DILocation(line: 758, column: 5, scope: !934, inlinedAt: !943)
!1474 = !DILocation(line: 766, column: 20, scope: !933, inlinedAt: !943)
!1475 = !DILocation(line: 767, column: 15, scope: !933, inlinedAt: !943)
!1476 = !DILocation(line: 646, column: 40, scope: !903, inlinedAt: !931)
!1477 = !DILocation(line: 646, column: 61, scope: !903, inlinedAt: !931)
!1478 = !DILocation(line: 647, column: 38, scope: !903, inlinedAt: !931)
!1479 = !DILocation(line: 648, column: 34, scope: !903, inlinedAt: !931)
!1480 = !DILocation(line: 648, column: 51, scope: !903, inlinedAt: !931)
!1481 = !DILocation(line: 650, column: 3, scope: !903, inlinedAt: !931)
!1482 = !DILocation(line: 652, column: 9, scope: !903, inlinedAt: !931)
!1483 = !DILocation(line: 656, column: 21, scope: !903, inlinedAt: !931)
!1484 = !DILocation(line: 656, column: 34, scope: !903, inlinedAt: !931)
!1485 = !DILocation(line: 651, column: 10, scope: !903, inlinedAt: !931)
!1486 = !DILocation(line: 657, column: 18, scope: !1487, inlinedAt: !931)
!1487 = distinct !DILexicalBlock(scope: !903, file: !3, line: 657, column: 7)
!1488 = !DILocation(line: 657, column: 7, scope: !903, inlinedAt: !931)
!1489 = !DILocation(line: 661, column: 7, scope: !903, inlinedAt: !931)
!1490 = !DILocation(line: 662, column: 7, scope: !1491, inlinedAt: !931)
!1491 = distinct !DILexicalBlock(scope: !903, file: !3, line: 662, column: 7)
!1492 = !DILocation(line: 662, column: 51, scope: !1491, inlinedAt: !931)
!1493 = !DILocation(line: 662, column: 7, scope: !903, inlinedAt: !931)
!1494 = !DILocation(line: 664, column: 16, scope: !903, inlinedAt: !931)
!1495 = !DILocation(line: 665, column: 18, scope: !1496, inlinedAt: !931)
!1496 = distinct !DILexicalBlock(scope: !903, file: !3, line: 665, column: 7)
!1497 = !DILocation(line: 665, column: 7, scope: !903, inlinedAt: !931)
!1498 = !DILocation(line: 667, column: 17, scope: !1499, inlinedAt: !931)
!1499 = distinct !DILexicalBlock(scope: !1496, file: !3, line: 666, column: 5)
!1500 = !DILocation(line: 667, column: 24, scope: !1501, inlinedAt: !931)
!1501 = !DILexicalBlockFile(scope: !1499, file: !3, discriminator: 1)
!1502 = !DILocation(line: 667, column: 47, scope: !1503, inlinedAt: !931)
!1503 = !DILexicalBlockFile(scope: !1499, file: !3, discriminator: 2)
!1504 = !DILocation(line: 667, column: 7, scope: !1505, inlinedAt: !931)
!1505 = !DILexicalBlockFile(scope: !1499, file: !3, discriminator: 3)
!1506 = !DILocation(line: 668, column: 7, scope: !1499, inlinedAt: !931)
!1507 = !DILocation(line: 675, column: 18, scope: !1508, inlinedAt: !931)
!1508 = !DILexicalBlockFile(scope: !1509, file: !3, discriminator: 1)
!1509 = distinct !DILexicalBlock(scope: !903, file: !3, line: 675, column: 7)
!1510 = !DILocation(line: 675, column: 15, scope: !1509, inlinedAt: !931)
!1511 = !DILocation(line: 675, column: 50, scope: !1512, inlinedAt: !931)
!1512 = !DILexicalBlockFile(scope: !1509, file: !3, discriminator: 2)
!1513 = !DILocation(line: 675, column: 32, scope: !1512, inlinedAt: !931)
!1514 = !DILocation(line: 675, column: 58, scope: !1512, inlinedAt: !931)
!1515 = !DILocation(line: 675, column: 7, scope: !1516, inlinedAt: !931)
!1516 = !DILexicalBlockFile(scope: !903, file: !3, discriminator: 2)
!1517 = !DILocation(line: 682, column: 14, scope: !917, inlinedAt: !931)
!1518 = !DILocation(line: 683, column: 7, scope: !917, inlinedAt: !931)
!1519 = !DILocation(line: 683, column: 7, scope: !1520, inlinedAt: !931)
!1520 = !DILexicalBlockFile(scope: !917, file: !3, discriminator: 1)
!1521 = !DILocation(line: 685, column: 15, scope: !921, inlinedAt: !931)
!1522 = !DILocation(line: 686, column: 15, scope: !920, inlinedAt: !931)
!1523 = !DILocation(line: 686, column: 13, scope: !920, inlinedAt: !931)
!1524 = !DILocation(line: 690, column: 20, scope: !919, inlinedAt: !931)
!1525 = !DILocation(line: 689, column: 27, scope: !919, inlinedAt: !931)
!1526 = !DILocation(line: 691, column: 22, scope: !1527, inlinedAt: !931)
!1527 = distinct !DILexicalBlock(scope: !919, file: !3, line: 691, column: 19)
!1528 = !DILocation(line: 693, column: 22, scope: !919, inlinedAt: !931)
!1529 = !DILocation(line: 695, column: 22, scope: !926, inlinedAt: !931)
!1530 = !DILocation(line: 695, column: 25, scope: !926, inlinedAt: !931)
!1531 = !DILocation(line: 695, column: 15, scope: !921, inlinedAt: !931)
!1532 = distinct !{!1532, !1533, !1534}
!1533 = !DILocation(line: 683, column: 7, scope: !917)
!1534 = !DILocation(line: 721, column: 9, scope: !917)
!1535 = !DILocation(line: 700, column: 29, scope: !924, inlinedAt: !931)
!1536 = !DILocation(line: 700, column: 19, scope: !925, inlinedAt: !931)
!1537 = !DILocation(line: 703, column: 23, scope: !1538, inlinedAt: !931)
!1538 = distinct !DILexicalBlock(scope: !923, file: !3, line: 703, column: 23)
!1539 = !DILocation(line: 703, column: 73, scope: !1538, inlinedAt: !931)
!1540 = !DILocation(line: 703, column: 23, scope: !923, inlinedAt: !931)
!1541 = !DILocation(line: 706, column: 42, scope: !923, inlinedAt: !931)
!1542 = !DILocation(line: 193, column: 14, scope: !945, inlinedAt: !957)
!1543 = !DILocation(line: 193, column: 32, scope: !945, inlinedAt: !957)
!1544 = !DILocation(line: 195, column: 3, scope: !945, inlinedAt: !957)
!1545 = !DILocation(line: 196, column: 16, scope: !945, inlinedAt: !957)
!1546 = !DILocation(line: 199, column: 12, scope: !1547, inlinedAt: !957)
!1547 = !DILexicalBlockFile(scope: !945, file: !3, discriminator: 1)
!1548 = !DILocation(line: 199, column: 3, scope: !1547, inlinedAt: !957)
!1549 = !DILocation(line: 201, column: 26, scope: !954, inlinedAt: !957)
!1550 = !DILocation(line: 201, column: 14, scope: !954, inlinedAt: !957)
!1551 = !DILocation(line: 202, column: 23, scope: !954, inlinedAt: !957)
!1552 = !DILocation(line: 202, column: 14, scope: !954, inlinedAt: !957)
!1553 = !DILocation(line: 203, column: 18, scope: !1554, inlinedAt: !957)
!1554 = distinct !DILexicalBlock(scope: !954, file: !3, line: 203, column: 11)
!1555 = !DILocation(line: 203, column: 11, scope: !954, inlinedAt: !957)
!1556 = !DILocation(line: 206, column: 15, scope: !954, inlinedAt: !957)
!1557 = !DILocation(line: 208, column: 18, scope: !1558, inlinedAt: !957)
!1558 = distinct !DILexicalBlock(scope: !954, file: !3, line: 208, column: 11)
!1559 = !DILocation(line: 208, column: 34, scope: !1560, inlinedAt: !957)
!1560 = !DILexicalBlockFile(scope: !1558, file: !3, discriminator: 1)
!1561 = !DILocation(line: 208, column: 23, scope: !1558, inlinedAt: !957)
!1562 = !DILocation(line: 211, column: 7, scope: !954, inlinedAt: !957)
!1563 = !DILocation(line: 215, column: 1, scope: !945, inlinedAt: !957)
!1564 = !DILocation(line: 702, column: 39, scope: !923, inlinedAt: !931)
!1565 = !DILocation(line: 709, column: 23, scope: !1566, inlinedAt: !931)
!1566 = distinct !DILexicalBlock(scope: !1567, file: !3, line: 708, column: 21)
!1567 = distinct !DILexicalBlock(scope: !923, file: !3, line: 707, column: 23)
!1568 = !DILocation(line: 710, column: 23, scope: !1566, inlinedAt: !931)
!1569 = !DILocation(line: 716, column: 40, scope: !925, inlinedAt: !931)
!1570 = !DILocation(line: 716, column: 15, scope: !925, inlinedAt: !931)
!1571 = !DILocation(line: 719, column: 43, scope: !925, inlinedAt: !931)
!1572 = !DILocation(line: 719, column: 47, scope: !925, inlinedAt: !931)
!1573 = !DILocation(line: 719, column: 27, scope: !925, inlinedAt: !931)
!1574 = !DILocation(line: 719, column: 24, scope: !925, inlinedAt: !931)
!1575 = !DILocation(line: 719, column: 15, scope: !925, inlinedAt: !931)
!1576 = !DILocation(line: 724, column: 15, scope: !1577, inlinedAt: !931)
!1577 = distinct !DILexicalBlock(scope: !917, file: !3, line: 724, column: 11)
!1578 = !DILocation(line: 724, column: 11, scope: !917, inlinedAt: !931)
!1579 = !DILocation(line: 729, column: 11, scope: !917, inlinedAt: !931)
!1580 = !DILocation(line: 730, column: 11, scope: !1581, inlinedAt: !931)
!1581 = distinct !DILexicalBlock(scope: !917, file: !3, line: 730, column: 11)
!1582 = !DILocation(line: 730, column: 55, scope: !1581, inlinedAt: !931)
!1583 = !DILocation(line: 730, column: 11, scope: !917, inlinedAt: !931)
!1584 = !DILocation(line: 733, column: 20, scope: !917, inlinedAt: !931)
!1585 = !DILocation(line: 734, column: 11, scope: !917, inlinedAt: !931)
!1586 = !DILocation(line: 736, column: 21, scope: !1587, inlinedAt: !931)
!1587 = distinct !DILexicalBlock(scope: !1588, file: !3, line: 735, column: 9)
!1588 = distinct !DILexicalBlock(scope: !917, file: !3, line: 734, column: 11)
!1589 = !DILocation(line: 736, column: 28, scope: !1590, inlinedAt: !931)
!1590 = !DILexicalBlockFile(scope: !1587, file: !3, discriminator: 1)
!1591 = !DILocation(line: 736, column: 51, scope: !1592, inlinedAt: !931)
!1592 = !DILexicalBlockFile(scope: !1587, file: !3, discriminator: 2)
!1593 = !DILocation(line: 736, column: 11, scope: !1594, inlinedAt: !931)
!1594 = !DILexicalBlockFile(scope: !1587, file: !3, discriminator: 3)
!1595 = !DILocation(line: 737, column: 11, scope: !1587, inlinedAt: !931)
!1596 = !DILocation(line: 745, column: 1, scope: !903, inlinedAt: !931)
!1597 = !DILocation(line: 767, column: 15, scope: !932, inlinedAt: !943)
!1598 = !DILocation(line: 464, column: 36, scope: !814, inlinedAt: !866)
!1599 = !DILocation(line: 464, column: 50, scope: !814, inlinedAt: !866)
!1600 = !DILocation(line: 464, column: 64, scope: !814, inlinedAt: !866)
!1601 = !DILocation(line: 465, column: 43, scope: !814, inlinedAt: !866)
!1602 = !DILocation(line: 465, column: 53, scope: !814, inlinedAt: !866)
!1603 = !DILocation(line: 467, column: 9, scope: !814, inlinedAt: !866)
!1604 = !DILocation(line: 468, column: 26, scope: !813, inlinedAt: !866)
!1605 = !DILocation(line: 468, column: 56, scope: !1606, inlinedAt: !866)
!1606 = !DILexicalBlockFile(scope: !813, file: !3, discriminator: 2)
!1607 = !DILocation(line: 468, column: 56, scope: !1608, inlinedAt: !866)
!1608 = !DILexicalBlockFile(scope: !813, file: !3, discriminator: 3)
!1609 = !DILocation(line: 468, column: 53, scope: !1610, inlinedAt: !866)
!1610 = !DILexicalBlockFile(scope: !813, file: !3, discriminator: 6)
!1611 = !DILocation(line: 468, column: 7, scope: !1612, inlinedAt: !866)
!1612 = !DILexicalBlockFile(scope: !814, file: !3, discriminator: 6)
!1613 = !DILocation(line: 247, column: 36, scope: !766, inlinedAt: !812)
!1614 = !DILocation(line: 247, column: 50, scope: !766, inlinedAt: !812)
!1615 = !DILocation(line: 247, column: 64, scope: !766, inlinedAt: !812)
!1616 = !DILocation(line: 248, column: 30, scope: !766, inlinedAt: !812)
!1617 = !DILocation(line: 250, column: 10, scope: !766, inlinedAt: !812)
!1618 = !DILocation(line: 251, column: 13, scope: !766, inlinedAt: !812)
!1619 = !DILocation(line: 252, column: 8, scope: !766, inlinedAt: !812)
!1620 = !DILocation(line: 289, column: 7, scope: !766, inlinedAt: !812)
!1621 = !DILocation(line: 367, column: 29, scope: !1622, inlinedAt: !812)
!1622 = distinct !DILexicalBlock(scope: !1623, file: !3, line: 367, column: 15)
!1623 = distinct !DILexicalBlock(scope: !1624, file: !3, line: 366, column: 9)
!1624 = distinct !DILexicalBlock(scope: !1625, file: !3, line: 365, column: 7)
!1625 = distinct !DILexicalBlock(scope: !790, file: !3, line: 365, column: 7)
!1626 = !DILocation(line: 291, column: 12, scope: !764, inlinedAt: !812)
!1627 = !DILocation(line: 292, column: 12, scope: !764, inlinedAt: !812)
!1628 = !DILocation(line: 293, column: 14, scope: !764, inlinedAt: !812)
!1629 = !DILocation(line: 295, column: 7, scope: !764, inlinedAt: !812)
!1630 = !DILocalVariable(name: "n", arg: 1, scope: !1631, file: !638, line: 105, type: !43)
!1631 = distinct !DISubprogram(name: "xnmalloc", scope: !638, file: !638, line: 105, type: !1632, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1634)
!1632 = !DISubroutineType(types: !1633)
!1633 = !{!33, !43, !43}
!1634 = !{!1630, !1635}
!1635 = !DILocalVariable(name: "s", arg: 2, scope: !1631, file: !638, line: 105, type: !43)
!1636 = !DILocation(line: 105, column: 18, scope: !1631, inlinedAt: !1637)
!1637 = distinct !DILocation(line: 296, column: 14, scope: !764, inlinedAt: !812)
!1638 = !DILocation(line: 105, column: 28, scope: !1631, inlinedAt: !1637)
!1639 = !DILocation(line: 107, column: 7, scope: !1631, inlinedAt: !1637)
!1640 = !DILocation(line: 108, column: 5, scope: !1641, inlinedAt: !1637)
!1641 = distinct !DILexicalBlock(scope: !1631, file: !638, line: 107, column: 7)
!1642 = !DILocation(line: 109, column: 10, scope: !1631, inlinedAt: !1637)
!1643 = !DILocation(line: 296, column: 12, scope: !764, inlinedAt: !812)
!1644 = !DILocation(line: 297, column: 19, scope: !764, inlinedAt: !812)
!1645 = !DILocation(line: 297, column: 12, scope: !764, inlinedAt: !812)
!1646 = !DILocation(line: 294, column: 12, scope: !764, inlinedAt: !812)
!1647 = !DILocation(line: 299, column: 7, scope: !1648, inlinedAt: !812)
!1648 = !DILexicalBlockFile(scope: !787, file: !3, discriminator: 1)
!1649 = !DILocation(line: 341, column: 30, scope: !1650, inlinedAt: !812)
!1650 = distinct !DILexicalBlock(scope: !1651, file: !3, line: 339, column: 13)
!1651 = distinct !DILexicalBlock(scope: !785, file: !3, line: 338, column: 15)
!1652 = !DILocation(line: 301, column: 44, scope: !785, inlinedAt: !812)
!1653 = !DILocation(line: 301, column: 27, scope: !785, inlinedAt: !812)
!1654 = !DILocation(line: 301, column: 18, scope: !785, inlinedAt: !812)
!1655 = !DILocation(line: 302, column: 18, scope: !785, inlinedAt: !812)
!1656 = !DILocation(line: 303, column: 22, scope: !1657, inlinedAt: !812)
!1657 = distinct !DILexicalBlock(scope: !785, file: !3, line: 303, column: 15)
!1658 = !DILocation(line: 303, column: 15, scope: !785, inlinedAt: !812)
!1659 = !DILocation(line: 305, column: 19, scope: !1660, inlinedAt: !812)
!1660 = distinct !DILexicalBlock(scope: !1661, file: !3, line: 305, column: 19)
!1661 = distinct !DILexicalBlock(scope: !1657, file: !3, line: 304, column: 13)
!1662 = !DILocation(line: 305, column: 25, scope: !1660, inlinedAt: !812)
!1663 = !DILocation(line: 305, column: 19, scope: !1661, inlinedAt: !812)
!1664 = !DILocation(line: 313, column: 26, scope: !1665, inlinedAt: !812)
!1665 = distinct !DILexicalBlock(scope: !1661, file: !3, line: 313, column: 19)
!1666 = !DILocation(line: 315, column: 23, scope: !1667, inlinedAt: !812)
!1667 = distinct !DILexicalBlock(scope: !1668, file: !3, line: 315, column: 23)
!1668 = distinct !DILexicalBlock(scope: !1665, file: !3, line: 314, column: 17)
!1669 = !DILocation(line: 313, column: 19, scope: !1661, inlinedAt: !812)
!1670 = !DILocation(line: 323, column: 39, scope: !1671, inlinedAt: !812)
!1671 = distinct !DILexicalBlock(scope: !1667, file: !3, line: 322, column: 21)
!1672 = !DILocation(line: 331, column: 17, scope: !1673, inlinedAt: !812)
!1673 = distinct !DILexicalBlock(scope: !785, file: !3, line: 331, column: 15)
!1674 = !DILocation(line: 331, column: 15, scope: !785, inlinedAt: !812)
!1675 = !DILocation(line: 333, column: 38, scope: !1676, inlinedAt: !812)
!1676 = distinct !DILexicalBlock(scope: !1673, file: !3, line: 332, column: 13)
!1677 = !DILocation(line: 333, column: 27, scope: !1676, inlinedAt: !812)
!1678 = !DILocation(line: 334, column: 32, scope: !1676, inlinedAt: !812)
!1679 = !DILocation(line: 334, column: 30, scope: !1676, inlinedAt: !812)
!1680 = !DILocation(line: 334, column: 36, scope: !1676, inlinedAt: !812)
!1681 = !DILocation(line: 334, column: 15, scope: !1676, inlinedAt: !812)
!1682 = !DILocation(line: 335, column: 13, scope: !1676, inlinedAt: !812)
!1683 = !DILocation(line: 338, column: 23, scope: !1651, inlinedAt: !812)
!1684 = !DILocation(line: 338, column: 15, scope: !785, inlinedAt: !812)
!1685 = !DILocation(line: 340, column: 37, scope: !1650, inlinedAt: !812)
!1686 = !DILocation(line: 340, column: 27, scope: !1650, inlinedAt: !812)
!1687 = !DILocation(line: 341, column: 15, scope: !1650, inlinedAt: !812)
!1688 = !DILocation(line: 342, column: 13, scope: !1650, inlinedAt: !812)
!1689 = !DILocation(line: 307, column: 36, scope: !1690, inlinedAt: !812)
!1690 = !DILexicalBlockFile(scope: !1691, file: !3, discriminator: 1)
!1691 = distinct !DILexicalBlock(scope: !1660, file: !3, line: 306, column: 17)
!1692 = !DILocation(line: 307, column: 59, scope: !1693, inlinedAt: !812)
!1693 = !DILexicalBlockFile(scope: !1691, file: !3, discriminator: 2)
!1694 = !DILocation(line: 307, column: 19, scope: !1695, inlinedAt: !812)
!1695 = !DILexicalBlockFile(scope: !1691, file: !3, discriminator: 3)
!1696 = !DILocation(line: 299, column: 35, scope: !1697, inlinedAt: !812)
!1697 = !DILexicalBlockFile(scope: !786, file: !3, discriminator: 2)
!1698 = !DILocation(line: 299, column: 25, scope: !1699, inlinedAt: !812)
!1699 = !DILexicalBlockFile(scope: !786, file: !3, discriminator: 1)
!1700 = !DILocation(line: 299, column: 23, scope: !1699, inlinedAt: !812)
!1701 = distinct !{!1701, !1702, !1703}
!1702 = !DILocation(line: 299, column: 7, scope: !787)
!1703 = !DILocation(line: 343, column: 9, scope: !787)
!1704 = !DILocation(line: 299, column: 33, scope: !1697, inlinedAt: !812)
!1705 = !DILocation(line: 345, column: 7, scope: !764, inlinedAt: !812)
!1706 = !DILocation(line: 346, column: 5, scope: !765, inlinedAt: !812)
!1707 = !DILocation(line: 346, column: 5, scope: !764, inlinedAt: !812)
!1708 = !DILocation(line: 367, column: 15, scope: !1623, inlinedAt: !812)
!1709 = !DILocation(line: 370, column: 33, scope: !1710, inlinedAt: !812)
!1710 = distinct !DILexicalBlock(scope: !1711, file: !3, line: 370, column: 19)
!1711 = distinct !DILexicalBlock(scope: !1622, file: !3, line: 368, column: 13)
!1712 = !DILocation(line: 370, column: 19, scope: !1711, inlinedAt: !812)
!1713 = !DILocation(line: 372, column: 38, scope: !1714, inlinedAt: !812)
!1714 = distinct !DILexicalBlock(scope: !1710, file: !3, line: 372, column: 24)
!1715 = !DILocation(line: 373, column: 31, scope: !1714, inlinedAt: !812)
!1716 = !DILocation(line: 362, column: 14, scope: !790, inlinedAt: !812)
!1717 = !DILocation(line: 372, column: 24, scope: !1710, inlinedAt: !812)
!1718 = !DILocalVariable(name: "p", arg: 1, scope: !1719, file: !638, line: 118, type: !33)
!1719 = distinct !DISubprogram(name: "xnrealloc", scope: !638, file: !638, line: 118, type: !1720, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1722)
!1720 = !DISubroutineType(types: !1721)
!1721 = !{!33, !33, !43, !43}
!1722 = !{!1718, !1723, !1724}
!1723 = !DILocalVariable(name: "n", arg: 2, scope: !1719, file: !638, line: 118, type: !43)
!1724 = !DILocalVariable(name: "s", arg: 3, scope: !1719, file: !638, line: 118, type: !43)
!1725 = !DILocation(line: 118, column: 18, scope: !1719, inlinedAt: !1726)
!1726 = distinct !DILocation(line: 376, column: 19, scope: !1711, inlinedAt: !812)
!1727 = !DILocation(line: 118, column: 28, scope: !1719, inlinedAt: !1726)
!1728 = !DILocation(line: 118, column: 38, scope: !1719, inlinedAt: !1726)
!1729 = !DILocation(line: 120, column: 7, scope: !1730, inlinedAt: !1726)
!1730 = distinct !DILexicalBlock(scope: !1719, file: !638, line: 120, column: 7)
!1731 = !DILocation(line: 120, column: 7, scope: !1719, inlinedAt: !1726)
!1732 = !DILocation(line: 121, column: 5, scope: !1730, inlinedAt: !1726)
!1733 = !DILocation(line: 122, column: 25, scope: !1719, inlinedAt: !1726)
!1734 = !DILocation(line: 122, column: 10, scope: !1719, inlinedAt: !1726)
!1735 = !DILocation(line: 376, column: 19, scope: !1711, inlinedAt: !812)
!1736 = !DILocation(line: 356, column: 14, scope: !790, inlinedAt: !812)
!1737 = !DILocation(line: 377, column: 13, scope: !1711, inlinedAt: !812)
!1738 = !DILocation(line: 379, column: 17, scope: !1739, inlinedAt: !812)
!1739 = distinct !DILexicalBlock(scope: !1623, file: !3, line: 379, column: 15)
!1740 = !DILocation(line: 379, column: 15, scope: !1623, inlinedAt: !812)
!1741 = !DILocation(line: 381, column: 22, scope: !1742, inlinedAt: !812)
!1742 = distinct !DILexicalBlock(scope: !1739, file: !3, line: 380, column: 13)
!1743 = !DILocation(line: 381, column: 15, scope: !1742, inlinedAt: !812)
!1744 = !DILocation(line: 381, column: 20, scope: !1742, inlinedAt: !812)
!1745 = !DILocation(line: 382, column: 27, scope: !1742, inlinedAt: !812)
!1746 = !DILocation(line: 361, column: 14, scope: !790, inlinedAt: !812)
!1747 = !DILocation(line: 383, column: 13, scope: !1742, inlinedAt: !812)
!1748 = !DILocation(line: 384, column: 35, scope: !1623, inlinedAt: !812)
!1749 = !DILocation(line: 384, column: 20, scope: !1623, inlinedAt: !812)
!1750 = !DILocation(line: 353, column: 14, scope: !790, inlinedAt: !812)
!1751 = !DILocation(line: 385, column: 22, scope: !1752, inlinedAt: !812)
!1752 = distinct !DILexicalBlock(scope: !1623, file: !3, line: 385, column: 15)
!1753 = !DILocation(line: 385, column: 15, scope: !1623, inlinedAt: !812)
!1754 = !DILocation(line: 387, column: 19, scope: !1755, inlinedAt: !812)
!1755 = distinct !DILexicalBlock(scope: !1756, file: !3, line: 387, column: 19)
!1756 = distinct !DILexicalBlock(scope: !1752, file: !3, line: 386, column: 13)
!1757 = !DILocation(line: 387, column: 25, scope: !1755, inlinedAt: !812)
!1758 = !DILocation(line: 387, column: 19, scope: !1756, inlinedAt: !812)
!1759 = !DILocation(line: 389, column: 36, scope: !1760, inlinedAt: !812)
!1760 = !DILexicalBlockFile(scope: !1761, file: !3, discriminator: 1)
!1761 = distinct !DILexicalBlock(scope: !1755, file: !3, line: 388, column: 17)
!1762 = !DILocation(line: 389, column: 59, scope: !1763, inlinedAt: !812)
!1763 = !DILexicalBlockFile(scope: !1761, file: !3, discriminator: 2)
!1764 = !DILocation(line: 389, column: 19, scope: !1765, inlinedAt: !812)
!1765 = !DILexicalBlockFile(scope: !1761, file: !3, discriminator: 3)
!1766 = !DILocation(line: 391, column: 19, scope: !1761, inlinedAt: !812)
!1767 = !DILocation(line: 352, column: 12, scope: !790, inlinedAt: !812)
!1768 = !DILocation(line: 396, column: 21, scope: !1769, inlinedAt: !812)
!1769 = distinct !DILexicalBlock(scope: !1623, file: !3, line: 396, column: 15)
!1770 = !DILocation(line: 354, column: 12, scope: !790, inlinedAt: !812)
!1771 = !DILocation(line: 396, column: 15, scope: !1623, inlinedAt: !812)
!1772 = !DILocation(line: 399, column: 15, scope: !1773, inlinedAt: !812)
!1773 = distinct !DILexicalBlock(scope: !1623, file: !3, line: 399, column: 15)
!1774 = !DILocation(line: 399, column: 15, scope: !1623, inlinedAt: !812)
!1775 = !DILocation(line: 401, column: 27, scope: !1776, inlinedAt: !812)
!1776 = distinct !DILexicalBlock(scope: !1773, file: !3, line: 400, column: 13)
!1777 = !DILocation(line: 402, column: 30, scope: !1776, inlinedAt: !812)
!1778 = !DILocation(line: 402, column: 15, scope: !1776, inlinedAt: !812)
!1779 = !DILocation(line: 403, column: 13, scope: !1776, inlinedAt: !812)
!1780 = !DILocation(line: 355, column: 14, scope: !790, inlinedAt: !812)
!1781 = !DILocation(line: 365, column: 66, scope: !1782, inlinedAt: !812)
!1782 = !DILexicalBlockFile(scope: !1624, file: !3, discriminator: 2)
!1783 = !DILocation(line: 365, column: 71, scope: !1782, inlinedAt: !812)
!1784 = !DILocation(line: 355, column: 17, scope: !790, inlinedAt: !812)
!1785 = !DILocation(line: 365, column: 32, scope: !1786, inlinedAt: !812)
!1786 = !DILexicalBlockFile(scope: !1624, file: !3, discriminator: 1)
!1787 = !DILocation(line: 365, column: 31, scope: !1786, inlinedAt: !812)
!1788 = !DILocation(line: 365, column: 7, scope: !1789, inlinedAt: !812)
!1789 = !DILexicalBlockFile(scope: !1625, file: !3, discriminator: 1)
!1790 = distinct !{!1790, !1791, !1792}
!1791 = !DILocation(line: 365, column: 7, scope: !1625)
!1792 = !DILocation(line: 404, column: 9, scope: !1625)
!1793 = !DILocation(line: 407, column: 11, scope: !790, inlinedAt: !812)
!1794 = !DILocation(line: 409, column: 15, scope: !804, inlinedAt: !812)
!1795 = !DILocation(line: 411, column: 57, scope: !802, inlinedAt: !812)
!1796 = !DILocation(line: 411, column: 22, scope: !802, inlinedAt: !812)
!1797 = !DILocation(line: 412, column: 27, scope: !802, inlinedAt: !812)
!1798 = !DILocation(line: 413, column: 23, scope: !1799, inlinedAt: !812)
!1799 = distinct !DILexicalBlock(scope: !802, file: !3, line: 413, column: 19)
!1800 = !DILocation(line: 413, column: 19, scope: !802, inlinedAt: !812)
!1801 = !DILocation(line: 415, column: 19, scope: !1802, inlinedAt: !812)
!1802 = distinct !DILexicalBlock(scope: !1799, file: !3, line: 414, column: 17)
!1803 = !DILocation(line: 416, column: 17, scope: !1802, inlinedAt: !812)
!1804 = !DILocation(line: 419, column: 19, scope: !1805, inlinedAt: !812)
!1805 = distinct !DILexicalBlock(scope: !1799, file: !3, line: 418, column: 17)
!1806 = !DILocation(line: 420, column: 34, scope: !1805, inlinedAt: !812)
!1807 = !DILocation(line: 420, column: 49, scope: !1805, inlinedAt: !812)
!1808 = !DILocation(line: 420, column: 19, scope: !1805, inlinedAt: !812)
!1809 = !DILocation(line: 423, column: 26, scope: !808, inlinedAt: !812)
!1810 = !DILocation(line: 423, column: 20, scope: !803, inlinedAt: !812)
!1811 = !DILocation(line: 437, column: 22, scope: !807, inlinedAt: !812)
!1812 = !DILocation(line: 438, column: 33, scope: !807, inlinedAt: !812)
!1813 = !DILocation(line: 438, column: 22, scope: !807, inlinedAt: !812)
!1814 = !DILocation(line: 439, column: 27, scope: !807, inlinedAt: !812)
!1815 = !DILocation(line: 440, column: 30, scope: !807, inlinedAt: !812)
!1816 = !DILocation(line: 440, column: 15, scope: !807, inlinedAt: !812)
!1817 = !DILocation(line: 441, column: 13, scope: !807, inlinedAt: !812)
!1818 = !DILocation(line: 445, column: 21, scope: !1819, inlinedAt: !812)
!1819 = !DILexicalBlockFile(scope: !1820, file: !3, discriminator: 1)
!1820 = distinct !DILexicalBlock(scope: !1821, file: !3, line: 445, column: 7)
!1821 = distinct !DILexicalBlock(scope: !790, file: !3, line: 445, column: 7)
!1822 = !DILocation(line: 445, column: 7, scope: !1823, inlinedAt: !812)
!1823 = !DILexicalBlockFile(scope: !1821, file: !3, discriminator: 1)
!1824 = !DILocation(line: 446, column: 15, scope: !1820, inlinedAt: !812)
!1825 = !DILocation(line: 446, column: 9, scope: !1820, inlinedAt: !812)
!1826 = !DILocation(line: 445, column: 33, scope: !1827, inlinedAt: !812)
!1827 = !DILexicalBlockFile(scope: !1820, file: !3, discriminator: 2)
!1828 = distinct !{!1828, !1829, !1830}
!1829 = !DILocation(line: 445, column: 7, scope: !1821)
!1830 = !DILocation(line: 446, column: 19, scope: !1821)
!1831 = !DILocation(line: 447, column: 7, scope: !790, inlinedAt: !812)
!1832 = !DILocation(line: 450, column: 9, scope: !1833, inlinedAt: !812)
!1833 = distinct !DILexicalBlock(scope: !766, file: !3, line: 450, column: 7)
!1834 = !DILocation(line: 450, column: 24, scope: !1833, inlinedAt: !812)
!1835 = !DILocation(line: 450, column: 27, scope: !1836, inlinedAt: !812)
!1836 = !DILexicalBlockFile(scope: !1833, file: !3, discriminator: 1)
!1837 = !DILocation(line: 450, column: 72, scope: !1836, inlinedAt: !812)
!1838 = !DILocation(line: 450, column: 7, scope: !1839, inlinedAt: !812)
!1839 = !DILexicalBlockFile(scope: !766, file: !3, discriminator: 1)
!1840 = !DILocation(line: 452, column: 10, scope: !766, inlinedAt: !812)
!1841 = !DILocation(line: 469, column: 5, scope: !813, inlinedAt: !866)
!1842 = !DILocation(line: 474, column: 25, scope: !863, inlinedAt: !866)
!1843 = !DILocation(line: 474, column: 13, scope: !863, inlinedAt: !866)
!1844 = !DILocation(line: 475, column: 31, scope: !863, inlinedAt: !866)
!1845 = !DILocation(line: 475, column: 13, scope: !863, inlinedAt: !866)
!1846 = !DILocation(line: 477, column: 27, scope: !1847, inlinedAt: !866)
!1847 = distinct !DILexicalBlock(scope: !863, file: !3, line: 477, column: 11)
!1848 = !DILocation(line: 477, column: 11, scope: !863, inlinedAt: !866)
!1849 = !DILocation(line: 480, column: 62, scope: !863, inlinedAt: !866)
!1850 = !DILocation(line: 193, column: 14, scope: !945, inlinedAt: !1190)
!1851 = !DILocation(line: 193, column: 32, scope: !945, inlinedAt: !1190)
!1852 = !DILocation(line: 195, column: 3, scope: !945, inlinedAt: !1190)
!1853 = !DILocation(line: 196, column: 16, scope: !945, inlinedAt: !1190)
!1854 = !DILocation(line: 199, column: 12, scope: !1547, inlinedAt: !1190)
!1855 = !DILocation(line: 199, column: 3, scope: !1547, inlinedAt: !1190)
!1856 = !DILocation(line: 201, column: 26, scope: !954, inlinedAt: !1190)
!1857 = !DILocation(line: 201, column: 14, scope: !954, inlinedAt: !1190)
!1858 = !DILocation(line: 202, column: 23, scope: !954, inlinedAt: !1190)
!1859 = !DILocation(line: 202, column: 14, scope: !954, inlinedAt: !1190)
!1860 = !DILocation(line: 203, column: 18, scope: !1554, inlinedAt: !1190)
!1861 = !DILocation(line: 203, column: 11, scope: !954, inlinedAt: !1190)
!1862 = !DILocation(line: 206, column: 15, scope: !954, inlinedAt: !1190)
!1863 = !DILocation(line: 208, column: 18, scope: !1558, inlinedAt: !1190)
!1864 = !DILocation(line: 208, column: 34, scope: !1560, inlinedAt: !1190)
!1865 = !DILocation(line: 208, column: 23, scope: !1558, inlinedAt: !1190)
!1866 = !DILocation(line: 211, column: 7, scope: !954, inlinedAt: !1190)
!1867 = !DILocation(line: 215, column: 1, scope: !945, inlinedAt: !1190)
!1868 = !DILocation(line: 481, column: 11, scope: !863, inlinedAt: !866)
!1869 = !DILocation(line: 480, column: 27, scope: !863, inlinedAt: !866)
!1870 = !DILocation(line: 484, column: 7, scope: !863, inlinedAt: !866)
!1871 = !DILocation(line: 485, column: 7, scope: !863, inlinedAt: !866)
!1872 = !DILocation(line: 861, column: 5, scope: !869, inlinedAt: !881)
!1873 = !DILocation(line: 800, column: 3, scope: !1173, inlinedAt: !1188)
!1874 = !DILocation(line: 862, column: 7, scope: !870, inlinedAt: !881)
!1875 = !DILocation(line: 798, column: 25, scope: !1173, inlinedAt: !1188)
!1876 = !DILocation(line: 798, column: 39, scope: !1173, inlinedAt: !1188)
!1877 = !DILocation(line: 798, column: 53, scope: !1173, inlinedAt: !1188)
!1878 = !DILocation(line: 802, column: 3, scope: !1879, inlinedAt: !1188)
!1879 = !DILexicalBlockFile(scope: !1173, file: !3, discriminator: 1)
!1880 = !DILocation(line: 804, column: 27, scope: !1179, inlinedAt: !1188)
!1881 = !DILocation(line: 804, column: 14, scope: !1179, inlinedAt: !1188)
!1882 = !DILocation(line: 805, column: 14, scope: !1179, inlinedAt: !1188)
!1883 = !DILocation(line: 807, column: 11, scope: !1179, inlinedAt: !1188)
!1884 = !DILocation(line: 809, column: 21, scope: !1885, inlinedAt: !1188)
!1885 = distinct !DILexicalBlock(scope: !1886, file: !3, line: 808, column: 9)
!1886 = distinct !DILexicalBlock(scope: !1179, file: !3, line: 807, column: 11)
!1887 = !DILocation(line: 809, column: 28, scope: !1888, inlinedAt: !1188)
!1888 = !DILexicalBlockFile(scope: !1885, file: !3, discriminator: 1)
!1889 = !DILocation(line: 809, column: 51, scope: !1890, inlinedAt: !1188)
!1890 = !DILexicalBlockFile(scope: !1885, file: !3, discriminator: 2)
!1891 = !DILocation(line: 809, column: 11, scope: !1892, inlinedAt: !1188)
!1892 = !DILexicalBlockFile(scope: !1885, file: !3, discriminator: 3)
!1893 = !DILocation(line: 814, column: 29, scope: !1894, inlinedAt: !1188)
!1894 = !DILexicalBlockFile(scope: !1179, file: !3, discriminator: 1)
!1895 = !DILocation(line: 814, column: 7, scope: !1894, inlinedAt: !1188)
!1896 = !DILocation(line: 815, column: 34, scope: !1183, inlinedAt: !1188)
!1897 = !DILocation(line: 815, column: 13, scope: !1183, inlinedAt: !1188)
!1898 = !DILocation(line: 815, column: 38, scope: !1183, inlinedAt: !1188)
!1899 = !DILocation(line: 815, column: 50, scope: !1183, inlinedAt: !1188)
!1900 = distinct !{!1900, !1901, !1902}
!1901 = !DILocation(line: 814, column: 7, scope: !1179)
!1902 = !DILocation(line: 828, column: 11, scope: !1179)
!1903 = !DILocation(line: 815, column: 53, scope: !1904, inlinedAt: !1188)
!1904 = !DILexicalBlockFile(scope: !1183, file: !3, discriminator: 1)
!1905 = !DILocation(line: 815, column: 70, scope: !1904, inlinedAt: !1188)
!1906 = !DILocation(line: 815, column: 13, scope: !1894, inlinedAt: !1188)
!1907 = !DILocation(line: 821, column: 28, scope: !1186, inlinedAt: !1188)
!1908 = !DILocation(line: 821, column: 17, scope: !1186, inlinedAt: !1188)
!1909 = !DILocation(line: 821, column: 57, scope: !1186, inlinedAt: !1188)
!1910 = !DILocation(line: 821, column: 17, scope: !1182, inlinedAt: !1188)
!1911 = !DILocation(line: 823, column: 17, scope: !1185, inlinedAt: !1188)
!1912 = !DILocation(line: 823, column: 29, scope: !1185, inlinedAt: !1188)
!1913 = !DILocation(line: 463, column: 1, scope: !1208, inlinedAt: !1914)
!1914 = distinct !DILocation(line: 824, column: 21, scope: !1915, inlinedAt: !1188)
!1915 = distinct !DILexicalBlock(scope: !1185, file: !3, line: 824, column: 21)
!1916 = !DILocation(line: 465, column: 10, scope: !1208, inlinedAt: !1914)
!1917 = !DILocation(line: 824, column: 37, scope: !1915, inlinedAt: !1188)
!1918 = !DILocation(line: 824, column: 42, scope: !1915, inlinedAt: !1188)
!1919 = !DILocation(line: 824, column: 45, scope: !1920, inlinedAt: !1188)
!1920 = !DILexicalBlockFile(scope: !1915, file: !3, discriminator: 1)
!1921 = !DILocation(line: 824, column: 21, scope: !1922, inlinedAt: !1188)
!1922 = !DILexicalBlockFile(scope: !1185, file: !3, discriminator: 1)
!1923 = !DILocation(line: 825, column: 19, scope: !1915, inlinedAt: !1188)
!1924 = !DILocation(line: 826, column: 15, scope: !1186, inlinedAt: !1188)
!1925 = !DILocation(line: 826, column: 15, scope: !1185, inlinedAt: !1188)
!1926 = !DILocation(line: 829, column: 7, scope: !1179, inlinedAt: !1188)
!1927 = !DILocation(line: 832, column: 1, scope: !1173, inlinedAt: !1188)
!1928 = !DILocation(line: 863, column: 5, scope: !1133, inlinedAt: !881)
!1929 = !DILocation(line: 773, column: 25, scope: !1121, inlinedAt: !1132)
!1930 = !DILocation(line: 773, column: 39, scope: !1121, inlinedAt: !1132)
!1931 = !DILocation(line: 773, column: 53, scope: !1121, inlinedAt: !1132)
!1932 = !DILocation(line: 776, column: 10, scope: !1121, inlinedAt: !1132)
!1933 = !DILocation(line: 778, column: 3, scope: !1934, inlinedAt: !1132)
!1934 = !DILexicalBlockFile(scope: !1121, file: !3, discriminator: 1)
!1935 = !DILocation(line: 781, column: 26, scope: !1936, inlinedAt: !1132)
!1936 = distinct !DILexicalBlock(scope: !1130, file: !3, line: 781, column: 11)
!1937 = !DILocation(line: 781, column: 11, scope: !1130, inlinedAt: !1132)
!1938 = !DILocation(line: 783, column: 20, scope: !1130, inlinedAt: !1132)
!1939 = !DILocation(line: 780, column: 14, scope: !1130, inlinedAt: !1132)
!1940 = !DILocation(line: 784, column: 11, scope: !1130, inlinedAt: !1132)
!1941 = !DILocation(line: 786, column: 21, scope: !1942, inlinedAt: !1132)
!1942 = distinct !DILexicalBlock(scope: !1943, file: !3, line: 785, column: 9)
!1943 = distinct !DILexicalBlock(scope: !1130, file: !3, line: 784, column: 11)
!1944 = !DILocation(line: 786, column: 28, scope: !1945, inlinedAt: !1132)
!1945 = !DILexicalBlockFile(scope: !1942, file: !3, discriminator: 1)
!1946 = !DILocation(line: 786, column: 51, scope: !1947, inlinedAt: !1132)
!1947 = !DILexicalBlockFile(scope: !1942, file: !3, discriminator: 2)
!1948 = !DILocation(line: 786, column: 11, scope: !1949, inlinedAt: !1132)
!1949 = !DILexicalBlockFile(scope: !1942, file: !3, discriminator: 3)
!1950 = !DILocation(line: 791, column: 7, scope: !1130, inlinedAt: !1132)
!1951 = !DILocation(line: 792, column: 22, scope: !1130, inlinedAt: !1132)
!1952 = !DILocation(line: 795, column: 1, scope: !1121, inlinedAt: !1132)
!1953 = !DILocation(line: 865, column: 5, scope: !1133, inlinedAt: !881)
!1954 = !DILocation(line: 894, column: 17, scope: !1955, inlinedAt: !899)
!1955 = distinct !DILexicalBlock(scope: !882, file: !3, line: 894, column: 7)
!1956 = !DILocation(line: 894, column: 20, scope: !1957, inlinedAt: !899)
!1957 = !DILexicalBlockFile(scope: !1955, file: !3, discriminator: 1)
!1958 = !DILocation(line: 894, column: 31, scope: !1957, inlinedAt: !899)
!1959 = !DILocation(line: 894, column: 7, scope: !1960, inlinedAt: !899)
!1960 = !DILexicalBlockFile(scope: !882, file: !3, discriminator: 1)
!1961 = !DILocation(line: 896, column: 17, scope: !1962, inlinedAt: !899)
!1962 = distinct !DILexicalBlock(scope: !1955, file: !3, line: 895, column: 5)
!1963 = !DILocation(line: 896, column: 24, scope: !1964, inlinedAt: !899)
!1964 = !DILexicalBlockFile(scope: !1962, file: !3, discriminator: 1)
!1965 = !DILocation(line: 896, column: 49, scope: !1966, inlinedAt: !899)
!1966 = !DILexicalBlockFile(scope: !1962, file: !3, discriminator: 2)
!1967 = !DILocation(line: 896, column: 7, scope: !1968, inlinedAt: !899)
!1968 = !DILexicalBlockFile(scope: !1962, file: !3, discriminator: 3)
!1969 = !DILocation(line: 897, column: 7, scope: !1962, inlinedAt: !899)
!1970 = !DILocation(line: 1088, column: 8, scope: !900)
!1971 = !DILocation(line: 1087, column: 29, scope: !1972)
!1972 = !DILexicalBlockFile(scope: !900, file: !3, discriminator: 2)
!1973 = distinct !{!1973, !1974, !1975}
!1974 = !DILocation(line: 1087, column: 3, scope: !901)
!1975 = !DILocation(line: 1088, column: 72, scope: !901)
!1976 = !DILocation(line: 1090, column: 23, scope: !1977)
!1977 = distinct !DILexicalBlock(scope: !54, file: !3, line: 1090, column: 7)
!1978 = !DILocation(line: 1090, column: 26, scope: !1979)
!1979 = !DILexicalBlockFile(scope: !1977, file: !3, discriminator: 1)
!1980 = !DILocation(line: 1090, column: 47, scope: !1979)
!1981 = !DILocation(line: 1090, column: 7, scope: !1045)
!1982 = !DILocation(line: 1091, column: 5, scope: !1977)
!1983 = !DILocation(line: 1091, column: 5, scope: !1979)
!1984 = !DILocation(line: 1093, column: 10, scope: !54)
!1985 = !DILocation(line: 1094, column: 1, scope: !54)
!1986 = distinct !DISubprogram(name: "elseek", scope: !3, file: !3, line: 223, type: !1987, isLocal: true, isDefinition: true, scopeLine: 224, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1989)
!1987 = !DISubroutineType(types: !1988)
!1988 = !{!34, !57, !34, !57, !41}
!1989 = !{!1990, !1991, !1992, !1993, !1994, !1995}
!1990 = !DILocalVariable(name: "fd", arg: 1, scope: !1986, file: !3, line: 223, type: !57)
!1991 = !DILocalVariable(name: "offset", arg: 2, scope: !1986, file: !3, line: 223, type: !34)
!1992 = !DILocalVariable(name: "whence", arg: 3, scope: !1986, file: !3, line: 223, type: !57)
!1993 = !DILocalVariable(name: "filename", arg: 4, scope: !1986, file: !3, line: 223, type: !41)
!1994 = !DILocalVariable(name: "new_offset", scope: !1986, file: !3, line: 225, type: !34)
!1995 = !DILocalVariable(name: "buf", scope: !1986, file: !3, line: 226, type: !83)
!1996 = !DILocation(line: 223, column: 13, scope: !1986)
!1997 = !DILocation(line: 223, column: 23, scope: !1986)
!1998 = !DILocation(line: 223, column: 35, scope: !1986)
!1999 = !DILocation(line: 223, column: 55, scope: !1986)
!2000 = !DILocation(line: 225, column: 22, scope: !1986)
!2001 = !DILocation(line: 225, column: 9, scope: !1986)
!2002 = !DILocation(line: 226, column: 3, scope: !1986)
!2003 = !DILocation(line: 226, column: 8, scope: !1986)
!2004 = !DILocation(line: 228, column: 18, scope: !2005)
!2005 = distinct !DILexicalBlock(scope: !1986, file: !3, line: 228, column: 7)
!2006 = !DILocation(line: 228, column: 7, scope: !1986)
!2007 = !DILocation(line: 229, column: 15, scope: !2005)
!2008 = !DILocation(line: 230, column: 12, scope: !2005)
!2009 = !DILocation(line: 233, column: 12, scope: !2005)
!2010 = !DILocation(line: 234, column: 12, scope: !2005)
!2011 = !DILocation(line: 229, column: 5, scope: !2012)
!2012 = !DILexicalBlockFile(scope: !2005, file: !3, discriminator: 1)
!2013 = !DILocation(line: 229, column: 5, scope: !2005)
!2014 = !DILocation(line: 237, column: 1, scope: !1986)
!2015 = !DILocation(line: 236, column: 3, scope: !1986)
!2016 = distinct !DISubprogram(name: "xwrite_stdout", scope: !3, file: !3, line: 179, type: !2017, isLocal: true, isDefinition: true, scopeLine: 180, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2019)
!2017 = !DISubroutineType(types: !2018)
!2018 = !{null, !41, !43}
!2019 = !{!2020, !2021}
!2020 = !DILocalVariable(name: "buffer", arg: 1, scope: !2016, file: !3, line: 179, type: !41)
!2021 = !DILocalVariable(name: "n_bytes", arg: 2, scope: !2016, file: !3, line: 179, type: !43)
!2022 = !DILocation(line: 179, column: 28, scope: !2016)
!2023 = !DILocation(line: 179, column: 43, scope: !2016)
!2024 = !DILocation(line: 181, column: 15, scope: !2025)
!2025 = distinct !DILexicalBlock(scope: !2016, file: !3, line: 181, column: 7)
!2026 = !DILocation(line: 181, column: 19, scope: !2025)
!2027 = !DILocation(line: 181, column: 22, scope: !2028)
!2028 = !DILexicalBlockFile(scope: !2025, file: !3, discriminator: 1)
!2029 = !DILocation(line: 181, column: 58, scope: !2028)
!2030 = !DILocation(line: 181, column: 7, scope: !2031)
!2031 = !DILexicalBlockFile(scope: !2016, file: !3, discriminator: 1)
!2032 = !DILocation(line: 183, column: 7, scope: !2033)
!2033 = distinct !DILexicalBlock(scope: !2025, file: !3, line: 182, column: 5)
!2034 = !DILocation(line: 184, column: 7, scope: !2033)
!2035 = !DILocation(line: 184, column: 7, scope: !2036)
!2036 = !DILexicalBlockFile(scope: !2033, file: !3, discriminator: 1)
!2037 = !DILocation(line: 184, column: 7, scope: !2038)
!2038 = !DILexicalBlockFile(scope: !2033, file: !3, discriminator: 2)
!2039 = !DILocation(line: 184, column: 7, scope: !2040)
!2040 = !DILexicalBlockFile(scope: !2033, file: !3, discriminator: 3)
!2041 = !DILocation(line: 187, column: 1, scope: !2016)
!2042 = distinct !DISubprogram(name: "diagnose_copy_fd_failure", scope: !3, file: !3, line: 151, type: !2043, isLocal: true, isDefinition: true, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !2045)
!2043 = !DISubroutineType(types: !2044)
!2044 = !{null, !24, !41}
!2045 = !{!2046, !2047}
!2046 = !DILocalVariable(name: "err", arg: 1, scope: !2042, file: !3, line: 151, type: !24)
!2047 = !DILocalVariable(name: "filename", arg: 2, scope: !2042, file: !3, line: 151, type: !41)
!2048 = !DILocation(line: 151, column: 47, scope: !2042)
!2049 = !DILocation(line: 151, column: 64, scope: !2042)
!2050 = !DILocation(line: 153, column: 3, scope: !2042)
!2051 = !DILocation(line: 156, column: 17, scope: !2052)
!2052 = distinct !DILexicalBlock(scope: !2042, file: !3, line: 154, column: 5)
!2053 = !DILocation(line: 156, column: 24, scope: !2054)
!2054 = !DILexicalBlockFile(scope: !2052, file: !3, discriminator: 1)
!2055 = !DILocation(line: 156, column: 47, scope: !2056)
!2056 = !DILexicalBlockFile(scope: !2052, file: !3, discriminator: 2)
!2057 = !DILocation(line: 156, column: 7, scope: !2058)
!2058 = !DILexicalBlockFile(scope: !2052, file: !3, discriminator: 3)
!2059 = !DILocation(line: 157, column: 7, scope: !2052)
!2060 = !DILocation(line: 159, column: 17, scope: !2052)
!2061 = !DILocation(line: 159, column: 24, scope: !2054)
!2062 = !DILocation(line: 159, column: 59, scope: !2056)
!2063 = !DILocation(line: 159, column: 7, scope: !2058)
!2064 = !DILocation(line: 160, column: 7, scope: !2052)
!2065 = !DILocation(line: 162, column: 7, scope: !2052)
!2066 = !DILocation(line: 164, column: 1, scope: !2042)
!2067 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !157, file: !157, line: 41, type: !101, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !152, variables: !2068)
!2068 = !{!2069}
!2069 = !DILocalVariable(name: "file", arg: 1, scope: !2067, file: !157, line: 41, type: !41)
!2070 = !DILocation(line: 41, column: 41, scope: !2067)
!2071 = !DILocation(line: 43, column: 13, scope: !2067)
!2072 = !DILocation(line: 44, column: 1, scope: !2067)
!2073 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !157, file: !157, line: 78, type: !2074, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !152, variables: !2076)
!2074 = !DISubroutineType(types: !2075)
!2075 = !{null, !64}
!2076 = !{!2077}
!2077 = !DILocalVariable(name: "ignore", arg: 1, scope: !2073, file: !157, line: 78, type: !64)
!2078 = !DILocation(line: 78, column: 37, scope: !2073)
!2079 = !DILocation(line: 80, column: 16, scope: !2073)
!2080 = !{!2081, !2081, i64 0}
!2081 = !{!"_Bool", !704, i64 0}
!2082 = !DILocation(line: 81, column: 1, scope: !2073)
!2083 = distinct !DISubprogram(name: "close_stdout", scope: !157, file: !157, line: 107, type: !718, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !152, variables: !2084)
!2084 = !{!2085}
!2085 = !DILocalVariable(name: "write_error", scope: !2086, file: !157, line: 112, type: !41)
!2086 = distinct !DILexicalBlock(scope: !2087, file: !157, line: 111, column: 5)
!2087 = distinct !DILexicalBlock(scope: !2083, file: !157, line: 109, column: 7)
!2088 = !DILocation(line: 109, column: 21, scope: !2087)
!2089 = !DILocation(line: 109, column: 7, scope: !2087)
!2090 = !DILocation(line: 109, column: 29, scope: !2087)
!2091 = !DILocation(line: 110, column: 7, scope: !2087)
!2092 = !DILocation(line: 110, column: 12, scope: !2093)
!2093 = !DILexicalBlockFile(scope: !2087, file: !157, discriminator: 1)
!2094 = !{i8 0, i8 2}
!2095 = !DILocation(line: 114, column: 19, scope: !2096)
!2096 = distinct !DILexicalBlock(scope: !2086, file: !157, line: 113, column: 11)
!2097 = !DILocation(line: 110, column: 25, scope: !2093)
!2098 = !DILocation(line: 110, column: 28, scope: !2099)
!2099 = !DILexicalBlockFile(scope: !2087, file: !157, discriminator: 2)
!2100 = !DILocation(line: 110, column: 34, scope: !2099)
!2101 = !DILocation(line: 109, column: 7, scope: !2102)
!2102 = !DILexicalBlockFile(scope: !2083, file: !157, discriminator: 1)
!2103 = !DILocation(line: 112, column: 33, scope: !2086)
!2104 = !DILocation(line: 112, column: 19, scope: !2086)
!2105 = !DILocation(line: 113, column: 11, scope: !2096)
!2106 = !DILocation(line: 113, column: 11, scope: !2086)
!2107 = !DILocation(line: 114, column: 36, scope: !2108)
!2108 = !DILexicalBlockFile(scope: !2096, file: !157, discriminator: 1)
!2109 = !DILocation(line: 114, column: 9, scope: !2110)
!2110 = !DILexicalBlockFile(scope: !2096, file: !157, discriminator: 2)
!2111 = !DILocation(line: 114, column: 9, scope: !2096)
!2112 = !DILocation(line: 117, column: 9, scope: !2108)
!2113 = !DILocation(line: 119, column: 14, scope: !2086)
!2114 = !DILocation(line: 119, column: 7, scope: !2086)
!2115 = !DILocation(line: 122, column: 22, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !2083, file: !157, line: 122, column: 8)
!2117 = !DILocation(line: 122, column: 8, scope: !2116)
!2118 = !DILocation(line: 122, column: 30, scope: !2116)
!2119 = !DILocation(line: 122, column: 8, scope: !2083)
!2120 = !DILocation(line: 123, column: 13, scope: !2116)
!2121 = !DILocation(line: 123, column: 6, scope: !2116)
!2122 = !DILocation(line: 124, column: 1, scope: !2083)
!2123 = distinct !DISubprogram(name: "full_read", scope: !2124, file: !2124, line: 58, type: !612, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !595, variables: !2125)
!2124 = !DIFile(filename: "./lib/full-write.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2125 = !{!2126, !2127, !2128, !2129, !2130, !2131}
!2126 = !DILocalVariable(name: "fd", arg: 1, scope: !2123, file: !2124, line: 58, type: !57)
!2127 = !DILocalVariable(name: "buf", arg: 2, scope: !2123, file: !2124, line: 58, type: !33)
!2128 = !DILocalVariable(name: "count", arg: 3, scope: !2123, file: !2124, line: 58, type: !43)
!2129 = !DILocalVariable(name: "total", scope: !2123, file: !2124, line: 60, type: !43)
!2130 = !DILocalVariable(name: "ptr", scope: !2123, file: !2124, line: 61, type: !31)
!2131 = !DILocalVariable(name: "n_rw", scope: !2132, file: !2124, line: 65, type: !43)
!2132 = distinct !DILexicalBlock(scope: !2123, file: !2124, line: 64, column: 5)
!2133 = !DILocation(line: 58, column: 14, scope: !2123)
!2134 = !DILocation(line: 58, column: 30, scope: !2123)
!2135 = !DILocation(line: 58, column: 42, scope: !2123)
!2136 = !DILocation(line: 60, column: 10, scope: !2123)
!2137 = !DILocation(line: 61, column: 15, scope: !2123)
!2138 = !DILocation(line: 63, column: 16, scope: !2139)
!2139 = !DILexicalBlockFile(scope: !2123, file: !2124, discriminator: 1)
!2140 = !DILocation(line: 63, column: 3, scope: !2139)
!2141 = !DILocation(line: 65, column: 21, scope: !2132)
!2142 = !DILocation(line: 65, column: 14, scope: !2132)
!2143 = !DILocation(line: 66, column: 11, scope: !2132)
!2144 = !DILocation(line: 70, column: 11, scope: !2145)
!2145 = distinct !DILexicalBlock(scope: !2146, file: !2124, line: 69, column: 9)
!2146 = distinct !DILexicalBlock(scope: !2132, file: !2124, line: 68, column: 11)
!2147 = !DILocation(line: 70, column: 17, scope: !2145)
!2148 = !DILocation(line: 71, column: 11, scope: !2145)
!2149 = !DILocation(line: 73, column: 13, scope: !2132)
!2150 = !DILocation(line: 74, column: 11, scope: !2132)
!2151 = !DILocation(line: 75, column: 13, scope: !2132)
!2152 = distinct !{!2152, !2153, !2154}
!2153 = !DILocation(line: 63, column: 3, scope: !2123)
!2154 = !DILocation(line: 76, column: 5, scope: !2123)
!2155 = !DILocation(line: 78, column: 3, scope: !2123)
!2156 = distinct !DISubprogram(name: "offtostr", scope: !2157, file: !2157, line: 36, type: !2158, isLocal: false, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: true, unit: !598, variables: !2160)
!2157 = !DIFile(filename: "./lib/anytostr.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2158 = !DISubroutineType(types: !2159)
!2159 = !{!31, !601, !31}
!2160 = !{!2161, !2162, !2163}
!2161 = !DILocalVariable(name: "i", arg: 1, scope: !2156, file: !2157, line: 36, type: !601)
!2162 = !DILocalVariable(name: "buf", arg: 2, scope: !2156, file: !2157, line: 36, type: !31)
!2163 = !DILocalVariable(name: "p", scope: !2156, file: !2157, line: 38, type: !31)
!2164 = !DILocation(line: 36, column: 19, scope: !2156)
!2165 = !DILocation(line: 36, column: 28, scope: !2156)
!2166 = !DILocation(line: 38, column: 17, scope: !2156)
!2167 = !DILocation(line: 38, column: 9, scope: !2156)
!2168 = !DILocation(line: 39, column: 6, scope: !2156)
!2169 = !DILocation(line: 41, column: 9, scope: !2170)
!2170 = distinct !DILexicalBlock(scope: !2156, file: !2157, line: 41, column: 7)
!2171 = !DILocation(line: 41, column: 7, scope: !2156)
!2172 = distinct !{!2172, !2173, !2175}
!2173 = !DILocation(line: 51, column: 7, scope: !2174)
!2174 = distinct !DILexicalBlock(scope: !2170, file: !2157, line: 50, column: 5)
!2175 = !DILocation(line: 53, column: 28, scope: !2174)
!2176 = !DILocation(line: 44, column: 24, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !2170, file: !2157, line: 42, column: 5)
!2178 = !DILocation(line: 44, column: 20, scope: !2177)
!2179 = !DILocation(line: 44, column: 16, scope: !2177)
!2180 = !DILocation(line: 44, column: 10, scope: !2177)
!2181 = !DILocation(line: 44, column: 14, scope: !2177)
!2182 = !DILocation(line: 45, column: 17, scope: !2177)
!2183 = !DILocation(line: 45, column: 24, scope: !2177)
!2184 = !DILocation(line: 44, column: 9, scope: !2185)
!2185 = !DILexicalBlockFile(scope: !2177, file: !2157, discriminator: 1)
!2186 = distinct !{!2186, !2187, !2188}
!2187 = !DILocation(line: 43, column: 7, scope: !2177)
!2188 = !DILocation(line: 45, column: 28, scope: !2177)
!2189 = !DILocation(line: 47, column: 8, scope: !2177)
!2190 = !DILocation(line: 47, column: 12, scope: !2177)
!2191 = !DILocation(line: 48, column: 5, scope: !2177)
!2192 = !DILocation(line: 52, column: 24, scope: !2174)
!2193 = !DILocation(line: 52, column: 20, scope: !2174)
!2194 = !DILocation(line: 52, column: 16, scope: !2174)
!2195 = !DILocation(line: 52, column: 10, scope: !2174)
!2196 = !DILocation(line: 52, column: 14, scope: !2174)
!2197 = !DILocation(line: 53, column: 17, scope: !2174)
!2198 = !DILocation(line: 53, column: 24, scope: !2174)
!2199 = !DILocation(line: 52, column: 9, scope: !2200)
!2200 = !DILexicalBlockFile(scope: !2174, file: !2157, discriminator: 1)
!2201 = !DILocation(line: 56, column: 3, scope: !2156)
!2202 = distinct !DISubprogram(name: "umaxtostr", scope: !2157, file: !2157, line: 36, type: !2203, isLocal: false, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: true, unit: !603, variables: !2205)
!2203 = !DISubroutineType(types: !2204)
!2204 = !{!31, !68, !31}
!2205 = !{!2206, !2207, !2208}
!2206 = !DILocalVariable(name: "i", arg: 1, scope: !2202, file: !2157, line: 36, type: !68)
!2207 = !DILocalVariable(name: "buf", arg: 2, scope: !2202, file: !2157, line: 36, type: !31)
!2208 = !DILocalVariable(name: "p", scope: !2202, file: !2157, line: 38, type: !31)
!2209 = !DILocation(line: 36, column: 19, scope: !2202)
!2210 = !DILocation(line: 36, column: 28, scope: !2202)
!2211 = !DILocation(line: 38, column: 17, scope: !2202)
!2212 = !DILocation(line: 38, column: 9, scope: !2202)
!2213 = !DILocation(line: 39, column: 6, scope: !2202)
!2214 = !DILocation(line: 41, column: 7, scope: !2202)
!2215 = !DILocation(line: 52, column: 24, scope: !2216)
!2216 = distinct !DILexicalBlock(scope: !2217, file: !2157, line: 50, column: 5)
!2217 = distinct !DILexicalBlock(scope: !2202, file: !2157, line: 41, column: 7)
!2218 = !DILocation(line: 52, column: 16, scope: !2216)
!2219 = !DILocation(line: 52, column: 10, scope: !2216)
!2220 = !DILocation(line: 52, column: 14, scope: !2216)
!2221 = !DILocation(line: 53, column: 17, scope: !2216)
!2222 = !DILocation(line: 53, column: 24, scope: !2216)
!2223 = !DILocation(line: 52, column: 9, scope: !2224)
!2224 = !DILexicalBlockFile(scope: !2216, file: !2157, discriminator: 1)
!2225 = distinct !{!2225, !2226, !2227}
!2226 = !DILocation(line: 51, column: 7, scope: !2216)
!2227 = !DILocation(line: 53, column: 28, scope: !2216)
!2228 = !DILocation(line: 56, column: 3, scope: !2202)
!2229 = distinct !DISubprogram(name: "set_program_name", scope: !171, file: !171, line: 39, type: !101, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !167, variables: !2230)
!2230 = !{!2231, !2232, !2233}
!2231 = !DILocalVariable(name: "argv0", arg: 1, scope: !2229, file: !171, line: 39, type: !41)
!2232 = !DILocalVariable(name: "slash", scope: !2229, file: !171, line: 46, type: !41)
!2233 = !DILocalVariable(name: "base", scope: !2229, file: !171, line: 47, type: !41)
!2234 = !DILocation(line: 39, column: 31, scope: !2229)
!2235 = !DILocation(line: 51, column: 13, scope: !2236)
!2236 = distinct !DILexicalBlock(scope: !2229, file: !171, line: 51, column: 7)
!2237 = !DILocation(line: 51, column: 7, scope: !2229)
!2238 = !DILocation(line: 55, column: 14, scope: !2239)
!2239 = distinct !DILexicalBlock(scope: !2236, file: !171, line: 52, column: 5)
!2240 = !DILocation(line: 54, column: 7, scope: !2239)
!2241 = !DILocation(line: 56, column: 7, scope: !2239)
!2242 = !DILocation(line: 59, column: 11, scope: !2229)
!2243 = !DILocation(line: 46, column: 15, scope: !2229)
!2244 = !DILocation(line: 60, column: 17, scope: !2229)
!2245 = !DILocation(line: 60, column: 33, scope: !2246)
!2246 = !DILexicalBlockFile(scope: !2229, file: !171, discriminator: 1)
!2247 = !DILocation(line: 60, column: 11, scope: !2229)
!2248 = !DILocation(line: 47, column: 15, scope: !2229)
!2249 = !DILocation(line: 61, column: 12, scope: !2250)
!2250 = distinct !DILexicalBlock(scope: !2229, file: !171, line: 61, column: 7)
!2251 = !DILocation(line: 61, column: 20, scope: !2250)
!2252 = !DILocation(line: 61, column: 25, scope: !2250)
!2253 = !DILocation(line: 61, column: 28, scope: !2254)
!2254 = !DILexicalBlockFile(scope: !2250, file: !171, discriminator: 1)
!2255 = !DILocation(line: 61, column: 61, scope: !2254)
!2256 = !DILocation(line: 61, column: 7, scope: !2246)
!2257 = !DILocation(line: 64, column: 11, scope: !2258)
!2258 = distinct !DILexicalBlock(scope: !2259, file: !171, line: 64, column: 11)
!2259 = distinct !DILexicalBlock(scope: !2250, file: !171, line: 62, column: 5)
!2260 = !DILocation(line: 64, column: 36, scope: !2258)
!2261 = !DILocation(line: 64, column: 11, scope: !2259)
!2262 = !DILocation(line: 66, column: 24, scope: !2263)
!2263 = distinct !DILexicalBlock(scope: !2258, file: !171, line: 65, column: 9)
!2264 = !DILocation(line: 70, column: 41, scope: !2263)
!2265 = !DILocation(line: 72, column: 9, scope: !2263)
!2266 = !DILocation(line: 84, column: 16, scope: !2229)
!2267 = !DILocation(line: 90, column: 27, scope: !2229)
!2268 = !DILocation(line: 92, column: 1, scope: !2229)
!2269 = distinct !DISubprogram(name: "clone_quoting_options", scope: !202, file: !202, line: 114, type: !2270, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !174, variables: !2273)
!2270 = !DISubroutineType(types: !2271)
!2271 = !{!2272, !2272}
!2272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!2273 = !{!2274, !2275, !2276}
!2274 = !DILocalVariable(name: "o", arg: 1, scope: !2269, file: !202, line: 114, type: !2272)
!2275 = !DILocalVariable(name: "e", scope: !2269, file: !202, line: 116, type: !57)
!2276 = !DILocalVariable(name: "p", scope: !2269, file: !202, line: 117, type: !2272)
!2277 = !DILocation(line: 114, column: 48, scope: !2269)
!2278 = !DILocation(line: 116, column: 11, scope: !2269)
!2279 = !DILocation(line: 116, column: 7, scope: !2269)
!2280 = !DILocation(line: 117, column: 40, scope: !2269)
!2281 = !DILocation(line: 117, column: 40, scope: !2282)
!2282 = !DILexicalBlockFile(scope: !2269, file: !202, discriminator: 3)
!2283 = !DILocation(line: 117, column: 31, scope: !2282)
!2284 = !DILocation(line: 117, column: 27, scope: !2269)
!2285 = !DILocation(line: 119, column: 9, scope: !2269)
!2286 = !DILocation(line: 120, column: 3, scope: !2269)
!2287 = distinct !DISubprogram(name: "get_quoting_style", scope: !202, file: !202, line: 125, type: !2288, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !174, variables: !2292)
!2288 = !DISubroutineType(types: !2289)
!2289 = !{!10, !2290}
!2290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2291, size: 64)
!2291 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !207)
!2292 = !{!2293}
!2293 = !DILocalVariable(name: "o", arg: 1, scope: !2287, file: !202, line: 125, type: !2290)
!2294 = !DILocation(line: 125, column: 50, scope: !2287)
!2295 = !DILocation(line: 127, column: 11, scope: !2287)
!2296 = !DILocation(line: 127, column: 46, scope: !2297)
!2297 = !DILexicalBlockFile(scope: !2287, file: !202, discriminator: 3)
!2298 = !{!2299, !704, i64 0}
!2299 = !{!"quoting_options", !704, i64 0, !1090, i64 4, !704, i64 8, !703, i64 40, !703, i64 48}
!2300 = !DILocation(line: 127, column: 3, scope: !2297)
!2301 = distinct !DISubprogram(name: "set_quoting_style", scope: !202, file: !202, line: 133, type: !2302, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !174, variables: !2304)
!2302 = !DISubroutineType(types: !2303)
!2303 = !{null, !2272, !10}
!2304 = !{!2305, !2306}
!2305 = !DILocalVariable(name: "o", arg: 1, scope: !2301, file: !202, line: 133, type: !2272)
!2306 = !DILocalVariable(name: "s", arg: 2, scope: !2301, file: !202, line: 133, type: !10)
!2307 = !DILocation(line: 133, column: 44, scope: !2301)
!2308 = !DILocation(line: 133, column: 66, scope: !2301)
!2309 = !DILocation(line: 135, column: 4, scope: !2301)
!2310 = !DILocation(line: 135, column: 39, scope: !2311)
!2311 = !DILexicalBlockFile(scope: !2301, file: !202, discriminator: 3)
!2312 = !DILocation(line: 135, column: 45, scope: !2311)
!2313 = !DILocation(line: 136, column: 1, scope: !2301)
!2314 = distinct !DISubprogram(name: "set_char_quoting", scope: !202, file: !202, line: 144, type: !2315, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !174, variables: !2317)
!2315 = !DISubroutineType(types: !2316)
!2316 = !{!57, !2272, !32, !57}
!2317 = !{!2318, !2319, !2320, !2321, !2322, !2324, !2325}
!2318 = !DILocalVariable(name: "o", arg: 1, scope: !2314, file: !202, line: 144, type: !2272)
!2319 = !DILocalVariable(name: "c", arg: 2, scope: !2314, file: !202, line: 144, type: !32)
!2320 = !DILocalVariable(name: "i", arg: 3, scope: !2314, file: !202, line: 144, type: !57)
!2321 = !DILocalVariable(name: "uc", scope: !2314, file: !202, line: 146, type: !50)
!2322 = !DILocalVariable(name: "p", scope: !2314, file: !202, line: 147, type: !2323)
!2323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!2324 = !DILocalVariable(name: "shift", scope: !2314, file: !202, line: 149, type: !57)
!2325 = !DILocalVariable(name: "r", scope: !2314, file: !202, line: 150, type: !57)
!2326 = !DILocation(line: 144, column: 43, scope: !2314)
!2327 = !DILocation(line: 144, column: 51, scope: !2314)
!2328 = !DILocation(line: 144, column: 58, scope: !2314)
!2329 = !DILocation(line: 146, column: 17, scope: !2314)
!2330 = !DILocation(line: 148, column: 6, scope: !2314)
!2331 = !DILocation(line: 148, column: 62, scope: !2332)
!2332 = !DILexicalBlockFile(scope: !2314, file: !202, discriminator: 3)
!2333 = !DILocation(line: 148, column: 57, scope: !2332)
!2334 = !DILocation(line: 147, column: 17, scope: !2314)
!2335 = !DILocation(line: 149, column: 18, scope: !2314)
!2336 = !DILocation(line: 149, column: 15, scope: !2314)
!2337 = !DILocation(line: 149, column: 7, scope: !2314)
!2338 = !DILocation(line: 150, column: 12, scope: !2314)
!2339 = !DILocation(line: 150, column: 15, scope: !2314)
!2340 = !DILocation(line: 150, column: 25, scope: !2314)
!2341 = !DILocation(line: 150, column: 7, scope: !2314)
!2342 = !DILocation(line: 151, column: 13, scope: !2314)
!2343 = !DILocation(line: 151, column: 18, scope: !2314)
!2344 = !DILocation(line: 151, column: 23, scope: !2314)
!2345 = !DILocation(line: 151, column: 6, scope: !2314)
!2346 = !DILocation(line: 152, column: 3, scope: !2314)
!2347 = distinct !DISubprogram(name: "set_quoting_flags", scope: !202, file: !202, line: 160, type: !2348, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !174, variables: !2350)
!2348 = !DISubroutineType(types: !2349)
!2349 = !{!57, !2272, !57}
!2350 = !{!2351, !2352, !2353}
!2351 = !DILocalVariable(name: "o", arg: 1, scope: !2347, file: !202, line: 160, type: !2272)
!2352 = !DILocalVariable(name: "i", arg: 2, scope: !2347, file: !202, line: 160, type: !57)
!2353 = !DILocalVariable(name: "r", scope: !2347, file: !202, line: 162, type: !57)
!2354 = !DILocation(line: 160, column: 44, scope: !2347)
!2355 = !DILocation(line: 160, column: 51, scope: !2347)
!2356 = !DILocation(line: 163, column: 8, scope: !2357)
!2357 = distinct !DILexicalBlock(scope: !2347, file: !202, line: 163, column: 7)
!2358 = !DILocation(line: 163, column: 7, scope: !2347)
!2359 = !DILocation(line: 165, column: 10, scope: !2347)
!2360 = !{!2299, !1090, i64 4}
!2361 = !DILocation(line: 162, column: 7, scope: !2347)
!2362 = !DILocation(line: 166, column: 12, scope: !2347)
!2363 = !DILocation(line: 167, column: 3, scope: !2347)
!2364 = distinct !DISubprogram(name: "set_custom_quoting", scope: !202, file: !202, line: 171, type: !2365, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !174, variables: !2367)
!2365 = !DISubroutineType(types: !2366)
!2366 = !{null, !2272, !41, !41}
!2367 = !{!2368, !2369, !2370}
!2368 = !DILocalVariable(name: "o", arg: 1, scope: !2364, file: !202, line: 171, type: !2272)
!2369 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2364, file: !202, line: 172, type: !41)
!2370 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2364, file: !202, line: 172, type: !41)
!2371 = !DILocation(line: 171, column: 45, scope: !2364)
!2372 = !DILocation(line: 172, column: 33, scope: !2364)
!2373 = !DILocation(line: 172, column: 57, scope: !2364)
!2374 = !DILocation(line: 174, column: 8, scope: !2375)
!2375 = distinct !DILexicalBlock(scope: !2364, file: !202, line: 174, column: 7)
!2376 = !DILocation(line: 174, column: 7, scope: !2364)
!2377 = !DILocation(line: 176, column: 6, scope: !2364)
!2378 = !DILocation(line: 176, column: 12, scope: !2364)
!2379 = !DILocation(line: 177, column: 8, scope: !2380)
!2380 = distinct !DILexicalBlock(scope: !2364, file: !202, line: 177, column: 7)
!2381 = !DILocation(line: 177, column: 23, scope: !2382)
!2382 = !DILexicalBlockFile(scope: !2380, file: !202, discriminator: 1)
!2383 = !DILocation(line: 177, column: 19, scope: !2380)
!2384 = !DILocation(line: 178, column: 5, scope: !2380)
!2385 = !DILocation(line: 179, column: 6, scope: !2364)
!2386 = !DILocation(line: 179, column: 17, scope: !2364)
!2387 = !{!2299, !703, i64 40}
!2388 = !DILocation(line: 180, column: 6, scope: !2364)
!2389 = !DILocation(line: 180, column: 18, scope: !2364)
!2390 = !{!2299, !703, i64 48}
!2391 = !DILocation(line: 181, column: 1, scope: !2364)
!2392 = distinct !DISubprogram(name: "quotearg_buffer", scope: !202, file: !202, line: 776, type: !2393, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !174, variables: !2395)
!2393 = !DISubroutineType(types: !2394)
!2394 = !{!43, !31, !43, !41, !43, !2290}
!2395 = !{!2396, !2397, !2398, !2399, !2400, !2401, !2402, !2403}
!2396 = !DILocalVariable(name: "buffer", arg: 1, scope: !2392, file: !202, line: 776, type: !31)
!2397 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2392, file: !202, line: 776, type: !43)
!2398 = !DILocalVariable(name: "arg", arg: 3, scope: !2392, file: !202, line: 777, type: !41)
!2399 = !DILocalVariable(name: "argsize", arg: 4, scope: !2392, file: !202, line: 777, type: !43)
!2400 = !DILocalVariable(name: "o", arg: 5, scope: !2392, file: !202, line: 778, type: !2290)
!2401 = !DILocalVariable(name: "p", scope: !2392, file: !202, line: 780, type: !2290)
!2402 = !DILocalVariable(name: "e", scope: !2392, file: !202, line: 781, type: !57)
!2403 = !DILocalVariable(name: "r", scope: !2392, file: !202, line: 782, type: !43)
!2404 = !DILocation(line: 776, column: 24, scope: !2392)
!2405 = !DILocation(line: 776, column: 39, scope: !2392)
!2406 = !DILocation(line: 777, column: 30, scope: !2392)
!2407 = !DILocation(line: 777, column: 42, scope: !2392)
!2408 = !DILocation(line: 778, column: 48, scope: !2392)
!2409 = !DILocation(line: 780, column: 37, scope: !2392)
!2410 = !DILocation(line: 780, column: 33, scope: !2392)
!2411 = !DILocation(line: 781, column: 11, scope: !2392)
!2412 = !DILocation(line: 781, column: 7, scope: !2392)
!2413 = !DILocation(line: 783, column: 43, scope: !2392)
!2414 = !DILocation(line: 783, column: 53, scope: !2392)
!2415 = !DILocation(line: 783, column: 60, scope: !2392)
!2416 = !DILocation(line: 784, column: 43, scope: !2392)
!2417 = !DILocation(line: 784, column: 58, scope: !2392)
!2418 = !DILocation(line: 782, column: 14, scope: !2392)
!2419 = !DILocation(line: 782, column: 10, scope: !2392)
!2420 = !DILocation(line: 785, column: 9, scope: !2392)
!2421 = !DILocation(line: 786, column: 3, scope: !2392)
!2422 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !202, file: !202, line: 248, type: !2423, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !174, variables: !2427)
!2423 = !DISubroutineType(types: !2424)
!2424 = !{!43, !31, !43, !41, !43, !10, !57, !2425, !41, !41}
!2425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2426, size: 64)
!2426 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!2427 = !{!2428, !2429, !2430, !2431, !2432, !2433, !2434, !2435, !2436, !2437, !2438, !2439, !2440, !2441, !2442, !2443, !2444, !2445, !2446, !2447, !2448, !2452, !2453, !2454, !2455, !2456, !2459, !2460, !2477, !2480, !2481, !2488}
!2428 = !DILocalVariable(name: "buffer", arg: 1, scope: !2422, file: !202, line: 248, type: !31)
!2429 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2422, file: !202, line: 248, type: !43)
!2430 = !DILocalVariable(name: "arg", arg: 3, scope: !2422, file: !202, line: 249, type: !41)
!2431 = !DILocalVariable(name: "argsize", arg: 4, scope: !2422, file: !202, line: 249, type: !43)
!2432 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2422, file: !202, line: 250, type: !10)
!2433 = !DILocalVariable(name: "flags", arg: 6, scope: !2422, file: !202, line: 250, type: !57)
!2434 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2422, file: !202, line: 251, type: !2425)
!2435 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2422, file: !202, line: 252, type: !41)
!2436 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2422, file: !202, line: 253, type: !41)
!2437 = !DILocalVariable(name: "i", scope: !2422, file: !202, line: 255, type: !43)
!2438 = !DILocalVariable(name: "len", scope: !2422, file: !202, line: 256, type: !43)
!2439 = !DILocalVariable(name: "orig_buffersize", scope: !2422, file: !202, line: 257, type: !43)
!2440 = !DILocalVariable(name: "quote_string", scope: !2422, file: !202, line: 258, type: !41)
!2441 = !DILocalVariable(name: "quote_string_len", scope: !2422, file: !202, line: 259, type: !43)
!2442 = !DILocalVariable(name: "backslash_escapes", scope: !2422, file: !202, line: 260, type: !64)
!2443 = !DILocalVariable(name: "unibyte_locale", scope: !2422, file: !202, line: 261, type: !64)
!2444 = !DILocalVariable(name: "elide_outer_quotes", scope: !2422, file: !202, line: 262, type: !64)
!2445 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2422, file: !202, line: 263, type: !64)
!2446 = !DILocalVariable(name: "encountered_single_quote", scope: !2422, file: !202, line: 264, type: !64)
!2447 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2422, file: !202, line: 265, type: !64)
!2448 = !DILocalVariable(name: "c", scope: !2449, file: !202, line: 394, type: !50)
!2449 = distinct !DILexicalBlock(scope: !2450, file: !202, line: 393, column: 5)
!2450 = distinct !DILexicalBlock(scope: !2451, file: !202, line: 392, column: 3)
!2451 = distinct !DILexicalBlock(scope: !2422, file: !202, line: 392, column: 3)
!2452 = !DILocalVariable(name: "esc", scope: !2449, file: !202, line: 395, type: !50)
!2453 = !DILocalVariable(name: "is_right_quote", scope: !2449, file: !202, line: 396, type: !64)
!2454 = !DILocalVariable(name: "escaping", scope: !2449, file: !202, line: 397, type: !64)
!2455 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2449, file: !202, line: 398, type: !64)
!2456 = !DILocalVariable(name: "m", scope: !2457, file: !202, line: 602, type: !43)
!2457 = distinct !DILexicalBlock(scope: !2458, file: !202, line: 600, column: 11)
!2458 = distinct !DILexicalBlock(scope: !2449, file: !202, line: 418, column: 9)
!2459 = !DILocalVariable(name: "printable", scope: !2457, file: !202, line: 604, type: !64)
!2460 = !DILocalVariable(name: "mbstate", scope: !2461, file: !202, line: 613, type: !2463)
!2461 = distinct !DILexicalBlock(scope: !2462, file: !202, line: 612, column: 15)
!2462 = distinct !DILexicalBlock(scope: !2457, file: !202, line: 606, column: 17)
!2463 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2464, line: 107, baseType: !2465)
!2464 = !DIFile(filename: "/usr/include/wchar.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2465 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2464, line: 95, baseType: !2466)
!2466 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2464, line: 83, size: 64, elements: !2467)
!2467 = !{!2468, !2469}
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2466, file: !2464, line: 85, baseType: !57, size: 32)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2466, file: !2464, line: 94, baseType: !2470, size: 32, offset: 32)
!2470 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2466, file: !2464, line: 86, size: 32, elements: !2471)
!2471 = !{!2472, !2473}
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2470, file: !2464, line: 89, baseType: !30, size: 32)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2470, file: !2464, line: 93, baseType: !2474, size: 32)
!2474 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 32, elements: !2475)
!2475 = !{!2476}
!2476 = !DISubrange(count: 4)
!2477 = !DILocalVariable(name: "w", scope: !2478, file: !202, line: 623, type: !2479)
!2478 = distinct !DILexicalBlock(scope: !2461, file: !202, line: 622, column: 19)
!2479 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !44, line: 90, baseType: !57)
!2480 = !DILocalVariable(name: "bytes", scope: !2478, file: !202, line: 624, type: !43)
!2481 = !DILocalVariable(name: "j", scope: !2482, file: !202, line: 649, type: !43)
!2482 = distinct !DILexicalBlock(scope: !2483, file: !202, line: 648, column: 27)
!2483 = distinct !DILexicalBlock(scope: !2484, file: !202, line: 646, column: 29)
!2484 = distinct !DILexicalBlock(scope: !2485, file: !202, line: 641, column: 23)
!2485 = distinct !DILexicalBlock(scope: !2486, file: !202, line: 633, column: 30)
!2486 = distinct !DILexicalBlock(scope: !2487, file: !202, line: 628, column: 30)
!2487 = distinct !DILexicalBlock(scope: !2478, file: !202, line: 626, column: 25)
!2488 = !DILocalVariable(name: "ilim", scope: !2489, file: !202, line: 676, type: !43)
!2489 = distinct !DILexicalBlock(scope: !2490, file: !202, line: 673, column: 15)
!2490 = distinct !DILexicalBlock(scope: !2457, file: !202, line: 672, column: 17)
!2491 = !DILocation(line: 248, column: 33, scope: !2422)
!2492 = !DILocation(line: 248, column: 48, scope: !2422)
!2493 = !DILocation(line: 249, column: 39, scope: !2422)
!2494 = !DILocation(line: 249, column: 51, scope: !2422)
!2495 = !DILocation(line: 250, column: 46, scope: !2422)
!2496 = !DILocation(line: 250, column: 65, scope: !2422)
!2497 = !DILocation(line: 251, column: 47, scope: !2422)
!2498 = !DILocation(line: 252, column: 39, scope: !2422)
!2499 = !DILocation(line: 253, column: 39, scope: !2422)
!2500 = !DILocation(line: 256, column: 10, scope: !2422)
!2501 = !DILocation(line: 257, column: 10, scope: !2422)
!2502 = !DILocation(line: 258, column: 15, scope: !2422)
!2503 = !DILocation(line: 259, column: 10, scope: !2422)
!2504 = !DILocation(line: 260, column: 8, scope: !2422)
!2505 = !DILocation(line: 261, column: 25, scope: !2422)
!2506 = !DILocation(line: 261, column: 36, scope: !2422)
!2507 = !DILocation(line: 262, column: 8, scope: !2422)
!2508 = !DILocation(line: 263, column: 8, scope: !2422)
!2509 = !DILocation(line: 264, column: 8, scope: !2422)
!2510 = !DILocation(line: 265, column: 8, scope: !2422)
!2511 = !DILocation(line: 265, column: 3, scope: !2422)
!2512 = !DILocation(line: 308, column: 3, scope: !2422)
!2513 = !DILocation(line: 315, column: 11, scope: !2514)
!2514 = distinct !DILexicalBlock(scope: !2422, file: !202, line: 309, column: 5)
!2515 = !DILocation(line: 315, column: 12, scope: !2516)
!2516 = distinct !DILexicalBlock(scope: !2514, file: !202, line: 315, column: 11)
!2517 = !DILocation(line: 316, column: 9, scope: !2518)
!2518 = !DILexicalBlockFile(scope: !2519, file: !202, discriminator: 1)
!2519 = distinct !DILexicalBlock(scope: !2520, file: !202, line: 316, column: 9)
!2520 = distinct !DILexicalBlock(scope: !2516, file: !202, line: 316, column: 9)
!2521 = !DILocation(line: 316, column: 9, scope: !2522)
!2522 = !DILexicalBlockFile(scope: !2520, file: !202, discriminator: 1)
!2523 = !DILocation(line: 316, column: 9, scope: !2524)
!2524 = !DILexicalBlockFile(scope: !2519, file: !202, discriminator: 2)
!2525 = !DILocation(line: 354, column: 26, scope: !2526)
!2526 = distinct !DILexicalBlock(scope: !2527, file: !202, line: 332, column: 11)
!2527 = distinct !DILexicalBlock(scope: !2528, file: !202, line: 331, column: 13)
!2528 = distinct !DILexicalBlock(scope: !2514, file: !202, line: 330, column: 7)
!2529 = !DILocation(line: 355, column: 27, scope: !2526)
!2530 = !DILocation(line: 356, column: 11, scope: !2526)
!2531 = !DILocation(line: 357, column: 14, scope: !2532)
!2532 = distinct !DILexicalBlock(scope: !2528, file: !202, line: 357, column: 13)
!2533 = !DILocation(line: 357, column: 13, scope: !2528)
!2534 = !DILocation(line: 358, column: 43, scope: !2535)
!2535 = !DILexicalBlockFile(scope: !2536, file: !202, discriminator: 1)
!2536 = distinct !DILexicalBlock(scope: !2537, file: !202, line: 358, column: 11)
!2537 = distinct !DILexicalBlock(scope: !2532, file: !202, line: 358, column: 11)
!2538 = !DILocation(line: 358, column: 11, scope: !2539)
!2539 = !DILexicalBlockFile(scope: !2537, file: !202, discriminator: 1)
!2540 = !DILocation(line: 359, column: 13, scope: !2541)
!2541 = !DILexicalBlockFile(scope: !2542, file: !202, discriminator: 1)
!2542 = distinct !DILexicalBlock(scope: !2543, file: !202, line: 359, column: 13)
!2543 = distinct !DILexicalBlock(scope: !2536, file: !202, line: 359, column: 13)
!2544 = !DILocation(line: 359, column: 13, scope: !2545)
!2545 = !DILexicalBlockFile(scope: !2543, file: !202, discriminator: 1)
!2546 = !DILocation(line: 359, column: 13, scope: !2547)
!2547 = !DILexicalBlockFile(scope: !2542, file: !202, discriminator: 2)
!2548 = !DILocation(line: 359, column: 13, scope: !2549)
!2549 = !DILexicalBlockFile(scope: !2543, file: !202, discriminator: 3)
!2550 = !DILocation(line: 358, column: 70, scope: !2551)
!2551 = !DILexicalBlockFile(scope: !2536, file: !202, discriminator: 2)
!2552 = distinct !{!2552, !2553, !2554}
!2553 = !DILocation(line: 358, column: 11, scope: !2537)
!2554 = !DILocation(line: 359, column: 13, scope: !2537)
!2555 = !DILocation(line: 362, column: 28, scope: !2528)
!2556 = !DILocation(line: 364, column: 7, scope: !2514)
!2557 = !DILocation(line: 367, column: 7, scope: !2514)
!2558 = !DILocation(line: 370, column: 7, scope: !2514)
!2559 = !DILocation(line: 373, column: 12, scope: !2560)
!2560 = distinct !DILexicalBlock(scope: !2514, file: !202, line: 373, column: 11)
!2561 = !DILocation(line: 373, column: 11, scope: !2514)
!2562 = !DILocation(line: 378, column: 12, scope: !2563)
!2563 = distinct !DILexicalBlock(scope: !2514, file: !202, line: 378, column: 11)
!2564 = !DILocation(line: 378, column: 11, scope: !2514)
!2565 = !DILocation(line: 379, column: 9, scope: !2566)
!2566 = !DILexicalBlockFile(scope: !2567, file: !202, discriminator: 1)
!2567 = distinct !DILexicalBlock(scope: !2568, file: !202, line: 379, column: 9)
!2568 = distinct !DILexicalBlock(scope: !2563, file: !202, line: 379, column: 9)
!2569 = !DILocation(line: 379, column: 9, scope: !2570)
!2570 = !DILexicalBlockFile(scope: !2568, file: !202, discriminator: 1)
!2571 = !DILocation(line: 379, column: 9, scope: !2572)
!2572 = !DILexicalBlockFile(scope: !2567, file: !202, discriminator: 2)
!2573 = !DILocation(line: 386, column: 7, scope: !2514)
!2574 = !DILocation(line: 389, column: 7, scope: !2514)
!2575 = !DILocation(line: 255, column: 10, scope: !2422)
!2576 = !DILocation(line: 392, column: 8, scope: !2451)
!2577 = !DILocation(line: 392, column: 27, scope: !2578)
!2578 = !DILexicalBlockFile(scope: !2450, file: !202, discriminator: 1)
!2579 = !DILocation(line: 392, column: 19, scope: !2578)
!2580 = !DILocation(line: 392, column: 60, scope: !2581)
!2581 = !DILexicalBlockFile(scope: !2450, file: !202, discriminator: 3)
!2582 = !DILocation(line: 392, column: 3, scope: !2583)
!2583 = !DILexicalBlockFile(scope: !2451, file: !202, discriminator: 4)
!2584 = !DILocation(line: 392, column: 41, scope: !2585)
!2585 = !DILexicalBlockFile(scope: !2450, file: !202, discriminator: 2)
!2586 = !DILocation(line: 392, column: 48, scope: !2585)
!2587 = !DILocation(line: 396, column: 12, scope: !2449)
!2588 = !DILocation(line: 397, column: 12, scope: !2449)
!2589 = !DILocation(line: 398, column: 12, scope: !2449)
!2590 = !DILocation(line: 401, column: 11, scope: !2591)
!2591 = distinct !DILexicalBlock(scope: !2449, file: !202, line: 400, column: 11)
!2592 = !DILocation(line: 403, column: 17, scope: !2593)
!2593 = !DILexicalBlockFile(scope: !2591, file: !202, discriminator: 1)
!2594 = !DILocation(line: 404, column: 39, scope: !2591)
!2595 = !DILocation(line: 408, column: 32, scope: !2591)
!2596 = !DILocation(line: 404, column: 19, scope: !2597)
!2597 = !DILexicalBlockFile(scope: !2591, file: !202, discriminator: 2)
!2598 = !DILocation(line: 404, column: 15, scope: !2599)
!2599 = !DILexicalBlockFile(scope: !2591, file: !202, discriminator: 4)
!2600 = !DILocation(line: 409, column: 11, scope: !2591)
!2601 = !DILocation(line: 409, column: 26, scope: !2593)
!2602 = !DILocation(line: 409, column: 14, scope: !2593)
!2603 = !DILocation(line: 400, column: 11, scope: !2604)
!2604 = !DILexicalBlockFile(scope: !2449, file: !202, discriminator: 1)
!2605 = !DILocation(line: 416, column: 11, scope: !2449)
!2606 = !DILocation(line: 394, column: 21, scope: !2449)
!2607 = !DILocation(line: 417, column: 7, scope: !2449)
!2608 = !DILocation(line: 420, column: 15, scope: !2458)
!2609 = !DILocation(line: 422, column: 15, scope: !2610)
!2610 = !DILexicalBlockFile(scope: !2611, file: !202, discriminator: 1)
!2611 = distinct !DILexicalBlock(scope: !2612, file: !202, line: 422, column: 15)
!2612 = distinct !DILexicalBlock(scope: !2613, file: !202, line: 421, column: 13)
!2613 = distinct !DILexicalBlock(scope: !2458, file: !202, line: 420, column: 15)
!2614 = !DILocation(line: 422, column: 15, scope: !2615)
!2615 = !DILexicalBlockFile(scope: !2616, file: !202, discriminator: 4)
!2616 = distinct !DILexicalBlock(scope: !2611, file: !202, line: 422, column: 15)
!2617 = !DILocation(line: 422, column: 15, scope: !2618)
!2618 = !DILexicalBlockFile(scope: !2616, file: !202, discriminator: 3)
!2619 = !DILocation(line: 422, column: 15, scope: !2620)
!2620 = !DILexicalBlockFile(scope: !2621, file: !202, discriminator: 6)
!2621 = distinct !DILexicalBlock(scope: !2622, file: !202, line: 422, column: 15)
!2622 = distinct !DILexicalBlock(scope: !2623, file: !202, line: 422, column: 15)
!2623 = distinct !DILexicalBlock(scope: !2616, file: !202, line: 422, column: 15)
!2624 = !DILocation(line: 422, column: 15, scope: !2625)
!2625 = !DILexicalBlockFile(scope: !2622, file: !202, discriminator: 6)
!2626 = !DILocation(line: 422, column: 15, scope: !2627)
!2627 = !DILexicalBlockFile(scope: !2621, file: !202, discriminator: 7)
!2628 = !DILocation(line: 422, column: 15, scope: !2629)
!2629 = !DILexicalBlockFile(scope: !2622, file: !202, discriminator: 8)
!2630 = !DILocation(line: 422, column: 15, scope: !2631)
!2631 = !DILexicalBlockFile(scope: !2632, file: !202, discriminator: 11)
!2632 = distinct !DILexicalBlock(scope: !2633, file: !202, line: 422, column: 15)
!2633 = distinct !DILexicalBlock(scope: !2623, file: !202, line: 422, column: 15)
!2634 = !DILocation(line: 422, column: 15, scope: !2635)
!2635 = !DILexicalBlockFile(scope: !2633, file: !202, discriminator: 11)
!2636 = !DILocation(line: 422, column: 15, scope: !2637)
!2637 = !DILexicalBlockFile(scope: !2632, file: !202, discriminator: 12)
!2638 = !DILocation(line: 422, column: 15, scope: !2639)
!2639 = !DILexicalBlockFile(scope: !2633, file: !202, discriminator: 13)
!2640 = !DILocation(line: 422, column: 15, scope: !2641)
!2641 = !DILexicalBlockFile(scope: !2642, file: !202, discriminator: 16)
!2642 = distinct !DILexicalBlock(scope: !2643, file: !202, line: 422, column: 15)
!2643 = distinct !DILexicalBlock(scope: !2623, file: !202, line: 422, column: 15)
!2644 = !DILocation(line: 422, column: 15, scope: !2645)
!2645 = !DILexicalBlockFile(scope: !2643, file: !202, discriminator: 16)
!2646 = !DILocation(line: 422, column: 15, scope: !2647)
!2647 = !DILexicalBlockFile(scope: !2642, file: !202, discriminator: 17)
!2648 = !DILocation(line: 422, column: 15, scope: !2649)
!2649 = !DILexicalBlockFile(scope: !2643, file: !202, discriminator: 18)
!2650 = !DILocation(line: 422, column: 15, scope: !2651)
!2651 = !DILexicalBlockFile(scope: !2623, file: !202, discriminator: 20)
!2652 = !DILocation(line: 422, column: 15, scope: !2653)
!2653 = !DILexicalBlockFile(scope: !2654, file: !202, discriminator: 22)
!2654 = distinct !DILexicalBlock(scope: !2655, file: !202, line: 422, column: 15)
!2655 = distinct !DILexicalBlock(scope: !2611, file: !202, line: 422, column: 15)
!2656 = !DILocation(line: 422, column: 15, scope: !2657)
!2657 = !DILexicalBlockFile(scope: !2655, file: !202, discriminator: 22)
!2658 = !DILocation(line: 422, column: 15, scope: !2659)
!2659 = !DILexicalBlockFile(scope: !2654, file: !202, discriminator: 23)
!2660 = !DILocation(line: 422, column: 15, scope: !2661)
!2661 = !DILexicalBlockFile(scope: !2655, file: !202, discriminator: 24)
!2662 = !DILocation(line: 430, column: 19, scope: !2663)
!2663 = distinct !DILexicalBlock(scope: !2612, file: !202, line: 429, column: 19)
!2664 = !DILocation(line: 430, column: 24, scope: !2665)
!2665 = !DILexicalBlockFile(scope: !2663, file: !202, discriminator: 1)
!2666 = !DILocation(line: 430, column: 28, scope: !2665)
!2667 = !DILocation(line: 430, column: 38, scope: !2665)
!2668 = !DILocation(line: 430, column: 48, scope: !2669)
!2669 = !DILexicalBlockFile(scope: !2663, file: !202, discriminator: 2)
!2670 = !DILocation(line: 430, column: 59, scope: !2669)
!2671 = !DILocation(line: 432, column: 19, scope: !2672)
!2672 = !DILexicalBlockFile(scope: !2673, file: !202, discriminator: 1)
!2673 = distinct !DILexicalBlock(scope: !2674, file: !202, line: 432, column: 19)
!2674 = distinct !DILexicalBlock(scope: !2675, file: !202, line: 432, column: 19)
!2675 = distinct !DILexicalBlock(scope: !2663, file: !202, line: 431, column: 17)
!2676 = !DILocation(line: 432, column: 19, scope: !2677)
!2677 = !DILexicalBlockFile(scope: !2674, file: !202, discriminator: 1)
!2678 = !DILocation(line: 432, column: 19, scope: !2679)
!2679 = !DILexicalBlockFile(scope: !2673, file: !202, discriminator: 2)
!2680 = !DILocation(line: 432, column: 19, scope: !2681)
!2681 = !DILexicalBlockFile(scope: !2674, file: !202, discriminator: 3)
!2682 = !DILocation(line: 433, column: 19, scope: !2683)
!2683 = !DILexicalBlockFile(scope: !2684, file: !202, discriminator: 1)
!2684 = distinct !DILexicalBlock(scope: !2685, file: !202, line: 433, column: 19)
!2685 = distinct !DILexicalBlock(scope: !2675, file: !202, line: 433, column: 19)
!2686 = !DILocation(line: 433, column: 19, scope: !2687)
!2687 = !DILexicalBlockFile(scope: !2685, file: !202, discriminator: 1)
!2688 = !DILocation(line: 433, column: 19, scope: !2689)
!2689 = !DILexicalBlockFile(scope: !2684, file: !202, discriminator: 2)
!2690 = !DILocation(line: 433, column: 19, scope: !2691)
!2691 = !DILexicalBlockFile(scope: !2685, file: !202, discriminator: 3)
!2692 = !DILocation(line: 434, column: 17, scope: !2675)
!2693 = !DILocation(line: 441, column: 20, scope: !2613)
!2694 = !DILocation(line: 446, column: 11, scope: !2458)
!2695 = !DILocation(line: 449, column: 19, scope: !2696)
!2696 = distinct !DILexicalBlock(scope: !2458, file: !202, line: 447, column: 13)
!2697 = !DILocation(line: 455, column: 19, scope: !2698)
!2698 = distinct !DILexicalBlock(scope: !2696, file: !202, line: 454, column: 19)
!2699 = !DILocation(line: 455, column: 24, scope: !2700)
!2700 = !DILexicalBlockFile(scope: !2698, file: !202, discriminator: 1)
!2701 = !DILocation(line: 455, column: 28, scope: !2700)
!2702 = !DILocation(line: 455, column: 38, scope: !2700)
!2703 = !DILocation(line: 455, column: 47, scope: !2704)
!2704 = !DILexicalBlockFile(scope: !2698, file: !202, discriminator: 2)
!2705 = !DILocation(line: 455, column: 41, scope: !2704)
!2706 = !DILocation(line: 455, column: 52, scope: !2704)
!2707 = !DILocation(line: 454, column: 19, scope: !2708)
!2708 = !DILexicalBlockFile(scope: !2696, file: !202, discriminator: 1)
!2709 = !DILocation(line: 456, column: 25, scope: !2698)
!2710 = !DILocation(line: 456, column: 17, scope: !2698)
!2711 = !DILocation(line: 463, column: 25, scope: !2712)
!2712 = distinct !DILexicalBlock(scope: !2698, file: !202, line: 457, column: 19)
!2713 = !DILocation(line: 467, column: 21, scope: !2714)
!2714 = !DILexicalBlockFile(scope: !2715, file: !202, discriminator: 1)
!2715 = distinct !DILexicalBlock(scope: !2716, file: !202, line: 467, column: 21)
!2716 = distinct !DILexicalBlock(scope: !2712, file: !202, line: 467, column: 21)
!2717 = !DILocation(line: 467, column: 21, scope: !2718)
!2718 = !DILexicalBlockFile(scope: !2716, file: !202, discriminator: 1)
!2719 = !DILocation(line: 467, column: 21, scope: !2720)
!2720 = !DILexicalBlockFile(scope: !2715, file: !202, discriminator: 2)
!2721 = !DILocation(line: 467, column: 21, scope: !2722)
!2722 = !DILexicalBlockFile(scope: !2716, file: !202, discriminator: 3)
!2723 = !DILocation(line: 468, column: 21, scope: !2724)
!2724 = !DILexicalBlockFile(scope: !2725, file: !202, discriminator: 1)
!2725 = distinct !DILexicalBlock(scope: !2726, file: !202, line: 468, column: 21)
!2726 = distinct !DILexicalBlock(scope: !2712, file: !202, line: 468, column: 21)
!2727 = !DILocation(line: 468, column: 21, scope: !2728)
!2728 = !DILexicalBlockFile(scope: !2726, file: !202, discriminator: 1)
!2729 = !DILocation(line: 468, column: 21, scope: !2730)
!2730 = !DILexicalBlockFile(scope: !2725, file: !202, discriminator: 2)
!2731 = !DILocation(line: 468, column: 21, scope: !2732)
!2732 = !DILexicalBlockFile(scope: !2726, file: !202, discriminator: 3)
!2733 = !DILocation(line: 469, column: 21, scope: !2734)
!2734 = !DILexicalBlockFile(scope: !2735, file: !202, discriminator: 1)
!2735 = distinct !DILexicalBlock(scope: !2736, file: !202, line: 469, column: 21)
!2736 = distinct !DILexicalBlock(scope: !2712, file: !202, line: 469, column: 21)
!2737 = !DILocation(line: 469, column: 21, scope: !2738)
!2738 = !DILexicalBlockFile(scope: !2736, file: !202, discriminator: 1)
!2739 = !DILocation(line: 469, column: 21, scope: !2740)
!2740 = !DILexicalBlockFile(scope: !2735, file: !202, discriminator: 2)
!2741 = !DILocation(line: 469, column: 21, scope: !2742)
!2742 = !DILexicalBlockFile(scope: !2736, file: !202, discriminator: 3)
!2743 = !DILocation(line: 470, column: 21, scope: !2744)
!2744 = !DILexicalBlockFile(scope: !2745, file: !202, discriminator: 1)
!2745 = distinct !DILexicalBlock(scope: !2746, file: !202, line: 470, column: 21)
!2746 = distinct !DILexicalBlock(scope: !2712, file: !202, line: 470, column: 21)
!2747 = !DILocation(line: 470, column: 21, scope: !2748)
!2748 = !DILexicalBlockFile(scope: !2746, file: !202, discriminator: 1)
!2749 = !DILocation(line: 470, column: 21, scope: !2750)
!2750 = !DILexicalBlockFile(scope: !2745, file: !202, discriminator: 2)
!2751 = !DILocation(line: 470, column: 21, scope: !2752)
!2752 = !DILexicalBlockFile(scope: !2746, file: !202, discriminator: 3)
!2753 = !DILocation(line: 471, column: 21, scope: !2712)
!2754 = !DILocation(line: 395, column: 21, scope: !2449)
!2755 = !DILocation(line: 484, column: 31, scope: !2458)
!2756 = !DILocation(line: 485, column: 31, scope: !2458)
!2757 = !DILocation(line: 487, column: 31, scope: !2458)
!2758 = !DILocation(line: 488, column: 31, scope: !2458)
!2759 = !DILocation(line: 489, column: 31, scope: !2458)
!2760 = !DILocation(line: 492, column: 15, scope: !2458)
!2761 = !DILocation(line: 494, column: 19, scope: !2762)
!2762 = distinct !DILexicalBlock(scope: !2763, file: !202, line: 493, column: 13)
!2763 = distinct !DILexicalBlock(scope: !2458, file: !202, line: 492, column: 15)
!2764 = !DILocation(line: 501, column: 33, scope: !2765)
!2765 = distinct !DILexicalBlock(scope: !2458, file: !202, line: 501, column: 15)
!2766 = !DILocation(line: 506, column: 15, scope: !2767)
!2767 = distinct !DILexicalBlock(scope: !2458, file: !202, line: 505, column: 15)
!2768 = !DILocation(line: 510, column: 15, scope: !2458)
!2769 = !DILocation(line: 518, column: 26, scope: !2770)
!2770 = distinct !DILexicalBlock(scope: !2458, file: !202, line: 518, column: 15)
!2771 = !DILocation(line: 518, column: 15, scope: !2458)
!2772 = !DILocation(line: 518, column: 40, scope: !2773)
!2773 = !DILexicalBlockFile(scope: !2770, file: !202, discriminator: 1)
!2774 = !DILocation(line: 518, column: 47, scope: !2773)
!2775 = !DILocation(line: 522, column: 17, scope: !2776)
!2776 = distinct !DILexicalBlock(scope: !2458, file: !202, line: 522, column: 15)
!2777 = !DILocation(line: 518, column: 18, scope: !2773)
!2778 = !DILocation(line: 518, column: 65, scope: !2779)
!2779 = !DILexicalBlockFile(scope: !2770, file: !202, discriminator: 2)
!2780 = !DILocation(line: 518, column: 15, scope: !2781)
!2781 = !DILexicalBlockFile(scope: !2458, file: !202, discriminator: 2)
!2782 = !DILocation(line: 522, column: 15, scope: !2458)
!2783 = !DILocation(line: 526, column: 11, scope: !2458)
!2784 = !DILocation(line: 541, column: 15, scope: !2785)
!2785 = distinct !DILexicalBlock(scope: !2458, file: !202, line: 540, column: 15)
!2786 = !DILocation(line: 548, column: 15, scope: !2458)
!2787 = !DILocation(line: 550, column: 19, scope: !2788)
!2788 = distinct !DILexicalBlock(scope: !2789, file: !202, line: 549, column: 13)
!2789 = distinct !DILexicalBlock(scope: !2458, file: !202, line: 548, column: 15)
!2790 = !DILocation(line: 553, column: 19, scope: !2791)
!2791 = distinct !DILexicalBlock(scope: !2788, file: !202, line: 553, column: 19)
!2792 = !DILocation(line: 553, column: 35, scope: !2793)
!2793 = !DILexicalBlockFile(scope: !2791, file: !202, discriminator: 1)
!2794 = !DILocation(line: 553, column: 30, scope: !2791)
!2795 = !DILocation(line: 562, column: 15, scope: !2796)
!2796 = !DILexicalBlockFile(scope: !2797, file: !202, discriminator: 1)
!2797 = distinct !DILexicalBlock(scope: !2798, file: !202, line: 562, column: 15)
!2798 = distinct !DILexicalBlock(scope: !2788, file: !202, line: 562, column: 15)
!2799 = !DILocation(line: 562, column: 15, scope: !2800)
!2800 = !DILexicalBlockFile(scope: !2798, file: !202, discriminator: 1)
!2801 = !DILocation(line: 562, column: 15, scope: !2802)
!2802 = !DILexicalBlockFile(scope: !2797, file: !202, discriminator: 2)
!2803 = !DILocation(line: 562, column: 15, scope: !2804)
!2804 = !DILexicalBlockFile(scope: !2798, file: !202, discriminator: 3)
!2805 = !DILocation(line: 563, column: 15, scope: !2806)
!2806 = !DILexicalBlockFile(scope: !2807, file: !202, discriminator: 1)
!2807 = distinct !DILexicalBlock(scope: !2808, file: !202, line: 563, column: 15)
!2808 = distinct !DILexicalBlock(scope: !2788, file: !202, line: 563, column: 15)
!2809 = !DILocation(line: 563, column: 15, scope: !2810)
!2810 = !DILexicalBlockFile(scope: !2808, file: !202, discriminator: 1)
!2811 = !DILocation(line: 563, column: 15, scope: !2812)
!2812 = !DILexicalBlockFile(scope: !2807, file: !202, discriminator: 2)
!2813 = !DILocation(line: 563, column: 15, scope: !2814)
!2814 = !DILexicalBlockFile(scope: !2808, file: !202, discriminator: 3)
!2815 = !DILocation(line: 564, column: 15, scope: !2816)
!2816 = !DILexicalBlockFile(scope: !2817, file: !202, discriminator: 1)
!2817 = distinct !DILexicalBlock(scope: !2818, file: !202, line: 564, column: 15)
!2818 = distinct !DILexicalBlock(scope: !2788, file: !202, line: 564, column: 15)
!2819 = !DILocation(line: 564, column: 15, scope: !2820)
!2820 = !DILexicalBlockFile(scope: !2818, file: !202, discriminator: 1)
!2821 = !DILocation(line: 564, column: 15, scope: !2822)
!2822 = !DILexicalBlockFile(scope: !2817, file: !202, discriminator: 2)
!2823 = !DILocation(line: 564, column: 15, scope: !2824)
!2824 = !DILexicalBlockFile(scope: !2818, file: !202, discriminator: 3)
!2825 = !DILocation(line: 566, column: 13, scope: !2788)
!2826 = !DILocation(line: 606, column: 17, scope: !2457)
!2827 = !DILocation(line: 602, column: 20, scope: !2457)
!2828 = !DILocation(line: 609, column: 29, scope: !2829)
!2829 = distinct !DILexicalBlock(scope: !2462, file: !202, line: 607, column: 15)
!2830 = !{!2831, !2831, i64 0}
!2831 = !{!"short", !704, i64 0}
!2832 = !DILocation(line: 609, column: 27, scope: !2829)
!2833 = !DILocation(line: 604, column: 18, scope: !2457)
!2834 = !DILocation(line: 610, column: 15, scope: !2829)
!2835 = !DILocation(line: 613, column: 17, scope: !2461)
!2836 = !DILocation(line: 614, column: 17, scope: !2461)
!2837 = !DILocation(line: 618, column: 29, scope: !2838)
!2838 = distinct !DILexicalBlock(scope: !2461, file: !202, line: 618, column: 21)
!2839 = !DILocation(line: 618, column: 21, scope: !2461)
!2840 = distinct !{!2840, !2841, !2842}
!2841 = !DILocation(line: 621, column: 17, scope: !2461)
!2842 = !DILocation(line: 667, column: 44, scope: !2461)
!2843 = !DILocation(line: 619, column: 29, scope: !2838)
!2844 = !DILocation(line: 619, column: 19, scope: !2838)
!2845 = !DILocation(line: 623, column: 21, scope: !2478)
!2846 = !DILocation(line: 624, column: 56, scope: !2478)
!2847 = !DILocation(line: 624, column: 50, scope: !2478)
!2848 = !DILocation(line: 625, column: 53, scope: !2478)
!2849 = !DILocation(line: 613, column: 27, scope: !2461)
!2850 = !DILocation(line: 623, column: 29, scope: !2478)
!2851 = !DILocation(line: 624, column: 36, scope: !2478)
!2852 = !DILocation(line: 624, column: 28, scope: !2478)
!2853 = !DILocation(line: 626, column: 25, scope: !2478)
!2854 = !DILocation(line: 636, column: 38, scope: !2855)
!2855 = !DILexicalBlockFile(scope: !2856, file: !202, discriminator: 1)
!2856 = distinct !DILexicalBlock(scope: !2485, file: !202, line: 634, column: 23)
!2857 = !DILocation(line: 636, column: 48, scope: !2855)
!2858 = !DILocation(line: 636, column: 51, scope: !2859)
!2859 = !DILexicalBlockFile(scope: !2856, file: !202, discriminator: 2)
!2860 = !DILocation(line: 636, column: 48, scope: !2859)
!2861 = !DILocation(line: 636, column: 25, scope: !2862)
!2862 = !DILexicalBlockFile(scope: !2856, file: !202, discriminator: 3)
!2863 = !DILocation(line: 637, column: 28, scope: !2856)
!2864 = !DILocation(line: 636, column: 34, scope: !2855)
!2865 = distinct !{!2865, !2866, !2863}
!2866 = !DILocation(line: 636, column: 25, scope: !2856)
!2867 = !DILocation(line: 650, column: 43, scope: !2868)
!2868 = !DILexicalBlockFile(scope: !2869, file: !202, discriminator: 1)
!2869 = distinct !DILexicalBlock(scope: !2870, file: !202, line: 650, column: 29)
!2870 = distinct !DILexicalBlock(scope: !2482, file: !202, line: 650, column: 29)
!2871 = !DILocation(line: 647, column: 29, scope: !2483)
!2872 = !DILocation(line: 649, column: 36, scope: !2482)
!2873 = !DILocation(line: 651, column: 49, scope: !2869)
!2874 = !DILocation(line: 651, column: 39, scope: !2869)
!2875 = !DILocation(line: 651, column: 31, scope: !2869)
!2876 = !DILocation(line: 650, column: 53, scope: !2877)
!2877 = !DILexicalBlockFile(scope: !2869, file: !202, discriminator: 2)
!2878 = !DILocation(line: 650, column: 29, scope: !2879)
!2879 = !DILexicalBlockFile(scope: !2870, file: !202, discriminator: 1)
!2880 = distinct !{!2880, !2881, !2882}
!2881 = !DILocation(line: 650, column: 29, scope: !2870)
!2882 = !DILocation(line: 659, column: 33, scope: !2870)
!2883 = !DILocation(line: 666, column: 19, scope: !2461)
!2884 = !DILocation(line: 662, column: 41, scope: !2885)
!2885 = distinct !DILexicalBlock(scope: !2484, file: !202, line: 662, column: 29)
!2886 = !DILocation(line: 662, column: 31, scope: !2885)
!2887 = !DILocation(line: 662, column: 29, scope: !2484)
!2888 = !DILocation(line: 664, column: 27, scope: !2484)
!2889 = !DILocation(line: 667, column: 26, scope: !2461)
!2890 = !DILocation(line: 667, column: 24, scope: !2461)
!2891 = !DILocation(line: 666, column: 19, scope: !2892)
!2892 = !DILexicalBlockFile(scope: !2478, file: !202, discriminator: 3)
!2893 = !DILocation(line: 668, column: 15, scope: !2462)
!2894 = !DILocation(line: 670, column: 40, scope: !2457)
!2895 = !DILocation(line: 672, column: 19, scope: !2490)
!2896 = !DILocation(line: 672, column: 45, scope: !2897)
!2897 = !DILexicalBlockFile(scope: !2490, file: !202, discriminator: 1)
!2898 = !DILocation(line: 672, column: 23, scope: !2490)
!2899 = !DILocation(line: 676, column: 33, scope: !2489)
!2900 = !DILocation(line: 676, column: 24, scope: !2489)
!2901 = !DILocation(line: 678, column: 17, scope: !2489)
!2902 = !DILocation(line: 680, column: 43, scope: !2903)
!2903 = distinct !DILexicalBlock(scope: !2904, file: !202, line: 680, column: 25)
!2904 = distinct !DILexicalBlock(scope: !2905, file: !202, line: 679, column: 19)
!2905 = distinct !DILexicalBlock(scope: !2906, file: !202, line: 678, column: 17)
!2906 = distinct !DILexicalBlock(scope: !2489, file: !202, line: 678, column: 17)
!2907 = !DILocation(line: 682, column: 25, scope: !2908)
!2908 = !DILexicalBlockFile(scope: !2909, file: !202, discriminator: 1)
!2909 = distinct !DILexicalBlock(scope: !2910, file: !202, line: 682, column: 25)
!2910 = distinct !DILexicalBlock(scope: !2903, file: !202, line: 681, column: 23)
!2911 = !DILocation(line: 682, column: 25, scope: !2912)
!2912 = !DILexicalBlockFile(scope: !2913, file: !202, discriminator: 4)
!2913 = distinct !DILexicalBlock(scope: !2909, file: !202, line: 682, column: 25)
!2914 = !DILocation(line: 682, column: 25, scope: !2915)
!2915 = !DILexicalBlockFile(scope: !2913, file: !202, discriminator: 3)
!2916 = !DILocation(line: 682, column: 25, scope: !2917)
!2917 = !DILexicalBlockFile(scope: !2918, file: !202, discriminator: 6)
!2918 = distinct !DILexicalBlock(scope: !2919, file: !202, line: 682, column: 25)
!2919 = distinct !DILexicalBlock(scope: !2920, file: !202, line: 682, column: 25)
!2920 = distinct !DILexicalBlock(scope: !2913, file: !202, line: 682, column: 25)
!2921 = !DILocation(line: 682, column: 25, scope: !2922)
!2922 = !DILexicalBlockFile(scope: !2919, file: !202, discriminator: 6)
!2923 = !DILocation(line: 682, column: 25, scope: !2924)
!2924 = !DILexicalBlockFile(scope: !2918, file: !202, discriminator: 7)
!2925 = !DILocation(line: 682, column: 25, scope: !2926)
!2926 = !DILexicalBlockFile(scope: !2919, file: !202, discriminator: 8)
!2927 = !DILocation(line: 682, column: 25, scope: !2928)
!2928 = !DILexicalBlockFile(scope: !2929, file: !202, discriminator: 11)
!2929 = distinct !DILexicalBlock(scope: !2930, file: !202, line: 682, column: 25)
!2930 = distinct !DILexicalBlock(scope: !2920, file: !202, line: 682, column: 25)
!2931 = !DILocation(line: 682, column: 25, scope: !2932)
!2932 = !DILexicalBlockFile(scope: !2930, file: !202, discriminator: 11)
!2933 = !DILocation(line: 682, column: 25, scope: !2934)
!2934 = !DILexicalBlockFile(scope: !2929, file: !202, discriminator: 12)
!2935 = !DILocation(line: 682, column: 25, scope: !2936)
!2936 = !DILexicalBlockFile(scope: !2930, file: !202, discriminator: 13)
!2937 = !DILocation(line: 682, column: 25, scope: !2938)
!2938 = !DILexicalBlockFile(scope: !2939, file: !202, discriminator: 16)
!2939 = distinct !DILexicalBlock(scope: !2940, file: !202, line: 682, column: 25)
!2940 = distinct !DILexicalBlock(scope: !2920, file: !202, line: 682, column: 25)
!2941 = !DILocation(line: 682, column: 25, scope: !2942)
!2942 = !DILexicalBlockFile(scope: !2940, file: !202, discriminator: 16)
!2943 = !DILocation(line: 682, column: 25, scope: !2944)
!2944 = !DILexicalBlockFile(scope: !2939, file: !202, discriminator: 17)
!2945 = !DILocation(line: 682, column: 25, scope: !2946)
!2946 = !DILexicalBlockFile(scope: !2940, file: !202, discriminator: 18)
!2947 = !DILocation(line: 682, column: 25, scope: !2948)
!2948 = !DILexicalBlockFile(scope: !2920, file: !202, discriminator: 20)
!2949 = !DILocation(line: 682, column: 25, scope: !2950)
!2950 = !DILexicalBlockFile(scope: !2951, file: !202, discriminator: 22)
!2951 = distinct !DILexicalBlock(scope: !2952, file: !202, line: 682, column: 25)
!2952 = distinct !DILexicalBlock(scope: !2909, file: !202, line: 682, column: 25)
!2953 = !DILocation(line: 682, column: 25, scope: !2954)
!2954 = !DILexicalBlockFile(scope: !2952, file: !202, discriminator: 22)
!2955 = !DILocation(line: 682, column: 25, scope: !2956)
!2956 = !DILexicalBlockFile(scope: !2951, file: !202, discriminator: 23)
!2957 = !DILocation(line: 682, column: 25, scope: !2958)
!2958 = !DILexicalBlockFile(scope: !2952, file: !202, discriminator: 24)
!2959 = !DILocation(line: 683, column: 25, scope: !2960)
!2960 = !DILexicalBlockFile(scope: !2961, file: !202, discriminator: 1)
!2961 = distinct !DILexicalBlock(scope: !2962, file: !202, line: 683, column: 25)
!2962 = distinct !DILexicalBlock(scope: !2910, file: !202, line: 683, column: 25)
!2963 = !DILocation(line: 683, column: 25, scope: !2964)
!2964 = !DILexicalBlockFile(scope: !2962, file: !202, discriminator: 1)
!2965 = !DILocation(line: 683, column: 25, scope: !2966)
!2966 = !DILexicalBlockFile(scope: !2961, file: !202, discriminator: 2)
!2967 = !DILocation(line: 683, column: 25, scope: !2968)
!2968 = !DILexicalBlockFile(scope: !2962, file: !202, discriminator: 3)
!2969 = !DILocation(line: 684, column: 25, scope: !2970)
!2970 = !DILexicalBlockFile(scope: !2971, file: !202, discriminator: 1)
!2971 = distinct !DILexicalBlock(scope: !2972, file: !202, line: 684, column: 25)
!2972 = distinct !DILexicalBlock(scope: !2910, file: !202, line: 684, column: 25)
!2973 = !DILocation(line: 684, column: 25, scope: !2974)
!2974 = !DILexicalBlockFile(scope: !2972, file: !202, discriminator: 1)
!2975 = !DILocation(line: 684, column: 25, scope: !2976)
!2976 = !DILexicalBlockFile(scope: !2971, file: !202, discriminator: 2)
!2977 = !DILocation(line: 684, column: 25, scope: !2978)
!2978 = !DILexicalBlockFile(scope: !2972, file: !202, discriminator: 3)
!2979 = !DILocation(line: 685, column: 38, scope: !2910)
!2980 = !DILocation(line: 685, column: 33, scope: !2910)
!2981 = !DILocation(line: 686, column: 23, scope: !2910)
!2982 = !DILocation(line: 687, column: 30, scope: !2983)
!2983 = distinct !DILexicalBlock(scope: !2903, file: !202, line: 687, column: 30)
!2984 = !DILocation(line: 687, column: 30, scope: !2903)
!2985 = !DILocation(line: 689, column: 25, scope: !2986)
!2986 = !DILexicalBlockFile(scope: !2987, file: !202, discriminator: 1)
!2987 = distinct !DILexicalBlock(scope: !2988, file: !202, line: 689, column: 25)
!2988 = distinct !DILexicalBlock(scope: !2989, file: !202, line: 689, column: 25)
!2989 = distinct !DILexicalBlock(scope: !2983, file: !202, line: 688, column: 23)
!2990 = !DILocation(line: 689, column: 25, scope: !2991)
!2991 = !DILexicalBlockFile(scope: !2988, file: !202, discriminator: 1)
!2992 = !DILocation(line: 689, column: 25, scope: !2993)
!2993 = !DILexicalBlockFile(scope: !2987, file: !202, discriminator: 2)
!2994 = !DILocation(line: 689, column: 25, scope: !2995)
!2995 = !DILexicalBlockFile(scope: !2988, file: !202, discriminator: 3)
!2996 = !DILocation(line: 691, column: 23, scope: !2989)
!2997 = !DILocation(line: 692, column: 35, scope: !2998)
!2998 = distinct !DILexicalBlock(scope: !2904, file: !202, line: 692, column: 25)
!2999 = !DILocation(line: 692, column: 30, scope: !2998)
!3000 = !DILocation(line: 692, column: 25, scope: !2904)
!3001 = !DILocation(line: 694, column: 21, scope: !3002)
!3002 = !DILexicalBlockFile(scope: !3003, file: !202, discriminator: 1)
!3003 = distinct !DILexicalBlock(scope: !3004, file: !202, line: 694, column: 21)
!3004 = distinct !DILexicalBlock(scope: !2904, file: !202, line: 694, column: 21)
!3005 = !DILocation(line: 694, column: 21, scope: !3006)
!3006 = !DILexicalBlockFile(scope: !3003, file: !202, discriminator: 2)
!3007 = !DILocation(line: 694, column: 21, scope: !3008)
!3008 = !DILexicalBlockFile(scope: !3009, file: !202, discriminator: 4)
!3009 = distinct !DILexicalBlock(scope: !3010, file: !202, line: 694, column: 21)
!3010 = distinct !DILexicalBlock(scope: !3011, file: !202, line: 694, column: 21)
!3011 = distinct !DILexicalBlock(scope: !3003, file: !202, line: 694, column: 21)
!3012 = !DILocation(line: 694, column: 21, scope: !3013)
!3013 = !DILexicalBlockFile(scope: !3010, file: !202, discriminator: 4)
!3014 = !DILocation(line: 694, column: 21, scope: !3015)
!3015 = !DILexicalBlockFile(scope: !3009, file: !202, discriminator: 5)
!3016 = !DILocation(line: 694, column: 21, scope: !3017)
!3017 = !DILexicalBlockFile(scope: !3010, file: !202, discriminator: 6)
!3018 = !DILocation(line: 694, column: 21, scope: !3019)
!3019 = !DILexicalBlockFile(scope: !3020, file: !202, discriminator: 9)
!3020 = distinct !DILexicalBlock(scope: !3021, file: !202, line: 694, column: 21)
!3021 = distinct !DILexicalBlock(scope: !3011, file: !202, line: 694, column: 21)
!3022 = !DILocation(line: 694, column: 21, scope: !3023)
!3023 = !DILexicalBlockFile(scope: !3021, file: !202, discriminator: 9)
!3024 = !DILocation(line: 694, column: 21, scope: !3025)
!3025 = !DILexicalBlockFile(scope: !3020, file: !202, discriminator: 10)
!3026 = !DILocation(line: 694, column: 21, scope: !3027)
!3027 = !DILexicalBlockFile(scope: !3021, file: !202, discriminator: 11)
!3028 = !DILocation(line: 694, column: 21, scope: !3029)
!3029 = !DILexicalBlockFile(scope: !3011, file: !202, discriminator: 13)
!3030 = !DILocation(line: 695, column: 21, scope: !3031)
!3031 = !DILexicalBlockFile(scope: !3032, file: !202, discriminator: 1)
!3032 = distinct !DILexicalBlock(scope: !3033, file: !202, line: 695, column: 21)
!3033 = distinct !DILexicalBlock(scope: !2904, file: !202, line: 695, column: 21)
!3034 = !DILocation(line: 695, column: 21, scope: !3035)
!3035 = !DILexicalBlockFile(scope: !3033, file: !202, discriminator: 1)
!3036 = !DILocation(line: 695, column: 21, scope: !3037)
!3037 = !DILexicalBlockFile(scope: !3032, file: !202, discriminator: 2)
!3038 = !DILocation(line: 695, column: 21, scope: !3039)
!3039 = !DILexicalBlockFile(scope: !3033, file: !202, discriminator: 3)
!3040 = !DILocation(line: 696, column: 25, scope: !2904)
!3041 = !DILocation(line: 678, column: 17, scope: !3042)
!3042 = !DILexicalBlockFile(scope: !2905, file: !202, discriminator: 1)
!3043 = distinct !{!3043, !3044, !3045}
!3044 = !DILocation(line: 678, column: 17, scope: !2906)
!3045 = !DILocation(line: 697, column: 19, scope: !2906)
!3046 = !DILocation(line: 704, column: 34, scope: !3047)
!3047 = distinct !DILexicalBlock(scope: !2449, file: !202, line: 704, column: 11)
!3048 = !DILocation(line: 706, column: 14, scope: !3047)
!3049 = !DILocation(line: 707, column: 14, scope: !3047)
!3050 = !DILocation(line: 707, column: 35, scope: !3051)
!3051 = !DILexicalBlockFile(scope: !3047, file: !202, discriminator: 1)
!3052 = !DILocation(line: 707, column: 17, scope: !3051)
!3053 = !DILocation(line: 707, column: 53, scope: !3051)
!3054 = !DILocation(line: 707, column: 47, scope: !3051)
!3055 = !DILocation(line: 707, column: 65, scope: !3051)
!3056 = !DILocation(line: 708, column: 15, scope: !3051)
!3057 = !DILocation(line: 708, column: 11, scope: !3047)
!3058 = !DILocation(line: 704, column: 11, scope: !3059)
!3059 = !DILexicalBlockFile(scope: !2449, file: !202, discriminator: 2)
!3060 = !DILocation(line: 712, column: 7, scope: !3061)
!3061 = !DILexicalBlockFile(scope: !3062, file: !202, discriminator: 1)
!3062 = distinct !DILexicalBlock(scope: !2449, file: !202, line: 712, column: 7)
!3063 = !DILocation(line: 712, column: 7, scope: !3064)
!3064 = !DILexicalBlockFile(scope: !3065, file: !202, discriminator: 4)
!3065 = distinct !DILexicalBlock(scope: !3062, file: !202, line: 712, column: 7)
!3066 = !DILocation(line: 712, column: 7, scope: !3067)
!3067 = !DILexicalBlockFile(scope: !3065, file: !202, discriminator: 3)
!3068 = !DILocation(line: 712, column: 7, scope: !3069)
!3069 = !DILexicalBlockFile(scope: !3070, file: !202, discriminator: 6)
!3070 = distinct !DILexicalBlock(scope: !3071, file: !202, line: 712, column: 7)
!3071 = distinct !DILexicalBlock(scope: !3072, file: !202, line: 712, column: 7)
!3072 = distinct !DILexicalBlock(scope: !3065, file: !202, line: 712, column: 7)
!3073 = !DILocation(line: 712, column: 7, scope: !3074)
!3074 = !DILexicalBlockFile(scope: !3071, file: !202, discriminator: 6)
!3075 = !DILocation(line: 712, column: 7, scope: !3076)
!3076 = !DILexicalBlockFile(scope: !3070, file: !202, discriminator: 7)
!3077 = !DILocation(line: 712, column: 7, scope: !3078)
!3078 = !DILexicalBlockFile(scope: !3071, file: !202, discriminator: 8)
!3079 = !DILocation(line: 712, column: 7, scope: !3080)
!3080 = !DILexicalBlockFile(scope: !3081, file: !202, discriminator: 11)
!3081 = distinct !DILexicalBlock(scope: !3082, file: !202, line: 712, column: 7)
!3082 = distinct !DILexicalBlock(scope: !3072, file: !202, line: 712, column: 7)
!3083 = !DILocation(line: 712, column: 7, scope: !3084)
!3084 = !DILexicalBlockFile(scope: !3082, file: !202, discriminator: 11)
!3085 = !DILocation(line: 712, column: 7, scope: !3086)
!3086 = !DILexicalBlockFile(scope: !3081, file: !202, discriminator: 12)
!3087 = !DILocation(line: 712, column: 7, scope: !3088)
!3088 = !DILexicalBlockFile(scope: !3082, file: !202, discriminator: 13)
!3089 = !DILocation(line: 712, column: 7, scope: !3090)
!3090 = !DILexicalBlockFile(scope: !3091, file: !202, discriminator: 16)
!3091 = distinct !DILexicalBlock(scope: !3092, file: !202, line: 712, column: 7)
!3092 = distinct !DILexicalBlock(scope: !3072, file: !202, line: 712, column: 7)
!3093 = !DILocation(line: 712, column: 7, scope: !3094)
!3094 = !DILexicalBlockFile(scope: !3092, file: !202, discriminator: 16)
!3095 = !DILocation(line: 712, column: 7, scope: !3096)
!3096 = !DILexicalBlockFile(scope: !3091, file: !202, discriminator: 17)
!3097 = !DILocation(line: 712, column: 7, scope: !3098)
!3098 = !DILexicalBlockFile(scope: !3092, file: !202, discriminator: 18)
!3099 = !DILocation(line: 712, column: 7, scope: !3100)
!3100 = !DILexicalBlockFile(scope: !3072, file: !202, discriminator: 20)
!3101 = !DILocation(line: 712, column: 7, scope: !3102)
!3102 = !DILexicalBlockFile(scope: !3103, file: !202, discriminator: 22)
!3103 = distinct !DILexicalBlock(scope: !3104, file: !202, line: 712, column: 7)
!3104 = distinct !DILexicalBlock(scope: !3062, file: !202, line: 712, column: 7)
!3105 = !DILocation(line: 712, column: 7, scope: !3106)
!3106 = !DILexicalBlockFile(scope: !3104, file: !202, discriminator: 22)
!3107 = !DILocation(line: 712, column: 7, scope: !3108)
!3108 = !DILexicalBlockFile(scope: !3103, file: !202, discriminator: 23)
!3109 = !DILocation(line: 712, column: 7, scope: !3110)
!3110 = !DILexicalBlockFile(scope: !3104, file: !202, discriminator: 24)
!3111 = !DILocation(line: 715, column: 7, scope: !3112)
!3112 = !DILexicalBlockFile(scope: !3113, file: !202, discriminator: 1)
!3113 = distinct !DILexicalBlock(scope: !3114, file: !202, line: 715, column: 7)
!3114 = distinct !DILexicalBlock(scope: !2449, file: !202, line: 715, column: 7)
!3115 = !DILocation(line: 715, column: 7, scope: !3116)
!3116 = !DILexicalBlockFile(scope: !3113, file: !202, discriminator: 2)
!3117 = !DILocation(line: 715, column: 7, scope: !3118)
!3118 = !DILexicalBlockFile(scope: !3119, file: !202, discriminator: 4)
!3119 = distinct !DILexicalBlock(scope: !3120, file: !202, line: 715, column: 7)
!3120 = distinct !DILexicalBlock(scope: !3121, file: !202, line: 715, column: 7)
!3121 = distinct !DILexicalBlock(scope: !3113, file: !202, line: 715, column: 7)
!3122 = !DILocation(line: 715, column: 7, scope: !3123)
!3123 = !DILexicalBlockFile(scope: !3120, file: !202, discriminator: 4)
!3124 = !DILocation(line: 715, column: 7, scope: !3125)
!3125 = !DILexicalBlockFile(scope: !3119, file: !202, discriminator: 5)
!3126 = !DILocation(line: 715, column: 7, scope: !3127)
!3127 = !DILexicalBlockFile(scope: !3120, file: !202, discriminator: 6)
!3128 = !DILocation(line: 715, column: 7, scope: !3129)
!3129 = !DILexicalBlockFile(scope: !3130, file: !202, discriminator: 9)
!3130 = distinct !DILexicalBlock(scope: !3131, file: !202, line: 715, column: 7)
!3131 = distinct !DILexicalBlock(scope: !3121, file: !202, line: 715, column: 7)
!3132 = !DILocation(line: 715, column: 7, scope: !3133)
!3133 = !DILexicalBlockFile(scope: !3131, file: !202, discriminator: 9)
!3134 = !DILocation(line: 715, column: 7, scope: !3135)
!3135 = !DILexicalBlockFile(scope: !3130, file: !202, discriminator: 10)
!3136 = !DILocation(line: 715, column: 7, scope: !3137)
!3137 = !DILexicalBlockFile(scope: !3131, file: !202, discriminator: 11)
!3138 = !DILocation(line: 715, column: 7, scope: !3139)
!3139 = !DILexicalBlockFile(scope: !3121, file: !202, discriminator: 13)
!3140 = !DILocation(line: 716, column: 7, scope: !3141)
!3141 = !DILexicalBlockFile(scope: !3142, file: !202, discriminator: 1)
!3142 = distinct !DILexicalBlock(scope: !3143, file: !202, line: 716, column: 7)
!3143 = distinct !DILexicalBlock(scope: !2449, file: !202, line: 716, column: 7)
!3144 = !DILocation(line: 716, column: 7, scope: !3145)
!3145 = !DILexicalBlockFile(scope: !3143, file: !202, discriminator: 1)
!3146 = !DILocation(line: 716, column: 7, scope: !3147)
!3147 = !DILexicalBlockFile(scope: !3142, file: !202, discriminator: 2)
!3148 = !DILocation(line: 716, column: 7, scope: !3149)
!3149 = !DILexicalBlockFile(scope: !3143, file: !202, discriminator: 3)
!3150 = !DILocation(line: 718, column: 13, scope: !3151)
!3151 = distinct !DILexicalBlock(scope: !2449, file: !202, line: 718, column: 11)
!3152 = !DILocation(line: 718, column: 11, scope: !2449)
!3153 = !DILocation(line: 720, column: 5, scope: !2450)
!3154 = !DILocation(line: 392, column: 75, scope: !3155)
!3155 = !DILexicalBlockFile(scope: !2450, file: !202, discriminator: 5)
!3156 = !DILocation(line: 392, column: 3, scope: !3155)
!3157 = distinct !{!3157, !3158, !3159}
!3158 = !DILocation(line: 392, column: 3, scope: !2451)
!3159 = !DILocation(line: 720, column: 5, scope: !2451)
!3160 = !DILocation(line: 722, column: 11, scope: !3161)
!3161 = distinct !DILexicalBlock(scope: !2422, file: !202, line: 722, column: 7)
!3162 = !DILocation(line: 722, column: 16, scope: !3161)
!3163 = !DILocation(line: 730, column: 51, scope: !3164)
!3164 = distinct !DILexicalBlock(scope: !2422, file: !202, line: 730, column: 7)
!3165 = !DILocation(line: 731, column: 10, scope: !3166)
!3166 = !DILexicalBlockFile(scope: !3164, file: !202, discriminator: 1)
!3167 = !DILocation(line: 733, column: 11, scope: !3168)
!3168 = distinct !DILexicalBlock(scope: !3169, file: !202, line: 733, column: 11)
!3169 = distinct !DILexicalBlock(scope: !3164, file: !202, line: 732, column: 5)
!3170 = !DILocation(line: 733, column: 11, scope: !3169)
!3171 = !DILocation(line: 734, column: 16, scope: !3168)
!3172 = !DILocation(line: 734, column: 9, scope: !3168)
!3173 = !DILocation(line: 738, column: 18, scope: !3174)
!3174 = distinct !DILexicalBlock(scope: !3168, file: !202, line: 738, column: 16)
!3175 = !DILocation(line: 738, column: 32, scope: !3176)
!3176 = !DILexicalBlockFile(scope: !3174, file: !202, discriminator: 1)
!3177 = !DILocation(line: 738, column: 29, scope: !3174)
!3178 = !DILocation(line: 747, column: 7, scope: !3179)
!3179 = distinct !DILexicalBlock(scope: !2422, file: !202, line: 747, column: 7)
!3180 = !DILocation(line: 747, column: 20, scope: !3179)
!3181 = !DILocation(line: 748, column: 12, scope: !3182)
!3182 = !DILexicalBlockFile(scope: !3183, file: !202, discriminator: 1)
!3183 = distinct !DILexicalBlock(scope: !3184, file: !202, line: 748, column: 5)
!3184 = distinct !DILexicalBlock(scope: !3179, file: !202, line: 748, column: 5)
!3185 = !DILocation(line: 748, column: 5, scope: !3186)
!3186 = !DILexicalBlockFile(scope: !3184, file: !202, discriminator: 1)
!3187 = !DILocation(line: 749, column: 7, scope: !3188)
!3188 = !DILexicalBlockFile(scope: !3189, file: !202, discriminator: 1)
!3189 = distinct !DILexicalBlock(scope: !3190, file: !202, line: 749, column: 7)
!3190 = distinct !DILexicalBlock(scope: !3183, file: !202, line: 749, column: 7)
!3191 = !DILocation(line: 749, column: 7, scope: !3192)
!3192 = !DILexicalBlockFile(scope: !3190, file: !202, discriminator: 1)
!3193 = !DILocation(line: 749, column: 7, scope: !3194)
!3194 = !DILexicalBlockFile(scope: !3189, file: !202, discriminator: 2)
!3195 = !DILocation(line: 749, column: 7, scope: !3196)
!3196 = !DILexicalBlockFile(scope: !3190, file: !202, discriminator: 3)
!3197 = !DILocation(line: 748, column: 39, scope: !3198)
!3198 = !DILexicalBlockFile(scope: !3183, file: !202, discriminator: 2)
!3199 = distinct !{!3199, !3200, !3201}
!3200 = !DILocation(line: 748, column: 5, scope: !3184)
!3201 = !DILocation(line: 749, column: 7, scope: !3184)
!3202 = !DILocation(line: 751, column: 11, scope: !3203)
!3203 = distinct !DILexicalBlock(scope: !2422, file: !202, line: 751, column: 7)
!3204 = !DILocation(line: 751, column: 7, scope: !2422)
!3205 = !DILocation(line: 752, column: 5, scope: !3203)
!3206 = !DILocation(line: 752, column: 17, scope: !3203)
!3207 = !DILocation(line: 758, column: 21, scope: !3208)
!3208 = distinct !DILexicalBlock(scope: !2422, file: !202, line: 758, column: 7)
!3209 = !DILocation(line: 758, column: 54, scope: !3210)
!3210 = !DILexicalBlockFile(scope: !3208, file: !202, discriminator: 1)
!3211 = !DILocation(line: 758, column: 51, scope: !3208)
!3212 = !DILocation(line: 762, column: 42, scope: !2422)
!3213 = !DILocation(line: 760, column: 10, scope: !2422)
!3214 = !DILocation(line: 760, column: 3, scope: !2422)
!3215 = !DILocation(line: 764, column: 1, scope: !2422)
!3216 = distinct !DISubprogram(name: "gettext_quote", scope: !202, file: !202, line: 199, type: !3217, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !174, variables: !3219)
!3217 = !DISubroutineType(types: !3218)
!3218 = !{!41, !41, !10}
!3219 = !{!3220, !3221, !3222, !3223}
!3220 = !DILocalVariable(name: "msgid", arg: 1, scope: !3216, file: !202, line: 199, type: !41)
!3221 = !DILocalVariable(name: "s", arg: 2, scope: !3216, file: !202, line: 199, type: !10)
!3222 = !DILocalVariable(name: "translation", scope: !3216, file: !202, line: 201, type: !41)
!3223 = !DILocalVariable(name: "locale_code", scope: !3216, file: !202, line: 202, type: !41)
!3224 = !DILocation(line: 199, column: 28, scope: !3216)
!3225 = !DILocation(line: 199, column: 54, scope: !3216)
!3226 = !DILocation(line: 201, column: 29, scope: !3216)
!3227 = !DILocation(line: 201, column: 15, scope: !3216)
!3228 = !DILocation(line: 204, column: 19, scope: !3229)
!3229 = distinct !DILexicalBlock(scope: !3216, file: !202, line: 204, column: 7)
!3230 = !DILocation(line: 204, column: 7, scope: !3216)
!3231 = !DILocation(line: 225, column: 17, scope: !3216)
!3232 = !DILocation(line: 202, column: 15, scope: !3216)
!3233 = !DILocalVariable(name: "s2", arg: 2, scope: !3234, file: !3235, line: 160, type: !41)
!3234 = distinct !DISubprogram(name: "strcaseeq0", scope: !3235, file: !3235, line: 160, type: !3236, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !174, variables: !3238)
!3235 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3236 = !DISubroutineType(types: !3237)
!3237 = !{!57, !41, !41, !32, !32, !32, !32, !32, !32, !32, !32, !32}
!3238 = !{!3239, !3233, !3240, !3241, !3242, !3243, !3244, !3245, !3246, !3247, !3248}
!3239 = !DILocalVariable(name: "s1", arg: 1, scope: !3234, file: !3235, line: 160, type: !41)
!3240 = !DILocalVariable(name: "s20", arg: 3, scope: !3234, file: !3235, line: 160, type: !32)
!3241 = !DILocalVariable(name: "s21", arg: 4, scope: !3234, file: !3235, line: 160, type: !32)
!3242 = !DILocalVariable(name: "s22", arg: 5, scope: !3234, file: !3235, line: 160, type: !32)
!3243 = !DILocalVariable(name: "s23", arg: 6, scope: !3234, file: !3235, line: 160, type: !32)
!3244 = !DILocalVariable(name: "s24", arg: 7, scope: !3234, file: !3235, line: 160, type: !32)
!3245 = !DILocalVariable(name: "s25", arg: 8, scope: !3234, file: !3235, line: 160, type: !32)
!3246 = !DILocalVariable(name: "s26", arg: 9, scope: !3234, file: !3235, line: 160, type: !32)
!3247 = !DILocalVariable(name: "s27", arg: 10, scope: !3234, file: !3235, line: 160, type: !32)
!3248 = !DILocalVariable(name: "s28", arg: 11, scope: !3234, file: !3235, line: 160, type: !32)
!3249 = !DILocation(line: 160, column: 41, scope: !3234, inlinedAt: !3250)
!3250 = distinct !DILocation(line: 226, column: 7, scope: !3251)
!3251 = distinct !DILexicalBlock(scope: !3216, file: !202, line: 226, column: 7)
!3252 = !DILocation(line: 160, column: 120, scope: !3234, inlinedAt: !3250)
!3253 = !DILocation(line: 160, column: 130, scope: !3234, inlinedAt: !3250)
!3254 = !DILocation(line: 162, column: 7, scope: !3255, inlinedAt: !3250)
!3255 = !DILexicalBlockFile(scope: !3256, file: !3235, discriminator: 1)
!3256 = distinct !DILexicalBlock(scope: !3234, file: !3235, line: 162, column: 7)
!3257 = !DILocalVariable(name: "s2", arg: 2, scope: !3258, file: !3235, line: 146, type: !41)
!3258 = distinct !DISubprogram(name: "strcaseeq1", scope: !3235, file: !3235, line: 146, type: !3259, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !174, variables: !3261)
!3259 = !DISubroutineType(types: !3260)
!3260 = !{!57, !41, !41, !32, !32, !32, !32, !32, !32, !32, !32}
!3261 = !{!3262, !3257, !3263, !3264, !3265, !3266, !3267, !3268, !3269, !3270}
!3262 = !DILocalVariable(name: "s1", arg: 1, scope: !3258, file: !3235, line: 146, type: !41)
!3263 = !DILocalVariable(name: "s21", arg: 3, scope: !3258, file: !3235, line: 146, type: !32)
!3264 = !DILocalVariable(name: "s22", arg: 4, scope: !3258, file: !3235, line: 146, type: !32)
!3265 = !DILocalVariable(name: "s23", arg: 5, scope: !3258, file: !3235, line: 146, type: !32)
!3266 = !DILocalVariable(name: "s24", arg: 6, scope: !3258, file: !3235, line: 146, type: !32)
!3267 = !DILocalVariable(name: "s25", arg: 7, scope: !3258, file: !3235, line: 146, type: !32)
!3268 = !DILocalVariable(name: "s26", arg: 8, scope: !3258, file: !3235, line: 146, type: !32)
!3269 = !DILocalVariable(name: "s27", arg: 9, scope: !3258, file: !3235, line: 146, type: !32)
!3270 = !DILocalVariable(name: "s28", arg: 10, scope: !3258, file: !3235, line: 146, type: !32)
!3271 = !DILocation(line: 146, column: 41, scope: !3258, inlinedAt: !3272)
!3272 = distinct !DILocation(line: 167, column: 16, scope: !3273, inlinedAt: !3250)
!3273 = distinct !DILexicalBlock(scope: !3274, file: !3235, line: 164, column: 11)
!3274 = distinct !DILexicalBlock(scope: !3256, file: !3235, line: 163, column: 5)
!3275 = !DILocation(line: 146, column: 110, scope: !3258, inlinedAt: !3272)
!3276 = !DILocation(line: 146, column: 120, scope: !3258, inlinedAt: !3272)
!3277 = !DILocation(line: 148, column: 7, scope: !3278, inlinedAt: !3272)
!3278 = !DILexicalBlockFile(scope: !3279, file: !3235, discriminator: 1)
!3279 = distinct !DILexicalBlock(scope: !3258, file: !3235, line: 148, column: 7)
!3280 = !DILocalVariable(name: "s2", arg: 2, scope: !3281, file: !3235, line: 132, type: !41)
!3281 = distinct !DISubprogram(name: "strcaseeq2", scope: !3235, file: !3235, line: 132, type: !3282, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !174, variables: !3284)
!3282 = !DISubroutineType(types: !3283)
!3283 = !{!57, !41, !41, !32, !32, !32, !32, !32, !32, !32}
!3284 = !{!3285, !3280, !3286, !3287, !3288, !3289, !3290, !3291, !3292}
!3285 = !DILocalVariable(name: "s1", arg: 1, scope: !3281, file: !3235, line: 132, type: !41)
!3286 = !DILocalVariable(name: "s22", arg: 3, scope: !3281, file: !3235, line: 132, type: !32)
!3287 = !DILocalVariable(name: "s23", arg: 4, scope: !3281, file: !3235, line: 132, type: !32)
!3288 = !DILocalVariable(name: "s24", arg: 5, scope: !3281, file: !3235, line: 132, type: !32)
!3289 = !DILocalVariable(name: "s25", arg: 6, scope: !3281, file: !3235, line: 132, type: !32)
!3290 = !DILocalVariable(name: "s26", arg: 7, scope: !3281, file: !3235, line: 132, type: !32)
!3291 = !DILocalVariable(name: "s27", arg: 8, scope: !3281, file: !3235, line: 132, type: !32)
!3292 = !DILocalVariable(name: "s28", arg: 9, scope: !3281, file: !3235, line: 132, type: !32)
!3293 = !DILocation(line: 132, column: 41, scope: !3281, inlinedAt: !3294)
!3294 = distinct !DILocation(line: 153, column: 16, scope: !3295, inlinedAt: !3272)
!3295 = distinct !DILexicalBlock(scope: !3296, file: !3235, line: 150, column: 11)
!3296 = distinct !DILexicalBlock(scope: !3279, file: !3235, line: 149, column: 5)
!3297 = !DILocation(line: 132, column: 100, scope: !3281, inlinedAt: !3294)
!3298 = !DILocation(line: 132, column: 110, scope: !3281, inlinedAt: !3294)
!3299 = !DILocation(line: 134, column: 7, scope: !3300, inlinedAt: !3294)
!3300 = !DILexicalBlockFile(scope: !3301, file: !3235, discriminator: 1)
!3301 = distinct !DILexicalBlock(scope: !3281, file: !3235, line: 134, column: 7)
!3302 = !DILocalVariable(name: "s2", arg: 2, scope: !3303, file: !3235, line: 118, type: !41)
!3303 = distinct !DISubprogram(name: "strcaseeq3", scope: !3235, file: !3235, line: 118, type: !3304, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !174, variables: !3306)
!3304 = !DISubroutineType(types: !3305)
!3305 = !{!57, !41, !41, !32, !32, !32, !32, !32, !32}
!3306 = !{!3307, !3302, !3308, !3309, !3310, !3311, !3312, !3313}
!3307 = !DILocalVariable(name: "s1", arg: 1, scope: !3303, file: !3235, line: 118, type: !41)
!3308 = !DILocalVariable(name: "s23", arg: 3, scope: !3303, file: !3235, line: 118, type: !32)
!3309 = !DILocalVariable(name: "s24", arg: 4, scope: !3303, file: !3235, line: 118, type: !32)
!3310 = !DILocalVariable(name: "s25", arg: 5, scope: !3303, file: !3235, line: 118, type: !32)
!3311 = !DILocalVariable(name: "s26", arg: 6, scope: !3303, file: !3235, line: 118, type: !32)
!3312 = !DILocalVariable(name: "s27", arg: 7, scope: !3303, file: !3235, line: 118, type: !32)
!3313 = !DILocalVariable(name: "s28", arg: 8, scope: !3303, file: !3235, line: 118, type: !32)
!3314 = !DILocation(line: 118, column: 41, scope: !3303, inlinedAt: !3315)
!3315 = distinct !DILocation(line: 139, column: 16, scope: !3316, inlinedAt: !3294)
!3316 = distinct !DILexicalBlock(scope: !3317, file: !3235, line: 136, column: 11)
!3317 = distinct !DILexicalBlock(scope: !3301, file: !3235, line: 135, column: 5)
!3318 = !DILocation(line: 118, column: 90, scope: !3303, inlinedAt: !3315)
!3319 = !DILocation(line: 118, column: 100, scope: !3303, inlinedAt: !3315)
!3320 = !DILocation(line: 120, column: 7, scope: !3321, inlinedAt: !3315)
!3321 = !DILexicalBlockFile(scope: !3322, file: !3235, discriminator: 2)
!3322 = distinct !DILexicalBlock(scope: !3303, file: !3235, line: 120, column: 7)
!3323 = !DILocation(line: 120, column: 7, scope: !3324, inlinedAt: !3315)
!3324 = !DILexicalBlockFile(scope: !3303, file: !3235, discriminator: 2)
!3325 = !DILocalVariable(name: "s2", arg: 2, scope: !3326, file: !3235, line: 104, type: !41)
!3326 = distinct !DISubprogram(name: "strcaseeq4", scope: !3235, file: !3235, line: 104, type: !3327, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !174, variables: !3329)
!3327 = !DISubroutineType(types: !3328)
!3328 = !{!57, !41, !41, !32, !32, !32, !32, !32}
!3329 = !{!3330, !3325, !3331, !3332, !3333, !3334, !3335}
!3330 = !DILocalVariable(name: "s1", arg: 1, scope: !3326, file: !3235, line: 104, type: !41)
!3331 = !DILocalVariable(name: "s24", arg: 3, scope: !3326, file: !3235, line: 104, type: !32)
!3332 = !DILocalVariable(name: "s25", arg: 4, scope: !3326, file: !3235, line: 104, type: !32)
!3333 = !DILocalVariable(name: "s26", arg: 5, scope: !3326, file: !3235, line: 104, type: !32)
!3334 = !DILocalVariable(name: "s27", arg: 6, scope: !3326, file: !3235, line: 104, type: !32)
!3335 = !DILocalVariable(name: "s28", arg: 7, scope: !3326, file: !3235, line: 104, type: !32)
!3336 = !DILocation(line: 104, column: 41, scope: !3326, inlinedAt: !3337)
!3337 = distinct !DILocation(line: 125, column: 16, scope: !3338, inlinedAt: !3315)
!3338 = distinct !DILexicalBlock(scope: !3339, file: !3235, line: 122, column: 11)
!3339 = distinct !DILexicalBlock(scope: !3322, file: !3235, line: 121, column: 5)
!3340 = !DILocation(line: 104, column: 80, scope: !3326, inlinedAt: !3337)
!3341 = !DILocation(line: 104, column: 90, scope: !3326, inlinedAt: !3337)
!3342 = !DILocation(line: 106, column: 7, scope: !3343, inlinedAt: !3337)
!3343 = !DILexicalBlockFile(scope: !3344, file: !3235, discriminator: 2)
!3344 = distinct !DILexicalBlock(scope: !3326, file: !3235, line: 106, column: 7)
!3345 = !DILocation(line: 106, column: 7, scope: !3346, inlinedAt: !3337)
!3346 = !DILexicalBlockFile(scope: !3326, file: !3235, discriminator: 2)
!3347 = !DILocalVariable(name: "s2", arg: 2, scope: !3348, file: !3235, line: 90, type: !41)
!3348 = distinct !DISubprogram(name: "strcaseeq5", scope: !3235, file: !3235, line: 90, type: !3349, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !174, variables: !3351)
!3349 = !DISubroutineType(types: !3350)
!3350 = !{!57, !41, !41, !32, !32, !32, !32}
!3351 = !{!3352, !3347, !3353, !3354, !3355, !3356}
!3352 = !DILocalVariable(name: "s1", arg: 1, scope: !3348, file: !3235, line: 90, type: !41)
!3353 = !DILocalVariable(name: "s25", arg: 3, scope: !3348, file: !3235, line: 90, type: !32)
!3354 = !DILocalVariable(name: "s26", arg: 4, scope: !3348, file: !3235, line: 90, type: !32)
!3355 = !DILocalVariable(name: "s27", arg: 5, scope: !3348, file: !3235, line: 90, type: !32)
!3356 = !DILocalVariable(name: "s28", arg: 6, scope: !3348, file: !3235, line: 90, type: !32)
!3357 = !DILocation(line: 90, column: 41, scope: !3348, inlinedAt: !3358)
!3358 = distinct !DILocation(line: 111, column: 16, scope: !3359, inlinedAt: !3337)
!3359 = distinct !DILexicalBlock(scope: !3360, file: !3235, line: 108, column: 11)
!3360 = distinct !DILexicalBlock(scope: !3344, file: !3235, line: 107, column: 5)
!3361 = !DILocation(line: 90, column: 70, scope: !3348, inlinedAt: !3358)
!3362 = !DILocation(line: 90, column: 80, scope: !3348, inlinedAt: !3358)
!3363 = !DILocation(line: 92, column: 7, scope: !3364, inlinedAt: !3358)
!3364 = !DILexicalBlockFile(scope: !3365, file: !3235, discriminator: 2)
!3365 = distinct !DILexicalBlock(scope: !3348, file: !3235, line: 92, column: 7)
!3366 = !DILocation(line: 92, column: 7, scope: !3367, inlinedAt: !3358)
!3367 = !DILexicalBlockFile(scope: !3348, file: !3235, discriminator: 2)
!3368 = !DILocation(line: 227, column: 12, scope: !3251)
!3369 = !DILocation(line: 227, column: 21, scope: !3251)
!3370 = !DILocation(line: 227, column: 5, scope: !3251)
!3371 = !DILocation(line: 146, column: 41, scope: !3258, inlinedAt: !3372)
!3372 = distinct !DILocation(line: 167, column: 16, scope: !3273, inlinedAt: !3373)
!3373 = distinct !DILocation(line: 228, column: 7, scope: !3374)
!3374 = distinct !DILexicalBlock(scope: !3216, file: !202, line: 228, column: 7)
!3375 = !DILocation(line: 146, column: 110, scope: !3258, inlinedAt: !3372)
!3376 = !DILocation(line: 146, column: 120, scope: !3258, inlinedAt: !3372)
!3377 = !DILocation(line: 148, column: 7, scope: !3278, inlinedAt: !3372)
!3378 = !DILocation(line: 132, column: 41, scope: !3281, inlinedAt: !3379)
!3379 = distinct !DILocation(line: 153, column: 16, scope: !3295, inlinedAt: !3372)
!3380 = !DILocation(line: 132, column: 100, scope: !3281, inlinedAt: !3379)
!3381 = !DILocation(line: 132, column: 110, scope: !3281, inlinedAt: !3379)
!3382 = !DILocation(line: 134, column: 7, scope: !3383, inlinedAt: !3379)
!3383 = !DILexicalBlockFile(scope: !3301, file: !3235, discriminator: 2)
!3384 = !DILocation(line: 134, column: 7, scope: !3385, inlinedAt: !3379)
!3385 = !DILexicalBlockFile(scope: !3281, file: !3235, discriminator: 2)
!3386 = !DILocation(line: 118, column: 41, scope: !3303, inlinedAt: !3387)
!3387 = distinct !DILocation(line: 139, column: 16, scope: !3316, inlinedAt: !3379)
!3388 = !DILocation(line: 118, column: 90, scope: !3303, inlinedAt: !3387)
!3389 = !DILocation(line: 118, column: 100, scope: !3303, inlinedAt: !3387)
!3390 = !DILocation(line: 120, column: 7, scope: !3321, inlinedAt: !3387)
!3391 = !DILocation(line: 120, column: 7, scope: !3324, inlinedAt: !3387)
!3392 = !DILocation(line: 104, column: 41, scope: !3326, inlinedAt: !3393)
!3393 = distinct !DILocation(line: 125, column: 16, scope: !3338, inlinedAt: !3387)
!3394 = !DILocation(line: 104, column: 80, scope: !3326, inlinedAt: !3393)
!3395 = !DILocation(line: 104, column: 90, scope: !3326, inlinedAt: !3393)
!3396 = !DILocation(line: 106, column: 7, scope: !3343, inlinedAt: !3393)
!3397 = !DILocation(line: 106, column: 7, scope: !3346, inlinedAt: !3393)
!3398 = !DILocation(line: 90, column: 41, scope: !3348, inlinedAt: !3399)
!3399 = distinct !DILocation(line: 111, column: 16, scope: !3359, inlinedAt: !3393)
!3400 = !DILocation(line: 90, column: 70, scope: !3348, inlinedAt: !3399)
!3401 = !DILocation(line: 90, column: 80, scope: !3348, inlinedAt: !3399)
!3402 = !DILocation(line: 92, column: 7, scope: !3364, inlinedAt: !3399)
!3403 = !DILocation(line: 92, column: 7, scope: !3367, inlinedAt: !3399)
!3404 = !DILocalVariable(name: "s2", arg: 2, scope: !3405, file: !3235, line: 76, type: !41)
!3405 = distinct !DISubprogram(name: "strcaseeq6", scope: !3235, file: !3235, line: 76, type: !3406, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !174, variables: !3408)
!3406 = !DISubroutineType(types: !3407)
!3407 = !{!57, !41, !41, !32, !32, !32}
!3408 = !{!3409, !3404, !3410, !3411, !3412}
!3409 = !DILocalVariable(name: "s1", arg: 1, scope: !3405, file: !3235, line: 76, type: !41)
!3410 = !DILocalVariable(name: "s26", arg: 3, scope: !3405, file: !3235, line: 76, type: !32)
!3411 = !DILocalVariable(name: "s27", arg: 4, scope: !3405, file: !3235, line: 76, type: !32)
!3412 = !DILocalVariable(name: "s28", arg: 5, scope: !3405, file: !3235, line: 76, type: !32)
!3413 = !DILocation(line: 76, column: 41, scope: !3405, inlinedAt: !3414)
!3414 = distinct !DILocation(line: 97, column: 16, scope: !3415, inlinedAt: !3399)
!3415 = distinct !DILexicalBlock(scope: !3416, file: !3235, line: 94, column: 11)
!3416 = distinct !DILexicalBlock(scope: !3365, file: !3235, line: 93, column: 5)
!3417 = !DILocation(line: 76, column: 60, scope: !3405, inlinedAt: !3414)
!3418 = !DILocation(line: 76, column: 70, scope: !3405, inlinedAt: !3414)
!3419 = !DILocation(line: 78, column: 7, scope: !3420, inlinedAt: !3414)
!3420 = !DILexicalBlockFile(scope: !3421, file: !3235, discriminator: 2)
!3421 = distinct !DILexicalBlock(scope: !3405, file: !3235, line: 78, column: 7)
!3422 = !DILocation(line: 78, column: 7, scope: !3423, inlinedAt: !3414)
!3423 = !DILexicalBlockFile(scope: !3405, file: !3235, discriminator: 2)
!3424 = !DILocalVariable(name: "s2", arg: 2, scope: !3425, file: !3235, line: 62, type: !41)
!3425 = distinct !DISubprogram(name: "strcaseeq7", scope: !3235, file: !3235, line: 62, type: !3426, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !174, variables: !3428)
!3426 = !DISubroutineType(types: !3427)
!3427 = !{!57, !41, !41, !32, !32}
!3428 = !{!3429, !3424, !3430, !3431}
!3429 = !DILocalVariable(name: "s1", arg: 1, scope: !3425, file: !3235, line: 62, type: !41)
!3430 = !DILocalVariable(name: "s27", arg: 3, scope: !3425, file: !3235, line: 62, type: !32)
!3431 = !DILocalVariable(name: "s28", arg: 4, scope: !3425, file: !3235, line: 62, type: !32)
!3432 = !DILocation(line: 62, column: 41, scope: !3425, inlinedAt: !3433)
!3433 = distinct !DILocation(line: 83, column: 16, scope: !3434, inlinedAt: !3414)
!3434 = distinct !DILexicalBlock(scope: !3435, file: !3235, line: 80, column: 11)
!3435 = distinct !DILexicalBlock(scope: !3421, file: !3235, line: 79, column: 5)
!3436 = !DILocation(line: 62, column: 50, scope: !3425, inlinedAt: !3433)
!3437 = !DILocation(line: 62, column: 60, scope: !3425, inlinedAt: !3433)
!3438 = !DILocation(line: 64, column: 7, scope: !3439, inlinedAt: !3433)
!3439 = !DILexicalBlockFile(scope: !3440, file: !3235, discriminator: 2)
!3440 = distinct !DILexicalBlock(scope: !3425, file: !3235, line: 64, column: 7)
!3441 = !DILocation(line: 228, column: 7, scope: !3216)
!3442 = !DILocation(line: 229, column: 12, scope: !3374)
!3443 = !DILocation(line: 229, column: 21, scope: !3374)
!3444 = !DILocation(line: 229, column: 5, scope: !3374)
!3445 = !DILocation(line: 231, column: 13, scope: !3216)
!3446 = !DILocation(line: 231, column: 11, scope: !3216)
!3447 = !DILocation(line: 231, column: 3, scope: !3216)
!3448 = !DILocation(line: 232, column: 1, scope: !3216)
!3449 = distinct !DISubprogram(name: "quotearg_alloc", scope: !202, file: !202, line: 791, type: !3450, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !174, variables: !3452)
!3450 = !DISubroutineType(types: !3451)
!3451 = !{!31, !41, !43, !2290}
!3452 = !{!3453, !3454, !3455}
!3453 = !DILocalVariable(name: "arg", arg: 1, scope: !3449, file: !202, line: 791, type: !41)
!3454 = !DILocalVariable(name: "argsize", arg: 2, scope: !3449, file: !202, line: 791, type: !43)
!3455 = !DILocalVariable(name: "o", arg: 3, scope: !3449, file: !202, line: 792, type: !2290)
!3456 = !DILocation(line: 791, column: 29, scope: !3449)
!3457 = !DILocation(line: 791, column: 41, scope: !3449)
!3458 = !DILocation(line: 792, column: 47, scope: !3449)
!3459 = !DILocalVariable(name: "arg", arg: 1, scope: !3460, file: !202, line: 804, type: !41)
!3460 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !202, file: !202, line: 804, type: !3461, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !174, variables: !3463)
!3461 = !DISubroutineType(types: !3462)
!3462 = !{!31, !41, !43, !642, !2290}
!3463 = !{!3459, !3464, !3465, !3466, !3467, !3468, !3469, !3470, !3471}
!3464 = !DILocalVariable(name: "argsize", arg: 2, scope: !3460, file: !202, line: 804, type: !43)
!3465 = !DILocalVariable(name: "size", arg: 3, scope: !3460, file: !202, line: 804, type: !642)
!3466 = !DILocalVariable(name: "o", arg: 4, scope: !3460, file: !202, line: 805, type: !2290)
!3467 = !DILocalVariable(name: "p", scope: !3460, file: !202, line: 807, type: !2290)
!3468 = !DILocalVariable(name: "e", scope: !3460, file: !202, line: 808, type: !57)
!3469 = !DILocalVariable(name: "flags", scope: !3460, file: !202, line: 810, type: !57)
!3470 = !DILocalVariable(name: "bufsize", scope: !3460, file: !202, line: 811, type: !43)
!3471 = !DILocalVariable(name: "buf", scope: !3460, file: !202, line: 815, type: !31)
!3472 = !DILocation(line: 804, column: 33, scope: !3460, inlinedAt: !3473)
!3473 = distinct !DILocation(line: 794, column: 10, scope: !3449)
!3474 = !DILocation(line: 804, column: 45, scope: !3460, inlinedAt: !3473)
!3475 = !DILocation(line: 804, column: 62, scope: !3460, inlinedAt: !3473)
!3476 = !DILocation(line: 805, column: 51, scope: !3460, inlinedAt: !3473)
!3477 = !DILocation(line: 807, column: 37, scope: !3460, inlinedAt: !3473)
!3478 = !DILocation(line: 807, column: 33, scope: !3460, inlinedAt: !3473)
!3479 = !DILocation(line: 808, column: 11, scope: !3460, inlinedAt: !3473)
!3480 = !DILocation(line: 808, column: 7, scope: !3460, inlinedAt: !3473)
!3481 = !DILocation(line: 810, column: 18, scope: !3460, inlinedAt: !3473)
!3482 = !DILocation(line: 810, column: 24, scope: !3460, inlinedAt: !3473)
!3483 = !DILocation(line: 810, column: 7, scope: !3460, inlinedAt: !3473)
!3484 = !DILocation(line: 811, column: 69, scope: !3460, inlinedAt: !3473)
!3485 = !DILocation(line: 812, column: 53, scope: !3460, inlinedAt: !3473)
!3486 = !DILocation(line: 813, column: 49, scope: !3460, inlinedAt: !3473)
!3487 = !DILocation(line: 814, column: 49, scope: !3460, inlinedAt: !3473)
!3488 = !DILocation(line: 811, column: 20, scope: !3460, inlinedAt: !3473)
!3489 = !DILocation(line: 814, column: 62, scope: !3460, inlinedAt: !3473)
!3490 = !DILocation(line: 811, column: 10, scope: !3460, inlinedAt: !3473)
!3491 = !DILocalVariable(name: "n", arg: 1, scope: !3492, file: !638, line: 220, type: !43)
!3492 = distinct !DISubprogram(name: "xcharalloc", scope: !638, file: !638, line: 220, type: !3493, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !174, variables: !3494)
!3493 = !DISubroutineType(types: !597)
!3494 = !{!3491}
!3495 = !DILocation(line: 220, column: 20, scope: !3492, inlinedAt: !3496)
!3496 = distinct !DILocation(line: 815, column: 15, scope: !3460, inlinedAt: !3473)
!3497 = !DILocation(line: 222, column: 10, scope: !3492, inlinedAt: !3496)
!3498 = !DILocation(line: 815, column: 9, scope: !3460, inlinedAt: !3473)
!3499 = !DILocation(line: 816, column: 60, scope: !3460, inlinedAt: !3473)
!3500 = !DILocation(line: 818, column: 32, scope: !3460, inlinedAt: !3473)
!3501 = !DILocation(line: 818, column: 47, scope: !3460, inlinedAt: !3473)
!3502 = !DILocation(line: 816, column: 3, scope: !3460, inlinedAt: !3473)
!3503 = !DILocation(line: 819, column: 9, scope: !3460, inlinedAt: !3473)
!3504 = !DILocation(line: 794, column: 3, scope: !3449)
!3505 = !DILocation(line: 804, column: 33, scope: !3460)
!3506 = !DILocation(line: 804, column: 45, scope: !3460)
!3507 = !DILocation(line: 804, column: 62, scope: !3460)
!3508 = !DILocation(line: 805, column: 51, scope: !3460)
!3509 = !DILocation(line: 807, column: 37, scope: !3460)
!3510 = !DILocation(line: 807, column: 33, scope: !3460)
!3511 = !DILocation(line: 808, column: 11, scope: !3460)
!3512 = !DILocation(line: 808, column: 7, scope: !3460)
!3513 = !DILocation(line: 810, column: 18, scope: !3460)
!3514 = !DILocation(line: 810, column: 27, scope: !3460)
!3515 = !DILocation(line: 810, column: 24, scope: !3460)
!3516 = !DILocation(line: 810, column: 7, scope: !3460)
!3517 = !DILocation(line: 811, column: 69, scope: !3460)
!3518 = !DILocation(line: 812, column: 53, scope: !3460)
!3519 = !DILocation(line: 813, column: 49, scope: !3460)
!3520 = !DILocation(line: 814, column: 49, scope: !3460)
!3521 = !DILocation(line: 811, column: 20, scope: !3460)
!3522 = !DILocation(line: 814, column: 62, scope: !3460)
!3523 = !DILocation(line: 811, column: 10, scope: !3460)
!3524 = !DILocation(line: 220, column: 20, scope: !3492, inlinedAt: !3525)
!3525 = distinct !DILocation(line: 815, column: 15, scope: !3460)
!3526 = !DILocation(line: 222, column: 10, scope: !3492, inlinedAt: !3525)
!3527 = !DILocation(line: 815, column: 9, scope: !3460)
!3528 = !DILocation(line: 816, column: 60, scope: !3460)
!3529 = !DILocation(line: 818, column: 32, scope: !3460)
!3530 = !DILocation(line: 818, column: 47, scope: !3460)
!3531 = !DILocation(line: 816, column: 3, scope: !3460)
!3532 = !DILocation(line: 819, column: 9, scope: !3460)
!3533 = !DILocation(line: 820, column: 7, scope: !3460)
!3534 = !DILocation(line: 821, column: 11, scope: !3535)
!3535 = distinct !DILexicalBlock(scope: !3460, file: !202, line: 820, column: 7)
!3536 = !DILocation(line: 821, column: 5, scope: !3535)
!3537 = !DILocation(line: 822, column: 3, scope: !3460)
!3538 = distinct !DISubprogram(name: "quotearg_free", scope: !202, file: !202, line: 840, type: !718, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !174, variables: !3539)
!3539 = !{!3540, !3541}
!3540 = !DILocalVariable(name: "sv", scope: !3538, file: !202, line: 842, type: !226)
!3541 = !DILocalVariable(name: "i", scope: !3538, file: !202, line: 843, type: !57)
!3542 = !DILocation(line: 842, column: 24, scope: !3538)
!3543 = !DILocation(line: 842, column: 19, scope: !3538)
!3544 = !DILocation(line: 843, column: 7, scope: !3538)
!3545 = !DILocation(line: 844, column: 19, scope: !3546)
!3546 = !DILexicalBlockFile(scope: !3547, file: !202, discriminator: 1)
!3547 = distinct !DILexicalBlock(scope: !3548, file: !202, line: 844, column: 3)
!3548 = distinct !DILexicalBlock(scope: !3538, file: !202, line: 844, column: 3)
!3549 = !DILocation(line: 844, column: 17, scope: !3546)
!3550 = !DILocation(line: 844, column: 3, scope: !3551)
!3551 = !DILexicalBlockFile(scope: !3548, file: !202, discriminator: 1)
!3552 = !DILocation(line: 845, column: 17, scope: !3547)
!3553 = !{!3554, !703, i64 8}
!3554 = !{!"slotvec", !1242, i64 0, !703, i64 8}
!3555 = !DILocation(line: 845, column: 5, scope: !3547)
!3556 = !DILocation(line: 844, column: 28, scope: !3557)
!3557 = !DILexicalBlockFile(scope: !3547, file: !202, discriminator: 2)
!3558 = distinct !{!3558, !3559, !3560}
!3559 = !DILocation(line: 844, column: 3, scope: !3548)
!3560 = !DILocation(line: 845, column: 20, scope: !3548)
!3561 = !DILocation(line: 846, column: 13, scope: !3562)
!3562 = distinct !DILexicalBlock(scope: !3538, file: !202, line: 846, column: 7)
!3563 = !DILocation(line: 846, column: 17, scope: !3562)
!3564 = !DILocation(line: 846, column: 7, scope: !3538)
!3565 = !DILocation(line: 848, column: 7, scope: !3566)
!3566 = distinct !DILexicalBlock(scope: !3562, file: !202, line: 847, column: 5)
!3567 = !DILocation(line: 849, column: 21, scope: !3566)
!3568 = !{!3554, !1242, i64 0}
!3569 = !DILocation(line: 850, column: 20, scope: !3566)
!3570 = !DILocation(line: 851, column: 5, scope: !3566)
!3571 = !DILocation(line: 852, column: 10, scope: !3572)
!3572 = distinct !DILexicalBlock(scope: !3538, file: !202, line: 852, column: 7)
!3573 = !DILocation(line: 852, column: 7, scope: !3538)
!3574 = !DILocation(line: 854, column: 13, scope: !3575)
!3575 = distinct !DILexicalBlock(scope: !3572, file: !202, line: 853, column: 5)
!3576 = !DILocation(line: 854, column: 7, scope: !3575)
!3577 = !DILocation(line: 855, column: 15, scope: !3575)
!3578 = !DILocation(line: 856, column: 5, scope: !3575)
!3579 = !DILocation(line: 857, column: 10, scope: !3538)
!3580 = !DILocation(line: 858, column: 1, scope: !3538)
!3581 = distinct !DISubprogram(name: "quotearg_n", scope: !202, file: !202, line: 922, type: !3582, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !174, variables: !3584)
!3582 = !DISubroutineType(types: !3583)
!3583 = !{!31, !57, !41}
!3584 = !{!3585, !3586}
!3585 = !DILocalVariable(name: "n", arg: 1, scope: !3581, file: !202, line: 922, type: !57)
!3586 = !DILocalVariable(name: "arg", arg: 2, scope: !3581, file: !202, line: 922, type: !41)
!3587 = !DILocation(line: 922, column: 17, scope: !3581)
!3588 = !DILocation(line: 922, column: 32, scope: !3581)
!3589 = !DILocation(line: 924, column: 10, scope: !3581)
!3590 = !DILocation(line: 924, column: 3, scope: !3581)
!3591 = distinct !DISubprogram(name: "quotearg_n_options", scope: !202, file: !202, line: 869, type: !3592, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !174, variables: !3594)
!3592 = !DISubroutineType(types: !3593)
!3593 = !{!31, !57, !41, !43, !2290}
!3594 = !{!3595, !3596, !3597, !3598, !3599, !3600, !3601, !3604, !3606, !3607, !3608}
!3595 = !DILocalVariable(name: "n", arg: 1, scope: !3591, file: !202, line: 869, type: !57)
!3596 = !DILocalVariable(name: "arg", arg: 2, scope: !3591, file: !202, line: 869, type: !41)
!3597 = !DILocalVariable(name: "argsize", arg: 3, scope: !3591, file: !202, line: 869, type: !43)
!3598 = !DILocalVariable(name: "options", arg: 4, scope: !3591, file: !202, line: 870, type: !2290)
!3599 = !DILocalVariable(name: "e", scope: !3591, file: !202, line: 872, type: !57)
!3600 = !DILocalVariable(name: "sv", scope: !3591, file: !202, line: 874, type: !226)
!3601 = !DILocalVariable(name: "preallocated", scope: !3602, file: !202, line: 881, type: !64)
!3602 = distinct !DILexicalBlock(scope: !3603, file: !202, line: 880, column: 5)
!3603 = distinct !DILexicalBlock(scope: !3591, file: !202, line: 879, column: 7)
!3604 = !DILocalVariable(name: "size", scope: !3605, file: !202, line: 894, type: !43)
!3605 = distinct !DILexicalBlock(scope: !3591, file: !202, line: 893, column: 3)
!3606 = !DILocalVariable(name: "val", scope: !3605, file: !202, line: 895, type: !31)
!3607 = !DILocalVariable(name: "flags", scope: !3605, file: !202, line: 897, type: !57)
!3608 = !DILocalVariable(name: "qsize", scope: !3605, file: !202, line: 898, type: !43)
!3609 = !DILocation(line: 869, column: 25, scope: !3591)
!3610 = !DILocation(line: 869, column: 40, scope: !3591)
!3611 = !DILocation(line: 869, column: 52, scope: !3591)
!3612 = !DILocation(line: 870, column: 51, scope: !3591)
!3613 = !DILocation(line: 872, column: 11, scope: !3591)
!3614 = !DILocation(line: 872, column: 7, scope: !3591)
!3615 = !DILocation(line: 874, column: 24, scope: !3591)
!3616 = !DILocation(line: 874, column: 19, scope: !3591)
!3617 = !DILocation(line: 876, column: 9, scope: !3618)
!3618 = distinct !DILexicalBlock(scope: !3591, file: !202, line: 876, column: 7)
!3619 = !DILocation(line: 876, column: 7, scope: !3591)
!3620 = !DILocation(line: 877, column: 5, scope: !3618)
!3621 = !DILocation(line: 879, column: 7, scope: !3603)
!3622 = !DILocation(line: 879, column: 14, scope: !3603)
!3623 = !DILocation(line: 879, column: 7, scope: !3591)
!3624 = !DILocation(line: 881, column: 31, scope: !3602)
!3625 = !DILocation(line: 883, column: 67, scope: !3626)
!3626 = distinct !DILexicalBlock(scope: !3602, file: !202, line: 883, column: 11)
!3627 = !DILocation(line: 883, column: 11, scope: !3602)
!3628 = !DILocation(line: 884, column: 9, scope: !3626)
!3629 = !DILocation(line: 886, column: 32, scope: !3630)
!3630 = !DILexicalBlockFile(scope: !3602, file: !202, discriminator: 3)
!3631 = !DILocation(line: 886, column: 61, scope: !3630)
!3632 = !DILocation(line: 886, column: 58, scope: !3630)
!3633 = !DILocation(line: 886, column: 66, scope: !3630)
!3634 = !DILocation(line: 886, column: 22, scope: !3630)
!3635 = !DILocation(line: 886, column: 15, scope: !3630)
!3636 = !DILocation(line: 887, column: 11, scope: !3602)
!3637 = !DILocation(line: 888, column: 15, scope: !3638)
!3638 = distinct !DILexicalBlock(scope: !3602, file: !202, line: 887, column: 11)
!3639 = !{i64 0, i64 8, !1358, i64 8, i64 8, !702}
!3640 = !DILocation(line: 888, column: 9, scope: !3638)
!3641 = !DILocation(line: 889, column: 20, scope: !3602)
!3642 = !DILocation(line: 889, column: 18, scope: !3602)
!3643 = !DILocation(line: 889, column: 7, scope: !3602)
!3644 = !DILocation(line: 889, column: 38, scope: !3602)
!3645 = !DILocation(line: 889, column: 31, scope: !3602)
!3646 = !DILocation(line: 889, column: 48, scope: !3602)
!3647 = !DILocation(line: 890, column: 14, scope: !3602)
!3648 = !DILocation(line: 891, column: 5, scope: !3602)
!3649 = !DILocation(line: 894, column: 19, scope: !3605)
!3650 = !DILocation(line: 894, column: 25, scope: !3605)
!3651 = !DILocation(line: 894, column: 12, scope: !3605)
!3652 = !DILocation(line: 895, column: 23, scope: !3605)
!3653 = !DILocation(line: 895, column: 11, scope: !3605)
!3654 = !DILocation(line: 897, column: 26, scope: !3605)
!3655 = !DILocation(line: 897, column: 32, scope: !3605)
!3656 = !DILocation(line: 897, column: 9, scope: !3605)
!3657 = !DILocation(line: 899, column: 55, scope: !3605)
!3658 = !DILocation(line: 900, column: 46, scope: !3605)
!3659 = !DILocation(line: 901, column: 55, scope: !3605)
!3660 = !DILocation(line: 902, column: 55, scope: !3605)
!3661 = !DILocation(line: 898, column: 20, scope: !3605)
!3662 = !DILocation(line: 898, column: 12, scope: !3605)
!3663 = !DILocation(line: 904, column: 14, scope: !3664)
!3664 = distinct !DILexicalBlock(scope: !3605, file: !202, line: 904, column: 9)
!3665 = !DILocation(line: 904, column: 9, scope: !3605)
!3666 = !DILocation(line: 906, column: 35, scope: !3667)
!3667 = distinct !DILexicalBlock(scope: !3664, file: !202, line: 905, column: 7)
!3668 = !DILocation(line: 906, column: 20, scope: !3667)
!3669 = !DILocation(line: 907, column: 17, scope: !3670)
!3670 = distinct !DILexicalBlock(scope: !3667, file: !202, line: 907, column: 13)
!3671 = !DILocation(line: 907, column: 13, scope: !3667)
!3672 = !DILocation(line: 908, column: 11, scope: !3670)
!3673 = !DILocation(line: 220, column: 20, scope: !3492, inlinedAt: !3674)
!3674 = distinct !DILocation(line: 909, column: 27, scope: !3667)
!3675 = !DILocation(line: 222, column: 10, scope: !3492, inlinedAt: !3674)
!3676 = !DILocation(line: 909, column: 19, scope: !3667)
!3677 = !DILocation(line: 910, column: 69, scope: !3667)
!3678 = !DILocation(line: 912, column: 44, scope: !3667)
!3679 = !DILocation(line: 913, column: 44, scope: !3667)
!3680 = !DILocation(line: 910, column: 9, scope: !3667)
!3681 = !DILocation(line: 914, column: 7, scope: !3667)
!3682 = !DILocation(line: 916, column: 11, scope: !3605)
!3683 = !DILocation(line: 917, column: 5, scope: !3605)
!3684 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !202, file: !202, line: 928, type: !3685, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !174, variables: !3687)
!3685 = !DISubroutineType(types: !3686)
!3686 = !{!31, !57, !41, !43}
!3687 = !{!3688, !3689, !3690}
!3688 = !DILocalVariable(name: "n", arg: 1, scope: !3684, file: !202, line: 928, type: !57)
!3689 = !DILocalVariable(name: "arg", arg: 2, scope: !3684, file: !202, line: 928, type: !41)
!3690 = !DILocalVariable(name: "argsize", arg: 3, scope: !3684, file: !202, line: 928, type: !43)
!3691 = !DILocation(line: 928, column: 21, scope: !3684)
!3692 = !DILocation(line: 928, column: 36, scope: !3684)
!3693 = !DILocation(line: 928, column: 48, scope: !3684)
!3694 = !DILocation(line: 930, column: 10, scope: !3684)
!3695 = !DILocation(line: 930, column: 3, scope: !3684)
!3696 = distinct !DISubprogram(name: "quotearg", scope: !202, file: !202, line: 934, type: !3697, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !174, variables: !3699)
!3697 = !DISubroutineType(types: !3698)
!3698 = !{!31, !41}
!3699 = !{!3700}
!3700 = !DILocalVariable(name: "arg", arg: 1, scope: !3696, file: !202, line: 934, type: !41)
!3701 = !DILocation(line: 934, column: 23, scope: !3696)
!3702 = !DILocation(line: 922, column: 17, scope: !3581, inlinedAt: !3703)
!3703 = distinct !DILocation(line: 936, column: 10, scope: !3696)
!3704 = !DILocation(line: 922, column: 32, scope: !3581, inlinedAt: !3703)
!3705 = !DILocation(line: 924, column: 10, scope: !3581, inlinedAt: !3703)
!3706 = !DILocation(line: 936, column: 3, scope: !3696)
!3707 = distinct !DISubprogram(name: "quotearg_mem", scope: !202, file: !202, line: 940, type: !3708, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !174, variables: !3710)
!3708 = !DISubroutineType(types: !3709)
!3709 = !{!31, !41, !43}
!3710 = !{!3711, !3712}
!3711 = !DILocalVariable(name: "arg", arg: 1, scope: !3707, file: !202, line: 940, type: !41)
!3712 = !DILocalVariable(name: "argsize", arg: 2, scope: !3707, file: !202, line: 940, type: !43)
!3713 = !DILocation(line: 940, column: 27, scope: !3707)
!3714 = !DILocation(line: 940, column: 39, scope: !3707)
!3715 = !DILocation(line: 928, column: 21, scope: !3684, inlinedAt: !3716)
!3716 = distinct !DILocation(line: 942, column: 10, scope: !3707)
!3717 = !DILocation(line: 928, column: 36, scope: !3684, inlinedAt: !3716)
!3718 = !DILocation(line: 928, column: 48, scope: !3684, inlinedAt: !3716)
!3719 = !DILocation(line: 930, column: 10, scope: !3684, inlinedAt: !3716)
!3720 = !DILocation(line: 942, column: 3, scope: !3707)
!3721 = distinct !DISubprogram(name: "quotearg_n_style", scope: !202, file: !202, line: 946, type: !3722, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !174, variables: !3724)
!3722 = !DISubroutineType(types: !3723)
!3723 = !{!31, !57, !10, !41}
!3724 = !{!3725, !3726, !3727, !3728}
!3725 = !DILocalVariable(name: "n", arg: 1, scope: !3721, file: !202, line: 946, type: !57)
!3726 = !DILocalVariable(name: "s", arg: 2, scope: !3721, file: !202, line: 946, type: !10)
!3727 = !DILocalVariable(name: "arg", arg: 3, scope: !3721, file: !202, line: 946, type: !41)
!3728 = !DILocalVariable(name: "o", scope: !3721, file: !202, line: 948, type: !2291)
!3729 = !DILocalVariable(name: "o", scope: !3730, file: !202, line: 187, type: !207)
!3730 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !202, file: !202, line: 185, type: !3731, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !174, variables: !3733)
!3731 = !DISubroutineType(types: !3732)
!3732 = !{!207, !10}
!3733 = !{!3734, !3729}
!3734 = !DILocalVariable(name: "style", arg: 1, scope: !3730, file: !202, line: 185, type: !10)
!3735 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!3736 = !DILocation(line: 187, column: 26, scope: !3730, inlinedAt: !3737)
!3737 = distinct !DILocation(line: 948, column: 36, scope: !3721)
!3738 = !DILocation(line: 946, column: 23, scope: !3721)
!3739 = !DILocation(line: 946, column: 45, scope: !3721)
!3740 = !DILocation(line: 946, column: 60, scope: !3721)
!3741 = !DILocation(line: 948, column: 3, scope: !3721)
!3742 = !DILocation(line: 948, column: 32, scope: !3721)
!3743 = !DILocation(line: 185, column: 48, scope: !3730, inlinedAt: !3737)
!3744 = !DILocation(line: 187, column: 3, scope: !3730, inlinedAt: !3737)
!3745 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!3746 = !DILocation(line: 188, column: 13, scope: !3747, inlinedAt: !3737)
!3747 = distinct !DILexicalBlock(scope: !3730, file: !202, line: 188, column: 7)
!3748 = !DILocation(line: 188, column: 7, scope: !3730, inlinedAt: !3737)
!3749 = !DILocation(line: 189, column: 5, scope: !3747, inlinedAt: !3737)
!3750 = !{!3751}
!3751 = distinct !{!3751, !3752, !"quoting_options_from_style: argument 0"}
!3752 = distinct !{!3752, !"quoting_options_from_style"}
!3753 = !DILocation(line: 191, column: 10, scope: !3730, inlinedAt: !3737)
!3754 = !DILocation(line: 192, column: 1, scope: !3730, inlinedAt: !3737)
!3755 = !DILocation(line: 949, column: 10, scope: !3721)
!3756 = !DILocation(line: 950, column: 1, scope: !3721)
!3757 = !DILocation(line: 949, column: 3, scope: !3721)
!3758 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !202, file: !202, line: 953, type: !3759, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !174, variables: !3761)
!3759 = !DISubroutineType(types: !3760)
!3760 = !{!31, !57, !10, !41, !43}
!3761 = !{!3762, !3763, !3764, !3765, !3766}
!3762 = !DILocalVariable(name: "n", arg: 1, scope: !3758, file: !202, line: 953, type: !57)
!3763 = !DILocalVariable(name: "s", arg: 2, scope: !3758, file: !202, line: 953, type: !10)
!3764 = !DILocalVariable(name: "arg", arg: 3, scope: !3758, file: !202, line: 954, type: !41)
!3765 = !DILocalVariable(name: "argsize", arg: 4, scope: !3758, file: !202, line: 954, type: !43)
!3766 = !DILocalVariable(name: "o", scope: !3758, file: !202, line: 956, type: !2291)
!3767 = !DILocation(line: 187, column: 26, scope: !3730, inlinedAt: !3768)
!3768 = distinct !DILocation(line: 956, column: 36, scope: !3758)
!3769 = !DILocation(line: 953, column: 27, scope: !3758)
!3770 = !DILocation(line: 953, column: 49, scope: !3758)
!3771 = !DILocation(line: 954, column: 35, scope: !3758)
!3772 = !DILocation(line: 954, column: 47, scope: !3758)
!3773 = !DILocation(line: 956, column: 3, scope: !3758)
!3774 = !DILocation(line: 956, column: 32, scope: !3758)
!3775 = !DILocation(line: 185, column: 48, scope: !3730, inlinedAt: !3768)
!3776 = !DILocation(line: 187, column: 3, scope: !3730, inlinedAt: !3768)
!3777 = !DILocation(line: 188, column: 13, scope: !3747, inlinedAt: !3768)
!3778 = !DILocation(line: 188, column: 7, scope: !3730, inlinedAt: !3768)
!3779 = !DILocation(line: 189, column: 5, scope: !3747, inlinedAt: !3768)
!3780 = !{!3781}
!3781 = distinct !{!3781, !3782, !"quoting_options_from_style: argument 0"}
!3782 = distinct !{!3782, !"quoting_options_from_style"}
!3783 = !DILocation(line: 191, column: 10, scope: !3730, inlinedAt: !3768)
!3784 = !DILocation(line: 192, column: 1, scope: !3730, inlinedAt: !3768)
!3785 = !DILocation(line: 957, column: 10, scope: !3758)
!3786 = !DILocation(line: 958, column: 1, scope: !3758)
!3787 = !DILocation(line: 957, column: 3, scope: !3758)
!3788 = distinct !DISubprogram(name: "quotearg_style", scope: !202, file: !202, line: 961, type: !3789, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !174, variables: !3791)
!3789 = !DISubroutineType(types: !3790)
!3790 = !{!31, !10, !41}
!3791 = !{!3792, !3793}
!3792 = !DILocalVariable(name: "s", arg: 1, scope: !3788, file: !202, line: 961, type: !10)
!3793 = !DILocalVariable(name: "arg", arg: 2, scope: !3788, file: !202, line: 961, type: !41)
!3794 = !DILocation(line: 187, column: 26, scope: !3730, inlinedAt: !3795)
!3795 = distinct !DILocation(line: 948, column: 36, scope: !3721, inlinedAt: !3796)
!3796 = distinct !DILocation(line: 963, column: 10, scope: !3788)
!3797 = !DILocation(line: 961, column: 36, scope: !3788)
!3798 = !DILocation(line: 961, column: 51, scope: !3788)
!3799 = !DILocation(line: 946, column: 23, scope: !3721, inlinedAt: !3796)
!3800 = !DILocation(line: 946, column: 45, scope: !3721, inlinedAt: !3796)
!3801 = !DILocation(line: 946, column: 60, scope: !3721, inlinedAt: !3796)
!3802 = !DILocation(line: 948, column: 3, scope: !3721, inlinedAt: !3796)
!3803 = !DILocation(line: 948, column: 32, scope: !3721, inlinedAt: !3796)
!3804 = !DILocation(line: 185, column: 48, scope: !3730, inlinedAt: !3795)
!3805 = !DILocation(line: 187, column: 3, scope: !3730, inlinedAt: !3795)
!3806 = !DILocation(line: 188, column: 13, scope: !3747, inlinedAt: !3795)
!3807 = !DILocation(line: 188, column: 7, scope: !3730, inlinedAt: !3795)
!3808 = !DILocation(line: 189, column: 5, scope: !3747, inlinedAt: !3795)
!3809 = !{!3810}
!3810 = distinct !{!3810, !3811, !"quoting_options_from_style: argument 0"}
!3811 = distinct !{!3811, !"quoting_options_from_style"}
!3812 = !DILocation(line: 191, column: 10, scope: !3730, inlinedAt: !3795)
!3813 = !DILocation(line: 192, column: 1, scope: !3730, inlinedAt: !3795)
!3814 = !DILocation(line: 949, column: 10, scope: !3721, inlinedAt: !3796)
!3815 = !DILocation(line: 950, column: 1, scope: !3721, inlinedAt: !3796)
!3816 = !DILocation(line: 963, column: 3, scope: !3788)
!3817 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !202, file: !202, line: 967, type: !3818, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !174, variables: !3820)
!3818 = !DISubroutineType(types: !3819)
!3819 = !{!31, !10, !41, !43}
!3820 = !{!3821, !3822, !3823}
!3821 = !DILocalVariable(name: "s", arg: 1, scope: !3817, file: !202, line: 967, type: !10)
!3822 = !DILocalVariable(name: "arg", arg: 2, scope: !3817, file: !202, line: 967, type: !41)
!3823 = !DILocalVariable(name: "argsize", arg: 3, scope: !3817, file: !202, line: 967, type: !43)
!3824 = !DILocation(line: 187, column: 26, scope: !3730, inlinedAt: !3825)
!3825 = distinct !DILocation(line: 956, column: 36, scope: !3758, inlinedAt: !3826)
!3826 = distinct !DILocation(line: 969, column: 10, scope: !3817)
!3827 = !DILocation(line: 967, column: 40, scope: !3817)
!3828 = !DILocation(line: 967, column: 55, scope: !3817)
!3829 = !DILocation(line: 967, column: 67, scope: !3817)
!3830 = !DILocation(line: 953, column: 27, scope: !3758, inlinedAt: !3826)
!3831 = !DILocation(line: 953, column: 49, scope: !3758, inlinedAt: !3826)
!3832 = !DILocation(line: 954, column: 35, scope: !3758, inlinedAt: !3826)
!3833 = !DILocation(line: 954, column: 47, scope: !3758, inlinedAt: !3826)
!3834 = !DILocation(line: 956, column: 3, scope: !3758, inlinedAt: !3826)
!3835 = !DILocation(line: 956, column: 32, scope: !3758, inlinedAt: !3826)
!3836 = !DILocation(line: 185, column: 48, scope: !3730, inlinedAt: !3825)
!3837 = !DILocation(line: 187, column: 3, scope: !3730, inlinedAt: !3825)
!3838 = !DILocation(line: 188, column: 13, scope: !3747, inlinedAt: !3825)
!3839 = !DILocation(line: 188, column: 7, scope: !3730, inlinedAt: !3825)
!3840 = !DILocation(line: 189, column: 5, scope: !3747, inlinedAt: !3825)
!3841 = !{!3842}
!3842 = distinct !{!3842, !3843, !"quoting_options_from_style: argument 0"}
!3843 = distinct !{!3843, !"quoting_options_from_style"}
!3844 = !DILocation(line: 191, column: 10, scope: !3730, inlinedAt: !3825)
!3845 = !DILocation(line: 192, column: 1, scope: !3730, inlinedAt: !3825)
!3846 = !DILocation(line: 957, column: 10, scope: !3758, inlinedAt: !3826)
!3847 = !DILocation(line: 958, column: 1, scope: !3758, inlinedAt: !3826)
!3848 = !DILocation(line: 969, column: 3, scope: !3817)
!3849 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !202, file: !202, line: 973, type: !3850, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !174, variables: !3852)
!3850 = !DISubroutineType(types: !3851)
!3851 = !{!31, !41, !43, !32}
!3852 = !{!3853, !3854, !3855, !3856}
!3853 = !DILocalVariable(name: "arg", arg: 1, scope: !3849, file: !202, line: 973, type: !41)
!3854 = !DILocalVariable(name: "argsize", arg: 2, scope: !3849, file: !202, line: 973, type: !43)
!3855 = !DILocalVariable(name: "ch", arg: 3, scope: !3849, file: !202, line: 973, type: !32)
!3856 = !DILocalVariable(name: "options", scope: !3849, file: !202, line: 975, type: !207)
!3857 = !DILocation(line: 973, column: 32, scope: !3849)
!3858 = !DILocation(line: 973, column: 44, scope: !3849)
!3859 = !DILocation(line: 973, column: 58, scope: !3849)
!3860 = !DILocation(line: 975, column: 3, scope: !3849)
!3861 = !DILocation(line: 976, column: 13, scope: !3849)
!3862 = !{i64 0, i64 4, !975, i64 4, i64 4, !1089, i64 8, i64 32, !975, i64 40, i64 8, !702, i64 48, i64 8, !702}
!3863 = !DILocation(line: 975, column: 26, scope: !3849)
!3864 = !DILocation(line: 144, column: 43, scope: !2314, inlinedAt: !3865)
!3865 = distinct !DILocation(line: 977, column: 3, scope: !3849)
!3866 = !DILocation(line: 144, column: 51, scope: !2314, inlinedAt: !3865)
!3867 = !DILocation(line: 144, column: 58, scope: !2314, inlinedAt: !3865)
!3868 = !DILocation(line: 146, column: 17, scope: !2314, inlinedAt: !3865)
!3869 = !DILocation(line: 148, column: 62, scope: !2332, inlinedAt: !3865)
!3870 = !DILocation(line: 148, column: 57, scope: !2332, inlinedAt: !3865)
!3871 = !DILocation(line: 147, column: 17, scope: !2314, inlinedAt: !3865)
!3872 = !DILocation(line: 149, column: 18, scope: !2314, inlinedAt: !3865)
!3873 = !DILocation(line: 149, column: 15, scope: !2314, inlinedAt: !3865)
!3874 = !DILocation(line: 149, column: 7, scope: !2314, inlinedAt: !3865)
!3875 = !DILocation(line: 150, column: 12, scope: !2314, inlinedAt: !3865)
!3876 = !DILocation(line: 150, column: 15, scope: !2314, inlinedAt: !3865)
!3877 = !DILocation(line: 150, column: 25, scope: !2314, inlinedAt: !3865)
!3878 = !DILocation(line: 150, column: 7, scope: !2314, inlinedAt: !3865)
!3879 = !DILocation(line: 151, column: 18, scope: !2314, inlinedAt: !3865)
!3880 = !DILocation(line: 151, column: 23, scope: !2314, inlinedAt: !3865)
!3881 = !DILocation(line: 151, column: 6, scope: !2314, inlinedAt: !3865)
!3882 = !DILocation(line: 978, column: 10, scope: !3849)
!3883 = !DILocation(line: 979, column: 1, scope: !3849)
!3884 = !DILocation(line: 978, column: 3, scope: !3849)
!3885 = distinct !DISubprogram(name: "quotearg_char", scope: !202, file: !202, line: 982, type: !3886, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !174, variables: !3888)
!3886 = !DISubroutineType(types: !3887)
!3887 = !{!31, !41, !32}
!3888 = !{!3889, !3890}
!3889 = !DILocalVariable(name: "arg", arg: 1, scope: !3885, file: !202, line: 982, type: !41)
!3890 = !DILocalVariable(name: "ch", arg: 2, scope: !3885, file: !202, line: 982, type: !32)
!3891 = !DILocation(line: 982, column: 28, scope: !3885)
!3892 = !DILocation(line: 982, column: 38, scope: !3885)
!3893 = !DILocation(line: 973, column: 32, scope: !3849, inlinedAt: !3894)
!3894 = distinct !DILocation(line: 984, column: 10, scope: !3885)
!3895 = !DILocation(line: 973, column: 44, scope: !3849, inlinedAt: !3894)
!3896 = !DILocation(line: 973, column: 58, scope: !3849, inlinedAt: !3894)
!3897 = !DILocation(line: 975, column: 3, scope: !3849, inlinedAt: !3894)
!3898 = !DILocation(line: 976, column: 13, scope: !3849, inlinedAt: !3894)
!3899 = !DILocation(line: 975, column: 26, scope: !3849, inlinedAt: !3894)
!3900 = !DILocation(line: 144, column: 43, scope: !2314, inlinedAt: !3901)
!3901 = distinct !DILocation(line: 977, column: 3, scope: !3849, inlinedAt: !3894)
!3902 = !DILocation(line: 144, column: 51, scope: !2314, inlinedAt: !3901)
!3903 = !DILocation(line: 144, column: 58, scope: !2314, inlinedAt: !3901)
!3904 = !DILocation(line: 146, column: 17, scope: !2314, inlinedAt: !3901)
!3905 = !DILocation(line: 148, column: 62, scope: !2332, inlinedAt: !3901)
!3906 = !DILocation(line: 148, column: 57, scope: !2332, inlinedAt: !3901)
!3907 = !DILocation(line: 147, column: 17, scope: !2314, inlinedAt: !3901)
!3908 = !DILocation(line: 149, column: 18, scope: !2314, inlinedAt: !3901)
!3909 = !DILocation(line: 149, column: 15, scope: !2314, inlinedAt: !3901)
!3910 = !DILocation(line: 149, column: 7, scope: !2314, inlinedAt: !3901)
!3911 = !DILocation(line: 150, column: 12, scope: !2314, inlinedAt: !3901)
!3912 = !DILocation(line: 150, column: 15, scope: !2314, inlinedAt: !3901)
!3913 = !DILocation(line: 150, column: 25, scope: !2314, inlinedAt: !3901)
!3914 = !DILocation(line: 150, column: 7, scope: !2314, inlinedAt: !3901)
!3915 = !DILocation(line: 151, column: 18, scope: !2314, inlinedAt: !3901)
!3916 = !DILocation(line: 151, column: 23, scope: !2314, inlinedAt: !3901)
!3917 = !DILocation(line: 151, column: 6, scope: !2314, inlinedAt: !3901)
!3918 = !DILocation(line: 978, column: 10, scope: !3849, inlinedAt: !3894)
!3919 = !DILocation(line: 979, column: 1, scope: !3849, inlinedAt: !3894)
!3920 = !DILocation(line: 984, column: 3, scope: !3885)
!3921 = distinct !DISubprogram(name: "quotearg_colon", scope: !202, file: !202, line: 988, type: !3697, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !174, variables: !3922)
!3922 = !{!3923}
!3923 = !DILocalVariable(name: "arg", arg: 1, scope: !3921, file: !202, line: 988, type: !41)
!3924 = !DILocation(line: 988, column: 29, scope: !3921)
!3925 = !DILocation(line: 982, column: 28, scope: !3885, inlinedAt: !3926)
!3926 = distinct !DILocation(line: 990, column: 10, scope: !3921)
!3927 = !DILocation(line: 982, column: 38, scope: !3885, inlinedAt: !3926)
!3928 = !DILocation(line: 973, column: 32, scope: !3849, inlinedAt: !3929)
!3929 = distinct !DILocation(line: 984, column: 10, scope: !3885, inlinedAt: !3926)
!3930 = !DILocation(line: 973, column: 44, scope: !3849, inlinedAt: !3929)
!3931 = !DILocation(line: 973, column: 58, scope: !3849, inlinedAt: !3929)
!3932 = !DILocation(line: 975, column: 3, scope: !3849, inlinedAt: !3929)
!3933 = !DILocation(line: 976, column: 13, scope: !3849, inlinedAt: !3929)
!3934 = !DILocation(line: 975, column: 26, scope: !3849, inlinedAt: !3929)
!3935 = !DILocation(line: 144, column: 43, scope: !2314, inlinedAt: !3936)
!3936 = distinct !DILocation(line: 977, column: 3, scope: !3849, inlinedAt: !3929)
!3937 = !DILocation(line: 144, column: 51, scope: !2314, inlinedAt: !3936)
!3938 = !DILocation(line: 144, column: 58, scope: !2314, inlinedAt: !3936)
!3939 = !DILocation(line: 146, column: 17, scope: !2314, inlinedAt: !3936)
!3940 = !DILocation(line: 148, column: 57, scope: !2332, inlinedAt: !3936)
!3941 = !DILocation(line: 147, column: 17, scope: !2314, inlinedAt: !3936)
!3942 = !DILocation(line: 149, column: 7, scope: !2314, inlinedAt: !3936)
!3943 = !DILocation(line: 150, column: 12, scope: !2314, inlinedAt: !3936)
!3944 = !DILocation(line: 151, column: 6, scope: !2314, inlinedAt: !3936)
!3945 = !DILocation(line: 978, column: 10, scope: !3849, inlinedAt: !3929)
!3946 = !DILocation(line: 979, column: 1, scope: !3849, inlinedAt: !3929)
!3947 = !DILocation(line: 990, column: 3, scope: !3921)
!3948 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !202, file: !202, line: 994, type: !3708, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !174, variables: !3949)
!3949 = !{!3950, !3951}
!3950 = !DILocalVariable(name: "arg", arg: 1, scope: !3948, file: !202, line: 994, type: !41)
!3951 = !DILocalVariable(name: "argsize", arg: 2, scope: !3948, file: !202, line: 994, type: !43)
!3952 = !DILocation(line: 994, column: 33, scope: !3948)
!3953 = !DILocation(line: 994, column: 45, scope: !3948)
!3954 = !DILocation(line: 973, column: 32, scope: !3849, inlinedAt: !3955)
!3955 = distinct !DILocation(line: 996, column: 10, scope: !3948)
!3956 = !DILocation(line: 973, column: 44, scope: !3849, inlinedAt: !3955)
!3957 = !DILocation(line: 973, column: 58, scope: !3849, inlinedAt: !3955)
!3958 = !DILocation(line: 975, column: 3, scope: !3849, inlinedAt: !3955)
!3959 = !DILocation(line: 976, column: 13, scope: !3849, inlinedAt: !3955)
!3960 = !DILocation(line: 975, column: 26, scope: !3849, inlinedAt: !3955)
!3961 = !DILocation(line: 144, column: 43, scope: !2314, inlinedAt: !3962)
!3962 = distinct !DILocation(line: 977, column: 3, scope: !3849, inlinedAt: !3955)
!3963 = !DILocation(line: 144, column: 51, scope: !2314, inlinedAt: !3962)
!3964 = !DILocation(line: 144, column: 58, scope: !2314, inlinedAt: !3962)
!3965 = !DILocation(line: 146, column: 17, scope: !2314, inlinedAt: !3962)
!3966 = !DILocation(line: 148, column: 57, scope: !2332, inlinedAt: !3962)
!3967 = !DILocation(line: 147, column: 17, scope: !2314, inlinedAt: !3962)
!3968 = !DILocation(line: 149, column: 7, scope: !2314, inlinedAt: !3962)
!3969 = !DILocation(line: 150, column: 12, scope: !2314, inlinedAt: !3962)
!3970 = !DILocation(line: 151, column: 6, scope: !2314, inlinedAt: !3962)
!3971 = !DILocation(line: 978, column: 10, scope: !3849, inlinedAt: !3955)
!3972 = !DILocation(line: 979, column: 1, scope: !3849, inlinedAt: !3955)
!3973 = !DILocation(line: 996, column: 3, scope: !3948)
!3974 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !202, file: !202, line: 1000, type: !3722, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !174, variables: !3975)
!3975 = !{!3976, !3977, !3978, !3979}
!3976 = !DILocalVariable(name: "n", arg: 1, scope: !3974, file: !202, line: 1000, type: !57)
!3977 = !DILocalVariable(name: "s", arg: 2, scope: !3974, file: !202, line: 1000, type: !10)
!3978 = !DILocalVariable(name: "arg", arg: 3, scope: !3974, file: !202, line: 1000, type: !41)
!3979 = !DILocalVariable(name: "options", scope: !3974, file: !202, line: 1002, type: !207)
!3980 = !DILocation(line: 187, column: 26, scope: !3730, inlinedAt: !3981)
!3981 = distinct !DILocation(line: 1003, column: 13, scope: !3974)
!3982 = !DILocation(line: 1000, column: 29, scope: !3974)
!3983 = !DILocation(line: 1000, column: 51, scope: !3974)
!3984 = !DILocation(line: 1000, column: 66, scope: !3974)
!3985 = !DILocation(line: 1002, column: 3, scope: !3974)
!3986 = !DILocation(line: 185, column: 48, scope: !3730, inlinedAt: !3981)
!3987 = !DILocation(line: 187, column: 3, scope: !3730, inlinedAt: !3981)
!3988 = !DILocation(line: 188, column: 13, scope: !3747, inlinedAt: !3981)
!3989 = !DILocation(line: 188, column: 7, scope: !3730, inlinedAt: !3981)
!3990 = !DILocation(line: 189, column: 5, scope: !3747, inlinedAt: !3981)
!3991 = !{!3992}
!3992 = distinct !{!3992, !3993, !"quoting_options_from_style: argument 0"}
!3993 = distinct !{!3993, !"quoting_options_from_style"}
!3994 = !DILocation(line: 191, column: 10, scope: !3730, inlinedAt: !3981)
!3995 = !DILocation(line: 192, column: 1, scope: !3730, inlinedAt: !3981)
!3996 = !DILocation(line: 1003, column: 13, scope: !3974)
!3997 = !DILocation(line: 1002, column: 26, scope: !3974)
!3998 = !DILocation(line: 144, column: 43, scope: !2314, inlinedAt: !3999)
!3999 = distinct !DILocation(line: 1004, column: 3, scope: !3974)
!4000 = !DILocation(line: 144, column: 51, scope: !2314, inlinedAt: !3999)
!4001 = !DILocation(line: 144, column: 58, scope: !2314, inlinedAt: !3999)
!4002 = !DILocation(line: 146, column: 17, scope: !2314, inlinedAt: !3999)
!4003 = !DILocation(line: 148, column: 57, scope: !2332, inlinedAt: !3999)
!4004 = !DILocation(line: 147, column: 17, scope: !2314, inlinedAt: !3999)
!4005 = !DILocation(line: 149, column: 7, scope: !2314, inlinedAt: !3999)
!4006 = !DILocation(line: 150, column: 12, scope: !2314, inlinedAt: !3999)
!4007 = !DILocation(line: 151, column: 6, scope: !2314, inlinedAt: !3999)
!4008 = !DILocation(line: 1005, column: 10, scope: !3974)
!4009 = !DILocation(line: 1006, column: 1, scope: !3974)
!4010 = !DILocation(line: 1005, column: 3, scope: !3974)
!4011 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !202, file: !202, line: 1009, type: !4012, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !174, variables: !4014)
!4012 = !DISubroutineType(types: !4013)
!4013 = !{!31, !57, !41, !41, !41}
!4014 = !{!4015, !4016, !4017, !4018}
!4015 = !DILocalVariable(name: "n", arg: 1, scope: !4011, file: !202, line: 1009, type: !57)
!4016 = !DILocalVariable(name: "left_quote", arg: 2, scope: !4011, file: !202, line: 1009, type: !41)
!4017 = !DILocalVariable(name: "right_quote", arg: 3, scope: !4011, file: !202, line: 1010, type: !41)
!4018 = !DILocalVariable(name: "arg", arg: 4, scope: !4011, file: !202, line: 1010, type: !41)
!4019 = !DILocation(line: 1009, column: 24, scope: !4011)
!4020 = !DILocation(line: 1009, column: 39, scope: !4011)
!4021 = !DILocation(line: 1010, column: 32, scope: !4011)
!4022 = !DILocation(line: 1010, column: 57, scope: !4011)
!4023 = !DILocalVariable(name: "n", arg: 1, scope: !4024, file: !202, line: 1017, type: !57)
!4024 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !202, file: !202, line: 1017, type: !4025, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !174, variables: !4027)
!4025 = !DISubroutineType(types: !4026)
!4026 = !{!31, !57, !41, !41, !41, !43}
!4027 = !{!4023, !4028, !4029, !4030, !4031, !4032}
!4028 = !DILocalVariable(name: "left_quote", arg: 2, scope: !4024, file: !202, line: 1017, type: !41)
!4029 = !DILocalVariable(name: "right_quote", arg: 3, scope: !4024, file: !202, line: 1018, type: !41)
!4030 = !DILocalVariable(name: "arg", arg: 4, scope: !4024, file: !202, line: 1019, type: !41)
!4031 = !DILocalVariable(name: "argsize", arg: 5, scope: !4024, file: !202, line: 1019, type: !43)
!4032 = !DILocalVariable(name: "o", scope: !4024, file: !202, line: 1021, type: !207)
!4033 = !DILocation(line: 1017, column: 28, scope: !4024, inlinedAt: !4034)
!4034 = distinct !DILocation(line: 1012, column: 10, scope: !4011)
!4035 = !DILocation(line: 1017, column: 43, scope: !4024, inlinedAt: !4034)
!4036 = !DILocation(line: 1018, column: 36, scope: !4024, inlinedAt: !4034)
!4037 = !DILocation(line: 1019, column: 36, scope: !4024, inlinedAt: !4034)
!4038 = !DILocation(line: 1019, column: 48, scope: !4024, inlinedAt: !4034)
!4039 = !DILocation(line: 1021, column: 3, scope: !4024, inlinedAt: !4034)
!4040 = !DILocation(line: 1021, column: 30, scope: !4024, inlinedAt: !4034)
!4041 = !DILocation(line: 1021, column: 26, scope: !4024, inlinedAt: !4034)
!4042 = !DILocation(line: 171, column: 45, scope: !2364, inlinedAt: !4043)
!4043 = distinct !DILocation(line: 1022, column: 3, scope: !4024, inlinedAt: !4034)
!4044 = !DILocation(line: 172, column: 33, scope: !2364, inlinedAt: !4043)
!4045 = !DILocation(line: 172, column: 57, scope: !2364, inlinedAt: !4043)
!4046 = !DILocation(line: 176, column: 6, scope: !2364, inlinedAt: !4043)
!4047 = !DILocation(line: 176, column: 12, scope: !2364, inlinedAt: !4043)
!4048 = !DILocation(line: 177, column: 8, scope: !2380, inlinedAt: !4043)
!4049 = !DILocation(line: 177, column: 23, scope: !2382, inlinedAt: !4043)
!4050 = !DILocation(line: 177, column: 19, scope: !2380, inlinedAt: !4043)
!4051 = !DILocation(line: 178, column: 5, scope: !2380, inlinedAt: !4043)
!4052 = !DILocation(line: 179, column: 6, scope: !2364, inlinedAt: !4043)
!4053 = !DILocation(line: 179, column: 17, scope: !2364, inlinedAt: !4043)
!4054 = !DILocation(line: 180, column: 6, scope: !2364, inlinedAt: !4043)
!4055 = !DILocation(line: 180, column: 18, scope: !2364, inlinedAt: !4043)
!4056 = !DILocation(line: 1023, column: 10, scope: !4024, inlinedAt: !4034)
!4057 = !DILocation(line: 1024, column: 1, scope: !4024, inlinedAt: !4034)
!4058 = !DILocation(line: 1012, column: 3, scope: !4011)
!4059 = !DILocation(line: 1017, column: 28, scope: !4024)
!4060 = !DILocation(line: 1017, column: 43, scope: !4024)
!4061 = !DILocation(line: 1018, column: 36, scope: !4024)
!4062 = !DILocation(line: 1019, column: 36, scope: !4024)
!4063 = !DILocation(line: 1019, column: 48, scope: !4024)
!4064 = !DILocation(line: 1021, column: 3, scope: !4024)
!4065 = !DILocation(line: 1021, column: 30, scope: !4024)
!4066 = !DILocation(line: 1021, column: 26, scope: !4024)
!4067 = !DILocation(line: 171, column: 45, scope: !2364, inlinedAt: !4068)
!4068 = distinct !DILocation(line: 1022, column: 3, scope: !4024)
!4069 = !DILocation(line: 172, column: 33, scope: !2364, inlinedAt: !4068)
!4070 = !DILocation(line: 172, column: 57, scope: !2364, inlinedAt: !4068)
!4071 = !DILocation(line: 176, column: 6, scope: !2364, inlinedAt: !4068)
!4072 = !DILocation(line: 176, column: 12, scope: !2364, inlinedAt: !4068)
!4073 = !DILocation(line: 177, column: 8, scope: !2380, inlinedAt: !4068)
!4074 = !DILocation(line: 177, column: 23, scope: !2382, inlinedAt: !4068)
!4075 = !DILocation(line: 177, column: 19, scope: !2380, inlinedAt: !4068)
!4076 = !DILocation(line: 178, column: 5, scope: !2380, inlinedAt: !4068)
!4077 = !DILocation(line: 179, column: 6, scope: !2364, inlinedAt: !4068)
!4078 = !DILocation(line: 179, column: 17, scope: !2364, inlinedAt: !4068)
!4079 = !DILocation(line: 180, column: 6, scope: !2364, inlinedAt: !4068)
!4080 = !DILocation(line: 180, column: 18, scope: !2364, inlinedAt: !4068)
!4081 = !DILocation(line: 1023, column: 10, scope: !4024)
!4082 = !DILocation(line: 1024, column: 1, scope: !4024)
!4083 = !DILocation(line: 1023, column: 3, scope: !4024)
!4084 = distinct !DISubprogram(name: "quotearg_custom", scope: !202, file: !202, line: 1027, type: !4085, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !174, variables: !4087)
!4085 = !DISubroutineType(types: !4086)
!4086 = !{!31, !41, !41, !41}
!4087 = !{!4088, !4089, !4090}
!4088 = !DILocalVariable(name: "left_quote", arg: 1, scope: !4084, file: !202, line: 1027, type: !41)
!4089 = !DILocalVariable(name: "right_quote", arg: 2, scope: !4084, file: !202, line: 1027, type: !41)
!4090 = !DILocalVariable(name: "arg", arg: 3, scope: !4084, file: !202, line: 1028, type: !41)
!4091 = !DILocation(line: 1027, column: 30, scope: !4084)
!4092 = !DILocation(line: 1027, column: 54, scope: !4084)
!4093 = !DILocation(line: 1028, column: 30, scope: !4084)
!4094 = !DILocation(line: 1009, column: 24, scope: !4011, inlinedAt: !4095)
!4095 = distinct !DILocation(line: 1030, column: 10, scope: !4084)
!4096 = !DILocation(line: 1009, column: 39, scope: !4011, inlinedAt: !4095)
!4097 = !DILocation(line: 1010, column: 32, scope: !4011, inlinedAt: !4095)
!4098 = !DILocation(line: 1010, column: 57, scope: !4011, inlinedAt: !4095)
!4099 = !DILocation(line: 1017, column: 28, scope: !4024, inlinedAt: !4100)
!4100 = distinct !DILocation(line: 1012, column: 10, scope: !4011, inlinedAt: !4095)
!4101 = !DILocation(line: 1017, column: 43, scope: !4024, inlinedAt: !4100)
!4102 = !DILocation(line: 1018, column: 36, scope: !4024, inlinedAt: !4100)
!4103 = !DILocation(line: 1019, column: 36, scope: !4024, inlinedAt: !4100)
!4104 = !DILocation(line: 1019, column: 48, scope: !4024, inlinedAt: !4100)
!4105 = !DILocation(line: 1021, column: 3, scope: !4024, inlinedAt: !4100)
!4106 = !DILocation(line: 1021, column: 30, scope: !4024, inlinedAt: !4100)
!4107 = !DILocation(line: 1021, column: 26, scope: !4024, inlinedAt: !4100)
!4108 = !DILocation(line: 171, column: 45, scope: !2364, inlinedAt: !4109)
!4109 = distinct !DILocation(line: 1022, column: 3, scope: !4024, inlinedAt: !4100)
!4110 = !DILocation(line: 172, column: 33, scope: !2364, inlinedAt: !4109)
!4111 = !DILocation(line: 172, column: 57, scope: !2364, inlinedAt: !4109)
!4112 = !DILocation(line: 176, column: 6, scope: !2364, inlinedAt: !4109)
!4113 = !DILocation(line: 176, column: 12, scope: !2364, inlinedAt: !4109)
!4114 = !DILocation(line: 177, column: 8, scope: !2380, inlinedAt: !4109)
!4115 = !DILocation(line: 177, column: 23, scope: !2382, inlinedAt: !4109)
!4116 = !DILocation(line: 177, column: 19, scope: !2380, inlinedAt: !4109)
!4117 = !DILocation(line: 178, column: 5, scope: !2380, inlinedAt: !4109)
!4118 = !DILocation(line: 179, column: 6, scope: !2364, inlinedAt: !4109)
!4119 = !DILocation(line: 179, column: 17, scope: !2364, inlinedAt: !4109)
!4120 = !DILocation(line: 180, column: 6, scope: !2364, inlinedAt: !4109)
!4121 = !DILocation(line: 180, column: 18, scope: !2364, inlinedAt: !4109)
!4122 = !DILocation(line: 1023, column: 10, scope: !4024, inlinedAt: !4100)
!4123 = !DILocation(line: 1024, column: 1, scope: !4024, inlinedAt: !4100)
!4124 = !DILocation(line: 1030, column: 3, scope: !4084)
!4125 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !202, file: !202, line: 1034, type: !4126, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !174, variables: !4128)
!4126 = !DISubroutineType(types: !4127)
!4127 = !{!31, !41, !41, !41, !43}
!4128 = !{!4129, !4130, !4131, !4132}
!4129 = !DILocalVariable(name: "left_quote", arg: 1, scope: !4125, file: !202, line: 1034, type: !41)
!4130 = !DILocalVariable(name: "right_quote", arg: 2, scope: !4125, file: !202, line: 1034, type: !41)
!4131 = !DILocalVariable(name: "arg", arg: 3, scope: !4125, file: !202, line: 1035, type: !41)
!4132 = !DILocalVariable(name: "argsize", arg: 4, scope: !4125, file: !202, line: 1035, type: !43)
!4133 = !DILocation(line: 1034, column: 34, scope: !4125)
!4134 = !DILocation(line: 1034, column: 58, scope: !4125)
!4135 = !DILocation(line: 1035, column: 34, scope: !4125)
!4136 = !DILocation(line: 1035, column: 46, scope: !4125)
!4137 = !DILocation(line: 1017, column: 28, scope: !4024, inlinedAt: !4138)
!4138 = distinct !DILocation(line: 1037, column: 10, scope: !4125)
!4139 = !DILocation(line: 1017, column: 43, scope: !4024, inlinedAt: !4138)
!4140 = !DILocation(line: 1018, column: 36, scope: !4024, inlinedAt: !4138)
!4141 = !DILocation(line: 1019, column: 36, scope: !4024, inlinedAt: !4138)
!4142 = !DILocation(line: 1019, column: 48, scope: !4024, inlinedAt: !4138)
!4143 = !DILocation(line: 1021, column: 3, scope: !4024, inlinedAt: !4138)
!4144 = !DILocation(line: 1021, column: 30, scope: !4024, inlinedAt: !4138)
!4145 = !DILocation(line: 1021, column: 26, scope: !4024, inlinedAt: !4138)
!4146 = !DILocation(line: 171, column: 45, scope: !2364, inlinedAt: !4147)
!4147 = distinct !DILocation(line: 1022, column: 3, scope: !4024, inlinedAt: !4138)
!4148 = !DILocation(line: 172, column: 33, scope: !2364, inlinedAt: !4147)
!4149 = !DILocation(line: 172, column: 57, scope: !2364, inlinedAt: !4147)
!4150 = !DILocation(line: 176, column: 6, scope: !2364, inlinedAt: !4147)
!4151 = !DILocation(line: 176, column: 12, scope: !2364, inlinedAt: !4147)
!4152 = !DILocation(line: 177, column: 8, scope: !2380, inlinedAt: !4147)
!4153 = !DILocation(line: 177, column: 23, scope: !2382, inlinedAt: !4147)
!4154 = !DILocation(line: 177, column: 19, scope: !2380, inlinedAt: !4147)
!4155 = !DILocation(line: 178, column: 5, scope: !2380, inlinedAt: !4147)
!4156 = !DILocation(line: 179, column: 6, scope: !2364, inlinedAt: !4147)
!4157 = !DILocation(line: 179, column: 17, scope: !2364, inlinedAt: !4147)
!4158 = !DILocation(line: 180, column: 6, scope: !2364, inlinedAt: !4147)
!4159 = !DILocation(line: 180, column: 18, scope: !2364, inlinedAt: !4147)
!4160 = !DILocation(line: 1023, column: 10, scope: !4024, inlinedAt: !4138)
!4161 = !DILocation(line: 1024, column: 1, scope: !4024, inlinedAt: !4138)
!4162 = !DILocation(line: 1037, column: 3, scope: !4125)
!4163 = distinct !DISubprogram(name: "quote_n_mem", scope: !202, file: !202, line: 1052, type: !4164, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !174, variables: !4166)
!4164 = !DISubroutineType(types: !4165)
!4165 = !{!41, !57, !41, !43}
!4166 = !{!4167, !4168, !4169}
!4167 = !DILocalVariable(name: "n", arg: 1, scope: !4163, file: !202, line: 1052, type: !57)
!4168 = !DILocalVariable(name: "arg", arg: 2, scope: !4163, file: !202, line: 1052, type: !41)
!4169 = !DILocalVariable(name: "argsize", arg: 3, scope: !4163, file: !202, line: 1052, type: !43)
!4170 = !DILocation(line: 1052, column: 18, scope: !4163)
!4171 = !DILocation(line: 1052, column: 33, scope: !4163)
!4172 = !DILocation(line: 1052, column: 45, scope: !4163)
!4173 = !DILocation(line: 1054, column: 10, scope: !4163)
!4174 = !DILocation(line: 1054, column: 3, scope: !4163)
!4175 = distinct !DISubprogram(name: "quote_mem", scope: !202, file: !202, line: 1058, type: !4176, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !174, variables: !4178)
!4176 = !DISubroutineType(types: !4177)
!4177 = !{!41, !41, !43}
!4178 = !{!4179, !4180}
!4179 = !DILocalVariable(name: "arg", arg: 1, scope: !4175, file: !202, line: 1058, type: !41)
!4180 = !DILocalVariable(name: "argsize", arg: 2, scope: !4175, file: !202, line: 1058, type: !43)
!4181 = !DILocation(line: 1058, column: 24, scope: !4175)
!4182 = !DILocation(line: 1058, column: 36, scope: !4175)
!4183 = !DILocation(line: 1052, column: 18, scope: !4163, inlinedAt: !4184)
!4184 = distinct !DILocation(line: 1060, column: 10, scope: !4175)
!4185 = !DILocation(line: 1052, column: 33, scope: !4163, inlinedAt: !4184)
!4186 = !DILocation(line: 1052, column: 45, scope: !4163, inlinedAt: !4184)
!4187 = !DILocation(line: 1054, column: 10, scope: !4163, inlinedAt: !4184)
!4188 = !DILocation(line: 1060, column: 3, scope: !4175)
!4189 = distinct !DISubprogram(name: "quote_n", scope: !202, file: !202, line: 1064, type: !4190, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !174, variables: !4192)
!4190 = !DISubroutineType(types: !4191)
!4191 = !{!41, !57, !41}
!4192 = !{!4193, !4194}
!4193 = !DILocalVariable(name: "n", arg: 1, scope: !4189, file: !202, line: 1064, type: !57)
!4194 = !DILocalVariable(name: "arg", arg: 2, scope: !4189, file: !202, line: 1064, type: !41)
!4195 = !DILocation(line: 1064, column: 14, scope: !4189)
!4196 = !DILocation(line: 1064, column: 29, scope: !4189)
!4197 = !DILocation(line: 1052, column: 18, scope: !4163, inlinedAt: !4198)
!4198 = distinct !DILocation(line: 1066, column: 10, scope: !4189)
!4199 = !DILocation(line: 1052, column: 33, scope: !4163, inlinedAt: !4198)
!4200 = !DILocation(line: 1052, column: 45, scope: !4163, inlinedAt: !4198)
!4201 = !DILocation(line: 1054, column: 10, scope: !4163, inlinedAt: !4198)
!4202 = !DILocation(line: 1066, column: 3, scope: !4189)
!4203 = distinct !DISubprogram(name: "quote", scope: !202, file: !202, line: 1070, type: !4204, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !174, variables: !4206)
!4204 = !DISubroutineType(types: !4205)
!4205 = !{!41, !41}
!4206 = !{!4207}
!4207 = !DILocalVariable(name: "arg", arg: 1, scope: !4203, file: !202, line: 1070, type: !41)
!4208 = !DILocation(line: 1070, column: 20, scope: !4203)
!4209 = !DILocation(line: 1064, column: 14, scope: !4189, inlinedAt: !4210)
!4210 = distinct !DILocation(line: 1072, column: 10, scope: !4203)
!4211 = !DILocation(line: 1064, column: 29, scope: !4189, inlinedAt: !4210)
!4212 = !DILocation(line: 1052, column: 18, scope: !4163, inlinedAt: !4213)
!4213 = distinct !DILocation(line: 1066, column: 10, scope: !4189, inlinedAt: !4210)
!4214 = !DILocation(line: 1052, column: 33, scope: !4163, inlinedAt: !4213)
!4215 = !DILocation(line: 1052, column: 45, scope: !4163, inlinedAt: !4213)
!4216 = !DILocation(line: 1054, column: 10, scope: !4163, inlinedAt: !4213)
!4217 = !DILocation(line: 1072, column: 3, scope: !4203)
!4218 = !DILocation(line: 56, column: 14, scope: !611)
!4219 = !DILocation(line: 56, column: 30, scope: !611)
!4220 = !DILocation(line: 56, column: 42, scope: !611)
!4221 = !DILocation(line: 64, column: 3, scope: !611)
!4222 = !DILocation(line: 66, column: 24, scope: !619)
!4223 = !DILocation(line: 66, column: 15, scope: !619)
!4224 = !DILocation(line: 68, column: 13, scope: !4225)
!4225 = distinct !DILexicalBlock(scope: !619, file: !610, line: 68, column: 11)
!4226 = !DILocation(line: 68, column: 11, scope: !619)
!4227 = !DILocation(line: 70, column: 16, scope: !4228)
!4228 = distinct !DILexicalBlock(scope: !4225, file: !610, line: 70, column: 16)
!4229 = !DILocation(line: 70, column: 16, scope: !4225)
!4230 = distinct !{!4230, !4231, !4232}
!4231 = !DILocation(line: 64, column: 3, scope: !621)
!4232 = !DILocation(line: 76, column: 5, scope: !621)
!4233 = !DILocation(line: 72, column: 22, scope: !4234)
!4234 = distinct !DILexicalBlock(scope: !4228, file: !610, line: 72, column: 16)
!4235 = !DILocation(line: 72, column: 54, scope: !4236)
!4236 = !DILexicalBlockFile(scope: !4234, file: !610, discriminator: 1)
!4237 = !DILocation(line: 72, column: 32, scope: !4234)
!4238 = !DILocation(line: 77, column: 1, scope: !611)
!4239 = distinct !DISubprogram(name: "version_etc_arn", scope: !630, file: !630, line: 62, type: !4240, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !626, variables: !4293)
!4240 = !DISubroutineType(types: !4241)
!4241 = !{null, !4242, !41, !41, !41, !39, !43}
!4242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4243, size: 64)
!4243 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !35, line: 49, baseType: !4244)
!4244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !4245, line: 241, size: 1728, elements: !4246)
!4245 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4246 = !{!4247, !4248, !4249, !4250, !4251, !4252, !4253, !4254, !4255, !4256, !4257, !4258, !4259, !4267, !4268, !4269, !4270, !4271, !4272, !4274, !4278, !4281, !4283, !4284, !4285, !4286, !4287, !4288, !4289}
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4244, file: !4245, line: 242, baseType: !57, size: 32)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4244, file: !4245, line: 247, baseType: !31, size: 64, offset: 64)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4244, file: !4245, line: 248, baseType: !31, size: 64, offset: 128)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4244, file: !4245, line: 249, baseType: !31, size: 64, offset: 192)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4244, file: !4245, line: 250, baseType: !31, size: 64, offset: 256)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4244, file: !4245, line: 251, baseType: !31, size: 64, offset: 320)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4244, file: !4245, line: 252, baseType: !31, size: 64, offset: 384)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4244, file: !4245, line: 253, baseType: !31, size: 64, offset: 448)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4244, file: !4245, line: 254, baseType: !31, size: 64, offset: 512)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4244, file: !4245, line: 256, baseType: !31, size: 64, offset: 576)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4244, file: !4245, line: 257, baseType: !31, size: 64, offset: 640)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4244, file: !4245, line: 258, baseType: !31, size: 64, offset: 704)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4244, file: !4245, line: 260, baseType: !4260, size: 64, offset: 768)
!4260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4261, size: 64)
!4261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !4245, line: 156, size: 192, elements: !4262)
!4262 = !{!4263, !4264, !4266}
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4261, file: !4245, line: 157, baseType: !4260, size: 64)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4261, file: !4245, line: 158, baseType: !4265, size: 64, offset: 64)
!4265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4244, size: 64)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4261, file: !4245, line: 162, baseType: !57, size: 32, offset: 128)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4244, file: !4245, line: 262, baseType: !4265, size: 64, offset: 832)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4244, file: !4245, line: 264, baseType: !57, size: 32, offset: 896)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4244, file: !4245, line: 268, baseType: !57, size: 32, offset: 928)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4244, file: !4245, line: 270, baseType: !36, size: 64, offset: 960)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4244, file: !4245, line: 274, baseType: !198, size: 16, offset: 1024)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4244, file: !4245, line: 275, baseType: !4273, size: 8, offset: 1040)
!4273 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4244, file: !4245, line: 276, baseType: !4275, size: 8, offset: 1048)
!4275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 8, elements: !4276)
!4276 = !{!4277}
!4277 = !DISubrange(count: 1)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4244, file: !4245, line: 280, baseType: !4279, size: 64, offset: 1088)
!4279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4280, size: 64)
!4280 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !4245, line: 150, baseType: null)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4244, file: !4245, line: 289, baseType: !4282, size: 64, offset: 1152)
!4282 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !37, line: 141, baseType: !38)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4244, file: !4245, line: 297, baseType: !33, size: 64, offset: 1216)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4244, file: !4245, line: 298, baseType: !33, size: 64, offset: 1280)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4244, file: !4245, line: 299, baseType: !33, size: 64, offset: 1344)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4244, file: !4245, line: 300, baseType: !33, size: 64, offset: 1408)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4244, file: !4245, line: 302, baseType: !43, size: 64, offset: 1472)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4244, file: !4245, line: 303, baseType: !57, size: 32, offset: 1536)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4244, file: !4245, line: 305, baseType: !4290, size: 160, offset: 1568)
!4290 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 160, elements: !4291)
!4291 = !{!4292}
!4292 = !DISubrange(count: 20)
!4293 = !{!4294, !4295, !4296, !4297, !4298, !4299}
!4294 = !DILocalVariable(name: "stream", arg: 1, scope: !4239, file: !630, line: 62, type: !4242)
!4295 = !DILocalVariable(name: "command_name", arg: 2, scope: !4239, file: !630, line: 63, type: !41)
!4296 = !DILocalVariable(name: "package", arg: 3, scope: !4239, file: !630, line: 63, type: !41)
!4297 = !DILocalVariable(name: "version", arg: 4, scope: !4239, file: !630, line: 64, type: !41)
!4298 = !DILocalVariable(name: "authors", arg: 5, scope: !4239, file: !630, line: 65, type: !39)
!4299 = !DILocalVariable(name: "n_authors", arg: 6, scope: !4239, file: !630, line: 65, type: !43)
!4300 = !DILocation(line: 62, column: 24, scope: !4239)
!4301 = !DILocation(line: 63, column: 30, scope: !4239)
!4302 = !DILocation(line: 63, column: 56, scope: !4239)
!4303 = !DILocation(line: 64, column: 30, scope: !4239)
!4304 = !DILocation(line: 65, column: 39, scope: !4239)
!4305 = !DILocation(line: 65, column: 55, scope: !4239)
!4306 = !DILocation(line: 67, column: 7, scope: !4307)
!4307 = distinct !DILexicalBlock(scope: !4239, file: !630, line: 67, column: 7)
!4308 = !DILocation(line: 67, column: 7, scope: !4239)
!4309 = !DILocation(line: 68, column: 5, scope: !4307)
!4310 = !DILocation(line: 70, column: 5, scope: !4307)
!4311 = !DILocation(line: 84, column: 3, scope: !4239)
!4312 = !DILocation(line: 84, column: 3, scope: !4313)
!4313 = !DILexicalBlockFile(scope: !4239, file: !630, discriminator: 1)
!4314 = !DILocation(line: 86, column: 3, scope: !4239)
!4315 = !DILocation(line: 86, column: 3, scope: !4313)
!4316 = !DILocation(line: 95, column: 3, scope: !4239)
!4317 = !DILocation(line: 99, column: 7, scope: !4318)
!4318 = distinct !DILexicalBlock(scope: !4239, file: !630, line: 96, column: 5)
!4319 = !DILocation(line: 102, column: 7, scope: !4318)
!4320 = !DILocation(line: 102, column: 7, scope: !4321)
!4321 = !DILexicalBlockFile(scope: !4318, file: !630, discriminator: 1)
!4322 = !DILocation(line: 103, column: 7, scope: !4318)
!4323 = !DILocation(line: 106, column: 7, scope: !4318)
!4324 = !DILocation(line: 106, column: 7, scope: !4321)
!4325 = !DILocation(line: 107, column: 7, scope: !4318)
!4326 = !DILocation(line: 110, column: 7, scope: !4318)
!4327 = !DILocation(line: 110, column: 7, scope: !4321)
!4328 = !DILocation(line: 112, column: 7, scope: !4318)
!4329 = !DILocation(line: 117, column: 7, scope: !4318)
!4330 = !DILocation(line: 117, column: 7, scope: !4321)
!4331 = !DILocation(line: 119, column: 7, scope: !4318)
!4332 = !DILocation(line: 124, column: 7, scope: !4318)
!4333 = !DILocation(line: 124, column: 7, scope: !4321)
!4334 = !DILocation(line: 126, column: 7, scope: !4318)
!4335 = !DILocation(line: 131, column: 7, scope: !4318)
!4336 = !DILocation(line: 131, column: 7, scope: !4321)
!4337 = !DILocation(line: 134, column: 7, scope: !4318)
!4338 = !DILocation(line: 139, column: 7, scope: !4318)
!4339 = !DILocation(line: 139, column: 7, scope: !4321)
!4340 = !DILocation(line: 142, column: 7, scope: !4318)
!4341 = !DILocation(line: 147, column: 7, scope: !4318)
!4342 = !DILocation(line: 147, column: 7, scope: !4321)
!4343 = !DILocation(line: 151, column: 7, scope: !4318)
!4344 = !DILocation(line: 156, column: 7, scope: !4318)
!4345 = !DILocation(line: 156, column: 7, scope: !4321)
!4346 = !DILocation(line: 160, column: 7, scope: !4318)
!4347 = !DILocation(line: 167, column: 7, scope: !4318)
!4348 = !DILocation(line: 167, column: 7, scope: !4321)
!4349 = !DILocation(line: 171, column: 7, scope: !4318)
!4350 = !DILocation(line: 173, column: 1, scope: !4239)
!4351 = distinct !DISubprogram(name: "version_etc_ar", scope: !630, file: !630, line: 180, type: !4352, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !626, variables: !4354)
!4352 = !DISubroutineType(types: !4353)
!4353 = !{null, !4242, !41, !41, !41, !39}
!4354 = !{!4355, !4356, !4357, !4358, !4359, !4360}
!4355 = !DILocalVariable(name: "stream", arg: 1, scope: !4351, file: !630, line: 180, type: !4242)
!4356 = !DILocalVariable(name: "command_name", arg: 2, scope: !4351, file: !630, line: 181, type: !41)
!4357 = !DILocalVariable(name: "package", arg: 3, scope: !4351, file: !630, line: 181, type: !41)
!4358 = !DILocalVariable(name: "version", arg: 4, scope: !4351, file: !630, line: 182, type: !41)
!4359 = !DILocalVariable(name: "authors", arg: 5, scope: !4351, file: !630, line: 182, type: !39)
!4360 = !DILocalVariable(name: "n_authors", scope: !4351, file: !630, line: 184, type: !43)
!4361 = !DILocation(line: 180, column: 23, scope: !4351)
!4362 = !DILocation(line: 181, column: 29, scope: !4351)
!4363 = !DILocation(line: 181, column: 55, scope: !4351)
!4364 = !DILocation(line: 182, column: 29, scope: !4351)
!4365 = !DILocation(line: 182, column: 59, scope: !4351)
!4366 = !DILocation(line: 184, column: 10, scope: !4351)
!4367 = !DILocation(line: 186, column: 8, scope: !4368)
!4368 = distinct !DILexicalBlock(scope: !4351, file: !630, line: 186, column: 3)
!4369 = !DILocation(line: 186, column: 23, scope: !4370)
!4370 = !DILexicalBlockFile(scope: !4371, file: !630, discriminator: 1)
!4371 = distinct !DILexicalBlock(scope: !4368, file: !630, line: 186, column: 3)
!4372 = !DILocation(line: 186, column: 3, scope: !4373)
!4373 = !DILexicalBlockFile(scope: !4368, file: !630, discriminator: 1)
!4374 = !DILocation(line: 186, column: 52, scope: !4375)
!4375 = !DILexicalBlockFile(scope: !4371, file: !630, discriminator: 3)
!4376 = distinct !{!4376, !4377, !4378}
!4377 = !DILocation(line: 186, column: 3, scope: !4368)
!4378 = !DILocation(line: 187, column: 5, scope: !4368)
!4379 = !DILocation(line: 188, column: 3, scope: !4351)
!4380 = !DILocation(line: 189, column: 1, scope: !4351)
!4381 = distinct !DISubprogram(name: "version_etc_va", scope: !630, file: !630, line: 196, type: !4382, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !626, variables: !4391)
!4382 = !DISubroutineType(types: !4383)
!4383 = !{null, !4242, !41, !41, !41, !4384}
!4384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4385, size: 64)
!4385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !627, line: 189, size: 192, elements: !4386)
!4386 = !{!4387, !4388, !4389, !4390}
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4385, file: !627, line: 189, baseType: !30, size: 32)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4385, file: !627, line: 189, baseType: !30, size: 32, offset: 32)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4385, file: !627, line: 189, baseType: !33, size: 64, offset: 64)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4385, file: !627, line: 189, baseType: !33, size: 64, offset: 128)
!4391 = !{!4392, !4393, !4394, !4395, !4396, !4397, !4398}
!4392 = !DILocalVariable(name: "stream", arg: 1, scope: !4381, file: !630, line: 196, type: !4242)
!4393 = !DILocalVariable(name: "command_name", arg: 2, scope: !4381, file: !630, line: 197, type: !41)
!4394 = !DILocalVariable(name: "package", arg: 3, scope: !4381, file: !630, line: 197, type: !41)
!4395 = !DILocalVariable(name: "version", arg: 4, scope: !4381, file: !630, line: 198, type: !41)
!4396 = !DILocalVariable(name: "authors", arg: 5, scope: !4381, file: !630, line: 198, type: !4384)
!4397 = !DILocalVariable(name: "n_authors", scope: !4381, file: !630, line: 200, type: !43)
!4398 = !DILocalVariable(name: "authtab", scope: !4381, file: !630, line: 201, type: !4399)
!4399 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 640, elements: !142)
!4400 = !DILocation(line: 196, column: 23, scope: !4381)
!4401 = !DILocation(line: 197, column: 29, scope: !4381)
!4402 = !DILocation(line: 197, column: 55, scope: !4381)
!4403 = !DILocation(line: 198, column: 29, scope: !4381)
!4404 = !DILocation(line: 198, column: 46, scope: !4381)
!4405 = !DILocation(line: 201, column: 3, scope: !4381)
!4406 = !DILocation(line: 201, column: 15, scope: !4381)
!4407 = !DILocation(line: 200, column: 10, scope: !4381)
!4408 = !DILocation(line: 205, column: 35, scope: !4409)
!4409 = !DILexicalBlockFile(scope: !4410, file: !630, discriminator: 1)
!4410 = distinct !DILexicalBlock(scope: !4411, file: !630, line: 203, column: 3)
!4411 = distinct !DILexicalBlock(scope: !4381, file: !630, line: 203, column: 3)
!4412 = !DILocation(line: 205, column: 35, scope: !4413)
!4413 = !DILexicalBlockFile(scope: !4410, file: !630, discriminator: 2)
!4414 = !DILocation(line: 205, column: 35, scope: !4415)
!4415 = !DILexicalBlockFile(scope: !4410, file: !630, discriminator: 3)
!4416 = !DILocation(line: 205, column: 35, scope: !4417)
!4417 = !DILexicalBlockFile(scope: !4410, file: !630, discriminator: 4)
!4418 = !DILocation(line: 205, column: 14, scope: !4417)
!4419 = !DILocation(line: 205, column: 33, scope: !4417)
!4420 = !DILocation(line: 205, column: 67, scope: !4417)
!4421 = !DILocation(line: 203, column: 3, scope: !4422)
!4422 = !DILexicalBlockFile(scope: !4411, file: !630, discriminator: 1)
!4423 = !DILocation(line: 208, column: 3, scope: !4381)
!4424 = !DILocation(line: 210, column: 1, scope: !4381)
!4425 = distinct !DISubprogram(name: "version_etc", scope: !630, file: !630, line: 227, type: !4426, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !626, variables: !4428)
!4426 = !DISubroutineType(types: !4427)
!4427 = !{null, !4242, !41, !41, !41, null}
!4428 = !{!4429, !4430, !4431, !4432, !4433}
!4429 = !DILocalVariable(name: "stream", arg: 1, scope: !4425, file: !630, line: 227, type: !4242)
!4430 = !DILocalVariable(name: "command_name", arg: 2, scope: !4425, file: !630, line: 228, type: !41)
!4431 = !DILocalVariable(name: "package", arg: 3, scope: !4425, file: !630, line: 228, type: !41)
!4432 = !DILocalVariable(name: "version", arg: 4, scope: !4425, file: !630, line: 229, type: !41)
!4433 = !DILocalVariable(name: "authors", scope: !4425, file: !630, line: 231, type: !4434)
!4434 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !35, line: 80, baseType: !4435)
!4435 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !4436, line: 50, baseType: !4437)
!4436 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4437 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !627, line: 231, baseType: !4438)
!4438 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4385, size: 192, elements: !4276)
!4439 = !DILocation(line: 227, column: 20, scope: !4425)
!4440 = !DILocation(line: 228, column: 26, scope: !4425)
!4441 = !DILocation(line: 228, column: 52, scope: !4425)
!4442 = !DILocation(line: 229, column: 26, scope: !4425)
!4443 = !DILocation(line: 231, column: 3, scope: !4425)
!4444 = !DILocation(line: 231, column: 11, scope: !4425)
!4445 = !DILocation(line: 233, column: 3, scope: !4425)
!4446 = !DILocation(line: 234, column: 3, scope: !4425)
!4447 = !DILocation(line: 235, column: 3, scope: !4425)
!4448 = !DILocation(line: 236, column: 1, scope: !4425)
!4449 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !630, file: !630, line: 239, type: !718, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !626, variables: !148)
!4450 = !DILocation(line: 245, column: 3, scope: !4449)
!4451 = !DILocation(line: 245, column: 3, scope: !4452)
!4452 = !DILexicalBlockFile(scope: !4449, file: !630, discriminator: 1)
!4453 = !DILocation(line: 251, column: 3, scope: !4449)
!4454 = !DILocation(line: 251, column: 3, scope: !4452)
!4455 = !DILocation(line: 256, column: 3, scope: !4449)
!4456 = !DILocation(line: 256, column: 3, scope: !4452)
!4457 = !DILocation(line: 258, column: 1, scope: !4449)
!4458 = distinct !DISubprogram(name: "xnmalloc", scope: !638, file: !638, line: 105, type: !1632, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !634, variables: !4459)
!4459 = !{!4460, !4461}
!4460 = !DILocalVariable(name: "n", arg: 1, scope: !4458, file: !638, line: 105, type: !43)
!4461 = !DILocalVariable(name: "s", arg: 2, scope: !4458, file: !638, line: 105, type: !43)
!4462 = !DILocation(line: 105, column: 18, scope: !4458)
!4463 = !DILocation(line: 105, column: 28, scope: !4458)
!4464 = !DILocation(line: 107, column: 7, scope: !4465)
!4465 = distinct !DILexicalBlock(scope: !4458, file: !638, line: 107, column: 7)
!4466 = !DILocation(line: 107, column: 7, scope: !4458)
!4467 = !DILocation(line: 108, column: 5, scope: !4465)
!4468 = !DILocation(line: 109, column: 21, scope: !4458)
!4469 = !DILocalVariable(name: "n", arg: 1, scope: !4470, file: !4471, line: 39, type: !43)
!4470 = distinct !DISubprogram(name: "xmalloc", scope: !4471, file: !4471, line: 39, type: !4472, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !634, variables: !4474)
!4471 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4472 = !DISubroutineType(types: !4473)
!4473 = !{!33, !43}
!4474 = !{!4469, !4475}
!4475 = !DILocalVariable(name: "p", scope: !4470, file: !4471, line: 41, type: !33)
!4476 = !DILocation(line: 39, column: 17, scope: !4470, inlinedAt: !4477)
!4477 = distinct !DILocation(line: 109, column: 10, scope: !4458)
!4478 = !DILocation(line: 41, column: 13, scope: !4470, inlinedAt: !4477)
!4479 = !DILocation(line: 41, column: 9, scope: !4470, inlinedAt: !4477)
!4480 = !DILocation(line: 42, column: 8, scope: !4481, inlinedAt: !4477)
!4481 = distinct !DILexicalBlock(scope: !4470, file: !4471, line: 42, column: 7)
!4482 = !DILocation(line: 42, column: 15, scope: !4483, inlinedAt: !4477)
!4483 = !DILexicalBlockFile(scope: !4481, file: !4471, discriminator: 1)
!4484 = !DILocation(line: 42, column: 10, scope: !4481, inlinedAt: !4477)
!4485 = !DILocation(line: 43, column: 5, scope: !4481, inlinedAt: !4477)
!4486 = !DILocation(line: 109, column: 3, scope: !4458)
!4487 = !DILocation(line: 39, column: 17, scope: !4470)
!4488 = !DILocation(line: 41, column: 13, scope: !4470)
!4489 = !DILocation(line: 41, column: 9, scope: !4470)
!4490 = !DILocation(line: 42, column: 8, scope: !4481)
!4491 = !DILocation(line: 42, column: 15, scope: !4483)
!4492 = !DILocation(line: 42, column: 10, scope: !4481)
!4493 = !DILocation(line: 43, column: 5, scope: !4481)
!4494 = !DILocation(line: 44, column: 3, scope: !4470)
!4495 = distinct !DISubprogram(name: "xnrealloc", scope: !638, file: !638, line: 118, type: !1720, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !634, variables: !4496)
!4496 = !{!4497, !4498, !4499}
!4497 = !DILocalVariable(name: "p", arg: 1, scope: !4495, file: !638, line: 118, type: !33)
!4498 = !DILocalVariable(name: "n", arg: 2, scope: !4495, file: !638, line: 118, type: !43)
!4499 = !DILocalVariable(name: "s", arg: 3, scope: !4495, file: !638, line: 118, type: !43)
!4500 = !DILocation(line: 118, column: 18, scope: !4495)
!4501 = !DILocation(line: 118, column: 28, scope: !4495)
!4502 = !DILocation(line: 118, column: 38, scope: !4495)
!4503 = !DILocation(line: 120, column: 7, scope: !4504)
!4504 = distinct !DILexicalBlock(scope: !4495, file: !638, line: 120, column: 7)
!4505 = !DILocation(line: 120, column: 7, scope: !4495)
!4506 = !DILocation(line: 121, column: 5, scope: !4504)
!4507 = !DILocation(line: 122, column: 25, scope: !4495)
!4508 = !DILocalVariable(name: "p", arg: 1, scope: !4509, file: !4471, line: 51, type: !33)
!4509 = distinct !DISubprogram(name: "xrealloc", scope: !4471, file: !4471, line: 51, type: !4510, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !634, variables: !4512)
!4510 = !DISubroutineType(types: !4511)
!4511 = !{!33, !33, !43}
!4512 = !{!4508, !4513}
!4513 = !DILocalVariable(name: "n", arg: 2, scope: !4509, file: !4471, line: 51, type: !43)
!4514 = !DILocation(line: 51, column: 17, scope: !4509, inlinedAt: !4515)
!4515 = distinct !DILocation(line: 122, column: 10, scope: !4495)
!4516 = !DILocation(line: 51, column: 27, scope: !4509, inlinedAt: !4515)
!4517 = !DILocation(line: 53, column: 8, scope: !4518, inlinedAt: !4515)
!4518 = distinct !DILexicalBlock(scope: !4509, file: !4471, line: 53, column: 7)
!4519 = !DILocation(line: 53, column: 13, scope: !4520, inlinedAt: !4515)
!4520 = !DILexicalBlockFile(scope: !4518, file: !4471, discriminator: 1)
!4521 = !DILocation(line: 53, column: 10, scope: !4518, inlinedAt: !4515)
!4522 = !DILocation(line: 57, column: 7, scope: !4523, inlinedAt: !4515)
!4523 = distinct !DILexicalBlock(scope: !4518, file: !4471, line: 54, column: 5)
!4524 = !DILocation(line: 58, column: 7, scope: !4523, inlinedAt: !4515)
!4525 = !DILocation(line: 61, column: 7, scope: !4509, inlinedAt: !4515)
!4526 = !DILocation(line: 62, column: 8, scope: !4527, inlinedAt: !4515)
!4527 = distinct !DILexicalBlock(scope: !4509, file: !4471, line: 62, column: 7)
!4528 = !DILocation(line: 62, column: 13, scope: !4529, inlinedAt: !4515)
!4529 = !DILexicalBlockFile(scope: !4527, file: !4471, discriminator: 1)
!4530 = !DILocation(line: 62, column: 10, scope: !4527, inlinedAt: !4515)
!4531 = !DILocation(line: 63, column: 5, scope: !4527, inlinedAt: !4515)
!4532 = !DILocation(line: 122, column: 3, scope: !4495)
!4533 = !DILocation(line: 51, column: 17, scope: !4509)
!4534 = !DILocation(line: 51, column: 27, scope: !4509)
!4535 = !DILocation(line: 53, column: 8, scope: !4518)
!4536 = !DILocation(line: 53, column: 13, scope: !4520)
!4537 = !DILocation(line: 53, column: 10, scope: !4518)
!4538 = !DILocation(line: 57, column: 7, scope: !4523)
!4539 = !DILocation(line: 58, column: 7, scope: !4523)
!4540 = !DILocation(line: 61, column: 7, scope: !4509)
!4541 = !DILocation(line: 62, column: 8, scope: !4527)
!4542 = !DILocation(line: 62, column: 13, scope: !4529)
!4543 = !DILocation(line: 62, column: 10, scope: !4527)
!4544 = !DILocation(line: 63, column: 5, scope: !4527)
!4545 = !DILocation(line: 65, column: 1, scope: !4509)
!4546 = !DILocation(line: 180, column: 19, scope: !639)
!4547 = !DILocation(line: 180, column: 30, scope: !639)
!4548 = !DILocation(line: 180, column: 41, scope: !639)
!4549 = !DILocation(line: 182, column: 14, scope: !639)
!4550 = !DILocation(line: 182, column: 10, scope: !639)
!4551 = !DILocation(line: 184, column: 9, scope: !4552)
!4552 = distinct !DILexicalBlock(scope: !639, file: !638, line: 184, column: 7)
!4553 = !DILocation(line: 184, column: 7, scope: !639)
!4554 = !DILocation(line: 186, column: 13, scope: !4555)
!4555 = distinct !DILexicalBlock(scope: !4556, file: !638, line: 186, column: 11)
!4556 = distinct !DILexicalBlock(scope: !4552, file: !638, line: 185, column: 5)
!4557 = !DILocation(line: 186, column: 11, scope: !4556)
!4558 = !DILocation(line: 194, column: 30, scope: !4559)
!4559 = distinct !DILexicalBlock(scope: !4555, file: !638, line: 187, column: 9)
!4560 = !DILocation(line: 195, column: 16, scope: !4559)
!4561 = !DILocation(line: 195, column: 13, scope: !4559)
!4562 = !DILocation(line: 196, column: 9, scope: !4559)
!4563 = !DILocation(line: 204, column: 69, scope: !4564)
!4564 = distinct !DILexicalBlock(scope: !4565, file: !638, line: 204, column: 11)
!4565 = distinct !DILexicalBlock(scope: !4552, file: !638, line: 199, column: 5)
!4566 = !DILocation(line: 205, column: 11, scope: !4564)
!4567 = !DILocation(line: 204, column: 11, scope: !4565)
!4568 = !DILocation(line: 206, column: 9, scope: !4564)
!4569 = !DILocation(line: 210, column: 7, scope: !639)
!4570 = !DILocation(line: 211, column: 25, scope: !639)
!4571 = !DILocation(line: 51, column: 17, scope: !4509, inlinedAt: !4572)
!4572 = distinct !DILocation(line: 211, column: 10, scope: !639)
!4573 = !DILocation(line: 51, column: 27, scope: !4509, inlinedAt: !4572)
!4574 = !DILocation(line: 53, column: 10, scope: !4518, inlinedAt: !4572)
!4575 = !DILocation(line: 207, column: 14, scope: !4565)
!4576 = !DILocation(line: 207, column: 18, scope: !4565)
!4577 = !DILocation(line: 207, column: 9, scope: !4565)
!4578 = !DILocation(line: 53, column: 8, scope: !4518, inlinedAt: !4572)
!4579 = !DILocation(line: 57, column: 7, scope: !4523, inlinedAt: !4572)
!4580 = !DILocation(line: 58, column: 7, scope: !4523, inlinedAt: !4572)
!4581 = !DILocation(line: 61, column: 7, scope: !4509, inlinedAt: !4572)
!4582 = !DILocation(line: 62, column: 8, scope: !4527, inlinedAt: !4572)
!4583 = !DILocation(line: 62, column: 13, scope: !4529, inlinedAt: !4572)
!4584 = !DILocation(line: 62, column: 10, scope: !4527, inlinedAt: !4572)
!4585 = !DILocation(line: 63, column: 5, scope: !4527, inlinedAt: !4572)
!4586 = !DILocation(line: 211, column: 3, scope: !639)
!4587 = distinct !DISubprogram(name: "xcharalloc", scope: !638, file: !638, line: 220, type: !3493, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !634, variables: !4588)
!4588 = !{!4589}
!4589 = !DILocalVariable(name: "n", arg: 1, scope: !4587, file: !638, line: 220, type: !43)
!4590 = !DILocation(line: 220, column: 20, scope: !4587)
!4591 = !DILocation(line: 39, column: 17, scope: !4470, inlinedAt: !4592)
!4592 = distinct !DILocation(line: 222, column: 10, scope: !4587)
!4593 = !DILocation(line: 41, column: 13, scope: !4470, inlinedAt: !4592)
!4594 = !DILocation(line: 41, column: 9, scope: !4470, inlinedAt: !4592)
!4595 = !DILocation(line: 42, column: 8, scope: !4481, inlinedAt: !4592)
!4596 = !DILocation(line: 42, column: 15, scope: !4483, inlinedAt: !4592)
!4597 = !DILocation(line: 42, column: 10, scope: !4481, inlinedAt: !4592)
!4598 = !DILocation(line: 43, column: 5, scope: !4481, inlinedAt: !4592)
!4599 = !DILocation(line: 222, column: 3, scope: !4587)
!4600 = distinct !DISubprogram(name: "x2realloc", scope: !4471, file: !4471, line: 74, type: !4601, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !634, variables: !4603)
!4601 = !DISubroutineType(types: !4602)
!4602 = !{!33, !33, !642}
!4603 = !{!4604, !4605}
!4604 = !DILocalVariable(name: "p", arg: 1, scope: !4600, file: !4471, line: 74, type: !33)
!4605 = !DILocalVariable(name: "pn", arg: 2, scope: !4600, file: !4471, line: 74, type: !642)
!4606 = !DILocation(line: 74, column: 18, scope: !4600)
!4607 = !DILocation(line: 74, column: 29, scope: !4600)
!4608 = !DILocation(line: 180, column: 19, scope: !639, inlinedAt: !4609)
!4609 = distinct !DILocation(line: 76, column: 10, scope: !4600)
!4610 = !DILocation(line: 180, column: 30, scope: !639, inlinedAt: !4609)
!4611 = !DILocation(line: 180, column: 41, scope: !639, inlinedAt: !4609)
!4612 = !DILocation(line: 182, column: 14, scope: !639, inlinedAt: !4609)
!4613 = !DILocation(line: 182, column: 10, scope: !639, inlinedAt: !4609)
!4614 = !DILocation(line: 184, column: 9, scope: !4552, inlinedAt: !4609)
!4615 = !DILocation(line: 184, column: 7, scope: !639, inlinedAt: !4609)
!4616 = !DILocation(line: 186, column: 13, scope: !4555, inlinedAt: !4609)
!4617 = !DILocation(line: 186, column: 11, scope: !4556, inlinedAt: !4609)
!4618 = !DILocation(line: 210, column: 7, scope: !639, inlinedAt: !4609)
!4619 = !DILocation(line: 51, column: 17, scope: !4509, inlinedAt: !4620)
!4620 = distinct !DILocation(line: 211, column: 10, scope: !639, inlinedAt: !4609)
!4621 = !DILocation(line: 51, column: 27, scope: !4509, inlinedAt: !4620)
!4622 = !DILocation(line: 53, column: 10, scope: !4518, inlinedAt: !4620)
!4623 = !DILocation(line: 205, column: 11, scope: !4564, inlinedAt: !4609)
!4624 = !DILocation(line: 204, column: 11, scope: !4565, inlinedAt: !4609)
!4625 = !DILocation(line: 206, column: 9, scope: !4564, inlinedAt: !4609)
!4626 = !DILocation(line: 207, column: 14, scope: !4565, inlinedAt: !4609)
!4627 = !DILocation(line: 207, column: 18, scope: !4565, inlinedAt: !4609)
!4628 = !DILocation(line: 207, column: 9, scope: !4565, inlinedAt: !4609)
!4629 = !DILocation(line: 53, column: 8, scope: !4518, inlinedAt: !4620)
!4630 = !DILocation(line: 57, column: 7, scope: !4523, inlinedAt: !4620)
!4631 = !DILocation(line: 58, column: 7, scope: !4523, inlinedAt: !4620)
!4632 = !DILocation(line: 61, column: 7, scope: !4509, inlinedAt: !4620)
!4633 = !DILocation(line: 62, column: 8, scope: !4527, inlinedAt: !4620)
!4634 = !DILocation(line: 62, column: 13, scope: !4529, inlinedAt: !4620)
!4635 = !DILocation(line: 62, column: 10, scope: !4527, inlinedAt: !4620)
!4636 = !DILocation(line: 63, column: 5, scope: !4527, inlinedAt: !4620)
!4637 = !DILocation(line: 76, column: 3, scope: !4600)
!4638 = distinct !DISubprogram(name: "xzalloc", scope: !4471, file: !4471, line: 84, type: !4472, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !634, variables: !4639)
!4639 = !{!4640}
!4640 = !DILocalVariable(name: "s", arg: 1, scope: !4638, file: !4471, line: 84, type: !43)
!4641 = !DILocation(line: 84, column: 17, scope: !4638)
!4642 = !DILocation(line: 39, column: 17, scope: !4470, inlinedAt: !4643)
!4643 = distinct !DILocation(line: 86, column: 18, scope: !4638)
!4644 = !DILocation(line: 41, column: 13, scope: !4470, inlinedAt: !4643)
!4645 = !DILocation(line: 41, column: 9, scope: !4470, inlinedAt: !4643)
!4646 = !DILocation(line: 42, column: 8, scope: !4481, inlinedAt: !4643)
!4647 = !DILocation(line: 42, column: 15, scope: !4483, inlinedAt: !4643)
!4648 = !DILocation(line: 42, column: 10, scope: !4481, inlinedAt: !4643)
!4649 = !DILocation(line: 43, column: 5, scope: !4481, inlinedAt: !4643)
!4650 = !DILocation(line: 86, column: 10, scope: !4638)
!4651 = !DILocation(line: 86, column: 3, scope: !4638)
!4652 = distinct !DISubprogram(name: "xcalloc", scope: !4471, file: !4471, line: 93, type: !1632, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !634, variables: !4653)
!4653 = !{!4654, !4655, !4656}
!4654 = !DILocalVariable(name: "n", arg: 1, scope: !4652, file: !4471, line: 93, type: !43)
!4655 = !DILocalVariable(name: "s", arg: 2, scope: !4652, file: !4471, line: 93, type: !43)
!4656 = !DILocalVariable(name: "p", scope: !4652, file: !4471, line: 95, type: !33)
!4657 = !DILocation(line: 93, column: 17, scope: !4652)
!4658 = !DILocation(line: 93, column: 27, scope: !4652)
!4659 = !DILocation(line: 100, column: 7, scope: !4660)
!4660 = distinct !DILexicalBlock(scope: !4652, file: !4471, line: 100, column: 7)
!4661 = !DILocation(line: 101, column: 7, scope: !4660)
!4662 = !DILocation(line: 101, column: 18, scope: !4663)
!4663 = !DILexicalBlockFile(scope: !4660, file: !4471, discriminator: 1)
!4664 = !DILocation(line: 95, column: 9, scope: !4652)
!4665 = !DILocation(line: 101, column: 16, scope: !4663)
!4666 = !DILocation(line: 100, column: 7, scope: !4667)
!4667 = !DILexicalBlockFile(scope: !4652, file: !4471, discriminator: 1)
!4668 = !DILocation(line: 102, column: 5, scope: !4660)
!4669 = !DILocation(line: 103, column: 3, scope: !4652)
!4670 = distinct !DISubprogram(name: "xmemdup", scope: !4471, file: !4471, line: 111, type: !4671, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !634, variables: !4673)
!4671 = !DISubroutineType(types: !4672)
!4672 = !{!33, !46, !43}
!4673 = !{!4674, !4675}
!4674 = !DILocalVariable(name: "p", arg: 1, scope: !4670, file: !4471, line: 111, type: !46)
!4675 = !DILocalVariable(name: "s", arg: 2, scope: !4670, file: !4471, line: 111, type: !43)
!4676 = !DILocation(line: 111, column: 22, scope: !4670)
!4677 = !DILocation(line: 111, column: 32, scope: !4670)
!4678 = !DILocation(line: 39, column: 17, scope: !4470, inlinedAt: !4679)
!4679 = distinct !DILocation(line: 113, column: 18, scope: !4670)
!4680 = !DILocation(line: 41, column: 13, scope: !4470, inlinedAt: !4679)
!4681 = !DILocation(line: 41, column: 9, scope: !4470, inlinedAt: !4679)
!4682 = !DILocation(line: 42, column: 8, scope: !4481, inlinedAt: !4679)
!4683 = !DILocation(line: 42, column: 15, scope: !4483, inlinedAt: !4679)
!4684 = !DILocation(line: 42, column: 10, scope: !4481, inlinedAt: !4679)
!4685 = !DILocation(line: 43, column: 5, scope: !4481, inlinedAt: !4679)
!4686 = !DILocation(line: 113, column: 10, scope: !4670)
!4687 = !DILocation(line: 113, column: 3, scope: !4670)
!4688 = distinct !DISubprogram(name: "xstrdup", scope: !4471, file: !4471, line: 119, type: !3697, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !634, variables: !4689)
!4689 = !{!4690}
!4690 = !DILocalVariable(name: "string", arg: 1, scope: !4688, file: !4471, line: 119, type: !41)
!4691 = !DILocation(line: 119, column: 22, scope: !4688)
!4692 = !DILocation(line: 121, column: 27, scope: !4688)
!4693 = !DILocation(line: 121, column: 43, scope: !4688)
!4694 = !DILocation(line: 111, column: 22, scope: !4670, inlinedAt: !4695)
!4695 = distinct !DILocation(line: 121, column: 10, scope: !4696)
!4696 = !DILexicalBlockFile(scope: !4688, file: !4471, discriminator: 1)
!4697 = !DILocation(line: 111, column: 32, scope: !4670, inlinedAt: !4695)
!4698 = !DILocation(line: 39, column: 17, scope: !4470, inlinedAt: !4699)
!4699 = distinct !DILocation(line: 113, column: 18, scope: !4670, inlinedAt: !4695)
!4700 = !DILocation(line: 41, column: 13, scope: !4470, inlinedAt: !4699)
!4701 = !DILocation(line: 41, column: 9, scope: !4470, inlinedAt: !4699)
!4702 = !DILocation(line: 42, column: 8, scope: !4481, inlinedAt: !4699)
!4703 = !DILocation(line: 42, column: 15, scope: !4483, inlinedAt: !4699)
!4704 = !DILocation(line: 42, column: 10, scope: !4481, inlinedAt: !4699)
!4705 = !DILocation(line: 43, column: 5, scope: !4481, inlinedAt: !4699)
!4706 = !DILocation(line: 113, column: 10, scope: !4670, inlinedAt: !4695)
!4707 = !DILocation(line: 121, column: 3, scope: !4688)
!4708 = distinct !DISubprogram(name: "xalloc_die", scope: !4709, file: !4709, line: 32, type: !718, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !651, variables: !148)
!4709 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4710 = !DILocation(line: 34, column: 10, scope: !4708)
!4711 = !DILocation(line: 34, column: 33, scope: !4708)
!4712 = !DILocation(line: 34, column: 3, scope: !4713)
!4713 = !DILexicalBlockFile(scope: !4708, file: !4709, discriminator: 1)
!4714 = !DILocation(line: 40, column: 3, scope: !4708)
!4715 = distinct !DISubprogram(name: "xnumtoumax", scope: !4716, file: !4716, line: 36, type: !4717, isLocal: false, isDefinition: true, scopeLine: 38, flags: DIFlagPrototyped, isOptimized: true, unit: !653, variables: !4719)
!4716 = !DIFile(filename: "./lib/xdectoint.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4717 = !DISubroutineType(types: !4718)
!4718 = !{!68, !41, !57, !68, !68, !41, !41, !57}
!4719 = !{!4720, !4721, !4722, !4723, !4724, !4725, !4726, !4727, !4729}
!4720 = !DILocalVariable(name: "n_str", arg: 1, scope: !4715, file: !4716, line: 36, type: !41)
!4721 = !DILocalVariable(name: "base", arg: 2, scope: !4715, file: !4716, line: 36, type: !57)
!4722 = !DILocalVariable(name: "min", arg: 3, scope: !4715, file: !4716, line: 36, type: !68)
!4723 = !DILocalVariable(name: "max", arg: 4, scope: !4715, file: !4716, line: 36, type: !68)
!4724 = !DILocalVariable(name: "suffixes", arg: 5, scope: !4715, file: !4716, line: 37, type: !41)
!4725 = !DILocalVariable(name: "err", arg: 6, scope: !4715, file: !4716, line: 37, type: !41)
!4726 = !DILocalVariable(name: "err_exit", arg: 7, scope: !4715, file: !4716, line: 37, type: !57)
!4727 = !DILocalVariable(name: "s_err", scope: !4715, file: !4716, line: 39, type: !4728)
!4728 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !657, line: 39, baseType: !656)
!4729 = !DILocalVariable(name: "tnum", scope: !4715, file: !4716, line: 41, type: !68)
!4730 = !DILocation(line: 36, column: 26, scope: !4715)
!4731 = !DILocation(line: 36, column: 37, scope: !4715)
!4732 = !DILocation(line: 36, column: 57, scope: !4715)
!4733 = !DILocation(line: 36, column: 76, scope: !4715)
!4734 = !DILocation(line: 37, column: 26, scope: !4715)
!4735 = !DILocation(line: 37, column: 48, scope: !4715)
!4736 = !DILocation(line: 37, column: 57, scope: !4715)
!4737 = !DILocation(line: 41, column: 3, scope: !4715)
!4738 = !DILocation(line: 41, column: 17, scope: !4715)
!4739 = !DILocation(line: 42, column: 11, scope: !4715)
!4740 = !DILocation(line: 39, column: 16, scope: !4715)
!4741 = !DILocation(line: 44, column: 7, scope: !4715)
!4742 = !DILocation(line: 69, column: 50, scope: !4743)
!4743 = !DILexicalBlockFile(scope: !4744, file: !4716, discriminator: 3)
!4744 = distinct !DILexicalBlock(scope: !4745, file: !4716, line: 67, column: 5)
!4745 = distinct !DILexicalBlock(scope: !4715, file: !4716, line: 66, column: 7)
!4746 = !DILocation(line: 46, column: 11, scope: !4747)
!4747 = distinct !DILexicalBlock(scope: !4748, file: !4716, line: 46, column: 11)
!4748 = distinct !DILexicalBlock(scope: !4749, file: !4716, line: 45, column: 5)
!4749 = distinct !DILexicalBlock(scope: !4715, file: !4716, line: 44, column: 7)
!4750 = !DILocation(line: 46, column: 16, scope: !4747)
!4751 = !DILocation(line: 46, column: 29, scope: !4752)
!4752 = !DILexicalBlockFile(scope: !4747, file: !4716, discriminator: 1)
!4753 = !DILocation(line: 46, column: 22, scope: !4747)
!4754 = !DILocation(line: 51, column: 20, scope: !4755)
!4755 = distinct !DILexicalBlock(scope: !4756, file: !4716, line: 51, column: 15)
!4756 = distinct !DILexicalBlock(scope: !4747, file: !4716, line: 47, column: 9)
!4757 = !DILocation(line: 52, column: 13, scope: !4755)
!4758 = !DILocation(line: 51, column: 15, scope: !4756)
!4759 = !DILocation(line: 59, column: 9, scope: !4756)
!4760 = !DILocation(line: 62, column: 5, scope: !4761)
!4761 = distinct !DILexicalBlock(scope: !4749, file: !4716, line: 61, column: 12)
!4762 = !DILocation(line: 62, column: 11, scope: !4761)
!4763 = !DILocation(line: 64, column: 5, scope: !4764)
!4764 = distinct !DILexicalBlock(scope: !4761, file: !4716, line: 63, column: 12)
!4765 = !DILocation(line: 64, column: 11, scope: !4764)
!4766 = !DILocation(line: 69, column: 14, scope: !4744)
!4767 = !DILocation(line: 69, column: 56, scope: !4743)
!4768 = !DILocation(line: 70, column: 29, scope: !4744)
!4769 = !DILocation(line: 69, column: 7, scope: !4770)
!4770 = !DILexicalBlockFile(scope: !4744, file: !4716, discriminator: 6)
!4771 = !DILocation(line: 71, column: 5, scope: !4744)
!4772 = !DILocation(line: 73, column: 10, scope: !4715)
!4773 = !DILocation(line: 74, column: 1, scope: !4715)
!4774 = !DILocation(line: 73, column: 3, scope: !4715)
!4775 = distinct !DISubprogram(name: "xdectoumax", scope: !4716, file: !4716, line: 82, type: !4776, isLocal: false, isDefinition: true, scopeLine: 84, flags: DIFlagPrototyped, isOptimized: true, unit: !653, variables: !4778)
!4776 = !DISubroutineType(types: !4777)
!4777 = !{!68, !41, !68, !68, !41, !41, !57}
!4778 = !{!4779, !4780, !4781, !4782, !4783, !4784}
!4779 = !DILocalVariable(name: "n_str", arg: 1, scope: !4775, file: !4716, line: 82, type: !41)
!4780 = !DILocalVariable(name: "min", arg: 2, scope: !4775, file: !4716, line: 82, type: !68)
!4781 = !DILocalVariable(name: "max", arg: 3, scope: !4775, file: !4716, line: 82, type: !68)
!4782 = !DILocalVariable(name: "suffixes", arg: 4, scope: !4775, file: !4716, line: 83, type: !41)
!4783 = !DILocalVariable(name: "err", arg: 5, scope: !4775, file: !4716, line: 83, type: !41)
!4784 = !DILocalVariable(name: "err_exit", arg: 6, scope: !4775, file: !4716, line: 83, type: !57)
!4785 = !DILocation(line: 82, column: 26, scope: !4775)
!4786 = !DILocation(line: 82, column: 47, scope: !4775)
!4787 = !DILocation(line: 82, column: 66, scope: !4775)
!4788 = !DILocation(line: 83, column: 26, scope: !4775)
!4789 = !DILocation(line: 83, column: 48, scope: !4775)
!4790 = !DILocation(line: 83, column: 57, scope: !4775)
!4791 = !DILocation(line: 85, column: 10, scope: !4775)
!4792 = !DILocation(line: 85, column: 3, scope: !4775)
!4793 = distinct !DISubprogram(name: "xstrtoumax", scope: !4794, file: !4794, line: 88, type: !4795, isLocal: false, isDefinition: true, scopeLine: 90, flags: DIFlagPrototyped, isOptimized: true, unit: !664, variables: !4798)
!4794 = !DIFile(filename: "./lib/xstrtol.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4795 = !DISubroutineType(types: !4796)
!4796 = !{!4728, !41, !58, !57, !4797, !41}
!4797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!4798 = !{!4799, !4800, !4801, !4802, !4803, !4804, !4805, !4806, !4807, !4808, !4811, !4812, !4815, !4816}
!4799 = !DILocalVariable(name: "s", arg: 1, scope: !4793, file: !4794, line: 88, type: !41)
!4800 = !DILocalVariable(name: "ptr", arg: 2, scope: !4793, file: !4794, line: 88, type: !58)
!4801 = !DILocalVariable(name: "strtol_base", arg: 3, scope: !4793, file: !4794, line: 88, type: !57)
!4802 = !DILocalVariable(name: "val", arg: 4, scope: !4793, file: !4794, line: 89, type: !4797)
!4803 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !4793, file: !4794, line: 89, type: !41)
!4804 = !DILocalVariable(name: "t_ptr", scope: !4793, file: !4794, line: 91, type: !31)
!4805 = !DILocalVariable(name: "p", scope: !4793, file: !4794, line: 92, type: !58)
!4806 = !DILocalVariable(name: "tmp", scope: !4793, file: !4794, line: 93, type: !68)
!4807 = !DILocalVariable(name: "err", scope: !4793, file: !4794, line: 94, type: !4728)
!4808 = !DILocalVariable(name: "q", scope: !4809, file: !4794, line: 104, type: !41)
!4809 = distinct !DILexicalBlock(scope: !4810, file: !4794, line: 103, column: 5)
!4810 = distinct !DILexicalBlock(scope: !4793, file: !4794, line: 102, column: 7)
!4811 = !DILocalVariable(name: "ch", scope: !4809, file: !4794, line: 105, type: !50)
!4812 = !DILocalVariable(name: "base", scope: !4813, file: !4794, line: 141, type: !57)
!4813 = distinct !DILexicalBlock(scope: !4814, file: !4794, line: 140, column: 5)
!4814 = distinct !DILexicalBlock(scope: !4793, file: !4794, line: 139, column: 7)
!4815 = !DILocalVariable(name: "suffixes", scope: !4813, file: !4794, line: 142, type: !57)
!4816 = !DILocalVariable(name: "overflow", scope: !4813, file: !4794, line: 143, type: !4728)
!4817 = !DILocation(line: 88, column: 24, scope: !4793)
!4818 = !DILocation(line: 88, column: 34, scope: !4793)
!4819 = !DILocation(line: 88, column: 43, scope: !4793)
!4820 = !DILocation(line: 89, column: 24, scope: !4793)
!4821 = !DILocation(line: 89, column: 41, scope: !4793)
!4822 = !DILocation(line: 91, column: 3, scope: !4793)
!4823 = !DILocation(line: 94, column: 16, scope: !4793)
!4824 = !DILocation(line: 96, column: 3, scope: !4825)
!4825 = distinct !DILexicalBlock(scope: !4826, file: !4794, line: 96, column: 3)
!4826 = distinct !DILexicalBlock(scope: !4793, file: !4794, line: 96, column: 3)
!4827 = !DILocation(line: 96, column: 3, scope: !4828)
!4828 = !DILexicalBlockFile(scope: !4825, file: !4794, discriminator: 3)
!4829 = !DILocation(line: 98, column: 8, scope: !4793)
!4830 = !DILocation(line: 92, column: 10, scope: !4793)
!4831 = !DILocation(line: 100, column: 3, scope: !4793)
!4832 = !DILocation(line: 100, column: 9, scope: !4793)
!4833 = !DILocation(line: 104, column: 19, scope: !4809)
!4834 = !DILocation(line: 106, column: 14, scope: !4835)
!4835 = !DILexicalBlockFile(scope: !4809, file: !4794, discriminator: 1)
!4836 = !DILocation(line: 106, column: 7, scope: !4809)
!4837 = !DILocation(line: 105, column: 21, scope: !4809)
!4838 = !DILocation(line: 106, column: 7, scope: !4835)
!4839 = !DILocation(line: 107, column: 15, scope: !4809)
!4840 = distinct !{!4840, !4836, !4841}
!4841 = !DILocation(line: 107, column: 17, scope: !4809)
!4842 = !DILocation(line: 109, column: 9, scope: !4843)
!4843 = distinct !DILexicalBlock(scope: !4809, file: !4794, line: 108, column: 11)
!4844 = !DILocalVariable(name: "nptr", arg: 1, scope: !4845, file: !4846, line: 336, type: !4849)
!4845 = distinct !DISubprogram(name: "strtoumax", scope: !4846, file: !4846, line: 336, type: !4847, isLocal: false, isDefinition: true, scopeLine: 338, flags: DIFlagPrototyped, isOptimized: true, unit: !664, variables: !4851)
!4846 = !DIFile(filename: "/usr/include/inttypes.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4847 = !DISubroutineType(types: !4848)
!4848 = !{!68, !4849, !4850, !57}
!4849 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !41)
!4850 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !58)
!4851 = !{!4844, !4852, !4853}
!4852 = !DILocalVariable(name: "endptr", arg: 2, scope: !4845, file: !4846, line: 336, type: !4850)
!4853 = !DILocalVariable(name: "base", arg: 3, scope: !4845, file: !4846, line: 336, type: !57)
!4854 = !DILocation(line: 336, column: 1, scope: !4845, inlinedAt: !4855)
!4855 = distinct !DILocation(line: 112, column: 9, scope: !4793)
!4856 = !DILocation(line: 339, column: 10, scope: !4845, inlinedAt: !4855)
!4857 = !DILocation(line: 93, column: 14, scope: !4793)
!4858 = !DILocation(line: 114, column: 7, scope: !4859)
!4859 = distinct !DILexicalBlock(scope: !4793, file: !4794, line: 114, column: 7)
!4860 = !DILocation(line: 114, column: 10, scope: !4859)
!4861 = !DILocation(line: 114, column: 7, scope: !4793)
!4862 = !DILocation(line: 118, column: 11, scope: !4863)
!4863 = distinct !DILexicalBlock(scope: !4864, file: !4794, line: 118, column: 11)
!4864 = distinct !DILexicalBlock(scope: !4859, file: !4794, line: 115, column: 5)
!4865 = !DILocation(line: 118, column: 26, scope: !4863)
!4866 = !DILocation(line: 118, column: 29, scope: !4867)
!4867 = !DILexicalBlockFile(scope: !4863, file: !4794, discriminator: 1)
!4868 = !DILocation(line: 118, column: 33, scope: !4867)
!4869 = !DILocation(line: 118, column: 36, scope: !4870)
!4870 = !DILexicalBlockFile(scope: !4863, file: !4794, discriminator: 5)
!4871 = !DILocation(line: 118, column: 11, scope: !4872)
!4872 = !DILexicalBlockFile(scope: !4864, file: !4794, discriminator: 5)
!4873 = !DILocation(line: 123, column: 12, scope: !4874)
!4874 = distinct !DILexicalBlock(scope: !4859, file: !4794, line: 123, column: 12)
!4875 = !DILocation(line: 123, column: 12, scope: !4859)
!4876 = !DILocation(line: 128, column: 5, scope: !4877)
!4877 = distinct !DILexicalBlock(scope: !4874, file: !4794, line: 124, column: 5)
!4878 = !DILocation(line: 133, column: 8, scope: !4879)
!4879 = distinct !DILexicalBlock(scope: !4793, file: !4794, line: 133, column: 7)
!4880 = !DILocation(line: 133, column: 7, scope: !4793)
!4881 = !DILocation(line: 135, column: 12, scope: !4882)
!4882 = distinct !DILexicalBlock(scope: !4879, file: !4794, line: 134, column: 5)
!4883 = !DILocation(line: 136, column: 7, scope: !4882)
!4884 = !DILocation(line: 139, column: 7, scope: !4814)
!4885 = !DILocation(line: 139, column: 11, scope: !4814)
!4886 = !DILocation(line: 139, column: 7, scope: !4793)
!4887 = !DILocation(line: 141, column: 11, scope: !4813)
!4888 = !DILocation(line: 142, column: 11, scope: !4813)
!4889 = !DILocation(line: 145, column: 12, scope: !4890)
!4890 = !DILexicalBlockFile(scope: !4891, file: !4794, discriminator: 3)
!4891 = distinct !DILexicalBlock(scope: !4813, file: !4794, line: 145, column: 11)
!4892 = !DILocation(line: 145, column: 11, scope: !4893)
!4893 = !DILexicalBlockFile(scope: !4813, file: !4794, discriminator: 3)
!4894 = !DILocation(line: 147, column: 16, scope: !4895)
!4895 = distinct !DILexicalBlock(scope: !4891, file: !4794, line: 146, column: 9)
!4896 = !DILocation(line: 148, column: 22, scope: !4895)
!4897 = !DILocation(line: 148, column: 11, scope: !4895)
!4898 = !DILocation(line: 151, column: 7, scope: !4813)
!4899 = !DILocation(line: 163, column: 15, scope: !4900)
!4900 = !DILexicalBlockFile(scope: !4901, file: !4794, discriminator: 2)
!4901 = distinct !DILexicalBlock(scope: !4902, file: !4794, line: 163, column: 15)
!4902 = distinct !DILexicalBlock(scope: !4813, file: !4794, line: 152, column: 9)
!4903 = !DILocation(line: 163, column: 15, scope: !4904)
!4904 = !DILexicalBlockFile(scope: !4902, file: !4794, discriminator: 2)
!4905 = !DILocation(line: 164, column: 21, scope: !4901)
!4906 = !DILocation(line: 164, column: 13, scope: !4901)
!4907 = !DILocation(line: 167, column: 21, scope: !4908)
!4908 = distinct !DILexicalBlock(scope: !4909, file: !4794, line: 167, column: 21)
!4909 = distinct !DILexicalBlock(scope: !4901, file: !4794, line: 165, column: 15)
!4910 = !DILocation(line: 167, column: 29, scope: !4908)
!4911 = !DILocation(line: 167, column: 21, scope: !4909)
!4912 = !DILocation(line: 175, column: 17, scope: !4909)
!4913 = !DILocation(line: 179, column: 7, scope: !4813)
!4914 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !4915, file: !4794, line: 60, type: !57)
!4915 = distinct !DISubprogram(name: "bkm_scale", scope: !4794, file: !4794, line: 60, type: !4916, isLocal: true, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, unit: !664, variables: !4918)
!4916 = !DISubroutineType(types: !4917)
!4917 = !{!4728, !4797, !57}
!4918 = !{!4919, !4914}
!4919 = !DILocalVariable(name: "x", arg: 1, scope: !4915, file: !4794, line: 60, type: !4797)
!4920 = !DILocation(line: 60, column: 31, scope: !4915, inlinedAt: !4921)
!4921 = distinct !DILocation(line: 182, column: 22, scope: !4922)
!4922 = distinct !DILexicalBlock(scope: !4813, file: !4794, line: 180, column: 9)
!4923 = !DILocation(line: 67, column: 39, scope: !4924, inlinedAt: !4921)
!4924 = distinct !DILexicalBlock(scope: !4915, file: !4794, line: 67, column: 7)
!4925 = !DILocation(line: 72, column: 6, scope: !4915, inlinedAt: !4921)
!4926 = !DILocation(line: 67, column: 7, scope: !4915, inlinedAt: !4921)
!4927 = !DILocation(line: 143, column: 20, scope: !4813)
!4928 = !DILocation(line: 183, column: 11, scope: !4922)
!4929 = !DILocation(line: 60, column: 31, scope: !4915, inlinedAt: !4930)
!4930 = distinct !DILocation(line: 189, column: 22, scope: !4922)
!4931 = !DILocation(line: 67, column: 39, scope: !4924, inlinedAt: !4930)
!4932 = !DILocation(line: 72, column: 6, scope: !4915, inlinedAt: !4930)
!4933 = !DILocation(line: 67, column: 7, scope: !4915, inlinedAt: !4930)
!4934 = !DILocation(line: 190, column: 11, scope: !4922)
!4935 = !DILocalVariable(name: "power", arg: 3, scope: !4936, file: !4794, line: 77, type: !57)
!4936 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !4794, file: !4794, line: 77, type: !4937, isLocal: true, isDefinition: true, scopeLine: 78, flags: DIFlagPrototyped, isOptimized: true, unit: !664, variables: !4939)
!4937 = !DISubroutineType(types: !4938)
!4938 = !{!4728, !4797, !57, !57}
!4939 = !{!4940, !4941, !4935, !4942}
!4940 = !DILocalVariable(name: "x", arg: 1, scope: !4936, file: !4794, line: 77, type: !4797)
!4941 = !DILocalVariable(name: "base", arg: 2, scope: !4936, file: !4794, line: 77, type: !57)
!4942 = !DILocalVariable(name: "err", scope: !4936, file: !4794, line: 79, type: !4728)
!4943 = !DILocation(line: 77, column: 50, scope: !4936, inlinedAt: !4944)
!4944 = distinct !DILocation(line: 197, column: 22, scope: !4922)
!4945 = !DILocation(line: 79, column: 16, scope: !4936, inlinedAt: !4944)
!4946 = !DILocation(line: 67, column: 39, scope: !4924, inlinedAt: !4947)
!4947 = distinct !DILocation(line: 81, column: 12, scope: !4936, inlinedAt: !4944)
!4948 = !DILocation(line: 72, column: 6, scope: !4915, inlinedAt: !4947)
!4949 = !DILocation(line: 67, column: 7, scope: !4915, inlinedAt: !4947)
!4950 = !DILocation(line: 81, column: 9, scope: !4936, inlinedAt: !4944)
!4951 = !DILocation(line: 77, column: 50, scope: !4936, inlinedAt: !4952)
!4952 = distinct !DILocation(line: 202, column: 22, scope: !4922)
!4953 = !DILocation(line: 79, column: 16, scope: !4936, inlinedAt: !4952)
!4954 = !DILocation(line: 67, column: 39, scope: !4924, inlinedAt: !4955)
!4955 = distinct !DILocation(line: 81, column: 12, scope: !4936, inlinedAt: !4952)
!4956 = !DILocation(line: 72, column: 6, scope: !4915, inlinedAt: !4955)
!4957 = !DILocation(line: 67, column: 7, scope: !4915, inlinedAt: !4955)
!4958 = !DILocation(line: 81, column: 9, scope: !4936, inlinedAt: !4952)
!4959 = !DILocation(line: 77, column: 50, scope: !4936, inlinedAt: !4960)
!4960 = distinct !DILocation(line: 207, column: 22, scope: !4922)
!4961 = !DILocation(line: 79, column: 16, scope: !4936, inlinedAt: !4960)
!4962 = !DILocation(line: 67, column: 39, scope: !4924, inlinedAt: !4963)
!4963 = distinct !DILocation(line: 81, column: 12, scope: !4936, inlinedAt: !4960)
!4964 = !DILocation(line: 72, column: 6, scope: !4915, inlinedAt: !4963)
!4965 = !DILocation(line: 67, column: 7, scope: !4915, inlinedAt: !4963)
!4966 = !DILocation(line: 77, column: 50, scope: !4936, inlinedAt: !4967)
!4967 = distinct !DILocation(line: 212, column: 22, scope: !4922)
!4968 = !DILocation(line: 79, column: 16, scope: !4936, inlinedAt: !4967)
!4969 = !DILocation(line: 67, column: 39, scope: !4924, inlinedAt: !4970)
!4970 = distinct !DILocation(line: 81, column: 12, scope: !4936, inlinedAt: !4967)
!4971 = !DILocation(line: 72, column: 6, scope: !4915, inlinedAt: !4970)
!4972 = !DILocation(line: 67, column: 7, scope: !4915, inlinedAt: !4970)
!4973 = !DILocation(line: 81, column: 9, scope: !4936, inlinedAt: !4967)
!4974 = !DILocation(line: 77, column: 50, scope: !4936, inlinedAt: !4975)
!4975 = distinct !DILocation(line: 216, column: 22, scope: !4922)
!4976 = !DILocation(line: 79, column: 16, scope: !4936, inlinedAt: !4975)
!4977 = !DILocation(line: 67, column: 39, scope: !4924, inlinedAt: !4978)
!4978 = distinct !DILocation(line: 81, column: 12, scope: !4936, inlinedAt: !4975)
!4979 = !DILocation(line: 72, column: 6, scope: !4915, inlinedAt: !4978)
!4980 = !DILocation(line: 67, column: 7, scope: !4915, inlinedAt: !4978)
!4981 = !DILocation(line: 81, column: 9, scope: !4936, inlinedAt: !4975)
!4982 = !DILocation(line: 77, column: 50, scope: !4936, inlinedAt: !4983)
!4983 = distinct !DILocation(line: 221, column: 22, scope: !4922)
!4984 = !DILocation(line: 79, column: 16, scope: !4936, inlinedAt: !4983)
!4985 = !DILocation(line: 67, column: 39, scope: !4924, inlinedAt: !4986)
!4986 = distinct !DILocation(line: 81, column: 12, scope: !4936, inlinedAt: !4983)
!4987 = !DILocation(line: 72, column: 6, scope: !4915, inlinedAt: !4986)
!4988 = !DILocation(line: 67, column: 7, scope: !4915, inlinedAt: !4986)
!4989 = !DILocation(line: 81, column: 9, scope: !4936, inlinedAt: !4983)
!4990 = !DILocation(line: 60, column: 31, scope: !4915, inlinedAt: !4991)
!4991 = distinct !DILocation(line: 225, column: 22, scope: !4922)
!4992 = !DILocation(line: 67, column: 39, scope: !4924, inlinedAt: !4991)
!4993 = !DILocation(line: 72, column: 6, scope: !4915, inlinedAt: !4991)
!4994 = !DILocation(line: 67, column: 7, scope: !4915, inlinedAt: !4991)
!4995 = !DILocation(line: 226, column: 11, scope: !4922)
!4996 = !DILocation(line: 77, column: 50, scope: !4936, inlinedAt: !4997)
!4997 = distinct !DILocation(line: 229, column: 22, scope: !4922)
!4998 = !DILocation(line: 79, column: 16, scope: !4936, inlinedAt: !4997)
!4999 = !DILocation(line: 67, column: 39, scope: !4924, inlinedAt: !5000)
!5000 = distinct !DILocation(line: 81, column: 12, scope: !4936, inlinedAt: !4997)
!5001 = !DILocation(line: 72, column: 6, scope: !4915, inlinedAt: !5000)
!5002 = !DILocation(line: 67, column: 7, scope: !4915, inlinedAt: !5000)
!5003 = !DILocation(line: 81, column: 9, scope: !4936, inlinedAt: !4997)
!5004 = !DILocation(line: 77, column: 50, scope: !4936, inlinedAt: !5005)
!5005 = distinct !DILocation(line: 233, column: 22, scope: !4922)
!5006 = !DILocation(line: 79, column: 16, scope: !4936, inlinedAt: !5005)
!5007 = !DILocation(line: 67, column: 39, scope: !4924, inlinedAt: !5008)
!5008 = distinct !DILocation(line: 81, column: 12, scope: !4936, inlinedAt: !5005)
!5009 = !DILocation(line: 72, column: 6, scope: !4915, inlinedAt: !5008)
!5010 = !DILocation(line: 67, column: 7, scope: !4915, inlinedAt: !5008)
!5011 = !DILocation(line: 81, column: 9, scope: !4936, inlinedAt: !5005)
!5012 = !DILocation(line: 237, column: 16, scope: !4922)
!5013 = !DILocation(line: 238, column: 22, scope: !4922)
!5014 = !DILocation(line: 238, column: 11, scope: !4922)
!5015 = !DILocation(line: 241, column: 11, scope: !4813)
!5016 = !DILocation(line: 242, column: 10, scope: !4813)
!5017 = !DILocation(line: 243, column: 11, scope: !5018)
!5018 = distinct !DILexicalBlock(scope: !4813, file: !4794, line: 243, column: 11)
!5019 = !DILocation(line: 244, column: 13, scope: !5018)
!5020 = !DILocation(line: 243, column: 11, scope: !4813)
!5021 = !DILocation(line: 247, column: 8, scope: !4793)
!5022 = !DILocation(line: 248, column: 3, scope: !4793)
!5023 = !DILocation(line: 249, column: 1, scope: !4793)
!5024 = distinct !DISubprogram(name: "rpl_calloc", scope: !5025, file: !5025, line: 42, type: !1632, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !668, variables: !5026)
!5025 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5026 = !{!5027, !5028, !5029, !5030}
!5027 = !DILocalVariable(name: "n", arg: 1, scope: !5024, file: !5025, line: 42, type: !43)
!5028 = !DILocalVariable(name: "s", arg: 2, scope: !5024, file: !5025, line: 42, type: !43)
!5029 = !DILocalVariable(name: "result", scope: !5024, file: !5025, line: 44, type: !33)
!5030 = !DILocalVariable(name: "bytes", scope: !5031, file: !5025, line: 56, type: !43)
!5031 = distinct !DILexicalBlock(scope: !5032, file: !5025, line: 53, column: 5)
!5032 = distinct !DILexicalBlock(scope: !5024, file: !5025, line: 47, column: 7)
!5033 = !DILocation(line: 42, column: 20, scope: !5024)
!5034 = !DILocation(line: 42, column: 30, scope: !5024)
!5035 = !DILocation(line: 47, column: 9, scope: !5032)
!5036 = !DILocation(line: 47, column: 19, scope: !5037)
!5037 = !DILexicalBlockFile(scope: !5032, file: !5025, discriminator: 1)
!5038 = !DILocation(line: 47, column: 14, scope: !5032)
!5039 = !DILocation(line: 56, column: 24, scope: !5031)
!5040 = !DILocation(line: 56, column: 14, scope: !5031)
!5041 = !DILocation(line: 57, column: 17, scope: !5042)
!5042 = distinct !DILexicalBlock(scope: !5031, file: !5025, line: 57, column: 11)
!5043 = !DILocation(line: 57, column: 21, scope: !5042)
!5044 = !DILocation(line: 57, column: 11, scope: !5031)
!5045 = !DILocation(line: 59, column: 11, scope: !5046)
!5046 = distinct !DILexicalBlock(scope: !5042, file: !5025, line: 58, column: 9)
!5047 = !DILocation(line: 59, column: 17, scope: !5046)
!5048 = !DILocation(line: 65, column: 12, scope: !5024)
!5049 = !DILocation(line: 44, column: 9, scope: !5024)
!5050 = !DILocation(line: 72, column: 3, scope: !5024)
!5051 = !DILocation(line: 73, column: 1, scope: !5024)
!5052 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !5053, file: !5053, line: 334, type: !5054, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !670, variables: !5068)
!5053 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5054 = !DISubroutineType(types: !5055)
!5055 = !{!43, !5056, !41, !43, !5057}
!5056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2479, size: 64)
!5057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5058, size: 64)
!5058 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2464, line: 107, baseType: !5059)
!5059 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2464, line: 95, baseType: !5060)
!5060 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2464, line: 83, size: 64, elements: !5061)
!5061 = !{!5062, !5063}
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !5060, file: !2464, line: 85, baseType: !57, size: 32)
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !5060, file: !2464, line: 94, baseType: !5064, size: 32, offset: 32)
!5064 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5060, file: !2464, line: 86, size: 32, elements: !5065)
!5065 = !{!5066, !5067}
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !5064, file: !2464, line: 89, baseType: !30, size: 32)
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !5064, file: !2464, line: 93, baseType: !2474, size: 32)
!5068 = !{!5069, !5070, !5071, !5072, !5073, !5074, !5075}
!5069 = !DILocalVariable(name: "pwc", arg: 1, scope: !5052, file: !5053, line: 334, type: !5056)
!5070 = !DILocalVariable(name: "s", arg: 2, scope: !5052, file: !5053, line: 334, type: !41)
!5071 = !DILocalVariable(name: "n", arg: 3, scope: !5052, file: !5053, line: 334, type: !43)
!5072 = !DILocalVariable(name: "ps", arg: 4, scope: !5052, file: !5053, line: 334, type: !5057)
!5073 = !DILocalVariable(name: "ret", scope: !5052, file: !5053, line: 336, type: !43)
!5074 = !DILocalVariable(name: "wc", scope: !5052, file: !5053, line: 337, type: !2479)
!5075 = !DILocalVariable(name: "uc", scope: !5076, file: !5053, line: 398, type: !50)
!5076 = distinct !DILexicalBlock(scope: !5077, file: !5053, line: 397, column: 5)
!5077 = distinct !DILexicalBlock(scope: !5052, file: !5053, line: 396, column: 7)
!5078 = !DILocation(line: 334, column: 23, scope: !5052)
!5079 = !DILocation(line: 334, column: 40, scope: !5052)
!5080 = !DILocation(line: 334, column: 50, scope: !5052)
!5081 = !DILocation(line: 334, column: 64, scope: !5052)
!5082 = !DILocation(line: 337, column: 3, scope: !5052)
!5083 = !DILocation(line: 353, column: 9, scope: !5084)
!5084 = distinct !DILexicalBlock(scope: !5052, file: !5053, line: 353, column: 7)
!5085 = !DILocation(line: 353, column: 7, scope: !5052)
!5086 = !DILocation(line: 388, column: 9, scope: !5052)
!5087 = !DILocation(line: 336, column: 10, scope: !5052)
!5088 = !DILocation(line: 396, column: 19, scope: !5077)
!5089 = !DILocation(line: 396, column: 31, scope: !5090)
!5090 = !DILexicalBlockFile(scope: !5077, file: !5053, discriminator: 1)
!5091 = !DILocation(line: 396, column: 26, scope: !5077)
!5092 = !DILocation(line: 396, column: 41, scope: !5093)
!5093 = !DILexicalBlockFile(scope: !5077, file: !5053, discriminator: 2)
!5094 = !DILocation(line: 396, column: 7, scope: !5095)
!5095 = !DILexicalBlockFile(scope: !5052, file: !5053, discriminator: 2)
!5096 = !DILocation(line: 398, column: 26, scope: !5076)
!5097 = !DILocation(line: 398, column: 21, scope: !5076)
!5098 = !DILocation(line: 399, column: 14, scope: !5076)
!5099 = !DILocation(line: 399, column: 12, scope: !5076)
!5100 = !DILocation(line: 405, column: 1, scope: !5052)
!5101 = distinct !DISubprogram(name: "close_stream", scope: !5102, file: !5102, line: 56, type: !5103, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !673, variables: !5145)
!5102 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5103 = !DISubroutineType(types: !5104)
!5104 = !{!57, !5105}
!5105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5106, size: 64)
!5106 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !35, line: 49, baseType: !5107)
!5107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !4245, line: 241, size: 1728, elements: !5108)
!5108 = !{!5109, !5110, !5111, !5112, !5113, !5114, !5115, !5116, !5117, !5118, !5119, !5120, !5121, !5129, !5130, !5131, !5132, !5133, !5134, !5135, !5136, !5137, !5138, !5139, !5140, !5141, !5142, !5143, !5144}
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5107, file: !4245, line: 242, baseType: !57, size: 32)
!5110 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5107, file: !4245, line: 247, baseType: !31, size: 64, offset: 64)
!5111 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5107, file: !4245, line: 248, baseType: !31, size: 64, offset: 128)
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5107, file: !4245, line: 249, baseType: !31, size: 64, offset: 192)
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5107, file: !4245, line: 250, baseType: !31, size: 64, offset: 256)
!5114 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5107, file: !4245, line: 251, baseType: !31, size: 64, offset: 320)
!5115 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5107, file: !4245, line: 252, baseType: !31, size: 64, offset: 384)
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5107, file: !4245, line: 253, baseType: !31, size: 64, offset: 448)
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5107, file: !4245, line: 254, baseType: !31, size: 64, offset: 512)
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5107, file: !4245, line: 256, baseType: !31, size: 64, offset: 576)
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5107, file: !4245, line: 257, baseType: !31, size: 64, offset: 640)
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5107, file: !4245, line: 258, baseType: !31, size: 64, offset: 704)
!5121 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5107, file: !4245, line: 260, baseType: !5122, size: 64, offset: 768)
!5122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5123, size: 64)
!5123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !4245, line: 156, size: 192, elements: !5124)
!5124 = !{!5125, !5126, !5128}
!5125 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !5123, file: !4245, line: 157, baseType: !5122, size: 64)
!5126 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !5123, file: !4245, line: 158, baseType: !5127, size: 64, offset: 64)
!5127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5107, size: 64)
!5128 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !5123, file: !4245, line: 162, baseType: !57, size: 32, offset: 128)
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5107, file: !4245, line: 262, baseType: !5127, size: 64, offset: 832)
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5107, file: !4245, line: 264, baseType: !57, size: 32, offset: 896)
!5131 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5107, file: !4245, line: 268, baseType: !57, size: 32, offset: 928)
!5132 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5107, file: !4245, line: 270, baseType: !36, size: 64, offset: 960)
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5107, file: !4245, line: 274, baseType: !198, size: 16, offset: 1024)
!5134 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5107, file: !4245, line: 275, baseType: !4273, size: 8, offset: 1040)
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5107, file: !4245, line: 276, baseType: !4275, size: 8, offset: 1048)
!5136 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5107, file: !4245, line: 280, baseType: !4279, size: 64, offset: 1088)
!5137 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5107, file: !4245, line: 289, baseType: !4282, size: 64, offset: 1152)
!5138 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !5107, file: !4245, line: 297, baseType: !33, size: 64, offset: 1216)
!5139 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !5107, file: !4245, line: 298, baseType: !33, size: 64, offset: 1280)
!5140 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !5107, file: !4245, line: 299, baseType: !33, size: 64, offset: 1344)
!5141 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !5107, file: !4245, line: 300, baseType: !33, size: 64, offset: 1408)
!5142 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5107, file: !4245, line: 302, baseType: !43, size: 64, offset: 1472)
!5143 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5107, file: !4245, line: 303, baseType: !57, size: 32, offset: 1536)
!5144 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5107, file: !4245, line: 305, baseType: !4290, size: 160, offset: 1568)
!5145 = !{!5146, !5147, !5148, !5149}
!5146 = !DILocalVariable(name: "stream", arg: 1, scope: !5101, file: !5102, line: 56, type: !5105)
!5147 = !DILocalVariable(name: "some_pending", scope: !5101, file: !5102, line: 58, type: !915)
!5148 = !DILocalVariable(name: "prev_fail", scope: !5101, file: !5102, line: 59, type: !915)
!5149 = !DILocalVariable(name: "fclose_fail", scope: !5101, file: !5102, line: 60, type: !915)
!5150 = !DILocation(line: 56, column: 21, scope: !5101)
!5151 = !DILocation(line: 58, column: 30, scope: !5101)
!5152 = !DILocalVariable(name: "__stream", arg: 1, scope: !5153, file: !5154, line: 132, type: !5105)
!5153 = distinct !DISubprogram(name: "ferror_unlocked", scope: !5154, file: !5154, line: 132, type: !5103, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !673, variables: !5155)
!5154 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5155 = !{!5152}
!5156 = !DILocation(line: 132, column: 1, scope: !5153, inlinedAt: !5157)
!5157 = distinct !DILocation(line: 59, column: 27, scope: !5101)
!5158 = !DILocation(line: 134, column: 10, scope: !5153, inlinedAt: !5157)
!5159 = !{!5160, !1090, i64 0}
!5160 = !{!"_IO_FILE", !1090, i64 0, !703, i64 8, !703, i64 16, !703, i64 24, !703, i64 32, !703, i64 40, !703, i64 48, !703, i64 56, !703, i64 64, !703, i64 72, !703, i64 80, !703, i64 88, !703, i64 96, !703, i64 104, !1090, i64 112, !1090, i64 116, !1242, i64 120, !2831, i64 128, !704, i64 130, !704, i64 131, !703, i64 136, !1242, i64 144, !703, i64 152, !703, i64 160, !703, i64 168, !703, i64 176, !1242, i64 184, !1090, i64 192, !704, i64 196}
!5161 = !DILocation(line: 59, column: 43, scope: !5101)
!5162 = !DILocation(line: 60, column: 29, scope: !5101)
!5163 = !DILocation(line: 60, column: 45, scope: !5101)
!5164 = !DILocation(line: 70, column: 17, scope: !5165)
!5165 = distinct !DILexicalBlock(scope: !5101, file: !5102, line: 70, column: 7)
!5166 = !DILocation(line: 70, column: 33, scope: !5167)
!5167 = !DILexicalBlockFile(scope: !5165, file: !5102, discriminator: 1)
!5168 = !DILocation(line: 70, column: 53, scope: !5169)
!5169 = !DILexicalBlockFile(scope: !5165, file: !5102, discriminator: 3)
!5170 = !DILocation(line: 70, column: 7, scope: !5171)
!5171 = !DILexicalBlockFile(scope: !5101, file: !5102, discriminator: 3)
!5172 = !DILocation(line: 72, column: 11, scope: !5173)
!5173 = distinct !DILexicalBlock(scope: !5165, file: !5102, line: 71, column: 5)
!5174 = !DILocation(line: 73, column: 9, scope: !5175)
!5175 = distinct !DILexicalBlock(scope: !5173, file: !5102, line: 72, column: 11)
!5176 = !DILocation(line: 73, column: 15, scope: !5175)
!5177 = !DILocation(line: 78, column: 1, scope: !5101)
!5178 = distinct !DISubprogram(name: "hard_locale", scope: !5179, file: !5179, line: 38, type: !5180, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !675, variables: !5182)
!5179 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5180 = !DISubroutineType(types: !5181)
!5181 = !{!64, !57}
!5182 = !{!5183, !5184, !5185, !5186, !5193, !5194, !5196, !5197, !5199, !5200, !5202}
!5183 = !DILocalVariable(name: "category", arg: 1, scope: !5178, file: !5179, line: 38, type: !57)
!5184 = !DILocalVariable(name: "hard", scope: !5178, file: !5179, line: 40, type: !64)
!5185 = !DILocalVariable(name: "p", scope: !5178, file: !5179, line: 41, type: !41)
!5186 = !DILocalVariable(name: "__s1_len", scope: !5187, file: !5179, line: 47, type: !43)
!5187 = distinct !DILexicalBlock(scope: !5188, file: !5179, line: 47, column: 15)
!5188 = distinct !DILexicalBlock(scope: !5189, file: !5179, line: 47, column: 15)
!5189 = distinct !DILexicalBlock(scope: !5190, file: !5179, line: 46, column: 9)
!5190 = distinct !DILexicalBlock(scope: !5191, file: !5179, line: 45, column: 11)
!5191 = distinct !DILexicalBlock(scope: !5192, file: !5179, line: 44, column: 5)
!5192 = distinct !DILexicalBlock(scope: !5178, file: !5179, line: 43, column: 7)
!5193 = !DILocalVariable(name: "__s2_len", scope: !5187, file: !5179, line: 47, type: !43)
!5194 = !DILocalVariable(name: "__s2", scope: !5195, file: !5179, line: 47, type: !48)
!5195 = distinct !DILexicalBlock(scope: !5187, file: !5179, line: 47, column: 15)
!5196 = !DILocalVariable(name: "__result", scope: !5195, file: !5179, line: 47, type: !57)
!5197 = !DILocalVariable(name: "__s1_len", scope: !5198, file: !5179, line: 47, type: !43)
!5198 = distinct !DILexicalBlock(scope: !5188, file: !5179, line: 47, column: 39)
!5199 = !DILocalVariable(name: "__s2_len", scope: !5198, file: !5179, line: 47, type: !43)
!5200 = !DILocalVariable(name: "__s2", scope: !5201, file: !5179, line: 47, type: !48)
!5201 = distinct !DILexicalBlock(scope: !5198, file: !5179, line: 47, column: 39)
!5202 = !DILocalVariable(name: "__result", scope: !5201, file: !5179, line: 47, type: !57)
!5203 = !DILocation(line: 38, column: 18, scope: !5178)
!5204 = !DILocation(line: 40, column: 8, scope: !5178)
!5205 = !DILocation(line: 41, column: 19, scope: !5178)
!5206 = !DILocation(line: 41, column: 15, scope: !5178)
!5207 = !DILocation(line: 43, column: 7, scope: !5192)
!5208 = !DILocation(line: 43, column: 7, scope: !5178)
!5209 = !DILocation(line: 47, column: 15, scope: !5187)
!5210 = !DILocation(line: 47, column: 15, scope: !5195)
!5211 = !DILocation(line: 47, column: 15, scope: !5212)
!5212 = !DILexicalBlockFile(scope: !5195, file: !5179, discriminator: 2)
!5213 = !DILocation(line: 47, column: 15, scope: !5214)
!5214 = !DILexicalBlockFile(scope: !5215, file: !5179, discriminator: 3)
!5215 = distinct !DILexicalBlock(scope: !5195, file: !5179, line: 47, column: 15)
!5216 = !DILocation(line: 47, column: 15, scope: !5217)
!5217 = !DILexicalBlockFile(scope: !5215, file: !5179, discriminator: 2)
!5218 = !DILocation(line: 47, column: 15, scope: !5219)
!5219 = !DILexicalBlockFile(scope: !5220, file: !5179, discriminator: 4)
!5220 = distinct !DILexicalBlock(scope: !5215, file: !5179, line: 47, column: 15)
!5221 = !DILocation(line: 47, column: 15, scope: !5222)
!5222 = !DILexicalBlockFile(scope: !5187, file: !5179, discriminator: 11)
!5223 = !DILocation(line: 47, column: 36, scope: !5224)
!5224 = !DILexicalBlockFile(scope: !5188, file: !5179, discriminator: 13)
!5225 = !DILocation(line: 47, column: 39, scope: !5198)
!5226 = !DILocation(line: 47, column: 39, scope: !5227)
!5227 = !DILexicalBlockFile(scope: !5198, file: !5179, discriminator: 26)
!5228 = !DILocation(line: 47, column: 59, scope: !5229)
!5229 = !DILexicalBlockFile(scope: !5188, file: !5179, discriminator: 27)
!5230 = !DILocation(line: 47, column: 15, scope: !5231)
!5231 = !DILexicalBlockFile(scope: !5189, file: !5179, discriminator: 27)
!5232 = !DILocation(line: 48, column: 13, scope: !5188)
!5233 = !DILocation(line: 71, column: 3, scope: !5178)
!5234 = distinct !DISubprogram(name: "locale_charset", scope: !593, file: !593, line: 393, type: !5235, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !249, variables: !5237)
!5235 = !DISubroutineType(types: !5236)
!5236 = !{!41}
!5237 = !{!5238, !5239, !5240, !5245}
!5238 = !DILocalVariable(name: "codeset", scope: !5234, file: !593, line: 395, type: !41)
!5239 = !DILocalVariable(name: "aliases", scope: !5234, file: !593, line: 396, type: !41)
!5240 = !DILocalVariable(name: "__s1_len", scope: !5241, file: !593, line: 592, type: !43)
!5241 = distinct !DILexicalBlock(scope: !5242, file: !593, line: 592, column: 9)
!5242 = distinct !DILexicalBlock(scope: !5243, file: !593, line: 592, column: 9)
!5243 = distinct !DILexicalBlock(scope: !5244, file: !593, line: 589, column: 3)
!5244 = distinct !DILexicalBlock(scope: !5234, file: !593, line: 589, column: 3)
!5245 = !DILocalVariable(name: "__s2_len", scope: !5241, file: !593, line: 592, type: !43)
!5246 = !DILocalVariable(name: "buf1", scope: !5247, file: !593, line: 196, type: !5314)
!5247 = distinct !DILexicalBlock(scope: !5248, file: !593, line: 194, column: 21)
!5248 = distinct !DILexicalBlock(scope: !5249, file: !593, line: 193, column: 19)
!5249 = distinct !DILexicalBlock(scope: !5250, file: !593, line: 193, column: 19)
!5250 = distinct !DILexicalBlock(scope: !5251, file: !593, line: 188, column: 17)
!5251 = distinct !DILexicalBlock(scope: !5252, file: !593, line: 181, column: 19)
!5252 = distinct !DILexicalBlock(scope: !5253, file: !593, line: 177, column: 13)
!5253 = distinct !DILexicalBlock(scope: !5254, file: !593, line: 173, column: 15)
!5254 = distinct !DILexicalBlock(scope: !5255, file: !593, line: 161, column: 9)
!5255 = distinct !DILexicalBlock(scope: !5256, file: !593, line: 157, column: 11)
!5256 = distinct !DILexicalBlock(scope: !5257, file: !593, line: 130, column: 5)
!5257 = distinct !DILexicalBlock(scope: !5258, file: !593, line: 129, column: 7)
!5258 = distinct !DISubprogram(name: "get_charset_aliases", scope: !593, file: !593, line: 124, type: !5235, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !249, variables: !5259)
!5259 = !{!5260, !5261, !5262, !5263, !5264, !5266, !5267, !5268, !5269, !5310, !5311, !5312, !5246, !5313, !5317, !5318, !5319}
!5260 = !DILocalVariable(name: "cp", scope: !5258, file: !593, line: 126, type: !41)
!5261 = !DILocalVariable(name: "dir", scope: !5256, file: !593, line: 132, type: !41)
!5262 = !DILocalVariable(name: "base", scope: !5256, file: !593, line: 133, type: !41)
!5263 = !DILocalVariable(name: "file_name", scope: !5256, file: !593, line: 134, type: !31)
!5264 = !DILocalVariable(name: "dir_len", scope: !5265, file: !593, line: 144, type: !43)
!5265 = distinct !DILexicalBlock(scope: !5256, file: !593, line: 143, column: 7)
!5266 = !DILocalVariable(name: "base_len", scope: !5265, file: !593, line: 145, type: !43)
!5267 = !DILocalVariable(name: "add_slash", scope: !5265, file: !593, line: 146, type: !57)
!5268 = !DILocalVariable(name: "fd", scope: !5254, file: !593, line: 162, type: !57)
!5269 = !DILocalVariable(name: "fp", scope: !5252, file: !593, line: 178, type: !5270)
!5270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5271, size: 64)
!5271 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !35, line: 49, baseType: !5272)
!5272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !4245, line: 241, size: 1728, elements: !5273)
!5273 = !{!5274, !5275, !5276, !5277, !5278, !5279, !5280, !5281, !5282, !5283, !5284, !5285, !5286, !5294, !5295, !5296, !5297, !5298, !5299, !5300, !5301, !5302, !5303, !5304, !5305, !5306, !5307, !5308, !5309}
!5274 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5272, file: !4245, line: 242, baseType: !57, size: 32)
!5275 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5272, file: !4245, line: 247, baseType: !31, size: 64, offset: 64)
!5276 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5272, file: !4245, line: 248, baseType: !31, size: 64, offset: 128)
!5277 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5272, file: !4245, line: 249, baseType: !31, size: 64, offset: 192)
!5278 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5272, file: !4245, line: 250, baseType: !31, size: 64, offset: 256)
!5279 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5272, file: !4245, line: 251, baseType: !31, size: 64, offset: 320)
!5280 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5272, file: !4245, line: 252, baseType: !31, size: 64, offset: 384)
!5281 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5272, file: !4245, line: 253, baseType: !31, size: 64, offset: 448)
!5282 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5272, file: !4245, line: 254, baseType: !31, size: 64, offset: 512)
!5283 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5272, file: !4245, line: 256, baseType: !31, size: 64, offset: 576)
!5284 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5272, file: !4245, line: 257, baseType: !31, size: 64, offset: 640)
!5285 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5272, file: !4245, line: 258, baseType: !31, size: 64, offset: 704)
!5286 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5272, file: !4245, line: 260, baseType: !5287, size: 64, offset: 768)
!5287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5288, size: 64)
!5288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !4245, line: 156, size: 192, elements: !5289)
!5289 = !{!5290, !5291, !5293}
!5290 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !5288, file: !4245, line: 157, baseType: !5287, size: 64)
!5291 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !5288, file: !4245, line: 158, baseType: !5292, size: 64, offset: 64)
!5292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5272, size: 64)
!5293 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !5288, file: !4245, line: 162, baseType: !57, size: 32, offset: 128)
!5294 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5272, file: !4245, line: 262, baseType: !5292, size: 64, offset: 832)
!5295 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5272, file: !4245, line: 264, baseType: !57, size: 32, offset: 896)
!5296 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5272, file: !4245, line: 268, baseType: !57, size: 32, offset: 928)
!5297 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5272, file: !4245, line: 270, baseType: !36, size: 64, offset: 960)
!5298 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5272, file: !4245, line: 274, baseType: !198, size: 16, offset: 1024)
!5299 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5272, file: !4245, line: 275, baseType: !4273, size: 8, offset: 1040)
!5300 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5272, file: !4245, line: 276, baseType: !4275, size: 8, offset: 1048)
!5301 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5272, file: !4245, line: 280, baseType: !4279, size: 64, offset: 1088)
!5302 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5272, file: !4245, line: 289, baseType: !4282, size: 64, offset: 1152)
!5303 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !5272, file: !4245, line: 297, baseType: !33, size: 64, offset: 1216)
!5304 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !5272, file: !4245, line: 298, baseType: !33, size: 64, offset: 1280)
!5305 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !5272, file: !4245, line: 299, baseType: !33, size: 64, offset: 1344)
!5306 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !5272, file: !4245, line: 300, baseType: !33, size: 64, offset: 1408)
!5307 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5272, file: !4245, line: 302, baseType: !43, size: 64, offset: 1472)
!5308 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5272, file: !4245, line: 303, baseType: !57, size: 32, offset: 1536)
!5309 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5272, file: !4245, line: 305, baseType: !4290, size: 160, offset: 1568)
!5310 = !DILocalVariable(name: "res_ptr", scope: !5250, file: !593, line: 190, type: !31)
!5311 = !DILocalVariable(name: "res_size", scope: !5250, file: !593, line: 191, type: !43)
!5312 = !DILocalVariable(name: "c", scope: !5247, file: !593, line: 195, type: !57)
!5313 = !DILocalVariable(name: "buf2", scope: !5247, file: !593, line: 197, type: !5314)
!5314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 408, elements: !5315)
!5315 = !{!5316}
!5316 = !DISubrange(count: 51)
!5317 = !DILocalVariable(name: "l1", scope: !5247, file: !593, line: 198, type: !43)
!5318 = !DILocalVariable(name: "l2", scope: !5247, file: !593, line: 198, type: !43)
!5319 = !DILocalVariable(name: "old_res_ptr", scope: !5247, file: !593, line: 199, type: !31)
!5320 = !DILocation(line: 196, column: 28, scope: !5247, inlinedAt: !5321)
!5321 = distinct !DILocation(line: 589, column: 18, scope: !5244)
!5322 = !DILocation(line: 197, column: 28, scope: !5247, inlinedAt: !5321)
!5323 = !DILocation(line: 403, column: 13, scope: !5234)
!5324 = !DILocation(line: 395, column: 15, scope: !5234)
!5325 = !DILocation(line: 584, column: 15, scope: !5326)
!5326 = distinct !DILexicalBlock(scope: !5234, file: !593, line: 584, column: 7)
!5327 = !DILocation(line: 584, column: 7, scope: !5234)
!5328 = !DILocation(line: 128, column: 8, scope: !5258, inlinedAt: !5321)
!5329 = !DILocation(line: 126, column: 15, scope: !5258, inlinedAt: !5321)
!5330 = !DILocation(line: 129, column: 10, scope: !5257, inlinedAt: !5321)
!5331 = !DILocation(line: 129, column: 7, scope: !5258, inlinedAt: !5321)
!5332 = !DILocation(line: 138, column: 13, scope: !5256, inlinedAt: !5321)
!5333 = !DILocation(line: 132, column: 19, scope: !5256, inlinedAt: !5321)
!5334 = !DILocation(line: 139, column: 15, scope: !5335, inlinedAt: !5321)
!5335 = distinct !DILexicalBlock(scope: !5256, file: !593, line: 139, column: 11)
!5336 = !DILocation(line: 139, column: 23, scope: !5335, inlinedAt: !5321)
!5337 = !DILocation(line: 139, column: 26, scope: !5338, inlinedAt: !5321)
!5338 = !DILexicalBlockFile(scope: !5335, file: !593, discriminator: 1)
!5339 = !DILocation(line: 139, column: 33, scope: !5338, inlinedAt: !5321)
!5340 = !DILocation(line: 139, column: 11, scope: !5341, inlinedAt: !5321)
!5341 = !DILexicalBlockFile(scope: !5256, file: !593, discriminator: 1)
!5342 = !DILocation(line: 140, column: 9, scope: !5335, inlinedAt: !5321)
!5343 = !DILocation(line: 144, column: 26, scope: !5265, inlinedAt: !5321)
!5344 = !DILocation(line: 144, column: 16, scope: !5265, inlinedAt: !5321)
!5345 = !DILocation(line: 145, column: 16, scope: !5265, inlinedAt: !5321)
!5346 = !DILocation(line: 146, column: 34, scope: !5265, inlinedAt: !5321)
!5347 = !DILocation(line: 146, column: 38, scope: !5265, inlinedAt: !5321)
!5348 = !DILocation(line: 146, column: 42, scope: !5349, inlinedAt: !5321)
!5349 = !DILexicalBlockFile(scope: !5265, file: !593, discriminator: 1)
!5350 = !DILocation(line: 146, column: 41, scope: !5349, inlinedAt: !5321)
!5351 = !DILocation(line: 147, column: 48, scope: !5265, inlinedAt: !5321)
!5352 = !DILocation(line: 147, column: 46, scope: !5265, inlinedAt: !5321)
!5353 = !DILocation(line: 147, column: 69, scope: !5265, inlinedAt: !5321)
!5354 = !DILocation(line: 147, column: 30, scope: !5265, inlinedAt: !5321)
!5355 = !DILocation(line: 134, column: 13, scope: !5256, inlinedAt: !5321)
!5356 = !DILocation(line: 148, column: 13, scope: !5265, inlinedAt: !5321)
!5357 = !DILocation(line: 150, column: 13, scope: !5358, inlinedAt: !5321)
!5358 = distinct !DILexicalBlock(scope: !5359, file: !593, line: 149, column: 11)
!5359 = distinct !DILexicalBlock(scope: !5265, file: !593, line: 148, column: 13)
!5360 = !DILocation(line: 151, column: 17, scope: !5358, inlinedAt: !5321)
!5361 = !DILocation(line: 152, column: 34, scope: !5362, inlinedAt: !5321)
!5362 = distinct !DILexicalBlock(scope: !5358, file: !593, line: 151, column: 17)
!5363 = !DILocation(line: 153, column: 41, scope: !5358, inlinedAt: !5321)
!5364 = !DILocation(line: 153, column: 13, scope: !5358, inlinedAt: !5321)
!5365 = !DILocation(line: 157, column: 11, scope: !5256, inlinedAt: !5321)
!5366 = !DILocation(line: 171, column: 16, scope: !5254, inlinedAt: !5321)
!5367 = !DILocation(line: 162, column: 15, scope: !5254, inlinedAt: !5321)
!5368 = !DILocation(line: 173, column: 18, scope: !5253, inlinedAt: !5321)
!5369 = !DILocation(line: 173, column: 15, scope: !5254, inlinedAt: !5321)
!5370 = !DILocation(line: 180, column: 20, scope: !5252, inlinedAt: !5321)
!5371 = !DILocation(line: 178, column: 21, scope: !5252, inlinedAt: !5321)
!5372 = !DILocation(line: 181, column: 22, scope: !5251, inlinedAt: !5321)
!5373 = !DILocation(line: 181, column: 19, scope: !5252, inlinedAt: !5321)
!5374 = !DILocation(line: 190, column: 25, scope: !5250, inlinedAt: !5321)
!5375 = !DILocation(line: 184, column: 19, scope: !5376, inlinedAt: !5321)
!5376 = distinct !DILexicalBlock(scope: !5251, file: !593, line: 182, column: 17)
!5377 = !DILocation(line: 186, column: 17, scope: !5376, inlinedAt: !5321)
!5378 = !DILocation(line: 191, column: 26, scope: !5250, inlinedAt: !5321)
!5379 = !DILocation(line: 196, column: 23, scope: !5247, inlinedAt: !5321)
!5380 = !DILocation(line: 197, column: 23, scope: !5247, inlinedAt: !5321)
!5381 = !DILocalVariable(name: "__fp", arg: 1, scope: !5382, file: !5154, line: 63, type: !5270)
!5382 = distinct !DISubprogram(name: "getc_unlocked", scope: !5154, file: !5154, line: 63, type: !5383, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !249, variables: !5385)
!5383 = !DISubroutineType(types: !5384)
!5384 = !{!57, !5270}
!5385 = !{!5381}
!5386 = !DILocation(line: 63, column: 22, scope: !5382, inlinedAt: !5387)
!5387 = distinct !DILocation(line: 201, column: 27, scope: !5247, inlinedAt: !5321)
!5388 = !DILocation(line: 65, column: 10, scope: !5382, inlinedAt: !5387)
!5389 = !{!5160, !703, i64 8}
!5390 = !{!5160, !703, i64 16}
!5391 = !{!"branch_weights", i32 2000, i32 1}
!5392 = !DILocation(line: 65, column: 10, scope: !5393, inlinedAt: !5387)
!5393 = !DILexicalBlockFile(scope: !5382, file: !5154, discriminator: 1)
!5394 = !DILocation(line: 65, column: 10, scope: !5395, inlinedAt: !5387)
!5395 = !DILexicalBlockFile(scope: !5382, file: !5154, discriminator: 2)
!5396 = !DILocation(line: 65, column: 10, scope: !5397, inlinedAt: !5387)
!5397 = !DILexicalBlockFile(scope: !5382, file: !5154, discriminator: 3)
!5398 = !DILocation(line: 195, column: 27, scope: !5247, inlinedAt: !5321)
!5399 = !DILocation(line: 202, column: 27, scope: !5247, inlinedAt: !5321)
!5400 = !DILocation(line: 63, column: 22, scope: !5382, inlinedAt: !5401)
!5401 = distinct !DILocation(line: 210, column: 33, scope: !5402, inlinedAt: !5321)
!5402 = distinct !DILexicalBlock(scope: !5403, file: !593, line: 207, column: 25)
!5403 = distinct !DILexicalBlock(scope: !5247, file: !593, line: 206, column: 27)
!5404 = !DILocation(line: 65, column: 10, scope: !5382, inlinedAt: !5401)
!5405 = !DILocation(line: 65, column: 10, scope: !5393, inlinedAt: !5401)
!5406 = !DILocation(line: 65, column: 10, scope: !5395, inlinedAt: !5401)
!5407 = !DILocation(line: 65, column: 10, scope: !5397, inlinedAt: !5401)
!5408 = !DILocation(line: 210, column: 29, scope: !5409, inlinedAt: !5321)
!5409 = !DILexicalBlockFile(scope: !5402, file: !593, discriminator: 1)
!5410 = distinct !{!5410, !5411, !5412}
!5411 = !DILocation(line: 193, column: 19, scope: !5249)
!5412 = !DILocation(line: 241, column: 21, scope: !5249)
!5413 = !DILocation(line: 216, column: 23, scope: !5247, inlinedAt: !5321)
!5414 = !DILocation(line: 217, column: 27, scope: !5415, inlinedAt: !5321)
!5415 = distinct !DILexicalBlock(scope: !5247, file: !593, line: 217, column: 27)
!5416 = !DILocation(line: 217, column: 64, scope: !5415, inlinedAt: !5321)
!5417 = !DILocation(line: 217, column: 27, scope: !5247, inlinedAt: !5321)
!5418 = !DILocation(line: 219, column: 28, scope: !5247, inlinedAt: !5321)
!5419 = !DILocation(line: 198, column: 30, scope: !5247, inlinedAt: !5321)
!5420 = !DILocation(line: 220, column: 28, scope: !5247, inlinedAt: !5321)
!5421 = !DILocation(line: 198, column: 34, scope: !5247, inlinedAt: !5321)
!5422 = !DILocation(line: 199, column: 29, scope: !5247, inlinedAt: !5321)
!5423 = !DILocation(line: 222, column: 36, scope: !5424, inlinedAt: !5321)
!5424 = distinct !DILexicalBlock(scope: !5247, file: !593, line: 222, column: 27)
!5425 = !DILocation(line: 222, column: 27, scope: !5247, inlinedAt: !5321)
!5426 = !DILocation(line: 225, column: 63, scope: !5427, inlinedAt: !5321)
!5427 = distinct !DILexicalBlock(scope: !5424, file: !593, line: 223, column: 25)
!5428 = !DILocation(line: 225, column: 46, scope: !5427, inlinedAt: !5321)
!5429 = !DILocation(line: 226, column: 25, scope: !5427, inlinedAt: !5321)
!5430 = !DILocation(line: 229, column: 36, scope: !5431, inlinedAt: !5321)
!5431 = distinct !DILexicalBlock(scope: !5424, file: !593, line: 228, column: 25)
!5432 = !DILocation(line: 230, column: 73, scope: !5431, inlinedAt: !5321)
!5433 = !DILocation(line: 230, column: 46, scope: !5431, inlinedAt: !5321)
!5434 = !DILocation(line: 232, column: 35, scope: !5435, inlinedAt: !5321)
!5435 = distinct !DILexicalBlock(scope: !5247, file: !593, line: 232, column: 27)
!5436 = !DILocation(line: 232, column: 27, scope: !5247, inlinedAt: !5321)
!5437 = !DILocation(line: 236, column: 27, scope: !5438, inlinedAt: !5321)
!5438 = distinct !DILexicalBlock(scope: !5435, file: !593, line: 233, column: 25)
!5439 = !DILocation(line: 237, column: 27, scope: !5438, inlinedAt: !5321)
!5440 = !DILocation(line: 239, column: 39, scope: !5247, inlinedAt: !5321)
!5441 = !DILocation(line: 239, column: 50, scope: !5247, inlinedAt: !5321)
!5442 = !DILocation(line: 239, column: 61, scope: !5247, inlinedAt: !5321)
!5443 = !DILocalVariable(name: "__dest", arg: 1, scope: !5444, file: !5445, line: 107, type: !5448)
!5444 = distinct !DISubprogram(name: "strcpy", scope: !5445, file: !5445, line: 107, type: !5446, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !249, variables: !5449)
!5445 = !DIFile(filename: "/usr/include/bits/string3.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5446 = !DISubroutineType(types: !5447)
!5447 = !{!31, !5448, !4849}
!5448 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !31)
!5449 = !{!5443, !5450}
!5450 = !DILocalVariable(name: "__src", arg: 2, scope: !5444, file: !5445, line: 107, type: !4849)
!5451 = !DILocation(line: 107, column: 1, scope: !5444, inlinedAt: !5452)
!5452 = distinct !DILocation(line: 239, column: 23, scope: !5247, inlinedAt: !5321)
!5453 = !DILocation(line: 109, column: 49, scope: !5444, inlinedAt: !5452)
!5454 = !DILocation(line: 109, column: 10, scope: !5444, inlinedAt: !5452)
!5455 = !DILocation(line: 107, column: 1, scope: !5444, inlinedAt: !5456)
!5456 = distinct !DILocation(line: 240, column: 23, scope: !5247, inlinedAt: !5321)
!5457 = !DILocation(line: 109, column: 49, scope: !5444, inlinedAt: !5456)
!5458 = !DILocation(line: 109, column: 10, scope: !5444, inlinedAt: !5456)
!5459 = !DILocation(line: 241, column: 21, scope: !5248, inlinedAt: !5321)
!5460 = !DILocation(line: 242, column: 19, scope: !5250, inlinedAt: !5321)
!5461 = !DILocation(line: 243, column: 32, scope: !5462, inlinedAt: !5321)
!5462 = distinct !DILexicalBlock(scope: !5250, file: !593, line: 243, column: 23)
!5463 = !DILocation(line: 243, column: 23, scope: !5250, inlinedAt: !5321)
!5464 = !DILocation(line: 247, column: 33, scope: !5465, inlinedAt: !5321)
!5465 = distinct !DILexicalBlock(scope: !5462, file: !593, line: 246, column: 21)
!5466 = !DILocation(line: 247, column: 45, scope: !5465, inlinedAt: !5321)
!5467 = !DILocation(line: 253, column: 11, scope: !5254, inlinedAt: !5321)
!5468 = !DILocation(line: 377, column: 23, scope: !5256, inlinedAt: !5321)
!5469 = !DILocation(line: 378, column: 5, scope: !5256, inlinedAt: !5321)
!5470 = !DILocation(line: 396, column: 15, scope: !5234)
!5471 = !DILocation(line: 590, column: 8, scope: !5243)
!5472 = !DILocation(line: 590, column: 17, scope: !5243)
!5473 = !DILocation(line: 589, column: 3, scope: !5474)
!5474 = !DILexicalBlockFile(scope: !5244, file: !593, discriminator: 1)
!5475 = !DILocation(line: 592, column: 9, scope: !5241)
!5476 = !DILocation(line: 592, column: 35, scope: !5242)
!5477 = !DILocation(line: 593, column: 9, scope: !5242)
!5478 = !DILocation(line: 593, column: 24, scope: !5479)
!5479 = !DILexicalBlockFile(scope: !5242, file: !593, discriminator: 1)
!5480 = !DILocation(line: 593, column: 31, scope: !5479)
!5481 = !DILocation(line: 593, column: 34, scope: !5482)
!5482 = !DILexicalBlockFile(scope: !5242, file: !593, discriminator: 2)
!5483 = !DILocation(line: 593, column: 45, scope: !5482)
!5484 = !DILocation(line: 592, column: 9, scope: !5485)
!5485 = !DILexicalBlockFile(scope: !5243, file: !593, discriminator: 1)
!5486 = !DILocation(line: 595, column: 29, scope: !5487)
!5487 = distinct !DILexicalBlock(scope: !5242, file: !593, line: 594, column: 7)
!5488 = !DILocation(line: 595, column: 27, scope: !5487)
!5489 = !DILocation(line: 595, column: 46, scope: !5487)
!5490 = !DILocation(line: 596, column: 9, scope: !5487)
!5491 = !DILocation(line: 591, column: 19, scope: !5243)
!5492 = !DILocation(line: 591, column: 36, scope: !5243)
!5493 = !DILocation(line: 591, column: 16, scope: !5243)
!5494 = !DILocation(line: 591, column: 52, scope: !5485)
!5495 = !DILocation(line: 591, column: 69, scope: !5243)
!5496 = !DILocation(line: 591, column: 49, scope: !5243)
!5497 = distinct !{!5497, !5498, !5499}
!5498 = !DILocation(line: 589, column: 3, scope: !5244)
!5499 = !DILocation(line: 597, column: 7, scope: !5244)
!5500 = !DILocation(line: 602, column: 7, scope: !5501)
!5501 = distinct !DILexicalBlock(scope: !5234, file: !593, line: 602, column: 7)
!5502 = !DILocation(line: 602, column: 18, scope: !5501)
!5503 = !DILocation(line: 602, column: 7, scope: !5234)
!5504 = !DILocation(line: 612, column: 3, scope: !5234)
!5505 = distinct !DISubprogram(name: "rpl_fclose", scope: !5506, file: !5506, line: 56, type: !5507, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !678, variables: !5549)
!5506 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5507 = !DISubroutineType(types: !5508)
!5508 = !{!57, !5509}
!5509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5510, size: 64)
!5510 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !35, line: 49, baseType: !5511)
!5511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !4245, line: 241, size: 1728, elements: !5512)
!5512 = !{!5513, !5514, !5515, !5516, !5517, !5518, !5519, !5520, !5521, !5522, !5523, !5524, !5525, !5533, !5534, !5535, !5536, !5537, !5538, !5539, !5540, !5541, !5542, !5543, !5544, !5545, !5546, !5547, !5548}
!5513 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5511, file: !4245, line: 242, baseType: !57, size: 32)
!5514 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5511, file: !4245, line: 247, baseType: !31, size: 64, offset: 64)
!5515 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5511, file: !4245, line: 248, baseType: !31, size: 64, offset: 128)
!5516 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5511, file: !4245, line: 249, baseType: !31, size: 64, offset: 192)
!5517 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5511, file: !4245, line: 250, baseType: !31, size: 64, offset: 256)
!5518 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5511, file: !4245, line: 251, baseType: !31, size: 64, offset: 320)
!5519 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5511, file: !4245, line: 252, baseType: !31, size: 64, offset: 384)
!5520 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5511, file: !4245, line: 253, baseType: !31, size: 64, offset: 448)
!5521 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5511, file: !4245, line: 254, baseType: !31, size: 64, offset: 512)
!5522 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5511, file: !4245, line: 256, baseType: !31, size: 64, offset: 576)
!5523 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5511, file: !4245, line: 257, baseType: !31, size: 64, offset: 640)
!5524 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5511, file: !4245, line: 258, baseType: !31, size: 64, offset: 704)
!5525 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5511, file: !4245, line: 260, baseType: !5526, size: 64, offset: 768)
!5526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5527, size: 64)
!5527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !4245, line: 156, size: 192, elements: !5528)
!5528 = !{!5529, !5530, !5532}
!5529 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !5527, file: !4245, line: 157, baseType: !5526, size: 64)
!5530 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !5527, file: !4245, line: 158, baseType: !5531, size: 64, offset: 64)
!5531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5511, size: 64)
!5532 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !5527, file: !4245, line: 162, baseType: !57, size: 32, offset: 128)
!5533 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5511, file: !4245, line: 262, baseType: !5531, size: 64, offset: 832)
!5534 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5511, file: !4245, line: 264, baseType: !57, size: 32, offset: 896)
!5535 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5511, file: !4245, line: 268, baseType: !57, size: 32, offset: 928)
!5536 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5511, file: !4245, line: 270, baseType: !36, size: 64, offset: 960)
!5537 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5511, file: !4245, line: 274, baseType: !198, size: 16, offset: 1024)
!5538 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5511, file: !4245, line: 275, baseType: !4273, size: 8, offset: 1040)
!5539 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5511, file: !4245, line: 276, baseType: !4275, size: 8, offset: 1048)
!5540 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5511, file: !4245, line: 280, baseType: !4279, size: 64, offset: 1088)
!5541 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5511, file: !4245, line: 289, baseType: !4282, size: 64, offset: 1152)
!5542 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !5511, file: !4245, line: 297, baseType: !33, size: 64, offset: 1216)
!5543 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !5511, file: !4245, line: 298, baseType: !33, size: 64, offset: 1280)
!5544 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !5511, file: !4245, line: 299, baseType: !33, size: 64, offset: 1344)
!5545 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !5511, file: !4245, line: 300, baseType: !33, size: 64, offset: 1408)
!5546 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5511, file: !4245, line: 302, baseType: !43, size: 64, offset: 1472)
!5547 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5511, file: !4245, line: 303, baseType: !57, size: 32, offset: 1536)
!5548 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5511, file: !4245, line: 305, baseType: !4290, size: 160, offset: 1568)
!5549 = !{!5550, !5551, !5552, !5553}
!5550 = !DILocalVariable(name: "fp", arg: 1, scope: !5505, file: !5506, line: 56, type: !5509)
!5551 = !DILocalVariable(name: "saved_errno", scope: !5505, file: !5506, line: 58, type: !57)
!5552 = !DILocalVariable(name: "fd", scope: !5505, file: !5506, line: 59, type: !57)
!5553 = !DILocalVariable(name: "result", scope: !5505, file: !5506, line: 60, type: !57)
!5554 = !DILocation(line: 56, column: 19, scope: !5505)
!5555 = !DILocation(line: 58, column: 7, scope: !5505)
!5556 = !DILocation(line: 60, column: 7, scope: !5505)
!5557 = !DILocation(line: 63, column: 8, scope: !5505)
!5558 = !DILocation(line: 59, column: 7, scope: !5505)
!5559 = !DILocation(line: 64, column: 10, scope: !5560)
!5560 = distinct !DILexicalBlock(scope: !5505, file: !5506, line: 64, column: 7)
!5561 = !DILocation(line: 64, column: 7, scope: !5505)
!5562 = !DILocation(line: 65, column: 12, scope: !5560)
!5563 = !DILocation(line: 65, column: 5, scope: !5560)
!5564 = !DILocation(line: 70, column: 9, scope: !5565)
!5565 = distinct !DILexicalBlock(scope: !5505, file: !5506, line: 70, column: 7)
!5566 = !DILocation(line: 70, column: 23, scope: !5565)
!5567 = !DILocation(line: 70, column: 33, scope: !5568)
!5568 = !DILexicalBlockFile(scope: !5565, file: !5506, discriminator: 1)
!5569 = !DILocation(line: 70, column: 26, scope: !5570)
!5570 = !DILexicalBlockFile(scope: !5565, file: !5506, discriminator: 3)
!5571 = !DILocation(line: 70, column: 59, scope: !5568)
!5572 = !DILocation(line: 71, column: 7, scope: !5565)
!5573 = !DILocation(line: 71, column: 10, scope: !5568)
!5574 = !DILocation(line: 70, column: 7, scope: !5575)
!5575 = !DILexicalBlockFile(scope: !5505, file: !5506, discriminator: 2)
!5576 = !DILocation(line: 98, column: 12, scope: !5505)
!5577 = !DILocation(line: 103, column: 7, scope: !5505)
!5578 = !DILocation(line: 72, column: 19, scope: !5565)
!5579 = !DILocation(line: 103, column: 19, scope: !5580)
!5580 = distinct !DILexicalBlock(scope: !5505, file: !5506, line: 103, column: 7)
!5581 = !DILocation(line: 105, column: 13, scope: !5582)
!5582 = distinct !DILexicalBlock(scope: !5580, file: !5506, line: 104, column: 5)
!5583 = !DILocation(line: 107, column: 5, scope: !5582)
!5584 = !DILocation(line: 110, column: 1, scope: !5505)
!5585 = distinct !DISubprogram(name: "rpl_fflush", scope: !5586, file: !5586, line: 127, type: !5587, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !680, variables: !5629)
!5586 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5587 = !DISubroutineType(types: !5588)
!5588 = !{!57, !5589}
!5589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5590, size: 64)
!5590 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !35, line: 49, baseType: !5591)
!5591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !4245, line: 241, size: 1728, elements: !5592)
!5592 = !{!5593, !5594, !5595, !5596, !5597, !5598, !5599, !5600, !5601, !5602, !5603, !5604, !5605, !5613, !5614, !5615, !5616, !5617, !5618, !5619, !5620, !5621, !5622, !5623, !5624, !5625, !5626, !5627, !5628}
!5593 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5591, file: !4245, line: 242, baseType: !57, size: 32)
!5594 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5591, file: !4245, line: 247, baseType: !31, size: 64, offset: 64)
!5595 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5591, file: !4245, line: 248, baseType: !31, size: 64, offset: 128)
!5596 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5591, file: !4245, line: 249, baseType: !31, size: 64, offset: 192)
!5597 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5591, file: !4245, line: 250, baseType: !31, size: 64, offset: 256)
!5598 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5591, file: !4245, line: 251, baseType: !31, size: 64, offset: 320)
!5599 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5591, file: !4245, line: 252, baseType: !31, size: 64, offset: 384)
!5600 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5591, file: !4245, line: 253, baseType: !31, size: 64, offset: 448)
!5601 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5591, file: !4245, line: 254, baseType: !31, size: 64, offset: 512)
!5602 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5591, file: !4245, line: 256, baseType: !31, size: 64, offset: 576)
!5603 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5591, file: !4245, line: 257, baseType: !31, size: 64, offset: 640)
!5604 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5591, file: !4245, line: 258, baseType: !31, size: 64, offset: 704)
!5605 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5591, file: !4245, line: 260, baseType: !5606, size: 64, offset: 768)
!5606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5607, size: 64)
!5607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !4245, line: 156, size: 192, elements: !5608)
!5608 = !{!5609, !5610, !5612}
!5609 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !5607, file: !4245, line: 157, baseType: !5606, size: 64)
!5610 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !5607, file: !4245, line: 158, baseType: !5611, size: 64, offset: 64)
!5611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5591, size: 64)
!5612 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !5607, file: !4245, line: 162, baseType: !57, size: 32, offset: 128)
!5613 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5591, file: !4245, line: 262, baseType: !5611, size: 64, offset: 832)
!5614 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5591, file: !4245, line: 264, baseType: !57, size: 32, offset: 896)
!5615 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5591, file: !4245, line: 268, baseType: !57, size: 32, offset: 928)
!5616 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5591, file: !4245, line: 270, baseType: !36, size: 64, offset: 960)
!5617 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5591, file: !4245, line: 274, baseType: !198, size: 16, offset: 1024)
!5618 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5591, file: !4245, line: 275, baseType: !4273, size: 8, offset: 1040)
!5619 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5591, file: !4245, line: 276, baseType: !4275, size: 8, offset: 1048)
!5620 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5591, file: !4245, line: 280, baseType: !4279, size: 64, offset: 1088)
!5621 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5591, file: !4245, line: 289, baseType: !4282, size: 64, offset: 1152)
!5622 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !5591, file: !4245, line: 297, baseType: !33, size: 64, offset: 1216)
!5623 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !5591, file: !4245, line: 298, baseType: !33, size: 64, offset: 1280)
!5624 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !5591, file: !4245, line: 299, baseType: !33, size: 64, offset: 1344)
!5625 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !5591, file: !4245, line: 300, baseType: !33, size: 64, offset: 1408)
!5626 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5591, file: !4245, line: 302, baseType: !43, size: 64, offset: 1472)
!5627 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5591, file: !4245, line: 303, baseType: !57, size: 32, offset: 1536)
!5628 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5591, file: !4245, line: 305, baseType: !4290, size: 160, offset: 1568)
!5629 = !{!5630}
!5630 = !DILocalVariable(name: "stream", arg: 1, scope: !5585, file: !5586, line: 127, type: !5589)
!5631 = !DILocation(line: 127, column: 19, scope: !5585)
!5632 = !DILocation(line: 148, column: 14, scope: !5633)
!5633 = distinct !DILexicalBlock(scope: !5585, file: !5586, line: 148, column: 7)
!5634 = !DILocation(line: 148, column: 22, scope: !5633)
!5635 = !DILocation(line: 148, column: 27, scope: !5636)
!5636 = !DILexicalBlockFile(scope: !5633, file: !5586, discriminator: 1)
!5637 = !DILocation(line: 148, column: 7, scope: !5638)
!5638 = !DILexicalBlockFile(scope: !5585, file: !5586, discriminator: 1)
!5639 = !DILocation(line: 149, column: 12, scope: !5633)
!5640 = !DILocation(line: 149, column: 5, scope: !5633)
!5641 = !DILocalVariable(name: "fp", arg: 1, scope: !5642, file: !5586, line: 40, type: !5589)
!5642 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !5586, file: !5586, line: 40, type: !5643, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !680, variables: !5645)
!5643 = !DISubroutineType(types: !5644)
!5644 = !{null, !5589}
!5645 = !{!5641}
!5646 = !DILocation(line: 40, column: 48, scope: !5642, inlinedAt: !5647)
!5647 = distinct !DILocation(line: 153, column: 3, scope: !5585)
!5648 = !DILocation(line: 42, column: 11, scope: !5649, inlinedAt: !5647)
!5649 = distinct !DILexicalBlock(scope: !5642, file: !5586, line: 42, column: 7)
!5650 = !DILocation(line: 42, column: 18, scope: !5649, inlinedAt: !5647)
!5651 = !DILocation(line: 42, column: 7, scope: !5642, inlinedAt: !5647)
!5652 = !DILocation(line: 44, column: 5, scope: !5649, inlinedAt: !5647)
!5653 = !DILocation(line: 155, column: 10, scope: !5585)
!5654 = !DILocation(line: 155, column: 3, scope: !5585)
!5655 = !DILocation(line: 229, column: 1, scope: !5585)
!5656 = distinct !DISubprogram(name: "rpl_fseeko", scope: !5657, file: !5657, line: 28, type: !5658, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !682, variables: !5700)
!5657 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5658 = !DISubroutineType(types: !5659)
!5659 = !{!57, !5660, !34, !57}
!5660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5661, size: 64)
!5661 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !35, line: 49, baseType: !5662)
!5662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !4245, line: 241, size: 1728, elements: !5663)
!5663 = !{!5664, !5665, !5666, !5667, !5668, !5669, !5670, !5671, !5672, !5673, !5674, !5675, !5676, !5684, !5685, !5686, !5687, !5688, !5689, !5690, !5691, !5692, !5693, !5694, !5695, !5696, !5697, !5698, !5699}
!5664 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5662, file: !4245, line: 242, baseType: !57, size: 32)
!5665 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5662, file: !4245, line: 247, baseType: !31, size: 64, offset: 64)
!5666 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5662, file: !4245, line: 248, baseType: !31, size: 64, offset: 128)
!5667 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5662, file: !4245, line: 249, baseType: !31, size: 64, offset: 192)
!5668 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5662, file: !4245, line: 250, baseType: !31, size: 64, offset: 256)
!5669 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5662, file: !4245, line: 251, baseType: !31, size: 64, offset: 320)
!5670 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5662, file: !4245, line: 252, baseType: !31, size: 64, offset: 384)
!5671 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5662, file: !4245, line: 253, baseType: !31, size: 64, offset: 448)
!5672 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5662, file: !4245, line: 254, baseType: !31, size: 64, offset: 512)
!5673 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5662, file: !4245, line: 256, baseType: !31, size: 64, offset: 576)
!5674 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5662, file: !4245, line: 257, baseType: !31, size: 64, offset: 640)
!5675 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5662, file: !4245, line: 258, baseType: !31, size: 64, offset: 704)
!5676 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5662, file: !4245, line: 260, baseType: !5677, size: 64, offset: 768)
!5677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5678, size: 64)
!5678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !4245, line: 156, size: 192, elements: !5679)
!5679 = !{!5680, !5681, !5683}
!5680 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !5678, file: !4245, line: 157, baseType: !5677, size: 64)
!5681 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !5678, file: !4245, line: 158, baseType: !5682, size: 64, offset: 64)
!5682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5662, size: 64)
!5683 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !5678, file: !4245, line: 162, baseType: !57, size: 32, offset: 128)
!5684 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5662, file: !4245, line: 262, baseType: !5682, size: 64, offset: 832)
!5685 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5662, file: !4245, line: 264, baseType: !57, size: 32, offset: 896)
!5686 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5662, file: !4245, line: 268, baseType: !57, size: 32, offset: 928)
!5687 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5662, file: !4245, line: 270, baseType: !36, size: 64, offset: 960)
!5688 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5662, file: !4245, line: 274, baseType: !198, size: 16, offset: 1024)
!5689 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5662, file: !4245, line: 275, baseType: !4273, size: 8, offset: 1040)
!5690 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5662, file: !4245, line: 276, baseType: !4275, size: 8, offset: 1048)
!5691 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5662, file: !4245, line: 280, baseType: !4279, size: 64, offset: 1088)
!5692 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5662, file: !4245, line: 289, baseType: !4282, size: 64, offset: 1152)
!5693 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !5662, file: !4245, line: 297, baseType: !33, size: 64, offset: 1216)
!5694 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !5662, file: !4245, line: 298, baseType: !33, size: 64, offset: 1280)
!5695 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !5662, file: !4245, line: 299, baseType: !33, size: 64, offset: 1344)
!5696 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !5662, file: !4245, line: 300, baseType: !33, size: 64, offset: 1408)
!5697 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5662, file: !4245, line: 302, baseType: !43, size: 64, offset: 1472)
!5698 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5662, file: !4245, line: 303, baseType: !57, size: 32, offset: 1536)
!5699 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5662, file: !4245, line: 305, baseType: !4290, size: 160, offset: 1568)
!5700 = !{!5701, !5702, !5703, !5704}
!5701 = !DILocalVariable(name: "fp", arg: 1, scope: !5656, file: !5657, line: 28, type: !5660)
!5702 = !DILocalVariable(name: "offset", arg: 2, scope: !5656, file: !5657, line: 28, type: !34)
!5703 = !DILocalVariable(name: "whence", arg: 3, scope: !5656, file: !5657, line: 28, type: !57)
!5704 = !DILocalVariable(name: "pos", scope: !5705, file: !5657, line: 116, type: !34)
!5705 = distinct !DILexicalBlock(scope: !5706, file: !5657, line: 112, column: 5)
!5706 = distinct !DILexicalBlock(scope: !5656, file: !5657, line: 51, column: 7)
!5707 = !DILocation(line: 28, column: 15, scope: !5656)
!5708 = !DILocation(line: 28, column: 25, scope: !5656)
!5709 = !DILocation(line: 28, column: 37, scope: !5656)
!5710 = !DILocation(line: 51, column: 11, scope: !5706)
!5711 = !DILocation(line: 51, column: 31, scope: !5706)
!5712 = !DILocation(line: 51, column: 24, scope: !5706)
!5713 = !DILocation(line: 52, column: 7, scope: !5706)
!5714 = !DILocation(line: 52, column: 14, scope: !5715)
!5715 = !DILexicalBlockFile(scope: !5706, file: !5657, discriminator: 1)
!5716 = !{!5160, !703, i64 40}
!5717 = !DILocation(line: 52, column: 35, scope: !5715)
!5718 = !{!5160, !703, i64 32}
!5719 = !DILocation(line: 52, column: 28, scope: !5715)
!5720 = !DILocation(line: 53, column: 7, scope: !5706)
!5721 = !DILocation(line: 53, column: 14, scope: !5715)
!5722 = !{!5160, !703, i64 72}
!5723 = !DILocation(line: 53, column: 28, scope: !5715)
!5724 = !DILocation(line: 51, column: 7, scope: !5725)
!5725 = !DILexicalBlockFile(scope: !5656, file: !5657, discriminator: 1)
!5726 = !DILocation(line: 116, column: 26, scope: !5705)
!5727 = !DILocation(line: 116, column: 19, scope: !5728)
!5728 = !DILexicalBlockFile(scope: !5705, file: !5657, discriminator: 1)
!5729 = !DILocation(line: 116, column: 13, scope: !5705)
!5730 = !DILocation(line: 117, column: 15, scope: !5731)
!5731 = distinct !DILexicalBlock(scope: !5705, file: !5657, line: 117, column: 11)
!5732 = !DILocation(line: 117, column: 11, scope: !5705)
!5733 = !DILocation(line: 127, column: 11, scope: !5705)
!5734 = !DILocation(line: 127, column: 18, scope: !5705)
!5735 = !DILocation(line: 128, column: 11, scope: !5705)
!5736 = !DILocation(line: 128, column: 19, scope: !5705)
!5737 = !{!5160, !1242, i64 144}
!5738 = !DILocation(line: 159, column: 7, scope: !5705)
!5739 = !DILocation(line: 161, column: 10, scope: !5656)
!5740 = !DILocation(line: 161, column: 3, scope: !5656)
!5741 = !DILocation(line: 162, column: 1, scope: !5656)
